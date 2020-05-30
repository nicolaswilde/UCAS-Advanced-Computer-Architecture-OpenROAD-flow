module RAS( // @[:@2484.2]
  input         clock, // @[:@2485.4]
  input         reset, // @[:@2486.4]
  input         io_push_valid, // @[:@2487.4]
  input  [31:0] io_push_bits, // @[:@2487.4]
  input         io_pop, // @[:@2487.4]
  output [31:0] io_peek // @[:@2487.4]
);
  reg [31:0] stack [0:15]; // @[RAS.scala 13:18:@2489.4]
  reg [31:0] _RAND_0;
  wire [31:0] stack__T_23_data; // @[RAS.scala 13:18:@2489.4]
  wire [3:0] stack__T_23_addr; // @[RAS.scala 13:18:@2489.4]
  wire [31:0] stack__T_24_data; // @[RAS.scala 13:18:@2489.4]
  wire [3:0] stack__T_24_addr; // @[RAS.scala 13:18:@2489.4]
  wire  stack__T_24_mask; // @[RAS.scala 13:18:@2489.4]
  wire  stack__T_24_en; // @[RAS.scala 13:18:@2489.4]
  wire [31:0] stack__T_25_data; // @[RAS.scala 13:18:@2489.4]
  wire [3:0] stack__T_25_addr; // @[RAS.scala 13:18:@2489.4]
  wire  stack__T_25_mask; // @[RAS.scala 13:18:@2489.4]
  wire  stack__T_25_en; // @[RAS.scala 13:18:@2489.4]
  reg [3:0] pos; // @[RAS.scala 14:22:@2490.4]
  reg [31:0] _RAND_1;
  reg [3:0] next; // @[RAS.scala 15:22:@2491.4]
  reg [31:0] _RAND_2;
  wire  _GEN_7; // @[RAS.scala 19:18:@2495.6]
  wire  _T_27; // @[RAS.scala 26:26:@2504.4]
  wire  _T_28; // @[RAS.scala 26:23:@2505.4]
  wire [4:0] _T_30; // @[RAS.scala 27:16:@2507.6]
  wire [3:0] _T_31; // @[RAS.scala 27:16:@2508.6]
  wire [4:0] _T_33; // @[RAS.scala 28:18:@2510.6]
  wire [3:0] _T_34; // @[RAS.scala 28:18:@2511.6]
  wire [4:0] _T_36; // @[RAS.scala 31:16:@2516.8]
  wire [4:0] _T_37; // @[RAS.scala 31:16:@2517.8]
  wire [3:0] _T_38; // @[RAS.scala 31:16:@2518.8]
  wire [4:0] _T_40; // @[RAS.scala 32:18:@2520.8]
  wire [4:0] _T_41; // @[RAS.scala 32:18:@2521.8]
  wire [3:0] _T_42; // @[RAS.scala 32:18:@2522.8]
  wire [3:0] _GEN_20; // @[RAS.scala 29:22:@2515.6]
  wire [3:0] _GEN_21; // @[RAS.scala 29:22:@2515.6]
  wire [3:0] _GEN_22; // @[RAS.scala 26:35:@2506.4]
  wire [3:0] _GEN_23; // @[RAS.scala 26:35:@2506.4]
  assign stack__T_23_addr = pos;
  assign stack__T_23_data = stack[stack__T_23_addr]; // @[RAS.scala 13:18:@2489.4]
  assign stack__T_24_data = io_push_bits;
  assign stack__T_24_addr = pos;
  assign stack__T_24_mask = 1'h1;
  assign stack__T_24_en = io_push_valid ? io_pop : 1'h0;
  assign stack__T_25_data = io_push_bits;
  assign stack__T_25_addr = next;
  assign stack__T_25_mask = 1'h1;
  assign stack__T_25_en = io_push_valid ? _GEN_7 : 1'h0;
  assign _GEN_7 = io_pop ? 1'h0 : 1'h1; // @[RAS.scala 19:18:@2495.6]
  assign _T_27 = io_pop == 1'h0; // @[RAS.scala 26:26:@2504.4]
  assign _T_28 = io_push_valid & _T_27; // @[RAS.scala 26:23:@2505.4]
  assign _T_30 = pos + 4'h1; // @[RAS.scala 27:16:@2507.6]
  assign _T_31 = pos + 4'h1; // @[RAS.scala 27:16:@2508.6]
  assign _T_33 = next + 4'h1; // @[RAS.scala 28:18:@2510.6]
  assign _T_34 = next + 4'h1; // @[RAS.scala 28:18:@2511.6]
  assign _T_36 = pos - 4'h1; // @[RAS.scala 31:16:@2516.8]
  assign _T_37 = $unsigned(_T_36); // @[RAS.scala 31:16:@2517.8]
  assign _T_38 = _T_37[3:0]; // @[RAS.scala 31:16:@2518.8]
  assign _T_40 = next - 4'h1; // @[RAS.scala 32:18:@2520.8]
  assign _T_41 = $unsigned(_T_40); // @[RAS.scala 32:18:@2521.8]
  assign _T_42 = _T_41[3:0]; // @[RAS.scala 32:18:@2522.8]
  assign _GEN_20 = io_pop ? _T_38 : pos; // @[RAS.scala 29:22:@2515.6]
  assign _GEN_21 = io_pop ? _T_42 : next; // @[RAS.scala 29:22:@2515.6]
  assign _GEN_22 = _T_28 ? _T_31 : _GEN_20; // @[RAS.scala 26:35:@2506.4]
  assign _GEN_23 = _T_28 ? _T_34 : _GEN_21; // @[RAS.scala 26:35:@2506.4]
  assign io_peek = stack__T_23_data; // @[RAS.scala 16:11:@2493.4]
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
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    stack[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  pos = _RAND_1[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  next = _RAND_2[3:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(stack__T_24_en & stack__T_24_mask) begin
      stack[stack__T_24_addr] <= stack__T_24_data; // @[RAS.scala 13:18:@2489.4]
    end
    if(stack__T_25_en & stack__T_25_mask) begin
      stack[stack__T_25_addr] <= stack__T_25_data; // @[RAS.scala 13:18:@2489.4]
    end
    if (reset) begin
      pos <= 4'hf;
    end else begin
      if (_T_28) begin
        pos <= _T_31;
      end else begin
        if (io_pop) begin
          pos <= _T_38;
        end
      end
    end
    if (reset) begin
      next <= 4'h0;
    end else begin
      if (_T_28) begin
        next <= _T_34;
      end else begin
        if (io_pop) begin
          next <= _T_42;
        end
      end
    end
  end
endmodule