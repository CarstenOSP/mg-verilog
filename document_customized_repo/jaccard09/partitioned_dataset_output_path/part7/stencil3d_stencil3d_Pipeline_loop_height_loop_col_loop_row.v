
module stencil3d_stencil3d_Pipeline_loop_height_loop_col_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,C_load,C_load_1);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [11:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [11:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [11:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [11:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [11:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [11:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [11:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [11:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [11:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [11:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [11:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
input  [31:0] C_load;
input  [31:0] C_load_1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln36_reg_1337;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln36_fu_657_p2;
reg   [0:0] icmp_ln36_reg_1337_pp0_iter1_reg;
reg   [4:0] j_load_reg_1341;
wire   [0:0] icmp_ln37_fu_675_p2;
reg   [0:0] icmp_ln37_reg_1346;
wire   [4:0] select_ln11_fu_681_p3;
reg   [4:0] select_ln11_reg_1352;
wire   [0:0] and_ln11_fu_701_p2;
reg   [0:0] and_ln11_reg_1358;
wire   [4:0] indvars_iv_next137_dup_fu_707_p2;
reg   [4:0] indvars_iv_next137_dup_reg_1364;
wire   [3:0] k_mid2_fu_719_p3;
reg   [3:0] k_mid2_reg_1369;
wire   [1:0] trunc_ln38_fu_727_p1;
reg   [1:0] trunc_ln38_reg_1375;
reg   [1:0] trunc_ln38_reg_1375_pp0_iter1_reg;
reg   [1:0] trunc_ln38_reg_1375_pp0_iter2_reg;
reg   [1:0] lshr_ln_reg_1389;
wire   [4:0] select_ln36_fu_786_p3;
reg   [4:0] select_ln36_reg_1398;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [4:0] indvars_iv_next137_mid2_fu_798_p3;
reg   [4:0] indvars_iv_next137_mid2_reg_1405;
wire   [4:0] select_ln37_fu_805_p3;
reg   [4:0] select_ln37_reg_1410;
wire   [4:0] tmp3_fu_810_p2;
reg   [4:0] tmp3_reg_1415;
wire   [63:0] zext_ln39_fu_825_p1;
reg   [63:0] zext_ln39_reg_1420;
reg   [63:0] zext_ln39_reg_1420_pp0_iter1_reg;
reg   [63:0] zext_ln39_reg_1420_pp0_iter2_reg;
wire   [1:0] lshr_ln1_fu_855_p4;
reg   [1:0] lshr_ln1_reg_1468;
wire   [63:0] zext_ln44_fu_875_p1;
reg   [63:0] zext_ln44_reg_1475;
reg   [63:0] zext_ln44_reg_1475_pp0_iter1_reg;
reg   [63:0] zext_ln44_reg_1475_pp0_iter2_reg;
wire   [9:0] empty_15_fu_949_p2;
reg   [9:0] empty_15_reg_1523;
wire    ap_block_pp0_stage2_11001;
wire  signed [31:0] sum0_fu_955_p11;
reg  signed [31:0] sum0_reg_1528;
wire   [31:0] tmp_3_fu_1008_p11;
reg   [31:0] tmp_3_reg_1574;
wire  signed [31:0] sum0_1_fu_1031_p11;
reg  signed [31:0] sum0_1_reg_1579;
wire   [31:0] tmp_5_fu_1054_p11;
reg   [31:0] tmp_5_reg_1585;
wire   [31:0] tmp_8_fu_1092_p11;
reg   [31:0] tmp_8_reg_1610;
wire   [31:0] tmp_s_fu_1130_p11;
reg   [31:0] tmp_s_reg_1635;
wire   [31:0] grp_fu_580_p11;
reg   [31:0] tmp_reg_1640;
wire   [31:0] tmp_1_fu_1153_p11;
reg   [31:0] tmp_1_reg_1645;
wire   [31:0] add_ln48_3_fu_1195_p2;
reg   [31:0] add_ln48_3_reg_1670;
wire   [31:0] grp_fu_603_p11;
reg   [31:0] tmp_6_reg_1675;
wire   [31:0] tmp_9_fu_1214_p11;
reg   [31:0] tmp_9_reg_1700;
reg   [31:0] tmp_2_reg_1705;
wire   [31:0] grp_fu_572_p2;
reg   [31:0] mul_ln48_reg_1710;
reg   [31:0] mul_ln48_reg_1710_pp0_iter2_reg;
reg   [31:0] tmp_7_reg_1715;
wire   [31:0] add_ln48_9_fu_1241_p2;
reg   [31:0] add_ln48_9_reg_1720;
wire   [31:0] grp_fu_576_p2;
reg   [31:0] mul_ln48_2_reg_1725;
reg   [31:0] mul_ln48_2_reg_1725_pp0_iter2_reg;
wire  signed [31:0] add_ln48_4_fu_1255_p2;
reg  signed [31:0] add_ln48_4_reg_1730;
wire  signed [31:0] add_ln48_10_fu_1269_p2;
reg  signed [31:0] add_ln48_10_reg_1735;
reg   [31:0] mul_ln48_1_reg_1740;
reg   [31:0] mul_ln48_3_reg_1745;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln43_fu_842_p1;
wire   [63:0] zext_ln42_1_fu_893_p1;
wire   [63:0] zext_ln40_fu_985_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln41_fu_1000_p1;
wire   [63:0] zext_ln40_1_fu_1084_p1;
wire   [63:0] zext_ln43_1_fu_1122_p1;
wire   [63:0] zext_ln42_fu_1183_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln41_1_fu_1206_p1;
reg   [3:0] k_fu_100;
wire   [3:0] add_ln44_2_fu_901_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_load;
reg   [4:0] j_fu_104;
reg   [4:0] ap_sig_allocacmp_j_load;
reg   [7:0] indvar_flatten_fu_108;
wire   [7:0] select_ln37_1_fu_747_p3;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [4:0] i_fu_112;
reg   [12:0] indvar_flatten14_fu_116;
wire   [12:0] add_ln36_fu_663_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten14_load;
reg    orig_0_ce1_local;
reg   [11:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [11:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [11:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [11:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [11:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [11:0] orig_2_address0_local;
reg    orig_3_ce1_local;
reg   [11:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [11:0] orig_3_address0_local;
reg    sol_2_we0_local;
reg   [31:0] sol_2_d0_local;
wire   [31:0] add_ln48_5_fu_1274_p2;
reg    sol_2_ce0_local;
reg   [11:0] sol_2_address0_local;
wire   [31:0] add_ln48_11_fu_1282_p2;
reg    sol_3_we0_local;
reg   [31:0] sol_3_d0_local;
reg    sol_3_ce0_local;
reg   [11:0] sol_3_address0_local;
reg    sol_1_we0_local;
reg   [31:0] sol_1_d0_local;
reg    sol_1_ce0_local;
reg   [11:0] sol_1_address0_local;
reg    sol_0_we0_local;
reg   [31:0] sol_0_d0_local;
reg    sol_0_ce0_local;
reg   [11:0] sol_0_address0_local;
reg  signed [31:0] grp_fu_572_p0;
reg  signed [31:0] grp_fu_572_p1;
reg  signed [31:0] grp_fu_576_p0;
reg  signed [31:0] grp_fu_576_p1;
wire   [31:0] grp_fu_580_p9;
reg   [1:0] grp_fu_580_p10;
wire   [31:0] grp_fu_603_p9;
reg   [1:0] grp_fu_603_p10;
wire   [0:0] icmp_ln38_fu_695_p2;
wire   [0:0] xor_ln11_fu_689_p2;
wire   [0:0] empty_fu_713_p2;
wire   [7:0] add_ln37_fu_741_p2;
wire   [4:0] indvars_iv_next13724_fu_768_p2;
wire   [4:0] indvars_iv_next15017_fu_780_p2;
wire   [4:0] indvars_iv_next137_mid1_fu_793_p2;
wire   [4:0] select_ln11_1_fu_773_p3;
wire   [11:0] add_ln_fu_816_p4;
wire   [11:0] add_ln4_fu_833_p4;
wire   [3:0] add_ln44_fu_850_p2;
wire   [11:0] add_ln44_1_fu_865_p4;
wire   [11:0] add_ln42_1_fu_883_p4;
wire  signed [5:0] tmp1_cast_cast_fu_928_p3;
wire   [9:0] tmp1_cast_cast_cast_fu_935_p1;
wire   [9:0] tmp_4_fu_921_p3;
wire  signed [9:0] tmp2_cast_fu_945_p1;
wire   [31:0] sum0_fu_955_p9;
wire   [9:0] empty_14_fu_939_p2;
wire   [11:0] add_ln1_fu_978_p3;
wire   [11:0] add_ln2_fu_993_p3;
wire   [31:0] tmp_3_fu_1008_p9;
wire   [31:0] sum0_1_fu_1031_p9;
wire   [31:0] tmp_5_fu_1054_p9;
wire   [11:0] add_ln40_1_fu_1077_p3;
wire   [31:0] tmp_8_fu_1092_p9;
wire   [11:0] add_ln43_1_fu_1115_p4;
wire   [31:0] tmp_s_fu_1130_p9;
wire   [31:0] tmp_1_fu_1153_p9;
wire   [11:0] add_ln3_fu_1176_p4;
wire   [31:0] add_ln48_2_fu_1191_p2;
wire   [11:0] add_ln41_1_fu_1200_p3;
wire   [31:0] tmp_9_fu_1214_p9;
wire   [31:0] add_ln48_8_fu_1237_p2;
wire   [31:0] add_ln48_fu_1246_p2;
wire   [31:0] add_ln48_1_fu_1250_p2;
wire   [31:0] add_ln48_6_fu_1260_p2;
wire   [31:0] add_ln48_7_fu_1264_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_959;
reg    ap_condition_962;
reg    ap_condition_967;
reg    ap_condition_970;
reg    ap_condition_973;
reg    ap_condition_976;
reg    ap_condition_979;
reg    ap_condition_982;
reg    ap_condition_379;
wire   [1:0] grp_fu_580_p1;
wire   [1:0] grp_fu_580_p3;
wire  signed [1:0] grp_fu_580_p5;
wire  signed [1:0] grp_fu_580_p7;
wire  signed [1:0] grp_fu_603_p1;
wire   [1:0] grp_fu_603_p3;
wire   [1:0] grp_fu_603_p5;
wire  signed [1:0] grp_fu_603_p7;
wire   [1:0] sum0_fu_955_p1;
wire   [1:0] sum0_fu_955_p3;
wire  signed [1:0] sum0_fu_955_p5;
wire  signed [1:0] sum0_fu_955_p7;
wire   [1:0] tmp_3_fu_1008_p1;
wire   [1:0] tmp_3_fu_1008_p3;
wire  signed [1:0] tmp_3_fu_1008_p5;
wire  signed [1:0] tmp_3_fu_1008_p7;
wire  signed [1:0] sum0_1_fu_1031_p1;
wire   [1:0] sum0_1_fu_1031_p3;
wire   [1:0] sum0_1_fu_1031_p5;
wire  signed [1:0] sum0_1_fu_1031_p7;
wire   [1:0] tmp_5_fu_1054_p1;
wire  signed [1:0] tmp_5_fu_1054_p3;
wire  signed [1:0] tmp_5_fu_1054_p5;
wire   [1:0] tmp_5_fu_1054_p7;
wire  signed [1:0] tmp_8_fu_1092_p1;
wire   [1:0] tmp_8_fu_1092_p3;
wire   [1:0] tmp_8_fu_1092_p5;
wire  signed [1:0] tmp_8_fu_1092_p7;
wire  signed [1:0] tmp_s_fu_1130_p1;
wire  signed [1:0] tmp_s_fu_1130_p3;
wire   [1:0] tmp_s_fu_1130_p5;
wire   [1:0] tmp_s_fu_1130_p7;
wire   [1:0] tmp_1_fu_1153_p1;
wire   [1:0] tmp_1_fu_1153_p3;
wire  signed [1:0] tmp_1_fu_1153_p5;
wire  signed [1:0] tmp_1_fu_1153_p7;
wire  signed [1:0] tmp_9_fu_1214_p1;
wire   [1:0] tmp_9_fu_1214_p3;
wire   [1:0] tmp_9_fu_1214_p5;
wire  signed [1:0] tmp_9_fu_1214_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_100 = 4'd0;
#0 j_fu_104 = 5'd0;
#0 indvar_flatten_fu_108 = 8'd0;
#0 i_fu_112 = 5'd0;
#0 indvar_flatten14_fu_116 = 13'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_572_p0),.din1(grp_fu_572_p1),.ce(1'b1),.dout(grp_fu_572_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_576_p0),.din1(grp_fu_576_p1),.ce(1'b1),.dout(grp_fu_576_p2));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U23(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(grp_fu_580_p9),.sel(grp_fu_580_p10),.dout(grp_fu_580_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U24(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(grp_fu_603_p9),.sel(grp_fu_603_p10),.dout(grp_fu_603_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U25(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(sum0_fu_955_p9),.sel(trunc_ln38_reg_1375),.dout(sum0_fu_955_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U26(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(tmp_3_fu_1008_p9),.sel(trunc_ln38_reg_1375),.dout(tmp_3_fu_1008_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U27(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(sum0_1_fu_1031_p9),.sel(trunc_ln38_reg_1375),.dout(sum0_1_fu_1031_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U28(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_5_fu_1054_p9),.sel(trunc_ln38_reg_1375),.dout(tmp_5_fu_1054_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U29(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(tmp_8_fu_1092_p9),.sel(trunc_ln38_reg_1375),.dout(tmp_8_fu_1092_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U30(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_s_fu_1130_p9),.sel(trunc_ln38_reg_1375),.dout(tmp_s_fu_1130_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U31(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_1_fu_1153_p9),.sel(trunc_ln38_reg_1375),.dout(tmp_1_fu_1153_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U32(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_9_fu_1214_p9),.sel(trunc_ln38_reg_1375),.dout(tmp_9_fu_1214_p11));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_112 <= 5'd1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_112 <= select_ln36_fu_786_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln36_fu_657_p2 == 1'd0))) begin
            indvar_flatten14_fu_116 <= add_ln36_fu_663_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten14_fu_116 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln36_fu_657_p2 == 1'd0))) begin
            indvar_flatten_fu_108 <= select_ln37_1_fu_747_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_108 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_104 <= 5'd1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_104 <= select_ln37_fu_805_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_100 <= 4'd1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k_fu_100 <= add_ln44_2_fu_901_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_10_reg_1735 <= add_ln48_10_fu_1269_p2;
        add_ln48_4_reg_1730 <= add_ln48_4_fu_1255_p2;
        empty_15_reg_1523 <= empty_15_fu_949_p2;
        sum0_1_reg_1579 <= sum0_1_fu_1031_p11;
        sum0_reg_1528 <= sum0_fu_955_p11;
        tmp_3_reg_1574 <= tmp_3_fu_1008_p11;
        tmp_5_reg_1585 <= tmp_5_fu_1054_p11;
        tmp_8_reg_1610 <= tmp_8_fu_1092_p11;
        tmp_s_reg_1635 <= tmp_s_fu_1130_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_3_reg_1670 <= add_ln48_3_fu_1195_p2;
        and_ln11_reg_1358 <= and_ln11_fu_701_p2;
        icmp_ln36_reg_1337 <= icmp_ln36_fu_657_p2;
        icmp_ln36_reg_1337_pp0_iter1_reg <= icmp_ln36_reg_1337;
        icmp_ln37_reg_1346 <= icmp_ln37_fu_675_p2;
        indvars_iv_next137_dup_reg_1364 <= indvars_iv_next137_dup_fu_707_p2;
        j_load_reg_1341 <= ap_sig_allocacmp_j_load;
        k_mid2_reg_1369 <= k_mid2_fu_719_p3;
        lshr_ln_reg_1389 <= {{k_mid2_fu_719_p3[3:2]}};
        select_ln11_reg_1352 <= select_ln11_fu_681_p3;
        tmp_1_reg_1645 <= tmp_1_fu_1153_p11;
        tmp_9_reg_1700 <= tmp_9_fu_1214_p11;
        trunc_ln38_reg_1375 <= trunc_ln38_fu_727_p1;
        trunc_ln38_reg_1375_pp0_iter1_reg <= trunc_ln38_reg_1375;
        trunc_ln38_reg_1375_pp0_iter2_reg <= trunc_ln38_reg_1375_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_9_reg_1720 <= add_ln48_9_fu_1241_p2;
        indvars_iv_next137_mid2_reg_1405 <= indvars_iv_next137_mid2_fu_798_p3;
        lshr_ln1_reg_1468 <= {{add_ln44_fu_850_p2[3:2]}};
        mul_ln48_2_reg_1725_pp0_iter2_reg <= mul_ln48_2_reg_1725;
        mul_ln48_reg_1710_pp0_iter2_reg <= mul_ln48_reg_1710;
        select_ln36_reg_1398 <= select_ln36_fu_786_p3;
        select_ln37_reg_1410 <= select_ln37_fu_805_p3;
        tmp3_reg_1415 <= tmp3_fu_810_p2;
        zext_ln39_reg_1420[11 : 0] <= zext_ln39_fu_825_p1[11 : 0];
        zext_ln39_reg_1420_pp0_iter1_reg[11 : 0] <= zext_ln39_reg_1420[11 : 0];
        zext_ln39_reg_1420_pp0_iter2_reg[11 : 0] <= zext_ln39_reg_1420_pp0_iter1_reg[11 : 0];
        zext_ln44_reg_1475[11 : 0] <= zext_ln44_fu_875_p1[11 : 0];
        zext_ln44_reg_1475_pp0_iter1_reg[11 : 0] <= zext_ln44_reg_1475[11 : 0];
        zext_ln44_reg_1475_pp0_iter2_reg[11 : 0] <= zext_ln44_reg_1475_pp0_iter1_reg[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_1_reg_1740 <= grp_fu_572_p2;
        mul_ln48_3_reg_1745 <= grp_fu_576_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_2_reg_1725 <= grp_fu_576_p2;
        mul_ln48_reg_1710 <= grp_fu_572_p2;
        tmp_2_reg_1705 <= grp_fu_580_p11;
        tmp_7_reg_1715 <= grp_fu_603_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_6_reg_1675 <= grp_fu_603_p11;
        tmp_reg_1640 <= grp_fu_580_p11;
    end
end
always @ (*) begin
    if (((icmp_ln36_reg_1337 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln36_reg_1337_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten14_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten14_load = indvar_flatten14_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 5'd1;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_load = 4'd1;
    end else begin
        ap_sig_allocacmp_k_load = k_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_572_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_572_p0 = C_load;
    end else begin
        grp_fu_572_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_572_p1 = add_ln48_4_reg_1730;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_572_p1 = sum0_reg_1528;
    end else begin
        grp_fu_572_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_576_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_576_p0 = C_load;
    end else begin
        grp_fu_576_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_576_p1 = add_ln48_10_reg_1735;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_576_p1 = sum0_1_reg_1579;
    end else begin
        grp_fu_576_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_580_p10 = trunc_ln38_reg_1375_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_580_p10 = trunc_ln38_reg_1375;
        end else begin
            grp_fu_580_p10 = 'bx;
        end
    end else begin
        grp_fu_580_p10 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_603_p10 = trunc_ln38_reg_1375_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_603_p10 = trunc_ln38_reg_1375;
        end else begin
            grp_fu_603_p10 = 'bx;
        end
    end else begin
        grp_fu_603_p10 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd3))) begin
        orig_0_address0_local = zext_ln41_1_fu_1206_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd0))) begin
        orig_0_address0_local = zext_ln42_fu_1183_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd3))) begin
        orig_0_address0_local = zext_ln40_1_fu_1084_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd0))) begin
        orig_0_address0_local = zext_ln40_fu_985_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd3))) begin
        orig_0_address0_local = zext_ln42_1_fu_893_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd0))) begin
        orig_0_address0_local = zext_ln43_fu_842_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_970)) begin
            orig_0_address1_local = zext_ln43_1_fu_1122_p1;
        end else if ((1'b1 == ap_condition_967)) begin
            orig_0_address1_local = zext_ln41_fu_1000_p1;
        end else if ((1'b1 == ap_condition_962)) begin
            orig_0_address1_local = zext_ln44_fu_875_p1;
        end else if ((1'b1 == ap_condition_959)) begin
            orig_0_address1_local = zext_ln39_fu_825_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd3)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd0)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd3)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd3)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd3)) | ((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd2)))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd1)) | ((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd0)))))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd0))) begin
        orig_1_address0_local = zext_ln41_1_fu_1206_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd1))) begin
        orig_1_address0_local = zext_ln42_fu_1183_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd0))) begin
        orig_1_address0_local = zext_ln40_1_fu_1084_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd1))) begin
        orig_1_address0_local = zext_ln40_fu_985_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd0))) begin
        orig_1_address0_local = zext_ln42_1_fu_893_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd1))) begin
        orig_1_address0_local = zext_ln43_fu_842_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_967)) begin
            orig_1_address1_local = zext_ln43_1_fu_1122_p1;
        end else if ((1'b1 == ap_condition_979)) begin
            orig_1_address1_local = zext_ln41_fu_1000_p1;
        end else if ((1'b1 == ap_condition_976)) begin
            orig_1_address1_local = zext_ln44_fu_875_p1;
        end else if ((1'b1 == ap_condition_973)) begin
            orig_1_address1_local = zext_ln39_fu_825_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd1)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd0)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd1)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd1)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd3)) | ((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd0)))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd2)) | ((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd1)))))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd1))) begin
        orig_2_address0_local = zext_ln41_1_fu_1206_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd2))) begin
        orig_2_address0_local = zext_ln42_fu_1183_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd1))) begin
        orig_2_address0_local = zext_ln40_1_fu_1084_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd2))) begin
        orig_2_address0_local = zext_ln40_fu_985_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd1))) begin
        orig_2_address0_local = zext_ln42_1_fu_893_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd2))) begin
        orig_2_address0_local = zext_ln43_fu_842_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_979)) begin
            orig_2_address1_local = zext_ln43_1_fu_1122_p1;
        end else if ((1'b1 == ap_condition_982)) begin
            orig_2_address1_local = zext_ln41_fu_1000_p1;
        end else if ((1'b1 == ap_condition_959)) begin
            orig_2_address1_local = zext_ln44_fu_875_p1;
        end else if ((1'b1 == ap_condition_962)) begin
            orig_2_address1_local = zext_ln39_fu_825_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd2)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd1)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd2)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd1)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd2)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd3)) | ((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd2)))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd1)) | ((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd0)))))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd2))) begin
        orig_3_address0_local = zext_ln41_1_fu_1206_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd3))) begin
        orig_3_address0_local = zext_ln42_fu_1183_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd2))) begin
        orig_3_address0_local = zext_ln40_1_fu_1084_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd3))) begin
        orig_3_address0_local = zext_ln40_fu_985_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd2))) begin
        orig_3_address0_local = zext_ln42_1_fu_893_p1;
    end else if (((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd3))) begin
        orig_3_address0_local = zext_ln43_fu_842_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_982)) begin
            orig_3_address1_local = zext_ln43_1_fu_1122_p1;
        end else if ((1'b1 == ap_condition_970)) begin
            orig_3_address1_local = zext_ln41_fu_1000_p1;
        end else if ((1'b1 == ap_condition_973)) begin
            orig_3_address1_local = zext_ln44_fu_875_p1;
        end else if ((1'b1 == ap_condition_976)) begin
            orig_3_address1_local = zext_ln39_fu_825_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd3)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd2)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd3)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1375 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375 == 2'd2)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd3)) | ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd3)) | ((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd0)))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd2)) | ((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd1)))))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_379)) begin
        if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd3)) begin
            sol_0_address0_local = zext_ln44_reg_1475_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd0)) begin
            sol_0_address0_local = zext_ln39_reg_1420_pp0_iter2_reg;
        end else begin
            sol_0_address0_local = 'bx;
        end
    end else begin
        sol_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd0)))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_379)) begin
        if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd3)) begin
            sol_0_d0_local = add_ln48_11_fu_1282_p2;
        end else if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd0)) begin
            sol_0_d0_local = add_ln48_5_fu_1274_p2;
        end else begin
            sol_0_d0_local = 'bx;
        end
    end else begin
        sol_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd0)))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_379)) begin
        if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd0)) begin
            sol_1_address0_local = zext_ln44_reg_1475_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd1)) begin
            sol_1_address0_local = zext_ln39_reg_1420_pp0_iter2_reg;
        end else begin
            sol_1_address0_local = 'bx;
        end
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd1)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_379)) begin
        if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd0)) begin
            sol_1_d0_local = add_ln48_11_fu_1282_p2;
        end else if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd1)) begin
            sol_1_d0_local = add_ln48_5_fu_1274_p2;
        end else begin
            sol_1_d0_local = 'bx;
        end
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd1)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_379)) begin
        if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd1)) begin
            sol_2_address0_local = zext_ln44_reg_1475_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd2)) begin
            sol_2_address0_local = zext_ln39_reg_1420_pp0_iter2_reg;
        end else begin
            sol_2_address0_local = 'bx;
        end
    end else begin
        sol_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd2)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_379)) begin
        if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd1)) begin
            sol_2_d0_local = add_ln48_11_fu_1282_p2;
        end else if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd2)) begin
            sol_2_d0_local = add_ln48_5_fu_1274_p2;
        end else begin
            sol_2_d0_local = 'bx;
        end
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd2)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_379)) begin
        if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd3)) begin
            sol_3_address0_local = zext_ln39_reg_1420_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd2)) begin
            sol_3_address0_local = zext_ln44_reg_1475_pp0_iter2_reg;
        end else begin
            sol_3_address0_local = 'bx;
        end
    end else begin
        sol_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd2)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_379)) begin
        if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd3)) begin
            sol_3_d0_local = add_ln48_5_fu_1274_p2;
        end else if ((trunc_ln38_reg_1375_pp0_iter2_reg == 2'd2)) begin
            sol_3_d0_local = add_ln48_11_fu_1282_p2;
        end else begin
            sol_3_d0_local = 'bx;
        end
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1375_pp0_iter2_reg == 2'd2)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln1_fu_978_p3 = {{empty_14_fu_939_p2}, {lshr_ln_reg_1389}};
assign add_ln2_fu_993_p3 = {{empty_15_fu_949_p2}, {lshr_ln_reg_1389}};
assign add_ln36_fu_663_p2 = (ap_sig_allocacmp_indvar_flatten14_load + 13'd1);
assign add_ln37_fu_741_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);
assign add_ln3_fu_1176_p4 = {{{select_ln36_reg_1398}, {indvars_iv_next137_mid2_reg_1405}}, {lshr_ln_reg_1389}};
assign add_ln40_1_fu_1077_p3 = {{empty_14_fu_939_p2}, {lshr_ln1_reg_1468}};
assign add_ln41_1_fu_1200_p3 = {{empty_15_reg_1523}, {lshr_ln1_reg_1468}};
assign add_ln42_1_fu_883_p4 = {{{select_ln36_fu_786_p3}, {indvars_iv_next137_mid2_fu_798_p3}}, {lshr_ln1_fu_855_p4}};
assign add_ln43_1_fu_1115_p4 = {{{select_ln36_reg_1398}, {tmp3_reg_1415}}, {lshr_ln1_reg_1468}};
assign add_ln44_1_fu_865_p4 = {{{select_ln36_fu_786_p3}, {select_ln37_fu_805_p3}}, {lshr_ln1_fu_855_p4}};
assign add_ln44_2_fu_901_p2 = (k_mid2_reg_1369 + 4'd2);
assign add_ln44_fu_850_p2 = (k_mid2_reg_1369 + 4'd1);
assign add_ln48_10_fu_1269_p2 = (add_ln48_9_reg_1720 + add_ln48_7_fu_1264_p2);
assign add_ln48_11_fu_1282_p2 = (mul_ln48_3_reg_1745 + mul_ln48_2_reg_1725_pp0_iter2_reg);
assign add_ln48_1_fu_1250_p2 = (add_ln48_fu_1246_p2 + tmp_1_reg_1645);
assign add_ln48_2_fu_1191_p2 = ($signed(sum0_1_reg_1579) + $signed(tmp_5_reg_1585));
assign add_ln48_3_fu_1195_p2 = (add_ln48_2_fu_1191_p2 + tmp_3_reg_1574);
assign add_ln48_4_fu_1255_p2 = (add_ln48_3_reg_1670 + add_ln48_1_fu_1250_p2);
assign add_ln48_5_fu_1274_p2 = (mul_ln48_1_reg_1740 + mul_ln48_reg_1710_pp0_iter2_reg);
assign add_ln48_6_fu_1260_p2 = ($signed(sum0_reg_1528) + $signed(tmp_7_reg_1715));
assign add_ln48_7_fu_1264_p2 = (add_ln48_6_fu_1260_p2 + tmp_6_reg_1675);
assign add_ln48_8_fu_1237_p2 = (tmp_9_reg_1700 + tmp_s_reg_1635);
assign add_ln48_9_fu_1241_p2 = (add_ln48_8_fu_1237_p2 + tmp_8_reg_1610);
assign add_ln48_fu_1246_p2 = (tmp_reg_1640 + tmp_2_reg_1705);
assign add_ln4_fu_833_p4 = {{{select_ln36_fu_786_p3}, {tmp3_fu_810_p2}}, {lshr_ln_reg_1389}};
assign add_ln_fu_816_p4 = {{{select_ln36_fu_786_p3}, {select_ln37_fu_805_p3}}, {lshr_ln_reg_1389}};
assign and_ln11_fu_701_p2 = (xor_ln11_fu_689_p2 & icmp_ln38_fu_695_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_379 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_959 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd1)) | ((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd0))));
end
always @ (*) begin
    ap_condition_962 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd3)) | ((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd2))));
