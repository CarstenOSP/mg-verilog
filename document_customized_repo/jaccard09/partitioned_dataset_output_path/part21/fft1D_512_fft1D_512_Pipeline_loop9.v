
module fft1D_512_fft1D_512_Pipeline_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_6_address1,smem_6_ce1,smem_6_we1,smem_6_d1,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] smem_6_address0;
output   smem_6_ce0;
output   smem_6_we0;
output  [63:0] smem_6_d0;
output  [6:0] smem_6_address1;
output   smem_6_ce1;
output   smem_6_we1;
output  [63:0] smem_6_d1;
output  [6:0] smem_5_address0;
output   smem_5_ce0;
output   smem_5_we0;
output  [63:0] smem_5_d0;
output  [6:0] smem_5_address1;
output   smem_5_ce1;
output   smem_5_we1;
output  [63:0] smem_5_d1;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [6:0] smem_4_address1;
output   smem_4_ce1;
output   smem_4_we1;
output  [63:0] smem_4_d1;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [6:0] smem_3_address1;
output   smem_3_ce1;
output   smem_3_we1;
output  [63:0] smem_3_d1;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [6:0] smem_2_address1;
output   smem_2_ce1;
output   smem_2_we1;
output  [63:0] smem_2_d1;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [6:0] smem_1_address1;
output   smem_1_ce1;
output   smem_1_we1;
output  [63:0] smem_1_d1;
output  [6:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [6:0] smem_address1;
output   smem_ce1;
output   smem_we1;
output  [63:0] smem_d1;
output  [6:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [6:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [6:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [6:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
output  [6:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [6:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
input  [63:0] DATA_y_2_q1;
output  [6:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [6:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
input  [63:0] DATA_y_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_2006;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1260;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_1279;
reg   [63:0] reg_1298;
reg   [63:0] reg_1316;
reg   [63:0] reg_1327;
reg   [6:0] tid_1_reg_1999;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_1_reg_1999_pp0_iter1_reg;
reg   [6:0] tid_1_reg_1999_pp0_iter2_reg;
reg   [0:0] tmp_reg_2006_pp0_iter1_reg;
reg   [0:0] tmp_reg_2006_pp0_iter2_reg;
reg   [0:0] tmp_reg_2006_pp0_iter3_reg;
wire   [5:0] offset_fu_1361_p1;
reg   [5:0] offset_reg_2010;
reg   [5:0] offset_reg_2010_pp0_iter1_reg;
reg   [5:0] offset_reg_2010_pp0_iter2_reg;
wire   [4:0] tmp_s_fu_1371_p4;
reg   [4:0] tmp_s_reg_2020;
reg   [4:0] tmp_s_reg_2020_pp0_iter1_reg;
reg   [4:0] tmp_s_reg_2020_pp0_iter2_reg;
wire   [5:0] offset_1_fu_1380_p3;
reg   [5:0] offset_1_reg_2026;
reg   [5:0] offset_1_reg_2026_pp0_iter1_reg;
reg   [5:0] offset_1_reg_2026_pp0_iter2_reg;
wire   [7:0] zext_ln172_1_fu_1404_p1;
reg   [7:0] zext_ln172_1_reg_2035;
reg   [7:0] zext_ln172_1_reg_2035_pp0_iter3_reg;
wire   [8:0] zext_ln172_2_fu_1407_p1;
reg   [8:0] zext_ln172_2_reg_2041;
wire   [7:0] zext_ln172_6_fu_1413_p1;
reg   [7:0] zext_ln172_6_reg_2047;
reg   [7:0] zext_ln172_6_reg_2047_pp0_iter3_reg;
wire   [8:0] zext_ln172_7_fu_1419_p1;
reg   [8:0] zext_ln172_7_reg_2053;
reg   [3:0] tmp_28_reg_2059;
wire   [2:0] trunc_ln172_fu_1441_p1;
reg   [2:0] trunc_ln172_reg_2064;
wire   [8:0] add_ln331_fu_1458_p2;
reg   [8:0] add_ln331_reg_2078;
wire   [63:0] zext_ln332_2_fu_1470_p1;
reg   [63:0] zext_ln332_2_reg_2083;
reg   [5:0] tmp_30_reg_2088;
wire   [8:0] add_ln333_fu_1486_p2;
reg   [8:0] add_ln333_reg_2098;
wire   [7:0] add_ln335_fu_1491_p2;
reg   [7:0] add_ln335_reg_2113;
reg   [6:0] tmp_34_reg_2123;
reg   [3:0] tmp_36_reg_2133;
wire   [63:0] zext_ln330_1_fu_1531_p1;
reg   [63:0] zext_ln330_1_reg_2138;
reg   [6:0] tmp_29_reg_2150;
reg   [6:0] tmp_31_reg_2160;
reg   [5:0] tmp_32_reg_2165;
reg   [6:0] tmp_33_reg_2170;
reg   [7:0] tmp_35_reg_2175;
wire   [2:0] trunc_ln172_1_fu_1631_p1;
reg   [2:0] trunc_ln172_1_reg_2180;
wire   [8:0] add_ln331_1_fu_1635_p2;
reg   [8:0] add_ln331_1_reg_2189;
reg   [63:0] DATA_y_load_2_reg_2199;
reg   [5:0] tmp_38_reg_2210;
reg   [63:0] DATA_y_1_load_reg_2220;
wire   [8:0] add_ln333_1_fu_1664_p2;
reg   [8:0] add_ln333_1_reg_2231;
wire   [7:0] add_ln335_1_fu_1669_p2;
reg   [7:0] add_ln335_1_reg_2246;
reg   [63:0] DATA_y_3_load_1_reg_2261;
reg   [6:0] tmp_37_reg_2272;
reg   [63:0] DATA_y_1_load_3_reg_2277;
reg   [6:0] tmp_39_reg_2288;
reg   [5:0] tmp_40_reg_2293;
reg   [6:0] tmp_41_reg_2298;
reg   [6:0] tmp_42_reg_2303;
reg   [63:0] DATA_y_3_load_3_reg_2308;
reg   [7:0] tmp_43_reg_2319;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln330_fu_1450_p1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln332_3_fu_1647_p1;
wire   [63:0] zext_ln172_4_fu_1674_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln332_fu_1684_p1;
wire   [63:0] zext_ln333_fu_1694_p1;
wire   [63:0] zext_ln334_fu_1704_p1;
wire   [63:0] zext_ln335_fu_1714_p1;
wire   [63:0] zext_ln336_fu_1724_p1;
wire   [63:0] zext_ln172_9_fu_1734_p1;
wire   [63:0] zext_ln331_fu_1848_p1;
wire   [63:0] zext_ln337_fu_1858_p1;
wire   [63:0] zext_ln331_1_fu_1868_p1;
wire   [63:0] zext_ln332_1_fu_1878_p1;
wire   [63:0] zext_ln333_1_fu_1888_p1;
wire   [63:0] zext_ln334_1_fu_1898_p1;
wire   [63:0] zext_ln335_1_fu_1908_p1;
wire   [63:0] zext_ln336_1_fu_1918_p1;
wire   [63:0] zext_ln337_1_fu_1928_p1;
reg   [6:0] tid_fu_126;
wire   [6:0] add_ln325_fu_1394_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_1;
reg    DATA_y_ce1_local;
reg   [6:0] DATA_y_address1_local;
reg    DATA_y_ce0_local;
reg   [6:0] DATA_y_address0_local;
reg    DATA_y_1_ce1_local;
reg   [6:0] DATA_y_1_address1_local;
reg    DATA_y_1_ce0_local;
reg   [6:0] DATA_y_1_address0_local;
reg    DATA_y_2_ce1_local;
reg   [6:0] DATA_y_2_address1_local;
reg    DATA_y_2_ce0_local;
reg   [6:0] DATA_y_2_address0_local;
reg    DATA_y_3_ce1_local;
reg   [6:0] DATA_y_3_address1_local;
reg    DATA_y_3_ce0_local;
reg   [6:0] DATA_y_3_address0_local;
reg    smem_5_we1_local;
reg   [63:0] smem_5_d1_local;
reg    smem_5_ce1_local;
reg   [6:0] smem_5_address1_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [6:0] smem_5_address0_local;
reg    smem_4_we1_local;
reg   [63:0] smem_4_d1_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    smem_3_we1_local;
reg   [63:0] smem_3_d1_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_6_we1_local;
reg   [63:0] smem_6_d1_local;
reg    smem_6_ce1_local;
reg   [6:0] smem_6_address1_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [6:0] smem_6_address0_local;
wire   [5:0] grp_fu_1365_p0;
wire   [3:0] grp_fu_1365_p1;
wire   [5:0] grp_fu_1388_p0;
wire   [3:0] grp_fu_1388_p1;
wire   [5:0] mul_ln172_fu_1425_p0;
wire   [7:0] mul_ln172_fu_1425_p1;
wire   [12:0] mul_ln172_fu_1425_p2;
wire   [2:0] grp_fu_1365_p2;
wire   [6:0] shl_ln330_fu_1445_p2;
wire   [6:0] or_ln_fu_1463_p3;
wire   [16:0] tmp_30_fu_1477_p1;
wire  signed [16:0] grp_fu_1938_p3;
wire   [18:0] tmp_34_fu_1496_p1;
wire  signed [18:0] grp_fu_1947_p3;
wire   [5:0] mul_ln172_1_fu_1508_p0;
wire   [7:0] mul_ln172_1_fu_1508_p1;
wire   [12:0] mul_ln172_1_fu_1508_p2;
wire   [6:0] or_ln1_fu_1524_p3;
wire   [8:0] mul_ln331_fu_1539_p0;
wire   [10:0] mul_ln331_fu_1539_p1;
wire   [18:0] mul_ln331_fu_1539_p2;
wire   [8:0] mul_ln333_fu_1558_p0;
wire   [10:0] mul_ln333_fu_1558_p1;
wire   [18:0] mul_ln333_fu_1558_p2;
wire   [7:0] add_ln334_fu_1574_p2;
wire   [7:0] mul_ln334_fu_1583_p0;
wire   [9:0] mul_ln334_fu_1583_p1;
wire   [16:0] mul_ln334_fu_1583_p2;
wire  signed [8:0] sext_ln335_fu_1599_p1;
wire   [8:0] mul_ln335_fu_1606_p0;
wire   [10:0] mul_ln335_fu_1606_p1;
wire   [18:0] mul_ln335_fu_1606_p2;
wire   [20:0] tmp_35_fu_1622_p1;
wire  signed [20:0] grp_fu_1956_p3;
wire   [2:0] grp_fu_1388_p2;
wire   [6:0] or_ln332_1_fu_1640_p3;
wire   [16:0] tmp_38_fu_1655_p1;
wire  signed [16:0] grp_fu_1965_p3;
wire   [8:0] mul_ln331_1_fu_1747_p0;
wire   [10:0] mul_ln331_1_fu_1747_p1;
wire   [18:0] mul_ln331_1_fu_1747_p2;
wire   [8:0] mul_ln333_1_fu_1766_p0;
wire   [10:0] mul_ln333_1_fu_1766_p1;
wire   [18:0] mul_ln333_1_fu_1766_p2;
wire   [7:0] add_ln334_1_fu_1782_p2;
wire   [7:0] mul_ln334_1_fu_1791_p0;
wire   [9:0] mul_ln334_1_fu_1791_p1;
wire   [16:0] mul_ln334_1_fu_1791_p2;
wire  signed [8:0] sext_ln335_1_fu_1807_p1;
wire   [8:0] mul_ln335_1_fu_1814_p0;
wire   [10:0] mul_ln335_1_fu_1814_p1;
wire   [18:0] mul_ln335_1_fu_1814_p2;
wire   [18:0] tmp_42_fu_1830_p1;
wire  signed [18:0] grp_fu_1974_p3;
wire   [20:0] tmp_43_fu_1839_p1;
wire  signed [20:0] grp_fu_1983_p3;
wire   [5:0] grp_fu_1938_p0;
wire   [6:0] grp_fu_1938_p1;
wire   [8:0] grp_fu_1938_p2;
wire   [5:0] grp_fu_1947_p0;
wire   [7:0] grp_fu_1947_p1;
wire   [9:0] grp_fu_1947_p2;
wire   [5:0] grp_fu_1956_p0;
wire   [8:0] grp_fu_1956_p1;
wire   [10:0] grp_fu_1956_p2;
wire   [5:0] grp_fu_1965_p0;
wire   [6:0] grp_fu_1965_p1;
wire   [8:0] grp_fu_1965_p2;
wire   [5:0] grp_fu_1974_p0;
wire   [7:0] grp_fu_1974_p1;
wire   [9:0] grp_fu_1974_p2;
wire   [5:0] grp_fu_1983_p0;
wire   [8:0] grp_fu_1983_p1;
wire   [10:0] grp_fu_1983_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage1;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_1938_p00;
wire   [8:0] grp_fu_1947_p00;
wire   [9:0] grp_fu_1956_p00;
wire   [7:0] grp_fu_1965_p00;
wire   [8:0] grp_fu_1974_p00;
wire   [9:0] grp_fu_1983_p00;
wire   [12:0] mul_ln172_1_fu_1508_p00;
wire   [12:0] mul_ln172_fu_1425_p00;
wire   [18:0] mul_ln331_1_fu_1747_p00;
wire   [18:0] mul_ln331_fu_1539_p00;
wire   [18:0] mul_ln333_1_fu_1766_p00;
wire   [18:0] mul_ln333_fu_1558_p00;
wire   [16:0] mul_ln334_1_fu_1791_p00;
wire   [16:0] mul_ln334_fu_1583_p00;
wire   [18:0] mul_ln335_1_fu_1814_p00;
wire   [18:0] mul_ln335_fu_1606_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_126 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U489(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1365_p0),.din1(grp_fu_1365_p1),.ce(1'b1),.dout(grp_fu_1365_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U490(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1388_p0),.din1(grp_fu_1388_p1),.ce(1'b1),.dout(grp_fu_1388_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U491(.din0(mul_ln172_fu_1425_p0),.din1(mul_ln172_fu_1425_p1),.dout(mul_ln172_fu_1425_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U492(.din0(mul_ln172_1_fu_1508_p0),.din1(mul_ln172_1_fu_1508_p1),.dout(mul_ln172_1_fu_1508_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U493(.din0(mul_ln331_fu_1539_p0),.din1(mul_ln331_fu_1539_p1),.dout(mul_ln331_fu_1539_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U494(.din0(mul_ln333_fu_1558_p0),.din1(mul_ln333_fu_1558_p1),.dout(mul_ln333_fu_1558_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U495(.din0(mul_ln334_fu_1583_p0),.din1(mul_ln334_fu_1583_p1),.dout(mul_ln334_fu_1583_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U496(.din0(mul_ln335_fu_1606_p0),.din1(mul_ln335_fu_1606_p1),.dout(mul_ln335_fu_1606_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U497(.din0(mul_ln331_1_fu_1747_p0),.din1(mul_ln331_1_fu_1747_p1),.dout(mul_ln331_1_fu_1747_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U498(.din0(mul_ln333_1_fu_1766_p0),.din1(mul_ln333_1_fu_1766_p1),.dout(mul_ln333_1_fu_1766_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U499(.din0(mul_ln334_1_fu_1791_p0),.din1(mul_ln334_1_fu_1791_p1),.dout(mul_ln334_1_fu_1791_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U500(.din0(mul_ln335_1_fu_1814_p0),.din1(mul_ln335_1_fu_1814_p1),.dout(mul_ln335_1_fu_1814_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U501(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1938_p0),.din1(grp_fu_1938_p1),.din2(grp_fu_1938_p2),.ce(1'b1),.dout(grp_fu_1938_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U502(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1947_p0),.din1(grp_fu_1947_p1),.din2(grp_fu_1947_p2),.ce(1'b1),.dout(grp_fu_1947_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U503(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1956_p0),.din1(grp_fu_1956_p1),.din2(grp_fu_1956_p2),.ce(1'b1),.dout(grp_fu_1956_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U504(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1965_p0),.din1(grp_fu_1965_p1),.din2(grp_fu_1965_p2),.ce(1'b1),.dout(grp_fu_1965_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U505(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1974_p0),.din1(grp_fu_1974_p1),.din2(grp_fu_1974_p2),.ce(1'b1),.dout(grp_fu_1974_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U506(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1983_p0),.din1(grp_fu_1983_p1),.din2(grp_fu_1983_p2),.ce(1'b1),.dout(grp_fu_1983_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1260 <= DATA_y_q0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1260 <= DATA_y_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1279 <= DATA_y_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1279 <= DATA_y_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_126 <= 7'd0;
    end else if (((tmp_reg_2006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tid_fu_126 <= add_ln325_fu_1394_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_load_3_reg_2277 <= DATA_y_1_q0;
        DATA_y_3_load_3_reg_2308 <= DATA_y_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_load_reg_2220 <= DATA_y_1_q1;
        DATA_y_3_load_1_reg_2261 <= DATA_y_3_q0;
        DATA_y_load_2_reg_2199 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln331_1_reg_2189[8 : 1] <= add_ln331_1_fu_1635_p2[8 : 1];
        add_ln333_1_reg_2231[8 : 1] <= add_ln333_1_fu_1664_p2[8 : 1];
        add_ln335_1_reg_2246[7 : 1] <= add_ln335_1_fu_1669_p2[7 : 1];
        offset_1_reg_2026[5 : 1] <= offset_1_fu_1380_p3[5 : 1];
        offset_1_reg_2026_pp0_iter1_reg[5 : 1] <= offset_1_reg_2026[5 : 1];
        offset_1_reg_2026_pp0_iter2_reg[5 : 1] <= offset_1_reg_2026_pp0_iter1_reg[5 : 1];
        tmp_29_reg_2150 <= {{mul_ln331_fu_1539_p2[18:12]}};
        tmp_31_reg_2160 <= {{mul_ln333_fu_1558_p2[18:12]}};
        tmp_32_reg_2165 <= {{mul_ln334_fu_1583_p2[16:11]}};
        tmp_33_reg_2170 <= {{mul_ln335_fu_1606_p2[18:12]}};
        tmp_35_reg_2175 <= {{tmp_35_fu_1622_p1[20:13]}};
        tmp_38_reg_2210 <= {{tmp_38_fu_1655_p1[16:11]}};
        tmp_s_reg_2020 <= {{tid_1_reg_1999[5:1]}};
        tmp_s_reg_2020_pp0_iter1_reg <= tmp_s_reg_2020;
        tmp_s_reg_2020_pp0_iter2_reg <= tmp_s_reg_2020_pp0_iter1_reg;
        trunc_ln172_1_reg_2180 <= trunc_ln172_1_fu_1631_p1;
        zext_ln172_6_reg_2047[5 : 1] <= zext_ln172_6_fu_1413_p1[5 : 1];
        zext_ln172_6_reg_2047_pp0_iter3_reg[5 : 1] <= zext_ln172_6_reg_2047[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln331_reg_2078 <= add_ln331_fu_1458_p2;
        add_ln333_reg_2098 <= add_ln333_fu_1486_p2;
        add_ln335_reg_2113 <= add_ln335_fu_1491_p2;
        offset_reg_2010 <= offset_fu_1361_p1;
        offset_reg_2010_pp0_iter1_reg <= offset_reg_2010;
        offset_reg_2010_pp0_iter2_reg <= offset_reg_2010_pp0_iter1_reg;
        tid_1_reg_1999 <= ap_sig_allocacmp_tid_1;
        tid_1_reg_1999_pp0_iter1_reg <= tid_1_reg_1999;
        tid_1_reg_1999_pp0_iter2_reg <= tid_1_reg_1999_pp0_iter1_reg;
        tmp_28_reg_2059 <= {{mul_ln172_fu_1425_p2[12:9]}};
        tmp_30_reg_2088 <= {{tmp_30_fu_1477_p1[16:11]}};
        tmp_34_reg_2123 <= {{tmp_34_fu_1496_p1[18:12]}};
        tmp_36_reg_2133 <= {{mul_ln172_1_fu_1508_p2[12:9]}};
        tmp_reg_2006 <= ap_sig_allocacmp_tid_1[32'd6];
        tmp_reg_2006_pp0_iter1_reg <= tmp_reg_2006;
        tmp_reg_2006_pp0_iter2_reg <= tmp_reg_2006_pp0_iter1_reg;
        tmp_reg_2006_pp0_iter3_reg <= tmp_reg_2006_pp0_iter2_reg;
        trunc_ln172_reg_2064 <= trunc_ln172_fu_1441_p1;
        zext_ln172_1_reg_2035[5 : 0] <= zext_ln172_1_fu_1404_p1[5 : 0];
        zext_ln172_1_reg_2035_pp0_iter3_reg[5 : 0] <= zext_ln172_1_reg_2035[5 : 0];
        zext_ln172_2_reg_2041[5 : 0] <= zext_ln172_2_fu_1407_p1[5 : 0];
        zext_ln330_1_reg_2138[6 : 2] <= zext_ln330_1_fu_1531_p1[6 : 2];
        zext_ln332_2_reg_2083[6 : 1] <= zext_ln332_2_fu_1470_p1[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1298 <= DATA_y_2_q1;
        reg_1316 <= DATA_y_2_q0;
        reg_1327 <= DATA_y_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_37_reg_2272 <= {{mul_ln331_1_fu_1747_p2[18:12]}};
        tmp_39_reg_2288 <= {{mul_ln333_1_fu_1766_p2[18:12]}};
        tmp_40_reg_2293 <= {{mul_ln334_1_fu_1791_p2[16:11]}};
        tmp_41_reg_2298 <= {{mul_ln335_1_fu_1814_p2[18:12]}};
        tmp_42_reg_2303 <= {{tmp_42_fu_1830_p1[18:12]}};
        tmp_43_reg_2319 <= {{tmp_43_fu_1839_p1[20:13]}};
        zext_ln172_7_reg_2053[5 : 1] <= zext_ln172_7_fu_1419_p1[5 : 1];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address0_local = zext_ln332_3_fu_1647_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address0_local = zext_ln332_2_fu_1470_p1;
        end else begin
            DATA_y_1_address0_local = 'bx;
        end
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address1_local = zext_ln330_1_reg_2138;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address1_local = zext_ln330_fu_1450_p1;
        end else begin
            DATA_y_1_address1_local = 'bx;
        end
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_2_address0_local = zext_ln332_3_fu_1647_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_2_address0_local = zext_ln332_2_fu_1470_p1;
        end else begin
            DATA_y_2_address0_local = 'bx;
        end
    end else begin
        DATA_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_2_address1_local = zext_ln330_1_reg_2138;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_2_address1_local = zext_ln330_fu_1450_p1;
        end else begin
            DATA_y_2_address1_local = 'bx;
        end
    end else begin
        DATA_y_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_3_address0_local = zext_ln332_3_fu_1647_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_3_address0_local = zext_ln332_2_fu_1470_p1;
        end else begin
            DATA_y_3_address0_local = 'bx;
        end
    end else begin
        DATA_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_3_address1_local = zext_ln330_1_reg_2138;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_3_address1_local = zext_ln330_fu_1450_p1;
        end else begin
            DATA_y_3_address1_local = 'bx;
        end
    end else begin
        DATA_y_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address0_local = zext_ln332_3_fu_1647_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address0_local = zext_ln330_1_fu_1531_p1;
        end else begin
            DATA_y_address0_local = 'bx;
        end
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address1_local = zext_ln332_2_reg_2083;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address1_local = zext_ln330_fu_1450_p1;
        end else begin
            DATA_y_address1_local = 'bx;
        end
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2006 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_reg_2006_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_1 = tid_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7)))) begin
        smem_1_address0_local = zext_ln332_1_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln333_1_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln331_1_fu_1868_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln335_1_fu_1908_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln334_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln172_9_fu_1734_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln337_1_fu_1928_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln336_1_fu_1918_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln331_fu_1848_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln337_fu_1858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_1_address1_local = zext_ln332_fu_1684_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln333_fu_1694_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln336_fu_1724_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln335_fu_1714_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln334_fu_1704_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln172_4_fu_1674_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7)))) begin
        smem_1_d0_local = reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_1_load_3_reg_2277;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_y_load_2_reg_2199;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_y_3_load_3_reg_2308;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = DATA_y_1_load_reg_2220;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = DATA_y_3_load_1_reg_2261;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_1_d1_local = DATA_y_q1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d1_local = reg_1279;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_d1_local = reg_1316;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d1_local = reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d1_local = reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d1_local = reg_1260;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7)))) begin
        smem_2_address0_local = zext_ln333_1_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln334_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln332_1_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln331_1_fu_1868_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln335_1_fu_1908_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln172_9_fu_1734_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln337_1_fu_1928_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln336_1_fu_1918_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln331_fu_1848_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln337_fu_1858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_2_address1_local = zext_ln333_fu_1694_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln334_fu_1704_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln332_fu_1684_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln336_fu_1724_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln335_fu_1714_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln172_4_fu_1674_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7)))) begin
        smem_2_d0_local = DATA_y_1_load_3_reg_2277;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_y_load_2_reg_2199;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_y_3_load_3_reg_2308;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = DATA_y_1_load_reg_2220;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = DATA_y_3_load_1_reg_2261;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_2_d1_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d1_local = reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d1_local = DATA_y_q1;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_d1_local = reg_1316;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d1_local = reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d1_local = reg_1260;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7)))) begin
        smem_3_address0_local = zext_ln334_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln335_1_fu_1908_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln333_1_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln332_1_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln331_1_fu_1868_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln172_9_fu_1734_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln337_1_fu_1928_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln336_1_fu_1918_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln331_fu_1848_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln337_fu_1858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_3_address1_local = zext_ln334_fu_1704_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln335_fu_1714_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln333_fu_1694_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln332_fu_1684_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln336_fu_1724_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln172_4_fu_1674_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7)))) begin
        smem_3_d0_local = reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_y_1_load_3_reg_2277;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_y_load_2_reg_2199;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_y_3_load_3_reg_2308;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d1_local = DATA_y_1_load_reg_2220;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d1_local = DATA_y_3_load_1_reg_2261;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_3_d1_local = reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d1_local = reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d1_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d1_local = DATA_y_q1;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_d1_local = reg_1316;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d1_local = reg_1260;
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7)))) begin
        smem_4_address0_local = zext_ln335_1_fu_1908_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln334_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln333_1_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln332_1_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln331_1_fu_1868_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln172_9_fu_1734_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln336_1_fu_1918_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln337_1_fu_1928_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln331_fu_1848_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln337_fu_1858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_4_address1_local = zext_ln335_fu_1714_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln336_fu_1724_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln334_fu_1704_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln333_fu_1694_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln332_fu_1684_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln172_4_fu_1674_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7)))) begin
        smem_4_d0_local = reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_y_1_load_3_reg_2277;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_y_load_2_reg_2199;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_y_3_load_3_reg_2308;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d1_local = DATA_y_1_load_reg_2220;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d1_local = DATA_y_3_load_1_reg_2261;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_4_d1_local = reg_1327;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_d1_local = reg_1316;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d1_local = reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d1_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d1_local = DATA_y_q1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d1_local = reg_1260;
    end else begin
        smem_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln335_1_fu_1908_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln334_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln333_1_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln332_1_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln331_1_fu_1868_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln172_9_fu_1734_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7)))) begin
        smem_5_address1_local = zext_ln336_1_fu_1918_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln337_1_fu_1928_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln337_fu_1858_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln331_fu_1848_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_5_address1_local = zext_ln336_fu_1724_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln335_fu_1714_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln334_fu_1704_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln333_fu_1694_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln332_fu_1684_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln172_4_fu_1674_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_y_1_load_3_reg_2277;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_y_load_2_reg_2199;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_y_3_load_3_reg_2308;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d1_local = DATA_y_3_load_1_reg_2261;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d1_local = DATA_y_1_load_reg_2220;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))))) begin
        smem_5_d1_local = reg_1316;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d1_local = reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d1_local = reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d1_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d1_local = DATA_y_q1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d1_local = reg_1260;
    end else begin
        smem_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln331_1_fu_1868_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln335_1_fu_1908_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln334_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln333_1_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln332_1_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln172_9_fu_1734_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7)))) begin
        smem_6_address1_local = zext_ln337_1_fu_1928_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln336_1_fu_1918_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_6_address1_local = zext_ln337_fu_1858_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln331_fu_1848_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address1_local = zext_ln336_fu_1724_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address1_local = zext_ln335_fu_1714_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address1_local = zext_ln334_fu_1704_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address1_local = zext_ln333_fu_1694_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address1_local = zext_ln332_fu_1684_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_6_address1_local = zext_ln172_4_fu_1674_p1;
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_y_1_load_3_reg_2277;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_y_load_2_reg_2199;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7)))) begin
        smem_6_d1_local = DATA_y_3_load_3_reg_2308;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_6_d1_local = DATA_y_3_load_1_reg_2261;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d1_local = DATA_y_1_load_reg_2220;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_d1_local = reg_1316;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d1_local = reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d1_local = reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d1_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d1_local = DATA_y_q1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_6_d1_local = reg_1260;
    end else begin
        smem_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))))) begin
        smem_6_we1_local = 1'b1;
    end else begin
        smem_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7)))) begin
        smem_address0_local = zext_ln331_1_fu_1868_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln332_1_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln335_1_fu_1908_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln334_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln333_1_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln172_9_fu_1734_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln337_1_fu_1928_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln336_1_fu_1918_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_address1_local = zext_ln331_fu_1848_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln337_fu_1858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln332_fu_1684_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln336_fu_1724_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln335_fu_1714_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln334_fu_1704_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln333_fu_1694_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln172_4_fu_1674_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7)))) begin
        smem_d0_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_1_load_3_reg_2277;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_y_load_2_reg_2199;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_y_3_load_3_reg_2308;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7)))) begin
        smem_d1_local = DATA_y_1_load_reg_2220;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d1_local = DATA_y_3_load_1_reg_2261;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d1_local = DATA_y_q1;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d1_local = reg_1316;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d1_local = reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d1_local = reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d1_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d1_local = reg_1260;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_1_reg_2180 == 3'd6) | (trunc_ln172_1_reg_2180 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2064 == 3'd6) | (trunc_ln172_reg_2064 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2064 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_2180 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_address1 = DATA_y_1_address1_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_2_address0 = DATA_y_2_address0_local;
assign DATA_y_2_address1 = DATA_y_2_address1_local;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_3_address0 = DATA_y_3_address0_local;
assign DATA_y_3_address1 = DATA_y_3_address1_local;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_address1 = DATA_y_address1_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln325_fu_1394_p2 = (tid_1_reg_1999 + 7'd2);
assign add_ln331_1_fu_1635_p2 = ($signed(zext_ln172_7_reg_2053) + $signed(9'd288));
assign add_ln331_fu_1458_p2 = ($signed(zext_ln172_2_reg_2041) + $signed(9'd288));
assign add_ln333_1_fu_1664_p2 = ($signed(zext_ln172_7_reg_2053) + $signed(9'd360));
assign add_ln333_fu_1486_p2 = ($signed(zext_ln172_2_reg_2041) + $signed(9'd360));
assign add_ln334_1_fu_1782_p2 = ($signed(zext_ln172_6_reg_2047_pp0_iter3_reg) + $signed(8'd144));
assign add_ln334_fu_1574_p2 = ($signed(zext_ln172_1_reg_2035_pp0_iter3_reg) + $signed(8'd144));
assign add_ln335_1_fu_1669_p2 = ($signed(zext_ln172_6_reg_2047) + $signed(8'd176));
assign add_ln335_fu_1491_p2 = ($signed(zext_ln172_1_reg_2035) + $signed(8'd176));
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign grp_fu_1365_p0 = ap_sig_allocacmp_tid_1[5:0];
assign grp_fu_1365_p1 = 6'd7;
assign grp_fu_1388_p0 = {{tmp_s_fu_1371_p4}, {1'd1}};
assign grp_fu_1388_p1 = 6'd7;
assign grp_fu_1938_p0 = grp_fu_1938_p00;
assign grp_fu_1938_p00 = offset_reg_2010_pp0_iter1_reg;
assign grp_fu_1938_p1 = 8'd72;
assign grp_fu_1938_p2 = 17'd293;
assign grp_fu_1947_p0 = grp_fu_1947_p00;
assign grp_fu_1947_p00 = offset_reg_2010_pp0_iter1_reg;
assign grp_fu_1947_p1 = 9'd216;
assign grp_fu_1947_p2 = 19'd586;
assign grp_fu_1956_p0 = grp_fu_1956_p00;
assign grp_fu_1956_p00 = offset_reg_2010_pp0_iter2_reg;
assign grp_fu_1956_p1 = 10'd504;
assign grp_fu_1956_p2 = 21'd1171;
assign grp_fu_1965_p0 = grp_fu_1965_p00;
assign grp_fu_1965_p00 = offset_1_reg_2026_pp0_iter1_reg;
assign grp_fu_1965_p1 = 8'd72;
assign grp_fu_1965_p2 = 17'd293;
assign grp_fu_1974_p0 = grp_fu_1974_p00;
assign grp_fu_1974_p00 = offset_1_reg_2026_pp0_iter2_reg;
assign grp_fu_1974_p1 = 9'd216;
assign grp_fu_1974_p2 = 19'd586;
assign grp_fu_1983_p0 = grp_fu_1983_p00;
assign grp_fu_1983_p00 = offset_1_reg_2026_pp0_iter2_reg;
assign grp_fu_1983_p1 = 10'd504;
assign grp_fu_1983_p2 = 21'd1171;
assign mul_ln172_1_fu_1508_p0 = mul_ln172_1_fu_1508_p00;
assign mul_ln172_1_fu_1508_p00 = offset_1_reg_2026_pp0_iter2_reg;
assign mul_ln172_1_fu_1508_p1 = 13'd74;
assign mul_ln172_fu_1425_p0 = mul_ln172_fu_1425_p00;
assign mul_ln172_fu_1425_p00 = offset_reg_2010_pp0_iter2_reg;
assign mul_ln172_fu_1425_p1 = 13'd74;
assign mul_ln331_1_fu_1747_p0 = mul_ln331_1_fu_1747_p00;
assign mul_ln331_1_fu_1747_p00 = add_ln331_1_reg_2189;
assign mul_ln331_1_fu_1747_p1 = 19'd586;
assign mul_ln331_fu_1539_p0 = mul_ln331_fu_1539_p00;
assign mul_ln331_fu_1539_p00 = add_ln331_reg_2078;
assign mul_ln331_fu_1539_p1 = 19'd586;
assign mul_ln333_1_fu_1766_p0 = mul_ln333_1_fu_1766_p00;
assign mul_ln333_1_fu_1766_p00 = add_ln333_1_reg_2231;
assign mul_ln333_1_fu_1766_p1 = 19'd586;
assign mul_ln333_fu_1558_p0 = mul_ln333_fu_1558_p00;
assign mul_ln333_fu_1558_p00 = add_ln333_reg_2098;
assign mul_ln333_fu_1558_p1 = 19'd586;
assign mul_ln334_1_fu_1791_p0 = mul_ln334_1_fu_1791_p00;
assign mul_ln334_1_fu_1791_p00 = add_ln334_1_fu_1782_p2;
assign mul_ln334_1_fu_1791_p1 = 17'd293;
assign mul_ln334_fu_1583_p0 = mul_ln334_fu_1583_p00;
assign mul_ln334_fu_1583_p00 = add_ln334_fu_1574_p2;
assign mul_ln334_fu_1583_p1 = 17'd293;
assign mul_ln335_1_fu_1814_p0 = mul_ln335_1_fu_1814_p00;
assign mul_ln335_1_fu_1814_p00 = $unsigned(sext_ln335_1_fu_1807_p1);
assign mul_ln335_1_fu_1814_p1 = 19'd586;
assign mul_ln335_fu_1606_p0 = mul_ln335_fu_1606_p00;
assign mul_ln335_fu_1606_p00 = $unsigned(sext_ln335_fu_1599_p1);
assign mul_ln335_fu_1606_p1 = 19'd586;
assign offset_1_fu_1380_p3 = {{tmp_s_fu_1371_p4}, {1'd1}};
assign offset_fu_1361_p1 = ap_sig_allocacmp_tid_1[5:0];
assign or_ln1_fu_1524_p3 = {{tmp_s_reg_2020_pp0_iter2_reg}, {2'd2}};
assign or_ln332_1_fu_1640_p3 = {{tmp_s_reg_2020_pp0_iter2_reg}, {2'd3}};
assign or_ln_fu_1463_p3 = {{offset_reg_2010_pp0_iter2_reg}, {1'd1}};
assign sext_ln335_1_fu_1807_p1 = $signed(add_ln335_1_reg_2246);
assign sext_ln335_fu_1599_p1 = $signed(add_ln335_reg_2113);
assign shl_ln330_fu_1445_p2 = tid_1_reg_1999_pp0_iter2_reg << 7'd1;
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_d1 = smem_1_d1_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_1_we1 = smem_1_we1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_d1 = smem_2_d1_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_2_we1 = smem_2_we1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_d1 = smem_3_d1_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_3_we1 = smem_3_we1_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_address1 = smem_4_address1_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_ce1 = smem_4_ce1_local;
assign smem_4_d0 = smem_4_d0_local;
assign smem_4_d1 = smem_4_d1_local;
assign smem_4_we0 = smem_4_we0_local;
assign smem_4_we1 = smem_4_we1_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_address1 = smem_5_address1_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_ce1 = smem_5_ce1_local;
assign smem_5_d0 = smem_5_d0_local;
assign smem_5_d1 = smem_5_d1_local;
assign smem_5_we0 = smem_5_we0_local;
assign smem_5_we1 = smem_5_we1_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_address1 = smem_6_address1_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_ce1 = smem_6_ce1_local;
assign smem_6_d0 = smem_6_d0_local;
assign smem_6_d1 = smem_6_d1_local;
assign smem_6_we0 = smem_6_we0_local;
assign smem_6_we1 = smem_6_we1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_30_fu_1477_p1 = grp_fu_1938_p3;
assign tmp_34_fu_1496_p1 = grp_fu_1947_p3;
assign tmp_35_fu_1622_p1 = grp_fu_1956_p3;
assign tmp_38_fu_1655_p1 = grp_fu_1965_p3;
assign tmp_42_fu_1830_p1 = grp_fu_1974_p3;
assign tmp_43_fu_1839_p1 = grp_fu_1983_p3;
assign tmp_s_fu_1371_p4 = {{tid_1_reg_1999[5:1]}};
assign trunc_ln172_1_fu_1631_p1 = grp_fu_1388_p2[2:0];
assign trunc_ln172_fu_1441_p1 = grp_fu_1365_p2[2:0];
assign zext_ln172_1_fu_1404_p1 = offset_reg_2010_pp0_iter1_reg;
assign zext_ln172_2_fu_1407_p1 = offset_reg_2010_pp0_iter1_reg;
assign zext_ln172_4_fu_1674_p1 = tmp_28_reg_2059;
assign zext_ln172_6_fu_1413_p1 = offset_1_reg_2026_pp0_iter1_reg;
assign zext_ln172_7_fu_1419_p1 = offset_1_reg_2026_pp0_iter2_reg;
assign zext_ln172_9_fu_1734_p1 = tmp_36_reg_2133;
assign zext_ln330_1_fu_1531_p1 = or_ln1_fu_1524_p3;
assign zext_ln330_fu_1450_p1 = shl_ln330_fu_1445_p2;
assign zext_ln331_1_fu_1868_p1 = tmp_37_reg_2272;
assign zext_ln331_fu_1848_p1 = tmp_29_reg_2150;
assign zext_ln332_1_fu_1878_p1 = tmp_38_reg_2210;
assign zext_ln332_2_fu_1470_p1 = or_ln_fu_1463_p3;
assign zext_ln332_3_fu_1647_p1 = or_ln332_1_fu_1640_p3;
assign zext_ln332_fu_1684_p1 = tmp_30_reg_2088;
assign zext_ln333_1_fu_1888_p1 = tmp_39_reg_2288;
assign zext_ln333_fu_1694_p1 = tmp_31_reg_2160;
assign zext_ln334_1_fu_1898_p1 = tmp_40_reg_2293;
assign zext_ln334_fu_1704_p1 = tmp_32_reg_2165;
assign zext_ln335_1_fu_1908_p1 = tmp_41_reg_2298;
assign zext_ln335_fu_1714_p1 = tmp_33_reg_2170;
assign zext_ln336_1_fu_1918_p1 = tmp_42_reg_2303;
assign zext_ln336_fu_1724_p1 = tmp_34_reg_2123;
assign zext_ln337_1_fu_1928_p1 = tmp_43_reg_2319;
assign zext_ln337_fu_1858_p1 = tmp_35_reg_2175;
always @ (posedge ap_clk) begin
    offset_1_reg_2026[0] <= 1'b1;
    offset_1_reg_2026_pp0_iter1_reg[0] <= 1'b1;
    offset_1_reg_2026_pp0_iter2_reg[0] <= 1'b1;
    zext_ln172_1_reg_2035[7:6] <= 2'b00;
    zext_ln172_1_reg_2035_pp0_iter3_reg[7:6] <= 2'b00;
    zext_ln172_2_reg_2041[8:6] <= 3'b000;
    zext_ln172_6_reg_2047[0] <= 1'b1;
    zext_ln172_6_reg_2047[7:6] <= 2'b00;
    zext_ln172_6_reg_2047_pp0_iter3_reg[0] <= 1'b1;
    zext_ln172_6_reg_2047_pp0_iter3_reg[7:6] <= 2'b00;
    zext_ln172_7_reg_2053[0] <= 1'b1;
    zext_ln172_7_reg_2053[8:6] <= 3'b000;
    zext_ln332_2_reg_2083[0] <= 1'b1;
    zext_ln332_2_reg_2083[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln330_1_reg_2138[1:0] <= 2'b10;
    zext_ln330_1_reg_2138[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    add_ln331_1_reg_2189[0] <= 1'b1;
    add_ln333_1_reg_2231[0] <= 1'b1;
    add_ln335_1_reg_2246[0] <= 1'b1;
end
endmodule 
