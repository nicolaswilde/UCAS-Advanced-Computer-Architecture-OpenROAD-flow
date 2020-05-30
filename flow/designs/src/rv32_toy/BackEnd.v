module BackEnd( // @[:@5014.2]
  input         clock, // @[:@5015.4]
  input         reset, // @[:@5016.4]
  output        io_mem_req_valid, // @[:@5017.4]
  output [31:0] io_mem_req_bits_addr, // @[:@5017.4]
  output [31:0] io_mem_req_bits_data, // @[:@5017.4]
  output        io_mem_req_bits_fcn, // @[:@5017.4]
  output [2:0]  io_mem_req_bits_typ, // @[:@5017.4]
  input         io_mem_resp_valid, // @[:@5017.4]
  input  [31:0] io_mem_resp_bits_data, // @[:@5017.4]
  output [31:0] io_cyc, // @[:@5017.4]
  output        io_front_xcpt_valid, // @[:@5017.4]
  output [31:0] io_front_xcpt_bits, // @[:@5017.4]
  output        io_front_kill, // @[:@5017.4]
  output        io_front_fence, // @[:@5017.4]
  output        io_front_forward, // @[:@5017.4]
  output        io_front_ras_pop, // @[:@5017.4]
  output        io_front_ras_push_valid, // @[:@5017.4]
  output [31:0] io_front_ras_push_bits, // @[:@5017.4]
  output [31:0] io_front_fb_pc, // @[:@5017.4]
  output [1:0]  io_front_fb_type, // @[:@5017.4]
  output        io_front_feedBack_valid, // @[:@5017.4]
  output        io_front_feedBack_bits_redirect, // @[:@5017.4]
  output [31:0] io_front_feedBack_bits_tgt, // @[:@5017.4]
  input         io_front_inst_valid, // @[:@5017.4]
  input  [31:0] io_front_inst_bits, // @[:@5017.4]
  input  [31:0] io_front_pc, // @[:@5017.4]
  input  [31:0] io_front_pred_tgt // @[:@5017.4]
);
  wire  csr_clock; // @[BackEnd.scala 86:19:@5019.4]
  wire  csr_reset; // @[BackEnd.scala 86:19:@5019.4]
  wire [2:0] csr_io_rw_cmd; // @[BackEnd.scala 86:19:@5019.4]
  wire [11:0] csr_io_rw_addr; // @[BackEnd.scala 86:19:@5019.4]
  wire [31:0] csr_io_rw_rdata; // @[BackEnd.scala 86:19:@5019.4]
  wire [31:0] csr_io_rw_wdata; // @[BackEnd.scala 86:19:@5019.4]
  wire  csr_io_eret; // @[BackEnd.scala 86:19:@5019.4]
  wire [1:0] csr_io_status_prv; // @[BackEnd.scala 86:19:@5019.4]
  wire [13:0] csr_io_status_unimp5; // @[BackEnd.scala 86:19:@5019.4]
  wire  csr_io_status_mprv; // @[BackEnd.scala 86:19:@5019.4]
  wire [1:0] csr_io_status_unimp4; // @[BackEnd.scala 86:19:@5019.4]
  wire [1:0] csr_io_status_mpp; // @[BackEnd.scala 86:19:@5019.4]
  wire [2:0] csr_io_status_unimp3; // @[BackEnd.scala 86:19:@5019.4]
  wire  csr_io_status_mpie; // @[BackEnd.scala 86:19:@5019.4]
  wire [2:0] csr_io_status_unimp2; // @[BackEnd.scala 86:19:@5019.4]
  wire  csr_io_status_mie; // @[BackEnd.scala 86:19:@5019.4]
  wire [2:0] csr_io_status_unimp1; // @[BackEnd.scala 86:19:@5019.4]
  wire  csr_io_xcpt; // @[BackEnd.scala 86:19:@5019.4]
  wire [31:0] csr_io_cause; // @[BackEnd.scala 86:19:@5019.4]
  wire [31:0] csr_io_tval; // @[BackEnd.scala 86:19:@5019.4]
  wire [31:0] csr_io_evec; // @[BackEnd.scala 86:19:@5019.4]
  wire  csr_io_illegal; // @[BackEnd.scala 86:19:@5019.4]
  wire [1:0] csr_io_retire; // @[BackEnd.scala 86:19:@5019.4]
  wire [31:0] csr_io_pc; // @[BackEnd.scala 86:19:@5019.4]
  wire [31:0] csr_io_time; // @[BackEnd.scala 86:19:@5019.4]
  wire [31:0] InstDecoder_io_inst; // @[BackEnd.scala 91:25:@5025.4]
  wire [3:0] InstDecoder_io_cinfo_br_type; // @[BackEnd.scala 91:25:@5025.4]
  wire [1:0] InstDecoder_io_cinfo_op1_sel; // @[BackEnd.scala 91:25:@5025.4]
  wire [2:0] InstDecoder_io_cinfo_op2_sel; // @[BackEnd.scala 91:25:@5025.4]
  wire  InstDecoder_io_cinfo_rs1_oen; // @[BackEnd.scala 91:25:@5025.4]
  wire  InstDecoder_io_cinfo_rs2_oen; // @[BackEnd.scala 91:25:@5025.4]
  wire [3:0] InstDecoder_io_cinfo_alu_fun; // @[BackEnd.scala 91:25:@5025.4]
  wire [1:0] InstDecoder_io_cinfo_wb_sel; // @[BackEnd.scala 91:25:@5025.4]
  wire  InstDecoder_io_cinfo_rf_wen; // @[BackEnd.scala 91:25:@5025.4]
  wire  InstDecoder_io_cinfo_mem_en; // @[BackEnd.scala 91:25:@5025.4]
  wire  InstDecoder_io_cinfo_mem_fcn; // @[BackEnd.scala 91:25:@5025.4]
  wire [2:0] InstDecoder_io_cinfo_mem_typ; // @[BackEnd.scala 91:25:@5025.4]
  wire [2:0] InstDecoder_io_cinfo_csr_cmd; // @[BackEnd.scala 91:25:@5025.4]
  wire  InstDecoder_io_cinfo_illegal; // @[BackEnd.scala 91:25:@5025.4]
  wire  InstDecoder_io_cinfo_fencei; // @[BackEnd.scala 91:25:@5025.4]
  wire  InstDecoder_io_cinfo_is_branch; // @[BackEnd.scala 91:25:@5025.4]
  wire  InstDecoder_io_cinfo_push; // @[BackEnd.scala 91:25:@5025.4]
  wire  InstDecoder_io_cinfo_pop; // @[BackEnd.scala 91:25:@5025.4]
  wire [4:0] InstDecoder_io_cinfo_rs1_addr; // @[BackEnd.scala 91:25:@5025.4]
  wire [4:0] InstDecoder_io_cinfo_rs2_addr; // @[BackEnd.scala 91:25:@5025.4]
  wire [4:0] InstDecoder_io_cinfo_wbaddr; // @[BackEnd.scala 91:25:@5025.4]
  wire [31:0] InstDecoder_io_dinfo_imm_i; // @[BackEnd.scala 91:25:@5025.4]
  wire [31:0] InstDecoder_io_dinfo_imm_s; // @[BackEnd.scala 91:25:@5025.4]
  wire [31:0] InstDecoder_io_dinfo_imm_sb; // @[BackEnd.scala 91:25:@5025.4]
  wire [31:0] InstDecoder_io_dinfo_imm_u; // @[BackEnd.scala 91:25:@5025.4]
  wire [31:0] InstDecoder_io_dinfo_imm_uj; // @[BackEnd.scala 91:25:@5025.4]
  wire [31:0] InstDecoder_io_dinfo_imm_z; // @[BackEnd.scala 91:25:@5025.4]
  wire  regfile_clock; // @[BackEnd.scala 122:23:@5056.4]
  wire [4:0] regfile_io_rs1_addr; // @[BackEnd.scala 122:23:@5056.4]
  wire [31:0] regfile_io_rs1_data; // @[BackEnd.scala 122:23:@5056.4]
  wire [4:0] regfile_io_rs2_addr; // @[BackEnd.scala 122:23:@5056.4]
  wire [31:0] regfile_io_rs2_data; // @[BackEnd.scala 122:23:@5056.4]
  wire [4:0] regfile_io_waddr; // @[BackEnd.scala 122:23:@5056.4]
  wire [31:0] regfile_io_wdata; // @[BackEnd.scala 122:23:@5056.4]
  wire  regfile_io_wen; // @[BackEnd.scala 122:23:@5056.4]
  wire [31:0] ALU_io_op1; // @[BackEnd.scala 193:19:@5165.4]
  wire [31:0] ALU_io_op2; // @[BackEnd.scala 193:19:@5165.4]
  wire [31:0] ALU_io_pc; // @[BackEnd.scala 193:19:@5165.4]
  wire [3:0] ALU_io_ctrl_fun; // @[BackEnd.scala 193:19:@5165.4]
  wire [3:0] ALU_io_ctrl_br_type; // @[BackEnd.scala 193:19:@5165.4]
  wire [1:0] ALU_io_ctrl_wb_sel; // @[BackEnd.scala 193:19:@5165.4]
  wire [1:0] ALU_io_ctrl_pc_sel; // @[BackEnd.scala 193:19:@5165.4]
  wire [31:0] ALU_io_rs2_data; // @[BackEnd.scala 193:19:@5165.4]
  wire [31:0] ALU_io_result; // @[BackEnd.scala 193:19:@5165.4]
  wire [31:0] ALU_io_target_brjmp; // @[BackEnd.scala 193:19:@5165.4]
  wire [31:0] ALU_io_target_jpreg; // @[BackEnd.scala 193:19:@5165.4]
  wire [31:0] ALU_io_target_conti; // @[BackEnd.scala 193:19:@5165.4]
  reg  exe_rf_wen; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_0;
  reg [4:0] exe_wbaddr; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_1;
  reg  exe_mem_en; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_2;
  reg [2:0] exe_csr_cmd; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_3;
  reg  exe_illegal; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_4;
  reg [31:0] exe_pc; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_5;
  reg [31:0] exe_inst; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_6;
  reg [31:0] exe_rs2_data; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_7;
  reg [1:0] exe_wb_sel; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_8;
  reg  exe_mem_fcn; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_9;
  reg [2:0] exe_mem_typ; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_10;
  reg  exe_fencei; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_11;
  reg [3:0] exe_br_type; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_12;
  reg  exe_branch; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_13;
  reg  exe_push; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_14;
  reg  exe_pop; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_15;
  reg [31:0] exe_pred_tgt; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_16;
  reg [31:0] exe_op1_data; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_17;
  reg [31:0] exe_op2_data; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_18;
  reg [3:0] exe_alu_fun; // @[BackEnd.scala 94:22:@5030.4]
  reg [31:0] _RAND_19;
  reg  exe_valid; // @[BackEnd.scala 95:26:@5031.4]
  reg [31:0] _RAND_20;
  reg  mem_rf_wen; // @[BackEnd.scala 97:22:@5033.4]
  reg [31:0] _RAND_21;
  reg [4:0] mem_wbaddr; // @[BackEnd.scala 97:22:@5033.4]
  reg [31:0] _RAND_22;
  reg  mem_mem_en; // @[BackEnd.scala 97:22:@5033.4]
  reg [31:0] _RAND_23;
  reg [2:0] mem_csr_cmd; // @[BackEnd.scala 97:22:@5033.4]
  reg [31:0] _RAND_24;
  reg  mem_illegal; // @[BackEnd.scala 97:22:@5033.4]
  reg [31:0] _RAND_25;
  reg [31:0] mem_pc; // @[BackEnd.scala 97:22:@5033.4]
  reg [31:0] _RAND_26;
  reg [31:0] mem_inst; // @[BackEnd.scala 97:22:@5033.4]
  reg [31:0] _RAND_27;
  reg [1:0] mem_wb_sel; // @[BackEnd.scala 97:22:@5033.4]
  reg [31:0] _RAND_28;
  reg  mem_valid; // @[BackEnd.scala 98:26:@5034.4]
  reg [31:0] _RAND_29;
  reg  wb_rf_wen; // @[BackEnd.scala 100:22:@5036.4]
  reg [31:0] _RAND_30;
  reg [4:0] wb_wbaddr; // @[BackEnd.scala 100:22:@5036.4]
  reg [31:0] _RAND_31;
  reg  wb_valid; // @[BackEnd.scala 101:26:@5037.4]
  reg [31:0] _RAND_32;
  reg [31:0] wb_wbdata; // @[BackEnd.scala 106:23:@5041.4]
  reg [31:0] _RAND_33;
  wire  dec_wire_rs1_oen; // @[BackEnd.scala 110:33:@5044.4]
  wire  dec_wire_rs2_oen; // @[BackEnd.scala 111:33:@5046.4]
  wire  dec_wire_fencei; // @[BackEnd.scala 112:33:@5048.4]
  wire  exe_wire_fencei; // @[BackEnd.scala 191:34:@5163.4]
  wire  _T_177; // @[BackEnd.scala 131:18:@5065.4]
  wire  _T_232; // @[BackEnd.scala 183:34:@5145.4]
  wire  _T_234; // @[BackEnd.scala 183:61:@5146.4]
  wire  exe_wire_rf_wen; // @[BackEnd.scala 183:47:@5147.4]
  wire  _T_178; // @[BackEnd.scala 131:42:@5066.4]
  wire  _T_179; // @[BackEnd.scala 132:18:@5067.4]
  wire  _T_326; // @[BackEnd.scala 267:35:@5289.4]
  wire  _T_328; // @[BackEnd.scala 267:62:@5290.4]
  wire  mem_wire_rf_wen; // @[BackEnd.scala 267:48:@5291.4]
  wire  _T_180; // @[BackEnd.scala 132:42:@5068.4]
  wire  _T_181; // @[BackEnd.scala 133:18:@5069.4]
  wire  _T_363; // @[BackEnd.scala 315:33:@5433.4]
  wire  _T_365; // @[BackEnd.scala 315:58:@5434.4]
  wire  wb_wire_rf_wen; // @[BackEnd.scala 315:45:@5435.4]
  wire  _T_182; // @[BackEnd.scala 133:42:@5070.4]
  wire [31:0] rf_rs1_data; // @[BackEnd.scala 123:25:@5059.4 BackEnd.scala 127:15:@5063.4]
  wire [31:0] _T_183; // @[Mux.scala 61:16:@5071.4]
  wire  _T_357; // @[BackEnd.scala 302:17:@5418.4]
  wire  _T_358; // @[BackEnd.scala 303:17:@5419.4]
  reg [31:0] mem_exe_out; // @[BackEnd.scala 239:25:@5250.4]
  reg [31:0] _RAND_34;
  wire [31:0] _T_359; // @[Mux.scala 61:16:@5420.4]
  wire [31:0] mem_wbdata; // @[Mux.scala 61:16:@5421.4]
  wire [31:0] _T_184; // @[Mux.scala 61:16:@5072.4]
  wire [31:0] exe_wbdata; // @[BackEnd.scala 104:24:@5039.4 BackEnd.scala 201:20:@5175.4]
  wire [31:0] dec_rs1_data; // @[Mux.scala 61:16:@5073.4]
  wire  _T_186; // @[BackEnd.scala 137:18:@5075.4]
  wire  _T_187; // @[BackEnd.scala 137:42:@5076.4]
  wire  _T_188; // @[BackEnd.scala 138:18:@5077.4]
  wire  _T_189; // @[BackEnd.scala 138:42:@5078.4]
  wire  _T_190; // @[BackEnd.scala 139:18:@5079.4]
  wire  _T_191; // @[BackEnd.scala 139:42:@5080.4]
  wire [31:0] rf_rs2_data; // @[BackEnd.scala 124:25:@5060.4 BackEnd.scala 128:15:@5064.4]
  wire [31:0] _T_192; // @[Mux.scala 61:16:@5081.4]
  wire [31:0] _T_193; // @[Mux.scala 61:16:@5082.4]
  wire [31:0] dec_rs2_data; // @[Mux.scala 61:16:@5083.4]
  wire  _T_195; // @[BackEnd.scala 143:24:@5085.4]
  wire  _T_196; // @[BackEnd.scala 144:24:@5086.4]
  wire [31:0] _T_197; // @[Mux.scala 61:16:@5087.4]
  wire [31:0] dec_op1_data; // @[Mux.scala 61:16:@5088.4]
  wire  _T_199; // @[BackEnd.scala 147:24:@5090.4]
  wire  _T_200; // @[BackEnd.scala 148:24:@5091.4]
  wire  _T_201; // @[BackEnd.scala 149:24:@5092.4]
  wire  _T_202; // @[BackEnd.scala 150:24:@5093.4]
  wire  _T_203; // @[BackEnd.scala 151:24:@5094.4]
  wire [31:0] _T_204; // @[Mux.scala 61:16:@5095.4]
  wire [31:0] _T_205; // @[Mux.scala 61:16:@5096.4]
  wire [31:0] _T_206; // @[Mux.scala 61:16:@5097.4]
  wire [31:0] _T_207; // @[Mux.scala 61:16:@5098.4]
  wire [31:0] dec_op2_data; // @[Mux.scala 61:16:@5099.4]
  wire  exe_wire_mem_en; // @[BackEnd.scala 184:34:@5149.4]
  wire  _T_427; // @[BackEnd.scala 325:60:@5501.4]
  wire  exe_load_inst; // @[BackEnd.scala 325:45:@5502.4]
  wire  _T_429; // @[BackEnd.scala 328:20:@5504.4]
  wire  _T_431; // @[BackEnd.scala 328:79:@5505.4]
  wire  _T_432; // @[BackEnd.scala 328:57:@5506.4]
  wire  _T_433; // @[BackEnd.scala 328:87:@5507.4]
  wire  _T_435; // @[BackEnd.scala 329:20:@5509.4]
  wire  _T_437; // @[BackEnd.scala 329:79:@5510.4]
  wire  _T_438; // @[BackEnd.scala 329:57:@5511.4]
  wire  _T_439; // @[BackEnd.scala 329:87:@5512.4]
  wire  _T_440; // @[BackEnd.scala 328:108:@5513.4]
  wire [2:0] exe_wire_csr_cmd; // @[BackEnd.scala 185:26:@5151.4]
  wire  _T_441; // @[BackEnd.scala 330:22:@5514.4]
  wire  stall_0; // @[BackEnd.scala 329:108:@5515.4]
  wire  mem_wire_mem_en; // @[BackEnd.scala 268:35:@5293.4]
  wire  _T_447; // @[BackEnd.scala 333:42:@5520.4]
  wire  _T_448; // @[BackEnd.scala 333:39:@5521.4]
  reg  mem_ma_load; // @[BackEnd.scala 241:25:@5252.4]
  reg [31:0] _RAND_35;
  wire  mem_wire_ma_load; // @[BackEnd.scala 271:36:@5299.4]
  reg  mem_ma_store; // @[BackEnd.scala 242:25:@5253.4]
  reg [31:0] _RAND_36;
  wire  mem_wire_ma_store; // @[BackEnd.scala 272:37:@5301.4]
  wire  mem_wire_ma_valid; // @[BackEnd.scala 273:41:@5303.4]
  wire  _T_450; // @[BackEnd.scala 333:64:@5522.4]
  wire  stall_2; // @[BackEnd.scala 333:61:@5523.4]
  wire  _T_213; // @[BackEnd.scala 153:51:@5103.4]
  wire  _T_214; // @[BackEnd.scala 153:48:@5104.4]
  wire  _T_215; // @[BackEnd.scala 153:70:@5105.4]
  wire  _T_223; // @[BackEnd.scala 157:34:@5114.8]
  wire  _T_224; // @[BackEnd.scala 157:31:@5115.8]
  wire  _T_225; // @[BackEnd.scala 161:44:@5119.8]
  wire  _T_226; // @[BackEnd.scala 161:75:@5120.8]
  wire  _T_227; // @[BackEnd.scala 161:54:@5121.8]
  wire  _T_229; // @[BackEnd.scala 162:26:@5122.8]
  wire  _T_230; // @[BackEnd.scala 161:86:@5123.8]
  wire [2:0] _T_231; // @[BackEnd.scala 161:24:@5124.8]
  wire  _GEN_0; // @[BackEnd.scala 156:54:@5113.6]
  wire  _GEN_1; // @[BackEnd.scala 156:54:@5113.6]
  wire  _GEN_2; // @[BackEnd.scala 156:54:@5113.6]
  wire [2:0] _GEN_3; // @[BackEnd.scala 156:54:@5113.6]
  wire  _GEN_4; // @[BackEnd.scala 156:54:@5113.6]
  wire  _GEN_5; // @[BackEnd.scala 156:54:@5113.6]
  wire [3:0] _GEN_6; // @[BackEnd.scala 156:54:@5113.6]
  wire [31:0] _GEN_7; // @[BackEnd.scala 156:54:@5113.6]
  wire [31:0] _GEN_8; // @[BackEnd.scala 156:54:@5113.6]
  wire [31:0] _GEN_9; // @[BackEnd.scala 156:54:@5113.6]
  wire [31:0] _GEN_10; // @[BackEnd.scala 156:54:@5113.6]
  wire [31:0] _GEN_11; // @[BackEnd.scala 156:54:@5113.6]
  wire [3:0] _GEN_12; // @[BackEnd.scala 156:54:@5113.6]
  wire [1:0] _GEN_13; // @[BackEnd.scala 156:54:@5113.6]
  wire [4:0] _GEN_14; // @[BackEnd.scala 156:54:@5113.6]
  wire  _GEN_15; // @[BackEnd.scala 156:54:@5113.6]
  wire [2:0] _GEN_16; // @[BackEnd.scala 156:54:@5113.6]
  wire  _GEN_17; // @[BackEnd.scala 156:54:@5113.6]
  wire  _GEN_18; // @[BackEnd.scala 156:54:@5113.6]
  wire  _GEN_19; // @[BackEnd.scala 156:54:@5113.6]
  wire [31:0] _GEN_20; // @[BackEnd.scala 156:54:@5113.6]
  wire  _GEN_22; // @[BackEnd.scala 153:94:@5106.4]
  wire [3:0] exe_wire_br_type; // @[BackEnd.scala 186:26:@5153.4]
  wire  exe_wire_branch; // @[BackEnd.scala 187:33:@5155.4]
  wire  exe_wire_push; // @[BackEnd.scala 188:33:@5157.4]
  wire  exe_wire_pop; // @[BackEnd.scala 189:33:@5159.4]
  reg  _T_248; // @[BackEnd.scala 72:27:@5177.4]
  reg [31:0] _RAND_37;
  wire  _GEN_44; // @[BackEnd.scala 74:20:@5182.6]
  wire  _GEN_45; // @[BackEnd.scala 73:20:@5178.4]
  reg  _T_256; // @[BackEnd.scala 72:27:@5188.4]
  reg [31:0] _RAND_38;
  wire  _GEN_46; // @[BackEnd.scala 74:20:@5193.6]
  wire  _GEN_47; // @[BackEnd.scala 73:20:@5189.4]
  wire  _T_260; // @[BackEnd.scala 208:25:@5199.4]
  wire  _T_261; // @[BackEnd.scala 209:25:@5200.4]
  wire [31:0] _T_262; // @[BackEnd.scala 209:8:@5201.4]
  wire [31:0] next_pc; // @[BackEnd.scala 208:8:@5202.4]
  wire [1:0] _T_266; // @[BackEnd.scala 215:10:@5204.4]
  wire  _T_268; // @[BackEnd.scala 217:53:@5207.4]
  reg  _T_273; // @[BackEnd.scala 72:27:@5209.4]
  reg [31:0] _RAND_39;
  wire  _GEN_48; // @[BackEnd.scala 74:20:@5214.6]
  wire  _GEN_49; // @[BackEnd.scala 73:20:@5210.4]
  wire  _T_281; // @[BackEnd.scala 221:42:@5225.4]
  wire  mispredict; // @[BackEnd.scala 221:59:@5226.4]
  wire [1:0] _T_283; // @[BackEnd.scala 224:45:@5228.4]
  wire  _T_286; // @[BackEnd.scala 225:22:@5229.4]
  wire [1:0] _T_288; // @[BackEnd.scala 226:22:@5230.4]
  wire  _T_290; // @[BackEnd.scala 226:28:@5231.4]
  wire  _T_291; // @[Mux.scala 46:19:@5232.4]
  wire  _T_292; // @[Mux.scala 46:16:@5233.4]
  wire  _T_293; // @[Mux.scala 46:19:@5234.4]
  wire  exe_wire_ma_valid; // @[Mux.scala 46:16:@5235.4]
  wire  exe_wire_ma_load; // @[BackEnd.scala 228:46:@5238.4]
  wire  exe_wire_ma_store; // @[BackEnd.scala 229:46:@5241.4]
  wire  _T_300; // @[BackEnd.scala 232:46:@5243.4]
  reg [31:0] mem_jpnpc; // @[BackEnd.scala 240:25:@5251.4]
  reg [31:0] _RAND_40;
  wire  _T_309; // @[BackEnd.scala 243:47:@5256.4]
  wire [31:0] _T_317; // @[Bitwise.scala 72:12:@5280.8]
  wire [31:0] _T_318; // @[BackEnd.scala 262:70:@5281.8]
  wire [31:0] _T_323; // @[Bitwise.scala 72:12:@5284.8]
  wire [31:0] _T_324; // @[BackEnd.scala 263:74:@5285.8]
  wire [31:0] _T_325; // @[BackEnd.scala 262:90:@5286.8]
  wire  _GEN_50; // @[BackEnd.scala 245:34:@5262.6]
  wire  _GEN_51; // @[BackEnd.scala 245:34:@5262.6]
  wire  _GEN_52; // @[BackEnd.scala 245:34:@5262.6]
  wire [2:0] _GEN_53; // @[BackEnd.scala 245:34:@5262.6]
  wire  _GEN_54; // @[BackEnd.scala 245:34:@5262.6]
  wire [31:0] _GEN_55; // @[BackEnd.scala 245:34:@5262.6]
  wire [31:0] _GEN_56; // @[BackEnd.scala 245:34:@5262.6]
  wire [1:0] _GEN_57; // @[BackEnd.scala 245:34:@5262.6]
  wire [4:0] _GEN_58; // @[BackEnd.scala 245:34:@5262.6]
  wire  _GEN_62; // @[BackEnd.scala 245:34:@5262.6]
  wire  _GEN_63; // @[BackEnd.scala 245:34:@5262.6]
  wire [31:0] _GEN_64; // @[BackEnd.scala 245:34:@5262.6]
  wire [31:0] _GEN_65; // @[BackEnd.scala 245:34:@5262.6]
  wire  _GEN_66; // @[BackEnd.scala 243:71:@5257.4]
  wire  mem_wire_illegal; // @[BackEnd.scala 270:36:@5297.4]
  wire [1:0] _T_337; // @[BackEnd.scala 281:32:@5399.4]
  wire  _T_339; // @[BackEnd.scala 281:38:@5400.4]
  wire  ma_jump; // @[BackEnd.scala 281:42:@5401.4]
  wire  _T_341; // @[BackEnd.scala 283:57:@5403.4]
  wire [1:0] _T_348; // @[Mux.scala 61:16:@5406.4]
  wire [2:0] _T_349; // @[Mux.scala 61:16:@5407.4]
  wire [2:0] _T_350; // @[Mux.scala 61:16:@5408.4]
  wire [2:0] _T_351; // @[Mux.scala 61:16:@5409.4]
  wire [31:0] _T_353; // @[Mux.scala 61:16:@5411.4]
  wire [31:0] _T_354; // @[Mux.scala 61:16:@5412.4]
  wire  _GEN_82; // @[BackEnd.scala 305:50:@5424.4]
  reg  _T_456; // @[BackEnd.scala 72:27:@5526.4]
  reg [31:0] _RAND_41;
  wire  _GEN_86; // @[BackEnd.scala 74:20:@5531.6]
  wire  _GEN_87; // @[BackEnd.scala 73:20:@5527.4]
  wire [2:0] _T_461; // @[BackEnd.scala 336:32:@5537.4]
  wire  _T_463; // @[BackEnd.scala 336:39:@5538.4]
  wire [7:0] _T_469; // @[BackEnd.scala 345:10:@5541.4]
  wire [7:0] _T_470; // @[BackEnd.scala 344:10:@5542.4]
  wire  _T_478; // @[BackEnd.scala 348:27:@5545.4]
  wire  _T_481; // @[BackEnd.scala 349:27:@5546.4]
  wire [7:0] _T_484; // @[BackEnd.scala 349:10:@5547.4]
  wire [7:0] _T_485; // @[BackEnd.scala 348:10:@5548.4]
  wire [7:0] _T_486; // @[BackEnd.scala 347:10:@5549.4]
  wire [7:0] _T_487; // @[BackEnd.scala 346:10:@5550.4]
  wire [7:0] _T_490; // @[BackEnd.scala 350:10:@5551.4]
  wire  _T_492; // @[BackEnd.scala 351:34:@5552.4]
  wire  _T_493; // @[BackEnd.scala 351:31:@5553.4]
  wire [31:0] _T_494; // @[BackEnd.scala 351:10:@5554.4]
  wire  _T_497; // @[BackEnd.scala 339:9:@5556.4]
  wire  _T_501; // @[BackEnd.scala 368:24:@5568.6]
  CSRFile csr ( // @[BackEnd.scala 86:19:@5019.4]
    .clock(csr_clock),
    .reset(csr_reset),
    .io_rw_cmd(csr_io_rw_cmd),
    .io_rw_addr(csr_io_rw_addr),
    .io_rw_rdata(csr_io_rw_rdata),
    .io_rw_wdata(csr_io_rw_wdata),
    .io_eret(csr_io_eret),
    .io_status_prv(csr_io_status_prv),
    .io_status_unimp5(csr_io_status_unimp5),
    .io_status_mprv(csr_io_status_mprv),
    .io_status_unimp4(csr_io_status_unimp4),
    .io_status_mpp(csr_io_status_mpp),
    .io_status_unimp3(csr_io_status_unimp3),
    .io_status_mpie(csr_io_status_mpie),
    .io_status_unimp2(csr_io_status_unimp2),
    .io_status_mie(csr_io_status_mie),
    .io_status_unimp1(csr_io_status_unimp1),
    .io_xcpt(csr_io_xcpt),
    .io_cause(csr_io_cause),
    .io_tval(csr_io_tval),
    .io_evec(csr_io_evec),
    .io_illegal(csr_io_illegal),
    .io_retire(csr_io_retire),
    .io_pc(csr_io_pc),
    .io_time(csr_io_time)
  );
  InstDecoder InstDecoder ( // @[BackEnd.scala 91:25:@5025.4]
    .io_inst(InstDecoder_io_inst),
    .io_cinfo_br_type(InstDecoder_io_cinfo_br_type),
    .io_cinfo_op1_sel(InstDecoder_io_cinfo_op1_sel),
    .io_cinfo_op2_sel(InstDecoder_io_cinfo_op2_sel),
    .io_cinfo_rs1_oen(InstDecoder_io_cinfo_rs1_oen),
    .io_cinfo_rs2_oen(InstDecoder_io_cinfo_rs2_oen),
    .io_cinfo_alu_fun(InstDecoder_io_cinfo_alu_fun),
    .io_cinfo_wb_sel(InstDecoder_io_cinfo_wb_sel),
    .io_cinfo_rf_wen(InstDecoder_io_cinfo_rf_wen),
    .io_cinfo_mem_en(InstDecoder_io_cinfo_mem_en),
    .io_cinfo_mem_fcn(InstDecoder_io_cinfo_mem_fcn),
    .io_cinfo_mem_typ(InstDecoder_io_cinfo_mem_typ),
    .io_cinfo_csr_cmd(InstDecoder_io_cinfo_csr_cmd),
    .io_cinfo_illegal(InstDecoder_io_cinfo_illegal),
    .io_cinfo_fencei(InstDecoder_io_cinfo_fencei),
    .io_cinfo_is_branch(InstDecoder_io_cinfo_is_branch),
    .io_cinfo_push(InstDecoder_io_cinfo_push),
    .io_cinfo_pop(InstDecoder_io_cinfo_pop),
    .io_cinfo_rs1_addr(InstDecoder_io_cinfo_rs1_addr),
    .io_cinfo_rs2_addr(InstDecoder_io_cinfo_rs2_addr),
    .io_cinfo_wbaddr(InstDecoder_io_cinfo_wbaddr),
    .io_dinfo_imm_i(InstDecoder_io_dinfo_imm_i),
    .io_dinfo_imm_s(InstDecoder_io_dinfo_imm_s),
    .io_dinfo_imm_sb(InstDecoder_io_dinfo_imm_sb),
    .io_dinfo_imm_u(InstDecoder_io_dinfo_imm_u),
    .io_dinfo_imm_uj(InstDecoder_io_dinfo_imm_uj),
    .io_dinfo_imm_z(InstDecoder_io_dinfo_imm_z)
  );
  Regfile regfile ( // @[BackEnd.scala 122:23:@5056.4]
    .clock(regfile_clock),
    .io_rs1_addr(regfile_io_rs1_addr),
    .io_rs1_data(regfile_io_rs1_data),
    .io_rs2_addr(regfile_io_rs2_addr),
    .io_rs2_data(regfile_io_rs2_data),
    .io_waddr(regfile_io_waddr),
    .io_wdata(regfile_io_wdata),
    .io_wen(regfile_io_wen)
  );
  ALU ALU ( // @[BackEnd.scala 193:19:@5165.4]
    .io_op1(ALU_io_op1),
    .io_op2(ALU_io_op2),
    .io_pc(ALU_io_pc),
    .io_ctrl_fun(ALU_io_ctrl_fun),
    .io_ctrl_br_type(ALU_io_ctrl_br_type),
    .io_ctrl_wb_sel(ALU_io_ctrl_wb_sel),
    .io_ctrl_pc_sel(ALU_io_ctrl_pc_sel),
    .io_rs2_data(ALU_io_rs2_data),
    .io_result(ALU_io_result),
    .io_target_brjmp(ALU_io_target_brjmp),
    .io_target_jpreg(ALU_io_target_jpreg),
    .io_target_conti(ALU_io_target_conti)
  );
  assign dec_wire_rs1_oen = io_front_inst_valid & InstDecoder_io_cinfo_rs1_oen; // @[BackEnd.scala 110:33:@5044.4]
  assign dec_wire_rs2_oen = io_front_inst_valid & InstDecoder_io_cinfo_rs2_oen; // @[BackEnd.scala 111:33:@5046.4]
  assign dec_wire_fencei = io_front_inst_valid & InstDecoder_io_cinfo_fencei; // @[BackEnd.scala 112:33:@5048.4]
  assign exe_wire_fencei = exe_fencei & exe_valid; // @[BackEnd.scala 191:34:@5163.4]
  assign _T_177 = exe_wbaddr == InstDecoder_io_cinfo_rs1_addr; // @[BackEnd.scala 131:18:@5065.4]
  assign _T_232 = exe_rf_wen & exe_valid; // @[BackEnd.scala 183:34:@5145.4]
  assign _T_234 = exe_wbaddr != 5'h0; // @[BackEnd.scala 183:61:@5146.4]
  assign exe_wire_rf_wen = _T_232 & _T_234; // @[BackEnd.scala 183:47:@5147.4]
  assign _T_178 = _T_177 & exe_wire_rf_wen; // @[BackEnd.scala 131:42:@5066.4]
  assign _T_179 = mem_wbaddr == InstDecoder_io_cinfo_rs1_addr; // @[BackEnd.scala 132:18:@5067.4]
  assign _T_326 = mem_rf_wen & mem_valid; // @[BackEnd.scala 267:35:@5289.4]
  assign _T_328 = mem_wbaddr != 5'h0; // @[BackEnd.scala 267:62:@5290.4]
  assign mem_wire_rf_wen = _T_326 & _T_328; // @[BackEnd.scala 267:48:@5291.4]
  assign _T_180 = _T_179 & mem_wire_rf_wen; // @[BackEnd.scala 132:42:@5068.4]
  assign _T_181 = wb_wbaddr == InstDecoder_io_cinfo_rs1_addr; // @[BackEnd.scala 133:18:@5069.4]
  assign _T_363 = wb_rf_wen & wb_valid; // @[BackEnd.scala 315:33:@5433.4]
  assign _T_365 = wb_wbaddr != 5'h0; // @[BackEnd.scala 315:58:@5434.4]
  assign wb_wire_rf_wen = _T_363 & _T_365; // @[BackEnd.scala 315:45:@5435.4]
  assign _T_182 = _T_181 & wb_wire_rf_wen; // @[BackEnd.scala 133:42:@5070.4]
  assign rf_rs1_data = regfile_io_rs1_data; // @[BackEnd.scala 123:25:@5059.4 BackEnd.scala 127:15:@5063.4]
  assign _T_183 = _T_182 ? wb_wbdata : rf_rs1_data; // @[Mux.scala 61:16:@5071.4]
  assign _T_357 = mem_wb_sel == 2'h1; // @[BackEnd.scala 302:17:@5418.4]
  assign _T_358 = mem_wb_sel == 2'h3; // @[BackEnd.scala 303:17:@5419.4]
  assign _T_359 = _T_358 ? csr_io_rw_rdata : mem_exe_out; // @[Mux.scala 61:16:@5420.4]
  assign mem_wbdata = _T_357 ? io_mem_resp_bits_data : _T_359; // @[Mux.scala 61:16:@5421.4]
  assign _T_184 = _T_180 ? mem_wbdata : _T_183; // @[Mux.scala 61:16:@5072.4]
  assign exe_wbdata = ALU_io_result; // @[BackEnd.scala 104:24:@5039.4 BackEnd.scala 201:20:@5175.4]
  assign dec_rs1_data = _T_178 ? exe_wbdata : _T_184; // @[Mux.scala 61:16:@5073.4]
  assign _T_186 = exe_wbaddr == InstDecoder_io_cinfo_rs2_addr; // @[BackEnd.scala 137:18:@5075.4]
  assign _T_187 = _T_186 & exe_wire_rf_wen; // @[BackEnd.scala 137:42:@5076.4]
  assign _T_188 = mem_wbaddr == InstDecoder_io_cinfo_rs2_addr; // @[BackEnd.scala 138:18:@5077.4]
  assign _T_189 = _T_188 & mem_wire_rf_wen; // @[BackEnd.scala 138:42:@5078.4]
  assign _T_190 = wb_wbaddr == InstDecoder_io_cinfo_rs2_addr; // @[BackEnd.scala 139:18:@5079.4]
  assign _T_191 = _T_190 & wb_wire_rf_wen; // @[BackEnd.scala 139:42:@5080.4]
  assign rf_rs2_data = regfile_io_rs2_data; // @[BackEnd.scala 124:25:@5060.4 BackEnd.scala 128:15:@5064.4]
  assign _T_192 = _T_191 ? wb_wbdata : rf_rs2_data; // @[Mux.scala 61:16:@5081.4]
  assign _T_193 = _T_189 ? mem_wbdata : _T_192; // @[Mux.scala 61:16:@5082.4]
  assign dec_rs2_data = _T_187 ? exe_wbdata : _T_193; // @[Mux.scala 61:16:@5083.4]
  assign _T_195 = InstDecoder_io_cinfo_op1_sel == 2'h2; // @[BackEnd.scala 143:24:@5085.4]
  assign _T_196 = InstDecoder_io_cinfo_op1_sel == 2'h1; // @[BackEnd.scala 144:24:@5086.4]
  assign _T_197 = _T_196 ? io_front_pc : dec_rs1_data; // @[Mux.scala 61:16:@5087.4]
  assign dec_op1_data = _T_195 ? InstDecoder_io_dinfo_imm_z : _T_197; // @[Mux.scala 61:16:@5088.4]
  assign _T_199 = InstDecoder_io_cinfo_op2_sel == 3'h1; // @[BackEnd.scala 147:24:@5090.4]
  assign _T_200 = InstDecoder_io_cinfo_op2_sel == 3'h2; // @[BackEnd.scala 148:24:@5091.4]
  assign _T_201 = InstDecoder_io_cinfo_op2_sel == 3'h3; // @[BackEnd.scala 149:24:@5092.4]
  assign _T_202 = InstDecoder_io_cinfo_op2_sel == 3'h4; // @[BackEnd.scala 150:24:@5093.4]
  assign _T_203 = InstDecoder_io_cinfo_op2_sel == 3'h5; // @[BackEnd.scala 151:24:@5094.4]
  assign _T_204 = _T_203 ? InstDecoder_io_dinfo_imm_uj : dec_rs2_data; // @[Mux.scala 61:16:@5095.4]
  assign _T_205 = _T_202 ? InstDecoder_io_dinfo_imm_u : _T_204; // @[Mux.scala 61:16:@5096.4]
  assign _T_206 = _T_201 ? InstDecoder_io_dinfo_imm_sb : _T_205; // @[Mux.scala 61:16:@5097.4]
  assign _T_207 = _T_200 ? InstDecoder_io_dinfo_imm_s : _T_206; // @[Mux.scala 61:16:@5098.4]
  assign dec_op2_data = _T_199 ? InstDecoder_io_dinfo_imm_i : _T_207; // @[Mux.scala 61:16:@5099.4]
  assign exe_wire_mem_en = exe_mem_en & exe_valid; // @[BackEnd.scala 184:34:@5149.4]
  assign _T_427 = exe_mem_fcn == 1'h0; // @[BackEnd.scala 325:60:@5501.4]
  assign exe_load_inst = exe_wire_mem_en & _T_427; // @[BackEnd.scala 325:45:@5502.4]
  assign _T_429 = exe_load_inst & _T_177; // @[BackEnd.scala 328:20:@5504.4]
  assign _T_431 = InstDecoder_io_cinfo_rs1_addr != 5'h0; // @[BackEnd.scala 328:79:@5505.4]
  assign _T_432 = _T_429 & _T_431; // @[BackEnd.scala 328:57:@5506.4]
  assign _T_433 = _T_432 & dec_wire_rs1_oen; // @[BackEnd.scala 328:87:@5507.4]
  assign _T_435 = exe_load_inst & _T_186; // @[BackEnd.scala 329:20:@5509.4]
  assign _T_437 = InstDecoder_io_cinfo_rs2_addr != 5'h0; // @[BackEnd.scala 329:79:@5510.4]
  assign _T_438 = _T_435 & _T_437; // @[BackEnd.scala 329:57:@5511.4]
  assign _T_439 = _T_438 & dec_wire_rs2_oen; // @[BackEnd.scala 329:87:@5512.4]
  assign _T_440 = _T_433 | _T_439; // @[BackEnd.scala 328:108:@5513.4]
  assign exe_wire_csr_cmd = exe_valid ? exe_csr_cmd : 3'h0; // @[BackEnd.scala 185:26:@5151.4]
  assign _T_441 = exe_wire_csr_cmd != 3'h0; // @[BackEnd.scala 330:22:@5514.4]
  assign stall_0 = _T_440 | _T_441; // @[BackEnd.scala 329:108:@5515.4]
  assign mem_wire_mem_en = mem_mem_en & mem_valid; // @[BackEnd.scala 268:35:@5293.4]
  assign _T_447 = io_mem_resp_valid == 1'h0; // @[BackEnd.scala 333:42:@5520.4]
  assign _T_448 = mem_wire_mem_en & _T_447; // @[BackEnd.scala 333:39:@5521.4]
  assign mem_wire_ma_load = mem_ma_load & mem_valid; // @[BackEnd.scala 271:36:@5299.4]
  assign mem_wire_ma_store = mem_ma_store & mem_valid; // @[BackEnd.scala 272:37:@5301.4]
  assign mem_wire_ma_valid = mem_wire_ma_load | mem_wire_ma_store; // @[BackEnd.scala 273:41:@5303.4]
  assign _T_450 = mem_wire_ma_valid == 1'h0; // @[BackEnd.scala 333:64:@5522.4]
  assign stall_2 = _T_448 & _T_450; // @[BackEnd.scala 333:61:@5523.4]
  assign _T_213 = stall_2 == 1'h0; // @[BackEnd.scala 153:51:@5103.4]
  assign _T_214 = stall_0 & _T_213; // @[BackEnd.scala 153:48:@5104.4]
  assign _T_215 = _T_214 | io_front_xcpt_valid; // @[BackEnd.scala 153:70:@5105.4]
  assign _T_223 = io_front_kill == 1'h0; // @[BackEnd.scala 157:34:@5114.8]
  assign _T_224 = io_front_inst_valid & _T_223; // @[BackEnd.scala 157:31:@5115.8]
  assign _T_225 = InstDecoder_io_cinfo_csr_cmd == 3'h2; // @[BackEnd.scala 161:44:@5119.8]
  assign _T_226 = InstDecoder_io_cinfo_csr_cmd == 3'h3; // @[BackEnd.scala 161:75:@5120.8]
  assign _T_227 = _T_225 | _T_226; // @[BackEnd.scala 161:54:@5121.8]
  assign _T_229 = InstDecoder_io_cinfo_rs1_addr == 5'h0; // @[BackEnd.scala 162:26:@5122.8]
  assign _T_230 = _T_227 & _T_229; // @[BackEnd.scala 161:86:@5123.8]
  assign _T_231 = _T_230 ? 3'h5 : InstDecoder_io_cinfo_csr_cmd; // @[BackEnd.scala 161:24:@5124.8]
  assign _GEN_0 = _T_213 ? _T_224 : exe_valid; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_1 = _T_213 ? InstDecoder_io_cinfo_rf_wen : exe_rf_wen; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_2 = _T_213 ? InstDecoder_io_cinfo_mem_en : exe_mem_en; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_3 = _T_213 ? _T_231 : exe_csr_cmd; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_4 = _T_213 ? InstDecoder_io_cinfo_illegal : exe_illegal; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_5 = _T_213 ? InstDecoder_io_cinfo_fencei : exe_fencei; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_6 = _T_213 ? InstDecoder_io_cinfo_br_type : exe_br_type; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_7 = _T_213 ? io_front_pc : exe_pc; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_8 = _T_213 ? dec_op1_data : exe_op1_data; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_9 = _T_213 ? dec_op2_data : exe_op2_data; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_10 = _T_213 ? dec_rs2_data : exe_rs2_data; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_11 = _T_213 ? InstDecoder_io_inst : exe_inst; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_12 = _T_213 ? InstDecoder_io_cinfo_alu_fun : exe_alu_fun; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_13 = _T_213 ? InstDecoder_io_cinfo_wb_sel : exe_wb_sel; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_14 = _T_213 ? InstDecoder_io_cinfo_wbaddr : exe_wbaddr; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_15 = _T_213 ? InstDecoder_io_cinfo_mem_fcn : exe_mem_fcn; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_16 = _T_213 ? InstDecoder_io_cinfo_mem_typ : exe_mem_typ; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_17 = _T_213 ? InstDecoder_io_cinfo_is_branch : exe_branch; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_18 = _T_213 ? InstDecoder_io_cinfo_push : exe_push; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_19 = _T_213 ? InstDecoder_io_cinfo_pop : exe_pop; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_20 = _T_213 ? io_front_pred_tgt : exe_pred_tgt; // @[BackEnd.scala 156:54:@5113.6]
  assign _GEN_22 = _T_215 ? 1'h0 : _GEN_0; // @[BackEnd.scala 153:94:@5106.4]
  assign exe_wire_br_type = exe_valid ? exe_br_type : 4'h0; // @[BackEnd.scala 186:26:@5153.4]
  assign exe_wire_branch = exe_valid & exe_branch; // @[BackEnd.scala 187:33:@5155.4]
  assign exe_wire_push = exe_valid & exe_push; // @[BackEnd.scala 188:33:@5157.4]
  assign exe_wire_pop = exe_valid & exe_pop; // @[BackEnd.scala 189:33:@5159.4]
  assign _GEN_44 = exe_wire_pop ? 1'h0 : _T_248; // @[BackEnd.scala 74:20:@5182.6]
  assign _GEN_45 = _T_213 ? 1'h1 : _GEN_44; // @[BackEnd.scala 73:20:@5178.4]
  assign _GEN_46 = exe_wire_push ? 1'h0 : _T_256; // @[BackEnd.scala 74:20:@5193.6]
  assign _GEN_47 = _T_213 ? 1'h1 : _GEN_46; // @[BackEnd.scala 73:20:@5189.4]
  assign _T_260 = ALU_io_ctrl_pc_sel == 2'h1; // @[BackEnd.scala 208:25:@5199.4]
  assign _T_261 = ALU_io_ctrl_pc_sel == 2'h2; // @[BackEnd.scala 209:25:@5200.4]
  assign _T_262 = _T_261 ? ALU_io_target_jpreg : ALU_io_target_conti; // @[BackEnd.scala 209:8:@5201.4]
  assign next_pc = _T_260 ? ALU_io_target_brjmp : _T_262; // @[BackEnd.scala 208:8:@5202.4]
  assign _T_266 = exe_wire_pop ? 2'h1 : 2'h3; // @[BackEnd.scala 215:10:@5204.4]
  assign _T_268 = exe_wire_br_type != 4'h0; // @[BackEnd.scala 217:53:@5207.4]
  assign _GEN_48 = _T_268 ? 1'h0 : _T_273; // @[BackEnd.scala 74:20:@5214.6]
  assign _GEN_49 = _T_213 ? 1'h1 : _GEN_48; // @[BackEnd.scala 73:20:@5210.4]
  assign _T_281 = next_pc != exe_pred_tgt; // @[BackEnd.scala 221:42:@5225.4]
  assign mispredict = _T_281 & exe_valid; // @[BackEnd.scala 221:59:@5226.4]
  assign _T_283 = exe_mem_typ[1:0]; // @[BackEnd.scala 224:45:@5228.4]
  assign _T_286 = ALU_io_result[0]; // @[BackEnd.scala 225:22:@5229.4]
  assign _T_288 = ALU_io_result[1:0]; // @[BackEnd.scala 226:22:@5230.4]
  assign _T_290 = _T_288 != 2'h0; // @[BackEnd.scala 226:28:@5231.4]
  assign _T_291 = 2'h3 == _T_283; // @[Mux.scala 46:19:@5232.4]
  assign _T_292 = _T_291 ? _T_290 : 1'h0; // @[Mux.scala 46:16:@5233.4]
  assign _T_293 = 2'h2 == _T_283; // @[Mux.scala 46:19:@5234.4]
  assign exe_wire_ma_valid = _T_293 ? _T_286 : _T_292; // @[Mux.scala 46:16:@5235.4]
  assign exe_wire_ma_load = _T_427 & exe_wire_ma_valid; // @[BackEnd.scala 228:46:@5238.4]
  assign exe_wire_ma_store = exe_mem_fcn & exe_wire_ma_valid; // @[BackEnd.scala 229:46:@5241.4]
  assign _T_300 = exe_wire_ma_valid == 1'h0; // @[BackEnd.scala 232:46:@5243.4]
  assign _T_309 = stall_2 | io_front_xcpt_valid; // @[BackEnd.scala 243:47:@5256.4]
  assign _T_317 = _T_260 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@5280.8]
  assign _T_318 = _T_317 & ALU_io_target_brjmp; // @[BackEnd.scala 262:70:@5281.8]
  assign _T_323 = _T_261 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@5284.8]
  assign _T_324 = _T_323 & ALU_io_target_jpreg; // @[BackEnd.scala 263:74:@5285.8]
  assign _T_325 = _T_318 | _T_324; // @[BackEnd.scala 262:90:@5286.8]
  assign _GEN_50 = _T_213 ? exe_valid : mem_valid; // @[BackEnd.scala 245:34:@5262.6]
  assign _GEN_51 = _T_213 ? exe_rf_wen : mem_rf_wen; // @[BackEnd.scala 245:34:@5262.6]
  assign _GEN_52 = _T_213 ? exe_mem_en : mem_mem_en; // @[BackEnd.scala 245:34:@5262.6]
  assign _GEN_53 = _T_213 ? exe_csr_cmd : mem_csr_cmd; // @[BackEnd.scala 245:34:@5262.6]
  assign _GEN_54 = _T_213 ? exe_illegal : mem_illegal; // @[BackEnd.scala 245:34:@5262.6]
  assign _GEN_55 = _T_213 ? exe_pc : mem_pc; // @[BackEnd.scala 245:34:@5262.6]
  assign _GEN_56 = _T_213 ? exe_inst : mem_inst; // @[BackEnd.scala 245:34:@5262.6]
  assign _GEN_57 = _T_213 ? exe_wb_sel : mem_wb_sel; // @[BackEnd.scala 245:34:@5262.6]
  assign _GEN_58 = _T_213 ? exe_wbaddr : mem_wbaddr; // @[BackEnd.scala 245:34:@5262.6]
  assign _GEN_62 = _T_213 ? exe_wire_ma_load : mem_ma_load; // @[BackEnd.scala 245:34:@5262.6]
  assign _GEN_63 = _T_213 ? exe_wire_ma_store : mem_ma_store; // @[BackEnd.scala 245:34:@5262.6]
  assign _GEN_64 = _T_213 ? exe_wbdata : mem_exe_out; // @[BackEnd.scala 245:34:@5262.6]
  assign _GEN_65 = _T_213 ? _T_325 : mem_jpnpc; // @[BackEnd.scala 245:34:@5262.6]
  assign _GEN_66 = _T_309 ? 1'h0 : _GEN_50; // @[BackEnd.scala 243:71:@5257.4]
  assign mem_wire_illegal = mem_illegal & mem_valid; // @[BackEnd.scala 270:36:@5297.4]
  assign _T_337 = mem_jpnpc[1:0]; // @[BackEnd.scala 281:32:@5399.4]
  assign _T_339 = _T_337 != 2'h0; // @[BackEnd.scala 281:38:@5400.4]
  assign ma_jump = _T_339 & mem_valid; // @[BackEnd.scala 281:42:@5401.4]
  assign _T_341 = mem_wire_ma_valid | ma_jump; // @[BackEnd.scala 283:57:@5403.4]
  assign _T_348 = mem_wire_illegal ? 2'h2 : 2'h0; // @[Mux.scala 61:16:@5406.4]
  assign _T_349 = mem_wire_ma_store ? 3'h6 : {{1'd0}, _T_348}; // @[Mux.scala 61:16:@5407.4]
  assign _T_350 = mem_wire_ma_load ? 3'h4 : _T_349; // @[Mux.scala 61:16:@5408.4]
  assign _T_351 = ma_jump ? 3'h0 : _T_350; // @[Mux.scala 61:16:@5409.4]
  assign _T_353 = mem_wire_illegal ? mem_inst : 32'h0; // @[Mux.scala 61:16:@5411.4]
  assign _T_354 = mem_wire_ma_valid ? mem_exe_out : _T_353; // @[Mux.scala 61:16:@5412.4]
  assign _GEN_82 = _T_309 ? 1'h0 : mem_valid; // @[BackEnd.scala 305:50:@5424.4]
  assign _GEN_86 = mispredict ? 1'h0 : _T_456; // @[BackEnd.scala 74:20:@5531.6]
  assign _GEN_87 = _T_213 ? 1'h1 : _GEN_86; // @[BackEnd.scala 73:20:@5527.4]
  assign _T_461 = {stall_2,1'h0,stall_0}; // @[BackEnd.scala 336:32:@5537.4]
  assign _T_463 = _T_461 != 3'h0; // @[BackEnd.scala 336:39:@5538.4]
  assign _T_469 = stall_0 ? 8'h53 : 8'h20; // @[BackEnd.scala 345:10:@5541.4]
  assign _T_470 = stall_2 ? 8'h46 : _T_469; // @[BackEnd.scala 344:10:@5542.4]
  assign _T_478 = ALU_io_ctrl_pc_sel == 2'h3; // @[BackEnd.scala 348:27:@5545.4]
  assign _T_481 = ALU_io_ctrl_pc_sel == 2'h0; // @[BackEnd.scala 349:27:@5546.4]
  assign _T_484 = _T_481 ? 8'h20 : 8'h3f; // @[BackEnd.scala 349:10:@5547.4]
  assign _T_485 = _T_478 ? 8'h45 : _T_484; // @[BackEnd.scala 348:10:@5548.4]
  assign _T_486 = _T_261 ? 8'h4a : _T_485; // @[BackEnd.scala 347:10:@5549.4]
  assign _T_487 = _T_260 ? 8'h42 : _T_486; // @[BackEnd.scala 346:10:@5550.4]
  assign _T_490 = csr_io_illegal ? 8'h58 : 8'h20; // @[BackEnd.scala 350:10:@5551.4]
  assign _T_492 = exe_valid == 1'h0; // @[BackEnd.scala 351:34:@5552.4]
  assign _T_493 = io_front_xcpt_valid | _T_492; // @[BackEnd.scala 351:31:@5553.4]
  assign _T_494 = _T_493 ? 32'h4033 : exe_inst; // @[BackEnd.scala 351:10:@5554.4]
  assign _T_497 = reset == 1'h0; // @[BackEnd.scala 339:9:@5556.4]
  assign _T_501 = ALU_io_target_conti != exe_pred_tgt; // @[BackEnd.scala 368:24:@5568.6]
  assign io_mem_req_valid = exe_wire_mem_en & _T_300; // @[BackEnd.scala 232:24:@5245.4]
  assign io_mem_req_bits_addr = ALU_io_result; // @[BackEnd.scala 233:24:@5246.4]
  assign io_mem_req_bits_data = exe_rs2_data; // @[BackEnd.scala 236:24:@5249.4]
  assign io_mem_req_bits_fcn = exe_mem_fcn; // @[BackEnd.scala 234:24:@5247.4]
  assign io_mem_req_bits_typ = exe_mem_typ; // @[BackEnd.scala 235:24:@5248.4]
  assign io_cyc = csr_io_time; // @[BackEnd.scala 87:10:@5023.4]
  assign io_front_xcpt_valid = csr_io_xcpt | csr_io_eret; // @[BackEnd.scala 295:23:@5416.4]
  assign io_front_xcpt_bits = csr_io_evec; // @[BackEnd.scala 296:23:@5417.4]
  assign io_front_kill = mispredict & _T_456; // @[BackEnd.scala 335:17:@5535.4]
  assign io_front_fence = dec_wire_fencei | exe_wire_fencei; // @[BackEnd.scala 113:20:@5051.4]
  assign io_front_forward = _T_463 == 1'h0; // @[BackEnd.scala 336:21:@5540.4]
  assign io_front_ras_pop = exe_wire_pop & _T_248; // @[BackEnd.scala 203:27:@5186.4]
  assign io_front_ras_push_valid = exe_wire_push & _T_256; // @[BackEnd.scala 204:27:@5197.4]
  assign io_front_ras_push_bits = ALU_io_target_conti; // @[BackEnd.scala 205:27:@5198.4]
  assign io_front_fb_pc = exe_pc; // @[BackEnd.scala 212:18:@5203.4]
  assign io_front_fb_type = exe_wire_branch ? 2'h2 : _T_266; // @[BackEnd.scala 213:20:@5206.4]
  assign io_front_feedBack_valid = _T_268 & _T_273; // @[BackEnd.scala 217:27:@5218.4]
  assign io_front_feedBack_bits_redirect = _T_260 | _T_261; // @[BackEnd.scala 219:35:@5223.4]
  assign io_front_feedBack_bits_tgt = _T_260 ? ALU_io_target_brjmp : _T_262; // @[BackEnd.scala 218:30:@5219.4]
  assign csr_clock = clock; // @[:@5020.4]
  assign csr_reset = reset; // @[:@5021.4]
  assign csr_io_rw_cmd = mem_valid ? mem_csr_cmd : 3'h0; // @[BackEnd.scala 278:19:@5397.4]
  assign csr_io_rw_addr = mem_inst[31:20]; // @[BackEnd.scala 276:19:@5395.4]
  assign csr_io_rw_wdata = mem_exe_out; // @[BackEnd.scala 277:19:@5396.4]
  assign csr_io_xcpt = _T_341 | mem_wire_illegal; // @[BackEnd.scala 283:16:@5405.4]
  assign csr_io_cause = {{29'd0}, _T_351}; // @[BackEnd.scala 284:16:@5410.4]
  assign csr_io_tval = ma_jump ? mem_jpnpc : _T_354; // @[BackEnd.scala 290:16:@5414.4]
  assign csr_io_illegal = 1'h0;
  assign csr_io_retire = {{1'd0}, wb_valid}; // @[BackEnd.scala 320:20:@5440.4]
  assign csr_io_pc = mem_pc; // @[BackEnd.scala 279:19:@5398.4]
  assign InstDecoder_io_inst = io_front_inst_bits; // @[BackEnd.scala 108:20:@5042.4]
  assign regfile_clock = clock; // @[:@5057.4]
  assign regfile_io_rs1_addr = InstDecoder_io_cinfo_rs1_addr; // @[BackEnd.scala 125:23:@5061.4]
  assign regfile_io_rs2_addr = InstDecoder_io_cinfo_rs2_addr; // @[BackEnd.scala 126:23:@5062.4]
  assign regfile_io_waddr = wb_wbaddr; // @[BackEnd.scala 316:20:@5437.4]
  assign regfile_io_wdata = wb_wbdata; // @[BackEnd.scala 317:20:@5438.4]
  assign regfile_io_wen = _T_363 & _T_365; // @[BackEnd.scala 318:20:@5439.4]
  assign ALU_io_op1 = exe_op1_data; // @[BackEnd.scala 194:20:@5168.4]
  assign ALU_io_op2 = exe_op2_data; // @[BackEnd.scala 195:20:@5169.4]
  assign ALU_io_pc = exe_pc; // @[BackEnd.scala 197:20:@5171.4]
  assign ALU_io_ctrl_fun = exe_alu_fun; // @[BackEnd.scala 198:20:@5172.4]
  assign ALU_io_ctrl_br_type = exe_valid ? exe_br_type : 4'h0; // @[BackEnd.scala 199:20:@5173.4]
  assign ALU_io_ctrl_wb_sel = exe_wb_sel; // @[BackEnd.scala 200:20:@5174.4]
  assign ALU_io_rs2_data = exe_rs2_data; // @[BackEnd.scala 196:20:@5170.4]
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
  exe_rf_wen = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  exe_wbaddr = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  exe_mem_en = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  exe_csr_cmd = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  exe_illegal = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  exe_pc = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  exe_inst = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  exe_rs2_data = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  exe_wb_sel = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  exe_mem_fcn = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  exe_mem_typ = _RAND_10[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  exe_fencei = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  exe_br_type = _RAND_12[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  exe_branch = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  exe_push = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  exe_pop = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  exe_pred_tgt = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  exe_op1_data = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  exe_op2_data = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  exe_alu_fun = _RAND_19[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  exe_valid = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  mem_rf_wen = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  mem_wbaddr = _RAND_22[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  mem_mem_en = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  mem_csr_cmd = _RAND_24[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  mem_illegal = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  mem_pc = _RAND_26[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  mem_inst = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  mem_wb_sel = _RAND_28[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  mem_valid = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  wb_rf_wen = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  wb_wbaddr = _RAND_31[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  wb_valid = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  wb_wbdata = _RAND_33[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  mem_exe_out = _RAND_34[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  mem_ma_load = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  mem_ma_store = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_248 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_256 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_273 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  mem_jpnpc = _RAND_40[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_456 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_rf_wen <= InstDecoder_io_cinfo_rf_wen;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_wbaddr <= InstDecoder_io_cinfo_wbaddr;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_mem_en <= InstDecoder_io_cinfo_mem_en;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        if (_T_230) begin
          exe_csr_cmd <= 3'h5;
        end else begin
          exe_csr_cmd <= InstDecoder_io_cinfo_csr_cmd;
        end
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_illegal <= InstDecoder_io_cinfo_illegal;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_pc <= io_front_pc;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_inst <= InstDecoder_io_inst;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        if (_T_187) begin
          exe_rs2_data <= exe_wbdata;
        end else begin
          if (_T_189) begin
            if (_T_357) begin
              exe_rs2_data <= io_mem_resp_bits_data;
            end else begin
              if (_T_358) begin
                exe_rs2_data <= csr_io_rw_rdata;
              end else begin
                exe_rs2_data <= mem_exe_out;
              end
            end
          end else begin
            if (_T_191) begin
              exe_rs2_data <= wb_wbdata;
            end else begin
              exe_rs2_data <= rf_rs2_data;
            end
          end
        end
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_wb_sel <= InstDecoder_io_cinfo_wb_sel;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_mem_fcn <= InstDecoder_io_cinfo_mem_fcn;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_mem_typ <= InstDecoder_io_cinfo_mem_typ;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_fencei <= InstDecoder_io_cinfo_fencei;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_br_type <= InstDecoder_io_cinfo_br_type;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_branch <= InstDecoder_io_cinfo_is_branch;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_push <= InstDecoder_io_cinfo_push;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_pop <= InstDecoder_io_cinfo_pop;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_pred_tgt <= io_front_pred_tgt;
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        if (_T_195) begin
          exe_op1_data <= InstDecoder_io_dinfo_imm_z;
        end else begin
          if (_T_196) begin
            exe_op1_data <= io_front_pc;
          end else begin
            if (_T_178) begin
              exe_op1_data <= exe_wbdata;
            end else begin
              if (_T_180) begin
                if (_T_357) begin
                  exe_op1_data <= io_mem_resp_bits_data;
                end else begin
                  if (_T_358) begin
                    exe_op1_data <= csr_io_rw_rdata;
                  end else begin
                    exe_op1_data <= mem_exe_out;
                  end
                end
              end else begin
                if (_T_182) begin
                  exe_op1_data <= wb_wbdata;
                end else begin
                  exe_op1_data <= rf_rs1_data;
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        if (_T_199) begin
          exe_op2_data <= InstDecoder_io_dinfo_imm_i;
        end else begin
          if (_T_200) begin
            exe_op2_data <= InstDecoder_io_dinfo_imm_s;
          end else begin
            if (_T_201) begin
              exe_op2_data <= InstDecoder_io_dinfo_imm_sb;
            end else begin
              if (_T_202) begin
                exe_op2_data <= InstDecoder_io_dinfo_imm_u;
              end else begin
                if (_T_203) begin
                  exe_op2_data <= InstDecoder_io_dinfo_imm_uj;
                end else begin
                  if (_T_187) begin
                    exe_op2_data <= exe_wbdata;
                  end else begin
                    if (_T_189) begin
                      if (_T_357) begin
                        exe_op2_data <= io_mem_resp_bits_data;
                      end else begin
                        if (_T_358) begin
                          exe_op2_data <= csr_io_rw_rdata;
                        end else begin
                          exe_op2_data <= mem_exe_out;
                        end
                      end
                    end else begin
                      if (_T_191) begin
                        exe_op2_data <= wb_wbdata;
                      end else begin
                        exe_op2_data <= rf_rs2_data;
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (!(_T_215)) begin
      if (_T_213) begin
        exe_alu_fun <= InstDecoder_io_cinfo_alu_fun;
      end
    end
    if (reset) begin
      exe_valid <= 1'h0;
    end else begin
      if (_T_215) begin
        exe_valid <= 1'h0;
      end else begin
        if (_T_213) begin
          exe_valid <= _T_224;
        end
      end
    end
    if (!(_T_309)) begin
      if (_T_213) begin
        mem_rf_wen <= exe_rf_wen;
      end
    end
    if (!(_T_309)) begin
      if (_T_213) begin
        mem_wbaddr <= exe_wbaddr;
      end
    end
    if (!(_T_309)) begin
      if (_T_213) begin
        mem_mem_en <= exe_mem_en;
      end
    end
    if (!(_T_309)) begin
      if (_T_213) begin
        mem_csr_cmd <= exe_csr_cmd;
      end
    end
    if (!(_T_309)) begin
      if (_T_213) begin
        mem_illegal <= exe_illegal;
      end
    end
    if (!(_T_309)) begin
      if (_T_213) begin
        mem_pc <= exe_pc;
      end
    end
    if (!(_T_309)) begin
      if (_T_213) begin
        mem_inst <= exe_inst;
      end
    end
    if (!(_T_309)) begin
      if (_T_213) begin
        mem_wb_sel <= exe_wb_sel;
      end
    end
    if (reset) begin
      mem_valid <= 1'h0;
    end else begin
      if (_T_309) begin
        mem_valid <= 1'h0;
      end else begin
        if (_T_213) begin
          mem_valid <= exe_valid;
        end
      end
    end
    if (!(_T_309)) begin
      wb_rf_wen <= mem_rf_wen;
    end
    if (!(_T_309)) begin
      wb_wbaddr <= mem_wbaddr;
    end
    if (reset) begin
      wb_valid <= 1'h0;
    end else begin
      if (_T_309) begin
        wb_valid <= 1'h0;
      end else begin
        wb_valid <= mem_valid;
      end
    end
    if (!(_T_309)) begin
      if (_T_357) begin
        wb_wbdata <= io_mem_resp_bits_data;
      end else begin
        if (_T_358) begin
          wb_wbdata <= csr_io_rw_rdata;
        end else begin
          wb_wbdata <= mem_exe_out;
        end
      end
    end
    if (!(_T_309)) begin
      if (_T_213) begin
        mem_exe_out <= exe_wbdata;
      end
    end
    if (!(_T_309)) begin
      if (_T_213) begin
        mem_ma_load <= exe_wire_ma_load;
      end
    end
    if (!(_T_309)) begin
      if (_T_213) begin
        mem_ma_store <= exe_wire_ma_store;
      end
    end
    if (reset) begin
      _T_248 <= 1'h1;
    end else begin
      if (_T_213) begin
        _T_248 <= 1'h1;
      end else begin
        if (exe_wire_pop) begin
          _T_248 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_256 <= 1'h1;
    end else begin
      if (_T_213) begin
        _T_256 <= 1'h1;
      end else begin
        if (exe_wire_push) begin
          _T_256 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_273 <= 1'h1;
    end else begin
      if (_T_213) begin
        _T_273 <= 1'h1;
      end else begin
        if (_T_268) begin
          _T_273 <= 1'h0;
        end
      end
    end
    if (!(_T_309)) begin
      if (_T_213) begin
        mem_jpnpc <= _T_325;
      end
    end
    if (reset) begin
      _T_456 <= 1'h1;
    end else begin
      if (_T_213) begin
        _T_456 <= 1'h1;
      end else begin
        if (mispredict) begin
          _T_456 <= 1'h0;
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_497) begin
          $fwrite(32'h80000002,"Core: Cyc= %d (%x, %x, %x) %c %c %c ExeInst: DASM(%x)\n",io_cyc,io_front_pc,exe_pc,mem_pc,_T_470,_T_487,_T_490,_T_494); // @[BackEnd.scala 339:9:@5558.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (wb_valid & _T_497) begin
          $fwrite(32'h80000002,"Core: Cyc= %d WB[ %x %x %x]\n",io_cyc,wb_wire_rf_wen,wb_wbaddr,wb_wbdata); // @[BackEnd.scala 354:11:@5564.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_front_feedBack_valid & _T_497) begin
          $fwrite(32'h80000002,"BranchJump: Cyc= %d kill %x pc %x tgt %x actual %x expect %x inst DASM(%x)\n",io_cyc,mispredict,exe_pc,next_pc,io_front_feedBack_bits_redirect,_T_501,exe_inst); // @[BackEnd.scala 362:11:@5572.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule