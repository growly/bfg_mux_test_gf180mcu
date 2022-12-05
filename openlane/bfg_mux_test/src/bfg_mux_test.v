module bfg_mux_test (
  input i0,
  input i1,
  input i2,
  input i3,
  input s0,
  input s1,
  output baseline_out,
  output bfg_out
);

gf180mcu_mux bfg_mux(
  .i0(i0),
  .i1(i1),
  .i2(i2),
  .i3(i3),
  .s0(s0),
  .s0b(~s0),
  .s1(~s1),
  .s1b(~s1b),
  .z(bfg_out)
);

endmodule
