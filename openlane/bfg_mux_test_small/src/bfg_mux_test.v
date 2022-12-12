(* blackbox *)
module gf180mcu_fd_sc_mcu7t5v0__mux4_1( I2, S0, I3, Z, S1, I1, I0, VDD, VSS );
input I0, I1, I2, I3, S0, S1;
inout VDD, VSS;
output Z;
endmodule

module bfg_mux_test_small (
  input i0,
  input i1,
  input i2,
  input i3,
  input s0,
  input s1,
  output gf_out,
  output bfg_out
);

(* keep *)
gf180mcu_fd_sc_mcu7t5v0__mux4_1 gf_mux(
  .I2(i2),
  .S0(s0),
  .I3(i3),
  .Z(gf_out),
  .S1(s1),
  .I1(i1),
  .I0(i0)
);

(* keep *)
gf180mcu_mux bfg_mux(
  .i0_l(i0),
  .i1_l(i1),
  .i2_l(i2),
  .i3_l(i3),
  .i0_r(i0),
  .i1_r(i1),
  .i2_r(i2),
  .i3_r(i3),
  .s0(s0),
  .s0b(~s0),
  .s1(s1),
  .s1b(~s1),
  .z(bfg_out)
);

endmodule
