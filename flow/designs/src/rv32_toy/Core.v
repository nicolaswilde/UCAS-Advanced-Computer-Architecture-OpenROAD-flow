module Core( // @[:@5573.2]
  input         clock, // @[:@5574.4]
  input         reset, // @[:@5575.4]
  output [31:0] io_imem_req_bits_addr, // @[:@5576.4]
  input         io_imem_resp_valid, // @[:@5576.4]
  input  [31:0] io_imem_resp_bits_data, // @[:@5576.4]
  output        io_dmem_req_valid, // @[:@5576.4]
  output [31:0] io_dmem_req_bits_addr, // @[:@5576.4]
  output [31:0] io_dmem_req_bits_data, // @[:@5576.4]
  output        io_dmem_req_bits_fcn, // @[:@5576.4]
  output [2:0]  io_dmem_req_bits_typ, // @[:@5576.4]
  input         io_dmem_resp_valid, // @[:@5576.4]
  input  [31:0] io_dmem_resp_bits_data // @[:@5576.4]
);
  wire  frontEnd_clock; // @[Core.scala 30:24:@5578.4]
  wire  frontEnd_reset; // @[Core.scala 30:24:@5578.4]
  wire [31:0] frontEnd_io_cyc; // @[Core.scala 30:24:@5578.4]
  wire [31:0] frontEnd_io_mem_req_bits_addr; // @[Core.scala 30:24:@5578.4]
  wire  frontEnd_io_mem_resp_valid; // @[Core.scala 30:24:@5578.4]
  wire [31:0] frontEnd_io_mem_resp_bits_data; // @[Core.scala 30:24:@5578.4]
  wire  frontEnd_io_back_xcpt_valid; // @[Core.scala 30:24:@5578.4]
  wire [31:0] frontEnd_io_back_xcpt_bits; // @[Core.scala 30:24:@5578.4]
  wire  frontEnd_io_back_kill; // @[Core.scala 30:24:@5578.4]
  wire  frontEnd_io_back_fence; // @[Core.scala 30:24:@5578.4]
  wire  frontEnd_io_back_forward; // @[Core.scala 30:24:@5578.4]
  wire  frontEnd_io_back_ras_pop; // @[Core.scala 30:24:@5578.4]
  wire  frontEnd_io_back_ras_push_valid; // @[Core.scala 30:24:@5578.4]
  wire [31:0] frontEnd_io_back_ras_push_bits; // @[Core.scala 30:24:@5578.4]
  wire [31:0] frontEnd_io_back_fb_pc; // @[Core.scala 30:24:@5578.4]
  wire [1:0] frontEnd_io_back_fb_type; // @[Core.scala 30:24:@5578.4]
  wire  frontEnd_io_back_feedBack_valid; // @[Core.scala 30:24:@5578.4]
  wire  frontEnd_io_back_feedBack_bits_redirect; // @[Core.scala 30:24:@5578.4]
  wire [31:0] frontEnd_io_back_feedBack_bits_tgt; // @[Core.scala 30:24:@5578.4]
  wire  frontEnd_io_back_inst_valid; // @[Core.scala 30:24:@5578.4]
  wire [31:0] frontEnd_io_back_inst_bits; // @[Core.scala 30:24:@5578.4]
  wire [31:0] frontEnd_io_back_pc; // @[Core.scala 30:24:@5578.4]
  wire [31:0] frontEnd_io_back_pred_tgt; // @[Core.scala 30:24:@5578.4]
  wire  backEnd_clock; // @[Core.scala 31:24:@5581.4]
  wire  backEnd_reset; // @[Core.scala 31:24:@5581.4]
  wire  backEnd_io_mem_req_valid; // @[Core.scala 31:24:@5581.4]
  wire [31:0] backEnd_io_mem_req_bits_addr; // @[Core.scala 31:24:@5581.4]
  wire [31:0] backEnd_io_mem_req_bits_data; // @[Core.scala 31:24:@5581.4]
  wire  backEnd_io_mem_req_bits_fcn; // @[Core.scala 31:24:@5581.4]
  wire [2:0] backEnd_io_mem_req_bits_typ; // @[Core.scala 31:24:@5581.4]
  wire  backEnd_io_mem_resp_valid; // @[Core.scala 31:24:@5581.4]
  wire [31:0] backEnd_io_mem_resp_bits_data; // @[Core.scala 31:24:@5581.4]
  wire [31:0] backEnd_io_cyc; // @[Core.scala 31:24:@5581.4]
  wire  backEnd_io_front_xcpt_valid; // @[Core.scala 31:24:@5581.4]
  wire [31:0] backEnd_io_front_xcpt_bits; // @[Core.scala 31:24:@5581.4]
  wire  backEnd_io_front_kill; // @[Core.scala 31:24:@5581.4]
  wire  backEnd_io_front_fence; // @[Core.scala 31:24:@5581.4]
  wire  backEnd_io_front_forward; // @[Core.scala 31:24:@5581.4]
  wire  backEnd_io_front_ras_pop; // @[Core.scala 31:24:@5581.4]
  wire  backEnd_io_front_ras_push_valid; // @[Core.scala 31:24:@5581.4]
  wire [31:0] backEnd_io_front_ras_push_bits; // @[Core.scala 31:24:@5581.4]
  wire [31:0] backEnd_io_front_fb_pc; // @[Core.scala 31:24:@5581.4]
  wire [1:0] backEnd_io_front_fb_type; // @[Core.scala 31:24:@5581.4]
  wire  backEnd_io_front_feedBack_valid; // @[Core.scala 31:24:@5581.4]
  wire  backEnd_io_front_feedBack_bits_redirect; // @[Core.scala 31:24:@5581.4]
  wire [31:0] backEnd_io_front_feedBack_bits_tgt; // @[Core.scala 31:24:@5581.4]
  wire  backEnd_io_front_inst_valid; // @[Core.scala 31:24:@5581.4]
  wire [31:0] backEnd_io_front_inst_bits; // @[Core.scala 31:24:@5581.4]
  wire [31:0] backEnd_io_front_pc; // @[Core.scala 31:24:@5581.4]
  wire [31:0] backEnd_io_front_pred_tgt; // @[Core.scala 31:24:@5581.4]
  FrontEnd frontEnd ( // @[Core.scala 30:24:@5578.4]
    .clock(frontEnd_clock),
    .reset(frontEnd_reset),
    .io_cyc(frontEnd_io_cyc),
    .io_mem_req_bits_addr(frontEnd_io_mem_req_bits_addr),
    .io_mem_resp_valid(frontEnd_io_mem_resp_valid),
    .io_mem_resp_bits_data(frontEnd_io_mem_resp_bits_data),
    .io_back_xcpt_valid(frontEnd_io_back_xcpt_valid),
    .io_back_xcpt_bits(frontEnd_io_back_xcpt_bits),
    .io_back_kill(frontEnd_io_back_kill),
    .io_back_fence(frontEnd_io_back_fence),
    .io_back_forward(frontEnd_io_back_forward),
    .io_back_ras_pop(frontEnd_io_back_ras_pop),
    .io_back_ras_push_valid(frontEnd_io_back_ras_push_valid),
    .io_back_ras_push_bits(frontEnd_io_back_ras_push_bits),
    .io_back_fb_pc(frontEnd_io_back_fb_pc),
    .io_back_fb_type(frontEnd_io_back_fb_type),
    .io_back_feedBack_valid(frontEnd_io_back_feedBack_valid),
    .io_back_feedBack_bits_redirect(frontEnd_io_back_feedBack_bits_redirect),
    .io_back_feedBack_bits_tgt(frontEnd_io_back_feedBack_bits_tgt),
    .io_back_inst_valid(frontEnd_io_back_inst_valid),
    .io_back_inst_bits(frontEnd_io_back_inst_bits),
    .io_back_pc(frontEnd_io_back_pc),
    .io_back_pred_tgt(frontEnd_io_back_pred_tgt)
  );
  BackEnd backEnd ( // @[Core.scala 31:24:@5581.4]
    .clock(backEnd_clock),
    .reset(backEnd_reset),
    .io_mem_req_valid(backEnd_io_mem_req_valid),
    .io_mem_req_bits_addr(backEnd_io_mem_req_bits_addr),
    .io_mem_req_bits_data(backEnd_io_mem_req_bits_data),
    .io_mem_req_bits_fcn(backEnd_io_mem_req_bits_fcn),
    .io_mem_req_bits_typ(backEnd_io_mem_req_bits_typ),
    .io_mem_resp_valid(backEnd_io_mem_resp_valid),
    .io_mem_resp_bits_data(backEnd_io_mem_resp_bits_data),
    .io_cyc(backEnd_io_cyc),
    .io_front_xcpt_valid(backEnd_io_front_xcpt_valid),
    .io_front_xcpt_bits(backEnd_io_front_xcpt_bits),
    .io_front_kill(backEnd_io_front_kill),
    .io_front_fence(backEnd_io_front_fence),
    .io_front_forward(backEnd_io_front_forward),
    .io_front_ras_pop(backEnd_io_front_ras_pop),
    .io_front_ras_push_valid(backEnd_io_front_ras_push_valid),
    .io_front_ras_push_bits(backEnd_io_front_ras_push_bits),
    .io_front_fb_pc(backEnd_io_front_fb_pc),
    .io_front_fb_type(backEnd_io_front_fb_type),
    .io_front_feedBack_valid(backEnd_io_front_feedBack_valid),
    .io_front_feedBack_bits_redirect(backEnd_io_front_feedBack_bits_redirect),
    .io_front_feedBack_bits_tgt(backEnd_io_front_feedBack_bits_tgt),
    .io_front_inst_valid(backEnd_io_front_inst_valid),
    .io_front_inst_bits(backEnd_io_front_inst_bits),
    .io_front_pc(backEnd_io_front_pc),
    .io_front_pred_tgt(backEnd_io_front_pred_tgt)
  );
  assign io_imem_req_bits_addr = frontEnd_io_mem_req_bits_addr; // @[Core.scala 32:20:@5589.4]
  assign io_dmem_req_valid = backEnd_io_mem_req_valid; // @[Core.scala 33:20:@5598.4]
  assign io_dmem_req_bits_addr = backEnd_io_mem_req_bits_addr; // @[Core.scala 33:20:@5597.4]
  assign io_dmem_req_bits_data = backEnd_io_mem_req_bits_data; // @[Core.scala 33:20:@5596.4]
  assign io_dmem_req_bits_fcn = backEnd_io_mem_req_bits_fcn; // @[Core.scala 33:20:@5595.4]
  assign io_dmem_req_bits_typ = backEnd_io_mem_req_bits_typ; // @[Core.scala 33:20:@5594.4]
  assign frontEnd_clock = clock; // @[:@5579.4]
  assign frontEnd_reset = reset; // @[:@5580.4]
  assign frontEnd_io_cyc = backEnd_io_cyc; // @[Core.scala 35:20:@5618.4]
  assign frontEnd_io_mem_resp_valid = io_imem_resp_valid; // @[Core.scala 32:20:@5585.4]
  assign frontEnd_io_mem_resp_bits_data = io_imem_resp_bits_data; // @[Core.scala 32:20:@5584.4]
  assign frontEnd_io_back_xcpt_valid = backEnd_io_front_xcpt_valid; // @[Core.scala 34:20:@5617.4]
  assign frontEnd_io_back_xcpt_bits = backEnd_io_front_xcpt_bits; // @[Core.scala 34:20:@5616.4]
  assign frontEnd_io_back_kill = backEnd_io_front_kill; // @[Core.scala 34:20:@5615.4]
  assign frontEnd_io_back_fence = backEnd_io_front_fence; // @[Core.scala 34:20:@5614.4]
  assign frontEnd_io_back_forward = backEnd_io_front_forward; // @[Core.scala 34:20:@5613.4]
  assign frontEnd_io_back_ras_pop = backEnd_io_front_ras_pop; // @[Core.scala 34:20:@5612.4]
  assign frontEnd_io_back_ras_push_valid = backEnd_io_front_ras_push_valid; // @[Core.scala 34:20:@5611.4]
  assign frontEnd_io_back_ras_push_bits = backEnd_io_front_ras_push_bits; // @[Core.scala 34:20:@5610.4]
  assign frontEnd_io_back_fb_pc = backEnd_io_front_fb_pc; // @[Core.scala 34:20:@5609.4]
  assign frontEnd_io_back_fb_type = backEnd_io_front_fb_type; // @[Core.scala 34:20:@5608.4]
  assign frontEnd_io_back_feedBack_valid = backEnd_io_front_feedBack_valid; // @[Core.scala 34:20:@5607.4]
  assign frontEnd_io_back_feedBack_bits_redirect = backEnd_io_front_feedBack_bits_redirect; // @[Core.scala 34:20:@5606.4]
  assign frontEnd_io_back_feedBack_bits_tgt = backEnd_io_front_feedBack_bits_tgt; // @[Core.scala 34:20:@5605.4]
  assign backEnd_clock = clock; // @[:@5582.4]
  assign backEnd_reset = reset; // @[:@5583.4]
  assign backEnd_io_mem_resp_valid = io_dmem_resp_valid; // @[Core.scala 33:20:@5593.4]
  assign backEnd_io_mem_resp_bits_data = io_dmem_resp_bits_data; // @[Core.scala 33:20:@5592.4]
  assign backEnd_io_front_inst_valid = frontEnd_io_back_inst_valid; // @[Core.scala 34:20:@5604.4]
  assign backEnd_io_front_inst_bits = frontEnd_io_back_inst_bits; // @[Core.scala 34:20:@5603.4]
  assign backEnd_io_front_pc = frontEnd_io_back_pc; // @[Core.scala 34:20:@5602.4]
  assign backEnd_io_front_pred_tgt = frontEnd_io_back_pred_tgt; // @[Core.scala 34:20:@5600.4]
endmodule
