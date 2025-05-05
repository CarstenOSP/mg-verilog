module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,cnt,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,level_address0,level_ce0,level_we0,level_d0,level_q0,indvars_iv_next11_cast4,cnt_14_out,cnt_14_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 24'd1;
parameter    ap_ST_fsm_pp0_stage1 = 24'd2;
parameter    ap_ST_fsm_pp0_stage2 = 24'd4;
parameter    ap_ST_fsm_pp0_stage3 = 24'd8;
parameter    ap_ST_fsm_pp0_stage4 = 24'd16;
parameter    ap_ST_fsm_pp0_stage5 = 24'd32;
parameter    ap_ST_fsm_pp0_stage6 = 24'd64;
parameter    ap_ST_fsm_pp0_stage7 = 24'd128;
parameter    ap_ST_fsm_pp0_stage8 = 24'd256;
parameter    ap_ST_fsm_pp0_stage9 = 24'd512;
parameter    ap_ST_fsm_pp0_stage10 = 24'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 24'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 24'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 24'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 24'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 24'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 24'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 24'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 24'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 24'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 24'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 24'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 24'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 24'd8388608;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] empty;
input  [63:0] cnt;
input  [63:0] tmp_end;
output  [10:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [10:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [3:0] indvars_iv_next11_cast4;
output  [63:0] cnt_14_out;
output   cnt_14_out_ap_vld;
reg ap_idle;
reg cnt_14_out_ap_vld;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [0:0] icmp_ln28_reg_1106;
reg    ap_condition_exit_pp0_iter0_stage23;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] cnt_14_reg_400;
reg   [7:0] reg_448;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] indvars_iv_next11_cast4_cast_fu_458_p1;
reg   [7:0] indvars_iv_next11_cast4_cast_reg_973;
reg   [63:0] e_1_reg_978;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] trunc_ln11_fu_480_p1;
reg   [0:0] trunc_ln11_reg_990;
wire   [0:0] icmp_ln29_fu_500_p2;
reg   [0:0] icmp_ln29_reg_1002;
wire   [7:0] tmp_dst_fu_513_p3;
reg   [7:0] tmp_dst_reg_1016;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln29_1_fu_541_p2;
reg   [0:0] icmp_ln29_1_reg_1021;
wire   [0:0] icmp_ln29_2_fu_567_p2;
reg   [0:0] icmp_ln29_2_reg_1035;
reg   [7:0] level_addr_reg_1049;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [7:0] tmp_dst_1_fu_587_p3;
reg   [7:0] tmp_dst_1_reg_1054;
wire   [7:0] tmp_dst_2_fu_602_p3;
reg   [7:0] tmp_dst_2_reg_1059;
wire   [0:0] icmp_ln29_3_fu_630_p2;
reg   [0:0] icmp_ln29_3_reg_1064;
wire   [0:0] icmp_ln29_4_fu_656_p2;
reg   [0:0] icmp_ln29_4_reg_1078;
reg   [10:0] lshr_ln14_5_reg_1092;
wire   [0:0] icmp_ln29_5_fu_676_p2;
reg   [0:0] icmp_ln29_5_reg_1097;
reg   [10:0] lshr_ln2_reg_1101;
wire   [0:0] icmp_ln28_fu_714_p2;
wire   [0:0] icmp_ln29_6_fu_720_p2;
reg   [0:0] icmp_ln29_6_reg_1110;
reg   [10:0] lshr_ln14_6_reg_1114;
wire   [0:0] icmp_ln29_7_fu_740_p2;
reg   [0:0] icmp_ln29_7_reg_1119;
wire   [0:0] grp_fu_442_p2;
reg   [0:0] icmp_ln34_reg_1123;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [7:0] tmp_dst_3_fu_764_p3;
reg   [7:0] tmp_dst_3_reg_1127;
wire   [7:0] tmp_dst_4_fu_779_p3;
reg   [7:0] tmp_dst_4_reg_1132;
wire   [7:0] tmp_dst_5_fu_804_p3;
reg   [7:0] tmp_dst_5_reg_1157;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] tmp_dst_6_fu_819_p3;
reg   [7:0] tmp_dst_6_reg_1162;
reg   [7:0] level_addr_1_reg_1177;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] tmp_dst_7_fu_843_p3;
reg   [7:0] tmp_dst_7_reg_1182;
wire   [0:0] grp_fu_452_p2;
reg   [0:0] icmp_ln34_1_reg_1187;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [7:0] level_addr_2_reg_1191;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [0:0] icmp_ln34_2_reg_1196;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [7:0] level_addr_3_reg_1200;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [0:0] icmp_ln34_3_reg_1205;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [7:0] level_addr_4_reg_1209;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [0:0] icmp_ln34_4_reg_1214;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [63:0] cnt_19_fu_865_p2;
reg   [7:0] level_addr_5_reg_1229;
wire   [63:0] cnt_20_fu_875_p2;
wire   [63:0] cnt_21_fu_881_p2;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [0:0] icmp_ln34_5_reg_1244;
wire   [63:0] cnt_22_fu_887_p2;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [7:0] level_addr_6_reg_1253;
wire   [63:0] cnt_23_fu_897_p2;
wire   [63:0] cnt_24_fu_903_p2;
wire    ap_block_pp0_stage23_11001;
reg   [0:0] icmp_ln34_6_reg_1268;
wire   [63:0] cnt_25_fu_909_p2;
reg   [7:0] level_addr_7_reg_1277;
reg   [0:0] icmp_ln34_7_reg_1282;
wire   [63:0] cnt_26_fu_929_p2;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage2_subdone;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_3_reg_332;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_6_reg_344;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_8_reg_358;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_10_reg_372;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_12_reg_386;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_14_reg_400;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_14_reg_400;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_16_reg_415;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_16_reg_415;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_18_reg_429;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_18_reg_429;
wire   [63:0] zext_ln14_fu_494_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_1_fu_535_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_2_fu_561_p1;
wire   [63:0] zext_ln31_fu_575_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_3_fu_624_p1;
wire   [63:0] zext_ln14_4_fu_650_p1;
wire   [63:0] zext_ln14_5_fu_786_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln28_fu_791_p1;
wire   [63:0] zext_ln14_6_fu_826_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln31_1_fu_831_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln31_2_fu_850_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln31_3_fu_854_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln31_4_fu_858_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln31_5_fu_871_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln31_6_fu_893_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln31_7_fu_915_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] i_fu_82;
wire   [31:0] i_4_fu_745_p2;
wire    ap_loop_init;
reg   [63:0] e_fu_86;
wire   [63:0] e_9_fu_919_p2;
reg   [63:0] cnt_1_fu_90;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
reg    edges_0_ce0_local;
reg   [10:0] edges_0_address0_local;
reg    edges_1_ce0_local;
reg   [10:0] edges_1_address0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage17;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage23;
wire   [10:0] lshr_ln1_fu_484_p4;
wire   [7:0] trunc_ln31_fu_505_p1;
wire   [7:0] trunc_ln31_1_fu_509_p1;
wire   [63:0] e_2_fu_520_p2;
wire   [10:0] lshr_ln14_1_fu_525_p4;
wire   [63:0] e_3_fu_546_p2;
wire   [10:0] lshr_ln14_2_fu_551_p4;
wire   [7:0] trunc_ln31_2_fu_579_p1;
wire   [7:0] trunc_ln31_3_fu_583_p1;
wire   [7:0] trunc_ln31_4_fu_594_p1;
wire   [7:0] trunc_ln31_5_fu_598_p1;
wire   [63:0] e_4_fu_609_p2;
wire   [10:0] lshr_ln14_3_fu_614_p4;
wire   [63:0] e_5_fu_635_p2;
wire   [10:0] lshr_ln14_4_fu_640_p4;
wire   [63:0] e_6_fu_661_p2;
wire   [63:0] e_7_fu_681_p2;
wire   [28:0] tmp_s_fu_696_p4;
wire   [31:0] i_1_fu_706_p3;
wire   [63:0] e_8_fu_725_p2;
wire   [7:0] trunc_ln31_6_fu_756_p1;
wire   [7:0] trunc_ln31_7_fu_760_p1;
wire   [7:0] trunc_ln31_8_fu_771_p1;
wire   [7:0] trunc_ln31_9_fu_775_p1;
wire   [7:0] trunc_ln31_10_fu_796_p1;
wire   [7:0] trunc_ln31_11_fu_800_p1;
wire   [7:0] trunc_ln31_12_fu_811_p1;
wire   [7:0] trunc_ln31_13_fu_815_p1;
wire   [7:0] trunc_ln31_14_fu_835_p1;
wire   [7:0] trunc_ln31_15_fu_839_p1;
wire    ap_block_pp0_stage19;
wire    ap_block_pp0_stage22;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [23:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
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
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1312;
reg    ap_condition_1317;
reg    ap_condition_1322;
reg    ap_condition_1327;
reg    ap_condition_1332;
reg    ap_condition_1338;
reg    ap_condition_1343;
reg    ap_condition_1347;
reg    ap_condition_1351;
reg    ap_condition_1355;
reg    ap_condition_1359;
reg    ap_condition_1363;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_82 = 32'd0;
#0 e_fu_86 = 64'd0;
#0 cnt_1_fu_90 = 64'd0;
#0 ap_done_reg = 1'b0;
end
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage23),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_3_reg_1205 == 1'd0) & (icmp_ln29_3_reg_1064 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_3_reg_1064 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        ap_phi_reg_pp0_iter0_cnt_10_reg_372 <= ap_phi_reg_pp0_iter0_cnt_8_reg_358;
    end else if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_3_reg_1205 == 1'd1) & (icmp_ln29_3_reg_1064 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        ap_phi_reg_pp0_iter0_cnt_10_reg_372 <= cnt_22_fu_887_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_4_reg_1214 == 1'd0) & (icmp_ln29_4_reg_1078 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_4_reg_1078 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        ap_phi_reg_pp0_iter0_cnt_12_reg_386 <= ap_phi_reg_pp0_iter0_cnt_10_reg_372;
    end else if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_4_reg_1214 == 1'd1) & (icmp_ln29_4_reg_1078 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        ap_phi_reg_pp0_iter0_cnt_12_reg_386 <= cnt_23_fu_897_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_reg_1123 == 1'd0) & (icmp_ln29_reg_1002 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_reg_1002 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        ap_phi_reg_pp0_iter0_cnt_3_reg_332 <= cnt_1_fu_90;
    end else if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_reg_1123 == 1'd1) & (icmp_ln29_reg_1002 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        ap_phi_reg_pp0_iter0_cnt_3_reg_332 <= cnt_19_fu_865_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_1_reg_1187 == 1'd0) & (icmp_ln29_1_reg_1021 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_reg_1021 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        ap_phi_reg_pp0_iter0_cnt_6_reg_344 <= ap_phi_reg_pp0_iter0_cnt_3_reg_332;
    end else if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_1_reg_1187 == 1'd1) & (icmp_ln29_1_reg_1021 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_phi_reg_pp0_iter0_cnt_6_reg_344 <= cnt_20_fu_875_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_2_reg_1196 == 1'd0) & (icmp_ln29_2_reg_1035 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_reg_1035 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        ap_phi_reg_pp0_iter0_cnt_8_reg_358 <= ap_phi_reg_pp0_iter0_cnt_6_reg_344;
    end else if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_2_reg_1196 == 1'd1) & (icmp_ln29_2_reg_1035 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_phi_reg_pp0_iter0_cnt_8_reg_358 <= cnt_21_fu_881_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_5_reg_1244 == 1'd0) & (icmp_ln29_5_reg_1097 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_5_reg_1097 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        ap_phi_reg_pp0_iter1_cnt_14_reg_400 <= ap_phi_reg_pp0_iter0_cnt_12_reg_386;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_5_reg_1244 == 1'd1) & (icmp_ln29_5_reg_1097 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_phi_reg_pp0_iter1_cnt_14_reg_400 <= cnt_24_fu_903_p2;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_phi_reg_pp0_iter1_cnt_14_reg_400 <= ap_phi_reg_pp0_iter0_cnt_14_reg_400;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln28_reg_1106 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln34_6_reg_1268 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_6_reg_1110 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln28_reg_1106 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_6_reg_1110 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ap_phi_reg_pp0_iter1_cnt_16_reg_415 <= ap_phi_reg_pp0_iter1_cnt_14_reg_400;
    end else if (((icmp_ln28_reg_1106 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln34_6_reg_1268 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_6_reg_1110 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_cnt_16_reg_415 <= cnt_25_fu_909_p2;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_phi_reg_pp0_iter1_cnt_16_reg_415 <= ap_phi_reg_pp0_iter0_cnt_16_reg_415;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln28_reg_1106 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_442_p2 == 1'd0) & (icmp_ln29_7_reg_1119 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln28_reg_1106 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_7_reg_1119 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ap_phi_reg_pp0_iter1_cnt_18_reg_429 <= ap_phi_reg_pp0_iter1_cnt_16_reg_415;
    end else if (((icmp_ln28_reg_1106 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_442_p2 == 1'd1) & (icmp_ln29_7_reg_1119 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_phi_reg_pp0_iter1_cnt_18_reg_429 <= cnt_26_fu_929_p2;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_phi_reg_pp0_iter1_cnt_18_reg_429 <= ap_phi_reg_pp0_iter0_cnt_18_reg_429;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_1_fu_90 <= cnt;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        cnt_1_fu_90 <= ap_phi_reg_pp0_iter1_cnt_18_reg_429;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            e_fu_86 <= empty;
        end else if (((icmp_ln28_reg_1106 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            e_fu_86 <= e_9_fu_919_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_82 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_714_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        i_fu_82 <= i_4_fu_745_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_14_reg_400 <= ap_phi_reg_pp0_iter1_cnt_14_reg_400;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_1_reg_978 <= e_fu_86;
        icmp_ln29_reg_1002 <= icmp_ln29_fu_500_p2;
        trunc_ln11_reg_990 <= trunc_ln11_fu_480_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln28_reg_1106 <= icmp_ln28_fu_714_p2;
        icmp_ln29_3_reg_1064 <= icmp_ln29_3_fu_630_p2;
        icmp_ln29_4_reg_1078 <= icmp_ln29_4_fu_656_p2;
        icmp_ln29_5_reg_1097 <= icmp_ln29_5_fu_676_p2;
        icmp_ln29_6_reg_1110 <= icmp_ln29_6_fu_720_p2;
        icmp_ln29_7_reg_1119 <= icmp_ln29_7_fu_740_p2;
        level_addr_reg_1049 <= zext_ln31_fu_575_p1;
        lshr_ln14_5_reg_1092 <= {{e_6_fu_661_p2[11:1]}};
        lshr_ln14_6_reg_1114 <= {{e_8_fu_725_p2[11:1]}};
        lshr_ln2_reg_1101 <= {{e_7_fu_681_p2[11:1]}};
        tmp_dst_1_reg_1054 <= tmp_dst_1_fu_587_p3;
        tmp_dst_2_reg_1059 <= tmp_dst_2_fu_602_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln29_1_reg_1021 <= icmp_ln29_1_fu_541_p2;
        icmp_ln29_2_reg_1035 <= icmp_ln29_2_fu_567_p2;
        tmp_dst_reg_1016 <= tmp_dst_fu_513_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln34_1_reg_1187 <= grp_fu_452_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        icmp_ln34_2_reg_1196 <= grp_fu_452_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        icmp_ln34_3_reg_1205 <= grp_fu_452_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        icmp_ln34_4_reg_1214 <= grp_fu_452_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        icmp_ln34_5_reg_1244 <= grp_fu_452_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        icmp_ln34_6_reg_1268 <= grp_fu_452_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln34_7_reg_1282 <= grp_fu_442_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln34_reg_1123 <= grp_fu_442_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next11_cast4_cast_reg_973[3 : 0] <= indvars_iv_next11_cast4_cast_fu_458_p1[3 : 0];
        level_addr_7_reg_1277 <= zext_ln31_7_fu_915_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_addr_1_reg_1177 <= zext_ln31_1_fu_831_p1;
        tmp_dst_7_reg_1182 <= tmp_dst_7_fu_843_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        level_addr_2_reg_1191 <= zext_ln31_2_fu_850_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        level_addr_3_reg_1200 <= zext_ln31_3_fu_854_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        level_addr_4_reg_1209 <= zext_ln31_4_fu_858_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        level_addr_5_reg_1229 <= zext_ln31_5_fu_871_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        level_addr_6_reg_1253 <= zext_ln31_6_fu_893_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_448 <= level_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_dst_3_reg_1127 <= tmp_dst_3_fu_764_p3;
        tmp_dst_4_reg_1132 <= tmp_dst_4_fu_779_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_dst_5_reg_1157 <= tmp_dst_5_fu_804_p3;
        tmp_dst_6_reg_1162 <= tmp_dst_6_fu_819_p3;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1106 == 1'd0) & (1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1106 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (icmp_ln28_reg_1106 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_14_out_ap_vld = 1'b1;
    end else begin
        cnt_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            edges_0_address0_local = zext_ln14_6_fu_826_p1;
        end else if ((1'b1 == ap_condition_1338)) begin
            edges_0_address0_local = zext_ln28_fu_791_p1;
        end else if ((1'b1 == ap_condition_1332)) begin
            edges_0_address0_local = zext_ln14_5_fu_786_p1;
        end else if ((1'b1 == ap_condition_1327)) begin
            edges_0_address0_local = zext_ln14_4_fu_650_p1;
        end else if ((1'b1 == ap_condition_1322)) begin
            edges_0_address0_local = zext_ln14_3_fu_624_p1;
        end else if ((1'b1 == ap_condition_1317)) begin
            edges_0_address0_local = zext_ln14_2_fu_561_p1;
        end else if ((1'b1 == ap_condition_1312)) begin
            edges_0_address0_local = zext_ln14_1_fu_535_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_0_address0_local = zext_ln14_fu_494_p1;
        end else begin
            edges_0_address0_local = 'bx;
        end
    end else begin
        edges_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln28_reg_1106 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_6_reg_1110 == 1'd1) & (trunc_ln11_reg_990 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_5_reg_1097 == 1'd1) & (trunc_ln11_reg_990 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_4_fu_656_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_3_fu_630_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_567_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_541_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            edges_1_address0_local = zext_ln14_6_fu_826_p1;
        end else if ((1'b1 == ap_condition_1363)) begin
            edges_1_address0_local = zext_ln28_fu_791_p1;
        end else if ((1'b1 == ap_condition_1359)) begin
            edges_1_address0_local = zext_ln14_5_fu_786_p1;
        end else if ((1'b1 == ap_condition_1355)) begin
            edges_1_address0_local = zext_ln14_4_fu_650_p1;
        end else if ((1'b1 == ap_condition_1351)) begin
            edges_1_address0_local = zext_ln14_3_fu_624_p1;
        end else if ((1'b1 == ap_condition_1347)) begin
            edges_1_address0_local = zext_ln14_2_fu_561_p1;
        end else if ((1'b1 == ap_condition_1343)) begin
            edges_1_address0_local = zext_ln14_1_fu_535_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_1_address0_local = zext_ln14_fu_494_p1;
        end else begin
            edges_1_address0_local = 'bx;
        end
    end else begin
        edges_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln28_reg_1106 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_6_reg_1110 == 1'd1) & (trunc_ln11_reg_990 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_5_reg_1097 == 1'd1) & (trunc_ln11_reg_990 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_4_fu_656_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_3_fu_630_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_567_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_541_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = level_addr_7_reg_1277;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_address0_local = zext_ln31_7_fu_915_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        level_address0_local = level_addr_6_reg_1253;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        level_address0_local = zext_ln31_6_fu_893_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        level_address0_local = level_addr_5_reg_1229;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        level_address0_local = zext_ln31_5_fu_871_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        level_address0_local = level_addr_4_reg_1209;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        level_address0_local = zext_ln31_4_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        level_address0_local = level_addr_3_reg_1200;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        level_address0_local = zext_ln31_3_fu_854_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        level_address0_local = level_addr_2_reg_1191;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        level_address0_local = zext_ln31_2_fu_850_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        level_address0_local = level_addr_1_reg_1177;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_address0_local = zext_ln31_1_fu_831_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_address0_local = level_addr_reg_1049;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln31_fu_575_p1;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln28_reg_1106 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_452_p2 == 1'd1) & (icmp_ln29_6_reg_1110 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((icmp_ln28_reg_1106 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln34_7_reg_1282 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_7_reg_1119 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_452_p2 == 1'd1) & (icmp_ln29_5_reg_1097 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_452_p2 == 1'd1) & (icmp_ln29_4_reg_1078 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_452_p2 == 1'd1) & (icmp_ln29_3_reg_1064 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_452_p2 == 1'd1) & (icmp_ln29_2_reg_1035== 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_452_p2 == 1'd1) & (icmp_ln29_1_reg_1021 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_reg_1123 == 1'd1) & (icmp_ln29_reg_1002 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
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
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1312 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_541_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1317 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_567_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1322 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln29_3_fu_630_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1327 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln29_4_fu_656_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1332 = ((1'b0 == ap_block_pp0_stage4) & (icmp_ln29_5_reg_1097 == 1'd1) & (trunc_ln11_reg_990 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1338 = ((icmp_ln28_reg_1106 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (icmp_ln29_6_reg_1110 == 1'd1) & (trunc_ln11_reg_990 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1343 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_541_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1347 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_567_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1351 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln29_3_fu_630_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1355 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln29_4_fu_656_p2 == 1'd1) & (trunc_ln11_reg_990 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1359 = ((1'b0 == ap_block_pp0_stage4) & (icmp_ln29_5_reg_1097 == 1'd1) & (trunc_ln11_reg_990 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1363 = ((icmp_ln28_reg_1106 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (icmp_ln29_6_reg_1110 == 1'd1) & (trunc_ln11_reg_990 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage23;
assign ap_phi_reg_pp0_iter0_cnt_14_reg_400 = 'bx;
assign ap_phi_reg_pp0_iter0_cnt_16_reg_415 = 'bx;
assign ap_phi_reg_pp0_iter0_cnt_18_reg_429 = 'bx;
assign ap_ready = ap_ready_sig;
assign cnt_14_out = cnt_14_reg_400;
assign cnt_19_fu_865_p2 = (cnt_1_fu_90 + 64'd1);
assign cnt_20_fu_875_p2 = (ap_phi_reg_pp0_iter0_cnt_3_reg_332 + 64'd1);
assign cnt_21_fu_881_p2 = (ap_phi_reg_pp0_iter0_cnt_6_reg_344 + 64'd1);
assign cnt_22_fu_887_p2 = (ap_phi_reg_pp0_iter0_cnt_8_reg_358 + 64'd1);
assign cnt_23_fu_897_p2 = (ap_phi_reg_pp0_iter0_cnt_10_reg_372 + 64'd1);
assign cnt_24_fu_903_p2 = (ap_phi_reg_pp0_iter0_cnt_12_reg_386 + 64'd1);
assign cnt_25_fu_909_p2 = (ap_phi_reg_pp0_iter1_cnt_14_reg_400 + 64'd1);
assign cnt_26_fu_929_p2 = (ap_phi_reg_pp0_iter1_cnt_16_reg_415 + 64'd1);
assign e_2_fu_520_p2 = (e_1_reg_978 + 64'd1);
assign e_3_fu_546_p2 = (e_1_reg_978 + 64'd2);
assign e_4_fu_609_p2 = (e_1_reg_978 + 64'd3);
assign e_5_fu_635_p2 = (e_1_reg_978 + 64'd4);
assign e_6_fu_661_p2 = (e_1_reg_978 + 64'd5);
assign e_7_fu_681_p2 = (e_1_reg_978 + 64'd6);
assign e_8_fu_725_p2 = (e_1_reg_978 + 64'd7);
assign e_9_fu_919_p2 = (e_1_reg_978 + 64'd8);
assign edges_0_address0 = edges_0_address0_local;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_1_address0 = edges_1_address0_local;
assign edges_1_ce0 = edges_1_ce0_local;
assign grp_fu_442_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign grp_fu_452_p2 = ((reg_448 == 8'd127) ? 1'b1 : 1'b0);
assign i_1_fu_706_p3 = {{tmp_s_fu_696_p4}, {3'd6}};
assign i_4_fu_745_p2 = (i_fu_82 + 32'd8);
assign icmp_ln28_fu_714_p2 = (($signed(i_1_fu_706_p3) < $signed(32'd158)) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_541_p2 = ((e_2_fu_520_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_567_p2 = ((e_3_fu_546_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_630_p2 = ((e_4_fu_609_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_656_p2 = ((e_5_fu_635_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_676_p2 = ((e_6_fu_661_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_720_p2 = ((e_7_fu_681_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_740_p2 = ((e_8_fu_725_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_500_p2 = ((e_fu_86 < tmp_end) ? 1'b1 : 1'b0);
assign indvars_iv_next11_cast4_cast_fu_458_p1 = indvars_iv_next11_cast4;
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_d0 = indvars_iv_next11_cast4_cast_reg_973;
assign level_we0 = level_we0_local;
assign lshr_ln14_1_fu_525_p4 = {{e_2_fu_520_p2[11:1]}};
assign lshr_ln14_2_fu_551_p4 = {{e_3_fu_546_p2[11:1]}};
assign lshr_ln14_3_fu_614_p4 = {{e_4_fu_609_p2[11:1]}};
assign lshr_ln14_4_fu_640_p4 = {{e_5_fu_635_p2[11:1]}};
assign lshr_ln1_fu_484_p4 = {{e_fu_86[11:1]}};
assign tmp_dst_1_fu_587_p3 = ((trunc_ln11_reg_990[0:0] == 1'b1) ? trunc_ln31_2_fu_579_p1 : trunc_ln31_3_fu_583_p1);
assign tmp_dst_2_fu_602_p3 = ((trunc_ln11_reg_990[0:0] == 1'b1) ? trunc_ln31_4_fu_594_p1 : trunc_ln31_5_fu_598_p1);
assign tmp_dst_3_fu_764_p3 = ((trunc_ln11_reg_990[0:0] == 1'b1) ? trunc_ln31_6_fu_756_p1 : trunc_ln31_7_fu_760_p1);
assign tmp_dst_4_fu_779_p3 = ((trunc_ln11_reg_990[0:0] == 1'b1) ? trunc_ln31_8_fu_771_p1 : trunc_ln31_9_fu_775_p1);
assign tmp_dst_5_fu_804_p3 = ((trunc_ln11_reg_990[0:0] == 1'b1) ? trunc_ln31_10_fu_796_p1 : trunc_ln31_11_fu_800_p1);
assign tmp_dst_6_fu_819_p3 = ((trunc_ln11_reg_990[0:0] == 1'b1) ? trunc_ln31_12_fu_811_p1 : trunc_ln31_13_fu_815_p1);
assign tmp_dst_7_fu_843_p3 = ((trunc_ln11_reg_990[0:0] == 1'b1) ? trunc_ln31_14_fu_835_p1 : trunc_ln31_15_fu_839_p1);
assign tmp_dst_fu_513_p3 = ((trunc_ln11_reg_990[0:0] == 1'b1) ? trunc_ln31_fu_505_p1 : trunc_ln31_1_fu_509_p1);
assign tmp_s_fu_696_p4 = {{i_fu_82[31:3]}};
assign trunc_ln11_fu_480_p1 = e_fu_86[0:0];
assign trunc_ln31_10_fu_796_p1 = edges_0_q0[7:0];
assign trunc_ln31_11_fu_800_p1 = edges_1_q0[7:0];
assign trunc_ln31_12_fu_811_p1 = edges_1_q0[7:0];
assign trunc_ln31_13_fu_815_p1 = edges_0_q0[7:0];
assign trunc_ln31_14_fu_835_p1 = edges_0_q0[7:0];
assign trunc_ln31_15_fu_839_p1 = edges_1_q0[7:0];
assign trunc_ln31_1_fu_509_p1 = edges_0_q0[7:0];
assign trunc_ln31_2_fu_579_p1 = edges_0_q0[7:0];
assign trunc_ln31_3_fu_583_p1 = edges_1_q0[7:0];
assign trunc_ln31_4_fu_594_p1 = edges_1_q0[7:0];
assign trunc_ln31_5_fu_598_p1 = edges_0_q0[7:0];
assign trunc_ln31_6_fu_756_p1 = edges_0_q0[7:0];
assign trunc_ln31_7_fu_760_p1 = edges_1_q0[7:0];
assign trunc_ln31_8_fu_771_p1 = edges_1_q0[7:0];
assign trunc_ln31_9_fu_775_p1 = edges_0_q0[7:0];
assign trunc_ln31_fu_505_p1 = edges_1_q0[7:0];
assign zext_ln14_1_fu_535_p1 = lshr_ln14_1_fu_525_p4;
assign zext_ln14_2_fu_561_p1 = lshr_ln14_2_fu_551_p4;
assign zext_ln14_3_fu_624_p1 = lshr_ln14_3_fu_614_p4;
assign zext_ln14_4_fu_650_p1 = lshr_ln14_4_fu_640_p4;
assign zext_ln14_5_fu_786_p1 = lshr_ln14_5_reg_1092;
assign zext_ln14_6_fu_826_p1 = lshr_ln14_6_reg_1114;
assign zext_ln14_fu_494_p1 = lshr_ln1_fu_484_p4;
assign zext_ln28_fu_791_p1 = lshr_ln2_reg_1101;
assign zext_ln31_1_fu_831_p1 = tmp_dst_1_reg_1054;
assign zext_ln31_2_fu_850_p1 = tmp_dst_2_reg_1059;
assign zext_ln31_3_fu_854_p1 = tmp_dst_3_reg_1127;
assign zext_ln31_4_fu_858_p1 = tmp_dst_4_reg_1132;
assign zext_ln31_5_fu_871_p1 = tmp_dst_5_reg_1157;
assign zext_ln31_6_fu_893_p1 = tmp_dst_6_reg_1162;
assign zext_ln31_7_fu_915_p1 = tmp_dst_7_reg_1182;
assign zext_ln31_fu_575_p1 = tmp_dst_reg_1016;
always @ (posedge ap_clk) begin
    indvars_iv_next11_cast4_cast_reg_973[7:4] <= 4'b0000;
end
endmodule 