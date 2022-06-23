--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: VGA_driver_synthesis.vhd
-- /___/   /\     Timestamp: Thu Jun 23 15:25:31 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm VGA_driver -w -dir netgen/synthesis -ofmt vhdl -sim VGA_driver.ngc VGA_driver_synthesis.vhd 
-- Device	: xc3s1000-5-ft256
-- Input file	: VGA_driver.ngc
-- Output file	: X:\Git\Hardware-Embedded-Bonsai\Xilinx Implementation\VGADriver\netgen\synthesis\VGA_driver_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: VGA_driver
-- Xilinx	: X:\Installs\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity VGA_driver is
  port (
    CLK : in STD_LOGIC := 'X'; 
    VSYNC : out STD_LOGIC; 
    RST : in STD_LOGIC := 'X'; 
    HSYNC : out STD_LOGIC; 
    RGB : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end VGA_driver;

architecture Structure of VGA_driver is
  signal CLK_BUFGP_1 : STD_LOGIC; 
  signal HSYNC_OBUF_3 : STD_LOGIC; 
  signal HSYNC_cmp_le0000 : STD_LOGIC; 
  signal HSYNC_or0000 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_rt_7 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_rt_10 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_Q : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_Q : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_Q_20 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_4_Q_21 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_Q_22 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_Q_23 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_Q_24 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_Q_25 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_Q_26 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_0_rt_28 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_2_rt_31 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_10_Q : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_1_Q : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_3_Q_41 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_4_Q_42 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_5_Q_43 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_6_Q_44 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_7_Q_45 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_8_Q_46 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_9_Q_47 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_0_1_49 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_0_2_50 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_0_3 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_1_54 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_2_55 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_3 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_0_rt_57 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_rt_58 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_2_1_60 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_2_2_61 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_2_3 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_1_64 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_2_65 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_3 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_1_68 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_2_69 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_3 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_5_1_72 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_5_2_73 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_5_3 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_6_1_76 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_6_2_77 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_6_3 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_7_1_80 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_7_2_81 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_7_3 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_8_1_84 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_8_2_85 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_9_1_87 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_0_1 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_0_2 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_0_3_91 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_10_1 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_1_1_95 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_2_1 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_2_2_98 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_2_3_99 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_3_1_101 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_3_2_102 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_3_3_103 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_4_1_105 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_4_2_106 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_4_3_107 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_5_1_109 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_5_2_110 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_5_3_111 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_6_1_113 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_6_2_114 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_6_3_115 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_7_1_117 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_7_2_118 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_7_3_119 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_8_1_121 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_8_2 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_8_3 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_9_1_125 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_9_2 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_1_128 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_2_129 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_3 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_1_133 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_2_134 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_3 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_1_rt_136 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_rt_137 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_1_139 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_2_140 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_3 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_1_143 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_2_144 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_3 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_1_rt_146 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_2_rt_147 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_1_149 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_2_150 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_3 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_1_153 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_2_154 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_3 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_1_157 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_2_158 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_3 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_1_161 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_2_162 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_3 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_1_165 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_2_166 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_1_168 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_1_170 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_2_171 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_3 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_1 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_1_1_176 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_1_178 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_2 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_3 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_3_1_182 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_1_184 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_2_185 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_3_186 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_1_188 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_2_189 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_3_190 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_1_192 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_2_193 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_3_194 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_1_196 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_2_197 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_3_198 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_1 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_2_201 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_3_202 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_1 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_2 : STD_LOGIC; 
  signal Mcount_hPos_cy_10_rt_208 : STD_LOGIC; 
  signal Mcount_hPos_cy_11_rt_210 : STD_LOGIC; 
  signal Mcount_hPos_cy_12_rt_212 : STD_LOGIC; 
  signal Mcount_hPos_cy_13_rt_214 : STD_LOGIC; 
  signal Mcount_hPos_cy_14_rt_216 : STD_LOGIC; 
  signal Mcount_hPos_cy_15_rt_218 : STD_LOGIC; 
  signal Mcount_hPos_cy_16_rt_220 : STD_LOGIC; 
  signal Mcount_hPos_cy_17_rt_222 : STD_LOGIC; 
  signal Mcount_hPos_cy_18_rt_224 : STD_LOGIC; 
  signal Mcount_hPos_cy_19_rt_226 : STD_LOGIC; 
  signal Mcount_hPos_cy_1_rt_228 : STD_LOGIC; 
  signal Mcount_hPos_cy_20_rt_230 : STD_LOGIC; 
  signal Mcount_hPos_cy_21_rt_232 : STD_LOGIC; 
  signal Mcount_hPos_cy_22_rt_234 : STD_LOGIC; 
  signal Mcount_hPos_cy_23_rt_236 : STD_LOGIC; 
  signal Mcount_hPos_cy_24_rt_238 : STD_LOGIC; 
  signal Mcount_hPos_cy_25_rt_240 : STD_LOGIC; 
  signal Mcount_hPos_cy_26_rt_242 : STD_LOGIC; 
  signal Mcount_hPos_cy_27_rt_244 : STD_LOGIC; 
  signal Mcount_hPos_cy_28_rt_246 : STD_LOGIC; 
  signal Mcount_hPos_cy_29_rt_248 : STD_LOGIC; 
  signal Mcount_hPos_cy_2_rt_250 : STD_LOGIC; 
  signal Mcount_hPos_cy_30_rt_252 : STD_LOGIC; 
  signal Mcount_hPos_cy_3_rt_254 : STD_LOGIC; 
  signal Mcount_hPos_cy_4_rt_256 : STD_LOGIC; 
  signal Mcount_hPos_cy_5_rt_258 : STD_LOGIC; 
  signal Mcount_hPos_cy_6_rt_260 : STD_LOGIC; 
  signal Mcount_hPos_cy_7_rt_262 : STD_LOGIC; 
  signal Mcount_hPos_cy_8_rt_264 : STD_LOGIC; 
  signal Mcount_hPos_cy_9_rt_266 : STD_LOGIC; 
  signal Mcount_hPos_eqn_0 : STD_LOGIC; 
  signal Mcount_hPos_eqn_1 : STD_LOGIC; 
  signal Mcount_hPos_eqn_10 : STD_LOGIC; 
  signal Mcount_hPos_eqn_11 : STD_LOGIC; 
  signal Mcount_hPos_eqn_12 : STD_LOGIC; 
  signal Mcount_hPos_eqn_13 : STD_LOGIC; 
  signal Mcount_hPos_eqn_14 : STD_LOGIC; 
  signal Mcount_hPos_eqn_15 : STD_LOGIC; 
  signal Mcount_hPos_eqn_16 : STD_LOGIC; 
  signal Mcount_hPos_eqn_17 : STD_LOGIC; 
  signal Mcount_hPos_eqn_18 : STD_LOGIC; 
  signal Mcount_hPos_eqn_19 : STD_LOGIC; 
  signal Mcount_hPos_eqn_2 : STD_LOGIC; 
  signal Mcount_hPos_eqn_20 : STD_LOGIC; 
  signal Mcount_hPos_eqn_21 : STD_LOGIC; 
  signal Mcount_hPos_eqn_22 : STD_LOGIC; 
  signal Mcount_hPos_eqn_23 : STD_LOGIC; 
  signal Mcount_hPos_eqn_24 : STD_LOGIC; 
  signal Mcount_hPos_eqn_25 : STD_LOGIC; 
  signal Mcount_hPos_eqn_26 : STD_LOGIC; 
  signal Mcount_hPos_eqn_27 : STD_LOGIC; 
  signal Mcount_hPos_eqn_28 : STD_LOGIC; 
  signal Mcount_hPos_eqn_29 : STD_LOGIC; 
  signal Mcount_hPos_eqn_3 : STD_LOGIC; 
  signal Mcount_hPos_eqn_30 : STD_LOGIC; 
  signal Mcount_hPos_eqn_31 : STD_LOGIC; 
  signal Mcount_hPos_eqn_4 : STD_LOGIC; 
  signal Mcount_hPos_eqn_5 : STD_LOGIC; 
  signal Mcount_hPos_eqn_6 : STD_LOGIC; 
  signal Mcount_hPos_eqn_7 : STD_LOGIC; 
  signal Mcount_hPos_eqn_8 : STD_LOGIC; 
  signal Mcount_hPos_eqn_9 : STD_LOGIC; 
  signal Mcount_hPos_xor_31_rt_300 : STD_LOGIC; 
  signal Mcount_vPos_cy_10_rt_303 : STD_LOGIC; 
  signal Mcount_vPos_cy_11_rt_305 : STD_LOGIC; 
  signal Mcount_vPos_cy_12_rt_307 : STD_LOGIC; 
  signal Mcount_vPos_cy_13_rt_309 : STD_LOGIC; 
  signal Mcount_vPos_cy_14_rt_311 : STD_LOGIC; 
  signal Mcount_vPos_cy_15_rt_313 : STD_LOGIC; 
  signal Mcount_vPos_cy_16_rt_315 : STD_LOGIC; 
  signal Mcount_vPos_cy_17_rt_317 : STD_LOGIC; 
  signal Mcount_vPos_cy_18_rt_319 : STD_LOGIC; 
  signal Mcount_vPos_cy_19_rt_321 : STD_LOGIC; 
  signal Mcount_vPos_cy_1_rt_323 : STD_LOGIC; 
  signal Mcount_vPos_cy_20_rt_325 : STD_LOGIC; 
  signal Mcount_vPos_cy_21_rt_327 : STD_LOGIC; 
  signal Mcount_vPos_cy_22_rt_329 : STD_LOGIC; 
  signal Mcount_vPos_cy_23_rt_331 : STD_LOGIC; 
  signal Mcount_vPos_cy_24_rt_333 : STD_LOGIC; 
  signal Mcount_vPos_cy_25_rt_335 : STD_LOGIC; 
  signal Mcount_vPos_cy_26_rt_337 : STD_LOGIC; 
  signal Mcount_vPos_cy_27_rt_339 : STD_LOGIC; 
  signal Mcount_vPos_cy_28_rt_341 : STD_LOGIC; 
  signal Mcount_vPos_cy_29_rt_343 : STD_LOGIC; 
  signal Mcount_vPos_cy_2_rt_345 : STD_LOGIC; 
  signal Mcount_vPos_cy_30_rt_347 : STD_LOGIC; 
  signal Mcount_vPos_cy_3_rt_349 : STD_LOGIC; 
  signal Mcount_vPos_cy_4_rt_351 : STD_LOGIC; 
  signal Mcount_vPos_cy_5_rt_353 : STD_LOGIC; 
  signal Mcount_vPos_cy_6_rt_355 : STD_LOGIC; 
  signal Mcount_vPos_cy_7_rt_357 : STD_LOGIC; 
  signal Mcount_vPos_cy_8_rt_359 : STD_LOGIC; 
  signal Mcount_vPos_cy_9_rt_361 : STD_LOGIC; 
  signal Mcount_vPos_eqn_0 : STD_LOGIC; 
  signal Mcount_vPos_eqn_1 : STD_LOGIC; 
  signal Mcount_vPos_eqn_10 : STD_LOGIC; 
  signal Mcount_vPos_eqn_11 : STD_LOGIC; 
  signal Mcount_vPos_eqn_12 : STD_LOGIC; 
  signal Mcount_vPos_eqn_13 : STD_LOGIC; 
  signal Mcount_vPos_eqn_14 : STD_LOGIC; 
  signal Mcount_vPos_eqn_15 : STD_LOGIC; 
  signal Mcount_vPos_eqn_16 : STD_LOGIC; 
  signal Mcount_vPos_eqn_17 : STD_LOGIC; 
  signal Mcount_vPos_eqn_18 : STD_LOGIC; 
  signal Mcount_vPos_eqn_19 : STD_LOGIC; 
  signal Mcount_vPos_eqn_2 : STD_LOGIC; 
  signal Mcount_vPos_eqn_20 : STD_LOGIC; 
  signal Mcount_vPos_eqn_21 : STD_LOGIC; 
  signal Mcount_vPos_eqn_22 : STD_LOGIC; 
  signal Mcount_vPos_eqn_23 : STD_LOGIC; 
  signal Mcount_vPos_eqn_24 : STD_LOGIC; 
  signal Mcount_vPos_eqn_25 : STD_LOGIC; 
  signal Mcount_vPos_eqn_26 : STD_LOGIC; 
  signal Mcount_vPos_eqn_27 : STD_LOGIC; 
  signal Mcount_vPos_eqn_28 : STD_LOGIC; 
  signal Mcount_vPos_eqn_29 : STD_LOGIC; 
  signal Mcount_vPos_eqn_3 : STD_LOGIC; 
  signal Mcount_vPos_eqn_30 : STD_LOGIC; 
  signal Mcount_vPos_eqn_31 : STD_LOGIC; 
  signal Mcount_vPos_eqn_4 : STD_LOGIC; 
  signal Mcount_vPos_eqn_5 : STD_LOGIC; 
  signal Mcount_vPos_eqn_6 : STD_LOGIC; 
  signal Mcount_vPos_eqn_7 : STD_LOGIC; 
  signal Mcount_vPos_eqn_8 : STD_LOGIC; 
  signal Mcount_vPos_eqn_9 : STD_LOGIC; 
  signal Mcount_vPos_xor_31_rt_395 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal RGB_0_402 : STD_LOGIC; 
  signal RGB_cmp_ge0000 : STD_LOGIC; 
  signal RGB_cmp_ge0001 : STD_LOGIC; 
  signal RGB_cmp_le0000 : STD_LOGIC; 
  signal RGB_cmp_le0001 : STD_LOGIC; 
  signal RST_IBUF_409 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal Result_17_1 : STD_LOGIC; 
  signal Result_18_1 : STD_LOGIC; 
  signal Result_19_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_20_1 : STD_LOGIC; 
  signal Result_21_1 : STD_LOGIC; 
  signal Result_22_1 : STD_LOGIC; 
  signal Result_23_1 : STD_LOGIC; 
  signal Result_24_1 : STD_LOGIC; 
  signal Result_25_1 : STD_LOGIC; 
  signal Result_26_1 : STD_LOGIC; 
  signal Result_27_1 : STD_LOGIC; 
  signal Result_28_1 : STD_LOGIC; 
  signal Result_29_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_30_1 : STD_LOGIC; 
  signal Result_31_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal VSYNC_OBUF_475 : STD_LOGIC; 
  signal VSYNC_cmp_le0000 : STD_LOGIC; 
  signal VSYNC_or0000 : STD_LOGIC; 
  signal clk25_478 : STD_LOGIC; 
  signal clk251 : STD_LOGIC; 
  signal hPos_cmp_eq0000 : STD_LOGIC; 
  signal vPos_cmp_eq0000 : STD_LOGIC; 
  signal videoOn_576 : STD_LOGIC; 
  signal videoOn_cmp_le0000 : STD_LOGIC; 
  signal videoOn_cmp_le0001 : STD_LOGIC; 
  signal videoOn_not0001 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_RGB_cmp_ge0001_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_VSYNC_cmp_le0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Mcompar_VSYNC_cmp_le0000_lut : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Mcompar_videoOn_cmp_le0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Mcompar_videoOn_cmp_le0000_lut : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Mcount_hPos_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_hPos_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_vPos_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_vPos_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal RGB_mux0002 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal hPos : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal hPos_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal hPos_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal vPos : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal vPos_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal vPos_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  VSYNC_3 : FDC
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => VSYNC_or0000,
      Q => VSYNC_OBUF_475
    );
  videoOn : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      D => N1,
      R => videoOn_not0001,
      Q => videoOn_576
    );
  RGB_0 : FDC
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => RGB_mux0002(0),
      Q => RGB_0_402
    );
  HSYNC_6 : FDC
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => HSYNC_or0000,
      Q => HSYNC_OBUF_3
    );
  vPos_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_0,
      Q => vPos(0)
    );
  vPos_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_1,
      Q => vPos(1)
    );
  vPos_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_2,
      Q => vPos(2)
    );
  vPos_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_3,
      Q => vPos(3)
    );
  vPos_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_4,
      Q => vPos(4)
    );
  vPos_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_5,
      Q => vPos(5)
    );
  vPos_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_6,
      Q => vPos(6)
    );
  vPos_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_7,
      Q => vPos(7)
    );
  vPos_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_8,
      Q => vPos(8)
    );
  vPos_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_9,
      Q => vPos(9)
    );
  vPos_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_10,
      Q => vPos(10)
    );
  vPos_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_11,
      Q => vPos(11)
    );
  vPos_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_12,
      Q => vPos(12)
    );
  vPos_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_13,
      Q => vPos(13)
    );
  vPos_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_14,
      Q => vPos(14)
    );
  vPos_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_15,
      Q => vPos(15)
    );
  vPos_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_16,
      Q => vPos(16)
    );
  vPos_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_17,
      Q => vPos(17)
    );
  vPos_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_18,
      Q => vPos(18)
    );
  vPos_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_19,
      Q => vPos(19)
    );
  vPos_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_20,
      Q => vPos(20)
    );
  vPos_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_21,
      Q => vPos(21)
    );
  vPos_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_22,
      Q => vPos(22)
    );
  vPos_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_23,
      Q => vPos(23)
    );
  vPos_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_24,
      Q => vPos(24)
    );
  vPos_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_25,
      Q => vPos(25)
    );
  vPos_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_26,
      Q => vPos(26)
    );
  vPos_27 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_27,
      Q => vPos(27)
    );
  vPos_28 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_28,
      Q => vPos(28)
    );
  vPos_29 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_29,
      Q => vPos(29)
    );
  vPos_30 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_30,
      Q => vPos(30)
    );
  vPos_31 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_409,
      D => Mcount_vPos_eqn_31,
      Q => vPos(31)
    );
  hPos_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_0,
      Q => hPos(0)
    );
  hPos_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_1,
      Q => hPos(1)
    );
  hPos_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_2,
      Q => hPos(2)
    );
  hPos_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_3,
      Q => hPos(3)
    );
  hPos_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_4,
      Q => hPos(4)
    );
  hPos_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_5,
      Q => hPos(5)
    );
  hPos_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_6,
      Q => hPos(6)
    );
  hPos_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_7,
      Q => hPos(7)
    );
  hPos_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_8,
      Q => hPos(8)
    );
  hPos_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_9,
      Q => hPos(9)
    );
  hPos_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_10,
      Q => hPos(10)
    );
  hPos_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_11,
      Q => hPos(11)
    );
  hPos_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_12,
      Q => hPos(12)
    );
  hPos_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_13,
      Q => hPos(13)
    );
  hPos_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_14,
      Q => hPos(14)
    );
  hPos_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_15,
      Q => hPos(15)
    );
  hPos_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_16,
      Q => hPos(16)
    );
  hPos_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_17,
      Q => hPos(17)
    );
  hPos_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_18,
      Q => hPos(18)
    );
  hPos_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_19,
      Q => hPos(19)
    );
  hPos_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_20,
      Q => hPos(20)
    );
  hPos_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_21,
      Q => hPos(21)
    );
  hPos_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_22,
      Q => hPos(22)
    );
  hPos_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_23,
      Q => hPos(23)
    );
  hPos_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_24,
      Q => hPos(24)
    );
  hPos_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_25,
      Q => hPos(25)
    );
  hPos_26 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_26,
      Q => hPos(26)
    );
  hPos_27 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_27,
      Q => hPos(27)
    );
  hPos_28 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_28,
      Q => hPos(28)
    );
  hPos_29 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_29,
      Q => hPos(29)
    );
  hPos_30 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_30,
      Q => hPos(30)
    );
  hPos_31 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_478,
      CLR => RST_IBUF_409,
      D => Mcount_hPos_eqn_31,
      Q => hPos(31)
    );
  Mcompar_videoOn_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(7),
      I1 => hPos(8),
      O => Mcompar_videoOn_cmp_le0000_lut(0)
    );
  Mcompar_videoOn_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(0),
      O => Mcompar_videoOn_cmp_le0000_cy(0)
    );
  Mcompar_videoOn_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(0),
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_rt_137,
      O => Mcompar_videoOn_cmp_le0000_cy(1)
    );
  Mcompar_videoOn_cmp_le0000_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(10),
      I1 => hPos(11),
      I2 => hPos(12),
      I3 => hPos(13),
      O => Mcompar_videoOn_cmp_le0000_lut(2)
    );
  Mcompar_videoOn_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(1),
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(2),
      O => Mcompar_videoOn_cmp_le0000_cy(2)
    );
  Mcompar_videoOn_cmp_le0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(14),
      I1 => hPos(15),
      I2 => hPos(16),
      I3 => hPos(17),
      O => Mcompar_videoOn_cmp_le0000_lut(3)
    );
  Mcompar_videoOn_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(2),
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(3),
      O => Mcompar_videoOn_cmp_le0000_cy(3)
    );
  Mcompar_videoOn_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(18),
      I1 => hPos(19),
      I2 => hPos(20),
      I3 => hPos(21),
      O => Mcompar_videoOn_cmp_le0000_lut(4)
    );
  Mcompar_videoOn_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(3),
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(4),
      O => Mcompar_videoOn_cmp_le0000_cy(4)
    );
  Mcompar_videoOn_cmp_le0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(22),
      I1 => hPos(23),
      I2 => hPos(24),
      I3 => hPos(25),
      O => Mcompar_videoOn_cmp_le0000_lut(5)
    );
  Mcompar_videoOn_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(4),
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(5),
      O => Mcompar_videoOn_cmp_le0000_cy(5)
    );
  Mcompar_videoOn_cmp_le0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(26),
      I1 => hPos(27),
      I2 => hPos(28),
      I3 => hPos(29),
      O => Mcompar_videoOn_cmp_le0000_lut(6)
    );
  Mcompar_videoOn_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(5),
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(6),
      O => Mcompar_videoOn_cmp_le0000_cy(6)
    );
  Mcompar_videoOn_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(6),
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(7),
      O => Mcompar_videoOn_cmp_le0000_cy(7)
    );
  Mcompar_videoOn_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(7),
      DI => hPos(31),
      S => Mcompar_videoOn_cmp_le0000_lut(8),
      O => videoOn_cmp_le0000
    );
  Mcompar_videoOn_cmp_le0000_lut_0_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(0),
      I1 => hPos(1),
      O => Mcompar_videoOn_cmp_le0000_lut_0_1_170
    );
  Mcompar_videoOn_cmp_le0000_cy_0_0 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_1_170,
      O => Mcompar_videoOn_cmp_le0000_cy_0_1_128
    );
  Mcompar_videoOn_cmp_le0000_lut_1_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => hPos(2),
      I1 => hPos(3),
      I2 => hPos(4),
      I3 => hPos(5),
      O => Mcompar_videoOn_cmp_le0000_lut(1)
    );
  Mcompar_videoOn_cmp_le0000_cy_1_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_1_128,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut(1),
      O => Mcompar_videoOn_cmp_le0000_cy_1_1_133
    );
  Mcompar_videoOn_cmp_le0000_lut_2_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(6),
      I1 => hPos(7),
      I2 => hPos(8),
      I3 => hPos(9),
      O => Mcompar_videoOn_cmp_le0000_lut_2_1_178
    );
  Mcompar_videoOn_cmp_le0000_cy_2_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_1_133,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_1_178,
      O => Mcompar_videoOn_cmp_le0000_cy_2_1_139
    );
  Mcompar_videoOn_cmp_le0000_lut_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(10),
      I1 => hPos(11),
      I2 => hPos(12),
      I3 => hPos(13),
      O => Mcompar_videoOn_cmp_le0000_lut_3_1_182
    );
  Mcompar_videoOn_cmp_le0000_cy_3_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_1_139,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_3_1_182,
      O => Mcompar_videoOn_cmp_le0000_cy_3_1_143
    );
  Mcompar_videoOn_cmp_le0000_lut_4_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(14),
      I1 => hPos(15),
      I2 => hPos(16),
      I3 => hPos(17),
      O => Mcompar_videoOn_cmp_le0000_lut_4_1_184
    );
  Mcompar_videoOn_cmp_le0000_cy_4_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_1_143,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_1_184,
      O => Mcompar_videoOn_cmp_le0000_cy_4_1_149
    );
  Mcompar_videoOn_cmp_le0000_lut_5_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(18),
      I1 => hPos(19),
      I2 => hPos(20),
      I3 => hPos(21),
      O => Mcompar_videoOn_cmp_le0000_lut_5_1_188
    );
  Mcompar_videoOn_cmp_le0000_cy_5_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_1_149,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_1_188,
      O => Mcompar_videoOn_cmp_le0000_cy_5_1_153
    );
  Mcompar_videoOn_cmp_le0000_lut_6_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(22),
      I1 => hPos(23),
      I2 => hPos(24),
      I3 => hPos(25),
      O => Mcompar_videoOn_cmp_le0000_lut_6_1_192
    );
  Mcompar_videoOn_cmp_le0000_cy_6_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_1_153,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_1_192,
      O => Mcompar_videoOn_cmp_le0000_cy_6_1_157
    );
  Mcompar_videoOn_cmp_le0000_lut_7_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(26),
      I1 => hPos(27),
      I2 => hPos(28),
      I3 => hPos(29),
      O => Mcompar_videoOn_cmp_le0000_lut_7_1_196
    );
  Mcompar_videoOn_cmp_le0000_cy_7_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_1_157,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_1_196,
      O => Mcompar_videoOn_cmp_le0000_cy_7_1_161
    );
  Mcompar_videoOn_cmp_le0000_cy_8_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_1_161,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_1,
      O => Mcompar_videoOn_cmp_le0000_cy(8)
    );
  Mcompar_videoOn_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(8),
      DI => hPos(31),
      S => Mcompar_videoOn_cmp_le0000_lut(9),
      O => RGB_cmp_le0000
    );
  Mcompar_videoOn_cmp_le0000_lut_0_2 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(4),
      I1 => hPos(5),
      I2 => hPos(6),
      O => Mcompar_videoOn_cmp_le0000_lut_0_2_171
    );
  Mcompar_videoOn_cmp_le0000_cy_0_1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_2_171,
      O => Mcompar_videoOn_cmp_le0000_cy_0_2_129
    );
  Mcompar_videoOn_cmp_le0000_cy_1_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_2_129,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_1_rt_136,
      O => Mcompar_videoOn_cmp_le0000_cy_1_2_134
    );
  Mcompar_videoOn_cmp_le0000_cy_2_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_2_134,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_2,
      O => Mcompar_videoOn_cmp_le0000_cy_2_2_140
    );
  Mcompar_videoOn_cmp_le0000_cy_3_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_2_140,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_1_rt_146,
      O => Mcompar_videoOn_cmp_le0000_cy_3_2_144
    );
  Mcompar_videoOn_cmp_le0000_lut_4_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(10),
      I1 => hPos(11),
      I2 => hPos(12),
      I3 => hPos(13),
      O => Mcompar_videoOn_cmp_le0000_lut_4_2_185
    );
  Mcompar_videoOn_cmp_le0000_cy_4_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_2_144,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_2_185,
      O => Mcompar_videoOn_cmp_le0000_cy_4_2_150
    );
  Mcompar_videoOn_cmp_le0000_lut_5_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(14),
      I1 => hPos(15),
      I2 => hPos(16),
      I3 => hPos(17),
      O => Mcompar_videoOn_cmp_le0000_lut_5_2_189
    );
  Mcompar_videoOn_cmp_le0000_cy_5_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_2_150,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_2_189,
      O => Mcompar_videoOn_cmp_le0000_cy_5_2_154
    );
  Mcompar_videoOn_cmp_le0000_lut_6_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(18),
      I1 => hPos(19),
      I2 => hPos(20),
      I3 => hPos(21),
      O => Mcompar_videoOn_cmp_le0000_lut_6_2_193
    );
  Mcompar_videoOn_cmp_le0000_cy_6_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_2_154,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_2_193,
      O => Mcompar_videoOn_cmp_le0000_cy_6_2_158
    );
  Mcompar_videoOn_cmp_le0000_lut_7_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(22),
      I1 => hPos(23),
      I2 => hPos(24),
      I3 => hPos(25),
      O => Mcompar_videoOn_cmp_le0000_lut_7_2_197
    );
  Mcompar_videoOn_cmp_le0000_cy_7_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_2_158,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_2_197,
      O => Mcompar_videoOn_cmp_le0000_cy_7_2_162
    );
  Mcompar_videoOn_cmp_le0000_lut_8_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(26),
      I1 => hPos(27),
      I2 => hPos(28),
      I3 => hPos(29),
      O => Mcompar_videoOn_cmp_le0000_lut_8_2_201
    );
  Mcompar_videoOn_cmp_le0000_cy_8_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_2_162,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_2_201,
      O => Mcompar_videoOn_cmp_le0000_cy_8_1_165
    );
  Mcompar_videoOn_cmp_le0000_cy_9_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_1_165,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_1,
      O => Mcompar_videoOn_cmp_le0000_cy(9)
    );
  Mcompar_videoOn_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(9),
      DI => hPos(31),
      S => Mcompar_videoOn_cmp_le0000_lut(10),
      O => HSYNC_cmp_le0000
    );
  Mcompar_videoOn_cmp_le0000_cy_0_2 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_3,
      O => Mcompar_videoOn_cmp_le0000_cy_0_3
    );
  Mcompar_videoOn_cmp_le0000_lut_1_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos(5),
      I1 => hPos(6),
      I2 => hPos(7),
      O => Mcompar_videoOn_cmp_le0000_lut_1_1_176
    );
  Mcompar_videoOn_cmp_le0000_cy_1_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_3,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_1_1_176,
      O => Mcompar_videoOn_cmp_le0000_cy_1_3
    );
  Mcompar_videoOn_cmp_le0000_cy_2_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_3,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_3,
      O => Mcompar_videoOn_cmp_le0000_cy_2_3
    );
  Mcompar_videoOn_cmp_le0000_cy_3_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_3,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_2_rt_147,
      O => Mcompar_videoOn_cmp_le0000_cy_3_3
    );
  Mcompar_videoOn_cmp_le0000_lut_4_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(10),
      I1 => hPos(11),
      I2 => hPos(12),
      I3 => hPos(13),
      O => Mcompar_videoOn_cmp_le0000_lut_4_3_186
    );
  Mcompar_videoOn_cmp_le0000_cy_4_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_3,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_3_186,
      O => Mcompar_videoOn_cmp_le0000_cy_4_3
    );
  Mcompar_videoOn_cmp_le0000_lut_5_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(14),
      I1 => hPos(15),
      I2 => hPos(16),
      I3 => hPos(17),
      O => Mcompar_videoOn_cmp_le0000_lut_5_3_190
    );
  Mcompar_videoOn_cmp_le0000_cy_5_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_3,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_3_190,
      O => Mcompar_videoOn_cmp_le0000_cy_5_3
    );
  Mcompar_videoOn_cmp_le0000_lut_6_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(18),
      I1 => hPos(19),
      I2 => hPos(20),
      I3 => hPos(21),
      O => Mcompar_videoOn_cmp_le0000_lut_6_3_194
    );
  Mcompar_videoOn_cmp_le0000_cy_6_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_3,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_3_194,
      O => Mcompar_videoOn_cmp_le0000_cy_6_3
    );
  Mcompar_videoOn_cmp_le0000_lut_7_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(22),
      I1 => hPos(23),
      I2 => hPos(24),
      I3 => hPos(25),
      O => Mcompar_videoOn_cmp_le0000_lut_7_3_198
    );
  Mcompar_videoOn_cmp_le0000_cy_7_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_3,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_3_198,
      O => Mcompar_videoOn_cmp_le0000_cy_7_3
    );
  Mcompar_videoOn_cmp_le0000_lut_8_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(26),
      I1 => hPos(27),
      I2 => hPos(28),
      I3 => hPos(29),
      O => Mcompar_videoOn_cmp_le0000_lut_8_3_202
    );
  Mcompar_videoOn_cmp_le0000_cy_8_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_3,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_3_202,
      O => Mcompar_videoOn_cmp_le0000_cy_8_2_166
    );
  Mcompar_videoOn_cmp_le0000_cy_9_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_2_166,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_2,
      O => Mcompar_videoOn_cmp_le0000_cy_9_1_168
    );
  Mcompar_videoOn_cmp_le0000_cy_10_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_1_168,
      DI => hPos(31),
      S => Mcompar_videoOn_cmp_le0000_lut_10_1,
      O => Mcompar_videoOn_cmp_le0000_cy(10)
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(1),
      I1 => vPos(2),
      O => Mcompar_VSYNC_cmp_le0000_lut(0)
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(0),
      O => Mcompar_VSYNC_cmp_le0000_cy(0)
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(0),
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_1_rt_58,
      O => Mcompar_VSYNC_cmp_le0000_cy(1)
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(1),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(2),
      O => Mcompar_VSYNC_cmp_le0000_cy(2)
    );
  Mcompar_VSYNC_cmp_le0000_lut_3_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => vPos(5),
      I1 => vPos(6),
      I2 => vPos(7),
      I3 => vPos(8),
      O => Mcompar_VSYNC_cmp_le0000_lut(3)
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(2),
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_lut(3),
      O => Mcompar_VSYNC_cmp_le0000_cy(3)
    );
  Mcompar_VSYNC_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(9),
      I1 => vPos(10),
      I2 => vPos(11),
      I3 => vPos(12),
      O => Mcompar_VSYNC_cmp_le0000_lut(4)
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(3),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(4),
      O => Mcompar_VSYNC_cmp_le0000_cy(4)
    );
  Mcompar_VSYNC_cmp_le0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(13),
      I1 => vPos(14),
      I2 => vPos(15),
      I3 => vPos(16),
      O => Mcompar_VSYNC_cmp_le0000_lut(5)
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(4),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(5),
      O => Mcompar_VSYNC_cmp_le0000_cy(5)
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(17),
      I1 => vPos(18),
      I2 => vPos(19),
      I3 => vPos(20),
      O => Mcompar_VSYNC_cmp_le0000_lut(6)
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(5),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(6),
      O => Mcompar_VSYNC_cmp_le0000_cy(6)
    );
  Mcompar_VSYNC_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(21),
      I1 => vPos(22),
      I2 => vPos(23),
      I3 => vPos(24),
      O => Mcompar_VSYNC_cmp_le0000_lut(7)
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(6),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(7),
      O => Mcompar_VSYNC_cmp_le0000_cy(7)
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(25),
      I1 => vPos(26),
      I2 => vPos(27),
      I3 => vPos(28),
      O => Mcompar_VSYNC_cmp_le0000_lut(8)
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(7),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(8),
      O => Mcompar_VSYNC_cmp_le0000_cy(8)
    );
  Mcompar_VSYNC_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(29),
      I1 => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut(9)
    );
  Mcompar_VSYNC_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(8),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(9),
      O => Mcompar_VSYNC_cmp_le0000_cy(9)
    );
  Mcompar_VSYNC_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(9),
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut(10),
      O => VSYNC_cmp_le0000
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_0 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_0_1,
      O => Mcompar_VSYNC_cmp_le0000_cy_0_1_49
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_0_1_49,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_1_0_rt_57,
      O => Mcompar_VSYNC_cmp_le0000_cy_1_1_54
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_1_1_54,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_2_1,
      O => Mcompar_VSYNC_cmp_le0000_cy_2_1_60
    );
  Mcompar_VSYNC_cmp_le0000_lut_3_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => vPos(5),
      I1 => vPos(6),
      I2 => vPos(7),
      I3 => vPos(8),
      O => Mcompar_VSYNC_cmp_le0000_lut_3_1_101
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_2_1_60,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_lut_3_1_101,
      O => Mcompar_VSYNC_cmp_le0000_cy_3_1_64
    );
  Mcompar_VSYNC_cmp_le0000_lut_4_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(9),
      I1 => vPos(10),
      I2 => vPos(11),
      I3 => vPos(12),
      O => Mcompar_VSYNC_cmp_le0000_lut_4_1_105
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_3_1_64,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_4_1_105,
      O => Mcompar_VSYNC_cmp_le0000_cy_4_1_68
    );
  Mcompar_VSYNC_cmp_le0000_lut_5_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(13),
      I1 => vPos(14),
      I2 => vPos(15),
      I3 => vPos(16),
      O => Mcompar_VSYNC_cmp_le0000_lut_5_1_109
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_4_1_68,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_5_1_109,
      O => Mcompar_VSYNC_cmp_le0000_cy_5_1_72
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(17),
      I1 => vPos(18),
      I2 => vPos(19),
      I3 => vPos(20),
      O => Mcompar_VSYNC_cmp_le0000_lut_6_1_113
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_5_1_72,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_6_1_113,
      O => Mcompar_VSYNC_cmp_le0000_cy_6_1_76
    );
  Mcompar_VSYNC_cmp_le0000_lut_7_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(21),
      I1 => vPos(22),
      I2 => vPos(23),
      I3 => vPos(24),
      O => Mcompar_VSYNC_cmp_le0000_lut_7_1_117
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_6_1_76,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_7_1_117,
      O => Mcompar_VSYNC_cmp_le0000_cy_7_1_80
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(25),
      I1 => vPos(26),
      I2 => vPos(27),
      I3 => vPos(28),
      O => Mcompar_VSYNC_cmp_le0000_lut_8_1_121
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_7_1_80,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_8_1_121,
      O => Mcompar_VSYNC_cmp_le0000_cy_8_1_84
    );
  Mcompar_VSYNC_cmp_le0000_lut_9_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(29),
      I1 => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut_9_1_125
    );
  Mcompar_VSYNC_cmp_le0000_cy_9_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_8_1_84,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_9_1_125,
      O => Mcompar_VSYNC_cmp_le0000_cy_9_1_87
    );
  Mcompar_VSYNC_cmp_le0000_cy_10_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_9_1_87,
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut_10_1,
      O => Mcompar_VSYNC_cmp_le0000_cy(10)
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_0_2,
      O => Mcompar_VSYNC_cmp_le0000_cy_0_2_50
    );
  Mcompar_VSYNC_cmp_le0000_lut_1_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vPos(6),
      I1 => vPos(7),
      I2 => vPos(8),
      O => Mcompar_VSYNC_cmp_le0000_lut(1)
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_0_2_50,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_lut(1),
      O => Mcompar_VSYNC_cmp_le0000_cy_1_2_55
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(9),
      I1 => vPos(10),
      I2 => vPos(11),
      I3 => vPos(12),
      O => Mcompar_VSYNC_cmp_le0000_lut_2_2_98
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_1_2_55,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_2_2_98,
      O => Mcompar_VSYNC_cmp_le0000_cy_2_2_61
    );
  Mcompar_VSYNC_cmp_le0000_lut_3_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(13),
      I1 => vPos(14),
      I2 => vPos(15),
      I3 => vPos(16),
      O => Mcompar_VSYNC_cmp_le0000_lut_3_2_102
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_2_2_61,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_3_2_102,
      O => Mcompar_VSYNC_cmp_le0000_cy_3_2_65
    );
  Mcompar_VSYNC_cmp_le0000_lut_4_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(17),
      I1 => vPos(18),
      I2 => vPos(19),
      I3 => vPos(20),
      O => Mcompar_VSYNC_cmp_le0000_lut_4_2_106
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_3_2_65,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_4_2_106,
      O => Mcompar_VSYNC_cmp_le0000_cy_4_2_69
    );
  Mcompar_VSYNC_cmp_le0000_lut_5_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(21),
      I1 => vPos(22),
      I2 => vPos(23),
      I3 => vPos(24),
      O => Mcompar_VSYNC_cmp_le0000_lut_5_2_110
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_4_2_69,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_5_2_110,
      O => Mcompar_VSYNC_cmp_le0000_cy_5_2_73
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(25),
      I1 => vPos(26),
      I2 => vPos(27),
      I3 => vPos(28),
      O => Mcompar_VSYNC_cmp_le0000_lut_6_2_114
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_5_2_73,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_6_2_114,
      O => Mcompar_VSYNC_cmp_le0000_cy_6_2_77
    );
  Mcompar_VSYNC_cmp_le0000_lut_7_2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(29),
      I1 => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut_7_2_118
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_6_2_77,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_7_2_118,
      O => Mcompar_VSYNC_cmp_le0000_cy_7_2_81
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_7_2_81,
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut_8_2,
      O => videoOn_cmp_le0001
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_3 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(0),
      I1 => vPos(1),
      O => Mcompar_VSYNC_cmp_le0000_lut_0_3_91
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_2 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_0_3_91,
      O => Mcompar_VSYNC_cmp_le0000_cy_0_3
    );
  Mcompar_VSYNC_cmp_le0000_lut_1_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => vPos(2),
      I1 => vPos(3),
      I2 => vPos(4),
      I3 => vPos(5),
      O => Mcompar_VSYNC_cmp_le0000_lut_1_1_95
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_0_3,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_lut_1_1_95,
      O => Mcompar_VSYNC_cmp_le0000_cy_1_3
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(6),
      I1 => vPos(7),
      I2 => vPos(8),
      I3 => vPos(9),
      O => Mcompar_VSYNC_cmp_le0000_lut_2_3_99
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_1_3,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_2_3_99,
      O => Mcompar_VSYNC_cmp_le0000_cy_2_3
    );
  Mcompar_VSYNC_cmp_le0000_lut_3_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(10),
      I1 => vPos(11),
      I2 => vPos(12),
      I3 => vPos(13),
      O => Mcompar_VSYNC_cmp_le0000_lut_3_3_103
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_2_3,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_3_3_103,
      O => Mcompar_VSYNC_cmp_le0000_cy_3_3
    );
  Mcompar_VSYNC_cmp_le0000_lut_4_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(14),
      I1 => vPos(15),
      I2 => vPos(16),
      I3 => vPos(17),
      O => Mcompar_VSYNC_cmp_le0000_lut_4_3_107
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_3_3,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_4_3_107,
      O => Mcompar_VSYNC_cmp_le0000_cy_4_3
    );
  Mcompar_VSYNC_cmp_le0000_lut_5_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(18),
      I1 => vPos(19),
      I2 => vPos(20),
      I3 => vPos(21),
      O => Mcompar_VSYNC_cmp_le0000_lut_5_3_111
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_4_3,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_5_3_111,
      O => Mcompar_VSYNC_cmp_le0000_cy_5_3
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(22),
      I1 => vPos(23),
      I2 => vPos(24),
      I3 => vPos(25),
      O => Mcompar_VSYNC_cmp_le0000_lut_6_3_115
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_5_3,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_6_3_115,
      O => Mcompar_VSYNC_cmp_le0000_cy_6_3
    );
  Mcompar_VSYNC_cmp_le0000_lut_7_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(26),
      I1 => vPos(27),
      I2 => vPos(28),
      I3 => vPos(29),
      O => Mcompar_VSYNC_cmp_le0000_lut_7_3_119
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_6_3,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_7_3_119,
      O => Mcompar_VSYNC_cmp_le0000_cy_7_3
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_7_3,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_8_3,
      O => Mcompar_VSYNC_cmp_le0000_cy_8_2_85
    );
  Mcompar_VSYNC_cmp_le0000_cy_9_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_8_2_85,
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut_9_2,
      O => RGB_cmp_le0001
    );
  Mcompar_RGB_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_0_rt_7,
      O => Mcompar_RGB_cmp_ge0000_cy(0)
    );
  Mcompar_RGB_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(0),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_Q,
      O => Mcompar_RGB_cmp_ge0000_cy(1)
    );
  Mcompar_RGB_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(1),
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_rt_10,
      O => Mcompar_RGB_cmp_ge0000_cy(2)
    );
  Mcompar_RGB_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(4),
      I1 => hPos(5),
      I2 => hPos(6),
      I3 => hPos(7),
      O => Mcompar_RGB_cmp_ge0000_lut_3_Q_20
    );
  Mcompar_RGB_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(2),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_Q_20,
      O => Mcompar_RGB_cmp_ge0000_cy(3)
    );
  Mcompar_RGB_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(8),
      I1 => hPos(9),
      I2 => hPos(10),
      I3 => hPos(11),
      O => Mcompar_RGB_cmp_ge0000_lut_4_Q_21
    );
  Mcompar_RGB_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(3),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_4_Q_21,
      O => Mcompar_RGB_cmp_ge0000_cy(4)
    );
  Mcompar_RGB_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(12),
      I1 => hPos(13),
      I2 => hPos(14),
      I3 => hPos(15),
      O => Mcompar_RGB_cmp_ge0000_lut_5_Q_22
    );
  Mcompar_RGB_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(4),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_Q_22,
      O => Mcompar_RGB_cmp_ge0000_cy(5)
    );
  Mcompar_RGB_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(16),
      I1 => hPos(17),
      I2 => hPos(18),
      I3 => hPos(19),
      O => Mcompar_RGB_cmp_ge0000_lut_6_Q_23
    );
  Mcompar_RGB_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(5),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_Q_23,
      O => Mcompar_RGB_cmp_ge0000_cy(6)
    );
  Mcompar_RGB_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(20),
      I1 => hPos(21),
      I2 => hPos(22),
      I3 => hPos(23),
      O => Mcompar_RGB_cmp_ge0000_lut_7_Q_24
    );
  Mcompar_RGB_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(6),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_Q_24,
      O => Mcompar_RGB_cmp_ge0000_cy(7)
    );
  Mcompar_RGB_cmp_ge0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(24),
      I1 => hPos(25),
      I2 => hPos(26),
      I3 => hPos(27),
      O => Mcompar_RGB_cmp_ge0000_lut_8_Q_25
    );
  Mcompar_RGB_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(7),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_Q_25,
      O => Mcompar_RGB_cmp_ge0000_cy(8)
    );
  Mcompar_RGB_cmp_ge0000_lut_9_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(28),
      I1 => hPos(29),
      I2 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_9_Q_26
    );
  Mcompar_RGB_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(8),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_Q_26,
      O => Mcompar_RGB_cmp_ge0000_cy(9)
    );
  Mcompar_RGB_cmp_ge0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(9),
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_10_Q,
      O => RGB_cmp_ge0000
    );
  Mcompar_RGB_cmp_ge0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_cy_0_rt_28,
      O => Mcompar_RGB_cmp_ge0001_cy(0)
    );
  Mcompar_RGB_cmp_ge0001_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(0),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_1_Q,
      O => Mcompar_RGB_cmp_ge0001_cy(1)
    );
  Mcompar_RGB_cmp_ge0001_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(1),
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_cy_2_rt_31,
      O => Mcompar_RGB_cmp_ge0001_cy(2)
    );
  Mcompar_RGB_cmp_ge0001_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(4),
      I1 => vPos(5),
      I2 => vPos(6),
      I3 => vPos(7),
      O => Mcompar_RGB_cmp_ge0001_lut_3_Q_41
    );
  Mcompar_RGB_cmp_ge0001_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(2),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_3_Q_41,
      O => Mcompar_RGB_cmp_ge0001_cy(3)
    );
  Mcompar_RGB_cmp_ge0001_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(8),
      I1 => vPos(9),
      I2 => vPos(10),
      I3 => vPos(11),
      O => Mcompar_RGB_cmp_ge0001_lut_4_Q_42
    );
  Mcompar_RGB_cmp_ge0001_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(3),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_4_Q_42,
      O => Mcompar_RGB_cmp_ge0001_cy(4)
    );
  Mcompar_RGB_cmp_ge0001_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(12),
      I1 => vPos(13),
      I2 => vPos(14),
      I3 => vPos(15),
      O => Mcompar_RGB_cmp_ge0001_lut_5_Q_43
    );
  Mcompar_RGB_cmp_ge0001_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(4),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_5_Q_43,
      O => Mcompar_RGB_cmp_ge0001_cy(5)
    );
  Mcompar_RGB_cmp_ge0001_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(16),
      I1 => vPos(17),
      I2 => vPos(18),
      I3 => vPos(19),
      O => Mcompar_RGB_cmp_ge0001_lut_6_Q_44
    );
  Mcompar_RGB_cmp_ge0001_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(5),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_6_Q_44,
      O => Mcompar_RGB_cmp_ge0001_cy(6)
    );
  Mcompar_RGB_cmp_ge0001_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(20),
      I1 => vPos(21),
      I2 => vPos(22),
      I3 => vPos(23),
      O => Mcompar_RGB_cmp_ge0001_lut_7_Q_45
    );
  Mcompar_RGB_cmp_ge0001_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(6),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_7_Q_45,
      O => Mcompar_RGB_cmp_ge0001_cy(7)
    );
  Mcompar_RGB_cmp_ge0001_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(24),
      I1 => vPos(25),
      I2 => vPos(26),
      I3 => vPos(27),
      O => Mcompar_RGB_cmp_ge0001_lut_8_Q_46
    );
  Mcompar_RGB_cmp_ge0001_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(7),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_8_Q_46,
      O => Mcompar_RGB_cmp_ge0001_cy(8)
    );
  Mcompar_RGB_cmp_ge0001_lut_9_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => vPos(28),
      I1 => vPos(29),
      I2 => vPos(30),
      O => Mcompar_RGB_cmp_ge0001_lut_9_Q_47
    );
  Mcompar_RGB_cmp_ge0001_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(8),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_9_Q_47,
      O => Mcompar_RGB_cmp_ge0001_cy(9)
    );
  Mcompar_RGB_cmp_ge0001_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(9),
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut_10_Q,
      O => RGB_cmp_ge0001
    );
  Mcount_vPos_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_vPos_lut(0),
      O => Mcount_vPos_cy(0)
    );
  Mcount_vPos_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_vPos_lut(0),
      O => Result_0_1
    );
  Mcount_vPos_cy_1_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(0),
      DI => N0,
      S => Mcount_vPos_cy_1_rt_323,
      O => Mcount_vPos_cy(1)
    );
  Mcount_vPos_xor_1_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(0),
      LI => Mcount_vPos_cy_1_rt_323,
      O => Result_1_1
    );
  Mcount_vPos_cy_2_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(1),
      DI => N0,
      S => Mcount_vPos_cy_2_rt_345,
      O => Mcount_vPos_cy(2)
    );
  Mcount_vPos_xor_2_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(1),
      LI => Mcount_vPos_cy_2_rt_345,
      O => Result_2_1
    );
  Mcount_vPos_cy_3_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(2),
      DI => N0,
      S => Mcount_vPos_cy_3_rt_349,
      O => Mcount_vPos_cy(3)
    );
  Mcount_vPos_xor_3_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(2),
      LI => Mcount_vPos_cy_3_rt_349,
      O => Result_3_1
    );
  Mcount_vPos_cy_4_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(3),
      DI => N0,
      S => Mcount_vPos_cy_4_rt_351,
      O => Mcount_vPos_cy(4)
    );
  Mcount_vPos_xor_4_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(3),
      LI => Mcount_vPos_cy_4_rt_351,
      O => Result_4_1
    );
  Mcount_vPos_cy_5_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(4),
      DI => N0,
      S => Mcount_vPos_cy_5_rt_353,
      O => Mcount_vPos_cy(5)
    );
  Mcount_vPos_xor_5_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(4),
      LI => Mcount_vPos_cy_5_rt_353,
      O => Result_5_1
    );
  Mcount_vPos_cy_6_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(5),
      DI => N0,
      S => Mcount_vPos_cy_6_rt_355,
      O => Mcount_vPos_cy(6)
    );
  Mcount_vPos_xor_6_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(5),
      LI => Mcount_vPos_cy_6_rt_355,
      O => Result_6_1
    );
  Mcount_vPos_cy_7_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(6),
      DI => N0,
      S => Mcount_vPos_cy_7_rt_357,
      O => Mcount_vPos_cy(7)
    );
  Mcount_vPos_xor_7_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(6),
      LI => Mcount_vPos_cy_7_rt_357,
      O => Result_7_1
    );
  Mcount_vPos_cy_8_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(7),
      DI => N0,
      S => Mcount_vPos_cy_8_rt_359,
      O => Mcount_vPos_cy(8)
    );
  Mcount_vPos_xor_8_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(7),
      LI => Mcount_vPos_cy_8_rt_359,
      O => Result_8_1
    );
  Mcount_vPos_cy_9_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(8),
      DI => N0,
      S => Mcount_vPos_cy_9_rt_361,
      O => Mcount_vPos_cy(9)
    );
  Mcount_vPos_xor_9_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(8),
      LI => Mcount_vPos_cy_9_rt_361,
      O => Result_9_1
    );
  Mcount_vPos_cy_10_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(9),
      DI => N0,
      S => Mcount_vPos_cy_10_rt_303,
      O => Mcount_vPos_cy(10)
    );
  Mcount_vPos_xor_10_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(9),
      LI => Mcount_vPos_cy_10_rt_303,
      O => Result_10_1
    );
  Mcount_vPos_cy_11_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(10),
      DI => N0,
      S => Mcount_vPos_cy_11_rt_305,
      O => Mcount_vPos_cy(11)
    );
  Mcount_vPos_xor_11_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(10),
      LI => Mcount_vPos_cy_11_rt_305,
      O => Result_11_1
    );
  Mcount_vPos_cy_12_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(11),
      DI => N0,
      S => Mcount_vPos_cy_12_rt_307,
      O => Mcount_vPos_cy(12)
    );
  Mcount_vPos_xor_12_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(11),
      LI => Mcount_vPos_cy_12_rt_307,
      O => Result_12_1
    );
  Mcount_vPos_cy_13_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(12),
      DI => N0,
      S => Mcount_vPos_cy_13_rt_309,
      O => Mcount_vPos_cy(13)
    );
  Mcount_vPos_xor_13_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(12),
      LI => Mcount_vPos_cy_13_rt_309,
      O => Result_13_1
    );
  Mcount_vPos_cy_14_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(13),
      DI => N0,
      S => Mcount_vPos_cy_14_rt_311,
      O => Mcount_vPos_cy(14)
    );
  Mcount_vPos_xor_14_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(13),
      LI => Mcount_vPos_cy_14_rt_311,
      O => Result_14_1
    );
  Mcount_vPos_cy_15_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(14),
      DI => N0,
      S => Mcount_vPos_cy_15_rt_313,
      O => Mcount_vPos_cy(15)
    );
  Mcount_vPos_xor_15_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(14),
      LI => Mcount_vPos_cy_15_rt_313,
      O => Result_15_1
    );
  Mcount_vPos_cy_16_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(15),
      DI => N0,
      S => Mcount_vPos_cy_16_rt_315,
      O => Mcount_vPos_cy(16)
    );
  Mcount_vPos_xor_16_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(15),
      LI => Mcount_vPos_cy_16_rt_315,
      O => Result_16_1
    );
  Mcount_vPos_cy_17_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(16),
      DI => N0,
      S => Mcount_vPos_cy_17_rt_317,
      O => Mcount_vPos_cy(17)
    );
  Mcount_vPos_xor_17_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(16),
      LI => Mcount_vPos_cy_17_rt_317,
      O => Result_17_1
    );
  Mcount_vPos_cy_18_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(17),
      DI => N0,
      S => Mcount_vPos_cy_18_rt_319,
      O => Mcount_vPos_cy(18)
    );
  Mcount_vPos_xor_18_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(17),
      LI => Mcount_vPos_cy_18_rt_319,
      O => Result_18_1
    );
  Mcount_vPos_cy_19_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(18),
      DI => N0,
      S => Mcount_vPos_cy_19_rt_321,
      O => Mcount_vPos_cy(19)
    );
  Mcount_vPos_xor_19_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(18),
      LI => Mcount_vPos_cy_19_rt_321,
      O => Result_19_1
    );
  Mcount_vPos_cy_20_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(19),
      DI => N0,
      S => Mcount_vPos_cy_20_rt_325,
      O => Mcount_vPos_cy(20)
    );
  Mcount_vPos_xor_20_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(19),
      LI => Mcount_vPos_cy_20_rt_325,
      O => Result_20_1
    );
  Mcount_vPos_cy_21_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(20),
      DI => N0,
      S => Mcount_vPos_cy_21_rt_327,
      O => Mcount_vPos_cy(21)
    );
  Mcount_vPos_xor_21_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(20),
      LI => Mcount_vPos_cy_21_rt_327,
      O => Result_21_1
    );
  Mcount_vPos_cy_22_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(21),
      DI => N0,
      S => Mcount_vPos_cy_22_rt_329,
      O => Mcount_vPos_cy(22)
    );
  Mcount_vPos_xor_22_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(21),
      LI => Mcount_vPos_cy_22_rt_329,
      O => Result_22_1
    );
  Mcount_vPos_cy_23_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(22),
      DI => N0,
      S => Mcount_vPos_cy_23_rt_331,
      O => Mcount_vPos_cy(23)
    );
  Mcount_vPos_xor_23_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(22),
      LI => Mcount_vPos_cy_23_rt_331,
      O => Result_23_1
    );
  Mcount_vPos_cy_24_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(23),
      DI => N0,
      S => Mcount_vPos_cy_24_rt_333,
      O => Mcount_vPos_cy(24)
    );
  Mcount_vPos_xor_24_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(23),
      LI => Mcount_vPos_cy_24_rt_333,
      O => Result_24_1
    );
  Mcount_vPos_cy_25_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(24),
      DI => N0,
      S => Mcount_vPos_cy_25_rt_335,
      O => Mcount_vPos_cy(25)
    );
  Mcount_vPos_xor_25_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(24),
      LI => Mcount_vPos_cy_25_rt_335,
      O => Result_25_1
    );
  Mcount_vPos_cy_26_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(25),
      DI => N0,
      S => Mcount_vPos_cy_26_rt_337,
      O => Mcount_vPos_cy(26)
    );
  Mcount_vPos_xor_26_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(25),
      LI => Mcount_vPos_cy_26_rt_337,
      O => Result_26_1
    );
  Mcount_vPos_cy_27_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(26),
      DI => N0,
      S => Mcount_vPos_cy_27_rt_339,
      O => Mcount_vPos_cy(27)
    );
  Mcount_vPos_xor_27_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(26),
      LI => Mcount_vPos_cy_27_rt_339,
      O => Result_27_1
    );
  Mcount_vPos_cy_28_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(27),
      DI => N0,
      S => Mcount_vPos_cy_28_rt_341,
      O => Mcount_vPos_cy(28)
    );
  Mcount_vPos_xor_28_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(27),
      LI => Mcount_vPos_cy_28_rt_341,
      O => Result_28_1
    );
  Mcount_vPos_cy_29_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(28),
      DI => N0,
      S => Mcount_vPos_cy_29_rt_343,
      O => Mcount_vPos_cy(29)
    );
  Mcount_vPos_xor_29_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(28),
      LI => Mcount_vPos_cy_29_rt_343,
      O => Result_29_1
    );
  Mcount_vPos_cy_30_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(29),
      DI => N0,
      S => Mcount_vPos_cy_30_rt_347,
      O => Mcount_vPos_cy(30)
    );
  Mcount_vPos_xor_30_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(29),
      LI => Mcount_vPos_cy_30_rt_347,
      O => Result_30_1
    );
  Mcount_vPos_xor_31_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(30),
      LI => Mcount_vPos_xor_31_rt_395,
      O => Result_31_1
    );
  Mcount_hPos_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_hPos_lut(0),
      O => Mcount_hPos_cy(0)
    );
  Mcount_hPos_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_hPos_lut(0),
      O => Result(0)
    );
  Mcount_hPos_cy_1_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(0),
      DI => N0,
      S => Mcount_hPos_cy_1_rt_228,
      O => Mcount_hPos_cy(1)
    );
  Mcount_hPos_xor_1_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(0),
      LI => Mcount_hPos_cy_1_rt_228,
      O => Result(1)
    );
  Mcount_hPos_cy_2_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(1),
      DI => N0,
      S => Mcount_hPos_cy_2_rt_250,
      O => Mcount_hPos_cy(2)
    );
  Mcount_hPos_xor_2_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(1),
      LI => Mcount_hPos_cy_2_rt_250,
      O => Result(2)
    );
  Mcount_hPos_cy_3_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(2),
      DI => N0,
      S => Mcount_hPos_cy_3_rt_254,
      O => Mcount_hPos_cy(3)
    );
  Mcount_hPos_xor_3_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(2),
      LI => Mcount_hPos_cy_3_rt_254,
      O => Result(3)
    );
  Mcount_hPos_cy_4_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(3),
      DI => N0,
      S => Mcount_hPos_cy_4_rt_256,
      O => Mcount_hPos_cy(4)
    );
  Mcount_hPos_xor_4_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(3),
      LI => Mcount_hPos_cy_4_rt_256,
      O => Result(4)
    );
  Mcount_hPos_cy_5_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(4),
      DI => N0,
      S => Mcount_hPos_cy_5_rt_258,
      O => Mcount_hPos_cy(5)
    );
  Mcount_hPos_xor_5_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(4),
      LI => Mcount_hPos_cy_5_rt_258,
      O => Result(5)
    );
  Mcount_hPos_cy_6_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(5),
      DI => N0,
      S => Mcount_hPos_cy_6_rt_260,
      O => Mcount_hPos_cy(6)
    );
  Mcount_hPos_xor_6_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(5),
      LI => Mcount_hPos_cy_6_rt_260,
      O => Result(6)
    );
  Mcount_hPos_cy_7_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(6),
      DI => N0,
      S => Mcount_hPos_cy_7_rt_262,
      O => Mcount_hPos_cy(7)
    );
  Mcount_hPos_xor_7_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(6),
      LI => Mcount_hPos_cy_7_rt_262,
      O => Result(7)
    );
  Mcount_hPos_cy_8_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(7),
      DI => N0,
      S => Mcount_hPos_cy_8_rt_264,
      O => Mcount_hPos_cy(8)
    );
  Mcount_hPos_xor_8_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(7),
      LI => Mcount_hPos_cy_8_rt_264,
      O => Result(8)
    );
  Mcount_hPos_cy_9_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(8),
      DI => N0,
      S => Mcount_hPos_cy_9_rt_266,
      O => Mcount_hPos_cy(9)
    );
  Mcount_hPos_xor_9_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(8),
      LI => Mcount_hPos_cy_9_rt_266,
      O => Result(9)
    );
  Mcount_hPos_cy_10_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(9),
      DI => N0,
      S => Mcount_hPos_cy_10_rt_208,
      O => Mcount_hPos_cy(10)
    );
  Mcount_hPos_xor_10_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(9),
      LI => Mcount_hPos_cy_10_rt_208,
      O => Result(10)
    );
  Mcount_hPos_cy_11_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(10),
      DI => N0,
      S => Mcount_hPos_cy_11_rt_210,
      O => Mcount_hPos_cy(11)
    );
  Mcount_hPos_xor_11_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(10),
      LI => Mcount_hPos_cy_11_rt_210,
      O => Result(11)
    );
  Mcount_hPos_cy_12_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(11),
      DI => N0,
      S => Mcount_hPos_cy_12_rt_212,
      O => Mcount_hPos_cy(12)
    );
  Mcount_hPos_xor_12_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(11),
      LI => Mcount_hPos_cy_12_rt_212,
      O => Result(12)
    );
  Mcount_hPos_cy_13_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(12),
      DI => N0,
      S => Mcount_hPos_cy_13_rt_214,
      O => Mcount_hPos_cy(13)
    );
  Mcount_hPos_xor_13_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(12),
      LI => Mcount_hPos_cy_13_rt_214,
      O => Result(13)
    );
  Mcount_hPos_cy_14_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(13),
      DI => N0,
      S => Mcount_hPos_cy_14_rt_216,
      O => Mcount_hPos_cy(14)
    );
  Mcount_hPos_xor_14_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(13),
      LI => Mcount_hPos_cy_14_rt_216,
      O => Result(14)
    );
  Mcount_hPos_cy_15_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(14),
      DI => N0,
      S => Mcount_hPos_cy_15_rt_218,
      O => Mcount_hPos_cy(15)
    );
  Mcount_hPos_xor_15_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(14),
      LI => Mcount_hPos_cy_15_rt_218,
      O => Result(15)
    );
  Mcount_hPos_cy_16_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(15),
      DI => N0,
      S => Mcount_hPos_cy_16_rt_220,
      O => Mcount_hPos_cy(16)
    );
  Mcount_hPos_xor_16_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(15),
      LI => Mcount_hPos_cy_16_rt_220,
      O => Result(16)
    );
  Mcount_hPos_cy_17_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(16),
      DI => N0,
      S => Mcount_hPos_cy_17_rt_222,
      O => Mcount_hPos_cy(17)
    );
  Mcount_hPos_xor_17_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(16),
      LI => Mcount_hPos_cy_17_rt_222,
      O => Result(17)
    );
  Mcount_hPos_cy_18_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(17),
      DI => N0,
      S => Mcount_hPos_cy_18_rt_224,
      O => Mcount_hPos_cy(18)
    );
  Mcount_hPos_xor_18_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(17),
      LI => Mcount_hPos_cy_18_rt_224,
      O => Result(18)
    );
  Mcount_hPos_cy_19_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(18),
      DI => N0,
      S => Mcount_hPos_cy_19_rt_226,
      O => Mcount_hPos_cy(19)
    );
  Mcount_hPos_xor_19_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(18),
      LI => Mcount_hPos_cy_19_rt_226,
      O => Result(19)
    );
  Mcount_hPos_cy_20_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(19),
      DI => N0,
      S => Mcount_hPos_cy_20_rt_230,
      O => Mcount_hPos_cy(20)
    );
  Mcount_hPos_xor_20_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(19),
      LI => Mcount_hPos_cy_20_rt_230,
      O => Result(20)
    );
  Mcount_hPos_cy_21_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(20),
      DI => N0,
      S => Mcount_hPos_cy_21_rt_232,
      O => Mcount_hPos_cy(21)
    );
  Mcount_hPos_xor_21_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(20),
      LI => Mcount_hPos_cy_21_rt_232,
      O => Result(21)
    );
  Mcount_hPos_cy_22_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(21),
      DI => N0,
      S => Mcount_hPos_cy_22_rt_234,
      O => Mcount_hPos_cy(22)
    );
  Mcount_hPos_xor_22_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(21),
      LI => Mcount_hPos_cy_22_rt_234,
      O => Result(22)
    );
  Mcount_hPos_cy_23_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(22),
      DI => N0,
      S => Mcount_hPos_cy_23_rt_236,
      O => Mcount_hPos_cy(23)
    );
  Mcount_hPos_xor_23_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(22),
      LI => Mcount_hPos_cy_23_rt_236,
      O => Result(23)
    );
  Mcount_hPos_cy_24_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(23),
      DI => N0,
      S => Mcount_hPos_cy_24_rt_238,
      O => Mcount_hPos_cy(24)
    );
  Mcount_hPos_xor_24_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(23),
      LI => Mcount_hPos_cy_24_rt_238,
      O => Result(24)
    );
  Mcount_hPos_cy_25_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(24),
      DI => N0,
      S => Mcount_hPos_cy_25_rt_240,
      O => Mcount_hPos_cy(25)
    );
  Mcount_hPos_xor_25_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(24),
      LI => Mcount_hPos_cy_25_rt_240,
      O => Result(25)
    );
  Mcount_hPos_cy_26_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(25),
      DI => N0,
      S => Mcount_hPos_cy_26_rt_242,
      O => Mcount_hPos_cy(26)
    );
  Mcount_hPos_xor_26_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(25),
      LI => Mcount_hPos_cy_26_rt_242,
      O => Result(26)
    );
  Mcount_hPos_cy_27_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(26),
      DI => N0,
      S => Mcount_hPos_cy_27_rt_244,
      O => Mcount_hPos_cy(27)
    );
  Mcount_hPos_xor_27_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(26),
      LI => Mcount_hPos_cy_27_rt_244,
      O => Result(27)
    );
  Mcount_hPos_cy_28_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(27),
      DI => N0,
      S => Mcount_hPos_cy_28_rt_246,
      O => Mcount_hPos_cy(28)
    );
  Mcount_hPos_xor_28_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(27),
      LI => Mcount_hPos_cy_28_rt_246,
      O => Result(28)
    );
  Mcount_hPos_cy_29_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(28),
      DI => N0,
      S => Mcount_hPos_cy_29_rt_248,
      O => Mcount_hPos_cy(29)
    );
  Mcount_hPos_xor_29_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(28),
      LI => Mcount_hPos_cy_29_rt_248,
      O => Result(29)
    );
  Mcount_hPos_cy_30_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(29),
      DI => N0,
      S => Mcount_hPos_cy_30_rt_252,
      O => Mcount_hPos_cy(30)
    );
  Mcount_hPos_xor_30_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(29),
      LI => Mcount_hPos_cy_30_rt_252,
      O => Result(30)
    );
  Mcount_hPos_xor_31_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(30),
      LI => Mcount_hPos_xor_31_rt_300,
      O => Result(31)
    );
  hPos_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => hPos(8),
      I1 => hPos(9),
      I2 => hPos(7),
      I3 => hPos(10),
      O => hPos_cmp_eq0000_wg_lut(0)
    );
  hPos_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(0),
      O => hPos_cmp_eq0000_wg_cy(0)
    );
  hPos_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(6),
      I1 => hPos(13),
      I2 => hPos(12),
      I3 => hPos(11),
      O => hPos_cmp_eq0000_wg_lut(1)
    );
  hPos_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => hPos_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(1),
      O => hPos_cmp_eq0000_wg_cy(1)
    );
  hPos_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(5),
      I1 => hPos(16),
      I2 => hPos(15),
      I3 => hPos(14),
      O => hPos_cmp_eq0000_wg_lut(2)
    );
  hPos_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => hPos_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(2),
      O => hPos_cmp_eq0000_wg_cy(2)
    );
  hPos_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => hPos(4),
      I1 => hPos(19),
      I2 => hPos(18),
      I3 => hPos(17),
      O => hPos_cmp_eq0000_wg_lut(3)
    );
  hPos_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => hPos_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(3),
      O => hPos_cmp_eq0000_wg_cy(3)
    );
  hPos_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => hPos(3),
      I1 => hPos(22),
      I2 => hPos(21),
      I3 => hPos(20),
      O => hPos_cmp_eq0000_wg_lut(4)
    );
  hPos_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => hPos_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(4),
      O => hPos_cmp_eq0000_wg_cy(4)
    );
  hPos_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => hPos(2),
      I1 => hPos(25),
      I2 => hPos(24),
      I3 => hPos(23),
      O => hPos_cmp_eq0000_wg_lut(5)
    );
  hPos_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => hPos_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(5),
      O => hPos_cmp_eq0000_wg_cy(5)
    );
  hPos_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => hPos(1),
      I1 => hPos(28),
      I2 => hPos(27),
      I3 => hPos(26),
      O => hPos_cmp_eq0000_wg_lut(6)
    );
  hPos_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => hPos_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(6),
      O => hPos_cmp_eq0000_wg_cy(6)
    );
  hPos_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => hPos(0),
      I1 => hPos(31),
      I2 => hPos(30),
      I3 => hPos(29),
      O => hPos_cmp_eq0000_wg_lut(7)
    );
  hPos_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => hPos_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(7),
      O => hPos_cmp_eq0000
    );
  vPos_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => vPos(8),
      I1 => vPos(7),
      I2 => vPos(9),
      I3 => vPos(10),
      O => vPos_cmp_eq0000_wg_lut(0)
    );
  vPos_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(0),
      O => vPos_cmp_eq0000_wg_cy(0)
    );
  vPos_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(11),
      I1 => vPos(12),
      I2 => vPos(6),
      I3 => vPos(13),
      O => vPos_cmp_eq0000_wg_lut(1)
    );
  vPos_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => vPos_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(1),
      O => vPos_cmp_eq0000_wg_cy(1)
    );
  vPos_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(14),
      I1 => vPos(15),
      I2 => vPos(5),
      I3 => vPos(16),
      O => vPos_cmp_eq0000_wg_lut(2)
    );
  vPos_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => vPos_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(2),
      O => vPos_cmp_eq0000_wg_cy(2)
    );
  vPos_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(4),
      I1 => vPos(19),
      I2 => vPos(18),
      I3 => vPos(17),
      O => vPos_cmp_eq0000_wg_lut(3)
    );
  vPos_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => vPos_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(3),
      O => vPos_cmp_eq0000_wg_cy(3)
    );
  vPos_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => vPos(3),
      I1 => vPos(22),
      I2 => vPos(21),
      I3 => vPos(20),
      O => vPos_cmp_eq0000_wg_lut(4)
    );
  vPos_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => vPos_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(4),
      O => vPos_cmp_eq0000_wg_cy(4)
    );
  vPos_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => vPos(2),
      I1 => vPos(25),
      I2 => vPos(24),
      I3 => vPos(23),
      O => vPos_cmp_eq0000_wg_lut(5)
    );
  vPos_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => vPos_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(5),
      O => vPos_cmp_eq0000_wg_cy(5)
    );
  vPos_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(1),
      I1 => vPos(28),
      I2 => vPos(27),
      I3 => vPos(26),
      O => vPos_cmp_eq0000_wg_lut(6)
    );
  vPos_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => vPos_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(6),
      O => vPos_cmp_eq0000_wg_cy(6)
    );
  vPos_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(0),
      I1 => vPos(31),
      I2 => vPos(30),
      I3 => vPos(29),
      O => vPos_cmp_eq0000_wg_lut(7)
    );
  vPos_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => vPos_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(7),
      O => vPos_cmp_eq0000
    );
  videoOn_not00011 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => videoOn_cmp_le0000,
      I1 => videoOn_cmp_le0001,
      O => videoOn_not0001
    );
  Mcount_vPos_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_7_1,
      I1 => vPos_cmp_eq0000,
      O => Mcount_vPos_eqn_7
    );
  Mcount_vPos_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_6_1,
      I1 => vPos_cmp_eq0000,
      O => Mcount_vPos_eqn_6
    );
  Mcount_vPos_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_5_1,
      I1 => vPos_cmp_eq0000,
      O => Mcount_vPos_eqn_5
    );
  Mcount_vPos_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_4_1,
      I1 => vPos_cmp_eq0000,
      O => Mcount_vPos_eqn_4
    );
  Mcount_vPos_eqn_32 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_3_1,
      I1 => vPos_cmp_eq0000,
      O => Mcount_vPos_eqn_3
    );
  Mcount_vPos_eqn_210 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_2_1,
      I1 => vPos_cmp_eq0000,
      O => Mcount_vPos_eqn_2
    );
  Mcount_vPos_eqn_110 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_1_1,
      I1 => vPos_cmp_eq0000,
      O => Mcount_vPos_eqn_1
    );
  Mcount_vPos_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_0_1,
      I1 => vPos_cmp_eq0000,
      O => Mcount_vPos_eqn_0
    );
  Mcount_hPos_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(7),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_7
    );
  Mcount_hPos_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(6),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_6
    );
  Mcount_hPos_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(5),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_5
    );
  Mcount_hPos_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(4),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_4
    );
  Mcount_hPos_eqn_32 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(3),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_3
    );
  Mcount_hPos_eqn_210 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(2),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_2
    );
  Mcount_hPos_eqn_110 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(1),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_1
    );
  Mcount_hPos_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(0),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_0
    );
  Mcount_vPos_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_8_1,
      I1 => vPos_cmp_eq0000,
      O => Mcount_vPos_eqn_8
    );
  Mcount_hPos_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(8),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_8
    );
  Mcount_vPos_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_9_1,
      I1 => vPos_cmp_eq0000,
      O => Mcount_vPos_eqn_9
    );
  Mcount_hPos_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(9),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_9
    );
  Mcount_vPos_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_10_1,
      I1 => vPos_cmp_eq0000,
      O => Mcount_vPos_eqn_10
    );
  Mcount_hPos_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(10),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_10
    );
  Mcount_vPos_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_11_1,
      I1 => vPos_cmp_eq0000,
      O => Mcount_vPos_eqn_11
    );
  Mcount_hPos_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(11),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_11
    );
  Mcount_vPos_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_12_1,
      I1 => vPos_cmp_eq0000,
      O => Mcount_vPos_eqn_12
    );
  Mcount_hPos_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(12),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_12
    );
  Mcount_vPos_eqn_131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_13_1,
      O => Mcount_vPos_eqn_13
    );
  Mcount_hPos_eqn_131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(13),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_13
    );
  Mcount_vPos_eqn_141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_14_1,
      O => Mcount_vPos_eqn_14
    );
  Mcount_hPos_eqn_141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(14),
      I1 => hPos_cmp_eq0000,
      O => Mcount_hPos_eqn_14
    );
  Mcount_vPos_eqn_151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_15_1,
      O => Mcount_vPos_eqn_15
    );
  Mcount_hPos_eqn_151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(15),
      O => Mcount_hPos_eqn_15
    );
  Mcount_vPos_eqn_161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_16_1,
      O => Mcount_vPos_eqn_16
    );
  Mcount_hPos_eqn_161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(16),
      O => Mcount_hPos_eqn_16
    );
  Mcount_vPos_eqn_171 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_17_1,
      O => Mcount_vPos_eqn_17
    );
  Mcount_hPos_eqn_171 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(17),
      O => Mcount_hPos_eqn_17
    );
  Mcount_vPos_eqn_181 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_18_1,
      O => Mcount_vPos_eqn_18
    );
  Mcount_hPos_eqn_181 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(18),
      O => Mcount_hPos_eqn_18
    );
  Mcount_vPos_eqn_191 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_19_1,
      O => Mcount_vPos_eqn_19
    );
  Mcount_hPos_eqn_191 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(19),
      O => Mcount_hPos_eqn_19
    );
  Mcount_vPos_eqn_201 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_20_1,
      O => Mcount_vPos_eqn_20
    );
  Mcount_hPos_eqn_201 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(20),
      O => Mcount_hPos_eqn_20
    );
  Mcount_vPos_eqn_211 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_21_1,
      O => Mcount_vPos_eqn_21
    );
  Mcount_hPos_eqn_211 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(21),
      O => Mcount_hPos_eqn_21
    );
  Mcount_vPos_eqn_221 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_22_1,
      O => Mcount_vPos_eqn_22
    );
  Mcount_hPos_eqn_221 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(22),
      O => Mcount_hPos_eqn_22
    );
  Mcount_vPos_eqn_231 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_23_1,
      O => Mcount_vPos_eqn_23
    );
  Mcount_hPos_eqn_231 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(23),
      O => Mcount_hPos_eqn_23
    );
  Mcount_vPos_eqn_241 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_24_1,
      O => Mcount_vPos_eqn_24
    );
  Mcount_hPos_eqn_241 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(24),
      O => Mcount_hPos_eqn_24
    );
  Mcount_vPos_eqn_251 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_25_1,
      O => Mcount_vPos_eqn_25
    );
  Mcount_hPos_eqn_251 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(25),
      O => Mcount_hPos_eqn_25
    );
  Mcount_vPos_eqn_261 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_26_1,
      O => Mcount_vPos_eqn_26
    );
  Mcount_hPos_eqn_261 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(26),
      O => Mcount_hPos_eqn_26
    );
  Mcount_vPos_eqn_271 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_27_1,
      O => Mcount_vPos_eqn_27
    );
  Mcount_hPos_eqn_271 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(27),
      O => Mcount_hPos_eqn_27
    );
  Mcount_vPos_eqn_281 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_28_1,
      O => Mcount_vPos_eqn_28
    );
  Mcount_hPos_eqn_281 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(28),
      O => Mcount_hPos_eqn_28
    );
  Mcount_vPos_eqn_291 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_29_1,
      O => Mcount_vPos_eqn_29
    );
  Mcount_hPos_eqn_291 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(29),
      O => Mcount_hPos_eqn_29
    );
  Mcount_vPos_eqn_301 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_30_1,
      O => Mcount_vPos_eqn_30
    );
  Mcount_hPos_eqn_301 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(30),
      O => Mcount_hPos_eqn_30
    );
  Mcount_vPos_eqn_311 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_31_1,
      O => Mcount_vPos_eqn_31
    );
  Mcount_hPos_eqn_311 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(31),
      O => Mcount_hPos_eqn_31
    );
  RST_IBUF : IBUF
    port map (
      I => RST,
      O => RST_IBUF_409
    );
  VSYNC_OBUF : OBUF
    port map (
      I => VSYNC_OBUF_475,
      O => VSYNC
    );
  HSYNC_OBUF : OBUF
    port map (
      I => HSYNC_OBUF_3,
      O => HSYNC
    );
  RGB_2_OBUF : OBUF
    port map (
      I => RGB_0_402,
      O => RGB(2)
    );
  RGB_1_OBUF : OBUF
    port map (
      I => RGB_0_402,
      O => RGB(1)
    );
  RGB_0_OBUF : OBUF
    port map (
      I => RGB_0_402,
      O => RGB(0)
    );
  clk25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_1,
      D => N1,
      R => clk251,
      Q => clk251
    );
  Mcompar_videoOn_cmp_le0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(9),
      O => Mcompar_videoOn_cmp_le0000_cy_1_rt_137
    );
  Mcompar_videoOn_cmp_le0000_cy_1_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(7),
      O => Mcompar_videoOn_cmp_le0000_cy_1_1_rt_136
    );
  Mcompar_videoOn_cmp_le0000_cy_3_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(9),
      O => Mcompar_videoOn_cmp_le0000_cy_3_1_rt_146
    );
  Mcompar_videoOn_cmp_le0000_cy_3_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(9),
      O => Mcompar_videoOn_cmp_le0000_cy_3_2_rt_147
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(3),
      O => Mcompar_VSYNC_cmp_le0000_cy_1_rt_58
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(3),
      O => Mcompar_VSYNC_cmp_le0000_cy_1_0_rt_57
    );
  Mcompar_RGB_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(1),
      O => Mcompar_RGB_cmp_ge0000_cy_0_rt_7
    );
  Mcompar_RGB_cmp_ge0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(3),
      O => Mcompar_RGB_cmp_ge0000_cy_2_rt_10
    );
  Mcompar_RGB_cmp_ge0001_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(1),
      O => Mcompar_RGB_cmp_ge0001_cy_0_rt_28
    );
  Mcompar_RGB_cmp_ge0001_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(3),
      O => Mcompar_RGB_cmp_ge0001_cy_2_rt_31
    );
  Mcount_vPos_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(1),
      O => Mcount_vPos_cy_1_rt_323
    );
  Mcount_vPos_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(2),
      O => Mcount_vPos_cy_2_rt_345
    );
  Mcount_vPos_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(3),
      O => Mcount_vPos_cy_3_rt_349
    );
  Mcount_vPos_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(4),
      O => Mcount_vPos_cy_4_rt_351
    );
  Mcount_vPos_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(5),
      O => Mcount_vPos_cy_5_rt_353
    );
  Mcount_vPos_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(6),
      O => Mcount_vPos_cy_6_rt_355
    );
  Mcount_vPos_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(7),
      O => Mcount_vPos_cy_7_rt_357
    );
  Mcount_vPos_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(8),
      O => Mcount_vPos_cy_8_rt_359
    );
  Mcount_vPos_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(9),
      O => Mcount_vPos_cy_9_rt_361
    );
  Mcount_vPos_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(10),
      O => Mcount_vPos_cy_10_rt_303
    );
  Mcount_vPos_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(11),
      O => Mcount_vPos_cy_11_rt_305
    );
  Mcount_vPos_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(12),
      O => Mcount_vPos_cy_12_rt_307
    );
  Mcount_vPos_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(13),
      O => Mcount_vPos_cy_13_rt_309
    );
  Mcount_vPos_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(14),
      O => Mcount_vPos_cy_14_rt_311
    );
  Mcount_vPos_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(15),
      O => Mcount_vPos_cy_15_rt_313
    );
  Mcount_vPos_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(16),
      O => Mcount_vPos_cy_16_rt_315
    );
  Mcount_vPos_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(17),
      O => Mcount_vPos_cy_17_rt_317
    );
  Mcount_vPos_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(18),
      O => Mcount_vPos_cy_18_rt_319
    );
  Mcount_vPos_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(19),
      O => Mcount_vPos_cy_19_rt_321
    );
  Mcount_vPos_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(20),
      O => Mcount_vPos_cy_20_rt_325
    );
  Mcount_vPos_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(21),
      O => Mcount_vPos_cy_21_rt_327
    );
  Mcount_vPos_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(22),
      O => Mcount_vPos_cy_22_rt_329
    );
  Mcount_vPos_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(23),
      O => Mcount_vPos_cy_23_rt_331
    );
  Mcount_vPos_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(24),
      O => Mcount_vPos_cy_24_rt_333
    );
  Mcount_vPos_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(25),
      O => Mcount_vPos_cy_25_rt_335
    );
  Mcount_vPos_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(26),
      O => Mcount_vPos_cy_26_rt_337
    );
  Mcount_vPos_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(27),
      O => Mcount_vPos_cy_27_rt_339
    );
  Mcount_vPos_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(28),
      O => Mcount_vPos_cy_28_rt_341
    );
  Mcount_vPos_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(29),
      O => Mcount_vPos_cy_29_rt_343
    );
  Mcount_vPos_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(30),
      O => Mcount_vPos_cy_30_rt_347
    );
  Mcount_hPos_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(1),
      O => Mcount_hPos_cy_1_rt_228
    );
  Mcount_hPos_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(2),
      O => Mcount_hPos_cy_2_rt_250
    );
  Mcount_hPos_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(3),
      O => Mcount_hPos_cy_3_rt_254
    );
  Mcount_hPos_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(4),
      O => Mcount_hPos_cy_4_rt_256
    );
  Mcount_hPos_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(5),
      O => Mcount_hPos_cy_5_rt_258
    );
  Mcount_hPos_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(6),
      O => Mcount_hPos_cy_6_rt_260
    );
  Mcount_hPos_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(7),
      O => Mcount_hPos_cy_7_rt_262
    );
  Mcount_hPos_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(8),
      O => Mcount_hPos_cy_8_rt_264
    );
  Mcount_hPos_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(9),
      O => Mcount_hPos_cy_9_rt_266
    );
  Mcount_hPos_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(10),
      O => Mcount_hPos_cy_10_rt_208
    );
  Mcount_hPos_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(11),
      O => Mcount_hPos_cy_11_rt_210
    );
  Mcount_hPos_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(12),
      O => Mcount_hPos_cy_12_rt_212
    );
  Mcount_hPos_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(13),
      O => Mcount_hPos_cy_13_rt_214
    );
  Mcount_hPos_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(14),
      O => Mcount_hPos_cy_14_rt_216
    );
  Mcount_hPos_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(15),
      O => Mcount_hPos_cy_15_rt_218
    );
  Mcount_hPos_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(16),
      O => Mcount_hPos_cy_16_rt_220
    );
  Mcount_hPos_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(17),
      O => Mcount_hPos_cy_17_rt_222
    );
  Mcount_hPos_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(18),
      O => Mcount_hPos_cy_18_rt_224
    );
  Mcount_hPos_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(19),
      O => Mcount_hPos_cy_19_rt_226
    );
  Mcount_hPos_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(20),
      O => Mcount_hPos_cy_20_rt_230
    );
  Mcount_hPos_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(21),
      O => Mcount_hPos_cy_21_rt_232
    );
  Mcount_hPos_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(22),
      O => Mcount_hPos_cy_22_rt_234
    );
  Mcount_hPos_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(23),
      O => Mcount_hPos_cy_23_rt_236
    );
  Mcount_hPos_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(24),
      O => Mcount_hPos_cy_24_rt_238
    );
  Mcount_hPos_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(25),
      O => Mcount_hPos_cy_25_rt_240
    );
  Mcount_hPos_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(26),
      O => Mcount_hPos_cy_26_rt_242
    );
  Mcount_hPos_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(27),
      O => Mcount_hPos_cy_27_rt_244
    );
  Mcount_hPos_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(28),
      O => Mcount_hPos_cy_28_rt_246
    );
  Mcount_hPos_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(29),
      O => Mcount_hPos_cy_29_rt_248
    );
  Mcount_hPos_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(30),
      O => Mcount_hPos_cy_30_rt_252
    );
  Mcount_vPos_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(31),
      O => Mcount_vPos_xor_31_rt_395
    );
  Mcount_hPos_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(31),
      O => Mcount_hPos_xor_31_rt_300
    );
  VSYNC_or00001 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Mcompar_VSYNC_cmp_le0000_cy(10),
      I1 => VSYNC_cmp_le0000,
      O => VSYNC_or0000
    );
  HSYNC_or00001 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Mcompar_videoOn_cmp_le0000_cy(10),
      I1 => HSYNC_cmp_le0000,
      O => HSYNC_or0000
    );
  RGB_mux0002_0_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => RGB_cmp_ge0001,
      I1 => RGB_cmp_ge0000,
      I2 => RGB_cmp_le0001,
      I3 => N2,
      O => RGB_mux0002(0)
    );
  clk25_BUFG : BUFG
    port map (
      I => clk251,
      O => clk25_478
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_1
    );
  Mcompar_videoOn_cmp_le0000_lut_7_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut(7)
    );
  Mcompar_videoOn_cmp_le0000_lut_8_1_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_8_1
    );
  Mcompar_videoOn_cmp_le0000_lut_2_2_INV_0 : INV
    port map (
      I => hPos(8),
      O => Mcompar_videoOn_cmp_le0000_lut_2_2
    );
  Mcompar_videoOn_cmp_le0000_lut_9_1_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_9_1
    );
  Mcompar_videoOn_cmp_le0000_lut_0_3_INV_0 : INV
    port map (
      I => hPos(4),
      O => Mcompar_videoOn_cmp_le0000_lut_0_3
    );
  Mcompar_videoOn_cmp_le0000_lut_2_3_INV_0 : INV
    port map (
      I => hPos(8),
      O => Mcompar_videoOn_cmp_le0000_lut_2_3
    );
  Mcompar_videoOn_cmp_le0000_lut_9_2_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_9_2
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_INV_0 : INV
    port map (
      I => vPos(4),
      O => Mcompar_VSYNC_cmp_le0000_lut(2)
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_1_INV_0 : INV
    port map (
      I => vPos(2),
      O => Mcompar_VSYNC_cmp_le0000_lut_0_1
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_1_INV_0 : INV
    port map (
      I => vPos(4),
      O => Mcompar_VSYNC_cmp_le0000_lut_2_1
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_2_INV_0 : INV
    port map (
      I => vPos(5),
      O => Mcompar_VSYNC_cmp_le0000_lut_0_2
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_3_INV_0 : INV
    port map (
      I => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut_8_3
    );
  Mcompar_RGB_cmp_ge0000_lut_1_INV_0 : INV
    port map (
      I => hPos(2),
      O => Mcompar_RGB_cmp_ge0000_lut_1_Q
    );
  Mcompar_RGB_cmp_ge0001_lut_1_INV_0 : INV
    port map (
      I => vPos(2),
      O => Mcompar_RGB_cmp_ge0001_lut_1_Q
    );
  Mcount_vPos_lut_0_INV_0 : INV
    port map (
      I => vPos(0),
      O => Mcount_vPos_lut(0)
    );
  Mcount_hPos_lut_0_INV_0 : INV
    port map (
      I => hPos(0),
      O => Mcount_hPos_lut(0)
    );
  Mcompar_RGB_cmp_ge0000_lut_10_1_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_10_Q
    );
  Mcompar_RGB_cmp_ge0001_lut_10_1_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_RGB_cmp_ge0001_lut_10_Q
    );
  Mcompar_videoOn_cmp_le0000_lut_10_2_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_videoOn_cmp_le0000_lut(10)
    );
  Mcompar_videoOn_cmp_le0000_lut_10_11_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_videoOn_cmp_le0000_lut_10_1
    );
  Mcompar_videoOn_cmp_le0000_lut_8_4_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_videoOn_cmp_le0000_lut(8)
    );
  Mcompar_videoOn_cmp_le0000_lut_9_3_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_videoOn_cmp_le0000_lut(9)
    );
  Mcompar_VSYNC_cmp_le0000_lut_10_2_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut(10)
    );
  Mcompar_VSYNC_cmp_le0000_lut_10_11_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut_10_1
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_21_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut_8_2
    );
  Mcompar_VSYNC_cmp_le0000_lut_9_21_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut_9_2
    );
  RGB_mux0002_0_SW0_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => videoOn_576,
      I1 => RGB_cmp_le0000,
      LO => N2
    );

end Structure;

