module FetchInst( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  output [31:0] io_mem_req_bits_addr, // @[:@6.4]
  input         io_mem_resp_valid, // @[:@6.4]
  input  [31:0] io_mem_resp_bits_data, // @[:@6.4]
  input         io_if_kill, // @[:@6.4]
  input         io_if_fence, // @[:@6.4]
  input         io_dec_forward, // @[:@6.4]
  input  [31:0] io_if_target, // @[:@6.4]
  input  [31:0] io_btb_target, // @[:@6.4]
  output        io_if_forward, // @[:@6.4]
  output [31:0] io_if_pc, // @[:@6.4]
  output        io_dec_inst_valid, // @[:@6.4]
  output [31:0] io_dec_inst_bits // @[:@6.4]
);
  reg [31:0] if_reg_pc; // @[FetchInst.scala 23:27:@8.4]
  reg [31:0] _RAND_0;
  wire [31:0] if_pc_next; // @[FetchInst.scala 28:22:@11.4]
  reg  dec_valid; // @[FetchInst.scala 34:27:@13.4]
  reg [31:0] _RAND_1;
  wire  _T_144; // @[FetchInst.scala 35:53:@14.4]
  wire  _T_145; // @[FetchInst.scala 35:50:@15.4]
  wire  _T_147; // @[FetchInst.scala 35:38:@16.4]
  wire  _T_151; // @[FetchInst.scala 37:61:@20.4]
  wire  _T_152; // @[FetchInst.scala 37:58:@21.4]
  wire  _T_153; // @[FetchInst.scala 37:20:@22.4]
  wire [31:0] _GEN_0; // @[FetchInst.scala 37:76:@23.4]
  wire  _T_155; // @[FetchInst.scala 42:19:@27.6]
  wire  _T_159; // @[FetchInst.scala 42:51:@30.6]
  wire  _GEN_1; // @[FetchInst.scala 41:24:@26.4]
  reg  reg_inst_valid; // @[FetchInst.scala 52:21:@38.4]
  reg [31:0] _RAND_2;
  reg [31:0] reg_inst_bits; // @[FetchInst.scala 52:21:@38.4]
  reg [31:0] _RAND_3;
  wire  _T_166; // @[FetchInst.scala 53:21:@39.4]
  wire  _T_170; // @[FetchInst.scala 59:43:@47.4]
  assign if_pc_next = io_if_kill ? io_if_target : io_btb_target; // @[FetchInst.scala 28:22:@11.4]
  assign _T_144 = io_mem_resp_valid == 1'h0; // @[FetchInst.scala 35:53:@14.4]
  assign _T_145 = dec_valid & _T_144; // @[FetchInst.scala 35:50:@15.4]
  assign _T_147 = _T_145 == 1'h0; // @[FetchInst.scala 35:38:@16.4]
  assign _T_151 = io_if_fence == 1'h0; // @[FetchInst.scala 37:61:@20.4]
  assign _T_152 = io_if_forward & _T_151; // @[FetchInst.scala 37:58:@21.4]
  assign _T_153 = io_if_kill | _T_152; // @[FetchInst.scala 37:20:@22.4]
  assign _GEN_0 = _T_153 ? if_pc_next : if_reg_pc; // @[FetchInst.scala 37:76:@23.4]
  assign _T_155 = io_if_kill == 1'h0; // @[FetchInst.scala 42:19:@27.6]
  assign _T_159 = _T_155 & _T_151; // @[FetchInst.scala 42:51:@30.6]
  assign _GEN_1 = io_if_forward ? _T_159 : dec_valid; // @[FetchInst.scala 41:24:@26.4]
  assign _T_166 = io_dec_forward == 1'h0; // @[FetchInst.scala 53:21:@39.4]
  assign _T_170 = io_mem_resp_valid | reg_inst_valid; // @[FetchInst.scala 59:43:@47.4]
  assign io_mem_req_bits_addr = if_reg_pc; // @[FetchInst.scala 49:24:@36.4]
  assign io_if_forward = io_dec_forward & _T_147; // @[FetchInst.scala 35:17:@18.4]
  assign io_if_pc = if_reg_pc; // @[FetchInst.scala 24:13:@9.4]
  assign io_dec_inst_valid = _T_170 & dec_valid; // @[FetchInst.scala 59:21:@49.4]
  assign io_dec_inst_bits = reg_inst_valid ? reg_inst_bits : io_mem_resp_bits_data; // @[FetchInst.scala 58:21:@46.4]
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
  if_reg_pc = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  dec_valid = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  reg_inst_valid = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  reg_inst_bits = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      if_reg_pc <= 32'h80000000;
    end else begin
      if (_T_153) begin
        if (io_if_kill) begin
          if_reg_pc <= io_if_target;
        end else begin
          if_reg_pc <= io_btb_target;
        end
      end
    end
    if (reset) begin
      dec_valid <= 1'h0;
    end else begin
      if (io_if_forward) begin
        dec_valid <= _T_159;
      end
    end
    reg_inst_valid <= io_dec_forward == 1'h0;
    if (_T_166) begin
      reg_inst_bits <= io_mem_resp_bits_data;
    end
  end
endmodule