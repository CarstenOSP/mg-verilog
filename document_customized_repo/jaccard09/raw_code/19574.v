module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,e,q_in,level_address0,level_ce0,level_we0,level_d0,level_q0,zext_ln18,queue_3_address0,queue_3_ce0,queue_3_we0,queue_3_d0,queue_2_address0,queue_2_ce0,queue_2_we0,queue_2_d0,queue_1_address0,queue_1_ce0,queue_1_we0,queue_1_d0,queue_address0,queue_ce0,queue_we0,queue_d0,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0,q_in_5_out,q_in_5_out_ap_vld); 
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
input  [63:0] e;
input  [63:0] q_in;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [7:0] zext_ln18;
output  [5:0] queue_3_address0;
output   queue_3_ce0;
output   queue_3_we0;
output  [7:0] queue_3_d0;
output  [5:0] queue_2_address0;
output   queue_2_ce0;
output   queue_2_we0;
output  [7:0] queue_2_d0;
output  [5:0] queue_1_address0;
output   queue_1_ce0;
output   queue_1_we0;
output  [7:0] queue_1_d0;
output  [5:0] queue_address0;
output   queue_ce0;
output   queue_we0;
output  [7:0] queue_d0;
input  [63:0] tmp_end;
output  [9:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [9:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [9:0] edges_2_address0;
output   edges_2_ce0;
input  [63:0] edges_2_q0;
output  [9:0] edges_3_address0;
output   edges_3_ce0;
input  [63:0] edges_3_q0;
output  [3:0] level_counts_address0;
output   level_counts_ce0;
output   level_counts_we0;
output  [63:0] level_counts_d0;
input  [63:0] level_counts_q0;
output  [63:0] q_in_5_out;
output   q_in_5_out_ap_vld;
reg ap_idle;
reg q_in_5_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_subdone;
reg   [0:0] icmp_ln39_reg_1309;
reg    ap_condition_exit_pp0_iter0_stage12;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] q_in_3_reg_517;
reg   [63:0] q_in_5_reg_529;
reg   [63:0] q_in_7_reg_543;
reg   [7:0] reg_576;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_580;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln18_cast_fu_598_p1;
reg   [63:0] zext_ln18_cast_reg_1226;
reg   [63:0] e_6_reg_1231;
reg   [7:0] level_addr_reg_1239;
wire   [1:0] trunc_ln12_fu_620_p1;
reg   [1:0] trunc_ln12_reg_1244;
wire   [0:0] icmp_ln40_fu_642_p2;
reg   [0:0] icmp_ln40_reg_1252;
wire   [7:0] tmp_dst_fu_666_p11;
reg   [7:0] tmp_dst_reg_1276;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln40_1_fu_712_p2;
reg   [0:0] icmp_ln40_1_reg_1285;
wire   [0:0] icmp_ln39_fu_758_p2;
reg   [0:0] icmp_ln39_reg_1309_pp0_iter1_reg;
wire   [0:0] icmp_ln40_2_fu_764_p2;
reg   [0:0] icmp_ln40_2_reg_1313;
reg   [9:0] lshr_ln16_3_reg_1337;
wire   [0:0] icmp_ln40_3_fu_784_p2;
reg   [0:0] icmp_ln40_3_reg_1342;
reg   [0:0] icmp_ln40_3_reg_1342_pp0_iter1_reg;
reg   [7:0] level_addr_1_reg_1346;
wire   [7:0] tmp_dst_1_fu_820_p11;
reg   [7:0] tmp_dst_1_reg_1351;
wire   [7:0] tmp_dst_2_fu_859_p11;
reg   [7:0] tmp_dst_2_reg_1360;
reg   [63:0] q_in_10_reg_1389;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] grp_fu_570_p2;
reg   [0:0] icmp_ln44_reg_1396;
wire   [0:0] icmp_ln48_fu_892_p2;
reg   [0:0] icmp_ln48_reg_1400;
wire   [7:0] tmp_dst_3_fu_914_p11;
reg   [7:0] tmp_dst_3_reg_1405;
wire   [63:0] zext_ln16_1_fu_981_p1;
reg   [3:0] level_counts_addr_reg_1422;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] trunc_ln51_fu_990_p1;
reg   [7:0] trunc_ln51_reg_1427;
reg   [7:0] level_addr_2_reg_1433;
reg   [0:0] icmp_ln44_1_reg_1438;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] icmp_ln48_2_fu_998_p2;
reg   [0:0] icmp_ln48_2_reg_1442;
wire   [63:0] zext_ln16_3_fu_1043_p1;
reg   [3:0] level_counts_addr_1_reg_1455;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [7:0] trunc_ln51_1_fu_1052_p1;
reg   [7:0] trunc_ln51_1_reg_1460;
reg   [7:0] level_addr_3_reg_1466;
reg   [0:0] icmp_ln44_2_reg_1471;
wire    ap_block_pp0_stage12_11001;
wire   [0:0] icmp_ln48_4_fu_1060_p2;
reg   [0:0] icmp_ln48_4_reg_1475;
wire   [63:0] zext_ln16_4_fu_1105_p1;
reg   [3:0] level_counts_addr_2_reg_1488;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [7:0] trunc_ln51_2_fu_1114_p1;
reg   [7:0] trunc_ln51_2_reg_1493;
reg   [7:0] level_addr_4_reg_1499;
reg   [0:0] icmp_ln44_3_reg_1504;
wire   [1:0] trunc_ln48_3_fu_1141_p1;
reg   [1:0] trunc_ln48_3_reg_1508;
reg   [5:0] lshr_ln48_3_reg_1512;
wire   [63:0] zext_ln16_6_fu_1160_p1;
reg   [3:0] level_counts_addr_3_reg_1522;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_3_reg_517;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_5_reg_529;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_7_reg_543;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_9_reg_557;
reg   [63:0] ap_phi_reg_pp0_iter1_q_in_9_reg_557;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_fu_634_p1;
wire   [63:0] zext_ln16_2_fu_704_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln39_fu_732_p1;
wire   [63:0] zext_ln41_fu_800_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln16_5_fu_882_p1;
wire   [63:0] zext_ln48_fu_967_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln47_fu_985_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln41_1_fu_994_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln48_1_fu_1030_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln47_1_fu_1047_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln41_2_fu_1056_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln48_2_fu_1092_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln47_2_fu_1109_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln41_3_fu_1118_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln48_3_fu_1174_p1;
wire   [63:0] zext_ln47_3_fu_1186_p1;
wire    ap_block_pp0_stage12;
reg   [63:0] e_1_fu_104;
wire   [63:0] e_10_fu_1164_p2;
wire    ap_loop_init;
reg   [31:0] i_fu_108;
wire   [31:0] i_4_fu_789_p2;
reg   [63:0] q_in_1_fu_112;
wire    ap_block_pp0_stage4;
reg    edges_0_ce0_local;
reg   [9:0] edges_0_address0_local;
reg    edges_1_ce0_local;
reg   [9:0] edges_1_address0_local;
reg    edges_2_ce0_local;
reg   [9:0] edges_2_address0_local;
reg    edges_3_ce0_local;
reg   [9:0] edges_3_address0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire   [7:0] grp_fu_584_p2;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage0;
reg    queue_2_we0_local;
wire   [1:0] trunc_ln48_fu_953_p1;
reg   [7:0] queue_2_d0_local;
reg    queue_2_ce0_local;
reg   [5:0] queue_2_address0_local;
wire   [1:0] trunc_ln48_1_fu_1016_p1;
wire   [1:0] trunc_ln48_2_fu_1078_p1;
reg    queue_1_we0_local;
reg   [7:0] queue_1_d0_local;
reg    queue_1_ce0_local;
reg   [5:0] queue_1_address0_local;
reg    queue_we0_local;
reg   [7:0] queue_d0_local;
reg    queue_ce0_local;
reg   [5:0] queue_address0_local;
reg    queue_3_we0_local;
reg   [7:0] queue_3_d0_local;
reg    queue_3_ce0_local;
reg   [5:0] queue_3_address0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    level_counts_we0_local;
wire   [63:0] grp_fu_591_p2;
wire   [9:0] lshr_ln16_1_fu_624_p4;
wire   [7:0] tmp_dst_fu_666_p2;
wire   [7:0] tmp_dst_fu_666_p4;
wire   [7:0] tmp_dst_fu_666_p6;
wire   [7:0] tmp_dst_fu_666_p8;
wire   [7:0] tmp_dst_fu_666_p9;
wire   [63:0] e_7_fu_689_p2;
wire   [9:0] lshr_ln16_2_fu_694_p4;
wire   [63:0] e_8_fu_717_p2;
wire   [9:0] lshr_ln3_fu_722_p4;
wire   [29:0] tmp_fu_740_p4;
wire   [31:0] i_1_fu_750_p3;
wire   [63:0] e_9_fu_769_p2;
wire   [7:0] tmp_dst_1_fu_820_p2;
wire   [7:0] tmp_dst_1_fu_820_p4;
wire   [7:0] tmp_dst_1_fu_820_p6;
wire   [7:0] tmp_dst_1_fu_820_p8;
wire   [7:0] tmp_dst_1_fu_820_p9;
wire   [7:0] tmp_dst_2_fu_859_p2;
wire   [7:0] tmp_dst_2_fu_859_p4;
wire   [7:0] tmp_dst_2_fu_859_p6;
wire   [7:0] tmp_dst_2_fu_859_p8;
wire   [7:0] tmp_dst_2_fu_859_p9;
wire   [7:0] tmp_dst_3_fu_914_p2;
wire   [7:0] tmp_dst_3_fu_914_p4;
wire   [7:0] tmp_dst_3_fu_914_p6;
wire   [7:0] tmp_dst_3_fu_914_p8;
wire   [7:0] tmp_dst_3_fu_914_p9;
wire   [7:0] trunc_ln12_1_fu_937_p1;
wire   [7:0] add_ln48_fu_940_p2;
wire   [7:0] select_ln48_fu_946_p3;
wire   [5:0] lshr_ln2_fu_957_p4;
wire   [7:0] q_in_11_fu_975_p2;
wire   [7:0] add_ln48_2_fu_1004_p2;
wire   [7:0] select_ln48_1_fu_1009_p3;
wire   [5:0] lshr_ln48_1_fu_1020_p4;
wire   [7:0] q_in_12_fu_1038_p2;
wire   [7:0] add_ln48_4_fu_1066_p2;
wire   [7:0] select_ln48_2_fu_1071_p3;
wire   [5:0] lshr_ln48_2_fu_1082_p4;
wire   [7:0] q_in_13_fu_1100_p2;
wire   [0:0] icmp_ln48_6_fu_1122_p2;
wire   [7:0] add_ln48_6_fu_1128_p2;
wire   [7:0] select_ln48_3_fu_1133_p3;
wire   [7:0] q_in_14_fu_1155_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1297;
reg    ap_condition_1301;
reg    ap_condition_1306;
reg    ap_condition_1312;
reg    ap_condition_1316;
reg    ap_condition_1321;
reg    ap_condition_1328;
reg    ap_condition_1334;
reg    ap_condition_1339;
reg    ap_condition_1343;
reg    ap_condition_1347;
reg    ap_condition_1351;
reg    ap_condition_1355;
reg    ap_condition_1359;
wire   [1:0] tmp_dst_fu_666_p1;
wire   [1:0] tmp_dst_fu_666_p3;
wire  signed [1:0] tmp_dst_fu_666_p5;
wire  signed [1:0] tmp_dst_fu_666_p7;
wire  signed [1:0] tmp_dst_1_fu_820_p1;
wire   [1:0] tmp_dst_1_fu_820_p3;
wire   [1:0] tmp_dst_1_fu_820_p5;
wire  signed [1:0] tmp_dst_1_fu_820_p7;
wire  signed [1:0] tmp_dst_2_fu_859_p1;
wire  signed [1:0] tmp_dst_2_fu_859_p3;
wire   [1:0] tmp_dst_2_fu_859_p5;
wire   [1:0] tmp_dst_2_fu_859_p7;
wire   [1:0] tmp_dst_3_fu_914_p1;
wire  signed [1:0] tmp_dst_3_fu_914_p3;
wire  signed [1:0] tmp_dst_3_fu_914_p5;
wire   [1:0] tmp_dst_3_fu_914_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 e_1_fu_104 = 64'd0;
#0 i_fu_108 = 32'd0;
#0 q_in_1_fu_112 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U1(.din0(tmp_dst_fu_666_p2),.din1(tmp_dst_fu_666_p4),.din2(tmp_dst_fu_666_p6),.din3(tmp_dst_fu_666_p8),.def(tmp_dst_fu_666_p9),.sel(trunc_ln12_reg_1244),.dout(tmp_dst_fu_666_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2(.din0(tmp_dst_1_fu_820_p2),.din1(tmp_dst_1_fu_820_p4),.din2(tmp_dst_1_fu_820_p6),.din3(tmp_dst_1_fu_820_p8),.def(tmp_dst_1_fu_820_p9),.sel(trunc_ln12_reg_1244),.dout(tmp_dst_1_fu_820_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U3(.din0(tmp_dst_2_fu_859_p2),.din1(tmp_dst_2_fu_859_p4),.din2(tmp_dst_2_fu_859_p6),.din3(tmp_dst_2_fu_859_p8),.def(tmp_dst_2_fu_859_p9),.sel(trunc_ln12_reg_1244),.dout(tmp_dst_2_fu_859_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U4(.din0(tmp_dst_3_fu_914_p2),.din1(tmp_dst_3_fu_914_p4),.din2(tmp_dst_3_fu_914_p6),.din3(tmp_dst_3_fu_914_p8),.def(tmp_dst_3_fu_914_p9),.sel(trunc_ln12_reg_1244),.dout(tmp_dst_3_fu_914_p11));
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage12),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage12)) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_570_p2 == 1'd0) & (icmp_ln40_reg_1252 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1252 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_517 <= q_in_1_fu_112;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1396 == 1'd1) & (icmp_ln40_reg_1252 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_517 <= zext_ln16_1_fu_981_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1306)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_529 <= q_in_3_reg_517;
        end else if ((1'b1 == ap_condition_1301)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_529 <= ap_phi_reg_pp0_iter0_q_in_3_reg_517;
        end else if ((1'b1 == ap_condition_1297)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_529 <= zext_ln16_3_fu_1043_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_1309 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1321)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_543 <= q_in_5_reg_529;
        end else if ((1'b1 == ap_condition_1316)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_543 <= ap_phi_reg_pp0_iter0_q_in_5_reg_529;
        end else if ((1'b1 == ap_condition_1312)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_543 <= zext_ln16_4_fu_1105_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_570_p2 == 1'd0) & (icmp_ln40_3_reg_1342 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_q_in_9_reg_557 <= q_in_7_reg_543;
    end else if (((icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_570_p2 == 1'd1) & (icmp_ln40_3_reg_1342 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_q_in_9_reg_557 <= zext_ln16_6_fu_1160_p1;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter1_q_in_9_reg_557 <= ap_phi_reg_pp0_iter0_q_in_9_reg_557;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            e_1_fu_104 <= e;
        end else if (((icmp_ln39_reg_1309 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            e_1_fu_104 <= e_10_fu_1164_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_108 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln39_fu_758_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_108 <= i_4_fu_789_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        q_in_1_fu_112 <= q_in;
    end else if (((icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        q_in_1_fu_112 <= ap_phi_reg_pp0_iter1_q_in_9_reg_557;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_3_reg_1342 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_phi_reg_pp0_iter0_q_in_9_reg_557 <= ap_phi_reg_pp0_iter0_q_in_7_reg_543;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_6_reg_1231 <= e_1_fu_104;
        icmp_ln40_reg_1252 <= icmp_ln40_fu_642_p2;
        level_addr_reg_1239 <= zext_ln18_cast_reg_1226;
        trunc_ln12_reg_1244 <= trunc_ln12_fu_620_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln39_reg_1309 <= icmp_ln39_fu_758_p2;
        icmp_ln39_reg_1309_pp0_iter1_reg <= icmp_ln39_reg_1309;
        icmp_ln40_1_reg_1285 <= icmp_ln40_1_fu_712_p2;
        icmp_ln40_2_reg_1313 <= icmp_ln40_2_fu_764_p2;
        icmp_ln40_3_reg_1342 <= icmp_ln40_3_fu_784_p2;
        icmp_ln40_3_reg_1342_pp0_iter1_reg <= icmp_ln40_3_reg_1342;
        level_counts_addr_3_reg_1522 <= zext_ln47_3_fu_1186_p1;
        lshr_ln16_3_reg_1337 <= {{e_9_fu_769_p2[11:2]}};
        tmp_dst_reg_1276 <= tmp_dst_fu_666_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln44_1_reg_1438 <= grp_fu_570_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        icmp_ln44_2_reg_1471 <= grp_fu_570_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln44_3_reg_1504 <= grp_fu_570_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln44_reg_1396 <= grp_fu_570_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln48_2_reg_1442 <= icmp_ln48_2_fu_998_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        icmp_ln48_4_reg_1475 <= icmp_ln48_4_fu_1060_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln48_reg_1400 <= icmp_ln48_fu_892_p2;
        q_in_10_reg_1389 <= q_in_1_fu_112;
        tmp_dst_3_reg_1405 <= tmp_dst_3_fu_914_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_addr_1_reg_1346 <= zext_ln41_fu_800_p1;
        tmp_dst_1_reg_1351 <= tmp_dst_1_fu_820_p11;
        tmp_dst_2_reg_1360 <= tmp_dst_2_fu_859_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        level_addr_2_reg_1433 <= zext_ln41_1_fu_994_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        level_addr_3_reg_1466 <= zext_ln41_2_fu_1056_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        level_addr_4_reg_1499 <= zext_ln41_3_fu_1118_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        level_counts_addr_1_reg_1455 <= zext_ln47_1_fu_1047_p1;
        trunc_ln51_1_reg_1460 <= trunc_ln51_1_fu_1052_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        level_counts_addr_2_reg_1488 <= zext_ln47_2_fu_1109_p1;
        trunc_ln51_2_reg_1493 <= trunc_ln51_2_fu_1114_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_counts_addr_reg_1422 <= zext_ln47_fu_985_p1;
        trunc_ln51_reg_1427 <= trunc_ln51_fu_990_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln48_3_reg_1512 <= {{select_ln48_3_fu_1133_p3[7:2]}};
        trunc_ln48_3_reg_1508 <= trunc_ln48_3_fu_1141_p1;
        zext_ln18_cast_reg_1226[7 : 0] <= zext_ln18_cast_fu_598_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        q_in_3_reg_517 <= ap_phi_reg_pp0_iter0_q_in_3_reg_517;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        q_in_5_reg_529 <= ap_phi_reg_pp0_iter0_q_in_5_reg_529;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        q_in_7_reg_543 <= ap_phi_reg_pp0_iter0_q_in_7_reg_543;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_576 <= level_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_580 <= level_counts_q0;
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_1309 == 1'd0) & (1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_condition_exit_pp0_iter0_stage12 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage12 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_0_address0_local = zext_ln16_5_fu_882_p1;
        end else if ((1'b1 == ap_condition_1334)) begin
            edges_0_address0_local = zext_ln39_fu_732_p1;
        end else if ((1'b1 == ap_condition_1328)) begin
            edges_0_address0_local = zext_ln16_2_fu_704_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_0_address0_local = zext_ln16_fu_634_p1;
        end else begin
            edges_0_address0_local = 'bx;
        end
    end else begin
        edges_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_2_fu_764_p2 == 1'd1) & (icmp_ln39_fu_758_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_1_fu_712_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_1_address0_local = zext_ln16_5_fu_882_p1;
        end else if ((1'b1 == ap_condition_1343)) begin
            edges_1_address0_local = zext_ln39_fu_732_p1;
        end else if ((1'b1 == ap_condition_1339)) begin
            edges_1_address0_local = zext_ln16_2_fu_704_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_1_address0_local = zext_ln16_fu_634_p1;
        end else begin
            edges_1_address0_local = 'bx;
        end
    end else begin
        edges_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_2_fu_764_p2 == 1'd1) & (icmp_ln39_fu_758_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_1_fu_712_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_2_address0_local = zext_ln16_5_fu_882_p1;
        end else if ((1'b1 == ap_condition_1351)) begin
            edges_2_address0_local = zext_ln39_fu_732_p1;
        end else if ((1'b1 == ap_condition_1347)) begin
            edges_2_address0_local = zext_ln16_2_fu_704_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_2_address0_local = zext_ln16_fu_634_p1;
        end else begin
            edges_2_address0_local = 'bx;
        end
    end else begin
        edges_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_2_fu_764_p2 == 1'd1) & (icmp_ln39_fu_758_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_1_fu_712_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_2_ce0_local = 1'b1;
    end else begin
        edges_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_3_address0_local = zext_ln16_5_fu_882_p1;
        end else if ((1'b1 == ap_condition_1359)) begin
            edges_3_address0_local = zext_ln39_fu_732_p1;
        end else if ((1'b1 == ap_condition_1355)) begin
            edges_3_address0_local = zext_ln16_2_fu_704_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_3_address0_local = zext_ln16_fu_634_p1;
        end else begin
            edges_3_address0_local = 'bx;
        end
    end else begin
        edges_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_2_fu_764_p2 == 1'd1) & (icmp_ln39_fu_758_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_1_fu_712_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_3_ce0_local = 1'b1;
    end else begin
        edges_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = level_addr_4_reg_1499;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        level_address0_local = zext_ln41_3_fu_1118_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        level_address0_local = level_addr_3_reg_1466;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        level_address0_local = zext_ln41_2_fu_1056_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        level_address0_local = level_addr_2_reg_1433;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        level_address0_local = zext_ln41_1_fu_994_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_address0_local = level_addr_1_reg_1346;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        level_address0_local = level_addr_reg_1239;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln41_fu_800_p1;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        level_counts_address0_local = level_counts_addr_3_reg_1522;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_counts_address0_local = zext_ln47_3_fu_1186_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_counts_address0_local = level_counts_addr_2_reg_1488;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        level_counts_address0_local = zext_ln47_2_fu_1109_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        level_counts_address0_local = level_counts_addr_1_reg_1455;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        level_counts_address0_local = zext_ln47_1_fu_1047_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        level_counts_address0_local = level_counts_addr_reg_1422;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_counts_address0_local = zext_ln47_fu_985_p1;
    end else begin
        level_counts_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln44_2_reg_1471 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_2_reg_1313 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (icmp_ln44_1_reg_1438 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_1_reg_1285 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1396 == 1'd1) & (icmp_ln40_reg_1252 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln44_3_reg_1504 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_3_reg_1342_pp0_iter1_reg == 1'd1) & (icmp_ln39_reg_1309_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln44_2_reg_1471 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_2_reg_1313 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln44_3_reg_1504 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_3_reg_1342 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln44_1_reg_1438 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_1_reg_1285 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1396 == 1'd1) & (icmp_ln40_reg_1252 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln39_reg_1309 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        q_in_5_out_ap_vld = 1'b1;
    end else begin
        q_in_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_address0_local = zext_ln48_3_fu_1174_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_1_address0_local = zext_ln48_2_fu_1092_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_1_address0_local = zext_ln48_1_fu_1030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_1_address0_local = zext_ln48_fu_967_p1;
    end else begin
        queue_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_1_ce0_local = 1'b1;
    end else begin
        queue_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_d0_local = tmp_dst_3_reg_1405;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_1_d0_local = tmp_dst_2_reg_1360;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_1_d0_local = tmp_dst_1_reg_1351;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_1_d0_local = tmp_dst_reg_1276;
    end else begin
        queue_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln48_2_fu_1078_p1 == 2'd1) & (icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (icmp_ln44_2_reg_1471 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_2_reg_1313 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((trunc_ln48_1_fu_1016_p1 == 2'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln44_1_reg_1438 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_1_reg_1285 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((trunc_ln48_fu_953_p1 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1396 == 1'd1) & (icmp_ln40_reg_1252 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_3_reg_1508 == 2'd1) & (icmp_ln44_3_reg_1504 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_3_reg_1342 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_1_we0_local = 1'b1;
    end else begin
        queue_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_2_address0_local = zext_ln48_3_fu_1174_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_2_address0_local = zext_ln48_2_fu_1092_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_2_address0_local = zext_ln48_1_fu_1030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_2_address0_local = zext_ln48_fu_967_p1;
    end else begin
        queue_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_2_ce0_local = 1'b1;
    end else begin
        queue_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_2_d0_local = tmp_dst_3_reg_1405;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_2_d0_local = tmp_dst_2_reg_1360;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_2_d0_local = tmp_dst_1_reg_1351;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_2_d0_local = tmp_dst_reg_1276;
    end else begin
        queue_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln48_2_fu_1078_p1 == 2'd2) & (icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (icmp_ln44_2_reg_1471 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_2_reg_1313 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((trunc_ln48_1_fu_1016_p1 == 2'd2) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln44_1_reg_1438 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_1_reg_1285 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((trunc_ln48_fu_953_p1 == 2'd2) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1396 == 1'd1) & (icmp_ln40_reg_1252 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_3_reg_1508 == 2'd2) & (icmp_ln44_3_reg_1504 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_3_reg_1342 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_2_we0_local = 1'b1;
    end else begin
        queue_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_3_address0_local = zext_ln48_3_fu_1174_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_3_address0_local = zext_ln48_2_fu_1092_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_3_address0_local = zext_ln48_1_fu_1030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_3_address0_local = zext_ln48_fu_967_p1;
    end else begin
        queue_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_3_ce0_local = 1'b1;
    end else begin
        queue_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_3_d0_local = tmp_dst_3_reg_1405;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_3_d0_local = tmp_dst_2_reg_1360;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_3_d0_local = tmp_dst_1_reg_1351;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_3_d0_local = tmp_dst_reg_1276;
    end else begin
        queue_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln48_2_fu_1078_p1 == 2'd3) & (icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (icmp_ln44_2_reg_1471 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_2_reg_1313 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((trunc_ln48_1_fu_1016_p1 == 2'd3) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln44_1_reg_1438 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_1_reg_1285 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((trunc_ln48_fu_953_p1 == 2'd3) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1396 == 1'd1) & (icmp_ln40_reg_1252 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_3_reg_1508 == 2'd3) & (icmp_ln44_3_reg_1504 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_3_reg_1342 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_3_we0_local = 1'b1;
    end else begin
        queue_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_address0_local = zext_ln48_3_fu_1174_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_address0_local = zext_ln48_2_fu_1092_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_address0_local = zext_ln48_1_fu_1030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_address0_local = zext_ln48_fu_967_p1;
    end else begin
        queue_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_ce0_local = 1'b1;
    end else begin
        queue_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_d0_local = tmp_dst_3_reg_1405;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_d0_local = tmp_dst_2_reg_1360;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_d0_local = tmp_dst_1_reg_1351;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_d0_local = tmp_dst_reg_1276;
    end else begin
        queue_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln48_2_fu_1078_p1 == 2'd0) & (icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (icmp_ln44_2_reg_1471 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_2_reg_1313 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((trunc_ln48_1_fu_1016_p1 == 2'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln44_1_reg_1438 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_1_reg_1285 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((trunc_ln48_fu_953_p1 == 2'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1396 == 1'd1) & (icmp_ln40_reg_1252 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln39_reg_1309 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_3_reg_1508 == 2'd0) & (icmp_ln44_3_reg_1504 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_3_reg_1342 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage12)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
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
assign add_ln48_2_fu_1004_p2 = ($signed(trunc_ln51_reg_1427) + $signed(8'd255));
assign add_ln48_4_fu_1066_p2 = ($signed(trunc_ln51_1_reg_1460) + $signed(8'd255));
assign add_ln48_6_fu_1128_p2 = ($signed(trunc_ln51_2_reg_1493) + $signed(8'd255));
assign add_ln48_fu_940_p2 = ($signed(trunc_ln12_1_fu_937_p1) + $signed(8'd255));
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
always @ (*) begin
    ap_condition_1297 = ((1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln44_1_reg_1438 == 1'd1) & (icmp_ln40_1_reg_1285 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9));
end
always @ (*) begin
    ap_condition_1301 = ((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln40_1_reg_1285 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6));
end
always @ (*) begin
    ap_condition_1306 = ((1'b0 == ap_block_pp0_stage8_11001) & (grp_fu_570_p2 == 1'd0) & (icmp_ln40_1_reg_1285 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8));
end
always @ (*) begin
    ap_condition_1312 = ((1'b0 == ap_block_pp0_stage13_11001) & (icmp_ln44_2_reg_1471 == 1'd1) & (icmp_ln40_2_reg_1313 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13));
end
always @ (*) begin
    ap_condition_1316 = ((1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln40_2_reg_1313 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage10));
end
always @ (*) begin
    ap_condition_1321 = ((1'b0 == ap_block_pp0_stage12_11001) & (grp_fu_570_p2 == 1'd0) & (icmp_ln40_2_reg_1313 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12));
end
always @ (*) begin
    ap_condition_1328 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_1_fu_712_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1334 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_2_fu_764_p2 == 1'd1) & (icmp_ln39_fu_758_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1339 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_1_fu_712_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1343 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_2_fu_764_p2 == 1'd1) & (icmp_ln39_fu_758_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1347 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_1_fu_712_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1351 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_2_fu_764_p2 == 1'd1) & (icmp_ln39_fu_758_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1355 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_1_fu_712_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1359 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_2_fu_764_p2 == 1'd1) & (icmp_ln39_fu_758_p2 == 1'd1) & (trunc_ln12_reg_1244 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage12;
assign ap_ready = ap_ready_sig;
assign e_10_fu_1164_p2 = (e_6_reg_1231 + 64'd4);
assign e_7_fu_689_p2 = (e_6_reg_1231 + 64'd1);
assign e_8_fu_717_p2 = (e_6_reg_1231 + 64'd2);
assign e_9_fu_769_p2 = (e_6_reg_1231 + 64'd3);
assign edges_0_address0 = edges_0_address0_local;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_1_address0 = edges_1_address0_local;
assign edges_1_ce0 = edges_1_ce0_local;
assign edges_2_address0 = edges_2_address0_local;
assign edges_2_ce0 = edges_2_ce0_local;
assign edges_3_address0 = edges_3_address0_local;
assign edges_3_ce0 = edges_3_ce0_local;
assign grp_fu_570_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign grp_fu_584_p2 = (reg_576 + 8'd1);
assign grp_fu_591_p2 = (reg_580 + 64'd1);
assign i_1_fu_750_p3 = {{tmp_fu_740_p4}, {2'd2}};
assign i_4_fu_789_p2 = (i_fu_108 + 32'd4);
assign icmp_ln39_fu_758_p2 = (($signed(i_1_fu_750_p3) < $signed(32'd158)) ? 1'b1 : 1'b0);
assign icmp_ln40_1_fu_712_p2 = ((e_7_fu_689_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_2_fu_764_p2 = ((e_8_fu_717_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_3_fu_784_p2 = ((e_9_fu_769_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_642_p2 = ((e_1_fu_104 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln48_2_fu_998_p2 = ((q_in_3_reg_517 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_4_fu_1060_p2 = ((q_in_5_reg_529 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_6_fu_1122_p2 = ((q_in_7_reg_543 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_892_p2 = ((q_in_1_fu_112 == 64'd0) ? 1'b1 : 1'b0);
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = grp_fu_591_p2;
assign level_counts_we0 = level_counts_we0_local;
assign level_d0 = grp_fu_584_p2;
assign level_we0 = level_we0_local;
assign lshr_ln16_1_fu_624_p4 = {{e_1_fu_104[11:2]}};
assign lshr_ln16_2_fu_694_p4 = {{e_7_fu_689_p2[11:2]}};
assign lshr_ln2_fu_957_p4 = {{select_ln48_fu_946_p3[7:2]}};
assign lshr_ln3_fu_722_p4 = {{e_8_fu_717_p2[11:2]}};
assign lshr_ln48_1_fu_1020_p4 = {{select_ln48_1_fu_1009_p3[7:2]}};
assign lshr_ln48_2_fu_1082_p4 = {{select_ln48_2_fu_1071_p3[7:2]}};
assign q_in_11_fu_975_p2 = (trunc_ln12_1_fu_937_p1 + 8'd1);
assign q_in_12_fu_1038_p2 = (trunc_ln51_reg_1427 + 8'd1);
assign q_in_13_fu_1100_p2 = (trunc_ln51_1_reg_1460 + 8'd1);
assign q_in_14_fu_1155_p2 = (trunc_ln51_2_reg_1493 + 8'd1);
assign q_in_5_out = q_in_5_reg_529;
assign queue_1_address0 = queue_1_address0_local;
assign queue_1_ce0 = queue_1_ce0_local;
assign queue_1_d0 = queue_1_d0_local;
assign queue_1_we0 = queue_1_we0_local;
assign queue_2_address0 = queue_2_address0_local;
assign queue_2_ce0 = queue_2_ce0_local;
assign queue_2_d0 = queue_2_d0_local;
assign queue_2_we0 = queue_2_we0_local;
assign queue_3_address0 = queue_3_address0_local;
assign queue_3_ce0 = queue_3_ce0_local;
assign queue_3_d0 = queue_3_d0_local;
assign queue_3_we0 = queue_3_we0_local;
assign queue_address0 = queue_address0_local;
assign queue_ce0 = queue_ce0_local;
assign queue_d0 = queue_d0_local;
assign queue_we0 = queue_we0_local;
assign select_ln48_1_fu_1009_p3 = ((icmp_ln48_2_reg_1442[0:0] == 1'b1) ? 8'd255 : add_ln48_2_fu_1004_p2);
assign select_ln48_2_fu_1071_p3 = ((icmp_ln48_4_reg_1475[0:0] == 1'b1) ? 8'd255 : add_ln48_4_fu_1066_p2);
assign select_ln48_3_fu_1133_p3 = ((icmp_ln48_6_fu_1122_p2[0:0] == 1'b1) ? 8'd255 : add_ln48_6_fu_1128_p2);
assign select_ln48_fu_946_p3 = ((icmp_ln48_reg_1400[0:0] == 1'b1) ? 8'd255 : add_ln48_fu_940_p2);
assign tmp_dst_1_fu_820_p2 = edges_0_q0[7:0];
assign tmp_dst_1_fu_820_p4 = edges_1_q0[7:0];
assign tmp_dst_1_fu_820_p6 = edges_2_q0[7:0];
assign tmp_dst_1_fu_820_p8 = edges_3_q0[7:0];
assign tmp_dst_1_fu_820_p9 = 'bx;
assign tmp_dst_2_fu_859_p2 = edges_0_q0[7:0];
assign tmp_dst_2_fu_859_p4 = edges_1_q0[7:0];
assign tmp_dst_2_fu_859_p6 = edges_2_q0[7:0];
assign tmp_dst_2_fu_859_p8 = edges_3_q0[7:0];
assign tmp_dst_2_fu_859_p9 = 'bx;
assign tmp_dst_3_fu_914_p2 = edges_0_q0[7:0];
assign tmp_dst_3_fu_914_p4 = edges_1_q0[7:0];
assign tmp_dst_3_fu_914_p6 = edges_2_q0[7:0];
assign tmp_dst_3_fu_914_p8 = edges_3_q0[7:0];
assign tmp_dst_3_fu_914_p9 = 'bx;
assign tmp_dst_fu_666_p2 = edges_0_q0[7:0];
assign tmp_dst_fu_666_p4 = edges_1_q0[7:0];
assign tmp_dst_fu_666_p6 = edges_2_q0[7:0];
assign tmp_dst_fu_666_p8 = edges_3_q0[7:0];
assign tmp_dst_fu_666_p9 = 'bx;
assign tmp_fu_740_p4 = {{i_fu_108[31:2]}};
assign trunc_ln12_1_fu_937_p1 = q_in_10_reg_1389[7:0];
assign trunc_ln12_fu_620_p1 = e_1_fu_104[1:0];
assign trunc_ln48_1_fu_1016_p1 = select_ln48_1_fu_1009_p3[1:0];
assign trunc_ln48_2_fu_1078_p1 = select_ln48_2_fu_1071_p3[1:0];
assign trunc_ln48_3_fu_1141_p1 = select_ln48_3_fu_1133_p3[1:0];
assign trunc_ln48_fu_953_p1 = select_ln48_fu_946_p3[1:0];
assign trunc_ln51_1_fu_1052_p1 = ap_phi_reg_pp0_iter0_q_in_5_reg_529[7:0];
assign trunc_ln51_2_fu_1114_p1 = ap_phi_reg_pp0_iter0_q_in_7_reg_543[7:0];
assign trunc_ln51_fu_990_p1 = ap_phi_reg_pp0_iter0_q_in_3_reg_517[7:0];
assign zext_ln16_1_fu_981_p1 = q_in_11_fu_975_p2;
assign zext_ln16_2_fu_704_p1 = lshr_ln16_2_fu_694_p4;
assign zext_ln16_3_fu_1043_p1 = q_in_12_fu_1038_p2;
assign zext_ln16_4_fu_1105_p1 = q_in_13_fu_1100_p2;
assign zext_ln16_5_fu_882_p1 = lshr_ln16_3_reg_1337;
assign zext_ln16_6_fu_1160_p1 = q_in_14_fu_1155_p2;
assign zext_ln16_fu_634_p1 = lshr_ln16_1_fu_624_p4;
assign zext_ln18_cast_fu_598_p1 = zext_ln18;
assign zext_ln39_fu_732_p1 = lshr_ln3_fu_722_p4;
assign zext_ln41_1_fu_994_p1 = tmp_dst_1_reg_1351;
assign zext_ln41_2_fu_1056_p1 = tmp_dst_2_reg_1360;
assign zext_ln41_3_fu_1118_p1 = tmp_dst_3_reg_1405;
assign zext_ln41_fu_800_p1 = tmp_dst_reg_1276;
assign zext_ln47_1_fu_1047_p1 = grp_fu_584_p2;
assign zext_ln47_2_fu_1109_p1 = grp_fu_584_p2;
assign zext_ln47_3_fu_1186_p1 = grp_fu_584_p2;
assign zext_ln47_fu_985_p1 = grp_fu_584_p2;
assign zext_ln48_1_fu_1030_p1 = lshr_ln48_1_fu_1020_p4;
assign zext_ln48_2_fu_1092_p1 = lshr_ln48_2_fu_1082_p4;
assign zext_ln48_3_fu_1174_p1 = lshr_ln48_3_reg_1512;
assign zext_ln48_fu_967_p1 = lshr_ln2_fu_957_p4;
always @ (posedge ap_clk) begin
    zext_ln18_cast_reg_1226[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 