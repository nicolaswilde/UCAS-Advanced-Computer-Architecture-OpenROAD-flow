module MuxTest_width_64_inputs_1_outputs_4_pipeline_5( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [2:0]  io_operation_0, // @[:@6.4]
  input  [2:0]  io_operation_1, // @[:@6.4]
  input  [2:0]  io_operation_2, // @[:@6.4]
  input  [2:0]  io_operation_3, // @[:@6.4]
  input  [63:0] io_inputs_0, // @[:@6.4]
  output [63:0] io_outputs_0, // @[:@6.4]
  output [63:0] io_outputs_1, // @[:@6.4]
  output [63:0] io_outputs_2, // @[:@6.4]
  output [63:0] io_outputs_3 // @[:@6.4]
);
  wire [64:0] _T_244; // @[MuxTest_width_64_inputs_1_outputs_4_pipeline_5s.scala 32:53:@8.4]
  wire [63:0] _T_245; // @[MuxTest_width_64_inputs_1_outputs_4_pipeline_5s.scala 32:53:@9.4]
  wire [127:0] _T_247; // @[MuxTest_width_64_inputs_1_outputs_4_pipeline_5s.scala 33:58:@10.4]
  wire [63:0] _T_249; // @[MuxTest_width_64_inputs_1_outputs_4_pipeline_5s.scala 34:56:@11.4]
  wire  _T_250; // @[Mux.scala 46:19:@12.4]
  wire [63:0] _T_251; // @[Mux.scala 46:16:@13.4]
  wire  _T_252; // @[Mux.scala 46:19:@14.4]
  wire [127:0] _T_253; // @[Mux.scala 46:16:@15.4]
  wire  _T_254; // @[Mux.scala 46:19:@16.4]
  wire [127:0] _T_255; // @[Mux.scala 46:16:@17.4]
  wire  _T_256; // @[Mux.scala 46:19:@18.4]
  wire  _T_267; // @[Mux.scala 46:19:@24.4]
  wire [63:0] _T_268; // @[Mux.scala 46:16:@25.4]
  wire  _T_269; // @[Mux.scala 46:19:@26.4]
  wire [127:0] _T_270; // @[Mux.scala 46:16:@27.4]
  wire  _T_271; // @[Mux.scala 46:19:@28.4]
  wire [127:0] _T_272; // @[Mux.scala 46:16:@29.4]
  wire  _T_273; // @[Mux.scala 46:19:@30.4]
  wire  _T_284; // @[Mux.scala 46:19:@36.4]
  wire [63:0] _T_285; // @[Mux.scala 46:16:@37.4]
  wire  _T_286; // @[Mux.scala 46:19:@38.4]
  wire [127:0] _T_287; // @[Mux.scala 46:16:@39.4]
  wire  _T_288; // @[Mux.scala 46:19:@40.4]
  wire [127:0] _T_289; // @[Mux.scala 46:16:@41.4]
  wire  _T_290; // @[Mux.scala 46:19:@42.4]
  wire  _T_301; // @[Mux.scala 46:19:@48.4]
  wire [63:0] _T_302; // @[Mux.scala 46:16:@49.4]
  wire  _T_303; // @[Mux.scala 46:19:@50.4]
  wire [127:0] _T_304; // @[Mux.scala 46:16:@51.4]
  wire  _T_305; // @[Mux.scala 46:19:@52.4]
  wire [127:0] _T_306; // @[Mux.scala 46:16:@53.4]
  wire  _T_307; // @[Mux.scala 46:19:@54.4]
  reg [127:0] _T_311; // @[Reg.scala 11:16:@56.4]
  reg [127:0] _RAND_0;
  reg [127:0] _T_313; // @[Reg.scala 11:16:@60.4]
  reg [127:0] _RAND_1;
  reg [127:0] _T_315; // @[Reg.scala 11:16:@64.4]
  reg [127:0] _RAND_2;
  reg [127:0] _T_317; // @[Reg.scala 11:16:@68.4]
  reg [127:0] _RAND_3;
  reg [127:0] _T_319; // @[Reg.scala 11:16:@72.4]
  reg [127:0] _RAND_4;
  reg [127:0] _T_322; // @[Reg.scala 11:16:@76.4]
  reg [127:0] _RAND_5;
  reg [127:0] _T_324; // @[Reg.scala 11:16:@80.4]
  reg [127:0] _RAND_6;
  reg [127:0] _T_326; // @[Reg.scala 11:16:@84.4]
  reg [127:0] _RAND_7;
  reg [127:0] _T_328; // @[Reg.scala 11:16:@88.4]
  reg [127:0] _RAND_8;
  reg [127:0] _T_330; // @[Reg.scala 11:16:@92.4]
  reg [127:0] _RAND_9;
  reg [127:0] _T_333; // @[Reg.scala 11:16:@96.4]
  reg [127:0] _RAND_10;
  reg [127:0] _T_335; // @[Reg.scala 11:16:@100.4]
  reg [127:0] _RAND_11;
  reg [127:0] _T_337; // @[Reg.scala 11:16:@104.4]
  reg [127:0] _RAND_12;
  reg [127:0] _T_339; // @[Reg.scala 11:16:@108.4]
  reg [127:0] _RAND_13;
  reg [127:0] _T_341; // @[Reg.scala 11:16:@112.4]
  reg [127:0] _RAND_14;
  reg [127:0] _T_344; // @[Reg.scala 11:16:@116.4]
  reg [127:0] _RAND_15;
  reg [127:0] _T_346; // @[Reg.scala 11:16:@120.4]
  reg [127:0] _RAND_16;
  reg [127:0] _T_348; // @[Reg.scala 11:16:@124.4]
  reg [127:0] _RAND_17;
  reg [127:0] _T_350; // @[Reg.scala 11:16:@128.4]
  reg [127:0] _RAND_18;
  reg [127:0] _T_352; // @[Reg.scala 11:16:@132.4]
  reg [127:0] _RAND_19;
  assign _T_244 = io_inputs_0 + io_inputs_0; // @[MuxTest_width_64_inputs_1_outputs_4_pipeline_5s.scala 32:53:@8.4]
  assign _T_245 = io_inputs_0 + io_inputs_0; // @[MuxTest_width_64_inputs_1_outputs_4_pipeline_5s.scala 32:53:@9.4]
  assign _T_247 = io_inputs_0 * io_inputs_0; // @[MuxTest_width_64_inputs_1_outputs_4_pipeline_5s.scala 33:58:@10.4]
  assign _T_249 = io_inputs_0 / io_inputs_0; // @[MuxTest_width_64_inputs_1_outputs_4_pipeline_5s.scala 34:56:@11.4]
  assign _T_250 = 3'h3 == io_operation_0; // @[Mux.scala 46:19:@12.4]
  assign _T_251 = _T_250 ? _T_249 : 64'h0; // @[Mux.scala 46:16:@13.4]
  assign _T_252 = 3'h2 == io_operation_0; // @[Mux.scala 46:19:@14.4]
  assign _T_253 = _T_252 ? _T_247 : {{64'd0}, _T_251}; // @[Mux.scala 46:16:@15.4]
  assign _T_254 = 3'h1 == io_operation_0; // @[Mux.scala 46:19:@16.4]
  assign _T_255 = _T_254 ? {{64'd0}, _T_245} : _T_253; // @[Mux.scala 46:16:@17.4]
  assign _T_256 = 3'h0 == io_operation_0; // @[Mux.scala 46:19:@18.4]
  assign _T_267 = 3'h3 == io_operation_1; // @[Mux.scala 46:19:@24.4]
  assign _T_268 = _T_267 ? _T_249 : 64'h0; // @[Mux.scala 46:16:@25.4]
  assign _T_269 = 3'h2 == io_operation_1; // @[Mux.scala 46:19:@26.4]
  assign _T_270 = _T_269 ? _T_247 : {{64'd0}, _T_268}; // @[Mux.scala 46:16:@27.4]
  assign _T_271 = 3'h1 == io_operation_1; // @[Mux.scala 46:19:@28.4]
  assign _T_272 = _T_271 ? {{64'd0}, _T_245} : _T_270; // @[Mux.scala 46:16:@29.4]
  assign _T_273 = 3'h0 == io_operation_1; // @[Mux.scala 46:19:@30.4]
  assign _T_284 = 3'h3 == io_operation_2; // @[Mux.scala 46:19:@36.4]
  assign _T_285 = _T_284 ? _T_249 : 64'h0; // @[Mux.scala 46:16:@37.4]
  assign _T_286 = 3'h2 == io_operation_2; // @[Mux.scala 46:19:@38.4]
  assign _T_287 = _T_286 ? _T_247 : {{64'd0}, _T_285}; // @[Mux.scala 46:16:@39.4]
  assign _T_288 = 3'h1 == io_operation_2; // @[Mux.scala 46:19:@40.4]
  assign _T_289 = _T_288 ? {{64'd0}, _T_245} : _T_287; // @[Mux.scala 46:16:@41.4]
  assign _T_290 = 3'h0 == io_operation_2; // @[Mux.scala 46:19:@42.4]
  assign _T_301 = 3'h3 == io_operation_3; // @[Mux.scala 46:19:@48.4]
  assign _T_302 = _T_301 ? _T_249 : 64'h0; // @[Mux.scala 46:16:@49.4]
  assign _T_303 = 3'h2 == io_operation_3; // @[Mux.scala 46:19:@50.4]
  assign _T_304 = _T_303 ? _T_247 : {{64'd0}, _T_302}; // @[Mux.scala 46:16:@51.4]
  assign _T_305 = 3'h1 == io_operation_3; // @[Mux.scala 46:19:@52.4]
  assign _T_306 = _T_305 ? {{64'd0}, _T_245} : _T_304; // @[Mux.scala 46:16:@53.4]
  assign _T_307 = 3'h0 == io_operation_3; // @[Mux.scala 46:19:@54.4]
  assign io_outputs_0 = _T_319[63:0]; // @[MuxTest_width_64_inputs_1_outputs_4_pipeline_5s.scala 23:14:@136.4]
  assign io_outputs_1 = _T_330[63:0]; // @[MuxTest_width_64_inputs_1_outputs_4_pipeline_5s.scala 23:14:@137.4]
  assign io_outputs_2 = _T_341[63:0]; // @[MuxTest_width_64_inputs_1_outputs_4_pipeline_5s.scala 23:14:@138.4]
  assign io_outputs_3 = _T_352[63:0]; // @[MuxTest_width_64_inputs_1_outputs_4_pipeline_5s.scala 23:14:@139.4]
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
  _RAND_0 = {4{`RANDOM}};
  _T_311 = _RAND_0[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {4{`RANDOM}};
  _T_313 = _RAND_1[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {4{`RANDOM}};
  _T_315 = _RAND_2[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {4{`RANDOM}};
  _T_317 = _RAND_3[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {4{`RANDOM}};
  _T_319 = _RAND_4[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {4{`RANDOM}};
  _T_322 = _RAND_5[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {4{`RANDOM}};
  _T_324 = _RAND_6[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {4{`RANDOM}};
  _T_326 = _RAND_7[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {4{`RANDOM}};
  _T_328 = _RAND_8[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {4{`RANDOM}};
  _T_330 = _RAND_9[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {4{`RANDOM}};
  _T_333 = _RAND_10[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {4{`RANDOM}};
  _T_335 = _RAND_11[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {4{`RANDOM}};
  _T_337 = _RAND_12[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {4{`RANDOM}};
  _T_339 = _RAND_13[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {4{`RANDOM}};
  _T_341 = _RAND_14[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {4{`RANDOM}};
  _T_344 = _RAND_15[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {4{`RANDOM}};
  _T_346 = _RAND_16[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {4{`RANDOM}};
  _T_348 = _RAND_17[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {4{`RANDOM}};
  _T_350 = _RAND_18[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {4{`RANDOM}};
  _T_352 = _RAND_19[127:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_256) begin
      _T_311 <= {{64'd0}, io_inputs_0};
    end else begin
      _T_311 <= _T_255;
    end
    _T_313 <= _T_311;
    _T_315 <= _T_313;
    _T_317 <= _T_315;
    _T_319 <= _T_317;
    if (_T_273) begin
      _T_322 <= {{64'd0}, io_inputs_0};
    end else begin
      _T_322 <= _T_272;
    end
    _T_324 <= _T_322;
    _T_326 <= _T_324;
    _T_328 <= _T_326;
    _T_330 <= _T_328;
    if (_T_290) begin
      _T_333 <= {{64'd0}, io_inputs_0};
    end else begin
      _T_333 <= _T_289;
    end
    _T_335 <= _T_333;
    _T_337 <= _T_335;
    _T_339 <= _T_337;
    _T_341 <= _T_339;
    if (_T_307) begin
      _T_344 <= {{64'd0}, io_inputs_0};
    end else begin
      _T_344 <= _T_306;
    end
    _T_346 <= _T_344;
    _T_348 <= _T_346;
    _T_350 <= _T_348;
    _T_352 <= _T_350;
  end
endmodule
