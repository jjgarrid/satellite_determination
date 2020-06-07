-- -------------------------------------------------------------
-- 
-- File Name: PN_generator_RX\hdlsrc\PN_generatorV2\PN_genera_ip_dut.vhd
-- Created: 2020-05-30 20:12:52
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: PN_genera_ip_dut
-- Source Path: PN_genera_ip/PN_genera_ip_dut
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY PN_genera_ip_dut IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        dut_enable                        :   IN    std_logic;  -- ufix1
        real_rsvd                         :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
        imaginary                         :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
        ce_out                            :   OUT   std_logic;  -- ufix1
        Salida_bits                       :   OUT   std_logic  -- ufix1
        );
END PN_genera_ip_dut;


ARCHITECTURE rtl OF PN_genera_ip_dut IS

  -- Component Declarations
  COMPONENT PN_genera_ip_src_Receptor
    PORT( clk                             :   IN    std_logic;
          clk_enable                      :   IN    std_logic;
          reset                           :   IN    std_logic;
          real_rsvd                       :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
          imaginary                       :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
          ce_out                          :   OUT   std_logic;  -- ufix1
          Salida_bits                     :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : PN_genera_ip_src_Receptor
    USE ENTITY work.PN_genera_ip_src_Receptor(rtl);

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL ce_out_sig                       : std_logic;  -- ufix1
  SIGNAL Salida_bits_sig                  : std_logic;  -- ufix1

BEGIN
  u_PN_genera_ip_src_Receptor : PN_genera_ip_src_Receptor
    PORT MAP( clk => clk,
              clk_enable => enb,
              reset => reset,
              real_rsvd => real_rsvd,  -- sfix16_En15
              imaginary => imaginary,  -- sfix16_En15
              ce_out => ce_out_sig,  -- ufix1
              Salida_bits => Salida_bits_sig  -- ufix1
              );

  enb <= dut_enable;

  ce_out <= ce_out_sig;

  Salida_bits <= Salida_bits_sig;

END rtl;

