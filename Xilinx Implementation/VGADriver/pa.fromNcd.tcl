
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name VGADriver -dir "X:/Git/Hardware-Embedded-Bonsai/Xilinx Implementation/VGADriver/planAhead_run_1" -part xc3s1000ft256-5
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "X:/Git/Hardware-Embedded-Bonsai/Xilinx Implementation/VGADriver/VGA_driver.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {X:/Git/Hardware-Embedded-Bonsai/Xilinx Implementation/VGADriver} }
set_property target_constrs_file "vgadriver.ucf" [current_fileset -constrset]
add_files [list {vgadriver.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "X:/Git/Hardware-Embedded-Bonsai/Xilinx Implementation/VGADriver/VGA_driver.ncd"
if {[catch {read_twx -name results_1 -file "X:/Git/Hardware-Embedded-Bonsai/Xilinx Implementation/VGADriver/VGA_driver.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"X:/Git/Hardware-Embedded-Bonsai/Xilinx Implementation/VGADriver/VGA_driver.twx\": $eInfo"
}
