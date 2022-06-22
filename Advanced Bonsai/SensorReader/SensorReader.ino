#include "DHT.h"

#define ledr 3
#define ledg 5
#define ledb 6

#define photor 0
float LED_Multiplier = 0.8;
int led_percentage = 0;

#define circulation_fan 9
#define exhaust_fan 10
int fan_interval = 10000;
bool ex_fan = false, cir_fan = false;

#define DHTPIN 2
#define DHTTYPE DHT11 // DHT 11
DHT dht(DHTPIN, DHTTYPE);
float hum = dht.readHumidity();
float tem = dht.readTemperature();
float maxhum = 69;
float maxtem = 32;
long current_time = millis();
long old_time = 0;

#define Echo_InputPin 7 // Echo input pin
#define Trigger_OutputPin 8 // Trigger output pin

#include <ArduinoMqttClient.h>
#include <WiFiNINA.h>

///////please enter your sensitive data in the Secret tab/arduino_secrets.h
char ssid[] = "Corvo Bianco";        // your network SSID (name)
char pass[] = "kitkatandbounty";    // your network password (use for WPA, or use as key for WEP)

WiFiClient wifiClient;
MqttClient mqttClient(wifiClient);

const char broker[] = "192.168.178.46";
int        port     = 1883;
const char topic[]  = "testTopic";

void Fan()
{
  if (hum > maxhum || tem > maxtem)
  {
    Serial.println("Exhaust fan on");
    ex_fan = true;
    //digitalWrite(exhaust_fan, 1);
  }
  else
  {
    ex_fan = false;
    Serial.println("Exhaust fan off");
    //digitalWrite(exhaust_fan, 0);
  }

  if (current_time - old_time > fan_interval)
  {
    Serial.println("Circulation fan on");
    cir_fan = true;
    //digitalWrite(circulation_fan, 1);
  }
  if (current_time - old_time > (2 * fan_interval))
  {
    Serial.println("Circulation fan off");
    old_time = millis();
    cir_fan = false;
    //digitalWrite(circulation_fan, 0);
  }
}

void Lightstrength(float multiplier)
{
  int strength = 0;
  strength = map(analogRead(photor), 40, 460, 0, 255);
  strength = strength * multiplier;
  led_percentage = (strength / 255) * 100;
  analogWrite(ledr, strength);
  analogWrite(ledg, strength);
  analogWrite(ledb, strength);

}

void MotorLight() //Keep distance between 30 and 50 cm
{
  int distance = Distance();
  if (distance < 30)
  {
    Serial.println("Increase height of LED.");
  }
  if (distance > 50)
  {
    Serial.println("Lower height of LED.");
  }
  return;
}

int Distance() {
  int maximumRange = 300;
  int minimumRange = 2;
  long distance;
  long duration;

  // Distance measurement is started
  digitalWrite (Trigger_OutputPin, HIGH);
  delayMicroseconds (10);
  digitalWrite (Trigger_OutputPin, LOW);

  // Wait for the echo input until the signal has been activated
  duration = pulseIn (Echo_InputPin, HIGH);

  // Distance calculation
  distance = duration / 58.2;

  // Check whether the measured value is within the permissible distance
  if (distance >= maximumRange || distance <= minimumRange)
  {
    return 301;
  }

  else
  {
    return distance;
  }
}

void setup() {
  // put your setup code here, to run once:
  Serial.begin (115200);

  // attempt to connect to Wifi network:
  Serial.print("Attempting to connect to WPA SSID: ");
  Serial.println(ssid);
  while (WiFi.begin(ssid, pass) != WL_CONNECTED) {
    // failed, retry
    Serial.print(".");
    delay(5000);
  }

  Serial.println("Connected to the network");
  Serial.println();
  Serial.print("Attempting to connect to the MQTT broker: ");
  Serial.println(broker);

  if (!mqttClient.connect(broker, port)) {
    Serial.print("MQTT connection failed! Error code = ");
    Serial.println(mqttClient.connectError());
    while (1);
  }
  Serial.println("Connected to the MQTT broker!");
  Serial.println();

  dht.begin();

  pinMode(ledr, OUTPUT);
  pinMode(ledg, OUTPUT);
  pinMode(ledb, OUTPUT);

  pinMode(Trigger_OutputPin, OUTPUT);
  pinMode(Echo_InputPin, INPUT);

  pinMode(A0, INPUT);

  digitalWrite(ledr, 1);
  digitalWrite(ledg, 1);
  digitalWrite(ledb, 1);

  pinMode(exhaust_fan, OUTPUT);
  pinMode(circulation_fan, OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:
  delay(1000);
  mqttClient.poll(); //keep the connection alive
  current_time = millis();

  Serial.print("Distance: ");
  Serial.println(Distance());
  MotorLight();

  hum = dht.readHumidity();
  tem = dht.readTemperature();
  Serial.print("Temperature: ");
  Serial.print(tem);
  Serial.print(", Humidity: ");
  Serial.println(hum);

  Serial.print("Light intensity: ");
  Serial.println(analogRead(photor));
  Lightstrength(LED_Multiplier);

  Serial.println();

  Fan();

  mqttClient.beginMessage(topic);led_percentage
  mqttClient.print("temperature: ");
  mqttClient.print(tem);
  mqttClient.print(", humidity: ");
  mqttClient.println(hum);

  mqttClient.print("Exhaust fan: ");
  mqttClient.print(ex_fan);
  mqttClient.print(", circulation fan: ");
  mqttClient.println(cir_fan);

  mqttClient.print("LED strength: ");
  mqttClient.print(led_percentage);
  mqttClient.print(" percent");
  mqttClient.endMessage();
}
