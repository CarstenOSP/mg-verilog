module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_8_address0,smem_8_ce0,smem_8_q0,smem_9_address0,smem_9_ce0,smem_9_q0,smem_10_address0,smem_10_ce0,smem_10_q0,smem_11_address0,smem_11_ce0,smem_11_q0,smem_12_address0,smem_12_ce0,smem_12_q0); 
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
output  [5:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [5:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
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
wire   [0:0] icmp_ln188_fu_1155_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_reg_2016;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_reg_2016_pp0_iter1_reg;
reg   [6:0] tid_reg_2016_pp0_iter2_reg;
reg   [6:0] tid_reg_2016_pp0_iter3_reg;
reg   [6:0] tid_reg_2016_pp0_iter4_reg;
reg   [6:0] tid_reg_2016_pp0_iter5_reg;
reg   [6:0] tid_reg_2016_pp0_iter6_reg;
reg   [6:0] tid_reg_2016_pp0_iter7_reg;
reg   [6:0] tid_reg_2016_pp0_iter8_reg;
reg   [6:0] tid_reg_2016_pp0_iter9_reg;
reg   [6:0] tid_reg_2016_pp0_iter10_reg;
reg   [6:0] tid_reg_2016_pp0_iter11_reg;
reg   [6:0] tid_reg_2016_pp0_iter12_reg;
reg   [6:0] tid_reg_2016_pp0_iter13_reg;
reg   [6:0] tid_reg_2016_pp0_iter14_reg;
wire   [8:0] offset_fu_1197_p2;
reg   [8:0] offset_reg_2025;
reg   [8:0] offset_reg_2025_pp0_iter1_reg;
reg   [8:0] offset_reg_2025_pp0_iter2_reg;
reg   [8:0] offset_reg_2025_pp0_iter3_reg;
reg   [8:0] offset_reg_2025_pp0_iter4_reg;
reg   [8:0] offset_reg_2025_pp0_iter5_reg;
reg   [8:0] offset_reg_2025_pp0_iter6_reg;
reg   [8:0] offset_reg_2025_pp0_iter7_reg;
reg   [8:0] offset_reg_2025_pp0_iter8_reg;
reg   [8:0] offset_reg_2025_pp0_iter9_reg;
reg   [8:0] offset_reg_2025_pp0_iter10_reg;
reg   [5:0] tmp_reg_2037;
reg   [5:0] tmp_reg_2037_pp0_iter12_reg;
wire   [8:0] add_ln194_fu_1236_p2;
reg   [8:0] add_ln194_reg_2042;
wire   [8:0] add_ln195_fu_1241_p2;
reg   [8:0] add_ln195_reg_2047;
wire   [8:0] add_ln196_fu_1246_p2;
reg   [8:0] add_ln196_reg_2052;
wire   [8:0] add_ln197_fu_1251_p2;
reg   [8:0] add_ln197_reg_2057;
wire   [8:0] add_ln199_fu_1256_p2;
reg   [8:0] add_ln199_reg_2062;
wire   [3:0] trunc_ln172_fu_1261_p1;
reg   [3:0] trunc_ln172_reg_2067;
reg   [3:0] trunc_ln172_reg_2067_pp0_iter13_reg;
reg   [5:0] tmp_159_reg_2079;
reg   [5:0] tmp_160_reg_2084;
reg   [5:0] tmp_161_reg_2089;
reg   [5:0] tmp_162_reg_2094;
reg   [5:0] tmp_164_reg_2099;
wire   [63:0] tmp_29_fu_1508_p29;
reg   [63:0] tmp_29_reg_2624;
wire   [63:0] tmp_30_fu_1567_p29;
reg   [63:0] tmp_30_reg_2629;
wire   [63:0] tmp_31_fu_1626_p29;
reg   [63:0] tmp_31_reg_2634;
wire   [63:0] tmp_32_fu_1685_p29;
reg   [63:0] tmp_32_reg_2639;
wire   [63:0] tmp_33_fu_1744_p29;
reg   [63:0] tmp_33_reg_2644;
wire   [63:0] tmp_34_fu_1803_p29;
reg   [63:0] tmp_34_reg_2649;
wire   [63:0] tmp_35_fu_1862_p29;
reg   [63:0] tmp_35_reg_2654;
wire   [63:0] tmp_36_fu_1921_p29;
reg   [63:0] tmp_36_reg_2659;
wire   [63:0] zext_ln172_1_fu_1360_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_fu_1376_p1;
wire   [63:0] zext_ln195_fu_1392_p1;
wire   [63:0] zext_ln196_fu_1408_p1;
wire   [63:0] zext_ln197_fu_1424_p1;
wire   [63:0] zext_ln198_fu_1449_p1;
wire   [63:0] zext_ln199_fu_1466_p1;
wire   [63:0] zext_ln200_fu_1491_p1;
wire   [63:0] zext_ln188_fu_1980_p1;
reg   [6:0] tid_2_fu_142;
wire   [6:0] add_ln188_fu_1161_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
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
reg    smem_11_ce0_local;
reg   [5:0] smem_11_address0_local;
reg    smem_12_ce0_local;
reg   [5:0] smem_12_address0_local;
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
wire   [2:0] hi_fu_1167_p4;
wire   [2:0] trunc_ln191_fu_1181_p1;
wire   [8:0] mul_ln_fu_1185_p5;
wire   [8:0] zext_ln114_fu_1177_p1;
wire   [8:0] grp_fu_1203_p0;
wire   [4:0] grp_fu_1203_p1;
wire   [8:0] mul_ln172_1_fu_1220_p0;
wire   [10:0] mul_ln172_1_fu_1220_p1;
wire   [18:0] mul_ln172_1_fu_1220_p2;
wire   [3:0] grp_fu_1203_p2;
wire   [8:0] mul_ln194_fu_1268_p0;
wire   [10:0] mul_ln194_fu_1268_p1;
wire   [18:0] mul_ln194_fu_1268_p2;
wire   [8:0] mul_ln195_fu_1287_p0;
wire   [10:0] mul_ln195_fu_1287_p1;
wire   [18:0] mul_ln195_fu_1287_p2;
wire   [8:0] mul_ln196_fu_1306_p0;
wire   [10:0] mul_ln196_fu_1306_p1;
wire   [18:0] mul_ln196_fu_1306_p2;
wire   [8:0] mul_ln197_fu_1325_p0;
wire   [10:0] mul_ln197_fu_1325_p1;
wire   [18:0] mul_ln197_fu_1325_p2;
wire   [8:0] mul_ln199_fu_1344_p0;
wire   [10:0] mul_ln199_fu_1344_p1;
wire   [18:0] mul_ln199_fu_1344_p2;
wire   [20:0] tmp_163_fu_1440_p1;
wire  signed [20:0] grp_fu_1991_p3;
wire   [6:0] tmp_163_fu_1440_p4;
wire   [20:0] tmp_165_fu_1482_p1;
wire  signed [20:0] grp_fu_2000_p3;
wire   [6:0] tmp_165_fu_1482_p4;
wire   [63:0] tmp_29_fu_1508_p27;
wire   [63:0] tmp_30_fu_1567_p27;
wire   [63:0] tmp_31_fu_1626_p27;
wire   [63:0] tmp_32_fu_1685_p27;
wire   [63:0] tmp_33_fu_1744_p27;
wire   [63:0] tmp_34_fu_1803_p27;
wire   [63:0] tmp_35_fu_1862_p27;
wire   [63:0] tmp_36_fu_1921_p27;
wire   [8:0] grp_fu_1991_p0;
wire   [9:0] zext_ln172_15_fu_1214_p1;
wire   [5:0] grp_fu_1991_p1;
wire   [10:0] grp_fu_1991_p2;
wire   [8:0] grp_fu_2000_p0;
wire   [5:0] grp_fu_2000_p1;
wire   [10:0] grp_fu_2000_p2;
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
wire   [18:0] mul_ln172_1_fu_1220_p00;
wire   [18:0] mul_ln194_fu_1268_p00;
wire   [18:0] mul_ln195_fu_1287_p00;
wire   [18:0] mul_ln196_fu_1306_p00;
wire   [18:0] mul_ln197_fu_1325_p00;
wire   [18:0] mul_ln199_fu_1344_p00;
wire   [3:0] tmp_29_fu_1508_p1;
wire   [3:0] tmp_29_fu_1508_p3;
wire   [3:0] tmp_29_fu_1508_p5;
wire   [3:0] tmp_29_fu_1508_p7;
wire   [3:0] tmp_29_fu_1508_p9;
wire   [3:0] tmp_29_fu_1508_p11;
wire   [3:0] tmp_29_fu_1508_p13;
wire   [3:0] tmp_29_fu_1508_p15;
wire  signed [3:0] tmp_29_fu_1508_p17;
wire  signed [3:0] tmp_29_fu_1508_p19;
wire  signed [3:0] tmp_29_fu_1508_p21;
wire  signed [3:0] tmp_29_fu_1508_p23;
wire  signed [3:0] tmp_29_fu_1508_p25;
wire   [3:0] tmp_30_fu_1567_p1;
wire  signed [3:0] tmp_30_fu_1567_p3;
wire  signed [3:0] tmp_30_fu_1567_p5;
wire  signed [3:0] tmp_30_fu_1567_p7;
wire  signed [3:0] tmp_30_fu_1567_p9;
wire  signed [3:0] tmp_30_fu_1567_p11;
wire   [3:0] tmp_30_fu_1567_p13;
wire   [3:0] tmp_30_fu_1567_p15;
wire   [3:0] tmp_30_fu_1567_p17;
wire   [3:0] tmp_30_fu_1567_p19;
wire   [3:0] tmp_30_fu_1567_p21;
wire   [3:0] tmp_30_fu_1567_p23;
wire   [3:0] tmp_30_fu_1567_p25;
wire   [3:0] tmp_31_fu_1626_p1;
wire   [3:0] tmp_31_fu_1626_p3;
wire   [3:0] tmp_31_fu_1626_p5;
wire  signed [3:0] tmp_31_fu_1626_p7;
wire  signed [3:0] tmp_31_fu_1626_p9;
wire  signed [3:0] tmp_31_fu_1626_p11;
wire  signed [3:0] tmp_31_fu_1626_p13;
wire  signed [3:0] tmp_31_fu_1626_p15;
wire   [3:0] tmp_31_fu_1626_p17;
wire   [3:0] tmp_31_fu_1626_p19;
wire   [3:0] tmp_31_fu_1626_p21;
wire   [3:0] tmp_31_fu_1626_p23;
wire   [3:0] tmp_31_fu_1626_p25;
wire  signed [3:0] tmp_32_fu_1685_p1;
wire   [3:0] tmp_32_fu_1685_p3;
wire   [3:0] tmp_32_fu_1685_p5;
wire   [3:0] tmp_32_fu_1685_p7;
wire   [3:0] tmp_32_fu_1685_p9;
wire   [3:0] tmp_32_fu_1685_p11;
wire   [3:0] tmp_32_fu_1685_p13;
wire   [3:0] tmp_32_fu_1685_p15;
wire   [3:0] tmp_32_fu_1685_p17;
wire  signed [3:0] tmp_32_fu_1685_p19;
wire  signed [3:0] tmp_32_fu_1685_p21;
wire  signed [3:0] tmp_32_fu_1685_p23;
wire  signed [3:0] tmp_32_fu_1685_p25;
wire  signed [3:0] tmp_33_fu_1744_p1;
wire  signed [3:0] tmp_33_fu_1744_p3;
wire  signed [3:0] tmp_33_fu_1744_p5;
wire   [3:0] tmp_33_fu_1744_p7;
wire   [3:0] tmp_33_fu_1744_p9;
wire   [3:0] tmp_33_fu_1744_p11;
wire   [3:0] tmp_33_fu_1744_p13;
wire   [3:0] tmp_33_fu_1744_p15;
wire   [3:0] tmp_33_fu_1744_p17;
wire   [3:0] tmp_33_fu_1744_p19;
wire   [3:0] tmp_33_fu_1744_p21;
wire  signed [3:0] tmp_33_fu_1744_p23;
wire  signed [3:0] tmp_33_fu_1744_p25;
wire   [3:0] tmp_34_fu_1803_p1;
wire   [3:0] tmp_34_fu_1803_p3;
wire   [3:0] tmp_34_fu_1803_p5;
wire   [3:0] tmp_34_fu_1803_p7;
wire  signed [3:0] tmp_34_fu_1803_p9;
wire  signed [3:0] tmp_34_fu_1803_p11;
wire  signed [3:0] tmp_34_fu_1803_p13;
wire  signed [3:0] tmp_34_fu_1803_p15;
wire  signed [3:0] tmp_34_fu_1803_p17;
wire   [3:0] tmp_34_fu_1803_p19;
wire   [3:0] tmp_34_fu_1803_p21;
wire   [3:0] tmp_34_fu_1803_p23;
wire   [3:0] tmp_34_fu_1803_p25;
wire   [3:0] tmp_35_fu_1862_p1;
wire   [3:0] tmp_35_fu_1862_p3;
wire   [3:0] tmp_35_fu_1862_p5;
wire   [3:0] tmp_35_fu_1862_p7;
wire   [3:0] tmp_35_fu_1862_p9;
wire   [3:0] tmp_35_fu_1862_p11;
wire  signed [3:0] tmp_35_fu_1862_p13;
wire  signed [3:0] tmp_35_fu_1862_p15;
wire  signed [3:0] tmp_35_fu_1862_p17;
wire  signed [3:0] tmp_35_fu_1862_p19;
wire  signed [3:0] tmp_35_fu_1862_p21;
wire   [3:0] tmp_35_fu_1862_p23;
wire   [3:0] tmp_35_fu_1862_p25;
wire  signed [3:0] tmp_36_fu_1921_p1;
wire  signed [3:0] tmp_36_fu_1921_p3;
wire  signed [3:0] tmp_36_fu_1921_p5;
wire  signed [3:0] tmp_36_fu_1921_p7;
wire   [3:0] tmp_36_fu_1921_p9;
wire   [3:0] tmp_36_fu_1921_p11;
wire   [3:0] tmp_36_fu_1921_p13;
wire   [3:0] tmp_36_fu_1921_p15;
wire   [3:0] tmp_36_fu_1921_p17;
wire   [3:0] tmp_36_fu_1921_p19;
wire   [3:0] tmp_36_fu_1921_p21;
wire   [3:0] tmp_36_fu_1921_p23;
wire  signed [3:0] tmp_36_fu_1921_p25;
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
#0 tid_2_fu_142 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U95(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1203_p0),.din1(grp_fu_1203_p1),.ce(1'b1),.dout(grp_fu_1203_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U96(.din0(mul_ln172_1_fu_1220_p0),.din1(mul_ln172_1_fu_1220_p1),.dout(mul_ln172_1_fu_1220_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U97(.din0(mul_ln194_fu_1268_p0),.din1(mul_ln194_fu_1268_p1),.dout(mul_ln194_fu_1268_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U98(.din0(mul_ln195_fu_1287_p0),.din1(mul_ln195_fu_1287_p1),.dout(mul_ln195_fu_1287_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U99(.din0(mul_ln196_fu_1306_p0),.din1(mul_ln196_fu_1306_p1),.dout(mul_ln196_fu_1306_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U100(.din0(mul_ln197_fu_1325_p0),.din1(mul_ln197_fu_1325_p1),.dout(mul_ln197_fu_1325_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U101(.din0(mul_ln199_fu_1344_p0),.din1(mul_ln199_fu_1344_p1),.dout(mul_ln199_fu_1344_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U102(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_29_fu_1508_p27),.sel(trunc_ln172_reg_2067_pp0_iter13_reg),.dout(tmp_29_fu_1508_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U103(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_30_fu_1567_p27),.sel(trunc_ln172_reg_2067_pp0_iter13_reg),.dout(tmp_30_fu_1567_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U104(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_31_fu_1626_p27),.sel(trunc_ln172_reg_2067_pp0_iter13_reg),.dout(tmp_31_fu_1626_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U105(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_32_fu_1685_p27),.sel(trunc_ln172_reg_2067_pp0_iter13_reg),.dout(tmp_32_fu_1685_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U106(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_33_fu_1744_p27),.sel(trunc_ln172_reg_2067_pp0_iter13_reg),.dout(tmp_33_fu_1744_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U107(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_34_fu_1803_p27),.sel(trunc_ln172_reg_2067_pp0_iter13_reg),.dout(tmp_34_fu_1803_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U108(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_35_fu_1862_p27),.sel(trunc_ln172_reg_2067_pp0_iter13_reg),.dout(tmp_35_fu_1862_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U109(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.def(tmp_36_fu_1921_p27),.sel(trunc_ln172_reg_2067_pp0_iter13_reg),.dout(tmp_36_fu_1921_p29));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U110(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1991_p0),.din1(grp_fu_1991_p1),.din2(grp_fu_1991_p2),.ce(1'b1),.dout(grp_fu_1991_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U111(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2000_p0),.din1(grp_fu_2000_p1),.din2(grp_fu_2000_p2),.ce(1'b1),.dout(grp_fu_2000_p3));
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
        if (((icmp_ln188_fu_1155_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_2_fu_142 <= add_ln188_fu_1161_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_2_fu_142 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln194_reg_2042 <= add_ln194_fu_1236_p2;
        add_ln195_reg_2047 <= add_ln195_fu_1241_p2;
        add_ln196_reg_2052 <= add_ln196_fu_1246_p2;
        add_ln197_reg_2057 <= add_ln197_fu_1251_p2;
        add_ln199_reg_2062 <= add_ln199_fu_1256_p2;
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
        offset_reg_2025_pp0_iter10_reg <= offset_reg_2025_pp0_iter9_reg;
        offset_reg_2025_pp0_iter2_reg <= offset_reg_2025_pp0_iter1_reg;
        offset_reg_2025_pp0_iter3_reg <= offset_reg_2025_pp0_iter2_reg;
        offset_reg_2025_pp0_iter4_reg <= offset_reg_2025_pp0_iter3_reg;
        offset_reg_2025_pp0_iter5_reg <= offset_reg_2025_pp0_iter4_reg;
        offset_reg_2025_pp0_iter6_reg <= offset_reg_2025_pp0_iter5_reg;
        offset_reg_2025_pp0_iter7_reg <= offset_reg_2025_pp0_iter6_reg;
        offset_reg_2025_pp0_iter8_reg <= offset_reg_2025_pp0_iter7_reg;
        offset_reg_2025_pp0_iter9_reg <= offset_reg_2025_pp0_iter8_reg;
        tid_reg_2016_pp0_iter10_reg <= tid_reg_2016_pp0_iter9_reg;
        tid_reg_2016_pp0_iter11_reg <= tid_reg_2016_pp0_iter10_reg;
        tid_reg_2016_pp0_iter12_reg <= tid_reg_2016_pp0_iter11_reg;
        tid_reg_2016_pp0_iter13_reg <= tid_reg_2016_pp0_iter12_reg;
        tid_reg_2016_pp0_iter14_reg <= tid_reg_2016_pp0_iter13_reg;
        tid_reg_2016_pp0_iter2_reg <= tid_reg_2016_pp0_iter1_reg;
        tid_reg_2016_pp0_iter3_reg <= tid_reg_2016_pp0_iter2_reg;
        tid_reg_2016_pp0_iter4_reg <= tid_reg_2016_pp0_iter3_reg;
        tid_reg_2016_pp0_iter5_reg <= tid_reg_2016_pp0_iter4_reg;
        tid_reg_2016_pp0_iter6_reg <= tid_reg_2016_pp0_iter5_reg;
        tid_reg_2016_pp0_iter7_reg <= tid_reg_2016_pp0_iter6_reg;
        tid_reg_2016_pp0_iter8_reg <= tid_reg_2016_pp0_iter7_reg;
        tid_reg_2016_pp0_iter9_reg <= tid_reg_2016_pp0_iter8_reg;
        tmp_159_reg_2079 <= {{mul_ln194_fu_1268_p2[18:13]}};
        tmp_160_reg_2084 <= {{mul_ln195_fu_1287_p2[18:13]}};
        tmp_161_reg_2089 <= {{mul_ln196_fu_1306_p2[18:13]}};
        tmp_162_reg_2094 <= {{mul_ln197_fu_1325_p2[18:13]}};
        tmp_164_reg_2099 <= {{mul_ln199_fu_1344_p2[18:13]}};
        tmp_29_reg_2624 <= tmp_29_fu_1508_p29;
        tmp_30_reg_2629 <= tmp_30_fu_1567_p29;
        tmp_31_reg_2634 <= tmp_31_fu_1626_p29;
        tmp_32_reg_2639 <= tmp_32_fu_1685_p29;
        tmp_33_reg_2644 <= tmp_33_fu_1744_p29;
        tmp_34_reg_2649 <= tmp_34_fu_1803_p29;
        tmp_35_reg_2654 <= tmp_35_fu_1862_p29;
        tmp_36_reg_2659 <= tmp_36_fu_1921_p29;
        tmp_reg_2037 <= {{mul_ln172_1_fu_1220_p2[18:13]}};
        tmp_reg_2037_pp0_iter12_reg <= tmp_reg_2037;
        trunc_ln172_reg_2067 <= trunc_ln172_fu_1261_p1;
        trunc_ln172_reg_2067_pp0_iter13_reg <= trunc_ln172_reg_2067;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        offset_reg_2025 <= offset_fu_1197_p2;
        offset_reg_2025_pp0_iter1_reg <= offset_reg_2025;
        tid_reg_2016 <= ap_sig_allocacmp_tid;
        tid_reg_2016_pp0_iter1_reg <= tid_reg_2016;
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
    if (((icmp_ln188_fu_1155_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_2_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2067 == 4'd6)) begin
            smem_10_address0_local = zext_ln200_fu_1491_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd12)) begin
            smem_10_address0_local = zext_ln199_fu_1466_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd1)) begin
            smem_10_address0_local = zext_ln198_fu_1449_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd7)) begin
            smem_10_address0_local = zext_ln197_fu_1424_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd9)) begin
            smem_10_address0_local = zext_ln196_fu_1408_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd2)) begin
            smem_10_address0_local = zext_ln195_fu_1392_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd4)) begin
            smem_10_address0_local = zext_ln194_fu_1376_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd10)) begin
            smem_10_address0_local = zext_ln172_1_fu_1360_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2067 == 4'd7)) begin
            smem_11_address0_local = zext_ln200_fu_1491_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd0)) begin
            smem_11_address0_local = zext_ln199_fu_1466_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd2)) begin
            smem_11_address0_local = zext_ln198_fu_1449_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd8)) begin
            smem_11_address0_local = zext_ln197_fu_1424_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd10)) begin
            smem_11_address0_local = zext_ln196_fu_1408_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd3)) begin
            smem_11_address0_local = zext_ln195_fu_1392_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd5)) begin
            smem_11_address0_local = zext_ln194_fu_1376_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd11)) begin
            smem_11_address0_local = zext_ln172_1_fu_1360_p1;
        end else begin
            smem_11_address0_local = 'bx;
        end
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd0)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2067 == 4'd8)) begin
            smem_12_address0_local = zext_ln200_fu_1491_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd1)) begin
            smem_12_address0_local = zext_ln199_fu_1466_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd3)) begin
            smem_12_address0_local = zext_ln198_fu_1449_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd9)) begin
            smem_12_address0_local = zext_ln197_fu_1424_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd11)) begin
            smem_12_address0_local = zext_ln196_fu_1408_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd4)) begin
            smem_12_address0_local = zext_ln195_fu_1392_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd6)) begin
            smem_12_address0_local = zext_ln194_fu_1376_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd12)) begin
            smem_12_address0_local = zext_ln172_1_fu_1360_p1;
        end else begin
            smem_12_address0_local = 'bx;
        end
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2067 == 4'd10)) begin
            smem_1_address0_local = zext_ln200_fu_1491_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd3)) begin
            smem_1_address0_local = zext_ln199_fu_1466_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd5)) begin
            smem_1_address0_local = zext_ln198_fu_1449_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd11)) begin
            smem_1_address0_local = zext_ln197_fu_1424_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd0)) begin
            smem_1_address0_local = zext_ln196_fu_1408_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd6)) begin
            smem_1_address0_local = zext_ln195_fu_1392_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd8)) begin
            smem_1_address0_local = zext_ln194_fu_1376_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd1)) begin
            smem_1_address0_local = zext_ln172_1_fu_1360_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2067 == 4'd11)) begin
            smem_2_address0_local = zext_ln200_fu_1491_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd4)) begin
            smem_2_address0_local = zext_ln199_fu_1466_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd6)) begin
            smem_2_address0_local = zext_ln198_fu_1449_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd12)) begin
            smem_2_address0_local = zext_ln197_fu_1424_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd1)) begin
            smem_2_address0_local = zext_ln196_fu_1408_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd7)) begin
            smem_2_address0_local = zext_ln195_fu_1392_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd9)) begin
            smem_2_address0_local = zext_ln194_fu_1376_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd2)) begin
            smem_2_address0_local = zext_ln172_1_fu_1360_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2067 == 4'd12)) begin
            smem_3_address0_local = zext_ln200_fu_1491_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd5)) begin
            smem_3_address0_local = zext_ln199_fu_1466_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd7)) begin
            smem_3_address0_local = zext_ln198_fu_1449_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd0)) begin
            smem_3_address0_local = zext_ln197_fu_1424_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd2)) begin
            smem_3_address0_local = zext_ln196_fu_1408_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd8)) begin
            smem_3_address0_local = zext_ln195_fu_1392_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd10)) begin
            smem_3_address0_local = zext_ln194_fu_1376_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd3)) begin
            smem_3_address0_local = zext_ln172_1_fu_1360_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2067 == 4'd0)) begin
            smem_4_address0_local = zext_ln200_fu_1491_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd6)) begin
            smem_4_address0_local = zext_ln199_fu_1466_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd8)) begin
            smem_4_address0_local = zext_ln198_fu_1449_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd1)) begin
            smem_4_address0_local = zext_ln197_fu_1424_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd3)) begin
            smem_4_address0_local = zext_ln196_fu_1408_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd9)) begin
            smem_4_address0_local = zext_ln195_fu_1392_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd11)) begin
            smem_4_address0_local = zext_ln194_fu_1376_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd4)) begin
            smem_4_address0_local = zext_ln172_1_fu_1360_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2067 == 4'd1)) begin
            smem_5_address0_local = zext_ln200_fu_1491_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd7)) begin
            smem_5_address0_local = zext_ln199_fu_1466_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd9)) begin
            smem_5_address0_local = zext_ln198_fu_1449_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd2)) begin
            smem_5_address0_local = zext_ln197_fu_1424_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd4)) begin
            smem_5_address0_local = zext_ln196_fu_1408_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd10)) begin
            smem_5_address0_local = zext_ln195_fu_1392_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd12)) begin
            smem_5_address0_local = zext_ln194_fu_1376_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd5)) begin
            smem_5_address0_local = zext_ln172_1_fu_1360_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2067 == 4'd2)) begin
            smem_6_address0_local = zext_ln200_fu_1491_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd8)) begin
            smem_6_address0_local = zext_ln199_fu_1466_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd10)) begin
            smem_6_address0_local = zext_ln198_fu_1449_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd3)) begin
            smem_6_address0_local = zext_ln197_fu_1424_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd5)) begin
            smem_6_address0_local = zext_ln196_fu_1408_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd11)) begin
            smem_6_address0_local = zext_ln195_fu_1392_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd0)) begin
            smem_6_address0_local = zext_ln194_fu_1376_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd6)) begin
            smem_6_address0_local = zext_ln172_1_fu_1360_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd0)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2067 == 4'd3)) begin
            smem_7_address0_local = zext_ln200_fu_1491_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd9)) begin
            smem_7_address0_local = zext_ln199_fu_1466_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd11)) begin
            smem_7_address0_local = zext_ln198_fu_1449_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd4)) begin
            smem_7_address0_local = zext_ln197_fu_1424_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd6)) begin
            smem_7_address0_local = zext_ln196_fu_1408_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd12)) begin
            smem_7_address0_local = zext_ln195_fu_1392_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd1)) begin
            smem_7_address0_local = zext_ln194_fu_1376_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd7)) begin
            smem_7_address0_local = zext_ln172_1_fu_1360_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2067 == 4'd4)) begin
            smem_8_address0_local = zext_ln200_fu_1491_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd10)) begin
            smem_8_address0_local = zext_ln199_fu_1466_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd12)) begin
            smem_8_address0_local = zext_ln198_fu_1449_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd5)) begin
            smem_8_address0_local = zext_ln197_fu_1424_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd7)) begin
            smem_8_address0_local = zext_ln196_fu_1408_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd0)) begin
            smem_8_address0_local = zext_ln195_fu_1392_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd2)) begin
            smem_8_address0_local = zext_ln194_fu_1376_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd8)) begin
            smem_8_address0_local = zext_ln172_1_fu_1360_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd0)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2067 == 4'd5)) begin
            smem_9_address0_local = zext_ln200_fu_1491_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd11)) begin
            smem_9_address0_local = zext_ln199_fu_1466_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd0)) begin
            smem_9_address0_local = zext_ln198_fu_1449_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd6)) begin
            smem_9_address0_local = zext_ln197_fu_1424_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd8)) begin
            smem_9_address0_local = zext_ln196_fu_1408_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd1)) begin
            smem_9_address0_local = zext_ln195_fu_1392_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd3)) begin
            smem_9_address0_local = zext_ln194_fu_1376_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd9)) begin
            smem_9_address0_local = zext_ln172_1_fu_1360_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd0)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_2067 == 4'd9)) begin
            smem_address0_local = zext_ln200_fu_1491_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd2)) begin
            smem_address0_local = zext_ln199_fu_1466_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd4)) begin
            smem_address0_local = zext_ln198_fu_1449_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd10)) begin
            smem_address0_local = zext_ln197_fu_1424_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd12)) begin
            smem_address0_local = zext_ln196_fu_1408_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd5)) begin
            smem_address0_local = zext_ln195_fu_1392_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd7)) begin
            smem_address0_local = zext_ln194_fu_1376_p1;
        end else if ((trunc_ln172_reg_2067 == 4'd0)) begin
            smem_address0_local = zext_ln172_1_fu_1360_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_2067 == 4'd0)))) begin
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
assign DATA_x_1_address0 = zext_ln188_fu_1980_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_d0 = tmp_31_reg_2634;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_2_address0 = zext_ln188_fu_1980_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_d0 = tmp_33_reg_2644;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_3_address0 = zext_ln188_fu_1980_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_d0 = tmp_35_reg_2654;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_4_address0 = zext_ln188_fu_1980_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_d0 = tmp_30_reg_2629;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_5_address0 = zext_ln188_fu_1980_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_d0 = tmp_32_reg_2639;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_6_address0 = zext_ln188_fu_1980_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_d0 = tmp_34_reg_2649;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_7_address0 = zext_ln188_fu_1980_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_d0 = tmp_36_reg_2659;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_address0 = zext_ln188_fu_1980_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_d0 = tmp_29_reg_2624;
assign DATA_x_we0 = DATA_x_we0_local;
assign add_ln188_fu_1161_p2 = (ap_sig_allocacmp_tid + 7'd1);
assign add_ln194_fu_1236_p2 = (offset_reg_2025_pp0_iter10_reg + 9'd32);
assign add_ln195_fu_1241_p2 = (offset_reg_2025_pp0_iter10_reg + 9'd8);
assign add_ln196_fu_1246_p2 = (offset_reg_2025_pp0_iter10_reg + 9'd40);
assign add_ln197_fu_1251_p2 = (offset_reg_2025_pp0_iter10_reg + 9'd16);
assign add_ln199_fu_1256_p2 = (offset_reg_2025_pp0_iter10_reg + 9'd24);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1203_p0 = (mul_ln_fu_1185_p5 + zext_ln114_fu_1177_p1);
assign grp_fu_1203_p1 = 9'd13;
assign grp_fu_1991_p0 = zext_ln172_15_fu_1214_p1;
assign grp_fu_1991_p1 = 10'd48;
assign grp_fu_1991_p2 = 21'd1261;
assign grp_fu_2000_p0 = zext_ln172_15_fu_1214_p1;
assign grp_fu_2000_p1 = 10'd56;
assign grp_fu_2000_p2 = 21'd1261;
assign hi_fu_1167_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign icmp_ln188_fu_1155_p2 = ((ap_sig_allocacmp_tid == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_1_fu_1220_p0 = mul_ln172_1_fu_1220_p00;
assign mul_ln172_1_fu_1220_p00 = offset_reg_2025_pp0_iter10_reg;
assign mul_ln172_1_fu_1220_p1 = 19'd631;
assign mul_ln194_fu_1268_p0 = mul_ln194_fu_1268_p00;
assign mul_ln194_fu_1268_p00 = add_ln194_reg_2042;
assign mul_ln194_fu_1268_p1 = 19'd631;
assign mul_ln195_fu_1287_p0 = mul_ln195_fu_1287_p00;
assign mul_ln195_fu_1287_p00 = add_ln195_reg_2047;
assign mul_ln195_fu_1287_p1 = 19'd631;
assign mul_ln196_fu_1306_p0 = mul_ln196_fu_1306_p00;
assign mul_ln196_fu_1306_p00 = add_ln196_reg_2052;
assign mul_ln196_fu_1306_p1 = 19'd631;
assign mul_ln197_fu_1325_p0 = mul_ln197_fu_1325_p00;
assign mul_ln197_fu_1325_p00 = add_ln197_reg_2057;
assign mul_ln197_fu_1325_p1 = 19'd631;
assign mul_ln199_fu_1344_p0 = mul_ln199_fu_1344_p00;
assign mul_ln199_fu_1344_p00 = add_ln199_reg_2062;
assign mul_ln199_fu_1344_p1 = 19'd631;
assign mul_ln_fu_1185_p5 = {{{{trunc_ln191_fu_1181_p1}, {2'd0}}, {trunc_ln191_fu_1181_p1}}, {1'd0}};
assign offset_fu_1197_p2 = (mul_ln_fu_1185_p5 + zext_ln114_fu_1177_p1);
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_ce0 = smem_12_ce0_local;
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
assign tmp_163_fu_1440_p1 = grp_fu_1991_p3;
assign tmp_163_fu_1440_p4 = {{tmp_163_fu_1440_p1[20:14]}};
assign tmp_165_fu_1482_p1 = grp_fu_2000_p3;
assign tmp_165_fu_1482_p4 = {{tmp_165_fu_1482_p1[20:14]}};
assign tmp_29_fu_1508_p27 = 'bx;
assign tmp_30_fu_1567_p27 = 'bx;
assign tmp_31_fu_1626_p27 = 'bx;
assign tmp_32_fu_1685_p27 = 'bx;
assign tmp_33_fu_1744_p27 = 'bx;
assign tmp_34_fu_1803_p27 = 'bx;
assign tmp_35_fu_1862_p27 = 'bx;
assign tmp_36_fu_1921_p27 = 'bx;
assign trunc_ln172_fu_1261_p1 = grp_fu_1203_p2[3:0];
assign trunc_ln191_fu_1181_p1 = ap_sig_allocacmp_tid[2:0];
assign zext_ln114_fu_1177_p1 = hi_fu_1167_p4;
assign zext_ln172_15_fu_1214_p1 = offset_reg_2025_pp0_iter9_reg;
assign zext_ln172_1_fu_1360_p1 = tmp_reg_2037_pp0_iter12_reg;
assign zext_ln188_fu_1980_p1 = tid_reg_2016_pp0_iter14_reg;
assign zext_ln194_fu_1376_p1 = tmp_159_reg_2079;
assign zext_ln195_fu_1392_p1 = tmp_160_reg_2084;
assign zext_ln196_fu_1408_p1 = tmp_161_reg_2089;
assign zext_ln197_fu_1424_p1 = tmp_162_reg_2094;
assign zext_ln198_fu_1449_p1 = tmp_163_fu_1440_p4;
assign zext_ln199_fu_1466_p1 = tmp_164_reg_2099;
assign zext_ln200_fu_1491_p1 = tmp_165_fu_1482_p4;
endmodule 