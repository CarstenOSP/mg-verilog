module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_13_address0,smem_13_ce0,smem_13_q0,smem_14_address0,smem_14_ce0,smem_14_q0,smem_15_address0,smem_15_ce0,smem_15_q0,smem_16_address0,smem_16_ce0,smem_16_q0,smem_17_address0,smem_17_ce0,smem_17_q0,smem_18_address0,smem_18_ce0,smem_18_q0,smem_19_address0,smem_19_ce0,smem_19_q0,smem_20_address0,smem_20_ce0,smem_20_q0,smem_21_address0,smem_21_ce0,smem_21_q0,smem_22_address0,smem_22_ce0,smem_22_q0,smem_23_address0,smem_23_ce0,smem_23_q0,smem_24_address0,smem_24_ce0,smem_24_q0); 
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
output  [5:0] smem_13_address0;
output   smem_13_ce0;
input  [63:0] smem_13_q0;
output  [5:0] smem_14_address0;
output   smem_14_ce0;
input  [63:0] smem_14_q0;
output  [5:0] smem_15_address0;
output   smem_15_ce0;
input  [63:0] smem_15_q0;
output  [5:0] smem_16_address0;
output   smem_16_ce0;
input  [63:0] smem_16_q0;
output  [5:0] smem_17_address0;
output   smem_17_ce0;
input  [63:0] smem_17_q0;
output  [5:0] smem_18_address0;
output   smem_18_ce0;
input  [63:0] smem_18_q0;
output  [5:0] smem_19_address0;
output   smem_19_ce0;
input  [63:0] smem_19_q0;
output  [5:0] smem_20_address0;
output   smem_20_ce0;
input  [63:0] smem_20_q0;
output  [5:0] smem_21_address0;
output   smem_21_ce0;
input  [63:0] smem_21_q0;
output  [5:0] smem_22_address0;
output   smem_22_ce0;
input  [63:0] smem_22_q0;
output  [5:0] smem_23_address0;
output   smem_23_ce0;
input  [63:0] smem_23_q0;
output  [5:0] smem_24_address0;
output   smem_24_ce0;
input  [63:0] smem_24_q0;
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
wire   [0:0] icmp_ln309_fu_1143_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_1986;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_1986_pp0_iter1_reg;
reg   [6:0] tid_2_reg_1986_pp0_iter2_reg;
reg   [6:0] tid_2_reg_1986_pp0_iter3_reg;
reg   [6:0] tid_2_reg_1986_pp0_iter4_reg;
reg   [6:0] tid_2_reg_1986_pp0_iter5_reg;
reg   [6:0] tid_2_reg_1986_pp0_iter6_reg;
reg   [6:0] tid_2_reg_1986_pp0_iter7_reg;
reg   [6:0] tid_2_reg_1986_pp0_iter8_reg;
reg   [6:0] tid_2_reg_1986_pp0_iter9_reg;
reg   [6:0] tid_2_reg_1986_pp0_iter10_reg;
reg   [6:0] tid_2_reg_1986_pp0_iter11_reg;
reg   [6:0] tid_2_reg_1986_pp0_iter12_reg;
reg   [6:0] tid_2_reg_1986_pp0_iter13_reg;
reg   [6:0] tid_2_reg_1986_pp0_iter14_reg;
wire   [8:0] offset_fu_1169_p3;
reg   [8:0] offset_reg_1996;
reg   [8:0] offset_reg_1996_pp0_iter1_reg;
reg   [8:0] offset_reg_1996_pp0_iter2_reg;
reg   [8:0] offset_reg_1996_pp0_iter3_reg;
reg   [8:0] offset_reg_1996_pp0_iter4_reg;
reg   [8:0] offset_reg_1996_pp0_iter5_reg;
reg   [8:0] offset_reg_1996_pp0_iter6_reg;
reg   [8:0] offset_reg_1996_pp0_iter7_reg;
reg   [8:0] offset_reg_1996_pp0_iter8_reg;
reg   [8:0] offset_reg_1996_pp0_iter9_reg;
reg   [5:0] tmp_19_reg_2003;
reg   [5:0] tmp_19_reg_2003_pp0_iter11_reg;
reg   [5:0] tmp_19_reg_2003_pp0_iter12_reg;
wire   [3:0] trunc_ln172_fu_1210_p1;
reg   [3:0] trunc_ln172_reg_2008;
reg   [3:0] trunc_ln172_reg_2008_pp0_iter13_reg;
wire   [63:0] tmp_s_fu_1412_p29;
reg   [63:0] tmp_s_reg_2540;
wire   [63:0] tmp_14_fu_1471_p29;
reg   [63:0] tmp_14_reg_2545;
wire   [63:0] tmp_15_fu_1530_p29;
reg   [63:0] tmp_15_reg_2550;
wire   [63:0] tmp_16_fu_1589_p29;
reg   [63:0] tmp_16_reg_2555;
wire   [63:0] tmp_17_fu_1648_p29;
reg   [63:0] tmp_17_reg_2560;
wire   [63:0] tmp_18_fu_1707_p29;
reg   [63:0] tmp_18_reg_2565;
wire   [63:0] tmp_27_fu_1766_p29;
reg   [63:0] tmp_27_reg_2570;
wire   [63:0] tmp_28_fu_1825_p29;
reg   [63:0] tmp_28_reg_2575;
wire   [63:0] zext_ln172_4_fu_1214_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_fu_1239_p1;
wire   [63:0] zext_ln316_fu_1265_p1;
wire   [63:0] zext_ln317_fu_1291_p1;
wire   [63:0] zext_ln318_fu_1317_p1;
wire   [63:0] zext_ln319_fu_1343_p1;
wire   [63:0] zext_ln320_fu_1369_p1;
wire   [63:0] zext_ln321_fu_1395_p1;
wire   [63:0] zext_ln314_fu_1892_p1;
wire   [63:0] zext_ln315_1_fu_1908_p1;
reg   [6:0] tid_fu_134;
wire   [6:0] add_ln309_fu_1149_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_13_ce0_local;
reg   [5:0] smem_13_address0_local;
reg    smem_14_ce0_local;
reg   [5:0] smem_14_address0_local;
reg    smem_15_ce0_local;
reg   [5:0] smem_15_address0_local;
reg    smem_16_ce0_local;
reg   [5:0] smem_16_address0_local;
reg    smem_17_ce0_local;
reg   [5:0] smem_17_address0_local;
reg    smem_18_ce0_local;
reg   [5:0] smem_18_address0_local;
reg    smem_19_ce0_local;
reg   [5:0] smem_19_address0_local;
reg    smem_20_ce0_local;
reg   [5:0] smem_20_address0_local;
reg    smem_21_ce0_local;
reg   [5:0] smem_21_address0_local;
reg    smem_22_ce0_local;
reg   [5:0] smem_22_address0_local;
reg    smem_23_ce0_local;
reg   [5:0] smem_23_address0_local;
reg    smem_24_ce0_local;
reg   [5:0] smem_24_address0_local;
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
wire   [2:0] tmp_fu_1155_p4;
wire   [5:0] trunc_ln312_fu_1165_p1;
wire   [8:0] grp_fu_1177_p0;
wire   [4:0] grp_fu_1177_p1;
wire   [8:0] mul_ln172_fu_1194_p0;
wire   [10:0] mul_ln172_fu_1194_p1;
wire   [18:0] mul_ln172_fu_1194_p2;
wire   [3:0] grp_fu_1177_p2;
wire   [20:0] tmp_20_fu_1230_p1;
wire  signed [20:0] grp_fu_1916_p3;
wire   [6:0] tmp_20_fu_1230_p4;
wire   [20:0] tmp_21_fu_1256_p1;
wire  signed [20:0] grp_fu_1925_p3;
wire   [6:0] tmp_21_fu_1256_p4;
wire   [20:0] tmp_22_fu_1282_p1;
wire  signed [20:0] grp_fu_1934_p3;
wire   [6:0] tmp_22_fu_1282_p4;
wire   [20:0] tmp_23_fu_1308_p1;
wire  signed [20:0] grp_fu_1943_p3;
wire   [6:0] tmp_23_fu_1308_p4;
wire   [20:0] tmp_24_fu_1334_p1;
wire  signed [20:0] grp_fu_1952_p3;
wire   [6:0] tmp_24_fu_1334_p4;
wire   [20:0] tmp_25_fu_1360_p1;
wire  signed [20:0] grp_fu_1961_p3;
wire   [6:0] tmp_25_fu_1360_p4;
wire   [20:0] tmp_26_fu_1386_p1;
wire  signed [20:0] grp_fu_1970_p3;
wire   [6:0] tmp_26_fu_1386_p4;
wire   [63:0] tmp_s_fu_1412_p27;
wire   [63:0] tmp_14_fu_1471_p27;
wire   [63:0] tmp_15_fu_1530_p27;
wire   [63:0] tmp_16_fu_1589_p27;
wire   [63:0] tmp_17_fu_1648_p27;
wire   [63:0] tmp_18_fu_1707_p27;
wire   [63:0] tmp_27_fu_1766_p27;
wire   [63:0] tmp_28_fu_1825_p27;
wire   [6:0] shl_ln314_fu_1887_p2;
wire   [5:0] trunc_ln314_fu_1884_p1;
wire   [6:0] or_ln9_fu_1900_p3;
wire   [8:0] grp_fu_1916_p0;
wire   [9:0] zext_ln172_fu_1188_p1;
wire   [5:0] grp_fu_1916_p1;
wire   [10:0] grp_fu_1916_p2;
wire   [8:0] grp_fu_1925_p0;
wire   [3:0] grp_fu_1925_p1;
wire   [10:0] grp_fu_1925_p2;
wire   [8:0] grp_fu_1934_p0;
wire   [5:0] grp_fu_1934_p1;
wire   [10:0] grp_fu_1934_p2;
wire   [8:0] grp_fu_1943_p0;
wire   [4:0] grp_fu_1943_p1;
wire   [10:0] grp_fu_1943_p2;
wire   [8:0] grp_fu_1952_p0;
wire   [5:0] grp_fu_1952_p1;
wire   [10:0] grp_fu_1952_p2;
wire   [8:0] grp_fu_1961_p0;
wire   [4:0] grp_fu_1961_p1;
wire   [10:0] grp_fu_1961_p2;
wire   [8:0] grp_fu_1970_p0;
wire   [5:0] grp_fu_1970_p1;
wire   [10:0] grp_fu_1970_p2;
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
wire   [18:0] mul_ln172_fu_1194_p00;
wire   [3:0] tmp_s_fu_1412_p1;
wire   [3:0] tmp_s_fu_1412_p3;
wire   [3:0] tmp_s_fu_1412_p5;
wire   [3:0] tmp_s_fu_1412_p7;
wire   [3:0] tmp_s_fu_1412_p9;
wire   [3:0] tmp_s_fu_1412_p11;
wire   [3:0] tmp_s_fu_1412_p13;
wire   [3:0] tmp_s_fu_1412_p15;
wire  signed [3:0] tmp_s_fu_1412_p17;
wire  signed [3:0] tmp_s_fu_1412_p19;
wire  signed [3:0] tmp_s_fu_1412_p21;
wire  signed [3:0] tmp_s_fu_1412_p23;
wire  signed [3:0] tmp_s_fu_1412_p25;
wire   [3:0] tmp_14_fu_1471_p1;
wire  signed [3:0] tmp_14_fu_1471_p3;
wire  signed [3:0] tmp_14_fu_1471_p5;
wire  signed [3:0] tmp_14_fu_1471_p7;
wire  signed [3:0] tmp_14_fu_1471_p9;
wire  signed [3:0] tmp_14_fu_1471_p11;
wire   [3:0] tmp_14_fu_1471_p13;
wire   [3:0] tmp_14_fu_1471_p15;
wire   [3:0] tmp_14_fu_1471_p17;
wire   [3:0] tmp_14_fu_1471_p19;
wire   [3:0] tmp_14_fu_1471_p21;
wire   [3:0] tmp_14_fu_1471_p23;
wire   [3:0] tmp_14_fu_1471_p25;
wire   [3:0] tmp_15_fu_1530_p1;
wire   [3:0] tmp_15_fu_1530_p3;
wire   [3:0] tmp_15_fu_1530_p5;
wire  signed [3:0] tmp_15_fu_1530_p7;
wire  signed [3:0] tmp_15_fu_1530_p9;
wire  signed [3:0] tmp_15_fu_1530_p11;
wire  signed [3:0] tmp_15_fu_1530_p13;
wire  signed [3:0] tmp_15_fu_1530_p15;
wire   [3:0] tmp_15_fu_1530_p17;
wire   [3:0] tmp_15_fu_1530_p19;
wire   [3:0] tmp_15_fu_1530_p21;
wire   [3:0] tmp_15_fu_1530_p23;
wire   [3:0] tmp_15_fu_1530_p25;
wire  signed [3:0] tmp_16_fu_1589_p1;
wire   [3:0] tmp_16_fu_1589_p3;
wire   [3:0] tmp_16_fu_1589_p5;
wire   [3:0] tmp_16_fu_1589_p7;
wire   [3:0] tmp_16_fu_1589_p9;
wire   [3:0] tmp_16_fu_1589_p11;
wire   [3:0] tmp_16_fu_1589_p13;
wire   [3:0] tmp_16_fu_1589_p15;
wire   [3:0] tmp_16_fu_1589_p17;
wire  signed [3:0] tmp_16_fu_1589_p19;
wire  signed [3:0] tmp_16_fu_1589_p21;
wire  signed [3:0] tmp_16_fu_1589_p23;
wire  signed [3:0] tmp_16_fu_1589_p25;
wire  signed [3:0] tmp_17_fu_1648_p1;
wire  signed [3:0] tmp_17_fu_1648_p3;
wire  signed [3:0] tmp_17_fu_1648_p5;
wire   [3:0] tmp_17_fu_1648_p7;
wire   [3:0] tmp_17_fu_1648_p9;
wire   [3:0] tmp_17_fu_1648_p11;
wire   [3:0] tmp_17_fu_1648_p13;
wire   [3:0] tmp_17_fu_1648_p15;
wire   [3:0] tmp_17_fu_1648_p17;
wire   [3:0] tmp_17_fu_1648_p19;
wire   [3:0] tmp_17_fu_1648_p21;
wire  signed [3:0] tmp_17_fu_1648_p23;
wire  signed [3:0] tmp_17_fu_1648_p25;
wire   [3:0] tmp_18_fu_1707_p1;
wire   [3:0] tmp_18_fu_1707_p3;
wire   [3:0] tmp_18_fu_1707_p5;
wire   [3:0] tmp_18_fu_1707_p7;
wire  signed [3:0] tmp_18_fu_1707_p9;
wire  signed [3:0] tmp_18_fu_1707_p11;
wire  signed [3:0] tmp_18_fu_1707_p13;
wire  signed [3:0] tmp_18_fu_1707_p15;
wire  signed [3:0] tmp_18_fu_1707_p17;
wire   [3:0] tmp_18_fu_1707_p19;
wire   [3:0] tmp_18_fu_1707_p21;
wire   [3:0] tmp_18_fu_1707_p23;
wire   [3:0] tmp_18_fu_1707_p25;
wire   [3:0] tmp_27_fu_1766_p1;
wire   [3:0] tmp_27_fu_1766_p3;
wire   [3:0] tmp_27_fu_1766_p5;
wire   [3:0] tmp_27_fu_1766_p7;
wire   [3:0] tmp_27_fu_1766_p9;
wire   [3:0] tmp_27_fu_1766_p11;
wire  signed [3:0] tmp_27_fu_1766_p13;
wire  signed [3:0] tmp_27_fu_1766_p15;
wire  signed [3:0] tmp_27_fu_1766_p17;
wire  signed [3:0] tmp_27_fu_1766_p19;
wire  signed [3:0] tmp_27_fu_1766_p21;
wire   [3:0] tmp_27_fu_1766_p23;
wire   [3:0] tmp_27_fu_1766_p25;
wire  signed [3:0] tmp_28_fu_1825_p1;
wire  signed [3:0] tmp_28_fu_1825_p3;
wire  signed [3:0] tmp_28_fu_1825_p5;
wire  signed [3:0] tmp_28_fu_1825_p7;
wire   [3:0] tmp_28_fu_1825_p9;
wire   [3:0] tmp_28_fu_1825_p11;
wire   [3:0] tmp_28_fu_1825_p13;
wire   [3:0] tmp_28_fu_1825_p15;
wire   [3:0] tmp_28_fu_1825_p17;
wire   [3:0] tmp_28_fu_1825_p19;
wire   [3:0] tmp_28_fu_1825_p21;
wire   [3:0] tmp_28_fu_1825_p23;
wire  signed [3:0] tmp_28_fu_1825_p25;
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
#0 tid_fu_134 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U229(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1177_p0),.din1(grp_fu_1177_p1),.ce(1'b1),.dout(grp_fu_1177_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U230(.din0(mul_ln172_fu_1194_p0),.din1(mul_ln172_fu_1194_p1),.dout(mul_ln172_fu_1194_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U231(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_s_fu_1412_p27),.sel(trunc_ln172_reg_2008_pp0_iter13_reg),.dout(tmp_s_fu_1412_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U232(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_14_fu_1471_p27),.sel(trunc_ln172_reg_2008_pp0_iter13_reg),.dout(tmp_14_fu_1471_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U233(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_15_fu_1530_p27),.sel(trunc_ln172_reg_2008_pp0_iter13_reg),.dout(tmp_15_fu_1530_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U234(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_16_fu_1589_p27),.sel(trunc_ln172_reg_2008_pp0_iter13_reg),.dout(tmp_16_fu_1589_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U235(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_17_fu_1648_p27),.sel(trunc_ln172_reg_2008_pp0_iter13_reg),.dout(tmp_17_fu_1648_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U236(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_18_fu_1707_p27),.sel(trunc_ln172_reg_2008_pp0_iter13_reg),.dout(tmp_18_fu_1707_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U237(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_27_fu_1766_p27),.sel(trunc_ln172_reg_2008_pp0_iter13_reg),.dout(tmp_27_fu_1766_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U238(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_28_fu_1825_p27),.sel(trunc_ln172_reg_2008_pp0_iter13_reg),.dout(tmp_28_fu_1825_p29));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U239(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1916_p0),.din1(grp_fu_1916_p1),.din2(grp_fu_1916_p2),.ce(1'b1),.dout(grp_fu_1916_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U240(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1925_p0),.din1(grp_fu_1925_p1),.din2(grp_fu_1925_p2),.ce(1'b1),.dout(grp_fu_1925_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U241(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1934_p0),.din1(grp_fu_1934_p1),.din2(grp_fu_1934_p2),.ce(1'b1),.dout(grp_fu_1934_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U242(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1943_p0),.din1(grp_fu_1943_p1),.din2(grp_fu_1943_p2),.ce(1'b1),.dout(grp_fu_1943_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U243(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1952_p0),.din1(grp_fu_1952_p1),.din2(grp_fu_1952_p2),.ce(1'b1),.dout(grp_fu_1952_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U244(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1961_p0),.din1(grp_fu_1961_p1),.din2(grp_fu_1961_p2),.ce(1'b1),.dout(grp_fu_1961_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U245(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1970_p0),.din1(grp_fu_1970_p1),.din2(grp_fu_1970_p2),.ce(1'b1),.dout(grp_fu_1970_p3));
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
        if (((icmp_ln309_fu_1143_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_fu_134 <= add_ln309_fu_1149_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_134 <= 7'd0;
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
        offset_reg_1996_pp0_iter2_reg <= offset_reg_1996_pp0_iter1_reg;
        offset_reg_1996_pp0_iter3_reg <= offset_reg_1996_pp0_iter2_reg;
        offset_reg_1996_pp0_iter4_reg <= offset_reg_1996_pp0_iter3_reg;
        offset_reg_1996_pp0_iter5_reg <= offset_reg_1996_pp0_iter4_reg;
        offset_reg_1996_pp0_iter6_reg <= offset_reg_1996_pp0_iter5_reg;
        offset_reg_1996_pp0_iter7_reg <= offset_reg_1996_pp0_iter6_reg;
        offset_reg_1996_pp0_iter8_reg <= offset_reg_1996_pp0_iter7_reg;
        offset_reg_1996_pp0_iter9_reg <= offset_reg_1996_pp0_iter8_reg;
        tid_2_reg_1986_pp0_iter10_reg <= tid_2_reg_1986_pp0_iter9_reg;
        tid_2_reg_1986_pp0_iter11_reg <= tid_2_reg_1986_pp0_iter10_reg;
        tid_2_reg_1986_pp0_iter12_reg <= tid_2_reg_1986_pp0_iter11_reg;
        tid_2_reg_1986_pp0_iter13_reg <= tid_2_reg_1986_pp0_iter12_reg;
        tid_2_reg_1986_pp0_iter14_reg <= tid_2_reg_1986_pp0_iter13_reg;
        tid_2_reg_1986_pp0_iter2_reg <= tid_2_reg_1986_pp0_iter1_reg;
        tid_2_reg_1986_pp0_iter3_reg <= tid_2_reg_1986_pp0_iter2_reg;
        tid_2_reg_1986_pp0_iter4_reg <= tid_2_reg_1986_pp0_iter3_reg;
        tid_2_reg_1986_pp0_iter5_reg <= tid_2_reg_1986_pp0_iter4_reg;
        tid_2_reg_1986_pp0_iter6_reg <= tid_2_reg_1986_pp0_iter5_reg;
        tid_2_reg_1986_pp0_iter7_reg <= tid_2_reg_1986_pp0_iter6_reg;
        tid_2_reg_1986_pp0_iter8_reg <= tid_2_reg_1986_pp0_iter7_reg;
        tid_2_reg_1986_pp0_iter9_reg <= tid_2_reg_1986_pp0_iter8_reg;
        tmp_14_reg_2545 <= tmp_14_fu_1471_p29;
        tmp_15_reg_2550 <= tmp_15_fu_1530_p29;
        tmp_16_reg_2555 <= tmp_16_fu_1589_p29;
        tmp_17_reg_2560 <= tmp_17_fu_1648_p29;
        tmp_18_reg_2565 <= tmp_18_fu_1707_p29;
        tmp_19_reg_2003 <= {{mul_ln172_fu_1194_p2[18:13]}};
        tmp_19_reg_2003_pp0_iter11_reg <= tmp_19_reg_2003;
        tmp_19_reg_2003_pp0_iter12_reg <= tmp_19_reg_2003_pp0_iter11_reg;
        tmp_27_reg_2570 <= tmp_27_fu_1766_p29;
        tmp_28_reg_2575 <= tmp_28_fu_1825_p29;
        tmp_s_reg_2540 <= tmp_s_fu_1412_p29;
        trunc_ln172_reg_2008 <= trunc_ln172_fu_1210_p1;
        trunc_ln172_reg_2008_pp0_iter13_reg <= trunc_ln172_reg_2008;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        offset_reg_1996 <= offset_fu_1169_p3;
        offset_reg_1996_pp0_iter1_reg <= offset_reg_1996;
        tid_2_reg_1986 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_1986_pp0_iter1_reg <= tid_2_reg_1986;
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
    if (((icmp_ln309_fu_1143_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_tid_2 = tid_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2008 == 4'd10)) begin
            smem_13_address0_local = zext_ln321_fu_1395_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd3)) begin
            smem_13_address0_local = zext_ln320_fu_1369_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd5)) begin
            smem_13_address0_local = zext_ln319_fu_1343_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd11)) begin
            smem_13_address0_local = zext_ln318_fu_1317_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd0)) begin
            smem_13_address0_local = zext_ln317_fu_1291_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd6)) begin
            smem_13_address0_local = zext_ln316_fu_1265_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd8)) begin
            smem_13_address0_local = zext_ln315_fu_1239_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd1)) begin
            smem_13_address0_local = zext_ln172_4_fu_1214_p1;
        end else begin
            smem_13_address0_local = 'bx;
        end
    end else begin
        smem_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd0)))) begin
        smem_13_ce0_local = 1'b1;
    end else begin
        smem_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2008 == 4'd11)) begin
            smem_14_address0_local = zext_ln321_fu_1395_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd4)) begin
            smem_14_address0_local = zext_ln320_fu_1369_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd6)) begin
            smem_14_address0_local = zext_ln319_fu_1343_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd12)) begin
            smem_14_address0_local = zext_ln318_fu_1317_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd1)) begin
            smem_14_address0_local = zext_ln317_fu_1291_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd7)) begin
            smem_14_address0_local = zext_ln316_fu_1265_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd9)) begin
            smem_14_address0_local = zext_ln315_fu_1239_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd2)) begin
            smem_14_address0_local = zext_ln172_4_fu_1214_p1;
        end else begin
            smem_14_address0_local = 'bx;
        end
    end else begin
        smem_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd1)))) begin
        smem_14_ce0_local = 1'b1;
    end else begin
        smem_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2008 == 4'd12)) begin
            smem_15_address0_local = zext_ln321_fu_1395_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd5)) begin
            smem_15_address0_local = zext_ln320_fu_1369_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd7)) begin
            smem_15_address0_local = zext_ln319_fu_1343_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd0)) begin
            smem_15_address0_local = zext_ln318_fu_1317_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd2)) begin
            smem_15_address0_local = zext_ln317_fu_1291_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd8)) begin
            smem_15_address0_local = zext_ln316_fu_1265_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd10)) begin
            smem_15_address0_local = zext_ln315_fu_1239_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd3)) begin
            smem_15_address0_local = zext_ln172_4_fu_1214_p1;
        end else begin
            smem_15_address0_local = 'bx;
        end
    end else begin
        smem_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd0)))) begin
        smem_15_ce0_local = 1'b1;
    end else begin
        smem_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2008 == 4'd0)) begin
            smem_16_address0_local = zext_ln321_fu_1395_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd6)) begin
            smem_16_address0_local = zext_ln320_fu_1369_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd8)) begin
            smem_16_address0_local = zext_ln319_fu_1343_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd1)) begin
            smem_16_address0_local = zext_ln318_fu_1317_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd3)) begin
            smem_16_address0_local = zext_ln317_fu_1291_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd9)) begin
            smem_16_address0_local = zext_ln316_fu_1265_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd11)) begin
            smem_16_address0_local = zext_ln315_fu_1239_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd4)) begin
            smem_16_address0_local = zext_ln172_4_fu_1214_p1;
        end else begin
            smem_16_address0_local = 'bx;
        end
    end else begin
        smem_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd0)))) begin
        smem_16_ce0_local = 1'b1;
    end else begin
        smem_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2008 == 4'd1)) begin
            smem_17_address0_local = zext_ln321_fu_1395_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd7)) begin
            smem_17_address0_local = zext_ln320_fu_1369_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd9)) begin
            smem_17_address0_local = zext_ln319_fu_1343_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd2)) begin
            smem_17_address0_local = zext_ln318_fu_1317_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd4)) begin
            smem_17_address0_local = zext_ln317_fu_1291_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd10)) begin
            smem_17_address0_local = zext_ln316_fu_1265_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd12)) begin
            smem_17_address0_local = zext_ln315_fu_1239_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd5)) begin
            smem_17_address0_local = zext_ln172_4_fu_1214_p1;
        end else begin
            smem_17_address0_local = 'bx;
        end
    end else begin
        smem_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd1)))) begin
        smem_17_ce0_local = 1'b1;
    end else begin
        smem_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2008 == 4'd2)) begin
            smem_18_address0_local = zext_ln321_fu_1395_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd8)) begin
            smem_18_address0_local = zext_ln320_fu_1369_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd10)) begin
            smem_18_address0_local = zext_ln319_fu_1343_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd3)) begin
            smem_18_address0_local = zext_ln318_fu_1317_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd5)) begin
            smem_18_address0_local = zext_ln317_fu_1291_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd11)) begin
            smem_18_address0_local = zext_ln316_fu_1265_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd0)) begin
            smem_18_address0_local = zext_ln315_fu_1239_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd6)) begin
            smem_18_address0_local = zext_ln172_4_fu_1214_p1;
        end else begin
            smem_18_address0_local = 'bx;
        end
    end else begin
        smem_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd0)))) begin
        smem_18_ce0_local = 1'b1;
    end else begin
        smem_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2008 == 4'd3)) begin
            smem_19_address0_local = zext_ln321_fu_1395_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd9)) begin
            smem_19_address0_local = zext_ln320_fu_1369_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd11)) begin
            smem_19_address0_local = zext_ln319_fu_1343_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd4)) begin
            smem_19_address0_local = zext_ln318_fu_1317_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd6)) begin
            smem_19_address0_local = zext_ln317_fu_1291_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd12)) begin
            smem_19_address0_local = zext_ln316_fu_1265_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd1)) begin
            smem_19_address0_local = zext_ln315_fu_1239_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd7)) begin
            smem_19_address0_local = zext_ln172_4_fu_1214_p1;
        end else begin
            smem_19_address0_local = 'bx;
        end
    end else begin
        smem_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd1)))) begin
        smem_19_ce0_local = 1'b1;
    end else begin
        smem_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2008 == 4'd4)) begin
            smem_20_address0_local = zext_ln321_fu_1395_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd10)) begin
            smem_20_address0_local = zext_ln320_fu_1369_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd12)) begin
            smem_20_address0_local = zext_ln319_fu_1343_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd5)) begin
            smem_20_address0_local = zext_ln318_fu_1317_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd7)) begin
            smem_20_address0_local = zext_ln317_fu_1291_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd0)) begin
            smem_20_address0_local = zext_ln316_fu_1265_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd2)) begin
            smem_20_address0_local = zext_ln315_fu_1239_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd8)) begin
            smem_20_address0_local = zext_ln172_4_fu_1214_p1;
        end else begin
            smem_20_address0_local = 'bx;
        end
    end else begin
        smem_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd0)))) begin
        smem_20_ce0_local = 1'b1;
    end else begin
        smem_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2008 == 4'd5)) begin
            smem_21_address0_local = zext_ln321_fu_1395_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd11)) begin
            smem_21_address0_local = zext_ln320_fu_1369_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd0)) begin
            smem_21_address0_local = zext_ln319_fu_1343_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd6)) begin
            smem_21_address0_local = zext_ln318_fu_1317_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd8)) begin
            smem_21_address0_local = zext_ln317_fu_1291_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd1)) begin
            smem_21_address0_local = zext_ln316_fu_1265_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd3)) begin
            smem_21_address0_local = zext_ln315_fu_1239_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd9)) begin
            smem_21_address0_local = zext_ln172_4_fu_1214_p1;
        end else begin
            smem_21_address0_local = 'bx;
        end
    end else begin
        smem_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd0)))) begin
        smem_21_ce0_local = 1'b1;
    end else begin
        smem_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2008 == 4'd6)) begin
            smem_22_address0_local = zext_ln321_fu_1395_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd12)) begin
            smem_22_address0_local = zext_ln320_fu_1369_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd1)) begin
            smem_22_address0_local = zext_ln319_fu_1343_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd7)) begin
            smem_22_address0_local = zext_ln318_fu_1317_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd9)) begin
            smem_22_address0_local = zext_ln317_fu_1291_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd2)) begin
            smem_22_address0_local = zext_ln316_fu_1265_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd4)) begin
            smem_22_address0_local = zext_ln315_fu_1239_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd10)) begin
            smem_22_address0_local = zext_ln172_4_fu_1214_p1;
        end else begin
            smem_22_address0_local = 'bx;
        end
    end else begin
        smem_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd1)))) begin
        smem_22_ce0_local = 1'b1;
    end else begin
        smem_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2008 == 4'd7)) begin
            smem_23_address0_local = zext_ln321_fu_1395_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd0)) begin
            smem_23_address0_local = zext_ln320_fu_1369_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd2)) begin
            smem_23_address0_local = zext_ln319_fu_1343_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd8)) begin
            smem_23_address0_local = zext_ln318_fu_1317_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd10)) begin
            smem_23_address0_local = zext_ln317_fu_1291_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd3)) begin
            smem_23_address0_local = zext_ln316_fu_1265_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd5)) begin
            smem_23_address0_local = zext_ln315_fu_1239_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd11)) begin
            smem_23_address0_local = zext_ln172_4_fu_1214_p1;
        end else begin
            smem_23_address0_local = 'bx;
        end
    end else begin
        smem_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd0)))) begin
        smem_23_ce0_local = 1'b1;
    end else begin
        smem_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2008 == 4'd8)) begin
            smem_24_address0_local = zext_ln321_fu_1395_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd1)) begin
            smem_24_address0_local = zext_ln320_fu_1369_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd3)) begin
            smem_24_address0_local = zext_ln319_fu_1343_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd9)) begin
            smem_24_address0_local = zext_ln318_fu_1317_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd11)) begin
            smem_24_address0_local = zext_ln317_fu_1291_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd4)) begin
            smem_24_address0_local = zext_ln316_fu_1265_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd6)) begin
            smem_24_address0_local = zext_ln315_fu_1239_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd12)) begin
            smem_24_address0_local = zext_ln172_4_fu_1214_p1;
        end else begin
            smem_24_address0_local = 'bx;
        end
    end else begin
        smem_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd1)))) begin
        smem_24_ce0_local = 1'b1;
    end else begin
        smem_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2008 == 4'd9)) begin
            smem_address0_local = zext_ln321_fu_1395_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd2)) begin
            smem_address0_local = zext_ln320_fu_1369_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd4)) begin
            smem_address0_local = zext_ln319_fu_1343_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd10)) begin
            smem_address0_local = zext_ln318_fu_1317_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd12)) begin
            smem_address0_local = zext_ln317_fu_1291_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd5)) begin
            smem_address0_local = zext_ln316_fu_1265_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd7)) begin
            smem_address0_local = zext_ln315_fu_1239_p1;
        end else if ((trunc_ln172_reg_2008 == 4'd0)) begin
            smem_address0_local = zext_ln172_4_fu_1214_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2008 == 4'd0)))) begin
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
assign DATA_x_1_address0 = zext_ln315_1_fu_1908_p1;
assign DATA_x_1_address1 = zext_ln314_fu_1892_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = tmp_16_reg_2555;
assign DATA_x_1_d1 = tmp_15_reg_2550;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_2_address0 = zext_ln315_1_fu_1908_p1;
assign DATA_x_2_address1 = zext_ln314_fu_1892_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_2_d0 = tmp_18_reg_2565;
assign DATA_x_2_d1 = tmp_17_reg_2560;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_2_we1 = DATA_x_2_we1_local;
assign DATA_x_3_address0 = zext_ln315_1_fu_1908_p1;
assign DATA_x_3_address1 = zext_ln314_fu_1892_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_3_d0 = tmp_28_reg_2575;
assign DATA_x_3_d1 = tmp_27_reg_2570;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_3_we1 = DATA_x_3_we1_local;
assign DATA_x_address0 = zext_ln315_1_fu_1908_p1;
assign DATA_x_address1 = zext_ln314_fu_1892_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = tmp_14_reg_2545;
assign DATA_x_d1 = tmp_s_reg_2540;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_1149_p2 = (ap_sig_allocacmp_tid_2 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1177_p0 = {{tmp_fu_1155_p4}, {trunc_ln312_fu_1165_p1}};
assign grp_fu_1177_p1 = 9'd13;
assign grp_fu_1916_p0 = zext_ln172_fu_1188_p1;
assign grp_fu_1916_p1 = 10'd32;
assign grp_fu_1916_p2 = 21'd1261;
assign grp_fu_1925_p0 = zext_ln172_fu_1188_p1;
assign grp_fu_1925_p1 = 10'd8;
assign grp_fu_1925_p2 = 21'd1261;
assign grp_fu_1934_p0 = zext_ln172_fu_1188_p1;
assign grp_fu_1934_p1 = 10'd40;
assign grp_fu_1934_p2 = 21'd1261;
assign grp_fu_1943_p0 = zext_ln172_fu_1188_p1;
assign grp_fu_1943_p1 = 10'd16;
assign grp_fu_1943_p2 = 21'd1261;
assign grp_fu_1952_p0 = zext_ln172_fu_1188_p1;
assign grp_fu_1952_p1 = 10'd48;
assign grp_fu_1952_p2 = 21'd1261;
assign grp_fu_1961_p0 = zext_ln172_fu_1188_p1;
assign grp_fu_1961_p1 = 10'd24;
assign grp_fu_1961_p2 = 21'd1261;
assign grp_fu_1970_p0 = zext_ln172_fu_1188_p1;
assign grp_fu_1970_p1 = 10'd56;
assign grp_fu_1970_p2 = 21'd1261;
assign icmp_ln309_fu_1143_p2 = ((ap_sig_allocacmp_tid_2 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_fu_1194_p0 = mul_ln172_fu_1194_p00;
assign mul_ln172_fu_1194_p00 = offset_reg_1996_pp0_iter9_reg;
assign mul_ln172_fu_1194_p1 = 19'd631;
assign offset_fu_1169_p3 = {{tmp_fu_1155_p4}, {trunc_ln312_fu_1165_p1}};
assign or_ln9_fu_1900_p3 = {{trunc_ln314_fu_1884_p1}, {1'd1}};
assign shl_ln314_fu_1887_p2 = tid_2_reg_1986_pp0_iter14_reg << 7'd1;
assign smem_13_address0 = smem_13_address0_local;
assign smem_13_ce0 = smem_13_ce0_local;
assign smem_14_address0 = smem_14_address0_local;
assign smem_14_ce0 = smem_14_ce0_local;
assign smem_15_address0 = smem_15_address0_local;
assign smem_15_ce0 = smem_15_ce0_local;
assign smem_16_address0 = smem_16_address0_local;
assign smem_16_ce0 = smem_16_ce0_local;
assign smem_17_address0 = smem_17_address0_local;
assign smem_17_ce0 = smem_17_ce0_local;
assign smem_18_address0 = smem_18_address0_local;
assign smem_18_ce0 = smem_18_ce0_local;
assign smem_19_address0 = smem_19_address0_local;
assign smem_19_ce0 = smem_19_ce0_local;
assign smem_20_address0 = smem_20_address0_local;
assign smem_20_ce0 = smem_20_ce0_local;
assign smem_21_address0 = smem_21_address0_local;
assign smem_21_ce0 = smem_21_ce0_local;
assign smem_22_address0 = smem_22_address0_local;
assign smem_22_ce0 = smem_22_ce0_local;
assign smem_23_address0 = smem_23_address0_local;
assign smem_23_ce0 = smem_23_ce0_local;
assign smem_24_address0 = smem_24_address0_local;
assign smem_24_ce0 = smem_24_ce0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign tmp_14_fu_1471_p27 = 'bx;
assign tmp_15_fu_1530_p27 = 'bx;
assign tmp_16_fu_1589_p27 = 'bx;
assign tmp_17_fu_1648_p27 = 'bx;
assign tmp_18_fu_1707_p27 = 'bx;
assign tmp_20_fu_1230_p1 = grp_fu_1916_p3;
assign tmp_20_fu_1230_p4 = {{tmp_20_fu_1230_p1[20:14]}};
assign tmp_21_fu_1256_p1 = grp_fu_1925_p3;
assign tmp_21_fu_1256_p4 = {{tmp_21_fu_1256_p1[20:14]}};
assign tmp_22_fu_1282_p1 = grp_fu_1934_p3;
assign tmp_22_fu_1282_p4 = {{tmp_22_fu_1282_p1[20:14]}};
assign tmp_23_fu_1308_p1 = grp_fu_1943_p3;
assign tmp_23_fu_1308_p4 = {{tmp_23_fu_1308_p1[20:14]}};
assign tmp_24_fu_1334_p1 = grp_fu_1952_p3;
assign tmp_24_fu_1334_p4 = {{tmp_24_fu_1334_p1[20:14]}};
assign tmp_25_fu_1360_p1 = grp_fu_1961_p3;
assign tmp_25_fu_1360_p4 = {{tmp_25_fu_1360_p1[20:14]}};
assign tmp_26_fu_1386_p1 = grp_fu_1970_p3;
assign tmp_26_fu_1386_p4 = {{tmp_26_fu_1386_p1[20:14]}};
assign tmp_27_fu_1766_p27 = 'bx;
assign tmp_28_fu_1825_p27 = 'bx;
assign tmp_fu_1155_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_s_fu_1412_p27 = 'bx;
assign trunc_ln172_fu_1210_p1 = grp_fu_1177_p2[3:0];
assign trunc_ln312_fu_1165_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_1884_p1 = tid_2_reg_1986_pp0_iter14_reg[5:0];
assign zext_ln172_4_fu_1214_p1 = tmp_19_reg_2003_pp0_iter12_reg;
assign zext_ln172_fu_1188_p1 = offset_reg_1996_pp0_iter9_reg;
assign zext_ln314_fu_1892_p1 = shl_ln314_fu_1887_p2;
assign zext_ln315_1_fu_1908_p1 = or_ln9_fu_1900_p3;
assign zext_ln315_fu_1239_p1 = tmp_20_fu_1230_p4;
assign zext_ln316_fu_1265_p1 = tmp_21_fu_1256_p4;
assign zext_ln317_fu_1291_p1 = tmp_22_fu_1282_p4;
assign zext_ln318_fu_1317_p1 = tmp_23_fu_1308_p4;
assign zext_ln319_fu_1343_p1 = tmp_24_fu_1334_p4;
assign zext_ln320_fu_1369_p1 = tmp_25_fu_1360_p4;
assign zext_ln321_fu_1395_p1 = tmp_26_fu_1386_p4;
endmodule 