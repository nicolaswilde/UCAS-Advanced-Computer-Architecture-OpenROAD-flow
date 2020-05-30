module BTB( // @[:@51.2]
  input         clock, // @[:@52.4]
  input         reset, // @[:@53.4]
  input  [31:0] io_if_pc, // @[:@54.4]
  input  [31:0] io_ras_peek, // @[:@54.4]
  input  [31:0] io_fb_pc, // @[:@54.4]
  input  [1:0]  io_fb_type, // @[:@54.4]
  output [31:0] io_predict_tgt, // @[:@54.4]
  input         io_feedBack_valid, // @[:@54.4]
  input         io_feedBack_bits_redirect, // @[:@54.4]
  input  [31:0] io_feedBack_bits_tgt // @[:@54.4]
);
  reg [31:0] btb_pc_0; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_0;
  reg [31:0] btb_pc_1; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_1;
  reg [31:0] btb_pc_2; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_2;
  reg [31:0] btb_pc_3; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_3;
  reg [31:0] btb_pc_4; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_4;
  reg [31:0] btb_pc_5; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_5;
  reg [31:0] btb_pc_6; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_6;
  reg [31:0] btb_pc_7; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_7;
  reg [31:0] btb_pc_8; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_8;
  reg [31:0] btb_pc_9; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_9;
  reg [31:0] btb_pc_10; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_10;
  reg [31:0] btb_pc_11; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_11;
  reg [31:0] btb_pc_12; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_12;
  reg [31:0] btb_pc_13; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_13;
  reg [31:0] btb_pc_14; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_14;
  reg [31:0] btb_pc_15; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_15;
  reg [31:0] btb_pc_16; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_16;
  reg [31:0] btb_pc_17; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_17;
  reg [31:0] btb_pc_18; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_18;
  reg [31:0] btb_pc_19; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_19;
  reg [31:0] btb_pc_20; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_20;
  reg [31:0] btb_pc_21; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_21;
  reg [31:0] btb_pc_22; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_22;
  reg [31:0] btb_pc_23; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_23;
  reg [31:0] btb_pc_24; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_24;
  reg [31:0] btb_pc_25; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_25;
  reg [31:0] btb_pc_26; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_26;
  reg [31:0] btb_pc_27; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_27;
  reg [31:0] btb_pc_28; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_28;
  reg [31:0] btb_pc_29; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_29;
  reg [31:0] btb_pc_30; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_30;
  reg [31:0] btb_pc_31; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_31;
  reg [31:0] btb_pc_32; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_32;
  reg [31:0] btb_pc_33; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_33;
  reg [31:0] btb_pc_34; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_34;
  reg [31:0] btb_pc_35; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_35;
  reg [31:0] btb_pc_36; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_36;
  reg [31:0] btb_pc_37; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_37;
  reg [31:0] btb_pc_38; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_38;
  reg [31:0] btb_pc_39; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_39;
  reg [31:0] btb_pc_40; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_40;
  reg [31:0] btb_pc_41; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_41;
  reg [31:0] btb_pc_42; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_42;
  reg [31:0] btb_pc_43; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_43;
  reg [31:0] btb_pc_44; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_44;
  reg [31:0] btb_pc_45; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_45;
  reg [31:0] btb_pc_46; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_46;
  reg [31:0] btb_pc_47; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_47;
  reg [31:0] btb_pc_48; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_48;
  reg [31:0] btb_pc_49; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_49;
  reg [31:0] btb_pc_50; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_50;
  reg [31:0] btb_pc_51; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_51;
  reg [31:0] btb_pc_52; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_52;
  reg [31:0] btb_pc_53; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_53;
  reg [31:0] btb_pc_54; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_54;
  reg [31:0] btb_pc_55; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_55;
  reg [31:0] btb_pc_56; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_56;
  reg [31:0] btb_pc_57; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_57;
  reg [31:0] btb_pc_58; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_58;
  reg [31:0] btb_pc_59; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_59;
  reg [31:0] btb_pc_60; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_60;
  reg [31:0] btb_pc_61; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_61;
  reg [31:0] btb_pc_62; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_62;
  reg [31:0] btb_pc_63; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_63;
  reg [31:0] btb_target_0; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_64;
  reg [31:0] btb_target_1; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_65;
  reg [31:0] btb_target_2; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_66;
  reg [31:0] btb_target_3; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_67;
  reg [31:0] btb_target_4; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_68;
  reg [31:0] btb_target_5; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_69;
  reg [31:0] btb_target_6; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_70;
  reg [31:0] btb_target_7; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_71;
  reg [31:0] btb_target_8; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_72;
  reg [31:0] btb_target_9; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_73;
  reg [31:0] btb_target_10; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_74;
  reg [31:0] btb_target_11; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_75;
  reg [31:0] btb_target_12; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_76;
  reg [31:0] btb_target_13; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_77;
  reg [31:0] btb_target_14; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_78;
  reg [31:0] btb_target_15; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_79;
  reg [31:0] btb_target_16; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_80;
  reg [31:0] btb_target_17; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_81;
  reg [31:0] btb_target_18; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_82;
  reg [31:0] btb_target_19; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_83;
  reg [31:0] btb_target_20; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_84;
  reg [31:0] btb_target_21; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_85;
  reg [31:0] btb_target_22; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_86;
  reg [31:0] btb_target_23; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_87;
  reg [31:0] btb_target_24; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_88;
  reg [31:0] btb_target_25; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_89;
  reg [31:0] btb_target_26; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_90;
  reg [31:0] btb_target_27; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_91;
  reg [31:0] btb_target_28; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_92;
  reg [31:0] btb_target_29; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_93;
  reg [31:0] btb_target_30; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_94;
  reg [31:0] btb_target_31; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_95;
  reg [31:0] btb_target_32; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_96;
  reg [31:0] btb_target_33; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_97;
  reg [31:0] btb_target_34; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_98;
  reg [31:0] btb_target_35; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_99;
  reg [31:0] btb_target_36; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_100;
  reg [31:0] btb_target_37; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_101;
  reg [31:0] btb_target_38; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_102;
  reg [31:0] btb_target_39; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_103;
  reg [31:0] btb_target_40; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_104;
  reg [31:0] btb_target_41; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_105;
  reg [31:0] btb_target_42; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_106;
  reg [31:0] btb_target_43; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_107;
  reg [31:0] btb_target_44; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_108;
  reg [31:0] btb_target_45; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_109;
  reg [31:0] btb_target_46; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_110;
  reg [31:0] btb_target_47; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_111;
  reg [31:0] btb_target_48; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_112;
  reg [31:0] btb_target_49; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_113;
  reg [31:0] btb_target_50; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_114;
  reg [31:0] btb_target_51; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_115;
  reg [31:0] btb_target_52; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_116;
  reg [31:0] btb_target_53; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_117;
  reg [31:0] btb_target_54; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_118;
  reg [31:0] btb_target_55; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_119;
  reg [31:0] btb_target_56; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_120;
  reg [31:0] btb_target_57; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_121;
  reg [31:0] btb_target_58; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_122;
  reg [31:0] btb_target_59; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_123;
  reg [31:0] btb_target_60; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_124;
  reg [31:0] btb_target_61; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_125;
  reg [31:0] btb_target_62; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_126;
  reg [31:0] btb_target_63; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_127;
  reg [1:0] btb_hcount_0; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_128;
  reg [1:0] btb_hcount_1; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_129;
  reg [1:0] btb_hcount_2; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_130;
  reg [1:0] btb_hcount_3; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_131;
  reg [1:0] btb_hcount_4; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_132;
  reg [1:0] btb_hcount_5; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_133;
  reg [1:0] btb_hcount_6; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_134;
  reg [1:0] btb_hcount_7; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_135;
  reg [1:0] btb_hcount_8; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_136;
  reg [1:0] btb_hcount_9; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_137;
  reg [1:0] btb_hcount_10; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_138;
  reg [1:0] btb_hcount_11; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_139;
  reg [1:0] btb_hcount_12; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_140;
  reg [1:0] btb_hcount_13; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_141;
  reg [1:0] btb_hcount_14; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_142;
  reg [1:0] btb_hcount_15; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_143;
  reg [1:0] btb_hcount_16; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_144;
  reg [1:0] btb_hcount_17; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_145;
  reg [1:0] btb_hcount_18; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_146;
  reg [1:0] btb_hcount_19; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_147;
  reg [1:0] btb_hcount_20; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_148;
  reg [1:0] btb_hcount_21; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_149;
  reg [1:0] btb_hcount_22; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_150;
  reg [1:0] btb_hcount_23; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_151;
  reg [1:0] btb_hcount_24; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_152;
  reg [1:0] btb_hcount_25; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_153;
  reg [1:0] btb_hcount_26; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_154;
  reg [1:0] btb_hcount_27; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_155;
  reg [1:0] btb_hcount_28; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_156;
  reg [1:0] btb_hcount_29; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_157;
  reg [1:0] btb_hcount_30; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_158;
  reg [1:0] btb_hcount_31; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_159;
  reg [1:0] btb_hcount_32; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_160;
  reg [1:0] btb_hcount_33; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_161;
  reg [1:0] btb_hcount_34; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_162;
  reg [1:0] btb_hcount_35; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_163;
  reg [1:0] btb_hcount_36; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_164;
  reg [1:0] btb_hcount_37; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_165;
  reg [1:0] btb_hcount_38; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_166;
  reg [1:0] btb_hcount_39; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_167;
  reg [1:0] btb_hcount_40; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_168;
  reg [1:0] btb_hcount_41; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_169;
  reg [1:0] btb_hcount_42; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_170;
  reg [1:0] btb_hcount_43; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_171;
  reg [1:0] btb_hcount_44; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_172;
  reg [1:0] btb_hcount_45; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_173;
  reg [1:0] btb_hcount_46; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_174;
  reg [1:0] btb_hcount_47; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_175;
  reg [1:0] btb_hcount_48; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_176;
  reg [1:0] btb_hcount_49; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_177;
  reg [1:0] btb_hcount_50; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_178;
  reg [1:0] btb_hcount_51; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_179;
  reg [1:0] btb_hcount_52; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_180;
  reg [1:0] btb_hcount_53; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_181;
  reg [1:0] btb_hcount_54; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_182;
  reg [1:0] btb_hcount_55; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_183;
  reg [1:0] btb_hcount_56; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_184;
  reg [1:0] btb_hcount_57; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_185;
  reg [1:0] btb_hcount_58; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_186;
  reg [1:0] btb_hcount_59; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_187;
  reg [1:0] btb_hcount_60; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_188;
  reg [1:0] btb_hcount_61; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_189;
  reg [1:0] btb_hcount_62; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_190;
  reg [1:0] btb_hcount_63; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_191;
  reg [1:0] btb_btype_0; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_192;
  reg [1:0] btb_btype_1; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_193;
  reg [1:0] btb_btype_2; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_194;
  reg [1:0] btb_btype_3; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_195;
  reg [1:0] btb_btype_4; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_196;
  reg [1:0] btb_btype_5; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_197;
  reg [1:0] btb_btype_6; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_198;
  reg [1:0] btb_btype_7; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_199;
  reg [1:0] btb_btype_8; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_200;
  reg [1:0] btb_btype_9; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_201;
  reg [1:0] btb_btype_10; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_202;
  reg [1:0] btb_btype_11; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_203;
  reg [1:0] btb_btype_12; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_204;
  reg [1:0] btb_btype_13; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_205;
  reg [1:0] btb_btype_14; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_206;
  reg [1:0] btb_btype_15; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_207;
  reg [1:0] btb_btype_16; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_208;
  reg [1:0] btb_btype_17; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_209;
  reg [1:0] btb_btype_18; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_210;
  reg [1:0] btb_btype_19; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_211;
  reg [1:0] btb_btype_20; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_212;
  reg [1:0] btb_btype_21; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_213;
  reg [1:0] btb_btype_22; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_214;
  reg [1:0] btb_btype_23; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_215;
  reg [1:0] btb_btype_24; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_216;
  reg [1:0] btb_btype_25; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_217;
  reg [1:0] btb_btype_26; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_218;
  reg [1:0] btb_btype_27; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_219;
  reg [1:0] btb_btype_28; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_220;
  reg [1:0] btb_btype_29; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_221;
  reg [1:0] btb_btype_30; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_222;
  reg [1:0] btb_btype_31; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_223;
  reg [1:0] btb_btype_32; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_224;
  reg [1:0] btb_btype_33; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_225;
  reg [1:0] btb_btype_34; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_226;
  reg [1:0] btb_btype_35; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_227;
  reg [1:0] btb_btype_36; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_228;
  reg [1:0] btb_btype_37; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_229;
  reg [1:0] btb_btype_38; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_230;
  reg [1:0] btb_btype_39; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_231;
  reg [1:0] btb_btype_40; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_232;
  reg [1:0] btb_btype_41; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_233;
  reg [1:0] btb_btype_42; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_234;
  reg [1:0] btb_btype_43; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_235;
  reg [1:0] btb_btype_44; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_236;
  reg [1:0] btb_btype_45; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_237;
  reg [1:0] btb_btype_46; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_238;
  reg [1:0] btb_btype_47; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_239;
  reg [1:0] btb_btype_48; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_240;
  reg [1:0] btb_btype_49; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_241;
  reg [1:0] btb_btype_50; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_242;
  reg [1:0] btb_btype_51; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_243;
  reg [1:0] btb_btype_52; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_244;
  reg [1:0] btb_btype_53; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_245;
  reg [1:0] btb_btype_54; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_246;
  reg [1:0] btb_btype_55; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_247;
  reg [1:0] btb_btype_56; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_248;
  reg [1:0] btb_btype_57; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_249;
  reg [1:0] btb_btype_58; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_250;
  reg [1:0] btb_btype_59; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_251;
  reg [1:0] btb_btype_60; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_252;
  reg [1:0] btb_btype_61; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_253;
  reg [1:0] btb_btype_62; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_254;
  reg [1:0] btb_btype_63; // @[BTB.scala 50:20:@313.4]
  reg [31:0] _RAND_255;
  wire  _T_125; // @[BTB.scala 76:42:@315.4]
  wire  _T_126; // @[BTB.scala 76:42:@316.4]
  wire  _T_127; // @[BTB.scala 76:42:@317.4]
  wire  _T_128; // @[BTB.scala 76:42:@318.4]
  wire  _T_129; // @[BTB.scala 76:42:@319.4]
  wire  _T_130; // @[BTB.scala 76:42:@320.4]
  wire  _T_131; // @[BTB.scala 76:42:@321.4]
  wire  _T_132; // @[BTB.scala 76:42:@322.4]
  wire  _T_133; // @[BTB.scala 76:42:@323.4]
  wire  _T_134; // @[BTB.scala 76:42:@324.4]
  wire  _T_135; // @[BTB.scala 76:42:@325.4]
  wire  _T_136; // @[BTB.scala 76:42:@326.4]
  wire  _T_137; // @[BTB.scala 76:42:@327.4]
  wire  _T_138; // @[BTB.scala 76:42:@328.4]
  wire  _T_139; // @[BTB.scala 76:42:@329.4]
  wire  _T_140; // @[BTB.scala 76:42:@330.4]
  wire  _T_141; // @[BTB.scala 76:42:@331.4]
  wire  _T_142; // @[BTB.scala 76:42:@332.4]
  wire  _T_143; // @[BTB.scala 76:42:@333.4]
  wire  _T_144; // @[BTB.scala 76:42:@334.4]
  wire  _T_145; // @[BTB.scala 76:42:@335.4]
  wire  _T_146; // @[BTB.scala 76:42:@336.4]
  wire  _T_147; // @[BTB.scala 76:42:@337.4]
  wire  _T_148; // @[BTB.scala 76:42:@338.4]
  wire  _T_149; // @[BTB.scala 76:42:@339.4]
  wire  _T_150; // @[BTB.scala 76:42:@340.4]
  wire  _T_151; // @[BTB.scala 76:42:@341.4]
  wire  _T_152; // @[BTB.scala 76:42:@342.4]
  wire  _T_153; // @[BTB.scala 76:42:@343.4]
  wire  _T_154; // @[BTB.scala 76:42:@344.4]
  wire  _T_155; // @[BTB.scala 76:42:@345.4]
  wire  _T_156; // @[BTB.scala 76:42:@346.4]
  wire  _T_157; // @[BTB.scala 76:42:@347.4]
  wire  _T_158; // @[BTB.scala 76:42:@348.4]
  wire  _T_159; // @[BTB.scala 76:42:@349.4]
  wire  _T_160; // @[BTB.scala 76:42:@350.4]
  wire  _T_161; // @[BTB.scala 76:42:@351.4]
  wire  _T_162; // @[BTB.scala 76:42:@352.4]
  wire  _T_163; // @[BTB.scala 76:42:@353.4]
  wire  _T_164; // @[BTB.scala 76:42:@354.4]
  wire  _T_165; // @[BTB.scala 76:42:@355.4]
  wire  _T_166; // @[BTB.scala 76:42:@356.4]
  wire  _T_167; // @[BTB.scala 76:42:@357.4]
  wire  _T_168; // @[BTB.scala 76:42:@358.4]
  wire  _T_169; // @[BTB.scala 76:42:@359.4]
  wire  _T_170; // @[BTB.scala 76:42:@360.4]
  wire  _T_171; // @[BTB.scala 76:42:@361.4]
  wire  _T_172; // @[BTB.scala 76:42:@362.4]
  wire  _T_173; // @[BTB.scala 76:42:@363.4]
  wire  _T_174; // @[BTB.scala 76:42:@364.4]
  wire  _T_175; // @[BTB.scala 76:42:@365.4]
  wire  _T_176; // @[BTB.scala 76:42:@366.4]
  wire  _T_177; // @[BTB.scala 76:42:@367.4]
  wire  _T_178; // @[BTB.scala 76:42:@368.4]
  wire  _T_179; // @[BTB.scala 76:42:@369.4]
  wire  _T_180; // @[BTB.scala 76:42:@370.4]
  wire  _T_181; // @[BTB.scala 76:42:@371.4]
  wire  _T_182; // @[BTB.scala 76:42:@372.4]
  wire  _T_183; // @[BTB.scala 76:42:@373.4]
  wire  _T_184; // @[BTB.scala 76:42:@374.4]
  wire  _T_185; // @[BTB.scala 76:42:@375.4]
  wire  _T_186; // @[BTB.scala 76:42:@376.4]
  wire  _T_187; // @[BTB.scala 76:42:@377.4]
  wire  _T_188; // @[BTB.scala 76:42:@378.4]
  wire [7:0] _T_265; // @[BTB.scala 76:57:@450.4]
  wire [15:0] _T_273; // @[BTB.scala 76:57:@458.4]
  wire [7:0] _T_280; // @[BTB.scala 76:57:@465.4]
  wire [31:0] _T_289; // @[BTB.scala 76:57:@474.4]
  wire [7:0] _T_296; // @[BTB.scala 76:57:@481.4]
  wire [15:0] _T_304; // @[BTB.scala 76:57:@489.4]
  wire [7:0] _T_311; // @[BTB.scala 76:57:@496.4]
  wire [31:0] _T_320; // @[BTB.scala 76:57:@505.4]
  wire [63:0] _T_321; // @[BTB.scala 76:57:@506.4]
  wire  _T_323; // @[BTB.scala 56:66:@507.4]
  wire  _T_325; // @[BTB.scala 56:66:@508.4]
  wire  _T_327; // @[BTB.scala 56:66:@509.4]
  wire  _T_329; // @[BTB.scala 56:66:@510.4]
  wire  _T_331; // @[BTB.scala 56:66:@511.4]
  wire  _T_333; // @[BTB.scala 56:66:@512.4]
  wire  _T_335; // @[BTB.scala 56:66:@513.4]
  wire  _T_337; // @[BTB.scala 56:66:@514.4]
  wire  _T_339; // @[BTB.scala 56:66:@515.4]
  wire  _T_341; // @[BTB.scala 56:66:@516.4]
  wire  _T_343; // @[BTB.scala 56:66:@517.4]
  wire  _T_345; // @[BTB.scala 56:66:@518.4]
  wire  _T_347; // @[BTB.scala 56:66:@519.4]
  wire  _T_349; // @[BTB.scala 56:66:@520.4]
  wire  _T_351; // @[BTB.scala 56:66:@521.4]
  wire  _T_353; // @[BTB.scala 56:66:@522.4]
  wire  _T_355; // @[BTB.scala 56:66:@523.4]
  wire  _T_357; // @[BTB.scala 56:66:@524.4]
  wire  _T_359; // @[BTB.scala 56:66:@525.4]
  wire  _T_361; // @[BTB.scala 56:66:@526.4]
  wire  _T_363; // @[BTB.scala 56:66:@527.4]
  wire  _T_365; // @[BTB.scala 56:66:@528.4]
  wire  _T_367; // @[BTB.scala 56:66:@529.4]
  wire  _T_369; // @[BTB.scala 56:66:@530.4]
  wire  _T_371; // @[BTB.scala 56:66:@531.4]
  wire  _T_373; // @[BTB.scala 56:66:@532.4]
  wire  _T_375; // @[BTB.scala 56:66:@533.4]
  wire  _T_377; // @[BTB.scala 56:66:@534.4]
  wire  _T_379; // @[BTB.scala 56:66:@535.4]
  wire  _T_381; // @[BTB.scala 56:66:@536.4]
  wire  _T_383; // @[BTB.scala 56:66:@537.4]
  wire  _T_385; // @[BTB.scala 56:66:@538.4]
  wire  _T_387; // @[BTB.scala 56:66:@539.4]
  wire  _T_389; // @[BTB.scala 56:66:@540.4]
  wire  _T_391; // @[BTB.scala 56:66:@541.4]
  wire  _T_393; // @[BTB.scala 56:66:@542.4]
  wire  _T_395; // @[BTB.scala 56:66:@543.4]
  wire  _T_397; // @[BTB.scala 56:66:@544.4]
  wire  _T_399; // @[BTB.scala 56:66:@545.4]
  wire  _T_401; // @[BTB.scala 56:66:@546.4]
  wire  _T_403; // @[BTB.scala 56:66:@547.4]
  wire  _T_405; // @[BTB.scala 56:66:@548.4]
  wire  _T_407; // @[BTB.scala 56:66:@549.4]
  wire  _T_409; // @[BTB.scala 56:66:@550.4]
  wire  _T_411; // @[BTB.scala 56:66:@551.4]
  wire  _T_413; // @[BTB.scala 56:66:@552.4]
  wire  _T_415; // @[BTB.scala 56:66:@553.4]
  wire  _T_417; // @[BTB.scala 56:66:@554.4]
  wire  _T_419; // @[BTB.scala 56:66:@555.4]
  wire  _T_421; // @[BTB.scala 56:66:@556.4]
  wire  _T_423; // @[BTB.scala 56:66:@557.4]
  wire  _T_425; // @[BTB.scala 56:66:@558.4]
  wire  _T_427; // @[BTB.scala 56:66:@559.4]
  wire  _T_429; // @[BTB.scala 56:66:@560.4]
  wire  _T_431; // @[BTB.scala 56:66:@561.4]
  wire  _T_433; // @[BTB.scala 56:66:@562.4]
  wire  _T_435; // @[BTB.scala 56:66:@563.4]
  wire  _T_437; // @[BTB.scala 56:66:@564.4]
  wire  _T_439; // @[BTB.scala 56:66:@565.4]
  wire  _T_441; // @[BTB.scala 56:66:@566.4]
  wire  _T_443; // @[BTB.scala 56:66:@567.4]
  wire  _T_445; // @[BTB.scala 56:66:@568.4]
  wire  _T_447; // @[BTB.scala 56:66:@569.4]
  wire  _T_449; // @[BTB.scala 56:66:@570.4]
  wire [7:0] _T_526; // @[BTB.scala 56:72:@642.4]
  wire [15:0] _T_534; // @[BTB.scala 56:72:@650.4]
  wire [7:0] _T_541; // @[BTB.scala 56:72:@657.4]
  wire [31:0] _T_550; // @[BTB.scala 56:72:@666.4]
  wire [7:0] _T_557; // @[BTB.scala 56:72:@673.4]
  wire [15:0] _T_565; // @[BTB.scala 56:72:@681.4]
  wire [7:0] _T_572; // @[BTB.scala 56:72:@688.4]
  wire [31:0] _T_581; // @[BTB.scala 56:72:@697.4]
  wire [63:0] _T_582; // @[BTB.scala 56:72:@698.4]
  wire [63:0] predict_lookup; // @[BTB.scala 76:64:@699.4]
  wire [32:0] _T_585; // @[BTB.scala 77:32:@701.4]
  wire [31:0] predict_cont_tgt; // @[BTB.scala 77:32:@702.4]
  wire  _T_587; // @[Mux.scala 21:36:@704.4]
  wire  _T_588; // @[Mux.scala 21:36:@705.4]
  wire  _T_589; // @[Mux.scala 21:36:@706.4]
  wire  _T_590; // @[Mux.scala 21:36:@707.4]
  wire  _T_591; // @[Mux.scala 21:36:@708.4]
  wire  _T_592; // @[Mux.scala 21:36:@709.4]
  wire  _T_593; // @[Mux.scala 21:36:@710.4]
  wire  _T_594; // @[Mux.scala 21:36:@711.4]
  wire  _T_595; // @[Mux.scala 21:36:@712.4]
  wire  _T_596; // @[Mux.scala 21:36:@713.4]
  wire  _T_597; // @[Mux.scala 21:36:@714.4]
  wire  _T_598; // @[Mux.scala 21:36:@715.4]
  wire  _T_599; // @[Mux.scala 21:36:@716.4]
  wire  _T_600; // @[Mux.scala 21:36:@717.4]
  wire  _T_601; // @[Mux.scala 21:36:@718.4]
  wire  _T_602; // @[Mux.scala 21:36:@719.4]
  wire  _T_603; // @[Mux.scala 21:36:@720.4]
  wire  _T_604; // @[Mux.scala 21:36:@721.4]
  wire  _T_605; // @[Mux.scala 21:36:@722.4]
  wire  _T_606; // @[Mux.scala 21:36:@723.4]
  wire  _T_607; // @[Mux.scala 21:36:@724.4]
  wire  _T_608; // @[Mux.scala 21:36:@725.4]
  wire  _T_609; // @[Mux.scala 21:36:@726.4]
  wire  _T_610; // @[Mux.scala 21:36:@727.4]
  wire  _T_611; // @[Mux.scala 21:36:@728.4]
  wire  _T_612; // @[Mux.scala 21:36:@729.4]
  wire  _T_613; // @[Mux.scala 21:36:@730.4]
  wire  _T_614; // @[Mux.scala 21:36:@731.4]
  wire  _T_615; // @[Mux.scala 21:36:@732.4]
  wire  _T_616; // @[Mux.scala 21:36:@733.4]
  wire  _T_617; // @[Mux.scala 21:36:@734.4]
  wire  _T_618; // @[Mux.scala 21:36:@735.4]
  wire  _T_619; // @[Mux.scala 21:36:@736.4]
  wire  _T_620; // @[Mux.scala 21:36:@737.4]
  wire  _T_621; // @[Mux.scala 21:36:@738.4]
  wire  _T_622; // @[Mux.scala 21:36:@739.4]
  wire  _T_623; // @[Mux.scala 21:36:@740.4]
  wire  _T_624; // @[Mux.scala 21:36:@741.4]
  wire  _T_625; // @[Mux.scala 21:36:@742.4]
  wire  _T_626; // @[Mux.scala 21:36:@743.4]
  wire  _T_627; // @[Mux.scala 21:36:@744.4]
  wire  _T_628; // @[Mux.scala 21:36:@745.4]
  wire  _T_629; // @[Mux.scala 21:36:@746.4]
  wire  _T_630; // @[Mux.scala 21:36:@747.4]
  wire  _T_631; // @[Mux.scala 21:36:@748.4]
  wire  _T_632; // @[Mux.scala 21:36:@749.4]
  wire  _T_633; // @[Mux.scala 21:36:@750.4]
  wire  _T_634; // @[Mux.scala 21:36:@751.4]
  wire  _T_635; // @[Mux.scala 21:36:@752.4]
  wire  _T_636; // @[Mux.scala 21:36:@753.4]
  wire  _T_637; // @[Mux.scala 21:36:@754.4]
  wire  _T_638; // @[Mux.scala 21:36:@755.4]
  wire  _T_639; // @[Mux.scala 21:36:@756.4]
  wire  _T_640; // @[Mux.scala 21:36:@757.4]
  wire  _T_641; // @[Mux.scala 21:36:@758.4]
  wire  _T_642; // @[Mux.scala 21:36:@759.4]
  wire  _T_643; // @[Mux.scala 21:36:@760.4]
  wire  _T_644; // @[Mux.scala 21:36:@761.4]
  wire  _T_645; // @[Mux.scala 21:36:@762.4]
  wire  _T_646; // @[Mux.scala 21:36:@763.4]
  wire  _T_647; // @[Mux.scala 21:36:@764.4]
  wire  _T_648; // @[Mux.scala 21:36:@765.4]
  wire  _T_649; // @[Mux.scala 21:36:@766.4]
  wire  _T_650; // @[Mux.scala 21:36:@767.4]
  wire [31:0] _T_653; // @[Mux.scala 19:72:@768.4]
  wire [31:0] _T_655; // @[Mux.scala 19:72:@769.4]
  wire [31:0] _T_657; // @[Mux.scala 19:72:@770.4]
  wire [31:0] _T_659; // @[Mux.scala 19:72:@771.4]
  wire [31:0] _T_661; // @[Mux.scala 19:72:@772.4]
  wire [31:0] _T_663; // @[Mux.scala 19:72:@773.4]
  wire [31:0] _T_665; // @[Mux.scala 19:72:@774.4]
  wire [31:0] _T_667; // @[Mux.scala 19:72:@775.4]
  wire [31:0] _T_669; // @[Mux.scala 19:72:@776.4]
  wire [31:0] _T_671; // @[Mux.scala 19:72:@777.4]
  wire [31:0] _T_673; // @[Mux.scala 19:72:@778.4]
  wire [31:0] _T_675; // @[Mux.scala 19:72:@779.4]
  wire [31:0] _T_677; // @[Mux.scala 19:72:@780.4]
  wire [31:0] _T_679; // @[Mux.scala 19:72:@781.4]
  wire [31:0] _T_681; // @[Mux.scala 19:72:@782.4]
  wire [31:0] _T_683; // @[Mux.scala 19:72:@783.4]
  wire [31:0] _T_685; // @[Mux.scala 19:72:@784.4]
  wire [31:0] _T_687; // @[Mux.scala 19:72:@785.4]
  wire [31:0] _T_689; // @[Mux.scala 19:72:@786.4]
  wire [31:0] _T_691; // @[Mux.scala 19:72:@787.4]
  wire [31:0] _T_693; // @[Mux.scala 19:72:@788.4]
  wire [31:0] _T_695; // @[Mux.scala 19:72:@789.4]
  wire [31:0] _T_697; // @[Mux.scala 19:72:@790.4]
  wire [31:0] _T_699; // @[Mux.scala 19:72:@791.4]
  wire [31:0] _T_701; // @[Mux.scala 19:72:@792.4]
  wire [31:0] _T_703; // @[Mux.scala 19:72:@793.4]
  wire [31:0] _T_705; // @[Mux.scala 19:72:@794.4]
  wire [31:0] _T_707; // @[Mux.scala 19:72:@795.4]
  wire [31:0] _T_709; // @[Mux.scala 19:72:@796.4]
  wire [31:0] _T_711; // @[Mux.scala 19:72:@797.4]
  wire [31:0] _T_713; // @[Mux.scala 19:72:@798.4]
  wire [31:0] _T_715; // @[Mux.scala 19:72:@799.4]
  wire [31:0] _T_717; // @[Mux.scala 19:72:@800.4]
  wire [31:0] _T_719; // @[Mux.scala 19:72:@801.4]
  wire [31:0] _T_721; // @[Mux.scala 19:72:@802.4]
  wire [31:0] _T_723; // @[Mux.scala 19:72:@803.4]
  wire [31:0] _T_725; // @[Mux.scala 19:72:@804.4]
  wire [31:0] _T_727; // @[Mux.scala 19:72:@805.4]
  wire [31:0] _T_729; // @[Mux.scala 19:72:@806.4]
  wire [31:0] _T_731; // @[Mux.scala 19:72:@807.4]
  wire [31:0] _T_733; // @[Mux.scala 19:72:@808.4]
  wire [31:0] _T_735; // @[Mux.scala 19:72:@809.4]
  wire [31:0] _T_737; // @[Mux.scala 19:72:@810.4]
  wire [31:0] _T_739; // @[Mux.scala 19:72:@811.4]
  wire [31:0] _T_741; // @[Mux.scala 19:72:@812.4]
  wire [31:0] _T_743; // @[Mux.scala 19:72:@813.4]
  wire [31:0] _T_745; // @[Mux.scala 19:72:@814.4]
  wire [31:0] _T_747; // @[Mux.scala 19:72:@815.4]
  wire [31:0] _T_749; // @[Mux.scala 19:72:@816.4]
  wire [31:0] _T_751; // @[Mux.scala 19:72:@817.4]
  wire [31:0] _T_753; // @[Mux.scala 19:72:@818.4]
  wire [31:0] _T_755; // @[Mux.scala 19:72:@819.4]
  wire [31:0] _T_757; // @[Mux.scala 19:72:@820.4]
  wire [31:0] _T_759; // @[Mux.scala 19:72:@821.4]
  wire [31:0] _T_761; // @[Mux.scala 19:72:@822.4]
  wire [31:0] _T_763; // @[Mux.scala 19:72:@823.4]
  wire [31:0] _T_765; // @[Mux.scala 19:72:@824.4]
  wire [31:0] _T_767; // @[Mux.scala 19:72:@825.4]
  wire [31:0] _T_769; // @[Mux.scala 19:72:@826.4]
  wire [31:0] _T_771; // @[Mux.scala 19:72:@827.4]
  wire [31:0] _T_773; // @[Mux.scala 19:72:@828.4]
  wire [31:0] _T_775; // @[Mux.scala 19:72:@829.4]
  wire [31:0] _T_777; // @[Mux.scala 19:72:@830.4]
  wire [31:0] _T_779; // @[Mux.scala 19:72:@831.4]
  wire [31:0] _T_780; // @[Mux.scala 19:72:@832.4]
  wire [31:0] _T_781; // @[Mux.scala 19:72:@833.4]
  wire [31:0] _T_782; // @[Mux.scala 19:72:@834.4]
  wire [31:0] _T_783; // @[Mux.scala 19:72:@835.4]
  wire [31:0] _T_784; // @[Mux.scala 19:72:@836.4]
  wire [31:0] _T_785; // @[Mux.scala 19:72:@837.4]
  wire [31:0] _T_786; // @[Mux.scala 19:72:@838.4]
  wire [31:0] _T_787; // @[Mux.scala 19:72:@839.4]
  wire [31:0] _T_788; // @[Mux.scala 19:72:@840.4]
  wire [31:0] _T_789; // @[Mux.scala 19:72:@841.4]
  wire [31:0] _T_790; // @[Mux.scala 19:72:@842.4]
  wire [31:0] _T_791; // @[Mux.scala 19:72:@843.4]
  wire [31:0] _T_792; // @[Mux.scala 19:72:@844.4]
  wire [31:0] _T_793; // @[Mux.scala 19:72:@845.4]
  wire [31:0] _T_794; // @[Mux.scala 19:72:@846.4]
  wire [31:0] _T_795; // @[Mux.scala 19:72:@847.4]
  wire [31:0] _T_796; // @[Mux.scala 19:72:@848.4]
  wire [31:0] _T_797; // @[Mux.scala 19:72:@849.4]
  wire [31:0] _T_798; // @[Mux.scala 19:72:@850.4]
  wire [31:0] _T_799; // @[Mux.scala 19:72:@851.4]
  wire [31:0] _T_800; // @[Mux.scala 19:72:@852.4]
  wire [31:0] _T_801; // @[Mux.scala 19:72:@853.4]
  wire [31:0] _T_802; // @[Mux.scala 19:72:@854.4]
  wire [31:0] _T_803; // @[Mux.scala 19:72:@855.4]
  wire [31:0] _T_804; // @[Mux.scala 19:72:@856.4]
  wire [31:0] _T_805; // @[Mux.scala 19:72:@857.4]
  wire [31:0] _T_806; // @[Mux.scala 19:72:@858.4]
  wire [31:0] _T_807; // @[Mux.scala 19:72:@859.4]
  wire [31:0] _T_808; // @[Mux.scala 19:72:@860.4]
  wire [31:0] _T_809; // @[Mux.scala 19:72:@861.4]
  wire [31:0] _T_810; // @[Mux.scala 19:72:@862.4]
  wire [31:0] _T_811; // @[Mux.scala 19:72:@863.4]
  wire [31:0] _T_812; // @[Mux.scala 19:72:@864.4]
  wire [31:0] _T_813; // @[Mux.scala 19:72:@865.4]
  wire [31:0] _T_814; // @[Mux.scala 19:72:@866.4]
  wire [31:0] _T_815; // @[Mux.scala 19:72:@867.4]
  wire [31:0] _T_816; // @[Mux.scala 19:72:@868.4]
  wire [31:0] _T_817; // @[Mux.scala 19:72:@869.4]
  wire [31:0] _T_818; // @[Mux.scala 19:72:@870.4]
  wire [31:0] _T_819; // @[Mux.scala 19:72:@871.4]
  wire [31:0] _T_820; // @[Mux.scala 19:72:@872.4]
  wire [31:0] _T_821; // @[Mux.scala 19:72:@873.4]
  wire [31:0] _T_822; // @[Mux.scala 19:72:@874.4]
  wire [31:0] _T_823; // @[Mux.scala 19:72:@875.4]
  wire [31:0] _T_824; // @[Mux.scala 19:72:@876.4]
  wire [31:0] _T_825; // @[Mux.scala 19:72:@877.4]
  wire [31:0] _T_826; // @[Mux.scala 19:72:@878.4]
  wire [31:0] _T_827; // @[Mux.scala 19:72:@879.4]
  wire [31:0] _T_828; // @[Mux.scala 19:72:@880.4]
  wire [31:0] _T_829; // @[Mux.scala 19:72:@881.4]
  wire [31:0] _T_830; // @[Mux.scala 19:72:@882.4]
  wire [31:0] _T_831; // @[Mux.scala 19:72:@883.4]
  wire [31:0] _T_832; // @[Mux.scala 19:72:@884.4]
  wire [31:0] _T_833; // @[Mux.scala 19:72:@885.4]
  wire [31:0] _T_834; // @[Mux.scala 19:72:@886.4]
  wire [31:0] _T_835; // @[Mux.scala 19:72:@887.4]
  wire [31:0] _T_836; // @[Mux.scala 19:72:@888.4]
  wire [31:0] _T_837; // @[Mux.scala 19:72:@889.4]
  wire [31:0] _T_838; // @[Mux.scala 19:72:@890.4]
  wire [31:0] _T_839; // @[Mux.scala 19:72:@891.4]
  wire [31:0] _T_840; // @[Mux.scala 19:72:@892.4]
  wire [31:0] _T_841; // @[Mux.scala 19:72:@893.4]
  wire [31:0] predict_jump_tgt; // @[Mux.scala 19:72:@894.4]
  wire [1:0] _T_911; // @[Mux.scala 19:72:@962.4]
  wire [1:0] _T_913; // @[Mux.scala 19:72:@963.4]
  wire [1:0] _T_915; // @[Mux.scala 19:72:@964.4]
  wire [1:0] _T_917; // @[Mux.scala 19:72:@965.4]
  wire [1:0] _T_919; // @[Mux.scala 19:72:@966.4]
  wire [1:0] _T_921; // @[Mux.scala 19:72:@967.4]
  wire [1:0] _T_923; // @[Mux.scala 19:72:@968.4]
  wire [1:0] _T_925; // @[Mux.scala 19:72:@969.4]
  wire [1:0] _T_927; // @[Mux.scala 19:72:@970.4]
  wire [1:0] _T_929; // @[Mux.scala 19:72:@971.4]
  wire [1:0] _T_931; // @[Mux.scala 19:72:@972.4]
  wire [1:0] _T_933; // @[Mux.scala 19:72:@973.4]
  wire [1:0] _T_935; // @[Mux.scala 19:72:@974.4]
  wire [1:0] _T_937; // @[Mux.scala 19:72:@975.4]
  wire [1:0] _T_939; // @[Mux.scala 19:72:@976.4]
  wire [1:0] _T_941; // @[Mux.scala 19:72:@977.4]
  wire [1:0] _T_943; // @[Mux.scala 19:72:@978.4]
  wire [1:0] _T_945; // @[Mux.scala 19:72:@979.4]
  wire [1:0] _T_947; // @[Mux.scala 19:72:@980.4]
  wire [1:0] _T_949; // @[Mux.scala 19:72:@981.4]
  wire [1:0] _T_951; // @[Mux.scala 19:72:@982.4]
  wire [1:0] _T_953; // @[Mux.scala 19:72:@983.4]
  wire [1:0] _T_955; // @[Mux.scala 19:72:@984.4]
  wire [1:0] _T_957; // @[Mux.scala 19:72:@985.4]
  wire [1:0] _T_959; // @[Mux.scala 19:72:@986.4]
  wire [1:0] _T_961; // @[Mux.scala 19:72:@987.4]
  wire [1:0] _T_963; // @[Mux.scala 19:72:@988.4]
  wire [1:0] _T_965; // @[Mux.scala 19:72:@989.4]
  wire [1:0] _T_967; // @[Mux.scala 19:72:@990.4]
  wire [1:0] _T_969; // @[Mux.scala 19:72:@991.4]
  wire [1:0] _T_971; // @[Mux.scala 19:72:@992.4]
  wire [1:0] _T_973; // @[Mux.scala 19:72:@993.4]
  wire [1:0] _T_975; // @[Mux.scala 19:72:@994.4]
  wire [1:0] _T_977; // @[Mux.scala 19:72:@995.4]
  wire [1:0] _T_979; // @[Mux.scala 19:72:@996.4]
  wire [1:0] _T_981; // @[Mux.scala 19:72:@997.4]
  wire [1:0] _T_983; // @[Mux.scala 19:72:@998.4]
  wire [1:0] _T_985; // @[Mux.scala 19:72:@999.4]
  wire [1:0] _T_987; // @[Mux.scala 19:72:@1000.4]
  wire [1:0] _T_989; // @[Mux.scala 19:72:@1001.4]
  wire [1:0] _T_991; // @[Mux.scala 19:72:@1002.4]
  wire [1:0] _T_993; // @[Mux.scala 19:72:@1003.4]
  wire [1:0] _T_995; // @[Mux.scala 19:72:@1004.4]
  wire [1:0] _T_997; // @[Mux.scala 19:72:@1005.4]
  wire [1:0] _T_999; // @[Mux.scala 19:72:@1006.4]
  wire [1:0] _T_1001; // @[Mux.scala 19:72:@1007.4]
  wire [1:0] _T_1003; // @[Mux.scala 19:72:@1008.4]
  wire [1:0] _T_1005; // @[Mux.scala 19:72:@1009.4]
  wire [1:0] _T_1007; // @[Mux.scala 19:72:@1010.4]
  wire [1:0] _T_1009; // @[Mux.scala 19:72:@1011.4]
  wire [1:0] _T_1011; // @[Mux.scala 19:72:@1012.4]
  wire [1:0] _T_1013; // @[Mux.scala 19:72:@1013.4]
  wire [1:0] _T_1015; // @[Mux.scala 19:72:@1014.4]
  wire [1:0] _T_1017; // @[Mux.scala 19:72:@1015.4]
  wire [1:0] _T_1019; // @[Mux.scala 19:72:@1016.4]
  wire [1:0] _T_1021; // @[Mux.scala 19:72:@1017.4]
  wire [1:0] _T_1023; // @[Mux.scala 19:72:@1018.4]
  wire [1:0] _T_1025; // @[Mux.scala 19:72:@1019.4]
  wire [1:0] _T_1027; // @[Mux.scala 19:72:@1020.4]
  wire [1:0] _T_1029; // @[Mux.scala 19:72:@1021.4]
  wire [1:0] _T_1031; // @[Mux.scala 19:72:@1022.4]
  wire [1:0] _T_1033; // @[Mux.scala 19:72:@1023.4]
  wire [1:0] _T_1035; // @[Mux.scala 19:72:@1024.4]
  wire [1:0] _T_1037; // @[Mux.scala 19:72:@1025.4]
  wire [1:0] _T_1038; // @[Mux.scala 19:72:@1026.4]
  wire [1:0] _T_1039; // @[Mux.scala 19:72:@1027.4]
  wire [1:0] _T_1040; // @[Mux.scala 19:72:@1028.4]
  wire [1:0] _T_1041; // @[Mux.scala 19:72:@1029.4]
  wire [1:0] _T_1042; // @[Mux.scala 19:72:@1030.4]
  wire [1:0] _T_1043; // @[Mux.scala 19:72:@1031.4]
  wire [1:0] _T_1044; // @[Mux.scala 19:72:@1032.4]
  wire [1:0] _T_1045; // @[Mux.scala 19:72:@1033.4]
  wire [1:0] _T_1046; // @[Mux.scala 19:72:@1034.4]
  wire [1:0] _T_1047; // @[Mux.scala 19:72:@1035.4]
  wire [1:0] _T_1048; // @[Mux.scala 19:72:@1036.4]
  wire [1:0] _T_1049; // @[Mux.scala 19:72:@1037.4]
  wire [1:0] _T_1050; // @[Mux.scala 19:72:@1038.4]
  wire [1:0] _T_1051; // @[Mux.scala 19:72:@1039.4]
  wire [1:0] _T_1052; // @[Mux.scala 19:72:@1040.4]
  wire [1:0] _T_1053; // @[Mux.scala 19:72:@1041.4]
  wire [1:0] _T_1054; // @[Mux.scala 19:72:@1042.4]
  wire [1:0] _T_1055; // @[Mux.scala 19:72:@1043.4]
  wire [1:0] _T_1056; // @[Mux.scala 19:72:@1044.4]
  wire [1:0] _T_1057; // @[Mux.scala 19:72:@1045.4]
  wire [1:0] _T_1058; // @[Mux.scala 19:72:@1046.4]
  wire [1:0] _T_1059; // @[Mux.scala 19:72:@1047.4]
  wire [1:0] _T_1060; // @[Mux.scala 19:72:@1048.4]
  wire [1:0] _T_1061; // @[Mux.scala 19:72:@1049.4]
  wire [1:0] _T_1062; // @[Mux.scala 19:72:@1050.4]
  wire [1:0] _T_1063; // @[Mux.scala 19:72:@1051.4]
  wire [1:0] _T_1064; // @[Mux.scala 19:72:@1052.4]
  wire [1:0] _T_1065; // @[Mux.scala 19:72:@1053.4]
  wire [1:0] _T_1066; // @[Mux.scala 19:72:@1054.4]
  wire [1:0] _T_1067; // @[Mux.scala 19:72:@1055.4]
  wire [1:0] _T_1068; // @[Mux.scala 19:72:@1056.4]
  wire [1:0] _T_1069; // @[Mux.scala 19:72:@1057.4]
  wire [1:0] _T_1070; // @[Mux.scala 19:72:@1058.4]
  wire [1:0] _T_1071; // @[Mux.scala 19:72:@1059.4]
  wire [1:0] _T_1072; // @[Mux.scala 19:72:@1060.4]
  wire [1:0] _T_1073; // @[Mux.scala 19:72:@1061.4]
  wire [1:0] _T_1074; // @[Mux.scala 19:72:@1062.4]
  wire [1:0] _T_1075; // @[Mux.scala 19:72:@1063.4]
  wire [1:0] _T_1076; // @[Mux.scala 19:72:@1064.4]
  wire [1:0] _T_1077; // @[Mux.scala 19:72:@1065.4]
  wire [1:0] _T_1078; // @[Mux.scala 19:72:@1066.4]
  wire [1:0] _T_1079; // @[Mux.scala 19:72:@1067.4]
  wire [1:0] _T_1080; // @[Mux.scala 19:72:@1068.4]
  wire [1:0] _T_1081; // @[Mux.scala 19:72:@1069.4]
  wire [1:0] _T_1082; // @[Mux.scala 19:72:@1070.4]
  wire [1:0] _T_1083; // @[Mux.scala 19:72:@1071.4]
  wire [1:0] _T_1084; // @[Mux.scala 19:72:@1072.4]
  wire [1:0] _T_1085; // @[Mux.scala 19:72:@1073.4]
  wire [1:0] _T_1086; // @[Mux.scala 19:72:@1074.4]
  wire [1:0] _T_1087; // @[Mux.scala 19:72:@1075.4]
  wire [1:0] _T_1088; // @[Mux.scala 19:72:@1076.4]
  wire [1:0] _T_1089; // @[Mux.scala 19:72:@1077.4]
  wire [1:0] _T_1090; // @[Mux.scala 19:72:@1078.4]
  wire [1:0] _T_1091; // @[Mux.scala 19:72:@1079.4]
  wire [1:0] _T_1092; // @[Mux.scala 19:72:@1080.4]
  wire [1:0] _T_1093; // @[Mux.scala 19:72:@1081.4]
  wire [1:0] _T_1094; // @[Mux.scala 19:72:@1082.4]
  wire [1:0] _T_1095; // @[Mux.scala 19:72:@1083.4]
  wire [1:0] _T_1096; // @[Mux.scala 19:72:@1084.4]
  wire [1:0] _T_1097; // @[Mux.scala 19:72:@1085.4]
  wire [1:0] _T_1098; // @[Mux.scala 19:72:@1086.4]
  wire [1:0] _T_1099; // @[Mux.scala 19:72:@1087.4]
  wire [1:0] predict_btype; // @[Mux.scala 19:72:@1088.4]
  wire [1:0] _T_1169; // @[Mux.scala 19:72:@1156.4]
  wire [1:0] _T_1171; // @[Mux.scala 19:72:@1157.4]
  wire [1:0] _T_1173; // @[Mux.scala 19:72:@1158.4]
  wire [1:0] _T_1175; // @[Mux.scala 19:72:@1159.4]
  wire [1:0] _T_1177; // @[Mux.scala 19:72:@1160.4]
  wire [1:0] _T_1179; // @[Mux.scala 19:72:@1161.4]
  wire [1:0] _T_1181; // @[Mux.scala 19:72:@1162.4]
  wire [1:0] _T_1183; // @[Mux.scala 19:72:@1163.4]
  wire [1:0] _T_1185; // @[Mux.scala 19:72:@1164.4]
  wire [1:0] _T_1187; // @[Mux.scala 19:72:@1165.4]
  wire [1:0] _T_1189; // @[Mux.scala 19:72:@1166.4]
  wire [1:0] _T_1191; // @[Mux.scala 19:72:@1167.4]
  wire [1:0] _T_1193; // @[Mux.scala 19:72:@1168.4]
  wire [1:0] _T_1195; // @[Mux.scala 19:72:@1169.4]
  wire [1:0] _T_1197; // @[Mux.scala 19:72:@1170.4]
  wire [1:0] _T_1199; // @[Mux.scala 19:72:@1171.4]
  wire [1:0] _T_1201; // @[Mux.scala 19:72:@1172.4]
  wire [1:0] _T_1203; // @[Mux.scala 19:72:@1173.4]
  wire [1:0] _T_1205; // @[Mux.scala 19:72:@1174.4]
  wire [1:0] _T_1207; // @[Mux.scala 19:72:@1175.4]
  wire [1:0] _T_1209; // @[Mux.scala 19:72:@1176.4]
  wire [1:0] _T_1211; // @[Mux.scala 19:72:@1177.4]
  wire [1:0] _T_1213; // @[Mux.scala 19:72:@1178.4]
  wire [1:0] _T_1215; // @[Mux.scala 19:72:@1179.4]
  wire [1:0] _T_1217; // @[Mux.scala 19:72:@1180.4]
  wire [1:0] _T_1219; // @[Mux.scala 19:72:@1181.4]
  wire [1:0] _T_1221; // @[Mux.scala 19:72:@1182.4]
  wire [1:0] _T_1223; // @[Mux.scala 19:72:@1183.4]
  wire [1:0] _T_1225; // @[Mux.scala 19:72:@1184.4]
  wire [1:0] _T_1227; // @[Mux.scala 19:72:@1185.4]
  wire [1:0] _T_1229; // @[Mux.scala 19:72:@1186.4]
  wire [1:0] _T_1231; // @[Mux.scala 19:72:@1187.4]
  wire [1:0] _T_1233; // @[Mux.scala 19:72:@1188.4]
  wire [1:0] _T_1235; // @[Mux.scala 19:72:@1189.4]
  wire [1:0] _T_1237; // @[Mux.scala 19:72:@1190.4]
  wire [1:0] _T_1239; // @[Mux.scala 19:72:@1191.4]
  wire [1:0] _T_1241; // @[Mux.scala 19:72:@1192.4]
  wire [1:0] _T_1243; // @[Mux.scala 19:72:@1193.4]
  wire [1:0] _T_1245; // @[Mux.scala 19:72:@1194.4]
  wire [1:0] _T_1247; // @[Mux.scala 19:72:@1195.4]
  wire [1:0] _T_1249; // @[Mux.scala 19:72:@1196.4]
  wire [1:0] _T_1251; // @[Mux.scala 19:72:@1197.4]
  wire [1:0] _T_1253; // @[Mux.scala 19:72:@1198.4]
  wire [1:0] _T_1255; // @[Mux.scala 19:72:@1199.4]
  wire [1:0] _T_1257; // @[Mux.scala 19:72:@1200.4]
  wire [1:0] _T_1259; // @[Mux.scala 19:72:@1201.4]
  wire [1:0] _T_1261; // @[Mux.scala 19:72:@1202.4]
  wire [1:0] _T_1263; // @[Mux.scala 19:72:@1203.4]
  wire [1:0] _T_1265; // @[Mux.scala 19:72:@1204.4]
  wire [1:0] _T_1267; // @[Mux.scala 19:72:@1205.4]
  wire [1:0] _T_1269; // @[Mux.scala 19:72:@1206.4]
  wire [1:0] _T_1271; // @[Mux.scala 19:72:@1207.4]
  wire [1:0] _T_1273; // @[Mux.scala 19:72:@1208.4]
  wire [1:0] _T_1275; // @[Mux.scala 19:72:@1209.4]
  wire [1:0] _T_1277; // @[Mux.scala 19:72:@1210.4]
  wire [1:0] _T_1279; // @[Mux.scala 19:72:@1211.4]
  wire [1:0] _T_1281; // @[Mux.scala 19:72:@1212.4]
  wire [1:0] _T_1283; // @[Mux.scala 19:72:@1213.4]
  wire [1:0] _T_1285; // @[Mux.scala 19:72:@1214.4]
  wire [1:0] _T_1287; // @[Mux.scala 19:72:@1215.4]
  wire [1:0] _T_1289; // @[Mux.scala 19:72:@1216.4]
  wire [1:0] _T_1291; // @[Mux.scala 19:72:@1217.4]
  wire [1:0] _T_1293; // @[Mux.scala 19:72:@1218.4]
  wire [1:0] _T_1295; // @[Mux.scala 19:72:@1219.4]
  wire [1:0] _T_1296; // @[Mux.scala 19:72:@1220.4]
  wire [1:0] _T_1297; // @[Mux.scala 19:72:@1221.4]
  wire [1:0] _T_1298; // @[Mux.scala 19:72:@1222.4]
  wire [1:0] _T_1299; // @[Mux.scala 19:72:@1223.4]
  wire [1:0] _T_1300; // @[Mux.scala 19:72:@1224.4]
  wire [1:0] _T_1301; // @[Mux.scala 19:72:@1225.4]
  wire [1:0] _T_1302; // @[Mux.scala 19:72:@1226.4]
  wire [1:0] _T_1303; // @[Mux.scala 19:72:@1227.4]
  wire [1:0] _T_1304; // @[Mux.scala 19:72:@1228.4]
  wire [1:0] _T_1305; // @[Mux.scala 19:72:@1229.4]
  wire [1:0] _T_1306; // @[Mux.scala 19:72:@1230.4]
  wire [1:0] _T_1307; // @[Mux.scala 19:72:@1231.4]
  wire [1:0] _T_1308; // @[Mux.scala 19:72:@1232.4]
  wire [1:0] _T_1309; // @[Mux.scala 19:72:@1233.4]
  wire [1:0] _T_1310; // @[Mux.scala 19:72:@1234.4]
  wire [1:0] _T_1311; // @[Mux.scala 19:72:@1235.4]
  wire [1:0] _T_1312; // @[Mux.scala 19:72:@1236.4]
  wire [1:0] _T_1313; // @[Mux.scala 19:72:@1237.4]
  wire [1:0] _T_1314; // @[Mux.scala 19:72:@1238.4]
  wire [1:0] _T_1315; // @[Mux.scala 19:72:@1239.4]
  wire [1:0] _T_1316; // @[Mux.scala 19:72:@1240.4]
  wire [1:0] _T_1317; // @[Mux.scala 19:72:@1241.4]
  wire [1:0] _T_1318; // @[Mux.scala 19:72:@1242.4]
  wire [1:0] _T_1319; // @[Mux.scala 19:72:@1243.4]
  wire [1:0] _T_1320; // @[Mux.scala 19:72:@1244.4]
  wire [1:0] _T_1321; // @[Mux.scala 19:72:@1245.4]
  wire [1:0] _T_1322; // @[Mux.scala 19:72:@1246.4]
  wire [1:0] _T_1323; // @[Mux.scala 19:72:@1247.4]
  wire [1:0] _T_1324; // @[Mux.scala 19:72:@1248.4]
  wire [1:0] _T_1325; // @[Mux.scala 19:72:@1249.4]
  wire [1:0] _T_1326; // @[Mux.scala 19:72:@1250.4]
  wire [1:0] _T_1327; // @[Mux.scala 19:72:@1251.4]
  wire [1:0] _T_1328; // @[Mux.scala 19:72:@1252.4]
  wire [1:0] _T_1329; // @[Mux.scala 19:72:@1253.4]
  wire [1:0] _T_1330; // @[Mux.scala 19:72:@1254.4]
  wire [1:0] _T_1331; // @[Mux.scala 19:72:@1255.4]
  wire [1:0] _T_1332; // @[Mux.scala 19:72:@1256.4]
  wire [1:0] _T_1333; // @[Mux.scala 19:72:@1257.4]
  wire [1:0] _T_1334; // @[Mux.scala 19:72:@1258.4]
  wire [1:0] _T_1335; // @[Mux.scala 19:72:@1259.4]
  wire [1:0] _T_1336; // @[Mux.scala 19:72:@1260.4]
  wire [1:0] _T_1337; // @[Mux.scala 19:72:@1261.4]
  wire [1:0] _T_1338; // @[Mux.scala 19:72:@1262.4]
  wire [1:0] _T_1339; // @[Mux.scala 19:72:@1263.4]
  wire [1:0] _T_1340; // @[Mux.scala 19:72:@1264.4]
  wire [1:0] _T_1341; // @[Mux.scala 19:72:@1265.4]
  wire [1:0] _T_1342; // @[Mux.scala 19:72:@1266.4]
  wire [1:0] _T_1343; // @[Mux.scala 19:72:@1267.4]
  wire [1:0] _T_1344; // @[Mux.scala 19:72:@1268.4]
  wire [1:0] _T_1345; // @[Mux.scala 19:72:@1269.4]
  wire [1:0] _T_1346; // @[Mux.scala 19:72:@1270.4]
  wire [1:0] _T_1347; // @[Mux.scala 19:72:@1271.4]
  wire [1:0] _T_1348; // @[Mux.scala 19:72:@1272.4]
  wire [1:0] _T_1349; // @[Mux.scala 19:72:@1273.4]
  wire [1:0] _T_1350; // @[Mux.scala 19:72:@1274.4]
  wire [1:0] _T_1351; // @[Mux.scala 19:72:@1275.4]
  wire [1:0] _T_1352; // @[Mux.scala 19:72:@1276.4]
  wire [1:0] _T_1353; // @[Mux.scala 19:72:@1277.4]
  wire [1:0] _T_1354; // @[Mux.scala 19:72:@1278.4]
  wire [1:0] _T_1355; // @[Mux.scala 19:72:@1279.4]
  wire [1:0] _T_1356; // @[Mux.scala 19:72:@1280.4]
  wire [1:0] _T_1357; // @[Mux.scala 19:72:@1281.4]
  wire [1:0] predict_hcount; // @[Mux.scala 19:72:@1282.4]
  wire  _T_1362; // @[BTB.scala 73:34:@1286.4]
  wire  _T_1363; // @[BTB.scala 73:65:@1287.4]
  wire  _T_1365; // @[BTB.scala 73:58:@1288.4]
  wire  _T_1366; // @[BTB.scala 73:55:@1289.4]
  wire  _T_1368; // @[BTB.scala 73:26:@1290.4]
  wire  _T_1370; // @[BTB.scala 83:39:@1292.4]
  wire  _T_1380; // @[BTB.scala 74:47:@1298.4]
  wire  _T_1381; // @[BTB.scala 74:37:@1299.4]
  wire [31:0] _T_1382; // @[BTB.scala 74:27:@1300.4]
  reg  fb_reg_valid; // @[BTB.scala 85:23:@1310.4]
  reg [31:0] _RAND_256;
  reg  fb_reg_redirect; // @[BTB.scala 85:23:@1310.4]
  reg [31:0] _RAND_257;
  reg [5:0] fb_reg_lfsr; // @[BTB.scala 85:23:@1310.4]
  reg [31:0] _RAND_258;
  reg [31:0] fb_reg_pc; // @[BTB.scala 85:23:@1310.4]
  reg [31:0] _RAND_259;
  reg [31:0] fb_reg_target; // @[BTB.scala 85:23:@1310.4]
  reg [31:0] _RAND_260;
  reg [1:0] fb_reg_btype; // @[BTB.scala 85:23:@1310.4]
  reg [31:0] _RAND_261;
  wire  _T_1390; // @[BTB.scala 97:36:@1316.4]
  wire  _T_1391; // @[BTB.scala 97:46:@1317.4]
  wire  _T_1392; // @[BTB.scala 97:40:@1318.4]
  wire [4:0] _T_1393; // @[BTB.scala 97:55:@1319.4]
  wire [5:0] _T_1394; // @[Cat.scala 30:58:@1320.4]
  wire  _T_1396; // @[BTB.scala 121:42:@1323.4]
  wire  _T_1397; // @[BTB.scala 121:42:@1324.4]
  wire  _T_1398; // @[BTB.scala 121:42:@1325.4]
  wire  _T_1399; // @[BTB.scala 121:42:@1326.4]
  wire  _T_1400; // @[BTB.scala 121:42:@1327.4]
  wire  _T_1401; // @[BTB.scala 121:42:@1328.4]
  wire  _T_1402; // @[BTB.scala 121:42:@1329.4]
  wire  _T_1403; // @[BTB.scala 121:42:@1330.4]
  wire  _T_1404; // @[BTB.scala 121:42:@1331.4]
  wire  _T_1405; // @[BTB.scala 121:42:@1332.4]
  wire  _T_1406; // @[BTB.scala 121:42:@1333.4]
  wire  _T_1407; // @[BTB.scala 121:42:@1334.4]
  wire  _T_1408; // @[BTB.scala 121:42:@1335.4]
  wire  _T_1409; // @[BTB.scala 121:42:@1336.4]
  wire  _T_1410; // @[BTB.scala 121:42:@1337.4]
  wire  _T_1411; // @[BTB.scala 121:42:@1338.4]
  wire  _T_1412; // @[BTB.scala 121:42:@1339.4]
  wire  _T_1413; // @[BTB.scala 121:42:@1340.4]
  wire  _T_1414; // @[BTB.scala 121:42:@1341.4]
  wire  _T_1415; // @[BTB.scala 121:42:@1342.4]
  wire  _T_1416; // @[BTB.scala 121:42:@1343.4]
  wire  _T_1417; // @[BTB.scala 121:42:@1344.4]
  wire  _T_1418; // @[BTB.scala 121:42:@1345.4]
  wire  _T_1419; // @[BTB.scala 121:42:@1346.4]
  wire  _T_1420; // @[BTB.scala 121:42:@1347.4]
  wire  _T_1421; // @[BTB.scala 121:42:@1348.4]
  wire  _T_1422; // @[BTB.scala 121:42:@1349.4]
  wire  _T_1423; // @[BTB.scala 121:42:@1350.4]
  wire  _T_1424; // @[BTB.scala 121:42:@1351.4]
  wire  _T_1425; // @[BTB.scala 121:42:@1352.4]
  wire  _T_1426; // @[BTB.scala 121:42:@1353.4]
  wire  _T_1427; // @[BTB.scala 121:42:@1354.4]
  wire  _T_1428; // @[BTB.scala 121:42:@1355.4]
  wire  _T_1429; // @[BTB.scala 121:42:@1356.4]
  wire  _T_1430; // @[BTB.scala 121:42:@1357.4]
  wire  _T_1431; // @[BTB.scala 121:42:@1358.4]
  wire  _T_1432; // @[BTB.scala 121:42:@1359.4]
  wire  _T_1433; // @[BTB.scala 121:42:@1360.4]
  wire  _T_1434; // @[BTB.scala 121:42:@1361.4]
  wire  _T_1435; // @[BTB.scala 121:42:@1362.4]
  wire  _T_1436; // @[BTB.scala 121:42:@1363.4]
  wire  _T_1437; // @[BTB.scala 121:42:@1364.4]
  wire  _T_1438; // @[BTB.scala 121:42:@1365.4]
  wire  _T_1439; // @[BTB.scala 121:42:@1366.4]
  wire  _T_1440; // @[BTB.scala 121:42:@1367.4]
  wire  _T_1441; // @[BTB.scala 121:42:@1368.4]
  wire  _T_1442; // @[BTB.scala 121:42:@1369.4]
  wire  _T_1443; // @[BTB.scala 121:42:@1370.4]
  wire  _T_1444; // @[BTB.scala 121:42:@1371.4]
  wire  _T_1445; // @[BTB.scala 121:42:@1372.4]
  wire  _T_1446; // @[BTB.scala 121:42:@1373.4]
  wire  _T_1447; // @[BTB.scala 121:42:@1374.4]
  wire  _T_1448; // @[BTB.scala 121:42:@1375.4]
  wire  _T_1449; // @[BTB.scala 121:42:@1376.4]
  wire  _T_1450; // @[BTB.scala 121:42:@1377.4]
  wire  _T_1451; // @[BTB.scala 121:42:@1378.4]
  wire  _T_1452; // @[BTB.scala 121:42:@1379.4]
  wire  _T_1453; // @[BTB.scala 121:42:@1380.4]
  wire  _T_1454; // @[BTB.scala 121:42:@1381.4]
  wire  _T_1455; // @[BTB.scala 121:42:@1382.4]
  wire  _T_1456; // @[BTB.scala 121:42:@1383.4]
  wire  _T_1457; // @[BTB.scala 121:42:@1384.4]
  wire  _T_1458; // @[BTB.scala 121:42:@1385.4]
  wire  _T_1459; // @[BTB.scala 121:42:@1386.4]
  wire [7:0] _T_1536; // @[BTB.scala 121:58:@1458.4]
  wire [15:0] _T_1544; // @[BTB.scala 121:58:@1466.4]
  wire [7:0] _T_1551; // @[BTB.scala 121:58:@1473.4]
  wire [31:0] _T_1560; // @[BTB.scala 121:58:@1482.4]
  wire [7:0] _T_1567; // @[BTB.scala 121:58:@1489.4]
  wire [15:0] _T_1575; // @[BTB.scala 121:58:@1497.4]
  wire [7:0] _T_1582; // @[BTB.scala 121:58:@1504.4]
  wire [31:0] _T_1591; // @[BTB.scala 121:58:@1513.4]
  wire [63:0] _T_1592; // @[BTB.scala 121:58:@1514.4]
  wire [63:0] fb_wire_lookup; // @[BTB.scala 121:65:@1707.4]
  wire  _T_1855; // @[Mux.scala 21:36:@1709.4]
  wire  _T_1856; // @[Mux.scala 21:36:@1710.4]
  wire  _T_1857; // @[Mux.scala 21:36:@1711.4]
  wire  _T_1858; // @[Mux.scala 21:36:@1712.4]
  wire  _T_1859; // @[Mux.scala 21:36:@1713.4]
  wire  _T_1860; // @[Mux.scala 21:36:@1714.4]
  wire  _T_1861; // @[Mux.scala 21:36:@1715.4]
  wire  _T_1862; // @[Mux.scala 21:36:@1716.4]
  wire  _T_1863; // @[Mux.scala 21:36:@1717.4]
  wire  _T_1864; // @[Mux.scala 21:36:@1718.4]
  wire  _T_1865; // @[Mux.scala 21:36:@1719.4]
  wire  _T_1866; // @[Mux.scala 21:36:@1720.4]
  wire  _T_1867; // @[Mux.scala 21:36:@1721.4]
  wire  _T_1868; // @[Mux.scala 21:36:@1722.4]
  wire  _T_1869; // @[Mux.scala 21:36:@1723.4]
  wire  _T_1870; // @[Mux.scala 21:36:@1724.4]
  wire  _T_1871; // @[Mux.scala 21:36:@1725.4]
  wire  _T_1872; // @[Mux.scala 21:36:@1726.4]
  wire  _T_1873; // @[Mux.scala 21:36:@1727.4]
  wire  _T_1874; // @[Mux.scala 21:36:@1728.4]
  wire  _T_1875; // @[Mux.scala 21:36:@1729.4]
  wire  _T_1876; // @[Mux.scala 21:36:@1730.4]
  wire  _T_1877; // @[Mux.scala 21:36:@1731.4]
  wire  _T_1878; // @[Mux.scala 21:36:@1732.4]
  wire  _T_1879; // @[Mux.scala 21:36:@1733.4]
  wire  _T_1880; // @[Mux.scala 21:36:@1734.4]
  wire  _T_1881; // @[Mux.scala 21:36:@1735.4]
  wire  _T_1882; // @[Mux.scala 21:36:@1736.4]
  wire  _T_1883; // @[Mux.scala 21:36:@1737.4]
  wire  _T_1884; // @[Mux.scala 21:36:@1738.4]
  wire  _T_1885; // @[Mux.scala 21:36:@1739.4]
  wire  _T_1886; // @[Mux.scala 21:36:@1740.4]
  wire  _T_1887; // @[Mux.scala 21:36:@1741.4]
  wire  _T_1888; // @[Mux.scala 21:36:@1742.4]
  wire  _T_1889; // @[Mux.scala 21:36:@1743.4]
  wire  _T_1890; // @[Mux.scala 21:36:@1744.4]
  wire  _T_1891; // @[Mux.scala 21:36:@1745.4]
  wire  _T_1892; // @[Mux.scala 21:36:@1746.4]
  wire  _T_1893; // @[Mux.scala 21:36:@1747.4]
  wire  _T_1894; // @[Mux.scala 21:36:@1748.4]
  wire  _T_1895; // @[Mux.scala 21:36:@1749.4]
  wire  _T_1896; // @[Mux.scala 21:36:@1750.4]
  wire  _T_1897; // @[Mux.scala 21:36:@1751.4]
  wire  _T_1898; // @[Mux.scala 21:36:@1752.4]
  wire  _T_1899; // @[Mux.scala 21:36:@1753.4]
  wire  _T_1900; // @[Mux.scala 21:36:@1754.4]
  wire  _T_1901; // @[Mux.scala 21:36:@1755.4]
  wire  _T_1902; // @[Mux.scala 21:36:@1756.4]
  wire  _T_1903; // @[Mux.scala 21:36:@1757.4]
  wire  _T_1904; // @[Mux.scala 21:36:@1758.4]
  wire  _T_1905; // @[Mux.scala 21:36:@1759.4]
  wire  _T_1906; // @[Mux.scala 21:36:@1760.4]
  wire  _T_1907; // @[Mux.scala 21:36:@1761.4]
  wire  _T_1908; // @[Mux.scala 21:36:@1762.4]
  wire  _T_1909; // @[Mux.scala 21:36:@1763.4]
  wire  _T_1910; // @[Mux.scala 21:36:@1764.4]
  wire  _T_1911; // @[Mux.scala 21:36:@1765.4]
  wire  _T_1912; // @[Mux.scala 21:36:@1766.4]
  wire  _T_1913; // @[Mux.scala 21:36:@1767.4]
  wire  _T_1914; // @[Mux.scala 21:36:@1768.4]
  wire  _T_1915; // @[Mux.scala 21:36:@1769.4]
  wire  _T_1916; // @[Mux.scala 21:36:@1770.4]
  wire  _T_1917; // @[Mux.scala 21:36:@1771.4]
  wire  _T_1918; // @[Mux.scala 21:36:@1772.4]
  wire [1:0] _T_1921; // @[Mux.scala 19:72:@1773.4]
  wire [1:0] _T_1923; // @[Mux.scala 19:72:@1774.4]
  wire [1:0] _T_1925; // @[Mux.scala 19:72:@1775.4]
  wire [1:0] _T_1927; // @[Mux.scala 19:72:@1776.4]
  wire [1:0] _T_1929; // @[Mux.scala 19:72:@1777.4]
  wire [1:0] _T_1931; // @[Mux.scala 19:72:@1778.4]
  wire [1:0] _T_1933; // @[Mux.scala 19:72:@1779.4]
  wire [1:0] _T_1935; // @[Mux.scala 19:72:@1780.4]
  wire [1:0] _T_1937; // @[Mux.scala 19:72:@1781.4]
  wire [1:0] _T_1939; // @[Mux.scala 19:72:@1782.4]
  wire [1:0] _T_1941; // @[Mux.scala 19:72:@1783.4]
  wire [1:0] _T_1943; // @[Mux.scala 19:72:@1784.4]
  wire [1:0] _T_1945; // @[Mux.scala 19:72:@1785.4]
  wire [1:0] _T_1947; // @[Mux.scala 19:72:@1786.4]
  wire [1:0] _T_1949; // @[Mux.scala 19:72:@1787.4]
  wire [1:0] _T_1951; // @[Mux.scala 19:72:@1788.4]
  wire [1:0] _T_1953; // @[Mux.scala 19:72:@1789.4]
  wire [1:0] _T_1955; // @[Mux.scala 19:72:@1790.4]
  wire [1:0] _T_1957; // @[Mux.scala 19:72:@1791.4]
  wire [1:0] _T_1959; // @[Mux.scala 19:72:@1792.4]
  wire [1:0] _T_1961; // @[Mux.scala 19:72:@1793.4]
  wire [1:0] _T_1963; // @[Mux.scala 19:72:@1794.4]
  wire [1:0] _T_1965; // @[Mux.scala 19:72:@1795.4]
  wire [1:0] _T_1967; // @[Mux.scala 19:72:@1796.4]
  wire [1:0] _T_1969; // @[Mux.scala 19:72:@1797.4]
  wire [1:0] _T_1971; // @[Mux.scala 19:72:@1798.4]
  wire [1:0] _T_1973; // @[Mux.scala 19:72:@1799.4]
  wire [1:0] _T_1975; // @[Mux.scala 19:72:@1800.4]
  wire [1:0] _T_1977; // @[Mux.scala 19:72:@1801.4]
  wire [1:0] _T_1979; // @[Mux.scala 19:72:@1802.4]
  wire [1:0] _T_1981; // @[Mux.scala 19:72:@1803.4]
  wire [1:0] _T_1983; // @[Mux.scala 19:72:@1804.4]
  wire [1:0] _T_1985; // @[Mux.scala 19:72:@1805.4]
  wire [1:0] _T_1987; // @[Mux.scala 19:72:@1806.4]
  wire [1:0] _T_1989; // @[Mux.scala 19:72:@1807.4]
  wire [1:0] _T_1991; // @[Mux.scala 19:72:@1808.4]
  wire [1:0] _T_1993; // @[Mux.scala 19:72:@1809.4]
  wire [1:0] _T_1995; // @[Mux.scala 19:72:@1810.4]
  wire [1:0] _T_1997; // @[Mux.scala 19:72:@1811.4]
  wire [1:0] _T_1999; // @[Mux.scala 19:72:@1812.4]
  wire [1:0] _T_2001; // @[Mux.scala 19:72:@1813.4]
  wire [1:0] _T_2003; // @[Mux.scala 19:72:@1814.4]
  wire [1:0] _T_2005; // @[Mux.scala 19:72:@1815.4]
  wire [1:0] _T_2007; // @[Mux.scala 19:72:@1816.4]
  wire [1:0] _T_2009; // @[Mux.scala 19:72:@1817.4]
  wire [1:0] _T_2011; // @[Mux.scala 19:72:@1818.4]
  wire [1:0] _T_2013; // @[Mux.scala 19:72:@1819.4]
  wire [1:0] _T_2015; // @[Mux.scala 19:72:@1820.4]
  wire [1:0] _T_2017; // @[Mux.scala 19:72:@1821.4]
  wire [1:0] _T_2019; // @[Mux.scala 19:72:@1822.4]
  wire [1:0] _T_2021; // @[Mux.scala 19:72:@1823.4]
  wire [1:0] _T_2023; // @[Mux.scala 19:72:@1824.4]
  wire [1:0] _T_2025; // @[Mux.scala 19:72:@1825.4]
  wire [1:0] _T_2027; // @[Mux.scala 19:72:@1826.4]
  wire [1:0] _T_2029; // @[Mux.scala 19:72:@1827.4]
  wire [1:0] _T_2031; // @[Mux.scala 19:72:@1828.4]
  wire [1:0] _T_2033; // @[Mux.scala 19:72:@1829.4]
  wire [1:0] _T_2035; // @[Mux.scala 19:72:@1830.4]
  wire [1:0] _T_2037; // @[Mux.scala 19:72:@1831.4]
  wire [1:0] _T_2039; // @[Mux.scala 19:72:@1832.4]
  wire [1:0] _T_2041; // @[Mux.scala 19:72:@1833.4]
  wire [1:0] _T_2043; // @[Mux.scala 19:72:@1834.4]
  wire [1:0] _T_2045; // @[Mux.scala 19:72:@1835.4]
  wire [1:0] _T_2047; // @[Mux.scala 19:72:@1836.4]
  wire [1:0] _T_2048; // @[Mux.scala 19:72:@1837.4]
  wire [1:0] _T_2049; // @[Mux.scala 19:72:@1838.4]
  wire [1:0] _T_2050; // @[Mux.scala 19:72:@1839.4]
  wire [1:0] _T_2051; // @[Mux.scala 19:72:@1840.4]
  wire [1:0] _T_2052; // @[Mux.scala 19:72:@1841.4]
  wire [1:0] _T_2053; // @[Mux.scala 19:72:@1842.4]
  wire [1:0] _T_2054; // @[Mux.scala 19:72:@1843.4]
  wire [1:0] _T_2055; // @[Mux.scala 19:72:@1844.4]
  wire [1:0] _T_2056; // @[Mux.scala 19:72:@1845.4]
  wire [1:0] _T_2057; // @[Mux.scala 19:72:@1846.4]
  wire [1:0] _T_2058; // @[Mux.scala 19:72:@1847.4]
  wire [1:0] _T_2059; // @[Mux.scala 19:72:@1848.4]
  wire [1:0] _T_2060; // @[Mux.scala 19:72:@1849.4]
  wire [1:0] _T_2061; // @[Mux.scala 19:72:@1850.4]
  wire [1:0] _T_2062; // @[Mux.scala 19:72:@1851.4]
  wire [1:0] _T_2063; // @[Mux.scala 19:72:@1852.4]
  wire [1:0] _T_2064; // @[Mux.scala 19:72:@1853.4]
  wire [1:0] _T_2065; // @[Mux.scala 19:72:@1854.4]
  wire [1:0] _T_2066; // @[Mux.scala 19:72:@1855.4]
  wire [1:0] _T_2067; // @[Mux.scala 19:72:@1856.4]
  wire [1:0] _T_2068; // @[Mux.scala 19:72:@1857.4]
  wire [1:0] _T_2069; // @[Mux.scala 19:72:@1858.4]
  wire [1:0] _T_2070; // @[Mux.scala 19:72:@1859.4]
  wire [1:0] _T_2071; // @[Mux.scala 19:72:@1860.4]
  wire [1:0] _T_2072; // @[Mux.scala 19:72:@1861.4]
  wire [1:0] _T_2073; // @[Mux.scala 19:72:@1862.4]
  wire [1:0] _T_2074; // @[Mux.scala 19:72:@1863.4]
  wire [1:0] _T_2075; // @[Mux.scala 19:72:@1864.4]
  wire [1:0] _T_2076; // @[Mux.scala 19:72:@1865.4]
  wire [1:0] _T_2077; // @[Mux.scala 19:72:@1866.4]
  wire [1:0] _T_2078; // @[Mux.scala 19:72:@1867.4]
  wire [1:0] _T_2079; // @[Mux.scala 19:72:@1868.4]
  wire [1:0] _T_2080; // @[Mux.scala 19:72:@1869.4]
  wire [1:0] _T_2081; // @[Mux.scala 19:72:@1870.4]
  wire [1:0] _T_2082; // @[Mux.scala 19:72:@1871.4]
  wire [1:0] _T_2083; // @[Mux.scala 19:72:@1872.4]
  wire [1:0] _T_2084; // @[Mux.scala 19:72:@1873.4]
  wire [1:0] _T_2085; // @[Mux.scala 19:72:@1874.4]
  wire [1:0] _T_2086; // @[Mux.scala 19:72:@1875.4]
  wire [1:0] _T_2087; // @[Mux.scala 19:72:@1876.4]
  wire [1:0] _T_2088; // @[Mux.scala 19:72:@1877.4]
  wire [1:0] _T_2089; // @[Mux.scala 19:72:@1878.4]
  wire [1:0] _T_2090; // @[Mux.scala 19:72:@1879.4]
  wire [1:0] _T_2091; // @[Mux.scala 19:72:@1880.4]
  wire [1:0] _T_2092; // @[Mux.scala 19:72:@1881.4]
  wire [1:0] _T_2093; // @[Mux.scala 19:72:@1882.4]
  wire [1:0] _T_2094; // @[Mux.scala 19:72:@1883.4]
  wire [1:0] _T_2095; // @[Mux.scala 19:72:@1884.4]
  wire [1:0] _T_2096; // @[Mux.scala 19:72:@1885.4]
  wire [1:0] _T_2097; // @[Mux.scala 19:72:@1886.4]
  wire [1:0] _T_2098; // @[Mux.scala 19:72:@1887.4]
  wire [1:0] _T_2099; // @[Mux.scala 19:72:@1888.4]
  wire [1:0] _T_2100; // @[Mux.scala 19:72:@1889.4]
  wire [1:0] _T_2101; // @[Mux.scala 19:72:@1890.4]
  wire [1:0] _T_2102; // @[Mux.scala 19:72:@1891.4]
  wire [1:0] _T_2103; // @[Mux.scala 19:72:@1892.4]
  wire [1:0] _T_2104; // @[Mux.scala 19:72:@1893.4]
  wire [1:0] _T_2105; // @[Mux.scala 19:72:@1894.4]
  wire [1:0] _T_2106; // @[Mux.scala 19:72:@1895.4]
  wire [1:0] _T_2107; // @[Mux.scala 19:72:@1896.4]
  wire [1:0] _T_2108; // @[Mux.scala 19:72:@1897.4]
  wire [1:0] _T_2109; // @[Mux.scala 19:72:@1898.4]
  wire [1:0] fb_wire_hcount; // @[Mux.scala 19:72:@1899.4]
  wire  _T_2114; // @[BTB.scala 119:30:@1903.4]
  wire [31:0] _T_2115; // @[OneHot.scala 26:18:@1904.4]
  wire [31:0] _T_2116; // @[OneHot.scala 27:18:@1905.4]
  wire  _T_2118; // @[OneHot.scala 28:14:@1906.4]
  wire [31:0] _T_2119; // @[OneHot.scala 28:28:@1907.4]
  wire [15:0] _T_2120; // @[OneHot.scala 26:18:@1908.4]
  wire [15:0] _T_2121; // @[OneHot.scala 27:18:@1909.4]
  wire  _T_2123; // @[OneHot.scala 28:14:@1910.4]
  wire [15:0] _T_2124; // @[OneHot.scala 28:28:@1911.4]
  wire [7:0] _T_2125; // @[OneHot.scala 26:18:@1912.4]
  wire [7:0] _T_2126; // @[OneHot.scala 27:18:@1913.4]
  wire  _T_2128; // @[OneHot.scala 28:14:@1914.4]
  wire [7:0] _T_2129; // @[OneHot.scala 28:28:@1915.4]
  wire [3:0] _T_2130; // @[OneHot.scala 26:18:@1916.4]
  wire [3:0] _T_2131; // @[OneHot.scala 27:18:@1917.4]
  wire  _T_2133; // @[OneHot.scala 28:14:@1918.4]
  wire [3:0] _T_2134; // @[OneHot.scala 28:28:@1919.4]
  wire [1:0] _T_2135; // @[OneHot.scala 26:18:@1920.4]
  wire [1:0] _T_2136; // @[OneHot.scala 27:18:@1921.4]
  wire  _T_2138; // @[OneHot.scala 28:14:@1922.4]
  wire [1:0] _T_2139; // @[OneHot.scala 28:28:@1923.4]
  wire  _T_2140; // @[CircuitMath.scala 30:8:@1924.4]
  wire [5:0] _T_2145; // @[Cat.scala 30:58:@1929.4]
  wire [63:0] _T_2407; // @[BTB.scala 125:19:@2122.4]
  wire  _T_2409; // @[BTB.scala 125:19:@2123.4]
  wire  _T_2672; // @[OneHot.scala 39:40:@2317.4]
  wire  _T_2673; // @[OneHot.scala 39:40:@2318.4]
  wire  _T_2674; // @[OneHot.scala 39:40:@2319.4]
  wire  _T_2675; // @[OneHot.scala 39:40:@2320.4]
  wire  _T_2676; // @[OneHot.scala 39:40:@2321.4]
  wire  _T_2677; // @[OneHot.scala 39:40:@2322.4]
  wire  _T_2678; // @[OneHot.scala 39:40:@2323.4]
  wire  _T_2679; // @[OneHot.scala 39:40:@2324.4]
  wire  _T_2680; // @[OneHot.scala 39:40:@2325.4]
  wire  _T_2681; // @[OneHot.scala 39:40:@2326.4]
  wire  _T_2682; // @[OneHot.scala 39:40:@2327.4]
  wire  _T_2683; // @[OneHot.scala 39:40:@2328.4]
  wire  _T_2684; // @[OneHot.scala 39:40:@2329.4]
  wire  _T_2685; // @[OneHot.scala 39:40:@2330.4]
  wire  _T_2686; // @[OneHot.scala 39:40:@2331.4]
  wire  _T_2687; // @[OneHot.scala 39:40:@2332.4]
  wire  _T_2688; // @[OneHot.scala 39:40:@2333.4]
  wire  _T_2689; // @[OneHot.scala 39:40:@2334.4]
  wire  _T_2690; // @[OneHot.scala 39:40:@2335.4]
  wire  _T_2691; // @[OneHot.scala 39:40:@2336.4]
  wire  _T_2692; // @[OneHot.scala 39:40:@2337.4]
  wire  _T_2693; // @[OneHot.scala 39:40:@2338.4]
  wire  _T_2694; // @[OneHot.scala 39:40:@2339.4]
  wire  _T_2695; // @[OneHot.scala 39:40:@2340.4]
  wire  _T_2696; // @[OneHot.scala 39:40:@2341.4]
  wire  _T_2697; // @[OneHot.scala 39:40:@2342.4]
  wire  _T_2698; // @[OneHot.scala 39:40:@2343.4]
  wire  _T_2699; // @[OneHot.scala 39:40:@2344.4]
  wire  _T_2700; // @[OneHot.scala 39:40:@2345.4]
  wire  _T_2701; // @[OneHot.scala 39:40:@2346.4]
  wire  _T_2702; // @[OneHot.scala 39:40:@2347.4]
  wire  _T_2703; // @[OneHot.scala 39:40:@2348.4]
  wire  _T_2704; // @[OneHot.scala 39:40:@2349.4]
  wire  _T_2705; // @[OneHot.scala 39:40:@2350.4]
  wire  _T_2706; // @[OneHot.scala 39:40:@2351.4]
  wire  _T_2707; // @[OneHot.scala 39:40:@2352.4]
  wire  _T_2708; // @[OneHot.scala 39:40:@2353.4]
  wire  _T_2709; // @[OneHot.scala 39:40:@2354.4]
  wire  _T_2710; // @[OneHot.scala 39:40:@2355.4]
  wire  _T_2711; // @[OneHot.scala 39:40:@2356.4]
  wire  _T_2712; // @[OneHot.scala 39:40:@2357.4]
  wire  _T_2713; // @[OneHot.scala 39:40:@2358.4]
  wire  _T_2714; // @[OneHot.scala 39:40:@2359.4]
  wire  _T_2715; // @[OneHot.scala 39:40:@2360.4]
  wire  _T_2716; // @[OneHot.scala 39:40:@2361.4]
  wire  _T_2717; // @[OneHot.scala 39:40:@2362.4]
  wire  _T_2718; // @[OneHot.scala 39:40:@2363.4]
  wire  _T_2719; // @[OneHot.scala 39:40:@2364.4]
  wire  _T_2720; // @[OneHot.scala 39:40:@2365.4]
  wire  _T_2721; // @[OneHot.scala 39:40:@2366.4]
  wire  _T_2722; // @[OneHot.scala 39:40:@2367.4]
  wire  _T_2723; // @[OneHot.scala 39:40:@2368.4]
  wire  _T_2724; // @[OneHot.scala 39:40:@2369.4]
  wire  _T_2725; // @[OneHot.scala 39:40:@2370.4]
  wire  _T_2726; // @[OneHot.scala 39:40:@2371.4]
  wire  _T_2727; // @[OneHot.scala 39:40:@2372.4]
  wire  _T_2728; // @[OneHot.scala 39:40:@2373.4]
  wire  _T_2729; // @[OneHot.scala 39:40:@2374.4]
  wire  _T_2730; // @[OneHot.scala 39:40:@2375.4]
  wire  _T_2731; // @[OneHot.scala 39:40:@2376.4]
  wire  _T_2732; // @[OneHot.scala 39:40:@2377.4]
  wire  _T_2733; // @[OneHot.scala 39:40:@2378.4]
  wire  _T_2734; // @[OneHot.scala 39:40:@2379.4]
  wire [5:0] _T_2800; // @[Mux.scala 31:69:@2381.4]
  wire [5:0] _T_2801; // @[Mux.scala 31:69:@2382.4]
  wire [5:0] _T_2802; // @[Mux.scala 31:69:@2383.4]
  wire [5:0] _T_2803; // @[Mux.scala 31:69:@2384.4]
  wire [5:0] _T_2804; // @[Mux.scala 31:69:@2385.4]
  wire [5:0] _T_2805; // @[Mux.scala 31:69:@2386.4]
  wire [5:0] _T_2806; // @[Mux.scala 31:69:@2387.4]
  wire [5:0] _T_2807; // @[Mux.scala 31:69:@2388.4]
  wire [5:0] _T_2808; // @[Mux.scala 31:69:@2389.4]
  wire [5:0] _T_2809; // @[Mux.scala 31:69:@2390.4]
  wire [5:0] _T_2810; // @[Mux.scala 31:69:@2391.4]
  wire [5:0] _T_2811; // @[Mux.scala 31:69:@2392.4]
  wire [5:0] _T_2812; // @[Mux.scala 31:69:@2393.4]
  wire [5:0] _T_2813; // @[Mux.scala 31:69:@2394.4]
  wire [5:0] _T_2814; // @[Mux.scala 31:69:@2395.4]
  wire [5:0] _T_2815; // @[Mux.scala 31:69:@2396.4]
  wire [5:0] _T_2816; // @[Mux.scala 31:69:@2397.4]
  wire [5:0] _T_2817; // @[Mux.scala 31:69:@2398.4]
  wire [5:0] _T_2818; // @[Mux.scala 31:69:@2399.4]
  wire [5:0] _T_2819; // @[Mux.scala 31:69:@2400.4]
  wire [5:0] _T_2820; // @[Mux.scala 31:69:@2401.4]
  wire [5:0] _T_2821; // @[Mux.scala 31:69:@2402.4]
  wire [5:0] _T_2822; // @[Mux.scala 31:69:@2403.4]
  wire [5:0] _T_2823; // @[Mux.scala 31:69:@2404.4]
  wire [5:0] _T_2824; // @[Mux.scala 31:69:@2405.4]
  wire [5:0] _T_2825; // @[Mux.scala 31:69:@2406.4]
  wire [5:0] _T_2826; // @[Mux.scala 31:69:@2407.4]
  wire [5:0] _T_2827; // @[Mux.scala 31:69:@2408.4]
  wire [5:0] _T_2828; // @[Mux.scala 31:69:@2409.4]
  wire [5:0] _T_2829; // @[Mux.scala 31:69:@2410.4]
  wire [5:0] _T_2830; // @[Mux.scala 31:69:@2411.4]
  wire [5:0] _T_2831; // @[Mux.scala 31:69:@2412.4]
  wire [5:0] _T_2832; // @[Mux.scala 31:69:@2413.4]
  wire [5:0] _T_2833; // @[Mux.scala 31:69:@2414.4]
  wire [5:0] _T_2834; // @[Mux.scala 31:69:@2415.4]
  wire [5:0] _T_2835; // @[Mux.scala 31:69:@2416.4]
  wire [5:0] _T_2836; // @[Mux.scala 31:69:@2417.4]
  wire [5:0] _T_2837; // @[Mux.scala 31:69:@2418.4]
  wire [5:0] _T_2838; // @[Mux.scala 31:69:@2419.4]
  wire [5:0] _T_2839; // @[Mux.scala 31:69:@2420.4]
  wire [5:0] _T_2840; // @[Mux.scala 31:69:@2421.4]
  wire [5:0] _T_2841; // @[Mux.scala 31:69:@2422.4]
  wire [5:0] _T_2842; // @[Mux.scala 31:69:@2423.4]
  wire [5:0] _T_2843; // @[Mux.scala 31:69:@2424.4]
  wire [5:0] _T_2844; // @[Mux.scala 31:69:@2425.4]
  wire [5:0] _T_2845; // @[Mux.scala 31:69:@2426.4]
  wire [5:0] _T_2846; // @[Mux.scala 31:69:@2427.4]
  wire [5:0] _T_2847; // @[Mux.scala 31:69:@2428.4]
  wire [5:0] _T_2848; // @[Mux.scala 31:69:@2429.4]
  wire [5:0] _T_2849; // @[Mux.scala 31:69:@2430.4]
  wire [5:0] _T_2850; // @[Mux.scala 31:69:@2431.4]
  wire [5:0] _T_2851; // @[Mux.scala 31:69:@2432.4]
  wire [5:0] _T_2852; // @[Mux.scala 31:69:@2433.4]
  wire [5:0] _T_2853; // @[Mux.scala 31:69:@2434.4]
  wire [5:0] _T_2854; // @[Mux.scala 31:69:@2435.4]
  wire [5:0] _T_2855; // @[Mux.scala 31:69:@2436.4]
  wire [5:0] _T_2856; // @[Mux.scala 31:69:@2437.4]
  wire [5:0] _T_2857; // @[Mux.scala 31:69:@2438.4]
  wire [5:0] _T_2858; // @[Mux.scala 31:69:@2439.4]
  wire [5:0] _T_2859; // @[Mux.scala 31:69:@2440.4]
  wire [5:0] _T_2860; // @[Mux.scala 31:69:@2441.4]
  wire [5:0] _T_2861; // @[Mux.scala 31:69:@2442.4]
  wire [5:0] _T_2862; // @[Mux.scala 31:69:@2443.4]
  wire [5:0] _T_2863; // @[BTB.scala 125:8:@2444.4]
  wire [5:0] fb_wire_bindex; // @[BTB.scala 124:8:@2445.4]
  wire [31:0] _GEN_0; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_1; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_2; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_3; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_4; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_5; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_6; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_7; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_8; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_9; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_10; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_11; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_12; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_13; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_14; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_15; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_16; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_17; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_18; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_19; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_20; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_21; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_22; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_23; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_24; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_25; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_26; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_27; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_28; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_29; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_30; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_31; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_32; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_33; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_34; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_35; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_36; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_37; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_38; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_39; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_40; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_41; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_42; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_43; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_44; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_45; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_46; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_47; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_48; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_49; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_50; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_51; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_52; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_53; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_54; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_55; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_56; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_57; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_58; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_59; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_60; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_61; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_62; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_63; // @[BTB.scala 131:34:@2449.8]
  wire [31:0] _GEN_64; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_65; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_66; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_67; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_68; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_69; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_70; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_71; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_72; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_73; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_74; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_75; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_76; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_77; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_78; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_79; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_80; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_81; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_82; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_83; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_84; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_85; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_86; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_87; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_88; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_89; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_90; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_91; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_92; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_93; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_94; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_95; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_96; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_97; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_98; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_99; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_100; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_101; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_102; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_103; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_104; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_105; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_106; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_107; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_108; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_109; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_110; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_111; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_112; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_113; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_114; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_115; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_116; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_117; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_118; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_119; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_120; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_121; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_122; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_123; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_124; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_125; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_126; // @[BTB.scala 132:34:@2450.8]
  wire [31:0] _GEN_127; // @[BTB.scala 132:34:@2450.8]
  wire [1:0] _GEN_128; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_129; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_130; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_131; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_132; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_133; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_134; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_135; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_136; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_137; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_138; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_139; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_140; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_141; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_142; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_143; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_144; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_145; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_146; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_147; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_148; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_149; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_150; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_151; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_152; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_153; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_154; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_155; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_156; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_157; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_158; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_159; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_160; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_161; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_162; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_163; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_164; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_165; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_166; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_167; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_168; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_169; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_170; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_171; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_172; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_173; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_174; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_175; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_176; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_177; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_178; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_179; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_180; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_181; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_182; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_183; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_184; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_185; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_186; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_187; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_188; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_189; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_190; // @[BTB.scala 133:34:@2451.8]
  wire [1:0] _GEN_191; // @[BTB.scala 133:34:@2451.8]
  wire [31:0] _GEN_192; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_193; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_194; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_195; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_196; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_197; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_198; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_199; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_200; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_201; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_202; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_203; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_204; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_205; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_206; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_207; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_208; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_209; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_210; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_211; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_212; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_213; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_214; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_215; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_216; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_217; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_218; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_219; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_220; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_221; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_222; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_223; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_224; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_225; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_226; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_227; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_228; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_229; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_230; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_231; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_232; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_233; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_234; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_235; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_236; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_237; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_238; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_239; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_240; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_241; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_242; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_243; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_244; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_245; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_246; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_247; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_248; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_249; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_250; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_251; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_252; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_253; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_254; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_255; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_256; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_257; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_258; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_259; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_260; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_261; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_262; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_263; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_264; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_265; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_266; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_267; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_268; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_269; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_270; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_271; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_272; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_273; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_274; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_275; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_276; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_277; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_278; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_279; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_280; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_281; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_282; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_283; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_284; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_285; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_286; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_287; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_288; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_289; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_290; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_291; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_292; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_293; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_294; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_295; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_296; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_297; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_298; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_299; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_300; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_301; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_302; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_303; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_304; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_305; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_306; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_307; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_308; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_309; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_310; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_311; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_312; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_313; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_314; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_315; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_316; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_317; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_318; // @[BTB.scala 130:28:@2448.6]
  wire [31:0] _GEN_319; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_320; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_321; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_322; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_323; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_324; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_325; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_326; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_327; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_328; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_329; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_330; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_331; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_332; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_333; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_334; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_335; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_336; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_337; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_338; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_339; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_340; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_341; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_342; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_343; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_344; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_345; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_346; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_347; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_348; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_349; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_350; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_351; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_352; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_353; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_354; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_355; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_356; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_357; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_358; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_359; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_360; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_361; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_362; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_363; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_364; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_365; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_366; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_367; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_368; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_369; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_370; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_371; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_372; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_373; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_374; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_375; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_376; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_377; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_378; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_379; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_380; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_381; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_382; // @[BTB.scala 130:28:@2448.6]
  wire [1:0] _GEN_383; // @[BTB.scala 130:28:@2448.6]
  wire  _T_2866; // @[BTB.scala 135:24:@2453.6]
  wire  _T_2870; // @[BTB.scala 57:42:@2458.12]
  wire  _T_2871; // @[BTB.scala 57:49:@2459.12]
  wire  _T_2872; // @[BTB.scala 57:58:@2460.12]
  wire  _T_2874; // @[BTB.scala 57:56:@2461.12]
  wire  _T_2875; // @[BTB.scala 57:53:@2462.12]
  wire [1:0] _T_2876; // @[Cat.scala 30:58:@2463.12]
  wire [1:0] _GEN_384; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_385; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_386; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_387; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_388; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_389; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_390; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_391; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_392; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_393; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_394; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_395; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_396; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_397; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_398; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_399; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_400; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_401; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_402; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_403; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_404; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_405; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_406; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_407; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_408; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_409; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_410; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_411; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_412; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_413; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_414; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_415; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_416; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_417; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_418; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_419; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_420; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_421; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_422; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_423; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_424; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_425; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_426; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_427; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_428; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_429; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_430; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_431; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_432; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_433; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_434; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_435; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_436; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_437; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_438; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_439; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_440; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_441; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_442; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_443; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_444; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_445; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_446; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _GEN_447; // @[BTB.scala 138:38:@2464.12]
  wire [1:0] _T_2877; // @[BTB.scala 58:42:@2467.12]
  wire  _T_2879; // @[BTB.scala 58:42:@2468.12]
  wire  _T_2884; // @[BTB.scala 58:53:@2472.12]
  wire [1:0] _T_2885; // @[Cat.scala 30:58:@2473.12]
  wire [1:0] _GEN_448; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_449; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_450; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_451; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_452; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_453; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_454; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_455; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_456; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_457; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_458; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_459; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_460; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_461; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_462; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_463; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_464; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_465; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_466; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_467; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_468; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_469; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_470; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_471; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_472; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_473; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_474; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_475; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_476; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_477; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_478; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_479; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_480; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_481; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_482; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_483; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_484; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_485; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_486; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_487; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_488; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_489; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_490; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_491; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_492; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_493; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_494; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_495; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_496; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_497; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_498; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_499; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_500; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_501; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_502; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_503; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_504; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_505; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_506; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_507; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_508; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_509; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_510; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_511; // @[BTB.scala 140:38:@2474.12]
  wire [1:0] _GEN_512; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_513; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_514; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_515; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_516; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_517; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_518; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_519; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_520; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_521; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_522; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_523; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_524; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_525; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_526; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_527; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_528; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_529; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_530; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_531; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_532; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_533; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_534; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_535; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_536; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_537; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_538; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_539; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_540; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_541; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_542; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_543; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_544; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_545; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_546; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_547; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_548; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_549; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_550; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_551; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_552; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_553; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_554; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_555; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_556; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_557; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_558; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_559; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_560; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_561; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_562; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_563; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_564; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_565; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_566; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_567; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_568; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_569; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_570; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_571; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_572; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_573; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_574; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_575; // @[BTB.scala 137:32:@2457.10]
  wire [1:0] _GEN_576; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_577; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_578; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_579; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_580; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_581; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_582; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_583; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_584; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_585; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_586; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_587; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_588; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_589; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_590; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_591; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_592; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_593; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_594; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_595; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_596; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_597; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_598; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_599; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_600; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_601; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_602; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_603; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_604; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_605; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_606; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_607; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_608; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_609; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_610; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_611; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_612; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_613; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_614; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_615; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_616; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_617; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_618; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_619; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_620; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_621; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_622; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_623; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_624; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_625; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_626; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_627; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_628; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_629; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_630; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_631; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_632; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_633; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_634; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_635; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_636; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_637; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_638; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_639; // @[BTB.scala 143:36:@2479.12]
  wire [1:0] _GEN_640; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_641; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_642; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_643; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_644; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_645; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_646; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_647; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_648; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_649; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_650; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_651; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_652; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_653; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_654; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_655; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_656; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_657; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_658; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_659; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_660; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_661; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_662; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_663; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_664; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_665; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_666; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_667; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_668; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_669; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_670; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_671; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_672; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_673; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_674; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_675; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_676; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_677; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_678; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_679; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_680; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_681; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_682; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_683; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_684; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_685; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_686; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_687; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_688; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_689; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_690; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_691; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_692; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_693; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_694; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_695; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_696; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_697; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_698; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_699; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_700; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_701; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_702; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_703; // @[BTB.scala 142:35:@2478.10]
  wire [1:0] _GEN_704; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_705; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_706; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_707; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_708; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_709; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_710; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_711; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_712; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_713; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_714; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_715; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_716; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_717; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_718; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_719; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_720; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_721; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_722; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_723; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_724; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_725; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_726; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_727; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_728; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_729; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_730; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_731; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_732; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_733; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_734; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_735; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_736; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_737; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_738; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_739; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_740; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_741; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_742; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_743; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_744; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_745; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_746; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_747; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_748; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_749; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_750; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_751; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_752; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_753; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_754; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_755; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_756; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_757; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_758; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_759; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_760; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_761; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_762; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_763; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_764; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_765; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_766; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_767; // @[BTB.scala 136:28:@2456.8]
  wire [1:0] _GEN_768; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_769; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_770; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_771; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_772; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_773; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_774; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_775; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_776; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_777; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_778; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_779; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_780; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_781; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_782; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_783; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_784; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_785; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_786; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_787; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_788; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_789; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_790; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_791; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_792; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_793; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_794; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_795; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_796; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_797; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_798; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_799; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_800; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_801; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_802; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_803; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_804; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_805; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_806; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_807; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_808; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_809; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_810; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_811; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_812; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_813; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_814; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_815; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_816; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_817; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_818; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_819; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_820; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_821; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_822; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_823; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_824; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_825; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_826; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_827; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_828; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_829; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_830; // @[BTB.scala 135:46:@2454.6]
  wire [1:0] _GEN_831; // @[BTB.scala 135:46:@2454.6]
  wire [31:0] _GEN_832; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_833; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_834; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_835; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_836; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_837; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_838; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_839; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_840; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_841; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_842; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_843; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_844; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_845; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_846; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_847; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_848; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_849; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_850; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_851; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_852; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_853; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_854; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_855; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_856; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_857; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_858; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_859; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_860; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_861; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_862; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_863; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_864; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_865; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_866; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_867; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_868; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_869; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_870; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_871; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_872; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_873; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_874; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_875; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_876; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_877; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_878; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_879; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_880; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_881; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_882; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_883; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_884; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_885; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_886; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_887; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_888; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_889; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_890; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_891; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_892; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_893; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_894; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_895; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_896; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_897; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_898; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_899; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_900; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_901; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_902; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_903; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_904; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_905; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_906; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_907; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_908; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_909; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_910; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_911; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_912; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_913; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_914; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_915; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_916; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_917; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_918; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_919; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_920; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_921; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_922; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_923; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_924; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_925; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_926; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_927; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_928; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_929; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_930; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_931; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_932; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_933; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_934; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_935; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_936; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_937; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_938; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_939; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_940; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_941; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_942; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_943; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_944; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_945; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_946; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_947; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_948; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_949; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_950; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_951; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_952; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_953; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_954; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_955; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_956; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_957; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_958; // @[BTB.scala 129:23:@2447.4]
  wire [31:0] _GEN_959; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_960; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_961; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_962; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_963; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_964; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_965; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_966; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_967; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_968; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_969; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_970; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_971; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_972; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_973; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_974; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_975; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_976; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_977; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_978; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_979; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_980; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_981; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_982; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_983; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_984; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_985; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_986; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_987; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_988; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_989; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_990; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_991; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_992; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_993; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_994; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_995; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_996; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_997; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_998; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_999; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1000; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1001; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1002; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1003; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1004; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1005; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1006; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1007; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1008; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1009; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1010; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1011; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1012; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1013; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1014; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1015; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1016; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1017; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1018; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1019; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1020; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1021; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1022; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1023; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1024; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1025; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1026; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1027; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1028; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1029; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1030; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1031; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1032; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1033; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1034; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1035; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1036; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1037; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1038; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1039; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1040; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1041; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1042; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1043; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1044; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1045; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1046; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1047; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1048; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1049; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1050; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1051; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1052; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1053; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1054; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1055; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1056; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1057; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1058; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1059; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1060; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1061; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1062; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1063; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1064; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1065; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1066; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1067; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1068; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1069; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1070; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1071; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1072; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1073; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1074; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1075; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1076; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1077; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1078; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1079; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1080; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1081; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1082; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1083; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1084; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1085; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1086; // @[BTB.scala 129:23:@2447.4]
  wire [1:0] _GEN_1087; // @[BTB.scala 129:23:@2447.4]
  assign _T_125 = btb_pc_0 == io_if_pc; // @[BTB.scala 76:42:@315.4]
  assign _T_126 = btb_pc_1 == io_if_pc; // @[BTB.scala 76:42:@316.4]
  assign _T_127 = btb_pc_2 == io_if_pc; // @[BTB.scala 76:42:@317.4]
  assign _T_128 = btb_pc_3 == io_if_pc; // @[BTB.scala 76:42:@318.4]
  assign _T_129 = btb_pc_4 == io_if_pc; // @[BTB.scala 76:42:@319.4]
  assign _T_130 = btb_pc_5 == io_if_pc; // @[BTB.scala 76:42:@320.4]
  assign _T_131 = btb_pc_6 == io_if_pc; // @[BTB.scala 76:42:@321.4]
  assign _T_132 = btb_pc_7 == io_if_pc; // @[BTB.scala 76:42:@322.4]
  assign _T_133 = btb_pc_8 == io_if_pc; // @[BTB.scala 76:42:@323.4]
  assign _T_134 = btb_pc_9 == io_if_pc; // @[BTB.scala 76:42:@324.4]
  assign _T_135 = btb_pc_10 == io_if_pc; // @[BTB.scala 76:42:@325.4]
  assign _T_136 = btb_pc_11 == io_if_pc; // @[BTB.scala 76:42:@326.4]
  assign _T_137 = btb_pc_12 == io_if_pc; // @[BTB.scala 76:42:@327.4]
  assign _T_138 = btb_pc_13 == io_if_pc; // @[BTB.scala 76:42:@328.4]
  assign _T_139 = btb_pc_14 == io_if_pc; // @[BTB.scala 76:42:@329.4]
  assign _T_140 = btb_pc_15 == io_if_pc; // @[BTB.scala 76:42:@330.4]
  assign _T_141 = btb_pc_16 == io_if_pc; // @[BTB.scala 76:42:@331.4]
  assign _T_142 = btb_pc_17 == io_if_pc; // @[BTB.scala 76:42:@332.4]
  assign _T_143 = btb_pc_18 == io_if_pc; // @[BTB.scala 76:42:@333.4]
  assign _T_144 = btb_pc_19 == io_if_pc; // @[BTB.scala 76:42:@334.4]
  assign _T_145 = btb_pc_20 == io_if_pc; // @[BTB.scala 76:42:@335.4]
  assign _T_146 = btb_pc_21 == io_if_pc; // @[BTB.scala 76:42:@336.4]
  assign _T_147 = btb_pc_22 == io_if_pc; // @[BTB.scala 76:42:@337.4]
  assign _T_148 = btb_pc_23 == io_if_pc; // @[BTB.scala 76:42:@338.4]
  assign _T_149 = btb_pc_24 == io_if_pc; // @[BTB.scala 76:42:@339.4]
  assign _T_150 = btb_pc_25 == io_if_pc; // @[BTB.scala 76:42:@340.4]
  assign _T_151 = btb_pc_26 == io_if_pc; // @[BTB.scala 76:42:@341.4]
  assign _T_152 = btb_pc_27 == io_if_pc; // @[BTB.scala 76:42:@342.4]
  assign _T_153 = btb_pc_28 == io_if_pc; // @[BTB.scala 76:42:@343.4]
  assign _T_154 = btb_pc_29 == io_if_pc; // @[BTB.scala 76:42:@344.4]
  assign _T_155 = btb_pc_30 == io_if_pc; // @[BTB.scala 76:42:@345.4]
  assign _T_156 = btb_pc_31 == io_if_pc; // @[BTB.scala 76:42:@346.4]
  assign _T_157 = btb_pc_32 == io_if_pc; // @[BTB.scala 76:42:@347.4]
  assign _T_158 = btb_pc_33 == io_if_pc; // @[BTB.scala 76:42:@348.4]
  assign _T_159 = btb_pc_34 == io_if_pc; // @[BTB.scala 76:42:@349.4]
  assign _T_160 = btb_pc_35 == io_if_pc; // @[BTB.scala 76:42:@350.4]
  assign _T_161 = btb_pc_36 == io_if_pc; // @[BTB.scala 76:42:@351.4]
  assign _T_162 = btb_pc_37 == io_if_pc; // @[BTB.scala 76:42:@352.4]
  assign _T_163 = btb_pc_38 == io_if_pc; // @[BTB.scala 76:42:@353.4]
  assign _T_164 = btb_pc_39 == io_if_pc; // @[BTB.scala 76:42:@354.4]
  assign _T_165 = btb_pc_40 == io_if_pc; // @[BTB.scala 76:42:@355.4]
  assign _T_166 = btb_pc_41 == io_if_pc; // @[BTB.scala 76:42:@356.4]
  assign _T_167 = btb_pc_42 == io_if_pc; // @[BTB.scala 76:42:@357.4]
  assign _T_168 = btb_pc_43 == io_if_pc; // @[BTB.scala 76:42:@358.4]
  assign _T_169 = btb_pc_44 == io_if_pc; // @[BTB.scala 76:42:@359.4]
  assign _T_170 = btb_pc_45 == io_if_pc; // @[BTB.scala 76:42:@360.4]
  assign _T_171 = btb_pc_46 == io_if_pc; // @[BTB.scala 76:42:@361.4]
  assign _T_172 = btb_pc_47 == io_if_pc; // @[BTB.scala 76:42:@362.4]
  assign _T_173 = btb_pc_48 == io_if_pc; // @[BTB.scala 76:42:@363.4]
  assign _T_174 = btb_pc_49 == io_if_pc; // @[BTB.scala 76:42:@364.4]
  assign _T_175 = btb_pc_50 == io_if_pc; // @[BTB.scala 76:42:@365.4]
  assign _T_176 = btb_pc_51 == io_if_pc; // @[BTB.scala 76:42:@366.4]
  assign _T_177 = btb_pc_52 == io_if_pc; // @[BTB.scala 76:42:@367.4]
  assign _T_178 = btb_pc_53 == io_if_pc; // @[BTB.scala 76:42:@368.4]
  assign _T_179 = btb_pc_54 == io_if_pc; // @[BTB.scala 76:42:@369.4]
  assign _T_180 = btb_pc_55 == io_if_pc; // @[BTB.scala 76:42:@370.4]
  assign _T_181 = btb_pc_56 == io_if_pc; // @[BTB.scala 76:42:@371.4]
  assign _T_182 = btb_pc_57 == io_if_pc; // @[BTB.scala 76:42:@372.4]
  assign _T_183 = btb_pc_58 == io_if_pc; // @[BTB.scala 76:42:@373.4]
  assign _T_184 = btb_pc_59 == io_if_pc; // @[BTB.scala 76:42:@374.4]
  assign _T_185 = btb_pc_60 == io_if_pc; // @[BTB.scala 76:42:@375.4]
  assign _T_186 = btb_pc_61 == io_if_pc; // @[BTB.scala 76:42:@376.4]
  assign _T_187 = btb_pc_62 == io_if_pc; // @[BTB.scala 76:42:@377.4]
  assign _T_188 = btb_pc_63 == io_if_pc; // @[BTB.scala 76:42:@378.4]
  assign _T_265 = {_T_132,_T_131,_T_130,_T_129,_T_128,_T_127,_T_126,_T_125}; // @[BTB.scala 76:57:@450.4]
  assign _T_273 = {_T_140,_T_139,_T_138,_T_137,_T_136,_T_135,_T_134,_T_133,_T_265}; // @[BTB.scala 76:57:@458.4]
  assign _T_280 = {_T_148,_T_147,_T_146,_T_145,_T_144,_T_143,_T_142,_T_141}; // @[BTB.scala 76:57:@465.4]
  assign _T_289 = {_T_156,_T_155,_T_154,_T_153,_T_152,_T_151,_T_150,_T_149,_T_280,_T_273}; // @[BTB.scala 76:57:@474.4]
  assign _T_296 = {_T_164,_T_163,_T_162,_T_161,_T_160,_T_159,_T_158,_T_157}; // @[BTB.scala 76:57:@481.4]
  assign _T_304 = {_T_172,_T_171,_T_170,_T_169,_T_168,_T_167,_T_166,_T_165,_T_296}; // @[BTB.scala 76:57:@489.4]
  assign _T_311 = {_T_180,_T_179,_T_178,_T_177,_T_176,_T_175,_T_174,_T_173}; // @[BTB.scala 76:57:@496.4]
  assign _T_320 = {_T_188,_T_187,_T_186,_T_185,_T_184,_T_183,_T_182,_T_181,_T_311,_T_304}; // @[BTB.scala 76:57:@505.4]
  assign _T_321 = {_T_320,_T_289}; // @[BTB.scala 76:57:@506.4]
  assign _T_323 = btb_btype_0 != 2'h0; // @[BTB.scala 56:66:@507.4]
  assign _T_325 = btb_btype_1 != 2'h0; // @[BTB.scala 56:66:@508.4]
  assign _T_327 = btb_btype_2 != 2'h0; // @[BTB.scala 56:66:@509.4]
  assign _T_329 = btb_btype_3 != 2'h0; // @[BTB.scala 56:66:@510.4]
  assign _T_331 = btb_btype_4 != 2'h0; // @[BTB.scala 56:66:@511.4]
  assign _T_333 = btb_btype_5 != 2'h0; // @[BTB.scala 56:66:@512.4]
  assign _T_335 = btb_btype_6 != 2'h0; // @[BTB.scala 56:66:@513.4]
  assign _T_337 = btb_btype_7 != 2'h0; // @[BTB.scala 56:66:@514.4]
  assign _T_339 = btb_btype_8 != 2'h0; // @[BTB.scala 56:66:@515.4]
  assign _T_341 = btb_btype_9 != 2'h0; // @[BTB.scala 56:66:@516.4]
  assign _T_343 = btb_btype_10 != 2'h0; // @[BTB.scala 56:66:@517.4]
  assign _T_345 = btb_btype_11 != 2'h0; // @[BTB.scala 56:66:@518.4]
  assign _T_347 = btb_btype_12 != 2'h0; // @[BTB.scala 56:66:@519.4]
  assign _T_349 = btb_btype_13 != 2'h0; // @[BTB.scala 56:66:@520.4]
  assign _T_351 = btb_btype_14 != 2'h0; // @[BTB.scala 56:66:@521.4]
  assign _T_353 = btb_btype_15 != 2'h0; // @[BTB.scala 56:66:@522.4]
  assign _T_355 = btb_btype_16 != 2'h0; // @[BTB.scala 56:66:@523.4]
  assign _T_357 = btb_btype_17 != 2'h0; // @[BTB.scala 56:66:@524.4]
  assign _T_359 = btb_btype_18 != 2'h0; // @[BTB.scala 56:66:@525.4]
  assign _T_361 = btb_btype_19 != 2'h0; // @[BTB.scala 56:66:@526.4]
  assign _T_363 = btb_btype_20 != 2'h0; // @[BTB.scala 56:66:@527.4]
  assign _T_365 = btb_btype_21 != 2'h0; // @[BTB.scala 56:66:@528.4]
  assign _T_367 = btb_btype_22 != 2'h0; // @[BTB.scala 56:66:@529.4]
  assign _T_369 = btb_btype_23 != 2'h0; // @[BTB.scala 56:66:@530.4]
  assign _T_371 = btb_btype_24 != 2'h0; // @[BTB.scala 56:66:@531.4]
  assign _T_373 = btb_btype_25 != 2'h0; // @[BTB.scala 56:66:@532.4]
  assign _T_375 = btb_btype_26 != 2'h0; // @[BTB.scala 56:66:@533.4]
  assign _T_377 = btb_btype_27 != 2'h0; // @[BTB.scala 56:66:@534.4]
  assign _T_379 = btb_btype_28 != 2'h0; // @[BTB.scala 56:66:@535.4]
  assign _T_381 = btb_btype_29 != 2'h0; // @[BTB.scala 56:66:@536.4]
  assign _T_383 = btb_btype_30 != 2'h0; // @[BTB.scala 56:66:@537.4]
  assign _T_385 = btb_btype_31 != 2'h0; // @[BTB.scala 56:66:@538.4]
  assign _T_387 = btb_btype_32 != 2'h0; // @[BTB.scala 56:66:@539.4]
  assign _T_389 = btb_btype_33 != 2'h0; // @[BTB.scala 56:66:@540.4]
  assign _T_391 = btb_btype_34 != 2'h0; // @[BTB.scala 56:66:@541.4]
  assign _T_393 = btb_btype_35 != 2'h0; // @[BTB.scala 56:66:@542.4]
  assign _T_395 = btb_btype_36 != 2'h0; // @[BTB.scala 56:66:@543.4]
  assign _T_397 = btb_btype_37 != 2'h0; // @[BTB.scala 56:66:@544.4]
  assign _T_399 = btb_btype_38 != 2'h0; // @[BTB.scala 56:66:@545.4]
  assign _T_401 = btb_btype_39 != 2'h0; // @[BTB.scala 56:66:@546.4]
  assign _T_403 = btb_btype_40 != 2'h0; // @[BTB.scala 56:66:@547.4]
  assign _T_405 = btb_btype_41 != 2'h0; // @[BTB.scala 56:66:@548.4]
  assign _T_407 = btb_btype_42 != 2'h0; // @[BTB.scala 56:66:@549.4]
  assign _T_409 = btb_btype_43 != 2'h0; // @[BTB.scala 56:66:@550.4]
  assign _T_411 = btb_btype_44 != 2'h0; // @[BTB.scala 56:66:@551.4]
  assign _T_413 = btb_btype_45 != 2'h0; // @[BTB.scala 56:66:@552.4]
  assign _T_415 = btb_btype_46 != 2'h0; // @[BTB.scala 56:66:@553.4]
  assign _T_417 = btb_btype_47 != 2'h0; // @[BTB.scala 56:66:@554.4]
  assign _T_419 = btb_btype_48 != 2'h0; // @[BTB.scala 56:66:@555.4]
  assign _T_421 = btb_btype_49 != 2'h0; // @[BTB.scala 56:66:@556.4]
  assign _T_423 = btb_btype_50 != 2'h0; // @[BTB.scala 56:66:@557.4]
  assign _T_425 = btb_btype_51 != 2'h0; // @[BTB.scala 56:66:@558.4]
  assign _T_427 = btb_btype_52 != 2'h0; // @[BTB.scala 56:66:@559.4]
  assign _T_429 = btb_btype_53 != 2'h0; // @[BTB.scala 56:66:@560.4]
  assign _T_431 = btb_btype_54 != 2'h0; // @[BTB.scala 56:66:@561.4]
  assign _T_433 = btb_btype_55 != 2'h0; // @[BTB.scala 56:66:@562.4]
  assign _T_435 = btb_btype_56 != 2'h0; // @[BTB.scala 56:66:@563.4]
  assign _T_437 = btb_btype_57 != 2'h0; // @[BTB.scala 56:66:@564.4]
  assign _T_439 = btb_btype_58 != 2'h0; // @[BTB.scala 56:66:@565.4]
  assign _T_441 = btb_btype_59 != 2'h0; // @[BTB.scala 56:66:@566.4]
  assign _T_443 = btb_btype_60 != 2'h0; // @[BTB.scala 56:66:@567.4]
  assign _T_445 = btb_btype_61 != 2'h0; // @[BTB.scala 56:66:@568.4]
  assign _T_447 = btb_btype_62 != 2'h0; // @[BTB.scala 56:66:@569.4]
  assign _T_449 = btb_btype_63 != 2'h0; // @[BTB.scala 56:66:@570.4]
  assign _T_526 = {_T_337,_T_335,_T_333,_T_331,_T_329,_T_327,_T_325,_T_323}; // @[BTB.scala 56:72:@642.4]
  assign _T_534 = {_T_353,_T_351,_T_349,_T_347,_T_345,_T_343,_T_341,_T_339,_T_526}; // @[BTB.scala 56:72:@650.4]
  assign _T_541 = {_T_369,_T_367,_T_365,_T_363,_T_361,_T_359,_T_357,_T_355}; // @[BTB.scala 56:72:@657.4]
  assign _T_550 = {_T_385,_T_383,_T_381,_T_379,_T_377,_T_375,_T_373,_T_371,_T_541,_T_534}; // @[BTB.scala 56:72:@666.4]
  assign _T_557 = {_T_401,_T_399,_T_397,_T_395,_T_393,_T_391,_T_389,_T_387}; // @[BTB.scala 56:72:@673.4]
  assign _T_565 = {_T_417,_T_415,_T_413,_T_411,_T_409,_T_407,_T_405,_T_403,_T_557}; // @[BTB.scala 56:72:@681.4]
  assign _T_572 = {_T_433,_T_431,_T_429,_T_427,_T_425,_T_423,_T_421,_T_419}; // @[BTB.scala 56:72:@688.4]
  assign _T_581 = {_T_449,_T_447,_T_445,_T_443,_T_441,_T_439,_T_437,_T_435,_T_572,_T_565}; // @[BTB.scala 56:72:@697.4]
  assign _T_582 = {_T_581,_T_550}; // @[BTB.scala 56:72:@698.4]
  assign predict_lookup = _T_321 & _T_582; // @[BTB.scala 76:64:@699.4]
  assign _T_585 = io_if_pc + 32'h4; // @[BTB.scala 77:32:@701.4]
  assign predict_cont_tgt = io_if_pc + 32'h4; // @[BTB.scala 77:32:@702.4]
  assign _T_587 = predict_lookup[0]; // @[Mux.scala 21:36:@704.4]
  assign _T_588 = predict_lookup[1]; // @[Mux.scala 21:36:@705.4]
  assign _T_589 = predict_lookup[2]; // @[Mux.scala 21:36:@706.4]
  assign _T_590 = predict_lookup[3]; // @[Mux.scala 21:36:@707.4]
  assign _T_591 = predict_lookup[4]; // @[Mux.scala 21:36:@708.4]
  assign _T_592 = predict_lookup[5]; // @[Mux.scala 21:36:@709.4]
  assign _T_593 = predict_lookup[6]; // @[Mux.scala 21:36:@710.4]
  assign _T_594 = predict_lookup[7]; // @[Mux.scala 21:36:@711.4]
  assign _T_595 = predict_lookup[8]; // @[Mux.scala 21:36:@712.4]
  assign _T_596 = predict_lookup[9]; // @[Mux.scala 21:36:@713.4]
  assign _T_597 = predict_lookup[10]; // @[Mux.scala 21:36:@714.4]
  assign _T_598 = predict_lookup[11]; // @[Mux.scala 21:36:@715.4]
  assign _T_599 = predict_lookup[12]; // @[Mux.scala 21:36:@716.4]
  assign _T_600 = predict_lookup[13]; // @[Mux.scala 21:36:@717.4]
  assign _T_601 = predict_lookup[14]; // @[Mux.scala 21:36:@718.4]
  assign _T_602 = predict_lookup[15]; // @[Mux.scala 21:36:@719.4]
  assign _T_603 = predict_lookup[16]; // @[Mux.scala 21:36:@720.4]
  assign _T_604 = predict_lookup[17]; // @[Mux.scala 21:36:@721.4]
  assign _T_605 = predict_lookup[18]; // @[Mux.scala 21:36:@722.4]
  assign _T_606 = predict_lookup[19]; // @[Mux.scala 21:36:@723.4]
  assign _T_607 = predict_lookup[20]; // @[Mux.scala 21:36:@724.4]
  assign _T_608 = predict_lookup[21]; // @[Mux.scala 21:36:@725.4]
  assign _T_609 = predict_lookup[22]; // @[Mux.scala 21:36:@726.4]
  assign _T_610 = predict_lookup[23]; // @[Mux.scala 21:36:@727.4]
  assign _T_611 = predict_lookup[24]; // @[Mux.scala 21:36:@728.4]
  assign _T_612 = predict_lookup[25]; // @[Mux.scala 21:36:@729.4]
  assign _T_613 = predict_lookup[26]; // @[Mux.scala 21:36:@730.4]
  assign _T_614 = predict_lookup[27]; // @[Mux.scala 21:36:@731.4]
  assign _T_615 = predict_lookup[28]; // @[Mux.scala 21:36:@732.4]
  assign _T_616 = predict_lookup[29]; // @[Mux.scala 21:36:@733.4]
  assign _T_617 = predict_lookup[30]; // @[Mux.scala 21:36:@734.4]
  assign _T_618 = predict_lookup[31]; // @[Mux.scala 21:36:@735.4]
  assign _T_619 = predict_lookup[32]; // @[Mux.scala 21:36:@736.4]
  assign _T_620 = predict_lookup[33]; // @[Mux.scala 21:36:@737.4]
  assign _T_621 = predict_lookup[34]; // @[Mux.scala 21:36:@738.4]
  assign _T_622 = predict_lookup[35]; // @[Mux.scala 21:36:@739.4]
  assign _T_623 = predict_lookup[36]; // @[Mux.scala 21:36:@740.4]
  assign _T_624 = predict_lookup[37]; // @[Mux.scala 21:36:@741.4]
  assign _T_625 = predict_lookup[38]; // @[Mux.scala 21:36:@742.4]
  assign _T_626 = predict_lookup[39]; // @[Mux.scala 21:36:@743.4]
  assign _T_627 = predict_lookup[40]; // @[Mux.scala 21:36:@744.4]
  assign _T_628 = predict_lookup[41]; // @[Mux.scala 21:36:@745.4]
  assign _T_629 = predict_lookup[42]; // @[Mux.scala 21:36:@746.4]
  assign _T_630 = predict_lookup[43]; // @[Mux.scala 21:36:@747.4]
  assign _T_631 = predict_lookup[44]; // @[Mux.scala 21:36:@748.4]
  assign _T_632 = predict_lookup[45]; // @[Mux.scala 21:36:@749.4]
  assign _T_633 = predict_lookup[46]; // @[Mux.scala 21:36:@750.4]
  assign _T_634 = predict_lookup[47]; // @[Mux.scala 21:36:@751.4]
  assign _T_635 = predict_lookup[48]; // @[Mux.scala 21:36:@752.4]
  assign _T_636 = predict_lookup[49]; // @[Mux.scala 21:36:@753.4]
  assign _T_637 = predict_lookup[50]; // @[Mux.scala 21:36:@754.4]
  assign _T_638 = predict_lookup[51]; // @[Mux.scala 21:36:@755.4]
  assign _T_639 = predict_lookup[52]; // @[Mux.scala 21:36:@756.4]
  assign _T_640 = predict_lookup[53]; // @[Mux.scala 21:36:@757.4]
  assign _T_641 = predict_lookup[54]; // @[Mux.scala 21:36:@758.4]
  assign _T_642 = predict_lookup[55]; // @[Mux.scala 21:36:@759.4]
  assign _T_643 = predict_lookup[56]; // @[Mux.scala 21:36:@760.4]
  assign _T_644 = predict_lookup[57]; // @[Mux.scala 21:36:@761.4]
  assign _T_645 = predict_lookup[58]; // @[Mux.scala 21:36:@762.4]
  assign _T_646 = predict_lookup[59]; // @[Mux.scala 21:36:@763.4]
  assign _T_647 = predict_lookup[60]; // @[Mux.scala 21:36:@764.4]
  assign _T_648 = predict_lookup[61]; // @[Mux.scala 21:36:@765.4]
  assign _T_649 = predict_lookup[62]; // @[Mux.scala 21:36:@766.4]
  assign _T_650 = predict_lookup[63]; // @[Mux.scala 21:36:@767.4]
  assign _T_653 = _T_587 ? btb_target_0 : 32'h0; // @[Mux.scala 19:72:@768.4]
  assign _T_655 = _T_588 ? btb_target_1 : 32'h0; // @[Mux.scala 19:72:@769.4]
  assign _T_657 = _T_589 ? btb_target_2 : 32'h0; // @[Mux.scala 19:72:@770.4]
  assign _T_659 = _T_590 ? btb_target_3 : 32'h0; // @[Mux.scala 19:72:@771.4]
  assign _T_661 = _T_591 ? btb_target_4 : 32'h0; // @[Mux.scala 19:72:@772.4]
  assign _T_663 = _T_592 ? btb_target_5 : 32'h0; // @[Mux.scala 19:72:@773.4]
  assign _T_665 = _T_593 ? btb_target_6 : 32'h0; // @[Mux.scala 19:72:@774.4]
  assign _T_667 = _T_594 ? btb_target_7 : 32'h0; // @[Mux.scala 19:72:@775.4]
  assign _T_669 = _T_595 ? btb_target_8 : 32'h0; // @[Mux.scala 19:72:@776.4]
  assign _T_671 = _T_596 ? btb_target_9 : 32'h0; // @[Mux.scala 19:72:@777.4]
  assign _T_673 = _T_597 ? btb_target_10 : 32'h0; // @[Mux.scala 19:72:@778.4]
  assign _T_675 = _T_598 ? btb_target_11 : 32'h0; // @[Mux.scala 19:72:@779.4]
  assign _T_677 = _T_599 ? btb_target_12 : 32'h0; // @[Mux.scala 19:72:@780.4]
  assign _T_679 = _T_600 ? btb_target_13 : 32'h0; // @[Mux.scala 19:72:@781.4]
  assign _T_681 = _T_601 ? btb_target_14 : 32'h0; // @[Mux.scala 19:72:@782.4]
  assign _T_683 = _T_602 ? btb_target_15 : 32'h0; // @[Mux.scala 19:72:@783.4]
  assign _T_685 = _T_603 ? btb_target_16 : 32'h0; // @[Mux.scala 19:72:@784.4]
  assign _T_687 = _T_604 ? btb_target_17 : 32'h0; // @[Mux.scala 19:72:@785.4]
  assign _T_689 = _T_605 ? btb_target_18 : 32'h0; // @[Mux.scala 19:72:@786.4]
  assign _T_691 = _T_606 ? btb_target_19 : 32'h0; // @[Mux.scala 19:72:@787.4]
  assign _T_693 = _T_607 ? btb_target_20 : 32'h0; // @[Mux.scala 19:72:@788.4]
  assign _T_695 = _T_608 ? btb_target_21 : 32'h0; // @[Mux.scala 19:72:@789.4]
  assign _T_697 = _T_609 ? btb_target_22 : 32'h0; // @[Mux.scala 19:72:@790.4]
  assign _T_699 = _T_610 ? btb_target_23 : 32'h0; // @[Mux.scala 19:72:@791.4]
  assign _T_701 = _T_611 ? btb_target_24 : 32'h0; // @[Mux.scala 19:72:@792.4]
  assign _T_703 = _T_612 ? btb_target_25 : 32'h0; // @[Mux.scala 19:72:@793.4]
  assign _T_705 = _T_613 ? btb_target_26 : 32'h0; // @[Mux.scala 19:72:@794.4]
  assign _T_707 = _T_614 ? btb_target_27 : 32'h0; // @[Mux.scala 19:72:@795.4]
  assign _T_709 = _T_615 ? btb_target_28 : 32'h0; // @[Mux.scala 19:72:@796.4]
  assign _T_711 = _T_616 ? btb_target_29 : 32'h0; // @[Mux.scala 19:72:@797.4]
  assign _T_713 = _T_617 ? btb_target_30 : 32'h0; // @[Mux.scala 19:72:@798.4]
  assign _T_715 = _T_618 ? btb_target_31 : 32'h0; // @[Mux.scala 19:72:@799.4]
  assign _T_717 = _T_619 ? btb_target_32 : 32'h0; // @[Mux.scala 19:72:@800.4]
  assign _T_719 = _T_620 ? btb_target_33 : 32'h0; // @[Mux.scala 19:72:@801.4]
  assign _T_721 = _T_621 ? btb_target_34 : 32'h0; // @[Mux.scala 19:72:@802.4]
  assign _T_723 = _T_622 ? btb_target_35 : 32'h0; // @[Mux.scala 19:72:@803.4]
  assign _T_725 = _T_623 ? btb_target_36 : 32'h0; // @[Mux.scala 19:72:@804.4]
  assign _T_727 = _T_624 ? btb_target_37 : 32'h0; // @[Mux.scala 19:72:@805.4]
  assign _T_729 = _T_625 ? btb_target_38 : 32'h0; // @[Mux.scala 19:72:@806.4]
  assign _T_731 = _T_626 ? btb_target_39 : 32'h0; // @[Mux.scala 19:72:@807.4]
  assign _T_733 = _T_627 ? btb_target_40 : 32'h0; // @[Mux.scala 19:72:@808.4]
  assign _T_735 = _T_628 ? btb_target_41 : 32'h0; // @[Mux.scala 19:72:@809.4]
  assign _T_737 = _T_629 ? btb_target_42 : 32'h0; // @[Mux.scala 19:72:@810.4]
  assign _T_739 = _T_630 ? btb_target_43 : 32'h0; // @[Mux.scala 19:72:@811.4]
  assign _T_741 = _T_631 ? btb_target_44 : 32'h0; // @[Mux.scala 19:72:@812.4]
  assign _T_743 = _T_632 ? btb_target_45 : 32'h0; // @[Mux.scala 19:72:@813.4]
  assign _T_745 = _T_633 ? btb_target_46 : 32'h0; // @[Mux.scala 19:72:@814.4]
  assign _T_747 = _T_634 ? btb_target_47 : 32'h0; // @[Mux.scala 19:72:@815.4]
  assign _T_749 = _T_635 ? btb_target_48 : 32'h0; // @[Mux.scala 19:72:@816.4]
  assign _T_751 = _T_636 ? btb_target_49 : 32'h0; // @[Mux.scala 19:72:@817.4]
  assign _T_753 = _T_637 ? btb_target_50 : 32'h0; // @[Mux.scala 19:72:@818.4]
  assign _T_755 = _T_638 ? btb_target_51 : 32'h0; // @[Mux.scala 19:72:@819.4]
  assign _T_757 = _T_639 ? btb_target_52 : 32'h0; // @[Mux.scala 19:72:@820.4]
  assign _T_759 = _T_640 ? btb_target_53 : 32'h0; // @[Mux.scala 19:72:@821.4]
  assign _T_761 = _T_641 ? btb_target_54 : 32'h0; // @[Mux.scala 19:72:@822.4]
  assign _T_763 = _T_642 ? btb_target_55 : 32'h0; // @[Mux.scala 19:72:@823.4]
  assign _T_765 = _T_643 ? btb_target_56 : 32'h0; // @[Mux.scala 19:72:@824.4]
  assign _T_767 = _T_644 ? btb_target_57 : 32'h0; // @[Mux.scala 19:72:@825.4]
  assign _T_769 = _T_645 ? btb_target_58 : 32'h0; // @[Mux.scala 19:72:@826.4]
  assign _T_771 = _T_646 ? btb_target_59 : 32'h0; // @[Mux.scala 19:72:@827.4]
  assign _T_773 = _T_647 ? btb_target_60 : 32'h0; // @[Mux.scala 19:72:@828.4]
  assign _T_775 = _T_648 ? btb_target_61 : 32'h0; // @[Mux.scala 19:72:@829.4]
  assign _T_777 = _T_649 ? btb_target_62 : 32'h0; // @[Mux.scala 19:72:@830.4]
  assign _T_779 = _T_650 ? btb_target_63 : 32'h0; // @[Mux.scala 19:72:@831.4]
  assign _T_780 = _T_653 | _T_655; // @[Mux.scala 19:72:@832.4]
  assign _T_781 = _T_780 | _T_657; // @[Mux.scala 19:72:@833.4]
  assign _T_782 = _T_781 | _T_659; // @[Mux.scala 19:72:@834.4]
  assign _T_783 = _T_782 | _T_661; // @[Mux.scala 19:72:@835.4]
  assign _T_784 = _T_783 | _T_663; // @[Mux.scala 19:72:@836.4]
  assign _T_785 = _T_784 | _T_665; // @[Mux.scala 19:72:@837.4]
  assign _T_786 = _T_785 | _T_667; // @[Mux.scala 19:72:@838.4]
  assign _T_787 = _T_786 | _T_669; // @[Mux.scala 19:72:@839.4]
  assign _T_788 = _T_787 | _T_671; // @[Mux.scala 19:72:@840.4]
  assign _T_789 = _T_788 | _T_673; // @[Mux.scala 19:72:@841.4]
  assign _T_790 = _T_789 | _T_675; // @[Mux.scala 19:72:@842.4]
  assign _T_791 = _T_790 | _T_677; // @[Mux.scala 19:72:@843.4]
  assign _T_792 = _T_791 | _T_679; // @[Mux.scala 19:72:@844.4]
  assign _T_793 = _T_792 | _T_681; // @[Mux.scala 19:72:@845.4]
  assign _T_794 = _T_793 | _T_683; // @[Mux.scala 19:72:@846.4]
  assign _T_795 = _T_794 | _T_685; // @[Mux.scala 19:72:@847.4]
  assign _T_796 = _T_795 | _T_687; // @[Mux.scala 19:72:@848.4]
  assign _T_797 = _T_796 | _T_689; // @[Mux.scala 19:72:@849.4]
  assign _T_798 = _T_797 | _T_691; // @[Mux.scala 19:72:@850.4]
  assign _T_799 = _T_798 | _T_693; // @[Mux.scala 19:72:@851.4]
  assign _T_800 = _T_799 | _T_695; // @[Mux.scala 19:72:@852.4]
  assign _T_801 = _T_800 | _T_697; // @[Mux.scala 19:72:@853.4]
  assign _T_802 = _T_801 | _T_699; // @[Mux.scala 19:72:@854.4]
  assign _T_803 = _T_802 | _T_701; // @[Mux.scala 19:72:@855.4]
  assign _T_804 = _T_803 | _T_703; // @[Mux.scala 19:72:@856.4]
  assign _T_805 = _T_804 | _T_705; // @[Mux.scala 19:72:@857.4]
  assign _T_806 = _T_805 | _T_707; // @[Mux.scala 19:72:@858.4]
  assign _T_807 = _T_806 | _T_709; // @[Mux.scala 19:72:@859.4]
  assign _T_808 = _T_807 | _T_711; // @[Mux.scala 19:72:@860.4]
  assign _T_809 = _T_808 | _T_713; // @[Mux.scala 19:72:@861.4]
  assign _T_810 = _T_809 | _T_715; // @[Mux.scala 19:72:@862.4]
  assign _T_811 = _T_810 | _T_717; // @[Mux.scala 19:72:@863.4]
  assign _T_812 = _T_811 | _T_719; // @[Mux.scala 19:72:@864.4]
  assign _T_813 = _T_812 | _T_721; // @[Mux.scala 19:72:@865.4]
  assign _T_814 = _T_813 | _T_723; // @[Mux.scala 19:72:@866.4]
  assign _T_815 = _T_814 | _T_725; // @[Mux.scala 19:72:@867.4]
  assign _T_816 = _T_815 | _T_727; // @[Mux.scala 19:72:@868.4]
  assign _T_817 = _T_816 | _T_729; // @[Mux.scala 19:72:@869.4]
  assign _T_818 = _T_817 | _T_731; // @[Mux.scala 19:72:@870.4]
  assign _T_819 = _T_818 | _T_733; // @[Mux.scala 19:72:@871.4]
  assign _T_820 = _T_819 | _T_735; // @[Mux.scala 19:72:@872.4]
  assign _T_821 = _T_820 | _T_737; // @[Mux.scala 19:72:@873.4]
  assign _T_822 = _T_821 | _T_739; // @[Mux.scala 19:72:@874.4]
  assign _T_823 = _T_822 | _T_741; // @[Mux.scala 19:72:@875.4]
  assign _T_824 = _T_823 | _T_743; // @[Mux.scala 19:72:@876.4]
  assign _T_825 = _T_824 | _T_745; // @[Mux.scala 19:72:@877.4]
  assign _T_826 = _T_825 | _T_747; // @[Mux.scala 19:72:@878.4]
  assign _T_827 = _T_826 | _T_749; // @[Mux.scala 19:72:@879.4]
  assign _T_828 = _T_827 | _T_751; // @[Mux.scala 19:72:@880.4]
  assign _T_829 = _T_828 | _T_753; // @[Mux.scala 19:72:@881.4]
  assign _T_830 = _T_829 | _T_755; // @[Mux.scala 19:72:@882.4]
  assign _T_831 = _T_830 | _T_757; // @[Mux.scala 19:72:@883.4]
  assign _T_832 = _T_831 | _T_759; // @[Mux.scala 19:72:@884.4]
  assign _T_833 = _T_832 | _T_761; // @[Mux.scala 19:72:@885.4]
  assign _T_834 = _T_833 | _T_763; // @[Mux.scala 19:72:@886.4]
  assign _T_835 = _T_834 | _T_765; // @[Mux.scala 19:72:@887.4]
  assign _T_836 = _T_835 | _T_767; // @[Mux.scala 19:72:@888.4]
  assign _T_837 = _T_836 | _T_769; // @[Mux.scala 19:72:@889.4]
  assign _T_838 = _T_837 | _T_771; // @[Mux.scala 19:72:@890.4]
  assign _T_839 = _T_838 | _T_773; // @[Mux.scala 19:72:@891.4]
  assign _T_840 = _T_839 | _T_775; // @[Mux.scala 19:72:@892.4]
  assign _T_841 = _T_840 | _T_777; // @[Mux.scala 19:72:@893.4]
  assign predict_jump_tgt = _T_841 | _T_779; // @[Mux.scala 19:72:@894.4]
  assign _T_911 = _T_587 ? btb_btype_0 : 2'h0; // @[Mux.scala 19:72:@962.4]
  assign _T_913 = _T_588 ? btb_btype_1 : 2'h0; // @[Mux.scala 19:72:@963.4]
  assign _T_915 = _T_589 ? btb_btype_2 : 2'h0; // @[Mux.scala 19:72:@964.4]
  assign _T_917 = _T_590 ? btb_btype_3 : 2'h0; // @[Mux.scala 19:72:@965.4]
  assign _T_919 = _T_591 ? btb_btype_4 : 2'h0; // @[Mux.scala 19:72:@966.4]
  assign _T_921 = _T_592 ? btb_btype_5 : 2'h0; // @[Mux.scala 19:72:@967.4]
  assign _T_923 = _T_593 ? btb_btype_6 : 2'h0; // @[Mux.scala 19:72:@968.4]
  assign _T_925 = _T_594 ? btb_btype_7 : 2'h0; // @[Mux.scala 19:72:@969.4]
  assign _T_927 = _T_595 ? btb_btype_8 : 2'h0; // @[Mux.scala 19:72:@970.4]
  assign _T_929 = _T_596 ? btb_btype_9 : 2'h0; // @[Mux.scala 19:72:@971.4]
  assign _T_931 = _T_597 ? btb_btype_10 : 2'h0; // @[Mux.scala 19:72:@972.4]
  assign _T_933 = _T_598 ? btb_btype_11 : 2'h0; // @[Mux.scala 19:72:@973.4]
  assign _T_935 = _T_599 ? btb_btype_12 : 2'h0; // @[Mux.scala 19:72:@974.4]
  assign _T_937 = _T_600 ? btb_btype_13 : 2'h0; // @[Mux.scala 19:72:@975.4]
  assign _T_939 = _T_601 ? btb_btype_14 : 2'h0; // @[Mux.scala 19:72:@976.4]
  assign _T_941 = _T_602 ? btb_btype_15 : 2'h0; // @[Mux.scala 19:72:@977.4]
  assign _T_943 = _T_603 ? btb_btype_16 : 2'h0; // @[Mux.scala 19:72:@978.4]
  assign _T_945 = _T_604 ? btb_btype_17 : 2'h0; // @[Mux.scala 19:72:@979.4]
  assign _T_947 = _T_605 ? btb_btype_18 : 2'h0; // @[Mux.scala 19:72:@980.4]
  assign _T_949 = _T_606 ? btb_btype_19 : 2'h0; // @[Mux.scala 19:72:@981.4]
  assign _T_951 = _T_607 ? btb_btype_20 : 2'h0; // @[Mux.scala 19:72:@982.4]
  assign _T_953 = _T_608 ? btb_btype_21 : 2'h0; // @[Mux.scala 19:72:@983.4]
  assign _T_955 = _T_609 ? btb_btype_22 : 2'h0; // @[Mux.scala 19:72:@984.4]
  assign _T_957 = _T_610 ? btb_btype_23 : 2'h0; // @[Mux.scala 19:72:@985.4]
  assign _T_959 = _T_611 ? btb_btype_24 : 2'h0; // @[Mux.scala 19:72:@986.4]
  assign _T_961 = _T_612 ? btb_btype_25 : 2'h0; // @[Mux.scala 19:72:@987.4]
  assign _T_963 = _T_613 ? btb_btype_26 : 2'h0; // @[Mux.scala 19:72:@988.4]
  assign _T_965 = _T_614 ? btb_btype_27 : 2'h0; // @[Mux.scala 19:72:@989.4]
  assign _T_967 = _T_615 ? btb_btype_28 : 2'h0; // @[Mux.scala 19:72:@990.4]
  assign _T_969 = _T_616 ? btb_btype_29 : 2'h0; // @[Mux.scala 19:72:@991.4]
  assign _T_971 = _T_617 ? btb_btype_30 : 2'h0; // @[Mux.scala 19:72:@992.4]
  assign _T_973 = _T_618 ? btb_btype_31 : 2'h0; // @[Mux.scala 19:72:@993.4]
  assign _T_975 = _T_619 ? btb_btype_32 : 2'h0; // @[Mux.scala 19:72:@994.4]
  assign _T_977 = _T_620 ? btb_btype_33 : 2'h0; // @[Mux.scala 19:72:@995.4]
  assign _T_979 = _T_621 ? btb_btype_34 : 2'h0; // @[Mux.scala 19:72:@996.4]
  assign _T_981 = _T_622 ? btb_btype_35 : 2'h0; // @[Mux.scala 19:72:@997.4]
  assign _T_983 = _T_623 ? btb_btype_36 : 2'h0; // @[Mux.scala 19:72:@998.4]
  assign _T_985 = _T_624 ? btb_btype_37 : 2'h0; // @[Mux.scala 19:72:@999.4]
  assign _T_987 = _T_625 ? btb_btype_38 : 2'h0; // @[Mux.scala 19:72:@1000.4]
  assign _T_989 = _T_626 ? btb_btype_39 : 2'h0; // @[Mux.scala 19:72:@1001.4]
  assign _T_991 = _T_627 ? btb_btype_40 : 2'h0; // @[Mux.scala 19:72:@1002.4]
  assign _T_993 = _T_628 ? btb_btype_41 : 2'h0; // @[Mux.scala 19:72:@1003.4]
  assign _T_995 = _T_629 ? btb_btype_42 : 2'h0; // @[Mux.scala 19:72:@1004.4]
  assign _T_997 = _T_630 ? btb_btype_43 : 2'h0; // @[Mux.scala 19:72:@1005.4]
  assign _T_999 = _T_631 ? btb_btype_44 : 2'h0; // @[Mux.scala 19:72:@1006.4]
  assign _T_1001 = _T_632 ? btb_btype_45 : 2'h0; // @[Mux.scala 19:72:@1007.4]
  assign _T_1003 = _T_633 ? btb_btype_46 : 2'h0; // @[Mux.scala 19:72:@1008.4]
  assign _T_1005 = _T_634 ? btb_btype_47 : 2'h0; // @[Mux.scala 19:72:@1009.4]
  assign _T_1007 = _T_635 ? btb_btype_48 : 2'h0; // @[Mux.scala 19:72:@1010.4]
  assign _T_1009 = _T_636 ? btb_btype_49 : 2'h0; // @[Mux.scala 19:72:@1011.4]
  assign _T_1011 = _T_637 ? btb_btype_50 : 2'h0; // @[Mux.scala 19:72:@1012.4]
  assign _T_1013 = _T_638 ? btb_btype_51 : 2'h0; // @[Mux.scala 19:72:@1013.4]
  assign _T_1015 = _T_639 ? btb_btype_52 : 2'h0; // @[Mux.scala 19:72:@1014.4]
  assign _T_1017 = _T_640 ? btb_btype_53 : 2'h0; // @[Mux.scala 19:72:@1015.4]
  assign _T_1019 = _T_641 ? btb_btype_54 : 2'h0; // @[Mux.scala 19:72:@1016.4]
  assign _T_1021 = _T_642 ? btb_btype_55 : 2'h0; // @[Mux.scala 19:72:@1017.4]
  assign _T_1023 = _T_643 ? btb_btype_56 : 2'h0; // @[Mux.scala 19:72:@1018.4]
  assign _T_1025 = _T_644 ? btb_btype_57 : 2'h0; // @[Mux.scala 19:72:@1019.4]
  assign _T_1027 = _T_645 ? btb_btype_58 : 2'h0; // @[Mux.scala 19:72:@1020.4]
  assign _T_1029 = _T_646 ? btb_btype_59 : 2'h0; // @[Mux.scala 19:72:@1021.4]
  assign _T_1031 = _T_647 ? btb_btype_60 : 2'h0; // @[Mux.scala 19:72:@1022.4]
  assign _T_1033 = _T_648 ? btb_btype_61 : 2'h0; // @[Mux.scala 19:72:@1023.4]
  assign _T_1035 = _T_649 ? btb_btype_62 : 2'h0; // @[Mux.scala 19:72:@1024.4]
  assign _T_1037 = _T_650 ? btb_btype_63 : 2'h0; // @[Mux.scala 19:72:@1025.4]
  assign _T_1038 = _T_911 | _T_913; // @[Mux.scala 19:72:@1026.4]
  assign _T_1039 = _T_1038 | _T_915; // @[Mux.scala 19:72:@1027.4]
  assign _T_1040 = _T_1039 | _T_917; // @[Mux.scala 19:72:@1028.4]
  assign _T_1041 = _T_1040 | _T_919; // @[Mux.scala 19:72:@1029.4]
  assign _T_1042 = _T_1041 | _T_921; // @[Mux.scala 19:72:@1030.4]
  assign _T_1043 = _T_1042 | _T_923; // @[Mux.scala 19:72:@1031.4]
  assign _T_1044 = _T_1043 | _T_925; // @[Mux.scala 19:72:@1032.4]
  assign _T_1045 = _T_1044 | _T_927; // @[Mux.scala 19:72:@1033.4]
  assign _T_1046 = _T_1045 | _T_929; // @[Mux.scala 19:72:@1034.4]
  assign _T_1047 = _T_1046 | _T_931; // @[Mux.scala 19:72:@1035.4]
  assign _T_1048 = _T_1047 | _T_933; // @[Mux.scala 19:72:@1036.4]
  assign _T_1049 = _T_1048 | _T_935; // @[Mux.scala 19:72:@1037.4]
  assign _T_1050 = _T_1049 | _T_937; // @[Mux.scala 19:72:@1038.4]
  assign _T_1051 = _T_1050 | _T_939; // @[Mux.scala 19:72:@1039.4]
  assign _T_1052 = _T_1051 | _T_941; // @[Mux.scala 19:72:@1040.4]
  assign _T_1053 = _T_1052 | _T_943; // @[Mux.scala 19:72:@1041.4]
  assign _T_1054 = _T_1053 | _T_945; // @[Mux.scala 19:72:@1042.4]
  assign _T_1055 = _T_1054 | _T_947; // @[Mux.scala 19:72:@1043.4]
  assign _T_1056 = _T_1055 | _T_949; // @[Mux.scala 19:72:@1044.4]
  assign _T_1057 = _T_1056 | _T_951; // @[Mux.scala 19:72:@1045.4]
  assign _T_1058 = _T_1057 | _T_953; // @[Mux.scala 19:72:@1046.4]
  assign _T_1059 = _T_1058 | _T_955; // @[Mux.scala 19:72:@1047.4]
  assign _T_1060 = _T_1059 | _T_957; // @[Mux.scala 19:72:@1048.4]
  assign _T_1061 = _T_1060 | _T_959; // @[Mux.scala 19:72:@1049.4]
  assign _T_1062 = _T_1061 | _T_961; // @[Mux.scala 19:72:@1050.4]
  assign _T_1063 = _T_1062 | _T_963; // @[Mux.scala 19:72:@1051.4]
  assign _T_1064 = _T_1063 | _T_965; // @[Mux.scala 19:72:@1052.4]
  assign _T_1065 = _T_1064 | _T_967; // @[Mux.scala 19:72:@1053.4]
  assign _T_1066 = _T_1065 | _T_969; // @[Mux.scala 19:72:@1054.4]
  assign _T_1067 = _T_1066 | _T_971; // @[Mux.scala 19:72:@1055.4]
  assign _T_1068 = _T_1067 | _T_973; // @[Mux.scala 19:72:@1056.4]
  assign _T_1069 = _T_1068 | _T_975; // @[Mux.scala 19:72:@1057.4]
  assign _T_1070 = _T_1069 | _T_977; // @[Mux.scala 19:72:@1058.4]
  assign _T_1071 = _T_1070 | _T_979; // @[Mux.scala 19:72:@1059.4]
  assign _T_1072 = _T_1071 | _T_981; // @[Mux.scala 19:72:@1060.4]
  assign _T_1073 = _T_1072 | _T_983; // @[Mux.scala 19:72:@1061.4]
  assign _T_1074 = _T_1073 | _T_985; // @[Mux.scala 19:72:@1062.4]
  assign _T_1075 = _T_1074 | _T_987; // @[Mux.scala 19:72:@1063.4]
  assign _T_1076 = _T_1075 | _T_989; // @[Mux.scala 19:72:@1064.4]
  assign _T_1077 = _T_1076 | _T_991; // @[Mux.scala 19:72:@1065.4]
  assign _T_1078 = _T_1077 | _T_993; // @[Mux.scala 19:72:@1066.4]
  assign _T_1079 = _T_1078 | _T_995; // @[Mux.scala 19:72:@1067.4]
  assign _T_1080 = _T_1079 | _T_997; // @[Mux.scala 19:72:@1068.4]
  assign _T_1081 = _T_1080 | _T_999; // @[Mux.scala 19:72:@1069.4]
  assign _T_1082 = _T_1081 | _T_1001; // @[Mux.scala 19:72:@1070.4]
  assign _T_1083 = _T_1082 | _T_1003; // @[Mux.scala 19:72:@1071.4]
  assign _T_1084 = _T_1083 | _T_1005; // @[Mux.scala 19:72:@1072.4]
  assign _T_1085 = _T_1084 | _T_1007; // @[Mux.scala 19:72:@1073.4]
  assign _T_1086 = _T_1085 | _T_1009; // @[Mux.scala 19:72:@1074.4]
  assign _T_1087 = _T_1086 | _T_1011; // @[Mux.scala 19:72:@1075.4]
  assign _T_1088 = _T_1087 | _T_1013; // @[Mux.scala 19:72:@1076.4]
  assign _T_1089 = _T_1088 | _T_1015; // @[Mux.scala 19:72:@1077.4]
  assign _T_1090 = _T_1089 | _T_1017; // @[Mux.scala 19:72:@1078.4]
  assign _T_1091 = _T_1090 | _T_1019; // @[Mux.scala 19:72:@1079.4]
  assign _T_1092 = _T_1091 | _T_1021; // @[Mux.scala 19:72:@1080.4]
  assign _T_1093 = _T_1092 | _T_1023; // @[Mux.scala 19:72:@1081.4]
  assign _T_1094 = _T_1093 | _T_1025; // @[Mux.scala 19:72:@1082.4]
  assign _T_1095 = _T_1094 | _T_1027; // @[Mux.scala 19:72:@1083.4]
  assign _T_1096 = _T_1095 | _T_1029; // @[Mux.scala 19:72:@1084.4]
  assign _T_1097 = _T_1096 | _T_1031; // @[Mux.scala 19:72:@1085.4]
  assign _T_1098 = _T_1097 | _T_1033; // @[Mux.scala 19:72:@1086.4]
  assign _T_1099 = _T_1098 | _T_1035; // @[Mux.scala 19:72:@1087.4]
  assign predict_btype = _T_1099 | _T_1037; // @[Mux.scala 19:72:@1088.4]
  assign _T_1169 = _T_587 ? btb_hcount_0 : 2'h0; // @[Mux.scala 19:72:@1156.4]
  assign _T_1171 = _T_588 ? btb_hcount_1 : 2'h0; // @[Mux.scala 19:72:@1157.4]
  assign _T_1173 = _T_589 ? btb_hcount_2 : 2'h0; // @[Mux.scala 19:72:@1158.4]
  assign _T_1175 = _T_590 ? btb_hcount_3 : 2'h0; // @[Mux.scala 19:72:@1159.4]
  assign _T_1177 = _T_591 ? btb_hcount_4 : 2'h0; // @[Mux.scala 19:72:@1160.4]
  assign _T_1179 = _T_592 ? btb_hcount_5 : 2'h0; // @[Mux.scala 19:72:@1161.4]
  assign _T_1181 = _T_593 ? btb_hcount_6 : 2'h0; // @[Mux.scala 19:72:@1162.4]
  assign _T_1183 = _T_594 ? btb_hcount_7 : 2'h0; // @[Mux.scala 19:72:@1163.4]
  assign _T_1185 = _T_595 ? btb_hcount_8 : 2'h0; // @[Mux.scala 19:72:@1164.4]
  assign _T_1187 = _T_596 ? btb_hcount_9 : 2'h0; // @[Mux.scala 19:72:@1165.4]
  assign _T_1189 = _T_597 ? btb_hcount_10 : 2'h0; // @[Mux.scala 19:72:@1166.4]
  assign _T_1191 = _T_598 ? btb_hcount_11 : 2'h0; // @[Mux.scala 19:72:@1167.4]
  assign _T_1193 = _T_599 ? btb_hcount_12 : 2'h0; // @[Mux.scala 19:72:@1168.4]
  assign _T_1195 = _T_600 ? btb_hcount_13 : 2'h0; // @[Mux.scala 19:72:@1169.4]
  assign _T_1197 = _T_601 ? btb_hcount_14 : 2'h0; // @[Mux.scala 19:72:@1170.4]
  assign _T_1199 = _T_602 ? btb_hcount_15 : 2'h0; // @[Mux.scala 19:72:@1171.4]
  assign _T_1201 = _T_603 ? btb_hcount_16 : 2'h0; // @[Mux.scala 19:72:@1172.4]
  assign _T_1203 = _T_604 ? btb_hcount_17 : 2'h0; // @[Mux.scala 19:72:@1173.4]
  assign _T_1205 = _T_605 ? btb_hcount_18 : 2'h0; // @[Mux.scala 19:72:@1174.4]
  assign _T_1207 = _T_606 ? btb_hcount_19 : 2'h0; // @[Mux.scala 19:72:@1175.4]
  assign _T_1209 = _T_607 ? btb_hcount_20 : 2'h0; // @[Mux.scala 19:72:@1176.4]
  assign _T_1211 = _T_608 ? btb_hcount_21 : 2'h0; // @[Mux.scala 19:72:@1177.4]
  assign _T_1213 = _T_609 ? btb_hcount_22 : 2'h0; // @[Mux.scala 19:72:@1178.4]
  assign _T_1215 = _T_610 ? btb_hcount_23 : 2'h0; // @[Mux.scala 19:72:@1179.4]
  assign _T_1217 = _T_611 ? btb_hcount_24 : 2'h0; // @[Mux.scala 19:72:@1180.4]
  assign _T_1219 = _T_612 ? btb_hcount_25 : 2'h0; // @[Mux.scala 19:72:@1181.4]
  assign _T_1221 = _T_613 ? btb_hcount_26 : 2'h0; // @[Mux.scala 19:72:@1182.4]
  assign _T_1223 = _T_614 ? btb_hcount_27 : 2'h0; // @[Mux.scala 19:72:@1183.4]
  assign _T_1225 = _T_615 ? btb_hcount_28 : 2'h0; // @[Mux.scala 19:72:@1184.4]
  assign _T_1227 = _T_616 ? btb_hcount_29 : 2'h0; // @[Mux.scala 19:72:@1185.4]
  assign _T_1229 = _T_617 ? btb_hcount_30 : 2'h0; // @[Mux.scala 19:72:@1186.4]
  assign _T_1231 = _T_618 ? btb_hcount_31 : 2'h0; // @[Mux.scala 19:72:@1187.4]
  assign _T_1233 = _T_619 ? btb_hcount_32 : 2'h0; // @[Mux.scala 19:72:@1188.4]
  assign _T_1235 = _T_620 ? btb_hcount_33 : 2'h0; // @[Mux.scala 19:72:@1189.4]
  assign _T_1237 = _T_621 ? btb_hcount_34 : 2'h0; // @[Mux.scala 19:72:@1190.4]
  assign _T_1239 = _T_622 ? btb_hcount_35 : 2'h0; // @[Mux.scala 19:72:@1191.4]
  assign _T_1241 = _T_623 ? btb_hcount_36 : 2'h0; // @[Mux.scala 19:72:@1192.4]
  assign _T_1243 = _T_624 ? btb_hcount_37 : 2'h0; // @[Mux.scala 19:72:@1193.4]
  assign _T_1245 = _T_625 ? btb_hcount_38 : 2'h0; // @[Mux.scala 19:72:@1194.4]
  assign _T_1247 = _T_626 ? btb_hcount_39 : 2'h0; // @[Mux.scala 19:72:@1195.4]
  assign _T_1249 = _T_627 ? btb_hcount_40 : 2'h0; // @[Mux.scala 19:72:@1196.4]
  assign _T_1251 = _T_628 ? btb_hcount_41 : 2'h0; // @[Mux.scala 19:72:@1197.4]
  assign _T_1253 = _T_629 ? btb_hcount_42 : 2'h0; // @[Mux.scala 19:72:@1198.4]
  assign _T_1255 = _T_630 ? btb_hcount_43 : 2'h0; // @[Mux.scala 19:72:@1199.4]
  assign _T_1257 = _T_631 ? btb_hcount_44 : 2'h0; // @[Mux.scala 19:72:@1200.4]
  assign _T_1259 = _T_632 ? btb_hcount_45 : 2'h0; // @[Mux.scala 19:72:@1201.4]
  assign _T_1261 = _T_633 ? btb_hcount_46 : 2'h0; // @[Mux.scala 19:72:@1202.4]
  assign _T_1263 = _T_634 ? btb_hcount_47 : 2'h0; // @[Mux.scala 19:72:@1203.4]
  assign _T_1265 = _T_635 ? btb_hcount_48 : 2'h0; // @[Mux.scala 19:72:@1204.4]
  assign _T_1267 = _T_636 ? btb_hcount_49 : 2'h0; // @[Mux.scala 19:72:@1205.4]
  assign _T_1269 = _T_637 ? btb_hcount_50 : 2'h0; // @[Mux.scala 19:72:@1206.4]
  assign _T_1271 = _T_638 ? btb_hcount_51 : 2'h0; // @[Mux.scala 19:72:@1207.4]
  assign _T_1273 = _T_639 ? btb_hcount_52 : 2'h0; // @[Mux.scala 19:72:@1208.4]
  assign _T_1275 = _T_640 ? btb_hcount_53 : 2'h0; // @[Mux.scala 19:72:@1209.4]
  assign _T_1277 = _T_641 ? btb_hcount_54 : 2'h0; // @[Mux.scala 19:72:@1210.4]
  assign _T_1279 = _T_642 ? btb_hcount_55 : 2'h0; // @[Mux.scala 19:72:@1211.4]
  assign _T_1281 = _T_643 ? btb_hcount_56 : 2'h0; // @[Mux.scala 19:72:@1212.4]
  assign _T_1283 = _T_644 ? btb_hcount_57 : 2'h0; // @[Mux.scala 19:72:@1213.4]
  assign _T_1285 = _T_645 ? btb_hcount_58 : 2'h0; // @[Mux.scala 19:72:@1214.4]
  assign _T_1287 = _T_646 ? btb_hcount_59 : 2'h0; // @[Mux.scala 19:72:@1215.4]
  assign _T_1289 = _T_647 ? btb_hcount_60 : 2'h0; // @[Mux.scala 19:72:@1216.4]
  assign _T_1291 = _T_648 ? btb_hcount_61 : 2'h0; // @[Mux.scala 19:72:@1217.4]
  assign _T_1293 = _T_649 ? btb_hcount_62 : 2'h0; // @[Mux.scala 19:72:@1218.4]
  assign _T_1295 = _T_650 ? btb_hcount_63 : 2'h0; // @[Mux.scala 19:72:@1219.4]
  assign _T_1296 = _T_1169 | _T_1171; // @[Mux.scala 19:72:@1220.4]
  assign _T_1297 = _T_1296 | _T_1173; // @[Mux.scala 19:72:@1221.4]
  assign _T_1298 = _T_1297 | _T_1175; // @[Mux.scala 19:72:@1222.4]
  assign _T_1299 = _T_1298 | _T_1177; // @[Mux.scala 19:72:@1223.4]
  assign _T_1300 = _T_1299 | _T_1179; // @[Mux.scala 19:72:@1224.4]
  assign _T_1301 = _T_1300 | _T_1181; // @[Mux.scala 19:72:@1225.4]
  assign _T_1302 = _T_1301 | _T_1183; // @[Mux.scala 19:72:@1226.4]
  assign _T_1303 = _T_1302 | _T_1185; // @[Mux.scala 19:72:@1227.4]
  assign _T_1304 = _T_1303 | _T_1187; // @[Mux.scala 19:72:@1228.4]
  assign _T_1305 = _T_1304 | _T_1189; // @[Mux.scala 19:72:@1229.4]
  assign _T_1306 = _T_1305 | _T_1191; // @[Mux.scala 19:72:@1230.4]
  assign _T_1307 = _T_1306 | _T_1193; // @[Mux.scala 19:72:@1231.4]
  assign _T_1308 = _T_1307 | _T_1195; // @[Mux.scala 19:72:@1232.4]
  assign _T_1309 = _T_1308 | _T_1197; // @[Mux.scala 19:72:@1233.4]
  assign _T_1310 = _T_1309 | _T_1199; // @[Mux.scala 19:72:@1234.4]
  assign _T_1311 = _T_1310 | _T_1201; // @[Mux.scala 19:72:@1235.4]
  assign _T_1312 = _T_1311 | _T_1203; // @[Mux.scala 19:72:@1236.4]
  assign _T_1313 = _T_1312 | _T_1205; // @[Mux.scala 19:72:@1237.4]
  assign _T_1314 = _T_1313 | _T_1207; // @[Mux.scala 19:72:@1238.4]
  assign _T_1315 = _T_1314 | _T_1209; // @[Mux.scala 19:72:@1239.4]
  assign _T_1316 = _T_1315 | _T_1211; // @[Mux.scala 19:72:@1240.4]
  assign _T_1317 = _T_1316 | _T_1213; // @[Mux.scala 19:72:@1241.4]
  assign _T_1318 = _T_1317 | _T_1215; // @[Mux.scala 19:72:@1242.4]
  assign _T_1319 = _T_1318 | _T_1217; // @[Mux.scala 19:72:@1243.4]
  assign _T_1320 = _T_1319 | _T_1219; // @[Mux.scala 19:72:@1244.4]
  assign _T_1321 = _T_1320 | _T_1221; // @[Mux.scala 19:72:@1245.4]
  assign _T_1322 = _T_1321 | _T_1223; // @[Mux.scala 19:72:@1246.4]
  assign _T_1323 = _T_1322 | _T_1225; // @[Mux.scala 19:72:@1247.4]
  assign _T_1324 = _T_1323 | _T_1227; // @[Mux.scala 19:72:@1248.4]
  assign _T_1325 = _T_1324 | _T_1229; // @[Mux.scala 19:72:@1249.4]
  assign _T_1326 = _T_1325 | _T_1231; // @[Mux.scala 19:72:@1250.4]
  assign _T_1327 = _T_1326 | _T_1233; // @[Mux.scala 19:72:@1251.4]
  assign _T_1328 = _T_1327 | _T_1235; // @[Mux.scala 19:72:@1252.4]
  assign _T_1329 = _T_1328 | _T_1237; // @[Mux.scala 19:72:@1253.4]
  assign _T_1330 = _T_1329 | _T_1239; // @[Mux.scala 19:72:@1254.4]
  assign _T_1331 = _T_1330 | _T_1241; // @[Mux.scala 19:72:@1255.4]
  assign _T_1332 = _T_1331 | _T_1243; // @[Mux.scala 19:72:@1256.4]
  assign _T_1333 = _T_1332 | _T_1245; // @[Mux.scala 19:72:@1257.4]
  assign _T_1334 = _T_1333 | _T_1247; // @[Mux.scala 19:72:@1258.4]
  assign _T_1335 = _T_1334 | _T_1249; // @[Mux.scala 19:72:@1259.4]
  assign _T_1336 = _T_1335 | _T_1251; // @[Mux.scala 19:72:@1260.4]
  assign _T_1337 = _T_1336 | _T_1253; // @[Mux.scala 19:72:@1261.4]
  assign _T_1338 = _T_1337 | _T_1255; // @[Mux.scala 19:72:@1262.4]
  assign _T_1339 = _T_1338 | _T_1257; // @[Mux.scala 19:72:@1263.4]
  assign _T_1340 = _T_1339 | _T_1259; // @[Mux.scala 19:72:@1264.4]
  assign _T_1341 = _T_1340 | _T_1261; // @[Mux.scala 19:72:@1265.4]
  assign _T_1342 = _T_1341 | _T_1263; // @[Mux.scala 19:72:@1266.4]
  assign _T_1343 = _T_1342 | _T_1265; // @[Mux.scala 19:72:@1267.4]
  assign _T_1344 = _T_1343 | _T_1267; // @[Mux.scala 19:72:@1268.4]
  assign _T_1345 = _T_1344 | _T_1269; // @[Mux.scala 19:72:@1269.4]
  assign _T_1346 = _T_1345 | _T_1271; // @[Mux.scala 19:72:@1270.4]
  assign _T_1347 = _T_1346 | _T_1273; // @[Mux.scala 19:72:@1271.4]
  assign _T_1348 = _T_1347 | _T_1275; // @[Mux.scala 19:72:@1272.4]
  assign _T_1349 = _T_1348 | _T_1277; // @[Mux.scala 19:72:@1273.4]
  assign _T_1350 = _T_1349 | _T_1279; // @[Mux.scala 19:72:@1274.4]
  assign _T_1351 = _T_1350 | _T_1281; // @[Mux.scala 19:72:@1275.4]
  assign _T_1352 = _T_1351 | _T_1283; // @[Mux.scala 19:72:@1276.4]
  assign _T_1353 = _T_1352 | _T_1285; // @[Mux.scala 19:72:@1277.4]
  assign _T_1354 = _T_1353 | _T_1287; // @[Mux.scala 19:72:@1278.4]
  assign _T_1355 = _T_1354 | _T_1289; // @[Mux.scala 19:72:@1279.4]
  assign _T_1356 = _T_1355 | _T_1291; // @[Mux.scala 19:72:@1280.4]
  assign _T_1357 = _T_1356 | _T_1293; // @[Mux.scala 19:72:@1281.4]
  assign predict_hcount = _T_1357 | _T_1295; // @[Mux.scala 19:72:@1282.4]
  assign _T_1362 = predict_btype == 2'h2; // @[BTB.scala 73:34:@1286.4]
  assign _T_1363 = predict_hcount[1]; // @[BTB.scala 73:65:@1287.4]
  assign _T_1365 = _T_1363 == 1'h0; // @[BTB.scala 73:58:@1288.4]
  assign _T_1366 = _T_1362 & _T_1365; // @[BTB.scala 73:55:@1289.4]
  assign _T_1368 = _T_1366 == 1'h0; // @[BTB.scala 73:26:@1290.4]
  assign _T_1370 = predict_btype == 2'h1; // @[BTB.scala 83:39:@1292.4]
  assign _T_1380 = predict_lookup != 64'h0; // @[BTB.scala 74:47:@1298.4]
  assign _T_1381 = _T_1368 & _T_1380; // @[BTB.scala 74:37:@1299.4]
  assign _T_1382 = _T_1381 ? predict_jump_tgt : predict_cont_tgt; // @[BTB.scala 74:27:@1300.4]
  assign _T_1390 = fb_reg_lfsr[0]; // @[BTB.scala 97:36:@1316.4]
  assign _T_1391 = fb_reg_lfsr[1]; // @[BTB.scala 97:46:@1317.4]
  assign _T_1392 = _T_1390 ^ _T_1391; // @[BTB.scala 97:40:@1318.4]
  assign _T_1393 = fb_reg_lfsr[5:1]; // @[BTB.scala 97:55:@1319.4]
  assign _T_1394 = {_T_1392,_T_1393}; // @[Cat.scala 30:58:@1320.4]
  assign _T_1396 = btb_pc_0 == fb_reg_pc; // @[BTB.scala 121:42:@1323.4]
  assign _T_1397 = btb_pc_1 == fb_reg_pc; // @[BTB.scala 121:42:@1324.4]
  assign _T_1398 = btb_pc_2 == fb_reg_pc; // @[BTB.scala 121:42:@1325.4]
  assign _T_1399 = btb_pc_3 == fb_reg_pc; // @[BTB.scala 121:42:@1326.4]
  assign _T_1400 = btb_pc_4 == fb_reg_pc; // @[BTB.scala 121:42:@1327.4]
  assign _T_1401 = btb_pc_5 == fb_reg_pc; // @[BTB.scala 121:42:@1328.4]
  assign _T_1402 = btb_pc_6 == fb_reg_pc; // @[BTB.scala 121:42:@1329.4]
  assign _T_1403 = btb_pc_7 == fb_reg_pc; // @[BTB.scala 121:42:@1330.4]
  assign _T_1404 = btb_pc_8 == fb_reg_pc; // @[BTB.scala 121:42:@1331.4]
  assign _T_1405 = btb_pc_9 == fb_reg_pc; // @[BTB.scala 121:42:@1332.4]
  assign _T_1406 = btb_pc_10 == fb_reg_pc; // @[BTB.scala 121:42:@1333.4]
  assign _T_1407 = btb_pc_11 == fb_reg_pc; // @[BTB.scala 121:42:@1334.4]
  assign _T_1408 = btb_pc_12 == fb_reg_pc; // @[BTB.scala 121:42:@1335.4]
  assign _T_1409 = btb_pc_13 == fb_reg_pc; // @[BTB.scala 121:42:@1336.4]
  assign _T_1410 = btb_pc_14 == fb_reg_pc; // @[BTB.scala 121:42:@1337.4]
  assign _T_1411 = btb_pc_15 == fb_reg_pc; // @[BTB.scala 121:42:@1338.4]
  assign _T_1412 = btb_pc_16 == fb_reg_pc; // @[BTB.scala 121:42:@1339.4]
  assign _T_1413 = btb_pc_17 == fb_reg_pc; // @[BTB.scala 121:42:@1340.4]
  assign _T_1414 = btb_pc_18 == fb_reg_pc; // @[BTB.scala 121:42:@1341.4]
  assign _T_1415 = btb_pc_19 == fb_reg_pc; // @[BTB.scala 121:42:@1342.4]
  assign _T_1416 = btb_pc_20 == fb_reg_pc; // @[BTB.scala 121:42:@1343.4]
  assign _T_1417 = btb_pc_21 == fb_reg_pc; // @[BTB.scala 121:42:@1344.4]
  assign _T_1418 = btb_pc_22 == fb_reg_pc; // @[BTB.scala 121:42:@1345.4]
  assign _T_1419 = btb_pc_23 == fb_reg_pc; // @[BTB.scala 121:42:@1346.4]
  assign _T_1420 = btb_pc_24 == fb_reg_pc; // @[BTB.scala 121:42:@1347.4]
  assign _T_1421 = btb_pc_25 == fb_reg_pc; // @[BTB.scala 121:42:@1348.4]
  assign _T_1422 = btb_pc_26 == fb_reg_pc; // @[BTB.scala 121:42:@1349.4]
  assign _T_1423 = btb_pc_27 == fb_reg_pc; // @[BTB.scala 121:42:@1350.4]
  assign _T_1424 = btb_pc_28 == fb_reg_pc; // @[BTB.scala 121:42:@1351.4]
  assign _T_1425 = btb_pc_29 == fb_reg_pc; // @[BTB.scala 121:42:@1352.4]
  assign _T_1426 = btb_pc_30 == fb_reg_pc; // @[BTB.scala 121:42:@1353.4]
  assign _T_1427 = btb_pc_31 == fb_reg_pc; // @[BTB.scala 121:42:@1354.4]
  assign _T_1428 = btb_pc_32 == fb_reg_pc; // @[BTB.scala 121:42:@1355.4]
  assign _T_1429 = btb_pc_33 == fb_reg_pc; // @[BTB.scala 121:42:@1356.4]
  assign _T_1430 = btb_pc_34 == fb_reg_pc; // @[BTB.scala 121:42:@1357.4]
  assign _T_1431 = btb_pc_35 == fb_reg_pc; // @[BTB.scala 121:42:@1358.4]
  assign _T_1432 = btb_pc_36 == fb_reg_pc; // @[BTB.scala 121:42:@1359.4]
  assign _T_1433 = btb_pc_37 == fb_reg_pc; // @[BTB.scala 121:42:@1360.4]
  assign _T_1434 = btb_pc_38 == fb_reg_pc; // @[BTB.scala 121:42:@1361.4]
  assign _T_1435 = btb_pc_39 == fb_reg_pc; // @[BTB.scala 121:42:@1362.4]
  assign _T_1436 = btb_pc_40 == fb_reg_pc; // @[BTB.scala 121:42:@1363.4]
  assign _T_1437 = btb_pc_41 == fb_reg_pc; // @[BTB.scala 121:42:@1364.4]
  assign _T_1438 = btb_pc_42 == fb_reg_pc; // @[BTB.scala 121:42:@1365.4]
  assign _T_1439 = btb_pc_43 == fb_reg_pc; // @[BTB.scala 121:42:@1366.4]
  assign _T_1440 = btb_pc_44 == fb_reg_pc; // @[BTB.scala 121:42:@1367.4]
  assign _T_1441 = btb_pc_45 == fb_reg_pc; // @[BTB.scala 121:42:@1368.4]
  assign _T_1442 = btb_pc_46 == fb_reg_pc; // @[BTB.scala 121:42:@1369.4]
  assign _T_1443 = btb_pc_47 == fb_reg_pc; // @[BTB.scala 121:42:@1370.4]
  assign _T_1444 = btb_pc_48 == fb_reg_pc; // @[BTB.scala 121:42:@1371.4]
  assign _T_1445 = btb_pc_49 == fb_reg_pc; // @[BTB.scala 121:42:@1372.4]
  assign _T_1446 = btb_pc_50 == fb_reg_pc; // @[BTB.scala 121:42:@1373.4]
  assign _T_1447 = btb_pc_51 == fb_reg_pc; // @[BTB.scala 121:42:@1374.4]
  assign _T_1448 = btb_pc_52 == fb_reg_pc; // @[BTB.scala 121:42:@1375.4]
  assign _T_1449 = btb_pc_53 == fb_reg_pc; // @[BTB.scala 121:42:@1376.4]
  assign _T_1450 = btb_pc_54 == fb_reg_pc; // @[BTB.scala 121:42:@1377.4]
  assign _T_1451 = btb_pc_55 == fb_reg_pc; // @[BTB.scala 121:42:@1378.4]
  assign _T_1452 = btb_pc_56 == fb_reg_pc; // @[BTB.scala 121:42:@1379.4]
  assign _T_1453 = btb_pc_57 == fb_reg_pc; // @[BTB.scala 121:42:@1380.4]
  assign _T_1454 = btb_pc_58 == fb_reg_pc; // @[BTB.scala 121:42:@1381.4]
  assign _T_1455 = btb_pc_59 == fb_reg_pc; // @[BTB.scala 121:42:@1382.4]
  assign _T_1456 = btb_pc_60 == fb_reg_pc; // @[BTB.scala 121:42:@1383.4]
  assign _T_1457 = btb_pc_61 == fb_reg_pc; // @[BTB.scala 121:42:@1384.4]
  assign _T_1458 = btb_pc_62 == fb_reg_pc; // @[BTB.scala 121:42:@1385.4]
  assign _T_1459 = btb_pc_63 == fb_reg_pc; // @[BTB.scala 121:42:@1386.4]
  assign _T_1536 = {_T_1403,_T_1402,_T_1401,_T_1400,_T_1399,_T_1398,_T_1397,_T_1396}; // @[BTB.scala 121:58:@1458.4]
  assign _T_1544 = {_T_1411,_T_1410,_T_1409,_T_1408,_T_1407,_T_1406,_T_1405,_T_1404,_T_1536}; // @[BTB.scala 121:58:@1466.4]
  assign _T_1551 = {_T_1419,_T_1418,_T_1417,_T_1416,_T_1415,_T_1414,_T_1413,_T_1412}; // @[BTB.scala 121:58:@1473.4]
  assign _T_1560 = {_T_1427,_T_1426,_T_1425,_T_1424,_T_1423,_T_1422,_T_1421,_T_1420,_T_1551,_T_1544}; // @[BTB.scala 121:58:@1482.4]
  assign _T_1567 = {_T_1435,_T_1434,_T_1433,_T_1432,_T_1431,_T_1430,_T_1429,_T_1428}; // @[BTB.scala 121:58:@1489.4]
  assign _T_1575 = {_T_1443,_T_1442,_T_1441,_T_1440,_T_1439,_T_1438,_T_1437,_T_1436,_T_1567}; // @[BTB.scala 121:58:@1497.4]
  assign _T_1582 = {_T_1451,_T_1450,_T_1449,_T_1448,_T_1447,_T_1446,_T_1445,_T_1444}; // @[BTB.scala 121:58:@1504.4]
  assign _T_1591 = {_T_1459,_T_1458,_T_1457,_T_1456,_T_1455,_T_1454,_T_1453,_T_1452,_T_1582,_T_1575}; // @[BTB.scala 121:58:@1513.4]
  assign _T_1592 = {_T_1591,_T_1560}; // @[BTB.scala 121:58:@1514.4]
  assign fb_wire_lookup = _T_1592 & _T_582; // @[BTB.scala 121:65:@1707.4]
  assign _T_1855 = fb_wire_lookup[0]; // @[Mux.scala 21:36:@1709.4]
  assign _T_1856 = fb_wire_lookup[1]; // @[Mux.scala 21:36:@1710.4]
  assign _T_1857 = fb_wire_lookup[2]; // @[Mux.scala 21:36:@1711.4]
  assign _T_1858 = fb_wire_lookup[3]; // @[Mux.scala 21:36:@1712.4]
  assign _T_1859 = fb_wire_lookup[4]; // @[Mux.scala 21:36:@1713.4]
  assign _T_1860 = fb_wire_lookup[5]; // @[Mux.scala 21:36:@1714.4]
  assign _T_1861 = fb_wire_lookup[6]; // @[Mux.scala 21:36:@1715.4]
  assign _T_1862 = fb_wire_lookup[7]; // @[Mux.scala 21:36:@1716.4]
  assign _T_1863 = fb_wire_lookup[8]; // @[Mux.scala 21:36:@1717.4]
  assign _T_1864 = fb_wire_lookup[9]; // @[Mux.scala 21:36:@1718.4]
  assign _T_1865 = fb_wire_lookup[10]; // @[Mux.scala 21:36:@1719.4]
  assign _T_1866 = fb_wire_lookup[11]; // @[Mux.scala 21:36:@1720.4]
  assign _T_1867 = fb_wire_lookup[12]; // @[Mux.scala 21:36:@1721.4]
  assign _T_1868 = fb_wire_lookup[13]; // @[Mux.scala 21:36:@1722.4]
  assign _T_1869 = fb_wire_lookup[14]; // @[Mux.scala 21:36:@1723.4]
  assign _T_1870 = fb_wire_lookup[15]; // @[Mux.scala 21:36:@1724.4]
  assign _T_1871 = fb_wire_lookup[16]; // @[Mux.scala 21:36:@1725.4]
  assign _T_1872 = fb_wire_lookup[17]; // @[Mux.scala 21:36:@1726.4]
  assign _T_1873 = fb_wire_lookup[18]; // @[Mux.scala 21:36:@1727.4]
  assign _T_1874 = fb_wire_lookup[19]; // @[Mux.scala 21:36:@1728.4]
  assign _T_1875 = fb_wire_lookup[20]; // @[Mux.scala 21:36:@1729.4]
  assign _T_1876 = fb_wire_lookup[21]; // @[Mux.scala 21:36:@1730.4]
  assign _T_1877 = fb_wire_lookup[22]; // @[Mux.scala 21:36:@1731.4]
  assign _T_1878 = fb_wire_lookup[23]; // @[Mux.scala 21:36:@1732.4]
  assign _T_1879 = fb_wire_lookup[24]; // @[Mux.scala 21:36:@1733.4]
  assign _T_1880 = fb_wire_lookup[25]; // @[Mux.scala 21:36:@1734.4]
  assign _T_1881 = fb_wire_lookup[26]; // @[Mux.scala 21:36:@1735.4]
  assign _T_1882 = fb_wire_lookup[27]; // @[Mux.scala 21:36:@1736.4]
  assign _T_1883 = fb_wire_lookup[28]; // @[Mux.scala 21:36:@1737.4]
  assign _T_1884 = fb_wire_lookup[29]; // @[Mux.scala 21:36:@1738.4]
  assign _T_1885 = fb_wire_lookup[30]; // @[Mux.scala 21:36:@1739.4]
  assign _T_1886 = fb_wire_lookup[31]; // @[Mux.scala 21:36:@1740.4]
  assign _T_1887 = fb_wire_lookup[32]; // @[Mux.scala 21:36:@1741.4]
  assign _T_1888 = fb_wire_lookup[33]; // @[Mux.scala 21:36:@1742.4]
  assign _T_1889 = fb_wire_lookup[34]; // @[Mux.scala 21:36:@1743.4]
  assign _T_1890 = fb_wire_lookup[35]; // @[Mux.scala 21:36:@1744.4]
  assign _T_1891 = fb_wire_lookup[36]; // @[Mux.scala 21:36:@1745.4]
  assign _T_1892 = fb_wire_lookup[37]; // @[Mux.scala 21:36:@1746.4]
  assign _T_1893 = fb_wire_lookup[38]; // @[Mux.scala 21:36:@1747.4]
  assign _T_1894 = fb_wire_lookup[39]; // @[Mux.scala 21:36:@1748.4]
  assign _T_1895 = fb_wire_lookup[40]; // @[Mux.scala 21:36:@1749.4]
  assign _T_1896 = fb_wire_lookup[41]; // @[Mux.scala 21:36:@1750.4]
  assign _T_1897 = fb_wire_lookup[42]; // @[Mux.scala 21:36:@1751.4]
  assign _T_1898 = fb_wire_lookup[43]; // @[Mux.scala 21:36:@1752.4]
  assign _T_1899 = fb_wire_lookup[44]; // @[Mux.scala 21:36:@1753.4]
  assign _T_1900 = fb_wire_lookup[45]; // @[Mux.scala 21:36:@1754.4]
  assign _T_1901 = fb_wire_lookup[46]; // @[Mux.scala 21:36:@1755.4]
  assign _T_1902 = fb_wire_lookup[47]; // @[Mux.scala 21:36:@1756.4]
  assign _T_1903 = fb_wire_lookup[48]; // @[Mux.scala 21:36:@1757.4]
  assign _T_1904 = fb_wire_lookup[49]; // @[Mux.scala 21:36:@1758.4]
  assign _T_1905 = fb_wire_lookup[50]; // @[Mux.scala 21:36:@1759.4]
  assign _T_1906 = fb_wire_lookup[51]; // @[Mux.scala 21:36:@1760.4]
  assign _T_1907 = fb_wire_lookup[52]; // @[Mux.scala 21:36:@1761.4]
  assign _T_1908 = fb_wire_lookup[53]; // @[Mux.scala 21:36:@1762.4]
  assign _T_1909 = fb_wire_lookup[54]; // @[Mux.scala 21:36:@1763.4]
  assign _T_1910 = fb_wire_lookup[55]; // @[Mux.scala 21:36:@1764.4]
  assign _T_1911 = fb_wire_lookup[56]; // @[Mux.scala 21:36:@1765.4]
  assign _T_1912 = fb_wire_lookup[57]; // @[Mux.scala 21:36:@1766.4]
  assign _T_1913 = fb_wire_lookup[58]; // @[Mux.scala 21:36:@1767.4]
  assign _T_1914 = fb_wire_lookup[59]; // @[Mux.scala 21:36:@1768.4]
  assign _T_1915 = fb_wire_lookup[60]; // @[Mux.scala 21:36:@1769.4]
  assign _T_1916 = fb_wire_lookup[61]; // @[Mux.scala 21:36:@1770.4]
  assign _T_1917 = fb_wire_lookup[62]; // @[Mux.scala 21:36:@1771.4]
  assign _T_1918 = fb_wire_lookup[63]; // @[Mux.scala 21:36:@1772.4]
  assign _T_1921 = _T_1855 ? btb_hcount_0 : 2'h0; // @[Mux.scala 19:72:@1773.4]
  assign _T_1923 = _T_1856 ? btb_hcount_1 : 2'h0; // @[Mux.scala 19:72:@1774.4]
  assign _T_1925 = _T_1857 ? btb_hcount_2 : 2'h0; // @[Mux.scala 19:72:@1775.4]
  assign _T_1927 = _T_1858 ? btb_hcount_3 : 2'h0; // @[Mux.scala 19:72:@1776.4]
  assign _T_1929 = _T_1859 ? btb_hcount_4 : 2'h0; // @[Mux.scala 19:72:@1777.4]
  assign _T_1931 = _T_1860 ? btb_hcount_5 : 2'h0; // @[Mux.scala 19:72:@1778.4]
  assign _T_1933 = _T_1861 ? btb_hcount_6 : 2'h0; // @[Mux.scala 19:72:@1779.4]
  assign _T_1935 = _T_1862 ? btb_hcount_7 : 2'h0; // @[Mux.scala 19:72:@1780.4]
  assign _T_1937 = _T_1863 ? btb_hcount_8 : 2'h0; // @[Mux.scala 19:72:@1781.4]
  assign _T_1939 = _T_1864 ? btb_hcount_9 : 2'h0; // @[Mux.scala 19:72:@1782.4]
  assign _T_1941 = _T_1865 ? btb_hcount_10 : 2'h0; // @[Mux.scala 19:72:@1783.4]
  assign _T_1943 = _T_1866 ? btb_hcount_11 : 2'h0; // @[Mux.scala 19:72:@1784.4]
  assign _T_1945 = _T_1867 ? btb_hcount_12 : 2'h0; // @[Mux.scala 19:72:@1785.4]
  assign _T_1947 = _T_1868 ? btb_hcount_13 : 2'h0; // @[Mux.scala 19:72:@1786.4]
  assign _T_1949 = _T_1869 ? btb_hcount_14 : 2'h0; // @[Mux.scala 19:72:@1787.4]
  assign _T_1951 = _T_1870 ? btb_hcount_15 : 2'h0; // @[Mux.scala 19:72:@1788.4]
  assign _T_1953 = _T_1871 ? btb_hcount_16 : 2'h0; // @[Mux.scala 19:72:@1789.4]
  assign _T_1955 = _T_1872 ? btb_hcount_17 : 2'h0; // @[Mux.scala 19:72:@1790.4]
  assign _T_1957 = _T_1873 ? btb_hcount_18 : 2'h0; // @[Mux.scala 19:72:@1791.4]
  assign _T_1959 = _T_1874 ? btb_hcount_19 : 2'h0; // @[Mux.scala 19:72:@1792.4]
  assign _T_1961 = _T_1875 ? btb_hcount_20 : 2'h0; // @[Mux.scala 19:72:@1793.4]
  assign _T_1963 = _T_1876 ? btb_hcount_21 : 2'h0; // @[Mux.scala 19:72:@1794.4]
  assign _T_1965 = _T_1877 ? btb_hcount_22 : 2'h0; // @[Mux.scala 19:72:@1795.4]
  assign _T_1967 = _T_1878 ? btb_hcount_23 : 2'h0; // @[Mux.scala 19:72:@1796.4]
  assign _T_1969 = _T_1879 ? btb_hcount_24 : 2'h0; // @[Mux.scala 19:72:@1797.4]
  assign _T_1971 = _T_1880 ? btb_hcount_25 : 2'h0; // @[Mux.scala 19:72:@1798.4]
  assign _T_1973 = _T_1881 ? btb_hcount_26 : 2'h0; // @[Mux.scala 19:72:@1799.4]
  assign _T_1975 = _T_1882 ? btb_hcount_27 : 2'h0; // @[Mux.scala 19:72:@1800.4]
  assign _T_1977 = _T_1883 ? btb_hcount_28 : 2'h0; // @[Mux.scala 19:72:@1801.4]
  assign _T_1979 = _T_1884 ? btb_hcount_29 : 2'h0; // @[Mux.scala 19:72:@1802.4]
  assign _T_1981 = _T_1885 ? btb_hcount_30 : 2'h0; // @[Mux.scala 19:72:@1803.4]
  assign _T_1983 = _T_1886 ? btb_hcount_31 : 2'h0; // @[Mux.scala 19:72:@1804.4]
  assign _T_1985 = _T_1887 ? btb_hcount_32 : 2'h0; // @[Mux.scala 19:72:@1805.4]
  assign _T_1987 = _T_1888 ? btb_hcount_33 : 2'h0; // @[Mux.scala 19:72:@1806.4]
  assign _T_1989 = _T_1889 ? btb_hcount_34 : 2'h0; // @[Mux.scala 19:72:@1807.4]
  assign _T_1991 = _T_1890 ? btb_hcount_35 : 2'h0; // @[Mux.scala 19:72:@1808.4]
  assign _T_1993 = _T_1891 ? btb_hcount_36 : 2'h0; // @[Mux.scala 19:72:@1809.4]
  assign _T_1995 = _T_1892 ? btb_hcount_37 : 2'h0; // @[Mux.scala 19:72:@1810.4]
  assign _T_1997 = _T_1893 ? btb_hcount_38 : 2'h0; // @[Mux.scala 19:72:@1811.4]
  assign _T_1999 = _T_1894 ? btb_hcount_39 : 2'h0; // @[Mux.scala 19:72:@1812.4]
  assign _T_2001 = _T_1895 ? btb_hcount_40 : 2'h0; // @[Mux.scala 19:72:@1813.4]
  assign _T_2003 = _T_1896 ? btb_hcount_41 : 2'h0; // @[Mux.scala 19:72:@1814.4]
  assign _T_2005 = _T_1897 ? btb_hcount_42 : 2'h0; // @[Mux.scala 19:72:@1815.4]
  assign _T_2007 = _T_1898 ? btb_hcount_43 : 2'h0; // @[Mux.scala 19:72:@1816.4]
  assign _T_2009 = _T_1899 ? btb_hcount_44 : 2'h0; // @[Mux.scala 19:72:@1817.4]
  assign _T_2011 = _T_1900 ? btb_hcount_45 : 2'h0; // @[Mux.scala 19:72:@1818.4]
  assign _T_2013 = _T_1901 ? btb_hcount_46 : 2'h0; // @[Mux.scala 19:72:@1819.4]
  assign _T_2015 = _T_1902 ? btb_hcount_47 : 2'h0; // @[Mux.scala 19:72:@1820.4]
  assign _T_2017 = _T_1903 ? btb_hcount_48 : 2'h0; // @[Mux.scala 19:72:@1821.4]
  assign _T_2019 = _T_1904 ? btb_hcount_49 : 2'h0; // @[Mux.scala 19:72:@1822.4]
  assign _T_2021 = _T_1905 ? btb_hcount_50 : 2'h0; // @[Mux.scala 19:72:@1823.4]
  assign _T_2023 = _T_1906 ? btb_hcount_51 : 2'h0; // @[Mux.scala 19:72:@1824.4]
  assign _T_2025 = _T_1907 ? btb_hcount_52 : 2'h0; // @[Mux.scala 19:72:@1825.4]
  assign _T_2027 = _T_1908 ? btb_hcount_53 : 2'h0; // @[Mux.scala 19:72:@1826.4]
  assign _T_2029 = _T_1909 ? btb_hcount_54 : 2'h0; // @[Mux.scala 19:72:@1827.4]
  assign _T_2031 = _T_1910 ? btb_hcount_55 : 2'h0; // @[Mux.scala 19:72:@1828.4]
  assign _T_2033 = _T_1911 ? btb_hcount_56 : 2'h0; // @[Mux.scala 19:72:@1829.4]
  assign _T_2035 = _T_1912 ? btb_hcount_57 : 2'h0; // @[Mux.scala 19:72:@1830.4]
  assign _T_2037 = _T_1913 ? btb_hcount_58 : 2'h0; // @[Mux.scala 19:72:@1831.4]
  assign _T_2039 = _T_1914 ? btb_hcount_59 : 2'h0; // @[Mux.scala 19:72:@1832.4]
  assign _T_2041 = _T_1915 ? btb_hcount_60 : 2'h0; // @[Mux.scala 19:72:@1833.4]
  assign _T_2043 = _T_1916 ? btb_hcount_61 : 2'h0; // @[Mux.scala 19:72:@1834.4]
  assign _T_2045 = _T_1917 ? btb_hcount_62 : 2'h0; // @[Mux.scala 19:72:@1835.4]
  assign _T_2047 = _T_1918 ? btb_hcount_63 : 2'h0; // @[Mux.scala 19:72:@1836.4]
  assign _T_2048 = _T_1921 | _T_1923; // @[Mux.scala 19:72:@1837.4]
  assign _T_2049 = _T_2048 | _T_1925; // @[Mux.scala 19:72:@1838.4]
  assign _T_2050 = _T_2049 | _T_1927; // @[Mux.scala 19:72:@1839.4]
  assign _T_2051 = _T_2050 | _T_1929; // @[Mux.scala 19:72:@1840.4]
  assign _T_2052 = _T_2051 | _T_1931; // @[Mux.scala 19:72:@1841.4]
  assign _T_2053 = _T_2052 | _T_1933; // @[Mux.scala 19:72:@1842.4]
  assign _T_2054 = _T_2053 | _T_1935; // @[Mux.scala 19:72:@1843.4]
  assign _T_2055 = _T_2054 | _T_1937; // @[Mux.scala 19:72:@1844.4]
  assign _T_2056 = _T_2055 | _T_1939; // @[Mux.scala 19:72:@1845.4]
  assign _T_2057 = _T_2056 | _T_1941; // @[Mux.scala 19:72:@1846.4]
  assign _T_2058 = _T_2057 | _T_1943; // @[Mux.scala 19:72:@1847.4]
  assign _T_2059 = _T_2058 | _T_1945; // @[Mux.scala 19:72:@1848.4]
  assign _T_2060 = _T_2059 | _T_1947; // @[Mux.scala 19:72:@1849.4]
  assign _T_2061 = _T_2060 | _T_1949; // @[Mux.scala 19:72:@1850.4]
  assign _T_2062 = _T_2061 | _T_1951; // @[Mux.scala 19:72:@1851.4]
  assign _T_2063 = _T_2062 | _T_1953; // @[Mux.scala 19:72:@1852.4]
  assign _T_2064 = _T_2063 | _T_1955; // @[Mux.scala 19:72:@1853.4]
  assign _T_2065 = _T_2064 | _T_1957; // @[Mux.scala 19:72:@1854.4]
  assign _T_2066 = _T_2065 | _T_1959; // @[Mux.scala 19:72:@1855.4]
  assign _T_2067 = _T_2066 | _T_1961; // @[Mux.scala 19:72:@1856.4]
  assign _T_2068 = _T_2067 | _T_1963; // @[Mux.scala 19:72:@1857.4]
  assign _T_2069 = _T_2068 | _T_1965; // @[Mux.scala 19:72:@1858.4]
  assign _T_2070 = _T_2069 | _T_1967; // @[Mux.scala 19:72:@1859.4]
  assign _T_2071 = _T_2070 | _T_1969; // @[Mux.scala 19:72:@1860.4]
  assign _T_2072 = _T_2071 | _T_1971; // @[Mux.scala 19:72:@1861.4]
  assign _T_2073 = _T_2072 | _T_1973; // @[Mux.scala 19:72:@1862.4]
  assign _T_2074 = _T_2073 | _T_1975; // @[Mux.scala 19:72:@1863.4]
  assign _T_2075 = _T_2074 | _T_1977; // @[Mux.scala 19:72:@1864.4]
  assign _T_2076 = _T_2075 | _T_1979; // @[Mux.scala 19:72:@1865.4]
  assign _T_2077 = _T_2076 | _T_1981; // @[Mux.scala 19:72:@1866.4]
  assign _T_2078 = _T_2077 | _T_1983; // @[Mux.scala 19:72:@1867.4]
  assign _T_2079 = _T_2078 | _T_1985; // @[Mux.scala 19:72:@1868.4]
  assign _T_2080 = _T_2079 | _T_1987; // @[Mux.scala 19:72:@1869.4]
  assign _T_2081 = _T_2080 | _T_1989; // @[Mux.scala 19:72:@1870.4]
  assign _T_2082 = _T_2081 | _T_1991; // @[Mux.scala 19:72:@1871.4]
  assign _T_2083 = _T_2082 | _T_1993; // @[Mux.scala 19:72:@1872.4]
  assign _T_2084 = _T_2083 | _T_1995; // @[Mux.scala 19:72:@1873.4]
  assign _T_2085 = _T_2084 | _T_1997; // @[Mux.scala 19:72:@1874.4]
  assign _T_2086 = _T_2085 | _T_1999; // @[Mux.scala 19:72:@1875.4]
  assign _T_2087 = _T_2086 | _T_2001; // @[Mux.scala 19:72:@1876.4]
  assign _T_2088 = _T_2087 | _T_2003; // @[Mux.scala 19:72:@1877.4]
  assign _T_2089 = _T_2088 | _T_2005; // @[Mux.scala 19:72:@1878.4]
  assign _T_2090 = _T_2089 | _T_2007; // @[Mux.scala 19:72:@1879.4]
  assign _T_2091 = _T_2090 | _T_2009; // @[Mux.scala 19:72:@1880.4]
  assign _T_2092 = _T_2091 | _T_2011; // @[Mux.scala 19:72:@1881.4]
  assign _T_2093 = _T_2092 | _T_2013; // @[Mux.scala 19:72:@1882.4]
  assign _T_2094 = _T_2093 | _T_2015; // @[Mux.scala 19:72:@1883.4]
  assign _T_2095 = _T_2094 | _T_2017; // @[Mux.scala 19:72:@1884.4]
  assign _T_2096 = _T_2095 | _T_2019; // @[Mux.scala 19:72:@1885.4]
  assign _T_2097 = _T_2096 | _T_2021; // @[Mux.scala 19:72:@1886.4]
  assign _T_2098 = _T_2097 | _T_2023; // @[Mux.scala 19:72:@1887.4]
  assign _T_2099 = _T_2098 | _T_2025; // @[Mux.scala 19:72:@1888.4]
  assign _T_2100 = _T_2099 | _T_2027; // @[Mux.scala 19:72:@1889.4]
  assign _T_2101 = _T_2100 | _T_2029; // @[Mux.scala 19:72:@1890.4]
  assign _T_2102 = _T_2101 | _T_2031; // @[Mux.scala 19:72:@1891.4]
  assign _T_2103 = _T_2102 | _T_2033; // @[Mux.scala 19:72:@1892.4]
  assign _T_2104 = _T_2103 | _T_2035; // @[Mux.scala 19:72:@1893.4]
  assign _T_2105 = _T_2104 | _T_2037; // @[Mux.scala 19:72:@1894.4]
  assign _T_2106 = _T_2105 | _T_2039; // @[Mux.scala 19:72:@1895.4]
  assign _T_2107 = _T_2106 | _T_2041; // @[Mux.scala 19:72:@1896.4]
  assign _T_2108 = _T_2107 | _T_2043; // @[Mux.scala 19:72:@1897.4]
  assign _T_2109 = _T_2108 | _T_2045; // @[Mux.scala 19:72:@1898.4]
  assign fb_wire_hcount = _T_2109 | _T_2047; // @[Mux.scala 19:72:@1899.4]
  assign _T_2114 = fb_wire_lookup != 64'h0; // @[BTB.scala 119:30:@1903.4]
  assign _T_2115 = fb_wire_lookup[63:32]; // @[OneHot.scala 26:18:@1904.4]
  assign _T_2116 = fb_wire_lookup[31:0]; // @[OneHot.scala 27:18:@1905.4]
  assign _T_2118 = _T_2115 != 32'h0; // @[OneHot.scala 28:14:@1906.4]
  assign _T_2119 = _T_2115 | _T_2116; // @[OneHot.scala 28:28:@1907.4]
  assign _T_2120 = _T_2119[31:16]; // @[OneHot.scala 26:18:@1908.4]
  assign _T_2121 = _T_2119[15:0]; // @[OneHot.scala 27:18:@1909.4]
  assign _T_2123 = _T_2120 != 16'h0; // @[OneHot.scala 28:14:@1910.4]
  assign _T_2124 = _T_2120 | _T_2121; // @[OneHot.scala 28:28:@1911.4]
  assign _T_2125 = _T_2124[15:8]; // @[OneHot.scala 26:18:@1912.4]
  assign _T_2126 = _T_2124[7:0]; // @[OneHot.scala 27:18:@1913.4]
  assign _T_2128 = _T_2125 != 8'h0; // @[OneHot.scala 28:14:@1914.4]
  assign _T_2129 = _T_2125 | _T_2126; // @[OneHot.scala 28:28:@1915.4]
  assign _T_2130 = _T_2129[7:4]; // @[OneHot.scala 26:18:@1916.4]
  assign _T_2131 = _T_2129[3:0]; // @[OneHot.scala 27:18:@1917.4]
  assign _T_2133 = _T_2130 != 4'h0; // @[OneHot.scala 28:14:@1918.4]
  assign _T_2134 = _T_2130 | _T_2131; // @[OneHot.scala 28:28:@1919.4]
  assign _T_2135 = _T_2134[3:2]; // @[OneHot.scala 26:18:@1920.4]
  assign _T_2136 = _T_2134[1:0]; // @[OneHot.scala 27:18:@1921.4]
  assign _T_2138 = _T_2135 != 2'h0; // @[OneHot.scala 28:14:@1922.4]
  assign _T_2139 = _T_2135 | _T_2136; // @[OneHot.scala 28:28:@1923.4]
  assign _T_2140 = _T_2139[1]; // @[CircuitMath.scala 30:8:@1924.4]
  assign _T_2145 = {_T_2118,_T_2123,_T_2128,_T_2133,_T_2138,_T_2140}; // @[Cat.scala 30:58:@1929.4]
  assign _T_2407 = ~ _T_582; // @[BTB.scala 125:19:@2122.4]
  assign _T_2409 = _T_2407 == 64'h0; // @[BTB.scala 125:19:@2123.4]
  assign _T_2672 = _T_2407[0]; // @[OneHot.scala 39:40:@2317.4]
  assign _T_2673 = _T_2407[1]; // @[OneHot.scala 39:40:@2318.4]
  assign _T_2674 = _T_2407[2]; // @[OneHot.scala 39:40:@2319.4]
  assign _T_2675 = _T_2407[3]; // @[OneHot.scala 39:40:@2320.4]
  assign _T_2676 = _T_2407[4]; // @[OneHot.scala 39:40:@2321.4]
  assign _T_2677 = _T_2407[5]; // @[OneHot.scala 39:40:@2322.4]
  assign _T_2678 = _T_2407[6]; // @[OneHot.scala 39:40:@2323.4]
  assign _T_2679 = _T_2407[7]; // @[OneHot.scala 39:40:@2324.4]
  assign _T_2680 = _T_2407[8]; // @[OneHot.scala 39:40:@2325.4]
  assign _T_2681 = _T_2407[9]; // @[OneHot.scala 39:40:@2326.4]
  assign _T_2682 = _T_2407[10]; // @[OneHot.scala 39:40:@2327.4]
  assign _T_2683 = _T_2407[11]; // @[OneHot.scala 39:40:@2328.4]
  assign _T_2684 = _T_2407[12]; // @[OneHot.scala 39:40:@2329.4]
  assign _T_2685 = _T_2407[13]; // @[OneHot.scala 39:40:@2330.4]
  assign _T_2686 = _T_2407[14]; // @[OneHot.scala 39:40:@2331.4]
  assign _T_2687 = _T_2407[15]; // @[OneHot.scala 39:40:@2332.4]
  assign _T_2688 = _T_2407[16]; // @[OneHot.scala 39:40:@2333.4]
  assign _T_2689 = _T_2407[17]; // @[OneHot.scala 39:40:@2334.4]
  assign _T_2690 = _T_2407[18]; // @[OneHot.scala 39:40:@2335.4]
  assign _T_2691 = _T_2407[19]; // @[OneHot.scala 39:40:@2336.4]
  assign _T_2692 = _T_2407[20]; // @[OneHot.scala 39:40:@2337.4]
  assign _T_2693 = _T_2407[21]; // @[OneHot.scala 39:40:@2338.4]
  assign _T_2694 = _T_2407[22]; // @[OneHot.scala 39:40:@2339.4]
  assign _T_2695 = _T_2407[23]; // @[OneHot.scala 39:40:@2340.4]
  assign _T_2696 = _T_2407[24]; // @[OneHot.scala 39:40:@2341.4]
  assign _T_2697 = _T_2407[25]; // @[OneHot.scala 39:40:@2342.4]
  assign _T_2698 = _T_2407[26]; // @[OneHot.scala 39:40:@2343.4]
  assign _T_2699 = _T_2407[27]; // @[OneHot.scala 39:40:@2344.4]
  assign _T_2700 = _T_2407[28]; // @[OneHot.scala 39:40:@2345.4]
  assign _T_2701 = _T_2407[29]; // @[OneHot.scala 39:40:@2346.4]
  assign _T_2702 = _T_2407[30]; // @[OneHot.scala 39:40:@2347.4]
  assign _T_2703 = _T_2407[31]; // @[OneHot.scala 39:40:@2348.4]
  assign _T_2704 = _T_2407[32]; // @[OneHot.scala 39:40:@2349.4]
  assign _T_2705 = _T_2407[33]; // @[OneHot.scala 39:40:@2350.4]
  assign _T_2706 = _T_2407[34]; // @[OneHot.scala 39:40:@2351.4]
  assign _T_2707 = _T_2407[35]; // @[OneHot.scala 39:40:@2352.4]
  assign _T_2708 = _T_2407[36]; // @[OneHot.scala 39:40:@2353.4]
  assign _T_2709 = _T_2407[37]; // @[OneHot.scala 39:40:@2354.4]
  assign _T_2710 = _T_2407[38]; // @[OneHot.scala 39:40:@2355.4]
  assign _T_2711 = _T_2407[39]; // @[OneHot.scala 39:40:@2356.4]
  assign _T_2712 = _T_2407[40]; // @[OneHot.scala 39:40:@2357.4]
  assign _T_2713 = _T_2407[41]; // @[OneHot.scala 39:40:@2358.4]
  assign _T_2714 = _T_2407[42]; // @[OneHot.scala 39:40:@2359.4]
  assign _T_2715 = _T_2407[43]; // @[OneHot.scala 39:40:@2360.4]
  assign _T_2716 = _T_2407[44]; // @[OneHot.scala 39:40:@2361.4]
  assign _T_2717 = _T_2407[45]; // @[OneHot.scala 39:40:@2362.4]
  assign _T_2718 = _T_2407[46]; // @[OneHot.scala 39:40:@2363.4]
  assign _T_2719 = _T_2407[47]; // @[OneHot.scala 39:40:@2364.4]
  assign _T_2720 = _T_2407[48]; // @[OneHot.scala 39:40:@2365.4]
  assign _T_2721 = _T_2407[49]; // @[OneHot.scala 39:40:@2366.4]
  assign _T_2722 = _T_2407[50]; // @[OneHot.scala 39:40:@2367.4]
  assign _T_2723 = _T_2407[51]; // @[OneHot.scala 39:40:@2368.4]
  assign _T_2724 = _T_2407[52]; // @[OneHot.scala 39:40:@2369.4]
  assign _T_2725 = _T_2407[53]; // @[OneHot.scala 39:40:@2370.4]
  assign _T_2726 = _T_2407[54]; // @[OneHot.scala 39:40:@2371.4]
  assign _T_2727 = _T_2407[55]; // @[OneHot.scala 39:40:@2372.4]
  assign _T_2728 = _T_2407[56]; // @[OneHot.scala 39:40:@2373.4]
  assign _T_2729 = _T_2407[57]; // @[OneHot.scala 39:40:@2374.4]
  assign _T_2730 = _T_2407[58]; // @[OneHot.scala 39:40:@2375.4]
  assign _T_2731 = _T_2407[59]; // @[OneHot.scala 39:40:@2376.4]
  assign _T_2732 = _T_2407[60]; // @[OneHot.scala 39:40:@2377.4]
  assign _T_2733 = _T_2407[61]; // @[OneHot.scala 39:40:@2378.4]
  assign _T_2734 = _T_2407[62]; // @[OneHot.scala 39:40:@2379.4]
  assign _T_2800 = _T_2734 ? 6'h3e : 6'h3f; // @[Mux.scala 31:69:@2381.4]
  assign _T_2801 = _T_2733 ? 6'h3d : _T_2800; // @[Mux.scala 31:69:@2382.4]
  assign _T_2802 = _T_2732 ? 6'h3c : _T_2801; // @[Mux.scala 31:69:@2383.4]
  assign _T_2803 = _T_2731 ? 6'h3b : _T_2802; // @[Mux.scala 31:69:@2384.4]
  assign _T_2804 = _T_2730 ? 6'h3a : _T_2803; // @[Mux.scala 31:69:@2385.4]
  assign _T_2805 = _T_2729 ? 6'h39 : _T_2804; // @[Mux.scala 31:69:@2386.4]
  assign _T_2806 = _T_2728 ? 6'h38 : _T_2805; // @[Mux.scala 31:69:@2387.4]
  assign _T_2807 = _T_2727 ? 6'h37 : _T_2806; // @[Mux.scala 31:69:@2388.4]
  assign _T_2808 = _T_2726 ? 6'h36 : _T_2807; // @[Mux.scala 31:69:@2389.4]
  assign _T_2809 = _T_2725 ? 6'h35 : _T_2808; // @[Mux.scala 31:69:@2390.4]
  assign _T_2810 = _T_2724 ? 6'h34 : _T_2809; // @[Mux.scala 31:69:@2391.4]
  assign _T_2811 = _T_2723 ? 6'h33 : _T_2810; // @[Mux.scala 31:69:@2392.4]
  assign _T_2812 = _T_2722 ? 6'h32 : _T_2811; // @[Mux.scala 31:69:@2393.4]
  assign _T_2813 = _T_2721 ? 6'h31 : _T_2812; // @[Mux.scala 31:69:@2394.4]
  assign _T_2814 = _T_2720 ? 6'h30 : _T_2813; // @[Mux.scala 31:69:@2395.4]
  assign _T_2815 = _T_2719 ? 6'h2f : _T_2814; // @[Mux.scala 31:69:@2396.4]
  assign _T_2816 = _T_2718 ? 6'h2e : _T_2815; // @[Mux.scala 31:69:@2397.4]
  assign _T_2817 = _T_2717 ? 6'h2d : _T_2816; // @[Mux.scala 31:69:@2398.4]
  assign _T_2818 = _T_2716 ? 6'h2c : _T_2817; // @[Mux.scala 31:69:@2399.4]
  assign _T_2819 = _T_2715 ? 6'h2b : _T_2818; // @[Mux.scala 31:69:@2400.4]
  assign _T_2820 = _T_2714 ? 6'h2a : _T_2819; // @[Mux.scala 31:69:@2401.4]
  assign _T_2821 = _T_2713 ? 6'h29 : _T_2820; // @[Mux.scala 31:69:@2402.4]
  assign _T_2822 = _T_2712 ? 6'h28 : _T_2821; // @[Mux.scala 31:69:@2403.4]
  assign _T_2823 = _T_2711 ? 6'h27 : _T_2822; // @[Mux.scala 31:69:@2404.4]
  assign _T_2824 = _T_2710 ? 6'h26 : _T_2823; // @[Mux.scala 31:69:@2405.4]
  assign _T_2825 = _T_2709 ? 6'h25 : _T_2824; // @[Mux.scala 31:69:@2406.4]
  assign _T_2826 = _T_2708 ? 6'h24 : _T_2825; // @[Mux.scala 31:69:@2407.4]
  assign _T_2827 = _T_2707 ? 6'h23 : _T_2826; // @[Mux.scala 31:69:@2408.4]
  assign _T_2828 = _T_2706 ? 6'h22 : _T_2827; // @[Mux.scala 31:69:@2409.4]
  assign _T_2829 = _T_2705 ? 6'h21 : _T_2828; // @[Mux.scala 31:69:@2410.4]
  assign _T_2830 = _T_2704 ? 6'h20 : _T_2829; // @[Mux.scala 31:69:@2411.4]
  assign _T_2831 = _T_2703 ? 6'h1f : _T_2830; // @[Mux.scala 31:69:@2412.4]
  assign _T_2832 = _T_2702 ? 6'h1e : _T_2831; // @[Mux.scala 31:69:@2413.4]
  assign _T_2833 = _T_2701 ? 6'h1d : _T_2832; // @[Mux.scala 31:69:@2414.4]
  assign _T_2834 = _T_2700 ? 6'h1c : _T_2833; // @[Mux.scala 31:69:@2415.4]
  assign _T_2835 = _T_2699 ? 6'h1b : _T_2834; // @[Mux.scala 31:69:@2416.4]
  assign _T_2836 = _T_2698 ? 6'h1a : _T_2835; // @[Mux.scala 31:69:@2417.4]
  assign _T_2837 = _T_2697 ? 6'h19 : _T_2836; // @[Mux.scala 31:69:@2418.4]
  assign _T_2838 = _T_2696 ? 6'h18 : _T_2837; // @[Mux.scala 31:69:@2419.4]
  assign _T_2839 = _T_2695 ? 6'h17 : _T_2838; // @[Mux.scala 31:69:@2420.4]
  assign _T_2840 = _T_2694 ? 6'h16 : _T_2839; // @[Mux.scala 31:69:@2421.4]
  assign _T_2841 = _T_2693 ? 6'h15 : _T_2840; // @[Mux.scala 31:69:@2422.4]
  assign _T_2842 = _T_2692 ? 6'h14 : _T_2841; // @[Mux.scala 31:69:@2423.4]
  assign _T_2843 = _T_2691 ? 6'h13 : _T_2842; // @[Mux.scala 31:69:@2424.4]
  assign _T_2844 = _T_2690 ? 6'h12 : _T_2843; // @[Mux.scala 31:69:@2425.4]
  assign _T_2845 = _T_2689 ? 6'h11 : _T_2844; // @[Mux.scala 31:69:@2426.4]
  assign _T_2846 = _T_2688 ? 6'h10 : _T_2845; // @[Mux.scala 31:69:@2427.4]
  assign _T_2847 = _T_2687 ? 6'hf : _T_2846; // @[Mux.scala 31:69:@2428.4]
  assign _T_2848 = _T_2686 ? 6'he : _T_2847; // @[Mux.scala 31:69:@2429.4]
  assign _T_2849 = _T_2685 ? 6'hd : _T_2848; // @[Mux.scala 31:69:@2430.4]
  assign _T_2850 = _T_2684 ? 6'hc : _T_2849; // @[Mux.scala 31:69:@2431.4]
  assign _T_2851 = _T_2683 ? 6'hb : _T_2850; // @[Mux.scala 31:69:@2432.4]
  assign _T_2852 = _T_2682 ? 6'ha : _T_2851; // @[Mux.scala 31:69:@2433.4]
  assign _T_2853 = _T_2681 ? 6'h9 : _T_2852; // @[Mux.scala 31:69:@2434.4]
  assign _T_2854 = _T_2680 ? 6'h8 : _T_2853; // @[Mux.scala 31:69:@2435.4]
  assign _T_2855 = _T_2679 ? 6'h7 : _T_2854; // @[Mux.scala 31:69:@2436.4]
  assign _T_2856 = _T_2678 ? 6'h6 : _T_2855; // @[Mux.scala 31:69:@2437.4]
  assign _T_2857 = _T_2677 ? 6'h5 : _T_2856; // @[Mux.scala 31:69:@2438.4]
  assign _T_2858 = _T_2676 ? 6'h4 : _T_2857; // @[Mux.scala 31:69:@2439.4]
  assign _T_2859 = _T_2675 ? 6'h3 : _T_2858; // @[Mux.scala 31:69:@2440.4]
  assign _T_2860 = _T_2674 ? 6'h2 : _T_2859; // @[Mux.scala 31:69:@2441.4]
  assign _T_2861 = _T_2673 ? 6'h1 : _T_2860; // @[Mux.scala 31:69:@2442.4]
  assign _T_2862 = _T_2672 ? 6'h0 : _T_2861; // @[Mux.scala 31:69:@2443.4]
  assign _T_2863 = _T_2409 ? fb_reg_lfsr : _T_2862; // @[BTB.scala 125:8:@2444.4]
  assign fb_wire_bindex = _T_2114 ? _T_2145 : _T_2863; // @[BTB.scala 124:8:@2445.4]
  assign _GEN_0 = 6'h0 == fb_wire_bindex ? fb_reg_pc : btb_pc_0; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_1 = 6'h1 == fb_wire_bindex ? fb_reg_pc : btb_pc_1; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_2 = 6'h2 == fb_wire_bindex ? fb_reg_pc : btb_pc_2; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_3 = 6'h3 == fb_wire_bindex ? fb_reg_pc : btb_pc_3; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_4 = 6'h4 == fb_wire_bindex ? fb_reg_pc : btb_pc_4; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_5 = 6'h5 == fb_wire_bindex ? fb_reg_pc : btb_pc_5; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_6 = 6'h6 == fb_wire_bindex ? fb_reg_pc : btb_pc_6; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_7 = 6'h7 == fb_wire_bindex ? fb_reg_pc : btb_pc_7; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_8 = 6'h8 == fb_wire_bindex ? fb_reg_pc : btb_pc_8; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_9 = 6'h9 == fb_wire_bindex ? fb_reg_pc : btb_pc_9; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_10 = 6'ha == fb_wire_bindex ? fb_reg_pc : btb_pc_10; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_11 = 6'hb == fb_wire_bindex ? fb_reg_pc : btb_pc_11; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_12 = 6'hc == fb_wire_bindex ? fb_reg_pc : btb_pc_12; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_13 = 6'hd == fb_wire_bindex ? fb_reg_pc : btb_pc_13; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_14 = 6'he == fb_wire_bindex ? fb_reg_pc : btb_pc_14; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_15 = 6'hf == fb_wire_bindex ? fb_reg_pc : btb_pc_15; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_16 = 6'h10 == fb_wire_bindex ? fb_reg_pc : btb_pc_16; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_17 = 6'h11 == fb_wire_bindex ? fb_reg_pc : btb_pc_17; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_18 = 6'h12 == fb_wire_bindex ? fb_reg_pc : btb_pc_18; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_19 = 6'h13 == fb_wire_bindex ? fb_reg_pc : btb_pc_19; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_20 = 6'h14 == fb_wire_bindex ? fb_reg_pc : btb_pc_20; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_21 = 6'h15 == fb_wire_bindex ? fb_reg_pc : btb_pc_21; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_22 = 6'h16 == fb_wire_bindex ? fb_reg_pc : btb_pc_22; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_23 = 6'h17 == fb_wire_bindex ? fb_reg_pc : btb_pc_23; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_24 = 6'h18 == fb_wire_bindex ? fb_reg_pc : btb_pc_24; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_25 = 6'h19 == fb_wire_bindex ? fb_reg_pc : btb_pc_25; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_26 = 6'h1a == fb_wire_bindex ? fb_reg_pc : btb_pc_26; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_27 = 6'h1b == fb_wire_bindex ? fb_reg_pc : btb_pc_27; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_28 = 6'h1c == fb_wire_bindex ? fb_reg_pc : btb_pc_28; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_29 = 6'h1d == fb_wire_bindex ? fb_reg_pc : btb_pc_29; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_30 = 6'h1e == fb_wire_bindex ? fb_reg_pc : btb_pc_30; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_31 = 6'h1f == fb_wire_bindex ? fb_reg_pc : btb_pc_31; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_32 = 6'h20 == fb_wire_bindex ? fb_reg_pc : btb_pc_32; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_33 = 6'h21 == fb_wire_bindex ? fb_reg_pc : btb_pc_33; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_34 = 6'h22 == fb_wire_bindex ? fb_reg_pc : btb_pc_34; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_35 = 6'h23 == fb_wire_bindex ? fb_reg_pc : btb_pc_35; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_36 = 6'h24 == fb_wire_bindex ? fb_reg_pc : btb_pc_36; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_37 = 6'h25 == fb_wire_bindex ? fb_reg_pc : btb_pc_37; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_38 = 6'h26 == fb_wire_bindex ? fb_reg_pc : btb_pc_38; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_39 = 6'h27 == fb_wire_bindex ? fb_reg_pc : btb_pc_39; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_40 = 6'h28 == fb_wire_bindex ? fb_reg_pc : btb_pc_40; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_41 = 6'h29 == fb_wire_bindex ? fb_reg_pc : btb_pc_41; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_42 = 6'h2a == fb_wire_bindex ? fb_reg_pc : btb_pc_42; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_43 = 6'h2b == fb_wire_bindex ? fb_reg_pc : btb_pc_43; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_44 = 6'h2c == fb_wire_bindex ? fb_reg_pc : btb_pc_44; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_45 = 6'h2d == fb_wire_bindex ? fb_reg_pc : btb_pc_45; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_46 = 6'h2e == fb_wire_bindex ? fb_reg_pc : btb_pc_46; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_47 = 6'h2f == fb_wire_bindex ? fb_reg_pc : btb_pc_47; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_48 = 6'h30 == fb_wire_bindex ? fb_reg_pc : btb_pc_48; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_49 = 6'h31 == fb_wire_bindex ? fb_reg_pc : btb_pc_49; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_50 = 6'h32 == fb_wire_bindex ? fb_reg_pc : btb_pc_50; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_51 = 6'h33 == fb_wire_bindex ? fb_reg_pc : btb_pc_51; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_52 = 6'h34 == fb_wire_bindex ? fb_reg_pc : btb_pc_52; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_53 = 6'h35 == fb_wire_bindex ? fb_reg_pc : btb_pc_53; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_54 = 6'h36 == fb_wire_bindex ? fb_reg_pc : btb_pc_54; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_55 = 6'h37 == fb_wire_bindex ? fb_reg_pc : btb_pc_55; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_56 = 6'h38 == fb_wire_bindex ? fb_reg_pc : btb_pc_56; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_57 = 6'h39 == fb_wire_bindex ? fb_reg_pc : btb_pc_57; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_58 = 6'h3a == fb_wire_bindex ? fb_reg_pc : btb_pc_58; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_59 = 6'h3b == fb_wire_bindex ? fb_reg_pc : btb_pc_59; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_60 = 6'h3c == fb_wire_bindex ? fb_reg_pc : btb_pc_60; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_61 = 6'h3d == fb_wire_bindex ? fb_reg_pc : btb_pc_61; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_62 = 6'h3e == fb_wire_bindex ? fb_reg_pc : btb_pc_62; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_63 = 6'h3f == fb_wire_bindex ? fb_reg_pc : btb_pc_63; // @[BTB.scala 131:34:@2449.8]
  assign _GEN_64 = 6'h0 == fb_wire_bindex ? fb_reg_target : btb_target_0; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_65 = 6'h1 == fb_wire_bindex ? fb_reg_target : btb_target_1; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_66 = 6'h2 == fb_wire_bindex ? fb_reg_target : btb_target_2; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_67 = 6'h3 == fb_wire_bindex ? fb_reg_target : btb_target_3; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_68 = 6'h4 == fb_wire_bindex ? fb_reg_target : btb_target_4; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_69 = 6'h5 == fb_wire_bindex ? fb_reg_target : btb_target_5; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_70 = 6'h6 == fb_wire_bindex ? fb_reg_target : btb_target_6; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_71 = 6'h7 == fb_wire_bindex ? fb_reg_target : btb_target_7; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_72 = 6'h8 == fb_wire_bindex ? fb_reg_target : btb_target_8; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_73 = 6'h9 == fb_wire_bindex ? fb_reg_target : btb_target_9; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_74 = 6'ha == fb_wire_bindex ? fb_reg_target : btb_target_10; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_75 = 6'hb == fb_wire_bindex ? fb_reg_target : btb_target_11; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_76 = 6'hc == fb_wire_bindex ? fb_reg_target : btb_target_12; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_77 = 6'hd == fb_wire_bindex ? fb_reg_target : btb_target_13; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_78 = 6'he == fb_wire_bindex ? fb_reg_target : btb_target_14; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_79 = 6'hf == fb_wire_bindex ? fb_reg_target : btb_target_15; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_80 = 6'h10 == fb_wire_bindex ? fb_reg_target : btb_target_16; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_81 = 6'h11 == fb_wire_bindex ? fb_reg_target : btb_target_17; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_82 = 6'h12 == fb_wire_bindex ? fb_reg_target : btb_target_18; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_83 = 6'h13 == fb_wire_bindex ? fb_reg_target : btb_target_19; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_84 = 6'h14 == fb_wire_bindex ? fb_reg_target : btb_target_20; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_85 = 6'h15 == fb_wire_bindex ? fb_reg_target : btb_target_21; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_86 = 6'h16 == fb_wire_bindex ? fb_reg_target : btb_target_22; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_87 = 6'h17 == fb_wire_bindex ? fb_reg_target : btb_target_23; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_88 = 6'h18 == fb_wire_bindex ? fb_reg_target : btb_target_24; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_89 = 6'h19 == fb_wire_bindex ? fb_reg_target : btb_target_25; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_90 = 6'h1a == fb_wire_bindex ? fb_reg_target : btb_target_26; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_91 = 6'h1b == fb_wire_bindex ? fb_reg_target : btb_target_27; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_92 = 6'h1c == fb_wire_bindex ? fb_reg_target : btb_target_28; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_93 = 6'h1d == fb_wire_bindex ? fb_reg_target : btb_target_29; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_94 = 6'h1e == fb_wire_bindex ? fb_reg_target : btb_target_30; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_95 = 6'h1f == fb_wire_bindex ? fb_reg_target : btb_target_31; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_96 = 6'h20 == fb_wire_bindex ? fb_reg_target : btb_target_32; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_97 = 6'h21 == fb_wire_bindex ? fb_reg_target : btb_target_33; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_98 = 6'h22 == fb_wire_bindex ? fb_reg_target : btb_target_34; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_99 = 6'h23 == fb_wire_bindex ? fb_reg_target : btb_target_35; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_100 = 6'h24 == fb_wire_bindex ? fb_reg_target : btb_target_36; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_101 = 6'h25 == fb_wire_bindex ? fb_reg_target : btb_target_37; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_102 = 6'h26 == fb_wire_bindex ? fb_reg_target : btb_target_38; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_103 = 6'h27 == fb_wire_bindex ? fb_reg_target : btb_target_39; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_104 = 6'h28 == fb_wire_bindex ? fb_reg_target : btb_target_40; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_105 = 6'h29 == fb_wire_bindex ? fb_reg_target : btb_target_41; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_106 = 6'h2a == fb_wire_bindex ? fb_reg_target : btb_target_42; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_107 = 6'h2b == fb_wire_bindex ? fb_reg_target : btb_target_43; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_108 = 6'h2c == fb_wire_bindex ? fb_reg_target : btb_target_44; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_109 = 6'h2d == fb_wire_bindex ? fb_reg_target : btb_target_45; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_110 = 6'h2e == fb_wire_bindex ? fb_reg_target : btb_target_46; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_111 = 6'h2f == fb_wire_bindex ? fb_reg_target : btb_target_47; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_112 = 6'h30 == fb_wire_bindex ? fb_reg_target : btb_target_48; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_113 = 6'h31 == fb_wire_bindex ? fb_reg_target : btb_target_49; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_114 = 6'h32 == fb_wire_bindex ? fb_reg_target : btb_target_50; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_115 = 6'h33 == fb_wire_bindex ? fb_reg_target : btb_target_51; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_116 = 6'h34 == fb_wire_bindex ? fb_reg_target : btb_target_52; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_117 = 6'h35 == fb_wire_bindex ? fb_reg_target : btb_target_53; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_118 = 6'h36 == fb_wire_bindex ? fb_reg_target : btb_target_54; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_119 = 6'h37 == fb_wire_bindex ? fb_reg_target : btb_target_55; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_120 = 6'h38 == fb_wire_bindex ? fb_reg_target : btb_target_56; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_121 = 6'h39 == fb_wire_bindex ? fb_reg_target : btb_target_57; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_122 = 6'h3a == fb_wire_bindex ? fb_reg_target : btb_target_58; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_123 = 6'h3b == fb_wire_bindex ? fb_reg_target : btb_target_59; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_124 = 6'h3c == fb_wire_bindex ? fb_reg_target : btb_target_60; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_125 = 6'h3d == fb_wire_bindex ? fb_reg_target : btb_target_61; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_126 = 6'h3e == fb_wire_bindex ? fb_reg_target : btb_target_62; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_127 = 6'h3f == fb_wire_bindex ? fb_reg_target : btb_target_63; // @[BTB.scala 132:34:@2450.8]
  assign _GEN_128 = 6'h0 == fb_wire_bindex ? fb_reg_btype : btb_btype_0; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_129 = 6'h1 == fb_wire_bindex ? fb_reg_btype : btb_btype_1; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_130 = 6'h2 == fb_wire_bindex ? fb_reg_btype : btb_btype_2; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_131 = 6'h3 == fb_wire_bindex ? fb_reg_btype : btb_btype_3; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_132 = 6'h4 == fb_wire_bindex ? fb_reg_btype : btb_btype_4; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_133 = 6'h5 == fb_wire_bindex ? fb_reg_btype : btb_btype_5; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_134 = 6'h6 == fb_wire_bindex ? fb_reg_btype : btb_btype_6; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_135 = 6'h7 == fb_wire_bindex ? fb_reg_btype : btb_btype_7; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_136 = 6'h8 == fb_wire_bindex ? fb_reg_btype : btb_btype_8; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_137 = 6'h9 == fb_wire_bindex ? fb_reg_btype : btb_btype_9; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_138 = 6'ha == fb_wire_bindex ? fb_reg_btype : btb_btype_10; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_139 = 6'hb == fb_wire_bindex ? fb_reg_btype : btb_btype_11; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_140 = 6'hc == fb_wire_bindex ? fb_reg_btype : btb_btype_12; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_141 = 6'hd == fb_wire_bindex ? fb_reg_btype : btb_btype_13; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_142 = 6'he == fb_wire_bindex ? fb_reg_btype : btb_btype_14; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_143 = 6'hf == fb_wire_bindex ? fb_reg_btype : btb_btype_15; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_144 = 6'h10 == fb_wire_bindex ? fb_reg_btype : btb_btype_16; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_145 = 6'h11 == fb_wire_bindex ? fb_reg_btype : btb_btype_17; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_146 = 6'h12 == fb_wire_bindex ? fb_reg_btype : btb_btype_18; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_147 = 6'h13 == fb_wire_bindex ? fb_reg_btype : btb_btype_19; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_148 = 6'h14 == fb_wire_bindex ? fb_reg_btype : btb_btype_20; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_149 = 6'h15 == fb_wire_bindex ? fb_reg_btype : btb_btype_21; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_150 = 6'h16 == fb_wire_bindex ? fb_reg_btype : btb_btype_22; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_151 = 6'h17 == fb_wire_bindex ? fb_reg_btype : btb_btype_23; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_152 = 6'h18 == fb_wire_bindex ? fb_reg_btype : btb_btype_24; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_153 = 6'h19 == fb_wire_bindex ? fb_reg_btype : btb_btype_25; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_154 = 6'h1a == fb_wire_bindex ? fb_reg_btype : btb_btype_26; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_155 = 6'h1b == fb_wire_bindex ? fb_reg_btype : btb_btype_27; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_156 = 6'h1c == fb_wire_bindex ? fb_reg_btype : btb_btype_28; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_157 = 6'h1d == fb_wire_bindex ? fb_reg_btype : btb_btype_29; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_158 = 6'h1e == fb_wire_bindex ? fb_reg_btype : btb_btype_30; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_159 = 6'h1f == fb_wire_bindex ? fb_reg_btype : btb_btype_31; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_160 = 6'h20 == fb_wire_bindex ? fb_reg_btype : btb_btype_32; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_161 = 6'h21 == fb_wire_bindex ? fb_reg_btype : btb_btype_33; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_162 = 6'h22 == fb_wire_bindex ? fb_reg_btype : btb_btype_34; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_163 = 6'h23 == fb_wire_bindex ? fb_reg_btype : btb_btype_35; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_164 = 6'h24 == fb_wire_bindex ? fb_reg_btype : btb_btype_36; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_165 = 6'h25 == fb_wire_bindex ? fb_reg_btype : btb_btype_37; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_166 = 6'h26 == fb_wire_bindex ? fb_reg_btype : btb_btype_38; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_167 = 6'h27 == fb_wire_bindex ? fb_reg_btype : btb_btype_39; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_168 = 6'h28 == fb_wire_bindex ? fb_reg_btype : btb_btype_40; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_169 = 6'h29 == fb_wire_bindex ? fb_reg_btype : btb_btype_41; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_170 = 6'h2a == fb_wire_bindex ? fb_reg_btype : btb_btype_42; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_171 = 6'h2b == fb_wire_bindex ? fb_reg_btype : btb_btype_43; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_172 = 6'h2c == fb_wire_bindex ? fb_reg_btype : btb_btype_44; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_173 = 6'h2d == fb_wire_bindex ? fb_reg_btype : btb_btype_45; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_174 = 6'h2e == fb_wire_bindex ? fb_reg_btype : btb_btype_46; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_175 = 6'h2f == fb_wire_bindex ? fb_reg_btype : btb_btype_47; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_176 = 6'h30 == fb_wire_bindex ? fb_reg_btype : btb_btype_48; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_177 = 6'h31 == fb_wire_bindex ? fb_reg_btype : btb_btype_49; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_178 = 6'h32 == fb_wire_bindex ? fb_reg_btype : btb_btype_50; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_179 = 6'h33 == fb_wire_bindex ? fb_reg_btype : btb_btype_51; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_180 = 6'h34 == fb_wire_bindex ? fb_reg_btype : btb_btype_52; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_181 = 6'h35 == fb_wire_bindex ? fb_reg_btype : btb_btype_53; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_182 = 6'h36 == fb_wire_bindex ? fb_reg_btype : btb_btype_54; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_183 = 6'h37 == fb_wire_bindex ? fb_reg_btype : btb_btype_55; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_184 = 6'h38 == fb_wire_bindex ? fb_reg_btype : btb_btype_56; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_185 = 6'h39 == fb_wire_bindex ? fb_reg_btype : btb_btype_57; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_186 = 6'h3a == fb_wire_bindex ? fb_reg_btype : btb_btype_58; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_187 = 6'h3b == fb_wire_bindex ? fb_reg_btype : btb_btype_59; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_188 = 6'h3c == fb_wire_bindex ? fb_reg_btype : btb_btype_60; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_189 = 6'h3d == fb_wire_bindex ? fb_reg_btype : btb_btype_61; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_190 = 6'h3e == fb_wire_bindex ? fb_reg_btype : btb_btype_62; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_191 = 6'h3f == fb_wire_bindex ? fb_reg_btype : btb_btype_63; // @[BTB.scala 133:34:@2451.8]
  assign _GEN_192 = fb_reg_redirect ? _GEN_0 : btb_pc_0; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_193 = fb_reg_redirect ? _GEN_1 : btb_pc_1; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_194 = fb_reg_redirect ? _GEN_2 : btb_pc_2; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_195 = fb_reg_redirect ? _GEN_3 : btb_pc_3; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_196 = fb_reg_redirect ? _GEN_4 : btb_pc_4; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_197 = fb_reg_redirect ? _GEN_5 : btb_pc_5; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_198 = fb_reg_redirect ? _GEN_6 : btb_pc_6; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_199 = fb_reg_redirect ? _GEN_7 : btb_pc_7; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_200 = fb_reg_redirect ? _GEN_8 : btb_pc_8; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_201 = fb_reg_redirect ? _GEN_9 : btb_pc_9; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_202 = fb_reg_redirect ? _GEN_10 : btb_pc_10; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_203 = fb_reg_redirect ? _GEN_11 : btb_pc_11; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_204 = fb_reg_redirect ? _GEN_12 : btb_pc_12; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_205 = fb_reg_redirect ? _GEN_13 : btb_pc_13; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_206 = fb_reg_redirect ? _GEN_14 : btb_pc_14; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_207 = fb_reg_redirect ? _GEN_15 : btb_pc_15; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_208 = fb_reg_redirect ? _GEN_16 : btb_pc_16; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_209 = fb_reg_redirect ? _GEN_17 : btb_pc_17; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_210 = fb_reg_redirect ? _GEN_18 : btb_pc_18; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_211 = fb_reg_redirect ? _GEN_19 : btb_pc_19; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_212 = fb_reg_redirect ? _GEN_20 : btb_pc_20; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_213 = fb_reg_redirect ? _GEN_21 : btb_pc_21; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_214 = fb_reg_redirect ? _GEN_22 : btb_pc_22; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_215 = fb_reg_redirect ? _GEN_23 : btb_pc_23; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_216 = fb_reg_redirect ? _GEN_24 : btb_pc_24; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_217 = fb_reg_redirect ? _GEN_25 : btb_pc_25; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_218 = fb_reg_redirect ? _GEN_26 : btb_pc_26; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_219 = fb_reg_redirect ? _GEN_27 : btb_pc_27; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_220 = fb_reg_redirect ? _GEN_28 : btb_pc_28; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_221 = fb_reg_redirect ? _GEN_29 : btb_pc_29; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_222 = fb_reg_redirect ? _GEN_30 : btb_pc_30; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_223 = fb_reg_redirect ? _GEN_31 : btb_pc_31; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_224 = fb_reg_redirect ? _GEN_32 : btb_pc_32; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_225 = fb_reg_redirect ? _GEN_33 : btb_pc_33; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_226 = fb_reg_redirect ? _GEN_34 : btb_pc_34; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_227 = fb_reg_redirect ? _GEN_35 : btb_pc_35; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_228 = fb_reg_redirect ? _GEN_36 : btb_pc_36; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_229 = fb_reg_redirect ? _GEN_37 : btb_pc_37; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_230 = fb_reg_redirect ? _GEN_38 : btb_pc_38; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_231 = fb_reg_redirect ? _GEN_39 : btb_pc_39; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_232 = fb_reg_redirect ? _GEN_40 : btb_pc_40; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_233 = fb_reg_redirect ? _GEN_41 : btb_pc_41; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_234 = fb_reg_redirect ? _GEN_42 : btb_pc_42; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_235 = fb_reg_redirect ? _GEN_43 : btb_pc_43; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_236 = fb_reg_redirect ? _GEN_44 : btb_pc_44; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_237 = fb_reg_redirect ? _GEN_45 : btb_pc_45; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_238 = fb_reg_redirect ? _GEN_46 : btb_pc_46; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_239 = fb_reg_redirect ? _GEN_47 : btb_pc_47; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_240 = fb_reg_redirect ? _GEN_48 : btb_pc_48; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_241 = fb_reg_redirect ? _GEN_49 : btb_pc_49; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_242 = fb_reg_redirect ? _GEN_50 : btb_pc_50; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_243 = fb_reg_redirect ? _GEN_51 : btb_pc_51; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_244 = fb_reg_redirect ? _GEN_52 : btb_pc_52; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_245 = fb_reg_redirect ? _GEN_53 : btb_pc_53; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_246 = fb_reg_redirect ? _GEN_54 : btb_pc_54; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_247 = fb_reg_redirect ? _GEN_55 : btb_pc_55; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_248 = fb_reg_redirect ? _GEN_56 : btb_pc_56; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_249 = fb_reg_redirect ? _GEN_57 : btb_pc_57; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_250 = fb_reg_redirect ? _GEN_58 : btb_pc_58; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_251 = fb_reg_redirect ? _GEN_59 : btb_pc_59; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_252 = fb_reg_redirect ? _GEN_60 : btb_pc_60; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_253 = fb_reg_redirect ? _GEN_61 : btb_pc_61; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_254 = fb_reg_redirect ? _GEN_62 : btb_pc_62; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_255 = fb_reg_redirect ? _GEN_63 : btb_pc_63; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_256 = fb_reg_redirect ? _GEN_64 : btb_target_0; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_257 = fb_reg_redirect ? _GEN_65 : btb_target_1; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_258 = fb_reg_redirect ? _GEN_66 : btb_target_2; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_259 = fb_reg_redirect ? _GEN_67 : btb_target_3; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_260 = fb_reg_redirect ? _GEN_68 : btb_target_4; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_261 = fb_reg_redirect ? _GEN_69 : btb_target_5; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_262 = fb_reg_redirect ? _GEN_70 : btb_target_6; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_263 = fb_reg_redirect ? _GEN_71 : btb_target_7; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_264 = fb_reg_redirect ? _GEN_72 : btb_target_8; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_265 = fb_reg_redirect ? _GEN_73 : btb_target_9; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_266 = fb_reg_redirect ? _GEN_74 : btb_target_10; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_267 = fb_reg_redirect ? _GEN_75 : btb_target_11; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_268 = fb_reg_redirect ? _GEN_76 : btb_target_12; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_269 = fb_reg_redirect ? _GEN_77 : btb_target_13; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_270 = fb_reg_redirect ? _GEN_78 : btb_target_14; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_271 = fb_reg_redirect ? _GEN_79 : btb_target_15; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_272 = fb_reg_redirect ? _GEN_80 : btb_target_16; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_273 = fb_reg_redirect ? _GEN_81 : btb_target_17; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_274 = fb_reg_redirect ? _GEN_82 : btb_target_18; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_275 = fb_reg_redirect ? _GEN_83 : btb_target_19; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_276 = fb_reg_redirect ? _GEN_84 : btb_target_20; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_277 = fb_reg_redirect ? _GEN_85 : btb_target_21; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_278 = fb_reg_redirect ? _GEN_86 : btb_target_22; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_279 = fb_reg_redirect ? _GEN_87 : btb_target_23; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_280 = fb_reg_redirect ? _GEN_88 : btb_target_24; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_281 = fb_reg_redirect ? _GEN_89 : btb_target_25; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_282 = fb_reg_redirect ? _GEN_90 : btb_target_26; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_283 = fb_reg_redirect ? _GEN_91 : btb_target_27; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_284 = fb_reg_redirect ? _GEN_92 : btb_target_28; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_285 = fb_reg_redirect ? _GEN_93 : btb_target_29; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_286 = fb_reg_redirect ? _GEN_94 : btb_target_30; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_287 = fb_reg_redirect ? _GEN_95 : btb_target_31; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_288 = fb_reg_redirect ? _GEN_96 : btb_target_32; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_289 = fb_reg_redirect ? _GEN_97 : btb_target_33; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_290 = fb_reg_redirect ? _GEN_98 : btb_target_34; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_291 = fb_reg_redirect ? _GEN_99 : btb_target_35; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_292 = fb_reg_redirect ? _GEN_100 : btb_target_36; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_293 = fb_reg_redirect ? _GEN_101 : btb_target_37; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_294 = fb_reg_redirect ? _GEN_102 : btb_target_38; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_295 = fb_reg_redirect ? _GEN_103 : btb_target_39; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_296 = fb_reg_redirect ? _GEN_104 : btb_target_40; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_297 = fb_reg_redirect ? _GEN_105 : btb_target_41; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_298 = fb_reg_redirect ? _GEN_106 : btb_target_42; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_299 = fb_reg_redirect ? _GEN_107 : btb_target_43; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_300 = fb_reg_redirect ? _GEN_108 : btb_target_44; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_301 = fb_reg_redirect ? _GEN_109 : btb_target_45; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_302 = fb_reg_redirect ? _GEN_110 : btb_target_46; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_303 = fb_reg_redirect ? _GEN_111 : btb_target_47; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_304 = fb_reg_redirect ? _GEN_112 : btb_target_48; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_305 = fb_reg_redirect ? _GEN_113 : btb_target_49; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_306 = fb_reg_redirect ? _GEN_114 : btb_target_50; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_307 = fb_reg_redirect ? _GEN_115 : btb_target_51; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_308 = fb_reg_redirect ? _GEN_116 : btb_target_52; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_309 = fb_reg_redirect ? _GEN_117 : btb_target_53; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_310 = fb_reg_redirect ? _GEN_118 : btb_target_54; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_311 = fb_reg_redirect ? _GEN_119 : btb_target_55; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_312 = fb_reg_redirect ? _GEN_120 : btb_target_56; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_313 = fb_reg_redirect ? _GEN_121 : btb_target_57; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_314 = fb_reg_redirect ? _GEN_122 : btb_target_58; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_315 = fb_reg_redirect ? _GEN_123 : btb_target_59; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_316 = fb_reg_redirect ? _GEN_124 : btb_target_60; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_317 = fb_reg_redirect ? _GEN_125 : btb_target_61; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_318 = fb_reg_redirect ? _GEN_126 : btb_target_62; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_319 = fb_reg_redirect ? _GEN_127 : btb_target_63; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_320 = fb_reg_redirect ? _GEN_128 : btb_btype_0; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_321 = fb_reg_redirect ? _GEN_129 : btb_btype_1; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_322 = fb_reg_redirect ? _GEN_130 : btb_btype_2; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_323 = fb_reg_redirect ? _GEN_131 : btb_btype_3; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_324 = fb_reg_redirect ? _GEN_132 : btb_btype_4; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_325 = fb_reg_redirect ? _GEN_133 : btb_btype_5; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_326 = fb_reg_redirect ? _GEN_134 : btb_btype_6; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_327 = fb_reg_redirect ? _GEN_135 : btb_btype_7; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_328 = fb_reg_redirect ? _GEN_136 : btb_btype_8; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_329 = fb_reg_redirect ? _GEN_137 : btb_btype_9; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_330 = fb_reg_redirect ? _GEN_138 : btb_btype_10; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_331 = fb_reg_redirect ? _GEN_139 : btb_btype_11; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_332 = fb_reg_redirect ? _GEN_140 : btb_btype_12; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_333 = fb_reg_redirect ? _GEN_141 : btb_btype_13; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_334 = fb_reg_redirect ? _GEN_142 : btb_btype_14; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_335 = fb_reg_redirect ? _GEN_143 : btb_btype_15; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_336 = fb_reg_redirect ? _GEN_144 : btb_btype_16; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_337 = fb_reg_redirect ? _GEN_145 : btb_btype_17; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_338 = fb_reg_redirect ? _GEN_146 : btb_btype_18; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_339 = fb_reg_redirect ? _GEN_147 : btb_btype_19; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_340 = fb_reg_redirect ? _GEN_148 : btb_btype_20; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_341 = fb_reg_redirect ? _GEN_149 : btb_btype_21; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_342 = fb_reg_redirect ? _GEN_150 : btb_btype_22; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_343 = fb_reg_redirect ? _GEN_151 : btb_btype_23; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_344 = fb_reg_redirect ? _GEN_152 : btb_btype_24; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_345 = fb_reg_redirect ? _GEN_153 : btb_btype_25; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_346 = fb_reg_redirect ? _GEN_154 : btb_btype_26; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_347 = fb_reg_redirect ? _GEN_155 : btb_btype_27; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_348 = fb_reg_redirect ? _GEN_156 : btb_btype_28; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_349 = fb_reg_redirect ? _GEN_157 : btb_btype_29; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_350 = fb_reg_redirect ? _GEN_158 : btb_btype_30; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_351 = fb_reg_redirect ? _GEN_159 : btb_btype_31; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_352 = fb_reg_redirect ? _GEN_160 : btb_btype_32; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_353 = fb_reg_redirect ? _GEN_161 : btb_btype_33; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_354 = fb_reg_redirect ? _GEN_162 : btb_btype_34; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_355 = fb_reg_redirect ? _GEN_163 : btb_btype_35; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_356 = fb_reg_redirect ? _GEN_164 : btb_btype_36; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_357 = fb_reg_redirect ? _GEN_165 : btb_btype_37; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_358 = fb_reg_redirect ? _GEN_166 : btb_btype_38; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_359 = fb_reg_redirect ? _GEN_167 : btb_btype_39; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_360 = fb_reg_redirect ? _GEN_168 : btb_btype_40; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_361 = fb_reg_redirect ? _GEN_169 : btb_btype_41; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_362 = fb_reg_redirect ? _GEN_170 : btb_btype_42; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_363 = fb_reg_redirect ? _GEN_171 : btb_btype_43; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_364 = fb_reg_redirect ? _GEN_172 : btb_btype_44; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_365 = fb_reg_redirect ? _GEN_173 : btb_btype_45; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_366 = fb_reg_redirect ? _GEN_174 : btb_btype_46; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_367 = fb_reg_redirect ? _GEN_175 : btb_btype_47; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_368 = fb_reg_redirect ? _GEN_176 : btb_btype_48; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_369 = fb_reg_redirect ? _GEN_177 : btb_btype_49; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_370 = fb_reg_redirect ? _GEN_178 : btb_btype_50; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_371 = fb_reg_redirect ? _GEN_179 : btb_btype_51; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_372 = fb_reg_redirect ? _GEN_180 : btb_btype_52; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_373 = fb_reg_redirect ? _GEN_181 : btb_btype_53; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_374 = fb_reg_redirect ? _GEN_182 : btb_btype_54; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_375 = fb_reg_redirect ? _GEN_183 : btb_btype_55; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_376 = fb_reg_redirect ? _GEN_184 : btb_btype_56; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_377 = fb_reg_redirect ? _GEN_185 : btb_btype_57; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_378 = fb_reg_redirect ? _GEN_186 : btb_btype_58; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_379 = fb_reg_redirect ? _GEN_187 : btb_btype_59; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_380 = fb_reg_redirect ? _GEN_188 : btb_btype_60; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_381 = fb_reg_redirect ? _GEN_189 : btb_btype_61; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_382 = fb_reg_redirect ? _GEN_190 : btb_btype_62; // @[BTB.scala 130:28:@2448.6]
  assign _GEN_383 = fb_reg_redirect ? _GEN_191 : btb_btype_63; // @[BTB.scala 130:28:@2448.6]
  assign _T_2866 = fb_reg_btype == 2'h2; // @[BTB.scala 135:24:@2453.6]
  assign _T_2870 = fb_wire_hcount != 2'h0; // @[BTB.scala 57:42:@2458.12]
  assign _T_2871 = fb_wire_hcount[1]; // @[BTB.scala 57:49:@2459.12]
  assign _T_2872 = fb_wire_hcount[0]; // @[BTB.scala 57:58:@2460.12]
  assign _T_2874 = _T_2872 == 1'h0; // @[BTB.scala 57:56:@2461.12]
  assign _T_2875 = _T_2871 | _T_2874; // @[BTB.scala 57:53:@2462.12]
  assign _T_2876 = {_T_2870,_T_2875}; // @[Cat.scala 30:58:@2463.12]
  assign _GEN_384 = 6'h0 == fb_wire_bindex ? _T_2876 : btb_hcount_0; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_385 = 6'h1 == fb_wire_bindex ? _T_2876 : btb_hcount_1; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_386 = 6'h2 == fb_wire_bindex ? _T_2876 : btb_hcount_2; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_387 = 6'h3 == fb_wire_bindex ? _T_2876 : btb_hcount_3; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_388 = 6'h4 == fb_wire_bindex ? _T_2876 : btb_hcount_4; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_389 = 6'h5 == fb_wire_bindex ? _T_2876 : btb_hcount_5; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_390 = 6'h6 == fb_wire_bindex ? _T_2876 : btb_hcount_6; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_391 = 6'h7 == fb_wire_bindex ? _T_2876 : btb_hcount_7; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_392 = 6'h8 == fb_wire_bindex ? _T_2876 : btb_hcount_8; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_393 = 6'h9 == fb_wire_bindex ? _T_2876 : btb_hcount_9; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_394 = 6'ha == fb_wire_bindex ? _T_2876 : btb_hcount_10; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_395 = 6'hb == fb_wire_bindex ? _T_2876 : btb_hcount_11; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_396 = 6'hc == fb_wire_bindex ? _T_2876 : btb_hcount_12; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_397 = 6'hd == fb_wire_bindex ? _T_2876 : btb_hcount_13; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_398 = 6'he == fb_wire_bindex ? _T_2876 : btb_hcount_14; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_399 = 6'hf == fb_wire_bindex ? _T_2876 : btb_hcount_15; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_400 = 6'h10 == fb_wire_bindex ? _T_2876 : btb_hcount_16; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_401 = 6'h11 == fb_wire_bindex ? _T_2876 : btb_hcount_17; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_402 = 6'h12 == fb_wire_bindex ? _T_2876 : btb_hcount_18; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_403 = 6'h13 == fb_wire_bindex ? _T_2876 : btb_hcount_19; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_404 = 6'h14 == fb_wire_bindex ? _T_2876 : btb_hcount_20; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_405 = 6'h15 == fb_wire_bindex ? _T_2876 : btb_hcount_21; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_406 = 6'h16 == fb_wire_bindex ? _T_2876 : btb_hcount_22; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_407 = 6'h17 == fb_wire_bindex ? _T_2876 : btb_hcount_23; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_408 = 6'h18 == fb_wire_bindex ? _T_2876 : btb_hcount_24; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_409 = 6'h19 == fb_wire_bindex ? _T_2876 : btb_hcount_25; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_410 = 6'h1a == fb_wire_bindex ? _T_2876 : btb_hcount_26; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_411 = 6'h1b == fb_wire_bindex ? _T_2876 : btb_hcount_27; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_412 = 6'h1c == fb_wire_bindex ? _T_2876 : btb_hcount_28; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_413 = 6'h1d == fb_wire_bindex ? _T_2876 : btb_hcount_29; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_414 = 6'h1e == fb_wire_bindex ? _T_2876 : btb_hcount_30; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_415 = 6'h1f == fb_wire_bindex ? _T_2876 : btb_hcount_31; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_416 = 6'h20 == fb_wire_bindex ? _T_2876 : btb_hcount_32; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_417 = 6'h21 == fb_wire_bindex ? _T_2876 : btb_hcount_33; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_418 = 6'h22 == fb_wire_bindex ? _T_2876 : btb_hcount_34; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_419 = 6'h23 == fb_wire_bindex ? _T_2876 : btb_hcount_35; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_420 = 6'h24 == fb_wire_bindex ? _T_2876 : btb_hcount_36; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_421 = 6'h25 == fb_wire_bindex ? _T_2876 : btb_hcount_37; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_422 = 6'h26 == fb_wire_bindex ? _T_2876 : btb_hcount_38; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_423 = 6'h27 == fb_wire_bindex ? _T_2876 : btb_hcount_39; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_424 = 6'h28 == fb_wire_bindex ? _T_2876 : btb_hcount_40; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_425 = 6'h29 == fb_wire_bindex ? _T_2876 : btb_hcount_41; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_426 = 6'h2a == fb_wire_bindex ? _T_2876 : btb_hcount_42; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_427 = 6'h2b == fb_wire_bindex ? _T_2876 : btb_hcount_43; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_428 = 6'h2c == fb_wire_bindex ? _T_2876 : btb_hcount_44; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_429 = 6'h2d == fb_wire_bindex ? _T_2876 : btb_hcount_45; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_430 = 6'h2e == fb_wire_bindex ? _T_2876 : btb_hcount_46; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_431 = 6'h2f == fb_wire_bindex ? _T_2876 : btb_hcount_47; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_432 = 6'h30 == fb_wire_bindex ? _T_2876 : btb_hcount_48; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_433 = 6'h31 == fb_wire_bindex ? _T_2876 : btb_hcount_49; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_434 = 6'h32 == fb_wire_bindex ? _T_2876 : btb_hcount_50; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_435 = 6'h33 == fb_wire_bindex ? _T_2876 : btb_hcount_51; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_436 = 6'h34 == fb_wire_bindex ? _T_2876 : btb_hcount_52; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_437 = 6'h35 == fb_wire_bindex ? _T_2876 : btb_hcount_53; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_438 = 6'h36 == fb_wire_bindex ? _T_2876 : btb_hcount_54; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_439 = 6'h37 == fb_wire_bindex ? _T_2876 : btb_hcount_55; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_440 = 6'h38 == fb_wire_bindex ? _T_2876 : btb_hcount_56; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_441 = 6'h39 == fb_wire_bindex ? _T_2876 : btb_hcount_57; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_442 = 6'h3a == fb_wire_bindex ? _T_2876 : btb_hcount_58; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_443 = 6'h3b == fb_wire_bindex ? _T_2876 : btb_hcount_59; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_444 = 6'h3c == fb_wire_bindex ? _T_2876 : btb_hcount_60; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_445 = 6'h3d == fb_wire_bindex ? _T_2876 : btb_hcount_61; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_446 = 6'h3e == fb_wire_bindex ? _T_2876 : btb_hcount_62; // @[BTB.scala 138:38:@2464.12]
  assign _GEN_447 = 6'h3f == fb_wire_bindex ? _T_2876 : btb_hcount_63; // @[BTB.scala 138:38:@2464.12]
  assign _T_2877 = ~ fb_wire_hcount; // @[BTB.scala 58:42:@2467.12]
  assign _T_2879 = _T_2877 == 2'h0; // @[BTB.scala 58:42:@2468.12]
  assign _T_2884 = _T_2871 & _T_2874; // @[BTB.scala 58:53:@2472.12]
  assign _T_2885 = {_T_2879,_T_2884}; // @[Cat.scala 30:58:@2473.12]
  assign _GEN_448 = 6'h0 == fb_wire_bindex ? _T_2885 : btb_hcount_0; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_449 = 6'h1 == fb_wire_bindex ? _T_2885 : btb_hcount_1; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_450 = 6'h2 == fb_wire_bindex ? _T_2885 : btb_hcount_2; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_451 = 6'h3 == fb_wire_bindex ? _T_2885 : btb_hcount_3; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_452 = 6'h4 == fb_wire_bindex ? _T_2885 : btb_hcount_4; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_453 = 6'h5 == fb_wire_bindex ? _T_2885 : btb_hcount_5; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_454 = 6'h6 == fb_wire_bindex ? _T_2885 : btb_hcount_6; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_455 = 6'h7 == fb_wire_bindex ? _T_2885 : btb_hcount_7; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_456 = 6'h8 == fb_wire_bindex ? _T_2885 : btb_hcount_8; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_457 = 6'h9 == fb_wire_bindex ? _T_2885 : btb_hcount_9; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_458 = 6'ha == fb_wire_bindex ? _T_2885 : btb_hcount_10; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_459 = 6'hb == fb_wire_bindex ? _T_2885 : btb_hcount_11; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_460 = 6'hc == fb_wire_bindex ? _T_2885 : btb_hcount_12; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_461 = 6'hd == fb_wire_bindex ? _T_2885 : btb_hcount_13; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_462 = 6'he == fb_wire_bindex ? _T_2885 : btb_hcount_14; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_463 = 6'hf == fb_wire_bindex ? _T_2885 : btb_hcount_15; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_464 = 6'h10 == fb_wire_bindex ? _T_2885 : btb_hcount_16; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_465 = 6'h11 == fb_wire_bindex ? _T_2885 : btb_hcount_17; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_466 = 6'h12 == fb_wire_bindex ? _T_2885 : btb_hcount_18; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_467 = 6'h13 == fb_wire_bindex ? _T_2885 : btb_hcount_19; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_468 = 6'h14 == fb_wire_bindex ? _T_2885 : btb_hcount_20; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_469 = 6'h15 == fb_wire_bindex ? _T_2885 : btb_hcount_21; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_470 = 6'h16 == fb_wire_bindex ? _T_2885 : btb_hcount_22; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_471 = 6'h17 == fb_wire_bindex ? _T_2885 : btb_hcount_23; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_472 = 6'h18 == fb_wire_bindex ? _T_2885 : btb_hcount_24; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_473 = 6'h19 == fb_wire_bindex ? _T_2885 : btb_hcount_25; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_474 = 6'h1a == fb_wire_bindex ? _T_2885 : btb_hcount_26; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_475 = 6'h1b == fb_wire_bindex ? _T_2885 : btb_hcount_27; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_476 = 6'h1c == fb_wire_bindex ? _T_2885 : btb_hcount_28; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_477 = 6'h1d == fb_wire_bindex ? _T_2885 : btb_hcount_29; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_478 = 6'h1e == fb_wire_bindex ? _T_2885 : btb_hcount_30; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_479 = 6'h1f == fb_wire_bindex ? _T_2885 : btb_hcount_31; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_480 = 6'h20 == fb_wire_bindex ? _T_2885 : btb_hcount_32; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_481 = 6'h21 == fb_wire_bindex ? _T_2885 : btb_hcount_33; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_482 = 6'h22 == fb_wire_bindex ? _T_2885 : btb_hcount_34; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_483 = 6'h23 == fb_wire_bindex ? _T_2885 : btb_hcount_35; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_484 = 6'h24 == fb_wire_bindex ? _T_2885 : btb_hcount_36; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_485 = 6'h25 == fb_wire_bindex ? _T_2885 : btb_hcount_37; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_486 = 6'h26 == fb_wire_bindex ? _T_2885 : btb_hcount_38; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_487 = 6'h27 == fb_wire_bindex ? _T_2885 : btb_hcount_39; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_488 = 6'h28 == fb_wire_bindex ? _T_2885 : btb_hcount_40; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_489 = 6'h29 == fb_wire_bindex ? _T_2885 : btb_hcount_41; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_490 = 6'h2a == fb_wire_bindex ? _T_2885 : btb_hcount_42; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_491 = 6'h2b == fb_wire_bindex ? _T_2885 : btb_hcount_43; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_492 = 6'h2c == fb_wire_bindex ? _T_2885 : btb_hcount_44; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_493 = 6'h2d == fb_wire_bindex ? _T_2885 : btb_hcount_45; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_494 = 6'h2e == fb_wire_bindex ? _T_2885 : btb_hcount_46; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_495 = 6'h2f == fb_wire_bindex ? _T_2885 : btb_hcount_47; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_496 = 6'h30 == fb_wire_bindex ? _T_2885 : btb_hcount_48; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_497 = 6'h31 == fb_wire_bindex ? _T_2885 : btb_hcount_49; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_498 = 6'h32 == fb_wire_bindex ? _T_2885 : btb_hcount_50; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_499 = 6'h33 == fb_wire_bindex ? _T_2885 : btb_hcount_51; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_500 = 6'h34 == fb_wire_bindex ? _T_2885 : btb_hcount_52; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_501 = 6'h35 == fb_wire_bindex ? _T_2885 : btb_hcount_53; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_502 = 6'h36 == fb_wire_bindex ? _T_2885 : btb_hcount_54; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_503 = 6'h37 == fb_wire_bindex ? _T_2885 : btb_hcount_55; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_504 = 6'h38 == fb_wire_bindex ? _T_2885 : btb_hcount_56; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_505 = 6'h39 == fb_wire_bindex ? _T_2885 : btb_hcount_57; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_506 = 6'h3a == fb_wire_bindex ? _T_2885 : btb_hcount_58; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_507 = 6'h3b == fb_wire_bindex ? _T_2885 : btb_hcount_59; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_508 = 6'h3c == fb_wire_bindex ? _T_2885 : btb_hcount_60; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_509 = 6'h3d == fb_wire_bindex ? _T_2885 : btb_hcount_61; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_510 = 6'h3e == fb_wire_bindex ? _T_2885 : btb_hcount_62; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_511 = 6'h3f == fb_wire_bindex ? _T_2885 : btb_hcount_63; // @[BTB.scala 140:38:@2474.12]
  assign _GEN_512 = fb_reg_redirect ? _GEN_384 : _GEN_448; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_513 = fb_reg_redirect ? _GEN_385 : _GEN_449; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_514 = fb_reg_redirect ? _GEN_386 : _GEN_450; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_515 = fb_reg_redirect ? _GEN_387 : _GEN_451; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_516 = fb_reg_redirect ? _GEN_388 : _GEN_452; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_517 = fb_reg_redirect ? _GEN_389 : _GEN_453; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_518 = fb_reg_redirect ? _GEN_390 : _GEN_454; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_519 = fb_reg_redirect ? _GEN_391 : _GEN_455; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_520 = fb_reg_redirect ? _GEN_392 : _GEN_456; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_521 = fb_reg_redirect ? _GEN_393 : _GEN_457; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_522 = fb_reg_redirect ? _GEN_394 : _GEN_458; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_523 = fb_reg_redirect ? _GEN_395 : _GEN_459; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_524 = fb_reg_redirect ? _GEN_396 : _GEN_460; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_525 = fb_reg_redirect ? _GEN_397 : _GEN_461; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_526 = fb_reg_redirect ? _GEN_398 : _GEN_462; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_527 = fb_reg_redirect ? _GEN_399 : _GEN_463; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_528 = fb_reg_redirect ? _GEN_400 : _GEN_464; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_529 = fb_reg_redirect ? _GEN_401 : _GEN_465; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_530 = fb_reg_redirect ? _GEN_402 : _GEN_466; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_531 = fb_reg_redirect ? _GEN_403 : _GEN_467; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_532 = fb_reg_redirect ? _GEN_404 : _GEN_468; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_533 = fb_reg_redirect ? _GEN_405 : _GEN_469; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_534 = fb_reg_redirect ? _GEN_406 : _GEN_470; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_535 = fb_reg_redirect ? _GEN_407 : _GEN_471; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_536 = fb_reg_redirect ? _GEN_408 : _GEN_472; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_537 = fb_reg_redirect ? _GEN_409 : _GEN_473; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_538 = fb_reg_redirect ? _GEN_410 : _GEN_474; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_539 = fb_reg_redirect ? _GEN_411 : _GEN_475; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_540 = fb_reg_redirect ? _GEN_412 : _GEN_476; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_541 = fb_reg_redirect ? _GEN_413 : _GEN_477; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_542 = fb_reg_redirect ? _GEN_414 : _GEN_478; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_543 = fb_reg_redirect ? _GEN_415 : _GEN_479; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_544 = fb_reg_redirect ? _GEN_416 : _GEN_480; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_545 = fb_reg_redirect ? _GEN_417 : _GEN_481; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_546 = fb_reg_redirect ? _GEN_418 : _GEN_482; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_547 = fb_reg_redirect ? _GEN_419 : _GEN_483; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_548 = fb_reg_redirect ? _GEN_420 : _GEN_484; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_549 = fb_reg_redirect ? _GEN_421 : _GEN_485; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_550 = fb_reg_redirect ? _GEN_422 : _GEN_486; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_551 = fb_reg_redirect ? _GEN_423 : _GEN_487; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_552 = fb_reg_redirect ? _GEN_424 : _GEN_488; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_553 = fb_reg_redirect ? _GEN_425 : _GEN_489; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_554 = fb_reg_redirect ? _GEN_426 : _GEN_490; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_555 = fb_reg_redirect ? _GEN_427 : _GEN_491; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_556 = fb_reg_redirect ? _GEN_428 : _GEN_492; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_557 = fb_reg_redirect ? _GEN_429 : _GEN_493; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_558 = fb_reg_redirect ? _GEN_430 : _GEN_494; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_559 = fb_reg_redirect ? _GEN_431 : _GEN_495; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_560 = fb_reg_redirect ? _GEN_432 : _GEN_496; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_561 = fb_reg_redirect ? _GEN_433 : _GEN_497; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_562 = fb_reg_redirect ? _GEN_434 : _GEN_498; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_563 = fb_reg_redirect ? _GEN_435 : _GEN_499; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_564 = fb_reg_redirect ? _GEN_436 : _GEN_500; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_565 = fb_reg_redirect ? _GEN_437 : _GEN_501; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_566 = fb_reg_redirect ? _GEN_438 : _GEN_502; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_567 = fb_reg_redirect ? _GEN_439 : _GEN_503; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_568 = fb_reg_redirect ? _GEN_440 : _GEN_504; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_569 = fb_reg_redirect ? _GEN_441 : _GEN_505; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_570 = fb_reg_redirect ? _GEN_442 : _GEN_506; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_571 = fb_reg_redirect ? _GEN_443 : _GEN_507; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_572 = fb_reg_redirect ? _GEN_444 : _GEN_508; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_573 = fb_reg_redirect ? _GEN_445 : _GEN_509; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_574 = fb_reg_redirect ? _GEN_446 : _GEN_510; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_575 = fb_reg_redirect ? _GEN_447 : _GEN_511; // @[BTB.scala 137:32:@2457.10]
  assign _GEN_576 = 6'h0 == fb_wire_bindex ? 2'h2 : btb_hcount_0; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_577 = 6'h1 == fb_wire_bindex ? 2'h2 : btb_hcount_1; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_578 = 6'h2 == fb_wire_bindex ? 2'h2 : btb_hcount_2; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_579 = 6'h3 == fb_wire_bindex ? 2'h2 : btb_hcount_3; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_580 = 6'h4 == fb_wire_bindex ? 2'h2 : btb_hcount_4; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_581 = 6'h5 == fb_wire_bindex ? 2'h2 : btb_hcount_5; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_582 = 6'h6 == fb_wire_bindex ? 2'h2 : btb_hcount_6; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_583 = 6'h7 == fb_wire_bindex ? 2'h2 : btb_hcount_7; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_584 = 6'h8 == fb_wire_bindex ? 2'h2 : btb_hcount_8; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_585 = 6'h9 == fb_wire_bindex ? 2'h2 : btb_hcount_9; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_586 = 6'ha == fb_wire_bindex ? 2'h2 : btb_hcount_10; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_587 = 6'hb == fb_wire_bindex ? 2'h2 : btb_hcount_11; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_588 = 6'hc == fb_wire_bindex ? 2'h2 : btb_hcount_12; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_589 = 6'hd == fb_wire_bindex ? 2'h2 : btb_hcount_13; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_590 = 6'he == fb_wire_bindex ? 2'h2 : btb_hcount_14; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_591 = 6'hf == fb_wire_bindex ? 2'h2 : btb_hcount_15; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_592 = 6'h10 == fb_wire_bindex ? 2'h2 : btb_hcount_16; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_593 = 6'h11 == fb_wire_bindex ? 2'h2 : btb_hcount_17; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_594 = 6'h12 == fb_wire_bindex ? 2'h2 : btb_hcount_18; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_595 = 6'h13 == fb_wire_bindex ? 2'h2 : btb_hcount_19; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_596 = 6'h14 == fb_wire_bindex ? 2'h2 : btb_hcount_20; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_597 = 6'h15 == fb_wire_bindex ? 2'h2 : btb_hcount_21; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_598 = 6'h16 == fb_wire_bindex ? 2'h2 : btb_hcount_22; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_599 = 6'h17 == fb_wire_bindex ? 2'h2 : btb_hcount_23; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_600 = 6'h18 == fb_wire_bindex ? 2'h2 : btb_hcount_24; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_601 = 6'h19 == fb_wire_bindex ? 2'h2 : btb_hcount_25; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_602 = 6'h1a == fb_wire_bindex ? 2'h2 : btb_hcount_26; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_603 = 6'h1b == fb_wire_bindex ? 2'h2 : btb_hcount_27; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_604 = 6'h1c == fb_wire_bindex ? 2'h2 : btb_hcount_28; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_605 = 6'h1d == fb_wire_bindex ? 2'h2 : btb_hcount_29; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_606 = 6'h1e == fb_wire_bindex ? 2'h2 : btb_hcount_30; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_607 = 6'h1f == fb_wire_bindex ? 2'h2 : btb_hcount_31; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_608 = 6'h20 == fb_wire_bindex ? 2'h2 : btb_hcount_32; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_609 = 6'h21 == fb_wire_bindex ? 2'h2 : btb_hcount_33; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_610 = 6'h22 == fb_wire_bindex ? 2'h2 : btb_hcount_34; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_611 = 6'h23 == fb_wire_bindex ? 2'h2 : btb_hcount_35; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_612 = 6'h24 == fb_wire_bindex ? 2'h2 : btb_hcount_36; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_613 = 6'h25 == fb_wire_bindex ? 2'h2 : btb_hcount_37; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_614 = 6'h26 == fb_wire_bindex ? 2'h2 : btb_hcount_38; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_615 = 6'h27 == fb_wire_bindex ? 2'h2 : btb_hcount_39; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_616 = 6'h28 == fb_wire_bindex ? 2'h2 : btb_hcount_40; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_617 = 6'h29 == fb_wire_bindex ? 2'h2 : btb_hcount_41; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_618 = 6'h2a == fb_wire_bindex ? 2'h2 : btb_hcount_42; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_619 = 6'h2b == fb_wire_bindex ? 2'h2 : btb_hcount_43; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_620 = 6'h2c == fb_wire_bindex ? 2'h2 : btb_hcount_44; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_621 = 6'h2d == fb_wire_bindex ? 2'h2 : btb_hcount_45; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_622 = 6'h2e == fb_wire_bindex ? 2'h2 : btb_hcount_46; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_623 = 6'h2f == fb_wire_bindex ? 2'h2 : btb_hcount_47; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_624 = 6'h30 == fb_wire_bindex ? 2'h2 : btb_hcount_48; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_625 = 6'h31 == fb_wire_bindex ? 2'h2 : btb_hcount_49; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_626 = 6'h32 == fb_wire_bindex ? 2'h2 : btb_hcount_50; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_627 = 6'h33 == fb_wire_bindex ? 2'h2 : btb_hcount_51; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_628 = 6'h34 == fb_wire_bindex ? 2'h2 : btb_hcount_52; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_629 = 6'h35 == fb_wire_bindex ? 2'h2 : btb_hcount_53; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_630 = 6'h36 == fb_wire_bindex ? 2'h2 : btb_hcount_54; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_631 = 6'h37 == fb_wire_bindex ? 2'h2 : btb_hcount_55; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_632 = 6'h38 == fb_wire_bindex ? 2'h2 : btb_hcount_56; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_633 = 6'h39 == fb_wire_bindex ? 2'h2 : btb_hcount_57; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_634 = 6'h3a == fb_wire_bindex ? 2'h2 : btb_hcount_58; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_635 = 6'h3b == fb_wire_bindex ? 2'h2 : btb_hcount_59; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_636 = 6'h3c == fb_wire_bindex ? 2'h2 : btb_hcount_60; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_637 = 6'h3d == fb_wire_bindex ? 2'h2 : btb_hcount_61; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_638 = 6'h3e == fb_wire_bindex ? 2'h2 : btb_hcount_62; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_639 = 6'h3f == fb_wire_bindex ? 2'h2 : btb_hcount_63; // @[BTB.scala 143:36:@2479.12]
  assign _GEN_640 = fb_reg_redirect ? _GEN_576 : btb_hcount_0; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_641 = fb_reg_redirect ? _GEN_577 : btb_hcount_1; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_642 = fb_reg_redirect ? _GEN_578 : btb_hcount_2; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_643 = fb_reg_redirect ? _GEN_579 : btb_hcount_3; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_644 = fb_reg_redirect ? _GEN_580 : btb_hcount_4; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_645 = fb_reg_redirect ? _GEN_581 : btb_hcount_5; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_646 = fb_reg_redirect ? _GEN_582 : btb_hcount_6; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_647 = fb_reg_redirect ? _GEN_583 : btb_hcount_7; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_648 = fb_reg_redirect ? _GEN_584 : btb_hcount_8; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_649 = fb_reg_redirect ? _GEN_585 : btb_hcount_9; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_650 = fb_reg_redirect ? _GEN_586 : btb_hcount_10; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_651 = fb_reg_redirect ? _GEN_587 : btb_hcount_11; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_652 = fb_reg_redirect ? _GEN_588 : btb_hcount_12; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_653 = fb_reg_redirect ? _GEN_589 : btb_hcount_13; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_654 = fb_reg_redirect ? _GEN_590 : btb_hcount_14; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_655 = fb_reg_redirect ? _GEN_591 : btb_hcount_15; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_656 = fb_reg_redirect ? _GEN_592 : btb_hcount_16; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_657 = fb_reg_redirect ? _GEN_593 : btb_hcount_17; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_658 = fb_reg_redirect ? _GEN_594 : btb_hcount_18; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_659 = fb_reg_redirect ? _GEN_595 : btb_hcount_19; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_660 = fb_reg_redirect ? _GEN_596 : btb_hcount_20; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_661 = fb_reg_redirect ? _GEN_597 : btb_hcount_21; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_662 = fb_reg_redirect ? _GEN_598 : btb_hcount_22; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_663 = fb_reg_redirect ? _GEN_599 : btb_hcount_23; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_664 = fb_reg_redirect ? _GEN_600 : btb_hcount_24; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_665 = fb_reg_redirect ? _GEN_601 : btb_hcount_25; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_666 = fb_reg_redirect ? _GEN_602 : btb_hcount_26; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_667 = fb_reg_redirect ? _GEN_603 : btb_hcount_27; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_668 = fb_reg_redirect ? _GEN_604 : btb_hcount_28; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_669 = fb_reg_redirect ? _GEN_605 : btb_hcount_29; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_670 = fb_reg_redirect ? _GEN_606 : btb_hcount_30; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_671 = fb_reg_redirect ? _GEN_607 : btb_hcount_31; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_672 = fb_reg_redirect ? _GEN_608 : btb_hcount_32; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_673 = fb_reg_redirect ? _GEN_609 : btb_hcount_33; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_674 = fb_reg_redirect ? _GEN_610 : btb_hcount_34; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_675 = fb_reg_redirect ? _GEN_611 : btb_hcount_35; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_676 = fb_reg_redirect ? _GEN_612 : btb_hcount_36; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_677 = fb_reg_redirect ? _GEN_613 : btb_hcount_37; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_678 = fb_reg_redirect ? _GEN_614 : btb_hcount_38; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_679 = fb_reg_redirect ? _GEN_615 : btb_hcount_39; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_680 = fb_reg_redirect ? _GEN_616 : btb_hcount_40; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_681 = fb_reg_redirect ? _GEN_617 : btb_hcount_41; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_682 = fb_reg_redirect ? _GEN_618 : btb_hcount_42; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_683 = fb_reg_redirect ? _GEN_619 : btb_hcount_43; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_684 = fb_reg_redirect ? _GEN_620 : btb_hcount_44; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_685 = fb_reg_redirect ? _GEN_621 : btb_hcount_45; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_686 = fb_reg_redirect ? _GEN_622 : btb_hcount_46; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_687 = fb_reg_redirect ? _GEN_623 : btb_hcount_47; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_688 = fb_reg_redirect ? _GEN_624 : btb_hcount_48; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_689 = fb_reg_redirect ? _GEN_625 : btb_hcount_49; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_690 = fb_reg_redirect ? _GEN_626 : btb_hcount_50; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_691 = fb_reg_redirect ? _GEN_627 : btb_hcount_51; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_692 = fb_reg_redirect ? _GEN_628 : btb_hcount_52; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_693 = fb_reg_redirect ? _GEN_629 : btb_hcount_53; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_694 = fb_reg_redirect ? _GEN_630 : btb_hcount_54; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_695 = fb_reg_redirect ? _GEN_631 : btb_hcount_55; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_696 = fb_reg_redirect ? _GEN_632 : btb_hcount_56; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_697 = fb_reg_redirect ? _GEN_633 : btb_hcount_57; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_698 = fb_reg_redirect ? _GEN_634 : btb_hcount_58; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_699 = fb_reg_redirect ? _GEN_635 : btb_hcount_59; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_700 = fb_reg_redirect ? _GEN_636 : btb_hcount_60; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_701 = fb_reg_redirect ? _GEN_637 : btb_hcount_61; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_702 = fb_reg_redirect ? _GEN_638 : btb_hcount_62; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_703 = fb_reg_redirect ? _GEN_639 : btb_hcount_63; // @[BTB.scala 142:35:@2478.10]
  assign _GEN_704 = _T_2114 ? _GEN_512 : _GEN_640; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_705 = _T_2114 ? _GEN_513 : _GEN_641; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_706 = _T_2114 ? _GEN_514 : _GEN_642; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_707 = _T_2114 ? _GEN_515 : _GEN_643; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_708 = _T_2114 ? _GEN_516 : _GEN_644; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_709 = _T_2114 ? _GEN_517 : _GEN_645; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_710 = _T_2114 ? _GEN_518 : _GEN_646; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_711 = _T_2114 ? _GEN_519 : _GEN_647; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_712 = _T_2114 ? _GEN_520 : _GEN_648; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_713 = _T_2114 ? _GEN_521 : _GEN_649; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_714 = _T_2114 ? _GEN_522 : _GEN_650; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_715 = _T_2114 ? _GEN_523 : _GEN_651; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_716 = _T_2114 ? _GEN_524 : _GEN_652; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_717 = _T_2114 ? _GEN_525 : _GEN_653; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_718 = _T_2114 ? _GEN_526 : _GEN_654; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_719 = _T_2114 ? _GEN_527 : _GEN_655; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_720 = _T_2114 ? _GEN_528 : _GEN_656; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_721 = _T_2114 ? _GEN_529 : _GEN_657; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_722 = _T_2114 ? _GEN_530 : _GEN_658; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_723 = _T_2114 ? _GEN_531 : _GEN_659; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_724 = _T_2114 ? _GEN_532 : _GEN_660; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_725 = _T_2114 ? _GEN_533 : _GEN_661; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_726 = _T_2114 ? _GEN_534 : _GEN_662; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_727 = _T_2114 ? _GEN_535 : _GEN_663; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_728 = _T_2114 ? _GEN_536 : _GEN_664; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_729 = _T_2114 ? _GEN_537 : _GEN_665; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_730 = _T_2114 ? _GEN_538 : _GEN_666; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_731 = _T_2114 ? _GEN_539 : _GEN_667; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_732 = _T_2114 ? _GEN_540 : _GEN_668; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_733 = _T_2114 ? _GEN_541 : _GEN_669; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_734 = _T_2114 ? _GEN_542 : _GEN_670; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_735 = _T_2114 ? _GEN_543 : _GEN_671; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_736 = _T_2114 ? _GEN_544 : _GEN_672; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_737 = _T_2114 ? _GEN_545 : _GEN_673; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_738 = _T_2114 ? _GEN_546 : _GEN_674; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_739 = _T_2114 ? _GEN_547 : _GEN_675; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_740 = _T_2114 ? _GEN_548 : _GEN_676; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_741 = _T_2114 ? _GEN_549 : _GEN_677; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_742 = _T_2114 ? _GEN_550 : _GEN_678; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_743 = _T_2114 ? _GEN_551 : _GEN_679; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_744 = _T_2114 ? _GEN_552 : _GEN_680; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_745 = _T_2114 ? _GEN_553 : _GEN_681; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_746 = _T_2114 ? _GEN_554 : _GEN_682; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_747 = _T_2114 ? _GEN_555 : _GEN_683; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_748 = _T_2114 ? _GEN_556 : _GEN_684; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_749 = _T_2114 ? _GEN_557 : _GEN_685; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_750 = _T_2114 ? _GEN_558 : _GEN_686; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_751 = _T_2114 ? _GEN_559 : _GEN_687; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_752 = _T_2114 ? _GEN_560 : _GEN_688; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_753 = _T_2114 ? _GEN_561 : _GEN_689; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_754 = _T_2114 ? _GEN_562 : _GEN_690; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_755 = _T_2114 ? _GEN_563 : _GEN_691; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_756 = _T_2114 ? _GEN_564 : _GEN_692; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_757 = _T_2114 ? _GEN_565 : _GEN_693; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_758 = _T_2114 ? _GEN_566 : _GEN_694; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_759 = _T_2114 ? _GEN_567 : _GEN_695; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_760 = _T_2114 ? _GEN_568 : _GEN_696; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_761 = _T_2114 ? _GEN_569 : _GEN_697; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_762 = _T_2114 ? _GEN_570 : _GEN_698; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_763 = _T_2114 ? _GEN_571 : _GEN_699; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_764 = _T_2114 ? _GEN_572 : _GEN_700; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_765 = _T_2114 ? _GEN_573 : _GEN_701; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_766 = _T_2114 ? _GEN_574 : _GEN_702; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_767 = _T_2114 ? _GEN_575 : _GEN_703; // @[BTB.scala 136:28:@2456.8]
  assign _GEN_768 = _T_2866 ? _GEN_704 : btb_hcount_0; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_769 = _T_2866 ? _GEN_705 : btb_hcount_1; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_770 = _T_2866 ? _GEN_706 : btb_hcount_2; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_771 = _T_2866 ? _GEN_707 : btb_hcount_3; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_772 = _T_2866 ? _GEN_708 : btb_hcount_4; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_773 = _T_2866 ? _GEN_709 : btb_hcount_5; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_774 = _T_2866 ? _GEN_710 : btb_hcount_6; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_775 = _T_2866 ? _GEN_711 : btb_hcount_7; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_776 = _T_2866 ? _GEN_712 : btb_hcount_8; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_777 = _T_2866 ? _GEN_713 : btb_hcount_9; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_778 = _T_2866 ? _GEN_714 : btb_hcount_10; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_779 = _T_2866 ? _GEN_715 : btb_hcount_11; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_780 = _T_2866 ? _GEN_716 : btb_hcount_12; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_781 = _T_2866 ? _GEN_717 : btb_hcount_13; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_782 = _T_2866 ? _GEN_718 : btb_hcount_14; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_783 = _T_2866 ? _GEN_719 : btb_hcount_15; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_784 = _T_2866 ? _GEN_720 : btb_hcount_16; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_785 = _T_2866 ? _GEN_721 : btb_hcount_17; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_786 = _T_2866 ? _GEN_722 : btb_hcount_18; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_787 = _T_2866 ? _GEN_723 : btb_hcount_19; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_788 = _T_2866 ? _GEN_724 : btb_hcount_20; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_789 = _T_2866 ? _GEN_725 : btb_hcount_21; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_790 = _T_2866 ? _GEN_726 : btb_hcount_22; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_791 = _T_2866 ? _GEN_727 : btb_hcount_23; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_792 = _T_2866 ? _GEN_728 : btb_hcount_24; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_793 = _T_2866 ? _GEN_729 : btb_hcount_25; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_794 = _T_2866 ? _GEN_730 : btb_hcount_26; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_795 = _T_2866 ? _GEN_731 : btb_hcount_27; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_796 = _T_2866 ? _GEN_732 : btb_hcount_28; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_797 = _T_2866 ? _GEN_733 : btb_hcount_29; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_798 = _T_2866 ? _GEN_734 : btb_hcount_30; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_799 = _T_2866 ? _GEN_735 : btb_hcount_31; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_800 = _T_2866 ? _GEN_736 : btb_hcount_32; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_801 = _T_2866 ? _GEN_737 : btb_hcount_33; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_802 = _T_2866 ? _GEN_738 : btb_hcount_34; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_803 = _T_2866 ? _GEN_739 : btb_hcount_35; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_804 = _T_2866 ? _GEN_740 : btb_hcount_36; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_805 = _T_2866 ? _GEN_741 : btb_hcount_37; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_806 = _T_2866 ? _GEN_742 : btb_hcount_38; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_807 = _T_2866 ? _GEN_743 : btb_hcount_39; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_808 = _T_2866 ? _GEN_744 : btb_hcount_40; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_809 = _T_2866 ? _GEN_745 : btb_hcount_41; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_810 = _T_2866 ? _GEN_746 : btb_hcount_42; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_811 = _T_2866 ? _GEN_747 : btb_hcount_43; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_812 = _T_2866 ? _GEN_748 : btb_hcount_44; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_813 = _T_2866 ? _GEN_749 : btb_hcount_45; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_814 = _T_2866 ? _GEN_750 : btb_hcount_46; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_815 = _T_2866 ? _GEN_751 : btb_hcount_47; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_816 = _T_2866 ? _GEN_752 : btb_hcount_48; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_817 = _T_2866 ? _GEN_753 : btb_hcount_49; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_818 = _T_2866 ? _GEN_754 : btb_hcount_50; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_819 = _T_2866 ? _GEN_755 : btb_hcount_51; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_820 = _T_2866 ? _GEN_756 : btb_hcount_52; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_821 = _T_2866 ? _GEN_757 : btb_hcount_53; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_822 = _T_2866 ? _GEN_758 : btb_hcount_54; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_823 = _T_2866 ? _GEN_759 : btb_hcount_55; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_824 = _T_2866 ? _GEN_760 : btb_hcount_56; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_825 = _T_2866 ? _GEN_761 : btb_hcount_57; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_826 = _T_2866 ? _GEN_762 : btb_hcount_58; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_827 = _T_2866 ? _GEN_763 : btb_hcount_59; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_828 = _T_2866 ? _GEN_764 : btb_hcount_60; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_829 = _T_2866 ? _GEN_765 : btb_hcount_61; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_830 = _T_2866 ? _GEN_766 : btb_hcount_62; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_831 = _T_2866 ? _GEN_767 : btb_hcount_63; // @[BTB.scala 135:46:@2454.6]
  assign _GEN_832 = fb_reg_valid ? _GEN_192 : btb_pc_0; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_833 = fb_reg_valid ? _GEN_193 : btb_pc_1; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_834 = fb_reg_valid ? _GEN_194 : btb_pc_2; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_835 = fb_reg_valid ? _GEN_195 : btb_pc_3; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_836 = fb_reg_valid ? _GEN_196 : btb_pc_4; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_837 = fb_reg_valid ? _GEN_197 : btb_pc_5; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_838 = fb_reg_valid ? _GEN_198 : btb_pc_6; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_839 = fb_reg_valid ? _GEN_199 : btb_pc_7; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_840 = fb_reg_valid ? _GEN_200 : btb_pc_8; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_841 = fb_reg_valid ? _GEN_201 : btb_pc_9; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_842 = fb_reg_valid ? _GEN_202 : btb_pc_10; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_843 = fb_reg_valid ? _GEN_203 : btb_pc_11; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_844 = fb_reg_valid ? _GEN_204 : btb_pc_12; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_845 = fb_reg_valid ? _GEN_205 : btb_pc_13; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_846 = fb_reg_valid ? _GEN_206 : btb_pc_14; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_847 = fb_reg_valid ? _GEN_207 : btb_pc_15; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_848 = fb_reg_valid ? _GEN_208 : btb_pc_16; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_849 = fb_reg_valid ? _GEN_209 : btb_pc_17; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_850 = fb_reg_valid ? _GEN_210 : btb_pc_18; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_851 = fb_reg_valid ? _GEN_211 : btb_pc_19; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_852 = fb_reg_valid ? _GEN_212 : btb_pc_20; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_853 = fb_reg_valid ? _GEN_213 : btb_pc_21; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_854 = fb_reg_valid ? _GEN_214 : btb_pc_22; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_855 = fb_reg_valid ? _GEN_215 : btb_pc_23; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_856 = fb_reg_valid ? _GEN_216 : btb_pc_24; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_857 = fb_reg_valid ? _GEN_217 : btb_pc_25; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_858 = fb_reg_valid ? _GEN_218 : btb_pc_26; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_859 = fb_reg_valid ? _GEN_219 : btb_pc_27; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_860 = fb_reg_valid ? _GEN_220 : btb_pc_28; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_861 = fb_reg_valid ? _GEN_221 : btb_pc_29; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_862 = fb_reg_valid ? _GEN_222 : btb_pc_30; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_863 = fb_reg_valid ? _GEN_223 : btb_pc_31; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_864 = fb_reg_valid ? _GEN_224 : btb_pc_32; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_865 = fb_reg_valid ? _GEN_225 : btb_pc_33; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_866 = fb_reg_valid ? _GEN_226 : btb_pc_34; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_867 = fb_reg_valid ? _GEN_227 : btb_pc_35; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_868 = fb_reg_valid ? _GEN_228 : btb_pc_36; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_869 = fb_reg_valid ? _GEN_229 : btb_pc_37; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_870 = fb_reg_valid ? _GEN_230 : btb_pc_38; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_871 = fb_reg_valid ? _GEN_231 : btb_pc_39; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_872 = fb_reg_valid ? _GEN_232 : btb_pc_40; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_873 = fb_reg_valid ? _GEN_233 : btb_pc_41; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_874 = fb_reg_valid ? _GEN_234 : btb_pc_42; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_875 = fb_reg_valid ? _GEN_235 : btb_pc_43; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_876 = fb_reg_valid ? _GEN_236 : btb_pc_44; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_877 = fb_reg_valid ? _GEN_237 : btb_pc_45; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_878 = fb_reg_valid ? _GEN_238 : btb_pc_46; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_879 = fb_reg_valid ? _GEN_239 : btb_pc_47; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_880 = fb_reg_valid ? _GEN_240 : btb_pc_48; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_881 = fb_reg_valid ? _GEN_241 : btb_pc_49; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_882 = fb_reg_valid ? _GEN_242 : btb_pc_50; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_883 = fb_reg_valid ? _GEN_243 : btb_pc_51; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_884 = fb_reg_valid ? _GEN_244 : btb_pc_52; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_885 = fb_reg_valid ? _GEN_245 : btb_pc_53; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_886 = fb_reg_valid ? _GEN_246 : btb_pc_54; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_887 = fb_reg_valid ? _GEN_247 : btb_pc_55; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_888 = fb_reg_valid ? _GEN_248 : btb_pc_56; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_889 = fb_reg_valid ? _GEN_249 : btb_pc_57; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_890 = fb_reg_valid ? _GEN_250 : btb_pc_58; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_891 = fb_reg_valid ? _GEN_251 : btb_pc_59; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_892 = fb_reg_valid ? _GEN_252 : btb_pc_60; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_893 = fb_reg_valid ? _GEN_253 : btb_pc_61; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_894 = fb_reg_valid ? _GEN_254 : btb_pc_62; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_895 = fb_reg_valid ? _GEN_255 : btb_pc_63; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_896 = fb_reg_valid ? _GEN_256 : btb_target_0; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_897 = fb_reg_valid ? _GEN_257 : btb_target_1; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_898 = fb_reg_valid ? _GEN_258 : btb_target_2; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_899 = fb_reg_valid ? _GEN_259 : btb_target_3; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_900 = fb_reg_valid ? _GEN_260 : btb_target_4; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_901 = fb_reg_valid ? _GEN_261 : btb_target_5; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_902 = fb_reg_valid ? _GEN_262 : btb_target_6; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_903 = fb_reg_valid ? _GEN_263 : btb_target_7; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_904 = fb_reg_valid ? _GEN_264 : btb_target_8; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_905 = fb_reg_valid ? _GEN_265 : btb_target_9; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_906 = fb_reg_valid ? _GEN_266 : btb_target_10; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_907 = fb_reg_valid ? _GEN_267 : btb_target_11; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_908 = fb_reg_valid ? _GEN_268 : btb_target_12; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_909 = fb_reg_valid ? _GEN_269 : btb_target_13; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_910 = fb_reg_valid ? _GEN_270 : btb_target_14; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_911 = fb_reg_valid ? _GEN_271 : btb_target_15; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_912 = fb_reg_valid ? _GEN_272 : btb_target_16; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_913 = fb_reg_valid ? _GEN_273 : btb_target_17; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_914 = fb_reg_valid ? _GEN_274 : btb_target_18; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_915 = fb_reg_valid ? _GEN_275 : btb_target_19; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_916 = fb_reg_valid ? _GEN_276 : btb_target_20; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_917 = fb_reg_valid ? _GEN_277 : btb_target_21; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_918 = fb_reg_valid ? _GEN_278 : btb_target_22; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_919 = fb_reg_valid ? _GEN_279 : btb_target_23; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_920 = fb_reg_valid ? _GEN_280 : btb_target_24; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_921 = fb_reg_valid ? _GEN_281 : btb_target_25; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_922 = fb_reg_valid ? _GEN_282 : btb_target_26; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_923 = fb_reg_valid ? _GEN_283 : btb_target_27; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_924 = fb_reg_valid ? _GEN_284 : btb_target_28; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_925 = fb_reg_valid ? _GEN_285 : btb_target_29; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_926 = fb_reg_valid ? _GEN_286 : btb_target_30; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_927 = fb_reg_valid ? _GEN_287 : btb_target_31; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_928 = fb_reg_valid ? _GEN_288 : btb_target_32; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_929 = fb_reg_valid ? _GEN_289 : btb_target_33; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_930 = fb_reg_valid ? _GEN_290 : btb_target_34; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_931 = fb_reg_valid ? _GEN_291 : btb_target_35; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_932 = fb_reg_valid ? _GEN_292 : btb_target_36; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_933 = fb_reg_valid ? _GEN_293 : btb_target_37; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_934 = fb_reg_valid ? _GEN_294 : btb_target_38; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_935 = fb_reg_valid ? _GEN_295 : btb_target_39; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_936 = fb_reg_valid ? _GEN_296 : btb_target_40; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_937 = fb_reg_valid ? _GEN_297 : btb_target_41; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_938 = fb_reg_valid ? _GEN_298 : btb_target_42; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_939 = fb_reg_valid ? _GEN_299 : btb_target_43; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_940 = fb_reg_valid ? _GEN_300 : btb_target_44; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_941 = fb_reg_valid ? _GEN_301 : btb_target_45; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_942 = fb_reg_valid ? _GEN_302 : btb_target_46; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_943 = fb_reg_valid ? _GEN_303 : btb_target_47; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_944 = fb_reg_valid ? _GEN_304 : btb_target_48; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_945 = fb_reg_valid ? _GEN_305 : btb_target_49; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_946 = fb_reg_valid ? _GEN_306 : btb_target_50; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_947 = fb_reg_valid ? _GEN_307 : btb_target_51; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_948 = fb_reg_valid ? _GEN_308 : btb_target_52; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_949 = fb_reg_valid ? _GEN_309 : btb_target_53; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_950 = fb_reg_valid ? _GEN_310 : btb_target_54; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_951 = fb_reg_valid ? _GEN_311 : btb_target_55; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_952 = fb_reg_valid ? _GEN_312 : btb_target_56; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_953 = fb_reg_valid ? _GEN_313 : btb_target_57; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_954 = fb_reg_valid ? _GEN_314 : btb_target_58; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_955 = fb_reg_valid ? _GEN_315 : btb_target_59; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_956 = fb_reg_valid ? _GEN_316 : btb_target_60; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_957 = fb_reg_valid ? _GEN_317 : btb_target_61; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_958 = fb_reg_valid ? _GEN_318 : btb_target_62; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_959 = fb_reg_valid ? _GEN_319 : btb_target_63; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_960 = fb_reg_valid ? _GEN_320 : btb_btype_0; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_961 = fb_reg_valid ? _GEN_321 : btb_btype_1; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_962 = fb_reg_valid ? _GEN_322 : btb_btype_2; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_963 = fb_reg_valid ? _GEN_323 : btb_btype_3; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_964 = fb_reg_valid ? _GEN_324 : btb_btype_4; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_965 = fb_reg_valid ? _GEN_325 : btb_btype_5; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_966 = fb_reg_valid ? _GEN_326 : btb_btype_6; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_967 = fb_reg_valid ? _GEN_327 : btb_btype_7; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_968 = fb_reg_valid ? _GEN_328 : btb_btype_8; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_969 = fb_reg_valid ? _GEN_329 : btb_btype_9; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_970 = fb_reg_valid ? _GEN_330 : btb_btype_10; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_971 = fb_reg_valid ? _GEN_331 : btb_btype_11; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_972 = fb_reg_valid ? _GEN_332 : btb_btype_12; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_973 = fb_reg_valid ? _GEN_333 : btb_btype_13; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_974 = fb_reg_valid ? _GEN_334 : btb_btype_14; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_975 = fb_reg_valid ? _GEN_335 : btb_btype_15; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_976 = fb_reg_valid ? _GEN_336 : btb_btype_16; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_977 = fb_reg_valid ? _GEN_337 : btb_btype_17; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_978 = fb_reg_valid ? _GEN_338 : btb_btype_18; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_979 = fb_reg_valid ? _GEN_339 : btb_btype_19; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_980 = fb_reg_valid ? _GEN_340 : btb_btype_20; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_981 = fb_reg_valid ? _GEN_341 : btb_btype_21; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_982 = fb_reg_valid ? _GEN_342 : btb_btype_22; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_983 = fb_reg_valid ? _GEN_343 : btb_btype_23; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_984 = fb_reg_valid ? _GEN_344 : btb_btype_24; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_985 = fb_reg_valid ? _GEN_345 : btb_btype_25; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_986 = fb_reg_valid ? _GEN_346 : btb_btype_26; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_987 = fb_reg_valid ? _GEN_347 : btb_btype_27; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_988 = fb_reg_valid ? _GEN_348 : btb_btype_28; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_989 = fb_reg_valid ? _GEN_349 : btb_btype_29; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_990 = fb_reg_valid ? _GEN_350 : btb_btype_30; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_991 = fb_reg_valid ? _GEN_351 : btb_btype_31; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_992 = fb_reg_valid ? _GEN_352 : btb_btype_32; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_993 = fb_reg_valid ? _GEN_353 : btb_btype_33; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_994 = fb_reg_valid ? _GEN_354 : btb_btype_34; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_995 = fb_reg_valid ? _GEN_355 : btb_btype_35; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_996 = fb_reg_valid ? _GEN_356 : btb_btype_36; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_997 = fb_reg_valid ? _GEN_357 : btb_btype_37; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_998 = fb_reg_valid ? _GEN_358 : btb_btype_38; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_999 = fb_reg_valid ? _GEN_359 : btb_btype_39; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1000 = fb_reg_valid ? _GEN_360 : btb_btype_40; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1001 = fb_reg_valid ? _GEN_361 : btb_btype_41; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1002 = fb_reg_valid ? _GEN_362 : btb_btype_42; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1003 = fb_reg_valid ? _GEN_363 : btb_btype_43; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1004 = fb_reg_valid ? _GEN_364 : btb_btype_44; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1005 = fb_reg_valid ? _GEN_365 : btb_btype_45; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1006 = fb_reg_valid ? _GEN_366 : btb_btype_46; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1007 = fb_reg_valid ? _GEN_367 : btb_btype_47; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1008 = fb_reg_valid ? _GEN_368 : btb_btype_48; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1009 = fb_reg_valid ? _GEN_369 : btb_btype_49; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1010 = fb_reg_valid ? _GEN_370 : btb_btype_50; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1011 = fb_reg_valid ? _GEN_371 : btb_btype_51; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1012 = fb_reg_valid ? _GEN_372 : btb_btype_52; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1013 = fb_reg_valid ? _GEN_373 : btb_btype_53; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1014 = fb_reg_valid ? _GEN_374 : btb_btype_54; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1015 = fb_reg_valid ? _GEN_375 : btb_btype_55; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1016 = fb_reg_valid ? _GEN_376 : btb_btype_56; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1017 = fb_reg_valid ? _GEN_377 : btb_btype_57; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1018 = fb_reg_valid ? _GEN_378 : btb_btype_58; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1019 = fb_reg_valid ? _GEN_379 : btb_btype_59; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1020 = fb_reg_valid ? _GEN_380 : btb_btype_60; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1021 = fb_reg_valid ? _GEN_381 : btb_btype_61; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1022 = fb_reg_valid ? _GEN_382 : btb_btype_62; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1023 = fb_reg_valid ? _GEN_383 : btb_btype_63; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1024 = fb_reg_valid ? _GEN_768 : btb_hcount_0; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1025 = fb_reg_valid ? _GEN_769 : btb_hcount_1; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1026 = fb_reg_valid ? _GEN_770 : btb_hcount_2; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1027 = fb_reg_valid ? _GEN_771 : btb_hcount_3; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1028 = fb_reg_valid ? _GEN_772 : btb_hcount_4; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1029 = fb_reg_valid ? _GEN_773 : btb_hcount_5; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1030 = fb_reg_valid ? _GEN_774 : btb_hcount_6; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1031 = fb_reg_valid ? _GEN_775 : btb_hcount_7; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1032 = fb_reg_valid ? _GEN_776 : btb_hcount_8; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1033 = fb_reg_valid ? _GEN_777 : btb_hcount_9; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1034 = fb_reg_valid ? _GEN_778 : btb_hcount_10; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1035 = fb_reg_valid ? _GEN_779 : btb_hcount_11; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1036 = fb_reg_valid ? _GEN_780 : btb_hcount_12; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1037 = fb_reg_valid ? _GEN_781 : btb_hcount_13; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1038 = fb_reg_valid ? _GEN_782 : btb_hcount_14; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1039 = fb_reg_valid ? _GEN_783 : btb_hcount_15; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1040 = fb_reg_valid ? _GEN_784 : btb_hcount_16; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1041 = fb_reg_valid ? _GEN_785 : btb_hcount_17; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1042 = fb_reg_valid ? _GEN_786 : btb_hcount_18; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1043 = fb_reg_valid ? _GEN_787 : btb_hcount_19; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1044 = fb_reg_valid ? _GEN_788 : btb_hcount_20; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1045 = fb_reg_valid ? _GEN_789 : btb_hcount_21; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1046 = fb_reg_valid ? _GEN_790 : btb_hcount_22; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1047 = fb_reg_valid ? _GEN_791 : btb_hcount_23; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1048 = fb_reg_valid ? _GEN_792 : btb_hcount_24; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1049 = fb_reg_valid ? _GEN_793 : btb_hcount_25; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1050 = fb_reg_valid ? _GEN_794 : btb_hcount_26; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1051 = fb_reg_valid ? _GEN_795 : btb_hcount_27; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1052 = fb_reg_valid ? _GEN_796 : btb_hcount_28; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1053 = fb_reg_valid ? _GEN_797 : btb_hcount_29; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1054 = fb_reg_valid ? _GEN_798 : btb_hcount_30; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1055 = fb_reg_valid ? _GEN_799 : btb_hcount_31; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1056 = fb_reg_valid ? _GEN_800 : btb_hcount_32; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1057 = fb_reg_valid ? _GEN_801 : btb_hcount_33; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1058 = fb_reg_valid ? _GEN_802 : btb_hcount_34; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1059 = fb_reg_valid ? _GEN_803 : btb_hcount_35; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1060 = fb_reg_valid ? _GEN_804 : btb_hcount_36; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1061 = fb_reg_valid ? _GEN_805 : btb_hcount_37; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1062 = fb_reg_valid ? _GEN_806 : btb_hcount_38; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1063 = fb_reg_valid ? _GEN_807 : btb_hcount_39; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1064 = fb_reg_valid ? _GEN_808 : btb_hcount_40; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1065 = fb_reg_valid ? _GEN_809 : btb_hcount_41; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1066 = fb_reg_valid ? _GEN_810 : btb_hcount_42; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1067 = fb_reg_valid ? _GEN_811 : btb_hcount_43; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1068 = fb_reg_valid ? _GEN_812 : btb_hcount_44; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1069 = fb_reg_valid ? _GEN_813 : btb_hcount_45; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1070 = fb_reg_valid ? _GEN_814 : btb_hcount_46; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1071 = fb_reg_valid ? _GEN_815 : btb_hcount_47; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1072 = fb_reg_valid ? _GEN_816 : btb_hcount_48; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1073 = fb_reg_valid ? _GEN_817 : btb_hcount_49; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1074 = fb_reg_valid ? _GEN_818 : btb_hcount_50; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1075 = fb_reg_valid ? _GEN_819 : btb_hcount_51; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1076 = fb_reg_valid ? _GEN_820 : btb_hcount_52; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1077 = fb_reg_valid ? _GEN_821 : btb_hcount_53; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1078 = fb_reg_valid ? _GEN_822 : btb_hcount_54; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1079 = fb_reg_valid ? _GEN_823 : btb_hcount_55; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1080 = fb_reg_valid ? _GEN_824 : btb_hcount_56; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1081 = fb_reg_valid ? _GEN_825 : btb_hcount_57; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1082 = fb_reg_valid ? _GEN_826 : btb_hcount_58; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1083 = fb_reg_valid ? _GEN_827 : btb_hcount_59; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1084 = fb_reg_valid ? _GEN_828 : btb_hcount_60; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1085 = fb_reg_valid ? _GEN_829 : btb_hcount_61; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1086 = fb_reg_valid ? _GEN_830 : btb_hcount_62; // @[BTB.scala 129:23:@2447.4]
  assign _GEN_1087 = fb_reg_valid ? _GEN_831 : btb_hcount_63; // @[BTB.scala 129:23:@2447.4]
  assign io_predict_tgt = _T_1370 ? io_ras_peek : _T_1382; // @[BTB.scala 83:18:@1302.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  btb_pc_0 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  btb_pc_1 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  btb_pc_2 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  btb_pc_3 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  btb_pc_4 = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  btb_pc_5 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  btb_pc_6 = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  btb_pc_7 = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  btb_pc_8 = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  btb_pc_9 = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  btb_pc_10 = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  btb_pc_11 = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  btb_pc_12 = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  btb_pc_13 = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  btb_pc_14 = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  btb_pc_15 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  btb_pc_16 = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  btb_pc_17 = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  btb_pc_18 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  btb_pc_19 = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  btb_pc_20 = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  btb_pc_21 = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  btb_pc_22 = _RAND_22[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  btb_pc_23 = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  btb_pc_24 = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  btb_pc_25 = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  btb_pc_26 = _RAND_26[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  btb_pc_27 = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  btb_pc_28 = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  btb_pc_29 = _RAND_29[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  btb_pc_30 = _RAND_30[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  btb_pc_31 = _RAND_31[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  btb_pc_32 = _RAND_32[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  btb_pc_33 = _RAND_33[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  btb_pc_34 = _RAND_34[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  btb_pc_35 = _RAND_35[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  btb_pc_36 = _RAND_36[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  btb_pc_37 = _RAND_37[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  btb_pc_38 = _RAND_38[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  btb_pc_39 = _RAND_39[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  btb_pc_40 = _RAND_40[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  btb_pc_41 = _RAND_41[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  btb_pc_42 = _RAND_42[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  btb_pc_43 = _RAND_43[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  btb_pc_44 = _RAND_44[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  btb_pc_45 = _RAND_45[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  btb_pc_46 = _RAND_46[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  btb_pc_47 = _RAND_47[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  btb_pc_48 = _RAND_48[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  btb_pc_49 = _RAND_49[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  btb_pc_50 = _RAND_50[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  btb_pc_51 = _RAND_51[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  btb_pc_52 = _RAND_52[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  btb_pc_53 = _RAND_53[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  btb_pc_54 = _RAND_54[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  btb_pc_55 = _RAND_55[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  btb_pc_56 = _RAND_56[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  btb_pc_57 = _RAND_57[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  btb_pc_58 = _RAND_58[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  btb_pc_59 = _RAND_59[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  btb_pc_60 = _RAND_60[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  btb_pc_61 = _RAND_61[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  btb_pc_62 = _RAND_62[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  btb_pc_63 = _RAND_63[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  btb_target_0 = _RAND_64[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  btb_target_1 = _RAND_65[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  btb_target_2 = _RAND_66[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  btb_target_3 = _RAND_67[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  btb_target_4 = _RAND_68[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  btb_target_5 = _RAND_69[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  btb_target_6 = _RAND_70[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  btb_target_7 = _RAND_71[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  btb_target_8 = _RAND_72[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  btb_target_9 = _RAND_73[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  btb_target_10 = _RAND_74[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  btb_target_11 = _RAND_75[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  btb_target_12 = _RAND_76[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  btb_target_13 = _RAND_77[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  btb_target_14 = _RAND_78[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  btb_target_15 = _RAND_79[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{`RANDOM}};
  btb_target_16 = _RAND_80[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  btb_target_17 = _RAND_81[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  btb_target_18 = _RAND_82[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  btb_target_19 = _RAND_83[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{`RANDOM}};
  btb_target_20 = _RAND_84[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{`RANDOM}};
  btb_target_21 = _RAND_85[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{`RANDOM}};
  btb_target_22 = _RAND_86[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{`RANDOM}};
  btb_target_23 = _RAND_87[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{`RANDOM}};
  btb_target_24 = _RAND_88[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{`RANDOM}};
  btb_target_25 = _RAND_89[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{`RANDOM}};
  btb_target_26 = _RAND_90[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{`RANDOM}};
  btb_target_27 = _RAND_91[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{`RANDOM}};
  btb_target_28 = _RAND_92[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_93 = {1{`RANDOM}};
  btb_target_29 = _RAND_93[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_94 = {1{`RANDOM}};
  btb_target_30 = _RAND_94[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_95 = {1{`RANDOM}};
  btb_target_31 = _RAND_95[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_96 = {1{`RANDOM}};
  btb_target_32 = _RAND_96[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_97 = {1{`RANDOM}};
  btb_target_33 = _RAND_97[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_98 = {1{`RANDOM}};
  btb_target_34 = _RAND_98[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_99 = {1{`RANDOM}};
  btb_target_35 = _RAND_99[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_100 = {1{`RANDOM}};
  btb_target_36 = _RAND_100[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_101 = {1{`RANDOM}};
  btb_target_37 = _RAND_101[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_102 = {1{`RANDOM}};
  btb_target_38 = _RAND_102[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_103 = {1{`RANDOM}};
  btb_target_39 = _RAND_103[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_104 = {1{`RANDOM}};
  btb_target_40 = _RAND_104[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_105 = {1{`RANDOM}};
  btb_target_41 = _RAND_105[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_106 = {1{`RANDOM}};
  btb_target_42 = _RAND_106[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_107 = {1{`RANDOM}};
  btb_target_43 = _RAND_107[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_108 = {1{`RANDOM}};
  btb_target_44 = _RAND_108[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_109 = {1{`RANDOM}};
  btb_target_45 = _RAND_109[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_110 = {1{`RANDOM}};
  btb_target_46 = _RAND_110[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_111 = {1{`RANDOM}};
  btb_target_47 = _RAND_111[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_112 = {1{`RANDOM}};
  btb_target_48 = _RAND_112[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_113 = {1{`RANDOM}};
  btb_target_49 = _RAND_113[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_114 = {1{`RANDOM}};
  btb_target_50 = _RAND_114[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_115 = {1{`RANDOM}};
  btb_target_51 = _RAND_115[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_116 = {1{`RANDOM}};
  btb_target_52 = _RAND_116[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_117 = {1{`RANDOM}};
  btb_target_53 = _RAND_117[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_118 = {1{`RANDOM}};
  btb_target_54 = _RAND_118[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_119 = {1{`RANDOM}};
  btb_target_55 = _RAND_119[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_120 = {1{`RANDOM}};
  btb_target_56 = _RAND_120[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_121 = {1{`RANDOM}};
  btb_target_57 = _RAND_121[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_122 = {1{`RANDOM}};
  btb_target_58 = _RAND_122[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_123 = {1{`RANDOM}};
  btb_target_59 = _RAND_123[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_124 = {1{`RANDOM}};
  btb_target_60 = _RAND_124[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_125 = {1{`RANDOM}};
  btb_target_61 = _RAND_125[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_126 = {1{`RANDOM}};
  btb_target_62 = _RAND_126[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_127 = {1{`RANDOM}};
  btb_target_63 = _RAND_127[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_128 = {1{`RANDOM}};
  btb_hcount_0 = _RAND_128[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_129 = {1{`RANDOM}};
  btb_hcount_1 = _RAND_129[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_130 = {1{`RANDOM}};
  btb_hcount_2 = _RAND_130[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_131 = {1{`RANDOM}};
  btb_hcount_3 = _RAND_131[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_132 = {1{`RANDOM}};
  btb_hcount_4 = _RAND_132[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_133 = {1{`RANDOM}};
  btb_hcount_5 = _RAND_133[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_134 = {1{`RANDOM}};
  btb_hcount_6 = _RAND_134[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_135 = {1{`RANDOM}};
  btb_hcount_7 = _RAND_135[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_136 = {1{`RANDOM}};
  btb_hcount_8 = _RAND_136[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_137 = {1{`RANDOM}};
  btb_hcount_9 = _RAND_137[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_138 = {1{`RANDOM}};
  btb_hcount_10 = _RAND_138[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_139 = {1{`RANDOM}};
  btb_hcount_11 = _RAND_139[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_140 = {1{`RANDOM}};
  btb_hcount_12 = _RAND_140[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_141 = {1{`RANDOM}};
  btb_hcount_13 = _RAND_141[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_142 = {1{`RANDOM}};
  btb_hcount_14 = _RAND_142[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_143 = {1{`RANDOM}};
  btb_hcount_15 = _RAND_143[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_144 = {1{`RANDOM}};
  btb_hcount_16 = _RAND_144[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_145 = {1{`RANDOM}};
  btb_hcount_17 = _RAND_145[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_146 = {1{`RANDOM}};
  btb_hcount_18 = _RAND_146[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_147 = {1{`RANDOM}};
  btb_hcount_19 = _RAND_147[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_148 = {1{`RANDOM}};
  btb_hcount_20 = _RAND_148[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_149 = {1{`RANDOM}};
  btb_hcount_21 = _RAND_149[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_150 = {1{`RANDOM}};
  btb_hcount_22 = _RAND_150[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_151 = {1{`RANDOM}};
  btb_hcount_23 = _RAND_151[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_152 = {1{`RANDOM}};
  btb_hcount_24 = _RAND_152[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_153 = {1{`RANDOM}};
  btb_hcount_25 = _RAND_153[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_154 = {1{`RANDOM}};
  btb_hcount_26 = _RAND_154[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_155 = {1{`RANDOM}};
  btb_hcount_27 = _RAND_155[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_156 = {1{`RANDOM}};
  btb_hcount_28 = _RAND_156[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_157 = {1{`RANDOM}};
  btb_hcount_29 = _RAND_157[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_158 = {1{`RANDOM}};
  btb_hcount_30 = _RAND_158[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_159 = {1{`RANDOM}};
  btb_hcount_31 = _RAND_159[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_160 = {1{`RANDOM}};
  btb_hcount_32 = _RAND_160[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_161 = {1{`RANDOM}};
  btb_hcount_33 = _RAND_161[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_162 = {1{`RANDOM}};
  btb_hcount_34 = _RAND_162[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_163 = {1{`RANDOM}};
  btb_hcount_35 = _RAND_163[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_164 = {1{`RANDOM}};
  btb_hcount_36 = _RAND_164[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_165 = {1{`RANDOM}};
  btb_hcount_37 = _RAND_165[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_166 = {1{`RANDOM}};
  btb_hcount_38 = _RAND_166[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_167 = {1{`RANDOM}};
  btb_hcount_39 = _RAND_167[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_168 = {1{`RANDOM}};
  btb_hcount_40 = _RAND_168[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_169 = {1{`RANDOM}};
  btb_hcount_41 = _RAND_169[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_170 = {1{`RANDOM}};
  btb_hcount_42 = _RAND_170[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_171 = {1{`RANDOM}};
  btb_hcount_43 = _RAND_171[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_172 = {1{`RANDOM}};
  btb_hcount_44 = _RAND_172[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_173 = {1{`RANDOM}};
  btb_hcount_45 = _RAND_173[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_174 = {1{`RANDOM}};
  btb_hcount_46 = _RAND_174[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_175 = {1{`RANDOM}};
  btb_hcount_47 = _RAND_175[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_176 = {1{`RANDOM}};
  btb_hcount_48 = _RAND_176[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_177 = {1{`RANDOM}};
  btb_hcount_49 = _RAND_177[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_178 = {1{`RANDOM}};
  btb_hcount_50 = _RAND_178[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_179 = {1{`RANDOM}};
  btb_hcount_51 = _RAND_179[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_180 = {1{`RANDOM}};
  btb_hcount_52 = _RAND_180[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_181 = {1{`RANDOM}};
  btb_hcount_53 = _RAND_181[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_182 = {1{`RANDOM}};
  btb_hcount_54 = _RAND_182[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_183 = {1{`RANDOM}};
  btb_hcount_55 = _RAND_183[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_184 = {1{`RANDOM}};
  btb_hcount_56 = _RAND_184[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_185 = {1{`RANDOM}};
  btb_hcount_57 = _RAND_185[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_186 = {1{`RANDOM}};
  btb_hcount_58 = _RAND_186[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_187 = {1{`RANDOM}};
  btb_hcount_59 = _RAND_187[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_188 = {1{`RANDOM}};
  btb_hcount_60 = _RAND_188[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_189 = {1{`RANDOM}};
  btb_hcount_61 = _RAND_189[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_190 = {1{`RANDOM}};
  btb_hcount_62 = _RAND_190[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_191 = {1{`RANDOM}};
  btb_hcount_63 = _RAND_191[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_192 = {1{`RANDOM}};
  btb_btype_0 = _RAND_192[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_193 = {1{`RANDOM}};
  btb_btype_1 = _RAND_193[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_194 = {1{`RANDOM}};
  btb_btype_2 = _RAND_194[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_195 = {1{`RANDOM}};
  btb_btype_3 = _RAND_195[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_196 = {1{`RANDOM}};
  btb_btype_4 = _RAND_196[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_197 = {1{`RANDOM}};
  btb_btype_5 = _RAND_197[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_198 = {1{`RANDOM}};
  btb_btype_6 = _RAND_198[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_199 = {1{`RANDOM}};
  btb_btype_7 = _RAND_199[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_200 = {1{`RANDOM}};
  btb_btype_8 = _RAND_200[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_201 = {1{`RANDOM}};
  btb_btype_9 = _RAND_201[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_202 = {1{`RANDOM}};
  btb_btype_10 = _RAND_202[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_203 = {1{`RANDOM}};
  btb_btype_11 = _RAND_203[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_204 = {1{`RANDOM}};
  btb_btype_12 = _RAND_204[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_205 = {1{`RANDOM}};
  btb_btype_13 = _RAND_205[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_206 = {1{`RANDOM}};
  btb_btype_14 = _RAND_206[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_207 = {1{`RANDOM}};
  btb_btype_15 = _RAND_207[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_208 = {1{`RANDOM}};
  btb_btype_16 = _RAND_208[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_209 = {1{`RANDOM}};
  btb_btype_17 = _RAND_209[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_210 = {1{`RANDOM}};
  btb_btype_18 = _RAND_210[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_211 = {1{`RANDOM}};
  btb_btype_19 = _RAND_211[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_212 = {1{`RANDOM}};
  btb_btype_20 = _RAND_212[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_213 = {1{`RANDOM}};
  btb_btype_21 = _RAND_213[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_214 = {1{`RANDOM}};
  btb_btype_22 = _RAND_214[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_215 = {1{`RANDOM}};
  btb_btype_23 = _RAND_215[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_216 = {1{`RANDOM}};
  btb_btype_24 = _RAND_216[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_217 = {1{`RANDOM}};
  btb_btype_25 = _RAND_217[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_218 = {1{`RANDOM}};
  btb_btype_26 = _RAND_218[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_219 = {1{`RANDOM}};
  btb_btype_27 = _RAND_219[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_220 = {1{`RANDOM}};
  btb_btype_28 = _RAND_220[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_221 = {1{`RANDOM}};
  btb_btype_29 = _RAND_221[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_222 = {1{`RANDOM}};
  btb_btype_30 = _RAND_222[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_223 = {1{`RANDOM}};
  btb_btype_31 = _RAND_223[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_224 = {1{`RANDOM}};
  btb_btype_32 = _RAND_224[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_225 = {1{`RANDOM}};
  btb_btype_33 = _RAND_225[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_226 = {1{`RANDOM}};
  btb_btype_34 = _RAND_226[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_227 = {1{`RANDOM}};
  btb_btype_35 = _RAND_227[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_228 = {1{`RANDOM}};
  btb_btype_36 = _RAND_228[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_229 = {1{`RANDOM}};
  btb_btype_37 = _RAND_229[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_230 = {1{`RANDOM}};
  btb_btype_38 = _RAND_230[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_231 = {1{`RANDOM}};
  btb_btype_39 = _RAND_231[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_232 = {1{`RANDOM}};
  btb_btype_40 = _RAND_232[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_233 = {1{`RANDOM}};
  btb_btype_41 = _RAND_233[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_234 = {1{`RANDOM}};
  btb_btype_42 = _RAND_234[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_235 = {1{`RANDOM}};
  btb_btype_43 = _RAND_235[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_236 = {1{`RANDOM}};
  btb_btype_44 = _RAND_236[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_237 = {1{`RANDOM}};
  btb_btype_45 = _RAND_237[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_238 = {1{`RANDOM}};
  btb_btype_46 = _RAND_238[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_239 = {1{`RANDOM}};
  btb_btype_47 = _RAND_239[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_240 = {1{`RANDOM}};
  btb_btype_48 = _RAND_240[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_241 = {1{`RANDOM}};
  btb_btype_49 = _RAND_241[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_242 = {1{`RANDOM}};
  btb_btype_50 = _RAND_242[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_243 = {1{`RANDOM}};
  btb_btype_51 = _RAND_243[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_244 = {1{`RANDOM}};
  btb_btype_52 = _RAND_244[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_245 = {1{`RANDOM}};
  btb_btype_53 = _RAND_245[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_246 = {1{`RANDOM}};
  btb_btype_54 = _RAND_246[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_247 = {1{`RANDOM}};
  btb_btype_55 = _RAND_247[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_248 = {1{`RANDOM}};
  btb_btype_56 = _RAND_248[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_249 = {1{`RANDOM}};
  btb_btype_57 = _RAND_249[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_250 = {1{`RANDOM}};
  btb_btype_58 = _RAND_250[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_251 = {1{`RANDOM}};
  btb_btype_59 = _RAND_251[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_252 = {1{`RANDOM}};
  btb_btype_60 = _RAND_252[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_253 = {1{`RANDOM}};
  btb_btype_61 = _RAND_253[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_254 = {1{`RANDOM}};
  btb_btype_62 = _RAND_254[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_255 = {1{`RANDOM}};
  btb_btype_63 = _RAND_255[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_256 = {1{`RANDOM}};
  fb_reg_valid = _RAND_256[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_257 = {1{`RANDOM}};
  fb_reg_redirect = _RAND_257[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_258 = {1{`RANDOM}};
  fb_reg_lfsr = _RAND_258[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_259 = {1{`RANDOM}};
  fb_reg_pc = _RAND_259[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_260 = {1{`RANDOM}};
  fb_reg_target = _RAND_260[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_261 = {1{`RANDOM}};
  fb_reg_btype = _RAND_261[1:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      btb_pc_0 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h0 == fb_wire_bindex) begin
            btb_pc_0 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_1 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1 == fb_wire_bindex) begin
            btb_pc_1 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_2 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2 == fb_wire_bindex) begin
            btb_pc_2 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_3 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3 == fb_wire_bindex) begin
            btb_pc_3 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_4 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h4 == fb_wire_bindex) begin
            btb_pc_4 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_5 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h5 == fb_wire_bindex) begin
            btb_pc_5 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_6 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h6 == fb_wire_bindex) begin
            btb_pc_6 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_7 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h7 == fb_wire_bindex) begin
            btb_pc_7 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_8 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h8 == fb_wire_bindex) begin
            btb_pc_8 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_9 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h9 == fb_wire_bindex) begin
            btb_pc_9 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_10 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'ha == fb_wire_bindex) begin
            btb_pc_10 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_11 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'hb == fb_wire_bindex) begin
            btb_pc_11 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_12 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'hc == fb_wire_bindex) begin
            btb_pc_12 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_13 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'hd == fb_wire_bindex) begin
            btb_pc_13 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_14 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'he == fb_wire_bindex) begin
            btb_pc_14 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_15 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'hf == fb_wire_bindex) begin
            btb_pc_15 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_16 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h10 == fb_wire_bindex) begin
            btb_pc_16 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_17 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h11 == fb_wire_bindex) begin
            btb_pc_17 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_18 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h12 == fb_wire_bindex) begin
            btb_pc_18 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_19 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h13 == fb_wire_bindex) begin
            btb_pc_19 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_20 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h14 == fb_wire_bindex) begin
            btb_pc_20 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_21 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h15 == fb_wire_bindex) begin
            btb_pc_21 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_22 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h16 == fb_wire_bindex) begin
            btb_pc_22 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_23 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h17 == fb_wire_bindex) begin
            btb_pc_23 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_24 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h18 == fb_wire_bindex) begin
            btb_pc_24 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_25 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h19 == fb_wire_bindex) begin
            btb_pc_25 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_26 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1a == fb_wire_bindex) begin
            btb_pc_26 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_27 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1b == fb_wire_bindex) begin
            btb_pc_27 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_28 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1c == fb_wire_bindex) begin
            btb_pc_28 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_29 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1d == fb_wire_bindex) begin
            btb_pc_29 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_30 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1e == fb_wire_bindex) begin
            btb_pc_30 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_31 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1f == fb_wire_bindex) begin
            btb_pc_31 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_32 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h20 == fb_wire_bindex) begin
            btb_pc_32 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_33 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h21 == fb_wire_bindex) begin
            btb_pc_33 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_34 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h22 == fb_wire_bindex) begin
            btb_pc_34 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_35 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h23 == fb_wire_bindex) begin
            btb_pc_35 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_36 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h24 == fb_wire_bindex) begin
            btb_pc_36 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_37 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h25 == fb_wire_bindex) begin
            btb_pc_37 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_38 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h26 == fb_wire_bindex) begin
            btb_pc_38 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_39 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h27 == fb_wire_bindex) begin
            btb_pc_39 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_40 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h28 == fb_wire_bindex) begin
            btb_pc_40 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_41 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h29 == fb_wire_bindex) begin
            btb_pc_41 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_42 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2a == fb_wire_bindex) begin
            btb_pc_42 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_43 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2b == fb_wire_bindex) begin
            btb_pc_43 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_44 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2c == fb_wire_bindex) begin
            btb_pc_44 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_45 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2d == fb_wire_bindex) begin
            btb_pc_45 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_46 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2e == fb_wire_bindex) begin
            btb_pc_46 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_47 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2f == fb_wire_bindex) begin
            btb_pc_47 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_48 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h30 == fb_wire_bindex) begin
            btb_pc_48 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_49 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h31 == fb_wire_bindex) begin
            btb_pc_49 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_50 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h32 == fb_wire_bindex) begin
            btb_pc_50 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_51 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h33 == fb_wire_bindex) begin
            btb_pc_51 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_52 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h34 == fb_wire_bindex) begin
            btb_pc_52 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_53 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h35 == fb_wire_bindex) begin
            btb_pc_53 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_54 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h36 == fb_wire_bindex) begin
            btb_pc_54 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_55 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h37 == fb_wire_bindex) begin
            btb_pc_55 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_56 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h38 == fb_wire_bindex) begin
            btb_pc_56 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_57 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h39 == fb_wire_bindex) begin
            btb_pc_57 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_58 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3a == fb_wire_bindex) begin
            btb_pc_58 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_59 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3b == fb_wire_bindex) begin
            btb_pc_59 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_60 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3c == fb_wire_bindex) begin
            btb_pc_60 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_61 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3d == fb_wire_bindex) begin
            btb_pc_61 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_62 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3e == fb_wire_bindex) begin
            btb_pc_62 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_pc_63 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3f == fb_wire_bindex) begin
            btb_pc_63 <= fb_reg_pc;
          end
        end
      end
    end
    if (reset) begin
      btb_target_0 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h0 == fb_wire_bindex) begin
            btb_target_0 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_1 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1 == fb_wire_bindex) begin
            btb_target_1 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_2 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2 == fb_wire_bindex) begin
            btb_target_2 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_3 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3 == fb_wire_bindex) begin
            btb_target_3 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_4 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h4 == fb_wire_bindex) begin
            btb_target_4 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_5 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h5 == fb_wire_bindex) begin
            btb_target_5 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_6 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h6 == fb_wire_bindex) begin
            btb_target_6 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_7 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h7 == fb_wire_bindex) begin
            btb_target_7 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_8 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h8 == fb_wire_bindex) begin
            btb_target_8 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_9 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h9 == fb_wire_bindex) begin
            btb_target_9 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_10 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'ha == fb_wire_bindex) begin
            btb_target_10 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_11 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'hb == fb_wire_bindex) begin
            btb_target_11 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_12 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'hc == fb_wire_bindex) begin
            btb_target_12 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_13 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'hd == fb_wire_bindex) begin
            btb_target_13 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_14 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'he == fb_wire_bindex) begin
            btb_target_14 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_15 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'hf == fb_wire_bindex) begin
            btb_target_15 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_16 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h10 == fb_wire_bindex) begin
            btb_target_16 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_17 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h11 == fb_wire_bindex) begin
            btb_target_17 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_18 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h12 == fb_wire_bindex) begin
            btb_target_18 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_19 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h13 == fb_wire_bindex) begin
            btb_target_19 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_20 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h14 == fb_wire_bindex) begin
            btb_target_20 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_21 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h15 == fb_wire_bindex) begin
            btb_target_21 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_22 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h16 == fb_wire_bindex) begin
            btb_target_22 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_23 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h17 == fb_wire_bindex) begin
            btb_target_23 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_24 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h18 == fb_wire_bindex) begin
            btb_target_24 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_25 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h19 == fb_wire_bindex) begin
            btb_target_25 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_26 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1a == fb_wire_bindex) begin
            btb_target_26 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_27 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1b == fb_wire_bindex) begin
            btb_target_27 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_28 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1c == fb_wire_bindex) begin
            btb_target_28 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_29 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1d == fb_wire_bindex) begin
            btb_target_29 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_30 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1e == fb_wire_bindex) begin
            btb_target_30 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_31 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1f == fb_wire_bindex) begin
            btb_target_31 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_32 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h20 == fb_wire_bindex) begin
            btb_target_32 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_33 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h21 == fb_wire_bindex) begin
            btb_target_33 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_34 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h22 == fb_wire_bindex) begin
            btb_target_34 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_35 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h23 == fb_wire_bindex) begin
            btb_target_35 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_36 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h24 == fb_wire_bindex) begin
            btb_target_36 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_37 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h25 == fb_wire_bindex) begin
            btb_target_37 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_38 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h26 == fb_wire_bindex) begin
            btb_target_38 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_39 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h27 == fb_wire_bindex) begin
            btb_target_39 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_40 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h28 == fb_wire_bindex) begin
            btb_target_40 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_41 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h29 == fb_wire_bindex) begin
            btb_target_41 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_42 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2a == fb_wire_bindex) begin
            btb_target_42 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_43 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2b == fb_wire_bindex) begin
            btb_target_43 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_44 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2c == fb_wire_bindex) begin
            btb_target_44 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_45 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2d == fb_wire_bindex) begin
            btb_target_45 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_46 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2e == fb_wire_bindex) begin
            btb_target_46 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_47 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2f == fb_wire_bindex) begin
            btb_target_47 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_48 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h30 == fb_wire_bindex) begin
            btb_target_48 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_49 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h31 == fb_wire_bindex) begin
            btb_target_49 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_50 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h32 == fb_wire_bindex) begin
            btb_target_50 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_51 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h33 == fb_wire_bindex) begin
            btb_target_51 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_52 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h34 == fb_wire_bindex) begin
            btb_target_52 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_53 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h35 == fb_wire_bindex) begin
            btb_target_53 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_54 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h36 == fb_wire_bindex) begin
            btb_target_54 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_55 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h37 == fb_wire_bindex) begin
            btb_target_55 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_56 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h38 == fb_wire_bindex) begin
            btb_target_56 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_57 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h39 == fb_wire_bindex) begin
            btb_target_57 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_58 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3a == fb_wire_bindex) begin
            btb_target_58 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_59 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3b == fb_wire_bindex) begin
            btb_target_59 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_60 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3c == fb_wire_bindex) begin
            btb_target_60 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_61 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3d == fb_wire_bindex) begin
            btb_target_61 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_62 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3e == fb_wire_bindex) begin
            btb_target_62 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_target_63 <= 32'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3f == fb_wire_bindex) begin
            btb_target_63 <= fb_reg_target;
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_0 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h0 == fb_wire_bindex) begin
                btb_hcount_0 <= _T_2876;
              end
            end else begin
              if (6'h0 == fb_wire_bindex) begin
                btb_hcount_0 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h0 == fb_wire_bindex) begin
                btb_hcount_0 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_1 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h1 == fb_wire_bindex) begin
                btb_hcount_1 <= _T_2876;
              end
            end else begin
              if (6'h1 == fb_wire_bindex) begin
                btb_hcount_1 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h1 == fb_wire_bindex) begin
                btb_hcount_1 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_2 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h2 == fb_wire_bindex) begin
                btb_hcount_2 <= _T_2876;
              end
            end else begin
              if (6'h2 == fb_wire_bindex) begin
                btb_hcount_2 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h2 == fb_wire_bindex) begin
                btb_hcount_2 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_3 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h3 == fb_wire_bindex) begin
                btb_hcount_3 <= _T_2876;
              end
            end else begin
              if (6'h3 == fb_wire_bindex) begin
                btb_hcount_3 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h3 == fb_wire_bindex) begin
                btb_hcount_3 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_4 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h4 == fb_wire_bindex) begin
                btb_hcount_4 <= _T_2876;
              end
            end else begin
              if (6'h4 == fb_wire_bindex) begin
                btb_hcount_4 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h4 == fb_wire_bindex) begin
                btb_hcount_4 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_5 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h5 == fb_wire_bindex) begin
                btb_hcount_5 <= _T_2876;
              end
            end else begin
              if (6'h5 == fb_wire_bindex) begin
                btb_hcount_5 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h5 == fb_wire_bindex) begin
                btb_hcount_5 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_6 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h6 == fb_wire_bindex) begin
                btb_hcount_6 <= _T_2876;
              end
            end else begin
              if (6'h6 == fb_wire_bindex) begin
                btb_hcount_6 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h6 == fb_wire_bindex) begin
                btb_hcount_6 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_7 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h7 == fb_wire_bindex) begin
                btb_hcount_7 <= _T_2876;
              end
            end else begin
              if (6'h7 == fb_wire_bindex) begin
                btb_hcount_7 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h7 == fb_wire_bindex) begin
                btb_hcount_7 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_8 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h8 == fb_wire_bindex) begin
                btb_hcount_8 <= _T_2876;
              end
            end else begin
              if (6'h8 == fb_wire_bindex) begin
                btb_hcount_8 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h8 == fb_wire_bindex) begin
                btb_hcount_8 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_9 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h9 == fb_wire_bindex) begin
                btb_hcount_9 <= _T_2876;
              end
            end else begin
              if (6'h9 == fb_wire_bindex) begin
                btb_hcount_9 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h9 == fb_wire_bindex) begin
                btb_hcount_9 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_10 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'ha == fb_wire_bindex) begin
                btb_hcount_10 <= _T_2876;
              end
            end else begin
              if (6'ha == fb_wire_bindex) begin
                btb_hcount_10 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'ha == fb_wire_bindex) begin
                btb_hcount_10 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_11 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'hb == fb_wire_bindex) begin
                btb_hcount_11 <= _T_2876;
              end
            end else begin
              if (6'hb == fb_wire_bindex) begin
                btb_hcount_11 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'hb == fb_wire_bindex) begin
                btb_hcount_11 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_12 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'hc == fb_wire_bindex) begin
                btb_hcount_12 <= _T_2876;
              end
            end else begin
              if (6'hc == fb_wire_bindex) begin
                btb_hcount_12 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'hc == fb_wire_bindex) begin
                btb_hcount_12 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_13 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'hd == fb_wire_bindex) begin
                btb_hcount_13 <= _T_2876;
              end
            end else begin
              if (6'hd == fb_wire_bindex) begin
                btb_hcount_13 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'hd == fb_wire_bindex) begin
                btb_hcount_13 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_14 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'he == fb_wire_bindex) begin
                btb_hcount_14 <= _T_2876;
              end
            end else begin
              if (6'he == fb_wire_bindex) begin
                btb_hcount_14 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'he == fb_wire_bindex) begin
                btb_hcount_14 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_15 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'hf == fb_wire_bindex) begin
                btb_hcount_15 <= _T_2876;
              end
            end else begin
              if (6'hf == fb_wire_bindex) begin
                btb_hcount_15 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'hf == fb_wire_bindex) begin
                btb_hcount_15 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_16 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h10 == fb_wire_bindex) begin
                btb_hcount_16 <= _T_2876;
              end
            end else begin
              if (6'h10 == fb_wire_bindex) begin
                btb_hcount_16 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h10 == fb_wire_bindex) begin
                btb_hcount_16 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_17 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h11 == fb_wire_bindex) begin
                btb_hcount_17 <= _T_2876;
              end
            end else begin
              if (6'h11 == fb_wire_bindex) begin
                btb_hcount_17 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h11 == fb_wire_bindex) begin
                btb_hcount_17 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_18 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h12 == fb_wire_bindex) begin
                btb_hcount_18 <= _T_2876;
              end
            end else begin
              if (6'h12 == fb_wire_bindex) begin
                btb_hcount_18 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h12 == fb_wire_bindex) begin
                btb_hcount_18 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_19 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h13 == fb_wire_bindex) begin
                btb_hcount_19 <= _T_2876;
              end
            end else begin
              if (6'h13 == fb_wire_bindex) begin
                btb_hcount_19 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h13 == fb_wire_bindex) begin
                btb_hcount_19 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_20 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h14 == fb_wire_bindex) begin
                btb_hcount_20 <= _T_2876;
              end
            end else begin
              if (6'h14 == fb_wire_bindex) begin
                btb_hcount_20 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h14 == fb_wire_bindex) begin
                btb_hcount_20 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_21 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h15 == fb_wire_bindex) begin
                btb_hcount_21 <= _T_2876;
              end
            end else begin
              if (6'h15 == fb_wire_bindex) begin
                btb_hcount_21 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h15 == fb_wire_bindex) begin
                btb_hcount_21 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_22 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h16 == fb_wire_bindex) begin
                btb_hcount_22 <= _T_2876;
              end
            end else begin
              if (6'h16 == fb_wire_bindex) begin
                btb_hcount_22 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h16 == fb_wire_bindex) begin
                btb_hcount_22 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_23 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h17 == fb_wire_bindex) begin
                btb_hcount_23 <= _T_2876;
              end
            end else begin
              if (6'h17 == fb_wire_bindex) begin
                btb_hcount_23 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h17 == fb_wire_bindex) begin
                btb_hcount_23 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_24 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h18 == fb_wire_bindex) begin
                btb_hcount_24 <= _T_2876;
              end
            end else begin
              if (6'h18 == fb_wire_bindex) begin
                btb_hcount_24 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h18 == fb_wire_bindex) begin
                btb_hcount_24 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_25 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h19 == fb_wire_bindex) begin
                btb_hcount_25 <= _T_2876;
              end
            end else begin
              if (6'h19 == fb_wire_bindex) begin
                btb_hcount_25 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h19 == fb_wire_bindex) begin
                btb_hcount_25 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_26 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h1a == fb_wire_bindex) begin
                btb_hcount_26 <= _T_2876;
              end
            end else begin
              if (6'h1a == fb_wire_bindex) begin
                btb_hcount_26 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h1a == fb_wire_bindex) begin
                btb_hcount_26 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_27 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h1b == fb_wire_bindex) begin
                btb_hcount_27 <= _T_2876;
              end
            end else begin
              if (6'h1b == fb_wire_bindex) begin
                btb_hcount_27 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h1b == fb_wire_bindex) begin
                btb_hcount_27 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_28 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h1c == fb_wire_bindex) begin
                btb_hcount_28 <= _T_2876;
              end
            end else begin
              if (6'h1c == fb_wire_bindex) begin
                btb_hcount_28 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h1c == fb_wire_bindex) begin
                btb_hcount_28 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_29 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h1d == fb_wire_bindex) begin
                btb_hcount_29 <= _T_2876;
              end
            end else begin
              if (6'h1d == fb_wire_bindex) begin
                btb_hcount_29 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h1d == fb_wire_bindex) begin
                btb_hcount_29 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_30 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h1e == fb_wire_bindex) begin
                btb_hcount_30 <= _T_2876;
              end
            end else begin
              if (6'h1e == fb_wire_bindex) begin
                btb_hcount_30 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h1e == fb_wire_bindex) begin
                btb_hcount_30 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_31 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h1f == fb_wire_bindex) begin
                btb_hcount_31 <= _T_2876;
              end
            end else begin
              if (6'h1f == fb_wire_bindex) begin
                btb_hcount_31 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h1f == fb_wire_bindex) begin
                btb_hcount_31 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_32 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h20 == fb_wire_bindex) begin
                btb_hcount_32 <= _T_2876;
              end
            end else begin
              if (6'h20 == fb_wire_bindex) begin
                btb_hcount_32 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h20 == fb_wire_bindex) begin
                btb_hcount_32 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_33 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h21 == fb_wire_bindex) begin
                btb_hcount_33 <= _T_2876;
              end
            end else begin
              if (6'h21 == fb_wire_bindex) begin
                btb_hcount_33 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h21 == fb_wire_bindex) begin
                btb_hcount_33 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_34 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h22 == fb_wire_bindex) begin
                btb_hcount_34 <= _T_2876;
              end
            end else begin
              if (6'h22 == fb_wire_bindex) begin
                btb_hcount_34 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h22 == fb_wire_bindex) begin
                btb_hcount_34 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_35 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h23 == fb_wire_bindex) begin
                btb_hcount_35 <= _T_2876;
              end
            end else begin
              if (6'h23 == fb_wire_bindex) begin
                btb_hcount_35 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h23 == fb_wire_bindex) begin
                btb_hcount_35 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_36 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h24 == fb_wire_bindex) begin
                btb_hcount_36 <= _T_2876;
              end
            end else begin
              if (6'h24 == fb_wire_bindex) begin
                btb_hcount_36 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h24 == fb_wire_bindex) begin
                btb_hcount_36 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_37 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h25 == fb_wire_bindex) begin
                btb_hcount_37 <= _T_2876;
              end
            end else begin
              if (6'h25 == fb_wire_bindex) begin
                btb_hcount_37 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h25 == fb_wire_bindex) begin
                btb_hcount_37 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_38 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h26 == fb_wire_bindex) begin
                btb_hcount_38 <= _T_2876;
              end
            end else begin
              if (6'h26 == fb_wire_bindex) begin
                btb_hcount_38 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h26 == fb_wire_bindex) begin
                btb_hcount_38 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_39 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h27 == fb_wire_bindex) begin
                btb_hcount_39 <= _T_2876;
              end
            end else begin
              if (6'h27 == fb_wire_bindex) begin
                btb_hcount_39 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h27 == fb_wire_bindex) begin
                btb_hcount_39 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_40 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h28 == fb_wire_bindex) begin
                btb_hcount_40 <= _T_2876;
              end
            end else begin
              if (6'h28 == fb_wire_bindex) begin
                btb_hcount_40 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h28 == fb_wire_bindex) begin
                btb_hcount_40 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_41 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h29 == fb_wire_bindex) begin
                btb_hcount_41 <= _T_2876;
              end
            end else begin
              if (6'h29 == fb_wire_bindex) begin
                btb_hcount_41 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h29 == fb_wire_bindex) begin
                btb_hcount_41 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_42 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h2a == fb_wire_bindex) begin
                btb_hcount_42 <= _T_2876;
              end
            end else begin
              if (6'h2a == fb_wire_bindex) begin
                btb_hcount_42 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h2a == fb_wire_bindex) begin
                btb_hcount_42 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_43 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h2b == fb_wire_bindex) begin
                btb_hcount_43 <= _T_2876;
              end
            end else begin
              if (6'h2b == fb_wire_bindex) begin
                btb_hcount_43 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h2b == fb_wire_bindex) begin
                btb_hcount_43 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_44 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h2c == fb_wire_bindex) begin
                btb_hcount_44 <= _T_2876;
              end
            end else begin
              if (6'h2c == fb_wire_bindex) begin
                btb_hcount_44 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h2c == fb_wire_bindex) begin
                btb_hcount_44 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_45 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h2d == fb_wire_bindex) begin
                btb_hcount_45 <= _T_2876;
              end
            end else begin
              if (6'h2d == fb_wire_bindex) begin
                btb_hcount_45 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h2d == fb_wire_bindex) begin
                btb_hcount_45 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_46 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h2e == fb_wire_bindex) begin
                btb_hcount_46 <= _T_2876;
              end
            end else begin
              if (6'h2e == fb_wire_bindex) begin
                btb_hcount_46 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h2e == fb_wire_bindex) begin
                btb_hcount_46 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_47 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h2f == fb_wire_bindex) begin
                btb_hcount_47 <= _T_2876;
              end
            end else begin
              if (6'h2f == fb_wire_bindex) begin
                btb_hcount_47 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h2f == fb_wire_bindex) begin
                btb_hcount_47 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_48 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h30 == fb_wire_bindex) begin
                btb_hcount_48 <= _T_2876;
              end
            end else begin
              if (6'h30 == fb_wire_bindex) begin
                btb_hcount_48 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h30 == fb_wire_bindex) begin
                btb_hcount_48 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_49 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h31 == fb_wire_bindex) begin
                btb_hcount_49 <= _T_2876;
              end
            end else begin
              if (6'h31 == fb_wire_bindex) begin
                btb_hcount_49 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h31 == fb_wire_bindex) begin
                btb_hcount_49 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_50 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h32 == fb_wire_bindex) begin
                btb_hcount_50 <= _T_2876;
              end
            end else begin
              if (6'h32 == fb_wire_bindex) begin
                btb_hcount_50 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h32 == fb_wire_bindex) begin
                btb_hcount_50 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_51 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h33 == fb_wire_bindex) begin
                btb_hcount_51 <= _T_2876;
              end
            end else begin
              if (6'h33 == fb_wire_bindex) begin
                btb_hcount_51 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h33 == fb_wire_bindex) begin
                btb_hcount_51 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_52 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h34 == fb_wire_bindex) begin
                btb_hcount_52 <= _T_2876;
              end
            end else begin
              if (6'h34 == fb_wire_bindex) begin
                btb_hcount_52 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h34 == fb_wire_bindex) begin
                btb_hcount_52 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_53 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h35 == fb_wire_bindex) begin
                btb_hcount_53 <= _T_2876;
              end
            end else begin
              if (6'h35 == fb_wire_bindex) begin
                btb_hcount_53 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h35 == fb_wire_bindex) begin
                btb_hcount_53 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_54 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h36 == fb_wire_bindex) begin
                btb_hcount_54 <= _T_2876;
              end
            end else begin
              if (6'h36 == fb_wire_bindex) begin
                btb_hcount_54 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h36 == fb_wire_bindex) begin
                btb_hcount_54 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_55 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h37 == fb_wire_bindex) begin
                btb_hcount_55 <= _T_2876;
              end
            end else begin
              if (6'h37 == fb_wire_bindex) begin
                btb_hcount_55 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h37 == fb_wire_bindex) begin
                btb_hcount_55 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_56 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h38 == fb_wire_bindex) begin
                btb_hcount_56 <= _T_2876;
              end
            end else begin
              if (6'h38 == fb_wire_bindex) begin
                btb_hcount_56 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h38 == fb_wire_bindex) begin
                btb_hcount_56 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_57 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h39 == fb_wire_bindex) begin
                btb_hcount_57 <= _T_2876;
              end
            end else begin
              if (6'h39 == fb_wire_bindex) begin
                btb_hcount_57 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h39 == fb_wire_bindex) begin
                btb_hcount_57 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_58 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h3a == fb_wire_bindex) begin
                btb_hcount_58 <= _T_2876;
              end
            end else begin
              if (6'h3a == fb_wire_bindex) begin
                btb_hcount_58 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h3a == fb_wire_bindex) begin
                btb_hcount_58 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_59 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h3b == fb_wire_bindex) begin
                btb_hcount_59 <= _T_2876;
              end
            end else begin
              if (6'h3b == fb_wire_bindex) begin
                btb_hcount_59 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h3b == fb_wire_bindex) begin
                btb_hcount_59 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_60 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h3c == fb_wire_bindex) begin
                btb_hcount_60 <= _T_2876;
              end
            end else begin
              if (6'h3c == fb_wire_bindex) begin
                btb_hcount_60 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h3c == fb_wire_bindex) begin
                btb_hcount_60 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_61 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h3d == fb_wire_bindex) begin
                btb_hcount_61 <= _T_2876;
              end
            end else begin
              if (6'h3d == fb_wire_bindex) begin
                btb_hcount_61 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h3d == fb_wire_bindex) begin
                btb_hcount_61 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_62 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h3e == fb_wire_bindex) begin
                btb_hcount_62 <= _T_2876;
              end
            end else begin
              if (6'h3e == fb_wire_bindex) begin
                btb_hcount_62 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h3e == fb_wire_bindex) begin
                btb_hcount_62 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_hcount_63 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (_T_2866) begin
          if (_T_2114) begin
            if (fb_reg_redirect) begin
              if (6'h3f == fb_wire_bindex) begin
                btb_hcount_63 <= _T_2876;
              end
            end else begin
              if (6'h3f == fb_wire_bindex) begin
                btb_hcount_63 <= _T_2885;
              end
            end
          end else begin
            if (fb_reg_redirect) begin
              if (6'h3f == fb_wire_bindex) begin
                btb_hcount_63 <= 2'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      btb_btype_0 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h0 == fb_wire_bindex) begin
            btb_btype_0 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_1 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1 == fb_wire_bindex) begin
            btb_btype_1 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_2 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2 == fb_wire_bindex) begin
            btb_btype_2 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_3 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3 == fb_wire_bindex) begin
            btb_btype_3 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_4 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h4 == fb_wire_bindex) begin
            btb_btype_4 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_5 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h5 == fb_wire_bindex) begin
            btb_btype_5 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_6 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h6 == fb_wire_bindex) begin
            btb_btype_6 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_7 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h7 == fb_wire_bindex) begin
            btb_btype_7 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_8 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h8 == fb_wire_bindex) begin
            btb_btype_8 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_9 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h9 == fb_wire_bindex) begin
            btb_btype_9 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_10 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'ha == fb_wire_bindex) begin
            btb_btype_10 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_11 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'hb == fb_wire_bindex) begin
            btb_btype_11 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_12 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'hc == fb_wire_bindex) begin
            btb_btype_12 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_13 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'hd == fb_wire_bindex) begin
            btb_btype_13 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_14 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'he == fb_wire_bindex) begin
            btb_btype_14 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_15 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'hf == fb_wire_bindex) begin
            btb_btype_15 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_16 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h10 == fb_wire_bindex) begin
            btb_btype_16 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_17 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h11 == fb_wire_bindex) begin
            btb_btype_17 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_18 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h12 == fb_wire_bindex) begin
            btb_btype_18 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_19 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h13 == fb_wire_bindex) begin
            btb_btype_19 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_20 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h14 == fb_wire_bindex) begin
            btb_btype_20 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_21 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h15 == fb_wire_bindex) begin
            btb_btype_21 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_22 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h16 == fb_wire_bindex) begin
            btb_btype_22 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_23 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h17 == fb_wire_bindex) begin
            btb_btype_23 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_24 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h18 == fb_wire_bindex) begin
            btb_btype_24 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_25 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h19 == fb_wire_bindex) begin
            btb_btype_25 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_26 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1a == fb_wire_bindex) begin
            btb_btype_26 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_27 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1b == fb_wire_bindex) begin
            btb_btype_27 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_28 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1c == fb_wire_bindex) begin
            btb_btype_28 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_29 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1d == fb_wire_bindex) begin
            btb_btype_29 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_30 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1e == fb_wire_bindex) begin
            btb_btype_30 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_31 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h1f == fb_wire_bindex) begin
            btb_btype_31 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_32 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h20 == fb_wire_bindex) begin
            btb_btype_32 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_33 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h21 == fb_wire_bindex) begin
            btb_btype_33 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_34 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h22 == fb_wire_bindex) begin
            btb_btype_34 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_35 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h23 == fb_wire_bindex) begin
            btb_btype_35 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_36 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h24 == fb_wire_bindex) begin
            btb_btype_36 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_37 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h25 == fb_wire_bindex) begin
            btb_btype_37 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_38 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h26 == fb_wire_bindex) begin
            btb_btype_38 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_39 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h27 == fb_wire_bindex) begin
            btb_btype_39 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_40 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h28 == fb_wire_bindex) begin
            btb_btype_40 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_41 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h29 == fb_wire_bindex) begin
            btb_btype_41 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_42 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2a == fb_wire_bindex) begin
            btb_btype_42 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_43 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2b == fb_wire_bindex) begin
            btb_btype_43 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_44 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2c == fb_wire_bindex) begin
            btb_btype_44 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_45 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2d == fb_wire_bindex) begin
            btb_btype_45 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_46 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2e == fb_wire_bindex) begin
            btb_btype_46 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_47 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h2f == fb_wire_bindex) begin
            btb_btype_47 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_48 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h30 == fb_wire_bindex) begin
            btb_btype_48 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_49 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h31 == fb_wire_bindex) begin
            btb_btype_49 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_50 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h32 == fb_wire_bindex) begin
            btb_btype_50 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_51 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h33 == fb_wire_bindex) begin
            btb_btype_51 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_52 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h34 == fb_wire_bindex) begin
            btb_btype_52 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_53 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h35 == fb_wire_bindex) begin
            btb_btype_53 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_54 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h36 == fb_wire_bindex) begin
            btb_btype_54 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_55 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h37 == fb_wire_bindex) begin
            btb_btype_55 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_56 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h38 == fb_wire_bindex) begin
            btb_btype_56 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_57 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h39 == fb_wire_bindex) begin
            btb_btype_57 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_58 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3a == fb_wire_bindex) begin
            btb_btype_58 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_59 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3b == fb_wire_bindex) begin
            btb_btype_59 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_60 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3c == fb_wire_bindex) begin
            btb_btype_60 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_61 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3d == fb_wire_bindex) begin
            btb_btype_61 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_62 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3e == fb_wire_bindex) begin
            btb_btype_62 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      btb_btype_63 <= 2'h0;
    end else begin
      if (fb_reg_valid) begin
        if (fb_reg_redirect) begin
          if (6'h3f == fb_wire_bindex) begin
            btb_btype_63 <= fb_reg_btype;
          end
        end
      end
    end
    if (reset) begin
      fb_reg_valid <= 1'h0;
    end else begin
      fb_reg_valid <= io_feedBack_valid;
    end
    if (reset) begin
      fb_reg_redirect <= 1'h0;
    end else begin
      fb_reg_redirect <= io_feedBack_bits_redirect;
    end
    if (reset) begin
      fb_reg_lfsr <= 6'h1;
    end else begin
      fb_reg_lfsr <= _T_1394;
    end
    if (reset) begin
      fb_reg_pc <= 32'h0;
    end else begin
      fb_reg_pc <= io_fb_pc;
    end
    if (reset) begin
      fb_reg_target <= 32'h0;
    end else begin
      fb_reg_target <= io_feedBack_bits_tgt;
    end
    if (reset) begin
      fb_reg_btype <= 2'h0;
    end else begin
      fb_reg_btype <= io_fb_type;
    end
  end
endmodule