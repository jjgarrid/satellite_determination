-- -------------------------------------------------------------
-- 
-- File Name: PN_generator_TX\hdlsrc\PN_generatorV2\PN_genera_ip_src_Gold_Sequence_Generator.vhd
-- Created: 2020-05-30 19:56:53
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: PN_genera_ip_src_Gold_Sequence_Generator
-- Source Path: PN_generatorV2/Transmisor/Gold Sequence Generator
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY PN_genera_ip_src_Gold_Sequence_Generator IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_16_0                        :   IN    std_logic;
        Out1                              :   OUT   std_logic
        );
END PN_genera_ip_src_Gold_Sequence_Generator;


ARCHITECTURE rtl OF PN_genera_ip_src_Gold_Sequence_Generator IS

  -- Component Declarations
  COMPONENT PN_genera_ip_src_PN_Sequence_Generator1
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb_1_16_0                      :   IN    std_logic;
          PN_Sequence                     :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT PN_genera_ip_src_PN_Sequence_Generator2
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb_1_16_0                      :   IN    std_logic;
          PN_Sequence                     :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : PN_genera_ip_src_PN_Sequence_Generator1
    USE ENTITY work.PN_genera_ip_src_PN_Sequence_Generator1(rtl);

  FOR ALL : PN_genera_ip_src_PN_Sequence_Generator2
    USE ENTITY work.PN_genera_ip_src_PN_Sequence_Generator2(rtl);

  -- Signals
  SIGNAL PN_Sequence_Generator1_out1      : std_logic;
  SIGNAL PN_Sequence_Generator2_out1      : std_logic;
  SIGNAL Logical_Operator_out1            : std_logic;

BEGIN
  u_PN_Sequence_Generator1 : PN_genera_ip_src_PN_Sequence_Generator1
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_16_0 => enb_1_16_0,
              PN_Sequence => PN_Sequence_Generator1_out1
              );

  u_PN_Sequence_Generator2 : PN_genera_ip_src_PN_Sequence_Generator2
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_16_0 => enb_1_16_0,
              PN_Sequence => PN_Sequence_Generator2_out1
              );

  Logical_Operator_out1 <= PN_Sequence_Generator1_out1 XOR PN_Sequence_Generator2_out1;

  Out1 <= Logical_Operator_out1;

END rtl;

