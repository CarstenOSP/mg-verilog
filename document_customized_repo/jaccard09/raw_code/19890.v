module needwun_needwun_Pipeline_pad_a (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_str_idx_7,alignedA_address0,alignedA_ce0,alignedA_we0,alignedA_d0,alignedA_address1,alignedA_ce1,alignedA_we1,alignedA_d1); 
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
input  [31:0] b_str_idx_7;
output  [7:0] alignedA_address0;
output   alignedA_ce0;
output   alignedA_we0;
output  [7:0] alignedA_d0;
output  [7:0] alignedA_address1;
output   alignedA_ce1;
output   alignedA_we1;
output  [7:0] alignedA_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire   [0:0] icmp_ln83_31_fu_1208_p2;
wire   [0:0] icmp_ln83_30_fu_1187_p2;
wire   [0:0] icmp_ln83_29_fu_1161_p2;
reg   [0:0] icmp_ln83_28_reg_1390;
reg   [0:0] icmp_ln83_27_reg_1386;
reg   [0:0] icmp_ln83_26_reg_1382;
reg   [0:0] icmp_ln83_25_reg_1378;
reg   [0:0] icmp_ln83_24_reg_1374;
reg   [0:0] icmp_ln83_23_reg_1370;
reg   [0:0] icmp_ln83_22_reg_1366;
reg   [0:0] icmp_ln83_21_reg_1362;
reg   [0:0] icmp_ln83_20_reg_1358;
reg   [0:0] icmp_ln83_19_reg_1354;
reg   [0:0] icmp_ln83_18_reg_1350;
reg   [0:0] icmp_ln83_17_reg_1346;
reg   [0:0] icmp_ln83_16_reg_1342;
reg   [0:0] icmp_ln83_15_reg_1338;
reg   [0:0] icmp_ln83_14_reg_1334;
reg   [0:0] icmp_ln83_13_reg_1330;
reg   [0:0] icmp_ln83_12_reg_1326;
reg   [0:0] icmp_ln83_11_reg_1322;
reg   [0:0] icmp_ln83_10_reg_1318;
reg   [0:0] icmp_ln83_9_reg_1314;
reg   [0:0] icmp_ln83_8_reg_1310;
reg   [0:0] icmp_ln83_7_reg_1306;
reg   [0:0] icmp_ln83_6_reg_1302;
reg   [0:0] icmp_ln83_5_reg_1298;
reg   [0:0] icmp_ln83_4_reg_1294;
reg   [0:0] icmp_ln83_3_reg_1290;
reg   [0:0] icmp_ln83_2_reg_1286;
reg   [0:0] icmp_ln83_1_reg_1282;
reg   [0:0] icmp_ln83_reg_1245;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] a_str_idx_5_reg_1239;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln83_fu_401_p2;
wire   [9:0] trunc_ln83_fu_407_p1;
reg   [9:0] trunc_ln83_reg_1249;
wire   [0:0] icmp_ln83_1_fu_432_p2;
wire   [0:0] icmp_ln83_2_fu_459_p2;
wire   [0:0] icmp_ln83_3_fu_485_p2;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln83_4_fu_511_p2;
wire   [0:0] icmp_ln83_5_fu_537_p2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] icmp_ln83_6_fu_563_p2;
wire   [0:0] icmp_ln83_7_fu_589_p2;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] icmp_ln83_8_fu_615_p2;
wire   [0:0] icmp_ln83_9_fu_641_p2;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [0:0] icmp_ln83_10_fu_667_p2;
wire   [0:0] icmp_ln83_11_fu_693_p2;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] icmp_ln83_12_fu_719_p2;
wire   [0:0] icmp_ln83_13_fu_745_p2;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln83_14_fu_771_p2;
wire   [0:0] icmp_ln83_15_fu_797_p2;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] icmp_ln83_16_fu_823_p2;
wire   [0:0] icmp_ln83_17_fu_849_p2;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [0:0] icmp_ln83_18_fu_875_p2;
wire   [0:0] icmp_ln83_19_fu_901_p2;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [0:0] icmp_ln83_20_fu_927_p2;
wire   [0:0] icmp_ln83_21_fu_953_p2;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [0:0] icmp_ln83_22_fu_979_p2;
wire   [0:0] icmp_ln83_23_fu_1005_p2;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [0:0] icmp_ln83_24_fu_1031_p2;
wire   [0:0] icmp_ln83_25_fu_1057_p2;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [0:0] icmp_ln83_26_fu_1083_p2;
wire   [0:0] icmp_ln83_27_fu_1109_p2;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [0:0] icmp_ln83_28_fu_1135_p2;
reg   [0:0] icmp_ln83_29_reg_1394;
wire    ap_block_pp0_stage15_11001;
reg   [0:0] icmp_ln83_30_reg_1398;
wire   [9:0] add_ln83_30_fu_1193_p2;
reg   [9:0] add_ln83_30_reg_1402;
reg   [0:0] icmp_ln83_31_reg_1407;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln83_1_fu_417_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln83_2_fu_444_p1;
wire   [63:0] zext_ln83_3_fu_470_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln83_4_fu_496_p1;
wire   [63:0] zext_ln83_5_fu_522_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln83_6_fu_548_p1;
wire   [63:0] zext_ln83_7_fu_574_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln83_8_fu_600_p1;
wire   [63:0] zext_ln83_9_fu_626_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln83_10_fu_652_p1;
wire   [63:0] zext_ln83_11_fu_678_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln83_12_fu_704_p1;
wire   [63:0] zext_ln83_13_fu_730_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln83_14_fu_756_p1;
wire   [63:0] zext_ln83_15_fu_782_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln83_16_fu_808_p1;
wire   [63:0] zext_ln83_17_fu_834_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln83_18_fu_860_p1;
wire   [63:0] zext_ln83_19_fu_886_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln83_20_fu_912_p1;
wire   [63:0] zext_ln83_21_fu_938_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln83_22_fu_964_p1;
wire   [63:0] zext_ln83_23_fu_990_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln83_24_fu_1016_p1;
wire   [63:0] zext_ln83_25_fu_1042_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln83_26_fu_1068_p1;
wire   [63:0] zext_ln83_27_fu_1094_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln83_28_fu_1120_p1;
wire   [63:0] zext_ln83_29_fu_1146_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln83_30_fu_1172_p1;
wire   [63:0] zext_ln83_fu_1214_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln83_31_fu_1218_p1;
reg   [31:0] a_str_idx_fu_106;
wire   [31:0] add_ln83_31_fu_1222_p2;
wire    ap_block_pp0_stage0_11001;
wire    ap_loop_init;
reg    alignedA_we1_local;
reg    alignedA_ce1_local;
reg   [7:0] alignedA_address1_local;
reg    alignedA_we0_local;
reg    alignedA_ce0_local;
reg   [7:0] alignedA_address0_local;
wire   [23:0] tmp_fu_391_p4;
wire   [9:0] add_ln83_fu_411_p2;
wire   [1:0] tmp_32_fu_422_p4;
wire   [9:0] add_ln83_1_fu_438_p2;
wire   [1:0] tmp_33_fu_449_p4;
wire   [9:0] add_ln83_2_fu_465_p2;
wire   [1:0] tmp_34_fu_475_p4;
wire   [9:0] add_ln83_3_fu_491_p2;
wire   [1:0] tmp_35_fu_501_p4;
wire   [9:0] add_ln83_4_fu_517_p2;
wire   [1:0] tmp_36_fu_527_p4;
wire   [9:0] add_ln83_5_fu_543_p2;
wire   [1:0] tmp_37_fu_553_p4;
wire   [9:0] add_ln83_6_fu_569_p2;
wire   [1:0] tmp_38_fu_579_p4;
wire   [9:0] add_ln83_7_fu_595_p2;
wire   [1:0] tmp_39_fu_605_p4;
wire   [9:0] add_ln83_8_fu_621_p2;
wire   [1:0] tmp_40_fu_631_p4;
wire   [9:0] add_ln83_9_fu_647_p2;
wire   [1:0] tmp_41_fu_657_p4;
wire   [9:0] add_ln83_10_fu_673_p2;
wire   [1:0] tmp_42_fu_683_p4;
wire   [9:0] add_ln83_11_fu_699_p2;
wire   [1:0] tmp_43_fu_709_p4;
wire   [9:0] add_ln83_12_fu_725_p2;
wire   [1:0] tmp_44_fu_735_p4;
wire   [9:0] add_ln83_13_fu_751_p2;
wire   [1:0] tmp_45_fu_761_p4;
wire   [9:0] add_ln83_14_fu_777_p2;
wire   [1:0] tmp_46_fu_787_p4;
wire   [9:0] add_ln83_15_fu_803_p2;
wire   [1:0] tmp_47_fu_813_p4;
wire   [9:0] add_ln83_16_fu_829_p2;
wire   [1:0] tmp_48_fu_839_p4;
wire   [9:0] add_ln83_17_fu_855_p2;
wire   [1:0] tmp_49_fu_865_p4;
wire   [9:0] add_ln83_18_fu_881_p2;
wire   [1:0] tmp_50_fu_891_p4;
wire   [9:0] add_ln83_19_fu_907_p2;
wire   [1:0] tmp_51_fu_917_p4;
wire   [9:0] add_ln83_20_fu_933_p2;
wire   [1:0] tmp_52_fu_943_p4;
wire   [9:0] add_ln83_21_fu_959_p2;
wire   [1:0] tmp_53_fu_969_p4;
wire   [9:0] add_ln83_22_fu_985_p2;
wire   [1:0] tmp_54_fu_995_p4;
wire   [9:0] add_ln83_23_fu_1011_p2;
wire   [1:0] tmp_55_fu_1021_p4;
wire   [9:0] add_ln83_24_fu_1037_p2;
wire   [1:0] tmp_56_fu_1047_p4;
wire   [9:0] add_ln83_25_fu_1063_p2;
wire   [1:0] tmp_57_fu_1073_p4;
wire   [9:0] add_ln83_26_fu_1089_p2;
wire   [1:0] tmp_58_fu_1099_p4;
wire   [9:0] add_ln83_27_fu_1115_p2;
wire   [1:0] tmp_59_fu_1125_p4;
wire   [9:0] add_ln83_28_fu_1141_p2;
wire   [1:0] tmp_60_fu_1151_p4;
wire   [9:0] add_ln83_29_fu_1167_p2;
wire   [1:0] tmp_61_fu_1177_p4;
wire   [1:0] tmp_62_fu_1198_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [15:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
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
reg    ap_condition_1512;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_str_idx_fu_106 = 32'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            a_str_idx_fu_106 <= b_str_idx_7;
        end else if ((1'b1 == ap_condition_1512)) begin
            a_str_idx_fu_106 <= add_ln83_31_fu_1222_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready == 1'b0)) | ((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_str_idx_5_reg_1239 <= a_str_idx_fu_106;
        icmp_ln83_1_reg_1282 <= icmp_ln83_1_fu_432_p2;
        icmp_ln83_2_reg_1286 <= icmp_ln83_2_fu_459_p2;
        icmp_ln83_reg_1245 <= icmp_ln83_fu_401_p2;
        trunc_ln83_reg_1249 <= trunc_ln83_fu_407_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add_ln83_30_reg_1402 <= add_ln83_30_fu_1193_p2;
        icmp_ln83_29_reg_1394 <= icmp_ln83_29_fu_1161_p2;
        icmp_ln83_30_reg_1398 <= icmp_ln83_30_fu_1187_p2;
        icmp_ln83_31_reg_1407 <= icmp_ln83_31_fu_1208_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln83_10_reg_1318 <= icmp_ln83_10_fu_667_p2;
        icmp_ln83_9_reg_1314 <= icmp_ln83_9_fu_641_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        icmp_ln83_11_reg_1322 <= icmp_ln83_11_fu_693_p2;
        icmp_ln83_12_reg_1326 <= icmp_ln83_12_fu_719_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln83_13_reg_1330 <= icmp_ln83_13_fu_745_p2;
        icmp_ln83_14_reg_1334 <= icmp_ln83_14_fu_771_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln83_15_reg_1338 <= icmp_ln83_15_fu_797_p2;
        icmp_ln83_16_reg_1342 <= icmp_ln83_16_fu_823_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        icmp_ln83_17_reg_1346 <= icmp_ln83_17_fu_849_p2;
        icmp_ln83_18_reg_1350 <= icmp_ln83_18_fu_875_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        icmp_ln83_19_reg_1354 <= icmp_ln83_19_fu_901_p2;
        icmp_ln83_20_reg_1358 <= icmp_ln83_20_fu_927_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        icmp_ln83_21_reg_1362 <= icmp_ln83_21_fu_953_p2;
        icmp_ln83_22_reg_1366 <= icmp_ln83_22_fu_979_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        icmp_ln83_23_reg_1370 <= icmp_ln83_23_fu_1005_p2;
        icmp_ln83_24_reg_1374 <= icmp_ln83_24_fu_1031_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        icmp_ln83_25_reg_1378 <= icmp_ln83_25_fu_1057_p2;
        icmp_ln83_26_reg_1382 <= icmp_ln83_26_fu_1083_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        icmp_ln83_27_reg_1386 <= icmp_ln83_27_fu_1109_p2;
        icmp_ln83_28_reg_1390 <= icmp_ln83_28_fu_1135_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln83_3_reg_1290 <= icmp_ln83_3_fu_485_p2;
        icmp_ln83_4_reg_1294 <= icmp_ln83_4_fu_511_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln83_5_reg_1298 <= icmp_ln83_5_fu_537_p2;
        icmp_ln83_6_reg_1302 <= icmp_ln83_6_fu_563_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln83_7_reg_1306 <= icmp_ln83_7_fu_589_p2;
        icmp_ln83_8_reg_1310 <= icmp_ln83_8_fu_615_p2;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_address0_local = zext_ln83_31_fu_1218_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        alignedA_address0_local = zext_ln83_30_fu_1172_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        alignedA_address0_local = zext_ln83_28_fu_1120_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        alignedA_address0_local = zext_ln83_26_fu_1068_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        alignedA_address0_local = zext_ln83_24_fu_1016_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        alignedA_address0_local = zext_ln83_22_fu_964_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        alignedA_address0_local = zext_ln83_20_fu_912_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        alignedA_address0_local = zext_ln83_18_fu_860_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        alignedA_address0_local = zext_ln83_16_fu_808_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        alignedA_address0_local = zext_ln83_14_fu_756_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        alignedA_address0_local = zext_ln83_12_fu_704_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        alignedA_address0_local = zext_ln83_10_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedA_address0_local = zext_ln83_8_fu_600_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        alignedA_address0_local = zext_ln83_6_fu_548_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedA_address0_local = zext_ln83_4_fu_496_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedA_address0_local = zext_ln83_2_fu_444_p1;
    end else begin
        alignedA_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_address1_local = zext_ln83_fu_1214_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        alignedA_address1_local = zext_ln83_29_fu_1146_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        alignedA_address1_local = zext_ln83_27_fu_1094_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        alignedA_address1_local = zext_ln83_25_fu_1042_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        alignedA_address1_local = zext_ln83_23_fu_990_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        alignedA_address1_local = zext_ln83_21_fu_938_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        alignedA_address1_local = zext_ln83_19_fu_886_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        alignedA_address1_local = zext_ln83_17_fu_834_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        alignedA_address1_local = zext_ln83_15_fu_782_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        alignedA_address1_local = zext_ln83_13_fu_730_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        alignedA_address1_local = zext_ln83_11_fu_678_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        alignedA_address1_local = zext_ln83_9_fu_626_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedA_address1_local = zext_ln83_7_fu_574_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        alignedA_address1_local = zext_ln83_5_fu_522_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedA_address1_local = zext_ln83_3_fu_470_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedA_address1_local = zext_ln83_1_fu_417_p1;
    end else begin
        alignedA_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_ce0_local = 1'b1;
    end else begin
        alignedA_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_ce1_local = 1'b1;
    end else begin
        alignedA_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln83_17_reg_1346 == 1'd0) & (icmp_ln83_18_reg_1350 == 1'd0) & (icmp_ln83_19_reg_1354 == 1'd0) & (icmp_ln83_20_reg_1358 == 1'd0) & (icmp_ln83_21_reg_1362 == 1'd0) & (icmp_ln83_22_reg_1366 == 1'd0) & (icmp_ln83_23_reg_1370 == 1'd0) & (icmp_ln83_24_reg_1374 == 1'd0) & (icmp_ln83_25_reg_1378 == 1'd0) & (icmp_ln83_26_reg_1382 == 1'd0) & (icmp_ln83_27_reg_1386 == 1'd0) & (icmp_ln83_28_reg_1390 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln83_31_reg_1407 == 1'd0) & (icmp_ln83_30_reg_1398 == 1'd0) & (icmp_ln83_29_reg_1394 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326== 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((icmp_ln83_17_reg_1346 == 1'd0) & (icmp_ln83_18_reg_1350 == 1'd0) & (icmp_ln83_19_reg_1354 == 1'd0) & (icmp_ln83_20_reg_1358 == 1'd0) & (icmp_ln83_21_reg_1362 == 1'd0) & (icmp_ln83_22_reg_1366 == 1'd0) & (icmp_ln83_23_reg_1370 == 1'd0) & (icmp_ln83_24_reg_1374 == 1'd0) & (icmp_ln83_25_reg_1378 == 1'd0) & (icmp_ln83_26_reg_1382 == 1'd0) & (icmp_ln83_27_reg_1386 == 1'd0) & (icmp_ln83_28_reg_1390 == 1'd0) & (icmp_ln83_29_fu_1161_p2 == 1'd0) & (icmp_ln83_30_fu_1187_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 ==1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((icmp_ln83_17_reg_1346 == 1'd0) & (icmp_ln83_18_reg_1350 == 1'd0) & (icmp_ln83_19_reg_1354 == 1'd0) & (icmp_ln83_20_reg_1358 == 1'd0) & (icmp_ln83_21_reg_1362 == 1'd0) & (icmp_ln83_22_reg_1366 == 1'd0) & (icmp_ln83_23_reg_1370 == 1'd0) & (icmp_ln83_24_reg_1374 == 1'd0) & (icmp_ln83_25_reg_1378 == 1'd0) & (icmp_ln83_26_reg_1382 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_28_fu_1135_p2 == 1'd0) & (icmp_ln83_27_fu_1109_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage14) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0)& (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((icmp_ln83_17_reg_1346 == 1'd0) & (icmp_ln83_18_reg_1350 == 1'd0) & (icmp_ln83_19_reg_1354 == 1'd0) & (icmp_ln83_20_reg_1358 == 1'd0) & (icmp_ln83_21_reg_1362 == 1'd0) & (icmp_ln83_22_reg_1366 == 1'd0) & (icmp_ln83_23_reg_1370 == 1'd0) & (icmp_ln83_24_reg_1374 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_26_fu_1083_p2 == 1'd0) & (icmp_ln83_25_fu_1057_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306== 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((icmp_ln83_17_reg_1346 == 1'd0) & (icmp_ln83_18_reg_1350 == 1'd0) & (icmp_ln83_19_reg_1354 == 1'd0) & (icmp_ln83_20_reg_1358 == 1'd0) & (icmp_ln83_21_reg_1362 == 1'd0) & (icmp_ln83_22_reg_1366 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_24_fu_1031_p2 == 1'd0) & (icmp_ln83_23_fu_1005_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage12) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0)& (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((icmp_ln83_17_reg_1346 == 1'd0) & (icmp_ln83_18_reg_1350 == 1'd0) & (icmp_ln83_19_reg_1354 == 1'd0) & (icmp_ln83_20_reg_1358 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_22_fu_979_p2 == 1'd0) & (icmp_ln83_21_fu_953_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334== 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((icmp_ln83_17_reg_1346 == 1'd0) & (icmp_ln83_18_reg_1350 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_20_fu_927_p2 == 1'd0) & (icmp_ln83_19_fu_901_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_18_fu_875_p2 == 1'd0) & (icmp_ln83_17_fu_849_p2== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_16_fu_823_p2 == 1'd0) & (icmp_ln83_15_fu_797_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306== 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_14_fu_771_p2 == 1'd0) & (icmp_ln83_13_fu_745_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_12_fu_719_p2 == 1'd0) & (icmp_ln83_11_fu_693_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)& (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_10_fu_667_p2 == 1'd0) & (icmp_ln83_9_fu_641_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_8_fu_615_p2 == 1'd0) & (icmp_ln83_7_fu_589_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln83_reg_1245== 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_6_fu_563_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln83_5_fu_537_p2 == 1'd0) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln83_4_fu_511_p2 == 1'd0) & (icmp_ln83_3_fu_485_p2 == 1'd0) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln83_2_fu_459_p2 == 1'd0) & (icmp_ln83_1_fu_432_p2 == 1'd0) & (icmp_ln83_fu_401_p2 == 1'd1)))) begin
        alignedA_we0_local = 1'b1;
    end else begin
        alignedA_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_reg_1245 == 1'd1)) | ((icmp_ln83_17_reg_1346 == 1'd0) & (icmp_ln83_18_reg_1350 == 1'd0) & (icmp_ln83_19_reg_1354 == 1'd0) & (icmp_ln83_20_reg_1358 == 1'd0) & (icmp_ln83_21_reg_1362 == 1'd0) & (icmp_ln83_22_reg_1366 == 1'd0) & (icmp_ln83_23_reg_1370 == 1'd0) & (icmp_ln83_24_reg_1374 == 1'd0) & (icmp_ln83_25_reg_1378 == 1'd0) & (icmp_ln83_26_reg_1382 == 1'd0) & (icmp_ln83_27_reg_1386 == 1'd0) & (icmp_ln83_28_reg_1390 == 1'd0) & (icmp_ln83_29_fu_1161_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318== 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((icmp_ln83_17_reg_1346 == 1'd0) & (icmp_ln83_18_reg_1350 == 1'd0) & (icmp_ln83_19_reg_1354 == 1'd0) & (icmp_ln83_20_reg_1358 == 1'd0) & (icmp_ln83_21_reg_1362 == 1'd0) & (icmp_ln83_22_reg_1366 == 1'd0) & (icmp_ln83_23_reg_1370 == 1'd0) & (icmp_ln83_24_reg_1374 == 1'd0) & (icmp_ln83_25_reg_1378 == 1'd0) & (icmp_ln83_26_reg_1382 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_27_fu_1109_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage14) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0)& (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((icmp_ln83_17_reg_1346 == 1'd0) & (icmp_ln83_18_reg_1350 == 1'd0) & (icmp_ln83_19_reg_1354 == 1'd0) & (icmp_ln83_20_reg_1358 == 1'd0) & (icmp_ln83_21_reg_1362 == 1'd0) & (icmp_ln83_22_reg_1366 == 1'd0) & (icmp_ln83_23_reg_1370 == 1'd0) & (icmp_ln83_24_reg_1374 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_25_fu_1057_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322== 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((icmp_ln83_17_reg_1346 == 1'd0) & (icmp_ln83_18_reg_1350 == 1'd0) & (icmp_ln83_19_reg_1354 == 1'd0) & (icmp_ln83_20_reg_1358 == 1'd0) & (icmp_ln83_21_reg_1362 == 1'd0) & (icmp_ln83_22_reg_1366 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_23_fu_1005_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage12) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0)& (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((icmp_ln83_17_reg_1346 == 1'd0) & (icmp_ln83_18_reg_1350 == 1'd0) & (icmp_ln83_19_reg_1354 == 1'd0) & (icmp_ln83_20_reg_1358 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_21_fu_953_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((icmp_ln83_17_reg_1346 == 1'd0) & (icmp_ln83_18_reg_1350 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_19_fu_901_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_17_fu_849_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302== 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_15_fu_797_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334 == 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_13_fu_745_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_11_fu_693_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318== 1'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_9_fu_641_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln83_7_fu_589_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln83_5_fu_537_p2 == 1'd0) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0)& (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln83_3_fu_485_p2 == 1'd0) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln83_1_fu_432_p2 == 1'd0) & (icmp_ln83_fu_401_p2 == 1'd1)))) begin
        alignedA_we1_local = 1'b1;
    end else begin
        alignedA_we1_local = 1'b0;
    end
end
always @ (*) begin
if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & ((icmp_ln83_reg_1245 == 1'd0) | ((icmp_ln83_1_reg_1282 == 1'd1) | ((icmp_ln83_2_reg_1286 == 1'd1) | ((icmp_ln83_3_reg_1290 == 1'd1) | ((icmp_ln83_4_reg_1294 == 1'd1) | ((icmp_ln83_5_reg_1298 == 1'd1) | ((icmp_ln83_6_reg_1302 == 1'd1) | ((icmp_ln83_7_reg_1306 == 1'd1) | ((icmp_ln83_8_reg_1310 == 1'd1) | ((icmp_ln83_9_reg_1314 == 1'd1) | ((icmp_ln83_10_reg_1318 == 1'd1) | ((icmp_ln83_11_reg_1322 == 1'd1) | ((icmp_ln83_12_reg_1326 == 1'd1) | ((icmp_ln83_13_reg_1330 == 1'd1) | ((icmp_ln83_14_reg_1334 == 1'd1) | ((icmp_ln83_15_reg_1338 == 1'd1) | ((icmp_ln83_16_reg_1342 == 1'd1) | ((icmp_ln83_17_reg_1346 == 1'd1) | ((icmp_ln83_18_reg_1350 == 1'd1) | ((icmp_ln83_19_reg_1354 == 1'd1) | ((icmp_ln83_20_reg_1358 == 1'd1) | ((icmp_ln83_21_reg_1362 == 1'd1) | ((icmp_ln83_22_reg_1366 == 1'd1) | ((icmp_ln83_23_reg_1370 == 1'd1) | ((icmp_ln83_24_reg_1374 == 1'd1) | ((icmp_ln83_25_reg_1378 == 1'd1) | ((icmp_ln83_26_reg_1382== 1'd1) | ((icmp_ln83_27_reg_1386 == 1'd1) | ((icmp_ln83_28_reg_1390 == 1'd1) | ((icmp_ln83_29_fu_1161_p2 == 1'd1) | ((icmp_ln83_30_fu_1187_p2 == 1'd1) | (icmp_ln83_31_fu_1208_p2 == 1'd1)))))))))))))))))))))))))))))))))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln83_reg_1245 == 1'd0) | ((icmp_ln83_1_reg_1282 == 1'd1) | ((icmp_ln83_2_reg_1286 == 1'd1) | ((icmp_ln83_3_reg_1290 == 1'd1) | ((icmp_ln83_4_reg_1294 == 1'd1) | ((icmp_ln83_5_reg_1298 == 1'd1) | ((icmp_ln83_6_reg_1302 == 1'd1) | ((icmp_ln83_7_reg_1306 == 1'd1) | ((icmp_ln83_8_reg_1310 == 1'd1) | ((icmp_ln83_9_reg_1314 == 1'd1) | ((icmp_ln83_10_reg_1318 == 1'd1) | ((icmp_ln83_11_reg_1322 == 1'd1) | ((icmp_ln83_12_reg_1326 == 1'd1) | ((icmp_ln83_13_reg_1330 == 1'd1) | ((icmp_ln83_14_reg_1334 == 1'd1) | ((icmp_ln83_15_reg_1338 == 1'd1) | ((icmp_ln83_16_reg_1342 == 1'd1) | ((icmp_ln83_17_reg_1346 == 1'd1) | ((icmp_ln83_18_reg_1350 == 1'd1) | ((icmp_ln83_19_reg_1354 == 1'd1) | ((icmp_ln83_20_reg_1358 == 1'd1) | ((icmp_ln83_21_reg_1362 == 1'd1) | ((icmp_ln83_22_reg_1366 == 1'd1) | ((icmp_ln83_23_reg_1370 == 1'd1) | ((icmp_ln83_24_reg_1374 == 1'd1) | ((icmp_ln83_25_reg_1378 == 1'd1) | ((icmp_ln83_26_reg_1382== 1'd1) | ((icmp_ln83_27_reg_1386 == 1'd1) | ((icmp_ln83_28_reg_1390 == 1'd1) | ((icmp_ln83_29_reg_1394 == 1'd1) | ((icmp_ln83_31_reg_1407 == 1'd1) | (icmp_ln83_30_reg_1398 == 1'd1)))))))))))))))))))))))))))))))))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln83_10_fu_673_p2 = (trunc_ln83_reg_1249 + 10'd11);
assign add_ln83_11_fu_699_p2 = (trunc_ln83_reg_1249 + 10'd12);
assign add_ln83_12_fu_725_p2 = (trunc_ln83_reg_1249 + 10'd13);
assign add_ln83_13_fu_751_p2 = (trunc_ln83_reg_1249 + 10'd14);
assign add_ln83_14_fu_777_p2 = (trunc_ln83_reg_1249 + 10'd15);
assign add_ln83_15_fu_803_p2 = (trunc_ln83_reg_1249 + 10'd16);
assign add_ln83_16_fu_829_p2 = (trunc_ln83_reg_1249 + 10'd17);
assign add_ln83_17_fu_855_p2 = (trunc_ln83_reg_1249 + 10'd18);
assign add_ln83_18_fu_881_p2 = (trunc_ln83_reg_1249 + 10'd19);
assign add_ln83_19_fu_907_p2 = (trunc_ln83_reg_1249 + 10'd20);
assign add_ln83_1_fu_438_p2 = (trunc_ln83_fu_407_p1 + 10'd2);
assign add_ln83_20_fu_933_p2 = (trunc_ln83_reg_1249 + 10'd21);
assign add_ln83_21_fu_959_p2 = (trunc_ln83_reg_1249 + 10'd22);
assign add_ln83_22_fu_985_p2 = (trunc_ln83_reg_1249 + 10'd23);
assign add_ln83_23_fu_1011_p2 = (trunc_ln83_reg_1249 + 10'd24);
assign add_ln83_24_fu_1037_p2 = (trunc_ln83_reg_1249 + 10'd25);
assign add_ln83_25_fu_1063_p2 = (trunc_ln83_reg_1249 + 10'd26);
assign add_ln83_26_fu_1089_p2 = (trunc_ln83_reg_1249 + 10'd27);
assign add_ln83_27_fu_1115_p2 = (trunc_ln83_reg_1249 + 10'd28);
assign add_ln83_28_fu_1141_p2 = (trunc_ln83_reg_1249 + 10'd29);
assign add_ln83_29_fu_1167_p2 = (trunc_ln83_reg_1249 + 10'd30);
assign add_ln83_2_fu_465_p2 = (trunc_ln83_reg_1249 + 10'd3);
assign add_ln83_30_fu_1193_p2 = (trunc_ln83_reg_1249 + 10'd31);
assign add_ln83_31_fu_1222_p2 = (a_str_idx_5_reg_1239 + 32'd32);
assign add_ln83_3_fu_491_p2 = (trunc_ln83_reg_1249 + 10'd4);
assign add_ln83_4_fu_517_p2 = (trunc_ln83_reg_1249 + 10'd5);
assign add_ln83_5_fu_543_p2 = (trunc_ln83_reg_1249 + 10'd6);
assign add_ln83_6_fu_569_p2 = (trunc_ln83_reg_1249 + 10'd7);
assign add_ln83_7_fu_595_p2 = (trunc_ln83_reg_1249 + 10'd8);
assign add_ln83_8_fu_621_p2 = (trunc_ln83_reg_1249 + 10'd9);
assign add_ln83_9_fu_647_p2 = (trunc_ln83_reg_1249 + 10'd10);
assign add_ln83_fu_411_p2 = (trunc_ln83_fu_407_p1 + 10'd1);
assign alignedA_address0 = alignedA_address0_local;
assign alignedA_address1 = alignedA_address1_local;
assign alignedA_ce0 = alignedA_ce0_local;
assign alignedA_ce1 = alignedA_ce1_local;
assign alignedA_d0 = 8'd95;
assign alignedA_d1 = 8'd95;
assign alignedA_we0 = alignedA_we0_local;
assign alignedA_we1 = alignedA_we1_local;
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
ap_condition_1512 = ((icmp_ln83_17_reg_1346 == 1'd0) & (icmp_ln83_18_reg_1350 == 1'd0) & (icmp_ln83_19_reg_1354 == 1'd0) & (icmp_ln83_20_reg_1358 == 1'd0) & (icmp_ln83_21_reg_1362 == 1'd0) & (icmp_ln83_22_reg_1366 == 1'd0) & (icmp_ln83_23_reg_1370 == 1'd0) & (icmp_ln83_24_reg_1374 == 1'd0) & (icmp_ln83_25_reg_1378 == 1'd0) & (icmp_ln83_26_reg_1382 == 1'd0) & (icmp_ln83_27_reg_1386 == 1'd0) & (icmp_ln83_28_reg_1390 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln83_31_reg_1407 == 1'd0) & (icmp_ln83_30_reg_1398 == 1'd0) & (icmp_ln83_29_reg_1394 == 1'd0) & (icmp_ln83_reg_1245 == 1'd1) & (icmp_ln83_1_reg_1282 == 1'd0) & (icmp_ln83_2_reg_1286 == 1'd0) & (icmp_ln83_3_reg_1290 == 1'd0) & (icmp_ln83_4_reg_1294 == 1'd0) & (icmp_ln83_5_reg_1298 == 1'd0) & (icmp_ln83_6_reg_1302 == 1'd0) & (icmp_ln83_7_reg_1306 == 1'd0) & (icmp_ln83_8_reg_1310 == 1'd0) & (icmp_ln83_9_reg_1314 == 1'd0) & (icmp_ln83_10_reg_1318 == 1'd0) & (icmp_ln83_11_reg_1322 == 1'd0) & (icmp_ln83_12_reg_1326 == 1'd0) & (icmp_ln83_13_reg_1330 == 1'd0) & (icmp_ln83_14_reg_1334== 1'd0) & (icmp_ln83_15_reg_1338 == 1'd0) & (icmp_ln83_16_reg_1342 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign icmp_ln83_10_fu_667_p2 = ((tmp_41_fu_657_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_11_fu_693_p2 = ((tmp_42_fu_683_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_12_fu_719_p2 = ((tmp_43_fu_709_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_13_fu_745_p2 = ((tmp_44_fu_735_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_14_fu_771_p2 = ((tmp_45_fu_761_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_15_fu_797_p2 = ((tmp_46_fu_787_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_16_fu_823_p2 = ((tmp_47_fu_813_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_17_fu_849_p2 = ((tmp_48_fu_839_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_18_fu_875_p2 = ((tmp_49_fu_865_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_19_fu_901_p2 = ((tmp_50_fu_891_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_1_fu_432_p2 = ((tmp_32_fu_422_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_20_fu_927_p2 = ((tmp_51_fu_917_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_21_fu_953_p2 = ((tmp_52_fu_943_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_22_fu_979_p2 = ((tmp_53_fu_969_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_23_fu_1005_p2 = ((tmp_54_fu_995_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_24_fu_1031_p2 = ((tmp_55_fu_1021_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_25_fu_1057_p2 = ((tmp_56_fu_1047_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_26_fu_1083_p2 = ((tmp_57_fu_1073_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_27_fu_1109_p2 = ((tmp_58_fu_1099_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_28_fu_1135_p2 = ((tmp_59_fu_1125_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_29_fu_1161_p2 = ((tmp_60_fu_1151_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_2_fu_459_p2 = ((tmp_33_fu_449_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_30_fu_1187_p2 = ((tmp_61_fu_1177_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_31_fu_1208_p2 = ((tmp_62_fu_1198_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_3_fu_485_p2 = ((tmp_34_fu_475_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_4_fu_511_p2 = ((tmp_35_fu_501_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_5_fu_537_p2 = ((tmp_36_fu_527_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_6_fu_563_p2 = ((tmp_37_fu_553_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_7_fu_589_p2 = ((tmp_38_fu_579_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_8_fu_615_p2 = ((tmp_39_fu_605_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_9_fu_641_p2 = ((tmp_40_fu_631_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_fu_401_p2 = (($signed(tmp_fu_391_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign tmp_32_fu_422_p4 = {{add_ln83_fu_411_p2[9:8]}};
assign tmp_33_fu_449_p4 = {{add_ln83_1_fu_438_p2[9:8]}};
assign tmp_34_fu_475_p4 = {{add_ln83_2_fu_465_p2[9:8]}};
assign tmp_35_fu_501_p4 = {{add_ln83_3_fu_491_p2[9:8]}};
assign tmp_36_fu_527_p4 = {{add_ln83_4_fu_517_p2[9:8]}};
assign tmp_37_fu_553_p4 = {{add_ln83_5_fu_543_p2[9:8]}};
assign tmp_38_fu_579_p4 = {{add_ln83_6_fu_569_p2[9:8]}};
assign tmp_39_fu_605_p4 = {{add_ln83_7_fu_595_p2[9:8]}};
assign tmp_40_fu_631_p4 = {{add_ln83_8_fu_621_p2[9:8]}};
assign tmp_41_fu_657_p4 = {{add_ln83_9_fu_647_p2[9:8]}};
assign tmp_42_fu_683_p4 = {{add_ln83_10_fu_673_p2[9:8]}};
assign tmp_43_fu_709_p4 = {{add_ln83_11_fu_699_p2[9:8]}};
assign tmp_44_fu_735_p4 = {{add_ln83_12_fu_725_p2[9:8]}};
assign tmp_45_fu_761_p4 = {{add_ln83_13_fu_751_p2[9:8]}};
assign tmp_46_fu_787_p4 = {{add_ln83_14_fu_777_p2[9:8]}};
assign tmp_47_fu_813_p4 = {{add_ln83_15_fu_803_p2[9:8]}};
assign tmp_48_fu_839_p4 = {{add_ln83_16_fu_829_p2[9:8]}};
assign tmp_49_fu_865_p4 = {{add_ln83_17_fu_855_p2[9:8]}};
assign tmp_50_fu_891_p4 = {{add_ln83_18_fu_881_p2[9:8]}};
assign tmp_51_fu_917_p4 = {{add_ln83_19_fu_907_p2[9:8]}};
assign tmp_52_fu_943_p4 = {{add_ln83_20_fu_933_p2[9:8]}};
assign tmp_53_fu_969_p4 = {{add_ln83_21_fu_959_p2[9:8]}};
assign tmp_54_fu_995_p4 = {{add_ln83_22_fu_985_p2[9:8]}};
assign tmp_55_fu_1021_p4 = {{add_ln83_23_fu_1011_p2[9:8]}};
assign tmp_56_fu_1047_p4 = {{add_ln83_24_fu_1037_p2[9:8]}};
assign tmp_57_fu_1073_p4 = {{add_ln83_25_fu_1063_p2[9:8]}};
assign tmp_58_fu_1099_p4 = {{add_ln83_26_fu_1089_p2[9:8]}};
assign tmp_59_fu_1125_p4 = {{add_ln83_27_fu_1115_p2[9:8]}};
assign tmp_60_fu_1151_p4 = {{add_ln83_28_fu_1141_p2[9:8]}};
assign tmp_61_fu_1177_p4 = {{add_ln83_29_fu_1167_p2[9:8]}};
assign tmp_62_fu_1198_p4 = {{add_ln83_30_fu_1193_p2[9:8]}};
assign tmp_fu_391_p4 = {{a_str_idx_fu_106[31:8]}};
assign trunc_ln83_fu_407_p1 = a_str_idx_fu_106[9:0];
assign zext_ln83_10_fu_652_p1 = add_ln83_9_fu_647_p2;
assign zext_ln83_11_fu_678_p1 = add_ln83_10_fu_673_p2;
assign zext_ln83_12_fu_704_p1 = add_ln83_11_fu_699_p2;
assign zext_ln83_13_fu_730_p1 = add_ln83_12_fu_725_p2;
assign zext_ln83_14_fu_756_p1 = add_ln83_13_fu_751_p2;
assign zext_ln83_15_fu_782_p1 = add_ln83_14_fu_777_p2;
assign zext_ln83_16_fu_808_p1 = add_ln83_15_fu_803_p2;
assign zext_ln83_17_fu_834_p1 = add_ln83_16_fu_829_p2;
assign zext_ln83_18_fu_860_p1 = add_ln83_17_fu_855_p2;
assign zext_ln83_19_fu_886_p1 = add_ln83_18_fu_881_p2;
assign zext_ln83_1_fu_417_p1 = add_ln83_fu_411_p2;
assign zext_ln83_20_fu_912_p1 = add_ln83_19_fu_907_p2;
assign zext_ln83_21_fu_938_p1 = add_ln83_20_fu_933_p2;
assign zext_ln83_22_fu_964_p1 = add_ln83_21_fu_959_p2;
assign zext_ln83_23_fu_990_p1 = add_ln83_22_fu_985_p2;
assign zext_ln83_24_fu_1016_p1 = add_ln83_23_fu_1011_p2;
assign zext_ln83_25_fu_1042_p1 = add_ln83_24_fu_1037_p2;
assign zext_ln83_26_fu_1068_p1 = add_ln83_25_fu_1063_p2;
assign zext_ln83_27_fu_1094_p1 = add_ln83_26_fu_1089_p2;
assign zext_ln83_28_fu_1120_p1 = add_ln83_27_fu_1115_p2;
assign zext_ln83_29_fu_1146_p1 = add_ln83_28_fu_1141_p2;
assign zext_ln83_2_fu_444_p1 = add_ln83_1_fu_438_p2;
assign zext_ln83_30_fu_1172_p1 = add_ln83_29_fu_1167_p2;
assign zext_ln83_31_fu_1218_p1 = add_ln83_30_reg_1402;
assign zext_ln83_3_fu_470_p1 = add_ln83_2_fu_465_p2;
assign zext_ln83_4_fu_496_p1 = add_ln83_3_fu_491_p2;
assign zext_ln83_5_fu_522_p1 = add_ln83_4_fu_517_p2;
assign zext_ln83_6_fu_548_p1 = add_ln83_5_fu_543_p2;
assign zext_ln83_7_fu_574_p1 = add_ln83_6_fu_569_p2;
assign zext_ln83_8_fu_600_p1 = add_ln83_7_fu_595_p2;
assign zext_ln83_9_fu_626_p1 = add_ln83_8_fu_621_p2;
assign zext_ln83_fu_1214_p1 = a_str_idx_5_reg_1239;
endmodule 