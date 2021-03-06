-- -------------------------------------------------------------
-- 
-- File Name: PN_generator_TX\hdlsrc\PN_generatorV2\PN_genera_ip_tx_src_Raised_Cosine_Transmit_Filter3.vhd
-- Created: 2020-05-30 21:58:06
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: PN_genera_ip_tx_src_Raised_Cosine_Transmit_Filter3
-- Source Path: PN_generatorV2/Transmisor/Raised Cosine Transmit Filter3
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY PN_genera_ip_tx_src_Raised_Cosine_Transmit_Filter3 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_1_1                         :   IN    std_logic;
        In1                               :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
        Out1                              :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En15
        );
END PN_genera_ip_tx_src_Raised_Cosine_Transmit_Filter3;


ARCHITECTURE rtl OF PN_genera_ip_tx_src_Raised_Cosine_Transmit_Filter3 IS

  -- Component Declarations
  COMPONENT PN_genera_ip_tx_src_FIR_Interpolation_block
    PORT( clk                             :   IN    std_logic;
          enb_1_1_1                       :   IN    std_logic;
          reset                           :   IN    std_logic;
          PN_genera_ip_tx_src_FIR_Interpolation_block_in :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
          PN_genera_ip_tx_src_FIR_Interpolation_block_out :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En15
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : PN_genera_ip_tx_src_FIR_Interpolation_block
    USE ENTITY work.PN_genera_ip_tx_src_FIR_Interpolation_block(rtl);

  -- Signals
  SIGNAL FIR_Interpolation_out1           : std_logic_vector(15 DOWNTO 0);  -- ufix16

BEGIN
  u_PN_genera_ip_tx_src_FIR_Interpolation_block : PN_genera_ip_tx_src_FIR_Interpolation_block
    PORT MAP( clk => clk,
              enb_1_1_1 => enb_1_1_1,
              reset => reset,
              PN_genera_ip_tx_src_FIR_Interpolation_block_in => In1,  -- sfix16_En15
              PN_genera_ip_tx_src_FIR_Interpolation_block_out => FIR_Interpolation_out1  -- sfix16_En15
              );

  Out1 <= FIR_Interpolation_out1;

END rtl;

