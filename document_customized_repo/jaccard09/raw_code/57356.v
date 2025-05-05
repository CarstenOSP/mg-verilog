module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,grp_fu_3471_p_din0,grp_fu_3471_p_din1,grp_fu_3471_p_dout0,grp_fu_3471_p_ce,grp_fu_3475_p_din0,grp_fu_3475_p_din1,grp_fu_3475_p_dout0,grp_fu_3475_p_ce,grp_fu_3479_p_din0,grp_fu_3479_p_din1,grp_fu_3479_p_dout0,grp_fu_3479_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
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
output  [6:0] smem_5_address0;
output   smem_5_ce0;
output   smem_5_we0;
output  [63:0] smem_5_d0;
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
output  [31:0] grp_fu_3471_p_din0;
output  [33:0] grp_fu_3471_p_din1;
input  [64:0] grp_fu_3471_p_dout0;
output   grp_fu_3471_p_ce;
output  [31:0] grp_fu_3475_p_din0;
output  [33:0] grp_fu_3475_p_din1;
input  [64:0] grp_fu_3475_p_dout0;
output   grp_fu_3475_p_ce;
output  [31:0] grp_fu_3479_p_din0;
output  [33:0] grp_fu_3479_p_din1;
input  [64:0] grp_fu_3479_p_dout0;
output   grp_fu_3479_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
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
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_1947;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1303;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage3_11001;
reg   [29:0] reg_1314;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_3_reg_1941;
reg   [0:0] tmp_reg_1947_pp0_iter1_reg;
reg   [0:0] tmp_reg_1947_pp0_iter2_reg;
reg   [0:0] tmp_reg_1947_pp0_iter3_reg;
reg   [0:0] tmp_reg_1947_pp0_iter4_reg;
reg   [0:0] tmp_reg_1947_pp0_iter5_reg;
reg   [0:0] tmp_reg_1947_pp0_iter6_reg;
reg   [0:0] tmp_reg_1947_pp0_iter7_reg;
reg   [0:0] tmp_reg_1947_pp0_iter8_reg;
wire   [5:0] offset_fu_1334_p1;
reg   [5:0] offset_reg_1951;
reg   [5:0] offset_reg_1951_pp0_iter1_reg;
reg   [5:0] offset_reg_1951_pp0_iter2_reg;
reg   [5:0] offset_reg_1951_pp0_iter3_reg;
reg   [5:0] offset_reg_1951_pp0_iter4_reg;
reg   [5:0] offset_reg_1951_pp0_iter5_reg;
reg   [5:0] offset_reg_1951_pp0_iter6_reg;
reg   [5:0] offset_reg_1951_pp0_iter7_reg;
reg   [5:0] offset_reg_1951_pp0_iter8_reg;
wire   [31:0] offset_4_fu_1360_p5;
reg   [31:0] offset_4_reg_1964;
reg   [31:0] offset_4_reg_1964_pp0_iter1_reg;
reg   [31:0] offset_4_reg_1964_pp0_iter2_reg;
reg   [31:0] offset_4_reg_1964_pp0_iter3_reg;
reg   [31:0] offset_4_reg_1964_pp0_iter4_reg;
reg   [31:0] offset_4_reg_1964_pp0_iter5_reg;
reg   [31:0] offset_4_reg_1964_pp0_iter6_reg;
reg   [31:0] offset_4_reg_1964_pp0_iter7_reg;
reg   [31:0] offset_4_reg_1964_pp0_iter8_reg;
reg   [4:0] tmp_31_reg_1977;
reg   [4:0] tmp_31_reg_1977_pp0_iter1_reg;
reg   [4:0] tmp_31_reg_1977_pp0_iter2_reg;
reg   [4:0] tmp_31_reg_1977_pp0_iter3_reg;
reg   [4:0] tmp_31_reg_1977_pp0_iter4_reg;
reg   [4:0] tmp_31_reg_1977_pp0_iter5_reg;
reg   [4:0] tmp_31_reg_1977_pp0_iter6_reg;
reg   [4:0] tmp_31_reg_1977_pp0_iter7_reg;
wire   [2:0] trunc_ln172_fu_1402_p1;
reg   [2:0] trunc_ln172_reg_1985;
reg   [2:0] trunc_ln172_reg_1985_pp0_iter3_reg;
reg   [2:0] trunc_ln172_reg_1985_pp0_iter4_reg;
reg   [2:0] trunc_ln172_reg_1985_pp0_iter5_reg;
reg   [2:0] trunc_ln172_reg_1985_pp0_iter6_reg;
reg   [2:0] trunc_ln172_reg_1985_pp0_iter7_reg;
reg   [2:0] trunc_ln172_reg_1985_pp0_iter8_reg;
wire   [7:0] zext_ln172_20_fu_1406_p1;
reg   [7:0] zext_ln172_20_reg_1989;
wire   [8:0] zext_ln172_21_fu_1409_p1;
reg   [8:0] zext_ln172_21_reg_1995;
reg   [3:0] tmp_72_reg_2000;
wire   [63:0] zext_ln298_fu_1438_p1;
reg   [63:0] zext_ln298_reg_2005;
wire   [8:0] add_ln299_fu_1443_p2;
reg   [8:0] add_ln299_reg_2015;
wire   [8:0] add_ln301_fu_1449_p2;
reg   [8:0] add_ln301_reg_2020;
wire   [63:0] zext_ln298_1_fu_1462_p1;
reg   [63:0] zext_ln298_1_reg_2025;
reg   [6:0] tmp_73_reg_2035;
wire   [63:0] zext_ln300_2_fu_1493_p1;
reg   [63:0] zext_ln300_2_reg_2040;
reg   [6:0] tmp_75_reg_2050;
reg   [5:0] tmp_76_reg_2060;
wire   [7:0] add_ln303_fu_1555_p2;
reg   [7:0] add_ln303_reg_2070;
wire   [63:0] zext_ln304_2_fu_1567_p1;
reg   [63:0] zext_ln304_2_reg_2075;
wire   [64:0] zext_ln172_23_fu_1572_p1;
wire   [31:0] add_ln299_1_fu_1576_p2;
reg   [31:0] add_ln299_1_reg_2090;
wire   [31:0] add_ln300_1_fu_1581_p2;
reg   [31:0] add_ln300_1_reg_2095;
wire   [31:0] add_ln301_1_fu_1586_p2;
reg   [31:0] add_ln301_1_reg_2100;
reg   [63:0] DATA_x_load_4_reg_2105;
reg   [6:0] tmp_77_reg_2116;
wire   [64:0] zext_ln299_3_fu_1617_p1;
wire   [64:0] zext_ln300_5_fu_1634_p1;
wire   [64:0] zext_ln301_3_fu_1638_p1;
wire   [31:0] add_ln302_1_fu_1642_p2;
reg   [31:0] add_ln302_1_reg_2156;
wire   [31:0] add_ln303_1_fu_1647_p2;
reg   [31:0] add_ln303_1_reg_2161;
reg   [63:0] DATA_x_load_1_reg_2166;
reg   [63:0] DATA_x_load_2_reg_2177;
wire   [31:0] add_ln304_1_fu_1652_p2;
reg   [31:0] add_ln304_1_reg_2188;
reg   [63:0] DATA_x_1_load_2_reg_2193;
reg   [63:0] DATA_x_1_load_3_reg_2204;
wire   [31:0] add_ln305_1_fu_1657_p2;
reg   [31:0] add_ln305_1_reg_2215;
reg   [5:0] tmp_74_reg_2220;
wire   [2:0] trunc_ln172_5_fu_1681_p1;
reg   [2:0] trunc_ln172_5_reg_2225;
reg   [29:0] tmp_81_reg_2229;
reg   [29:0] tmp_82_reg_2234;
reg   [29:0] tmp_83_reg_2239;
wire   [64:0] zext_ln302_5_fu_1698_p1;
wire   [64:0] zext_ln303_3_fu_1702_p1;
reg   [63:0] DATA_x_load_5_reg_2269;
wire   [64:0] zext_ln304_5_fu_1719_p1;
reg   [63:0] DATA_x_1_load_4_reg_2290;
reg   [63:0] DATA_x_1_load_5_reg_2301;
reg   [6:0] tmp_78_reg_2327;
reg   [29:0] tmp_85_reg_2332;
reg   [63:0] DATA_x_load_6_reg_2337;
reg   [63:0] DATA_x_load_7_reg_2348;
reg   [29:0] tmp_86_reg_2359;
reg   [63:0] DATA_x_1_load_6_reg_2364;
reg   [63:0] DATA_x_1_load_7_reg_2375;
reg   [29:0] tmp_87_reg_2386;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln302_2_fu_1524_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln300_3_fu_1628_p1;
wire   [63:0] zext_ln172_3_fu_1662_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln302_3_fu_1692_p1;
wire   [63:0] zext_ln304_3_fu_1713_p1;
wire   [63:0] zext_ln172_4_fu_1736_p1;
wire   [63:0] zext_ln299_fu_1757_p1;
wire   [63:0] zext_ln300_fu_1767_p1;
wire   [63:0] zext_ln301_fu_1777_p1;
wire   [63:0] zext_ln302_fu_1787_p1;
wire   [63:0] zext_ln303_fu_1797_p1;
wire   [63:0] zext_ln304_fu_1807_p1;
wire   [63:0] zext_ln305_fu_1826_p1;
wire   [63:0] zext_ln299_1_fu_1837_p1;
wire   [63:0] zext_ln300_1_fu_1847_p1;
wire   [63:0] zext_ln301_1_fu_1857_p1;
wire   [63:0] zext_ln302_1_fu_1867_p1;
wire   [63:0] zext_ln303_1_fu_1878_p1;
wire   [63:0] zext_ln304_1_fu_1888_p1;
wire   [63:0] zext_ln305_1_fu_1898_p1;
reg   [6:0] tid_fu_158;
wire   [6:0] add_ln294_fu_1392_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [6:0] smem_5_address0_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
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
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [6:0] smem_6_address0_local;
reg   [31:0] grp_fu_1253_p0;
reg   [31:0] grp_fu_1258_p0;
reg   [31:0] grp_fu_1263_p0;
wire   [31:0] grp_fu_1268_p0;
wire   [33:0] grp_fu_1268_p1;
wire   [1:0] tmp_s_fu_1342_p4;
wire   [31:0] zext_ln295_fu_1338_p1;
wire   [2:0] or_ln9_fu_1352_p3;
wire   [31:0] grp_fu_1372_p0;
wire   [3:0] grp_fu_1372_p1;
wire   [3:0] grp_fu_1378_p1;
wire   [2:0] grp_fu_1378_p2;
wire   [5:0] mul_ln172_3_fu_1415_p0;
wire   [7:0] mul_ln172_3_fu_1415_p1;
wire   [12:0] mul_ln172_3_fu_1415_p2;
wire   [7:0] shl_ln6_fu_1431_p3;
wire   [7:0] shl_ln298_1_fu_1455_p3;
wire   [8:0] mul_ln299_fu_1470_p0;
wire   [10:0] mul_ln299_fu_1470_p1;
wire   [18:0] mul_ln299_fu_1470_p2;
wire   [7:0] or_ln_fu_1486_p3;
wire   [8:0] mul_ln301_fu_1501_p0;
wire   [10:0] mul_ln301_fu_1501_p1;
wire   [18:0] mul_ln301_fu_1501_p2;
wire   [7:0] or_ln7_fu_1517_p3;
wire   [7:0] add_ln302_fu_1530_p2;
wire   [7:0] mul_ln302_fu_1539_p0;
wire   [9:0] mul_ln302_fu_1539_p1;
wire   [16:0] mul_ln302_fu_1539_p2;
wire   [7:0] or_ln8_fu_1560_p3;
wire  signed [8:0] sext_ln303_fu_1594_p1;
wire   [8:0] mul_ln303_fu_1601_p0;
wire   [10:0] mul_ln303_fu_1601_p1;
wire   [18:0] mul_ln303_fu_1601_p2;
wire   [7:0] or_ln300_1_fu_1621_p3;
wire   [16:0] tmp_74_fu_1672_p1;
wire  signed [16:0] grp_fu_1908_p3;
wire   [2:0] grp_fu_1372_p2;
wire   [7:0] or_ln302_1_fu_1685_p3;
wire   [7:0] or_ln304_1_fu_1706_p3;
wire   [18:0] tmp_78_fu_1727_p1;
wire  signed [18:0] grp_fu_1917_p3;
wire   [64:0] grp_fu_1268_p2;
wire   [20:0] tmp_79_fu_1817_p1;
wire  signed [20:0] grp_fu_1925_p3;
wire   [7:0] tmp_79_fu_1817_p4;
wire   [5:0] grp_fu_1908_p0;
wire   [6:0] grp_fu_1908_p1;
wire   [8:0] grp_fu_1908_p2;
wire   [5:0] grp_fu_1917_p0;
wire   [7:0] grp_fu_1917_p1;
wire   [9:0] grp_fu_1917_p2;
wire   [5:0] grp_fu_1925_p0;
wire   [8:0] grp_fu_1925_p1;
wire   [10:0] grp_fu_1925_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter8_stage2;
reg    ap_idle_pp0_0to7;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to9;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [64:0] grp_fu_1268_p00;
wire   [7:0] grp_fu_1908_p00;
wire   [9:0] grp_fu_1925_p00;
wire   [12:0] mul_ln172_3_fu_1415_p00;
wire   [18:0] mul_ln299_fu_1470_p00;
wire   [18:0] mul_ln301_fu_1501_p00;
wire   [16:0] mul_ln302_fu_1539_p00;
wire   [18:0] mul_ln303_fu_1601_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_158 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_mul_32ns_34ns_65_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 34 ),.dout_WIDTH( 65 ))
mul_32ns_34ns_65_2_1_U177(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1268_p0),.din1(grp_fu_1268_p1),.ce(1'b1),.dout(grp_fu_1268_p2));
fft1D_512_urem_32ns_4ns_3_36_1 #(.ID( 1 ),.NUM_STAGE( 36 ),.din0_WIDTH( 32 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_32ns_4ns_3_36_1_U178(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1372_p0),.din1(grp_fu_1372_p1),.ce(1'b1),.dout(grp_fu_1372_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U179(.clk(ap_clk),.reset(ap_rst),.din0(offset_reg_1951),.din1(grp_fu_1378_p1),.ce(1'b1),.dout(grp_fu_1378_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U180(.din0(mul_ln172_3_fu_1415_p0),.din1(mul_ln172_3_fu_1415_p1),.dout(mul_ln172_3_fu_1415_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U181(.din0(mul_ln299_fu_1470_p0),.din1(mul_ln299_fu_1470_p1),.dout(mul_ln299_fu_1470_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U182(.din0(mul_ln301_fu_1501_p0),.din1(mul_ln301_fu_1501_p1),.dout(mul_ln301_fu_1501_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U183(.din0(mul_ln302_fu_1539_p0),.din1(mul_ln302_fu_1539_p1),.dout(mul_ln302_fu_1539_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U184(.din0(mul_ln303_fu_1601_p0),.din1(mul_ln303_fu_1601_p1),.dout(mul_ln303_fu_1601_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U185(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1908_p0),.din1(grp_fu_1908_p1),.din2(grp_fu_1908_p2),.ce(1'b1),.dout(grp_fu_1908_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U186(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1917_p0),.din1(grp_fu_1917_p1),.din2(grp_fu_1917_p2),.ce(1'b1),.dout(grp_fu_1917_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U187(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1925_p0),.din1(grp_fu_1925_p1),.din2(grp_fu_1925_p2),.ce(1'b1),.dout(grp_fu_1925_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter9 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_158 <= 7'd0;
    end else if (((tmp_reg_1947 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_158 <= add_ln294_fu_1392_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_load_2_reg_2193 <= DATA_x_1_q1;
        DATA_x_1_load_3_reg_2204 <= DATA_x_1_q0;
        DATA_x_load_1_reg_2166 <= DATA_x_q1;
        DATA_x_load_2_reg_2177 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_load_4_reg_2290 <= DATA_x_1_q1;
        DATA_x_1_load_5_reg_2301 <= DATA_x_1_q0;
        DATA_x_load_5_reg_2269 <= DATA_x_q0;
        tmp_81_reg_2229 <= {{grp_fu_3471_p_dout0[64:35]}};
        tmp_82_reg_2234 <= {{grp_fu_3475_p_dout0[64:35]}};
        tmp_83_reg_2239 <= {{grp_fu_3479_p_dout0[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_load_6_reg_2364 <= DATA_x_1_q1;
        DATA_x_1_load_7_reg_2375 <= DATA_x_1_q0;
        DATA_x_load_6_reg_2337 <= DATA_x_q1;
        DATA_x_load_7_reg_2348 <= DATA_x_q0;
        tmp_85_reg_2332 <= {{grp_fu_3475_p_dout0[64:35]}};
        tmp_86_reg_2359 <= {{grp_fu_3479_p_dout0[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_load_4_reg_2105 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln299_1_reg_2090 <= add_ln299_1_fu_1576_p2;
        add_ln300_1_reg_2095 <= add_ln300_1_fu_1581_p2;
        add_ln301_1_reg_2100 <= add_ln301_1_fu_1586_p2;
        add_ln303_reg_2070 <= add_ln303_fu_1555_p2;
        tmp_73_reg_2035 <= {{mul_ln299_fu_1470_p2[18:12]}};
        tmp_75_reg_2050 <= {{mul_ln301_fu_1501_p2[18:12]}};
        tmp_76_reg_2060 <= {{mul_ln302_fu_1539_p2[16:11]}};
        zext_ln300_2_reg_2040[7 : 2] <= zext_ln300_2_fu_1493_p1[7 : 2];
        zext_ln304_2_reg_2075[7 : 2] <= zext_ln304_2_fu_1567_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln299_reg_2015 <= add_ln299_fu_1443_p2;
        add_ln301_reg_2020 <= add_ln301_fu_1449_p2;
        offset_4_reg_1964 <= offset_4_fu_1360_p5;
        offset_4_reg_1964_pp0_iter1_reg <= offset_4_reg_1964;
        offset_4_reg_1964_pp0_iter2_reg <= offset_4_reg_1964_pp0_iter1_reg;
        offset_4_reg_1964_pp0_iter3_reg <= offset_4_reg_1964_pp0_iter2_reg;
        offset_4_reg_1964_pp0_iter4_reg <= offset_4_reg_1964_pp0_iter3_reg;
        offset_4_reg_1964_pp0_iter5_reg <= offset_4_reg_1964_pp0_iter4_reg;
        offset_4_reg_1964_pp0_iter6_reg <= offset_4_reg_1964_pp0_iter5_reg;
        offset_4_reg_1964_pp0_iter7_reg <= offset_4_reg_1964_pp0_iter6_reg;
        offset_4_reg_1964_pp0_iter8_reg <= offset_4_reg_1964_pp0_iter7_reg;
        offset_reg_1951 <= offset_fu_1334_p1;
        offset_reg_1951_pp0_iter1_reg <= offset_reg_1951;
        offset_reg_1951_pp0_iter2_reg <= offset_reg_1951_pp0_iter1_reg;
        offset_reg_1951_pp0_iter3_reg <= offset_reg_1951_pp0_iter2_reg;
        offset_reg_1951_pp0_iter4_reg <= offset_reg_1951_pp0_iter3_reg;
        offset_reg_1951_pp0_iter5_reg <= offset_reg_1951_pp0_iter4_reg;
        offset_reg_1951_pp0_iter6_reg <= offset_reg_1951_pp0_iter5_reg;
        offset_reg_1951_pp0_iter7_reg <= offset_reg_1951_pp0_iter6_reg;
        offset_reg_1951_pp0_iter8_reg <= offset_reg_1951_pp0_iter7_reg;
        tid_3_reg_1941 <= ap_sig_allocacmp_tid_3;
        tmp_72_reg_2000 <= {{mul_ln172_3_fu_1415_p2[12:9]}};
        tmp_78_reg_2327 <= {{tmp_78_fu_1727_p1[18:12]}};
        tmp_87_reg_2386 <= {{grp_fu_1268_p2[64:35]}};
        tmp_reg_1947 <= ap_sig_allocacmp_tid_3[32'd6];
        tmp_reg_1947_pp0_iter1_reg <= tmp_reg_1947;
        tmp_reg_1947_pp0_iter2_reg <= tmp_reg_1947_pp0_iter1_reg;
        tmp_reg_1947_pp0_iter3_reg <= tmp_reg_1947_pp0_iter2_reg;
        tmp_reg_1947_pp0_iter4_reg <= tmp_reg_1947_pp0_iter3_reg;
        tmp_reg_1947_pp0_iter5_reg <= tmp_reg_1947_pp0_iter4_reg;
        tmp_reg_1947_pp0_iter6_reg <= tmp_reg_1947_pp0_iter5_reg;
        tmp_reg_1947_pp0_iter7_reg <= tmp_reg_1947_pp0_iter6_reg;
        tmp_reg_1947_pp0_iter8_reg <= tmp_reg_1947_pp0_iter7_reg;
        zext_ln172_20_reg_1989[5 : 0] <= zext_ln172_20_fu_1406_p1[5 : 0];
        zext_ln172_21_reg_1995[5 : 0] <= zext_ln172_21_fu_1409_p1[5 : 0];
        zext_ln298_1_reg_2025[7 : 3] <= zext_ln298_1_fu_1462_p1[7 : 3];
        zext_ln298_reg_2005[7 : 2] <= zext_ln298_fu_1438_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln302_1_reg_2156 <= add_ln302_1_fu_1642_p2;
        add_ln303_1_reg_2161 <= add_ln303_1_fu_1647_p2;
        add_ln304_1_reg_2188 <= add_ln304_1_fu_1652_p2;
        add_ln305_1_reg_2215 <= add_ln305_1_fu_1657_p2;
        tmp_77_reg_2116 <= {{mul_ln303_fu_1601_p2[18:12]}};
        trunc_ln172_reg_1985 <= trunc_ln172_fu_1402_p1;
        trunc_ln172_reg_1985_pp0_iter3_reg <= trunc_ln172_reg_1985;
        trunc_ln172_reg_1985_pp0_iter4_reg <= trunc_ln172_reg_1985_pp0_iter3_reg;
        trunc_ln172_reg_1985_pp0_iter5_reg <= trunc_ln172_reg_1985_pp0_iter4_reg;
        trunc_ln172_reg_1985_pp0_iter6_reg <= trunc_ln172_reg_1985_pp0_iter5_reg;
        trunc_ln172_reg_1985_pp0_iter7_reg <= trunc_ln172_reg_1985_pp0_iter6_reg;
        trunc_ln172_reg_1985_pp0_iter8_reg <= trunc_ln172_reg_1985_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1303 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1314 <= {{grp_fu_3471_p_dout0[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_31_reg_1977 <= {{tid_3_reg_1941[5:1]}};
        tmp_31_reg_1977_pp0_iter1_reg <= tmp_31_reg_1977;
        tmp_31_reg_1977_pp0_iter2_reg <= tmp_31_reg_1977_pp0_iter1_reg;
        tmp_31_reg_1977_pp0_iter3_reg <= tmp_31_reg_1977_pp0_iter2_reg;
        tmp_31_reg_1977_pp0_iter4_reg <= tmp_31_reg_1977_pp0_iter3_reg;
        tmp_31_reg_1977_pp0_iter5_reg <= tmp_31_reg_1977_pp0_iter4_reg;
        tmp_31_reg_1977_pp0_iter6_reg <= tmp_31_reg_1977_pp0_iter5_reg;
        tmp_31_reg_1977_pp0_iter7_reg <= tmp_31_reg_1977_pp0_iter6_reg;
        tmp_74_reg_2220 <= {{tmp_74_fu_1672_p1[16:11]}};
        trunc_ln172_5_reg_2225 <= trunc_ln172_5_fu_1681_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln300_2_reg_2040;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln304_3_fu_1713_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln300_3_fu_1628_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln304_2_fu_1567_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln298_reg_2005;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln302_3_fu_1692_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln298_1_reg_2025;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln302_2_fu_1524_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address0_local = zext_ln304_3_fu_1713_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address0_local = zext_ln300_3_fu_1628_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln302_2_fu_1524_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln298_1_fu_1462_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address1_local = zext_ln302_3_fu_1692_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address1_local = zext_ln304_2_reg_2075;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln300_2_fu_1493_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln298_fu_1438_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1947 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_1947_pp0_iter8_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter8_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter8_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to7 = 1'b1;
    end else begin
        ap_idle_pp0_0to7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to9 = 1'b1;
    end else begin
        ap_idle_pp0_1to9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_158;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1253_p0 = zext_ln302_5_fu_1698_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1253_p0 = zext_ln299_3_fu_1617_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1253_p0 = zext_ln172_23_fu_1572_p1;
        end else begin
            grp_fu_1253_p0 = 'bx;
        end
    end else begin
        grp_fu_1253_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1258_p0 = zext_ln303_3_fu_1702_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1258_p0 = zext_ln300_5_fu_1634_p1;
        end else begin
            grp_fu_1258_p0 = 'bx;
        end
    end else begin
        grp_fu_1258_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1263_p0 = zext_ln304_5_fu_1719_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1263_p0 = zext_ln301_3_fu_1638_p1;
        end else begin
            grp_fu_1263_p0 = 'bx;
        end
    end else begin
        grp_fu_1263_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7)))) begin
        smem_1_address0_local = zext_ln300_1_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln301_1_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln299_1_fu_1837_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln305_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln304_1_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln303_1_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln302_1_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7)))) begin
        smem_1_address0_local = zext_ln300_fu_1767_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln301_fu_1777_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln299_fu_1757_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln305_fu_1826_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln304_fu_1807_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln303_fu_1797_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln302_fu_1787_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln172_4_fu_1736_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln172_3_fu_1662_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7)))) begin
        smem_1_d0_local = DATA_x_load_5_reg_2269;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_1_load_5_reg_2301;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_1_load_4_reg_2290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_1_load_7_reg_2375;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_load_7_reg_2348;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_1_load_6_reg_2364;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_load_6_reg_2337;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7)))) begin
        smem_1_d0_local = DATA_x_load_1_reg_2166;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_1_load_3_reg_2204;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_1_load_2_reg_2193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_load_2_reg_2177;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_load_4_reg_2105;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_d0_local = reg_1303;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg== 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7)))) begin
        smem_2_address0_local = zext_ln301_1_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln302_1_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln300_1_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln299_1_fu_1837_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln305_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln304_1_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln303_1_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7)))) begin
        smem_2_address0_local = zext_ln301_fu_1777_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln302_fu_1787_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln300_fu_1767_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln299_fu_1757_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln305_fu_1826_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln304_fu_1807_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln303_fu_1797_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln172_4_fu_1736_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln172_3_fu_1662_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7)))) begin
        smem_2_d0_local = DATA_x_1_load_5_reg_2301;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_load_6_reg_2337;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_load_5_reg_2269;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_1_load_4_reg_2290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_1_load_7_reg_2375;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_load_7_reg_2348;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_1_load_6_reg_2364;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7)))) begin
        smem_2_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_load_2_reg_2177;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_load_1_reg_2166;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_1_load_3_reg_2204;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_1_load_2_reg_2193;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_load_4_reg_2105;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_d0_local = reg_1303;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg== 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7)))) begin
        smem_3_address0_local = zext_ln302_1_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln303_1_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln301_1_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln300_1_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln299_1_fu_1837_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln305_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln304_1_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7)))) begin
        smem_3_address0_local = zext_ln302_fu_1787_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln303_fu_1797_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln301_fu_1777_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln300_fu_1767_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln299_fu_1757_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln305_fu_1826_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln304_fu_1807_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln172_4_fu_1736_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln172_3_fu_1662_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7)))) begin
        smem_3_d0_local = DATA_x_load_6_reg_2337;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_1_load_6_reg_2364;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_1_load_5_reg_2301;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_load_5_reg_2269;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_1_load_4_reg_2290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_1_load_7_reg_2375;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_load_7_reg_2348;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7)))) begin
        smem_3_d0_local = DATA_x_load_2_reg_2177;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_1_load_2_reg_2193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_load_1_reg_2166;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_1_load_3_reg_2204;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_load_4_reg_2105;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_d0_local = reg_1303;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg== 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7)))) begin
        smem_4_address0_local = zext_ln303_1_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln304_1_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln302_1_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln301_1_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln300_1_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln299_1_fu_1837_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln305_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7)))) begin
        smem_4_address0_local = zext_ln303_fu_1797_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln304_fu_1807_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln302_fu_1787_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln301_fu_1777_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln300_fu_1767_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln299_fu_1757_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln305_fu_1826_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln172_4_fu_1736_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln172_3_fu_1662_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7)))) begin
        smem_4_d0_local = DATA_x_1_load_6_reg_2364;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_load_7_reg_2348;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_load_6_reg_2337;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_1_load_5_reg_2301;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_load_5_reg_2269;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_1_load_4_reg_2290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_1_load_7_reg_2375;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7)))) begin
        smem_4_d0_local = DATA_x_1_load_2_reg_2193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_load_2_reg_2177;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_load_1_reg_2166;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_1_load_3_reg_2204;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_load_4_reg_2105;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_d0_local = reg_1303;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg== 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7)))) begin
        smem_5_address0_local = zext_ln304_1_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln305_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln303_1_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln302_1_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln301_1_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln300_1_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln299_1_fu_1837_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7)))) begin
        smem_5_address0_local = zext_ln304_fu_1807_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln305_fu_1826_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln303_fu_1797_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln302_fu_1787_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln301_fu_1777_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln300_fu_1767_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln299_fu_1757_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln172_4_fu_1736_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln172_3_fu_1662_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7)))) begin
        smem_5_d0_local = DATA_x_load_7_reg_2348;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_1_load_7_reg_2375;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_1_load_6_reg_2364;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_load_6_reg_2337;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_1_load_5_reg_2301;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_load_5_reg_2269;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_1_load_4_reg_2290;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_1_load_3_reg_2204;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_1_load_2_reg_2193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_load_2_reg_2177;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_load_1_reg_2166;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_load_4_reg_2105;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_5_d0_local = reg_1303;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg== 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7)))) begin
        smem_6_address0_local = zext_ln305_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln299_1_fu_1837_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln304_1_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln303_1_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln302_1_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln301_1_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln300_1_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7)))) begin
        smem_6_address0_local = zext_ln305_fu_1826_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln299_fu_1757_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln304_fu_1807_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln303_fu_1797_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln302_fu_1787_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln301_fu_1777_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln300_fu_1767_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln172_4_fu_1736_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln172_3_fu_1662_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7)))) begin
        smem_6_d0_local = DATA_x_1_load_7_reg_2375;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_1_load_4_reg_2290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_load_7_reg_2348;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_1_load_6_reg_2364;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_load_6_reg_2337;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_1_load_5_reg_2301;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_load_5_reg_2269;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7)))) begin
        smem_6_d0_local = DATA_x_1_load_3_reg_2204;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_1_load_2_reg_2193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_load_2_reg_2177;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_load_1_reg_2166;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_load_4_reg_2105;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_d0_local = reg_1303;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7)))) begin
        smem_address0_local = zext_ln299_1_fu_1837_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln300_1_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln305_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln304_1_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln303_1_fu_1878_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln302_1_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln301_1_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7)))) begin
        smem_address0_local = zext_ln299_fu_1757_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln300_fu_1767_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln305_fu_1826_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln304_fu_1807_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln303_fu_1797_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln302_fu_1787_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln301_fu_1777_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln172_4_fu_1736_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln172_3_fu_1662_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7)))) begin
        smem_d0_local = DATA_x_1_load_4_reg_2290;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_load_5_reg_2269;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_1_load_7_reg_2375;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_load_7_reg_2348;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_1_load_6_reg_2364;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_load_6_reg_2337;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_1_load_5_reg_2301;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7)))) begin
        smem_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_load_1_reg_2166;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_1_load_3_reg_2204;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_1_load_2_reg_2193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_load_2_reg_2177;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_load_4_reg_2105;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d0_local = reg_1303;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_5_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_5_reg_2225 == 3'd6) | (trunc_ln172_5_reg_2225 == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg== 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1985_pp0_iter8_reg == 3'd6) | (trunc_ln172_reg_1985_pp0_iter8_reg == 3'd7))))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to9 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
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
assign add_ln294_fu_1392_p2 = (tid_3_reg_1941 + 7'd2);
assign add_ln299_1_fu_1576_p2 = (offset_4_reg_1964_pp0_iter8_reg + 32'd288);
assign add_ln299_fu_1443_p2 = ($signed(zext_ln172_21_fu_1409_p1) + $signed(9'd288));
assign add_ln300_1_fu_1581_p2 = (offset_4_reg_1964_pp0_iter8_reg + 32'd72);
assign add_ln301_1_fu_1586_p2 = (offset_4_reg_1964_pp0_iter8_reg + 32'd360);
assign add_ln301_fu_1449_p2 = ($signed(zext_ln172_21_fu_1409_p1) + $signed(9'd360));
assign add_ln302_1_fu_1642_p2 = (offset_4_reg_1964_pp0_iter8_reg + 32'd144);
assign add_ln302_fu_1530_p2 = ($signed(zext_ln172_20_reg_1989) + $signed(8'd144));
assign add_ln303_1_fu_1647_p2 = (offset_4_reg_1964_pp0_iter8_reg + 32'd432);
assign add_ln303_fu_1555_p2 = ($signed(zext_ln172_20_reg_1989) + $signed(8'd176));
assign add_ln304_1_fu_1652_p2 = (offset_4_reg_1964_pp0_iter8_reg + 32'd216);
assign add_ln305_1_fu_1657_p2 = (offset_4_reg_1964_pp0_iter8_reg + 32'd504);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_1268_p0 = grp_fu_1268_p00;
assign grp_fu_1268_p00 = add_ln305_1_reg_2215;
assign grp_fu_1268_p1 = 65'd4908534053;
assign grp_fu_1372_p0 = {{zext_ln295_fu_1338_p1[31:3]}, {or_ln9_fu_1352_p3}};
assign grp_fu_1372_p1 = 32'd7;
assign grp_fu_1378_p1 = 6'd7;
assign grp_fu_1908_p0 = grp_fu_1908_p00;
assign grp_fu_1908_p00 = offset_reg_1951_pp0_iter7_reg;
assign grp_fu_1908_p1 = 8'd72;
assign grp_fu_1908_p2 = 17'd293;
assign grp_fu_1917_p0 = zext_ln172_21_reg_1995;
assign grp_fu_1917_p1 = 9'd216;
assign grp_fu_1917_p2 = 19'd586;
assign grp_fu_1925_p0 = grp_fu_1925_p00;
assign grp_fu_1925_p00 = offset_reg_1951_pp0_iter8_reg;
assign grp_fu_1925_p1 = 10'd504;
assign grp_fu_1925_p2 = 21'd1171;
assign grp_fu_3471_p_ce = 1'b1;
assign grp_fu_3471_p_din0 = grp_fu_1253_p0;
assign grp_fu_3471_p_din1 = 65'd4908534053;
assign grp_fu_3475_p_ce = 1'b1;
assign grp_fu_3475_p_din0 = grp_fu_1258_p0;
assign grp_fu_3475_p_din1 = 65'd4908534053;
assign grp_fu_3479_p_ce = 1'b1;
assign grp_fu_3479_p_din0 = grp_fu_1263_p0;
assign grp_fu_3479_p_din1 = 65'd4908534053;
assign mul_ln172_3_fu_1415_p0 = mul_ln172_3_fu_1415_p00;
assign mul_ln172_3_fu_1415_p00 = offset_reg_1951_pp0_iter7_reg;
assign mul_ln172_3_fu_1415_p1 = 13'd74;
assign mul_ln299_fu_1470_p0 = mul_ln299_fu_1470_p00;
assign mul_ln299_fu_1470_p00 = add_ln299_reg_2015;
assign mul_ln299_fu_1470_p1 = 19'd586;
assign mul_ln301_fu_1501_p0 = mul_ln301_fu_1501_p00;
assign mul_ln301_fu_1501_p00 = add_ln301_reg_2020;
assign mul_ln301_fu_1501_p1 = 19'd586;
assign mul_ln302_fu_1539_p0 = mul_ln302_fu_1539_p00;
assign mul_ln302_fu_1539_p00 = add_ln302_fu_1530_p2;
assign mul_ln302_fu_1539_p1 = 17'd293;
assign mul_ln303_fu_1601_p0 = mul_ln303_fu_1601_p00;
assign mul_ln303_fu_1601_p00 = $unsigned(sext_ln303_fu_1594_p1);
assign mul_ln303_fu_1601_p1 = 19'd586;
assign offset_4_fu_1360_p5 = {{zext_ln295_fu_1338_p1[31:3]}, {or_ln9_fu_1352_p3}};
assign offset_fu_1334_p1 = ap_sig_allocacmp_tid_3[5:0];
assign or_ln300_1_fu_1621_p3 = {{tmp_31_reg_1977_pp0_iter7_reg}, {3'd6}};
assign or_ln302_1_fu_1685_p3 = {{tmp_31_reg_1977_pp0_iter7_reg}, {3'd5}};
assign or_ln304_1_fu_1706_p3 = {{tmp_31_reg_1977_pp0_iter7_reg}, {3'd7}};
assign or_ln7_fu_1517_p3 = {{offset_reg_1951_pp0_iter8_reg}, {2'd1}};
assign or_ln8_fu_1560_p3 = {{offset_reg_1951_pp0_iter8_reg}, {2'd3}};
assign or_ln9_fu_1352_p3 = {{tmp_s_fu_1342_p4}, {1'd1}};
assign or_ln_fu_1486_p3 = {{offset_reg_1951_pp0_iter8_reg}, {2'd2}};
assign sext_ln303_fu_1594_p1 = $signed(add_ln303_reg_2070);
assign shl_ln298_1_fu_1455_p3 = {{tmp_31_reg_1977_pp0_iter7_reg}, {3'd4}};
assign shl_ln6_fu_1431_p3 = {{offset_reg_1951_pp0_iter7_reg}, {2'd0}};
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
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign tmp_74_fu_1672_p1 = grp_fu_1908_p3;
assign tmp_78_fu_1727_p1 = grp_fu_1917_p3;
assign tmp_79_fu_1817_p1 = grp_fu_1925_p3;
assign tmp_79_fu_1817_p4 = {{tmp_79_fu_1817_p1[20:13]}};
assign tmp_s_fu_1342_p4 = {{ap_sig_allocacmp_tid_3[2:1]}};
assign trunc_ln172_5_fu_1681_p1 = grp_fu_1372_p2[2:0];
assign trunc_ln172_fu_1402_p1 = grp_fu_1378_p2[2:0];
assign zext_ln172_20_fu_1406_p1 = offset_reg_1951_pp0_iter7_reg;
assign zext_ln172_21_fu_1409_p1 = offset_reg_1951_pp0_iter7_reg;
assign zext_ln172_23_fu_1572_p1 = offset_4_reg_1964_pp0_iter8_reg;
assign zext_ln172_3_fu_1662_p1 = tmp_72_reg_2000;
assign zext_ln172_4_fu_1736_p1 = reg_1314;
assign zext_ln295_fu_1338_p1 = offset_fu_1334_p1;
assign zext_ln298_1_fu_1462_p1 = shl_ln298_1_fu_1455_p3;
assign zext_ln298_fu_1438_p1 = shl_ln6_fu_1431_p3;
assign zext_ln299_1_fu_1837_p1 = tmp_81_reg_2229;
assign zext_ln299_3_fu_1617_p1 = add_ln299_1_reg_2090;
assign zext_ln299_fu_1757_p1 = tmp_73_reg_2035;
assign zext_ln300_1_fu_1847_p1 = tmp_82_reg_2234;
assign zext_ln300_2_fu_1493_p1 = or_ln_fu_1486_p3;
assign zext_ln300_3_fu_1628_p1 = or_ln300_1_fu_1621_p3;
assign zext_ln300_5_fu_1634_p1 = add_ln300_1_reg_2095;
assign zext_ln300_fu_1767_p1 = tmp_74_reg_2220;
assign zext_ln301_1_fu_1857_p1 = tmp_83_reg_2239;
assign zext_ln301_3_fu_1638_p1 = add_ln301_1_reg_2100;
assign zext_ln301_fu_1777_p1 = tmp_75_reg_2050;
assign zext_ln302_1_fu_1867_p1 = reg_1314;
assign zext_ln302_2_fu_1524_p1 = or_ln7_fu_1517_p3;
assign zext_ln302_3_fu_1692_p1 = or_ln302_1_fu_1685_p3;
assign zext_ln302_5_fu_1698_p1 = add_ln302_1_reg_2156;
assign zext_ln302_fu_1787_p1 = tmp_76_reg_2060;
assign zext_ln303_1_fu_1878_p1 = tmp_85_reg_2332;
assign zext_ln303_3_fu_1702_p1 = add_ln303_1_reg_2161;
assign zext_ln303_fu_1797_p1 = tmp_77_reg_2116;
assign zext_ln304_1_fu_1888_p1 = tmp_86_reg_2359;
assign zext_ln304_2_fu_1567_p1 = or_ln8_fu_1560_p3;
assign zext_ln304_3_fu_1713_p1 = or_ln304_1_fu_1706_p3;
assign zext_ln304_5_fu_1719_p1 = add_ln304_1_reg_2188;
assign zext_ln304_fu_1807_p1 = tmp_78_reg_2327;
assign zext_ln305_1_fu_1898_p1 = tmp_87_reg_2386;
assign zext_ln305_fu_1826_p1 = tmp_79_fu_1817_p4;
always @ (posedge ap_clk) begin
    zext_ln172_20_reg_1989[7:6] <= 2'b00;
    zext_ln172_21_reg_1995[8:6] <= 3'b000;
    zext_ln298_reg_2005[1:0] <= 2'b00;
    zext_ln298_reg_2005[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln298_1_reg_2025[2:0] <= 3'b100;
    zext_ln298_1_reg_2025[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln300_2_reg_2040[1:0] <= 2'b10;
    zext_ln300_2_reg_2040[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln304_2_reg_2075[1:0] <= 2'b11;
    zext_ln304_2_reg_2075[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 