
module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_8_address0,smem_8_ce0,smem_8_q0,smem_9_address0,smem_9_ce0,smem_9_q0,smem_10_address0,smem_10_ce0,smem_10_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
output   DATA_x_7_we0;
output  [63:0] DATA_x_7_d0;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
output   DATA_x_6_we0;
output  [63:0] DATA_x_6_d0;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
output   DATA_x_5_we0;
output  [63:0] DATA_x_5_d0;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
output   DATA_x_4_we0;
output  [63:0] DATA_x_4_d0;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [5:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [5:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [5:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln309_fu_1005_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_1747;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_1747_pp0_iter1_reg;
reg   [6:0] tid_2_reg_1747_pp0_iter2_reg;
reg   [6:0] tid_2_reg_1747_pp0_iter3_reg;
reg   [6:0] tid_2_reg_1747_pp0_iter4_reg;
reg   [6:0] tid_2_reg_1747_pp0_iter5_reg;
reg   [6:0] tid_2_reg_1747_pp0_iter6_reg;
reg   [6:0] tid_2_reg_1747_pp0_iter7_reg;
reg   [6:0] tid_2_reg_1747_pp0_iter8_reg;
reg   [6:0] tid_2_reg_1747_pp0_iter9_reg;
reg   [6:0] tid_2_reg_1747_pp0_iter10_reg;
reg   [6:0] tid_2_reg_1747_pp0_iter11_reg;
reg   [6:0] tid_2_reg_1747_pp0_iter12_reg;
reg   [6:0] tid_2_reg_1747_pp0_iter13_reg;
reg   [6:0] tid_2_reg_1747_pp0_iter14_reg;
wire   [8:0] offset_fu_1031_p3;
reg   [8:0] offset_reg_1756;
reg   [8:0] offset_reg_1756_pp0_iter1_reg;
reg   [8:0] offset_reg_1756_pp0_iter2_reg;
reg   [8:0] offset_reg_1756_pp0_iter3_reg;
reg   [8:0] offset_reg_1756_pp0_iter4_reg;
reg   [8:0] offset_reg_1756_pp0_iter5_reg;
reg   [8:0] offset_reg_1756_pp0_iter6_reg;
reg   [8:0] offset_reg_1756_pp0_iter7_reg;
reg   [8:0] offset_reg_1756_pp0_iter8_reg;
reg   [8:0] offset_reg_1756_pp0_iter9_reg;
reg   [5:0] tmp_35_reg_1763;
reg   [5:0] tmp_35_reg_1763_pp0_iter11_reg;
reg   [5:0] tmp_35_reg_1763_pp0_iter12_reg;
wire   [3:0] trunc_ln172_fu_1072_p1;
reg   [3:0] trunc_ln172_reg_1768;
reg   [3:0] trunc_ln172_reg_1768_pp0_iter13_reg;
wire   [63:0] tmp_s_fu_1258_p25;
reg   [63:0] tmp_s_reg_2220;
wire   [63:0] tmp_20_fu_1309_p25;
reg   [63:0] tmp_20_reg_2225;
wire   [63:0] tmp_21_fu_1360_p25;
reg   [63:0] tmp_21_reg_2230;
wire   [63:0] tmp_22_fu_1411_p25;
reg   [63:0] tmp_22_reg_2235;
wire   [63:0] tmp_23_fu_1462_p25;
reg   [63:0] tmp_23_reg_2240;
wire   [63:0] tmp_24_fu_1513_p25;
reg   [63:0] tmp_24_reg_2245;
wire   [63:0] tmp_25_fu_1564_p25;
reg   [63:0] tmp_25_reg_2250;
wire   [63:0] tmp_26_fu_1615_p25;
reg   [63:0] tmp_26_reg_2255;
wire   [63:0] zext_ln172_6_fu_1076_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_fu_1099_p1;
wire   [63:0] zext_ln316_fu_1123_p1;
wire   [63:0] zext_ln317_fu_1147_p1;
wire   [63:0] zext_ln318_fu_1171_p1;
wire   [63:0] zext_ln319_fu_1195_p1;
wire   [63:0] zext_ln320_fu_1219_p1;
wire   [63:0] zext_ln321_fu_1243_p1;
wire   [63:0] zext_ln309_fu_1666_p1;
reg   [6:0] tid_fu_130;
wire   [6:0] add_ln309_fu_1011_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_1_ce0_local;
reg   [5:0] smem_1_address0_local;
reg    smem_2_ce0_local;
reg   [5:0] smem_2_address0_local;
reg    smem_3_ce0_local;
reg   [5:0] smem_3_address0_local;
reg    smem_4_ce0_local;
reg   [5:0] smem_4_address0_local;
reg    smem_5_ce0_local;
reg   [5:0] smem_5_address0_local;
reg    smem_6_ce0_local;
reg   [5:0] smem_6_address0_local;
reg    smem_7_ce0_local;
reg   [5:0] smem_7_address0_local;
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_4_we0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_5_we0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_6_we0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_7_we0_local;
reg    DATA_x_7_ce0_local;
wire   [2:0] tmp_fu_1017_p4;
wire   [5:0] trunc_ln312_fu_1027_p1;
wire   [8:0] grp_fu_1039_p0;
wire   [4:0] grp_fu_1039_p1;
wire   [8:0] mul_ln172_fu_1056_p0;
wire   [10:0] mul_ln172_fu_1056_p1;
wire   [18:0] mul_ln172_fu_1056_p2;
wire   [3:0] grp_fu_1039_p2;
wire   [20:0] tmp_36_fu_1090_p1;
wire  signed [20:0] grp_fu_1677_p3;
wire   [6:0] tmp_36_fu_1090_p4;
wire   [20:0] tmp_37_fu_1114_p1;
wire  signed [20:0] grp_fu_1686_p3;
wire   [6:0] tmp_37_fu_1114_p4;
wire   [20:0] tmp_38_fu_1138_p1;
wire  signed [20:0] grp_fu_1695_p3;
wire   [6:0] tmp_38_fu_1138_p4;
wire   [20:0] tmp_39_fu_1162_p1;
wire  signed [20:0] grp_fu_1704_p3;
wire   [6:0] tmp_39_fu_1162_p4;
wire   [20:0] tmp_40_fu_1186_p1;
wire  signed [20:0] grp_fu_1713_p3;
wire   [6:0] tmp_40_fu_1186_p4;
wire   [20:0] tmp_41_fu_1210_p1;
wire  signed [20:0] grp_fu_1722_p3;
wire   [6:0] tmp_41_fu_1210_p4;
wire   [20:0] tmp_42_fu_1234_p1;
wire  signed [20:0] grp_fu_1731_p3;
wire   [6:0] tmp_42_fu_1234_p4;
wire   [63:0] tmp_s_fu_1258_p23;
wire   [63:0] tmp_20_fu_1309_p23;
wire   [63:0] tmp_21_fu_1360_p23;
wire   [63:0] tmp_22_fu_1411_p23;
wire   [63:0] tmp_23_fu_1462_p23;
wire   [63:0] tmp_24_fu_1513_p23;
wire   [63:0] tmp_25_fu_1564_p23;
wire   [63:0] tmp_26_fu_1615_p23;
wire   [8:0] grp_fu_1677_p0;
wire   [9:0] zext_ln172_fu_1050_p1;
wire   [5:0] grp_fu_1677_p1;
wire   [10:0] grp_fu_1677_p2;
wire   [8:0] grp_fu_1686_p0;
wire   [3:0] grp_fu_1686_p1;
wire   [10:0] grp_fu_1686_p2;
wire   [8:0] grp_fu_1695_p0;
wire   [5:0] grp_fu_1695_p1;
wire   [10:0] grp_fu_1695_p2;
wire   [8:0] grp_fu_1704_p0;
wire   [4:0] grp_fu_1704_p1;
wire   [10:0] grp_fu_1704_p2;
wire   [8:0] grp_fu_1713_p0;
wire   [5:0] grp_fu_1713_p1;
wire   [10:0] grp_fu_1713_p2;
wire   [8:0] grp_fu_1722_p0;
wire   [4:0] grp_fu_1722_p1;
wire   [10:0] grp_fu_1722_p2;
wire   [8:0] grp_fu_1731_p0;
wire   [5:0] grp_fu_1731_p1;
wire   [10:0] grp_fu_1731_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_fu_1056_p00;
wire   [3:0] tmp_s_fu_1258_p1;
wire   [3:0] tmp_s_fu_1258_p3;
wire   [3:0] tmp_s_fu_1258_p5;
wire   [3:0] tmp_s_fu_1258_p7;
wire   [3:0] tmp_s_fu_1258_p9;
wire   [3:0] tmp_s_fu_1258_p11;
wire   [3:0] tmp_s_fu_1258_p13;
wire   [3:0] tmp_s_fu_1258_p15;
wire  signed [3:0] tmp_s_fu_1258_p17;
wire  signed [3:0] tmp_s_fu_1258_p19;
wire  signed [3:0] tmp_s_fu_1258_p21;
wire   [3:0] tmp_20_fu_1309_p1;
wire   [3:0] tmp_20_fu_1309_p3;
wire   [3:0] tmp_20_fu_1309_p5;
wire   [3:0] tmp_20_fu_1309_p7;
wire   [3:0] tmp_20_fu_1309_p9;
wire   [3:0] tmp_20_fu_1309_p11;
wire   [3:0] tmp_20_fu_1309_p13;
wire  signed [3:0] tmp_20_fu_1309_p15;
wire  signed [3:0] tmp_20_fu_1309_p17;
wire  signed [3:0] tmp_20_fu_1309_p19;
wire   [3:0] tmp_20_fu_1309_p21;
wire   [3:0] tmp_21_fu_1360_p1;
wire   [3:0] tmp_21_fu_1360_p3;
wire   [3:0] tmp_21_fu_1360_p5;
wire   [3:0] tmp_21_fu_1360_p7;
wire   [3:0] tmp_21_fu_1360_p9;
wire  signed [3:0] tmp_21_fu_1360_p11;
wire  signed [3:0] tmp_21_fu_1360_p13;
wire  signed [3:0] tmp_21_fu_1360_p15;
wire   [3:0] tmp_21_fu_1360_p17;
wire   [3:0] tmp_21_fu_1360_p19;
wire   [3:0] tmp_21_fu_1360_p21;
wire   [3:0] tmp_22_fu_1411_p1;
wire   [3:0] tmp_22_fu_1411_p3;
wire   [3:0] tmp_22_fu_1411_p5;
wire   [3:0] tmp_22_fu_1411_p7;
wire  signed [3:0] tmp_22_fu_1411_p9;
wire  signed [3:0] tmp_22_fu_1411_p11;
wire  signed [3:0] tmp_22_fu_1411_p13;
wire   [3:0] tmp_22_fu_1411_p15;
wire   [3:0] tmp_22_fu_1411_p17;
wire   [3:0] tmp_22_fu_1411_p19;
wire   [3:0] tmp_22_fu_1411_p21;
wire   [3:0] tmp_23_fu_1462_p1;
wire   [3:0] tmp_23_fu_1462_p3;
wire  signed [3:0] tmp_23_fu_1462_p5;
wire  signed [3:0] tmp_23_fu_1462_p7;
wire  signed [3:0] tmp_23_fu_1462_p9;
wire   [3:0] tmp_23_fu_1462_p11;
wire   [3:0] tmp_23_fu_1462_p13;
wire   [3:0] tmp_23_fu_1462_p15;
wire   [3:0] tmp_23_fu_1462_p17;
wire   [3:0] tmp_23_fu_1462_p19;
wire   [3:0] tmp_23_fu_1462_p21;
wire   [3:0] tmp_24_fu_1513_p1;
wire  signed [3:0] tmp_24_fu_1513_p3;
wire  signed [3:0] tmp_24_fu_1513_p5;
wire  signed [3:0] tmp_24_fu_1513_p7;
wire   [3:0] tmp_24_fu_1513_p9;
wire   [3:0] tmp_24_fu_1513_p11;
wire   [3:0] tmp_24_fu_1513_p13;
wire   [3:0] tmp_24_fu_1513_p15;
wire   [3:0] tmp_24_fu_1513_p17;
wire   [3:0] tmp_24_fu_1513_p19;
wire   [3:0] tmp_24_fu_1513_p21;
wire  signed [3:0] tmp_25_fu_1564_p1;
wire  signed [3:0] tmp_25_fu_1564_p3;
wire   [3:0] tmp_25_fu_1564_p5;
wire   [3:0] tmp_25_fu_1564_p7;
wire   [3:0] tmp_25_fu_1564_p9;
wire   [3:0] tmp_25_fu_1564_p11;
wire   [3:0] tmp_25_fu_1564_p13;
wire   [3:0] tmp_25_fu_1564_p15;
wire   [3:0] tmp_25_fu_1564_p17;
wire   [3:0] tmp_25_fu_1564_p19;
wire  signed [3:0] tmp_25_fu_1564_p21;
wire  signed [3:0] tmp_26_fu_1615_p1;
wire   [3:0] tmp_26_fu_1615_p3;
wire   [3:0] tmp_26_fu_1615_p5;
wire   [3:0] tmp_26_fu_1615_p7;
wire   [3:0] tmp_26_fu_1615_p9;
wire   [3:0] tmp_26_fu_1615_p11;
wire   [3:0] tmp_26_fu_1615_p13;
wire   [3:0] tmp_26_fu_1615_p15;
wire   [3:0] tmp_26_fu_1615_p17;
wire  signed [3:0] tmp_26_fu_1615_p19;
wire  signed [3:0] tmp_26_fu_1615_p21;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 tid_fu_130 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U578(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1039_p0),.din1(grp_fu_1039_p1),.ce(1'b1),.dout(grp_fu_1039_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U579(.din0(mul_ln172_fu_1056_p0),.din1(mul_ln172_fu_1056_p1),.dout(mul_ln172_fu_1056_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U580(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_s_fu_1258_p23),.sel(trunc_ln172_reg_1768_pp0_iter13_reg),.dout(tmp_s_fu_1258_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h9 ),.din8_WIDTH( 64 ),.CASE9( 4'hA ),.din9_WIDTH( 64 ),.CASE10( 4'h0 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U581(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_20_fu_1309_p23),.sel(trunc_ln172_reg_1768_pp0_iter13_reg),.dout(tmp_20_fu_1309_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h9 ),.din6_WIDTH( 64 ),.CASE7( 4'hA ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U582(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_21_fu_1360_p23),.sel(trunc_ln172_reg_1768_pp0_iter13_reg),.dout(tmp_21_fu_1360_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U583(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_22_fu_1411_p23),.sel(trunc_ln172_reg_1768_pp0_iter13_reg),.dout(tmp_22_fu_1411_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h9 ),.din3_WIDTH( 64 ),.CASE4( 4'hA ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U584(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_23_fu_1462_p23),.sel(trunc_ln172_reg_1768_pp0_iter13_reg),.dout(tmp_23_fu_1462_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U585(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_24_fu_1513_p23),.sel(trunc_ln172_reg_1768_pp0_iter13_reg),.dout(tmp_24_fu_1513_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U586(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_25_fu_1564_p23),.sel(trunc_ln172_reg_1768_pp0_iter13_reg),.dout(tmp_25_fu_1564_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U587(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_26_fu_1615_p23),.sel(trunc_ln172_reg_1768_pp0_iter13_reg),.dout(tmp_26_fu_1615_p25));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U588(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1677_p0),.din1(grp_fu_1677_p1),.din2(grp_fu_1677_p2),.ce(1'b1),.dout(grp_fu_1677_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U589(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1686_p0),.din1(grp_fu_1686_p1),.din2(grp_fu_1686_p2),.ce(1'b1),.dout(grp_fu_1686_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U590(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1695_p0),.din1(grp_fu_1695_p1),.din2(grp_fu_1695_p2),.ce(1'b1),.dout(grp_fu_1695_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U591(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1704_p0),.din1(grp_fu_1704_p1),.din2(grp_fu_1704_p2),.ce(1'b1),.dout(grp_fu_1704_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U592(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1713_p0),.din1(grp_fu_1713_p1),.din2(grp_fu_1713_p2),.ce(1'b1),.dout(grp_fu_1713_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U593(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1722_p0),.din1(grp_fu_1722_p1),.din2(grp_fu_1722_p2),.ce(1'b1),.dout(grp_fu_1722_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U594(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1731_p0),.din1(grp_fu_1731_p1),.din2(grp_fu_1731_p2),.ce(1'b1),.dout(grp_fu_1731_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln309_fu_1005_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_fu_130 <= add_ln309_fu_1011_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_130 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        offset_reg_1756_pp0_iter2_reg <= offset_reg_1756_pp0_iter1_reg;
        offset_reg_1756_pp0_iter3_reg <= offset_reg_1756_pp0_iter2_reg;
        offset_reg_1756_pp0_iter4_reg <= offset_reg_1756_pp0_iter3_reg;
        offset_reg_1756_pp0_iter5_reg <= offset_reg_1756_pp0_iter4_reg;
        offset_reg_1756_pp0_iter6_reg <= offset_reg_1756_pp0_iter5_reg;
        offset_reg_1756_pp0_iter7_reg <= offset_reg_1756_pp0_iter6_reg;
        offset_reg_1756_pp0_iter8_reg <= offset_reg_1756_pp0_iter7_reg;
        offset_reg_1756_pp0_iter9_reg <= offset_reg_1756_pp0_iter8_reg;
        tid_2_reg_1747_pp0_iter10_reg <= tid_2_reg_1747_pp0_iter9_reg;
        tid_2_reg_1747_pp0_iter11_reg <= tid_2_reg_1747_pp0_iter10_reg;
        tid_2_reg_1747_pp0_iter12_reg <= tid_2_reg_1747_pp0_iter11_reg;
        tid_2_reg_1747_pp0_iter13_reg <= tid_2_reg_1747_pp0_iter12_reg;
        tid_2_reg_1747_pp0_iter14_reg <= tid_2_reg_1747_pp0_iter13_reg;
        tid_2_reg_1747_pp0_iter2_reg <= tid_2_reg_1747_pp0_iter1_reg;
        tid_2_reg_1747_pp0_iter3_reg <= tid_2_reg_1747_pp0_iter2_reg;
        tid_2_reg_1747_pp0_iter4_reg <= tid_2_reg_1747_pp0_iter3_reg;
        tid_2_reg_1747_pp0_iter5_reg <= tid_2_reg_1747_pp0_iter4_reg;
        tid_2_reg_1747_pp0_iter6_reg <= tid_2_reg_1747_pp0_iter5_reg;
        tid_2_reg_1747_pp0_iter7_reg <= tid_2_reg_1747_pp0_iter6_reg;
        tid_2_reg_1747_pp0_iter8_reg <= tid_2_reg_1747_pp0_iter7_reg;
        tid_2_reg_1747_pp0_iter9_reg <= tid_2_reg_1747_pp0_iter8_reg;
        tmp_20_reg_2225 <= tmp_20_fu_1309_p25;
        tmp_21_reg_2230 <= tmp_21_fu_1360_p25;
        tmp_22_reg_2235 <= tmp_22_fu_1411_p25;
        tmp_23_reg_2240 <= tmp_23_fu_1462_p25;
        tmp_24_reg_2245 <= tmp_24_fu_1513_p25;
        tmp_25_reg_2250 <= tmp_25_fu_1564_p25;
        tmp_26_reg_2255 <= tmp_26_fu_1615_p25;
        tmp_35_reg_1763 <= {{mul_ln172_fu_1056_p2[18:13]}};
        tmp_35_reg_1763_pp0_iter11_reg <= tmp_35_reg_1763;
        tmp_35_reg_1763_pp0_iter12_reg <= tmp_35_reg_1763_pp0_iter11_reg;
        tmp_s_reg_2220 <= tmp_s_fu_1258_p25;
        trunc_ln172_reg_1768 <= trunc_ln172_fu_1072_p1;
        trunc_ln172_reg_1768_pp0_iter13_reg <= trunc_ln172_reg_1768;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        offset_reg_1756 <= offset_fu_1031_p3;
        offset_reg_1756_pp0_iter1_reg <= offset_reg_1756;
        tid_2_reg_1747 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_1747_pp0_iter1_reg <= tid_2_reg_1747;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln309_fu_1005_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1768 == 4'd9)) begin
            smem_10_address0_local = zext_ln321_fu_1243_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd8)) begin
            smem_10_address0_local = zext_ln320_fu_1219_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd6)) begin
            smem_10_address0_local = zext_ln319_fu_1195_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd5)) begin
            smem_10_address0_local = zext_ln318_fu_1171_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd3)) begin
            smem_10_address0_local = zext_ln317_fu_1147_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd2)) begin
            smem_10_address0_local = zext_ln316_fu_1123_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd0)) begin
            smem_10_address0_local = zext_ln315_fu_1099_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd10)) begin
            smem_10_address0_local = zext_ln172_6_fu_1076_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd0)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1768 == 4'd0)) begin
            smem_1_address0_local = zext_ln321_fu_1243_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd10)) begin
            smem_1_address0_local = zext_ln320_fu_1219_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd8)) begin
            smem_1_address0_local = zext_ln319_fu_1195_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd7)) begin
            smem_1_address0_local = zext_ln318_fu_1171_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd5)) begin
            smem_1_address0_local = zext_ln317_fu_1147_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd4)) begin
            smem_1_address0_local = zext_ln316_fu_1123_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd2)) begin
            smem_1_address0_local = zext_ln315_fu_1099_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd1)) begin
            smem_1_address0_local = zext_ln172_6_fu_1076_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1768 == 4'd1)) begin
            smem_2_address0_local = zext_ln321_fu_1243_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd0)) begin
            smem_2_address0_local = zext_ln320_fu_1219_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd9)) begin
            smem_2_address0_local = zext_ln319_fu_1195_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd8)) begin
            smem_2_address0_local = zext_ln318_fu_1171_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd6)) begin
            smem_2_address0_local = zext_ln317_fu_1147_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd5)) begin
            smem_2_address0_local = zext_ln316_fu_1123_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd3)) begin
            smem_2_address0_local = zext_ln315_fu_1099_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd2)) begin
            smem_2_address0_local = zext_ln172_6_fu_1076_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1768 == 4'd2)) begin
            smem_3_address0_local = zext_ln321_fu_1243_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd1)) begin
            smem_3_address0_local = zext_ln320_fu_1219_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd10)) begin
            smem_3_address0_local = zext_ln319_fu_1195_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd9)) begin
            smem_3_address0_local = zext_ln318_fu_1171_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd7)) begin
            smem_3_address0_local = zext_ln317_fu_1147_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd6)) begin
            smem_3_address0_local = zext_ln316_fu_1123_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd4)) begin
            smem_3_address0_local = zext_ln315_fu_1099_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd3)) begin
            smem_3_address0_local = zext_ln172_6_fu_1076_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1768 == 4'd3)) begin
            smem_4_address0_local = zext_ln321_fu_1243_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd2)) begin
            smem_4_address0_local = zext_ln320_fu_1219_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd0)) begin
            smem_4_address0_local = zext_ln319_fu_1195_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd10)) begin
            smem_4_address0_local = zext_ln318_fu_1171_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd8)) begin
            smem_4_address0_local = zext_ln317_fu_1147_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd7)) begin
            smem_4_address0_local = zext_ln316_fu_1123_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd5)) begin
            smem_4_address0_local = zext_ln315_fu_1099_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd4)) begin
            smem_4_address0_local = zext_ln172_6_fu_1076_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1768 == 4'd4)) begin
            smem_5_address0_local = zext_ln321_fu_1243_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd3)) begin
            smem_5_address0_local = zext_ln320_fu_1219_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd1)) begin
            smem_5_address0_local = zext_ln319_fu_1195_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd0)) begin
            smem_5_address0_local = zext_ln318_fu_1171_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd9)) begin
            smem_5_address0_local = zext_ln317_fu_1147_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd8)) begin
            smem_5_address0_local = zext_ln316_fu_1123_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd6)) begin
            smem_5_address0_local = zext_ln315_fu_1099_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd5)) begin
            smem_5_address0_local = zext_ln172_6_fu_1076_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1768 == 4'd5)) begin
            smem_6_address0_local = zext_ln321_fu_1243_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd4)) begin
            smem_6_address0_local = zext_ln320_fu_1219_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd2)) begin
            smem_6_address0_local = zext_ln319_fu_1195_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd1)) begin
            smem_6_address0_local = zext_ln318_fu_1171_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd10)) begin
            smem_6_address0_local = zext_ln317_fu_1147_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd9)) begin
            smem_6_address0_local = zext_ln316_fu_1123_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd7)) begin
            smem_6_address0_local = zext_ln315_fu_1099_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd6)) begin
            smem_6_address0_local = zext_ln172_6_fu_1076_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1768 == 4'd6)) begin
            smem_7_address0_local = zext_ln321_fu_1243_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd5)) begin
            smem_7_address0_local = zext_ln320_fu_1219_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd3)) begin
            smem_7_address0_local = zext_ln319_fu_1195_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd2)) begin
            smem_7_address0_local = zext_ln318_fu_1171_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd0)) begin
            smem_7_address0_local = zext_ln317_fu_1147_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd10)) begin
            smem_7_address0_local = zext_ln316_fu_1123_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd8)) begin
            smem_7_address0_local = zext_ln315_fu_1099_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd7)) begin
            smem_7_address0_local = zext_ln172_6_fu_1076_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd0)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1768 == 4'd7)) begin
            smem_8_address0_local = zext_ln321_fu_1243_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd6)) begin
            smem_8_address0_local = zext_ln320_fu_1219_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd4)) begin
            smem_8_address0_local = zext_ln319_fu_1195_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd3)) begin
            smem_8_address0_local = zext_ln318_fu_1171_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd1)) begin
            smem_8_address0_local = zext_ln317_fu_1147_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd0)) begin
            smem_8_address0_local = zext_ln316_fu_1123_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd9)) begin
            smem_8_address0_local = zext_ln315_fu_1099_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd8)) begin
            smem_8_address0_local = zext_ln172_6_fu_1076_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd0)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1768 == 4'd8)) begin
            smem_9_address0_local = zext_ln321_fu_1243_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd7)) begin
            smem_9_address0_local = zext_ln320_fu_1219_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd5)) begin
            smem_9_address0_local = zext_ln319_fu_1195_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd4)) begin
            smem_9_address0_local = zext_ln318_fu_1171_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd2)) begin
            smem_9_address0_local = zext_ln317_fu_1147_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd1)) begin
            smem_9_address0_local = zext_ln316_fu_1123_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd10)) begin
            smem_9_address0_local = zext_ln315_fu_1099_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd9)) begin
            smem_9_address0_local = zext_ln172_6_fu_1076_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1768 == 4'd10)) begin
            smem_address0_local = zext_ln321_fu_1243_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd9)) begin
            smem_address0_local = zext_ln320_fu_1219_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd7)) begin
            smem_address0_local = zext_ln319_fu_1195_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd6)) begin
            smem_address0_local = zext_ln318_fu_1171_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd4)) begin
            smem_address0_local = zext_ln317_fu_1147_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd3)) begin
            smem_address0_local = zext_ln316_fu_1123_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd1)) begin
            smem_address0_local = zext_ln315_fu_1099_p1;
        end else if ((trunc_ln172_reg_1768 == 4'd0)) begin
            smem_address0_local = zext_ln172_6_fu_1076_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1768 == 4'd0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = zext_ln309_fu_1666_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_d0 = tmp_21_reg_2230;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_2_address0 = zext_ln309_fu_1666_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_d0 = tmp_23_reg_2240;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_3_address0 = zext_ln309_fu_1666_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_d0 = tmp_25_reg_2250;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_4_address0 = zext_ln309_fu_1666_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_d0 = tmp_20_reg_2225;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_5_address0 = zext_ln309_fu_1666_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_d0 = tmp_22_reg_2235;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_6_address0 = zext_ln309_fu_1666_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_d0 = tmp_24_reg_2245;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_7_address0 = zext_ln309_fu_1666_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_d0 = tmp_26_reg_2255;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_address0 = zext_ln309_fu_1666_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_d0 = tmp_s_reg_2220;
assign DATA_x_we0 = DATA_x_we0_local;
assign add_ln309_fu_1011_p2 = (ap_sig_allocacmp_tid_2 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1039_p0 = {{tmp_fu_1017_p4}, {trunc_ln312_fu_1027_p1}};
assign grp_fu_1039_p1 = 9'd11;
assign grp_fu_1677_p0 = zext_ln172_fu_1050_p1;
assign grp_fu_1677_p1 = 10'd32;
assign grp_fu_1677_p2 = 21'd1490;
assign grp_fu_1686_p0 = zext_ln172_fu_1050_p1;
assign grp_fu_1686_p1 = 10'd8;
assign grp_fu_1686_p2 = 21'd1490;
assign grp_fu_1695_p0 = zext_ln172_fu_1050_p1;
assign grp_fu_1695_p1 = 10'd40;
assign grp_fu_1695_p2 = 21'd1490;
assign grp_fu_1704_p0 = zext_ln172_fu_1050_p1;
assign grp_fu_1704_p1 = 10'd16;
assign grp_fu_1704_p2 = 21'd1490;
assign grp_fu_1713_p0 = zext_ln172_fu_1050_p1;
assign grp_fu_1713_p1 = 10'd48;
assign grp_fu_1713_p2 = 21'd1490;
assign grp_fu_1722_p0 = zext_ln172_fu_1050_p1;
assign grp_fu_1722_p1 = 10'd24;
assign grp_fu_1722_p2 = 21'd1490;
assign grp_fu_1731_p0 = zext_ln172_fu_1050_p1;
assign grp_fu_1731_p1 = 10'd56;
assign grp_fu_1731_p2 = 21'd1490;
assign icmp_ln309_fu_1005_p2 = ((ap_sig_allocacmp_tid_2 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_fu_1056_p0 = mul_ln172_fu_1056_p00;
assign mul_ln172_fu_1056_p00 = offset_reg_1756_pp0_iter9_reg;
assign mul_ln172_fu_1056_p1 = 19'd745;
assign offset_fu_1031_p3 = {{tmp_fu_1017_p4}, {trunc_ln312_fu_1027_p1}};
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign tmp_20_fu_1309_p23 = 'bx;
assign tmp_21_fu_1360_p23 = 'bx;
assign tmp_22_fu_1411_p23 = 'bx;
assign tmp_23_fu_1462_p23 = 'bx;
assign tmp_24_fu_1513_p23 = 'bx;
assign tmp_25_fu_1564_p23 = 'bx;
assign tmp_26_fu_1615_p23 = 'bx;
assign tmp_36_fu_1090_p1 = grp_fu_1677_p3;
assign tmp_36_fu_1090_p4 = {{tmp_36_fu_1090_p1[20:14]}};
assign tmp_37_fu_1114_p1 = grp_fu_1686_p3;
assign tmp_37_fu_1114_p4 = {{tmp_37_fu_1114_p1[20:14]}};
assign tmp_38_fu_1138_p1 = grp_fu_1695_p3;
assign tmp_38_fu_1138_p4 = {{tmp_38_fu_1138_p1[20:14]}};
assign tmp_39_fu_1162_p1 = grp_fu_1704_p3;
assign tmp_39_fu_1162_p4 = {{tmp_39_fu_1162_p1[20:14]}};
assign tmp_40_fu_1186_p1 = grp_fu_1713_p3;
assign tmp_40_fu_1186_p4 = {{tmp_40_fu_1186_p1[20:14]}};
assign tmp_41_fu_1210_p1 = grp_fu_1722_p3;
assign tmp_41_fu_1210_p4 = {{tmp_41_fu_1210_p1[20:14]}};
assign tmp_42_fu_1234_p1 = grp_fu_1731_p3;
assign tmp_42_fu_1234_p4 = {{tmp_42_fu_1234_p1[20:14]}};
assign tmp_fu_1017_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_s_fu_1258_p23 = 'bx;
assign trunc_ln172_fu_1072_p1 = grp_fu_1039_p2[3:0];
assign trunc_ln312_fu_1027_p1 = ap_sig_allocacmp_tid_2[5:0];
assign zext_ln172_6_fu_1076_p1 = tmp_35_reg_1763_pp0_iter12_reg;
assign zext_ln172_fu_1050_p1 = offset_reg_1756_pp0_iter9_reg;
assign zext_ln309_fu_1666_p1 = tid_2_reg_1747_pp0_iter14_reg;
assign zext_ln315_fu_1099_p1 = tmp_36_fu_1090_p4;
assign zext_ln316_fu_1123_p1 = tmp_37_fu_1114_p4;
assign zext_ln317_fu_1147_p1 = tmp_38_fu_1138_p4;
assign zext_ln318_fu_1171_p1 = tmp_39_fu_1162_p4;
assign zext_ln319_fu_1195_p1 = tmp_40_fu_1186_p4;
assign zext_ln320_fu_1219_p1 = tmp_41_fu_1210_p4;
assign zext_ln321_fu_1243_p1 = tmp_42_fu_1234_p4;
endmodule 
