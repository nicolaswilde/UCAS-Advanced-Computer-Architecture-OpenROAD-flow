module Regfile( // @[:@4893.2]
  input         clock, // @[:@4894.4]
  input  [4:0]  io_rs1_addr, // @[:@4896.4]
  output [31:0] io_rs1_data, // @[:@4896.4]
  input  [4:0]  io_rs2_addr, // @[:@4896.4]
  output [31:0] io_rs2_data, // @[:@4896.4]
  input  [4:0]  io_waddr, // @[:@4896.4]
  input  [31:0] io_wdata, // @[:@4896.4]
  input         io_wen // @[:@4896.4]
);
  reg [31:0] regfile [0:31]; // @[Regfile.scala 24:21:@4898.4]
  reg [31:0] _RAND_0;
  wire [31:0] regfile__T_27_data; // @[Regfile.scala 24:21:@4898.4]
  wire [4:0] regfile__T_27_addr; // @[Regfile.scala 24:21:@4898.4]
  wire [31:0] regfile__T_32_data; // @[Regfile.scala 24:21:@4898.4]
  wire [4:0] regfile__T_32_addr; // @[Regfile.scala 24:21:@4898.4]
  wire [31:0] regfile__T_24_data; // @[Regfile.scala 24:21:@4898.4]
  wire [4:0] regfile__T_24_addr; // @[Regfile.scala 24:21:@4898.4]
  wire  regfile__T_24_mask; // @[Regfile.scala 24:21:@4898.4]
  wire  regfile__T_24_en; // @[Regfile.scala 24:21:@4898.4]
  wire  _T_22; // @[Regfile.scala 26:30:@4899.4]
  wire  _T_26; // @[Regfile.scala 30:35:@4905.4]
  wire  _T_31; // @[Regfile.scala 31:35:@4909.4]
  assign regfile__T_27_addr = io_rs1_addr;
  assign regfile__T_27_data = regfile[regfile__T_27_addr]; // @[Regfile.scala 24:21:@4898.4]
  assign regfile__T_32_addr = io_rs2_addr;
  assign regfile__T_32_data = regfile[regfile__T_32_addr]; // @[Regfile.scala 24:21:@4898.4]
  assign regfile__T_24_data = io_wdata;
  assign regfile__T_24_addr = io_waddr;
  assign regfile__T_24_mask = 1'h1;
  assign regfile__T_24_en = io_wen & _T_22;
  assign _T_22 = io_waddr != 5'h0; // @[Regfile.scala 26:30:@4899.4]
  assign _T_26 = io_rs1_addr != 5'h0; // @[Regfile.scala 30:35:@4905.4]
  assign _T_31 = io_rs2_addr != 5'h0; // @[Regfile.scala 31:35:@4909.4]
  assign io_rs1_data = _T_26 ? regfile__T_27_data : 32'h0; // @[Regfile.scala 30:16:@4908.4]
  assign io_rs2_data = _T_31 ? regfile__T_32_data : 32'h0; // @[Regfile.scala 31:16:@4912.4]
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    regfile[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(regfile__T_24_en & regfile__T_24_mask) begin
      regfile[regfile__T_24_addr] <= regfile__T_24_data; // @[Regfile.scala 24:21:@4898.4]
    end
  end
endmodule
