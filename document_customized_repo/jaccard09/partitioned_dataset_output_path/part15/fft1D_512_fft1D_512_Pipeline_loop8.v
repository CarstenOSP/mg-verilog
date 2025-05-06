
module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_8_address0,smem_8_ce0,smem_8_q0,smem_9_address0,smem_9_ce0,smem_9_q0,smem_10_address0,smem_10_ce0,smem_10_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [6:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
output   DATA_x_3_we1;
output  [63:0] DATA_x_3_d1;
output  [6:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [6:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
output   DATA_x_2_we1;
output  [63:0] DATA_x_2_d1;
output  [6:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [6:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [6:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [6:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
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
wire   [0:0] icmp_ln309_fu_997_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_1760;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_1760_pp0_iter1_reg;
reg   [6:0] tid_2_reg_1760_pp0_iter2_reg;
reg   [6:0] tid_2_reg_1760_pp0_iter3_reg;
reg   [6:0] tid_2_reg_1760_pp0_iter4_reg;
reg   [6:0] tid_2_reg_1760_pp0_iter5_reg;
reg   [6:0] tid_2_reg_1760_pp0_iter6_reg;
reg   [6:0] tid_2_reg_1760_pp0_iter7_reg;
reg   [6:0] tid_2_reg_1760_pp0_iter8_reg;
reg   [6:0] tid_2_reg_1760_pp0_iter9_reg;
reg   [6:0] tid_2_reg_1760_pp0_iter10_reg;
reg   [6:0] tid_2_reg_1760_pp0_iter11_reg;
reg   [6:0] tid_2_reg_1760_pp0_iter12_reg;
reg   [6:0] tid_2_reg_1760_pp0_iter13_reg;
reg   [6:0] tid_2_reg_1760_pp0_iter14_reg;
wire   [8:0] offset_fu_1023_p3;
reg   [8:0] offset_reg_1770;
reg   [8:0] offset_reg_1770_pp0_iter1_reg;
reg   [8:0] offset_reg_1770_pp0_iter2_reg;
reg   [8:0] offset_reg_1770_pp0_iter3_reg;
reg   [8:0] offset_reg_1770_pp0_iter4_reg;
reg   [8:0] offset_reg_1770_pp0_iter5_reg;
reg   [8:0] offset_reg_1770_pp0_iter6_reg;
reg   [8:0] offset_reg_1770_pp0_iter7_reg;
reg   [8:0] offset_reg_1770_pp0_iter8_reg;
reg   [8:0] offset_reg_1770_pp0_iter9_reg;
reg   [5:0] tmp_89_reg_1777;
reg   [5:0] tmp_89_reg_1777_pp0_iter11_reg;
reg   [5:0] tmp_89_reg_1777_pp0_iter12_reg;
wire   [3:0] trunc_ln172_fu_1064_p1;
reg   [3:0] trunc_ln172_reg_1782;
reg   [3:0] trunc_ln172_reg_1782_pp0_iter13_reg;
wire   [63:0] tmp_s_fu_1250_p25;
reg   [63:0] tmp_s_reg_2234;
wire   [63:0] tmp_21_fu_1301_p25;
reg   [63:0] tmp_21_reg_2239;
wire   [63:0] tmp_22_fu_1352_p25;
reg   [63:0] tmp_22_reg_2244;
wire   [63:0] tmp_23_fu_1403_p25;
reg   [63:0] tmp_23_reg_2249;
wire   [63:0] tmp_24_fu_1454_p25;
reg   [63:0] tmp_24_reg_2254;
wire   [63:0] tmp_25_fu_1505_p25;
reg   [63:0] tmp_25_reg_2259;
wire   [63:0] tmp_26_fu_1556_p25;
reg   [63:0] tmp_26_reg_2264;
wire   [63:0] tmp_27_fu_1607_p25;
reg   [63:0] tmp_27_reg_2269;
wire   [63:0] zext_ln172_2_fu_1068_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_fu_1091_p1;
wire   [63:0] zext_ln316_fu_1115_p1;
wire   [63:0] zext_ln317_fu_1139_p1;
wire   [63:0] zext_ln318_fu_1163_p1;
wire   [63:0] zext_ln319_fu_1187_p1;
wire   [63:0] zext_ln320_fu_1211_p1;
wire   [63:0] zext_ln321_fu_1235_p1;
wire   [63:0] zext_ln314_fu_1666_p1;
wire   [63:0] zext_ln315_1_fu_1682_p1;
reg   [6:0] tid_fu_126;
wire   [6:0] add_ln309_fu_1003_p2;
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
reg    DATA_x_we1_local;
reg    DATA_x_ce1_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_1_we1_local;
reg    DATA_x_1_ce1_local;
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_2_we1_local;
reg    DATA_x_2_ce1_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_we1_local;
reg    DATA_x_3_ce1_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
wire   [2:0] tmp_fu_1009_p4;
wire   [5:0] trunc_ln312_fu_1019_p1;
wire   [8:0] grp_fu_1031_p0;
wire   [4:0] grp_fu_1031_p1;
wire   [8:0] mul_ln172_fu_1048_p0;
wire   [10:0] mul_ln172_fu_1048_p1;
wire   [18:0] mul_ln172_fu_1048_p2;
wire   [3:0] grp_fu_1031_p2;
wire   [20:0] tmp_90_fu_1082_p1;
wire  signed [20:0] grp_fu_1690_p3;
wire   [6:0] tmp_90_fu_1082_p4;
wire   [20:0] tmp_91_fu_1106_p1;
wire  signed [20:0] grp_fu_1699_p3;
wire   [6:0] tmp_91_fu_1106_p4;
wire   [20:0] tmp_92_fu_1130_p1;
wire  signed [20:0] grp_fu_1708_p3;
wire   [6:0] tmp_92_fu_1130_p4;
wire   [20:0] tmp_93_fu_1154_p1;
wire  signed [20:0] grp_fu_1717_p3;
wire   [6:0] tmp_93_fu_1154_p4;
wire   [20:0] tmp_94_fu_1178_p1;
wire  signed [20:0] grp_fu_1726_p3;
wire   [6:0] tmp_94_fu_1178_p4;
wire   [20:0] tmp_95_fu_1202_p1;
wire  signed [20:0] grp_fu_1735_p3;
wire   [6:0] tmp_95_fu_1202_p4;
wire   [20:0] tmp_96_fu_1226_p1;
wire  signed [20:0] grp_fu_1744_p3;
wire   [6:0] tmp_96_fu_1226_p4;
wire   [63:0] tmp_s_fu_1250_p23;
wire   [63:0] tmp_21_fu_1301_p23;
wire   [63:0] tmp_22_fu_1352_p23;
wire   [63:0] tmp_23_fu_1403_p23;
wire   [63:0] tmp_24_fu_1454_p23;
wire   [63:0] tmp_25_fu_1505_p23;
wire   [63:0] tmp_26_fu_1556_p23;
wire   [63:0] tmp_27_fu_1607_p23;
wire   [6:0] shl_ln314_fu_1661_p2;
wire   [5:0] trunc_ln314_fu_1658_p1;
wire   [6:0] or_ln_fu_1674_p3;
wire   [8:0] grp_fu_1690_p0;
wire   [9:0] zext_ln172_fu_1042_p1;
wire   [5:0] grp_fu_1690_p1;
wire   [10:0] grp_fu_1690_p2;
wire   [8:0] grp_fu_1699_p0;
wire   [3:0] grp_fu_1699_p1;
wire   [10:0] grp_fu_1699_p2;
wire   [8:0] grp_fu_1708_p0;
wire   [5:0] grp_fu_1708_p1;
wire   [10:0] grp_fu_1708_p2;
wire   [8:0] grp_fu_1717_p0;
wire   [4:0] grp_fu_1717_p1;
wire   [10:0] grp_fu_1717_p2;
wire   [8:0] grp_fu_1726_p0;
wire   [5:0] grp_fu_1726_p1;
wire   [10:0] grp_fu_1726_p2;
wire   [8:0] grp_fu_1735_p0;
wire   [4:0] grp_fu_1735_p1;
wire   [10:0] grp_fu_1735_p2;
wire   [8:0] grp_fu_1744_p0;
wire   [5:0] grp_fu_1744_p1;
wire   [10:0] grp_fu_1744_p2;
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
wire   [18:0] mul_ln172_fu_1048_p00;
wire   [3:0] tmp_s_fu_1250_p1;
wire   [3:0] tmp_s_fu_1250_p3;
wire   [3:0] tmp_s_fu_1250_p5;
wire   [3:0] tmp_s_fu_1250_p7;
wire   [3:0] tmp_s_fu_1250_p9;
wire   [3:0] tmp_s_fu_1250_p11;
wire   [3:0] tmp_s_fu_1250_p13;
wire   [3:0] tmp_s_fu_1250_p15;
wire  signed [3:0] tmp_s_fu_1250_p17;
wire  signed [3:0] tmp_s_fu_1250_p19;
wire  signed [3:0] tmp_s_fu_1250_p21;
wire   [3:0] tmp_21_fu_1301_p1;
wire   [3:0] tmp_21_fu_1301_p3;
wire   [3:0] tmp_21_fu_1301_p5;
wire   [3:0] tmp_21_fu_1301_p7;
wire   [3:0] tmp_21_fu_1301_p9;
wire   [3:0] tmp_21_fu_1301_p11;
wire   [3:0] tmp_21_fu_1301_p13;
wire  signed [3:0] tmp_21_fu_1301_p15;
wire  signed [3:0] tmp_21_fu_1301_p17;
wire  signed [3:0] tmp_21_fu_1301_p19;
wire   [3:0] tmp_21_fu_1301_p21;
wire   [3:0] tmp_22_fu_1352_p1;
wire   [3:0] tmp_22_fu_1352_p3;
wire   [3:0] tmp_22_fu_1352_p5;
wire   [3:0] tmp_22_fu_1352_p7;
wire   [3:0] tmp_22_fu_1352_p9;
wire  signed [3:0] tmp_22_fu_1352_p11;
wire  signed [3:0] tmp_22_fu_1352_p13;
wire  signed [3:0] tmp_22_fu_1352_p15;
wire   [3:0] tmp_22_fu_1352_p17;
wire   [3:0] tmp_22_fu_1352_p19;
wire   [3:0] tmp_22_fu_1352_p21;
wire   [3:0] tmp_23_fu_1403_p1;
wire   [3:0] tmp_23_fu_1403_p3;
wire   [3:0] tmp_23_fu_1403_p5;
wire   [3:0] tmp_23_fu_1403_p7;
wire  signed [3:0] tmp_23_fu_1403_p9;
wire  signed [3:0] tmp_23_fu_1403_p11;
wire  signed [3:0] tmp_23_fu_1403_p13;
wire   [3:0] tmp_23_fu_1403_p15;
wire   [3:0] tmp_23_fu_1403_p17;
wire   [3:0] tmp_23_fu_1403_p19;
wire   [3:0] tmp_23_fu_1403_p21;
wire   [3:0] tmp_24_fu_1454_p1;
wire   [3:0] tmp_24_fu_1454_p3;
wire  signed [3:0] tmp_24_fu_1454_p5;
wire  signed [3:0] tmp_24_fu_1454_p7;
wire  signed [3:0] tmp_24_fu_1454_p9;
wire   [3:0] tmp_24_fu_1454_p11;
wire   [3:0] tmp_24_fu_1454_p13;
wire   [3:0] tmp_24_fu_1454_p15;
wire   [3:0] tmp_24_fu_1454_p17;
wire   [3:0] tmp_24_fu_1454_p19;
wire   [3:0] tmp_24_fu_1454_p21;
wire   [3:0] tmp_25_fu_1505_p1;
wire  signed [3:0] tmp_25_fu_1505_p3;
wire  signed [3:0] tmp_25_fu_1505_p5;
wire  signed [3:0] tmp_25_fu_1505_p7;
wire   [3:0] tmp_25_fu_1505_p9;
wire   [3:0] tmp_25_fu_1505_p11;
wire   [3:0] tmp_25_fu_1505_p13;
wire   [3:0] tmp_25_fu_1505_p15;
wire   [3:0] tmp_25_fu_1505_p17;
wire   [3:0] tmp_25_fu_1505_p19;
wire   [3:0] tmp_25_fu_1505_p21;
wire  signed [3:0] tmp_26_fu_1556_p1;
wire  signed [3:0] tmp_26_fu_1556_p3;
wire   [3:0] tmp_26_fu_1556_p5;
wire   [3:0] tmp_26_fu_1556_p7;
wire   [3:0] tmp_26_fu_1556_p9;
wire   [3:0] tmp_26_fu_1556_p11;
wire   [3:0] tmp_26_fu_1556_p13;
wire   [3:0] tmp_26_fu_1556_p15;
wire   [3:0] tmp_26_fu_1556_p17;
wire   [3:0] tmp_26_fu_1556_p19;
wire  signed [3:0] tmp_26_fu_1556_p21;
wire  signed [3:0] tmp_27_fu_1607_p1;
wire   [3:0] tmp_27_fu_1607_p3;
wire   [3:0] tmp_27_fu_1607_p5;
wire   [3:0] tmp_27_fu_1607_p7;
wire   [3:0] tmp_27_fu_1607_p9;
wire   [3:0] tmp_27_fu_1607_p11;
wire   [3:0] tmp_27_fu_1607_p13;
wire   [3:0] tmp_27_fu_1607_p15;
wire   [3:0] tmp_27_fu_1607_p17;
wire  signed [3:0] tmp_27_fu_1607_p19;
wire  signed [3:0] tmp_27_fu_1607_p21;
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
#0 tid_fu_126 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U410(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1031_p0),.din1(grp_fu_1031_p1),.ce(1'b1),.dout(grp_fu_1031_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U411(.din0(mul_ln172_fu_1048_p0),.din1(mul_ln172_fu_1048_p1),.dout(mul_ln172_fu_1048_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U412(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_s_fu_1250_p23),.sel(trunc_ln172_reg_1782_pp0_iter13_reg),.dout(tmp_s_fu_1250_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h3 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.CASE4( 4'h5 ),.din4_WIDTH( 64 ),.CASE5( 4'h6 ),.din5_WIDTH( 64 ),.CASE6( 4'h7 ),.din6_WIDTH( 64 ),.CASE7( 4'h8 ),.din7_WIDTH( 64 ),.CASE8( 4'h9 ),.din8_WIDTH( 64 ),.CASE9( 4'hA ),.din9_WIDTH( 64 ),.CASE10( 4'h0 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U413(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_21_fu_1301_p23),.sel(trunc_ln172_reg_1782_pp0_iter13_reg),.dout(tmp_21_fu_1301_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h5 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h7 ),.din4_WIDTH( 64 ),.CASE5( 4'h8 ),.din5_WIDTH( 64 ),.CASE6( 4'h9 ),.din6_WIDTH( 64 ),.CASE7( 4'hA ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U414(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_22_fu_1352_p23),.sel(trunc_ln172_reg_1782_pp0_iter13_reg),.dout(tmp_22_fu_1352_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U415(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_23_fu_1403_p23),.sel(trunc_ln172_reg_1782_pp0_iter13_reg),.dout(tmp_23_fu_1403_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h6 ),.din0_WIDTH( 64 ),.CASE1( 4'h7 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h9 ),.din3_WIDTH( 64 ),.CASE4( 4'hA ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U416(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_24_fu_1454_p23),.sel(trunc_ln172_reg_1782_pp0_iter13_reg),.dout(tmp_24_fu_1454_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U417(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_25_fu_1505_p23),.sel(trunc_ln172_reg_1782_pp0_iter13_reg),.dout(tmp_25_fu_1505_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U418(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_26_fu_1556_p23),.sel(trunc_ln172_reg_1782_pp0_iter13_reg),.dout(tmp_26_fu_1556_p25));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_23_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_23_4_64_1_1_U419(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.def(tmp_27_fu_1607_p23),.sel(trunc_ln172_reg_1782_pp0_iter13_reg),.dout(tmp_27_fu_1607_p25));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U420(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1690_p0),.din1(grp_fu_1690_p1),.din2(grp_fu_1690_p2),.ce(1'b1),.dout(grp_fu_1690_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U421(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1699_p0),.din1(grp_fu_1699_p1),.din2(grp_fu_1699_p2),.ce(1'b1),.dout(grp_fu_1699_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U422(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1708_p0),.din1(grp_fu_1708_p1),.din2(grp_fu_1708_p2),.ce(1'b1),.dout(grp_fu_1708_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U423(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1717_p0),.din1(grp_fu_1717_p1),.din2(grp_fu_1717_p2),.ce(1'b1),.dout(grp_fu_1717_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U424(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1726_p0),.din1(grp_fu_1726_p1),.din2(grp_fu_1726_p2),.ce(1'b1),.dout(grp_fu_1726_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U425(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1735_p0),.din1(grp_fu_1735_p1),.din2(grp_fu_1735_p2),.ce(1'b1),.dout(grp_fu_1735_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U426(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1744_p0),.din1(grp_fu_1744_p1),.din2(grp_fu_1744_p2),.ce(1'b1),.dout(grp_fu_1744_p3));
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
        if (((icmp_ln309_fu_997_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_fu_126 <= add_ln309_fu_1003_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_126 <= 7'd0;
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
        offset_reg_1770_pp0_iter2_reg <= offset_reg_1770_pp0_iter1_reg;
        offset_reg_1770_pp0_iter3_reg <= offset_reg_1770_pp0_iter2_reg;
        offset_reg_1770_pp0_iter4_reg <= offset_reg_1770_pp0_iter3_reg;
        offset_reg_1770_pp0_iter5_reg <= offset_reg_1770_pp0_iter4_reg;
        offset_reg_1770_pp0_iter6_reg <= offset_reg_1770_pp0_iter5_reg;
        offset_reg_1770_pp0_iter7_reg <= offset_reg_1770_pp0_iter6_reg;
        offset_reg_1770_pp0_iter8_reg <= offset_reg_1770_pp0_iter7_reg;
        offset_reg_1770_pp0_iter9_reg <= offset_reg_1770_pp0_iter8_reg;
        tid_2_reg_1760_pp0_iter10_reg <= tid_2_reg_1760_pp0_iter9_reg;
        tid_2_reg_1760_pp0_iter11_reg <= tid_2_reg_1760_pp0_iter10_reg;
        tid_2_reg_1760_pp0_iter12_reg <= tid_2_reg_1760_pp0_iter11_reg;
        tid_2_reg_1760_pp0_iter13_reg <= tid_2_reg_1760_pp0_iter12_reg;
        tid_2_reg_1760_pp0_iter14_reg <= tid_2_reg_1760_pp0_iter13_reg;
        tid_2_reg_1760_pp0_iter2_reg <= tid_2_reg_1760_pp0_iter1_reg;
        tid_2_reg_1760_pp0_iter3_reg <= tid_2_reg_1760_pp0_iter2_reg;
        tid_2_reg_1760_pp0_iter4_reg <= tid_2_reg_1760_pp0_iter3_reg;
        tid_2_reg_1760_pp0_iter5_reg <= tid_2_reg_1760_pp0_iter4_reg;
        tid_2_reg_1760_pp0_iter6_reg <= tid_2_reg_1760_pp0_iter5_reg;
        tid_2_reg_1760_pp0_iter7_reg <= tid_2_reg_1760_pp0_iter6_reg;
        tid_2_reg_1760_pp0_iter8_reg <= tid_2_reg_1760_pp0_iter7_reg;
        tid_2_reg_1760_pp0_iter9_reg <= tid_2_reg_1760_pp0_iter8_reg;
        tmp_21_reg_2239 <= tmp_21_fu_1301_p25;
        tmp_22_reg_2244 <= tmp_22_fu_1352_p25;
        tmp_23_reg_2249 <= tmp_23_fu_1403_p25;
        tmp_24_reg_2254 <= tmp_24_fu_1454_p25;
        tmp_25_reg_2259 <= tmp_25_fu_1505_p25;
        tmp_26_reg_2264 <= tmp_26_fu_1556_p25;
        tmp_27_reg_2269 <= tmp_27_fu_1607_p25;
        tmp_89_reg_1777 <= {{mul_ln172_fu_1048_p2[18:13]}};
        tmp_89_reg_1777_pp0_iter11_reg <= tmp_89_reg_1777;
        tmp_89_reg_1777_pp0_iter12_reg <= tmp_89_reg_1777_pp0_iter11_reg;
        tmp_s_reg_2234 <= tmp_s_fu_1250_p25;
        trunc_ln172_reg_1782 <= trunc_ln172_fu_1064_p1;
        trunc_ln172_reg_1782_pp0_iter13_reg <= trunc_ln172_reg_1782;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        offset_reg_1770 <= offset_fu_1023_p3;
        offset_reg_1770_pp0_iter1_reg <= offset_reg_1770;
        tid_2_reg_1760 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_1760_pp0_iter1_reg <= tid_2_reg_1760;
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
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
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
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
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
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
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
        DATA_x_2_we1_local = 1'b1;
    end else begin
        DATA_x_2_we1_local = 1'b0;
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
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
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
        DATA_x_3_we1_local = 1'b1;
    end else begin
        DATA_x_3_we1_local = 1'b0;
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
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln309_fu_997_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_tid_2 = tid_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1782 == 4'd9)) begin
            smem_10_address0_local = zext_ln321_fu_1235_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd8)) begin
            smem_10_address0_local = zext_ln320_fu_1211_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd6)) begin
            smem_10_address0_local = zext_ln319_fu_1187_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd5)) begin
            smem_10_address0_local = zext_ln318_fu_1163_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd3)) begin
            smem_10_address0_local = zext_ln317_fu_1139_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd2)) begin
            smem_10_address0_local = zext_ln316_fu_1115_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd0)) begin
            smem_10_address0_local = zext_ln315_fu_1091_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd10)) begin
            smem_10_address0_local = zext_ln172_2_fu_1068_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd0)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1782 == 4'd0)) begin
            smem_1_address0_local = zext_ln321_fu_1235_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd10)) begin
            smem_1_address0_local = zext_ln320_fu_1211_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd8)) begin
            smem_1_address0_local = zext_ln319_fu_1187_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd7)) begin
            smem_1_address0_local = zext_ln318_fu_1163_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd5)) begin
            smem_1_address0_local = zext_ln317_fu_1139_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd4)) begin
            smem_1_address0_local = zext_ln316_fu_1115_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd2)) begin
            smem_1_address0_local = zext_ln315_fu_1091_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd1)) begin
            smem_1_address0_local = zext_ln172_2_fu_1068_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1782 == 4'd1)) begin
            smem_2_address0_local = zext_ln321_fu_1235_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd0)) begin
            smem_2_address0_local = zext_ln320_fu_1211_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd9)) begin
            smem_2_address0_local = zext_ln319_fu_1187_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd8)) begin
            smem_2_address0_local = zext_ln318_fu_1163_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd6)) begin
            smem_2_address0_local = zext_ln317_fu_1139_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd5)) begin
            smem_2_address0_local = zext_ln316_fu_1115_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd3)) begin
            smem_2_address0_local = zext_ln315_fu_1091_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd2)) begin
            smem_2_address0_local = zext_ln172_2_fu_1068_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1782 == 4'd2)) begin
            smem_3_address0_local = zext_ln321_fu_1235_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd1)) begin
            smem_3_address0_local = zext_ln320_fu_1211_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd10)) begin
            smem_3_address0_local = zext_ln319_fu_1187_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd9)) begin
            smem_3_address0_local = zext_ln318_fu_1163_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd7)) begin
            smem_3_address0_local = zext_ln317_fu_1139_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd6)) begin
            smem_3_address0_local = zext_ln316_fu_1115_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd4)) begin
            smem_3_address0_local = zext_ln315_fu_1091_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd3)) begin
            smem_3_address0_local = zext_ln172_2_fu_1068_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1782 == 4'd3)) begin
            smem_4_address0_local = zext_ln321_fu_1235_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd2)) begin
            smem_4_address0_local = zext_ln320_fu_1211_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd0)) begin
            smem_4_address0_local = zext_ln319_fu_1187_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd10)) begin
            smem_4_address0_local = zext_ln318_fu_1163_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd8)) begin
            smem_4_address0_local = zext_ln317_fu_1139_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd7)) begin
            smem_4_address0_local = zext_ln316_fu_1115_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd5)) begin
            smem_4_address0_local = zext_ln315_fu_1091_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd4)) begin
            smem_4_address0_local = zext_ln172_2_fu_1068_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1782 == 4'd4)) begin
            smem_5_address0_local = zext_ln321_fu_1235_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd3)) begin
            smem_5_address0_local = zext_ln320_fu_1211_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd1)) begin
            smem_5_address0_local = zext_ln319_fu_1187_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd0)) begin
            smem_5_address0_local = zext_ln318_fu_1163_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd9)) begin
            smem_5_address0_local = zext_ln317_fu_1139_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd8)) begin
            smem_5_address0_local = zext_ln316_fu_1115_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd6)) begin
            smem_5_address0_local = zext_ln315_fu_1091_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd5)) begin
            smem_5_address0_local = zext_ln172_2_fu_1068_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1782 == 4'd5)) begin
            smem_6_address0_local = zext_ln321_fu_1235_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd4)) begin
            smem_6_address0_local = zext_ln320_fu_1211_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd2)) begin
            smem_6_address0_local = zext_ln319_fu_1187_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd1)) begin
            smem_6_address0_local = zext_ln318_fu_1163_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd10)) begin
            smem_6_address0_local = zext_ln317_fu_1139_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd9)) begin
            smem_6_address0_local = zext_ln316_fu_1115_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd7)) begin
            smem_6_address0_local = zext_ln315_fu_1091_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd6)) begin
            smem_6_address0_local = zext_ln172_2_fu_1068_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1782 == 4'd6)) begin
            smem_7_address0_local = zext_ln321_fu_1235_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd5)) begin
            smem_7_address0_local = zext_ln320_fu_1211_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd3)) begin
            smem_7_address0_local = zext_ln319_fu_1187_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd2)) begin
            smem_7_address0_local = zext_ln318_fu_1163_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd0)) begin
            smem_7_address0_local = zext_ln317_fu_1139_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd10)) begin
            smem_7_address0_local = zext_ln316_fu_1115_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd8)) begin
            smem_7_address0_local = zext_ln315_fu_1091_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd7)) begin
            smem_7_address0_local = zext_ln172_2_fu_1068_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd0)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1782 == 4'd7)) begin
            smem_8_address0_local = zext_ln321_fu_1235_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd6)) begin
            smem_8_address0_local = zext_ln320_fu_1211_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd4)) begin
            smem_8_address0_local = zext_ln319_fu_1187_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd3)) begin
            smem_8_address0_local = zext_ln318_fu_1163_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd1)) begin
            smem_8_address0_local = zext_ln317_fu_1139_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd0)) begin
            smem_8_address0_local = zext_ln316_fu_1115_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd9)) begin
            smem_8_address0_local = zext_ln315_fu_1091_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd8)) begin
            smem_8_address0_local = zext_ln172_2_fu_1068_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd0)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1782 == 4'd8)) begin
            smem_9_address0_local = zext_ln321_fu_1235_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd7)) begin
            smem_9_address0_local = zext_ln320_fu_1211_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd5)) begin
            smem_9_address0_local = zext_ln319_fu_1187_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd4)) begin
            smem_9_address0_local = zext_ln318_fu_1163_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd2)) begin
            smem_9_address0_local = zext_ln317_fu_1139_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd1)) begin
            smem_9_address0_local = zext_ln316_fu_1115_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd10)) begin
            smem_9_address0_local = zext_ln315_fu_1091_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd9)) begin
            smem_9_address0_local = zext_ln172_2_fu_1068_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_1782 == 4'd10)) begin
            smem_address0_local = zext_ln321_fu_1235_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd9)) begin
            smem_address0_local = zext_ln320_fu_1211_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd7)) begin
            smem_address0_local = zext_ln319_fu_1187_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd6)) begin
            smem_address0_local = zext_ln318_fu_1163_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd4)) begin
            smem_address0_local = zext_ln317_fu_1139_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd3)) begin
            smem_address0_local = zext_ln316_fu_1115_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd1)) begin
            smem_address0_local = zext_ln315_fu_1091_p1;
        end else if ((trunc_ln172_reg_1782 == 4'd0)) begin
            smem_address0_local = zext_ln172_2_fu_1068_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_1782 == 4'd0)))) begin
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
assign DATA_x_1_address0 = zext_ln315_1_fu_1682_p1;
assign DATA_x_1_address1 = zext_ln314_fu_1666_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = tmp_23_reg_2249;
assign DATA_x_1_d1 = tmp_22_reg_2244;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_2_address0 = zext_ln315_1_fu_1682_p1;
assign DATA_x_2_address1 = zext_ln314_fu_1666_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_2_d0 = tmp_25_reg_2259;
assign DATA_x_2_d1 = tmp_24_reg_2254;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_2_we1 = DATA_x_2_we1_local;
assign DATA_x_3_address0 = zext_ln315_1_fu_1682_p1;
assign DATA_x_3_address1 = zext_ln314_fu_1666_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_3_d0 = tmp_27_reg_2269;
assign DATA_x_3_d1 = tmp_26_reg_2264;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_3_we1 = DATA_x_3_we1_local;
assign DATA_x_address0 = zext_ln315_1_fu_1682_p1;
assign DATA_x_address1 = zext_ln314_fu_1666_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = tmp_21_reg_2239;
assign DATA_x_d1 = tmp_s_reg_2234;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_1003_p2 = (ap_sig_allocacmp_tid_2 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1031_p0 = {{tmp_fu_1009_p4}, {trunc_ln312_fu_1019_p1}};
assign grp_fu_1031_p1 = 9'd11;
assign grp_fu_1690_p0 = zext_ln172_fu_1042_p1;
assign grp_fu_1690_p1 = 10'd32;
assign grp_fu_1690_p2 = 21'd1490;
assign grp_fu_1699_p0 = zext_ln172_fu_1042_p1;
assign grp_fu_1699_p1 = 10'd8;
assign grp_fu_1699_p2 = 21'd1490;
assign grp_fu_1708_p0 = zext_ln172_fu_1042_p1;
assign grp_fu_1708_p1 = 10'd40;
assign grp_fu_1708_p2 = 21'd1490;
assign grp_fu_1717_p0 = zext_ln172_fu_1042_p1;
assign grp_fu_1717_p1 = 10'd16;
assign grp_fu_1717_p2 = 21'd1490;
assign grp_fu_1726_p0 = zext_ln172_fu_1042_p1;
assign grp_fu_1726_p1 = 10'd48;
assign grp_fu_1726_p2 = 21'd1490;
assign grp_fu_1735_p0 = zext_ln172_fu_1042_p1;
assign grp_fu_1735_p1 = 10'd24;
assign grp_fu_1735_p2 = 21'd1490;
assign grp_fu_1744_p0 = zext_ln172_fu_1042_p1;
assign grp_fu_1744_p1 = 10'd56;
assign grp_fu_1744_p2 = 21'd1490;
assign icmp_ln309_fu_997_p2 = ((ap_sig_allocacmp_tid_2 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_fu_1048_p0 = mul_ln172_fu_1048_p00;
assign mul_ln172_fu_1048_p00 = offset_reg_1770_pp0_iter9_reg;
assign mul_ln172_fu_1048_p1 = 19'd745;
assign offset_fu_1023_p3 = {{tmp_fu_1009_p4}, {trunc_ln312_fu_1019_p1}};
assign or_ln_fu_1674_p3 = {{trunc_ln314_fu_1658_p1}, {1'd1}};
assign shl_ln314_fu_1661_p2 = tid_2_reg_1760_pp0_iter14_reg << 7'd1;
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
assign tmp_21_fu_1301_p23 = 'bx;
assign tmp_22_fu_1352_p23 = 'bx;
assign tmp_23_fu_1403_p23 = 'bx;
assign tmp_24_fu_1454_p23 = 'bx;
assign tmp_25_fu_1505_p23 = 'bx;
assign tmp_26_fu_1556_p23 = 'bx;
assign tmp_27_fu_1607_p23 = 'bx;
assign tmp_90_fu_1082_p1 = grp_fu_1690_p3;
assign tmp_90_fu_1082_p4 = {{tmp_90_fu_1082_p1[20:14]}};
assign tmp_91_fu_1106_p1 = grp_fu_1699_p3;
assign tmp_91_fu_1106_p4 = {{tmp_91_fu_1106_p1[20:14]}};
assign tmp_92_fu_1130_p1 = grp_fu_1708_p3;
assign tmp_92_fu_1130_p4 = {{tmp_92_fu_1130_p1[20:14]}};
assign tmp_93_fu_1154_p1 = grp_fu_1717_p3;
assign tmp_93_fu_1154_p4 = {{tmp_93_fu_1154_p1[20:14]}};
assign tmp_94_fu_1178_p1 = grp_fu_1726_p3;
assign tmp_94_fu_1178_p4 = {{tmp_94_fu_1178_p1[20:14]}};
assign tmp_95_fu_1202_p1 = grp_fu_1735_p3;
assign tmp_95_fu_1202_p4 = {{tmp_95_fu_1202_p1[20:14]}};
assign tmp_96_fu_1226_p1 = grp_fu_1744_p3;
assign tmp_96_fu_1226_p4 = {{tmp_96_fu_1226_p1[20:14]}};
assign tmp_fu_1009_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_s_fu_1250_p23 = 'bx;
assign trunc_ln172_fu_1064_p1 = grp_fu_1031_p2[3:0];
assign trunc_ln312_fu_1019_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_1658_p1 = tid_2_reg_1760_pp0_iter14_reg[5:0];
assign zext_ln172_2_fu_1068_p1 = tmp_89_reg_1777_pp0_iter12_reg;
assign zext_ln172_fu_1042_p1 = offset_reg_1770_pp0_iter9_reg;
assign zext_ln314_fu_1666_p1 = shl_ln314_fu_1661_p2;
assign zext_ln315_1_fu_1682_p1 = or_ln_fu_1674_p3;
assign zext_ln315_fu_1091_p1 = tmp_90_fu_1082_p4;
assign zext_ln316_fu_1115_p1 = tmp_91_fu_1106_p4;
assign zext_ln317_fu_1139_p1 = tmp_92_fu_1130_p4;
assign zext_ln318_fu_1163_p1 = tmp_93_fu_1154_p4;
assign zext_ln319_fu_1187_p1 = tmp_94_fu_1178_p4;
assign zext_ln320_fu_1211_p1 = tmp_95_fu_1202_p4;
assign zext_ln321_fu_1235_p1 = tmp_96_fu_1226_p4;
endmodule 
