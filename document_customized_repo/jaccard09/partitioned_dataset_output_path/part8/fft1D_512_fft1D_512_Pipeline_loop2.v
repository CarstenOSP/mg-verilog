
module fft1D_512_fft1D_512_Pipeline_loop2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_6_address1,smem_6_ce1,smem_6_we1,smem_6_d1,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1);  
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
output  [6:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [6:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [6:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [6:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [6:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [6:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [6:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [6:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
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
reg   [0:0] tmp_reg_2005;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1260;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_1279;
reg   [63:0] reg_1297;
reg   [63:0] reg_1308;
reg   [63:0] reg_1326;
reg   [6:0] tid_reg_1998;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_reg_1998_pp0_iter1_reg;
reg   [6:0] tid_reg_1998_pp0_iter2_reg;
reg   [0:0] tmp_reg_2005_pp0_iter1_reg;
reg   [0:0] tmp_reg_2005_pp0_iter2_reg;
reg   [0:0] tmp_reg_2005_pp0_iter3_reg;
wire   [5:0] offset_fu_1360_p1;
reg   [5:0] offset_reg_2009;
reg   [5:0] offset_reg_2009_pp0_iter1_reg;
reg   [5:0] offset_reg_2009_pp0_iter2_reg;
wire   [4:0] tmp_s_fu_1370_p4;
reg   [4:0] tmp_s_reg_2019;
reg   [4:0] tmp_s_reg_2019_pp0_iter1_reg;
reg   [4:0] tmp_s_reg_2019_pp0_iter2_reg;
wire   [5:0] offset_1_fu_1379_p3;
reg   [5:0] offset_1_reg_2025;
reg   [5:0] offset_1_reg_2025_pp0_iter1_reg;
reg   [5:0] offset_1_reg_2025_pp0_iter2_reg;
wire   [7:0] zext_ln172_11_fu_1403_p1;
reg   [7:0] zext_ln172_11_reg_2034;
reg   [7:0] zext_ln172_11_reg_2034_pp0_iter3_reg;
wire   [8:0] zext_ln172_12_fu_1406_p1;
reg   [8:0] zext_ln172_12_reg_2040;
wire   [7:0] zext_ln172_15_fu_1412_p1;
reg   [7:0] zext_ln172_15_reg_2046;
reg   [7:0] zext_ln172_15_reg_2046_pp0_iter3_reg;
wire   [8:0] zext_ln172_16_fu_1418_p1;
reg   [8:0] zext_ln172_16_reg_2052;
reg   [3:0] tmp_242_reg_2058;
wire   [2:0] trunc_ln172_fu_1440_p1;
reg   [2:0] trunc_ln172_reg_2063;
wire   [8:0] add_ln179_fu_1457_p2;
reg   [8:0] add_ln179_reg_2077;
wire   [63:0] zext_ln180_2_fu_1469_p1;
reg   [63:0] zext_ln180_2_reg_2082;
reg   [5:0] tmp_244_reg_2087;
wire   [8:0] add_ln181_fu_1485_p2;
reg   [8:0] add_ln181_reg_2097;
wire   [7:0] add_ln183_fu_1490_p2;
reg   [7:0] add_ln183_reg_2112;
reg   [6:0] tmp_248_reg_2122;
reg   [3:0] tmp_250_reg_2132;
wire   [63:0] zext_ln178_1_fu_1530_p1;
reg   [63:0] zext_ln178_1_reg_2137;
reg   [6:0] tmp_243_reg_2149;
reg   [6:0] tmp_245_reg_2159;
reg   [5:0] tmp_246_reg_2164;
reg   [6:0] tmp_247_reg_2169;
reg   [7:0] tmp_249_reg_2174;
wire   [2:0] trunc_ln172_6_fu_1630_p1;
reg   [2:0] trunc_ln172_6_reg_2179;
wire   [8:0] add_ln179_1_fu_1634_p2;
reg   [8:0] add_ln179_1_reg_2188;
reg   [63:0] DATA_x_load_2_reg_2198;
reg   [5:0] tmp_252_reg_2209;
reg   [63:0] DATA_x_1_load_1_reg_2219;
wire   [8:0] add_ln181_1_fu_1663_p2;
reg   [8:0] add_ln181_1_reg_2230;
wire   [7:0] add_ln183_1_fu_1668_p2;
reg   [7:0] add_ln183_1_reg_2245;
reg   [63:0] DATA_x_3_load_1_reg_2260;
reg   [6:0] tmp_251_reg_2271;
reg   [63:0] DATA_x_1_load_3_reg_2276;
reg   [6:0] tmp_253_reg_2287;
reg   [5:0] tmp_254_reg_2292;
reg   [6:0] tmp_255_reg_2297;
reg   [6:0] tmp_256_reg_2302;
reg   [63:0] DATA_x_3_load_3_reg_2307;
reg   [7:0] tmp_257_reg_2318;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln178_fu_1449_p1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln180_3_fu_1646_p1;
wire   [63:0] zext_ln172_fu_1673_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln179_fu_1683_p1;
wire   [63:0] zext_ln180_fu_1693_p1;
wire   [63:0] zext_ln182_fu_1703_p1;
wire   [63:0] zext_ln183_fu_1713_p1;
wire   [63:0] zext_ln184_fu_1723_p1;
wire   [63:0] zext_ln172_1_fu_1733_p1;
wire   [63:0] zext_ln181_fu_1847_p1;
wire   [63:0] zext_ln185_fu_1857_p1;
wire   [63:0] zext_ln179_1_fu_1867_p1;
wire   [63:0] zext_ln180_1_fu_1877_p1;
wire   [63:0] zext_ln181_1_fu_1887_p1;
wire   [63:0] zext_ln183_1_fu_1897_p1;
wire   [63:0] zext_ln184_1_fu_1907_p1;
wire   [63:0] zext_ln182_1_fu_1917_p1;
wire   [63:0] zext_ln185_1_fu_1927_p1;
reg   [6:0] tid_1_fu_126;
wire   [6:0] add_ln174_fu_1393_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    DATA_x_ce1_local;
reg   [6:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [6:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [6:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [6:0] DATA_x_1_address0_local;
reg    DATA_x_2_ce1_local;
reg   [6:0] DATA_x_2_address1_local;
reg    DATA_x_2_ce0_local;
reg   [6:0] DATA_x_2_address0_local;
reg    DATA_x_3_ce1_local;
reg   [6:0] DATA_x_3_address1_local;
reg    DATA_x_3_ce0_local;
reg   [6:0] DATA_x_3_address0_local;
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
wire   [5:0] grp_fu_1364_p0;
wire   [3:0] grp_fu_1364_p1;
wire   [5:0] grp_fu_1387_p0;
wire   [3:0] grp_fu_1387_p1;
wire   [5:0] mul_ln172_fu_1424_p0;
wire   [7:0] mul_ln172_fu_1424_p1;
wire   [12:0] mul_ln172_fu_1424_p2;
wire   [2:0] grp_fu_1364_p2;
wire   [6:0] shl_ln178_fu_1444_p2;
wire   [6:0] or_ln6_fu_1462_p3;
wire   [16:0] tmp_244_fu_1476_p1;
wire  signed [16:0] grp_fu_1937_p3;
wire   [18:0] tmp_248_fu_1495_p1;
wire  signed [18:0] grp_fu_1946_p3;
wire   [5:0] mul_ln172_1_fu_1507_p0;
wire   [7:0] mul_ln172_1_fu_1507_p1;
wire   [12:0] mul_ln172_1_fu_1507_p2;
wire   [6:0] or_ln7_fu_1523_p3;
wire   [8:0] mul_ln179_fu_1538_p0;
wire   [10:0] mul_ln179_fu_1538_p1;
wire   [18:0] mul_ln179_fu_1538_p2;
wire   [8:0] mul_ln181_fu_1557_p0;
wire   [10:0] mul_ln181_fu_1557_p1;
wire   [18:0] mul_ln181_fu_1557_p2;
wire   [7:0] add_ln182_fu_1573_p2;
wire   [7:0] mul_ln182_fu_1582_p0;
wire   [9:0] mul_ln182_fu_1582_p1;
wire   [16:0] mul_ln182_fu_1582_p2;
wire  signed [8:0] sext_ln183_fu_1598_p1;
wire   [8:0] mul_ln183_fu_1605_p0;
wire   [10:0] mul_ln183_fu_1605_p1;
wire   [18:0] mul_ln183_fu_1605_p2;
wire   [20:0] tmp_249_fu_1621_p1;
wire  signed [20:0] grp_fu_1955_p3;
wire   [2:0] grp_fu_1387_p2;
wire   [6:0] or_ln180_1_fu_1639_p3;
wire   [16:0] tmp_252_fu_1654_p1;
wire  signed [16:0] grp_fu_1964_p3;
wire   [8:0] mul_ln179_1_fu_1746_p0;
wire   [10:0] mul_ln179_1_fu_1746_p1;
wire   [18:0] mul_ln179_1_fu_1746_p2;
wire   [8:0] mul_ln181_1_fu_1765_p0;
wire   [10:0] mul_ln181_1_fu_1765_p1;
wire   [18:0] mul_ln181_1_fu_1765_p2;
wire   [7:0] add_ln182_1_fu_1781_p2;
wire   [7:0] mul_ln182_1_fu_1790_p0;
wire   [9:0] mul_ln182_1_fu_1790_p1;
wire   [16:0] mul_ln182_1_fu_1790_p2;
wire  signed [8:0] sext_ln183_1_fu_1806_p1;
wire   [8:0] mul_ln183_1_fu_1813_p0;
wire   [10:0] mul_ln183_1_fu_1813_p1;
wire   [18:0] mul_ln183_1_fu_1813_p2;
wire   [18:0] tmp_256_fu_1829_p1;
wire  signed [18:0] grp_fu_1973_p3;
wire   [20:0] tmp_257_fu_1838_p1;
wire  signed [20:0] grp_fu_1982_p3;
wire   [5:0] grp_fu_1937_p0;
wire   [6:0] grp_fu_1937_p1;
wire   [8:0] grp_fu_1937_p2;
wire   [5:0] grp_fu_1946_p0;
wire   [7:0] grp_fu_1946_p1;
wire   [9:0] grp_fu_1946_p2;
wire   [5:0] grp_fu_1955_p0;
wire   [8:0] grp_fu_1955_p1;
wire   [10:0] grp_fu_1955_p2;
wire   [5:0] grp_fu_1964_p0;
wire   [6:0] grp_fu_1964_p1;
wire   [8:0] grp_fu_1964_p2;
wire   [5:0] grp_fu_1973_p0;
wire   [7:0] grp_fu_1973_p1;
wire   [9:0] grp_fu_1973_p2;
wire   [5:0] grp_fu_1982_p0;
wire   [8:0] grp_fu_1982_p1;
wire   [10:0] grp_fu_1982_p2;
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
wire   [7:0] grp_fu_1937_p00;
wire   [8:0] grp_fu_1946_p00;
wire   [9:0] grp_fu_1955_p00;
wire   [7:0] grp_fu_1964_p00;
wire   [8:0] grp_fu_1973_p00;
wire   [9:0] grp_fu_1982_p00;
wire   [12:0] mul_ln172_1_fu_1507_p00;
wire   [12:0] mul_ln172_fu_1424_p00;
wire   [18:0] mul_ln179_1_fu_1746_p00;
wire   [18:0] mul_ln179_fu_1538_p00;
wire   [18:0] mul_ln181_1_fu_1765_p00;
wire   [18:0] mul_ln181_fu_1557_p00;
wire   [16:0] mul_ln182_1_fu_1790_p00;
wire   [16:0] mul_ln182_fu_1582_p00;
wire   [18:0] mul_ln183_1_fu_1813_p00;
wire   [18:0] mul_ln183_fu_1605_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_1_fu_126 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U164(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1364_p0),.din1(grp_fu_1364_p1),.ce(1'b1),.dout(grp_fu_1364_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U165(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1387_p0),.din1(grp_fu_1387_p1),.ce(1'b1),.dout(grp_fu_1387_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U166(.din0(mul_ln172_fu_1424_p0),.din1(mul_ln172_fu_1424_p1),.dout(mul_ln172_fu_1424_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U167(.din0(mul_ln172_1_fu_1507_p0),.din1(mul_ln172_1_fu_1507_p1),.dout(mul_ln172_1_fu_1507_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U168(.din0(mul_ln179_fu_1538_p0),.din1(mul_ln179_fu_1538_p1),.dout(mul_ln179_fu_1538_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U169(.din0(mul_ln181_fu_1557_p0),.din1(mul_ln181_fu_1557_p1),.dout(mul_ln181_fu_1557_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U170(.din0(mul_ln182_fu_1582_p0),.din1(mul_ln182_fu_1582_p1),.dout(mul_ln182_fu_1582_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U171(.din0(mul_ln183_fu_1605_p0),.din1(mul_ln183_fu_1605_p1),.dout(mul_ln183_fu_1605_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U172(.din0(mul_ln179_1_fu_1746_p0),.din1(mul_ln179_1_fu_1746_p1),.dout(mul_ln179_1_fu_1746_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U173(.din0(mul_ln181_1_fu_1765_p0),.din1(mul_ln181_1_fu_1765_p1),.dout(mul_ln181_1_fu_1765_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U174(.din0(mul_ln182_1_fu_1790_p0),.din1(mul_ln182_1_fu_1790_p1),.dout(mul_ln182_1_fu_1790_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U175(.din0(mul_ln183_1_fu_1813_p0),.din1(mul_ln183_1_fu_1813_p1),.dout(mul_ln183_1_fu_1813_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U176(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1937_p0),.din1(grp_fu_1937_p1),.din2(grp_fu_1937_p2),.ce(1'b1),.dout(grp_fu_1937_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U177(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1946_p0),.din1(grp_fu_1946_p1),.din2(grp_fu_1946_p2),.ce(1'b1),.dout(grp_fu_1946_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U178(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1955_p0),.din1(grp_fu_1955_p1),.din2(grp_fu_1955_p2),.ce(1'b1),.dout(grp_fu_1955_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U179(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1964_p0),.din1(grp_fu_1964_p1),.din2(grp_fu_1964_p2),.ce(1'b1),.dout(grp_fu_1964_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U180(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1973_p0),.din1(grp_fu_1973_p1),.din2(grp_fu_1973_p2),.ce(1'b1),.dout(grp_fu_1973_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U181(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1982_p0),.din1(grp_fu_1982_p1),.din2(grp_fu_1982_p2),.ce(1'b1),.dout(grp_fu_1982_p3));
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
            reg_1260 <= DATA_x_q0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1260 <= DATA_x_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_1_fu_126 <= 7'd0;
    end else if (((tmp_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tid_1_fu_126 <= add_ln174_fu_1393_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_load_1_reg_2219 <= DATA_x_1_q0;
        DATA_x_3_load_1_reg_2260 <= DATA_x_3_q0;
        DATA_x_load_2_reg_2198 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_load_3_reg_2276 <= DATA_x_1_q0;
        DATA_x_3_load_3_reg_2307 <= DATA_x_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln179_1_reg_2188[8 : 1] <= add_ln179_1_fu_1634_p2[8 : 1];
        add_ln181_1_reg_2230[8 : 1] <= add_ln181_1_fu_1663_p2[8 : 1];
        add_ln183_1_reg_2245[7 : 1] <= add_ln183_1_fu_1668_p2[7 : 1];
        offset_1_reg_2025[5 : 1] <= offset_1_fu_1379_p3[5 : 1];
        offset_1_reg_2025_pp0_iter1_reg[5 : 1] <= offset_1_reg_2025[5 : 1];
        offset_1_reg_2025_pp0_iter2_reg[5 : 1] <= offset_1_reg_2025_pp0_iter1_reg[5 : 1];
        tmp_243_reg_2149 <= {{mul_ln179_fu_1538_p2[18:12]}};
        tmp_245_reg_2159 <= {{mul_ln181_fu_1557_p2[18:12]}};
        tmp_246_reg_2164 <= {{mul_ln182_fu_1582_p2[16:11]}};
        tmp_247_reg_2169 <= {{mul_ln183_fu_1605_p2[18:12]}};
        tmp_249_reg_2174 <= {{tmp_249_fu_1621_p1[20:13]}};
        tmp_252_reg_2209 <= {{tmp_252_fu_1654_p1[16:11]}};
        tmp_s_reg_2019 <= {{tid_reg_1998[5:1]}};
        tmp_s_reg_2019_pp0_iter1_reg <= tmp_s_reg_2019;
        tmp_s_reg_2019_pp0_iter2_reg <= tmp_s_reg_2019_pp0_iter1_reg;
        trunc_ln172_6_reg_2179 <= trunc_ln172_6_fu_1630_p1;
        zext_ln172_15_reg_2046[5 : 1] <= zext_ln172_15_fu_1412_p1[5 : 1];
        zext_ln172_15_reg_2046_pp0_iter3_reg[5 : 1] <= zext_ln172_15_reg_2046[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln179_reg_2077 <= add_ln179_fu_1457_p2;
        add_ln181_reg_2097 <= add_ln181_fu_1485_p2;
        add_ln183_reg_2112 <= add_ln183_fu_1490_p2;
        offset_reg_2009 <= offset_fu_1360_p1;
        offset_reg_2009_pp0_iter1_reg <= offset_reg_2009;
        offset_reg_2009_pp0_iter2_reg <= offset_reg_2009_pp0_iter1_reg;
        tid_reg_1998 <= ap_sig_allocacmp_tid;
        tid_reg_1998_pp0_iter1_reg <= tid_reg_1998;
        tid_reg_1998_pp0_iter2_reg <= tid_reg_1998_pp0_iter1_reg;
        tmp_242_reg_2058 <= {{mul_ln172_fu_1424_p2[12:9]}};
        tmp_244_reg_2087 <= {{tmp_244_fu_1476_p1[16:11]}};
        tmp_248_reg_2122 <= {{tmp_248_fu_1495_p1[18:12]}};
        tmp_250_reg_2132 <= {{mul_ln172_1_fu_1507_p2[12:9]}};
        tmp_reg_2005 <= ap_sig_allocacmp_tid[32'd6];
        tmp_reg_2005_pp0_iter1_reg <= tmp_reg_2005;
        tmp_reg_2005_pp0_iter2_reg <= tmp_reg_2005_pp0_iter1_reg;
        tmp_reg_2005_pp0_iter3_reg <= tmp_reg_2005_pp0_iter2_reg;
        trunc_ln172_reg_2063 <= trunc_ln172_fu_1440_p1;
        zext_ln172_11_reg_2034[5 : 0] <= zext_ln172_11_fu_1403_p1[5 : 0];
        zext_ln172_11_reg_2034_pp0_iter3_reg[5 : 0] <= zext_ln172_11_reg_2034[5 : 0];
        zext_ln172_12_reg_2040[5 : 0] <= zext_ln172_12_fu_1406_p1[5 : 0];
        zext_ln178_1_reg_2137[6 : 2] <= zext_ln178_1_fu_1530_p1[6 : 2];
        zext_ln180_2_reg_2082[6 : 1] <= zext_ln180_2_fu_1469_p1[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1279 <= DATA_x_1_q1;
        reg_1297 <= DATA_x_2_q1;
        reg_1308 <= DATA_x_2_q0;
        reg_1326 <= DATA_x_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_251_reg_2271 <= {{mul_ln179_1_fu_1746_p2[18:12]}};
        tmp_253_reg_2287 <= {{mul_ln181_1_fu_1765_p2[18:12]}};
        tmp_254_reg_2292 <= {{mul_ln182_1_fu_1790_p2[16:11]}};
        tmp_255_reg_2297 <= {{mul_ln183_1_fu_1813_p2[18:12]}};
        tmp_256_reg_2302 <= {{tmp_256_fu_1829_p1[18:12]}};
        tmp_257_reg_2318 <= {{tmp_257_fu_1838_p1[20:13]}};
        zext_ln172_16_reg_2052[5 : 1] <= zext_ln172_16_fu_1418_p1[5 : 1];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln180_3_fu_1646_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln180_2_fu_1469_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln178_1_reg_2137;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln178_fu_1449_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address0_local = zext_ln180_3_fu_1646_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address0_local = zext_ln180_2_fu_1469_p1;
        end else begin
            DATA_x_2_address0_local = 'bx;
        end
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address1_local = zext_ln178_1_reg_2137;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address1_local = zext_ln178_fu_1449_p1;
        end else begin
            DATA_x_2_address1_local = 'bx;
        end
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address0_local = zext_ln180_3_fu_1646_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address0_local = zext_ln180_2_fu_1469_p1;
        end else begin
            DATA_x_3_address0_local = 'bx;
        end
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address1_local = zext_ln178_1_reg_2137;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address1_local = zext_ln178_fu_1449_p1;
        end else begin
            DATA_x_3_address1_local = 'bx;
        end
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln180_3_fu_1646_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln178_1_fu_1530_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln180_2_reg_2082;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln178_fu_1449_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2005 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_reg_2005_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_1_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7)))) begin
        smem_1_address0_local = zext_ln184_1_fu_1907_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln179_1_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln183_1_fu_1897_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln180_1_fu_1877_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln181_1_fu_1887_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln172_1_fu_1733_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln182_1_fu_1917_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln185_1_fu_1927_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln185_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln181_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_1_address1_local = zext_ln184_fu_1723_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln182_fu_1703_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln179_fu_1683_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln183_fu_1713_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln180_fu_1693_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln172_fu_1673_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7)))) begin
        smem_1_d0_local = reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_1_load_3_reg_2276;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_load_2_reg_2198;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_x_3_load_3_reg_2307;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = DATA_x_3_load_1_reg_2260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = DATA_x_1_load_1_reg_2219;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_1_d1_local = reg_1308;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_d1_local = reg_1297;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d1_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d1_local = reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d1_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d1_local = reg_1260;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7)))) begin
        smem_2_address0_local = zext_ln180_1_fu_1877_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln179_1_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln183_1_fu_1897_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln181_1_fu_1887_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln184_1_fu_1907_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln172_1_fu_1733_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln185_1_fu_1927_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln182_1_fu_1917_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln185_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln181_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_2_address1_local = zext_ln180_fu_1693_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln182_fu_1703_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln179_fu_1683_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln183_fu_1713_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln184_fu_1723_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln172_fu_1673_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7)))) begin
        smem_2_d0_local = reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_1_load_3_reg_2276;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_load_2_reg_2198;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_x_3_load_3_reg_2307;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = DATA_x_3_load_1_reg_2260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = DATA_x_1_load_1_reg_2219;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_2_d1_local = DATA_x_q1;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_d1_local = reg_1297;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d1_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d1_local = reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d1_local = reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d1_local = reg_1260;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7)))) begin
        smem_3_address0_local = zext_ln183_1_fu_1897_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln181_1_fu_1887_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln179_1_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln184_1_fu_1907_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln180_1_fu_1877_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln172_1_fu_1733_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln185_1_fu_1927_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln182_1_fu_1917_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln181_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln185_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_3_address1_local = zext_ln183_fu_1713_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln182_fu_1703_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln179_fu_1683_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln184_fu_1723_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln180_fu_1693_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address1_local = zext_ln172_fu_1673_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7)))) begin
        smem_3_d0_local = reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_1_load_3_reg_2276;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_load_2_reg_2198;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_x_3_load_3_reg_2307;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d1_local = DATA_x_1_load_1_reg_2219;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d1_local = DATA_x_3_load_1_reg_2260;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_3_d1_local = reg_1326;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_d1_local = reg_1297;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d1_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d1_local = reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d1_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d1_local = reg_1260;
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7)))) begin
        smem_4_address0_local = zext_ln179_1_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln184_1_fu_1907_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln181_1_fu_1887_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln180_1_fu_1877_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln183_1_fu_1897_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln172_1_fu_1733_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln185_1_fu_1927_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln182_1_fu_1917_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln181_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln185_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_4_address1_local = zext_ln179_fu_1683_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln184_fu_1723_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln182_fu_1703_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln180_fu_1693_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln183_fu_1713_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address1_local = zext_ln172_fu_1673_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7)))) begin
        smem_4_d0_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_1_load_3_reg_2276;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_load_2_reg_2198;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_x_3_load_3_reg_2307;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d1_local = DATA_x_1_load_1_reg_2219;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d1_local = DATA_x_3_load_1_reg_2260;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_4_d1_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d1_local = reg_1308;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_d1_local = reg_1297;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d1_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d1_local = reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d1_local = reg_1260;
    end else begin
        smem_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln180_1_fu_1877_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln184_1_fu_1907_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln181_1_fu_1887_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln183_1_fu_1897_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln179_1_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln172_1_fu_1733_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7)))) begin
        smem_5_address1_local = zext_ln182_1_fu_1917_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln185_1_fu_1927_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln181_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln185_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_5_address1_local = zext_ln182_fu_1703_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln180_fu_1693_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln184_fu_1723_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln183_fu_1713_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln179_fu_1683_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address1_local = zext_ln172_fu_1673_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_1_load_3_reg_2276;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_load_2_reg_2198;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_x_3_load_3_reg_2307;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d1_local = DATA_x_1_load_1_reg_2219;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d1_local = DATA_x_3_load_1_reg_2260;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))))) begin
        smem_5_d1_local = reg_1297;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d1_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d1_local = reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d1_local = reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d1_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d1_local = reg_1260;
    end else begin
        smem_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln183_1_fu_1897_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln180_1_fu_1877_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln184_1_fu_1907_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln181_1_fu_1887_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln179_1_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln172_1_fu_1733_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7)))) begin
        smem_6_address1_local = zext_ln185_1_fu_1927_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln182_1_fu_1917_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_6_address1_local = zext_ln185_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln181_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address1_local = zext_ln183_fu_1713_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address1_local = zext_ln180_fu_1693_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address1_local = zext_ln184_fu_1723_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address1_local = zext_ln179_fu_1683_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address1_local = zext_ln182_fu_1703_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_6_address1_local = zext_ln172_fu_1673_p1;
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_1_load_3_reg_2276;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_load_2_reg_2198;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7)))) begin
        smem_6_d1_local = DATA_x_3_load_3_reg_2307;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_6_d1_local = DATA_x_3_load_1_reg_2260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d1_local = DATA_x_1_load_1_reg_2219;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d1_local = reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d1_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d1_local = reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d1_local = reg_1279;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_d1_local = reg_1297;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_6_d1_local = reg_1260;
    end else begin
        smem_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))))) begin
        smem_6_we1_local = 1'b1;
    end else begin
        smem_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7)))) begin
        smem_address0_local = zext_ln181_1_fu_1887_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln179_1_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln183_1_fu_1897_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln180_1_fu_1877_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln184_1_fu_1907_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln172_1_fu_1733_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln182_1_fu_1917_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln185_1_fu_1927_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_address1_local = zext_ln181_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln185_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln179_fu_1683_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln183_fu_1713_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln180_fu_1693_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln184_fu_1723_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln182_fu_1703_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln172_fu_1673_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7)))) begin
        smem_d0_local = DATA_x_1_load_3_reg_2276;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_load_2_reg_2198;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_x_3_load_3_reg_2307;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7)))) begin
        smem_d1_local = DATA_x_1_load_1_reg_2219;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d1_local = DATA_x_3_load_1_reg_2260;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d1_local = reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d1_local = reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d1_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d1_local = reg_1308;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d1_local = reg_1297;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d1_local = reg_1260;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_2179 == 3'd6) | (trunc_ln172_6_reg_2179 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_2063 == 3'd6) | (trunc_ln172_reg_2063 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_reg_2063 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_6_reg_2179 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_2_address0 = DATA_x_2_address0_local;
assign DATA_x_2_address1 = DATA_x_2_address1_local;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = DATA_x_3_address0_local;
assign DATA_x_3_address1 = DATA_x_3_address1_local;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln174_fu_1393_p2 = (tid_reg_1998 + 7'd2);
assign add_ln179_1_fu_1634_p2 = ($signed(zext_ln172_16_reg_2052) + $signed(9'd264));
assign add_ln179_fu_1457_p2 = ($signed(zext_ln172_12_reg_2040) + $signed(9'd264));
assign add_ln181_1_fu_1663_p2 = ($signed(zext_ln172_16_reg_2052) + $signed(9'd330));
assign add_ln181_fu_1485_p2 = ($signed(zext_ln172_12_reg_2040) + $signed(9'd330));
assign add_ln182_1_fu_1781_p2 = ($signed(zext_ln172_15_reg_2046_pp0_iter3_reg) + $signed(8'd132));
assign add_ln182_fu_1573_p2 = ($signed(zext_ln172_11_reg_2034_pp0_iter3_reg) + $signed(8'd132));
assign add_ln183_1_fu_1668_p2 = ($signed(zext_ln172_15_reg_2046) + $signed(8'd140));
assign add_ln183_fu_1490_p2 = ($signed(zext_ln172_11_reg_2034) + $signed(8'd140));
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
assign grp_fu_1364_p0 = ap_sig_allocacmp_tid[5:0];
assign grp_fu_1364_p1 = 6'd7;
assign grp_fu_1387_p0 = {{tmp_s_fu_1370_p4}, {1'd1}};
assign grp_fu_1387_p1 = 6'd7;
assign grp_fu_1937_p0 = grp_fu_1937_p00;
assign grp_fu_1937_p00 = offset_reg_2009_pp0_iter1_reg;
assign grp_fu_1937_p1 = 8'd66;
assign grp_fu_1937_p2 = 17'd293;
assign grp_fu_1946_p0 = grp_fu_1946_p00;
assign grp_fu_1946_p00 = offset_reg_2009_pp0_iter1_reg;
assign grp_fu_1946_p1 = 9'd198;
assign grp_fu_1946_p2 = 19'd586;
assign grp_fu_1955_p0 = grp_fu_1955_p00;
assign grp_fu_1955_p00 = offset_reg_2009_pp0_iter2_reg;
assign grp_fu_1955_p1 = 10'd462;
assign grp_fu_1955_p2 = 21'd1171;
assign grp_fu_1964_p0 = grp_fu_1964_p00;
assign grp_fu_1964_p00 = offset_1_reg_2025_pp0_iter1_reg;
assign grp_fu_1964_p1 = 8'd66;
assign grp_fu_1964_p2 = 17'd293;
assign grp_fu_1973_p0 = grp_fu_1973_p00;
assign grp_fu_1973_p00 = offset_1_reg_2025_pp0_iter2_reg;
assign grp_fu_1973_p1 = 9'd198;
assign grp_fu_1973_p2 = 19'd586;
assign grp_fu_1982_p0 = grp_fu_1982_p00;
assign grp_fu_1982_p00 = offset_1_reg_2025_pp0_iter2_reg;
assign grp_fu_1982_p1 = 10'd462;
assign grp_fu_1982_p2 = 21'd1171;
assign mul_ln172_1_fu_1507_p0 = mul_ln172_1_fu_1507_p00;
assign mul_ln172_1_fu_1507_p00 = offset_1_reg_2025_pp0_iter2_reg;
assign mul_ln172_1_fu_1507_p1 = 13'd74;
assign mul_ln172_fu_1424_p0 = mul_ln172_fu_1424_p00;
assign mul_ln172_fu_1424_p00 = offset_reg_2009_pp0_iter2_reg;
assign mul_ln172_fu_1424_p1 = 13'd74;
assign mul_ln179_1_fu_1746_p0 = mul_ln179_1_fu_1746_p00;
assign mul_ln179_1_fu_1746_p00 = add_ln179_1_reg_2188;
assign mul_ln179_1_fu_1746_p1 = 19'd586;
assign mul_ln179_fu_1538_p0 = mul_ln179_fu_1538_p00;
assign mul_ln179_fu_1538_p00 = add_ln179_reg_2077;
assign mul_ln179_fu_1538_p1 = 19'd586;
assign mul_ln181_1_fu_1765_p0 = mul_ln181_1_fu_1765_p00;
assign mul_ln181_1_fu_1765_p00 = add_ln181_1_reg_2230;
assign mul_ln181_1_fu_1765_p1 = 19'd586;
assign mul_ln181_fu_1557_p0 = mul_ln181_fu_1557_p00;
assign mul_ln181_fu_1557_p00 = add_ln181_reg_2097;
assign mul_ln181_fu_1557_p1 = 19'd586;
assign mul_ln182_1_fu_1790_p0 = mul_ln182_1_fu_1790_p00;
assign mul_ln182_1_fu_1790_p00 = add_ln182_1_fu_1781_p2;
assign mul_ln182_1_fu_1790_p1 = 17'd293;
assign mul_ln182_fu_1582_p0 = mul_ln182_fu_1582_p00;
assign mul_ln182_fu_1582_p00 = add_ln182_fu_1573_p2;
assign mul_ln182_fu_1582_p1 = 17'd293;
assign mul_ln183_1_fu_1813_p0 = mul_ln183_1_fu_1813_p00;
assign mul_ln183_1_fu_1813_p00 = $unsigned(sext_ln183_1_fu_1806_p1);
assign mul_ln183_1_fu_1813_p1 = 19'd586;
assign mul_ln183_fu_1605_p0 = mul_ln183_fu_1605_p00;
assign mul_ln183_fu_1605_p00 = $unsigned(sext_ln183_fu_1598_p1);
assign mul_ln183_fu_1605_p1 = 19'd586;
assign offset_1_fu_1379_p3 = {{tmp_s_fu_1370_p4}, {1'd1}};
assign offset_fu_1360_p1 = ap_sig_allocacmp_tid[5:0];
assign or_ln180_1_fu_1639_p3 = {{tmp_s_reg_2019_pp0_iter2_reg}, {2'd3}};
assign or_ln6_fu_1462_p3 = {{offset_reg_2009_pp0_iter2_reg}, {1'd1}};
assign or_ln7_fu_1523_p3 = {{tmp_s_reg_2019_pp0_iter2_reg}, {2'd2}};
assign sext_ln183_1_fu_1806_p1 = $signed(add_ln183_1_reg_2245);
assign sext_ln183_fu_1598_p1 = $signed(add_ln183_reg_2112);
assign shl_ln178_fu_1444_p2 = tid_reg_1998_pp0_iter2_reg << 7'd1;
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
assign tmp_244_fu_1476_p1 = grp_fu_1937_p3;
assign tmp_248_fu_1495_p1 = grp_fu_1946_p3;
assign tmp_249_fu_1621_p1 = grp_fu_1955_p3;
assign tmp_252_fu_1654_p1 = grp_fu_1964_p3;
assign tmp_256_fu_1829_p1 = grp_fu_1973_p3;
assign tmp_257_fu_1838_p1 = grp_fu_1982_p3;
assign tmp_s_fu_1370_p4 = {{tid_reg_1998[5:1]}};
assign trunc_ln172_6_fu_1630_p1 = grp_fu_1387_p2[2:0];
assign trunc_ln172_fu_1440_p1 = grp_fu_1364_p2[2:0];
assign zext_ln172_11_fu_1403_p1 = offset_reg_2009_pp0_iter1_reg;
assign zext_ln172_12_fu_1406_p1 = offset_reg_2009_pp0_iter1_reg;
assign zext_ln172_15_fu_1412_p1 = offset_1_reg_2025_pp0_iter1_reg;
assign zext_ln172_16_fu_1418_p1 = offset_1_reg_2025_pp0_iter2_reg;
assign zext_ln172_1_fu_1733_p1 = tmp_250_reg_2132;
assign zext_ln172_fu_1673_p1 = tmp_242_reg_2058;
assign zext_ln178_1_fu_1530_p1 = or_ln7_fu_1523_p3;
assign zext_ln178_fu_1449_p1 = shl_ln178_fu_1444_p2;
assign zext_ln179_1_fu_1867_p1 = tmp_251_reg_2271;
assign zext_ln179_fu_1683_p1 = tmp_243_reg_2149;
assign zext_ln180_1_fu_1877_p1 = tmp_252_reg_2209;
assign zext_ln180_2_fu_1469_p1 = or_ln6_fu_1462_p3;
assign zext_ln180_3_fu_1646_p1 = or_ln180_1_fu_1639_p3;
assign zext_ln180_fu_1693_p1 = tmp_244_reg_2087;
assign zext_ln181_1_fu_1887_p1 = tmp_253_reg_2287;
assign zext_ln181_fu_1847_p1 = tmp_245_reg_2159;
assign zext_ln182_1_fu_1917_p1 = tmp_254_reg_2292;
assign zext_ln182_fu_1703_p1 = tmp_246_reg_2164;
assign zext_ln183_1_fu_1897_p1 = tmp_255_reg_2297;
assign zext_ln183_fu_1713_p1 = tmp_247_reg_2169;
assign zext_ln184_1_fu_1907_p1 = tmp_256_reg_2302;
assign zext_ln184_fu_1723_p1 = tmp_248_reg_2122;
assign zext_ln185_1_fu_1927_p1 = tmp_257_reg_2318;
assign zext_ln185_fu_1857_p1 = tmp_249_reg_2174;
always @ (posedge ap_clk) begin
    offset_1_reg_2025[0] <= 1'b1;
    offset_1_reg_2025_pp0_iter1_reg[0] <= 1'b1;
    offset_1_reg_2025_pp0_iter2_reg[0] <= 1'b1;
    zext_ln172_11_reg_2034[7:6] <= 2'b00;
    zext_ln172_11_reg_2034_pp0_iter3_reg[7:6] <= 2'b00;
    zext_ln172_12_reg_2040[8:6] <= 3'b000;
    zext_ln172_15_reg_2046[0] <= 1'b1;
    zext_ln172_15_reg_2046[7:6] <= 2'b00;
    zext_ln172_15_reg_2046_pp0_iter3_reg[0] <= 1'b1;
    zext_ln172_15_reg_2046_pp0_iter3_reg[7:6] <= 2'b00;
    zext_ln172_16_reg_2052[0] <= 1'b1;
    zext_ln172_16_reg_2052[8:6] <= 3'b000;
    zext_ln180_2_reg_2082[0] <= 1'b1;
    zext_ln180_2_reg_2082[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln178_1_reg_2137[1:0] <= 2'b10;
    zext_ln178_1_reg_2137[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    add_ln179_1_reg_2188[0] <= 1'b1;
    add_ln181_1_reg_2230[0] <= 1'b1;
    add_ln183_1_reg_2245[0] <= 1'b1;
end
endmodule 
