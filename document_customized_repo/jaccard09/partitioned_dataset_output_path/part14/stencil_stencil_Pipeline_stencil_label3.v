
module stencil_stencil_Pipeline_stencil_label3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,r,c,lshr_ln5,filter_address0,filter_ce0,filter_q0,filter_address1,filter_ce1,filter_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,orig_8_address0,orig_8_ce0,orig_8_q0,orig_8_address1,orig_8_ce1,orig_8_q1,orig_9_address0,orig_9_ce0,orig_9_q0,orig_9_address1,orig_9_ce1,orig_9_q1,orig_10_address0,orig_10_ce0,orig_10_q0,orig_10_address1,orig_10_ce1,orig_10_q1,orig_11_address0,orig_11_ce0,orig_11_q0,orig_11_address1,orig_11_ce1,orig_11_q1,orig_12_address0,orig_12_ce0,orig_12_q0,orig_12_address1,orig_12_ce1,orig_12_q1,orig_13_address0,orig_13_ce0,orig_13_q0,orig_13_address1,orig_13_ce1,orig_13_q1,orig_14_address0,orig_14_ce0,orig_14_q0,orig_14_address1,orig_14_ce1,orig_14_q1,orig_15_address0,orig_15_ce0,orig_15_q0,orig_15_address1,orig_15_ce1,orig_15_q1,empty,temp_1_out,temp_1_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] r;
input  [5:0] c;
input  [1:0] lshr_ln5;
output  [3:0] filter_address0;
output   filter_ce0;
input  [31:0] filter_q0;
output  [3:0] filter_address1;
output   filter_ce1;
input  [31:0] filter_q1;
output  [8:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [8:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [8:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [8:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [8:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [8:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [8:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [8:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [8:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [8:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [8:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [8:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [8:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [8:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [8:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [8:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
output  [8:0] orig_8_address0;
output   orig_8_ce0;
input  [31:0] orig_8_q0;
output  [8:0] orig_8_address1;
output   orig_8_ce1;
input  [31:0] orig_8_q1;
output  [8:0] orig_9_address0;
output   orig_9_ce0;
input  [31:0] orig_9_q0;
output  [8:0] orig_9_address1;
output   orig_9_ce1;
input  [31:0] orig_9_q1;
output  [8:0] orig_10_address0;
output   orig_10_ce0;
input  [31:0] orig_10_q0;
output  [8:0] orig_10_address1;
output   orig_10_ce1;
input  [31:0] orig_10_q1;
output  [8:0] orig_11_address0;
output   orig_11_ce0;
input  [31:0] orig_11_q0;
output  [8:0] orig_11_address1;
output   orig_11_ce1;
input  [31:0] orig_11_q1;
output  [8:0] orig_12_address0;
output   orig_12_ce0;
input  [31:0] orig_12_q0;
output  [8:0] orig_12_address1;
output   orig_12_ce1;
input  [31:0] orig_12_q1;
output  [8:0] orig_13_address0;
output   orig_13_ce0;
input  [31:0] orig_13_q0;
output  [8:0] orig_13_address1;
output   orig_13_ce1;
input  [31:0] orig_13_q1;
output  [8:0] orig_14_address0;
output   orig_14_ce0;
input  [31:0] orig_14_q0;
output  [8:0] orig_14_address1;
output   orig_14_ce1;
input  [31:0] orig_14_q1;
output  [8:0] orig_15_address0;
output   orig_15_ce0;
input  [31:0] orig_15_q0;
output  [8:0] orig_15_address1;
output   orig_15_ce1;
input  [31:0] orig_15_q1;
input  [3:0] empty;
output  [31:0] temp_1_out;
output   temp_1_out_ap_vld;
reg ap_idle;
reg temp_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln10_reg_2354;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_1158_p2;
reg   [31:0] reg_1166;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_1162_p2;
reg   [31:0] reg_1170;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [3:0] tmp_8_reg_2034;
reg   [1:0] k1_1_reg_2060;
wire   [3:0] empty_14_fu_1203_p2;
reg   [3:0] empty_14_reg_2066;
wire   [6:0] empty_15_fu_1214_p2;
reg   [6:0] empty_15_reg_2074;
reg   [0:0] tmp_10_reg_2169;
reg  signed [31:0] filter_load_reg_2174;
wire  signed [31:0] tmp_fu_1285_p35;
reg  signed [31:0] tmp_reg_2179;
reg  signed [31:0] filter_load_1_reg_2184;
wire   [0:0] icmp_ln10_fu_1445_p2;
reg   [0:0] icmp_ln10_reg_2354_pp0_iter1_reg;
wire   [6:0] empty_17_fu_1455_p2;
reg   [6:0] empty_17_reg_2358;
wire  signed [31:0] tmp_1_fu_1499_p35;
reg  signed [31:0] tmp_1_reg_2369;
reg  signed [31:0] filter_load_2_reg_2374;
wire  signed [31:0] tmp_2_fu_1570_p35;
reg  signed [31:0] tmp_2_reg_2379;
reg  signed [31:0] filter_load_4_reg_2389;
reg  signed [31:0] filter_load_3_reg_2559;
wire  signed [31:0] tmp_4_fu_1765_p35;
reg  signed [31:0] tmp_4_reg_2644;
reg  signed [31:0] filter_load_5_reg_2649;
wire  signed [31:0] tmp_5_fu_1836_p35;
reg  signed [31:0] tmp_5_reg_2654;
reg   [31:0] mul_ln13_reg_2659;
wire  signed [31:0] tmp_3_fu_1907_p35;
reg  signed [31:0] tmp_3_reg_2664;
wire   [31:0] temp_3_fu_1992_p2;
reg   [31:0] temp_3_reg_2669;
wire   [31:0] add_ln13_4_fu_1999_p2;
reg   [31:0] add_ln13_4_reg_2674;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter1_stage2;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] p_cast13_fu_1209_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_fu_1228_p1;
wire   [63:0] zext_ln12_1_fu_1266_p1;
wire   [63:0] zext_ln12_2_fu_1372_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_3_fu_1397_p1;
wire   [63:0] zext_ln12_4_fu_1418_p1;
wire   [63:0] zext_ln12_6_fu_1465_p1;
wire   [63:0] p_cast14_fu_1646_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_7_fu_1673_p1;
wire   [63:0] zext_ln12_8_fu_1698_p1;
wire   [63:0] zext_ln12_9_fu_1719_p1;
wire   [63:0] zext_ln12_5_fu_1745_p1;
reg   [31:0] temp_fu_150;
wire   [31:0] temp_4_fu_2010_p2;
wire    ap_loop_init;
reg   [1:0] k1_fu_154;
wire   [1:0] xor_ln_fu_1486_p3;
reg   [1:0] ap_sig_allocacmp_k1_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage2_01001;
reg    filter_ce1_local;
reg   [3:0] filter_address1_local;
reg    filter_ce0_local;
reg   [3:0] filter_address0_local;
reg    orig_0_ce1_local;
reg   [8:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [8:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [8:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [8:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [8:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [8:0] orig_2_address0_local;
reg    orig_3_ce1_local;
reg   [8:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [8:0] orig_3_address0_local;
reg    orig_4_ce1_local;
reg   [8:0] orig_4_address1_local;
reg    orig_4_ce0_local;
reg   [8:0] orig_4_address0_local;
reg    orig_5_ce1_local;
reg   [8:0] orig_5_address1_local;
reg    orig_5_ce0_local;
reg   [8:0] orig_5_address0_local;
reg    orig_6_ce1_local;
reg   [8:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [8:0] orig_6_address0_local;
reg    orig_7_ce1_local;
reg   [8:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [8:0] orig_7_address0_local;
reg    orig_8_ce1_local;
reg   [8:0] orig_8_address1_local;
reg    orig_8_ce0_local;
reg   [8:0] orig_8_address0_local;
reg    orig_9_ce1_local;
reg   [8:0] orig_9_address1_local;
reg    orig_9_ce0_local;
reg   [8:0] orig_9_address0_local;
reg    orig_10_ce1_local;
reg   [8:0] orig_10_address1_local;
reg    orig_10_ce0_local;
reg   [8:0] orig_10_address0_local;
reg    orig_11_ce1_local;
reg   [8:0] orig_11_address1_local;
reg    orig_11_ce0_local;
reg   [8:0] orig_11_address0_local;
reg    orig_12_ce1_local;
reg   [8:0] orig_12_address1_local;
reg    orig_12_ce0_local;
reg   [8:0] orig_12_address0_local;
reg    orig_13_ce1_local;
reg   [8:0] orig_13_address1_local;
reg    orig_13_ce0_local;
reg   [8:0] orig_13_address0_local;
reg    orig_14_ce1_local;
reg   [8:0] orig_14_address1_local;
reg    orig_14_ce0_local;
reg   [8:0] orig_14_address0_local;
reg    orig_15_ce1_local;
reg   [8:0] orig_15_address1_local;
reg    orig_15_ce0_local;
reg   [8:0] orig_15_address0_local;
reg  signed [31:0] grp_fu_1158_p0;
reg  signed [31:0] grp_fu_1158_p1;
reg  signed [31:0] grp_fu_1162_p0;
reg  signed [31:0] grp_fu_1162_p1;
wire   [3:0] p_shl_fu_1195_p3;
wire   [3:0] zext_ln8_1_fu_1191_p1;
wire   [6:0] zext_ln8_fu_1187_p1;
wire   [8:0] add_ln5_fu_1220_p3;
wire   [1:0] tmp_7_fu_1248_p4;
wire   [2:0] or_ln_fu_1258_p3;
wire   [31:0] tmp_fu_1285_p33;
wire   [12:0] tmp_6_fu_1279_p3;
wire   [12:0] add_ln12_fu_1356_p2;
wire   [8:0] lshr_ln_fu_1362_p4;
wire   [3:0] add_ln12_1_fu_1392_p2;
wire   [12:0] add_ln12_2_fu_1402_p2;
wire   [8:0] lshr_ln12_1_fu_1408_p4;
wire   [1:0] or_ln1_fu_1438_p3;
wire   [6:0] zext_ln10_fu_1451_p1;
wire   [3:0] add_ln12_3_fu_1460_p2;
wire   [0:0] bit_sel_fu_1470_p3;
wire   [0:0] xor_ln10_fu_1477_p2;
wire   [0:0] trunc_ln10_fu_1483_p1;
wire   [31:0] tmp_1_fu_1499_p33;
wire   [31:0] tmp_2_fu_1570_p33;
wire   [3:0] empty_16_fu_1641_p2;
wire   [12:0] tmp_9_fu_1651_p3;
wire   [12:0] add_ln12_4_fu_1657_p2;
wire   [8:0] lshr_ln12_2_fu_1663_p4;
wire   [3:0] add_ln12_5_fu_1693_p2;
wire   [12:0] add_ln12_6_fu_1703_p2;
wire   [8:0] lshr_ln12_3_fu_1709_p4;
wire   [8:0] add_ln5_1_fu_1739_p3;
wire   [31:0] tmp_4_fu_1765_p33;
wire   [31:0] tmp_5_fu_1836_p33;
wire   [31:0] tmp_3_fu_1907_p33;
wire   [31:0] add_ln13_1_fu_1981_p2;
wire   [31:0] add_ln13_fu_1986_p2;
wire   [31:0] add_ln13_3_fu_2005_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1391;
reg    ap_condition_1395;
reg    ap_condition_1399;
reg    ap_condition_1403;
reg    ap_condition_1407;
reg    ap_condition_1411;
reg    ap_condition_1415;
reg    ap_condition_1419;
reg    ap_condition_1423;
reg    ap_condition_1427;
reg    ap_condition_1431;
reg    ap_condition_1435;
reg    ap_condition_1439;
reg    ap_condition_1443;
reg    ap_condition_1447;
reg    ap_condition_1451;
wire   [3:0] tmp_fu_1285_p1;
wire   [3:0] tmp_fu_1285_p3;
wire   [3:0] tmp_fu_1285_p5;
wire   [3:0] tmp_fu_1285_p7;
wire   [3:0] tmp_fu_1285_p9;
wire   [3:0] tmp_fu_1285_p11;
wire   [3:0] tmp_fu_1285_p13;
wire   [3:0] tmp_fu_1285_p15;
wire  signed [3:0] tmp_fu_1285_p17;
wire  signed [3:0] tmp_fu_1285_p19;
wire  signed [3:0] tmp_fu_1285_p21;
wire  signed [3:0] tmp_fu_1285_p23;
wire  signed [3:0] tmp_fu_1285_p25;
wire  signed [3:0] tmp_fu_1285_p27;
wire  signed [3:0] tmp_fu_1285_p29;
wire  signed [3:0] tmp_fu_1285_p31;
wire  signed [3:0] tmp_1_fu_1499_p1;
wire   [3:0] tmp_1_fu_1499_p3;
wire   [3:0] tmp_1_fu_1499_p5;
wire   [3:0] tmp_1_fu_1499_p7;
wire   [3:0] tmp_1_fu_1499_p9;
wire   [3:0] tmp_1_fu_1499_p11;
wire   [3:0] tmp_1_fu_1499_p13;
wire   [3:0] tmp_1_fu_1499_p15;
wire   [3:0] tmp_1_fu_1499_p17;
wire  signed [3:0] tmp_1_fu_1499_p19;
wire  signed [3:0] tmp_1_fu_1499_p21;
wire  signed [3:0] tmp_1_fu_1499_p23;
wire  signed [3:0] tmp_1_fu_1499_p25;
wire  signed [3:0] tmp_1_fu_1499_p27;
wire  signed [3:0] tmp_1_fu_1499_p29;
wire  signed [3:0] tmp_1_fu_1499_p31;
wire  signed [3:0] tmp_2_fu_1570_p1;
wire  signed [3:0] tmp_2_fu_1570_p3;
wire   [3:0] tmp_2_fu_1570_p5;
wire   [3:0] tmp_2_fu_1570_p7;
wire   [3:0] tmp_2_fu_1570_p9;
wire   [3:0] tmp_2_fu_1570_p11;
wire   [3:0] tmp_2_fu_1570_p13;
wire   [3:0] tmp_2_fu_1570_p15;
wire   [3:0] tmp_2_fu_1570_p17;
wire   [3:0] tmp_2_fu_1570_p19;
wire  signed [3:0] tmp_2_fu_1570_p21;
wire  signed [3:0] tmp_2_fu_1570_p23;
wire  signed [3:0] tmp_2_fu_1570_p25;
wire  signed [3:0] tmp_2_fu_1570_p27;
wire  signed [3:0] tmp_2_fu_1570_p29;
wire  signed [3:0] tmp_2_fu_1570_p31;
wire  signed [3:0] tmp_4_fu_1765_p1;
wire   [3:0] tmp_4_fu_1765_p3;
wire   [3:0] tmp_4_fu_1765_p5;
wire   [3:0] tmp_4_fu_1765_p7;
wire   [3:0] tmp_4_fu_1765_p9;
wire   [3:0] tmp_4_fu_1765_p11;
wire   [3:0] tmp_4_fu_1765_p13;
wire   [3:0] tmp_4_fu_1765_p15;
wire   [3:0] tmp_4_fu_1765_p17;
wire  signed [3:0] tmp_4_fu_1765_p19;
wire  signed [3:0] tmp_4_fu_1765_p21;
wire  signed [3:0] tmp_4_fu_1765_p23;
wire  signed [3:0] tmp_4_fu_1765_p25;
wire  signed [3:0] tmp_4_fu_1765_p27;
wire  signed [3:0] tmp_4_fu_1765_p29;
wire  signed [3:0] tmp_4_fu_1765_p31;
wire  signed [3:0] tmp_5_fu_1836_p1;
wire  signed [3:0] tmp_5_fu_1836_p3;
wire   [3:0] tmp_5_fu_1836_p5;
wire   [3:0] tmp_5_fu_1836_p7;
wire   [3:0] tmp_5_fu_1836_p9;
wire   [3:0] tmp_5_fu_1836_p11;
wire   [3:0] tmp_5_fu_1836_p13;
wire   [3:0] tmp_5_fu_1836_p15;
wire   [3:0] tmp_5_fu_1836_p17;
wire   [3:0] tmp_5_fu_1836_p19;
wire  signed [3:0] tmp_5_fu_1836_p21;
wire  signed [3:0] tmp_5_fu_1836_p23;
wire  signed [3:0] tmp_5_fu_1836_p25;
wire  signed [3:0] tmp_5_fu_1836_p27;
wire  signed [3:0] tmp_5_fu_1836_p29;
wire  signed [3:0] tmp_5_fu_1836_p31;
wire   [3:0] tmp_3_fu_1907_p1;
wire   [3:0] tmp_3_fu_1907_p3;
wire   [3:0] tmp_3_fu_1907_p5;
wire   [3:0] tmp_3_fu_1907_p7;
wire   [3:0] tmp_3_fu_1907_p9;
wire   [3:0] tmp_3_fu_1907_p11;
wire   [3:0] tmp_3_fu_1907_p13;
wire   [3:0] tmp_3_fu_1907_p15;
wire  signed [3:0] tmp_3_fu_1907_p17;
wire  signed [3:0] tmp_3_fu_1907_p19;
wire  signed [3:0] tmp_3_fu_1907_p21;
wire  signed [3:0] tmp_3_fu_1907_p23;
wire  signed [3:0] tmp_3_fu_1907_p25;
wire  signed [3:0] tmp_3_fu_1907_p27;
wire  signed [3:0] tmp_3_fu_1907_p29;
wire  signed [3:0] tmp_3_fu_1907_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 temp_fu_150 = 32'd0;
#0 k1_fu_154 = 2'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1158_p0),.din1(grp_fu_1158_p1),.ce(1'b1),.dout(grp_fu_1158_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1162_p0),.din1(grp_fu_1162_p1),.ce(1'b1),.dout(grp_fu_1162_p2));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h1 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h3 ),.din3_WIDTH( 32 ),.CASE4( 4'h4 ),.din4_WIDTH( 32 ),.CASE5( 4'h5 ),.din5_WIDTH( 32 ),.CASE6( 4'h6 ),.din6_WIDTH( 32 ),.CASE7( 4'h7 ),.din7_WIDTH( 32 ),.CASE8( 4'h8 ),.din8_WIDTH( 32 ),.CASE9( 4'h9 ),.din9_WIDTH( 32 ),.CASE10( 4'hA ),.din10_WIDTH( 32 ),.CASE11( 4'hB ),.din11_WIDTH( 32 ),.CASE12( 4'hC ),.din12_WIDTH( 32 ),.CASE13( 4'hD ),.din13_WIDTH( 32 ),.CASE14( 4'hE ),.din14_WIDTH( 32 ),.CASE15( 4'hF ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U3(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.din8(orig_8_q1),.din9(orig_9_q1),.din10(orig_10_q1),.din11(orig_11_q1),.din12(orig_12_q1),.din13(orig_13_q1),.din14(orig_14_q1),.din15(orig_15_q1),.def(tmp_fu_1285_p33),.sel(empty),.dout(tmp_fu_1285_p35));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h1 ),.din2_WIDTH( 32 ),.CASE3( 4'h2 ),.din3_WIDTH( 32 ),.CASE4( 4'h3 ),.din4_WIDTH( 32 ),.CASE5( 4'h4 ),.din5_WIDTH( 32 ),.CASE6( 4'h5 ),.din6_WIDTH( 32 ),.CASE7( 4'h6 ),.din7_WIDTH( 32 ),.CASE8( 4'h7 ),.din8_WIDTH( 32 ),.CASE9( 4'h8 ),.din9_WIDTH( 32 ),.CASE10( 4'h9 ),.din10_WIDTH( 32 ),.CASE11( 4'hA ),.din11_WIDTH( 32 ),.CASE12( 4'hB ),.din12_WIDTH( 32 ),.CASE13( 4'hC ),.din13_WIDTH( 32 ),.CASE14( 4'hD ),.din14_WIDTH( 32 ),.CASE15( 4'hE ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U4(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.din8(orig_8_q0),.din9(orig_9_q0),.din10(orig_10_q0),.din11(orig_11_q0),.din12(orig_12_q0),.din13(orig_13_q0),.din14(orig_14_q0),.din15(orig_15_q0),.def(tmp_1_fu_1499_p33),.sel(empty),.dout(tmp_1_fu_1499_p35));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 32 ),.CASE1( 4'hF ),.din1_WIDTH( 32 ),.CASE2( 4'h0 ),.din2_WIDTH( 32 ),.CASE3( 4'h1 ),.din3_WIDTH( 32 ),.CASE4( 4'h2 ),.din4_WIDTH( 32 ),.CASE5( 4'h3 ),.din5_WIDTH( 32 ),.CASE6( 4'h4 ),.din6_WIDTH( 32 ),.CASE7( 4'h5 ),.din7_WIDTH( 32 ),.CASE8( 4'h6 ),.din8_WIDTH( 32 ),.CASE9( 4'h7 ),.din9_WIDTH( 32 ),.CASE10( 4'h8 ),.din10_WIDTH( 32 ),.CASE11( 4'h9 ),.din11_WIDTH( 32 ),.CASE12( 4'hA ),.din12_WIDTH( 32 ),.CASE13( 4'hB ),.din13_WIDTH( 32 ),.CASE14( 4'hC ),.din14_WIDTH( 32 ),.CASE15( 4'hD ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U5(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.din8(orig_8_q0),.din9(orig_9_q0),.din10(orig_10_q0),.din11(orig_11_q0),.din12(orig_12_q0),.din13(orig_13_q0),.din14(orig_14_q0),.din15(orig_15_q0),.def(tmp_2_fu_1570_p33),.sel(empty),.dout(tmp_2_fu_1570_p35));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h1 ),.din2_WIDTH( 32 ),.CASE3( 4'h2 ),.din3_WIDTH( 32 ),.CASE4( 4'h3 ),.din4_WIDTH( 32 ),.CASE5( 4'h4 ),.din5_WIDTH( 32 ),.CASE6( 4'h5 ),.din6_WIDTH( 32 ),.CASE7( 4'h6 ),.din7_WIDTH( 32 ),.CASE8( 4'h7 ),.din8_WIDTH( 32 ),.CASE9( 4'h8 ),.din9_WIDTH( 32 ),.CASE10( 4'h9 ),.din10_WIDTH( 32 ),.CASE11( 4'hA ),.din11_WIDTH( 32 ),.CASE12( 4'hB ),.din12_WIDTH( 32 ),.CASE13( 4'hC ),.din13_WIDTH( 32 ),.CASE14( 4'hD ),.din14_WIDTH( 32 ),.CASE15( 4'hE ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U6(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.din8(orig_8_q1),.din9(orig_9_q1),.din10(orig_10_q1),.din11(orig_11_q1),.din12(orig_12_q1),.din13(orig_13_q1),.din14(orig_14_q1),.din15(orig_15_q1),.def(tmp_4_fu_1765_p33),.sel(empty),.dout(tmp_4_fu_1765_p35));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 32 ),.CASE1( 4'hF ),.din1_WIDTH( 32 ),.CASE2( 4'h0 ),.din2_WIDTH( 32 ),.CASE3( 4'h1 ),.din3_WIDTH( 32 ),.CASE4( 4'h2 ),.din4_WIDTH( 32 ),.CASE5( 4'h3 ),.din5_WIDTH( 32 ),.CASE6( 4'h4 ),.din6_WIDTH( 32 ),.CASE7( 4'h5 ),.din7_WIDTH( 32 ),.CASE8( 4'h6 ),.din8_WIDTH( 32 ),.CASE9( 4'h7 ),.din9_WIDTH( 32 ),.CASE10( 4'h8 ),.din10_WIDTH( 32 ),.CASE11( 4'h9 ),.din11_WIDTH( 32 ),.CASE12( 4'hA ),.din12_WIDTH( 32 ),.CASE13( 4'hB ),.din13_WIDTH( 32 ),.CASE14( 4'hC ),.din14_WIDTH( 32 ),.CASE15( 4'hD ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U7(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.din8(orig_8_q1),.din9(orig_9_q1),.din10(orig_10_q1),.din11(orig_11_q1),.din12(orig_12_q1),.din13(orig_13_q1),.din14(orig_14_q1),.din15(orig_15_q1),.def(tmp_5_fu_1836_p33),.sel(empty),.dout(tmp_5_fu_1836_p35));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h1 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h3 ),.din3_WIDTH( 32 ),.CASE4( 4'h4 ),.din4_WIDTH( 32 ),.CASE5( 4'h5 ),.din5_WIDTH( 32 ),.CASE6( 4'h6 ),.din6_WIDTH( 32 ),.CASE7( 4'h7 ),.din7_WIDTH( 32 ),.CASE8( 4'h8 ),.din8_WIDTH( 32 ),.CASE9( 4'h9 ),.din9_WIDTH( 32 ),.CASE10( 4'hA ),.din10_WIDTH( 32 ),.CASE11( 4'hB ),.din11_WIDTH( 32 ),.CASE12( 4'hC ),.din12_WIDTH( 32 ),.CASE13( 4'hD ),.din13_WIDTH( 32 ),.CASE14( 4'hE ),.din14_WIDTH( 32 ),.CASE15( 4'hF ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U8(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.din8(orig_8_q0),.din9(orig_9_q0),.din10(orig_10_q0),.din11(orig_11_q0),.din12(orig_12_q0),.din13(orig_13_q0),.din14(orig_14_q0),.din15(orig_15_q0),.def(tmp_3_fu_1907_p33),.sel(empty),.dout(tmp_3_fu_1907_p35));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage2) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k1_fu_154 <= 2'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln10_fu_1445_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k1_fu_154 <= xor_ln_fu_1486_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_fu_150 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_fu_150 <= temp_4_fu_2010_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_4_reg_2674 <= add_ln13_4_fu_1999_p2;
        empty_14_reg_2066 <= empty_14_fu_1203_p2;
        empty_15_reg_2074 <= empty_15_fu_1214_p2;
        k1_1_reg_2060 <= ap_sig_allocacmp_k1_1;
        tmp_10_reg_2169 <= ap_sig_allocacmp_k1_1[32'd1];
        tmp_4_reg_2644 <= tmp_4_fu_1765_p35;
        tmp_5_reg_2654 <= tmp_5_fu_1836_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        tmp_1_reg_2369 <= tmp_1_fu_1499_p35;
        tmp_2_reg_2379 <= tmp_2_fu_1570_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_17_reg_2358 <= empty_17_fu_1455_p2;
        icmp_ln10_reg_2354 <= icmp_ln10_fu_1445_p2;
        icmp_ln10_reg_2354_pp0_iter1_reg <= icmp_ln10_reg_2354;
        tmp_3_reg_2664 <= tmp_3_fu_1907_p35;
        tmp_reg_2179 <= tmp_fu_1285_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        filter_load_1_reg_2184 <= filter_q0;
        filter_load_reg_2174 <= filter_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        filter_load_2_reg_2374 <= filter_q1;
        filter_load_4_reg_2389 <= filter_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        filter_load_3_reg_2559 <= filter_q1;
        filter_load_5_reg_2649 <= filter_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_reg_2659 <= grp_fu_1158_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1166 <= grp_fu_1158_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1170 <= grp_fu_1162_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_3_reg_2669 <= temp_3_fu_1992_p2;
    end
end
always @ (*) begin
    if (((icmp_ln10_reg_2354 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (icmp_ln10_reg_2354_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
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
        ap_sig_allocacmp_k1_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_k1_1 = k1_fu_154;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            filter_address0_local = zext_ln12_8_fu_1698_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            filter_address0_local = zext_ln12_6_fu_1465_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            filter_address0_local = zext_ln12_1_fu_1266_p1;
        end else begin
            filter_address0_local = 'bx;
        end
    end else begin
        filter_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            filter_address1_local = p_cast14_fu_1646_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            filter_address1_local = zext_ln12_3_fu_1397_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            filter_address1_local = p_cast13_fu_1209_p1;
        end else begin
            filter_address1_local = 'bx;
        end
    end else begin
        filter_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        filter_ce0_local = 1'b1;
    end else begin
        filter_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        filter_ce1_local = 1'b1;
    end else begin
        filter_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1158_p0 = filter_load_5_reg_2649;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1158_p0 = filter_load_2_reg_2374;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1158_p0 = filter_load_reg_2174;
    end else begin
        grp_fu_1158_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1158_p1 = tmp_5_reg_2654;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1158_p1 = tmp_2_reg_2379;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1158_p1 = tmp_reg_2179;
    end else begin
        grp_fu_1158_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1162_p0 = filter_load_3_reg_2559;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1162_p0 = filter_load_4_reg_2389;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1162_p0 = filter_load_1_reg_2184;
        end else begin
            grp_fu_1162_p0 = 'bx;
        end
    end else begin
        grp_fu_1162_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1162_p1 = tmp_3_reg_2664;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1162_p1 = tmp_4_reg_2644;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1162_p1 = tmp_1_reg_2369;
        end else begin
            grp_fu_1162_p1 = 'bx;
        end
    end else begin
        grp_fu_1162_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1395)) begin
            orig_0_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1391)) begin
            orig_0_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_10_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1403)) begin
            orig_10_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1399)) begin
            orig_10_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_10_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_10_address1_local = 'bx;
        end
    end else begin
        orig_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_10_ce0_local = 1'b1;
    end else begin
        orig_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_10_ce1_local = 1'b1;
    end else begin
        orig_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_11_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1399)) begin
            orig_11_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1407)) begin
            orig_11_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_11_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_11_address1_local = 'bx;
        end
    end else begin
        orig_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_11_ce0_local = 1'b1;
    end else begin
        orig_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_11_ce1_local = 1'b1;
    end else begin
        orig_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_12_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1407)) begin
            orig_12_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1411)) begin
            orig_12_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_12_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_12_address1_local = 'bx;
        end
    end else begin
        orig_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_12_ce0_local = 1'b1;
    end else begin
        orig_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_12_ce1_local = 1'b1;
    end else begin
        orig_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_13_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1411)) begin
            orig_13_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1415)) begin
            orig_13_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_13_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_13_address1_local = 'bx;
        end
    end else begin
        orig_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_13_ce0_local = 1'b1;
    end else begin
        orig_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_13_ce1_local = 1'b1;
    end else begin
        orig_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_14_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1415)) begin
            orig_14_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1419)) begin
            orig_14_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_14_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_14_address1_local = 'bx;
        end
    end else begin
        orig_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_14_ce0_local = 1'b1;
    end else begin
        orig_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_14_ce1_local = 1'b1;
    end else begin
        orig_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_15_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1419)) begin
            orig_15_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1395)) begin
            orig_15_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_15_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_15_address1_local = 'bx;
        end
    end else begin
        orig_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_15_ce0_local = 1'b1;
    end else begin
        orig_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_15_ce1_local = 1'b1;
    end else begin
        orig_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1391)) begin
            orig_1_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1423)) begin
            orig_1_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1423)) begin
            orig_2_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1427)) begin
            orig_2_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1427)) begin
            orig_3_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1431)) begin
            orig_3_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1431)) begin
            orig_4_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1435)) begin
            orig_4_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_4_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_4_address1_local = 'bx;
        end
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1435)) begin
            orig_5_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1439)) begin
            orig_5_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_5_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_5_address1_local = 'bx;
        end
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1439)) begin
            orig_6_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1443)) begin
            orig_6_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_6_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_6_address1_local = 'bx;
        end
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1443)) begin
            orig_7_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1447)) begin
            orig_7_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_7_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_7_address1_local = 'bx;
        end
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_8_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1447)) begin
            orig_8_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1451)) begin
            orig_8_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_8_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_8_address1_local = 'bx;
        end
    end else begin
        orig_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_8_ce0_local = 1'b1;
    end else begin
        orig_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_8_ce1_local = 1'b1;
    end else begin
        orig_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_9_address0_local = zext_ln12_5_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address0_local = zext_ln12_4_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (tmp_8_reg_2034 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address0_local = zext_ln12_2_fu_1372_p1;
    end else begin
        orig_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1451)) begin
            orig_9_address1_local = zext_ln12_9_fu_1719_p1;
        end else if ((1'b1 == ap_condition_1403)) begin
            orig_9_address1_local = zext_ln12_7_fu_1673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_9_address1_local = zext_ln12_fu_1228_p1;
        end else begin
            orig_9_address1_local = 'bx;
        end
    end else begin
        orig_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_8_reg_2034 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_9_ce0_local = 1'b1;
    end else begin
        orig_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_8_reg_2034 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_9_ce1_local = 1'b1;
    end else begin
        orig_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln10_reg_2354_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_1_out_ap_vld = 1'b1;
    end else begin
        temp_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln12_1_fu_1392_p2 = (empty_14_reg_2066 + 4'd2);
assign add_ln12_2_fu_1402_p2 = (tmp_6_fu_1279_p3 + 13'd2);
assign add_ln12_3_fu_1460_p2 = (empty_14_reg_2066 + 4'd4);
assign add_ln12_4_fu_1657_p2 = (tmp_9_fu_1651_p3 + 13'd1);
assign add_ln12_5_fu_1693_p2 = (empty_14_reg_2066 + 4'd5);
assign add_ln12_6_fu_1703_p2 = (tmp_9_fu_1651_p3 + 13'd2);
assign add_ln12_fu_1356_p2 = (tmp_6_fu_1279_p3 + 13'd1);
assign add_ln13_1_fu_1981_p2 = (reg_1166 + mul_ln13_reg_2659);
assign add_ln13_3_fu_2005_p2 = (add_ln13_4_reg_2674 + reg_1170);
assign add_ln13_4_fu_1999_p2 = (reg_1170 + reg_1166);
assign add_ln13_fu_1986_p2 = (add_ln13_1_fu_1981_p2 + reg_1170);
assign add_ln5_1_fu_1739_p3 = {{empty_17_reg_2358}, {lshr_ln5}};
assign add_ln5_fu_1220_p3 = {{empty_15_fu_1214_p2}, {lshr_ln5}};
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
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1391 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd15) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1395 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd14) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1399 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1403 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1407 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1411 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1415 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1419 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd13) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1423 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1427 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1431 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1435 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1439 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1443 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1447 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1451 = ((icmp_ln10_reg_2354 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (tmp_8_reg_2034 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign bit_sel_fu_1470_p3 = k1_1_reg_2060[2'd1];
assign empty_14_fu_1203_p2 = (p_shl_fu_1195_p3 - zext_ln8_1_fu_1191_p1);
assign empty_15_fu_1214_p2 = (zext_ln8_fu_1187_p1 + r);
assign empty_16_fu_1641_p2 = (empty_14_reg_2066 + 4'd3);
assign empty_17_fu_1455_p2 = (zext_ln10_fu_1451_p1 + r);
assign filter_address0 = filter_address0_local;
assign filter_address1 = filter_address1_local;
assign filter_ce0 = filter_ce0_local;
assign filter_ce1 = filter_ce1_local;
assign icmp_ln10_fu_1445_p2 = ((or_ln1_fu_1438_p3 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln12_1_fu_1408_p4 = {{add_ln12_2_fu_1402_p2[12:4]}};
assign lshr_ln12_2_fu_1663_p4 = {{add_ln12_4_fu_1657_p2[12:4]}};
assign lshr_ln12_3_fu_1709_p4 = {{add_ln12_6_fu_1703_p2[12:4]}};
assign lshr_ln_fu_1362_p4 = {{add_ln12_fu_1356_p2[12:4]}};
assign or_ln1_fu_1438_p3 = {{tmp_10_reg_2169}, {1'd1}};
assign or_ln_fu_1258_p3 = {{tmp_7_fu_1248_p4}, {1'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_10_address0 = orig_10_address0_local;
assign orig_10_address1 = orig_10_address1_local;
assign orig_10_ce0 = orig_10_ce0_local;
assign orig_10_ce1 = orig_10_ce1_local;
assign orig_11_address0 = orig_11_address0_local;
assign orig_11_address1 = orig_11_address1_local;
assign orig_11_ce0 = orig_11_ce0_local;
assign orig_11_ce1 = orig_11_ce1_local;
assign orig_12_address0 = orig_12_address0_local;
assign orig_12_address1 = orig_12_address1_local;
assign orig_12_ce0 = orig_12_ce0_local;
assign orig_12_ce1 = orig_12_ce1_local;
assign orig_13_address0 = orig_13_address0_local;
assign orig_13_address1 = orig_13_address1_local;
assign orig_13_ce0 = orig_13_ce0_local;
assign orig_13_ce1 = orig_13_ce1_local;
assign orig_14_address0 = orig_14_address0_local;
assign orig_14_address1 = orig_14_address1_local;
assign orig_14_ce0 = orig_14_ce0_local;
assign orig_14_ce1 = orig_14_ce1_local;
assign orig_15_address0 = orig_15_address0_local;
assign orig_15_address1 = orig_15_address1_local;
assign orig_15_ce0 = orig_15_ce0_local;
assign orig_15_ce1 = orig_15_ce1_local;
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
assign orig_4_address0 = orig_4_address0_local;
assign orig_4_address1 = orig_4_address1_local;
assign orig_4_ce0 = orig_4_ce0_local;
assign orig_4_ce1 = orig_4_ce1_local;
assign orig_5_address0 = orig_5_address0_local;
assign orig_5_address1 = orig_5_address1_local;
assign orig_5_ce0 = orig_5_ce0_local;
assign orig_5_ce1 = orig_5_ce1_local;
assign orig_6_address0 = orig_6_address0_local;
assign orig_6_address1 = orig_6_address1_local;
assign orig_6_ce0 = orig_6_ce0_local;
assign orig_6_ce1 = orig_6_ce1_local;
assign orig_7_address0 = orig_7_address0_local;
assign orig_7_address1 = orig_7_address1_local;
assign orig_7_ce0 = orig_7_ce0_local;
assign orig_7_ce1 = orig_7_ce1_local;
assign orig_8_address0 = orig_8_address0_local;
assign orig_8_address1 = orig_8_address1_local;
assign orig_8_ce0 = orig_8_ce0_local;
assign orig_8_ce1 = orig_8_ce1_local;
assign orig_9_address0 = orig_9_address0_local;
assign orig_9_address1 = orig_9_address1_local;
assign orig_9_ce0 = orig_9_ce0_local;
assign orig_9_ce1 = orig_9_ce1_local;
assign p_cast13_fu_1209_p1 = empty_14_fu_1203_p2;
assign p_cast14_fu_1646_p1 = empty_16_fu_1641_p2;
assign p_shl_fu_1195_p3 = {{ap_sig_allocacmp_k1_1}, {2'd0}};
assign temp_1_out = (add_ln13_fu_1986_p2 + temp_fu_150);
assign temp_3_fu_1992_p2 = (add_ln13_fu_1986_p2 + temp_fu_150);
assign temp_4_fu_2010_p2 = (add_ln13_3_fu_2005_p2 + temp_3_reg_2669);
assign tmp_1_fu_1499_p33 = 'bx;
assign tmp_2_fu_1570_p33 = 'bx;
assign tmp_3_fu_1907_p33 = 'bx;
assign tmp_4_fu_1765_p33 = 'bx;
assign tmp_5_fu_1836_p33 = 'bx;
assign tmp_6_fu_1279_p3 = {{empty_15_reg_2074}, {c}};
assign tmp_7_fu_1248_p4 = {{empty_14_fu_1203_p2[2:1]}};
assign tmp_8_reg_2034 = empty;
assign tmp_9_fu_1651_p3 = {{empty_17_reg_2358}, {c}};
assign tmp_fu_1285_p33 = 'bx;
assign trunc_ln10_fu_1483_p1 = k1_1_reg_2060[0:0];
assign xor_ln10_fu_1477_p2 = (bit_sel_fu_1470_p3 ^ 1'd1);
assign xor_ln_fu_1486_p3 = {{xor_ln10_fu_1477_p2}, {trunc_ln10_fu_1483_p1}};
assign zext_ln10_fu_1451_p1 = or_ln1_fu_1438_p3;
assign zext_ln12_1_fu_1266_p1 = or_ln_fu_1258_p3;
assign zext_ln12_2_fu_1372_p1 = lshr_ln_fu_1362_p4;
assign zext_ln12_3_fu_1397_p1 = add_ln12_1_fu_1392_p2;
assign zext_ln12_4_fu_1418_p1 = lshr_ln12_1_fu_1408_p4;
assign zext_ln12_5_fu_1745_p1 = add_ln5_1_fu_1739_p3;
assign zext_ln12_6_fu_1465_p1 = add_ln12_3_fu_1460_p2;
assign zext_ln12_7_fu_1673_p1 = lshr_ln12_2_fu_1663_p4;
assign zext_ln12_8_fu_1698_p1 = add_ln12_5_fu_1693_p2;
assign zext_ln12_9_fu_1719_p1 = lshr_ln12_3_fu_1709_p4;
assign zext_ln12_fu_1228_p1 = add_ln5_fu_1220_p3;
assign zext_ln8_1_fu_1191_p1 = ap_sig_allocacmp_k1_1;
assign zext_ln8_fu_1187_p1 = ap_sig_allocacmp_k1_1;
endmodule 
