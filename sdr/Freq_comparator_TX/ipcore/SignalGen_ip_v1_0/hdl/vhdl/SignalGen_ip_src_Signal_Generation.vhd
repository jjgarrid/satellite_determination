-- -------------------------------------------------------------
-- 
-- File Name: Freq_comparator_TX\hdlsrc\FrequencyComparator_Tx\SignalGen_ip_src_Signal_Generation.vhd
-- Created: 2020-05-30 19:24:02
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 1e-05
-- Target subsystem base rate: 1e-05
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        1e-05
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- real_rsvd                     ce_out        1e-05
-- img                           ce_out        1e-05
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: SignalGen_ip_src_Signal_Generation
-- Source Path: FrequencyComparator_Tx/Signal Generation
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY SignalGen_ip_src_Signal_Generation IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        ce_out                            :   OUT   std_logic;
        real_rsvd                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        img                               :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
        );
END SignalGen_ip_src_Signal_Generation;


ARCHITECTURE rtl OF SignalGen_ip_src_Signal_Generation IS

  -- Component Declarations
  COMPONENT SignalGen_ip_src_Sine_Wave
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          Sine_Wave_out1_re               :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          Sine_Wave_out1_im               :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : SignalGen_ip_src_Sine_Wave
    USE ENTITY work.SignalGen_ip_src_Sine_Wave(rtl);

  -- Signals
  SIGNAL Sine_Wave_out1_re                : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Sine_Wave_out1_im                : std_logic_vector(15 DOWNTO 0);  -- ufix16

BEGIN
  u_Sine_Wave : SignalGen_ip_src_Sine_Wave
    PORT MAP( clk => clk,
              reset => reset,
              enb => clk_enable,
              Sine_Wave_out1_re => Sine_Wave_out1_re,  -- sfix16_En14
              Sine_Wave_out1_im => Sine_Wave_out1_im  -- sfix16_En14
              );

  ce_out <= clk_enable;

  real_rsvd <= Sine_Wave_out1_re;

  img <= Sine_Wave_out1_im;

END rtl;

