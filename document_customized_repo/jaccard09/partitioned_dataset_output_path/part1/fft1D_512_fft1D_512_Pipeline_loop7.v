
module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,grp_fu_325_p_din0,grp_fu_325_p_din1,grp_fu_325_p_dout0,grp_fu_325_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [7:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [7:0] smem_address0;
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
output  [31:0] grp_fu_325_p_din0;
output  [33:0] grp_fu_325_p_din1;
input  [64:0] grp_fu_325_p_dout0;
output   grp_fu_325_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] tmp_reg_1258;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_682;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_689;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [6:0] tid_3_reg_1252;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_1258_pp0_iter1_reg;
reg   [0:0] tmp_reg_1258_pp0_iter2_reg;
wire   [5:0] offset_fu_713_p1;
reg   [5:0] offset_reg_1262;
reg   [5:0] offset_reg_1262_pp0_iter1_reg;
reg   [5:0] offset_reg_1262_pp0_iter2_reg;
wire   [31:0] offset_2_fu_739_p5;
reg   [31:0] offset_2_reg_1275;
reg   [31:0] offset_2_reg_1275_pp0_iter1_reg;
reg   [31:0] offset_2_reg_1275_pp0_iter2_reg;
wire   [1:0] trunc_ln172_fu_762_p1;
reg   [1:0] trunc_ln172_reg_1288;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [1:0] trunc_ln172_reg_1288_pp0_iter1_reg;
reg   [1:0] trunc_ln172_reg_1288_pp0_iter2_reg;
reg   [4:0] tmp_62_reg_1292;
wire    ap_block_pp0_stage15_11001;
reg   [4:0] tmp_62_reg_1292_pp0_iter1_reg;
wire   [7:0] zext_ln172_10_fu_785_p1;
reg   [7:0] zext_ln172_10_reg_1300;
reg   [4:0] tmp_53_reg_1306;
wire   [63:0] zext_ln300_2_fu_827_p1;
reg   [63:0] zext_ln300_2_reg_1321;
wire   [63:0] zext_ln298_1_fu_839_p1;
reg   [63:0] zext_ln298_1_reg_1331;
wire   [8:0] zext_ln172_11_fu_844_p1;
reg   [8:0] zext_ln172_11_reg_1341;
wire   [8:0] add_ln299_fu_847_p2;
reg   [8:0] add_ln299_reg_1346;
wire   [63:0] zext_ln304_2_fu_873_p1;
reg   [63:0] zext_ln304_2_reg_1366;
wire   [64:0] zext_ln172_15_fu_878_p1;
reg   [63:0] DATA_x_1_load_reg_1381;
reg   [63:0] DATA_x_1_load_1_reg_1388;
reg   [7:0] tmp_54_reg_1395;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [8:0] add_ln301_fu_904_p2;
reg   [8:0] add_ln301_reg_1400;
reg   [7:0] smem_addr_30_reg_1410;
reg   [7:0] smem_1_addr_30_reg_1415;
reg   [7:0] smem_2_addr_30_reg_1420;
reg   [63:0] DATA_x_load_1_reg_1440;
reg   [63:0] DATA_x_load_2_reg_1447;
reg   [63:0] DATA_x_1_load_2_reg_1454;
reg   [63:0] DATA_x_1_load_3_reg_1461;
reg   [6:0] tmp_55_reg_1468;
reg   [7:0] tmp_56_reg_1473;
wire   [1:0] trunc_ln172_2_fu_963_p1;
reg   [1:0] trunc_ln172_2_reg_1478;
reg   [63:0] DATA_x_load_5_reg_1497;
reg   [63:0] DATA_x_1_load_4_reg_1509;
reg   [63:0] DATA_x_1_load_5_reg_1516;
reg   [6:0] tmp_57_reg_1523;
wire   [7:0] add_ln303_fu_1018_p2;
reg   [7:0] add_ln303_reg_1528;
reg   [7:0] tmp_59_reg_1533;
reg   [63:0] DATA_x_load_7_reg_1538;
reg   [63:0] DATA_x_1_load_6_reg_1545;
reg   [63:0] DATA_x_1_load_7_reg_1552;
reg   [7:0] tmp_58_reg_1559;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [8:0] tmp_60_reg_1564;
wire   [31:0] add_ln299_1_fu_1070_p2;
reg   [31:0] add_ln299_1_reg_1569;
wire   [64:0] zext_ln299_3_fu_1081_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] add_ln300_1_fu_1085_p2;
reg   [31:0] add_ln300_1_reg_1579;
reg   [7:0] smem_addr_31_reg_1584;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [7:0] smem_1_addr_31_reg_1589;
reg   [7:0] smem_2_addr_31_reg_1594;
wire   [64:0] zext_ln300_5_fu_1103_p1;
wire   [31:0] add_ln301_1_fu_1107_p2;
reg   [31:0] add_ln301_1_reg_1604;
reg   [7:0] smem_addr_32_reg_1609;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [7:0] smem_1_addr_32_reg_1614;
reg   [7:0] smem_2_addr_32_reg_1619;
wire   [64:0] zext_ln301_3_fu_1125_p1;
wire   [31:0] add_ln302_1_fu_1129_p2;
reg   [31:0] add_ln302_1_reg_1629;
reg   [7:0] smem_addr_33_reg_1634;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [7:0] smem_1_addr_33_reg_1639;
reg   [7:0] smem_2_addr_33_reg_1644;
wire   [64:0] zext_ln302_5_fu_1147_p1;
wire   [31:0] add_ln303_1_fu_1151_p2;
reg   [31:0] add_ln303_1_reg_1654;
reg   [7:0] smem_addr_34_reg_1659;
reg   [7:0] smem_1_addr_34_reg_1664;
reg   [7:0] smem_2_addr_34_reg_1669;
wire   [64:0] zext_ln303_3_fu_1169_p1;
wire   [31:0] add_ln304_1_fu_1173_p2;
reg   [31:0] add_ln304_1_reg_1679;
reg   [7:0] smem_addr_35_reg_1684;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [7:0] smem_1_addr_35_reg_1689;
reg   [7:0] smem_2_addr_35_reg_1694;
wire   [64:0] zext_ln304_5_fu_1191_p1;
wire   [31:0] add_ln305_1_fu_1195_p2;
reg   [31:0] add_ln305_1_reg_1704;
reg   [7:0] smem_addr_36_reg_1709;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [7:0] smem_1_addr_36_reg_1714;
reg   [7:0] smem_2_addr_36_reg_1719;
wire   [64:0] zext_ln305_3_fu_1207_p1;
reg   [7:0] smem_addr_37_reg_1729;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [7:0] smem_1_addr_37_reg_1734;
reg   [7:0] smem_2_addr_37_reg_1739;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln298_fu_814_p1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln302_2_fu_860_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln172_13_fu_909_p1;
wire   [63:0] zext_ln300_3_fu_923_p1;
wire   [63:0] zext_ln172_12_fu_929_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln302_3_fu_974_p1;
wire   [63:0] zext_ln304_3_fu_987_p1;
wire   [63:0] zext_ln299_fu_1032_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln300_fu_1075_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln301_fu_1090_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln299_1_fu_1096_p1;
wire   [63:0] zext_ln302_fu_1112_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln300_1_fu_1118_p1;
wire   [63:0] zext_ln303_fu_1134_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln301_1_fu_1140_p1;
wire   [63:0] zext_ln304_fu_1156_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln302_1_fu_1162_p1;
wire   [63:0] zext_ln305_fu_1178_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln303_1_fu_1184_p1;
wire   [63:0] zext_ln304_1_fu_1200_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln305_1_fu_1211_p1;
wire    ap_block_pp0_stage13;
reg   [6:0] tid_fu_142;
wire   [6:0] add_ln294_fu_775_p2;
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
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [7:0] smem_1_address0_local;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [7:0] smem_address0_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [7:0] smem_2_address0_local;
reg   [31:0] grp_fu_667_p0;
wire   [1:0] tmp_s_fu_721_p4;
wire   [31:0] zext_ln295_fu_717_p1;
wire   [2:0] or_ln7_fu_731_p3;
wire   [31:0] grp_fu_751_p0;
wire   [2:0] grp_fu_751_p1;
wire   [2:0] grp_fu_757_p1;
wire   [1:0] grp_fu_757_p2;
wire   [5:0] mul_ln172_fu_791_p0;
wire   [7:0] mul_ln172_fu_791_p1;
wire   [12:0] mul_ln172_fu_791_p2;
wire   [7:0] shl_ln6_fu_807_p3;
wire   [7:0] or_ln_fu_820_p3;
wire   [7:0] shl_ln298_1_fu_832_p3;
wire   [7:0] or_ln5_fu_853_p3;
wire   [7:0] or_ln6_fu_866_p3;
wire   [8:0] mul_ln299_fu_888_p0;
wire   [10:0] mul_ln299_fu_888_p1;
wire   [18:0] mul_ln299_fu_888_p2;
wire   [30:0] grp_fu_672_p4;
wire   [7:0] or_ln300_1_fu_916_p3;
wire   [16:0] tmp_55_fu_935_p1;
wire  signed [16:0] grp_fu_1218_p3;
wire   [8:0] mul_ln301_fu_947_p0;
wire   [10:0] mul_ln301_fu_947_p1;
wire   [18:0] mul_ln301_fu_947_p2;
wire   [1:0] grp_fu_751_p2;
wire   [7:0] or_ln302_1_fu_967_p3;
wire   [7:0] or_ln304_1_fu_980_p3;
wire   [7:0] add_ln302_fu_993_p2;
wire   [7:0] mul_ln302_fu_1002_p0;
wire   [9:0] mul_ln302_fu_1002_p1;
wire   [16:0] mul_ln302_fu_1002_p2;
wire   [18:0] tmp_59_fu_1023_p1;
wire  signed [18:0] grp_fu_1227_p3;
wire  signed [8:0] sext_ln303_fu_1038_p1;
wire   [8:0] mul_ln303_fu_1045_p0;
wire   [10:0] mul_ln303_fu_1045_p1;
wire   [18:0] mul_ln303_fu_1045_p2;
wire   [20:0] tmp_60_fu_1061_p1;
wire  signed [20:0] grp_fu_1236_p3;
wire   [5:0] grp_fu_1218_p0;
wire   [6:0] grp_fu_1218_p1;
wire   [8:0] grp_fu_1218_p2;
wire   [5:0] grp_fu_1227_p0;
wire   [7:0] grp_fu_1227_p1;
wire   [9:0] grp_fu_1227_p2;
wire   [5:0] grp_fu_1236_p0;
wire   [8:0] grp_fu_1236_p1;
wire   [10:0] grp_fu_1236_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage2;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_1218_p00;
wire   [9:0] grp_fu_1236_p00;
wire   [12:0] mul_ln172_fu_791_p00;
wire   [18:0] mul_ln299_fu_888_p00;
wire   [18:0] mul_ln301_fu_947_p00;
wire   [16:0] mul_ln302_fu_1002_p00;
wire   [18:0] mul_ln303_fu_1045_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_142 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_32ns_3ns_2_36_1 #(.ID( 1 ),.NUM_STAGE( 36 ),.din0_WIDTH( 32 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_32ns_3ns_2_36_1_U340(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_751_p0),.din1(grp_fu_751_p1),.ce(1'b1),.dout(grp_fu_751_p2));
fft1D_512_urem_6ns_3ns_2_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_1_U341(.clk(ap_clk),.reset(ap_rst),.din0(offset_reg_1262),.din1(grp_fu_757_p1),.ce(1'b1),.dout(grp_fu_757_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U342(.din0(mul_ln172_fu_791_p0),.din1(mul_ln172_fu_791_p1),.dout(mul_ln172_fu_791_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U343(.din0(mul_ln299_fu_888_p0),.din1(mul_ln299_fu_888_p1),.dout(mul_ln299_fu_888_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U344(.din0(mul_ln301_fu_947_p0),.din1(mul_ln301_fu_947_p1),.dout(mul_ln301_fu_947_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U345(.din0(mul_ln302_fu_1002_p0),.din1(mul_ln302_fu_1002_p1),.dout(mul_ln302_fu_1002_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U346(.din0(mul_ln303_fu_1045_p0),.din1(mul_ln303_fu_1045_p1),.dout(mul_ln303_fu_1045_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U347(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1218_p0),.din1(grp_fu_1218_p1),.din2(grp_fu_1218_p2),.ce(1'b1),.dout(grp_fu_1218_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U348(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1227_p0),.din1(grp_fu_1227_p1),.din2(grp_fu_1227_p2),.ce(1'b1),.dout(grp_fu_1227_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U349(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1236_p0),.din1(grp_fu_1236_p1),.din2(grp_fu_1236_p2),.ce(1'b1),.dout(grp_fu_1236_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage2) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage2) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_689 <= DATA_x_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_689 <= DATA_x_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_142 <= 7'd0;
    end else if (((tmp_reg_1258 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        tid_fu_142 <= add_ln294_fu_775_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_load_1_reg_1388 <= DATA_x_1_q0;
        DATA_x_1_load_reg_1381 <= DATA_x_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_load_2_reg_1454 <= DATA_x_1_q1;
        DATA_x_1_load_3_reg_1461 <= DATA_x_1_q0;
        DATA_x_load_1_reg_1440 <= DATA_x_q1;
        DATA_x_load_2_reg_1447 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_load_4_reg_1509 <= DATA_x_1_q1;
        DATA_x_1_load_5_reg_1516 <= DATA_x_1_q0;
        DATA_x_load_5_reg_1497 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_load_6_reg_1545 <= DATA_x_1_q1;
        DATA_x_1_load_7_reg_1552 <= DATA_x_1_q0;
        DATA_x_load_7_reg_1538 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln299_1_reg_1569 <= add_ln299_1_fu_1070_p2;
        tmp_58_reg_1559 <= {{mul_ln303_fu_1045_p2[18:11]}};
        tmp_60_reg_1564 <= {{tmp_60_fu_1061_p1[20:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln299_reg_1346 <= add_ln299_fu_847_p2;
        zext_ln172_11_reg_1341[5 : 0] <= zext_ln172_11_fu_844_p1[5 : 0];
        zext_ln304_2_reg_1366[7 : 2] <= zext_ln304_2_fu_873_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln300_1_reg_1579 <= add_ln300_1_fu_1085_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln301_1_reg_1604 <= add_ln301_1_fu_1107_p2;
        smem_1_addr_31_reg_1589 <= zext_ln299_1_fu_1096_p1;
        smem_2_addr_31_reg_1594 <= zext_ln299_1_fu_1096_p1;
        smem_addr_31_reg_1584 <= zext_ln299_1_fu_1096_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln301_reg_1400 <= add_ln301_fu_904_p2;
        smem_1_addr_30_reg_1415 <= zext_ln172_13_fu_909_p1;
        smem_2_addr_30_reg_1420 <= zext_ln172_13_fu_909_p1;
        smem_addr_30_reg_1410 <= zext_ln172_13_fu_909_p1;
        tmp_54_reg_1395 <= {{mul_ln299_fu_888_p2[18:11]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln302_1_reg_1629 <= add_ln302_1_fu_1129_p2;
        smem_1_addr_32_reg_1614 <= zext_ln300_1_fu_1118_p1;
        smem_2_addr_32_reg_1619 <= zext_ln300_1_fu_1118_p1;
        smem_addr_32_reg_1609 <= zext_ln300_1_fu_1118_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln303_1_reg_1654 <= add_ln303_1_fu_1151_p2;
        smem_1_addr_33_reg_1639 <= zext_ln301_1_fu_1140_p1;
        smem_2_addr_33_reg_1644 <= zext_ln301_1_fu_1140_p1;
        smem_addr_33_reg_1634 <= zext_ln301_1_fu_1140_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln303_reg_1528 <= add_ln303_fu_1018_p2;
        tmp_57_reg_1523 <= {{mul_ln302_fu_1002_p2[16:10]}};
        tmp_59_reg_1533 <= {{tmp_59_fu_1023_p1[18:11]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln304_1_reg_1679 <= add_ln304_1_fu_1173_p2;
        smem_1_addr_34_reg_1664 <= zext_ln302_1_fu_1162_p1;
        smem_2_addr_34_reg_1669 <= zext_ln302_1_fu_1162_p1;
        smem_addr_34_reg_1659 <= zext_ln302_1_fu_1162_p1;
        trunc_ln172_reg_1288 <= trunc_ln172_fu_762_p1;
        trunc_ln172_reg_1288_pp0_iter1_reg <= trunc_ln172_reg_1288;
        trunc_ln172_reg_1288_pp0_iter2_reg <= trunc_ln172_reg_1288_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln305_1_reg_1704 <= add_ln305_1_fu_1195_p2;
        smem_1_addr_35_reg_1689 <= zext_ln303_1_fu_1184_p1;
        smem_2_addr_35_reg_1694 <= zext_ln303_1_fu_1184_p1;
        smem_addr_35_reg_1684 <= zext_ln303_1_fu_1184_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_2_reg_1275 <= offset_2_fu_739_p5;
        offset_2_reg_1275_pp0_iter1_reg <= offset_2_reg_1275;
        offset_2_reg_1275_pp0_iter2_reg <= offset_2_reg_1275_pp0_iter1_reg;
        offset_reg_1262 <= offset_fu_713_p1;
        offset_reg_1262_pp0_iter1_reg <= offset_reg_1262;
        offset_reg_1262_pp0_iter2_reg <= offset_reg_1262_pp0_iter1_reg;
        tid_3_reg_1252 <= ap_sig_allocacmp_tid_3;
        tmp_53_reg_1306 <= {{mul_ln172_fu_791_p2[12:8]}};
        tmp_reg_1258 <= ap_sig_allocacmp_tid_3[32'd6];
        tmp_reg_1258_pp0_iter1_reg <= tmp_reg_1258;
        tmp_reg_1258_pp0_iter2_reg <= tmp_reg_1258_pp0_iter1_reg;
        zext_ln172_10_reg_1300[5 : 0] <= zext_ln172_10_fu_785_p1[5 : 0];
        zext_ln298_1_reg_1331[7 : 3] <= zext_ln298_1_fu_839_p1[7 : 3];
        zext_ln300_2_reg_1321[7 : 2] <= zext_ln300_2_fu_827_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_682 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_addr_36_reg_1714 <= zext_ln304_1_fu_1200_p1;
        smem_2_addr_36_reg_1719 <= zext_ln304_1_fu_1200_p1;
        smem_addr_36_reg_1709 <= zext_ln304_1_fu_1200_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_addr_37_reg_1734 <= zext_ln305_1_fu_1211_p1;
        smem_2_addr_37_reg_1739 <= zext_ln305_1_fu_1211_p1;
        smem_addr_37_reg_1729 <= zext_ln305_1_fu_1211_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_55_reg_1468 <= {{tmp_55_fu_935_p1[16:10]}};
        tmp_56_reg_1473 <= {{mul_ln301_fu_947_p2[18:11]}};
        trunc_ln172_2_reg_1478 <= trunc_ln172_2_fu_963_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        tmp_62_reg_1292 <= {{tid_3_reg_1252[5:1]}};
        tmp_62_reg_1292_pp0_iter1_reg <= tmp_62_reg_1292;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address0_local = zext_ln304_3_fu_987_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address0_local = zext_ln300_3_fu_923_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln304_2_fu_873_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln300_2_fu_827_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address1_local = zext_ln302_3_fu_974_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address1_local = zext_ln298_1_reg_1331;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln302_2_fu_860_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln298_fu_814_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address0_local = zext_ln304_3_fu_987_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address0_local = zext_ln300_3_fu_923_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln302_2_fu_860_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln298_1_fu_839_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address1_local = zext_ln302_3_fu_974_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address1_local = zext_ln304_2_reg_1366;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln300_2_reg_1321;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln298_fu_814_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1258 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_1258_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_142;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_667_p0 = zext_ln305_3_fu_1207_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_667_p0 = zext_ln304_5_fu_1191_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_667_p0 = zext_ln303_3_fu_1169_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_667_p0 = zext_ln302_5_fu_1147_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_667_p0 = zext_ln301_3_fu_1125_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_667_p0 = zext_ln300_5_fu_1103_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_667_p0 = zext_ln299_3_fu_1081_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_667_p0 = zext_ln172_15_fu_878_p1;
        end else begin
            grp_fu_667_p0 = 'bx;
        end
    end else begin
        grp_fu_667_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = smem_1_addr_37_reg_1734;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = smem_1_addr_36_reg_1714;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = smem_1_addr_35_reg_1689;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_1_address0_local = smem_1_addr_34_reg_1664;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_address0_local = smem_1_addr_33_reg_1639;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_address0_local = smem_1_addr_32_reg_1614;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_address0_local = smem_1_addr_31_reg_1589;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_address0_local = zext_ln305_fu_1178_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_address0_local = zext_ln304_fu_1156_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln303_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_address0_local = zext_ln302_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln301_fu_1090_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln300_fu_1075_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln299_fu_1032_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = smem_1_addr_30_reg_1415;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln172_12_fu_929_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_1_load_7_reg_1552;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_load_7_reg_1538;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_1_load_6_reg_1545;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_1_d0_local = DATA_x_1_load_5_reg_1516;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_1_d0_local = DATA_x_load_5_reg_1497;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_1_d0_local = DATA_x_1_load_4_reg_1509;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_d0_local = DATA_x_1_load_3_reg_1461;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d0_local = DATA_x_1_load_2_reg_1454;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_1_d0_local = DATA_x_load_2_reg_1447;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d0_local = DATA_x_1_load_1_reg_1388;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_d0_local = DATA_x_load_1_reg_1440;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_x_1_load_reg_1381;
    end else if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_d0_local = reg_689;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_1_d0_local = reg_682;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (trunc_ln172_reg_1288_pp0_iter2_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln172_reg_1288_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln172_reg_1288_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln172_reg_1288_pp0_iter1_reg== 2'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln172_reg_1288_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln172_reg_1288_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (trunc_ln172_reg_1288_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd1) &(1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln172_reg_1288_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = smem_2_addr_37_reg_1739;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = smem_2_addr_36_reg_1719;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = smem_2_addr_35_reg_1694;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_2_address0_local = smem_2_addr_34_reg_1669;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_address0_local = smem_2_addr_33_reg_1644;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_address0_local = smem_2_addr_32_reg_1619;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_address0_local = smem_2_addr_31_reg_1594;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_address0_local = zext_ln305_fu_1178_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_2_address0_local = zext_ln304_fu_1156_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_address0_local = zext_ln303_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_address0_local = zext_ln302_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln301_fu_1090_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln300_fu_1075_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln299_fu_1032_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = smem_2_addr_30_reg_1420;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln172_12_fu_929_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_1_load_7_reg_1552;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_load_7_reg_1538;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_1_load_6_reg_1545;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_2_d0_local = DATA_x_1_load_5_reg_1516;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_2_d0_local = DATA_x_load_5_reg_1497;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_2_d0_local = DATA_x_1_load_4_reg_1509;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_2_d0_local = DATA_x_1_load_3_reg_1461;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_2_d0_local = DATA_x_1_load_2_reg_1454;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_2_d0_local = DATA_x_load_2_reg_1447;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d0_local = DATA_x_1_load_1_reg_1388;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_d0_local = DATA_x_load_1_reg_1440;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_x_1_load_reg_1381;
    end else if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_2_d0_local = reg_689;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_2_d0_local = reg_682;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1288_pp0_iter2_reg == 2'd0) & ~(trunc_ln172_reg_1288_pp0_iter2_reg == 2'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | (~(trunc_ln172_2_reg_1478 == 2'd0) & ~(trunc_ln172_2_reg_1478 == 2'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | (~(trunc_ln172_2_reg_1478 == 2'd0) & ~(trunc_ln172_2_reg_1478 == 2'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | (~(trunc_ln172_2_reg_1478 == 2'd0) & ~(trunc_ln172_2_reg_1478 == 2'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | (~(trunc_ln172_2_reg_1478 == 2'd0) & ~(trunc_ln172_2_reg_1478 == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_2_reg_1478 == 2'd0) & ~(trunc_ln172_2_reg_1478 == 2'd1) & (1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(trunc_ln172_2_reg_1478 == 2'd0) & ~(trunc_ln172_2_reg_1478 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_2_reg_1478 == 2'd0) & ~(trunc_ln172_2_reg_1478 == 2'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(trunc_ln172_2_reg_1478 == 2'd0) & ~(trunc_ln172_2_reg_1478 == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln172_reg_1288_pp0_iter1_reg == 2'd0) & ~(trunc_ln172_reg_1288_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | (~(trunc_ln172_reg_1288_pp0_iter1_reg == 2'd0) & ~(trunc_ln172_reg_1288_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) |(~(trunc_ln172_reg_1288_pp0_iter1_reg == 2'd0) & ~(trunc_ln172_reg_1288_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | (~(trunc_ln172_reg_1288_pp0_iter1_reg == 2'd0) & ~(trunc_ln172_reg_1288_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | (~(trunc_ln172_reg_1288_pp0_iter1_reg == 2'd0) & ~(trunc_ln172_reg_1288_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | (~(trunc_ln172_reg_1288_pp0_iter1_reg == 2'd0) & ~(trunc_ln172_reg_1288_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | (~(trunc_ln172_reg_1288_pp0_iter1_reg == 2'd0) & ~(trunc_ln172_reg_1288_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = smem_addr_37_reg_1729;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = smem_addr_36_reg_1709;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = smem_addr_35_reg_1684;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        smem_address0_local = smem_addr_34_reg_1659;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_address0_local = smem_addr_33_reg_1634;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_address0_local = smem_addr_32_reg_1609;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_address0_local = smem_addr_31_reg_1584;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_address0_local = zext_ln305_fu_1178_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_address0_local = zext_ln304_fu_1156_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln303_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_address0_local = zext_ln302_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln301_fu_1090_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln300_fu_1075_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln299_fu_1032_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = smem_addr_30_reg_1410;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln172_12_fu_929_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_1_load_7_reg_1552;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_load_7_reg_1538;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_1_load_6_reg_1545;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        smem_d0_local = DATA_x_1_load_5_reg_1516;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        smem_d0_local = DATA_x_load_5_reg_1497;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        smem_d0_local = DATA_x_1_load_4_reg_1509;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_d0_local = DATA_x_1_load_3_reg_1461;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d0_local = DATA_x_1_load_2_reg_1454;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        smem_d0_local = DATA_x_load_2_reg_1447;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d0_local = DATA_x_1_load_1_reg_1388;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d0_local = DATA_x_load_1_reg_1440;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_x_1_load_reg_1381;
    end else if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_d0_local = reg_689;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_d0_local = reg_682;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (trunc_ln172_reg_1288_pp0_iter2_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln172_reg_1288_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln172_reg_1288_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln172_reg_1288_pp0_iter1_reg== 2'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln172_reg_1288_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln172_reg_1288_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (trunc_ln172_reg_1288_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd0) &(1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln172_reg_1288_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_1478 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter2_stage2) & (ap_idle_pp0_0to1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
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
assign add_ln294_fu_775_p2 = (tid_3_reg_1252 + 7'd2);
assign add_ln299_1_fu_1070_p2 = (offset_2_reg_1275_pp0_iter2_reg + 32'd288);
assign add_ln299_fu_847_p2 = ($signed(zext_ln172_11_fu_844_p1) + $signed(9'd288));
assign add_ln300_1_fu_1085_p2 = (offset_2_reg_1275_pp0_iter2_reg + 32'd72);
assign add_ln301_1_fu_1107_p2 = (offset_2_reg_1275_pp0_iter2_reg + 32'd360);
assign add_ln301_fu_904_p2 = ($signed(zext_ln172_11_reg_1341) + $signed(9'd360));
assign add_ln302_1_fu_1129_p2 = (offset_2_reg_1275_pp0_iter2_reg + 32'd144);
assign add_ln302_fu_993_p2 = ($signed(zext_ln172_10_reg_1300) + $signed(8'd144));
assign add_ln303_1_fu_1151_p2 = (offset_2_reg_1275_pp0_iter2_reg + 32'd432);
assign add_ln303_fu_1018_p2 = ($signed(zext_ln172_10_reg_1300) + $signed(8'd176));
assign add_ln304_1_fu_1173_p2 = (offset_2_reg_1275_pp0_iter2_reg + 32'd216);
assign add_ln305_1_fu_1195_p2 = (offset_2_reg_1275_pp0_iter2_reg + 32'd504);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign grp_fu_1218_p0 = grp_fu_1218_p00;
assign grp_fu_1218_p00 = offset_reg_1262_pp0_iter1_reg;
assign grp_fu_1218_p1 = 8'd72;
assign grp_fu_1218_p2 = 17'd342;
assign grp_fu_1227_p0 = zext_ln172_11_fu_844_p1;
assign grp_fu_1227_p1 = 9'd216;
assign grp_fu_1227_p2 = 19'd683;
assign grp_fu_1236_p0 = grp_fu_1236_p00;
assign grp_fu_1236_p00 = offset_reg_1262_pp0_iter2_reg;
assign grp_fu_1236_p1 = 10'd504;
assign grp_fu_1236_p2 = 21'd1366;
assign grp_fu_325_p_ce = 1'b1;
assign grp_fu_325_p_din0 = grp_fu_667_p0;
assign grp_fu_325_p_din1 = 65'd5726623062;
assign grp_fu_672_p4 = {{grp_fu_325_p_dout0[64:34]}};
assign grp_fu_751_p0 = {{zext_ln295_fu_717_p1[31:3]}, {or_ln7_fu_731_p3}};
assign grp_fu_751_p1 = 32'd3;
assign grp_fu_757_p1 = 6'd3;
assign mul_ln172_fu_791_p0 = mul_ln172_fu_791_p00;
assign mul_ln172_fu_791_p00 = offset_reg_1262_pp0_iter1_reg;
assign mul_ln172_fu_791_p1 = 13'd86;
assign mul_ln299_fu_888_p0 = mul_ln299_fu_888_p00;
assign mul_ln299_fu_888_p00 = add_ln299_reg_1346;
assign mul_ln299_fu_888_p1 = 19'd683;
assign mul_ln301_fu_947_p0 = mul_ln301_fu_947_p00;
assign mul_ln301_fu_947_p00 = add_ln301_reg_1400;
assign mul_ln301_fu_947_p1 = 19'd683;
assign mul_ln302_fu_1002_p0 = mul_ln302_fu_1002_p00;
assign mul_ln302_fu_1002_p00 = add_ln302_fu_993_p2;
assign mul_ln302_fu_1002_p1 = 17'd342;
assign mul_ln303_fu_1045_p0 = mul_ln303_fu_1045_p00;
assign mul_ln303_fu_1045_p00 = $unsigned(sext_ln303_fu_1038_p1);
assign mul_ln303_fu_1045_p1 = 19'd683;
assign offset_2_fu_739_p5 = {{zext_ln295_fu_717_p1[31:3]}, {or_ln7_fu_731_p3}};
assign offset_fu_713_p1 = ap_sig_allocacmp_tid_3[5:0];
assign or_ln300_1_fu_916_p3 = {{tmp_62_reg_1292_pp0_iter1_reg}, {3'd6}};
assign or_ln302_1_fu_967_p3 = {{tmp_62_reg_1292_pp0_iter1_reg}, {3'd5}};
assign or_ln304_1_fu_980_p3 = {{tmp_62_reg_1292_pp0_iter1_reg}, {3'd7}};
assign or_ln5_fu_853_p3 = {{offset_reg_1262_pp0_iter2_reg}, {2'd1}};
assign or_ln6_fu_866_p3 = {{offset_reg_1262_pp0_iter2_reg}, {2'd3}};
assign or_ln7_fu_731_p3 = {{tmp_s_fu_721_p4}, {1'd1}};
assign or_ln_fu_820_p3 = {{offset_reg_1262_pp0_iter1_reg}, {2'd2}};
assign sext_ln303_fu_1038_p1 = $signed(add_ln303_reg_1528);
assign shl_ln298_1_fu_832_p3 = {{tmp_62_reg_1292_pp0_iter1_reg}, {3'd4}};
assign shl_ln6_fu_807_p3 = {{offset_reg_1262_pp0_iter1_reg}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign tmp_55_fu_935_p1 = grp_fu_1218_p3;
assign tmp_59_fu_1023_p1 = grp_fu_1227_p3;
assign tmp_60_fu_1061_p1 = grp_fu_1236_p3;
assign tmp_s_fu_721_p4 = {{ap_sig_allocacmp_tid_3[2:1]}};
assign trunc_ln172_2_fu_963_p1 = grp_fu_751_p2[1:0];
assign trunc_ln172_fu_762_p1 = grp_fu_757_p2[1:0];
assign zext_ln172_10_fu_785_p1 = offset_reg_1262_pp0_iter1_reg;
assign zext_ln172_11_fu_844_p1 = offset_reg_1262_pp0_iter2_reg;
assign zext_ln172_12_fu_929_p1 = tmp_53_reg_1306;
assign zext_ln172_13_fu_909_p1 = grp_fu_672_p4;
assign zext_ln172_15_fu_878_p1 = offset_2_reg_1275_pp0_iter2_reg;
assign zext_ln295_fu_717_p1 = offset_fu_713_p1;
assign zext_ln298_1_fu_839_p1 = shl_ln298_1_fu_832_p3;
assign zext_ln298_fu_814_p1 = shl_ln6_fu_807_p3;
assign zext_ln299_1_fu_1096_p1 = grp_fu_672_p4;
assign zext_ln299_3_fu_1081_p1 = add_ln299_1_reg_1569;
assign zext_ln299_fu_1032_p1 = tmp_54_reg_1395;
assign zext_ln300_1_fu_1118_p1 = grp_fu_672_p4;
assign zext_ln300_2_fu_827_p1 = or_ln_fu_820_p3;
assign zext_ln300_3_fu_923_p1 = or_ln300_1_fu_916_p3;
assign zext_ln300_5_fu_1103_p1 = add_ln300_1_reg_1579;
assign zext_ln300_fu_1075_p1 = tmp_55_reg_1468;
assign zext_ln301_1_fu_1140_p1 = grp_fu_672_p4;
assign zext_ln301_3_fu_1125_p1 = add_ln301_1_reg_1604;
assign zext_ln301_fu_1090_p1 = tmp_56_reg_1473;
assign zext_ln302_1_fu_1162_p1 = grp_fu_672_p4;
assign zext_ln302_2_fu_860_p1 = or_ln5_fu_853_p3;
assign zext_ln302_3_fu_974_p1 = or_ln302_1_fu_967_p3;
assign zext_ln302_5_fu_1147_p1 = add_ln302_1_reg_1629;
assign zext_ln302_fu_1112_p1 = tmp_57_reg_1523;
assign zext_ln303_1_fu_1184_p1 = grp_fu_672_p4;
assign zext_ln303_3_fu_1169_p1 = add_ln303_1_reg_1654;
assign zext_ln303_fu_1134_p1 = tmp_58_reg_1559;
assign zext_ln304_1_fu_1200_p1 = grp_fu_672_p4;
assign zext_ln304_2_fu_873_p1 = or_ln6_fu_866_p3;
assign zext_ln304_3_fu_987_p1 = or_ln304_1_fu_980_p3;
assign zext_ln304_5_fu_1191_p1 = add_ln304_1_reg_1679;
assign zext_ln304_fu_1156_p1 = tmp_59_reg_1533;
assign zext_ln305_1_fu_1211_p1 = grp_fu_672_p4;
assign zext_ln305_3_fu_1207_p1 = add_ln305_1_reg_1704;
assign zext_ln305_fu_1178_p1 = tmp_60_reg_1564;
always @ (posedge ap_clk) begin
    zext_ln172_10_reg_1300[7:6] <= 2'b00;
    zext_ln300_2_reg_1321[1:0] <= 2'b10;
    zext_ln300_2_reg_1321[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln298_1_reg_1331[2:0] <= 3'b100;
    zext_ln298_1_reg_1331[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln172_11_reg_1341[8:6] <= 3'b000;
    zext_ln304_2_reg_1366[1:0] <= 2'b11;
    zext_ln304_2_reg_1366[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 
