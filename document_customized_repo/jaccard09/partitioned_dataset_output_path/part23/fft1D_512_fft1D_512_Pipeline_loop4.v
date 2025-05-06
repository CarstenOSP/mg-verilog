
module fft1D_512_fft1D_512_Pipeline_loop4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_12_address0,smem_12_ce0,smem_12_we0,smem_12_d0,smem_11_address0,smem_11_ce0,smem_11_we0,smem_11_d0,smem_10_address0,smem_10_ce0,smem_10_we0,smem_10_d0,smem_9_address0,smem_9_ce0,smem_9_we0,smem_9_d0,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_q0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_q0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_q0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_q0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_q0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_q0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_q0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] smem_12_address0;
output   smem_12_ce0;
output   smem_12_we0;
output  [63:0] smem_12_d0;
output  [5:0] smem_11_address0;
output   smem_11_ce0;
output   smem_11_we0;
output  [63:0] smem_11_d0;
output  [5:0] smem_10_address0;
output   smem_10_ce0;
output   smem_10_we0;
output  [63:0] smem_10_d0;
output  [5:0] smem_9_address0;
output   smem_9_ce0;
output   smem_9_we0;
output  [63:0] smem_9_d0;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
output   smem_8_we0;
output  [63:0] smem_8_d0;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
output   smem_7_we0;
output  [63:0] smem_7_d0;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
output   smem_6_we0;
output  [63:0] smem_6_d0;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
output   smem_5_we0;
output  [63:0] smem_5_d0;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [5:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [4:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [4:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
input  [63:0] DATA_y_8_q0;
output  [4:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [4:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
input  [63:0] DATA_y_9_q0;
output  [4:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [4:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
input  [63:0] DATA_y_12_q0;
output  [4:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [4:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
input  [63:0] DATA_y_13_q0;
output  [4:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [4:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
input  [63:0] DATA_y_10_q0;
output  [4:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [4:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
input  [63:0] DATA_y_11_q0;
output  [4:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [4:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
input  [63:0] DATA_y_14_q0;
output  [4:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [4:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
input  [63:0] DATA_y_15_q0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln204_fu_1275_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln204_fu_1287_p1;
reg   [0:0] trunc_ln204_reg_1720;
reg   [0:0] trunc_ln204_reg_1720_pp0_iter1_reg;
reg   [0:0] trunc_ln204_reg_1720_pp0_iter2_reg;
reg   [0:0] trunc_ln204_reg_1720_pp0_iter3_reg;
reg   [0:0] trunc_ln204_reg_1720_pp0_iter4_reg;
reg   [0:0] trunc_ln204_reg_1720_pp0_iter5_reg;
reg   [0:0] trunc_ln204_reg_1720_pp0_iter6_reg;
reg   [0:0] trunc_ln204_reg_1720_pp0_iter7_reg;
reg   [0:0] trunc_ln204_reg_1720_pp0_iter8_reg;
wire   [5:0] offset_fu_1291_p1;
reg   [5:0] offset_reg_1732;
reg   [5:0] offset_reg_1732_pp0_iter1_reg;
reg   [5:0] offset_reg_1732_pp0_iter2_reg;
reg   [5:0] offset_reg_1732_pp0_iter3_reg;
reg   [5:0] offset_reg_1732_pp0_iter4_reg;
reg   [5:0] offset_reg_1732_pp0_iter5_reg;
reg   [5:0] offset_reg_1732_pp0_iter6_reg;
reg   [4:0] lshr_ln3_reg_1741;
reg   [4:0] lshr_ln3_reg_1741_pp0_iter1_reg;
reg   [4:0] lshr_ln3_reg_1741_pp0_iter2_reg;
reg   [4:0] lshr_ln3_reg_1741_pp0_iter3_reg;
reg   [4:0] lshr_ln3_reg_1741_pp0_iter4_reg;
reg   [4:0] lshr_ln3_reg_1741_pp0_iter5_reg;
reg   [4:0] lshr_ln3_reg_1741_pp0_iter6_reg;
reg   [4:0] lshr_ln3_reg_1741_pp0_iter7_reg;
wire   [7:0] zext_ln172_21_fu_1319_p1;
reg   [7:0] zext_ln172_21_reg_1746;
wire   [8:0] zext_ln172_22_fu_1322_p1;
reg   [8:0] zext_ln172_22_reg_1752;
reg   [2:0] tmp_reg_1758;
reg   [2:0] tmp_reg_1758_pp0_iter8_reg;
reg   [2:0] tmp_reg_1758_pp0_iter9_reg;
wire   [8:0] add_ln210_fu_1363_p2;
reg   [8:0] add_ln210_reg_1783;
wire   [8:0] add_ln212_fu_1368_p2;
reg   [8:0] add_ln212_reg_1808;
reg   [4:0] tmp_126_reg_1823;
reg   [4:0] tmp_126_reg_1823_pp0_iter9_reg;
wire   [7:0] add_ln214_fu_1398_p2;
reg   [7:0] add_ln214_reg_1838;
wire   [3:0] trunc_ln172_fu_1403_p1;
reg   [3:0] trunc_ln172_reg_1863;
wire   [63:0] select_ln209_fu_1407_p3;
reg   [63:0] select_ln209_reg_1867;
reg   [5:0] tmp_123_reg_1884;
reg   [5:0] tmp_125_reg_1889;
reg   [5:0] tmp_127_reg_1894;
wire   [63:0] select_ln210_fu_1475_p3;
reg   [63:0] select_ln210_reg_1899;
wire   [63:0] select_ln211_fu_1482_p3;
reg   [63:0] select_ln211_reg_1916;
wire   [63:0] select_ln212_fu_1489_p3;
reg   [63:0] select_ln212_reg_1933;
wire   [63:0] select_ln213_fu_1496_p3;
reg   [63:0] select_ln213_reg_1950;
wire   [63:0] select_ln214_fu_1503_p3;
reg   [63:0] select_ln214_reg_1967;
wire   [63:0] select_ln215_fu_1510_p3;
reg   [63:0] select_ln215_reg_1984;
wire   [63:0] select_ln216_fu_1517_p3;
reg   [63:0] select_ln216_reg_2001;
wire   [63:0] zext_ln209_fu_1344_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_2_fu_1524_p1;
wire   [63:0] zext_ln210_fu_1540_p1;
wire   [63:0] zext_ln211_fu_1565_p1;
wire   [63:0] zext_ln212_fu_1582_p1;
wire   [63:0] zext_ln213_fu_1598_p1;
wire   [63:0] zext_ln214_fu_1614_p1;
wire   [63:0] zext_ln215_fu_1639_p1;
wire   [63:0] zext_ln216_fu_1665_p1;
reg   [6:0] tid_3_fu_158;
wire   [6:0] add_ln204_fu_1281_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    DATA_y_ce0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_y_15_ce0_local;
reg    smem_11_we0_local;
reg   [63:0] smem_11_d0_local;
reg    smem_11_ce0_local;
reg   [5:0] smem_11_address0_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [5:0] smem_2_address0_local;
reg    smem_12_we0_local;
reg   [63:0] smem_12_d0_local;
reg    smem_12_ce0_local;
reg   [5:0] smem_12_address0_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [5:0] smem_3_address0_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [5:0] smem_4_address0_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [5:0] smem_1_address0_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [5:0] smem_5_address0_local;
reg    smem_10_we0_local;
reg   [63:0] smem_10_d0_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    smem_9_we0_local;
reg   [63:0] smem_9_d0_local;
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
reg    smem_8_we0_local;
reg   [63:0] smem_8_d0_local;
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    smem_7_we0_local;
reg   [63:0] smem_7_d0_local;
reg    smem_7_ce0_local;
reg   [5:0] smem_7_address0_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [5:0] smem_6_address0_local;
wire   [5:0] grp_fu_1295_p0;
wire   [4:0] grp_fu_1295_p1;
wire   [5:0] mul_ln172_2_fu_1328_p0;
wire   [7:0] mul_ln172_2_fu_1328_p1;
wire   [12:0] mul_ln172_2_fu_1328_p2;
wire   [7:0] add_ln213_fu_1373_p2;
wire   [7:0] mul_ln213_fu_1382_p0;
wire   [9:0] mul_ln213_fu_1382_p1;
wire   [16:0] mul_ln213_fu_1382_p2;
wire   [3:0] grp_fu_1295_p2;
wire   [8:0] mul_ln210_fu_1417_p0;
wire   [10:0] mul_ln210_fu_1417_p1;
wire   [18:0] mul_ln210_fu_1417_p2;
wire   [8:0] mul_ln212_fu_1436_p0;
wire   [10:0] mul_ln212_fu_1436_p1;
wire   [18:0] mul_ln212_fu_1436_p2;
wire  signed [8:0] sext_ln214_fu_1452_p1;
wire   [8:0] mul_ln214_fu_1459_p0;
wire   [10:0] mul_ln214_fu_1459_p1;
wire   [18:0] mul_ln214_fu_1459_p2;
wire   [16:0] tmp_124_fu_1556_p1;
wire  signed [16:0] grp_fu_1682_p3;
wire   [4:0] tmp_124_fu_1556_p4;
wire   [18:0] tmp_128_fu_1630_p1;
wire  signed [18:0] grp_fu_1691_p3;
wire   [5:0] tmp_128_fu_1630_p4;
wire   [20:0] tmp_129_fu_1656_p1;
wire  signed [20:0] grp_fu_1700_p3;
wire   [6:0] tmp_129_fu_1656_p4;
wire   [5:0] grp_fu_1682_p0;
wire   [6:0] grp_fu_1682_p1;
wire   [8:0] grp_fu_1682_p2;
wire   [5:0] grp_fu_1691_p0;
wire   [7:0] grp_fu_1691_p1;
wire   [9:0] grp_fu_1691_p2;
wire   [5:0] grp_fu_1700_p0;
wire   [8:0] grp_fu_1700_p1;
wire   [10:0] grp_fu_1700_p2;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_1682_p00;
wire   [8:0] grp_fu_1691_p00;
wire   [9:0] grp_fu_1700_p00;
wire   [12:0] mul_ln172_2_fu_1328_p00;
wire   [18:0] mul_ln210_fu_1417_p00;
wire   [18:0] mul_ln212_fu_1436_p00;
wire   [16:0] mul_ln213_fu_1382_p00;
wire   [18:0] mul_ln214_fu_1459_p00;
reg    ap_condition_642;
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
#0 tid_3_fu_158 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U159(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1295_p0),.din1(grp_fu_1295_p1),.ce(1'b1),.dout(grp_fu_1295_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U160(.din0(mul_ln172_2_fu_1328_p0),.din1(mul_ln172_2_fu_1328_p1),.dout(mul_ln172_2_fu_1328_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U161(.din0(mul_ln213_fu_1382_p0),.din1(mul_ln213_fu_1382_p1),.dout(mul_ln213_fu_1382_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U162(.din0(mul_ln210_fu_1417_p0),.din1(mul_ln210_fu_1417_p1),.dout(mul_ln210_fu_1417_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U163(.din0(mul_ln212_fu_1436_p0),.din1(mul_ln212_fu_1436_p1),.dout(mul_ln212_fu_1436_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U164(.din0(mul_ln214_fu_1459_p0),.din1(mul_ln214_fu_1459_p1),.dout(mul_ln214_fu_1459_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U165(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1682_p0),.din1(grp_fu_1682_p1),.din2(grp_fu_1682_p2),.ce(1'b1),.dout(grp_fu_1682_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U166(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1691_p0),.din1(grp_fu_1691_p1),.din2(grp_fu_1691_p2),.ce(1'b1),.dout(grp_fu_1691_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U167(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1700_p0),.din1(grp_fu_1700_p1),.din2(grp_fu_1700_p2),.ce(1'b1),.dout(grp_fu_1700_p3));
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
        end else if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if (((icmp_ln204_fu_1275_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_3_fu_158 <= add_ln204_fu_1281_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_3_fu_158 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln210_reg_1783 <= add_ln210_fu_1363_p2;
        add_ln212_reg_1808 <= add_ln212_fu_1368_p2;
        add_ln214_reg_1838 <= add_ln214_fu_1398_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln3_reg_1741_pp0_iter2_reg <= lshr_ln3_reg_1741_pp0_iter1_reg;
        lshr_ln3_reg_1741_pp0_iter3_reg <= lshr_ln3_reg_1741_pp0_iter2_reg;
        lshr_ln3_reg_1741_pp0_iter4_reg <= lshr_ln3_reg_1741_pp0_iter3_reg;
        lshr_ln3_reg_1741_pp0_iter5_reg <= lshr_ln3_reg_1741_pp0_iter4_reg;
        lshr_ln3_reg_1741_pp0_iter6_reg <= lshr_ln3_reg_1741_pp0_iter5_reg;
        lshr_ln3_reg_1741_pp0_iter7_reg <= lshr_ln3_reg_1741_pp0_iter6_reg;
        offset_reg_1732_pp0_iter2_reg <= offset_reg_1732_pp0_iter1_reg;
        offset_reg_1732_pp0_iter3_reg <= offset_reg_1732_pp0_iter2_reg;
        offset_reg_1732_pp0_iter4_reg <= offset_reg_1732_pp0_iter3_reg;
        offset_reg_1732_pp0_iter5_reg <= offset_reg_1732_pp0_iter4_reg;
        offset_reg_1732_pp0_iter6_reg <= offset_reg_1732_pp0_iter5_reg;
        select_ln209_reg_1867 <= select_ln209_fu_1407_p3;
        select_ln210_reg_1899 <= select_ln210_fu_1475_p3;
        select_ln211_reg_1916 <= select_ln211_fu_1482_p3;
        select_ln212_reg_1933 <= select_ln212_fu_1489_p3;
        select_ln213_reg_1950 <= select_ln213_fu_1496_p3;
        select_ln214_reg_1967 <= select_ln214_fu_1503_p3;
        select_ln215_reg_1984 <= select_ln215_fu_1510_p3;
        select_ln216_reg_2001 <= select_ln216_fu_1517_p3;
        tmp_123_reg_1884 <= {{mul_ln210_fu_1417_p2[18:13]}};
        tmp_125_reg_1889 <= {{mul_ln212_fu_1436_p2[18:13]}};
        tmp_126_reg_1823 <= {{mul_ln213_fu_1382_p2[16:12]}};
        tmp_126_reg_1823_pp0_iter9_reg <= tmp_126_reg_1823;
        tmp_127_reg_1894 <= {{mul_ln214_fu_1459_p2[18:13]}};
        tmp_reg_1758 <= {{mul_ln172_2_fu_1328_p2[12:10]}};
        tmp_reg_1758_pp0_iter8_reg <= tmp_reg_1758;
        tmp_reg_1758_pp0_iter9_reg <= tmp_reg_1758_pp0_iter8_reg;
        trunc_ln172_reg_1863 <= trunc_ln172_fu_1403_p1;
        trunc_ln204_reg_1720_pp0_iter2_reg <= trunc_ln204_reg_1720_pp0_iter1_reg;
        trunc_ln204_reg_1720_pp0_iter3_reg <= trunc_ln204_reg_1720_pp0_iter2_reg;
        trunc_ln204_reg_1720_pp0_iter4_reg <= trunc_ln204_reg_1720_pp0_iter3_reg;
        trunc_ln204_reg_1720_pp0_iter5_reg <= trunc_ln204_reg_1720_pp0_iter4_reg;
        trunc_ln204_reg_1720_pp0_iter6_reg <= trunc_ln204_reg_1720_pp0_iter5_reg;
        trunc_ln204_reg_1720_pp0_iter7_reg <= trunc_ln204_reg_1720_pp0_iter6_reg;
        trunc_ln204_reg_1720_pp0_iter8_reg <= trunc_ln204_reg_1720_pp0_iter7_reg;
        zext_ln172_21_reg_1746[5 : 0] <= zext_ln172_21_fu_1319_p1[5 : 0];
        zext_ln172_22_reg_1752[5 : 0] <= zext_ln172_22_fu_1322_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln3_reg_1741 <= {{ap_sig_allocacmp_tid[5:1]}};
        lshr_ln3_reg_1741_pp0_iter1_reg <= lshr_ln3_reg_1741;
        offset_reg_1732 <= offset_fu_1291_p1;
        offset_reg_1732_pp0_iter1_reg <= offset_reg_1732;
        trunc_ln204_reg_1720 <= trunc_ln204_fu_1287_p1;
        trunc_ln204_reg_1720_pp0_iter1_reg <= trunc_ln204_reg_1720;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_10_ce0_local = 1'b1;
    end else begin
        DATA_y_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_11_ce0_local = 1'b1;
    end else begin
        DATA_y_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_12_ce0_local = 1'b1;
    end else begin
        DATA_y_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_13_ce0_local = 1'b1;
    end else begin
        DATA_y_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_14_ce0_local = 1'b1;
    end else begin
        DATA_y_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_15_ce0_local = 1'b1;
    end else begin
        DATA_y_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_8_ce0_local = 1'b1;
    end else begin
        DATA_y_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_9_ce0_local = 1'b1;
    end else begin
        DATA_y_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln204_fu_1275_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_3_fu_158;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_10_address0_local = zext_ln216_fu_1665_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_10_address0_local = zext_ln214_fu_1614_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_10_address0_local = zext_ln212_fu_1582_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_10_address0_local = zext_ln210_fu_1540_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_10_address0_local = zext_ln215_fu_1639_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_10_address0_local = zext_ln213_fu_1598_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_10_address0_local = zext_ln211_fu_1565_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_10_address0_local = zext_ln172_2_fu_1524_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_10_d0_local = select_ln216_reg_2001;
        end else if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_10_d0_local = select_ln214_reg_1967;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_10_d0_local = select_ln212_reg_1933;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_10_d0_local = select_ln210_reg_1899;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_10_d0_local = select_ln215_reg_1984;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_10_d0_local = select_ln213_reg_1950;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_10_d0_local = select_ln211_reg_1916;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_10_d0_local = select_ln209_reg_1867;
        end else begin
            smem_10_d0_local = 'bx;
        end
    end else begin
        smem_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)))) begin
        smem_10_we0_local = 1'b1;
    end else begin
        smem_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_11_address0_local = zext_ln216_fu_1665_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_11_address0_local = zext_ln214_fu_1614_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_11_address0_local = zext_ln212_fu_1582_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_11_address0_local = zext_ln210_fu_1540_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_11_address0_local = zext_ln215_fu_1639_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_11_address0_local = zext_ln213_fu_1598_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_11_address0_local = zext_ln211_fu_1565_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_11_address0_local = zext_ln172_2_fu_1524_p1;
        end else begin
            smem_11_address0_local = 'bx;
        end
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_11_d0_local = select_ln216_reg_2001;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_11_d0_local = select_ln214_reg_1967;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_11_d0_local = select_ln212_reg_1933;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_11_d0_local = select_ln210_reg_1899;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_11_d0_local = select_ln215_reg_1984;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_11_d0_local = select_ln213_reg_1950;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_11_d0_local = select_ln211_reg_1916;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_11_d0_local = select_ln209_reg_1867;
        end else begin
            smem_11_d0_local = 'bx;
        end
    end else begin
        smem_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_11_we0_local = 1'b1;
    end else begin
        smem_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_12_address0_local = zext_ln172_2_fu_1524_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_12_address0_local = zext_ln216_fu_1665_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_12_address0_local = zext_ln214_fu_1614_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_12_address0_local = zext_ln212_fu_1582_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_12_address0_local = zext_ln210_fu_1540_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_12_address0_local = zext_ln215_fu_1639_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_12_address0_local = zext_ln213_fu_1598_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_12_address0_local = zext_ln211_fu_1565_p1;
        end else begin
            smem_12_address0_local = 'bx;
        end
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_12_d0_local = select_ln209_reg_1867;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_12_d0_local = select_ln216_reg_2001;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_12_d0_local = select_ln214_reg_1967;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_12_d0_local = select_ln212_reg_1933;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_12_d0_local = select_ln210_reg_1899;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_12_d0_local = select_ln215_reg_1984;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_12_d0_local = select_ln213_reg_1950;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_12_d0_local = select_ln211_reg_1916;
        end else begin
            smem_12_d0_local = 'bx;
        end
    end else begin
        smem_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_12_we0_local = 1'b1;
    end else begin
        smem_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_1_address0_local = zext_ln213_fu_1598_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_1_address0_local = zext_ln211_fu_1565_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_1_address0_local = zext_ln172_2_fu_1524_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_1_address0_local = zext_ln216_fu_1665_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_1_address0_local = zext_ln214_fu_1614_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_1_address0_local = zext_ln212_fu_1582_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_1_address0_local = zext_ln210_fu_1540_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_1_address0_local = zext_ln215_fu_1639_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_1_d0_local = select_ln213_reg_1950;
        end else if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_1_d0_local = select_ln211_reg_1916;
        end else if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_1_d0_local = select_ln209_reg_1867;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_1_d0_local = select_ln216_reg_2001;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_1_d0_local = select_ln214_reg_1967;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_1_d0_local = select_ln212_reg_1933;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_1_d0_local = select_ln210_reg_1899;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_1_d0_local = select_ln215_reg_1984;
        end else begin
            smem_1_d0_local = 'bx;
        end
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_2_address0_local = zext_ln215_fu_1639_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_2_address0_local = zext_ln213_fu_1598_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_2_address0_local = zext_ln211_fu_1565_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_2_address0_local = zext_ln172_2_fu_1524_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_2_address0_local = zext_ln216_fu_1665_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_2_address0_local = zext_ln214_fu_1614_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_2_address0_local = zext_ln212_fu_1582_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_2_address0_local = zext_ln210_fu_1540_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_2_d0_local = select_ln215_reg_1984;
        end else if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_2_d0_local = select_ln213_reg_1950;
        end else if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_2_d0_local = select_ln211_reg_1916;
        end else if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_2_d0_local = select_ln209_reg_1867;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_2_d0_local = select_ln216_reg_2001;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_2_d0_local = select_ln214_reg_1967;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_2_d0_local = select_ln212_reg_1933;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_2_d0_local = select_ln210_reg_1899;
        end else begin
            smem_2_d0_local = 'bx;
        end
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_3_address0_local = zext_ln210_fu_1540_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_3_address0_local = zext_ln215_fu_1639_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_3_address0_local = zext_ln213_fu_1598_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_3_address0_local = zext_ln211_fu_1565_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_3_address0_local = zext_ln172_2_fu_1524_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_3_address0_local = zext_ln216_fu_1665_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_3_address0_local = zext_ln214_fu_1614_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_3_address0_local = zext_ln212_fu_1582_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_3_d0_local = select_ln210_reg_1899;
        end else if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_3_d0_local = select_ln215_reg_1984;
        end else if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_3_d0_local = select_ln213_reg_1950;
        end else if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_3_d0_local = select_ln211_reg_1916;
        end else if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_3_d0_local = select_ln209_reg_1867;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_3_d0_local = select_ln216_reg_2001;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_3_d0_local = select_ln214_reg_1967;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_3_d0_local = select_ln212_reg_1933;
        end else begin
            smem_3_d0_local = 'bx;
        end
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_4_address0_local = zext_ln212_fu_1582_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_4_address0_local = zext_ln210_fu_1540_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_4_address0_local = zext_ln215_fu_1639_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_4_address0_local = zext_ln213_fu_1598_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_4_address0_local = zext_ln211_fu_1565_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_4_address0_local = zext_ln172_2_fu_1524_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_4_address0_local = zext_ln216_fu_1665_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_4_address0_local = zext_ln214_fu_1614_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_4_d0_local = select_ln212_reg_1933;
        end else if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_4_d0_local = select_ln210_reg_1899;
        end else if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_4_d0_local = select_ln215_reg_1984;
        end else if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_4_d0_local = select_ln213_reg_1950;
        end else if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_4_d0_local = select_ln211_reg_1916;
        end else if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_4_d0_local = select_ln209_reg_1867;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_4_d0_local = select_ln216_reg_2001;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_4_d0_local = select_ln214_reg_1967;
        end else begin
            smem_4_d0_local = 'bx;
        end
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_5_address0_local = zext_ln214_fu_1614_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_5_address0_local = zext_ln212_fu_1582_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_5_address0_local = zext_ln210_fu_1540_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_5_address0_local = zext_ln215_fu_1639_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_5_address0_local = zext_ln213_fu_1598_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_5_address0_local = zext_ln211_fu_1565_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_5_address0_local = zext_ln172_2_fu_1524_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_5_address0_local = zext_ln216_fu_1665_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_5_d0_local = select_ln214_reg_1967;
        end else if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_5_d0_local = select_ln212_reg_1933;
        end else if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_5_d0_local = select_ln210_reg_1899;
        end else if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_5_d0_local = select_ln215_reg_1984;
        end else if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_5_d0_local = select_ln213_reg_1950;
        end else if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_5_d0_local = select_ln211_reg_1916;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_5_d0_local = select_ln209_reg_1867;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_5_d0_local = select_ln216_reg_2001;
        end else begin
            smem_5_d0_local = 'bx;
        end
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_6_address0_local = zext_ln216_fu_1665_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_6_address0_local = zext_ln214_fu_1614_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_6_address0_local = zext_ln212_fu_1582_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_6_address0_local = zext_ln210_fu_1540_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_6_address0_local = zext_ln215_fu_1639_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_6_address0_local = zext_ln213_fu_1598_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_6_address0_local = zext_ln211_fu_1565_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_6_address0_local = zext_ln172_2_fu_1524_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_6_d0_local = select_ln216_reg_2001;
        end else if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_6_d0_local = select_ln214_reg_1967;
        end else if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_6_d0_local = select_ln212_reg_1933;
        end else if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_6_d0_local = select_ln210_reg_1899;
        end else if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_6_d0_local = select_ln215_reg_1984;
        end else if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_6_d0_local = select_ln213_reg_1950;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_6_d0_local = select_ln211_reg_1916;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_6_d0_local = select_ln209_reg_1867;
        end else begin
            smem_6_d0_local = 'bx;
        end
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_7_address0_local = zext_ln216_fu_1665_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_7_address0_local = zext_ln214_fu_1614_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_7_address0_local = zext_ln212_fu_1582_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_7_address0_local = zext_ln210_fu_1540_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_7_address0_local = zext_ln215_fu_1639_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_7_address0_local = zext_ln213_fu_1598_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_7_address0_local = zext_ln211_fu_1565_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_7_address0_local = zext_ln172_2_fu_1524_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_7_d0_local = select_ln216_reg_2001;
        end else if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_7_d0_local = select_ln214_reg_1967;
        end else if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_7_d0_local = select_ln212_reg_1933;
        end else if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_7_d0_local = select_ln210_reg_1899;
        end else if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_7_d0_local = select_ln215_reg_1984;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_7_d0_local = select_ln213_reg_1950;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_7_d0_local = select_ln211_reg_1916;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_7_d0_local = select_ln209_reg_1867;
        end else begin
            smem_7_d0_local = 'bx;
        end
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_8_address0_local = zext_ln216_fu_1665_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_8_address0_local = zext_ln214_fu_1614_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_8_address0_local = zext_ln212_fu_1582_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_8_address0_local = zext_ln210_fu_1540_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_8_address0_local = zext_ln215_fu_1639_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_8_address0_local = zext_ln213_fu_1598_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_8_address0_local = zext_ln211_fu_1565_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_8_address0_local = zext_ln172_2_fu_1524_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1863 == 4'd1)) begin
            smem_8_d0_local = select_ln216_reg_2001;
        end else if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_8_d0_local = select_ln214_reg_1967;
        end else if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_8_d0_local = select_ln212_reg_1933;
        end else if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_8_d0_local = select_ln210_reg_1899;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_8_d0_local = select_ln215_reg_1984;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_8_d0_local = select_ln213_reg_1950;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_8_d0_local = select_ln211_reg_1916;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_8_d0_local = select_ln209_reg_1867;
        end else begin
            smem_8_d0_local = 'bx;
        end
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_9_address0_local = zext_ln216_fu_1665_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_9_address0_local = zext_ln214_fu_1614_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_9_address0_local = zext_ln212_fu_1582_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_9_address0_local = zext_ln210_fu_1540_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_9_address0_local = zext_ln215_fu_1639_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_9_address0_local = zext_ln213_fu_1598_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_9_address0_local = zext_ln211_fu_1565_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_9_address0_local = zext_ln172_2_fu_1524_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1863 == 4'd2)) begin
            smem_9_d0_local = select_ln216_reg_2001;
        end else if ((trunc_ln172_reg_1863 == 4'd3)) begin
            smem_9_d0_local = select_ln214_reg_1967;
        end else if ((trunc_ln172_reg_1863 == 4'd4)) begin
            smem_9_d0_local = select_ln212_reg_1933;
        end else if ((trunc_ln172_reg_1863 == 4'd5)) begin
            smem_9_d0_local = select_ln210_reg_1899;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_9_d0_local = select_ln215_reg_1984;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_9_d0_local = select_ln213_reg_1950;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_9_d0_local = select_ln211_reg_1916;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_9_d0_local = select_ln209_reg_1867;
        end else begin
            smem_9_d0_local = 'bx;
        end
    end else begin
        smem_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)))) begin
        smem_9_we0_local = 1'b1;
    end else begin
        smem_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_address0_local = zext_ln211_fu_1565_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_address0_local = zext_ln172_2_fu_1524_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_address0_local = zext_ln216_fu_1665_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_address0_local = zext_ln214_fu_1614_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_address0_local = zext_ln212_fu_1582_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_address0_local = zext_ln210_fu_1540_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_address0_local = zext_ln215_fu_1639_p1;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_address0_local = zext_ln213_fu_1598_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_642)) begin
            smem_d0_local = select_ln211_reg_1916;
        end else if ((trunc_ln172_reg_1863 == 4'd0)) begin
            smem_d0_local = select_ln209_reg_1867;
        end else if ((trunc_ln172_reg_1863 == 4'd6)) begin
            smem_d0_local = select_ln216_reg_2001;
        end else if ((trunc_ln172_reg_1863 == 4'd7)) begin
            smem_d0_local = select_ln214_reg_1967;
        end else if ((trunc_ln172_reg_1863 == 4'd8)) begin
            smem_d0_local = select_ln212_reg_1933;
        end else if ((trunc_ln172_reg_1863 == 4'd9)) begin
            smem_d0_local = select_ln210_reg_1899;
        end else if ((trunc_ln172_reg_1863 == 4'd10)) begin
            smem_d0_local = select_ln215_reg_1984;
        end else if ((trunc_ln172_reg_1863 == 4'd11)) begin
            smem_d0_local = select_ln213_reg_1950;
        end else begin
            smem_d0_local = 'bx;
        end
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1863 == 4'd11)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
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
assign DATA_y_10_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_11_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_12_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_13_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_14_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_15_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_1_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_2_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_3_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_4_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_5_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_6_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_7_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_8_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_9_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_address0 = zext_ln209_fu_1344_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign add_ln204_fu_1281_p2 = (ap_sig_allocacmp_tid + 7'd1);
assign add_ln210_fu_1363_p2 = ($signed(zext_ln172_22_reg_1752) + $signed(9'd264));
assign add_ln212_fu_1368_p2 = ($signed(zext_ln172_22_reg_1752) + $signed(9'd330));
assign add_ln213_fu_1373_p2 = ($signed(zext_ln172_21_reg_1746) + $signed(8'd132));
assign add_ln214_fu_1398_p2 = ($signed(zext_ln172_21_reg_1746) + $signed(8'd140));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_642 = ((trunc_ln172_reg_1863 == 4'd12) | ((trunc_ln172_reg_1863 == 4'd13) | ((trunc_ln172_reg_1863 == 4'd14) | (trunc_ln172_reg_1863 == 4'd15))));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1295_p0 = ap_sig_allocacmp_tid[5:0];
assign grp_fu_1295_p1 = 6'd13;
assign grp_fu_1682_p0 = grp_fu_1682_p00;
assign grp_fu_1682_p00 = offset_reg_1732_pp0_iter6_reg;
assign grp_fu_1682_p1 = 8'd66;
assign grp_fu_1682_p2 = 17'd316;
assign grp_fu_1691_p0 = grp_fu_1691_p00;
assign grp_fu_1691_p00 = offset_reg_1732_pp0_iter6_reg;
assign grp_fu_1691_p1 = 9'd198;
assign grp_fu_1691_p2 = 19'd631;
assign grp_fu_1700_p0 = grp_fu_1700_p00;
assign grp_fu_1700_p00 = offset_reg_1732_pp0_iter6_reg;
assign grp_fu_1700_p1 = 10'd462;
assign grp_fu_1700_p2 = 21'd1261;
assign icmp_ln204_fu_1275_p2 = ((ap_sig_allocacmp_tid == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_2_fu_1328_p0 = mul_ln172_2_fu_1328_p00;
assign mul_ln172_2_fu_1328_p00 = offset_reg_1732_pp0_iter6_reg;
assign mul_ln172_2_fu_1328_p1 = 13'd79;
assign mul_ln210_fu_1417_p0 = mul_ln210_fu_1417_p00;
assign mul_ln210_fu_1417_p00 = add_ln210_reg_1783;
assign mul_ln210_fu_1417_p1 = 19'd631;
assign mul_ln212_fu_1436_p0 = mul_ln212_fu_1436_p00;
assign mul_ln212_fu_1436_p00 = add_ln212_reg_1808;
assign mul_ln212_fu_1436_p1 = 19'd631;
assign mul_ln213_fu_1382_p0 = mul_ln213_fu_1382_p00;
assign mul_ln213_fu_1382_p00 = add_ln213_fu_1373_p2;
assign mul_ln213_fu_1382_p1 = 17'd316;
assign mul_ln214_fu_1459_p0 = mul_ln214_fu_1459_p00;
assign mul_ln214_fu_1459_p00 = $unsigned(sext_ln214_fu_1452_p1);
assign mul_ln214_fu_1459_p1 = 19'd631;
assign offset_fu_1291_p1 = ap_sig_allocacmp_tid[5:0];
assign select_ln209_fu_1407_p3 = ((trunc_ln204_reg_1720_pp0_iter8_reg[0:0] == 1'b1) ? DATA_y_8_q0 : DATA_y_q0);
assign select_ln210_fu_1475_p3 = ((trunc_ln204_reg_1720_pp0_iter8_reg[0:0] == 1'b1) ? DATA_y_9_q0 : DATA_y_1_q0);
assign select_ln211_fu_1482_p3 = ((trunc_ln204_reg_1720_pp0_iter8_reg[0:0] == 1'b1) ? DATA_y_12_q0 : DATA_y_4_q0);
assign select_ln212_fu_1489_p3 = ((trunc_ln204_reg_1720_pp0_iter8_reg[0:0] == 1'b1) ? DATA_y_13_q0 : DATA_y_5_q0);
assign select_ln213_fu_1496_p3 = ((trunc_ln204_reg_1720_pp0_iter8_reg[0:0] == 1'b1) ? DATA_y_10_q0 : DATA_y_2_q0);
assign select_ln214_fu_1503_p3 = ((trunc_ln204_reg_1720_pp0_iter8_reg[0:0] == 1'b1) ? DATA_y_11_q0 : DATA_y_3_q0);
assign select_ln215_fu_1510_p3 = ((trunc_ln204_reg_1720_pp0_iter8_reg[0:0] == 1'b1) ? DATA_y_14_q0 : DATA_y_6_q0);
assign select_ln216_fu_1517_p3 = ((trunc_ln204_reg_1720_pp0_iter8_reg[0:0] == 1'b1) ? DATA_y_15_q0 : DATA_y_7_q0);
assign sext_ln214_fu_1452_p1 = $signed(add_ln214_reg_1838);
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_d0 = smem_10_d0_local;
assign smem_10_we0 = smem_10_we0_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_11_d0 = smem_11_d0_local;
assign smem_11_we0 = smem_11_we0_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_ce0 = smem_12_ce0_local;
assign smem_12_d0 = smem_12_d0_local;
assign smem_12_we0 = smem_12_we0_local;
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_d0 = smem_4_d0_local;
assign smem_4_we0 = smem_4_we0_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_d0 = smem_5_d0_local;
assign smem_5_we0 = smem_5_we0_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_d0 = smem_6_d0_local;
assign smem_6_we0 = smem_6_we0_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_d0 = smem_7_d0_local;
assign smem_7_we0 = smem_7_we0_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_d0 = smem_8_d0_local;
assign smem_8_we0 = smem_8_we0_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_d0 = smem_9_d0_local;
assign smem_9_we0 = smem_9_we0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign tmp_124_fu_1556_p1 = grp_fu_1682_p3;
assign tmp_124_fu_1556_p4 = {{tmp_124_fu_1556_p1[16:12]}};
assign tmp_128_fu_1630_p1 = grp_fu_1691_p3;
assign tmp_128_fu_1630_p4 = {{tmp_128_fu_1630_p1[18:13]}};
assign tmp_129_fu_1656_p1 = grp_fu_1700_p3;
assign tmp_129_fu_1656_p4 = {{tmp_129_fu_1656_p1[20:14]}};
assign trunc_ln172_fu_1403_p1 = grp_fu_1295_p2[3:0];
assign trunc_ln204_fu_1287_p1 = ap_sig_allocacmp_tid[0:0];
assign zext_ln172_21_fu_1319_p1 = offset_reg_1732_pp0_iter6_reg;
assign zext_ln172_22_fu_1322_p1 = offset_reg_1732_pp0_iter6_reg;
assign zext_ln172_2_fu_1524_p1 = tmp_reg_1758_pp0_iter9_reg;
assign zext_ln209_fu_1344_p1 = lshr_ln3_reg_1741_pp0_iter7_reg;
assign zext_ln210_fu_1540_p1 = tmp_123_reg_1884;
assign zext_ln211_fu_1565_p1 = tmp_124_fu_1556_p4;
assign zext_ln212_fu_1582_p1 = tmp_125_reg_1889;
assign zext_ln213_fu_1598_p1 = tmp_126_reg_1823_pp0_iter9_reg;
assign zext_ln214_fu_1614_p1 = tmp_127_reg_1894;
assign zext_ln215_fu_1639_p1 = tmp_128_fu_1630_p4;
assign zext_ln216_fu_1665_p1 = tmp_129_fu_1656_p4;
always @ (posedge ap_clk) begin
    zext_ln172_21_reg_1746[7:6] <= 2'b00;
    zext_ln172_22_reg_1752[8:6] <= 3'b000;
end
endmodule 
