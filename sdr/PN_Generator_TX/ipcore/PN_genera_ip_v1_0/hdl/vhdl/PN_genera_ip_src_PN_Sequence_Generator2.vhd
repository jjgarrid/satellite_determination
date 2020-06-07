-- -------------------------------------------------------------
-- 
-- File Name: PN_generator_TX\hdlsrc\PN_generatorV2\PN_genera_ip_src_PN_Sequence_Generator2.vhd
-- Created: 2020-05-30 19:56:53
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: PN_genera_ip_src_PN_Sequence_Generator2
-- Source Path: PN_generatorV2/Transmisor/Gold Sequence Generator/PN Sequence Generator2
-- Hierarchy Level: 2
-- 
-- PN Sequence Generator
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY PN_genera_ip_src_PN_Sequence_Generator2 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_16_0                        :   IN    std_logic;
        PN_Sequence                       :   OUT   std_logic
        );
END PN_genera_ip_src_PN_Sequence_Generator2;


ARCHITECTURE rtl OF PN_genera_ip_src_PN_Sequence_Generator2 IS

  -- Signals
  SIGNAL Reset_1                          : std_logic;
  SIGNAL VectorTDL_ctrl_const_out         : std_logic;
  SIGNAL VectorTDL_ctrl_delay_out         : std_logic;
  SIGNAL VectorTDL_Initial_Val_out        : std_logic_vector(0 TO 5);  -- boolean [6]
  SIGNAL InitStates                       : std_logic_vector(0 TO 5);  -- boolean [6]
  SIGNAL TDL                              : std_logic_vector(0 TO 5);  -- boolean [6]
  SIGNAL TDL_5                            : std_logic;
  SIGNAL TDL_4                            : std_logic;
  SIGNAL TDL_3                            : std_logic;
  SIGNAL TDL_0                            : std_logic;
  SIGNAL PNSeqOut                         : std_logic;
  SIGNAL TDL_1                            : std_logic_vector(0 TO 5);  -- boolean [6]
  SIGNAL VectorTDL_out                    : std_logic_vector(0 TO 5);  -- boolean [6]
  SIGNAL TDLPrevious                      : std_logic_vector(0 TO 5);  -- boolean [6]
  SIGNAL OutputMask                       : std_logic_vector(0 TO 5);  -- boolean [6]
  SIGNAL MaskANDtoXOR                     : std_logic_vector(0 TO 5);  -- boolean [6]
  SIGNAL MaskANDtoXOR_0                   : std_logic;
  SIGNAL MaskANDtoXOR_1                   : std_logic;
  SIGNAL MaskANDtoXOR_2                   : std_logic;
  SIGNAL MaskANDtoXOR_3                   : std_logic;
  SIGNAL MaskANDtoXOR_4                   : std_logic;
  SIGNAL MaskANDtoXOR_5                   : std_logic;
  SIGNAL PNSeqBits                        : std_logic;

BEGIN
  Reset_1 <= '0';

  VectorTDL_ctrl_const_out <= '1';

  VectorTDL_ctrl_delay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      VectorTDL_ctrl_delay_out <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_16_0 = '1' THEN
        VectorTDL_ctrl_delay_out <= VectorTDL_ctrl_const_out;
      END IF;
    END IF;
  END PROCESS VectorTDL_ctrl_delay_process;


  VectorTDL_Initial_Val_out(0) <= '0';
  VectorTDL_Initial_Val_out(1) <= '0';
  VectorTDL_Initial_Val_out(2) <= '0';
  VectorTDL_Initial_Val_out(3) <= '0';
  VectorTDL_Initial_Val_out(4) <= '0';
  VectorTDL_Initial_Val_out(5) <= '1';

  InitStates(0) <= '0';
  InitStates(1) <= '0';
  InitStates(2) <= '0';
  InitStates(3) <= '0';
  InitStates(4) <= '0';
  InitStates(5) <= '1';

  TDL_5 <= TDL(5);

  TDL_4 <= TDL(4);

  TDL_3 <= TDL(3);

  TDL_0 <= TDL(0);

  PNSeqOut <= TDL_5 XOR (TDL_4 XOR (TDL_0 XOR TDL_3));

  TDL_1(0) <= PNSeqOut;
  TDL_1(1) <= TDL(0);
  TDL_1(2) <= TDL(1);
  TDL_1(3) <= TDL(2);
  TDL_1(4) <= TDL(3);
  TDL_1(5) <= TDL(4);

  VectorTDL_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      VectorTDL_out <= (OTHERS => '0');
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_16_0 = '1' THEN
        VectorTDL_out <= TDL_1;
      END IF;
    END IF;
  END PROCESS VectorTDL_process;


  
  TDLPrevious <= VectorTDL_Initial_Val_out WHEN VectorTDL_ctrl_delay_out = '0' ELSE
      VectorTDL_out;

  
  TDL <= TDLPrevious WHEN Reset_1 = '0' ELSE
      InitStates;

  OutputMask(0) <= '0';
  OutputMask(1) <= '0';
  OutputMask(2) <= '0';
  OutputMask(3) <= '0';
  OutputMask(4) <= '0';
  OutputMask(5) <= '1';


  MaskANDtoXOR_gen: FOR t_0 IN 0 TO 5 GENERATE
    MaskANDtoXOR(t_0) <= TDL(t_0) AND OutputMask(t_0);
  END GENERATE MaskANDtoXOR_gen;


  MaskANDtoXOR_0 <= MaskANDtoXOR(0);

  MaskANDtoXOR_1 <= MaskANDtoXOR(1);

  MaskANDtoXOR_2 <= MaskANDtoXOR(2);

  MaskANDtoXOR_3 <= MaskANDtoXOR(3);

  MaskANDtoXOR_4 <= MaskANDtoXOR(4);

  MaskANDtoXOR_5 <= MaskANDtoXOR(5);

  PNSeqBits <= MaskANDtoXOR_5 XOR (MaskANDtoXOR_4 XOR (MaskANDtoXOR_3 XOR (MaskANDtoXOR_2 XOR (MaskANDtoXOR_0 XOR MaskANDtoXOR_1))));

  
  PN_Sequence <= '1' WHEN PNSeqBits /= '0' ELSE
      '0';

END rtl;
