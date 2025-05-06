
module stencil3d_stencil3d_Pipeline_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_0_address1,sol_0_ce1,sol_0_we1,sol_0_d1,i,j,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,empty_5,empty,indvars_iv_next356,tmp2,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,C_load,C_load_1);  
parameter    ap_ST_fsm_pp0_stage0 = 11'd1;
parameter    ap_ST_fsm_pp0_stage1 = 11'd2;
parameter    ap_ST_fsm_pp0_stage2 = 11'd4;
parameter    ap_ST_fsm_pp0_stage3 = 11'd8;
parameter    ap_ST_fsm_pp0_stage4 = 11'd16;
parameter    ap_ST_fsm_pp0_stage5 = 11'd32;
parameter    ap_ST_fsm_pp0_stage6 = 11'd64;
parameter    ap_ST_fsm_pp0_stage7 = 11'd128;
parameter    ap_ST_fsm_pp0_stage8 = 11'd256;
parameter    ap_ST_fsm_pp0_stage9 = 11'd512;
parameter    ap_ST_fsm_pp0_stage10 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [12:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [12:0] sol_0_address1;
output   sol_0_ce1;
output   sol_0_we1;
output  [31:0] sol_0_d1;
input  [4:0] i;
input  [4:0] j;
output  [12:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [12:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
input  [9:0] empty_5;
input  [9:0] empty;
input  [4:0] indvars_iv_next356;
input  [4:0] tmp2;
output  [12:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [12:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
input  [31:0] C_load;
input  [31:0] C_load_1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] icmp_ln38_reg_1871;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg  signed [31:0] reg_578;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage10_11001;
reg   [31:0] reg_584;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [31:0] reg_590;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg  signed [31:0] reg_596;
reg   [31:0] reg_602;
wire   [31:0] grp_fu_570_p2;
reg   [31:0] reg_607;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_611;
reg   [31:0] reg_615;
wire   [31:0] grp_fu_574_p2;
reg   [31:0] reg_620;
reg   [31:0] reg_624;
reg   [31:0] reg_629;
reg   [3:0] k_1_reg_1637;
wire   [2:0] lshr_ln_fu_641_p4;
reg   [2:0] lshr_ln_reg_1647;
wire   [63:0] zext_ln39_1_fu_661_p1;
reg   [63:0] zext_ln39_1_reg_1658;
wire   [2:0] lshr_ln1_fu_672_p4;
reg   [2:0] lshr_ln1_reg_1669;
wire   [2:0] add_ln44_2_fu_712_p2;
reg   [2:0] add_ln44_2_reg_1686;
wire   [63:0] zext_ln44_1_fu_728_p1;
reg   [63:0] zext_ln44_1_reg_1694;
reg   [63:0] zext_ln44_1_reg_1694_pp0_iter1_reg;
wire   [2:0] add_ln44_6_fu_767_p2;
reg   [2:0] add_ln44_6_reg_1719;
wire   [63:0] zext_ln44_3_fu_780_p1;
reg   [63:0] zext_ln44_3_reg_1727;
reg   [63:0] zext_ln44_3_reg_1727_pp0_iter1_reg;
wire   [31:0] add_ln48_6_fu_796_p2;
reg   [31:0] add_ln48_6_reg_1742;
wire   [31:0] add_ln48_9_fu_808_p2;
reg   [31:0] add_ln48_9_reg_1747;
wire   [2:0] lshr_ln44_1_fu_819_p4;
reg   [2:0] lshr_ln44_1_reg_1752;
reg  signed [31:0] sum0_4_reg_1769;
wire   [2:0] add_ln44_10_fu_855_p2;
reg   [2:0] add_ln44_10_reg_1776;
wire   [63:0] zext_ln44_5_fu_868_p1;
reg   [63:0] zext_ln44_5_reg_1784;
reg   [63:0] zext_ln44_5_reg_1784_pp0_iter1_reg;
wire   [63:0] zext_ln44_fu_903_p1;
reg   [63:0] zext_ln44_reg_1804;
wire  signed [31:0] add_ln48_10_fu_913_p2;
reg  signed [31:0] add_ln48_10_reg_1819;
reg   [31:0] mul_ln48_4_reg_1824;
reg  signed [31:0] sum0_6_reg_1829;
wire   [31:0] add_ln48_fu_918_p2;
reg   [31:0] add_ln48_reg_1836;
wire   [31:0] add_ln48_21_fu_975_p2;
reg   [31:0] add_ln48_21_reg_1861;
reg   [31:0] mul_ln48_8_reg_1866;
wire   [0:0] icmp_ln38_fu_981_p2;
reg   [0:0] icmp_ln38_reg_1871_pp0_iter1_reg;
wire   [31:0] add_ln48_3_fu_992_p2;
reg   [31:0] add_ln48_3_reg_1875;
wire   [31:0] add_ln48_18_fu_998_p2;
reg   [31:0] add_ln48_18_reg_1880;
wire   [2:0] lshr_ln44_2_fu_1033_p4;
reg   [2:0] lshr_ln44_2_reg_1895;
reg   [31:0] mul_ln48_12_reg_1912;
wire  signed [31:0] add_ln48_4_fu_1074_p2;
reg  signed [31:0] add_ln48_4_reg_1917;
reg   [31:0] mul_ln48_2_reg_1922;
wire   [63:0] zext_ln44_2_fu_1086_p1;
reg   [63:0] zext_ln44_2_reg_1927;
wire  signed [31:0] add_ln48_22_fu_1096_p2;
reg  signed [31:0] add_ln48_22_reg_1937;
reg   [31:0] orig_1_load_14_reg_1942;
wire   [63:0] zext_ln44_4_fu_1108_p1;
reg   [63:0] zext_ln44_4_reg_1947;
wire   [31:0] add_ln48_33_fu_1181_p2;
reg   [31:0] add_ln48_33_reg_1982;
reg   [31:0] orig_1_load_17_reg_1987;
reg   [31:0] orig_1_load_18_reg_1992;
wire   [31:0] add_ln48_15_fu_1226_p2;
reg   [31:0] add_ln48_15_reg_2007;
wire   [31:0] add_ln48_27_fu_1248_p2;
reg   [31:0] add_ln48_27_reg_2017;
wire   [31:0] add_ln48_30_fu_1254_p2;
reg   [31:0] add_ln48_30_reg_2022;
wire   [2:0] lshr_ln44_3_fu_1264_p4;
reg   [2:0] lshr_ln44_3_reg_2027;
wire   [63:0] zext_ln44_6_fu_1282_p1;
reg   [63:0] zext_ln44_6_reg_2034;
wire   [31:0] add_ln48_12_fu_1336_p2;
reg   [31:0] add_ln48_12_reg_2049;
wire  signed [31:0] add_ln48_34_fu_1358_p2;
reg  signed [31:0] add_ln48_34_reg_2059;
wire  signed [31:0] add_ln48_16_fu_1402_p2;
reg  signed [31:0] add_ln48_16_reg_2079;
wire   [31:0] add_ln48_24_fu_1414_p2;
reg   [31:0] add_ln48_24_reg_2084;
wire   [31:0] add_ln48_39_fu_1436_p2;
reg   [31:0] add_ln48_39_reg_2094;
reg   [31:0] orig_0_load_18_reg_2104;
wire  signed [31:0] add_ln48_28_fu_1457_p2;
reg  signed [31:0] add_ln48_28_reg_2109;
wire   [31:0] add_ln48_36_fu_1462_p2;
reg   [31:0] add_ln48_36_reg_2114;
wire   [31:0] add_ln48_42_fu_1468_p2;
reg   [31:0] add_ln48_42_reg_2119;
wire   [31:0] add_ln48_45_fu_1478_p2;
reg   [31:0] add_ln48_45_reg_2124;
wire  signed [31:0] add_ln48_40_fu_1496_p2;
reg  signed [31:0] add_ln48_40_reg_2129;
wire  signed [31:0] add_ln48_46_fu_1506_p2;
reg  signed [31:0] add_ln48_46_reg_2134;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
reg    ap_condition_exit_pp0_iter1_stage3;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln42_1_fu_692_p1;
wire   [63:0] zext_ln43_1_fu_707_p1;
wire   [63:0] zext_ln43_fu_740_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln40_1_fu_751_p1;
wire   [63:0] zext_ln41_1_fu_762_p1;
wire   [63:0] zext_ln40_fu_791_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln42_3_fu_837_p1;
wire   [63:0] zext_ln43_3_fu_850_p1;
wire   [63:0] zext_ln41_fu_879_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln42_fu_891_p1;
wire   [63:0] zext_ln42_2_fu_931_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln43_2_fu_943_p1;
wire   [63:0] zext_ln40_3_fu_954_p1;
wire   [63:0] zext_ln41_3_fu_965_p1;
wire   [63:0] zext_ln42_4_fu_1011_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln43_4_fu_1023_p1;
wire   [63:0] zext_ln42_5_fu_1051_p1;
wire   [63:0] zext_ln43_5_fu_1064_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln42_6_fu_1120_p1;
wire   [63:0] zext_ln43_6_fu_1132_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln40_2_fu_1149_p1;
wire   [63:0] zext_ln40_5_fu_1160_p1;
wire   [63:0] zext_ln41_5_fu_1171_p1;
wire   [63:0] zext_ln44_7_fu_1204_p1;
wire   [63:0] zext_ln41_2_fu_1215_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln40_4_fu_1238_p1;
wire   [63:0] zext_ln42_7_fu_1295_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln41_4_fu_1348_p1;
wire   [63:0] zext_ln40_6_fu_1369_p1;
wire   [63:0] zext_ln40_7_fu_1380_p1;
wire   [63:0] zext_ln43_7_fu_1392_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln41_6_fu_1426_p1;
wire   [63:0] zext_ln41_7_fu_1447_p1;
reg   [3:0] k_fu_86;
wire   [3:0] xor_ln_fu_1316_p3;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_1;
reg    orig_1_ce1_local;
reg   [12:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [12:0] orig_1_address0_local;
reg    orig_0_ce1_local;
reg   [12:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [12:0] orig_0_address0_local;
reg    sol_0_we1_local;
reg   [31:0] sol_0_d1_local;
wire   [31:0] add_ln48_11_fu_1137_p2;
reg    sol_0_ce1_local;
reg   [12:0] sol_0_address1_local;
wire   [31:0] add_ln48_23_fu_1407_p2;
reg    sol_0_we0_local;
reg   [31:0] sol_0_d0_local;
wire   [31:0] add_ln48_35_fu_1484_p2;
reg    sol_0_ce0_local;
reg   [12:0] sol_0_address0_local;
wire   [31:0] add_ln48_47_fu_1529_p2;
reg    sol_1_we0_local;
reg   [31:0] sol_1_d0_local;
wire   [31:0] add_ln48_5_fu_1329_p2;
reg    sol_1_ce0_local;
reg   [12:0] sol_1_address0_local;
wire   [31:0] add_ln48_17_fu_1511_p2;
wire   [31:0] add_ln48_29_fu_1517_p2;
wire   [31:0] add_ln48_41_fu_1523_p2;
reg  signed [31:0] grp_fu_570_p0;
reg  signed [31:0] grp_fu_570_p1;
reg  signed [31:0] grp_fu_574_p0;
reg  signed [31:0] grp_fu_574_p1;
wire   [12:0] add_ln_fu_651_p4;
wire   [3:0] add_ln44_fu_666_p2;
wire   [12:0] add_ln42_1_fu_682_p4;
wire   [12:0] add_ln43_1_fu_697_p4;
wire   [12:0] add_ln44_3_fu_718_p4;
wire   [12:0] add_ln4_fu_733_p4;
wire   [12:0] add_ln40_1_fu_745_p3;
wire   [12:0] add_ln41_1_fu_756_p3;
wire   [12:0] add_ln44_7_fu_772_p4;
wire   [12:0] add_ln1_fu_785_p3;
wire   [31:0] add_ln48_8_fu_802_p2;
wire   [3:0] add_ln44_4_fu_814_p2;
wire   [12:0] add_ln42_3_fu_829_p4;
wire   [12:0] add_ln43_3_fu_842_p4;
wire   [12:0] add_ln44_s_fu_860_p4;
wire   [12:0] add_ln2_fu_873_p3;
wire   [12:0] add_ln3_fu_884_p4;
wire   [12:0] add_ln44_1_fu_896_p4;
wire   [31:0] add_ln48_7_fu_908_p2;
wire   [31:0] add_ln48_fu_918_p0;
wire   [12:0] add_ln42_2_fu_924_p4;
wire   [12:0] add_ln43_2_fu_936_p4;
wire   [12:0] add_ln40_3_fu_948_p3;
wire   [12:0] add_ln41_3_fu_959_p3;
wire   [31:0] add_ln48_20_fu_970_p2;
wire  signed [31:0] add_ln48_2_fu_986_p0;
wire   [31:0] add_ln48_2_fu_986_p2;
wire   [12:0] add_ln42_4_fu_1004_p4;
wire   [12:0] add_ln43_4_fu_1016_p4;
wire   [3:0] add_ln44_8_fu_1028_p2;
wire   [12:0] add_ln42_5_fu_1043_p4;
wire   [12:0] add_ln43_5_fu_1056_p4;
wire   [31:0] add_ln48_1_fu_1069_p1;
wire   [31:0] add_ln48_1_fu_1069_p2;
wire   [12:0] add_ln44_5_fu_1079_p4;
wire   [31:0] add_ln48_19_fu_1091_p2;
wire   [12:0] add_ln44_9_fu_1101_p4;
wire   [12:0] add_ln42_6_fu_1113_p4;
wire   [12:0] add_ln43_6_fu_1125_p4;
wire   [12:0] add_ln40_2_fu_1143_p3;
wire   [12:0] add_ln40_5_fu_1154_p3;
wire   [12:0] add_ln41_5_fu_1165_p3;
wire   [31:0] add_ln48_32_fu_1176_p2;
wire   [12:0] zext_ln39_fu_1187_p1;
wire   [12:0] or_ln_fu_1190_p4;
wire   [12:0] add_ln44_13_fu_1198_p2;
wire   [12:0] add_ln41_2_fu_1209_p3;
wire  signed [31:0] add_ln48_14_fu_1220_p1;
wire   [31:0] add_ln48_14_fu_1220_p2;
wire   [31:0] add_ln48_15_fu_1226_p1;
wire   [12:0] add_ln40_4_fu_1232_p3;
wire  signed [31:0] add_ln48_26_fu_1243_p1;
wire   [31:0] add_ln48_26_fu_1243_p2;
wire   [31:0] add_ln48_27_fu_1248_p1;
wire   [3:0] add_ln44_11_fu_1259_p2;
wire   [12:0] add_ln44_12_fu_1274_p4;
wire   [12:0] add_ln42_7_fu_1287_p4;
wire   [0:0] bit_sel_fu_1300_p3;
wire   [0:0] xor_ln44_fu_1307_p2;
wire   [2:0] trunc_ln44_fu_1313_p1;
wire  signed [31:0] add_ln48_12_fu_1336_p0;
wire   [12:0] add_ln41_4_fu_1342_p3;
wire   [31:0] add_ln48_31_fu_1353_p2;
wire   [12:0] add_ln40_6_fu_1363_p3;
wire   [12:0] add_ln40_7_fu_1374_p3;
wire   [12:0] add_ln43_7_fu_1385_p4;
wire   [31:0] add_ln48_13_fu_1397_p1;
wire   [31:0] add_ln48_13_fu_1397_p2;
wire  signed [31:0] add_ln48_24_fu_1414_p0;
wire   [12:0] add_ln41_6_fu_1420_p3;
wire  signed [31:0] add_ln48_38_fu_1431_p1;
wire   [31:0] add_ln48_38_fu_1431_p2;
wire   [12:0] add_ln41_7_fu_1441_p3;
wire   [31:0] add_ln48_25_fu_1452_p2;
wire  signed [31:0] add_ln48_36_fu_1462_p0;
wire   [31:0] add_ln48_44_fu_1473_p1;
wire   [31:0] add_ln48_44_fu_1473_p2;
wire   [31:0] add_ln48_37_fu_1491_p1;
wire   [31:0] add_ln48_37_fu_1491_p2;
wire   [31:0] add_ln48_43_fu_1501_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [10:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_86 = 4'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_570_p0),.din1(grp_fu_570_p1),.ce(1'b1),.dout(grp_fu_570_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_574_p0),.din1(grp_fu_574_p1),.ce(1'b1),.dout(grp_fu_574_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage3) | ((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_condition_exit_pp0_iter1_stage3) & (ap_idle_pp0_0to0 == 1'b1)) | ((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_86 <= 4'd1;
    end else if (((icmp_ln38_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        k_fu_86 <= xor_ln_fu_1316_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        reg_578 <= orig_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_578 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_590 <= orig_0_q1;
    end else if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_590 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        reg_596 <= orig_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_596 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_602 <= orig_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_602 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            reg_624 <= orig_0_q0;
        end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_624 <= orig_0_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln44_10_reg_1776 <= add_ln44_10_fu_855_p2;
        add_ln48_6_reg_1742 <= add_ln48_6_fu_796_p2;
        add_ln48_9_reg_1747 <= add_ln48_9_fu_808_p2;
        lshr_ln44_1_reg_1752 <= {{add_ln44_4_fu_814_p2[3:1]}};
        zext_ln44_5_reg_1784[12 : 0] <= zext_ln44_5_fu_868_p1[12 : 0];
        zext_ln44_5_reg_1784_pp0_iter1_reg[12 : 0] <= zext_ln44_5_reg_1784[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln44_2_reg_1686 <= add_ln44_2_fu_712_p2;
        add_ln48_28_reg_2109 <= add_ln48_28_fu_1457_p2;
        add_ln48_36_reg_2114 <= add_ln48_36_fu_1462_p2;
        add_ln48_42_reg_2119 <= add_ln48_42_fu_1468_p2;
        add_ln48_45_reg_2124 <= add_ln48_45_fu_1478_p2;
        k_1_reg_1637 <= ap_sig_allocacmp_k_1;
        lshr_ln1_reg_1669 <= {{add_ln44_fu_666_p2[3:1]}};
        lshr_ln_reg_1647 <= {{ap_sig_allocacmp_k_1[3:1]}};
        zext_ln39_1_reg_1658[12 : 0] <= zext_ln39_1_fu_661_p1[12 : 0];
        zext_ln44_1_reg_1694[12 : 0] <= zext_ln44_1_fu_728_p1[12 : 0];
        zext_ln44_1_reg_1694_pp0_iter1_reg[12 : 0] <= zext_ln44_1_reg_1694[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln44_6_reg_1719 <= add_ln44_6_fu_767_p2;
        add_ln48_40_reg_2129 <= add_ln48_40_fu_1496_p2;
        add_ln48_46_reg_2134 <= add_ln48_46_fu_1506_p2;
        zext_ln44_3_reg_1727[12 : 0] <= zext_ln44_3_fu_780_p1[12 : 0];
        zext_ln44_3_reg_1727_pp0_iter1_reg[12 : 0] <= zext_ln44_3_reg_1727[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln48_10_reg_1819 <= add_ln48_10_fu_913_p2;
        zext_ln44_reg_1804[12 : 0] <= zext_ln44_fu_903_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln48_12_reg_2049 <= add_ln48_12_fu_1336_p2;
        add_ln48_34_reg_2059 <= add_ln48_34_fu_1358_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln48_15_reg_2007 <= add_ln48_15_fu_1226_p2;
        add_ln48_27_reg_2017 <= add_ln48_27_fu_1248_p2;
        add_ln48_30_reg_2022 <= add_ln48_30_fu_1254_p2;
        lshr_ln44_3_reg_2027 <= {{add_ln44_11_fu_1259_p2[3:1]}};
        zext_ln44_6_reg_2034[12 : 0] <= zext_ln44_6_fu_1282_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln48_16_reg_2079 <= add_ln48_16_fu_1402_p2;
        add_ln48_24_reg_2084 <= add_ln48_24_fu_1414_p2;
        add_ln48_39_reg_2094 <= add_ln48_39_fu_1436_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln48_18_reg_1880 <= add_ln48_18_fu_998_p2;
        add_ln48_3_reg_1875 <= add_ln48_3_fu_992_p2;
        lshr_ln44_2_reg_1895 <= {{add_ln44_8_fu_1028_p2[3:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln48_21_reg_1861 <= add_ln48_21_fu_975_p2;
        add_ln48_reg_1836 <= add_ln48_fu_918_p2;
        icmp_ln38_reg_1871 <= icmp_ln38_fu_981_p2;
        icmp_ln38_reg_1871_pp0_iter1_reg <= icmp_ln38_reg_1871;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln48_22_reg_1937 <= add_ln48_22_fu_1096_p2;
        add_ln48_4_reg_1917 <= add_ln48_4_fu_1074_p2;
        zext_ln44_2_reg_1927[12 : 0] <= zext_ln44_2_fu_1086_p1[12 : 0];
        zext_ln44_4_reg_1947[12 : 0] <= zext_ln44_4_fu_1108_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln48_33_reg_1982 <= add_ln48_33_fu_1181_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_ln48_12_reg_1912 <= grp_fu_574_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_ln48_2_reg_1922 <= grp_fu_570_p2;
        orig_1_load_14_reg_1942 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln48_4_reg_1824 <= grp_fu_574_p2;
        sum0_6_reg_1829 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln48_8_reg_1866 <= grp_fu_570_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        orig_0_load_18_reg_2104 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        orig_1_load_17_reg_1987 <= orig_1_q1;
        orig_1_load_18_reg_1992 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_584 <= orig_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_607 <= grp_fu_570_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_611 <= grp_fu_570_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_615 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_620 <= grp_fu_574_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_629 <= grp_fu_574_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum0_4_reg_1769 <= orig_1_q0;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_1871 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_1871 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_1 = 4'd1;
    end else begin
        ap_sig_allocacmp_k_1 = k_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_570_p0 = reg_590;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_570_p0 = reg_584;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_570_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_570_p0 = sum0_4_reg_1769;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_570_p0 = reg_578;
    end else begin
        grp_fu_570_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_570_p1 = add_ln48_28_reg_2109;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_570_p1 = add_ln48_16_reg_2079;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_570_p1 = add_ln48_34_reg_2059;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_570_p1 = add_ln48_4_reg_1917;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_570_p1 = add_ln48_10_reg_1819;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_570_p1 = C_load;
    end else begin
        grp_fu_570_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_574_p0 = reg_584;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_574_p0 = reg_615;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_574_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_574_p0 = sum0_6_reg_1829;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_574_p0 = reg_596;
    end else begin
        grp_fu_574_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_574_p1 = add_ln48_46_reg_2134;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_574_p1 = add_ln48_40_reg_2129;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_574_p1 = add_ln48_22_reg_1937;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_574_p1 = C_load;
    end else begin
        grp_fu_574_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            orig_0_address0_local = zext_ln41_7_fu_1447_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_0_address0_local = zext_ln43_7_fu_1392_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_0_address0_local = zext_ln42_7_fu_1295_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_0_address0_local = zext_ln41_5_fu_1171_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_0_address0_local = zext_ln44_4_fu_1108_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_0_address0_local = zext_ln43_5_fu_1064_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address0_local = zext_ln41_3_fu_965_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address0_local = zext_ln39_1_reg_1658;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln43_3_fu_850_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address0_local = zext_ln41_1_fu_762_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address0_local = zext_ln43_1_fu_707_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_0_address1_local = zext_ln40_7_fu_1380_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_0_address1_local = zext_ln44_6_fu_1282_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_0_address1_local = zext_ln40_5_fu_1160_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_0_address1_local = zext_ln44_2_fu_1086_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_0_address1_local = zext_ln42_5_fu_1051_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address1_local = zext_ln40_3_fu_954_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address1_local = zext_ln44_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln42_3_fu_837_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln40_1_fu_751_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = zext_ln42_1_fu_692_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            orig_1_address0_local = zext_ln41_6_fu_1426_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_1_address0_local = zext_ln40_6_fu_1369_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_1_address0_local = zext_ln40_4_fu_1238_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_1_address0_local = zext_ln44_7_fu_1204_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_1_address0_local = zext_ln43_6_fu_1132_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_1_address0_local = zext_ln43_4_fu_1023_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address0_local = zext_ln43_2_fu_943_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address0_local = zext_ln42_fu_891_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address0_local = zext_ln44_5_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address0_local = zext_ln44_3_fu_780_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address0_local = zext_ln44_1_fu_728_p1;
        end else begin
            orig_1_address0_local = 'bx;
        end
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_1_address1_local = zext_ln41_4_fu_1348_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_1_address1_local = zext_ln41_2_fu_1215_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_1_address1_local = zext_ln40_2_fu_1149_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_1_address1_local = zext_ln42_6_fu_1120_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_1_address1_local = zext_ln42_4_fu_1011_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address1_local = zext_ln42_2_fu_931_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address1_local = zext_ln41_fu_879_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln40_fu_791_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln43_fu_740_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln39_1_fu_661_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            sol_0_address0_local = zext_ln44_6_reg_2034;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_0_address0_local = zext_ln44_4_reg_1947;
        end else begin
            sol_0_address0_local = 'bx;
        end
    end else begin
        sol_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            sol_0_address1_local = zext_ln44_2_reg_1927;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            sol_0_address1_local = zext_ln44_reg_1804;
        end else begin
            sol_0_address1_local = 'bx;
        end
    end else begin
        sol_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        sol_0_ce1_local = 1'b1;
    end else begin
        sol_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            sol_0_d0_local = add_ln48_47_fu_1529_p2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_0_d0_local = add_ln48_35_fu_1484_p2;
        end else begin
            sol_0_d0_local = 'bx;
        end
    end else begin
        sol_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            sol_0_d1_local = add_ln48_23_fu_1407_p2;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            sol_0_d1_local = add_ln48_11_fu_1137_p2;
        end else begin
            sol_0_d1_local = 'bx;
        end
    end else begin
        sol_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln38_reg_1871_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        sol_0_we1_local = 1'b1;
    end else begin
        sol_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        sol_1_address0_local = zext_ln44_5_reg_1784_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_1_address0_local = zext_ln44_3_reg_1727_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_address0_local = zext_ln44_1_reg_1694_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        sol_1_address0_local = zext_ln39_1_reg_1658;
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        sol_1_d0_local = add_ln48_41_fu_1523_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_1_d0_local = add_ln48_29_fu_1517_p2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_d0_local = add_ln48_17_fu_1511_p2;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        sol_1_d0_local = add_ln48_5_fu_1329_p2;
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln38_reg_1871_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage3) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln1_fu_785_p3 = {{empty_5}, {lshr_ln_reg_1647}};
assign add_ln2_fu_873_p3 = {{empty}, {lshr_ln_reg_1647}};
assign add_ln3_fu_884_p4 = {{{i}, {indvars_iv_next356}}, {lshr_ln_reg_1647}};
assign add_ln40_1_fu_745_p3 = {{empty_5}, {lshr_ln1_reg_1669}};
assign add_ln40_2_fu_1143_p3 = {{empty_5}, {add_ln44_2_reg_1686}};
assign add_ln40_3_fu_948_p3 = {{empty_5}, {lshr_ln44_1_reg_1752}};
assign add_ln40_4_fu_1232_p3 = {{empty_5}, {add_ln44_6_reg_1719}};
assign add_ln40_5_fu_1154_p3 = {{empty_5}, {lshr_ln44_2_reg_1895}};
assign add_ln40_6_fu_1363_p3 = {{empty_5}, {add_ln44_10_reg_1776}};
assign add_ln40_7_fu_1374_p3 = {{empty_5}, {lshr_ln44_3_reg_2027}};
assign add_ln41_1_fu_756_p3 = {{empty}, {lshr_ln1_reg_1669}};
assign add_ln41_2_fu_1209_p3 = {{empty}, {add_ln44_2_reg_1686}};
assign add_ln41_3_fu_959_p3 = {{empty}, {lshr_ln44_1_reg_1752}};
assign add_ln41_4_fu_1342_p3 = {{empty}, {add_ln44_6_reg_1719}};
assign add_ln41_5_fu_1165_p3 = {{empty}, {lshr_ln44_2_reg_1895}};
assign add_ln41_6_fu_1420_p3 = {{empty}, {add_ln44_10_reg_1776}};
assign add_ln41_7_fu_1441_p3 = {{empty}, {lshr_ln44_3_reg_2027}};
assign add_ln42_1_fu_682_p4 = {{{i}, {indvars_iv_next356}}, {lshr_ln1_fu_672_p4}};
assign add_ln42_2_fu_924_p4 = {{{i}, {indvars_iv_next356}}, {add_ln44_2_reg_1686}};
assign add_ln42_3_fu_829_p4 = {{{i}, {indvars_iv_next356}}, {lshr_ln44_1_fu_819_p4}};
assign add_ln42_4_fu_1004_p4 = {{{i}, {indvars_iv_next356}}, {add_ln44_6_reg_1719}};
assign add_ln42_5_fu_1043_p4 = {{{i}, {indvars_iv_next356}}, {lshr_ln44_2_fu_1033_p4}};
assign add_ln42_6_fu_1113_p4 = {{{i}, {indvars_iv_next356}}, {add_ln44_10_reg_1776}};
assign add_ln42_7_fu_1287_p4 = {{{i}, {indvars_iv_next356}}, {lshr_ln44_3_fu_1264_p4}};
assign add_ln43_1_fu_697_p4 = {{{i}, {tmp2}}, {lshr_ln1_fu_672_p4}};
assign add_ln43_2_fu_936_p4 = {{{i}, {tmp2}}, {add_ln44_2_reg_1686}};
assign add_ln43_3_fu_842_p4 = {{{i}, {tmp2}}, {lshr_ln44_1_fu_819_p4}};
assign add_ln43_4_fu_1016_p4 = {{{i}, {tmp2}}, {add_ln44_6_reg_1719}};
assign add_ln43_5_fu_1056_p4 = {{{i}, {tmp2}}, {lshr_ln44_2_fu_1033_p4}};
assign add_ln43_6_fu_1125_p4 = {{{i}, {tmp2}}, {add_ln44_10_reg_1776}};
assign add_ln43_7_fu_1385_p4 = {{{i}, {tmp2}}, {lshr_ln44_3_reg_2027}};
assign add_ln44_10_fu_855_p2 = (lshr_ln_reg_1647 + 3'd3);
assign add_ln44_11_fu_1259_p2 = (k_1_reg_1637 + 4'd7);
assign add_ln44_12_fu_1274_p4 = {{{i}, {j}}, {lshr_ln44_3_fu_1264_p4}};
assign add_ln44_13_fu_1198_p2 = (zext_ln39_fu_1187_p1 + or_ln_fu_1190_p4);
assign add_ln44_1_fu_896_p4 = {{{i}, {j}}, {lshr_ln1_reg_1669}};
assign add_ln44_2_fu_712_p2 = (lshr_ln_fu_641_p4 + 3'd1);
assign add_ln44_3_fu_718_p4 = {{{i}, {j}}, {add_ln44_2_fu_712_p2}};
assign add_ln44_4_fu_814_p2 = (k_1_reg_1637 + 4'd3);
assign add_ln44_5_fu_1079_p4 = {{{i}, {j}}, {lshr_ln44_1_reg_1752}};
assign add_ln44_6_fu_767_p2 = (lshr_ln_reg_1647 + 3'd2);
assign add_ln44_7_fu_772_p4 = {{{i}, {j}}, {add_ln44_6_fu_767_p2}};
assign add_ln44_8_fu_1028_p2 = (k_1_reg_1637 + 4'd5);
assign add_ln44_9_fu_1101_p4 = {{{i}, {j}}, {lshr_ln44_2_reg_1895}};
assign add_ln44_fu_666_p2 = (ap_sig_allocacmp_k_1 + 4'd1);
assign add_ln44_s_fu_860_p4 = {{{i}, {j}}, {add_ln44_10_fu_855_p2}};
assign add_ln48_10_fu_913_p2 = (add_ln48_9_reg_1747 + add_ln48_7_fu_908_p2);
assign add_ln48_11_fu_1137_p2 = (reg_611 + mul_ln48_2_reg_1922);
assign add_ln48_12_fu_1336_p0 = reg_584;
assign add_ln48_12_fu_1336_p2 = ($signed(add_ln48_12_fu_1336_p0) + $signed(orig_1_q1));
assign add_ln48_13_fu_1397_p1 = reg_578;
assign add_ln48_13_fu_1397_p2 = (add_ln48_12_reg_2049 + add_ln48_13_fu_1397_p1);
assign add_ln48_14_fu_1220_p1 = reg_590;
assign add_ln48_14_fu_1220_p2 = ($signed(reg_602) + $signed(add_ln48_14_fu_1220_p1));
assign add_ln48_15_fu_1226_p1 = reg_596;
assign add_ln48_15_fu_1226_p2 = (add_ln48_14_fu_1220_p2 + add_ln48_15_fu_1226_p1);
assign add_ln48_16_fu_1402_p2 = (add_ln48_15_reg_2007 + add_ln48_13_fu_1397_p2);
assign add_ln48_17_fu_1511_p2 = (reg_607 + mul_ln48_4_reg_1824);
assign add_ln48_18_fu_998_p2 = ($signed(reg_596) + $signed(orig_0_q0));
assign add_ln48_19_fu_1091_p2 = (add_ln48_18_reg_1880 + reg_590);
assign add_ln48_1_fu_1069_p1 = reg_578;
assign add_ln48_1_fu_1069_p2 = (add_ln48_reg_1836 + add_ln48_1_fu_1069_p1);
assign add_ln48_20_fu_970_p2 = ($signed(reg_590) + $signed(sum0_4_reg_1769));
assign add_ln48_21_fu_975_p2 = (add_ln48_20_fu_970_p2 + reg_584);
assign add_ln48_22_fu_1096_p2 = (add_ln48_21_reg_1861 + add_ln48_19_fu_1091_p2);
assign add_ln48_23_fu_1407_p2 = (reg_620 + reg_607);
assign add_ln48_24_fu_1414_p0 = reg_590;
assign add_ln48_24_fu_1414_p2 = ($signed(add_ln48_24_fu_1414_p0) + $signed(orig_1_q1));
assign add_ln48_25_fu_1452_p2 = (add_ln48_24_reg_2084 + reg_602);
assign add_ln48_26_fu_1243_p1 = reg_615;
assign add_ln48_26_fu_1243_p2 = ($signed(orig_1_load_14_reg_1942) + $signed(add_ln48_26_fu_1243_p1));
assign add_ln48_27_fu_1248_p1 = reg_578;
assign add_ln48_27_fu_1248_p2 = (add_ln48_26_fu_1243_p2 + add_ln48_27_fu_1248_p1);
assign add_ln48_28_fu_1457_p2 = (add_ln48_27_reg_2017 + add_ln48_25_fu_1452_p2);
assign add_ln48_29_fu_1517_p2 = (reg_607 + mul_ln48_8_reg_1866);
assign add_ln48_2_fu_986_p0 = reg_584;
assign add_ln48_2_fu_986_p2 = ($signed(add_ln48_2_fu_986_p0) + $signed(reg_590));
assign add_ln48_30_fu_1254_p2 = ($signed(sum0_4_reg_1769) + $signed(orig_0_q0));
assign add_ln48_31_fu_1353_p2 = (add_ln48_30_reg_2022 + reg_624);
assign add_ln48_32_fu_1176_p2 = ($signed(reg_615) + $signed(sum0_6_reg_1829));
assign add_ln48_33_fu_1181_p2 = (add_ln48_32_fu_1176_p2 + reg_590);
assign add_ln48_34_fu_1358_p2 = (add_ln48_33_reg_1982 + add_ln48_31_fu_1353_p2);
assign add_ln48_35_fu_1484_p2 = (reg_607 + reg_629);
assign add_ln48_36_fu_1462_p0 = reg_615;
assign add_ln48_36_fu_1462_p2 = ($signed(add_ln48_36_fu_1462_p0) + $signed(orig_1_q0));
assign add_ln48_37_fu_1491_p1 = reg_578;
assign add_ln48_37_fu_1491_p2 = (add_ln48_36_reg_2114 + add_ln48_37_fu_1491_p1);
assign add_ln48_38_fu_1431_p1 = reg_584;
assign add_ln48_38_fu_1431_p2 = ($signed(orig_1_load_18_reg_1992) + $signed(add_ln48_38_fu_1431_p1));
assign add_ln48_39_fu_1436_p2 = (add_ln48_38_fu_1431_p2 + orig_1_load_17_reg_1987);
assign add_ln48_3_fu_992_p2 = (add_ln48_2_fu_986_p2 + reg_602);
assign add_ln48_40_fu_1496_p2 = (add_ln48_39_reg_2094 + add_ln48_37_fu_1491_p2);
assign add_ln48_41_fu_1523_p2 = (reg_629 + mul_ln48_12_reg_1912);
assign add_ln48_42_fu_1468_p2 = ($signed(sum0_6_reg_1829) + $signed(orig_0_q0));
assign add_ln48_43_fu_1501_p2 = (add_ln48_42_reg_2119 + reg_590);
assign add_ln48_44_fu_1473_p1 = reg_596;
assign add_ln48_44_fu_1473_p2 = (orig_0_load_18_reg_2104 + add_ln48_44_fu_1473_p1);
assign add_ln48_45_fu_1478_p2 = (add_ln48_44_fu_1473_p2 + reg_624);
assign add_ln48_46_fu_1506_p2 = (add_ln48_45_reg_2124 + add_ln48_43_fu_1501_p2);
assign add_ln48_47_fu_1529_p2 = (reg_629 + reg_620);
assign add_ln48_4_fu_1074_p2 = (add_ln48_3_reg_1875 + add_ln48_1_fu_1069_p2);
assign add_ln48_5_fu_1329_p2 = (reg_611 + reg_607);
assign add_ln48_6_fu_796_p2 = ($signed(reg_578) + $signed(orig_0_q0));
assign add_ln48_7_fu_908_p2 = (add_ln48_6_reg_1742 + reg_584);
assign add_ln48_8_fu_802_p2 = ($signed(reg_590) + $signed(reg_596));
assign add_ln48_9_fu_808_p2 = (add_ln48_8_fu_802_p2 + reg_584);
assign add_ln48_fu_918_p0 = reg_578;
assign add_ln48_fu_918_p2 = (add_ln48_fu_918_p0 + orig_1_q0);
assign add_ln4_fu_733_p4 = {{{i}, {tmp2}}, {lshr_ln_reg_1647}};
assign add_ln_fu_651_p4 = {{{i}, {j}}, {lshr_ln_fu_641_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign bit_sel_fu_1300_p3 = k_1_reg_1637[4'd3];
assign icmp_ln38_fu_981_p2 = ((k_1_reg_1637 == 4'd9) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_672_p4 = {{add_ln44_fu_666_p2[3:1]}};
assign lshr_ln44_1_fu_819_p4 = {{add_ln44_4_fu_814_p2[3:1]}};
assign lshr_ln44_2_fu_1033_p4 = {{add_ln44_8_fu_1028_p2[3:1]}};
assign lshr_ln44_3_fu_1264_p4 = {{add_ln44_11_fu_1259_p2[3:1]}};
assign lshr_ln_fu_641_p4 = {{ap_sig_allocacmp_k_1[3:1]}};
assign or_ln_fu_1190_p4 = {{{i}, {j}}, {3'd4}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign sol_0_address0 = sol_0_address0_local;
assign sol_0_address1 = sol_0_address1_local;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_ce1 = sol_0_ce1_local;
assign sol_0_d0 = sol_0_d0_local;
assign sol_0_d1 = sol_0_d1_local;
assign sol_0_we0 = sol_0_we0_local;
assign sol_0_we1 = sol_0_we1_local;
assign sol_1_address0 = sol_1_address0_local;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = sol_1_d0_local;
assign sol_1_we0 = sol_1_we0_local;
assign trunc_ln44_fu_1313_p1 = k_1_reg_1637[2:0];
assign xor_ln44_fu_1307_p2 = (bit_sel_fu_1300_p3 ^ 1'd1);
assign xor_ln_fu_1316_p3 = {{xor_ln44_fu_1307_p2}, {trunc_ln44_fu_1313_p1}};
assign zext_ln39_1_fu_661_p1 = add_ln_fu_651_p4;
assign zext_ln39_fu_1187_p1 = lshr_ln_reg_1647;
assign zext_ln40_1_fu_751_p1 = add_ln40_1_fu_745_p3;
assign zext_ln40_2_fu_1149_p1 = add_ln40_2_fu_1143_p3;
assign zext_ln40_3_fu_954_p1 = add_ln40_3_fu_948_p3;
assign zext_ln40_4_fu_1238_p1 = add_ln40_4_fu_1232_p3;
assign zext_ln40_5_fu_1160_p1 = add_ln40_5_fu_1154_p3;
assign zext_ln40_6_fu_1369_p1 = add_ln40_6_fu_1363_p3;
assign zext_ln40_7_fu_1380_p1 = add_ln40_7_fu_1374_p3;
assign zext_ln40_fu_791_p1 = add_ln1_fu_785_p3;
assign zext_ln41_1_fu_762_p1 = add_ln41_1_fu_756_p3;
assign zext_ln41_2_fu_1215_p1 = add_ln41_2_fu_1209_p3;
assign zext_ln41_3_fu_965_p1 = add_ln41_3_fu_959_p3;
assign zext_ln41_4_fu_1348_p1 = add_ln41_4_fu_1342_p3;
assign zext_ln41_5_fu_1171_p1 = add_ln41_5_fu_1165_p3;
assign zext_ln41_6_fu_1426_p1 = add_ln41_6_fu_1420_p3;
assign zext_ln41_7_fu_1447_p1 = add_ln41_7_fu_1441_p3;
assign zext_ln41_fu_879_p1 = add_ln2_fu_873_p3;
assign zext_ln42_1_fu_692_p1 = add_ln42_1_fu_682_p4;
assign zext_ln42_2_fu_931_p1 = add_ln42_2_fu_924_p4;
assign zext_ln42_3_fu_837_p1 = add_ln42_3_fu_829_p4;
assign zext_ln42_4_fu_1011_p1 = add_ln42_4_fu_1004_p4;
assign zext_ln42_5_fu_1051_p1 = add_ln42_5_fu_1043_p4;
assign zext_ln42_6_fu_1120_p1 = add_ln42_6_fu_1113_p4;
assign zext_ln42_7_fu_1295_p1 = add_ln42_7_fu_1287_p4;
assign zext_ln42_fu_891_p1 = add_ln3_fu_884_p4;
assign zext_ln43_1_fu_707_p1 = add_ln43_1_fu_697_p4;
assign zext_ln43_2_fu_943_p1 = add_ln43_2_fu_936_p4;
assign zext_ln43_3_fu_850_p1 = add_ln43_3_fu_842_p4;
assign zext_ln43_4_fu_1023_p1 = add_ln43_4_fu_1016_p4;
assign zext_ln43_5_fu_1064_p1 = add_ln43_5_fu_1056_p4;
assign zext_ln43_6_fu_1132_p1 = add_ln43_6_fu_1125_p4;
assign zext_ln43_7_fu_1392_p1 = add_ln43_7_fu_1385_p4;
assign zext_ln43_fu_740_p1 = add_ln4_fu_733_p4;
assign zext_ln44_1_fu_728_p1 = add_ln44_3_fu_718_p4;
assign zext_ln44_2_fu_1086_p1 = add_ln44_5_fu_1079_p4;
assign zext_ln44_3_fu_780_p1 = add_ln44_7_fu_772_p4;
assign zext_ln44_4_fu_1108_p1 = add_ln44_9_fu_1101_p4;
assign zext_ln44_5_fu_868_p1 = add_ln44_s_fu_860_p4;
assign zext_ln44_6_fu_1282_p1 = add_ln44_12_fu_1274_p4;
assign zext_ln44_7_fu_1204_p1 = add_ln44_13_fu_1198_p2;
assign zext_ln44_fu_903_p1 = add_ln44_1_fu_896_p4;
always @ (posedge ap_clk) begin
    zext_ln39_1_reg_1658[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_1694[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_1694_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_3_reg_1727[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_3_reg_1727_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_5_reg_1784[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_5_reg_1784_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_1804[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_2_reg_1927[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_4_reg_1947[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_6_reg_2034[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 
