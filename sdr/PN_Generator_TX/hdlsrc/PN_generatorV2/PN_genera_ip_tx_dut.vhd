-- -------------------------------------------------------------
-- 
-- File Name: PN_generator_TX\hdlsrc\PN_generatorV2\PN_genera_ip_tx_dut.vhd
-- Created: 2020-05-30 21:58:13
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: PN_genera_ip_tx_dut
-- Source Path: PN_genera_ip_tx/PN_genera_ip_tx_dut
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY PN_genera_ip_tx_dut IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        dut_enable                        :   IN    std_logic;  -- ufix1
        ce_out_0                          :   OUT   std_logic;  -- ufix1
        ce_out_1                          :   OUT   std_logic;  -- ufix1
        Original_code                     :   OUT   std_logic;  -- ufix1
        real_rsvd                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
        imaginary                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En15
        );
END PN_genera_ip_tx_dut;


ARCHITECTURE rtl OF PN_genera_ip_tx_dut IS

  -- Component Declarations
  COMPONENT PN_genera_ip_tx_src_Transmisor
    PORT( clk                             :   IN    std_logic;
          clk_enable                      :   IN    std_logic;
          reset                           :   IN    std_logic;
          ce_out_0                        :   OUT   std_logic;  -- ufix1
          ce_out_1                        :   OUT   std_logic;  -- ufix1
          Original_code                   :   OUT   std_logic;  -- ufix1
          real_rsvd                       :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
          imaginary                       :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En15
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : PN_genera_ip_tx_src_Transmisor
    USE ENTITY work.PN_genera_ip_tx_src_Transmisor(rtl);

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL ce_out_0_sig                     : std_logic;  -- ufix1
  SIGNAL ce_out_1_sig                     : std_logic;  -- ufix1
  SIGNAL Original_code_sig                : std_logic;  -- ufix1
  SIGNAL real_rsvd_sig                    : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL imaginary_sig                    : std_logic_vector(15 DOWNTO 0);  -- ufix16

BEGIN
  u_PN_genera_ip_tx_src_Transmisor : PN_genera_ip_tx_src_Transmisor
    PORT MAP( clk => clk,
              clk_enable => enb,
              reset => reset,
              ce_out_0 => ce_out_0_sig,  -- ufix1
              ce_out_1 => ce_out_1_sig,  -- ufix1
              Original_code => Original_code_sig,  -- ufix1
              real_rsvd => real_rsvd_sig,  -- sfix16_En15
              imaginary => imaginary_sig  -- sfix16_En15
              );

  enb <= dut_enable;

  ce_out_0 <= ce_out_0_sig;

  ce_out_1 <= ce_out_1_sig;

  Original_code <= Original_code_sig;

  real_rsvd <= real_rsvd_sig;

  imaginary <= imaginary_sig;

END rtl;

