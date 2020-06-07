-- -------------------------------------------------------------
-- 
-- File Name: PN_generator_TX\hdlsrc\PN_generatorV2\PN_genera_ip_tx_src_BPSK_Modulator_Baseband.vhd
-- Created: 2020-05-30 21:58:06
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: PN_genera_ip_tx_src_BPSK_Modulator_Baseband
-- Source Path: PN_generatorV2/Transmisor/BPSK Modulator Baseband
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY PN_genera_ip_tx_src_BPSK_Modulator_Baseband IS
  PORT( in0                               :   IN    std_logic;
        out0_re                           :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
        out0_im                           :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En15
        );
END PN_genera_ip_tx_src_BPSK_Modulator_Baseband;


ARCHITECTURE rtl OF PN_genera_ip_tx_src_BPSK_Modulator_Baseband IS

  -- Signals
  SIGNAL inphase_val0                     : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL inphase_val1                     : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL inphase                          : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL quadrature                       : signed(15 DOWNTO 0);  -- sfix16_En15

BEGIN
  inphase_val0 <= to_signed(16#7FFF#, 16);

  inphase_val1 <= to_signed(-16#8000#, 16);

  
  inphase <= inphase_val0 WHEN in0 = '0' ELSE
      inphase_val1;

  out0_re <= std_logic_vector(inphase);

  quadrature <= to_signed(16#0000#, 16);

  out0_im <= std_logic_vector(quadrature);

END rtl;

