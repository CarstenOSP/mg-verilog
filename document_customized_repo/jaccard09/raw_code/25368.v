module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,q_in,level_address0,level_ce0,level_we0,level_d0,level_q0,zext_ln18,tmp_end,edges_address0,edges_ce0,edges_q0,edges_address1,edges_ce1,edges_q1,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0,queue_address0,queue_ce0,queue_we0,queue_d0,q_in_13_out,q_in_13_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] empty;
input  [63:0] q_in;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [7:0] zext_ln18;
input  [63:0] tmp_end;
output  [11:0] edges_address0;
output   edges_ce0;
input  [63:0] edges_q0;
output  [11:0] edges_address1;
output   edges_ce1;
input  [63:0] edges_q1;
output  [3:0] level_counts_address0;
output   level_counts_ce0;
output   level_counts_we0;
output  [63:0] level_counts_d0;
input  [63:0] level_counts_q0;
output  [7:0] queue_address0;
output   queue_ce0;
output   queue_we0;
output  [7:0] queue_d0;
output  [63:0] q_in_13_out;
output   q_in_13_out_ap_vld;
reg ap_idle;
reg q_in_13_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_subdone;
reg   [0:0] icmp_ln39_reg_1251;
reg    ap_condition_exit_pp0_iter0_stage27;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] q_in_3_reg_406;
reg   [63:0] q_in_5_reg_418;
reg   [63:0] q_in_7_reg_432;
reg   [63:0] q_in_9_reg_446;
reg   [63:0] q_in_11_reg_460;
reg   [63:0] q_in_13_reg_474;
reg   [63:0] q_in_15_reg_488;
reg   [7:0] reg_521;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_525;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] zext_ln18_cast_fu_543_p1;
reg   [63:0] zext_ln18_cast_reg_1104;
reg   [63:0] e_1_reg_1109;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [7:0] level_addr_reg_1121;
wire   [0:0] icmp_ln40_fu_566_p2;
reg   [0:0] icmp_ln40_reg_1126;
wire   [7:0] trunc_ln41_fu_571_p1;
reg   [7:0] trunc_ln41_reg_1135;
reg   [7:0] level_addr_1_reg_1140;
wire   [0:0] icmp_ln40_1_fu_581_p2;
reg   [0:0] icmp_ln40_1_reg_1145;
wire   [0:0] icmp_ln40_2_fu_592_p2;
reg   [0:0] icmp_ln40_2_reg_1154;
reg   [63:0] q_in_18_reg_1163;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] grp_fu_515_p2;
reg   [0:0] icmp_ln44_reg_1170;
wire   [0:0] icmp_ln48_fu_600_p2;
reg   [0:0] icmp_ln48_reg_1174;
wire   [7:0] trunc_ln41_1_fu_606_p1;
reg   [7:0] trunc_ln41_1_reg_1179;
reg   [7:0] level_addr_2_reg_1184;
wire   [7:0] trunc_ln41_2_fu_610_p1;
reg   [7:0] trunc_ln41_2_reg_1189;
reg   [7:0] level_addr_3_reg_1194;
wire   [0:0] icmp_ln40_3_fu_620_p2;
reg   [0:0] icmp_ln40_3_reg_1199;
wire   [0:0] icmp_ln40_4_fu_631_p2;
reg   [0:0] icmp_ln40_4_reg_1208;
wire   [63:0] zext_ln16_fu_666_p1;
wire   [7:0] trunc_ln41_3_fu_670_p1;
reg   [7:0] trunc_ln41_3_reg_1222;
reg   [7:0] level_addr_4_reg_1227;
wire   [7:0] trunc_ln41_4_fu_674_p1;
reg   [7:0] trunc_ln41_4_reg_1232;
reg   [7:0] level_addr_5_reg_1237;
wire   [0:0] icmp_ln40_5_fu_684_p2;
reg   [0:0] icmp_ln40_5_reg_1242;
wire   [0:0] icmp_ln39_fu_713_p2;
wire   [0:0] icmp_ln40_6_fu_719_p2;
reg   [0:0] icmp_ln40_6_reg_1255;
reg   [3:0] level_counts_addr_reg_1264;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] trunc_ln51_fu_740_p1;
reg   [7:0] trunc_ln51_reg_1269;
wire   [7:0] trunc_ln41_5_fu_744_p1;
reg   [7:0] trunc_ln41_5_reg_1275;
reg   [7:0] level_addr_6_reg_1280;
wire   [7:0] trunc_ln41_6_fu_748_p1;
reg   [7:0] trunc_ln41_6_reg_1285;
reg   [7:0] level_addr_7_reg_1290;
wire   [0:0] icmp_ln40_7_fu_758_p2;
reg   [0:0] icmp_ln40_7_reg_1295;
wire   [7:0] trunc_ln41_7_fu_763_p1;
reg   [7:0] trunc_ln41_7_reg_1304;
reg   [7:0] level_addr_8_reg_1309;
reg   [0:0] icmp_ln44_1_reg_1314;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln48_1_fu_767_p2;
reg   [0:0] icmp_ln48_1_reg_1318;
wire   [63:0] zext_ln16_1_fu_805_p1;
reg   [3:0] level_counts_addr_1_reg_1328;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [7:0] trunc_ln51_1_fu_814_p1;
reg   [7:0] trunc_ln51_1_reg_1333;
reg   [0:0] icmp_ln44_2_reg_1339;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [0:0] icmp_ln48_2_fu_818_p2;
reg   [0:0] icmp_ln48_2_reg_1343;
wire   [63:0] zext_ln16_2_fu_846_p1;
reg   [3:0] level_counts_addr_2_reg_1353;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [7:0] trunc_ln51_2_fu_855_p1;
reg   [7:0] trunc_ln51_2_reg_1358;
reg   [0:0] icmp_ln44_3_reg_1364;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [0:0] icmp_ln48_3_fu_859_p2;
reg   [0:0] icmp_ln48_3_reg_1368;
wire   [63:0] zext_ln16_3_fu_887_p1;
reg   [3:0] level_counts_addr_3_reg_1378;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [7:0] trunc_ln51_3_fu_896_p1;
reg   [7:0] trunc_ln51_3_reg_1383;
reg   [0:0] icmp_ln44_4_reg_1389;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [0:0] icmp_ln48_4_fu_900_p2;
reg   [0:0] icmp_ln48_4_reg_1393;
wire   [63:0] zext_ln16_4_fu_928_p1;
reg   [3:0] level_counts_addr_4_reg_1403;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [7:0] trunc_ln51_4_fu_937_p1;
reg   [7:0] trunc_ln51_4_reg_1408;
reg   [0:0] icmp_ln44_5_reg_1414;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire   [0:0] icmp_ln48_5_fu_941_p2;
reg   [0:0] icmp_ln48_5_reg_1418;
wire   [63:0] zext_ln16_5_fu_969_p1;
reg   [3:0] level_counts_addr_5_reg_1428;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [7:0] trunc_ln51_5_fu_978_p1;
reg   [7:0] trunc_ln51_5_reg_1433;
reg   [0:0] icmp_ln44_6_reg_1439;
wire    ap_block_pp0_stage27_11001;
wire   [0:0] icmp_ln48_6_fu_982_p2;
reg   [0:0] icmp_ln48_6_reg_1443;
wire   [63:0] zext_ln16_6_fu_1010_p1;
reg   [3:0] level_counts_addr_6_reg_1453;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [7:0] trunc_ln51_6_fu_1019_p1;
reg   [7:0] trunc_ln51_6_reg_1458;
reg   [0:0] icmp_ln44_7_reg_1464;
wire    ap_block_pp0_stage31_11001;
wire   [7:0] select_ln48_7_fu_1034_p3;
reg   [7:0] select_ln48_7_reg_1468;
wire   [63:0] zext_ln16_7_fu_1047_p1;
reg   [3:0] level_counts_addr_7_reg_1478;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_3_reg_406;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_5_reg_418;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_7_reg_432;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_9_reg_446;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_11_reg_460;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_13_reg_474;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_15_reg_488;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_17_reg_502;
reg   [63:0] ap_phi_reg_pp0_iter1_q_in_17_reg_502;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire   [63:0] e_2_fu_575_p2;
wire   [63:0] e_3_fu_586_p2;
wire    ap_block_pp0_stage3;
wire   [63:0] e_4_fu_614_p2;
wire   [63:0] e_5_fu_625_p2;
wire   [63:0] zext_ln48_fu_655_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] e_6_fu_678_p2;
wire   [63:0] e_7_fu_689_p2;
wire   [63:0] zext_ln47_fu_735_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] e_8_fu_752_p2;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln48_1_fu_795_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln47_1_fu_809_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln48_2_fu_836_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln47_2_fu_850_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln48_3_fu_877_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln47_3_fu_891_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln48_4_fu_918_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] zext_ln47_4_fu_932_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln48_5_fu_959_p1;
wire    ap_block_pp0_stage24;
wire   [63:0] zext_ln47_5_fu_973_p1;
wire    ap_block_pp0_stage25;
wire   [63:0] zext_ln48_6_fu_1000_p1;
wire    ap_block_pp0_stage28;
wire   [63:0] zext_ln47_6_fu_1014_p1;
wire    ap_block_pp0_stage29;
wire   [63:0] zext_ln48_7_fu_1051_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln47_7_fu_1060_p1;
wire    ap_block_pp0_stage27;
reg   [63:0] e_fu_82;
wire   [63:0] e_9_fu_773_p2;
wire    ap_loop_init;
reg   [31:0] i_fu_86;
wire   [31:0] i_4_fu_724_p2;
reg   [63:0] q_in_1_fu_90;
reg    edges_ce0_local;
reg   [11:0] edges_address0_local;
reg    edges_ce1_local;
reg   [11:0] edges_address1_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire   [7:0] grp_fu_529_p2;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage18;
wire    ap_block_pp0_stage19;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage23;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage31;
reg    queue_we0_local;
reg   [7:0] queue_d0_local;
reg    queue_ce0_local;
reg   [7:0] queue_address0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    level_counts_we0_local;
wire   [63:0] grp_fu_536_p2;
wire   [7:0] trunc_ln9_fu_639_p1;
wire   [7:0] add_ln48_fu_642_p2;
wire   [7:0] select_ln48_fu_648_p3;
wire   [7:0] q_in_19_fu_660_p2;
wire   [28:0] tmp_fu_695_p4;
wire   [31:0] i_1_fu_705_p3;
wire   [7:0] add_ln48_2_fu_783_p2;
wire   [7:0] select_ln48_1_fu_788_p3;
wire   [7:0] q_in_20_fu_800_p2;
wire   [7:0] add_ln48_4_fu_824_p2;
wire   [7:0] select_ln48_2_fu_829_p3;
wire   [7:0] q_in_21_fu_841_p2;
wire   [7:0] add_ln48_6_fu_865_p2;
wire   [7:0] select_ln48_3_fu_870_p3;
wire   [7:0] q_in_22_fu_882_p2;
wire   [7:0] add_ln48_8_fu_906_p2;
wire   [7:0] select_ln48_4_fu_911_p3;
wire   [7:0] q_in_23_fu_923_p2;
wire   [7:0] add_ln48_10_fu_947_p2;
wire   [7:0] select_ln48_5_fu_952_p3;
wire   [7:0] q_in_24_fu_964_p2;
wire   [7:0] add_ln48_12_fu_988_p2;
wire   [7:0] select_ln48_6_fu_993_p3;
wire   [7:0] q_in_25_fu_1005_p2;
wire   [0:0] icmp_ln48_7_fu_1023_p2;
wire   [7:0] add_ln48_14_fu_1029_p2;
wire   [7:0] q_in_26_fu_1042_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [31:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
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
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1626;
reg    ap_condition_1630;
reg    ap_condition_1635;
reg    ap_condition_1640;
reg    ap_condition_1644;
reg    ap_condition_1649;
reg    ap_condition_1655;
reg    ap_condition_1659;
reg    ap_condition_1664;
reg    ap_condition_1669;
reg    ap_condition_1673;
reg    ap_condition_1678;
reg    ap_condition_1683;
reg    ap_condition_1687;
reg    ap_condition_1692;
reg    ap_condition_1697;
reg    ap_condition_1701;
reg    ap_condition_1706;
reg    ap_condition_732;
reg    ap_condition_737;
reg    ap_condition_621;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 e_fu_82 = 64'd0;
#0 i_fu_86 = 32'd0;
#0 q_in_1_fu_90 = 64'd0;
#0 ap_done_reg = 1'b0;
end
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage27),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage27_subdone) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage27)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1635)) begin
            ap_phi_reg_pp0_iter0_q_in_11_reg_460 <= q_in_9_reg_446;
        end else if ((1'b1 == ap_condition_1630)) begin
            ap_phi_reg_pp0_iter0_q_in_11_reg_460 <= ap_phi_reg_pp0_iter0_q_in_9_reg_446;
        end else if ((1'b1 == ap_condition_1626)) begin
            ap_phi_reg_pp0_iter0_q_in_11_reg_460 <= zext_ln16_4_fu_928_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1649)) begin
            ap_phi_reg_pp0_iter0_q_in_13_reg_474 <= q_in_11_reg_460;
        end else if ((1'b1 == ap_condition_1644)) begin
            ap_phi_reg_pp0_iter0_q_in_13_reg_474 <= ap_phi_reg_pp0_iter0_q_in_11_reg_460;
        end else if ((1'b1 == ap_condition_1640)) begin
            ap_phi_reg_pp0_iter0_q_in_13_reg_474 <= zext_ln16_5_fu_969_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_1251 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1664)) begin
            ap_phi_reg_pp0_iter0_q_in_15_reg_488 <= q_in_13_reg_474;
        end else if ((1'b1 == ap_condition_1659)) begin
            ap_phi_reg_pp0_iter0_q_in_15_reg_488 <= ap_phi_reg_pp0_iter0_q_in_13_reg_474;
        end else if ((1'b1 == ap_condition_1655)) begin
            ap_phi_reg_pp0_iter0_q_in_15_reg_488 <= zext_ln16_6_fu_1010_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_515_p2 == 1'd0) & (icmp_ln40_reg_1126 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1126 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_406 <= q_in_1_fu_90;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1170 == 1'd1) & (icmp_ln40_reg_1126 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_406 <= zext_ln16_fu_666_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1678)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_418 <= q_in_3_reg_406;
        end else if ((1'b1 == ap_condition_1673)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_418 <= ap_phi_reg_pp0_iter0_q_in_3_reg_406;
        end else if ((1'b1 == ap_condition_1669)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_418 <= zext_ln16_1_fu_805_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1692)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_432 <= q_in_5_reg_418;
        end else if ((1'b1 == ap_condition_1687)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_432 <= ap_phi_reg_pp0_iter0_q_in_5_reg_418;
        end else if ((1'b1 == ap_condition_1683)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_432 <= zext_ln16_2_fu_846_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1706)) begin
            ap_phi_reg_pp0_iter0_q_in_9_reg_446 <= q_in_7_reg_432;
        end else if ((1'b1 == ap_condition_1701)) begin
            ap_phi_reg_pp0_iter0_q_in_9_reg_446 <= ap_phi_reg_pp0_iter0_q_in_7_reg_432;
        end else if ((1'b1 == ap_condition_1697)) begin
            ap_phi_reg_pp0_iter0_q_in_9_reg_446 <= zext_ln16_3_fu_887_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_621)) begin
        if ((1'b1 == ap_condition_737)) begin
            ap_phi_reg_pp0_iter1_q_in_17_reg_502 <= q_in_15_reg_488;
        end else if ((1'b1 == ap_condition_732)) begin
            ap_phi_reg_pp0_iter1_q_in_17_reg_502 <= zext_ln16_7_fu_1047_p1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_q_in_17_reg_502 <= ap_phi_reg_pp0_iter0_q_in_17_reg_502;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_fu_82 <= empty;
    end else if (((icmp_ln39_reg_1251 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        e_fu_82 <= e_9_fu_773_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_86 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln39_fu_713_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_fu_86 <= i_4_fu_724_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            q_in_1_fu_90 <= q_in;
        end else if (((icmp_ln39_reg_1251 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            q_in_1_fu_90 <= ap_phi_reg_pp0_iter1_q_in_17_reg_502;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_1251 == 1'd1) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_7_reg_1295 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        ap_phi_reg_pp0_iter0_q_in_17_reg_502 <= ap_phi_reg_pp0_iter0_q_in_15_reg_488;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_1_reg_1109 <= e_fu_82;
        icmp_ln40_reg_1126 <= icmp_ln40_fu_566_p2;
        level_addr_reg_1121 <= zext_ln18_cast_reg_1104;
        level_counts_addr_7_reg_1478 <= zext_ln47_7_fu_1060_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln39_reg_1251 <= icmp_ln39_fu_713_p2;
        icmp_ln40_5_reg_1242 <= icmp_ln40_5_fu_684_p2;
        icmp_ln40_6_reg_1255 <= icmp_ln40_6_fu_719_p2;
        level_addr_4_reg_1227 <= edges_q0;
        level_addr_5_reg_1237 <= edges_q1;
        trunc_ln41_3_reg_1222 <= trunc_ln41_3_fu_670_p1;
        trunc_ln41_4_reg_1232 <= trunc_ln41_4_fu_674_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln40_1_reg_1145 <= icmp_ln40_1_fu_581_p2;
        icmp_ln40_2_reg_1154 <= icmp_ln40_2_fu_592_p2;
        level_addr_1_reg_1140 <= edges_q0;
        trunc_ln41_reg_1135 <= trunc_ln41_fu_571_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln40_3_reg_1199 <= icmp_ln40_3_fu_620_p2;
        icmp_ln40_4_reg_1208 <= icmp_ln40_4_fu_631_p2;
        icmp_ln48_reg_1174 <= icmp_ln48_fu_600_p2;
        level_addr_2_reg_1184 <= edges_q1;
        level_addr_3_reg_1194 <= edges_q0;
        q_in_18_reg_1163 <= q_in_1_fu_90;
        trunc_ln41_1_reg_1179 <= trunc_ln41_1_fu_606_p1;
        trunc_ln41_2_reg_1189 <= trunc_ln41_2_fu_610_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln40_7_reg_1295 <= icmp_ln40_7_fu_758_p2;
        level_addr_6_reg_1280 <= edges_q0;
        level_addr_7_reg_1290 <= edges_q1;
        level_counts_addr_reg_1264 <= zext_ln47_fu_735_p1;
        trunc_ln41_5_reg_1275 <= trunc_ln41_5_fu_744_p1;
        trunc_ln41_6_reg_1285 <= trunc_ln41_6_fu_748_p1;
        trunc_ln51_reg_1269 <= trunc_ln51_fu_740_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln44_1_reg_1314 <= grp_fu_515_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        icmp_ln44_2_reg_1339 <= grp_fu_515_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        icmp_ln44_3_reg_1364 <= grp_fu_515_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        icmp_ln44_4_reg_1389 <= grp_fu_515_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        icmp_ln44_5_reg_1414 <= grp_fu_515_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        icmp_ln44_6_reg_1439 <= grp_fu_515_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        icmp_ln44_7_reg_1464 <= grp_fu_515_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln44_reg_1170 <= grp_fu_515_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln48_1_reg_1318 <= icmp_ln48_1_fu_767_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        icmp_ln48_2_reg_1343 <= icmp_ln48_2_fu_818_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        icmp_ln48_3_reg_1368 <= icmp_ln48_3_fu_859_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        icmp_ln48_4_reg_1393 <= icmp_ln48_4_fu_900_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        icmp_ln48_5_reg_1418 <= icmp_ln48_5_fu_941_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        icmp_ln48_6_reg_1443 <= icmp_ln48_6_fu_982_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_addr_8_reg_1309 <= edges_q1;
        trunc_ln41_7_reg_1304 <= trunc_ln41_7_fu_763_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        level_counts_addr_1_reg_1328 <= zext_ln47_1_fu_809_p1;
        trunc_ln51_1_reg_1333 <= trunc_ln51_1_fu_814_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        level_counts_addr_2_reg_1353 <= zext_ln47_2_fu_850_p1;
        trunc_ln51_2_reg_1358 <= trunc_ln51_2_fu_855_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        level_counts_addr_3_reg_1378 <= zext_ln47_3_fu_891_p1;
        trunc_ln51_3_reg_1383 <= trunc_ln51_3_fu_896_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        level_counts_addr_4_reg_1403 <= zext_ln47_4_fu_932_p1;
        trunc_ln51_4_reg_1408 <= trunc_ln51_4_fu_937_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        level_counts_addr_5_reg_1428 <= zext_ln47_5_fu_973_p1;
        trunc_ln51_5_reg_1433 <= trunc_ln51_5_fu_978_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        level_counts_addr_6_reg_1453 <= zext_ln47_6_fu_1014_p1;
        trunc_ln51_6_reg_1458 <= trunc_ln51_6_fu_1019_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        q_in_11_reg_460 <= ap_phi_reg_pp0_iter0_q_in_11_reg_460;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        q_in_13_reg_474 <= ap_phi_reg_pp0_iter0_q_in_13_reg_474;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        q_in_15_reg_488 <= ap_phi_reg_pp0_iter0_q_in_15_reg_488;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        q_in_3_reg_406 <= ap_phi_reg_pp0_iter0_q_in_3_reg_406;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        q_in_5_reg_418 <= ap_phi_reg_pp0_iter0_q_in_5_reg_418;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        q_in_7_reg_432 <= ap_phi_reg_pp0_iter0_q_in_7_reg_432;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        q_in_9_reg_446 <= ap_phi_reg_pp0_iter0_q_in_9_reg_446;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_521 <= level_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_525 <= level_counts_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        select_ln48_7_reg_1468 <= select_ln48_7_fu_1034_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln18_cast_reg_1104[7 : 0] <= zext_ln18_cast_fu_543_p1[7 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_1251 == 1'd0) & (1'b0 == ap_block_pp0_stage27_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        ap_condition_exit_pp0_iter0_stage27 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage27 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage27_subdone) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            edges_address0_local = e_6_fu_678_p2;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_address0_local = e_4_fu_614_p2;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_address0_local = e_3_fu_586_p2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_address0_local = e_fu_82;
        end else begin
            edges_address0_local = 'bx;
        end
    end else begin
        edges_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            edges_address1_local = e_8_fu_752_p2;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            edges_address1_local = e_7_fu_689_p2;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_address1_local = e_5_fu_625_p2;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_address1_local = e_2_fu_575_p2;
        end else begin
            edges_address1_local = 'bx;
        end
    end else begin
        edges_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        edges_ce0_local = 1'b1;
    end else begin
        edges_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        edges_ce1_local = 1'b1;
    end else begin
        edges_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)))) begin
        level_address0_local = level_addr_8_reg_1309;
    end else if ((((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)))) begin
        level_address0_local = level_addr_7_reg_1290;
    end else if ((((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        level_address0_local = level_addr_6_reg_1280;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        level_address0_local = level_addr_5_reg_1237;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        level_address0_local = level_addr_4_reg_1227;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        level_address0_local = level_addr_3_reg_1194;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        level_address0_local = level_addr_2_reg_1184;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_address0_local = level_addr_1_reg_1140;
    end else if ((((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        level_address0_local = level_addr_reg_1121;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = edges_q0;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_counts_address0_local = level_counts_addr_7_reg_1478;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        level_counts_address0_local = zext_ln47_7_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        level_counts_address0_local = level_counts_addr_6_reg_1453;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        level_counts_address0_local = zext_ln47_6_fu_1014_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        level_counts_address0_local = level_counts_addr_5_reg_1428;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        level_counts_address0_local = zext_ln47_5_fu_973_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        level_counts_address0_local = level_counts_addr_4_reg_1403;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        level_counts_address0_local = zext_ln47_4_fu_932_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        level_counts_address0_local = level_counts_addr_3_reg_1378;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        level_counts_address0_local = zext_ln47_3_fu_891_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        level_counts_address0_local = level_counts_addr_2_reg_1353;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        level_counts_address0_local = zext_ln47_2_fu_850_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        level_counts_address0_local = level_counts_addr_1_reg_1328;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        level_counts_address0_local = zext_ln47_1_fu_809_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        level_counts_address0_local = level_counts_addr_reg_1264;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_counts_address0_local = zext_ln47_fu_735_p1;
    end else begin
        level_counts_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln39_reg_1251 == 1'd1) & (1'b0 == ap_block_pp0_stage31_11001) & (icmp_ln44_6_reg_1439 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_6_reg_1255 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((icmp_ln39_reg_1251 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln44_7_reg_1464 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_7_reg_1295 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage27_11001) & (icmp_ln44_5_reg_1414 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_5_reg_1242 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage23_11001) & (icmp_ln44_4_reg_1389 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_4_reg_1208 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_3_reg_1364 == 1'd1) & (icmp_ln40_3_reg_1199 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_2_reg_1339== 1'd1) & (icmp_ln40_2_reg_1154 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_1_reg_1314 == 1'd1) & (icmp_ln40_1_reg_1145 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1170 == 1'd1) & (icmp_ln40_reg_1126 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln39_reg_1251 == 1'd1) & (1'b0 == ap_block_pp0_stage29_11001) & (icmp_ln44_6_reg_1439 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_6_reg_1255 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((icmp_ln39_reg_1251 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln44_7_reg_1464 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_7_reg_1295 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25_11001) & (icmp_ln44_5_reg_1414 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_5_reg_1242 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage21_11001) & (icmp_ln44_4_reg_1389 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_4_reg_1208 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_3_reg_1364 == 1'd1) & (icmp_ln40_3_reg_1199 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_2_reg_1339== 1'd1) & (icmp_ln40_2_reg_1154 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_1_reg_1314 == 1'd1) & (icmp_ln40_1_reg_1145 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1170 == 1'd1) & (icmp_ln40_reg_1126 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln39_reg_1251 == 1'd0) & (1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        q_in_13_out_ap_vld = 1'b1;
    end else begin
        q_in_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        queue_address0_local = zext_ln48_7_fu_1051_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        queue_address0_local = zext_ln48_6_fu_1000_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        queue_address0_local = zext_ln48_5_fu_959_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        queue_address0_local = zext_ln48_4_fu_918_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        queue_address0_local = zext_ln48_3_fu_877_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        queue_address0_local = zext_ln48_2_fu_836_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        queue_address0_local = zext_ln48_1_fu_795_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        queue_address0_local = zext_ln48_fu_655_p1;
    end else begin
        queue_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        queue_ce0_local = 1'b1;
    end else begin
        queue_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        queue_d0_local = trunc_ln41_7_reg_1304;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        queue_d0_local = trunc_ln41_6_reg_1285;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        queue_d0_local = trunc_ln41_5_reg_1275;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        queue_d0_local = trunc_ln41_4_reg_1232;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        queue_d0_local = trunc_ln41_3_reg_1222;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        queue_d0_local = trunc_ln41_2_reg_1189;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        queue_d0_local = trunc_ln41_1_reg_1179;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        queue_d0_local = trunc_ln41_reg_1135;
    end else begin
        queue_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln39_reg_1251 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln44_7_reg_1464 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_7_reg_1295 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln39_reg_1251 == 1'd1) & (1'b0 == ap_block_pp0_stage28_11001) & (icmp_ln44_6_reg_1439 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_6_reg_1255 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage24_11001) & (icmp_ln44_5_reg_1414 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_5_reg_1242 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage20_11001) & (icmp_ln44_4_reg_1389 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_4_reg_1208 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_3_reg_1364 == 1'd1) & (icmp_ln40_3_reg_1199 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_2_reg_1339== 1'd1) & (icmp_ln40_2_reg_1154 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_1_reg_1314 == 1'd1) & (icmp_ln40_1_reg_1145 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1170 == 1'd1) & (icmp_ln40_reg_1126 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        queue_we0_local = 1'b1;
    end else begin
        queue_we0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage27)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln48_10_fu_947_p2 = ($signed(trunc_ln51_4_reg_1408) + $signed(8'd255));
assign add_ln48_12_fu_988_p2 = ($signed(trunc_ln51_5_reg_1433) + $signed(8'd255));
assign add_ln48_14_fu_1029_p2 = ($signed(trunc_ln51_6_reg_1458) + $signed(8'd255));
assign add_ln48_2_fu_783_p2 = ($signed(trunc_ln51_reg_1269) + $signed(8'd255));
assign add_ln48_4_fu_824_p2 = ($signed(trunc_ln51_1_reg_1333) + $signed(8'd255));
assign add_ln48_6_fu_865_p2 = ($signed(trunc_ln51_2_reg_1358) + $signed(8'd255));
assign add_ln48_8_fu_906_p2 = ($signed(trunc_ln51_3_reg_1383) + $signed(8'd255));
assign add_ln48_fu_642_p2 = ($signed(trunc_ln9_fu_639_p1) + $signed(8'd255));
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
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
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
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
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
always @ (*) begin
    ap_condition_1626 = ((1'b0 == ap_block_pp0_stage20_11001) & (icmp_ln44_4_reg_1389 == 1'd1) & (icmp_ln40_4_reg_1208 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20));
end
always @ (*) begin
    ap_condition_1630 = ((1'b0 == ap_block_pp0_stage17_11001) & (icmp_ln40_4_reg_1208 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage17));
end
always @ (*) begin
    ap_condition_1635 = ((1'b0 == ap_block_pp0_stage19_11001) & (icmp_ln40_4_reg_1208 == 1'd1) & (grp_fu_515_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage19));
end
always @ (*) begin
    ap_condition_1640 = ((1'b0 == ap_block_pp0_stage24_11001) & (icmp_ln44_5_reg_1414 == 1'd1) & (icmp_ln40_5_reg_1242 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage24));
end
always @ (*) begin
    ap_condition_1644 = ((1'b0 == ap_block_pp0_stage21_11001) & (icmp_ln40_5_reg_1242 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage21));
end
always @ (*) begin
    ap_condition_1649 = ((1'b0 == ap_block_pp0_stage23_11001) & (icmp_ln40_5_reg_1242 == 1'd1) & (grp_fu_515_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage23));
end
always @ (*) begin
    ap_condition_1655 = ((1'b0 == ap_block_pp0_stage28_11001) & (icmp_ln44_6_reg_1439 == 1'd1) & (icmp_ln40_6_reg_1255 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage28));
end
always @ (*) begin
    ap_condition_1659 = ((1'b0 == ap_block_pp0_stage25_11001) & (icmp_ln40_6_reg_1255 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage25));
end
always @ (*) begin
    ap_condition_1664 = ((1'b0 == ap_block_pp0_stage27_11001) & (icmp_ln40_6_reg_1255 == 1'd1) & (grp_fu_515_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage27));
end
always @ (*) begin
    ap_condition_1669 = ((1'b0 == ap_block_pp0_stage8_11001) & (icmp_ln44_1_reg_1314 == 1'd1) & (icmp_ln40_1_reg_1145 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8));
end
always @ (*) begin
    ap_condition_1673 = ((1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln40_1_reg_1145 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_1678 = ((1'b0 == ap_block_pp0_stage7_11001) & (grp_fu_515_p2 == 1'd0) & (icmp_ln40_1_reg_1145 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_1683 = ((1'b0 == ap_block_pp0_stage12_11001) & (icmp_ln44_2_reg_1339 == 1'd1) & (icmp_ln40_2_reg_1154 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12));
end
always @ (*) begin
    ap_condition_1687 = ((1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln40_2_reg_1154 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9));
end
always @ (*) begin
    ap_condition_1692 = ((1'b0 == ap_block_pp0_stage11_11001) & (grp_fu_515_p2 == 1'd0) & (icmp_ln40_2_reg_1154 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11));
end
always @ (*) begin
    ap_condition_1697 = ((1'b0 == ap_block_pp0_stage16_11001) & (icmp_ln44_3_reg_1364 == 1'd1) & (icmp_ln40_3_reg_1199 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16));
end
always @ (*) begin
    ap_condition_1701 = ((1'b0 == ap_block_pp0_stage13_11001) & (icmp_ln40_3_reg_1199 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13));
end
always @ (*) begin
    ap_condition_1706 = ((1'b0 == ap_block_pp0_stage15_11001) & (icmp_ln40_3_reg_1199 == 1'd1) & (grp_fu_515_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage15));
end
always @ (*) begin
    ap_condition_621 = ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31));
end
always @ (*) begin
    ap_condition_732 = ((icmp_ln39_reg_1251 == 1'd1) & (icmp_ln40_7_reg_1295 == 1'd1) & (grp_fu_515_p2 == 1'd1));
end
always @ (*) begin
    ap_condition_737 = ((icmp_ln39_reg_1251 == 1'd1) & (icmp_ln40_7_reg_1295 == 1'd1) & (grp_fu_515_p2 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage27;
assign ap_ready = ap_ready_sig;
assign e_2_fu_575_p2 = (e_1_reg_1109 + 64'd1);
assign e_3_fu_586_p2 = (e_1_reg_1109 + 64'd2);
assign e_4_fu_614_p2 = (e_1_reg_1109 + 64'd3);
assign e_5_fu_625_p2 = (e_1_reg_1109 + 64'd4);
assign e_6_fu_678_p2 = (e_1_reg_1109 + 64'd5);
assign e_7_fu_689_p2 = (e_1_reg_1109 + 64'd6);
assign e_8_fu_752_p2 = (e_1_reg_1109 + 64'd7);
assign e_9_fu_773_p2 = (e_1_reg_1109 + 64'd8);
assign edges_address0 = edges_address0_local;
assign edges_address1 = edges_address1_local;
assign edges_ce0 = edges_ce0_local;
assign edges_ce1 = edges_ce1_local;
assign grp_fu_515_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign grp_fu_529_p2 = (reg_521 + 8'd1);
assign grp_fu_536_p2 = (reg_525 + 64'd1);
assign i_1_fu_705_p3 = {{tmp_fu_695_p4}, {3'd6}};
assign i_4_fu_724_p2 = (i_fu_86 + 32'd8);
assign icmp_ln39_fu_713_p2 = (($signed(i_1_fu_705_p3) < $signed(32'd158)) ? 1'b1 : 1'b0);
assign icmp_ln40_1_fu_581_p2 = ((e_2_fu_575_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_2_fu_592_p2 = ((e_3_fu_586_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_3_fu_620_p2 = ((e_4_fu_614_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_4_fu_631_p2 = ((e_5_fu_625_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_5_fu_684_p2 = ((e_6_fu_678_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_6_fu_719_p2 = ((e_7_fu_689_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_7_fu_758_p2 = ((e_8_fu_752_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_566_p2 = ((e_fu_82 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_767_p2 = ((q_in_3_reg_406 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_2_fu_818_p2 = ((q_in_5_reg_418 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_3_fu_859_p2 = ((q_in_7_reg_432 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_4_fu_900_p2 = ((q_in_9_reg_446 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_5_fu_941_p2 = ((q_in_11_reg_460 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_6_fu_982_p2 = ((q_in_13_reg_474 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_7_fu_1023_p2 = ((q_in_15_reg_488 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_600_p2 = ((q_in_1_fu_90 == 64'd0) ? 1'b1 : 1'b0);
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = grp_fu_536_p2;
assign level_counts_we0 = level_counts_we0_local;
assign level_d0 = grp_fu_529_p2;
assign level_we0 = level_we0_local;
assign q_in_13_out = q_in_13_reg_474;
assign q_in_19_fu_660_p2 = (trunc_ln9_fu_639_p1 + 8'd1);
assign q_in_20_fu_800_p2 = (trunc_ln51_reg_1269 + 8'd1);
assign q_in_21_fu_841_p2 = (trunc_ln51_1_reg_1333 + 8'd1);
assign q_in_22_fu_882_p2 = (trunc_ln51_2_reg_1358 + 8'd1);
assign q_in_23_fu_923_p2 = (trunc_ln51_3_reg_1383 + 8'd1);
assign q_in_24_fu_964_p2 = (trunc_ln51_4_reg_1408 + 8'd1);
assign q_in_25_fu_1005_p2 = (trunc_ln51_5_reg_1433 + 8'd1);
assign q_in_26_fu_1042_p2 = (trunc_ln51_6_reg_1458 + 8'd1);
assign queue_address0 = queue_address0_local;
assign queue_ce0 = queue_ce0_local;
assign queue_d0 = queue_d0_local;
assign queue_we0 = queue_we0_local;
assign select_ln48_1_fu_788_p3 = ((icmp_ln48_1_reg_1318[0:0] == 1'b1) ? 8'd255 : add_ln48_2_fu_783_p2);
assign select_ln48_2_fu_829_p3 = ((icmp_ln48_2_reg_1343[0:0] == 1'b1) ? 8'd255 : add_ln48_4_fu_824_p2);
assign select_ln48_3_fu_870_p3 = ((icmp_ln48_3_reg_1368[0:0] == 1'b1) ? 8'd255 : add_ln48_6_fu_865_p2);
assign select_ln48_4_fu_911_p3 = ((icmp_ln48_4_reg_1393[0:0] == 1'b1) ? 8'd255 : add_ln48_8_fu_906_p2);
assign select_ln48_5_fu_952_p3 = ((icmp_ln48_5_reg_1418[0:0] == 1'b1) ? 8'd255 : add_ln48_10_fu_947_p2);
assign select_ln48_6_fu_993_p3 = ((icmp_ln48_6_reg_1443[0:0] == 1'b1) ? 8'd255 : add_ln48_12_fu_988_p2);
assign select_ln48_7_fu_1034_p3 = ((icmp_ln48_7_fu_1023_p2[0:0] == 1'b1) ? 8'd255 : add_ln48_14_fu_1029_p2);
assign select_ln48_fu_648_p3 = ((icmp_ln48_reg_1174[0:0] == 1'b1) ? 8'd255 : add_ln48_fu_642_p2);
assign tmp_fu_695_p4 = {{i_fu_86[31:3]}};
assign trunc_ln41_1_fu_606_p1 = edges_q1[7:0];
assign trunc_ln41_2_fu_610_p1 = edges_q0[7:0];
assign trunc_ln41_3_fu_670_p1 = edges_q0[7:0];
assign trunc_ln41_4_fu_674_p1 = edges_q1[7:0];
assign trunc_ln41_5_fu_744_p1 = edges_q0[7:0];
assign trunc_ln41_6_fu_748_p1 = edges_q1[7:0];
assign trunc_ln41_7_fu_763_p1 = edges_q1[7:0];
assign trunc_ln41_fu_571_p1 = edges_q0[7:0];
assign trunc_ln51_1_fu_814_p1 = ap_phi_reg_pp0_iter0_q_in_5_reg_418[7:0];
assign trunc_ln51_2_fu_855_p1 = ap_phi_reg_pp0_iter0_q_in_7_reg_432[7:0];
assign trunc_ln51_3_fu_896_p1 = ap_phi_reg_pp0_iter0_q_in_9_reg_446[7:0];
assign trunc_ln51_4_fu_937_p1 = ap_phi_reg_pp0_iter0_q_in_11_reg_460[7:0];
assign trunc_ln51_5_fu_978_p1 = ap_phi_reg_pp0_iter0_q_in_13_reg_474[7:0];
assign trunc_ln51_6_fu_1019_p1 = ap_phi_reg_pp0_iter0_q_in_15_reg_488[7:0];
assign trunc_ln51_fu_740_p1 = ap_phi_reg_pp0_iter0_q_in_3_reg_406[7:0];
assign trunc_ln9_fu_639_p1 = q_in_18_reg_1163[7:0];
assign zext_ln16_1_fu_805_p1 = q_in_20_fu_800_p2;
assign zext_ln16_2_fu_846_p1 = q_in_21_fu_841_p2;
assign zext_ln16_3_fu_887_p1 = q_in_22_fu_882_p2;
assign zext_ln16_4_fu_928_p1 = q_in_23_fu_923_p2;
assign zext_ln16_5_fu_969_p1 = q_in_24_fu_964_p2;
assign zext_ln16_6_fu_1010_p1 = q_in_25_fu_1005_p2;
assign zext_ln16_7_fu_1047_p1 = q_in_26_fu_1042_p2;
assign zext_ln16_fu_666_p1 = q_in_19_fu_660_p2;
assign zext_ln18_cast_fu_543_p1 = zext_ln18;
assign zext_ln47_1_fu_809_p1 = grp_fu_529_p2;
assign zext_ln47_2_fu_850_p1 = grp_fu_529_p2;
assign zext_ln47_3_fu_891_p1 = grp_fu_529_p2;
assign zext_ln47_4_fu_932_p1 = grp_fu_529_p2;
assign zext_ln47_5_fu_973_p1 = grp_fu_529_p2;
assign zext_ln47_6_fu_1014_p1 = grp_fu_529_p2;
assign zext_ln47_7_fu_1060_p1 = grp_fu_529_p2;
assign zext_ln47_fu_735_p1 = grp_fu_529_p2;
assign zext_ln48_1_fu_795_p1 = select_ln48_1_fu_788_p3;
assign zext_ln48_2_fu_836_p1 = select_ln48_2_fu_829_p3;
assign zext_ln48_3_fu_877_p1 = select_ln48_3_fu_870_p3;
assign zext_ln48_4_fu_918_p1 = select_ln48_4_fu_911_p3;
assign zext_ln48_5_fu_959_p1 = select_ln48_5_fu_952_p3;
assign zext_ln48_6_fu_1000_p1 = select_ln48_6_fu_993_p3;
assign zext_ln48_7_fu_1051_p1 = select_ln48_7_reg_1468;
assign zext_ln48_fu_655_p1 = select_ln48_fu_648_p3;
always @ (posedge ap_clk) begin
    zext_ln18_cast_reg_1104[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 