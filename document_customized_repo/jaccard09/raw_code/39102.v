module stencil3d_stencil3d_Pipeline_loop_height_loop_col_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,C_load,C_load_1); 
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
output  [11:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [11:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [11:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
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
wire   [0:0] icmp_ln36_fu_1186_p2;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln3725_reg_582;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] select_ln11_fu_698_p3;
reg   [4:0] select_ln11_reg_1410;
wire   [0:0] and_ln11_fu_712_p2;
reg   [0:0] and_ln11_reg_1416;
wire   [4:0] indvars_iv_next320_dup_fu_718_p2;
reg   [4:0] indvars_iv_next320_dup_reg_1422;
wire   [1:0] trunc_ln38_fu_738_p1;
reg   [1:0] trunc_ln38_reg_1427;
reg   [1:0] trunc_ln38_reg_1427_pp0_iter1_reg;
reg   [1:0] trunc_ln38_reg_1427_pp0_iter2_reg;
reg   [1:0] lshr_ln_reg_1441;
reg   [1:0] lshr_ln1_reg_1450;
wire   [0:0] icmp_ln38_fu_774_p2;
reg   [0:0] icmp_ln38_reg_1459;
wire   [4:0] i_fu_802_p3;
reg   [4:0] i_reg_1464;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [4:0] indvars_iv_next320_mid2_fu_815_p3;
reg   [4:0] indvars_iv_next320_mid2_reg_1471;
wire   [4:0] j_fu_822_p3;
reg   [4:0] j_reg_1476;
wire   [4:0] tmp3_fu_827_p2;
reg   [4:0] tmp3_reg_1482;
wire   [63:0] zext_ln39_fu_842_p1;
reg   [63:0] zext_ln39_reg_1487;
reg   [63:0] zext_ln39_reg_1487_pp0_iter1_reg;
reg   [63:0] zext_ln39_reg_1487_pp0_iter2_reg;
wire   [63:0] zext_ln44_fu_876_p1;
reg   [63:0] zext_ln44_reg_1535;
reg   [63:0] zext_ln44_reg_1535_pp0_iter1_reg;
reg   [63:0] zext_ln44_reg_1535_pp0_iter2_reg;
wire   [9:0] empty_7_fu_956_p2;
reg   [9:0] empty_7_reg_1583;
wire    ap_block_pp0_stage2_11001;
wire  signed [31:0] sum0_fu_962_p11;
reg  signed [31:0] sum0_reg_1588;
wire   [31:0] tmp_3_fu_1015_p11;
reg   [31:0] tmp_3_reg_1634;
wire  signed [31:0] sum0_1_fu_1038_p11;
reg  signed [31:0] sum0_1_reg_1639;
wire   [31:0] tmp_5_fu_1061_p11;
reg   [31:0] tmp_5_reg_1645;
wire   [31:0] tmp_8_fu_1099_p11;
reg   [31:0] tmp_8_reg_1670;
wire   [31:0] tmp_s_fu_1137_p11;
reg   [31:0] tmp_s_reg_1695;
wire   [0:0] icmp_ln37_fu_1180_p2;
reg   [0:0] icmp_ln37_reg_1700;
reg   [0:0] icmp_ln36_reg_1705;
reg   [0:0] icmp_ln36_reg_1705_pp0_iter1_reg;
reg   [0:0] icmp_ln36_reg_1705_pp0_iter2_reg;
wire   [31:0] grp_fu_611_p11;
reg   [31:0] tmp_reg_1709;
wire   [31:0] tmp_1_fu_1202_p11;
reg   [31:0] tmp_1_reg_1714;
wire   [31:0] add_ln48_3_fu_1244_p2;
reg   [31:0] add_ln48_3_reg_1739;
wire   [31:0] grp_fu_634_p11;
reg   [31:0] tmp_6_reg_1744;
wire   [31:0] tmp_9_fu_1263_p11;
reg   [31:0] tmp_9_reg_1769;
reg   [31:0] tmp_2_reg_1774;
wire   [31:0] grp_fu_603_p2;
reg   [31:0] mul_ln48_reg_1779;
reg   [31:0] mul_ln48_reg_1779_pp0_iter2_reg;
reg   [31:0] tmp_7_reg_1784;
wire   [31:0] add_ln48_9_fu_1300_p2;
reg   [31:0] add_ln48_9_reg_1789;
wire   [31:0] grp_fu_607_p2;
reg   [31:0] mul_ln48_2_reg_1794;
reg   [31:0] mul_ln48_2_reg_1794_pp0_iter2_reg;
wire  signed [31:0] add_ln48_4_fu_1314_p2;
reg  signed [31:0] add_ln48_4_reg_1799;
wire  signed [31:0] add_ln48_10_fu_1328_p2;
reg  signed [31:0] add_ln48_10_reg_1804;
reg   [31:0] mul_ln48_1_reg_1809;
reg   [31:0] mul_ln48_3_reg_1814;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_icmp_ln3725_phi_fu_585_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln3824_phi_fu_596_p4;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln43_fu_859_p1;
wire   [63:0] zext_ln42_1_fu_893_p1;
wire   [63:0] zext_ln40_fu_992_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln41_fu_1007_p1;
wire   [63:0] zext_ln40_1_fu_1091_p1;
wire   [63:0] zext_ln43_1_fu_1129_p1;
wire   [63:0] zext_ln42_fu_1232_p1;
wire   [63:0] zext_ln41_1_fu_1255_p1;
reg   [12:0] indvar_flatten1417_fu_102;
wire   [12:0] add_ln36_fu_1160_p2;
reg   [4:0] i18_fu_106;
reg   [7:0] indvar_flatten19_fu_110;
wire   [7:0] select_ln37_1_fu_1172_p3;
reg   [4:0] j20_fu_114;
reg   [4:0] ap_sig_allocacmp_j20_load;
reg   [3:0] k21_fu_118;
wire   [3:0] k_fu_768_p2;
reg   [3:0] ap_sig_allocacmp_k21_load;
reg   [4:0] indvars_iv_next33322_fu_122;
wire   [4:0] indvars_iv_next333_fu_901_p2;
reg   [4:0] indvars_iv_next32023_fu_126;
wire   [4:0] indvars_iv_next320_fu_1286_p2;
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
wire   [31:0] add_ln48_5_fu_1333_p2;
reg    sol_2_ce0_local;
reg   [11:0] sol_2_address0_local;
wire   [31:0] add_ln48_11_fu_1341_p2;
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
reg  signed [31:0] grp_fu_603_p0;
reg  signed [31:0] grp_fu_603_p1;
reg  signed [31:0] grp_fu_607_p0;
reg  signed [31:0] grp_fu_607_p1;
wire   [31:0] grp_fu_611_p9;
reg   [1:0] grp_fu_611_p10;
wire   [31:0] grp_fu_634_p9;
reg   [1:0] grp_fu_634_p10;
wire   [0:0] xor_ln11_fu_706_p2;
wire   [0:0] empty_fu_724_p2;
wire   [3:0] k_mid2_fu_730_p3;
wire   [3:0] add_ln44_fu_752_p2;
wire   [4:0] indvars_iv_next320_mid1_fu_810_p2;
wire   [4:0] select_ln11_1_fu_794_p3;
wire   [11:0] add_ln_fu_833_p4;
wire   [11:0] add_ln4_fu_850_p4;
wire   [11:0] add_ln44_1_fu_867_p4;
wire   [11:0] add_ln42_1_fu_884_p4;
wire  signed [5:0] tmp1_cast_cast_fu_935_p3;
wire   [9:0] tmp1_cast_cast_cast_fu_942_p1;
wire   [9:0] tmp_4_fu_928_p3;
wire  signed [9:0] tmp2_cast_fu_952_p1;
wire   [31:0] sum0_fu_962_p9;
wire   [9:0] empty_6_fu_946_p2;
wire   [11:0] add_ln1_fu_985_p3;
wire   [11:0] add_ln2_fu_1000_p3;
wire   [31:0] tmp_3_fu_1015_p9;
wire   [31:0] sum0_1_fu_1038_p9;
wire   [31:0] tmp_5_fu_1061_p9;
wire   [11:0] add_ln40_1_fu_1084_p3;
wire   [31:0] tmp_8_fu_1099_p9;
wire   [11:0] add_ln43_1_fu_1122_p4;
wire   [31:0] tmp_s_fu_1137_p9;
wire   [7:0] add_ln37_fu_1166_p2;
wire   [31:0] tmp_1_fu_1202_p9;
wire   [11:0] add_ln3_fu_1225_p4;
wire   [31:0] add_ln48_2_fu_1240_p2;
wire   [11:0] add_ln41_1_fu_1249_p3;
wire   [31:0] tmp_9_fu_1263_p9;
wire   [31:0] add_ln48_8_fu_1296_p2;
wire   [31:0] add_ln48_fu_1305_p2;
wire   [31:0] add_ln48_1_fu_1309_p2;
wire   [31:0] add_ln48_6_fu_1319_p2;
wire   [31:0] add_ln48_7_fu_1323_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_970;
reg    ap_condition_976;
reg    ap_condition_979;
reg    ap_condition_982;
reg    ap_condition_986;
reg    ap_condition_989;
reg    ap_condition_992;
reg    ap_condition_995;
reg    ap_condition_998;
reg    ap_condition_1001;
reg    ap_condition_387;
wire   [1:0] grp_fu_611_p1;
wire   [1:0] grp_fu_611_p3;
wire  signed [1:0] grp_fu_611_p5;
wire  signed [1:0] grp_fu_611_p7;
wire  signed [1:0] grp_fu_634_p1;
wire   [1:0] grp_fu_634_p3;
wire   [1:0] grp_fu_634_p5;
wire  signed [1:0] grp_fu_634_p7;
wire   [1:0] sum0_fu_962_p1;
wire   [1:0] sum0_fu_962_p3;
wire  signed [1:0] sum0_fu_962_p5;
wire  signed [1:0] sum0_fu_962_p7;
wire   [1:0] tmp_3_fu_1015_p1;
wire   [1:0] tmp_3_fu_1015_p3;
wire  signed [1:0] tmp_3_fu_1015_p5;
wire  signed [1:0] tmp_3_fu_1015_p7;
wire  signed [1:0] sum0_1_fu_1038_p1;
wire   [1:0] sum0_1_fu_1038_p3;
wire   [1:0] sum0_1_fu_1038_p5;
wire  signed [1:0] sum0_1_fu_1038_p7;
wire   [1:0] tmp_5_fu_1061_p1;
wire  signed [1:0] tmp_5_fu_1061_p3;
wire  signed [1:0] tmp_5_fu_1061_p5;
wire   [1:0] tmp_5_fu_1061_p7;
wire  signed [1:0] tmp_8_fu_1099_p1;
wire   [1:0] tmp_8_fu_1099_p3;
wire   [1:0] tmp_8_fu_1099_p5;
wire  signed [1:0] tmp_8_fu_1099_p7;
wire  signed [1:0] tmp_s_fu_1137_p1;
wire  signed [1:0] tmp_s_fu_1137_p3;
wire   [1:0] tmp_s_fu_1137_p5;
wire   [1:0] tmp_s_fu_1137_p7;
wire   [1:0] tmp_1_fu_1202_p1;
wire   [1:0] tmp_1_fu_1202_p3;
wire  signed [1:0] tmp_1_fu_1202_p5;
wire  signed [1:0] tmp_1_fu_1202_p7;
wire  signed [1:0] tmp_9_fu_1263_p1;
wire   [1:0] tmp_9_fu_1263_p3;
wire   [1:0] tmp_9_fu_1263_p5;
wire  signed [1:0] tmp_9_fu_1263_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten1417_fu_102 = 13'd0;
#0 i18_fu_106 = 5'd0;
#0 indvar_flatten19_fu_110 = 8'd0;
#0 j20_fu_114 = 5'd0;
#0 k21_fu_118 = 4'd0;
#0 indvars_iv_next33322_fu_122 = 5'd0;
#0 indvars_iv_next32023_fu_126 = 5'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_603_p0),.din1(grp_fu_603_p1),.ce(1'b1),.dout(grp_fu_603_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_607_p0),.din1(grp_fu_607_p1),.ce(1'b1),.dout(grp_fu_607_p2));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U3(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(grp_fu_611_p9),.sel(grp_fu_611_p10),.dout(grp_fu_611_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U4(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(grp_fu_634_p9),.sel(grp_fu_634_p10),.dout(grp_fu_634_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U5(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(sum0_fu_962_p9),.sel(trunc_ln38_reg_1427),.dout(sum0_fu_962_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U6(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(tmp_3_fu_1015_p9),.sel(trunc_ln38_reg_1427),.dout(tmp_3_fu_1015_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U7(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(sum0_1_fu_1038_p9),.sel(trunc_ln38_reg_1427),.dout(sum0_1_fu_1038_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U8(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_5_fu_1061_p9),.sel(trunc_ln38_reg_1427),.dout(tmp_5_fu_1061_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U9(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(tmp_8_fu_1099_p9),.sel(trunc_ln38_reg_1427),.dout(tmp_8_fu_1099_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U10(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_s_fu_1137_p9),.sel(trunc_ln38_reg_1427),.dout(tmp_s_fu_1137_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U11(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_1_fu_1202_p9),.sel(trunc_ln38_reg_1427),.dout(tmp_1_fu_1202_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U12(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_9_fu_1263_p9),.sel(trunc_ln38_reg_1427),.dout(tmp_9_fu_1263_p11));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i18_fu_106 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i18_fu_106 <= i_fu_802_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_976)) begin
            icmp_ln3725_reg_582 <= icmp_ln37_reg_1700;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln3725_reg_582 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten1417_fu_102 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten1417_fu_102 <= add_ln36_fu_1160_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten19_fu_110 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten19_fu_110 <= select_ln37_1_fu_1172_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvars_iv_next32023_fu_126 <= 5'd2;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvars_iv_next32023_fu_126 <= indvars_iv_next320_fu_1286_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next33322_fu_122 <= 5'd2;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvars_iv_next33322_fu_122 <= indvars_iv_next333_fu_901_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j20_fu_114 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j20_fu_114 <= j_fu_822_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            k21_fu_118 <= k_fu_768_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k21_fu_118 <= 4'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_10_reg_1804 <= add_ln48_10_fu_1328_p2;
        add_ln48_4_reg_1799 <= add_ln48_4_fu_1314_p2;
        empty_7_reg_1583 <= empty_7_fu_956_p2;
        icmp_ln36_reg_1705 <= icmp_ln36_fu_1186_p2;
        icmp_ln36_reg_1705_pp0_iter1_reg <= icmp_ln36_reg_1705;
        icmp_ln36_reg_1705_pp0_iter2_reg <= icmp_ln36_reg_1705_pp0_iter1_reg;
        sum0_1_reg_1639 <= sum0_1_fu_1038_p11;
        sum0_reg_1588 <= sum0_fu_962_p11;
        tmp_3_reg_1634 <= tmp_3_fu_1015_p11;
        tmp_5_reg_1645 <= tmp_5_fu_1061_p11;
        tmp_8_reg_1670 <= tmp_8_fu_1099_p11;
        tmp_s_reg_1695 <= tmp_s_fu_1137_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_3_reg_1739 <= add_ln48_3_fu_1244_p2;
        and_ln11_reg_1416 <= and_ln11_fu_712_p2;
        indvars_iv_next320_dup_reg_1422 <= indvars_iv_next320_dup_fu_718_p2;
        lshr_ln1_reg_1450 <= {{add_ln44_fu_752_p2[3:2]}};
        lshr_ln_reg_1441 <= {{k_mid2_fu_730_p3[3:2]}};
        select_ln11_reg_1410 <= select_ln11_fu_698_p3;
        tmp_1_reg_1714 <= tmp_1_fu_1202_p11;
        tmp_9_reg_1769 <= tmp_9_fu_1263_p11;
        trunc_ln38_reg_1427 <= trunc_ln38_fu_738_p1;
        trunc_ln38_reg_1427_pp0_iter1_reg <= trunc_ln38_reg_1427;
        trunc_ln38_reg_1427_pp0_iter2_reg <= trunc_ln38_reg_1427_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_9_reg_1789 <= add_ln48_9_fu_1300_p2;
        i_reg_1464 <= i_fu_802_p3;
        indvars_iv_next320_mid2_reg_1471 <= indvars_iv_next320_mid2_fu_815_p3;
        j_reg_1476 <= j_fu_822_p3;
        mul_ln48_2_reg_1794_pp0_iter2_reg <= mul_ln48_2_reg_1794;
        mul_ln48_reg_1779_pp0_iter2_reg <= mul_ln48_reg_1779;
        tmp3_reg_1482 <= tmp3_fu_827_p2;
        zext_ln39_reg_1487[11 : 0] <= zext_ln39_fu_842_p1[11 : 0];
        zext_ln39_reg_1487_pp0_iter1_reg[11 : 0] <= zext_ln39_reg_1487[11 : 0];
        zext_ln39_reg_1487_pp0_iter2_reg[11 : 0] <= zext_ln39_reg_1487_pp0_iter1_reg[11 : 0];
        zext_ln44_reg_1535[11 : 0] <= zext_ln44_fu_876_p1[11 : 0];
        zext_ln44_reg_1535_pp0_iter1_reg[11 : 0] <= zext_ln44_reg_1535[11 : 0];
        zext_ln44_reg_1535_pp0_iter2_reg[11 : 0] <= zext_ln44_reg_1535_pp0_iter1_reg[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln37_reg_1700 <= icmp_ln37_fu_1180_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln38_reg_1459 <= icmp_ln38_fu_774_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_1_reg_1809 <= grp_fu_603_p2;
        mul_ln48_3_reg_1814 <= grp_fu_607_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_2_reg_1794 <= grp_fu_607_p2;
        mul_ln48_reg_1779 <= grp_fu_603_p2;
        tmp_2_reg_1774 <= grp_fu_611_p11;
        tmp_7_reg_1784 <= grp_fu_634_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_6_reg_1744 <= grp_fu_634_p11;
        tmp_reg_1709 <= grp_fu_611_p11;
    end
end
always @ (*) begin
    if (((icmp_ln36_fu_1186_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln36_reg_1705_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_970)) begin
            ap_phi_mux_icmp_ln3725_phi_fu_585_p4 = icmp_ln37_reg_1700;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3725_phi_fu_585_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3725_phi_fu_585_p4 = icmp_ln37_reg_1700;
        end
    end else begin
        ap_phi_mux_icmp_ln3725_phi_fu_585_p4 = icmp_ln37_reg_1700;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_970)) begin
            ap_phi_mux_icmp_ln3824_phi_fu_596_p4 = icmp_ln38_reg_1459;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3824_phi_fu_596_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3824_phi_fu_596_p4 = icmp_ln38_reg_1459;
        end
    end else begin
        ap_phi_mux_icmp_ln3824_phi_fu_596_p4 = icmp_ln38_reg_1459;
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
        ap_sig_allocacmp_j20_load = 5'd1;
    end else begin
        ap_sig_allocacmp_j20_load = j20_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k21_load = 4'd1;
    end else begin
        ap_sig_allocacmp_k21_load = k21_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_603_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_603_p0 = C_load;
    end else begin
        grp_fu_603_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_603_p1 = add_ln48_4_reg_1799;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_603_p1 = sum0_reg_1588;
    end else begin
        grp_fu_603_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_607_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_607_p0 = C_load;
    end else begin
        grp_fu_607_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_607_p1 = add_ln48_10_reg_1804;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_607_p1 = sum0_1_reg_1639;
    end else begin
        grp_fu_607_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_611_p10 = trunc_ln38_reg_1427_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_611_p10 = trunc_ln38_reg_1427;
        end else begin
            grp_fu_611_p10 = 'bx;
        end
    end else begin
        grp_fu_611_p10 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_634_p10 = trunc_ln38_reg_1427_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_634_p10 = trunc_ln38_reg_1427;
        end else begin
            grp_fu_634_p10 = 'bx;
        end
    end else begin
        grp_fu_634_p10 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd3))) begin
        orig_0_address0_local = zext_ln41_1_fu_1255_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd0))) begin
        orig_0_address0_local = zext_ln42_fu_1232_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd3))) begin
        orig_0_address0_local = zext_ln40_1_fu_1091_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd0))) begin
        orig_0_address0_local = zext_ln40_fu_992_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd3))) begin
        orig_0_address0_local = zext_ln42_1_fu_893_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd0))) begin
        orig_0_address0_local = zext_ln43_fu_859_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_989)) begin
            orig_0_address1_local = zext_ln43_1_fu_1129_p1;
        end else if ((1'b1 == ap_condition_986)) begin
            orig_0_address1_local = zext_ln41_fu_1007_p1;
        end else if ((1'b1 == ap_condition_982)) begin
            orig_0_address1_local = zext_ln44_fu_876_p1;
        end else if ((1'b1 == ap_condition_979)) begin
            orig_0_address1_local = zext_ln39_fu_842_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_1427 == 2'd3) | (trunc_ln38_reg_1427 == 2'd2))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_1427 == 2'd1) | (trunc_ln38_reg_1427 == 2'd0))))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd0))) begin
        orig_1_address0_local = zext_ln41_1_fu_1255_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd1))) begin
        orig_1_address0_local = zext_ln42_fu_1232_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd0))) begin
        orig_1_address0_local = zext_ln40_1_fu_1091_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd1))) begin
        orig_1_address0_local = zext_ln40_fu_992_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd0))) begin
        orig_1_address0_local = zext_ln42_1_fu_893_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd1))) begin
        orig_1_address0_local = zext_ln43_fu_859_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_986)) begin
            orig_1_address1_local = zext_ln43_1_fu_1129_p1;
        end else if ((1'b1 == ap_condition_998)) begin
            orig_1_address1_local = zext_ln41_fu_1007_p1;
        end else if ((1'b1 == ap_condition_995)) begin
            orig_1_address1_local = zext_ln44_fu_876_p1;
        end else if ((1'b1 == ap_condition_992)) begin
            orig_1_address1_local = zext_ln39_fu_842_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_1427 == 2'd3) | (trunc_ln38_reg_1427 == 2'd0))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_1427 == 2'd2) | (trunc_ln38_reg_1427 == 2'd1))))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd1))) begin
        orig_2_address0_local = zext_ln41_1_fu_1255_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd2))) begin
        orig_2_address0_local = zext_ln42_fu_1232_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd1))) begin
        orig_2_address0_local = zext_ln40_1_fu_1091_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd2))) begin
        orig_2_address0_local = zext_ln40_fu_992_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd1))) begin
        orig_2_address0_local = zext_ln42_1_fu_893_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd2))) begin
        orig_2_address0_local = zext_ln43_fu_859_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_998)) begin
            orig_2_address1_local = zext_ln43_1_fu_1129_p1;
        end else if ((1'b1 == ap_condition_1001)) begin
            orig_2_address1_local = zext_ln41_fu_1007_p1;
        end else if ((1'b1 == ap_condition_979)) begin
            orig_2_address1_local = zext_ln44_fu_876_p1;
        end else if ((1'b1 == ap_condition_982)) begin
            orig_2_address1_local = zext_ln39_fu_842_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd1)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_1427 == 2'd3) | (trunc_ln38_reg_1427 == 2'd2))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_1427 == 2'd1) | (trunc_ln38_reg_1427 == 2'd0))))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd2))) begin
        orig_3_address0_local = zext_ln41_1_fu_1255_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd3))) begin
        orig_3_address0_local = zext_ln42_fu_1232_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd2))) begin
        orig_3_address0_local = zext_ln40_1_fu_1091_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd3))) begin
        orig_3_address0_local = zext_ln40_fu_992_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd2))) begin
        orig_3_address0_local = zext_ln42_1_fu_893_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd3))) begin
        orig_3_address0_local = zext_ln43_fu_859_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1001)) begin
            orig_3_address1_local = zext_ln43_1_fu_1129_p1;
        end else if ((1'b1 == ap_condition_989)) begin
            orig_3_address1_local = zext_ln41_fu_1007_p1;
        end else if ((1'b1 == ap_condition_992)) begin
            orig_3_address1_local = zext_ln44_fu_876_p1;
        end else if ((1'b1 == ap_condition_995)) begin
            orig_3_address1_local = zext_ln39_fu_842_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1427 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427 == 2'd2)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_1427 == 2'd3) | (trunc_ln38_reg_1427 == 2'd0))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_1427 == 2'd2) | (trunc_ln38_reg_1427 == 2'd1))))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_387)) begin
        if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd3)) begin
            sol_0_address0_local = zext_ln44_reg_1535_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd0)) begin
            sol_0_address0_local = zext_ln39_reg_1487_pp0_iter2_reg;
        end else begin
            sol_0_address0_local = 'bx;
        end
    end else begin
        sol_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd0)))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_387)) begin
        if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd3)) begin
            sol_0_d0_local = add_ln48_11_fu_1341_p2;
        end else if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd0)) begin
            sol_0_d0_local = add_ln48_5_fu_1333_p2;
        end else begin
            sol_0_d0_local = 'bx;
        end
    end else begin
        sol_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd0)))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_387)) begin
        if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd0)) begin
            sol_1_address0_local = zext_ln44_reg_1535_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd1)) begin
            sol_1_address0_local = zext_ln39_reg_1487_pp0_iter2_reg;
        end else begin
            sol_1_address0_local = 'bx;
        end
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd1)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_387)) begin
        if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd0)) begin
            sol_1_d0_local = add_ln48_11_fu_1341_p2;
        end else if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd1)) begin
            sol_1_d0_local = add_ln48_5_fu_1333_p2;
        end else begin
            sol_1_d0_local = 'bx;
        end
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd1)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_387)) begin
        if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd1)) begin
            sol_2_address0_local = zext_ln44_reg_1535_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd2)) begin
            sol_2_address0_local = zext_ln39_reg_1487_pp0_iter2_reg;
        end else begin
            sol_2_address0_local = 'bx;
        end
    end else begin
        sol_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd2)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_387)) begin
        if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd1)) begin
            sol_2_d0_local = add_ln48_11_fu_1341_p2;
        end else if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd2)) begin
            sol_2_d0_local = add_ln48_5_fu_1333_p2;
        end else begin
            sol_2_d0_local = 'bx;
        end
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd2)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_387)) begin
        if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd3)) begin
            sol_3_address0_local = zext_ln39_reg_1487_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd2)) begin
            sol_3_address0_local = zext_ln44_reg_1535_pp0_iter2_reg;
        end else begin
            sol_3_address0_local = 'bx;
        end
    end else begin
        sol_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd2)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_387)) begin
        if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd3)) begin
            sol_3_d0_local = add_ln48_5_fu_1333_p2;
        end else if ((trunc_ln38_reg_1427_pp0_iter2_reg == 2'd2)) begin
            sol_3_d0_local = add_ln48_11_fu_1341_p2;
        end else begin
            sol_3_d0_local = 'bx;
        end
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1427_pp0_iter2_reg == 2'd2)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
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
assign add_ln1_fu_985_p3 = {{empty_6_fu_946_p2}, {lshr_ln_reg_1441}};
assign add_ln2_fu_1000_p3 = {{empty_7_fu_956_p2}, {lshr_ln_reg_1441}};
assign add_ln36_fu_1160_p2 = (indvar_flatten1417_fu_102 + 13'd1);
assign add_ln37_fu_1166_p2 = (indvar_flatten19_fu_110 + 8'd1);
assign add_ln3_fu_1225_p4 = {{{i_reg_1464}, {indvars_iv_next320_mid2_reg_1471}}, {lshr_ln_reg_1441}};
assign add_ln40_1_fu_1084_p3 = {{empty_6_fu_946_p2}, {lshr_ln1_reg_1450}};
assign add_ln41_1_fu_1249_p3 = {{empty_7_reg_1583}, {lshr_ln1_reg_1450}};
assign add_ln42_1_fu_884_p4 = {{{i_fu_802_p3}, {indvars_iv_next320_mid2_fu_815_p3}}, {lshr_ln1_reg_1450}};
assign add_ln43_1_fu_1122_p4 = {{{i_reg_1464}, {tmp3_reg_1482}}, {lshr_ln1_reg_1450}};
assign add_ln44_1_fu_867_p4 = {{{i_fu_802_p3}, {j_fu_822_p3}}, {lshr_ln1_reg_1450}};
assign add_ln44_fu_752_p2 = (k_mid2_fu_730_p3 + 4'd1);
assign add_ln48_10_fu_1328_p2 = (add_ln48_9_reg_1789 + add_ln48_7_fu_1323_p2);
assign add_ln48_11_fu_1341_p2 = (mul_ln48_3_reg_1814 + mul_ln48_2_reg_1794_pp0_iter2_reg);
assign add_ln48_1_fu_1309_p2 = (add_ln48_fu_1305_p2 + tmp_1_reg_1714);
assign add_ln48_2_fu_1240_p2 = ($signed(sum0_1_reg_1639) + $signed(tmp_5_reg_1645));
assign add_ln48_3_fu_1244_p2 = (add_ln48_2_fu_1240_p2 + tmp_3_reg_1634);
assign add_ln48_4_fu_1314_p2 = (add_ln48_3_reg_1739 + add_ln48_1_fu_1309_p2);
assign add_ln48_5_fu_1333_p2 = (mul_ln48_1_reg_1809 + mul_ln48_reg_1779_pp0_iter2_reg);
assign add_ln48_6_fu_1319_p2 = ($signed(sum0_reg_1588) + $signed(tmp_7_reg_1784));
assign add_ln48_7_fu_1323_p2 = (add_ln48_6_fu_1319_p2 + tmp_6_reg_1744);
assign add_ln48_8_fu_1296_p2 = (tmp_9_reg_1769 + tmp_s_reg_1695);
assign add_ln48_9_fu_1300_p2 = (add_ln48_8_fu_1296_p2 + tmp_8_reg_1670);
assign add_ln48_fu_1305_p2 = (tmp_reg_1709 + tmp_2_reg_1774);
assign add_ln4_fu_850_p4 = {{{i_fu_802_p3}, {tmp3_fu_827_p2}}, {lshr_ln_reg_1441}};
assign add_ln_fu_833_p4 = {{{i_fu_802_p3}, {j_fu_822_p3}}, {lshr_ln_reg_1441}};
assign and_ln11_fu_712_p2 = (xor_ln11_fu_706_p2 & ap_phi_mux_icmp_ln3824_phi_fu_596_p4);
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
    ap_condition_1001 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd2));
end
always @ (*) begin
    ap_condition_387 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_970 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln36_reg_1705 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_976 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln36_reg_1705 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_979 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_1427 == 2'd1) | (trunc_ln38_reg_1427 == 2'd0)));
