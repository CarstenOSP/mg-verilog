module stencil_stencil_Pipeline_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,r,orig_address0,orig_ce0,orig_q0,orig_address1,orig_ce1,orig_q1,indvars_iv_next173,tmp_3,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7,sol_address0,sol_ce0,sol_we0,sol_d0,sol_address1,sol_ce1,sol_we1,sol_d1,tmp_5); 
parameter    ap_ST_fsm_pp0_stage0 = 15'd1;
parameter    ap_ST_fsm_pp0_stage1 = 15'd2;
parameter    ap_ST_fsm_pp0_stage2 = 15'd4;
parameter    ap_ST_fsm_pp0_stage3 = 15'd8;
parameter    ap_ST_fsm_pp0_stage4 = 15'd16;
parameter    ap_ST_fsm_pp0_stage5 = 15'd32;
parameter    ap_ST_fsm_pp0_stage6 = 15'd64;
parameter    ap_ST_fsm_pp0_stage7 = 15'd128;
parameter    ap_ST_fsm_pp0_stage8 = 15'd256;
parameter    ap_ST_fsm_pp0_stage9 = 15'd512;
parameter    ap_ST_fsm_pp0_stage10 = 15'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 15'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 15'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 15'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] r;
output  [12:0] orig_address0;
output   orig_ce0;
input  [31:0] orig_q0;
output  [12:0] orig_address1;
output   orig_ce1;
input  [31:0] orig_q1;
input  [6:0] indvars_iv_next173;
input  [6:0] tmp_3;
input  [31:0] filter_load_2;
input  [31:0] filter_load_5;
input  [31:0] filter_load_1;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
input  [31:0] filter_load_6;
input  [31:0] filter_load_4;
input  [31:0] filter_load_3;
input  [31:0] filter_load_7;
output  [12:0] sol_address0;
output   sol_ce0;
output   sol_we0;
output  [31:0] sol_d0;
output  [12:0] sol_address1;
output   sol_ce1;
output   sol_we1;
output  [31:0] sol_d1;
input  [12:0] tmp_5;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [0:0] icmp_ln8_reg_1853;
reg    ap_condition_exit_pp0_iter0_stage14;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg  signed [31:0] reg_536;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg  signed [31:0] reg_545;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_block_pp0_stage14_11001;
reg  signed [31:0] reg_554;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage0_11001;
reg  signed [31:0] reg_561;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] grp_fu_516_p2;
reg   [31:0] reg_570;
wire   [31:0] grp_fu_520_p2;
reg   [31:0] reg_574;
wire   [31:0] grp_fu_524_p2;
reg   [31:0] reg_578;
reg   [31:0] reg_582;
reg   [31:0] reg_586;
reg   [31:0] reg_590;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg  signed [31:0] reg_594;
wire   [31:0] grp_fu_528_p2;
reg   [31:0] reg_604;
wire   [31:0] grp_fu_532_p2;
reg   [31:0] reg_608;
reg   [31:0] reg_612;
reg  signed [31:0] reg_616;
reg   [31:0] reg_624;
reg   [31:0] reg_628;
reg   [31:0] reg_632;
reg  signed [31:0] reg_636;
reg   [31:0] reg_644;
reg   [31:0] reg_648;
reg   [31:0] reg_652;
reg   [31:0] reg_656;
reg   [5:0] c_1_reg_1615;
wire   [4:0] tmp_6_fu_674_p4;
reg   [4:0] tmp_6_reg_1622;
reg   [3:0] tmp_7_reg_1628;
reg   [2:0] tmp_9_reg_1650;
reg   [2:0] tmp_9_reg_1650_pp0_iter1_reg;
reg   [0:0] tmp_reg_1664;
reg   [0:0] tmp_reg_1664_pp0_iter1_reg;
wire   [12:0] or_ln12_6_fu_753_p4;
reg   [12:0] or_ln12_6_reg_1674;
wire   [63:0] zext_ln12_9_fu_761_p1;
reg   [63:0] zext_ln12_9_reg_1679;
reg   [63:0] zext_ln12_9_reg_1679_pp0_iter1_reg;
wire   [12:0] or_ln12_1_fu_792_p4;
reg   [12:0] or_ln12_1_reg_1699;
wire   [12:0] or_ln8_1_cast_fu_807_p1;
reg   [12:0] or_ln8_1_cast_reg_1704;
wire   [12:0] tmp_8_fu_822_p3;
reg   [12:0] tmp_8_reg_1714;
wire   [12:0] or_ln8_2_cast_fu_847_p1;
reg   [12:0] or_ln8_2_cast_reg_1725;
wire   [31:0] add_ln13_5_fu_877_p2;
reg   [31:0] add_ln13_5_reg_1740;
wire   [31:0] add_ln13_17_fu_883_p2;
reg   [31:0] add_ln13_17_reg_1745;
wire   [12:0] or_ln12_9_fu_889_p4;
reg   [12:0] or_ln12_9_reg_1750;
wire   [63:0] zext_ln12_19_fu_897_p1;
reg   [63:0] zext_ln12_19_reg_1755;
wire   [12:0] or_ln12_s_fu_902_p4;
reg   [12:0] or_ln12_s_reg_1765;
wire   [31:0] add_ln13_13_fu_921_p2;
reg   [31:0] add_ln13_13_reg_1775;
wire   [12:0] or_ln12_10_fu_927_p4;
reg   [12:0] or_ln12_10_reg_1780;
wire   [12:0] or_ln12_11_fu_940_p4;
reg   [12:0] or_ln12_11_reg_1790;
wire   [63:0] zext_ln12_23_fu_948_p1;
reg   [63:0] zext_ln12_23_reg_1795;
wire   [31:0] add_ln13_14_fu_959_p2;
reg   [31:0] add_ln13_14_reg_1805;
wire   [31:0] add_ln13_25_fu_964_p2;
reg   [31:0] add_ln13_25_reg_1810;
reg   [31:0] mul_ln13_42_reg_1815;
reg  signed [31:0] orig_load_21_reg_1820;
wire   [12:0] empty_fu_996_p2;
reg   [12:0] empty_reg_1837;
wire   [12:0] add_ln12_5_fu_1001_p2;
reg   [12:0] add_ln12_5_reg_1843;
wire   [31:0] add_ln13_24_fu_1006_p2;
reg   [31:0] add_ln13_24_reg_1848;
wire   [0:0] icmp_ln8_fu_1019_p2;
reg   [31:0] mul_ln13_39_reg_1872;
wire   [31:0] add_ln13_32_fu_1054_p2;
reg   [31:0] add_ln13_32_reg_1877;
reg   [31:0] mul_ln13_45_reg_1882;
reg  signed [31:0] orig_load_27_reg_1887;
wire   [12:0] add_ln12_11_fu_1081_p2;
reg   [12:0] add_ln12_11_reg_1897;
wire   [31:0] add_ln13_37_fu_1095_p2;
reg   [31:0] add_ln13_37_reg_1907;
reg   [31:0] mul_ln13_62_reg_1912;
reg  signed [31:0] orig_load_28_reg_1917;
reg   [31:0] mul_ln13_68_reg_1927;
wire   [31:0] add_ln13_45_fu_1137_p2;
reg   [31:0] add_ln13_45_reg_1942;
reg   [31:0] mul_ln13_63_reg_1947;
reg   [31:0] mul_ln13_71_reg_1952;
wire   [63:0] zext_ln12_fu_1148_p1;
reg   [63:0] zext_ln12_reg_1957;
wire   [31:0] add_ln13_40_fu_1153_p2;
reg   [31:0] add_ln13_40_reg_1967;
wire   [31:0] add_ln13_46_fu_1159_p2;
reg   [31:0] add_ln13_46_reg_1972;
wire   [31:0] add_ln13_53_fu_1179_p2;
reg   [31:0] add_ln13_53_reg_1982;
wire   [63:0] zext_ln12_1_fu_1193_p1;
reg   [63:0] zext_ln12_1_reg_1987;
wire   [63:0] zext_ln12_2_fu_1198_p1;
reg   [63:0] zext_ln12_2_reg_1997;
wire   [31:0] add_ln13_21_fu_1208_p2;
reg   [31:0] add_ln13_21_reg_2007;
wire   [31:0] add_ln13_48_fu_1214_p2;
reg   [31:0] add_ln13_48_reg_2012;
wire   [31:0] add_ln13_22_fu_1237_p2;
reg   [31:0] add_ln13_22_reg_2022;
wire   [31:0] add_ln13_29_fu_1248_p2;
reg   [31:0] add_ln13_29_reg_2027;
wire   [31:0] add_ln13_38_fu_1259_p2;
reg   [31:0] add_ln13_38_reg_2032;
wire   [31:0] add_ln13_61_fu_1274_p2;
reg   [31:0] add_ln13_61_reg_2042;
wire   [31:0] add_ln13_6_fu_1295_p2;
reg   [31:0] add_ln13_6_reg_2047;
wire   [31:0] add_ln13_9_fu_1300_p2;
reg   [31:0] add_ln13_9_reg_2052;
wire   [31:0] add_ln13_30_fu_1312_p2;
reg   [31:0] add_ln13_30_reg_2057;
wire   [31:0] add_ln13_62_fu_1321_p2;
reg   [31:0] add_ln13_62_reg_2062;
wire   [31:0] temp_3_fu_1330_p2;
reg   [31:0] temp_3_reg_2067;
wire   [31:0] temp_4_fu_1346_p2;
reg   [31:0] temp_4_reg_2072;
wire   [31:0] add_ln13_54_fu_1357_p2;
reg   [31:0] add_ln13_54_reg_2077;
wire   [31:0] add_ln13_57_fu_1362_p2;
reg   [31:0] add_ln13_57_reg_2082;
wire   [31:0] add_ln13_fu_1368_p2;
reg   [31:0] add_ln13_reg_2087;
wire   [31:0] temp_1_fu_1385_p2;
reg   [31:0] temp_1_reg_2092;
wire   [31:0] temp_2_fu_1401_p2;
reg   [31:0] temp_2_reg_2097;
wire   [31:0] temp_fu_1430_p2;
reg   [31:0] temp_reg_2102;
wire   [31:0] temp_5_fu_1446_p2;
reg   [31:0] temp_5_reg_2107;
wire   [31:0] temp_6_fu_1462_p2;
reg   [31:0] temp_6_reg_2112;
wire   [31:0] temp_7_fu_1478_p2;
reg   [31:0] temp_7_reg_2117;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
reg    ap_condition_exit_pp0_iter1_stage4;
wire    ap_block_pp0_stage5_subdone;
wire   [63:0] zext_ln12_6_fu_702_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_7_fu_717_p1;
wire   [63:0] zext_ln12_8_fu_748_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_10_fu_774_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_11_fu_787_p1;
wire   [63:0] zext_ln12_12_fu_817_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln12_13_fu_835_p1;
wire   [63:0] zext_ln12_15_fu_856_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln12_16_fu_866_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln12_20_fu_910_p1;
wire   [63:0] zext_ln12_21_fu_935_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln12_24_fu_978_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln12_25_fu_991_p1;
wire   [63:0] zext_ln12_28_fu_1030_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln12_29_fu_1040_p1;
wire   [63:0] zext_ln12_14_fu_1049_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln12_30_fu_1076_p1;
wire   [63:0] zext_ln12_17_fu_1086_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln12_31_fu_1101_p1;
wire   [63:0] zext_ln12_4_fu_1113_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln12_5_fu_1126_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln12_27_fu_1169_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln12_3_fu_1226_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln12_26_fu_1269_p1;
wire   [63:0] zext_ln12_18_fu_1414_p1;
wire   [63:0] zext_ln12_22_fu_1494_p1;
reg   [5:0] c_fu_112;
wire   [5:0] add_ln8_fu_1279_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_c_1;
reg    orig_ce1_local;
reg   [12:0] orig_address1_local;
reg    orig_ce0_local;
reg   [12:0] orig_address0_local;
reg    sol_we1_local;
reg   [31:0] sol_d1_local;
reg    sol_ce1_local;
reg   [12:0] sol_address1_local;
reg    sol_we0_local;
reg   [31:0] sol_d0_local;
reg    sol_ce0_local;
reg   [12:0] sol_address0_local;
reg  signed [31:0] grp_fu_516_p0;
reg  signed [31:0] grp_fu_516_p1;
reg  signed [31:0] grp_fu_520_p0;
reg  signed [31:0] grp_fu_520_p1;
reg  signed [31:0] grp_fu_524_p0;
reg  signed [31:0] grp_fu_524_p1;
reg  signed [31:0] grp_fu_528_p0;
reg  signed [31:0] grp_fu_528_p1;
reg  signed [31:0] grp_fu_532_p0;
reg  signed [31:0] grp_fu_532_p1;
wire   [12:0] tmp_4_fu_694_p3;
wire   [12:0] or_ln12_4_fu_707_p4;
wire   [12:0] or_ln12_5_fu_740_p4;
wire   [12:0] or_ln12_7_fu_766_p4;
wire   [12:0] or_ln12_8_fu_779_p4;
wire   [5:0] or_ln8_fu_800_p3;
wire   [12:0] add_ln12_fu_811_p2;
wire   [12:0] add_ln12_1_fu_829_p2;
wire   [5:0] or_ln8_1_fu_840_p3;
wire   [12:0] add_ln12_3_fu_851_p2;
wire   [12:0] add_ln12_4_fu_861_p2;
wire   [31:0] add_ln13_4_fu_871_p2;
wire   [31:0] add_ln13_12_fu_915_p2;
wire   [31:0] add_ln13_11_fu_953_p2;
wire   [12:0] or_ln12_12_fu_970_p4;
wire   [12:0] or_ln12_13_fu_983_p4;
wire   [5:0] or_ln8_2_fu_1012_p3;
wire   [12:0] add_ln12_8_fu_1025_p2;
wire   [12:0] add_ln12_9_fu_1035_p2;
wire   [12:0] add_ln12_2_fu_1045_p2;
wire   [5:0] or_ln8_3_fu_1060_p3;
wire   [12:0] or_ln8_6_cast_fu_1067_p1;
wire   [12:0] add_ln12_10_fu_1071_p2;
wire   [31:0] add_ln13_36_fu_1090_p2;
wire   [12:0] or_ln12_2_fu_1105_p4;
wire   [12:0] or_ln12_3_fu_1118_p4;
wire   [31:0] add_ln13_44_fu_1131_p2;
wire   [12:0] tmp_1_fu_1142_p3;
wire   [31:0] grp_fu_660_p2;
wire   [12:0] add_ln12_7_fu_1164_p2;
wire   [31:0] add_ln13_52_fu_1174_p2;
wire   [12:0] or_ln_fu_1185_p4;
wire   [31:0] add_ln13_20_fu_1202_p2;
wire   [12:0] tmp_2_fu_1220_p3;
wire   [31:0] add_ln13_19_fu_1231_p2;
wire   [31:0] add_ln13_28_fu_1242_p2;
wire   [31:0] add_ln13_35_fu_1254_p2;
wire   [12:0] add_ln12_6_fu_1264_p2;
wire   [31:0] add_ln13_3_fu_1289_p2;
wire   [31:0] add_ln13_27_fu_1306_p2;
wire   [31:0] add_ln13_59_fu_1317_p2;
wire   [31:0] add_ln13_26_fu_1326_p2;
wire   [31:0] add_ln13_33_fu_1335_p2;
wire   [31:0] add_ln13_34_fu_1341_p2;
wire   [31:0] add_ln13_51_fu_1351_p2;
wire   [31:0] add_ln13_8_fu_1374_p2;
wire   [31:0] add_ln13_10_fu_1380_p2;
wire   [31:0] add_ln13_16_fu_1390_p2;
wire   [31:0] add_ln13_18_fu_1396_p2;
wire   [12:0] tmp_s_fu_1406_p4;
wire   [31:0] add_ln13_1_fu_1419_p2;
wire   [31:0] add_ln13_2_fu_1425_p2;
wire   [31:0] add_ln13_41_fu_1435_p2;
wire   [31:0] add_ln13_42_fu_1441_p2;
wire   [31:0] add_ln13_49_fu_1451_p2;
wire   [31:0] add_ln13_50_fu_1457_p2;
wire   [31:0] add_ln13_56_fu_1467_p2;
wire   [31:0] add_ln13_58_fu_1473_p2;
wire   [12:0] tmp_10_fu_1483_p6;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [14:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 c_fu_112 = 6'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_516_p0),.din1(grp_fu_516_p1),.ce(1'b1),.dout(grp_fu_516_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_520_p0),.din1(grp_fu_520_p1),.ce(1'b1),.dout(grp_fu_520_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_524_p0),.din1(grp_fu_524_p1),.ce(1'b1),.dout(grp_fu_524_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_528_p0),.din1(grp_fu_528_p1),.ce(1'b1),.dout(grp_fu_528_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_532_p0),.din1(grp_fu_532_p1),.ce(1'b1),.dout(grp_fu_532_p2));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage14),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage4) | ((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_condition_exit_pp0_iter1_stage4) & (ap_idle_pp0_0to0 == 1'b1)) | ((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_fu_112 <= 6'd0;
    end else if (((icmp_ln8_reg_1853 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        c_fu_112 <= add_ln8_fu_1279_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        reg_536 <= orig_q0;
    end else if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_536 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_545 <= orig_q1;
    end else if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_545 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_561 <= orig_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_561 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        reg_594 <= orig_q1;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_594 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln12_11_reg_1897 <= add_ln12_11_fu_1081_p2;
        add_ln13_32_reg_1877 <= add_ln13_32_fu_1054_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln12_5_reg_1843 <= add_ln12_5_fu_1001_p2;
        add_ln13_24_reg_1848 <= add_ln13_24_fu_1006_p2;
        empty_reg_1837 <= empty_fu_996_p2;
        icmp_ln8_reg_1853 <= icmp_ln8_fu_1019_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln13_13_reg_1775 <= add_ln13_13_fu_921_p2;
        or_ln12_10_reg_1780[12 : 3] <= or_ln12_10_fu_927_p4[12 : 3];
        or_ln12_11_reg_1790[12 : 3] <= or_ln12_11_fu_940_p4[12 : 3];
        zext_ln12_23_reg_1795[12 : 3] <= zext_ln12_23_fu_948_p1[12 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln13_14_reg_1805 <= add_ln13_14_fu_959_p2;
        add_ln13_25_reg_1810 <= add_ln13_25_fu_964_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln13_17_reg_1745 <= add_ln13_17_fu_883_p2;
        add_ln13_5_reg_1740 <= add_ln13_5_fu_877_p2;
        or_ln12_9_reg_1750[12 : 3] <= or_ln12_9_fu_889_p4[12 : 3];
        or_ln12_s_reg_1765[12 : 3] <= or_ln12_s_fu_902_p4[12 : 3];
        zext_ln12_19_reg_1755[12 : 3] <= zext_ln12_19_fu_897_p1[12 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln13_21_reg_2007 <= add_ln13_21_fu_1208_p2;
        add_ln13_48_reg_2012 <= add_ln13_48_fu_1214_p2;
        zext_ln12_1_reg_1987[12 : 1] <= zext_ln12_1_fu_1193_p1[12 : 1];
        zext_ln12_2_reg_1997[12 : 2] <= zext_ln12_2_fu_1198_p1[12 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add_ln13_22_reg_2022 <= add_ln13_22_fu_1237_p2;
        add_ln13_29_reg_2027 <= add_ln13_29_fu_1248_p2;
        add_ln13_38_reg_2032 <= add_ln13_38_fu_1259_p2;
        add_ln13_61_reg_2042 <= add_ln13_61_fu_1274_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_30_reg_2057 <= add_ln13_30_fu_1312_p2;
        add_ln13_62_reg_2062 <= add_ln13_62_fu_1321_p2;
        add_ln13_6_reg_2047 <= add_ln13_6_fu_1295_p2;
        add_ln13_9_reg_2052 <= add_ln13_9_fu_1300_p2;
        c_1_reg_1615 <= ap_sig_allocacmp_c_1;
        tmp_6_reg_1622 <= {{ap_sig_allocacmp_c_1[5:1]}};
        tmp_7_reg_1628 <= {{ap_sig_allocacmp_c_1[5:2]}};
        tmp_9_reg_1650 <= {{ap_sig_allocacmp_c_1[5:3]}};
        tmp_9_reg_1650_pp0_iter1_reg <= tmp_9_reg_1650;
        tmp_reg_1664 <= ap_sig_allocacmp_c_1[32'd1];
        tmp_reg_1664_pp0_iter1_reg <= tmp_reg_1664;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln13_37_reg_1907 <= add_ln13_37_fu_1095_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln13_40_reg_1967 <= add_ln13_40_fu_1153_p2;
        add_ln13_46_reg_1972 <= add_ln13_46_fu_1159_p2;
        add_ln13_53_reg_1982 <= add_ln13_53_fu_1179_p2;
        zext_ln12_reg_1957[12 : 0] <= zext_ln12_fu_1148_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln13_45_reg_1942 <= add_ln13_45_fu_1137_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_54_reg_2077 <= add_ln13_54_fu_1357_p2;
        add_ln13_57_reg_2082 <= add_ln13_57_fu_1362_p2;
        or_ln12_6_reg_1674[12 : 2] <= or_ln12_6_fu_753_p4[12 : 2];
        temp_3_reg_2067 <= temp_3_fu_1330_p2;
        temp_4_reg_2072 <= temp_4_fu_1346_p2;
        zext_ln12_9_reg_1679[12 : 2] <= zext_ln12_9_fu_761_p1[12 : 2];
        zext_ln12_9_reg_1679_pp0_iter1_reg[12 : 2] <= zext_ln12_9_reg_1679[12 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln13_reg_2087 <= add_ln13_fu_1368_p2;
        temp_1_reg_2092 <= temp_1_fu_1385_p2;
        temp_2_reg_2097 <= temp_2_fu_1401_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul_ln13_39_reg_1872 <= grp_fu_516_p2;
        mul_ln13_45_reg_1882 <= grp_fu_520_p2;
        orig_load_27_reg_1887 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln13_42_reg_1815 <= grp_fu_532_p2;
        orig_load_21_reg_1820 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul_ln13_62_reg_1912 <= grp_fu_528_p2;
        mul_ln13_68_reg_1927 <= grp_fu_532_p2;
        orig_load_28_reg_1917 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul_ln13_63_reg_1947 <= grp_fu_528_p2;
        mul_ln13_71_reg_1952 <= grp_fu_532_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        or_ln12_1_reg_1699[12 : 2] <= or_ln12_1_fu_792_p4[12 : 2];
        or_ln8_1_cast_reg_1704[5 : 2] <= or_ln8_1_cast_fu_807_p1[5 : 2];
        temp_5_reg_2107 <= temp_5_fu_1446_p2;
        temp_6_reg_2112 <= temp_6_fu_1462_p2;
        temp_7_reg_2117 <= temp_7_fu_1478_p2;
        temp_reg_2102 <= temp_fu_1430_p2;
        tmp_8_reg_1714[12 : 6] <= tmp_8_fu_822_p3[12 : 6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        or_ln8_2_cast_reg_1725[5 : 2] <= or_ln8_2_cast_fu_847_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_554 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_570 <= grp_fu_516_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_574 <= grp_fu_520_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_578 <= grp_fu_524_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_582 <= grp_fu_516_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_586 <= grp_fu_520_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_590 <= grp_fu_524_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_604 <= grp_fu_528_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_608 <= grp_fu_532_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_612 <= grp_fu_524_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_616 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_624 <= grp_fu_524_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_628 <= grp_fu_528_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_632 <= grp_fu_532_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_636 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_644 <= grp_fu_516_p2;
        reg_648 <= grp_fu_520_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_652 <= grp_fu_528_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_656 <= grp_fu_532_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_1853 == 1'd1) & (1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_condition_exit_pp0_iter0_stage14 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage14 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_1853 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter1_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_c_1 = 6'd0;
    end else begin
        ap_sig_allocacmp_c_1 = c_fu_112;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_516_p0 = reg_616;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_516_p0 = reg_594;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_516_p0 = reg_545;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_516_p0 = reg_561;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_516_p0 = reg_554;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_516_p0 = reg_536;
    end else begin
        grp_fu_516_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_516_p1 = filter_load_3;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_516_p1 = filter_load;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_516_p1 = filter_load_2;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_516_p1 = filter_load_5;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_516_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_516_p1 = filter_load_6;
    end else begin
        grp_fu_516_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_520_p0 = orig_load_21_reg_1820;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_520_p0 = reg_636;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_520_p0 = reg_616;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_520_p0 = reg_594;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_520_p0 = reg_561;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_520_p0 = reg_545;
    end else begin
        grp_fu_520_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_520_p1 = filter_load_1;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_520_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_520_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_520_p1 = filter_load_3;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_520_p1 = filter_load_5;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_520_p1 = filter_load_8;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_520_p1 = filter_load_2;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_520_p1 = filter_load_7;
    end else begin
        grp_fu_520_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_524_p0 = reg_594;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_524_p0 = reg_616;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_524_p0 = reg_636;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_524_p0 = orig_load_21_reg_1820;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_524_p0 = reg_536;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_524_p0 = reg_554;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_524_p0 = reg_545;
    end else begin
        grp_fu_524_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_524_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_524_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_524_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_524_p1 = filter_load;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_524_p1 = filter_load_3;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_524_p1 = filter_load_1;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_524_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_524_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_524_p1 = filter_load_6;
    end else begin
        grp_fu_524_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_528_p0 = reg_636;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_528_p0 = orig_load_27_reg_1887;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_528_p0 = reg_536;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_528_p0 = reg_594;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_528_p0 = reg_545;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_528_p0 = reg_561;
    end else begin
        grp_fu_528_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_528_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_528_p1 = filter_load_8;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_528_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_528_p1 = filter_load_2;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_528_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_528_p1 = filter_load_6;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_528_p1 = filter_load_7;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_528_p1 = filter_load_1;
    end else begin
        grp_fu_528_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_532_p0 = orig_load_21_reg_1820;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_532_p0 = orig_load_28_reg_1917;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_532_p0 = reg_536;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_532_p0 = reg_636;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_532_p0 = reg_616;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_532_p0 = reg_594;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_532_p0 = reg_561;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_532_p0 = reg_554;
    end else begin
        grp_fu_532_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        grp_fu_532_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_532_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_532_p1 = filter_load_7;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_532_p1 = filter_load_4;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_532_p1 = filter_load;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_532_p1 = filter_load_6;
    end else begin
        grp_fu_532_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            orig_address0_local = zext_ln12_26_fu_1269_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            orig_address0_local = zext_ln12_2_fu_1198_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            orig_address0_local = zext_ln12_27_fu_1169_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            orig_address0_local = zext_ln12_5_fu_1126_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            orig_address0_local = zext_ln12_31_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_address0_local = zext_ln12_30_fu_1076_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_address0_local = zext_ln12_29_fu_1040_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_address0_local = zext_ln12_25_fu_991_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_address0_local = zext_ln12_23_fu_948_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_address0_local = zext_ln12_20_fu_910_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_address0_local = zext_ln12_16_fu_866_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_address0_local = zext_ln12_13_fu_835_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_address0_local = zext_ln12_11_fu_787_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_address0_local = zext_ln12_9_fu_761_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_address0_local = zext_ln12_7_fu_717_p1;
        end else begin
            orig_address0_local = 'bx;
        end
    end else begin
        orig_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            orig_address1_local = zext_ln12_3_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            orig_address1_local = zext_ln12_1_fu_1193_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            orig_address1_local = zext_ln12_fu_1148_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            orig_address1_local = zext_ln12_4_fu_1113_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            orig_address1_local = zext_ln12_17_fu_1086_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_address1_local = zext_ln12_14_fu_1049_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_address1_local = zext_ln12_28_fu_1030_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_address1_local = zext_ln12_24_fu_978_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_address1_local = zext_ln12_21_fu_935_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_address1_local = zext_ln12_19_fu_897_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_address1_local = zext_ln12_15_fu_856_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_address1_local = zext_ln12_12_fu_817_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_address1_local = zext_ln12_10_fu_774_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_address1_local = zext_ln12_8_fu_748_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_address1_local = zext_ln12_6_fu_702_p1;
        end else begin
            orig_address1_local = 'bx;
        end
    end else begin
        orig_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage13_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_ce0_local = 1'b1;
    end else begin
        orig_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage13_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_ce1_local = 1'b1;
    end else begin
        orig_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_address0_local = zext_ln12_23_reg_1795;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_address0_local = zext_ln12_22_fu_1494_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_address0_local = zext_ln12_2_reg_1997;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_address0_local = zext_ln12_18_fu_1414_p1;
        end else begin
            sol_address0_local = 'bx;
        end
    end else begin
        sol_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_address1_local = zext_ln12_19_reg_1755;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_address1_local = zext_ln12_reg_1957;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_address1_local = zext_ln12_1_reg_1987;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_address1_local = zext_ln12_9_reg_1679_pp0_iter1_reg;
        end else begin
            sol_address1_local = 'bx;
        end
    end else begin
        sol_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_ce0_local = 1'b1;
    end else begin
        sol_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_ce1_local = 1'b1;
    end else begin
        sol_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_d0_local = temp_7_reg_2117;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_d0_local = temp_5_reg_2107;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_d0_local = temp_2_reg_2097;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_d0_local = temp_4_reg_2072;
        end else begin
            sol_d0_local = 'bx;
        end
    end else begin
        sol_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_d1_local = temp_6_reg_2112;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_d1_local = temp_reg_2102;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_d1_local = temp_1_reg_2092;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_d1_local = temp_3_reg_2067;
        end else begin
            sol_d1_local = 'bx;
        end
    end else begin
        sol_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_1853 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_we0_local = 1'b1;
    end else begin
        sol_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_1853 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_we1_local = 1'b1;
    end else begin
        sol_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage4) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln12_10_fu_1071_p2 = (or_ln8_6_cast_fu_1067_p1 + tmp_8_reg_1714);
assign add_ln12_11_fu_1081_p2 = (or_ln8_6_cast_fu_1067_p1 + empty_reg_1837);
assign add_ln12_1_fu_829_p2 = (or_ln8_1_cast_fu_807_p1 + tmp_8_fu_822_p3);
assign add_ln12_2_fu_1045_p2 = (or_ln8_1_cast_reg_1704 + empty_reg_1837);
assign add_ln12_3_fu_851_p2 = (or_ln12_6_reg_1674 + 13'd2);
assign add_ln12_4_fu_861_p2 = (or_ln8_2_cast_fu_847_p1 + tmp_8_reg_1714);
assign add_ln12_5_fu_1001_p2 = (or_ln8_2_cast_reg_1725 + empty_fu_996_p2);
assign add_ln12_6_fu_1264_p2 = (or_ln12_9_reg_1750 + 13'd2);
assign add_ln12_7_fu_1164_p2 = (or_ln12_s_reg_1765 + 13'd2);
assign add_ln12_8_fu_1025_p2 = (or_ln12_10_reg_1780 + 13'd2);
assign add_ln12_9_fu_1035_p2 = (or_ln12_11_reg_1790 + 13'd2);
assign add_ln12_fu_811_p2 = (or_ln12_1_fu_792_p4 + 13'd2);
assign add_ln13_10_fu_1380_p2 = (add_ln13_9_reg_2052 + add_ln13_8_fu_1374_p2);
assign add_ln13_11_fu_953_p2 = (reg_578 + reg_590);
assign add_ln13_12_fu_915_p2 = (reg_570 + reg_574);
assign add_ln13_13_fu_921_p2 = (add_ln13_12_fu_915_p2 + reg_586);
assign add_ln13_14_fu_959_p2 = (add_ln13_13_reg_1775 + add_ln13_11_fu_953_p2);
assign add_ln13_16_fu_1390_p2 = (reg_608 + reg_632);
assign add_ln13_17_fu_883_p2 = (reg_608 + reg_604);
assign add_ln13_18_fu_1396_p2 = (add_ln13_17_reg_1745 + add_ln13_16_fu_1390_p2);
assign add_ln13_19_fu_1231_p2 = (reg_612 + reg_604);
assign add_ln13_1_fu_1419_p2 = (reg_582 + reg_570);
assign add_ln13_20_fu_1202_p2 = (reg_574 + reg_644);
assign add_ln13_21_fu_1208_p2 = (add_ln13_20_fu_1202_p2 + reg_570);
assign add_ln13_22_fu_1237_p2 = (add_ln13_21_reg_2007 + add_ln13_19_fu_1231_p2);
assign add_ln13_24_fu_1006_p2 = (reg_578 + reg_608);
assign add_ln13_25_fu_964_p2 = (reg_628 + reg_624);
assign add_ln13_26_fu_1326_p2 = (add_ln13_25_reg_1810 + add_ln13_24_reg_1848);
assign add_ln13_27_fu_1306_p2 = (reg_632 + reg_648);
assign add_ln13_28_fu_1242_p2 = (reg_586 + reg_570);
assign add_ln13_29_fu_1248_p2 = (add_ln13_28_fu_1242_p2 + reg_582);
assign add_ln13_2_fu_1425_p2 = (add_ln13_1_fu_1419_p2 + add_ln13_reg_2087);
assign add_ln13_30_fu_1312_p2 = (add_ln13_29_reg_2027 + add_ln13_27_fu_1306_p2);
assign add_ln13_32_fu_1054_p2 = (reg_652 + reg_578);
assign add_ln13_33_fu_1335_p2 = (reg_574 + reg_628);
assign add_ln13_34_fu_1341_p2 = (add_ln13_33_fu_1335_p2 + add_ln13_32_reg_1877);
assign add_ln13_35_fu_1254_p2 = (mul_ln13_42_reg_1815 + reg_574);
assign add_ln13_36_fu_1090_p2 = (reg_648 + mul_ln13_39_reg_1872);
assign add_ln13_37_fu_1095_p2 = (add_ln13_36_fu_1090_p2 + reg_644);
assign add_ln13_38_fu_1259_p2 = (add_ln13_37_reg_1907 + add_ln13_35_fu_1254_p2);
assign add_ln13_3_fu_1289_p2 = (reg_574 + reg_570);
assign add_ln13_40_fu_1153_p2 = (reg_648 + reg_644);
assign add_ln13_41_fu_1435_p2 = (reg_574 + reg_578);
assign add_ln13_42_fu_1441_p2 = (add_ln13_41_fu_1435_p2 + add_ln13_40_reg_1967);
assign add_ln13_44_fu_1131_p2 = (reg_644 + reg_648);
assign add_ln13_45_fu_1137_p2 = (add_ln13_44_fu_1131_p2 + mul_ln13_45_reg_1882);
assign add_ln13_46_fu_1159_p2 = (add_ln13_45_reg_1942 + grp_fu_660_p2);
assign add_ln13_48_fu_1214_p2 = (reg_624 + reg_652);
assign add_ln13_49_fu_1451_p2 = (reg_590 + reg_624);
assign add_ln13_4_fu_871_p2 = (reg_574 + reg_582);
assign add_ln13_50_fu_1457_p2 = (add_ln13_49_fu_1451_p2 + add_ln13_48_reg_2012);
assign add_ln13_51_fu_1351_p2 = (reg_590 + reg_612);
assign add_ln13_52_fu_1174_p2 = (mul_ln13_62_reg_1912 + reg_624);
assign add_ln13_53_fu_1179_p2 = (add_ln13_52_fu_1174_p2 + reg_656);
assign add_ln13_54_fu_1357_p2 = (add_ln13_53_reg_1982 + add_ln13_51_fu_1351_p2);
assign add_ln13_56_fu_1467_p2 = (reg_604 + reg_656);
assign add_ln13_57_fu_1362_p2 = (reg_632 + reg_604);
assign add_ln13_58_fu_1473_p2 = (add_ln13_57_reg_2082 + add_ln13_56_fu_1467_p2);
assign add_ln13_59_fu_1317_p2 = (mul_ln13_68_reg_1927 + mul_ln13_71_reg_1952);
assign add_ln13_5_fu_877_p2 = (add_ln13_4_fu_871_p2 + reg_570);
assign add_ln13_61_fu_1274_p2 = (grp_fu_660_p2 + mul_ln13_63_reg_1947);
assign add_ln13_62_fu_1321_p2 = (add_ln13_61_reg_2042 + add_ln13_59_fu_1317_p2);
assign add_ln13_6_fu_1295_p2 = (add_ln13_5_reg_1740 + add_ln13_3_fu_1289_p2);
assign add_ln13_8_fu_1374_p2 = (reg_590 + reg_604);
assign add_ln13_9_fu_1300_p2 = (reg_604 + reg_612);
assign add_ln13_fu_1368_p2 = (reg_574 + reg_570);
assign add_ln8_fu_1279_p2 = (c_1_reg_1615 + 6'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage14;
assign ap_ready = ap_ready_sig;
assign empty_fu_996_p2 = (tmp_5 + 13'd130);
assign grp_fu_660_p2 = (reg_608 + reg_652);
assign icmp_ln8_fu_1019_p2 = ((or_ln8_2_fu_1012_p3 == 6'd62) ? 1'b1 : 1'b0);
assign or_ln12_10_fu_927_p4 = {{{tmp_3}, {tmp_9_reg_1650}}, {3'd6}};
assign or_ln12_11_fu_940_p4 = {{{r}, {tmp_9_reg_1650}}, {3'd7}};
assign or_ln12_12_fu_970_p4 = {{{indvars_iv_next173}, {tmp_9_reg_1650}}, {3'd7}};
assign or_ln12_13_fu_983_p4 = {{{tmp_3}, {tmp_9_reg_1650}}, {3'd7}};
assign or_ln12_1_fu_792_p4 = {{{r}, {tmp_7_reg_1628}}, {2'd2}};
assign or_ln12_2_fu_1105_p4 = {{{indvars_iv_next173}, {tmp_6_reg_1622}}, {1'd1}};
assign or_ln12_3_fu_1118_p4 = {{{indvars_iv_next173}, {tmp_7_reg_1628}}, {2'd2}};
assign or_ln12_4_fu_707_p4 = {{{tmp_3}, {tmp_6_fu_674_p4}}, {1'd1}};
assign or_ln12_5_fu_740_p4 = {{{tmp_3}, {tmp_7_reg_1628}}, {2'd2}};
assign or_ln12_6_fu_753_p4 = {{{r}, {tmp_7_reg_1628}}, {2'd3}};
assign or_ln12_7_fu_766_p4 = {{{indvars_iv_next173}, {tmp_7_reg_1628}}, {2'd3}};
assign or_ln12_8_fu_779_p4 = {{{tmp_3}, {tmp_7_reg_1628}}, {2'd3}};
assign or_ln12_9_fu_889_p4 = {{{r}, {tmp_9_reg_1650}}, {3'd6}};
assign or_ln12_s_fu_902_p4 = {{{indvars_iv_next173}, {tmp_9_reg_1650}}, {3'd6}};
assign or_ln8_1_cast_fu_807_p1 = or_ln8_fu_800_p3;
assign or_ln8_1_fu_840_p3 = {{tmp_7_reg_1628}, {2'd3}};
assign or_ln8_2_cast_fu_847_p1 = or_ln8_1_fu_840_p3;
assign or_ln8_2_fu_1012_p3 = {{tmp_9_reg_1650}, {3'd6}};
assign or_ln8_3_fu_1060_p3 = {{tmp_9_reg_1650}, {3'd7}};
assign or_ln8_6_cast_fu_1067_p1 = or_ln8_3_fu_1060_p3;
assign or_ln8_fu_800_p3 = {{tmp_7_reg_1628}, {2'd2}};
assign or_ln_fu_1185_p4 = {{{r}, {tmp_6_reg_1622}}, {1'd1}};
assign orig_address0 = orig_address0_local;
assign orig_address1 = orig_address1_local;
assign orig_ce0 = orig_ce0_local;
assign orig_ce1 = orig_ce1_local;
assign sol_address0 = sol_address0_local;
assign sol_address1 = sol_address1_local;
assign sol_ce0 = sol_ce0_local;
assign sol_ce1 = sol_ce1_local;
assign sol_d0 = sol_d0_local;
assign sol_d1 = sol_d1_local;
assign sol_we0 = sol_we0_local;
assign sol_we1 = sol_we1_local;
assign temp_1_fu_1385_p2 = (add_ln13_14_reg_1805 + add_ln13_10_fu_1380_p2);
assign temp_2_fu_1401_p2 = (add_ln13_22_reg_2022 + add_ln13_18_fu_1396_p2);
assign temp_3_fu_1330_p2 = (add_ln13_30_reg_2057 + add_ln13_26_fu_1326_p2);
assign temp_4_fu_1346_p2 = (add_ln13_38_reg_2032 + add_ln13_34_fu_1341_p2);
assign temp_5_fu_1446_p2 = (add_ln13_46_reg_1972 + add_ln13_42_fu_1441_p2);
assign temp_6_fu_1462_p2 = (add_ln13_54_reg_2077 + add_ln13_50_fu_1457_p2);
assign temp_7_fu_1478_p2 = (add_ln13_62_reg_2062 + add_ln13_58_fu_1473_p2);
assign temp_fu_1430_p2 = (add_ln13_6_reg_2047 + add_ln13_2_fu_1425_p2);
assign tmp_10_fu_1483_p6 = {{{{{r}, {tmp_9_reg_1650_pp0_iter1_reg}}, {1'd1}}, {tmp_reg_1664_pp0_iter1_reg}}, {1'd1}};
assign tmp_1_fu_1142_p3 = {{r}, {c_1_reg_1615}};
assign tmp_2_fu_1220_p3 = {{indvars_iv_next173}, {c_1_reg_1615}};
assign tmp_4_fu_694_p3 = {{tmp_3}, {ap_sig_allocacmp_c_1}};
assign tmp_6_fu_674_p4 = {{ap_sig_allocacmp_c_1[5:1]}};
assign tmp_8_fu_822_p3 = {{indvars_iv_next173}, {6'd2}};
assign tmp_s_fu_1406_p4 = {{{r}, {tmp_9_reg_1650_pp0_iter1_reg}}, {3'd4}};
assign zext_ln12_10_fu_774_p1 = or_ln12_7_fu_766_p4;
assign zext_ln12_11_fu_787_p1 = or_ln12_8_fu_779_p4;
assign zext_ln12_12_fu_817_p1 = add_ln12_fu_811_p2;
assign zext_ln12_13_fu_835_p1 = add_ln12_1_fu_829_p2;
assign zext_ln12_14_fu_1049_p1 = add_ln12_2_fu_1045_p2;
assign zext_ln12_15_fu_856_p1 = add_ln12_3_fu_851_p2;
assign zext_ln12_16_fu_866_p1 = add_ln12_4_fu_861_p2;
assign zext_ln12_17_fu_1086_p1 = add_ln12_5_reg_1843;
assign zext_ln12_18_fu_1414_p1 = tmp_s_fu_1406_p4;
assign zext_ln12_19_fu_897_p1 = or_ln12_9_fu_889_p4;
assign zext_ln12_1_fu_1193_p1 = or_ln_fu_1185_p4;
assign zext_ln12_20_fu_910_p1 = or_ln12_s_fu_902_p4;
assign zext_ln12_21_fu_935_p1 = or_ln12_10_fu_927_p4;
assign zext_ln12_22_fu_1494_p1 = tmp_10_fu_1483_p6;
assign zext_ln12_23_fu_948_p1 = or_ln12_11_fu_940_p4;
assign zext_ln12_24_fu_978_p1 = or_ln12_12_fu_970_p4;
assign zext_ln12_25_fu_991_p1 = or_ln12_13_fu_983_p4;
assign zext_ln12_26_fu_1269_p1 = add_ln12_6_fu_1264_p2;
assign zext_ln12_27_fu_1169_p1 = add_ln12_7_fu_1164_p2;
assign zext_ln12_28_fu_1030_p1 = add_ln12_8_fu_1025_p2;
assign zext_ln12_29_fu_1040_p1 = add_ln12_9_fu_1035_p2;
assign zext_ln12_2_fu_1198_p1 = or_ln12_1_reg_1699;
assign zext_ln12_30_fu_1076_p1 = add_ln12_10_fu_1071_p2;
assign zext_ln12_31_fu_1101_p1 = add_ln12_11_reg_1897;
assign zext_ln12_3_fu_1226_p1 = tmp_2_fu_1220_p3;
assign zext_ln12_4_fu_1113_p1 = or_ln12_2_fu_1105_p4;
assign zext_ln12_5_fu_1126_p1 = or_ln12_3_fu_1118_p4;
assign zext_ln12_6_fu_702_p1 = tmp_4_fu_694_p3;
assign zext_ln12_7_fu_717_p1 = or_ln12_4_fu_707_p4;
assign zext_ln12_8_fu_748_p1 = or_ln12_5_fu_740_p4;
assign zext_ln12_9_fu_761_p1 = or_ln12_6_fu_753_p4;
assign zext_ln12_fu_1148_p1 = tmp_1_fu_1142_p3;
always @ (posedge ap_clk) begin
    or_ln12_6_reg_1674[1:0] <= 2'b11;
    zext_ln12_9_reg_1679[1:0] <= 2'b11;
    zext_ln12_9_reg_1679[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln12_9_reg_1679_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln12_9_reg_1679_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    or_ln12_1_reg_1699[1:0] <= 2'b10;
    or_ln8_1_cast_reg_1704[1:0] <= 2'b10;
    or_ln8_1_cast_reg_1704[12:6] <= 7'b0000000;
    tmp_8_reg_1714[5:0] <= 6'b000010;
    or_ln8_2_cast_reg_1725[1:0] <= 2'b11;
    or_ln8_2_cast_reg_1725[12:6] <= 7'b0000000;
    or_ln12_9_reg_1750[2:0] <= 3'b110;
    zext_ln12_19_reg_1755[2:0] <= 3'b110;
    zext_ln12_19_reg_1755[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    or_ln12_s_reg_1765[2:0] <= 3'b110;
    or_ln12_10_reg_1780[2:0] <= 3'b110;
    or_ln12_11_reg_1790[2:0] <= 3'b111;
    zext_ln12_23_reg_1795[2:0] <= 3'b111;
    zext_ln12_23_reg_1795[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1957[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_1987[0] <= 1'b1;
    zext_ln12_1_reg_1987[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln12_2_reg_1997[1:0] <= 2'b10;
    zext_ln12_2_reg_1997[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 