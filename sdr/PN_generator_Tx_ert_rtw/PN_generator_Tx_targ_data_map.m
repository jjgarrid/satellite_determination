  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 6;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (PN_generator_Tx_P)
    ;%
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_P.FindDelay_corrLength
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_P.FindDelay_stopUpdate
	  section.data(1).logicalSrcIdx = 1;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_P.Delay_Y0
	  section.data(1).logicalSrcIdx = 2;
	  section.data(1).dtTransOffset = 0;
	
	  ;% PN_generator_Tx_P.Constant1_Value
	  section.data(2).logicalSrcIdx = 3;
	  section.data(2).dtTransOffset = 1;
	
	  ;% PN_generator_Tx_P.RT_InitialCondition
	  section.data(3).logicalSrcIdx = 4;
	  section.data(3).dtTransOffset = 2;
	
	  ;% PN_generator_Tx_P.Buffer1_ic
	  section.data(4).logicalSrcIdx = 5;
	  section.data(4).dtTransOffset = 3;
	
	  ;% PN_generator_Tx_P.Buffer2_ic
	  section.data(5).logicalSrcIdx = 6;
	  section.data(5).dtTransOffset = 4;
	
	  ;% PN_generator_Tx_P.Constant_Value
	  section.data(6).logicalSrcIdx = 7;
	  section.data(6).dtTransOffset = 5;
	
	  ;% PN_generator_Tx_P.Delay1_InitialCondition
	  section.data(7).logicalSrcIdx = 8;
	  section.data(7).dtTransOffset = 6;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
      section.nData     = 6;
      section.data(6)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_P.FIRInterpolation_FILTER_COEFF
	  section.data(1).logicalSrcIdx = 9;
	  section.data(1).dtTransOffset = 0;
	
	  ;% PN_generator_Tx_P.FIRInterpolation_FILTER_COEFF_f
	  section.data(2).logicalSrcIdx = 10;
	  section.data(2).dtTransOffset = 26;
	
	  ;% PN_generator_Tx_P.FIRInterpolation_FILTER_COEFF_h
	  section.data(3).logicalSrcIdx = 11;
	  section.data(3).dtTransOffset = 52;
	
	  ;% PN_generator_Tx_P.FIRInterpolation_FILTER_COEFF_n
	  section.data(4).logicalSrcIdx = 12;
	  section.data(4).dtTransOffset = 228;
	
	  ;% PN_generator_Tx_P.FIRDecimation_FILT
	  section.data(5).logicalSrcIdx = 13;
	  section.data(5).dtTransOffset = 404;
	
	  ;% PN_generator_Tx_P.FIRDecimation_FILT_a
	  section.data(6).logicalSrcIdx = 14;
	  section.data(6).dtTransOffset = 580;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(4) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_P.Delay_InitialCondition
	  section.data(1).logicalSrcIdx = 15;
	  section.data(1).dtTransOffset = 0;
	
	  ;% PN_generator_Tx_P.RateTransition_InitialCondition
	  section.data(2).logicalSrcIdx = 16;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(5) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_P.ManualSwitch_CurrentSetting
	  section.data(1).logicalSrcIdx = 17;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(6) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 4;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (PN_generator_Tx_B)
    ;%
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_B.fortx
	  section.data(1).logicalSrcIdx = 1;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_B.MathFunction
	  section.data(1).logicalSrcIdx = 4;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
      section.nData     = 6;
      section.data(6)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_B.ComplextoRealImag_o1
	  section.data(1).logicalSrcIdx = 6;
	  section.data(1).dtTransOffset = 0;
	
	  ;% PN_generator_Tx_B.ComplextoRealImag_o2
	  section.data(2).logicalSrcIdx = 7;
	  section.data(2).dtTransOffset = 1;
	
	  ;% PN_generator_Tx_B.ComplextoRealImag_o1_m
	  section.data(3).logicalSrcIdx = 8;
	  section.data(3).dtTransOffset = 2;
	
	  ;% PN_generator_Tx_B.ComplextoRealImag_o2_m
	  section.data(4).logicalSrcIdx = 9;
	  section.data(4).dtTransOffset = 3;
	
	  ;% PN_generator_Tx_B.FIRDecimation
	  section.data(5).logicalSrcIdx = 10;
	  section.data(5).dtTransOffset = 4;
	
	  ;% PN_generator_Tx_B.FIRDecimation_o
	  section.data(6).logicalSrcIdx = 11;
	  section.data(6).dtTransOffset = 5;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_B.RateTransition
	  section.data(1).logicalSrcIdx = 12;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(4) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 11;
    sectIdxOffset = 4;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (PN_generator_Tx_DW)
    ;%
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_DW.Buffer2_CircBuf
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_DW.Buffer1_CircBuf
	  section.data(1).logicalSrcIdx = 2;
	  section.data(1).dtTransOffset = 0;
	
	  ;% PN_generator_Tx_DW.DelayLine_Buff
	  section.data(2).logicalSrcIdx = 3;
	  section.data(2).dtTransOffset = 400;
	
	  ;% PN_generator_Tx_DW.Delay1_DSTATE
	  section.data(3).logicalSrcIdx = 4;
	  section.data(3).dtTransOffset = 403;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_DW.RT_Buffer0
	  section.data(1).logicalSrcIdx = 6;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_DW.Correlation_DWORK1
	  section.data(1).logicalSrcIdx = 7;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_DW.ToWorkspace_PWORK.LoggedData
	  section.data(1).logicalSrcIdx = 8;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 17;
      section.data(17)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_DW.Buffer1_inBufPtrIdx
	  section.data(1).logicalSrcIdx = 9;
	  section.data(1).dtTransOffset = 0;
	
	  ;% PN_generator_Tx_DW.Buffer1_outBufPtrIdx
	  section.data(2).logicalSrcIdx = 10;
	  section.data(2).dtTransOffset = 1;
	
	  ;% PN_generator_Tx_DW.Buffer2_inBufPtrIdx
	  section.data(3).logicalSrcIdx = 12;
	  section.data(3).dtTransOffset = 2;
	
	  ;% PN_generator_Tx_DW.Buffer2_outBufPtrIdx
	  section.data(4).logicalSrcIdx = 13;
	  section.data(4).dtTransOffset = 3;
	
	  ;% PN_generator_Tx_DW.DelayLine_BUFF_OFFSET
	  section.data(5).logicalSrcIdx = 15;
	  section.data(5).dtTransOffset = 4;
	
	  ;% PN_generator_Tx_DW.FIRDecimation_PhaseIdx
	  section.data(6).logicalSrcIdx = 16;
	  section.data(6).dtTransOffset = 5;
	
	  ;% PN_generator_Tx_DW.FIRDecimation_CoeffIdx
	  section.data(7).logicalSrcIdx = 17;
	  section.data(7).dtTransOffset = 6;
	
	  ;% PN_generator_Tx_DW.FIRDecimation_TapDelayIndex
	  section.data(8).logicalSrcIdx = 18;
	  section.data(8).dtTransOffset = 7;
	
	  ;% PN_generator_Tx_DW.FIRDecimation_PhaseIdx_h
	  section.data(9).logicalSrcIdx = 19;
	  section.data(9).dtTransOffset = 8;
	
	  ;% PN_generator_Tx_DW.FIRDecimation_CoeffIdx_e
	  section.data(10).logicalSrcIdx = 20;
	  section.data(10).dtTransOffset = 9;
	
	  ;% PN_generator_Tx_DW.FIRDecimation_TapDelayIndex_i
	  section.data(11).logicalSrcIdx = 21;
	  section.data(11).dtTransOffset = 10;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_TapDelayIndex
	  section.data(12).logicalSrcIdx = 22;
	  section.data(12).dtTransOffset = 11;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_TapDelayInde_k
	  section.data(13).logicalSrcIdx = 23;
	  section.data(13).dtTransOffset = 12;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_ReadIdx
	  section.data(14).logicalSrcIdx = 24;
	  section.data(14).dtTransOffset = 13;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_ReadIdx_o
	  section.data(15).logicalSrcIdx = 25;
	  section.data(15).dtTransOffset = 14;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_ReadIdx_h
	  section.data(16).logicalSrcIdx = 26;
	  section.data(16).dtTransOffset = 15;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_ReadIdx_p
	  section.data(17).logicalSrcIdx = 27;
	  section.data(17).dtTransOffset = 16;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
      section.nData     = 14;
      section.data(14)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_DW.FIRInterpolation_OutBuff
	  section.data(1).logicalSrcIdx = 28;
	  section.data(1).dtTransOffset = 0;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_TapDelayBuff
	  section.data(2).logicalSrcIdx = 29;
	  section.data(2).dtTransOffset = 32;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_OutBuff_b
	  section.data(3).logicalSrcIdx = 30;
	  section.data(3).dtTransOffset = 42;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_TapDelayBuff_a
	  section.data(4).logicalSrcIdx = 31;
	  section.data(4).dtTransOffset = 74;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_OutBuff_g
	  section.data(5).logicalSrcIdx = 32;
	  section.data(5).dtTransOffset = 84;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_TapDelayBuff_j
	  section.data(6).logicalSrcIdx = 33;
	  section.data(6).dtTransOffset = 88;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_OutBuff_n
	  section.data(7).logicalSrcIdx = 34;
	  section.data(7).dtTransOffset = 100;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_TapDelayBuff_b
	  section.data(8).logicalSrcIdx = 35;
	  section.data(8).dtTransOffset = 104;
	
	  ;% PN_generator_Tx_DW.FIRDecimation_Sums
	  section.data(9).logicalSrcIdx = 36;
	  section.data(9).dtTransOffset = 116;
	
	  ;% PN_generator_Tx_DW.FIRDecimation_StatesBuff
	  section.data(10).logicalSrcIdx = 37;
	  section.data(10).dtTransOffset = 292;
	
	  ;% PN_generator_Tx_DW.FIRDecimation_OutBuff
	  section.data(11).logicalSrcIdx = 38;
	  section.data(11).dtTransOffset = 452;
	
	  ;% PN_generator_Tx_DW.FIRDecimation_Sums_b
	  section.data(12).logicalSrcIdx = 39;
	  section.data(12).dtTransOffset = 453;
	
	  ;% PN_generator_Tx_DW.FIRDecimation_StatesBuff_d
	  section.data(13).logicalSrcIdx = 40;
	  section.data(13).dtTransOffset = 629;
	
	  ;% PN_generator_Tx_DW.FIRDecimation_OutBuff_o
	  section.data(14).logicalSrcIdx = 41;
	  section.data(14).dtTransOffset = 789;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(7) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_DW.shiftReg
	  section.data(1).logicalSrcIdx = 42;
	  section.data(1).dtTransOffset = 0;
	
	  ;% PN_generator_Tx_DW.shiftReg_g
	  section.data(2).logicalSrcIdx = 43;
	  section.data(2).dtTransOffset = 6;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(8) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_DW.Delay_DSTATE
	  section.data(1).logicalSrcIdx = 44;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(9) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_DW.ComputeDelay_SubsysRanBC
	  section.data(1).logicalSrcIdx = 45;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(10) = section;
      clear section
      
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% PN_generator_Tx_DW.RateTransition_Buffer0
	  section.data(1).logicalSrcIdx = 46;
	  section.data(1).dtTransOffset = 0;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_wrtBufIdx
	  section.data(2).logicalSrcIdx = 47;
	  section.data(2).dtTransOffset = 1;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_wrtBufIdx_e
	  section.data(3).logicalSrcIdx = 48;
	  section.data(3).dtTransOffset = 2;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_wrtBufIdx_i
	  section.data(4).logicalSrcIdx = 49;
	  section.data(4).dtTransOffset = 3;
	
	  ;% PN_generator_Tx_DW.FIRInterpolation_wrtBufIdx_g
	  section.data(5).logicalSrcIdx = 50;
	  section.data(5).dtTransOffset = 4;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(11) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 4262001080;
  targMap.checksum1 = 852085611;
  targMap.checksum2 = 3398872830;
  targMap.checksum3 = 1625970245;

