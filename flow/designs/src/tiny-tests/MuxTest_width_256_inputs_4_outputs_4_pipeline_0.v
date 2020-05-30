module MuxTest_width_256_inputs_4_outputs_4_pipeline_0( // @[:@3.2]
  input          clock, // @[:@4.4]
  input          reset, // @[:@5.4]
  input  [1:0]   io_selects_0_0, // @[:@6.4]
  input  [1:0]   io_selects_0_1, // @[:@6.4]
  input  [1:0]   io_selects_1_0, // @[:@6.4]
  input  [1:0]   io_selects_1_1, // @[:@6.4]
  input  [1:0]   io_selects_2_0, // @[:@6.4]
  input  [1:0]   io_selects_2_1, // @[:@6.4]
  input  [1:0]   io_selects_3_0, // @[:@6.4]
  input  [1:0]   io_selects_3_1, // @[:@6.4]
  input  [2:0]   io_operation_0, // @[:@6.4]
  input  [2:0]   io_operation_1, // @[:@6.4]
  input  [2:0]   io_operation_2, // @[:@6.4]
  input  [2:0]   io_operation_3, // @[:@6.4]
  input  [255:0] io_inputs_0, // @[:@6.4]
  input  [255:0] io_inputs_1, // @[:@6.4]
  input  [255:0] io_inputs_2, // @[:@6.4]
  input  [255:0] io_inputs_3, // @[:@6.4]
  output [255:0] io_outputs_0, // @[:@6.4]
  output [255:0] io_outputs_1, // @[:@6.4]
  output [255:0] io_outputs_2, // @[:@6.4]
  output [255:0] io_outputs_3 // @[:@6.4]
);
  wire [255:0] _GEN_1; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@8.4]
  wire [255:0] _GEN_2; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@8.4]
  wire [255:0] _GEN_3; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@8.4]
  wire [255:0] _GEN_5; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@8.4]
  wire [255:0] _GEN_6; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@8.4]
  wire [255:0] _GEN_7; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@8.4]
  wire [256:0] _T_242; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@8.4]
  wire [255:0] _T_243; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@9.4]
  wire [511:0] _T_245; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 33:58:@10.4]
  wire [255:0] _T_247; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 34:56:@11.4]
  wire  _T_248; // @[Mux.scala 46:19:@12.4]
  wire [255:0] _T_249; // @[Mux.scala 46:16:@13.4]
  wire  _T_250; // @[Mux.scala 46:19:@14.4]
  wire [511:0] _T_251; // @[Mux.scala 46:16:@15.4]
  wire  _T_252; // @[Mux.scala 46:19:@16.4]
  wire [511:0] _T_253; // @[Mux.scala 46:16:@17.4]
  wire  _T_254; // @[Mux.scala 46:19:@18.4]
  wire [511:0] _T_255; // @[Mux.scala 46:16:@19.4]
  wire [255:0] _GEN_9; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@20.4]
  wire [255:0] _GEN_10; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@20.4]
  wire [255:0] _GEN_11; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@20.4]
  wire [255:0] _GEN_13; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@20.4]
  wire [255:0] _GEN_14; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@20.4]
  wire [255:0] _GEN_15; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@20.4]
  wire [256:0] _T_259; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@20.4]
  wire [255:0] _T_260; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@21.4]
  wire [511:0] _T_262; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 33:58:@22.4]
  wire [255:0] _T_264; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 34:56:@23.4]
  wire  _T_265; // @[Mux.scala 46:19:@24.4]
  wire [255:0] _T_266; // @[Mux.scala 46:16:@25.4]
  wire  _T_267; // @[Mux.scala 46:19:@26.4]
  wire [511:0] _T_268; // @[Mux.scala 46:16:@27.4]
  wire  _T_269; // @[Mux.scala 46:19:@28.4]
  wire [511:0] _T_270; // @[Mux.scala 46:16:@29.4]
  wire  _T_271; // @[Mux.scala 46:19:@30.4]
  wire [511:0] _T_272; // @[Mux.scala 46:16:@31.4]
  wire [255:0] _GEN_17; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@32.4]
  wire [255:0] _GEN_18; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@32.4]
  wire [255:0] _GEN_19; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@32.4]
  wire [255:0] _GEN_21; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@32.4]
  wire [255:0] _GEN_22; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@32.4]
  wire [255:0] _GEN_23; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@32.4]
  wire [256:0] _T_276; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@32.4]
  wire [255:0] _T_277; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@33.4]
  wire [511:0] _T_279; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 33:58:@34.4]
  wire [255:0] _T_281; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 34:56:@35.4]
  wire  _T_282; // @[Mux.scala 46:19:@36.4]
  wire [255:0] _T_283; // @[Mux.scala 46:16:@37.4]
  wire  _T_284; // @[Mux.scala 46:19:@38.4]
  wire [511:0] _T_285; // @[Mux.scala 46:16:@39.4]
  wire  _T_286; // @[Mux.scala 46:19:@40.4]
  wire [511:0] _T_287; // @[Mux.scala 46:16:@41.4]
  wire  _T_288; // @[Mux.scala 46:19:@42.4]
  wire [511:0] _T_289; // @[Mux.scala 46:16:@43.4]
  wire [255:0] _GEN_25; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@44.4]
  wire [255:0] _GEN_26; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@44.4]
  wire [255:0] _GEN_27; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@44.4]
  wire [255:0] _GEN_29; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@44.4]
  wire [255:0] _GEN_30; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@44.4]
  wire [255:0] _GEN_31; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@44.4]
  wire [256:0] _T_293; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@44.4]
  wire [255:0] _T_294; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@45.4]
  wire [511:0] _T_296; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 33:58:@46.4]
  wire [255:0] _T_298; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 34:56:@47.4]
  wire  _T_299; // @[Mux.scala 46:19:@48.4]
  wire [255:0] _T_300; // @[Mux.scala 46:16:@49.4]
  wire  _T_301; // @[Mux.scala 46:19:@50.4]
  wire [511:0] _T_302; // @[Mux.scala 46:16:@51.4]
  wire  _T_303; // @[Mux.scala 46:19:@52.4]
  wire [511:0] _T_304; // @[Mux.scala 46:16:@53.4]
  wire  _T_305; // @[Mux.scala 46:19:@54.4]
  wire [511:0] _T_306; // @[Mux.scala 46:16:@55.4]
  assign _GEN_1 = 2'h1 == io_selects_0_0 ? io_inputs_1 : io_inputs_0; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@8.4]
  assign _GEN_2 = 2'h2 == io_selects_0_0 ? io_inputs_2 : _GEN_1; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@8.4]
  assign _GEN_3 = 2'h3 == io_selects_0_0 ? io_inputs_3 : _GEN_2; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@8.4]
  assign _GEN_5 = 2'h1 == io_selects_0_1 ? io_inputs_1 : io_inputs_0; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@8.4]
  assign _GEN_6 = 2'h2 == io_selects_0_1 ? io_inputs_2 : _GEN_5; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@8.4]
  assign _GEN_7 = 2'h3 == io_selects_0_1 ? io_inputs_3 : _GEN_6; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@8.4]
  assign _T_242 = _GEN_3 + _GEN_7; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@8.4]
  assign _T_243 = _GEN_3 + _GEN_7; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@9.4]
  assign _T_245 = _GEN_3 * _GEN_7; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 33:58:@10.4]
  assign _T_247 = _GEN_3 / _GEN_7; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 34:56:@11.4]
  assign _T_248 = 3'h3 == io_operation_0; // @[Mux.scala 46:19:@12.4]
  assign _T_249 = _T_248 ? _T_247 : 256'h0; // @[Mux.scala 46:16:@13.4]
  assign _T_250 = 3'h2 == io_operation_0; // @[Mux.scala 46:19:@14.4]
  assign _T_251 = _T_250 ? _T_245 : {{256'd0}, _T_249}; // @[Mux.scala 46:16:@15.4]
  assign _T_252 = 3'h1 == io_operation_0; // @[Mux.scala 46:19:@16.4]
  assign _T_253 = _T_252 ? {{256'd0}, _T_243} : _T_251; // @[Mux.scala 46:16:@17.4]
  assign _T_254 = 3'h0 == io_operation_0; // @[Mux.scala 46:19:@18.4]
  assign _T_255 = _T_254 ? {{256'd0}, _GEN_3} : _T_253; // @[Mux.scala 46:16:@19.4]
  assign _GEN_9 = 2'h1 == io_selects_1_0 ? io_inputs_1 : io_inputs_0; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@20.4]
  assign _GEN_10 = 2'h2 == io_selects_1_0 ? io_inputs_2 : _GEN_9; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@20.4]
  assign _GEN_11 = 2'h3 == io_selects_1_0 ? io_inputs_3 : _GEN_10; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@20.4]
  assign _GEN_13 = 2'h1 == io_selects_1_1 ? io_inputs_1 : io_inputs_0; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@20.4]
  assign _GEN_14 = 2'h2 == io_selects_1_1 ? io_inputs_2 : _GEN_13; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@20.4]
  assign _GEN_15 = 2'h3 == io_selects_1_1 ? io_inputs_3 : _GEN_14; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@20.4]
  assign _T_259 = _GEN_11 + _GEN_15; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@20.4]
  assign _T_260 = _GEN_11 + _GEN_15; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@21.4]
  assign _T_262 = _GEN_11 * _GEN_15; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 33:58:@22.4]
  assign _T_264 = _GEN_11 / _GEN_15; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 34:56:@23.4]
  assign _T_265 = 3'h3 == io_operation_1; // @[Mux.scala 46:19:@24.4]
  assign _T_266 = _T_265 ? _T_264 : 256'h0; // @[Mux.scala 46:16:@25.4]
  assign _T_267 = 3'h2 == io_operation_1; // @[Mux.scala 46:19:@26.4]
  assign _T_268 = _T_267 ? _T_262 : {{256'd0}, _T_266}; // @[Mux.scala 46:16:@27.4]
  assign _T_269 = 3'h1 == io_operation_1; // @[Mux.scala 46:19:@28.4]
  assign _T_270 = _T_269 ? {{256'd0}, _T_260} : _T_268; // @[Mux.scala 46:16:@29.4]
  assign _T_271 = 3'h0 == io_operation_1; // @[Mux.scala 46:19:@30.4]
  assign _T_272 = _T_271 ? {{256'd0}, _GEN_11} : _T_270; // @[Mux.scala 46:16:@31.4]
  assign _GEN_17 = 2'h1 == io_selects_2_0 ? io_inputs_1 : io_inputs_0; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@32.4]
  assign _GEN_18 = 2'h2 == io_selects_2_0 ? io_inputs_2 : _GEN_17; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@32.4]
  assign _GEN_19 = 2'h3 == io_selects_2_0 ? io_inputs_3 : _GEN_18; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@32.4]
  assign _GEN_21 = 2'h1 == io_selects_2_1 ? io_inputs_1 : io_inputs_0; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@32.4]
  assign _GEN_22 = 2'h2 == io_selects_2_1 ? io_inputs_2 : _GEN_21; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@32.4]
  assign _GEN_23 = 2'h3 == io_selects_2_1 ? io_inputs_3 : _GEN_22; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@32.4]
  assign _T_276 = _GEN_19 + _GEN_23; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@32.4]
  assign _T_277 = _GEN_19 + _GEN_23; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@33.4]
  assign _T_279 = _GEN_19 * _GEN_23; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 33:58:@34.4]
  assign _T_281 = _GEN_19 / _GEN_23; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 34:56:@35.4]
  assign _T_282 = 3'h3 == io_operation_2; // @[Mux.scala 46:19:@36.4]
  assign _T_283 = _T_282 ? _T_281 : 256'h0; // @[Mux.scala 46:16:@37.4]
  assign _T_284 = 3'h2 == io_operation_2; // @[Mux.scala 46:19:@38.4]
  assign _T_285 = _T_284 ? _T_279 : {{256'd0}, _T_283}; // @[Mux.scala 46:16:@39.4]
  assign _T_286 = 3'h1 == io_operation_2; // @[Mux.scala 46:19:@40.4]
  assign _T_287 = _T_286 ? {{256'd0}, _T_277} : _T_285; // @[Mux.scala 46:16:@41.4]
  assign _T_288 = 3'h0 == io_operation_2; // @[Mux.scala 46:19:@42.4]
  assign _T_289 = _T_288 ? {{256'd0}, _GEN_19} : _T_287; // @[Mux.scala 46:16:@43.4]
  assign _GEN_25 = 2'h1 == io_selects_3_0 ? io_inputs_1 : io_inputs_0; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@44.4]
  assign _GEN_26 = 2'h2 == io_selects_3_0 ? io_inputs_2 : _GEN_25; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@44.4]
  assign _GEN_27 = 2'h3 == io_selects_3_0 ? io_inputs_3 : _GEN_26; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@44.4]
  assign _GEN_29 = 2'h1 == io_selects_3_1 ? io_inputs_1 : io_inputs_0; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@44.4]
  assign _GEN_30 = 2'h2 == io_selects_3_1 ? io_inputs_2 : _GEN_29; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@44.4]
  assign _GEN_31 = 2'h3 == io_selects_3_1 ? io_inputs_3 : _GEN_30; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@44.4]
  assign _T_293 = _GEN_27 + _GEN_31; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@44.4]
  assign _T_294 = _GEN_27 + _GEN_31; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 32:53:@45.4]
  assign _T_296 = _GEN_27 * _GEN_31; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 33:58:@46.4]
  assign _T_298 = _GEN_27 / _GEN_31; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 34:56:@47.4]
  assign _T_299 = 3'h3 == io_operation_3; // @[Mux.scala 46:19:@48.4]
  assign _T_300 = _T_299 ? _T_298 : 256'h0; // @[Mux.scala 46:16:@49.4]
  assign _T_301 = 3'h2 == io_operation_3; // @[Mux.scala 46:19:@50.4]
  assign _T_302 = _T_301 ? _T_296 : {{256'd0}, _T_300}; // @[Mux.scala 46:16:@51.4]
  assign _T_303 = 3'h1 == io_operation_3; // @[Mux.scala 46:19:@52.4]
  assign _T_304 = _T_303 ? {{256'd0}, _T_294} : _T_302; // @[Mux.scala 46:16:@53.4]
  assign _T_305 = 3'h0 == io_operation_3; // @[Mux.scala 46:19:@54.4]
  assign _T_306 = _T_305 ? {{256'd0}, _GEN_27} : _T_304; // @[Mux.scala 46:16:@55.4]
  assign io_outputs_0 = _T_255[255:0]; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 23:14:@56.4]
  assign io_outputs_1 = _T_272[255:0]; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 23:14:@57.4]
  assign io_outputs_2 = _T_289[255:0]; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 23:14:@58.4]
  assign io_outputs_3 = _T_306[255:0]; // @[MuxTest_width_256_inputs_4_outputs_4_pipeline_0s.scala 23:14:@59.4]
endmodule
