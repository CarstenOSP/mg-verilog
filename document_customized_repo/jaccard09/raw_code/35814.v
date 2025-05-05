module fft1D_512_fft1D_512_Pipeline_loop2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,grp_fu_413_p_din0,grp_fu_413_p_din1,grp_fu_413_p_dout0,grp_fu_413_p_ce,grp_fu_417_p_din0,grp_fu_417_p_din1,grp_fu_417_p_dout0,grp_fu_417_p_ce,grp_fu_421_p_din0,grp_fu_421_p_din1,grp_fu_421_p_dout0,grp_fu_421_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [6:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [31:0] grp_fu_413_p_din0;
output  [33:0] grp_fu_413_p_din1;
input  [64:0] grp_fu_413_p_dout0;
output   grp_fu_413_p_ce;
output  [31:0] grp_fu_417_p_din0;
output  [33:0] grp_fu_417_p_din1;
input  [64:0] grp_fu_417_p_dout0;
output   grp_fu_417_p_ce;
output  [31:0] grp_fu_421_p_din0;
output  [33:0] grp_fu_421_p_din1;
input  [64:0] grp_fu_421_p_dout0;
output   grp_fu_421_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] tmp_reg_1607;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_reg_1601;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_1607_pp0_iter1_reg;
reg   [0:0] tmp_reg_1607_pp0_iter2_reg;
reg   [0:0] tmp_reg_1607_pp0_iter3_reg;
reg   [0:0] tmp_reg_1607_pp0_iter4_reg;
reg   [0:0] tmp_reg_1607_pp0_iter5_reg;
wire   [5:0] offset_fu_1043_p1;
reg   [5:0] offset_reg_1611;
reg   [5:0] offset_reg_1611_pp0_iter1_reg;
reg   [5:0] offset_reg_1611_pp0_iter2_reg;
reg   [5:0] offset_reg_1611_pp0_iter3_reg;
reg   [5:0] offset_reg_1611_pp0_iter4_reg;
reg   [5:0] offset_reg_1611_pp0_iter5_reg;
wire   [31:0] offset_1_fu_1069_p5;
reg   [31:0] offset_1_reg_1624;
reg   [31:0] offset_1_reg_1624_pp0_iter1_reg;
reg   [31:0] offset_1_reg_1624_pp0_iter2_reg;
reg   [31:0] offset_1_reg_1624_pp0_iter3_reg;
reg   [31:0] offset_1_reg_1624_pp0_iter4_reg;
reg   [31:0] offset_1_reg_1624_pp0_iter5_reg;
reg   [4:0] tmp_36_reg_1637;
wire    ap_block_pp0_stage5_11001;
reg   [4:0] tmp_36_reg_1637_pp0_iter1_reg;
reg   [4:0] tmp_36_reg_1637_pp0_iter2_reg;
reg   [4:0] tmp_36_reg_1637_pp0_iter3_reg;
reg   [4:0] tmp_36_reg_1637_pp0_iter4_reg;
reg   [4:0] tmp_36_reg_1637_pp0_iter5_reg;
wire   [2:0] trunc_ln172_fu_1111_p1;
reg   [2:0] trunc_ln172_reg_1645;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [2:0] trunc_ln172_reg_1645_pp0_iter2_reg;
reg   [2:0] trunc_ln172_reg_1645_pp0_iter3_reg;
reg   [2:0] trunc_ln172_reg_1645_pp0_iter4_reg;
reg   [2:0] trunc_ln172_reg_1645_pp0_iter5_reg;
wire   [7:0] zext_ln172_13_fu_1115_p1;
reg   [7:0] zext_ln172_13_reg_1649;
wire   [8:0] zext_ln172_14_fu_1118_p1;
reg   [8:0] zext_ln172_14_reg_1655;
reg   [3:0] tmp_108_reg_1661;
wire   [63:0] zext_ln178_fu_1147_p1;
reg   [63:0] zext_ln178_reg_1666;
wire   [8:0] add_ln179_fu_1152_p2;
reg   [8:0] add_ln179_reg_1676;
wire   [63:0] zext_ln178_1_fu_1165_p1;
reg   [63:0] zext_ln178_1_reg_1681;
reg   [63:0] zext_ln178_1_reg_1681_pp0_iter6_reg;
reg   [63:0] DATA_x_load_reg_1691;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [6:0] tmp_109_reg_1700;
wire   [63:0] zext_ln180_2_fu_1196_p1;
reg   [63:0] zext_ln180_2_reg_1705;
wire   [8:0] add_ln181_fu_1201_p2;
reg   [8:0] add_ln181_reg_1715;
wire   [63:0] zext_ln182_2_fu_1213_p1;
reg   [63:0] zext_ln182_2_reg_1720;
reg   [5:0] tmp_112_reg_1730;
wire   [7:0] add_ln183_fu_1243_p2;
reg   [7:0] add_ln183_reg_1735;
wire   [64:0] zext_ln172_24_fu_1248_p1;
wire   [31:0] add_ln180_1_fu_1252_p2;
reg   [31:0] add_ln180_1_reg_1745;
reg   [63:0] DATA_x_load_4_reg_1750;
reg   [6:0] tmp_111_reg_1759;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [6:0] tmp_113_reg_1764;
wire   [63:0] zext_ln184_2_fu_1309_p1;
reg   [63:0] zext_ln184_2_reg_1769;
reg   [29:0] tmp_116_reg_1779;
wire   [31:0] add_ln179_1_fu_1314_p2;
reg   [31:0] add_ln179_1_reg_1784;
wire   [64:0] zext_ln180_5_fu_1319_p1;
wire   [31:0] add_ln181_1_fu_1323_p2;
reg   [31:0] add_ln181_1_reg_1794;
wire   [31:0] add_ln182_1_fu_1328_p2;
reg   [31:0] add_ln182_1_reg_1799;
reg   [63:0] DATA_x_load_1_reg_1804;
reg   [63:0] DATA_x_load_2_reg_1813;
reg   [5:0] tmp_110_reg_1822;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [64:0] zext_ln179_3_fu_1342_p1;
reg   [29:0] tmp_118_reg_1832;
wire   [64:0] zext_ln181_3_fu_1346_p1;
wire   [63:0] zext_ln182_3_fu_1357_p1;
reg   [63:0] zext_ln182_3_reg_1842;
wire   [64:0] zext_ln182_5_fu_1362_p1;
wire   [31:0] add_ln183_1_fu_1366_p2;
reg   [31:0] add_ln183_1_reg_1857;
wire   [63:0] zext_ln184_3_fu_1378_p1;
reg   [63:0] zext_ln184_3_reg_1862;
reg   [63:0] DATA_x_load_3_reg_1872;
wire   [31:0] add_ln184_1_fu_1383_p2;
reg   [31:0] add_ln184_1_reg_1881;
wire   [31:0] add_ln185_1_fu_1388_p2;
reg   [31:0] add_ln185_1_reg_1886;
reg   [6:0] tmp_114_reg_1891;
reg   [29:0] tmp_117_reg_1896;
reg   [29:0] tmp_119_reg_1901;
reg   [29:0] tmp_120_reg_1906;
wire   [64:0] zext_ln183_3_fu_1402_p1;
reg   [63:0] DATA_x_load_6_reg_1916;
reg   [63:0] DATA_x_load_7_reg_1925;
wire   [64:0] zext_ln184_5_fu_1406_p1;
wire   [64:0] zext_ln185_3_fu_1410_p1;
reg   [7:0] tmp_115_reg_1944;
wire   [2:0] trunc_ln172_6_fu_1431_p1;
reg   [2:0] trunc_ln172_6_reg_1949;
reg   [29:0] tmp_121_reg_1953;
reg   [29:0] tmp_122_reg_1958;
reg   [29:0] tmp_123_reg_1963;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln172_fu_1414_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln172_1_fu_1435_p1;
wire   [63:0] zext_ln179_fu_1443_p1;
wire   [63:0] zext_ln180_fu_1451_p1;
wire   [63:0] zext_ln181_fu_1459_p1;
wire   [63:0] zext_ln182_fu_1467_p1;
wire   [63:0] zext_ln184_fu_1475_p1;
wire   [63:0] zext_ln183_fu_1483_p1;
wire   [63:0] zext_ln185_fu_1491_p1;
wire   [63:0] zext_ln180_3_fu_1506_p1;
wire   [63:0] zext_ln179_1_fu_1512_p1;
wire   [63:0] zext_ln180_1_fu_1520_p1;
wire   [63:0] zext_ln181_1_fu_1528_p1;
wire   [63:0] zext_ln182_1_fu_1536_p1;
wire   [63:0] zext_ln184_1_fu_1544_p1;
wire   [63:0] zext_ln183_1_fu_1552_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln185_1_fu_1560_p1;
reg   [6:0] tid_1_fu_152;
wire   [6:0] add_ln174_fu_1101_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
reg   [31:0] grp_fu_982_p0;
reg   [31:0] grp_fu_987_p0;
reg   [31:0] grp_fu_992_p0;
wire   [1:0] tmp_s_fu_1051_p4;
wire   [31:0] zext_ln175_fu_1047_p1;
wire   [2:0] or_ln10_fu_1061_p3;
wire   [31:0] grp_fu_1081_p0;
wire   [3:0] grp_fu_1081_p1;
wire   [3:0] grp_fu_1087_p1;
wire   [2:0] grp_fu_1087_p2;
wire   [5:0] mul_ln172_fu_1124_p0;
wire   [7:0] mul_ln172_fu_1124_p1;
wire   [12:0] mul_ln172_fu_1124_p2;
wire   [7:0] shl_ln1_fu_1140_p3;
wire   [7:0] shl_ln178_1_fu_1158_p3;
wire   [8:0] mul_ln179_fu_1173_p0;
wire   [10:0] mul_ln179_fu_1173_p1;
wire   [18:0] mul_ln179_fu_1173_p2;
wire   [7:0] or_ln7_fu_1189_p3;
wire   [7:0] or_ln8_fu_1206_p3;
wire   [7:0] add_ln182_fu_1218_p2;
wire   [7:0] mul_ln182_fu_1227_p0;
wire   [9:0] mul_ln182_fu_1227_p1;
wire   [16:0] mul_ln182_fu_1227_p2;
wire   [8:0] mul_ln181_fu_1263_p0;
wire   [10:0] mul_ln181_fu_1263_p1;
wire   [18:0] mul_ln181_fu_1263_p2;
wire  signed [8:0] sext_ln183_fu_1279_p1;
wire   [8:0] mul_ln183_fu_1286_p0;
wire   [10:0] mul_ln183_fu_1286_p1;
wire   [18:0] mul_ln183_fu_1286_p2;
wire   [7:0] or_ln9_fu_1302_p3;
wire   [16:0] tmp_110_fu_1333_p1;
wire  signed [16:0] grp_fu_1568_p3;
wire   [7:0] or_ln182_1_fu_1350_p3;
wire   [7:0] or_ln184_1_fu_1371_p3;
wire   [18:0] tmp_114_fu_1393_p1;
wire  signed [18:0] grp_fu_1577_p3;
wire   [20:0] tmp_115_fu_1422_p1;
wire  signed [20:0] grp_fu_1585_p3;
wire   [2:0] grp_fu_1081_p2;
wire   [7:0] or_ln180_1_fu_1499_p3;
wire   [5:0] grp_fu_1568_p0;
wire   [6:0] grp_fu_1568_p1;
wire   [8:0] grp_fu_1568_p2;
wire   [5:0] grp_fu_1577_p0;
wire   [7:0] grp_fu_1577_p1;
wire   [9:0] grp_fu_1577_p2;
wire   [5:0] grp_fu_1585_p0;
wire   [8:0] grp_fu_1585_p1;
wire   [10:0] grp_fu_1585_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter5_stage4;
reg    ap_idle_pp0_0to4;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to6;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_1568_p00;
wire   [9:0] grp_fu_1585_p00;
wire   [12:0] mul_ln172_fu_1124_p00;
wire   [18:0] mul_ln179_fu_1173_p00;
wire   [18:0] mul_ln181_fu_1263_p00;
wire   [16:0] mul_ln182_fu_1227_p00;
wire   [18:0] mul_ln183_fu_1286_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_1_fu_152 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_32ns_4ns_3_36_1 #(.ID( 1 ),.NUM_STAGE( 36 ),.din0_WIDTH( 32 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_32ns_4ns_3_36_1_U159(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1081_p0),.din1(grp_fu_1081_p1),.ce(1'b1),.dout(grp_fu_1081_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U160(.clk(ap_clk),.reset(ap_rst),.din0(offset_reg_1611),.din1(grp_fu_1087_p1),.ce(1'b1),.dout(grp_fu_1087_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U161(.din0(mul_ln172_fu_1124_p0),.din1(mul_ln172_fu_1124_p1),.dout(mul_ln172_fu_1124_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U162(.din0(mul_ln179_fu_1173_p0),.din1(mul_ln179_fu_1173_p1),.dout(mul_ln179_fu_1173_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U163(.din0(mul_ln182_fu_1227_p0),.din1(mul_ln182_fu_1227_p1),.dout(mul_ln182_fu_1227_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U164(.din0(mul_ln181_fu_1263_p0),.din1(mul_ln181_fu_1263_p1),.dout(mul_ln181_fu_1263_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U165(.din0(mul_ln183_fu_1286_p0),.din1(mul_ln183_fu_1286_p1),.dout(mul_ln183_fu_1286_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U166(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1568_p0),.din1(grp_fu_1568_p1),.din2(grp_fu_1568_p2),.ce(1'b1),.dout(grp_fu_1568_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U167(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1577_p0),.din1(grp_fu_1577_p1),.din2(grp_fu_1577_p2),.ce(1'b1),.dout(grp_fu_1577_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U168(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1585_p0),.din1(grp_fu_1585_p1),.din2(grp_fu_1585_p2),.ce(1'b1),.dout(grp_fu_1585_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage4) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage4) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage4) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage4) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage4) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_1_fu_152 <= 7'd0;
    end else if (((tmp_reg_1607 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tid_1_fu_152 <= add_ln174_fu_1101_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_load_1_reg_1804 <= DATA_x_q1;
        DATA_x_load_2_reg_1813 <= DATA_x_q0;
        tmp_116_reg_1779 <= {{grp_fu_413_p_dout0[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_load_3_reg_1872 <= DATA_x_q1;
        tmp_118_reg_1832 <= {{grp_fu_413_p_dout0[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_load_4_reg_1750 <= DATA_x_q0;
        DATA_x_load_reg_1691 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_load_6_reg_1916 <= DATA_x_q1;
        DATA_x_load_7_reg_1925 <= DATA_x_q0;
        tmp_117_reg_1896 <= {{grp_fu_413_p_dout0[64:35]}};
        tmp_119_reg_1901 <= {{grp_fu_417_p_dout0[64:35]}};
        tmp_120_reg_1906 <= {{grp_fu_421_p_dout0[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln179_1_reg_1784 <= add_ln179_1_fu_1314_p2;
        add_ln181_1_reg_1794 <= add_ln181_1_fu_1323_p2;
        add_ln182_1_reg_1799 <= add_ln182_1_fu_1328_p2;
        tmp_111_reg_1759 <= {{mul_ln181_fu_1263_p2[18:12]}};
        tmp_113_reg_1764 <= {{mul_ln183_fu_1286_p2[18:12]}};
        zext_ln184_2_reg_1769[7 : 2] <= zext_ln184_2_fu_1309_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln179_reg_1676 <= add_ln179_fu_1152_p2;
        offset_1_reg_1624 <= offset_1_fu_1069_p5;
        offset_1_reg_1624_pp0_iter1_reg <= offset_1_reg_1624;
        offset_1_reg_1624_pp0_iter2_reg <= offset_1_reg_1624_pp0_iter1_reg;
        offset_1_reg_1624_pp0_iter3_reg <= offset_1_reg_1624_pp0_iter2_reg;
        offset_1_reg_1624_pp0_iter4_reg <= offset_1_reg_1624_pp0_iter3_reg;
        offset_1_reg_1624_pp0_iter5_reg <= offset_1_reg_1624_pp0_iter4_reg;
        offset_reg_1611 <= offset_fu_1043_p1;
        offset_reg_1611_pp0_iter1_reg <= offset_reg_1611;
        offset_reg_1611_pp0_iter2_reg <= offset_reg_1611_pp0_iter1_reg;
        offset_reg_1611_pp0_iter3_reg <= offset_reg_1611_pp0_iter2_reg;
        offset_reg_1611_pp0_iter4_reg <= offset_reg_1611_pp0_iter3_reg;
        offset_reg_1611_pp0_iter5_reg <= offset_reg_1611_pp0_iter4_reg;
        tid_reg_1601 <= ap_sig_allocacmp_tid;
        tmp_108_reg_1661 <= {{mul_ln172_fu_1124_p2[12:9]}};
        tmp_reg_1607 <= ap_sig_allocacmp_tid[32'd6];
        tmp_reg_1607_pp0_iter1_reg <= tmp_reg_1607;
        tmp_reg_1607_pp0_iter2_reg <= tmp_reg_1607_pp0_iter1_reg;
        tmp_reg_1607_pp0_iter3_reg <= tmp_reg_1607_pp0_iter2_reg;
        tmp_reg_1607_pp0_iter4_reg <= tmp_reg_1607_pp0_iter3_reg;
        tmp_reg_1607_pp0_iter5_reg <= tmp_reg_1607_pp0_iter4_reg;
        zext_ln172_13_reg_1649[5 : 0] <= zext_ln172_13_fu_1115_p1[5 : 0];
        zext_ln172_14_reg_1655[5 : 0] <= zext_ln172_14_fu_1118_p1[5 : 0];
        zext_ln178_1_reg_1681[7 : 3] <= zext_ln178_1_fu_1165_p1[7 : 3];
        zext_ln178_1_reg_1681_pp0_iter6_reg[7 : 3] <= zext_ln178_1_reg_1681[7 : 3];
        zext_ln178_reg_1666[7 : 2] <= zext_ln178_fu_1147_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln180_1_reg_1745 <= add_ln180_1_fu_1252_p2;
        add_ln181_reg_1715 <= add_ln181_fu_1201_p2;
        add_ln183_reg_1735 <= add_ln183_fu_1243_p2;
        tmp_109_reg_1700 <= {{mul_ln179_fu_1173_p2[18:12]}};
        tmp_112_reg_1730 <= {{mul_ln182_fu_1227_p2[16:11]}};
        zext_ln180_2_reg_1705[7 : 2] <= zext_ln180_2_fu_1196_p1[7 : 2];
        zext_ln182_2_reg_1720[7 : 2] <= zext_ln182_2_fu_1213_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln183_1_reg_1857 <= add_ln183_1_fu_1366_p2;
        add_ln184_1_reg_1881 <= add_ln184_1_fu_1383_p2;
        add_ln185_1_reg_1886 <= add_ln185_1_fu_1388_p2;
        tmp_110_reg_1822 <= {{tmp_110_fu_1333_p1[16:11]}};
        zext_ln182_3_reg_1842[7 : 3] <= zext_ln182_3_fu_1357_p1[7 : 3];
        zext_ln184_3_reg_1862[7 : 3] <= zext_ln184_3_fu_1378_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_114_reg_1891 <= {{tmp_114_fu_1393_p1[18:12]}};
        trunc_ln172_reg_1645 <= trunc_ln172_fu_1111_p1;
        trunc_ln172_reg_1645_pp0_iter2_reg <= trunc_ln172_reg_1645;
        trunc_ln172_reg_1645_pp0_iter3_reg <= trunc_ln172_reg_1645_pp0_iter2_reg;
        trunc_ln172_reg_1645_pp0_iter4_reg <= trunc_ln172_reg_1645_pp0_iter3_reg;
        trunc_ln172_reg_1645_pp0_iter5_reg <= trunc_ln172_reg_1645_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_115_reg_1944 <= {{tmp_115_fu_1422_p1[20:13]}};
        tmp_36_reg_1637 <= {{tid_reg_1601[5:1]}};
        tmp_36_reg_1637_pp0_iter1_reg <= tmp_36_reg_1637;
        tmp_36_reg_1637_pp0_iter2_reg <= tmp_36_reg_1637_pp0_iter1_reg;
        tmp_36_reg_1637_pp0_iter3_reg <= tmp_36_reg_1637_pp0_iter2_reg;
        tmp_36_reg_1637_pp0_iter4_reg <= tmp_36_reg_1637_pp0_iter3_reg;
        tmp_36_reg_1637_pp0_iter5_reg <= tmp_36_reg_1637_pp0_iter4_reg;
        trunc_ln172_6_reg_1949 <= trunc_ln172_6_fu_1431_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_121_reg_1953 <= {{grp_fu_413_p_dout0[64:35]}};
        tmp_122_reg_1958 <= {{grp_fu_417_p_dout0[64:35]}};
        tmp_123_reg_1963 <= {{grp_fu_421_p_dout0[64:35]}};
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter6 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address0_local = zext_ln184_3_reg_1862;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address0_local = zext_ln180_3_fu_1506_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln184_2_reg_1769;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln180_2_reg_1705;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter6 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address1_local = zext_ln182_3_reg_1842;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address1_local = zext_ln178_1_reg_1681_pp0_iter6_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln182_2_reg_1720;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln178_reg_1666;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln180_3_fu_1506_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln184_3_fu_1378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln182_2_fu_1213_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln178_1_fu_1165_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address1_local = zext_ln182_3_fu_1357_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address1_local = zext_ln184_2_fu_1309_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln180_2_fu_1196_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln178_fu_1147_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1607 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_reg_1607_pp0_iter5_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter5_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter5_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_1_fu_152;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_982_p0 = zext_ln183_3_fu_1402_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_982_p0 = zext_ln179_3_fu_1342_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_982_p0 = zext_ln180_5_fu_1319_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_982_p0 = zext_ln172_24_fu_1248_p1;
        end else begin
            grp_fu_982_p0 = 'bx;
        end
    end else begin
        grp_fu_982_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_987_p0 = zext_ln184_5_fu_1406_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_987_p0 = zext_ln181_3_fu_1346_p1;
        end else begin
            grp_fu_987_p0 = 'bx;
        end
    end else begin
        grp_fu_987_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_992_p0 = zext_ln185_3_fu_1410_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_992_p0 = zext_ln182_5_fu_1362_p1;
        end else begin
            grp_fu_992_p0 = 'bx;
        end
    end else begin
        grp_fu_992_p0 = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln185_1_fu_1560_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln183_1_fu_1552_p1;
    end else if ((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln182_1_fu_1536_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln181_1_fu_1528_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln179_1_fu_1512_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln184_1_fu_1544_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln180_1_fu_1520_p1;
    end else if ((~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln185_fu_1491_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0))) begin
        smem_1_address0_local = zext_ln183_fu_1483_p1;
    end else if ((~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln182_fu_1467_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1))) begin
        smem_1_address0_local = zext_ln181_fu_1459_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2))) begin
        smem_1_address0_local = zext_ln179_fu_1443_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3))) begin
        smem_1_address0_local = zext_ln184_fu_1475_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0))) begin
        smem_1_address0_local = zext_ln180_fu_1451_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln172_1_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln172_fu_1414_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_x_load_6_reg_1916;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_x_load_7_reg_1925;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_x_q0;
    end else if ((~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_load_2_reg_1813;
    end else if (((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)))) begin
        smem_1_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)))) begin
        smem_1_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3))) begin
        smem_1_d0_local = DATA_x_load_3_reg_1872;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0))) begin
        smem_1_d0_local = DATA_x_load_1_reg_1804;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_load_4_reg_1750;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_x_load_reg_1691;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln183_1_fu_1552_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln185_1_fu_1560_p1;
    end else if ((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln184_1_fu_1544_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln180_1_fu_1520_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln181_1_fu_1528_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln179_1_fu_1512_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln182_1_fu_1536_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1))) begin
        smem_2_address0_local = zext_ln183_fu_1483_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0))) begin
        smem_2_address0_local = zext_ln185_fu_1491_p1;
    end else if ((~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln184_fu_1475_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1))) begin
        smem_2_address0_local = zext_ln180_fu_1451_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2))) begin
        smem_2_address0_local = zext_ln181_fu_1459_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3))) begin
        smem_2_address0_local = zext_ln179_fu_1443_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0))) begin
        smem_2_address0_local = zext_ln182_fu_1467_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln172_1_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln172_fu_1414_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg== 3'd3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_x_load_7_reg_1925;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_x_load_6_reg_1916;
    end else if ((~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_load_3_reg_1872;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1))) begin
        smem_2_d0_local = DATA_x_load_1_reg_1804;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)))) begin
        smem_2_d0_local = DATA_x_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3)))) begin
        smem_2_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0))) begin
        smem_2_d0_local = DATA_x_load_2_reg_1813;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_load_4_reg_1750;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_x_load_reg_1691;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg== 3'd3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln185_1_fu_1560_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln183_1_fu_1552_p1;
    end else if ((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln179_1_fu_1512_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln182_1_fu_1536_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln180_1_fu_1520_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln181_1_fu_1528_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln184_1_fu_1544_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1))) begin
        smem_3_address0_local = zext_ln185_fu_1491_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2))) begin
        smem_3_address0_local = zext_ln183_fu_1483_p1;
    end else if ((~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln179_fu_1443_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1))) begin
        smem_3_address0_local = zext_ln182_fu_1467_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2))) begin
        smem_3_address0_local = zext_ln180_fu_1451_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3))) begin
        smem_3_address0_local = zext_ln181_fu_1459_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0))) begin
        smem_3_address0_local = zext_ln184_fu_1475_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln172_1_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln172_fu_1414_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg== 3'd3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_x_load_6_reg_1916;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_x_load_7_reg_1925;
    end else if (((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)))) begin
        smem_3_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1))) begin
        smem_3_d0_local = DATA_x_load_2_reg_1813;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2))) begin
        smem_3_d0_local = DATA_x_load_1_reg_1804;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3)))) begin
        smem_3_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0))) begin
        smem_3_d0_local = DATA_x_load_3_reg_1872;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_load_4_reg_1750;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d0_local = DATA_x_load_reg_1691;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg== 3'd3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln185_1_fu_1560_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln183_1_fu_1552_p1;
    end else if ((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln181_1_fu_1528_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln184_1_fu_1544_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln182_1_fu_1536_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln180_1_fu_1520_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln179_1_fu_1512_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2))) begin
        smem_4_address0_local = zext_ln185_fu_1491_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3))) begin
        smem_4_address0_local = zext_ln183_fu_1483_p1;
    end else if ((~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln181_fu_1459_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1))) begin
        smem_4_address0_local = zext_ln184_fu_1475_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2))) begin
        smem_4_address0_local = zext_ln182_fu_1467_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3))) begin
        smem_4_address0_local = zext_ln180_fu_1451_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0))) begin
        smem_4_address0_local = zext_ln179_fu_1443_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln172_1_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln172_fu_1414_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg== 3'd3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_x_load_7_reg_1925;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_x_load_6_reg_1916;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_x_q0;
    end else if (((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)))) begin
        smem_4_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1))) begin
        smem_4_d0_local = DATA_x_load_3_reg_1872;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2))) begin
        smem_4_d0_local = DATA_x_load_2_reg_1813;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3))) begin
        smem_4_d0_local = DATA_x_load_1_reg_1804;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)))) begin
        smem_4_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_load_4_reg_1750;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d0_local = DATA_x_load_reg_1691;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln183_1_fu_1552_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln185_1_fu_1560_p1;
    end else if ((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln180_1_fu_1520_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln179_1_fu_1512_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln184_1_fu_1544_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln182_1_fu_1536_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln181_1_fu_1528_p1;
    end else if ((~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln183_fu_1483_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3))) begin
        smem_address0_local = zext_ln185_fu_1491_p1;
    end else if ((~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln180_fu_1451_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1))) begin
        smem_address0_local = zext_ln179_fu_1443_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2))) begin
        smem_address0_local = zext_ln184_fu_1475_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3))) begin
        smem_address0_local = zext_ln182_fu_1467_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0))) begin
        smem_address0_local = zext_ln181_fu_1459_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln172_1_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln172_fu_1414_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_x_load_7_reg_1925;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_x_load_6_reg_1916;
    end else if ((~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_load_1_reg_1804;
    end else if (((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)))) begin
        smem_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2))) begin
        smem_d0_local = DATA_x_load_3_reg_1872;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3))) begin
        smem_d0_local = DATA_x_load_2_reg_1813;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)))) begin
        smem_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_load_4_reg_1750;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_x_load_reg_1691;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln172_6_reg_1949 == 3'd1) & ~(trunc_ln172_6_reg_1949 == 3'd2) & ~(trunc_ln172_6_reg_1949 == 3'd0) & ~(trunc_ln172_6_reg_1949 == 3'd3) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0) & ~(trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln172_reg_1645_pp0_iter5_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_1949 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter5_stage4) & (ap_idle_pp0_0to4 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
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
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln174_fu_1101_p2 = (tid_reg_1601 + 7'd2);
assign add_ln179_1_fu_1314_p2 = (offset_1_reg_1624_pp0_iter5_reg + 32'd264);
assign add_ln179_fu_1152_p2 = ($signed(zext_ln172_14_fu_1118_p1) + $signed(9'd264));
assign add_ln180_1_fu_1252_p2 = (offset_1_reg_1624_pp0_iter5_reg + 32'd66);
assign add_ln181_1_fu_1323_p2 = (offset_1_reg_1624_pp0_iter5_reg + 32'd330);
assign add_ln181_fu_1201_p2 = ($signed(zext_ln172_14_reg_1655) + $signed(9'd330));
assign add_ln182_1_fu_1328_p2 = (offset_1_reg_1624_pp0_iter5_reg + 32'd132);
assign add_ln182_fu_1218_p2 = ($signed(zext_ln172_13_reg_1649) + $signed(8'd132));
assign add_ln183_1_fu_1366_p2 = (offset_1_reg_1624_pp0_iter5_reg + 32'd396);
assign add_ln183_fu_1243_p2 = ($signed(zext_ln172_13_reg_1649) + $signed(8'd140));
assign add_ln184_1_fu_1383_p2 = (offset_1_reg_1624_pp0_iter5_reg + 32'd198);
assign add_ln185_1_fu_1388_p2 = (offset_1_reg_1624_pp0_iter5_reg + 32'd462);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign grp_fu_1081_p0 = {{zext_ln175_fu_1047_p1[31:3]}, {or_ln10_fu_1061_p3}};
assign grp_fu_1081_p1 = 32'd5;
assign grp_fu_1087_p1 = 6'd5;
assign grp_fu_1568_p0 = grp_fu_1568_p00;
assign grp_fu_1568_p00 = offset_reg_1611_pp0_iter4_reg;
assign grp_fu_1568_p1 = 8'd66;
assign grp_fu_1568_p2 = 17'd410;
assign grp_fu_1577_p0 = zext_ln172_14_reg_1655;
assign grp_fu_1577_p1 = 9'd198;
assign grp_fu_1577_p2 = 19'd820;
assign grp_fu_1585_p0 = grp_fu_1585_p00;
assign grp_fu_1585_p00 = offset_reg_1611_pp0_iter5_reg;
assign grp_fu_1585_p1 = 10'd462;
assign grp_fu_1585_p2 = 21'd1639;
assign grp_fu_413_p_ce = 1'b1;
assign grp_fu_413_p_din0 = grp_fu_982_p0;
assign grp_fu_413_p_din1 = 65'd6871947674;
assign grp_fu_417_p_ce = 1'b1;
assign grp_fu_417_p_din0 = grp_fu_987_p0;
assign grp_fu_417_p_din1 = 65'd6871947674;
assign grp_fu_421_p_ce = 1'b1;
assign grp_fu_421_p_din0 = grp_fu_992_p0;
assign grp_fu_421_p_din1 = 65'd6871947674;
assign mul_ln172_fu_1124_p0 = mul_ln172_fu_1124_p00;
assign mul_ln172_fu_1124_p00 = offset_reg_1611_pp0_iter4_reg;
assign mul_ln172_fu_1124_p1 = 13'd103;
assign mul_ln179_fu_1173_p0 = mul_ln179_fu_1173_p00;
assign mul_ln179_fu_1173_p00 = add_ln179_reg_1676;
assign mul_ln179_fu_1173_p1 = 19'd820;
assign mul_ln181_fu_1263_p0 = mul_ln181_fu_1263_p00;
assign mul_ln181_fu_1263_p00 = add_ln181_reg_1715;
assign mul_ln181_fu_1263_p1 = 19'd820;
assign mul_ln182_fu_1227_p0 = mul_ln182_fu_1227_p00;
assign mul_ln182_fu_1227_p00 = add_ln182_fu_1218_p2;
assign mul_ln182_fu_1227_p1 = 17'd410;
assign mul_ln183_fu_1286_p0 = mul_ln183_fu_1286_p00;
assign mul_ln183_fu_1286_p00 = $unsigned(sext_ln183_fu_1279_p1);
assign mul_ln183_fu_1286_p1 = 19'd820;
assign offset_1_fu_1069_p5 = {{zext_ln175_fu_1047_p1[31:3]}, {or_ln10_fu_1061_p3}};
assign offset_fu_1043_p1 = ap_sig_allocacmp_tid[5:0];
assign or_ln10_fu_1061_p3 = {{tmp_s_fu_1051_p4}, {1'd1}};
assign or_ln180_1_fu_1499_p3 = {{tmp_36_reg_1637_pp0_iter5_reg}, {3'd6}};
assign or_ln182_1_fu_1350_p3 = {{tmp_36_reg_1637_pp0_iter4_reg}, {3'd5}};
assign or_ln184_1_fu_1371_p3 = {{tmp_36_reg_1637_pp0_iter4_reg}, {3'd7}};
assign or_ln7_fu_1189_p3 = {{offset_reg_1611_pp0_iter5_reg}, {2'd2}};
assign or_ln8_fu_1206_p3 = {{offset_reg_1611_pp0_iter5_reg}, {2'd1}};
assign or_ln9_fu_1302_p3 = {{offset_reg_1611_pp0_iter5_reg}, {2'd3}};
assign sext_ln183_fu_1279_p1 = $signed(add_ln183_reg_1735);
assign shl_ln178_1_fu_1158_p3 = {{tmp_36_reg_1637_pp0_iter4_reg}, {3'd4}};
assign shl_ln1_fu_1140_p3 = {{offset_reg_1611_pp0_iter4_reg}, {2'd0}};
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
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign tmp_110_fu_1333_p1 = grp_fu_1568_p3;
assign tmp_114_fu_1393_p1 = grp_fu_1577_p3;
assign tmp_115_fu_1422_p1 = grp_fu_1585_p3;
assign tmp_s_fu_1051_p4 = {{ap_sig_allocacmp_tid[2:1]}};
assign trunc_ln172_6_fu_1431_p1 = grp_fu_1081_p2[2:0];
assign trunc_ln172_fu_1111_p1 = grp_fu_1087_p2[2:0];
assign zext_ln172_13_fu_1115_p1 = offset_reg_1611_pp0_iter4_reg;
assign zext_ln172_14_fu_1118_p1 = offset_reg_1611_pp0_iter4_reg;
assign zext_ln172_1_fu_1435_p1 = tmp_116_reg_1779;
assign zext_ln172_24_fu_1248_p1 = offset_1_reg_1624_pp0_iter5_reg;
assign zext_ln172_fu_1414_p1 = tmp_108_reg_1661;
assign zext_ln175_fu_1047_p1 = offset_fu_1043_p1;
assign zext_ln178_1_fu_1165_p1 = shl_ln178_1_fu_1158_p3;
assign zext_ln178_fu_1147_p1 = shl_ln1_fu_1140_p3;
assign zext_ln179_1_fu_1512_p1 = tmp_117_reg_1896;
assign zext_ln179_3_fu_1342_p1 = add_ln179_1_reg_1784;
assign zext_ln179_fu_1443_p1 = tmp_109_reg_1700;
assign zext_ln180_1_fu_1520_p1 = tmp_118_reg_1832;
assign zext_ln180_2_fu_1196_p1 = or_ln7_fu_1189_p3;
assign zext_ln180_3_fu_1506_p1 = or_ln180_1_fu_1499_p3;
assign zext_ln180_5_fu_1319_p1 = add_ln180_1_reg_1745;
assign zext_ln180_fu_1451_p1 = tmp_110_reg_1822;
assign zext_ln181_1_fu_1528_p1 = tmp_119_reg_1901;
assign zext_ln181_3_fu_1346_p1 = add_ln181_1_reg_1794;
assign zext_ln181_fu_1459_p1 = tmp_111_reg_1759;
assign zext_ln182_1_fu_1536_p1 = tmp_120_reg_1906;
assign zext_ln182_2_fu_1213_p1 = or_ln8_fu_1206_p3;
assign zext_ln182_3_fu_1357_p1 = or_ln182_1_fu_1350_p3;
assign zext_ln182_5_fu_1362_p1 = add_ln182_1_reg_1799;
assign zext_ln182_fu_1467_p1 = tmp_112_reg_1730;
assign zext_ln183_1_fu_1552_p1 = tmp_121_reg_1953;
assign zext_ln183_3_fu_1402_p1 = add_ln183_1_reg_1857;
assign zext_ln183_fu_1483_p1 = tmp_113_reg_1764;
assign zext_ln184_1_fu_1544_p1 = tmp_122_reg_1958;
assign zext_ln184_2_fu_1309_p1 = or_ln9_fu_1302_p3;
assign zext_ln184_3_fu_1378_p1 = or_ln184_1_fu_1371_p3;
assign zext_ln184_5_fu_1406_p1 = add_ln184_1_reg_1881;
assign zext_ln184_fu_1475_p1 = tmp_114_reg_1891;
assign zext_ln185_1_fu_1560_p1 = tmp_123_reg_1963;
assign zext_ln185_3_fu_1410_p1 = add_ln185_1_reg_1886;
assign zext_ln185_fu_1491_p1 = tmp_115_reg_1944;
always @ (posedge ap_clk) begin
    zext_ln172_13_reg_1649[7:6] <= 2'b00;
    zext_ln172_14_reg_1655[8:6] <= 3'b000;
    zext_ln178_reg_1666[1:0] <= 2'b00;
    zext_ln178_reg_1666[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln178_1_reg_1681[2:0] <= 3'b100;
    zext_ln178_1_reg_1681[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln178_1_reg_1681_pp0_iter6_reg[2:0] <= 3'b100;
    zext_ln178_1_reg_1681_pp0_iter6_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln180_2_reg_1705[1:0] <= 2'b10;
    zext_ln180_2_reg_1705[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln182_2_reg_1720[1:0] <= 2'b01;
    zext_ln182_2_reg_1720[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln184_2_reg_1769[1:0] <= 2'b11;
    zext_ln184_2_reg_1769[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln182_3_reg_1842[2:0] <= 3'b101;
    zext_ln182_3_reg_1842[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln184_3_reg_1862[2:0] <= 3'b111;
    zext_ln184_3_reg_1862[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 