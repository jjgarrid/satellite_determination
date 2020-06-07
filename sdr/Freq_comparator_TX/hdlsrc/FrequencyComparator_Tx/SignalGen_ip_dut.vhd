-- -------------------------------------------------------------
-- 
-- File Name: Freq_comparator_TX\hdlsrc\FrequencyComparator_Tx\SignalGen_ip_dut.vhd
-- Created: 2020-05-30 19:24:32
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: SignalGen_ip_dut
-- Source Path: SignalGen_ip/SignalGen_ip_dut
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY SignalGen_ip_dut IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        dut_enable                        :   IN    std_logic;  -- ufix1
        ce_out                            :   OUT   std_logic;  -- ufix1
        real_rsvd                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        img                               :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
        );
END SignalGen_ip_dut;


ARCHITECTURE rtl OF SignalGen_ip_dut IS

  -- Component Declarations
  COMPONENT SignalGen_ip_src_Signal_Generation
    PORT( clk                             :   IN    std_logic;
          clk_enable                      :   IN    std_logic;
          reset                           :   IN    std_logic;
          ce_out                          :   OUT   std_logic;  -- ufix1
          real_rsvd                       :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          img                             :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : SignalGen_ip_src_Signal_Generation
    USE ENTITY work.SignalGen_ip_src_Signal_Generation(rtl);

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL ce_out_sig                       : std_logic;  -- ufix1
  SIGNAL real_rsvd_sig                    : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL img_sig                          : std_logic_vector(15 DOWNTO 0);  -- ufix16

BEGIN
  u_SignalGen_ip_src_Signal_Generation : SignalGen_ip_src_Signal_Generation
    PORT MAP( clk => clk,
              clk_enable => enb,
              reset => reset,
              ce_out => ce_out_sig,  -- ufix1
              real_rsvd => real_rsvd_sig,  -- sfix16_En14
              img => img_sig  -- sfix16_En14
              );

  enb <= dut_enable;

  ce_out <= ce_out_sig;

  real_rsvd <= real_rsvd_sig;

  img <= img_sig;

END rtl;
