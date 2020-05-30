module FrontEnd( // @[:@2526.2]
  input         clock, // @[:@2527.4]
  input         reset, // @[:@2528.4]
  input  [31:0] io_cyc, // @[:@2529.4]
  output [31:0] io_mem_req_bits_addr, // @[:@2529.4]
  input         io_mem_resp_valid, // @[:@2529.4]
  input  [31:0] io_mem_resp_bits_data, // @[:@2529.4]
  input         io_back_xcpt_valid, // @[:@2529.4]
  input  [31:0] io_back_xcpt_bits, // @[:@2529.4]
  input         io_back_kill, // @[:@2529.4]
  input         io_back_fence, // @[:@2529.4]
  input         io_back_forward, // @[:@2529.4]
  input         io_back_ras_pop, // @[:@2529.4]
  input         io_back_ras_push_valid, // @[:@2529.4]
  input  [31:0] io_back_ras_push_bits, // @[:@2529.4]
  input  [31:0] io_back_fb_pc, // @[:@2529.4]
  input  [1:0]  io_back_fb_type, // @[:@2529.4]
  input         io_back_feedBack_valid, // @[:@2529.4]
  input         io_back_feedBack_bits_redirect, // @[:@2529.4]
  input  [31:0] io_back_feedBack_bits_tgt, // @[:@2529.4]
  output        io_back_inst_valid, // @[:@2529.4]
  output [31:0] io_back_inst_bits, // @[:@2529.4]
  output [31:0] io_back_pc, // @[:@2529.4]
  output [31:0] io_back_pred_tgt // @[:@2529.4]
);
  wire  FetchInst_clock; // @[FrontEnd.scala 12:22:@2531.4]
  wire  FetchInst_reset; // @[FrontEnd.scala 12:22:@2531.4]
  wire [31:0] FetchInst_io_mem_req_bits_addr; // @[FrontEnd.scala 12:22:@2531.4]
  wire  FetchInst_io_mem_resp_valid; // @[FrontEnd.scala 12:22:@2531.4]
  wire [31:0] FetchInst_io_mem_resp_bits_data; // @[FrontEnd.scala 12:22:@2531.4]
  wire  FetchInst_io_if_kill; // @[FrontEnd.scala 12:22:@2531.4]
  wire  FetchInst_io_if_fence; // @[FrontEnd.scala 12:22:@2531.4]
  wire  FetchInst_io_dec_forward; // @[FrontEnd.scala 12:22:@2531.4]
  wire [31:0] FetchInst_io_if_target; // @[FrontEnd.scala 12:22:@2531.4]
  wire [31:0] FetchInst_io_btb_target; // @[FrontEnd.scala 12:22:@2531.4]
  wire  FetchInst_io_if_forward; // @[FrontEnd.scala 12:22:@2531.4]
  wire [31:0] FetchInst_io_if_pc; // @[FrontEnd.scala 12:22:@2531.4]
  wire  FetchInst_io_dec_inst_valid; // @[FrontEnd.scala 12:22:@2531.4]
  wire [31:0] FetchInst_io_dec_inst_bits; // @[FrontEnd.scala 12:22:@2531.4]
  wire  BTB_clock; // @[FrontEnd.scala 14:22:@2535.4]
  wire  BTB_reset; // @[FrontEnd.scala 14:22:@2535.4]
  wire [31:0] BTB_io_if_pc; // @[FrontEnd.scala 14:22:@2535.4]
  wire [31:0] BTB_io_ras_peek; // @[FrontEnd.scala 14:22:@2535.4]
  wire [31:0] BTB_io_fb_pc; // @[FrontEnd.scala 14:22:@2535.4]
  wire [1:0] BTB_io_fb_type; // @[FrontEnd.scala 14:22:@2535.4]
  wire [31:0] BTB_io_predict_tgt; // @[FrontEnd.scala 14:22:@2535.4]
  wire  BTB_io_feedBack_valid; // @[FrontEnd.scala 14:22:@2535.4]
  wire  BTB_io_feedBack_bits_redirect; // @[FrontEnd.scala 14:22:@2535.4]
  wire [31:0] BTB_io_feedBack_bits_tgt; // @[FrontEnd.scala 14:22:@2535.4]
  wire  RAS_clock; // @[FrontEnd.scala 16:22:@2539.4]
  wire  RAS_reset; // @[FrontEnd.scala 16:22:@2539.4]
  wire  RAS_io_push_valid; // @[FrontEnd.scala 16:22:@2539.4]
  wire [31:0] RAS_io_push_bits; // @[FrontEnd.scala 16:22:@2539.4]
  wire  RAS_io_pop; // @[FrontEnd.scala 16:22:@2539.4]
  wire [31:0] RAS_io_peek; // @[FrontEnd.scala 16:22:@2539.4]
  reg [31:0] dec_reg_pc; // @[FrontEnd.scala 34:23:@2567.4]
  reg [31:0] _RAND_0;
  reg [31:0] dec_reg_pred_tgt; // @[FrontEnd.scala 35:25:@2568.4]
  reg [31:0] _RAND_1;
  wire  _T_96; // @[FrontEnd.scala 45:9:@2579.4]
  wire  _T_97; // @[FrontEnd.scala 45:26:@2580.4]
  wire  _T_100; // @[FrontEnd.scala 46:11:@2583.6]
  FetchInst FetchInst ( // @[FrontEnd.scala 12:22:@2531.4]
    .clock(FetchInst_clock),
    .reset(FetchInst_reset),
    .io_mem_req_bits_addr(FetchInst_io_mem_req_bits_addr),
    .io_mem_resp_valid(FetchInst_io_mem_resp_valid),
    .io_mem_resp_bits_data(FetchInst_io_mem_resp_bits_data),
    .io_if_kill(FetchInst_io_if_kill),
    .io_if_fence(FetchInst_io_if_fence),
    .io_dec_forward(FetchInst_io_dec_forward),
    .io_if_target(FetchInst_io_if_target),
    .io_btb_target(FetchInst_io_btb_target),
    .io_if_forward(FetchInst_io_if_forward),
    .io_if_pc(FetchInst_io_if_pc),
    .io_dec_inst_valid(FetchInst_io_dec_inst_valid),
    .io_dec_inst_bits(FetchInst_io_dec_inst_bits)
  );
  BTB BTB ( // @[FrontEnd.scala 14:22:@2535.4]
    .clock(BTB_clock),
    .reset(BTB_reset),
    .io_if_pc(BTB_io_if_pc),
    .io_ras_peek(BTB_io_ras_peek),
    .io_fb_pc(BTB_io_fb_pc),
    .io_fb_type(BTB_io_fb_type),
    .io_predict_tgt(BTB_io_predict_tgt),
    .io_feedBack_valid(BTB_io_feedBack_valid),
    .io_feedBack_bits_redirect(BTB_io_feedBack_bits_redirect),
    .io_feedBack_bits_tgt(BTB_io_feedBack_bits_tgt)
  );
  RAS RAS ( // @[FrontEnd.scala 16:22:@2539.4]
    .clock(RAS_clock),
    .reset(RAS_reset),
    .io_push_valid(RAS_io_push_valid),
    .io_push_bits(RAS_io_push_bits),
    .io_pop(RAS_io_pop),
    .io_peek(RAS_io_peek)
  );
  assign _T_96 = io_back_forward == 1'h0; // @[FrontEnd.scala 45:9:@2579.4]
  assign _T_97 = _T_96 & io_back_inst_valid; // @[FrontEnd.scala 45:26:@2580.4]
  assign _T_100 = reset == 1'h0; // @[FrontEnd.scala 46:11:@2583.6]
  assign io_mem_req_bits_addr = FetchInst_io_mem_req_bits_addr; // @[FrontEnd.scala 18:14:@2547.4]
  assign io_back_inst_valid = FetchInst_io_dec_inst_valid; // @[FrontEnd.scala 43:16:@2578.4]
  assign io_back_inst_bits = FetchInst_io_dec_inst_bits; // @[FrontEnd.scala 43:16:@2577.4]
  assign io_back_pc = dec_reg_pc; // @[FrontEnd.scala 41:16:@2574.4]
  assign io_back_pred_tgt = dec_reg_pred_tgt; // @[FrontEnd.scala 42:16:@2575.4]
  assign FetchInst_clock = clock; // @[:@2532.4]
  assign FetchInst_reset = reset; // @[:@2533.4]
  assign FetchInst_io_mem_resp_valid = io_mem_resp_valid; // @[FrontEnd.scala 18:14:@2543.4]
  assign FetchInst_io_mem_resp_bits_data = io_mem_resp_bits_data; // @[FrontEnd.scala 18:14:@2542.4]
  assign FetchInst_io_if_kill = io_back_kill | io_back_xcpt_valid; // @[FrontEnd.scala 21:18:@2554.4]
  assign FetchInst_io_if_fence = io_back_fence; // @[FrontEnd.scala 23:19:@2556.4]
  assign FetchInst_io_dec_forward = io_back_forward; // @[FrontEnd.scala 22:22:@2555.4]
  assign FetchInst_io_if_target = io_back_xcpt_valid ? io_back_xcpt_bits : io_back_feedBack_bits_tgt; // @[FrontEnd.scala 20:20:@2552.4]
  assign FetchInst_io_btb_target = BTB_io_predict_tgt; // @[FrontEnd.scala 19:21:@2550.4]
  assign BTB_clock = clock; // @[:@2536.4]
  assign BTB_reset = reset; // @[:@2537.4]
  assign BTB_io_if_pc = FetchInst_io_if_pc; // @[FrontEnd.scala 28:16:@2560.4]
  assign BTB_io_ras_peek = RAS_io_peek; // @[FrontEnd.scala 29:16:@2561.4]
  assign BTB_io_fb_pc = io_back_fb_pc; // @[FrontEnd.scala 30:16:@2562.4]
  assign BTB_io_fb_type = io_back_fb_type; // @[FrontEnd.scala 31:16:@2563.4]
  assign BTB_io_feedBack_valid = io_back_feedBack_valid; // @[FrontEnd.scala 32:16:@2566.4]
  assign BTB_io_feedBack_bits_redirect = io_back_feedBack_bits_redirect; // @[FrontEnd.scala 32:16:@2565.4]
  assign BTB_io_feedBack_bits_tgt = io_back_feedBack_bits_tgt; // @[FrontEnd.scala 32:16:@2564.4]
  assign RAS_clock = clock; // @[:@2540.4]
  assign RAS_reset = reset; // @[:@2541.4]
  assign RAS_io_push_valid = io_back_ras_push_valid; // @[FrontEnd.scala 26:12:@2559.4]
  assign RAS_io_push_bits = io_back_ras_push_bits; // @[FrontEnd.scala 26:12:@2558.4]
  assign RAS_io_pop = io_back_ras_pop; // @[FrontEnd.scala 25:12:@2557.4]
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
  dec_reg_pc = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  dec_reg_pred_tgt = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (FetchInst_io_if_forward) begin
      dec_reg_pc <= FetchInst_io_if_pc;
    end
    if (FetchInst_io_if_forward) begin
      dec_reg_pred_tgt <= BTB_io_predict_tgt;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_97 & _T_100) begin
          $fwrite(32'h80000002,"STALL Cyc= %d\n",io_cyc); // @[FrontEnd.scala 46:11:@2585.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule