
module stencil3d_stencil3d_Pipeline_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,i,j,orig_address0,orig_ce0,orig_q0,orig_address1,orig_ce1,orig_q1,empty_5,empty_6,indvars_iv_next356,tmp2,C_load,C_load_1,sol_address0,sol_ce0,sol_we0,sol_d0,empty);  
parameter    ap_ST_fsm_pp0_stage0 = 21'd1;
parameter    ap_ST_fsm_pp0_stage1 = 21'd2;
parameter    ap_ST_fsm_pp0_stage2 = 21'd4;
parameter    ap_ST_fsm_pp0_stage3 = 21'd8;
parameter    ap_ST_fsm_pp0_stage4 = 21'd16;
parameter    ap_ST_fsm_pp0_stage5 = 21'd32;
parameter    ap_ST_fsm_pp0_stage6 = 21'd64;
parameter    ap_ST_fsm_pp0_stage7 = 21'd128;
parameter    ap_ST_fsm_pp0_stage8 = 21'd256;
parameter    ap_ST_fsm_pp0_stage9 = 21'd512;
parameter    ap_ST_fsm_pp0_stage10 = 21'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 21'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 21'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 21'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 21'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 21'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 21'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 21'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 21'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 21'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 21'd1048576;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] i;
input  [4:0] j;
output  [13:0] orig_address0;
output   orig_ce0;
input  [31:0] orig_q0;
output  [13:0] orig_address1;
output   orig_ce1;
input  [31:0] orig_q1;
input  [9:0] empty_5;
input  [9:0] empty_6;
input  [4:0] indvars_iv_next356;
input  [4:0] tmp2;
input  [31:0] C_load;
input  [31:0] C_load_1;
output  [13:0] sol_address0;
output   sol_ce0;
output   sol_we0;
output  [31:0] sol_d0;
input  [4:0] empty;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_subdone;
reg   [0:0] icmp_ln38_reg_1801;
reg    ap_condition_exit_pp0_iter0_stage20;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_556;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_block_pp0_stage20_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_561;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_567;
wire   [31:0] grp_fu_552_p2;
reg   [31:0] reg_572;
reg   [31:0] reg_576;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] reg_580;
reg   [31:0] reg_585;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [31:0] reg_590;
reg   [3:0] k_1_reg_1562;
wire   [3:0] add_ln44_fu_617_p2;
reg   [3:0] add_ln44_reg_1583;
wire   [63:0] zext_ln44_fu_633_p1;
reg   [63:0] zext_ln44_reg_1591;
reg  signed [31:0] sum0_1_reg_1601;
wire   [3:0] add_ln44_2_fu_680_p2;
reg   [3:0] add_ln44_2_reg_1623;
wire   [63:0] zext_ln44_1_fu_693_p1;
reg   [63:0] zext_ln44_1_reg_1631;
wire   [31:0] add_ln48_3_fu_703_p2;
reg   [31:0] add_ln48_3_reg_1641;
wire   [31:0] add_ln48_9_fu_739_p2;
reg   [31:0] add_ln48_9_reg_1656;
wire   [3:0] add_ln44_4_fu_745_p2;
reg   [3:0] add_ln44_4_reg_1661;
wire   [63:0] zext_ln44_2_fu_758_p1;
reg   [63:0] zext_ln44_2_reg_1668;
reg  signed [31:0] sum0_3_reg_1683;
wire   [3:0] add_ln44_6_fu_788_p2;
reg   [3:0] add_ln44_6_reg_1695;
wire   [63:0] zext_ln44_3_fu_801_p1;
reg   [63:0] zext_ln44_3_reg_1703;
wire   [31:0] add_ln48_15_fu_811_p2;
reg   [31:0] add_ln48_15_reg_1713;
wire   [31:0] add_ln48_21_fu_847_p2;
reg   [31:0] add_ln48_21_reg_1728;
reg   [31:0] mul_ln48_6_reg_1733;
wire   [3:0] add_ln44_8_fu_853_p2;
reg   [3:0] add_ln44_8_reg_1738;
wire   [63:0] zext_ln44_4_fu_866_p1;
reg   [63:0] zext_ln44_4_reg_1745;
reg  signed [31:0] sum0_5_reg_1760;
reg   [31:0] mul_ln48_8_reg_1767;
wire   [3:0] add_ln44_10_fu_896_p2;
reg   [3:0] add_ln44_10_reg_1777;
wire   [63:0] zext_ln44_5_fu_909_p1;
reg   [63:0] zext_ln44_5_reg_1786;
wire   [31:0] add_ln48_27_fu_919_p2;
reg   [31:0] add_ln48_27_reg_1796;
wire   [0:0] icmp_ln38_fu_925_p2;
wire   [31:0] add_ln48_33_fu_960_p2;
reg   [31:0] add_ln48_33_reg_1815;
reg   [31:0] mul_ln48_10_reg_1820;
wire   [3:0] add_ln44_11_fu_966_p2;
reg   [3:0] add_ln44_11_reg_1825;
wire   [63:0] zext_ln44_6_fu_979_p1;
reg   [63:0] zext_ln44_6_reg_1832;
reg  signed [31:0] sum0_7_reg_1847;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] mul_ln48_12_reg_1853;
reg   [31:0] orig_load_38_reg_1858;
wire   [63:0] zext_ln39_fu_1062_p1;
reg   [63:0] zext_ln39_reg_1873;
wire   [31:0] add_ln48_39_fu_1083_p2;
reg   [31:0] add_ln48_39_reg_1888;
wire   [31:0] add_ln48_45_fu_1118_p2;
reg   [31:0] add_ln48_45_reg_1903;
reg   [31:0] mul_ln48_14_reg_1908;
wire   [31:0] add_ln48_fu_1123_p2;
reg   [31:0] add_ln48_reg_1913;
wire  signed [31:0] add_ln48_4_fu_1156_p2;
reg  signed [31:0] add_ln48_4_reg_1928;
wire   [31:0] add_ln48_6_fu_1161_p2;
reg   [31:0] add_ln48_6_reg_1933;
wire  signed [31:0] add_ln48_10_fu_1194_p2;
reg  signed [31:0] add_ln48_10_reg_1948;
wire   [31:0] add_ln48_12_fu_1199_p2;
reg   [31:0] add_ln48_12_reg_1953;
reg   [31:0] mul_ln48_1_reg_1968;
wire  signed [31:0] add_ln48_16_fu_1231_p2;
reg  signed [31:0] add_ln48_16_reg_1973;
wire   [31:0] add_ln48_18_fu_1236_p2;
reg   [31:0] add_ln48_18_reg_1978;
wire  signed [31:0] add_ln48_22_fu_1275_p2;
reg  signed [31:0] add_ln48_22_reg_1993;
wire   [31:0] add_ln48_24_fu_1280_p2;
reg   [31:0] add_ln48_24_reg_1998;
wire  signed [31:0] add_ln48_28_fu_1319_p2;
reg  signed [31:0] add_ln48_28_reg_2013;
wire   [31:0] add_ln48_30_fu_1324_p2;
reg   [31:0] add_ln48_30_reg_2018;
wire  signed [31:0] add_ln48_34_fu_1364_p2;
reg  signed [31:0] add_ln48_34_reg_2033;
wire   [31:0] add_ln48_36_fu_1369_p2;
reg   [31:0] add_ln48_36_reg_2038;
wire  signed [31:0] add_ln48_40_fu_1407_p2;
reg  signed [31:0] add_ln48_40_reg_2053;
wire   [31:0] add_ln48_42_fu_1412_p2;
reg   [31:0] add_ln48_42_reg_2058;
wire  signed [31:0] add_ln48_46_fu_1429_p2;
reg  signed [31:0] add_ln48_46_reg_2063;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
reg    ap_condition_exit_pp0_iter1_stage2;
wire    ap_block_pp0_stage5_subdone;
wire   [63:0] zext_ln43_fu_612_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln45_fu_651_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln42_1_fu_663_p1;
wire   [63:0] zext_ln43_1_fu_675_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln42_2_fu_716_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln43_2_fu_728_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln42_3_fu_771_p1;
wire   [63:0] zext_ln43_3_fu_783_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln42_4_fu_824_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln43_4_fu_836_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln42_5_fu_879_p1;
wire   [63:0] zext_ln43_5_fu_891_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln42_6_fu_937_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln43_6_fu_949_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln42_7_fu_992_p1;
wire   [63:0] zext_ln43_7_fu_1007_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln44_7_fu_1045_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln40_fu_1073_p1;
wire   [63:0] zext_ln41_fu_1095_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln42_fu_1107_p1;
wire   [63:0] zext_ln40_1_fu_1135_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln41_1_fu_1146_p1;
wire   [63:0] zext_ln40_2_fu_1173_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln41_2_fu_1184_p1;
wire   [63:0] zext_ln40_3_fu_1210_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln41_3_fu_1221_p1;
wire   [63:0] zext_ln40_4_fu_1248_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln41_4_fu_1259_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln40_5_fu_1291_p1;
wire   [63:0] zext_ln41_5_fu_1302_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln40_6_fu_1336_p1;
wire   [63:0] zext_ln41_6_fu_1347_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] zext_ln40_7_fu_1380_p1;
wire   [63:0] zext_ln41_7_fu_1391_p1;
reg   [3:0] k_fu_80;
wire   [3:0] trunc_ln44_fu_1018_p1;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_1;
reg    orig_ce1_local;
reg   [13:0] orig_address1_local;
reg    orig_ce0_local;
reg   [13:0] orig_address0_local;
reg    sol_we0_local;
reg   [31:0] sol_d0_local;
wire   [31:0] add_ln48_5_fu_1264_p2;
reg    sol_ce0_local;
reg   [13:0] sol_address0_local;
wire   [31:0] add_ln48_11_fu_1307_p2;
wire   [31:0] add_ln48_17_fu_1352_p2;
wire   [31:0] add_ln48_23_fu_1396_p2;
wire   [31:0] add_ln48_29_fu_1418_p2;
wire   [31:0] add_ln48_35_fu_1434_p2;
wire   [31:0] add_ln48_41_fu_1440_p2;
wire   [31:0] add_ln48_47_fu_1446_p2;
reg  signed [31:0] grp_fu_552_p0;
reg  signed [31:0] grp_fu_552_p1;
wire   [13:0] add_ln4_fu_602_p4;
wire   [13:0] add_ln44_1_fu_623_p4;
wire   [3:0] add_ln45_fu_638_p2;
wire   [13:0] add_ln45_1_fu_643_p4;
wire   [13:0] add_ln42_1_fu_656_p4;
wire   [13:0] add_ln43_1_fu_668_p4;
wire   [13:0] add_ln44_3_fu_685_p4;
wire   [31:0] add_ln48_2_fu_698_p2;
wire   [13:0] add_ln42_2_fu_709_p4;
wire   [13:0] add_ln43_2_fu_721_p4;
wire  signed [31:0] add_ln48_8_fu_733_p1;
wire   [31:0] add_ln48_8_fu_733_p2;
wire   [13:0] add_ln44_5_fu_750_p4;
wire   [13:0] add_ln42_3_fu_763_p4;
wire   [13:0] add_ln43_3_fu_776_p4;
wire   [13:0] add_ln44_7_fu_793_p4;
wire   [31:0] add_ln48_14_fu_806_p2;
wire   [13:0] add_ln42_4_fu_817_p4;
wire   [13:0] add_ln43_4_fu_829_p4;
wire  signed [31:0] add_ln48_20_fu_841_p1;
wire   [31:0] add_ln48_20_fu_841_p2;
wire   [13:0] add_ln44_9_fu_858_p4;
wire   [13:0] add_ln42_5_fu_871_p4;
wire   [13:0] add_ln43_5_fu_884_p4;
wire   [13:0] add_ln44_s_fu_901_p4;
wire   [31:0] add_ln48_26_fu_914_p2;
wire   [13:0] add_ln42_6_fu_930_p4;
wire   [13:0] add_ln43_6_fu_942_p4;
wire  signed [31:0] add_ln48_32_fu_954_p1;
wire   [31:0] add_ln48_32_fu_954_p2;
wire   [13:0] add_ln44_12_fu_971_p4;
wire   [13:0] add_ln42_7_fu_984_p4;
wire   [13:0] add_ln43_7_fu_1000_p4;
wire   [4:0] zext_ln12_fu_997_p1;
wire   [4:0] add_ln44_13_fu_1012_p2;
wire   [3:0] tmp_1_fu_1027_p4;
wire   [4:0] or_ln44_fu_1022_p2;
wire   [13:0] add_ln44_14_fu_1036_p4;
wire   [13:0] add_ln_fu_1055_p4;
wire   [13:0] add_ln1_fu_1067_p3;
wire   [31:0] add_ln48_38_fu_1078_p2;
wire   [13:0] add_ln2_fu_1089_p3;
wire   [13:0] add_ln3_fu_1100_p4;
wire   [31:0] add_ln48_44_fu_1112_p2;
wire   [13:0] add_ln40_1_fu_1129_p3;
wire   [13:0] add_ln41_1_fu_1140_p3;
wire   [31:0] add_ln48_1_fu_1151_p2;
wire  signed [31:0] add_ln48_6_fu_1161_p0;
wire   [13:0] add_ln40_2_fu_1167_p3;
wire   [13:0] add_ln41_2_fu_1178_p3;
wire   [31:0] add_ln48_7_fu_1189_p2;
wire   [13:0] add_ln40_3_fu_1204_p3;
wire   [13:0] add_ln41_3_fu_1215_p3;
wire   [31:0] add_ln48_13_fu_1226_p2;
wire  signed [31:0] add_ln48_18_fu_1236_p0;
wire   [13:0] add_ln40_4_fu_1242_p3;
wire   [13:0] add_ln41_4_fu_1253_p3;
wire   [31:0] add_ln48_19_fu_1270_p2;
wire   [13:0] add_ln40_5_fu_1285_p3;
wire   [13:0] add_ln41_5_fu_1296_p3;
wire   [31:0] add_ln48_25_fu_1314_p2;
wire  signed [31:0] add_ln48_30_fu_1324_p0;
wire   [13:0] add_ln40_6_fu_1330_p3;
wire   [13:0] add_ln41_6_fu_1341_p3;
wire   [31:0] add_ln48_31_fu_1359_p2;
wire   [13:0] add_ln40_7_fu_1374_p3;
wire   [13:0] add_ln41_7_fu_1385_p3;
wire   [31:0] add_ln48_37_fu_1402_p2;
wire  signed [31:0] add_ln48_42_fu_1412_p0;
wire   [31:0] add_ln48_43_fu_1424_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [20:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_80 = 4'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_552_p0),.din1(grp_fu_552_p1),.ce(1'b1),.dout(grp_fu_552_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage20),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage2) | ((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage20_subdone) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_condition_exit_pp0_iter1_stage2) & (ap_idle_pp0_0to0 == 1'b1)) | ((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_80 <= 4'd1;
    end else if (((icmp_ln38_reg_1801 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        k_fu_80 <= trunc_ln44_fu_1018_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_561 <= orig_q0;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_561 <= orig_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        reg_585 <= orig_q1;
    end else if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_585 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln44_10_reg_1777 <= add_ln44_10_fu_896_p2;
        zext_ln44_5_reg_1786[13 : 0] <= zext_ln44_5_fu_909_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln44_11_reg_1825 <= add_ln44_11_fu_966_p2;
        add_ln48_33_reg_1815 <= add_ln48_33_fu_960_p2;
        zext_ln44_6_reg_1832[13 : 0] <= zext_ln44_6_fu_979_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln44_2_reg_1623 <= add_ln44_2_fu_680_p2;
        zext_ln44_1_reg_1631[13 : 0] <= zext_ln44_1_fu_693_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln44_4_reg_1661 <= add_ln44_4_fu_745_p2;
        add_ln48_9_reg_1656 <= add_ln48_9_fu_739_p2;
        zext_ln44_2_reg_1668[13 : 0] <= zext_ln44_2_fu_758_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln44_6_reg_1695 <= add_ln44_6_fu_788_p2;
        zext_ln44_3_reg_1703[13 : 0] <= zext_ln44_3_fu_801_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln44_8_reg_1738 <= add_ln44_8_fu_853_p2;
        add_ln48_21_reg_1728 <= add_ln48_21_fu_847_p2;
        zext_ln44_4_reg_1745[13 : 0] <= zext_ln44_4_fu_866_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln44_reg_1583 <= add_ln44_fu_617_p2;
        add_ln48_40_reg_2053 <= add_ln48_40_fu_1407_p2;
        add_ln48_42_reg_2058 <= add_ln48_42_fu_1412_p2;
        k_1_reg_1562 <= ap_sig_allocacmp_k_1;
        zext_ln44_reg_1591[13 : 0] <= zext_ln44_fu_633_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add_ln48_10_reg_1948 <= add_ln48_10_fu_1194_p2;
        add_ln48_12_reg_1953 <= add_ln48_12_fu_1199_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln48_15_reg_1713 <= add_ln48_15_fu_811_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        add_ln48_16_reg_1973 <= add_ln48_16_fu_1231_p2;
        add_ln48_18_reg_1978 <= add_ln48_18_fu_1236_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        add_ln48_22_reg_1993 <= add_ln48_22_fu_1275_p2;
        add_ln48_24_reg_1998 <= add_ln48_24_fu_1280_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln48_27_reg_1796 <= add_ln48_27_fu_919_p2;
        icmp_ln38_reg_1801 <= icmp_ln38_fu_925_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        add_ln48_28_reg_2013 <= add_ln48_28_fu_1319_p2;
        add_ln48_30_reg_2018 <= add_ln48_30_fu_1324_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        add_ln48_34_reg_2033 <= add_ln48_34_fu_1364_p2;
        add_ln48_36_reg_2038 <= add_ln48_36_fu_1369_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln48_39_reg_1888 <= add_ln48_39_fu_1083_p2;
        zext_ln39_reg_1873[13 : 0] <= zext_ln39_fu_1062_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln48_3_reg_1641 <= add_ln48_3_fu_703_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln48_45_reg_1903 <= add_ln48_45_fu_1118_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_46_reg_2063 <= add_ln48_46_fu_1429_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add_ln48_4_reg_1928 <= add_ln48_4_fu_1156_p2;
        add_ln48_6_reg_1933 <= add_ln48_6_fu_1161_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add_ln48_reg_1913 <= add_ln48_fu_1123_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul_ln48_10_reg_1820 <= grp_fu_552_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul_ln48_12_reg_1853 <= grp_fu_552_p2;
        orig_load_38_reg_1858 <= orig_q0;
        sum0_7_reg_1847 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mul_ln48_14_reg_1908 <= grp_fu_552_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        mul_ln48_1_reg_1968 <= grp_fu_552_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln48_6_reg_1733 <= grp_fu_552_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_ln48_8_reg_1767 <= grp_fu_552_p2;
        sum0_5_reg_1760 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_556 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_567 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_572 <= grp_fu_552_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_576 <= grp_fu_552_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_580 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_590 <= grp_fu_552_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum0_1_reg_1601 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        sum0_3_reg_1683 <= orig_q1;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_1801 == 1'd1) & (1'b0 == ap_block_pp0_stage20_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_condition_exit_pp0_iter0_stage20 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage20 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_1801 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage20_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_1 = 4'd1;
    end else begin
        ap_sig_allocacmp_k_1 = k_fu_80;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_552_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_552_p0 = reg_556;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_552_p0 = sum0_7_reg_1847;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_552_p0 = reg_580;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_552_p0 = sum0_5_reg_1760;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_552_p0 = reg_567;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_552_p0 = sum0_3_reg_1683;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_552_p0 = reg_561;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_552_p0 = sum0_1_reg_1601;
    end else begin
        grp_fu_552_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_552_p1 = add_ln48_46_reg_2063;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_552_p1 = add_ln48_40_reg_2053;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_552_p1 = add_ln48_34_reg_2033;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_552_p1 = add_ln48_28_reg_2013;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_552_p1 = add_ln48_22_reg_1993;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_552_p1 = add_ln48_16_reg_1973;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_552_p1 = add_ln48_10_reg_1948;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_552_p1 = add_ln48_4_reg_1928;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_552_p1 = C_load;
    end else begin
        grp_fu_552_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            orig_address0_local = zext_ln41_7_fu_1391_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            orig_address0_local = zext_ln41_6_fu_1347_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            orig_address0_local = zext_ln41_5_fu_1302_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            orig_address0_local = zext_ln41_4_fu_1259_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            orig_address0_local = zext_ln41_3_fu_1221_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            orig_address0_local = zext_ln41_2_fu_1184_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            orig_address0_local = zext_ln41_1_fu_1146_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            orig_address0_local = zext_ln42_fu_1107_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            orig_address0_local = zext_ln40_fu_1073_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            orig_address0_local = zext_ln44_7_fu_1045_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            orig_address0_local = zext_ln42_7_fu_992_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_address0_local = zext_ln43_6_fu_949_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_address0_local = zext_ln44_5_fu_909_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_address0_local = zext_ln42_5_fu_879_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_address0_local = zext_ln43_4_fu_836_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_address0_local = zext_ln44_3_fu_801_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_address0_local = zext_ln42_3_fu_771_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_address0_local = zext_ln43_2_fu_728_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_address0_local = zext_ln44_1_fu_693_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_address0_local = zext_ln42_1_fu_663_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_address0_local = zext_ln44_fu_633_p1;
        end else begin
            orig_address0_local = 'bx;
        end
    end else begin
        orig_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            orig_address1_local = zext_ln40_7_fu_1380_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            orig_address1_local = zext_ln40_6_fu_1336_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            orig_address1_local = zext_ln40_5_fu_1291_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            orig_address1_local = zext_ln40_4_fu_1248_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            orig_address1_local = zext_ln40_3_fu_1210_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            orig_address1_local = zext_ln40_2_fu_1173_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            orig_address1_local = zext_ln40_1_fu_1135_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            orig_address1_local = zext_ln41_fu_1095_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            orig_address1_local = zext_ln39_fu_1062_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            orig_address1_local = zext_ln43_7_fu_1007_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            orig_address1_local = zext_ln44_6_fu_979_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_address1_local = zext_ln42_6_fu_937_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_address1_local = zext_ln43_5_fu_891_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_address1_local = zext_ln44_4_fu_866_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_address1_local = zext_ln42_4_fu_824_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_address1_local = zext_ln43_3_fu_783_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_address1_local = zext_ln44_2_fu_758_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_address1_local = zext_ln42_2_fu_716_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_address1_local = zext_ln43_1_fu_675_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_address1_local = zext_ln45_fu_651_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_address1_local = zext_ln43_fu_612_p1;
        end else begin
            orig_address1_local = 'bx;
        end
    end else begin
        orig_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_ce0_local = 1'b1;
    end else begin
        orig_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_ce1_local = 1'b1;
    end else begin
        orig_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        sol_address0_local = zext_ln44_6_reg_1832;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_address0_local = zext_ln44_5_reg_1786;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_address0_local = zext_ln44_4_reg_1745;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_address0_local = zext_ln44_3_reg_1703;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_address0_local = zext_ln44_2_reg_1668;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        sol_address0_local = zext_ln44_1_reg_1631;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sol_address0_local = zext_ln44_reg_1591;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        sol_address0_local = zext_ln39_reg_1873;
    end else begin
        sol_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_ce0_local = 1'b1;
    end else begin
        sol_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        sol_d0_local = add_ln48_47_fu_1446_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_d0_local = add_ln48_41_fu_1440_p2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_d0_local = add_ln48_35_fu_1434_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_d0_local = add_ln48_29_fu_1418_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_d0_local = add_ln48_23_fu_1396_p2;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        sol_d0_local = add_ln48_17_fu_1352_p2;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sol_d0_local = add_ln48_11_fu_1307_p2;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        sol_d0_local = add_ln48_5_fu_1264_p2;
    end else begin
        sol_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln38_reg_1801 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln38_reg_1801 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_we0_local = 1'b1;
    end else begin
        sol_we0_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage2) & (ap_idle_pp0_0to0 == 1'b1))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln1_fu_1067_p3 = {{empty_5}, {k_1_reg_1562}};
assign add_ln2_fu_1089_p3 = {{empty_6}, {k_1_reg_1562}};
assign add_ln3_fu_1100_p4 = {{{i}, {indvars_iv_next356}}, {k_1_reg_1562}};
assign add_ln40_1_fu_1129_p3 = {{empty_5}, {add_ln44_reg_1583}};
assign add_ln40_2_fu_1167_p3 = {{empty_5}, {add_ln44_2_reg_1623}};
assign add_ln40_3_fu_1204_p3 = {{empty_5}, {add_ln44_4_reg_1661}};
assign add_ln40_4_fu_1242_p3 = {{empty_5}, {add_ln44_6_reg_1695}};
assign add_ln40_5_fu_1285_p3 = {{empty_5}, {add_ln44_8_reg_1738}};
assign add_ln40_6_fu_1330_p3 = {{empty_5}, {add_ln44_10_reg_1777}};
assign add_ln40_7_fu_1374_p3 = {{empty_5}, {add_ln44_11_reg_1825}};
assign add_ln41_1_fu_1140_p3 = {{empty_6}, {add_ln44_reg_1583}};
assign add_ln41_2_fu_1178_p3 = {{empty_6}, {add_ln44_2_reg_1623}};
assign add_ln41_3_fu_1215_p3 = {{empty_6}, {add_ln44_4_reg_1661}};
assign add_ln41_4_fu_1253_p3 = {{empty_6}, {add_ln44_6_reg_1695}};
assign add_ln41_5_fu_1296_p3 = {{empty_6}, {add_ln44_8_reg_1738}};
assign add_ln41_6_fu_1341_p3 = {{empty_6}, {add_ln44_10_reg_1777}};
assign add_ln41_7_fu_1385_p3 = {{empty_6}, {add_ln44_11_reg_1825}};
assign add_ln42_1_fu_656_p4 = {{{i}, {indvars_iv_next356}}, {add_ln44_reg_1583}};
assign add_ln42_2_fu_709_p4 = {{{i}, {indvars_iv_next356}}, {add_ln44_2_reg_1623}};
assign add_ln42_3_fu_763_p4 = {{{i}, {indvars_iv_next356}}, {add_ln44_4_fu_745_p2}};
assign add_ln42_4_fu_817_p4 = {{{i}, {indvars_iv_next356}}, {add_ln44_6_reg_1695}};
assign add_ln42_5_fu_871_p4 = {{{i}, {indvars_iv_next356}}, {add_ln44_8_fu_853_p2}};
assign add_ln42_6_fu_930_p4 = {{{i}, {indvars_iv_next356}}, {add_ln44_10_reg_1777}};
assign add_ln42_7_fu_984_p4 = {{{i}, {indvars_iv_next356}}, {add_ln44_11_fu_966_p2}};
assign add_ln43_1_fu_668_p4 = {{{i}, {tmp2}}, {add_ln44_reg_1583}};
assign add_ln43_2_fu_721_p4 = {{{i}, {tmp2}}, {add_ln44_2_reg_1623}};
assign add_ln43_3_fu_776_p4 = {{{i}, {tmp2}}, {add_ln44_4_reg_1661}};
assign add_ln43_4_fu_829_p4 = {{{i}, {tmp2}}, {add_ln44_6_reg_1695}};
assign add_ln43_5_fu_884_p4 = {{{i}, {tmp2}}, {add_ln44_8_reg_1738}};
assign add_ln43_6_fu_942_p4 = {{{i}, {tmp2}}, {add_ln44_10_reg_1777}};
assign add_ln43_7_fu_1000_p4 = {{{i}, {tmp2}}, {add_ln44_11_reg_1825}};
assign add_ln44_10_fu_896_p2 = (k_1_reg_1562 + 4'd6);
assign add_ln44_11_fu_966_p2 = (k_1_reg_1562 + 4'd7);
assign add_ln44_12_fu_971_p4 = {{{i}, {j}}, {add_ln44_11_fu_966_p2}};
assign add_ln44_13_fu_1012_p2 = (zext_ln12_fu_997_p1 + 5'd8);
assign add_ln44_14_fu_1036_p4 = {{{i}, {tmp_1_fu_1027_p4}}, {or_ln44_fu_1022_p2}};
assign add_ln44_1_fu_623_p4 = {{{i}, {j}}, {add_ln44_fu_617_p2}};
assign add_ln44_2_fu_680_p2 = (k_1_reg_1562 + 4'd2);
assign add_ln44_3_fu_685_p4 = {{{i}, {j}}, {add_ln44_2_fu_680_p2}};
assign add_ln44_4_fu_745_p2 = (k_1_reg_1562 + 4'd3);
assign add_ln44_5_fu_750_p4 = {{{i}, {j}}, {add_ln44_4_fu_745_p2}};
assign add_ln44_6_fu_788_p2 = (k_1_reg_1562 + 4'd4);
assign add_ln44_7_fu_793_p4 = {{{i}, {j}}, {add_ln44_6_fu_788_p2}};
assign add_ln44_8_fu_853_p2 = (k_1_reg_1562 + 4'd5);
assign add_ln44_9_fu_858_p4 = {{{i}, {j}}, {add_ln44_8_fu_853_p2}};
assign add_ln44_fu_617_p2 = (ap_sig_allocacmp_k_1 + 4'd1);
assign add_ln44_s_fu_901_p4 = {{{i}, {j}}, {add_ln44_10_fu_896_p2}};
assign add_ln45_1_fu_643_p4 = {{{i}, {j}}, {add_ln45_fu_638_p2}};
assign add_ln45_fu_638_p2 = ($signed(k_1_reg_1562) + $signed(4'd15));
assign add_ln48_10_fu_1194_p2 = (add_ln48_9_reg_1656 + add_ln48_7_fu_1189_p2);
assign add_ln48_11_fu_1307_p2 = (reg_590 + reg_572);
assign add_ln48_12_fu_1199_p2 = ($signed(sum0_1_reg_1601) + $signed(orig_q0));
assign add_ln48_13_fu_1226_p2 = (add_ln48_12_reg_1953 + reg_556);
assign add_ln48_14_fu_806_p2 = ($signed(reg_567) + $signed(sum0_3_reg_1683));
assign add_ln48_15_fu_811_p2 = (add_ln48_14_fu_806_p2 + reg_556);
assign add_ln48_16_fu_1231_p2 = (add_ln48_15_reg_1713 + add_ln48_13_fu_1226_p2);
assign add_ln48_17_fu_1352_p2 = (reg_572 + reg_576);
assign add_ln48_18_fu_1236_p0 = reg_561;
assign add_ln48_18_fu_1236_p2 = ($signed(add_ln48_18_fu_1236_p0) + $signed(orig_q0));
assign add_ln48_19_fu_1270_p2 = (add_ln48_18_reg_1978 + reg_556);
assign add_ln48_1_fu_1151_p2 = (add_ln48_reg_1913 + reg_585);
assign add_ln48_20_fu_841_p1 = reg_567;
assign add_ln48_20_fu_841_p2 = ($signed(reg_556) + $signed(add_ln48_20_fu_841_p1));
assign add_ln48_21_fu_847_p2 = (add_ln48_20_fu_841_p2 + reg_580);
assign add_ln48_22_fu_1275_p2 = (add_ln48_21_reg_1728 + add_ln48_19_fu_1270_p2);
assign add_ln48_23_fu_1396_p2 = (reg_572 + mul_ln48_6_reg_1733);
assign add_ln48_24_fu_1280_p2 = ($signed(sum0_3_reg_1683) + $signed(orig_q0));
assign add_ln48_25_fu_1314_p2 = (add_ln48_24_reg_1998 + reg_556);
assign add_ln48_26_fu_914_p2 = ($signed(reg_580) + $signed(sum0_5_reg_1760));
assign add_ln48_27_fu_919_p2 = (add_ln48_26_fu_914_p2 + reg_556);
assign add_ln48_28_fu_1319_p2 = (add_ln48_27_reg_1796 + add_ln48_25_fu_1314_p2);
assign add_ln48_29_fu_1418_p2 = (reg_572 + mul_ln48_8_reg_1767);
assign add_ln48_2_fu_698_p2 = ($signed(sum0_1_reg_1601) + $signed(reg_561));
assign add_ln48_30_fu_1324_p0 = reg_567;
assign add_ln48_30_fu_1324_p2 = ($signed(add_ln48_30_fu_1324_p0) + $signed(orig_q0));
assign add_ln48_31_fu_1359_p2 = (add_ln48_30_reg_2018 + reg_556);
assign add_ln48_32_fu_954_p1 = reg_580;
assign add_ln48_32_fu_954_p2 = ($signed(reg_556) + $signed(add_ln48_32_fu_954_p1));
assign add_ln48_33_fu_960_p2 = (add_ln48_32_fu_954_p2 + reg_585);
assign add_ln48_34_fu_1364_p2 = (add_ln48_33_reg_1815 + add_ln48_31_fu_1359_p2);
assign add_ln48_35_fu_1434_p2 = (reg_572 + mul_ln48_10_reg_1820);
assign add_ln48_36_fu_1369_p2 = ($signed(sum0_5_reg_1760) + $signed(orig_q0));
assign add_ln48_37_fu_1402_p2 = (add_ln48_36_reg_2038 + reg_556);
assign add_ln48_38_fu_1078_p2 = ($signed(reg_585) + $signed(sum0_7_reg_1847));
assign add_ln48_39_fu_1083_p2 = (add_ln48_38_fu_1078_p2 + reg_556);
assign add_ln48_3_fu_703_p2 = (add_ln48_2_fu_698_p2 + reg_556);
assign add_ln48_40_fu_1407_p2 = (add_ln48_39_reg_1888 + add_ln48_37_fu_1402_p2);
assign add_ln48_41_fu_1440_p2 = (reg_572 + mul_ln48_12_reg_1853);
assign add_ln48_42_fu_1412_p0 = reg_580;
assign add_ln48_42_fu_1412_p2 = ($signed(add_ln48_42_fu_1412_p0) + $signed(orig_q0));
assign add_ln48_43_fu_1424_p2 = (add_ln48_42_reg_2058 + reg_556);
assign add_ln48_44_fu_1112_p2 = (reg_556 + reg_585);
assign add_ln48_45_fu_1118_p2 = (add_ln48_44_fu_1112_p2 + orig_load_38_reg_1858);
assign add_ln48_46_fu_1429_p2 = (add_ln48_45_reg_1903 + add_ln48_43_fu_1424_p2);
assign add_ln48_47_fu_1446_p2 = (reg_576 + mul_ln48_14_reg_1908);
assign add_ln48_4_fu_1156_p2 = (add_ln48_3_reg_1641 + add_ln48_1_fu_1151_p2);
assign add_ln48_5_fu_1264_p2 = (mul_ln48_1_reg_1968 + reg_590);
assign add_ln48_6_fu_1161_p0 = reg_556;
assign add_ln48_6_fu_1161_p2 = ($signed(add_ln48_6_fu_1161_p0) + $signed(orig_q0));
assign add_ln48_7_fu_1189_p2 = (add_ln48_6_reg_1933 + reg_556);
assign add_ln48_8_fu_733_p1 = reg_561;
assign add_ln48_8_fu_733_p2 = ($signed(reg_556) + $signed(add_ln48_8_fu_733_p1));
assign add_ln48_9_fu_739_p2 = (add_ln48_8_fu_733_p2 + reg_567);
assign add_ln48_fu_1123_p2 = (reg_585 + orig_q0);
assign add_ln4_fu_602_p4 = {{{i}, {tmp2}}, {ap_sig_allocacmp_k_1}};
assign add_ln_fu_1055_p4 = {{{i}, {j}}, {k_1_reg_1562}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
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
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage20;
assign ap_ready = ap_ready_sig;
assign icmp_ln38_fu_925_p2 = ((add_ln44_10_reg_1777 == 4'd15) ? 1'b1 : 1'b0);
assign or_ln44_fu_1022_p2 = (empty | add_ln44_13_fu_1012_p2);
assign orig_address0 = orig_address0_local;
assign orig_address1 = orig_address1_local;
assign orig_ce0 = orig_ce0_local;
assign orig_ce1 = orig_ce1_local;
assign sol_address0 = sol_address0_local;
assign sol_ce0 = sol_ce0_local;
assign sol_d0 = sol_d0_local;
assign sol_we0 = sol_we0_local;
assign tmp_1_fu_1027_p4 = {{j[4:1]}};
assign trunc_ln44_fu_1018_p1 = add_ln44_13_fu_1012_p2[3:0];
assign zext_ln12_fu_997_p1 = k_1_reg_1562;
assign zext_ln39_fu_1062_p1 = add_ln_fu_1055_p4;
assign zext_ln40_1_fu_1135_p1 = add_ln40_1_fu_1129_p3;
assign zext_ln40_2_fu_1173_p1 = add_ln40_2_fu_1167_p3;
assign zext_ln40_3_fu_1210_p1 = add_ln40_3_fu_1204_p3;
assign zext_ln40_4_fu_1248_p1 = add_ln40_4_fu_1242_p3;
assign zext_ln40_5_fu_1291_p1 = add_ln40_5_fu_1285_p3;
assign zext_ln40_6_fu_1336_p1 = add_ln40_6_fu_1330_p3;
assign zext_ln40_7_fu_1380_p1 = add_ln40_7_fu_1374_p3;
assign zext_ln40_fu_1073_p1 = add_ln1_fu_1067_p3;
assign zext_ln41_1_fu_1146_p1 = add_ln41_1_fu_1140_p3;
assign zext_ln41_2_fu_1184_p1 = add_ln41_2_fu_1178_p3;
assign zext_ln41_3_fu_1221_p1 = add_ln41_3_fu_1215_p3;
assign zext_ln41_4_fu_1259_p1 = add_ln41_4_fu_1253_p3;
assign zext_ln41_5_fu_1302_p1 = add_ln41_5_fu_1296_p3;
assign zext_ln41_6_fu_1347_p1 = add_ln41_6_fu_1341_p3;
assign zext_ln41_7_fu_1391_p1 = add_ln41_7_fu_1385_p3;
assign zext_ln41_fu_1095_p1 = add_ln2_fu_1089_p3;
assign zext_ln42_1_fu_663_p1 = add_ln42_1_fu_656_p4;
assign zext_ln42_2_fu_716_p1 = add_ln42_2_fu_709_p4;
assign zext_ln42_3_fu_771_p1 = add_ln42_3_fu_763_p4;
assign zext_ln42_4_fu_824_p1 = add_ln42_4_fu_817_p4;
assign zext_ln42_5_fu_879_p1 = add_ln42_5_fu_871_p4;
assign zext_ln42_6_fu_937_p1 = add_ln42_6_fu_930_p4;
assign zext_ln42_7_fu_992_p1 = add_ln42_7_fu_984_p4;
assign zext_ln42_fu_1107_p1 = add_ln3_fu_1100_p4;
assign zext_ln43_1_fu_675_p1 = add_ln43_1_fu_668_p4;
assign zext_ln43_2_fu_728_p1 = add_ln43_2_fu_721_p4;
assign zext_ln43_3_fu_783_p1 = add_ln43_3_fu_776_p4;
assign zext_ln43_4_fu_836_p1 = add_ln43_4_fu_829_p4;
assign zext_ln43_5_fu_891_p1 = add_ln43_5_fu_884_p4;
assign zext_ln43_6_fu_949_p1 = add_ln43_6_fu_942_p4;
assign zext_ln43_7_fu_1007_p1 = add_ln43_7_fu_1000_p4;
assign zext_ln43_fu_612_p1 = add_ln4_fu_602_p4;
assign zext_ln44_1_fu_693_p1 = add_ln44_3_fu_685_p4;
assign zext_ln44_2_fu_758_p1 = add_ln44_5_fu_750_p4;
assign zext_ln44_3_fu_801_p1 = add_ln44_7_fu_793_p4;
assign zext_ln44_4_fu_866_p1 = add_ln44_9_fu_858_p4;
assign zext_ln44_5_fu_909_p1 = add_ln44_s_fu_901_p4;
assign zext_ln44_6_fu_979_p1 = add_ln44_12_fu_971_p4;
assign zext_ln44_7_fu_1045_p1 = add_ln44_14_fu_1036_p4;
assign zext_ln44_fu_633_p1 = add_ln44_1_fu_623_p4;
assign zext_ln45_fu_651_p1 = add_ln45_1_fu_643_p4;
always @ (posedge ap_clk) begin
    zext_ln44_reg_1591[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_1631[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln44_2_reg_1668[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln44_3_reg_1703[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln44_4_reg_1745[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln44_5_reg_1786[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln44_6_reg_1832[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln39_reg_1873[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 