end
always @ (*) begin
    ap_condition_967 = ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd0));
end
always @ (*) begin
    ap_condition_970 = ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd3));
end
always @ (*) begin
    ap_condition_973 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd2)) | ((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd1))));
end
always @ (*) begin
    ap_condition_976 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd3)) | ((icmp_ln36_reg_1337 == 1'd0) & (trunc_ln38_reg_1375 == 2'd0))));
end
always @ (*) begin
    ap_condition_979 = ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd1));
end
always @ (*) begin
    ap_condition_982 = ((icmp_ln36_reg_1337 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1375 == 2'd2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_14_fu_939_p2 = (tmp1_cast_cast_cast_fu_935_p1 + tmp_4_fu_921_p3);
assign empty_15_fu_949_p2 = ($signed(tmp2_cast_fu_945_p1) + $signed(tmp_4_fu_921_p3));
assign empty_fu_713_p2 = (icmp_ln37_fu_675_p2 | and_ln11_fu_701_p2);
assign grp_fu_580_p9 = 'bx;
assign grp_fu_603_p9 = 'bx;
assign icmp_ln36_fu_657_p2 = ((ap_sig_allocacmp_indvar_flatten14_load == 13'd6300) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_675_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_695_p2 = ((ap_sig_allocacmp_k_load == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next13724_fu_768_p2 = (j_load_reg_1341 + 5'd1);
assign indvars_iv_next137_dup_fu_707_p2 = (select_ln11_fu_681_p3 + 5'd1);
assign indvars_iv_next137_mid1_fu_793_p2 = (select_ln11_reg_1352 + 5'd2);
assign indvars_iv_next137_mid2_fu_798_p3 = ((and_ln11_reg_1358[0:0] == 1'b1) ? indvars_iv_next137_mid1_fu_793_p2 : select_ln11_1_fu_773_p3);
assign indvars_iv_next15017_fu_780_p2 = (i_fu_112 + 5'd1);
assign k_mid2_fu_719_p3 = ((empty_fu_713_p2[0:0] == 1'b1) ? 4'd1 : ap_sig_allocacmp_k_load);
assign lshr_ln1_fu_855_p4 = {{add_ln44_fu_850_p2[3:2]}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = orig_2_address1_local;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = orig_3_address1_local;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign select_ln11_1_fu_773_p3 = ((icmp_ln37_reg_1346[0:0] == 1'b1) ? 5'd2 : indvars_iv_next13724_fu_768_p2);
assign select_ln11_fu_681_p3 = ((icmp_ln37_fu_675_p2[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j_load);
assign select_ln36_fu_786_p3 = ((icmp_ln37_reg_1346[0:0] == 1'b1) ? indvars_iv_next15017_fu_780_p2 : i_fu_112);
assign select_ln37_1_fu_747_p3 = ((icmp_ln37_fu_675_p2[0:0] == 1'b1) ? 8'd1 : add_ln37_fu_741_p2);
assign select_ln37_fu_805_p3 = ((and_ln11_reg_1358[0:0] == 1'b1) ? indvars_iv_next137_dup_reg_1364 : select_ln11_reg_1352);
assign sol_0_address0 = sol_0_address0_local;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = sol_0_d0_local;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = sol_1_address0_local;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = sol_1_d0_local;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = sol_2_address0_local;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = sol_2_d0_local;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = sol_3_address0_local;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = sol_3_d0_local;
assign sol_3_we0 = sol_3_we0_local;
assign sum0_1_fu_1031_p9 = 'bx;
assign sum0_fu_955_p9 = 'bx;
assign tmp1_cast_cast_cast_fu_935_p1 = $unsigned(tmp1_cast_cast_fu_928_p3);
assign tmp1_cast_cast_fu_928_p3 = {{1'd1}, {select_ln37_reg_1410}};
assign tmp2_cast_fu_945_p1 = tmp1_cast_cast_fu_928_p3;
assign tmp3_fu_810_p2 = ($signed(select_ln37_fu_805_p3) + $signed(5'd31));
assign tmp_1_fu_1153_p9 = 'bx;
assign tmp_3_fu_1008_p9 = 'bx;
assign tmp_4_fu_921_p3 = {{select_ln36_reg_1398}, {5'd0}};
assign tmp_5_fu_1054_p9 = 'bx;
assign tmp_8_fu_1092_p9 = 'bx;
assign tmp_9_fu_1214_p9 = 'bx;
assign tmp_s_fu_1130_p9 = 'bx;
assign trunc_ln38_fu_727_p1 = k_mid2_fu_719_p3[1:0];
assign xor_ln11_fu_689_p2 = (icmp_ln37_fu_675_p2 ^ 1'd1);
assign zext_ln39_fu_825_p1 = add_ln_fu_816_p4;
assign zext_ln40_1_fu_1084_p1 = add_ln40_1_fu_1077_p3;
assign zext_ln40_fu_985_p1 = add_ln1_fu_978_p3;
assign zext_ln41_1_fu_1206_p1 = add_ln41_1_fu_1200_p3;
assign zext_ln41_fu_1000_p1 = add_ln2_fu_993_p3;
assign zext_ln42_1_fu_893_p1 = add_ln42_1_fu_883_p4;
assign zext_ln42_fu_1183_p1 = add_ln3_fu_1176_p4;
assign zext_ln43_1_fu_1122_p1 = add_ln43_1_fu_1115_p4;
assign zext_ln43_fu_842_p1 = add_ln4_fu_833_p4;
assign zext_ln44_fu_875_p1 = add_ln44_1_fu_865_p4;
always @ (posedge ap_clk) begin
    zext_ln39_reg_1420[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_1420_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_1420_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1475[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1475_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1475_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 