end
always @ (*) begin
    ap_condition_982 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_1427 == 2'd3) | (trunc_ln38_reg_1427 == 2'd2)));
end
always @ (*) begin
    ap_condition_986 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd0));
end
always @ (*) begin
    ap_condition_989 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd3));
end
always @ (*) begin
    ap_condition_992 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_1427 == 2'd2) | (trunc_ln38_reg_1427 == 2'd1)));
end
always @ (*) begin
    ap_condition_995 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_1427 == 2'd3) | (trunc_ln38_reg_1427 == 2'd0)));
end
always @ (*) begin
    ap_condition_998 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1427 == 2'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_6_fu_946_p2 = (tmp1_cast_cast_cast_fu_942_p1 + tmp_4_fu_928_p3);
assign empty_7_fu_956_p2 = ($signed(tmp2_cast_fu_952_p1) + $signed(tmp_4_fu_928_p3));
assign empty_fu_724_p2 = (ap_phi_mux_icmp_ln3725_phi_fu_585_p4 | and_ln11_fu_712_p2);
assign grp_fu_611_p9 = 'bx;
assign grp_fu_634_p9 = 'bx;
assign i_fu_802_p3 = ((icmp_ln3725_reg_582[0:0] == 1'b1) ? indvars_iv_next33322_fu_122 : i18_fu_106);
assign icmp_ln36_fu_1186_p2 = ((indvar_flatten1417_fu_102 == 13'd6299) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_1180_p2 = ((select_ln37_1_fu_1172_p3 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_774_p2 = ((k_fu_768_p2 == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next320_dup_fu_718_p2 = (select_ln11_fu_698_p3 + 5'd1);
assign indvars_iv_next320_fu_1286_p2 = (j_reg_1476 + 5'd1);
assign indvars_iv_next320_mid1_fu_810_p2 = (select_ln11_reg_1410 + 5'd2);
assign indvars_iv_next320_mid2_fu_815_p3 = ((and_ln11_reg_1416[0:0] == 1'b1) ? indvars_iv_next320_mid1_fu_810_p2 : select_ln11_1_fu_794_p3);
assign indvars_iv_next333_fu_901_p2 = (i_fu_802_p3 + 5'd1);
assign j_fu_822_p3 = ((and_ln11_reg_1416[0:0] == 1'b1) ? indvars_iv_next320_dup_reg_1422 : select_ln11_reg_1410);
assign k_fu_768_p2 = (k_mid2_fu_730_p3 + 4'd2);
assign k_mid2_fu_730_p3 = ((empty_fu_724_p2[0:0] == 1'b1) ? 4'd1 : ap_sig_allocacmp_k21_load);
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
assign select_ln11_1_fu_794_p3 = ((icmp_ln3725_reg_582[0:0] == 1'b1) ? 5'd2 : indvars_iv_next32023_fu_126);
assign select_ln11_fu_698_p3 = ((ap_phi_mux_icmp_ln3725_phi_fu_585_p4[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j20_load);
assign select_ln37_1_fu_1172_p3 = ((icmp_ln3725_reg_582[0:0] == 1'b1) ? 8'd1 : add_ln37_fu_1166_p2);
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
assign sum0_1_fu_1038_p9 = 'bx;
assign sum0_fu_962_p9 = 'bx;
assign tmp1_cast_cast_cast_fu_942_p1 = $unsigned(tmp1_cast_cast_fu_935_p3);
assign tmp1_cast_cast_fu_935_p3 = {{1'd1}, {j_reg_1476}};
assign tmp2_cast_fu_952_p1 = tmp1_cast_cast_fu_935_p3;
assign tmp3_fu_827_p2 = ($signed(j_fu_822_p3) + $signed(5'd31));
assign tmp_1_fu_1202_p9 = 'bx;
assign tmp_3_fu_1015_p9 = 'bx;
assign tmp_4_fu_928_p3 = {{i_reg_1464}, {5'd0}};
assign tmp_5_fu_1061_p9 = 'bx;
assign tmp_8_fu_1099_p9 = 'bx;
assign tmp_9_fu_1263_p9 = 'bx;
assign tmp_s_fu_1137_p9 = 'bx;
assign trunc_ln38_fu_738_p1 = k_mid2_fu_730_p3[1:0];
assign xor_ln11_fu_706_p2 = (ap_phi_mux_icmp_ln3725_phi_fu_585_p4 ^ 1'd1);
assign zext_ln39_fu_842_p1 = add_ln_fu_833_p4;
assign zext_ln40_1_fu_1091_p1 = add_ln40_1_fu_1084_p3;
assign zext_ln40_fu_992_p1 = add_ln1_fu_985_p3;
assign zext_ln41_1_fu_1255_p1 = add_ln41_1_fu_1249_p3;
assign zext_ln41_fu_1007_p1 = add_ln2_fu_1000_p3;
assign zext_ln42_1_fu_893_p1 = add_ln42_1_fu_884_p4;
assign zext_ln42_fu_1232_p1 = add_ln3_fu_1225_p4;
assign zext_ln43_1_fu_1129_p1 = add_ln43_1_fu_1122_p4;
assign zext_ln43_fu_859_p1 = add_ln4_fu_850_p4;
assign zext_ln44_fu_876_p1 = add_ln44_1_fu_867_p4;
always @ (posedge ap_clk) begin
    zext_ln39_reg_1487[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_1487_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_1487_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1535[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1535_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1535_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 