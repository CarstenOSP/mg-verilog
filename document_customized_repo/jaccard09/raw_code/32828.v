module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1,smem_8_address0,smem_8_ce0,smem_8_q0,smem_8_address1,smem_8_ce1,smem_8_q1,smem_9_address0,smem_9_ce0,smem_9_q0,smem_9_address1,smem_9_ce1,smem_9_q1,smem_10_address0,smem_10_ce0,smem_10_q0,smem_10_address1,smem_10_ce1,smem_10_q1,smem_11_address0,smem_11_ce0,smem_11_q0,smem_11_address1,smem_11_ce1,smem_11_q1,smem_12_address0,smem_12_ce0,smem_12_q0,smem_12_address1,smem_12_ce1,smem_12_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [6:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [6:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [6:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [6:0] smem_7_address1;
output   smem_7_ce1;
input  [63:0] smem_7_q1;
output  [6:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [6:0] smem_8_address1;
output   smem_8_ce1;
input  [63:0] smem_8_q1;
output  [6:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [6:0] smem_9_address1;
output   smem_9_ce1;
input  [63:0] smem_9_q1;
output  [6:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [6:0] smem_10_address1;
output   smem_10_ce1;
input  [63:0] smem_10_q1;
output  [6:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [6:0] smem_11_address1;
output   smem_11_ce1;
input  [63:0] smem_11_q1;
output  [6:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
output  [6:0] smem_12_address1;
output   smem_12_ce1;
input  [63:0] smem_12_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln188_reg_1387;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_reg_1381;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln188_fu_719_p2;
reg   [0:0] icmp_ln188_reg_1387_pp0_iter1_reg;
reg   [0:0] icmp_ln188_reg_1387_pp0_iter2_reg;
reg   [0:0] icmp_ln188_reg_1387_pp0_iter3_reg;
reg   [0:0] icmp_ln188_reg_1387_pp0_iter4_reg;
reg   [0:0] icmp_ln188_reg_1387_pp0_iter5_reg;
reg   [0:0] icmp_ln188_reg_1387_pp0_iter6_reg;
wire   [8:0] offset_fu_755_p2;
reg   [8:0] offset_reg_1391;
reg   [8:0] offset_reg_1391_pp0_iter1_reg;
reg   [8:0] offset_reg_1391_pp0_iter2_reg;
reg   [8:0] offset_reg_1391_pp0_iter3_reg;
reg   [8:0] offset_reg_1391_pp0_iter4_reg;
reg   [8:0] offset_reg_1391_pp0_iter5_reg;
wire   [5:0] trunc_ln193_fu_772_p1;
reg   [5:0] trunc_ln193_reg_1403;
wire    ap_block_pp0_stage1_11001;
reg   [5:0] trunc_ln193_reg_1403_pp0_iter1_reg;
reg   [5:0] trunc_ln193_reg_1403_pp0_iter2_reg;
reg   [5:0] trunc_ln193_reg_1403_pp0_iter3_reg;
reg   [5:0] trunc_ln193_reg_1403_pp0_iter4_reg;
reg   [5:0] trunc_ln193_reg_1403_pp0_iter5_reg;
reg   [5:0] trunc_ln193_reg_1403_pp0_iter6_reg;
reg   [5:0] trunc_ln193_reg_1403_pp0_iter7_reg;
wire   [9:0] zext_ln172_10_fu_780_p1;
reg   [9:0] zext_ln172_10_reg_1411;
wire   [8:0] add_ln194_fu_783_p2;
reg   [8:0] add_ln194_reg_1416;
wire   [8:0] add_ln195_fu_788_p2;
reg   [8:0] add_ln195_reg_1421;
wire   [8:0] add_ln196_fu_793_p2;
reg   [8:0] add_ln196_reg_1426;
wire   [8:0] add_ln197_fu_798_p2;
reg   [8:0] add_ln197_reg_1431;
reg   [6:0] tmp_reg_1436;
reg   [6:0] tmp_49_reg_1441;
reg   [6:0] tmp_50_reg_1446;
reg   [6:0] tmp_51_reg_1451;
reg   [6:0] tmp_52_reg_1456;
wire   [8:0] add_ln199_fu_898_p2;
reg   [8:0] add_ln199_reg_1461;
wire   [2:0] trunc_ln172_fu_903_p1;
reg   [2:0] trunc_ln172_reg_1466;
reg   [7:0] tmp_53_reg_1478;
reg   [6:0] tmp_54_reg_1483;
wire   [63:0] tmp_s_fu_1025_p17;
reg   [63:0] tmp_s_reg_1768;
wire   [63:0] tmp_15_fu_1060_p17;
reg   [63:0] tmp_15_reg_1773;
wire   [63:0] tmp_16_fu_1095_p17;
reg   [63:0] tmp_16_reg_1778;
wire   [63:0] tmp_17_fu_1130_p17;
reg   [63:0] tmp_17_reg_1783;
wire   [63:0] tmp_18_fu_1165_p17;
reg   [63:0] tmp_18_reg_1788;
wire   [63:0] tmp_19_fu_1200_p17;
reg   [63:0] tmp_19_reg_1793;
wire   [63:0] tmp_20_fu_1235_p17;
reg   [63:0] tmp_20_reg_1798;
wire   [63:0] tmp_21_fu_1270_p17;
reg   [63:0] tmp_21_reg_1803;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln172_1_fu_935_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_fu_945_p1;
wire   [63:0] zext_ln195_fu_955_p1;
wire   [63:0] zext_ln196_fu_965_p1;
wire   [63:0] zext_ln197_fu_975_p1;
wire   [63:0] zext_ln198_fu_985_p1;
wire   [63:0] zext_ln199_fu_995_p1;
wire   [63:0] zext_ln200_fu_1014_p1;
wire   [63:0] zext_ln193_fu_1312_p1;
wire   [63:0] zext_ln194_1_fu_1325_p1;
wire   [63:0] zext_ln197_1_fu_1338_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln198_1_fu_1351_p1;
reg   [6:0] tid_2_fu_114;
wire   [6:0] add_ln188_fu_767_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    smem_ce1_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_7_ce1_local;
reg    smem_7_ce0_local;
reg   [6:0] smem_7_address0_local;
reg    smem_8_ce1_local;
reg    smem_8_ce0_local;
reg   [6:0] smem_8_address0_local;
reg    smem_9_ce1_local;
reg    smem_9_ce0_local;
reg   [6:0] smem_9_address0_local;
reg    smem_10_ce1_local;
reg    smem_10_ce0_local;
reg   [6:0] smem_10_address0_local;
reg    smem_11_ce1_local;
reg    smem_11_ce0_local;
reg   [6:0] smem_11_address0_local;
reg    smem_12_ce1_local;
reg    smem_12_ce0_local;
reg   [6:0] smem_12_address0_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
wire   [2:0] hi_fu_725_p4;
wire   [2:0] trunc_ln191_fu_739_p1;
wire   [8:0] mul_ln_fu_743_p5;
wire   [8:0] zext_ln114_fu_735_p1;
wire   [8:0] grp_fu_761_p0;
wire   [3:0] grp_fu_761_p1;
wire   [8:0] mul_ln172_fu_806_p0;
wire   [10:0] mul_ln172_fu_806_p1;
wire   [18:0] mul_ln172_fu_806_p2;
wire   [8:0] mul_ln194_fu_825_p0;
wire   [10:0] mul_ln194_fu_825_p1;
wire   [18:0] mul_ln194_fu_825_p2;
wire   [8:0] mul_ln195_fu_844_p0;
wire   [10:0] mul_ln195_fu_844_p1;
wire   [18:0] mul_ln195_fu_844_p2;
wire   [8:0] mul_ln196_fu_863_p0;
wire   [10:0] mul_ln196_fu_863_p1;
wire   [18:0] mul_ln196_fu_863_p2;
wire   [8:0] mul_ln197_fu_882_p0;
wire   [10:0] mul_ln197_fu_882_p1;
wire   [18:0] mul_ln197_fu_882_p2;
wire   [2:0] grp_fu_761_p2;
wire   [20:0] tmp_53_fu_907_p1;
wire  signed [20:0] grp_fu_1357_p3;
wire   [8:0] mul_ln199_fu_919_p0;
wire   [10:0] mul_ln199_fu_919_p1;
wire   [18:0] mul_ln199_fu_919_p2;
wire   [20:0] tmp_55_fu_1005_p1;
wire  signed [20:0] grp_fu_1366_p3;
wire   [7:0] tmp_55_fu_1005_p4;
wire   [63:0] tmp_s_fu_1025_p15;
wire   [63:0] tmp_15_fu_1060_p15;
wire   [63:0] tmp_16_fu_1095_p15;
wire   [63:0] tmp_17_fu_1130_p15;
wire   [63:0] tmp_18_fu_1165_p15;
wire   [63:0] tmp_19_fu_1200_p15;
wire   [63:0] tmp_20_fu_1235_p15;
wire   [63:0] tmp_21_fu_1270_p15;
wire   [7:0] shl_ln2_fu_1305_p3;
wire   [7:0] or_ln8_fu_1318_p3;
wire   [7:0] or_ln9_fu_1331_p3;
wire   [7:0] or_ln10_fu_1344_p3;
wire   [8:0] grp_fu_1357_p0;
wire   [5:0] grp_fu_1357_p1;
wire   [10:0] grp_fu_1357_p2;
wire   [8:0] grp_fu_1366_p0;
wire   [5:0] grp_fu_1366_p1;
wire   [10:0] grp_fu_1366_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter7_stage0;
reg    ap_idle_pp0_0to6;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to8;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] grp_fu_1357_p00;
wire   [18:0] mul_ln172_fu_806_p00;
wire   [18:0] mul_ln194_fu_825_p00;
wire   [18:0] mul_ln195_fu_844_p00;
wire   [18:0] mul_ln196_fu_863_p00;
wire   [18:0] mul_ln197_fu_882_p00;
wire   [18:0] mul_ln199_fu_919_p00;
reg    ap_condition_361;
wire   [2:0] tmp_s_fu_1025_p1;
wire   [2:0] tmp_s_fu_1025_p3;
wire   [2:0] tmp_s_fu_1025_p5;
wire   [2:0] tmp_s_fu_1025_p7;
wire  signed [2:0] tmp_s_fu_1025_p9;
wire  signed [2:0] tmp_s_fu_1025_p11;
wire  signed [2:0] tmp_s_fu_1025_p13;
wire   [2:0] tmp_15_fu_1060_p1;
wire  signed [2:0] tmp_15_fu_1060_p3;
wire  signed [2:0] tmp_15_fu_1060_p5;
wire  signed [2:0] tmp_15_fu_1060_p7;
wire   [2:0] tmp_15_fu_1060_p9;
wire   [2:0] tmp_15_fu_1060_p11;
wire   [2:0] tmp_15_fu_1060_p13;
wire  signed [2:0] tmp_16_fu_1095_p1;
wire   [2:0] tmp_16_fu_1095_p3;
wire   [2:0] tmp_16_fu_1095_p5;
wire   [2:0] tmp_16_fu_1095_p7;
wire   [2:0] tmp_16_fu_1095_p9;
wire  signed [2:0] tmp_16_fu_1095_p11;
wire  signed [2:0] tmp_16_fu_1095_p13;
wire   [2:0] tmp_17_fu_1130_p1;
wire   [2:0] tmp_17_fu_1130_p3;
wire  signed [2:0] tmp_17_fu_1130_p5;
wire  signed [2:0] tmp_17_fu_1130_p7;
wire  signed [2:0] tmp_17_fu_1130_p9;
wire   [2:0] tmp_17_fu_1130_p11;
wire   [2:0] tmp_17_fu_1130_p13;
wire  signed [2:0] tmp_18_fu_1165_p1;
wire  signed [2:0] tmp_18_fu_1165_p3;
wire   [2:0] tmp_18_fu_1165_p5;
wire   [2:0] tmp_18_fu_1165_p7;
wire   [2:0] tmp_18_fu_1165_p9;
wire   [2:0] tmp_18_fu_1165_p11;
wire  signed [2:0] tmp_18_fu_1165_p13;
wire   [2:0] tmp_19_fu_1200_p1;
wire   [2:0] tmp_19_fu_1200_p3;
wire   [2:0] tmp_19_fu_1200_p5;
wire  signed [2:0] tmp_19_fu_1200_p7;
wire  signed [2:0] tmp_19_fu_1200_p9;
wire  signed [2:0] tmp_19_fu_1200_p11;
wire   [2:0] tmp_19_fu_1200_p13;
wire  signed [2:0] tmp_20_fu_1235_p1;
wire  signed [2:0] tmp_20_fu_1235_p3;
wire  signed [2:0] tmp_20_fu_1235_p5;
wire   [2:0] tmp_20_fu_1235_p7;
wire   [2:0] tmp_20_fu_1235_p9;
wire   [2:0] tmp_20_fu_1235_p11;
wire   [2:0] tmp_20_fu_1235_p13;
wire   [2:0] tmp_21_fu_1270_p1;
wire   [2:0] tmp_21_fu_1270_p3;
wire   [2:0] tmp_21_fu_1270_p5;
wire   [2:0] tmp_21_fu_1270_p7;
wire  signed [2:0] tmp_21_fu_1270_p9;
wire  signed [2:0] tmp_21_fu_1270_p11;
wire  signed [2:0] tmp_21_fu_1270_p13;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_2_fu_114 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_761_p0),.din1(grp_fu_761_p1),.ce(1'b1),.dout(grp_fu_761_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U84(.din0(mul_ln172_fu_806_p0),.din1(mul_ln172_fu_806_p1),.dout(mul_ln172_fu_806_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U85(.din0(mul_ln194_fu_825_p0),.din1(mul_ln194_fu_825_p1),.dout(mul_ln194_fu_825_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U86(.din0(mul_ln195_fu_844_p0),.din1(mul_ln195_fu_844_p1),.dout(mul_ln195_fu_844_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U87(.din0(mul_ln196_fu_863_p0),.din1(mul_ln196_fu_863_p1),.dout(mul_ln196_fu_863_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U88(.din0(mul_ln197_fu_882_p0),.din1(mul_ln197_fu_882_p1),.dout(mul_ln197_fu_882_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U89(.din0(mul_ln199_fu_919_p0),.din1(mul_ln199_fu_919_p1),.dout(mul_ln199_fu_919_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U90(.din0(smem_q1),.din1(smem_7_q1),.din2(smem_8_q1),.din3(smem_9_q1),.din4(smem_10_q1),.din5(smem_11_q1),.din6(smem_12_q1),.def(tmp_s_fu_1025_p15),.sel(trunc_ln172_reg_1466),.dout(tmp_s_fu_1025_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U91(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_15_fu_1060_p15),.sel(trunc_ln172_reg_1466),.dout(tmp_15_fu_1060_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U92(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_16_fu_1095_p15),.sel(trunc_ln172_reg_1466),.dout(tmp_16_fu_1095_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U93(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_17_fu_1130_p15),.sel(trunc_ln172_reg_1466),.dout(tmp_17_fu_1130_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U94(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_18_fu_1165_p15),.sel(trunc_ln172_reg_1466),.dout(tmp_18_fu_1165_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U95(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_19_fu_1200_p15),.sel(trunc_ln172_reg_1466),.dout(tmp_19_fu_1200_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U96(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_20_fu_1235_p15),.sel(trunc_ln172_reg_1466),.dout(tmp_20_fu_1235_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U97(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_21_fu_1270_p15),.sel(trunc_ln172_reg_1466),.dout(tmp_21_fu_1270_p17));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U98(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1357_p0),.din1(grp_fu_1357_p1),.din2(grp_fu_1357_p2),.ce(1'b1),.dout(grp_fu_1357_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U99(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1366_p0),.din1(grp_fu_1366_p1),.din2(grp_fu_1366_p2),.ce(1'b1),.dout(grp_fu_1366_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter8 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_2_fu_114 <= 7'd0;
    end else if (((icmp_ln188_reg_1387 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_2_fu_114 <= add_ln188_fu_767_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln194_reg_1416 <= add_ln194_fu_783_p2;
        add_ln195_reg_1421 <= add_ln195_fu_788_p2;
        add_ln196_reg_1426 <= add_ln196_fu_793_p2;
        add_ln197_reg_1431 <= add_ln197_fu_798_p2;
        icmp_ln188_reg_1387 <= icmp_ln188_fu_719_p2;
        icmp_ln188_reg_1387_pp0_iter1_reg <= icmp_ln188_reg_1387;
        icmp_ln188_reg_1387_pp0_iter2_reg <= icmp_ln188_reg_1387_pp0_iter1_reg;
        icmp_ln188_reg_1387_pp0_iter3_reg <= icmp_ln188_reg_1387_pp0_iter2_reg;
        icmp_ln188_reg_1387_pp0_iter4_reg <= icmp_ln188_reg_1387_pp0_iter3_reg;
        icmp_ln188_reg_1387_pp0_iter5_reg <= icmp_ln188_reg_1387_pp0_iter4_reg;
        icmp_ln188_reg_1387_pp0_iter6_reg <= icmp_ln188_reg_1387_pp0_iter5_reg;
        offset_reg_1391 <= offset_fu_755_p2;
        offset_reg_1391_pp0_iter1_reg <= offset_reg_1391;
        offset_reg_1391_pp0_iter2_reg <= offset_reg_1391_pp0_iter1_reg;
        offset_reg_1391_pp0_iter3_reg <= offset_reg_1391_pp0_iter2_reg;
        offset_reg_1391_pp0_iter4_reg <= offset_reg_1391_pp0_iter3_reg;
        offset_reg_1391_pp0_iter5_reg <= offset_reg_1391_pp0_iter4_reg;
        tid_reg_1381 <= ap_sig_allocacmp_tid;
        tmp_15_reg_1773 <= tmp_15_fu_1060_p17;
        tmp_16_reg_1778 <= tmp_16_fu_1095_p17;
        tmp_17_reg_1783 <= tmp_17_fu_1130_p17;
        tmp_18_reg_1788 <= tmp_18_fu_1165_p17;
        tmp_19_reg_1793 <= tmp_19_fu_1200_p17;
        tmp_20_reg_1798 <= tmp_20_fu_1235_p17;
        tmp_21_reg_1803 <= tmp_21_fu_1270_p17;
        tmp_53_reg_1478 <= {{tmp_53_fu_907_p1[20:13]}};
        tmp_54_reg_1483 <= {{mul_ln199_fu_919_p2[18:12]}};
        tmp_s_reg_1768 <= tmp_s_fu_1025_p17;
        trunc_ln172_reg_1466 <= trunc_ln172_fu_903_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln199_reg_1461 <= add_ln199_fu_898_p2;
        tmp_49_reg_1441 <= {{mul_ln194_fu_825_p2[18:12]}};
        tmp_50_reg_1446 <= {{mul_ln195_fu_844_p2[18:12]}};
        tmp_51_reg_1451 <= {{mul_ln196_fu_863_p2[18:12]}};
        tmp_52_reg_1456 <= {{mul_ln197_fu_882_p2[18:12]}};
        tmp_reg_1436 <= {{mul_ln172_fu_806_p2[18:12]}};
        trunc_ln193_reg_1403 <= trunc_ln193_fu_772_p1;
        trunc_ln193_reg_1403_pp0_iter1_reg <= trunc_ln193_reg_1403;
        trunc_ln193_reg_1403_pp0_iter2_reg <= trunc_ln193_reg_1403_pp0_iter1_reg;
        trunc_ln193_reg_1403_pp0_iter3_reg <= trunc_ln193_reg_1403_pp0_iter2_reg;
        trunc_ln193_reg_1403_pp0_iter4_reg <= trunc_ln193_reg_1403_pp0_iter3_reg;
        trunc_ln193_reg_1403_pp0_iter5_reg <= trunc_ln193_reg_1403_pp0_iter4_reg;
        trunc_ln193_reg_1403_pp0_iter6_reg <= trunc_ln193_reg_1403_pp0_iter5_reg;
        trunc_ln193_reg_1403_pp0_iter7_reg <= trunc_ln193_reg_1403_pp0_iter6_reg;
        zext_ln172_10_reg_1411[8 : 0] <= zext_ln172_10_fu_780_p1[8 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln198_1_fu_1351_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln194_1_fu_1325_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln197_1_fu_1338_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln193_fu_1312_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_21_reg_1803;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_17_reg_1783;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_20_reg_1798;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_16_reg_1778;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln198_1_fu_1351_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln194_1_fu_1325_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln197_1_fu_1338_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln193_fu_1312_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_19_reg_1793;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_15_reg_1773;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_18_reg_1788;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_s_reg_1768;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln188_reg_1387 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln188_reg_1387_pp0_iter6_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to6 = 1'b1;
    end else begin
        ap_idle_pp0_0to6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_2_fu_114;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_361)) begin
        if ((trunc_ln172_reg_1466 == 3'd4)) begin
            smem_10_address0_local = zext_ln200_fu_1014_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd1)) begin
            smem_10_address0_local = zext_ln199_fu_995_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd5)) begin
            smem_10_address0_local = zext_ln198_fu_985_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd2)) begin
            smem_10_address0_local = zext_ln197_fu_975_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd6)) begin
            smem_10_address0_local = zext_ln196_fu_965_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd3)) begin
            smem_10_address0_local = zext_ln195_fu_955_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd0)) begin
            smem_10_address0_local = zext_ln194_fu_945_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_361)) begin
        if ((trunc_ln172_reg_1466 == 3'd5)) begin
            smem_11_address0_local = zext_ln200_fu_1014_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd2)) begin
            smem_11_address0_local = zext_ln199_fu_995_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd6)) begin
            smem_11_address0_local = zext_ln198_fu_985_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd3)) begin
            smem_11_address0_local = zext_ln197_fu_975_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd0)) begin
            smem_11_address0_local = zext_ln196_fu_965_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd4)) begin
            smem_11_address0_local = zext_ln195_fu_955_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd1)) begin
            smem_11_address0_local = zext_ln194_fu_945_p1;
        end else begin
            smem_11_address0_local = 'bx;
        end
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_361)) begin
        if ((trunc_ln172_reg_1466 == 3'd6)) begin
            smem_12_address0_local = zext_ln200_fu_1014_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd3)) begin
            smem_12_address0_local = zext_ln199_fu_995_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd0)) begin
            smem_12_address0_local = zext_ln198_fu_985_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd4)) begin
            smem_12_address0_local = zext_ln197_fu_975_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd1)) begin
            smem_12_address0_local = zext_ln196_fu_965_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd5)) begin
            smem_12_address0_local = zext_ln195_fu_955_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd2)) begin
            smem_12_address0_local = zext_ln194_fu_945_p1;
        end else begin
            smem_12_address0_local = 'bx;
        end
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_ce1_local = 1'b1;
    end else begin
        smem_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_361)) begin
        if ((trunc_ln172_reg_1466 == 3'd1)) begin
            smem_7_address0_local = zext_ln200_fu_1014_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd5)) begin
            smem_7_address0_local = zext_ln199_fu_995_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd2)) begin
            smem_7_address0_local = zext_ln198_fu_985_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd6)) begin
            smem_7_address0_local = zext_ln197_fu_975_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd3)) begin
            smem_7_address0_local = zext_ln196_fu_965_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd0)) begin
            smem_7_address0_local = zext_ln195_fu_955_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd4)) begin
            smem_7_address0_local = zext_ln194_fu_945_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_361)) begin
        if ((trunc_ln172_reg_1466 == 3'd2)) begin
            smem_8_address0_local = zext_ln200_fu_1014_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd6)) begin
            smem_8_address0_local = zext_ln199_fu_995_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd3)) begin
            smem_8_address0_local = zext_ln198_fu_985_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd0)) begin
            smem_8_address0_local = zext_ln197_fu_975_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd4)) begin
            smem_8_address0_local = zext_ln196_fu_965_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd1)) begin
            smem_8_address0_local = zext_ln195_fu_955_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd5)) begin
            smem_8_address0_local = zext_ln194_fu_945_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_361)) begin
        if ((trunc_ln172_reg_1466 == 3'd3)) begin
            smem_9_address0_local = zext_ln200_fu_1014_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd0)) begin
            smem_9_address0_local = zext_ln199_fu_995_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd4)) begin
            smem_9_address0_local = zext_ln198_fu_985_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd1)) begin
            smem_9_address0_local = zext_ln197_fu_975_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd5)) begin
            smem_9_address0_local = zext_ln196_fu_965_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd2)) begin
            smem_9_address0_local = zext_ln195_fu_955_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd6)) begin
            smem_9_address0_local = zext_ln194_fu_945_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_361)) begin
        if ((trunc_ln172_reg_1466 == 3'd0)) begin
            smem_address0_local = zext_ln200_fu_1014_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd4)) begin
            smem_address0_local = zext_ln199_fu_995_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd1)) begin
            smem_address0_local = zext_ln198_fu_985_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd5)) begin
            smem_address0_local = zext_ln197_fu_975_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd2)) begin
            smem_address0_local = zext_ln196_fu_965_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd6)) begin
            smem_address0_local = zext_ln195_fu_955_p1;
        end else if ((trunc_ln172_reg_1466 == 3'd3)) begin
            smem_address0_local = zext_ln194_fu_945_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_1466 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to8 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = DATA_x_1_d0_local;
assign DATA_x_1_d1 = DATA_x_1_d1_local;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_d1 = DATA_x_d1_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln188_fu_767_p2 = (tid_reg_1381 + 7'd1);
assign add_ln194_fu_783_p2 = (offset_reg_1391_pp0_iter4_reg + 9'd32);
assign add_ln195_fu_788_p2 = (offset_reg_1391_pp0_iter4_reg + 9'd8);
assign add_ln196_fu_793_p2 = (offset_reg_1391_pp0_iter4_reg + 9'd40);
assign add_ln197_fu_798_p2 = (offset_reg_1391_pp0_iter4_reg + 9'd16);
assign add_ln199_fu_898_p2 = (offset_reg_1391_pp0_iter5_reg + 9'd24);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_361 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_1357_p0 = grp_fu_1357_p00;
assign grp_fu_1357_p00 = offset_reg_1391_pp0_iter4_reg;
assign grp_fu_1357_p1 = 10'd48;
assign grp_fu_1357_p2 = 21'd1171;
assign grp_fu_1366_p0 = zext_ln172_10_reg_1411;
assign grp_fu_1366_p1 = 10'd56;
assign grp_fu_1366_p2 = 21'd1171;
assign grp_fu_761_p0 = (mul_ln_fu_743_p5 + zext_ln114_fu_735_p1);
assign grp_fu_761_p1 = 9'd7;
assign hi_fu_725_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign icmp_ln188_fu_719_p2 = ((ap_sig_allocacmp_tid == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_fu_806_p0 = mul_ln172_fu_806_p00;
assign mul_ln172_fu_806_p00 = offset_reg_1391_pp0_iter5_reg;
assign mul_ln172_fu_806_p1 = 19'd586;
assign mul_ln194_fu_825_p0 = mul_ln194_fu_825_p00;
assign mul_ln194_fu_825_p00 = add_ln194_reg_1416;
assign mul_ln194_fu_825_p1 = 19'd586;
assign mul_ln195_fu_844_p0 = mul_ln195_fu_844_p00;
assign mul_ln195_fu_844_p00 = add_ln195_reg_1421;
assign mul_ln195_fu_844_p1 = 19'd586;
assign mul_ln196_fu_863_p0 = mul_ln196_fu_863_p00;
assign mul_ln196_fu_863_p00 = add_ln196_reg_1426;
assign mul_ln196_fu_863_p1 = 19'd586;
assign mul_ln197_fu_882_p0 = mul_ln197_fu_882_p00;
assign mul_ln197_fu_882_p00 = add_ln197_reg_1431;
assign mul_ln197_fu_882_p1 = 19'd586;
assign mul_ln199_fu_919_p0 = mul_ln199_fu_919_p00;
assign mul_ln199_fu_919_p00 = add_ln199_reg_1461;
assign mul_ln199_fu_919_p1 = 19'd586;
assign mul_ln_fu_743_p5 = {{{{trunc_ln191_fu_739_p1}, {2'd0}}, {trunc_ln191_fu_739_p1}}, {1'd0}};
assign offset_fu_755_p2 = (mul_ln_fu_743_p5 + zext_ln114_fu_735_p1);
assign or_ln10_fu_1344_p3 = {{trunc_ln193_reg_1403_pp0_iter7_reg}, {2'd3}};
assign or_ln8_fu_1318_p3 = {{trunc_ln193_reg_1403_pp0_iter6_reg}, {2'd2}};
assign or_ln9_fu_1331_p3 = {{trunc_ln193_reg_1403_pp0_iter7_reg}, {2'd1}};
assign shl_ln2_fu_1305_p3 = {{trunc_ln193_reg_1403_pp0_iter6_reg}, {2'd0}};
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_address1 = zext_ln172_1_fu_935_p1;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_ce1 = smem_10_ce1_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_address1 = zext_ln172_1_fu_935_p1;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_11_ce1 = smem_11_ce1_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_address1 = zext_ln172_1_fu_935_p1;
assign smem_12_ce0 = smem_12_ce0_local;
assign smem_12_ce1 = smem_12_ce1_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_address1 = zext_ln172_1_fu_935_p1;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_ce1 = smem_7_ce1_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_address1 = zext_ln172_1_fu_935_p1;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_ce1 = smem_8_ce1_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_address1 = zext_ln172_1_fu_935_p1;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_ce1 = smem_9_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = zext_ln172_1_fu_935_p1;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_15_fu_1060_p15 = 'bx;
assign tmp_16_fu_1095_p15 = 'bx;
assign tmp_17_fu_1130_p15 = 'bx;
assign tmp_18_fu_1165_p15 = 'bx;
assign tmp_19_fu_1200_p15 = 'bx;
assign tmp_20_fu_1235_p15 = 'bx;
assign tmp_21_fu_1270_p15 = 'bx;
assign tmp_53_fu_907_p1 = grp_fu_1357_p3;
assign tmp_55_fu_1005_p1 = grp_fu_1366_p3;
assign tmp_55_fu_1005_p4 = {{tmp_55_fu_1005_p1[20:13]}};
assign tmp_s_fu_1025_p15 = 'bx;
assign trunc_ln172_fu_903_p1 = grp_fu_761_p2[2:0];
assign trunc_ln191_fu_739_p1 = ap_sig_allocacmp_tid[2:0];
assign trunc_ln193_fu_772_p1 = tid_reg_1381[5:0];
assign zext_ln114_fu_735_p1 = hi_fu_725_p4;
assign zext_ln172_10_fu_780_p1 = offset_reg_1391_pp0_iter4_reg;
assign zext_ln172_1_fu_935_p1 = tmp_reg_1436;
assign zext_ln193_fu_1312_p1 = shl_ln2_fu_1305_p3;
assign zext_ln194_1_fu_1325_p1 = or_ln8_fu_1318_p3;
assign zext_ln194_fu_945_p1 = tmp_49_reg_1441;
assign zext_ln195_fu_955_p1 = tmp_50_reg_1446;
assign zext_ln196_fu_965_p1 = tmp_51_reg_1451;
assign zext_ln197_1_fu_1338_p1 = or_ln9_fu_1331_p3;
assign zext_ln197_fu_975_p1 = tmp_52_reg_1456;
assign zext_ln198_1_fu_1351_p1 = or_ln10_fu_1344_p3;
assign zext_ln198_fu_985_p1 = tmp_53_reg_1478;
assign zext_ln199_fu_995_p1 = tmp_54_reg_1483;
assign zext_ln200_fu_1014_p1 = tmp_55_fu_1005_p4;
always @ (posedge ap_clk) begin
    zext_ln172_10_reg_1411[9] <= 1'b0;
end
endmodule 