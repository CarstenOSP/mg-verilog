module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_15_address0,W_15_ce0,W_15_q0,W_15_address1,W_15_ce1,W_15_we1,W_15_d1,W_15_q1,W_14_address0,W_14_ce0,W_14_q0,W_14_address1,W_14_ce1,W_14_we1,W_14_d1,W_14_q1,W_13_address0,W_13_ce0,W_13_we0,W_13_d0,W_13_q0,W_13_address1,W_13_ce1,W_13_q1,W_12_address0,W_12_ce0,W_12_we0,W_12_d0,W_12_q0,W_12_address1,W_12_ce1,W_12_q1,W_11_address0,W_11_ce0,W_11_q0,W_11_address1,W_11_ce1,W_11_we1,W_11_d1,W_11_q1,W_10_address0,W_10_ce0,W_10_q0,W_10_address1,W_10_ce1,W_10_we1,W_10_d1,W_10_q1,W_9_address0,W_9_ce0,W_9_we0,W_9_d0,W_9_q0,W_9_address1,W_9_ce1,W_9_q1,W_8_address0,W_8_ce0,W_8_we0,W_8_d0,W_8_q0,W_8_address1,W_8_ce1,W_8_q1,W_7_address0,W_7_ce0,W_7_q0,W_7_address1,W_7_ce1,W_7_we1,W_7_d1,W_7_q1,W_6_address0,W_6_ce0,W_6_q0,W_6_address1,W_6_ce1,W_6_we1,W_6_d1,W_6_q1,W_5_address0,W_5_ce0,W_5_we0,W_5_d0,W_5_q0,W_5_address1,W_5_ce1,W_5_q1,W_4_address0,W_4_ce0,W_4_we0,W_4_d0,W_4_q0,W_4_address1,W_4_ce1,W_4_q1,W_3_address0,W_3_ce0,W_3_q0,W_3_address1,W_3_ce1,W_3_we1,W_3_d1,W_3_q1,W_2_address0,W_2_ce0,W_2_q0,W_2_address1,W_2_ce1,W_2_we1,W_2_d1,W_2_q1,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,W_address0,W_ce0,W_we0,W_d0,W_q0,W_address1,W_ce1,W_q1); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [2:0] W_15_address1;
output   W_15_ce1;
output   W_15_we1;
output  [31:0] W_15_d1;
input  [31:0] W_15_q1;
output  [2:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [2:0] W_14_address1;
output   W_14_ce1;
output   W_14_we1;
output  [31:0] W_14_d1;
input  [31:0] W_14_q1;
output  [2:0] W_13_address0;
output   W_13_ce0;
output   W_13_we0;
output  [31:0] W_13_d0;
input  [31:0] W_13_q0;
output  [2:0] W_13_address1;
output   W_13_ce1;
input  [31:0] W_13_q1;
output  [2:0] W_12_address0;
output   W_12_ce0;
output   W_12_we0;
output  [31:0] W_12_d0;
input  [31:0] W_12_q0;
output  [2:0] W_12_address1;
output   W_12_ce1;
input  [31:0] W_12_q1;
output  [2:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [2:0] W_11_address1;
output   W_11_ce1;
output   W_11_we1;
output  [31:0] W_11_d1;
input  [31:0] W_11_q1;
output  [2:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [2:0] W_10_address1;
output   W_10_ce1;
output   W_10_we1;
output  [31:0] W_10_d1;
input  [31:0] W_10_q1;
output  [2:0] W_9_address0;
output   W_9_ce0;
output   W_9_we0;
output  [31:0] W_9_d0;
input  [31:0] W_9_q0;
output  [2:0] W_9_address1;
output   W_9_ce1;
input  [31:0] W_9_q1;
output  [2:0] W_8_address0;
output   W_8_ce0;
output   W_8_we0;
output  [31:0] W_8_d0;
input  [31:0] W_8_q0;
output  [2:0] W_8_address1;
output   W_8_ce1;
input  [31:0] W_8_q1;
output  [2:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [2:0] W_7_address1;
output   W_7_ce1;
output   W_7_we1;
output  [31:0] W_7_d1;
input  [31:0] W_7_q1;
output  [2:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [2:0] W_6_address1;
output   W_6_ce1;
output   W_6_we1;
output  [31:0] W_6_d1;
input  [31:0] W_6_q1;
output  [2:0] W_5_address0;
output   W_5_ce0;
output   W_5_we0;
output  [31:0] W_5_d0;
input  [31:0] W_5_q0;
output  [2:0] W_5_address1;
output   W_5_ce1;
input  [31:0] W_5_q1;
output  [2:0] W_4_address0;
output   W_4_ce0;
output   W_4_we0;
output  [31:0] W_4_d0;
input  [31:0] W_4_q0;
output  [2:0] W_4_address1;
output   W_4_ce1;
input  [31:0] W_4_q1;
output  [2:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [2:0] W_3_address1;
output   W_3_ce1;
output   W_3_we1;
output  [31:0] W_3_d1;
input  [31:0] W_3_q1;
output  [2:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [2:0] W_2_address1;
output   W_2_ce1;
output   W_2_we1;
output  [31:0] W_2_d1;
input  [31:0] W_2_q1;
output  [2:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
input  [31:0] W_1_q0;
output  [2:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [2:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
input  [31:0] W_q0;
output  [2:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln106_fu_794_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state3;
reg   [6:0] i_3_reg_1548;
wire   [3:0] trunc_ln106_1_fu_996_p1;
reg   [3:0] trunc_ln106_1_reg_1723;
wire    ap_CS_fsm_state2;
wire   [31:0] tmp_3_fu_1076_p11;
reg   [31:0] tmp_3_reg_1732;
wire   [31:0] xor_ln108_2_fu_1136_p2;
reg   [31:0] xor_ln108_2_reg_1737;
reg   [2:0] W_1_addr_3_reg_1762;
reg   [2:0] W_5_addr_3_reg_1767;
reg   [2:0] W_9_addr_3_reg_1772;
reg   [2:0] W_13_addr_3_reg_1777;
reg   [2:0] W_2_addr_3_reg_1822;
reg   [2:0] W_6_addr_3_reg_1827;
reg   [2:0] W_10_addr_3_reg_1832;
reg   [2:0] W_14_addr_3_reg_1837;
reg   [2:0] W_3_addr_3_reg_1882;
reg   [2:0] W_7_addr_3_reg_1887;
reg   [2:0] W_11_addr_3_reg_1892;
reg   [2:0] W_15_addr_3_reg_1897;
wire   [31:0] tmp_5_fu_1261_p11;
reg   [31:0] tmp_5_reg_1902;
wire   [31:0] tmp_6_fu_1285_p11;
reg   [31:0] tmp_6_reg_1907;
wire   [31:0] tmp_7_fu_1309_p11;
reg   [31:0] tmp_7_reg_1912;
wire   [31:0] tmp_9_fu_1333_p11;
reg   [31:0] tmp_9_reg_1918;
wire   [63:0] zext_ln108_fu_820_p1;
wire   [63:0] zext_ln108_1_fu_844_p1;
wire   [63:0] zext_ln108_2_fu_868_p1;
wire   [63:0] zext_ln108_3_fu_892_p1;
wire   [63:0] zext_ln108_4_fu_916_p1;
wire   [63:0] zext_ln108_5_fu_940_p1;
wire   [63:0] zext_ln108_6_fu_964_p1;
wire   [63:0] zext_ln108_8_fu_988_p1;
wire   [63:0] zext_ln99_fu_1008_p1;
wire   [63:0] zext_ln108_7_fu_1161_p1;
wire   [63:0] zext_ln108_9_fu_1184_p1;
wire   [63:0] zext_ln108_10_fu_1207_p1;
wire   [63:0] zext_ln108_11_fu_1230_p1;
wire   [63:0] zext_ln108_12_fu_1253_p1;
reg   [6:0] i_fu_106;
wire   [6:0] add_ln106_fu_1531_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg    W_1_ce1_local;
reg   [2:0] W_1_address1_local;
reg    W_1_ce0_local;
reg   [2:0] W_1_address0_local;
reg    W_1_we0_local;
wire   [31:0] xor_ln108_5_fu_1389_p2;
reg    W_5_ce1_local;
reg   [2:0] W_5_address1_local;
reg    W_5_ce0_local;
reg   [2:0] W_5_address0_local;
reg    W_5_we0_local;
reg    W_9_ce1_local;
reg   [2:0] W_9_address1_local;
reg    W_9_ce0_local;
reg   [2:0] W_9_address0_local;
reg    W_9_we0_local;
reg    W_13_ce1_local;
reg   [2:0] W_13_address1_local;
reg    W_13_ce0_local;
reg   [2:0] W_13_address0_local;
reg    W_13_we0_local;
reg    W_ce1_local;
reg   [2:0] W_address1_local;
reg    W_ce0_local;
reg   [2:0] W_address0_local;
reg    W_we0_local;
reg    W_4_ce1_local;
reg   [2:0] W_4_address1_local;
reg    W_4_ce0_local;
reg   [2:0] W_4_address0_local;
reg    W_4_we0_local;
reg    W_8_ce1_local;
reg   [2:0] W_8_address1_local;
reg    W_8_ce0_local;
reg   [2:0] W_8_address0_local;
reg    W_8_we0_local;
reg    W_12_ce1_local;
reg   [2:0] W_12_address1_local;
reg    W_12_ce0_local;
reg   [2:0] W_12_address0_local;
reg    W_12_we0_local;
reg    W_2_ce1_local;
reg   [2:0] W_2_address1_local;
reg    W_2_ce0_local;
reg   [2:0] W_2_address0_local;
reg    W_2_we1_local;
wire   [31:0] xor_ln108_8_fu_1455_p2;
reg    W_6_ce1_local;
reg   [2:0] W_6_address1_local;
reg    W_6_ce0_local;
reg   [2:0] W_6_address0_local;
reg    W_6_we1_local;
reg    W_10_ce1_local;
reg   [2:0] W_10_address1_local;
reg    W_10_ce0_local;
reg   [2:0] W_10_address0_local;
reg    W_10_we1_local;
reg    W_14_ce1_local;
reg   [2:0] W_14_address1_local;
reg    W_14_ce0_local;
reg   [2:0] W_14_address0_local;
reg    W_14_we1_local;
reg    W_3_ce1_local;
reg   [2:0] W_3_address1_local;
reg    W_3_ce0_local;
reg   [2:0] W_3_address0_local;
reg    W_3_we1_local;
wire   [31:0] xor_ln108_11_fu_1522_p2;
reg    W_7_ce1_local;
reg   [2:0] W_7_address1_local;
reg    W_7_ce0_local;
reg   [2:0] W_7_address0_local;
reg    W_7_we1_local;
reg    W_11_ce1_local;
reg   [2:0] W_11_address1_local;
reg    W_11_ce0_local;
reg   [2:0] W_11_address0_local;
reg    W_11_we1_local;
reg    W_15_ce1_local;
reg   [2:0] W_15_address1_local;
reg    W_15_ce0_local;
reg   [2:0] W_15_address0_local;
reg    W_15_we1_local;
wire   [6:0] add_ln108_fu_804_p2;
wire   [2:0] lshr_ln1_fu_810_p4;
wire   [6:0] add_ln108_1_fu_828_p2;
wire   [2:0] lshr_ln108_1_fu_834_p4;
wire   [6:0] add_ln108_2_fu_852_p2;
wire   [2:0] lshr_ln108_2_fu_858_p4;
wire   [5:0] trunc_ln106_fu_800_p1;
wire   [5:0] add_ln108_3_fu_876_p2;
wire   [1:0] lshr_ln108_3_fu_882_p4;
wire   [6:0] add_ln108_4_fu_900_p2;
wire   [2:0] lshr_ln108_4_fu_906_p4;
wire   [6:0] add_ln108_5_fu_924_p2;
wire   [2:0] lshr_ln108_5_fu_930_p4;
wire   [6:0] add_ln108_6_fu_948_p2;
wire   [2:0] lshr_ln108_6_fu_954_p4;
wire   [6:0] add_ln108_8_fu_972_p2;
wire   [2:0] lshr_ln108_8_fu_978_p4;
wire   [2:0] lshr_ln_fu_999_p4;
wire   [31:0] tmp_fu_1028_p9;
wire   [31:0] tmp_2_fu_1052_p9;
wire   [31:0] tmp_3_fu_1076_p9;
wire   [31:0] tmp_4_fu_1100_p9;
wire   [31:0] tmp_2_fu_1052_p11;
wire   [31:0] tmp_4_fu_1100_p11;
wire   [31:0] xor_ln108_1_fu_1124_p2;
wire   [31:0] xor_ln108_fu_1130_p2;
wire   [31:0] tmp_fu_1028_p11;
wire   [6:0] add_ln108_7_fu_1146_p2;
wire   [2:0] lshr_ln108_7_fu_1151_p4;
wire   [6:0] add_ln108_9_fu_1169_p2;
wire   [2:0] lshr_ln108_9_fu_1174_p4;
wire   [6:0] add_ln108_10_fu_1192_p2;
wire   [2:0] lshr_ln108_s_fu_1197_p4;
wire   [6:0] add_ln108_11_fu_1215_p2;
wire   [2:0] lshr_ln108_10_fu_1220_p4;
wire   [6:0] add_ln108_12_fu_1238_p2;
wire   [2:0] lshr_ln108_11_fu_1243_p4;
wire   [31:0] tmp_5_fu_1261_p9;
wire   [31:0] tmp_6_fu_1285_p9;
wire   [31:0] tmp_7_fu_1309_p9;
wire   [31:0] tmp_9_fu_1333_p9;
wire   [31:0] tmp_8_fu_1357_p9;
wire   [31:0] tmp_8_fu_1357_p11;
wire   [31:0] xor_ln108_4_fu_1384_p2;
wire   [31:0] xor_ln108_3_fu_1380_p2;
wire   [31:0] tmp_s_fu_1399_p9;
wire   [31:0] tmp_1_fu_1422_p9;
wire   [31:0] tmp_s_fu_1399_p11;
wire   [31:0] tmp_1_fu_1422_p11;
wire   [31:0] xor_ln108_7_fu_1450_p2;
wire   [31:0] xor_ln108_6_fu_1445_p2;
wire   [31:0] tmp_10_fu_1465_p9;
wire   [31:0] tmp_11_fu_1488_p9;
wire   [31:0] tmp_11_fu_1488_p11;
wire   [31:0] xor_ln108_10_fu_1511_p2;
wire   [31:0] tmp_10_fu_1465_p11;
wire   [31:0] xor_ln108_9_fu_1516_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_fu_1028_p1;
wire  signed [3:0] tmp_fu_1028_p3;
wire  signed [3:0] tmp_fu_1028_p5;
wire   [3:0] tmp_fu_1028_p7;
wire  signed [3:0] tmp_2_fu_1052_p1;
wire  signed [3:0] tmp_2_fu_1052_p3;
wire   [3:0] tmp_2_fu_1052_p5;
wire   [3:0] tmp_2_fu_1052_p7;
wire   [3:0] tmp_3_fu_1076_p1;
wire   [3:0] tmp_3_fu_1076_p3;
wire  signed [3:0] tmp_3_fu_1076_p5;
wire  signed [3:0] tmp_3_fu_1076_p7;
wire   [3:0] tmp_4_fu_1100_p1;
wire   [3:0] tmp_4_fu_1100_p3;
wire  signed [3:0] tmp_4_fu_1100_p5;
wire  signed [3:0] tmp_4_fu_1100_p7;
wire   [3:0] tmp_5_fu_1261_p1;
wire  signed [3:0] tmp_5_fu_1261_p3;
wire  signed [3:0] tmp_5_fu_1261_p5;
wire   [3:0] tmp_5_fu_1261_p7;
wire  signed [3:0] tmp_6_fu_1285_p1;
wire  signed [3:0] tmp_6_fu_1285_p3;
wire   [3:0] tmp_6_fu_1285_p5;
wire   [3:0] tmp_6_fu_1285_p7;
wire   [3:0] tmp_7_fu_1309_p1;
wire   [3:0] tmp_7_fu_1309_p3;
wire  signed [3:0] tmp_7_fu_1309_p5;
wire  signed [3:0] tmp_7_fu_1309_p7;
wire   [3:0] tmp_9_fu_1333_p1;
wire  signed [3:0] tmp_9_fu_1333_p3;
wire  signed [3:0] tmp_9_fu_1333_p5;
wire   [3:0] tmp_9_fu_1333_p7;
wire   [3:0] tmp_8_fu_1357_p1;
wire   [3:0] tmp_8_fu_1357_p3;
wire  signed [3:0] tmp_8_fu_1357_p5;
wire  signed [3:0] tmp_8_fu_1357_p7;
wire  signed [3:0] tmp_s_fu_1399_p1;
wire  signed [3:0] tmp_s_fu_1399_p3;
wire   [3:0] tmp_s_fu_1399_p5;
wire   [3:0] tmp_s_fu_1399_p7;
wire  signed [3:0] tmp_1_fu_1422_p1;
wire   [3:0] tmp_1_fu_1422_p3;
wire   [3:0] tmp_1_fu_1422_p5;
wire  signed [3:0] tmp_1_fu_1422_p7;
wire  signed [3:0] tmp_10_fu_1465_p1;
wire  signed [3:0] tmp_10_fu_1465_p3;
wire   [3:0] tmp_10_fu_1465_p5;
wire   [3:0] tmp_10_fu_1465_p7;
wire  signed [3:0] tmp_11_fu_1488_p1;
wire   [3:0] tmp_11_fu_1488_p3;
wire   [3:0] tmp_11_fu_1488_p5;
wire  signed [3:0] tmp_11_fu_1488_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 i_fu_106 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 32 ),.CASE1( 4'h8 ),.din1_WIDTH( 32 ),.CASE2( 4'hC ),.din2_WIDTH( 32 ),.CASE3( 4'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U6(.din0(W_1_q1),.din1(W_5_q1),.din2(W_9_q1),.din3(W_13_q1),.def(tmp_fu_1028_p9),.sel(trunc_ln106_1_fu_996_p1),.dout(tmp_fu_1028_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 32 ),.CASE1( 4'hC ),.din1_WIDTH( 32 ),.CASE2( 4'h0 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U7(.din0(W_q1),.din1(W_4_q1),.din2(W_8_q1),.din3(W_12_q1),.def(tmp_2_fu_1052_p9),.sel(trunc_ln106_1_fu_996_p1),.dout(tmp_2_fu_1052_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U8(.din0(W_2_q1),.din1(W_6_q1),.din2(W_10_q1),.din3(W_14_q1),.def(tmp_3_fu_1076_p9),.sel(trunc_ln106_1_fu_996_p1),.dout(tmp_3_fu_1076_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U9(.din0(W_q0),.din1(W_4_q0),.din2(W_8_q0),.din3(W_12_q0),.def(tmp_4_fu_1100_p9),.sel(trunc_ln106_1_fu_996_p1),.dout(tmp_4_fu_1100_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 32 ),.CASE1( 4'h8 ),.din1_WIDTH( 32 ),.CASE2( 4'hC ),.din2_WIDTH( 32 ),.CASE3( 4'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U10(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.def(tmp_5_fu_1261_p9),.sel(trunc_ln106_1_fu_996_p1),.dout(tmp_5_fu_1261_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 32 ),.CASE1( 4'hC ),.din1_WIDTH( 32 ),.CASE2( 4'h0 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U11(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.def(tmp_6_fu_1285_p9),.sel(trunc_ln106_1_fu_996_p1),.dout(tmp_6_fu_1285_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U12(.din0(W_3_q1),.din1(W_7_q1),.din2(W_11_q1),.din3(W_15_q1),.def(tmp_7_fu_1309_p9),.sel(trunc_ln106_1_fu_996_p1),.dout(tmp_7_fu_1309_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 32 ),.CASE1( 4'h8 ),.din1_WIDTH( 32 ),.CASE2( 4'hC ),.din2_WIDTH( 32 ),.CASE3( 4'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U13(.din0(W_3_q0),.din1(W_7_q0),.din2(W_11_q0),.din3(W_15_q0),.def(tmp_9_fu_1333_p9),.sel(trunc_ln106_1_fu_996_p1),.dout(tmp_9_fu_1333_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U14(.din0(W_1_q1),.din1(W_5_q1),.din2(W_9_q1),.din3(W_13_q1),.def(tmp_8_fu_1357_p9),.sel(trunc_ln106_1_reg_1723),.dout(tmp_8_fu_1357_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 32 ),.CASE1( 4'hC ),.din1_WIDTH( 32 ),.CASE2( 4'h0 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U15(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.def(tmp_s_fu_1399_p9),.sel(trunc_ln106_1_reg_1723),.dout(tmp_s_fu_1399_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U16(.din0(W_q1),.din1(W_4_q1),.din2(W_8_q1),.din3(W_12_q1),.def(tmp_1_fu_1422_p9),.sel(trunc_ln106_1_reg_1723),.dout(tmp_1_fu_1422_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 32 ),.CASE1( 4'hC ),.din1_WIDTH( 32 ),.CASE2( 4'h0 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U17(.din0(W_3_q0),.din1(W_7_q0),.din2(W_11_q0),.din3(W_15_q0),.def(tmp_10_fu_1465_p9),.sel(trunc_ln106_1_reg_1723),.dout(tmp_10_fu_1465_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U18(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.def(tmp_11_fu_1488_p9),.sel(trunc_ln106_1_reg_1723),.dout(tmp_11_fu_1488_p11));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_106 <= 7'd16;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_106 <= add_ln106_fu_1531_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_10_addr_3_reg_1832 <= zext_ln99_fu_1008_p1;
        W_11_addr_3_reg_1892 <= zext_ln99_fu_1008_p1;
        W_13_addr_3_reg_1777 <= zext_ln99_fu_1008_p1;
        W_14_addr_3_reg_1837 <= zext_ln99_fu_1008_p1;
        W_15_addr_3_reg_1897 <= zext_ln99_fu_1008_p1;
        W_1_addr_3_reg_1762 <= zext_ln99_fu_1008_p1;
        W_2_addr_3_reg_1822 <= zext_ln99_fu_1008_p1;
        W_3_addr_3_reg_1882 <= zext_ln99_fu_1008_p1;
        W_5_addr_3_reg_1767 <= zext_ln99_fu_1008_p1;
        W_6_addr_3_reg_1827 <= zext_ln99_fu_1008_p1;
        W_7_addr_3_reg_1887 <= zext_ln99_fu_1008_p1;
        W_9_addr_3_reg_1772 <= zext_ln99_fu_1008_p1;
        tmp_3_reg_1732 <= tmp_3_fu_1076_p11;
        tmp_5_reg_1902 <= tmp_5_fu_1261_p11;
        tmp_6_reg_1907 <= tmp_6_fu_1285_p11;
        tmp_7_reg_1912 <= tmp_7_fu_1309_p11;
        tmp_9_reg_1918 <= tmp_9_fu_1333_p11;
        trunc_ln106_1_reg_1723 <= trunc_ln106_1_fu_996_p1;
        xor_ln108_2_reg_1737 <= xor_ln108_2_fu_1136_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_3_reg_1548 <= ap_sig_allocacmp_i_3;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_10_address0_local = zext_ln108_9_fu_1184_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_10_address0_local = zext_ln108_4_fu_916_p1;
    end else begin
        W_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd8) & (1'b1 == ap_CS_fsm_state3))) begin
        W_10_address1_local = W_10_addr_3_reg_1832;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_10_address1_local = zext_ln108_2_fu_868_p1;
    end else begin
        W_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln106_1_reg_1723 == 4'd8) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_10_ce1_local = 1'b1;
    end else begin
        W_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd8) & (1'b1 == ap_CS_fsm_state3))) begin
        W_10_we1_local = 1'b1;
    end else begin
        W_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_11_address0_local = zext_ln108_11_fu_1230_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_11_address0_local = zext_ln108_8_fu_988_p1;
    end else begin
        W_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd8) & (1'b1 == ap_CS_fsm_state3))) begin
        W_11_address1_local = W_11_addr_3_reg_1892;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_11_address1_local = zext_ln108_6_fu_964_p1;
    end else begin
        W_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln106_1_reg_1723 == 4'd8) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_11_ce1_local = 1'b1;
    end else begin
        W_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd8) & (1'b1 == ap_CS_fsm_state3))) begin
        W_11_we1_local = 1'b1;
    end else begin
        W_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln106_1_fu_996_p1 == 4'd8) & ~(trunc_ln106_1_fu_996_p1 == 4'd4) & ~(trunc_ln106_1_fu_996_p1 == 4'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_12_address0_local = zext_ln99_fu_1008_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_12_address0_local = zext_ln108_3_fu_892_p1;
    end else begin
        W_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_12_address1_local = zext_ln108_10_fu_1207_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_12_address1_local = zext_ln108_1_fu_844_p1;
    end else begin
        W_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln106_1_fu_996_p1 == 4'd8) & ~(trunc_ln106_1_fu_996_p1 == 4'd4) & ~(trunc_ln106_1_fu_996_p1 == 4'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_12_ce1_local = 1'b1;
    end else begin
        W_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln106_1_fu_996_p1 == 4'd8) & ~(trunc_ln106_1_fu_996_p1 == 4'd4) & ~(trunc_ln106_1_fu_996_p1 == 4'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_12_we0_local = 1'b1;
    end else begin
        W_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln106_1_reg_1723 == 4'd8) & ~(trunc_ln106_1_reg_1723 == 4'd4) & ~(trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        W_13_address0_local = W_13_addr_3_reg_1777;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_13_address0_local = zext_ln108_12_fu_1253_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_13_address0_local = zext_ln108_5_fu_940_p1;
    end else begin
        W_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_13_address1_local = zext_ln108_7_fu_1161_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_13_address1_local = zext_ln108_fu_820_p1;
    end else begin
        W_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (~(trunc_ln106_1_reg_1723 == 4'd8) & ~(trunc_ln106_1_reg_1723 == 4'd4) & ~(trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_13_ce1_local = 1'b1;
    end else begin
        W_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln106_1_reg_1723 == 4'd8) & ~(trunc_ln106_1_reg_1723 == 4'd4) & ~(trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        W_13_we0_local = 1'b1;
    end else begin
        W_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_14_address0_local = zext_ln108_9_fu_1184_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_14_address0_local = zext_ln108_4_fu_916_p1;
    end else begin
        W_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln106_1_reg_1723 == 4'd8) & ~(trunc_ln106_1_reg_1723 == 4'd4) & ~(trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        W_14_address1_local = W_14_addr_3_reg_1837;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_14_address1_local = zext_ln108_2_fu_868_p1;
    end else begin
        W_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln106_1_reg_1723 == 4'd8) & ~(trunc_ln106_1_reg_1723 == 4'd4) & ~(trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_14_ce1_local = 1'b1;
    end else begin
        W_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln106_1_reg_1723 == 4'd8) & ~(trunc_ln106_1_reg_1723 == 4'd4) & ~(trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        W_14_we1_local = 1'b1;
    end else begin
        W_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_15_address0_local = zext_ln108_11_fu_1230_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_15_address0_local = zext_ln108_8_fu_988_p1;
    end else begin
        W_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln106_1_reg_1723 == 4'd8) & ~(trunc_ln106_1_reg_1723 == 4'd4) & ~(trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        W_15_address1_local = W_15_addr_3_reg_1897;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_15_address1_local = zext_ln108_6_fu_964_p1;
    end else begin
        W_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln106_1_reg_1723 == 4'd8) & ~(trunc_ln106_1_reg_1723 == 4'd4) & ~(trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_15_ce1_local = 1'b1;
    end else begin
        W_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln106_1_reg_1723 == 4'd8) & ~(trunc_ln106_1_reg_1723 == 4'd4) & ~(trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        W_15_we1_local = 1'b1;
    end else begin
        W_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        W_1_address0_local = W_1_addr_3_reg_1762;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address0_local = zext_ln108_12_fu_1253_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_1_address0_local = zext_ln108_5_fu_940_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address1_local = zext_ln108_7_fu_1161_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_1_address1_local = zext_ln108_fu_820_p1;
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_2_address0_local = zext_ln108_9_fu_1184_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_2_address0_local = zext_ln108_4_fu_916_p1;
    end else begin
        W_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        W_2_address1_local = W_2_addr_3_reg_1822;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_2_address1_local = zext_ln108_2_fu_868_p1;
    end else begin
        W_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        W_2_we1_local = 1'b1;
    end else begin
        W_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_3_address0_local = zext_ln108_11_fu_1230_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_3_address0_local = zext_ln108_8_fu_988_p1;
    end else begin
        W_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        W_3_address1_local = W_3_addr_3_reg_1882;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_3_address1_local = zext_ln108_6_fu_964_p1;
    end else begin
        W_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        W_3_we1_local = 1'b1;
    end else begin
        W_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_fu_996_p1 == 4'd4) & (1'b1 == ap_CS_fsm_state2))) begin
        W_4_address0_local = zext_ln99_fu_1008_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_4_address0_local = zext_ln108_3_fu_892_p1;
    end else begin
        W_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_4_address1_local = zext_ln108_10_fu_1207_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_4_address1_local = zext_ln108_1_fu_844_p1;
    end else begin
        W_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln106_1_fu_996_p1 == 4'd4) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_4_ce1_local = 1'b1;
    end else begin
        W_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_fu_996_p1 == 4'd4) & (1'b1 == ap_CS_fsm_state2))) begin
        W_4_we0_local = 1'b1;
    end else begin
        W_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        W_5_address0_local = W_5_addr_3_reg_1767;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_5_address0_local = zext_ln108_12_fu_1253_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_5_address0_local = zext_ln108_5_fu_940_p1;
    end else begin
        W_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_5_address1_local = zext_ln108_7_fu_1161_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_5_address1_local = zext_ln108_fu_820_p1;
    end else begin
        W_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((trunc_ln106_1_reg_1723 == 4'd4) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_5_ce1_local = 1'b1;
    end else begin
        W_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        W_5_we0_local = 1'b1;
    end else begin
        W_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_6_address0_local = zext_ln108_9_fu_1184_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_6_address0_local = zext_ln108_4_fu_916_p1;
    end else begin
        W_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        W_6_address1_local = W_6_addr_3_reg_1827;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_6_address1_local = zext_ln108_2_fu_868_p1;
    end else begin
        W_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln106_1_reg_1723 == 4'd4) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_6_ce1_local = 1'b1;
    end else begin
        W_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        W_6_we1_local = 1'b1;
    end else begin
        W_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_7_address0_local = zext_ln108_11_fu_1230_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_7_address0_local = zext_ln108_8_fu_988_p1;
    end else begin
        W_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        W_7_address1_local = W_7_addr_3_reg_1887;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_7_address1_local = zext_ln108_6_fu_964_p1;
    end else begin
        W_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln106_1_reg_1723 == 4'd4) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_7_ce1_local = 1'b1;
    end else begin
        W_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        W_7_we1_local = 1'b1;
    end else begin
        W_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_fu_996_p1 == 4'd8) & (1'b1 == ap_CS_fsm_state2))) begin
        W_8_address0_local = zext_ln99_fu_1008_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_8_address0_local = zext_ln108_3_fu_892_p1;
    end else begin
        W_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_8_address1_local = zext_ln108_10_fu_1207_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_8_address1_local = zext_ln108_1_fu_844_p1;
    end else begin
        W_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln106_1_fu_996_p1 == 4'd8) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_8_ce1_local = 1'b1;
    end else begin
        W_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_fu_996_p1 == 4'd8) & (1'b1 == ap_CS_fsm_state2))) begin
        W_8_we0_local = 1'b1;
    end else begin
        W_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd8) & (1'b1 == ap_CS_fsm_state3))) begin
        W_9_address0_local = W_9_addr_3_reg_1772;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_9_address0_local = zext_ln108_12_fu_1253_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_9_address0_local = zext_ln108_5_fu_940_p1;
    end else begin
        W_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_9_address1_local = zext_ln108_7_fu_1161_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_9_address1_local = zext_ln108_fu_820_p1;
    end else begin
        W_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((trunc_ln106_1_reg_1723 == 4'd8) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_9_ce1_local = 1'b1;
    end else begin
        W_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_reg_1723 == 4'd8) & (1'b1 == ap_CS_fsm_state3))) begin
        W_9_we0_local = 1'b1;
    end else begin
        W_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_fu_996_p1 == 4'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_address0_local = zext_ln99_fu_1008_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_address0_local = zext_ln108_3_fu_892_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_address1_local = zext_ln108_10_fu_1207_p1;
    end else if (((icmp_ln106_fu_794_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_address1_local = zext_ln108_1_fu_844_p1;
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln106_1_fu_996_p1 == 4'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_794_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln106_1_fu_996_p1 == 4'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln106_fu_794_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_106;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln106_fu_794_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign W_10_address0 = W_10_address0_local;
assign W_10_address1 = W_10_address1_local;
assign W_10_ce0 = W_10_ce0_local;
assign W_10_ce1 = W_10_ce1_local;
assign W_10_d1 = xor_ln108_8_fu_1455_p2;
assign W_10_we1 = W_10_we1_local;
assign W_11_address0 = W_11_address0_local;
assign W_11_address1 = W_11_address1_local;
assign W_11_ce0 = W_11_ce0_local;
assign W_11_ce1 = W_11_ce1_local;
assign W_11_d1 = xor_ln108_11_fu_1522_p2;
assign W_11_we1 = W_11_we1_local;
assign W_12_address0 = W_12_address0_local;
assign W_12_address1 = W_12_address1_local;
assign W_12_ce0 = W_12_ce0_local;
assign W_12_ce1 = W_12_ce1_local;
assign W_12_d0 = xor_ln108_2_fu_1136_p2;
assign W_12_we0 = W_12_we0_local;
assign W_13_address0 = W_13_address0_local;
assign W_13_address1 = W_13_address1_local;
assign W_13_ce0 = W_13_ce0_local;
assign W_13_ce1 = W_13_ce1_local;
assign W_13_d0 = xor_ln108_5_fu_1389_p2;
assign W_13_we0 = W_13_we0_local;
assign W_14_address0 = W_14_address0_local;
assign W_14_address1 = W_14_address1_local;
assign W_14_ce0 = W_14_ce0_local;
assign W_14_ce1 = W_14_ce1_local;
assign W_14_d1 = xor_ln108_8_fu_1455_p2;
assign W_14_we1 = W_14_we1_local;
assign W_15_address0 = W_15_address0_local;
assign W_15_address1 = W_15_address1_local;
assign W_15_ce0 = W_15_ce0_local;
assign W_15_ce1 = W_15_ce1_local;
assign W_15_d1 = xor_ln108_11_fu_1522_p2;
assign W_15_we1 = W_15_we1_local;
assign W_1_address0 = W_1_address0_local;
assign W_1_address1 = W_1_address1_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_d0 = xor_ln108_5_fu_1389_p2;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = W_2_address0_local;
assign W_2_address1 = W_2_address1_local;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_2_d1 = xor_ln108_8_fu_1455_p2;
assign W_2_we1 = W_2_we1_local;
assign W_3_address0 = W_3_address0_local;
assign W_3_address1 = W_3_address1_local;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_d1 = xor_ln108_11_fu_1522_p2;
assign W_3_we1 = W_3_we1_local;
assign W_4_address0 = W_4_address0_local;
assign W_4_address1 = W_4_address1_local;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_ce1 = W_4_ce1_local;
assign W_4_d0 = xor_ln108_2_fu_1136_p2;
assign W_4_we0 = W_4_we0_local;
assign W_5_address0 = W_5_address0_local;
assign W_5_address1 = W_5_address1_local;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_ce1 = W_5_ce1_local;
assign W_5_d0 = xor_ln108_5_fu_1389_p2;
assign W_5_we0 = W_5_we0_local;
assign W_6_address0 = W_6_address0_local;
assign W_6_address1 = W_6_address1_local;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_ce1 = W_6_ce1_local;
assign W_6_d1 = xor_ln108_8_fu_1455_p2;
assign W_6_we1 = W_6_we1_local;
assign W_7_address0 = W_7_address0_local;
assign W_7_address1 = W_7_address1_local;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_ce1 = W_7_ce1_local;
assign W_7_d1 = xor_ln108_11_fu_1522_p2;
assign W_7_we1 = W_7_we1_local;
assign W_8_address0 = W_8_address0_local;
assign W_8_address1 = W_8_address1_local;
assign W_8_ce0 = W_8_ce0_local;
assign W_8_ce1 = W_8_ce1_local;
assign W_8_d0 = xor_ln108_2_fu_1136_p2;
assign W_8_we0 = W_8_we0_local;
assign W_9_address0 = W_9_address0_local;
assign W_9_address1 = W_9_address1_local;
assign W_9_ce0 = W_9_ce0_local;
assign W_9_ce1 = W_9_ce1_local;
assign W_9_d0 = xor_ln108_5_fu_1389_p2;
assign W_9_we0 = W_9_we0_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_d0 = xor_ln108_2_fu_1136_p2;
assign W_we0 = W_we0_local;
assign add_ln106_fu_1531_p2 = (i_3_reg_1548 + 7'd4);
assign add_ln108_10_fu_1192_p2 = ($signed(i_3_reg_1548) + $signed(7'd116));
assign add_ln108_11_fu_1215_p2 = ($signed(i_3_reg_1548) + $signed(7'd123));
assign add_ln108_12_fu_1238_p2 = ($signed(i_3_reg_1548) + $signed(7'd117));
assign add_ln108_1_fu_828_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd120));
assign add_ln108_2_fu_852_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd114));
assign add_ln108_3_fu_876_p2 = ($signed(trunc_ln106_fu_800_p1) + $signed(6'd48));
assign add_ln108_4_fu_900_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd126));
assign add_ln108_5_fu_924_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd121));
assign add_ln108_6_fu_948_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd115));
assign add_ln108_7_fu_1146_p2 = ($signed(i_3_reg_1548) + $signed(7'd113));
assign add_ln108_8_fu_972_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd127));
assign add_ln108_9_fu_1169_p2 = ($signed(i_3_reg_1548) + $signed(7'd122));
assign add_ln108_fu_804_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd125));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_794_p2 = ((ap_sig_allocacmp_i_3 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_10_fu_1220_p4 = {{add_ln108_11_fu_1215_p2[6:4]}};
assign lshr_ln108_11_fu_1243_p4 = {{add_ln108_12_fu_1238_p2[6:4]}};
assign lshr_ln108_1_fu_834_p4 = {{add_ln108_1_fu_828_p2[6:4]}};
assign lshr_ln108_2_fu_858_p4 = {{add_ln108_2_fu_852_p2[6:4]}};
assign lshr_ln108_3_fu_882_p4 = {{add_ln108_3_fu_876_p2[5:4]}};
assign lshr_ln108_4_fu_906_p4 = {{add_ln108_4_fu_900_p2[6:4]}};
assign lshr_ln108_5_fu_930_p4 = {{add_ln108_5_fu_924_p2[6:4]}};
assign lshr_ln108_6_fu_954_p4 = {{add_ln108_6_fu_948_p2[6:4]}};
assign lshr_ln108_7_fu_1151_p4 = {{add_ln108_7_fu_1146_p2[6:4]}};
assign lshr_ln108_8_fu_978_p4 = {{add_ln108_8_fu_972_p2[6:4]}};
assign lshr_ln108_9_fu_1174_p4 = {{add_ln108_9_fu_1169_p2[6:4]}};
assign lshr_ln108_s_fu_1197_p4 = {{add_ln108_10_fu_1192_p2[6:4]}};
assign lshr_ln1_fu_810_p4 = {{add_ln108_fu_804_p2[6:4]}};
assign lshr_ln_fu_999_p4 = {{i_3_reg_1548[6:4]}};
assign tmp_10_fu_1465_p9 = 'bx;
assign tmp_11_fu_1488_p9 = 'bx;
assign tmp_1_fu_1422_p9 = 'bx;
assign tmp_2_fu_1052_p9 = 'bx;
assign tmp_3_fu_1076_p9 = 'bx;
assign tmp_4_fu_1100_p9 = 'bx;
assign tmp_5_fu_1261_p9 = 'bx;
assign tmp_6_fu_1285_p9 = 'bx;
assign tmp_7_fu_1309_p9 = 'bx;
assign tmp_8_fu_1357_p9 = 'bx;
assign tmp_9_fu_1333_p9 = 'bx;
assign tmp_fu_1028_p9 = 'bx;
assign tmp_s_fu_1399_p9 = 'bx;
assign trunc_ln106_1_fu_996_p1 = i_3_reg_1548[3:0];
assign trunc_ln106_fu_800_p1 = ap_sig_allocacmp_i_3[5:0];
assign xor_ln108_10_fu_1511_p2 = (tmp_7_reg_1912 ^ tmp_11_fu_1488_p11);
assign xor_ln108_11_fu_1522_p2 = (xor_ln108_9_fu_1516_p2 ^ xor_ln108_2_reg_1737);
assign xor_ln108_1_fu_1124_p2 = (tmp_4_fu_1100_p11 ^ tmp_2_fu_1052_p11);
assign xor_ln108_2_fu_1136_p2 = (xor_ln108_fu_1130_p2 ^ tmp_fu_1028_p11);
assign xor_ln108_3_fu_1380_p2 = (tmp_7_reg_1912 ^ tmp_5_reg_1902);
assign xor_ln108_4_fu_1384_p2 = (tmp_8_fu_1357_p11 ^ tmp_6_reg_1907);
assign xor_ln108_5_fu_1389_p2 = (xor_ln108_4_fu_1384_p2 ^ xor_ln108_3_fu_1380_p2);
assign xor_ln108_6_fu_1445_p2 = (tmp_s_fu_1399_p11 ^ tmp_3_reg_1732);
assign xor_ln108_7_fu_1450_p2 = (tmp_9_reg_1918 ^ tmp_1_fu_1422_p11);
assign xor_ln108_8_fu_1455_p2 = (xor_ln108_7_fu_1450_p2 ^ xor_ln108_6_fu_1445_p2);
assign xor_ln108_9_fu_1516_p2 = (xor_ln108_10_fu_1511_p2 ^ tmp_10_fu_1465_p11);
assign xor_ln108_fu_1130_p2 = (xor_ln108_1_fu_1124_p2 ^ tmp_3_fu_1076_p11);
assign zext_ln108_10_fu_1207_p1 = lshr_ln108_s_fu_1197_p4;
assign zext_ln108_11_fu_1230_p1 = lshr_ln108_10_fu_1220_p4;
assign zext_ln108_12_fu_1253_p1 = lshr_ln108_11_fu_1243_p4;
assign zext_ln108_1_fu_844_p1 = lshr_ln108_1_fu_834_p4;
assign zext_ln108_2_fu_868_p1 = lshr_ln108_2_fu_858_p4;
assign zext_ln108_3_fu_892_p1 = lshr_ln108_3_fu_882_p4;
assign zext_ln108_4_fu_916_p1 = lshr_ln108_4_fu_906_p4;
assign zext_ln108_5_fu_940_p1 = lshr_ln108_5_fu_930_p4;
assign zext_ln108_6_fu_964_p1 = lshr_ln108_6_fu_954_p4;
assign zext_ln108_7_fu_1161_p1 = lshr_ln108_7_fu_1151_p4;
assign zext_ln108_8_fu_988_p1 = lshr_ln108_8_fu_978_p4;
assign zext_ln108_9_fu_1184_p1 = lshr_ln108_9_fu_1174_p4;
assign zext_ln108_fu_820_p1 = lshr_ln1_fu_810_p4;
assign zext_ln99_fu_1008_p1 = lshr_ln_fu_999_p4;
endmodule 