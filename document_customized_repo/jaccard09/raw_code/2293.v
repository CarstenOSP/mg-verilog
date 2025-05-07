module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_q0,W_1_address1,W_1_ce1,W_1_we1,W_1_d1,W_1_q1,W_address0,W_ce0,W_we0,W_d0,W_q0,W_address1,W_ce1,W_we1,W_d1,W_q1); 
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
input  [31:0] W_1_q0;
output  [5:0] W_1_address1;
output   W_1_ce1;
output   W_1_we1;
output  [31:0] W_1_d1;
input  [31:0] W_1_q1;
output  [5:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
input  [31:0] W_q0;
output  [5:0] W_address1;
output   W_ce1;
output   W_we1;
output  [31:0] W_d1;
input  [31:0] W_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state6;
reg   [0:0] icmp_ln106_reg_1383;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state10;
reg   [6:0] i_1_reg_1196;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [5:0] trunc_ln7_fu_414_p1;
reg   [5:0] trunc_ln7_reg_1208;
reg   [5:0] lshr_ln_reg_1218;
reg   [4:0] tmp_reg_1251;
reg   [31:0] W_1_load_reg_1256;
wire    ap_CS_fsm_state2;
reg   [31:0] W_load_reg_1263;
reg   [31:0] W_load_1_reg_1270;
reg   [31:0] W_1_load_1_reg_1297;
reg   [31:0] W_load_2_reg_1304;
wire    ap_CS_fsm_state3;
reg   [31:0] W_load_3_reg_1330;
reg   [31:0] W_1_load_2_reg_1337;
reg   [31:0] W_1_load_3_reg_1344;
wire    ap_CS_fsm_state4;
reg   [31:0] W_1_load_4_reg_1355;
reg   [31:0] W_load_4_reg_1362;
reg   [31:0] W_load_5_reg_1369;
reg   [31:0] W_1_load_6_reg_1376;
wire   [0:0] icmp_ln106_fu_707_p2;
wire   [31:0] xor_ln108_fu_778_p2;
reg   [31:0] xor_ln108_reg_1402;
wire    ap_CS_fsm_state5;
wire   [31:0] xor_ln108_2_fu_787_p2;
reg   [31:0] xor_ln108_2_reg_1407;
wire   [63:0] zext_ln108_8_fu_800_p1;
reg   [63:0] zext_ln108_8_reg_1412;
wire   [31:0] xor_ln108_3_fu_805_p2;
reg   [31:0] xor_ln108_3_reg_1417;
wire   [31:0] xor_ln108_5_fu_814_p2;
reg   [31:0] xor_ln108_5_reg_1422;
wire   [31:0] xor_ln108_6_fu_820_p2;
reg   [31:0] xor_ln108_6_reg_1427;
wire   [31:0] xor_ln108_8_fu_829_p2;
reg   [31:0] xor_ln108_8_reg_1432;
reg   [31:0] W_1_load_5_reg_1437;
wire   [31:0] xor_ln108_9_fu_835_p2;
reg   [31:0] xor_ln108_9_reg_1443;
wire   [31:0] xor_ln108_11_fu_845_p2;
reg   [31:0] xor_ln108_11_reg_1448;
reg   [31:0] W_load_6_reg_1455;
reg   [31:0] W_load_7_reg_1460;
wire   [31:0] xor_ln108_12_fu_851_p2;
reg   [31:0] xor_ln108_12_reg_1465;
wire   [31:0] xor_ln108_14_fu_862_p2;
reg   [31:0] xor_ln108_14_reg_1470;
reg   [31:0] W_1_load_7_reg_1477;
wire   [31:0] xor_ln108_24_fu_868_p2;
reg   [31:0] xor_ln108_24_reg_1483;
wire   [63:0] zext_ln108_17_fu_890_p1;
reg   [63:0] zext_ln108_17_reg_1489;
wire   [31:0] xor_ln108_20_fu_920_p2;
reg   [31:0] xor_ln108_20_reg_1494;
wire   [31:0] xor_ln108_23_fu_934_p2;
reg   [31:0] xor_ln108_23_reg_1499;
wire   [31:0] xor_ln108_29_fu_959_p2;
reg   [31:0] xor_ln108_29_reg_1504;
wire   [31:0] xor_ln108_32_fu_974_p2;
reg   [31:0] xor_ln108_32_reg_1509;
wire   [31:0] xor_ln108_35_fu_989_p2;
reg   [31:0] xor_ln108_35_reg_1514;
wire   [31:0] xor_ln108_38_fu_1004_p2;
reg   [31:0] xor_ln108_38_reg_1519;
wire   [31:0] xor_ln108_41_fu_1018_p2;
reg   [31:0] xor_ln108_41_reg_1524;
wire   [31:0] xor_ln108_43_fu_1029_p2;
reg   [31:0] xor_ln108_43_reg_1529;
wire   [31:0] xor_ln108_46_fu_1045_p2;
reg   [31:0] xor_ln108_46_reg_1534;
wire   [31:0] xor_ln108_49_fu_1061_p2;
reg   [31:0] xor_ln108_49_reg_1539;
wire   [31:0] xor_ln108_52_fu_1077_p2;
reg   [31:0] xor_ln108_52_reg_1544;
wire   [31:0] xor_ln108_55_fu_1093_p2;
reg   [31:0] xor_ln108_55_reg_1549;
wire   [31:0] xor_ln108_58_fu_1110_p2;
reg   [31:0] xor_ln108_58_reg_1554;
wire   [63:0] zext_ln108_19_fu_1132_p1;
reg   [63:0] zext_ln108_19_reg_1559;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln108_21_fu_1153_p1;
reg   [63:0] zext_ln108_21_reg_1564;
wire    ap_CS_fsm_state8;
wire   [63:0] zext_ln108_23_fu_1174_p1;
reg   [63:0] zext_ln108_23_reg_1569;
wire    ap_CS_fsm_state9;
wire   [63:0] zext_ln108_fu_444_p1;
wire   [63:0] zext_ln108_1_fu_465_p1;
wire   [63:0] zext_ln108_2_fu_486_p1;
wire   [63:0] zext_ln108_5_fu_507_p1;
wire   [63:0] zext_ln108_3_fu_537_p1;
wire   [63:0] zext_ln108_4_fu_557_p1;
wire   [63:0] zext_ln108_6_fu_577_p1;
wire   [63:0] zext_ln108_7_fu_597_p1;
wire   [63:0] zext_ln108_9_fu_617_p1;
wire   [63:0] zext_ln108_10_fu_637_p1;
wire   [63:0] zext_ln108_11_fu_657_p1;
wire   [63:0] zext_ln108_13_fu_677_p1;
wire   [63:0] zext_ln108_12_fu_697_p1;
wire   [63:0] zext_ln108_14_fu_728_p1;
wire   [63:0] zext_ln108_15_fu_748_p1;
wire   [63:0] zext_ln108_16_fu_768_p1;
wire   [63:0] zext_ln99_fu_773_p1;
wire   [63:0] zext_ln106_fu_879_p1;
wire   [63:0] zext_ln108_18_fu_1121_p1;
wire   [63:0] zext_ln108_20_fu_1142_p1;
wire   [63:0] zext_ln108_22_fu_1163_p1;
reg   [6:0] i_fu_96;
wire   [6:0] add_ln106_2_fu_1179_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_1;
reg    W_1_ce1_local;
reg   [5:0] W_1_address1_local;
reg    W_1_ce0_local;
reg   [5:0] W_1_address0_local;
reg    W_1_we0_local;
reg   [31:0] W_1_d0_local;
reg    W_1_we1_local;
reg   [31:0] W_1_d1_local;
wire   [31:0] xor_ln108_26_fu_944_p2;
reg    W_ce1_local;
reg   [5:0] W_address1_local;
reg    W_ce0_local;
reg   [5:0] W_address0_local;
reg    W_we1_local;
reg   [31:0] W_d1_local;
reg    W_we0_local;
reg   [31:0] W_d0_local;
wire   [31:0] xor_ln108_17_fu_904_p2;
wire   [6:0] add_ln108_fu_428_p2;
wire   [5:0] lshr_ln1_fu_434_p4;
wire   [6:0] add_ln108_1_fu_449_p2;
wire   [5:0] lshr_ln108_1_fu_455_p4;
wire   [5:0] add_ln108_2_fu_470_p2;
wire   [4:0] lshr_ln108_2_fu_476_p4;
wire   [6:0] add_ln108_5_fu_491_p2;
wire   [5:0] lshr_ln108_5_fu_497_p4;
wire   [5:0] add_ln108_3_fu_522_p2;
wire   [4:0] lshr_ln108_3_fu_527_p4;
wire   [6:0] add_ln108_4_fu_542_p2;
wire   [5:0] lshr_ln108_4_fu_547_p4;
wire   [5:0] add_ln108_6_fu_562_p2;
wire   [4:0] lshr_ln108_6_fu_567_p4;
wire   [5:0] add_ln108_7_fu_582_p2;
wire   [4:0] lshr_ln108_7_fu_587_p4;
wire   [6:0] add_ln108_8_fu_602_p2;
wire   [5:0] lshr_ln108_8_fu_607_p4;
wire   [6:0] add_ln108_9_fu_622_p2;
wire   [5:0] lshr_ln108_9_fu_627_p4;
wire   [6:0] add_ln108_10_fu_642_p2;
wire   [5:0] lshr_ln108_s_fu_647_p4;
wire   [6:0] add_ln108_12_fu_662_p2;
wire   [5:0] lshr_ln108_11_fu_667_p4;
wire   [6:0] add_ln108_11_fu_682_p2;
wire   [5:0] lshr_ln108_10_fu_687_p4;
wire   [6:0] add_ln106_fu_702_p2;
wire   [5:0] add_ln108_13_fu_713_p2;
wire   [4:0] lshr_ln108_12_fu_718_p4;
wire   [5:0] add_ln108_14_fu_733_p2;
wire   [4:0] lshr_ln108_13_fu_738_p4;
wire   [5:0] add_ln108_15_fu_753_p2;
wire   [4:0] lshr_ln108_14_fu_758_p4;
wire   [31:0] xor_ln108_1_fu_782_p2;
wire   [5:0] or_ln_fu_793_p3;
wire   [31:0] xor_ln108_4_fu_809_p2;
wire   [31:0] xor_ln108_7_fu_824_p2;
wire   [31:0] xor_ln108_10_fu_840_p2;
wire   [31:0] xor_ln108_13_fu_857_p2;
wire   [5:0] add_ln106_1_fu_874_p2;
wire   [5:0] add_ln108_16_fu_885_p2;
wire   [31:0] xor_ln108_15_fu_895_p2;
wire   [31:0] xor_ln108_16_fu_899_p2;
wire   [31:0] xor_ln108_18_fu_910_p2;
wire   [31:0] xor_ln108_19_fu_915_p2;
wire   [31:0] xor_ln108_22_fu_929_p2;
wire   [31:0] xor_ln108_21_fu_925_p2;
wire   [31:0] xor_ln108_25_fu_940_p2;
wire   [31:0] xor_ln108_27_fu_950_p2;
wire   [31:0] xor_ln108_28_fu_954_p2;
wire   [31:0] xor_ln108_30_fu_964_p2;
wire   [31:0] xor_ln108_31_fu_969_p2;
wire   [31:0] xor_ln108_33_fu_979_p2;
wire   [31:0] xor_ln108_34_fu_984_p2;
wire   [31:0] xor_ln108_36_fu_994_p2;
wire   [31:0] xor_ln108_37_fu_999_p2;
wire   [31:0] xor_ln108_40_fu_1013_p2;
wire   [31:0] xor_ln108_39_fu_1009_p2;
wire   [31:0] xor_ln108_42_fu_1024_p2;
wire   [31:0] xor_ln108_45_fu_1039_p2;
wire   [31:0] xor_ln108_44_fu_1035_p2;
wire   [31:0] xor_ln108_48_fu_1055_p2;
wire   [31:0] xor_ln108_47_fu_1051_p2;
wire   [31:0] xor_ln108_51_fu_1071_p2;
wire   [31:0] xor_ln108_50_fu_1067_p2;
wire   [31:0] xor_ln108_53_fu_1083_p2;
wire   [31:0] xor_ln108_54_fu_1087_p2;
wire   [31:0] xor_ln108_57_fu_1104_p2;
wire   [31:0] xor_ln108_56_fu_1099_p2;
wire   [5:0] add_ln108_17_fu_1116_p2;
wire   [5:0] add_ln108_18_fu_1127_p2;
wire   [5:0] add_ln108_19_fu_1137_p2;
wire   [5:0] add_ln108_20_fu_1148_p2;
wire   [5:0] add_ln108_21_fu_1158_p2;
wire   [5:0] add_ln108_22_fu_1169_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 i_fu_96 = 7'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_96 <= 7'd16;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        i_fu_96 <= add_ln106_2_fu_1179_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_load_1_reg_1297 <= W_1_q0;
        W_1_load_reg_1256 <= W_1_q1;
        W_load_1_reg_1270 <= W_q0;
        W_load_reg_1263 <= W_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_load_2_reg_1337 <= W_1_q1;
        W_1_load_3_reg_1344 <= W_1_q0;
        W_load_2_reg_1304 <= W_q1;
        W_load_3_reg_1330 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        W_1_load_4_reg_1355 <= W_1_q1;
        W_1_load_6_reg_1376 <= W_1_q0;
        W_load_4_reg_1362 <= W_q1;
        W_load_5_reg_1369 <= W_q0;
        icmp_ln106_reg_1383 <= icmp_ln106_fu_707_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_1_load_5_reg_1437 <= W_1_q1;
        W_1_load_7_reg_1477 <= W_1_q0;
        W_load_6_reg_1455 <= W_q1;
        W_load_7_reg_1460 <= W_q0;
        xor_ln108_11_reg_1448 <= xor_ln108_11_fu_845_p2;
        xor_ln108_12_reg_1465 <= xor_ln108_12_fu_851_p2;
        xor_ln108_14_reg_1470 <= xor_ln108_14_fu_862_p2;
        xor_ln108_24_reg_1483 <= xor_ln108_24_fu_868_p2;
        xor_ln108_2_reg_1407 <= xor_ln108_2_fu_787_p2;
        xor_ln108_3_reg_1417 <= xor_ln108_3_fu_805_p2;
        xor_ln108_5_reg_1422 <= xor_ln108_5_fu_814_p2;
        xor_ln108_6_reg_1427 <= xor_ln108_6_fu_820_p2;
        xor_ln108_8_reg_1432 <= xor_ln108_8_fu_829_p2;
        xor_ln108_9_reg_1443 <= xor_ln108_9_fu_835_p2;
        xor_ln108_reg_1402 <= xor_ln108_fu_778_p2;
        zext_ln108_8_reg_1412[5 : 1] <= zext_ln108_8_fu_800_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_1_reg_1196 <= ap_sig_allocacmp_i_1;
        lshr_ln_reg_1218 <= {{ap_sig_allocacmp_i_1[6:1]}};
        tmp_reg_1251 <= {{ap_sig_allocacmp_i_1[6:2]}};
        trunc_ln7_reg_1208 <= trunc_ln7_fu_414_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        xor_ln108_20_reg_1494 <= xor_ln108_20_fu_920_p2;
        xor_ln108_23_reg_1499 <= xor_ln108_23_fu_934_p2;
        xor_ln108_29_reg_1504 <= xor_ln108_29_fu_959_p2;
        xor_ln108_32_reg_1509 <= xor_ln108_32_fu_974_p2;
        xor_ln108_35_reg_1514 <= xor_ln108_35_fu_989_p2;
        xor_ln108_38_reg_1519 <= xor_ln108_38_fu_1004_p2;
        xor_ln108_41_reg_1524 <= xor_ln108_41_fu_1018_p2;
        xor_ln108_43_reg_1529 <= xor_ln108_43_fu_1029_p2;
        xor_ln108_46_reg_1534 <= xor_ln108_46_fu_1045_p2;
        xor_ln108_49_reg_1539 <= xor_ln108_49_fu_1061_p2;
        xor_ln108_52_reg_1544 <= xor_ln108_52_fu_1077_p2;
        xor_ln108_55_reg_1549 <= xor_ln108_55_fu_1093_p2;
        xor_ln108_58_reg_1554 <= xor_ln108_58_fu_1110_p2;
        zext_ln108_17_reg_1489[5 : 0] <= zext_ln108_17_fu_890_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        zext_ln108_19_reg_1559[5 : 0] <= zext_ln108_19_fu_1132_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        zext_ln108_21_reg_1564[5 : 0] <= zext_ln108_21_fu_1153_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        zext_ln108_23_reg_1569[5 : 0] <= zext_ln108_23_fu_1174_p1[5 : 0];
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        W_1_address0_local = zext_ln108_21_reg_1564;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        W_1_address0_local = zext_ln108_19_reg_1559;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        W_1_address0_local = zext_ln108_17_reg_1489;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        W_1_address0_local = zext_ln108_8_reg_1412;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        W_1_address0_local = zext_ln99_fu_773_p1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln106_fu_707_p2 == 1'd1))) begin
        W_1_address0_local = zext_ln108_16_fu_768_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_address0_local = zext_ln108_13_fu_677_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address0_local = zext_ln108_7_fu_597_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        W_1_address0_local = zext_ln108_5_fu_507_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        W_1_address1_local = zext_ln108_23_reg_1569;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        W_1_address1_local = zext_ln108_22_fu_1163_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        W_1_address1_local = zext_ln108_20_fu_1142_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        W_1_address1_local = zext_ln108_18_fu_1121_p1;
    end else if (((icmp_ln106_reg_1383 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        W_1_address1_local = zext_ln106_fu_879_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_1_address1_local = zext_ln108_12_fu_697_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_address1_local = zext_ln108_9_fu_617_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address1_local = zext_ln108_6_fu_577_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        W_1_address1_local = zext_ln108_fu_444_p1;
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state4) & (icmp_ln106_fu_707_p2 == 1'd1)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln106_reg_1383 == 1'd1) & (1'b1 == ap_CS_fsm_state6)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        W_1_d0_local = xor_ln108_46_reg_1534;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        W_1_d0_local = xor_ln108_38_reg_1519;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        W_1_d0_local = xor_ln108_29_reg_1504;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        W_1_d0_local = xor_ln108_11_reg_1448;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        W_1_d0_local = xor_ln108_5_fu_814_p2;
    end else begin
        W_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        W_1_d1_local = xor_ln108_58_reg_1554;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        W_1_d1_local = xor_ln108_52_reg_1544;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        W_1_d1_local = xor_ln108_41_reg_1524;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        W_1_d1_local = xor_ln108_20_reg_1494;
    end else if (((icmp_ln106_reg_1383 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        W_1_d1_local = xor_ln108_26_fu_944_p2;
    end else begin
        W_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | ((icmp_ln106_reg_1383 == 1'd1) & (1'b1 == ap_CS_fsm_state6)))) begin
        W_1_we1_local = 1'b1;
    end else begin
        W_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        W_address0_local = zext_ln108_23_fu_1174_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        W_address0_local = zext_ln108_21_fu_1153_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        W_address0_local = zext_ln108_19_fu_1132_p1;
    end else if (((icmp_ln106_reg_1383 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        W_address0_local = zext_ln108_17_fu_890_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        W_address0_local = zext_ln108_8_fu_800_p1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln106_fu_707_p2 == 1'd1))) begin
        W_address0_local = zext_ln108_15_fu_748_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_address0_local = zext_ln108_11_fu_657_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_address0_local = zext_ln108_4_fu_557_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        W_address0_local = zext_ln108_2_fu_486_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        W_address1_local = zext_ln108_22_fu_1163_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        W_address1_local = zext_ln108_20_fu_1142_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        W_address1_local = zext_ln108_18_fu_1121_p1;
    end else if (((icmp_ln106_reg_1383 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        W_address1_local = zext_ln106_fu_879_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        W_address1_local = zext_ln99_fu_773_p1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln106_fu_707_p2 == 1'd1))) begin
        W_address1_local = zext_ln108_14_fu_728_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_address1_local = zext_ln108_10_fu_637_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_address1_local = zext_ln108_3_fu_537_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        W_address1_local = zext_ln108_1_fu_465_p1;
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln106_reg_1383 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state4) & (icmp_ln106_fu_707_p2 == 1'd1)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln106_reg_1383 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state4) & (icmp_ln106_fu_707_p2 == 1'd1)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        W_d0_local = xor_ln108_55_reg_1549;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        W_d0_local = xor_ln108_43_reg_1529;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        W_d0_local = xor_ln108_35_reg_1514;
    end else if (((icmp_ln106_reg_1383 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        W_d0_local = xor_ln108_17_fu_904_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        W_d0_local = xor_ln108_8_fu_829_p2;
    end else begin
        W_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        W_d1_local = xor_ln108_49_reg_1539;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        W_d1_local = xor_ln108_23_reg_1499;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        W_d1_local = xor_ln108_32_reg_1509;
    end else if (((icmp_ln106_reg_1383 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        W_d1_local = xor_ln108_14_reg_1470;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        W_d1_local = xor_ln108_2_fu_787_p2;
    end else begin
        W_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | ((icmp_ln106_reg_1383 == 1'd1) & (1'b1 == ap_CS_fsm_state6)))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | ((icmp_ln106_reg_1383 == 1'd1) & (1'b1 == ap_CS_fsm_state6)))) begin
        W_we1_local = 1'b1;
    end else begin
        W_we1_local = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln106_reg_1383 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_1 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_96;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln106_reg_1383 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign W_1_address0 = W_1_address0_local;
assign W_1_address1 = W_1_address1_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_d0 = W_1_d0_local;
assign W_1_d1 = W_1_d1_local;
assign W_1_we0 = W_1_we0_local;
assign W_1_we1 = W_1_we1_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_d0 = W_d0_local;
assign W_d1 = W_d1_local;
assign W_we0 = W_we0_local;
assign W_we1 = W_we1_local;
assign add_ln106_1_fu_874_p2 = (lshr_ln_reg_1218 + 6'd2);
assign add_ln106_2_fu_1179_p2 = (i_1_reg_1196 + 7'd20);
assign add_ln106_fu_702_p2 = (i_1_reg_1196 + 7'd4);
assign add_ln108_10_fu_642_p2 = ($signed(i_1_reg_1196) + $signed(7'd116));
assign add_ln108_11_fu_682_p2 = ($signed(i_1_reg_1196) + $signed(7'd123));
assign add_ln108_12_fu_662_p2 = ($signed(i_1_reg_1196) + $signed(7'd117));
assign add_ln108_13_fu_713_p2 = ($signed(trunc_ln7_reg_1208) + $signed(6'd60));
assign add_ln108_14_fu_733_p2 = ($signed(trunc_ln7_reg_1208) + $signed(6'd54));
assign add_ln108_15_fu_753_p2 = ($signed(trunc_ln7_reg_1208) + $signed(6'd55));
assign add_ln108_16_fu_885_p2 = (lshr_ln_reg_1218 + 6'd3);
assign add_ln108_17_fu_1116_p2 = (lshr_ln_reg_1218 + 6'd4);
assign add_ln108_18_fu_1127_p2 = (lshr_ln_reg_1218 + 6'd5);
assign add_ln108_19_fu_1137_p2 = (lshr_ln_reg_1218 + 6'd6);
assign add_ln108_1_fu_449_p2 = ($signed(ap_sig_allocacmp_i_1) + $signed(7'd120));
assign add_ln108_20_fu_1148_p2 = (lshr_ln_reg_1218 + 6'd7);
assign add_ln108_21_fu_1158_p2 = (lshr_ln_reg_1218 + 6'd8);
assign add_ln108_22_fu_1169_p2 = (lshr_ln_reg_1218 + 6'd9);
assign add_ln108_2_fu_470_p2 = ($signed(trunc_ln7_fu_414_p1) + $signed(6'd50));
assign add_ln108_3_fu_522_p2 = ($signed(trunc_ln7_reg_1208) + $signed(6'd48));
assign add_ln108_4_fu_542_p2 = ($signed(i_1_reg_1196) + $signed(7'd126));
assign add_ln108_5_fu_491_p2 = ($signed(ap_sig_allocacmp_i_1) + $signed(7'd121));
assign add_ln108_6_fu_562_p2 = ($signed(trunc_ln7_reg_1208) + $signed(6'd51));
assign add_ln108_7_fu_582_p2 = ($signed(trunc_ln7_reg_1208) + $signed(6'd49));
assign add_ln108_8_fu_602_p2 = ($signed(i_1_reg_1196) + $signed(7'd127));
assign add_ln108_9_fu_622_p2 = ($signed(i_1_reg_1196) + $signed(7'd122));
assign add_ln108_fu_428_p2 = ($signed(ap_sig_allocacmp_i_1) + $signed(7'd125));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_707_p2 = ((add_ln106_fu_702_p2 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_10_fu_687_p4 = {{add_ln108_11_fu_682_p2[6:1]}};
assign lshr_ln108_11_fu_667_p4 = {{add_ln108_12_fu_662_p2[6:1]}};
assign lshr_ln108_12_fu_718_p4 = {{add_ln108_13_fu_713_p2[5:1]}};
assign lshr_ln108_13_fu_738_p4 = {{add_ln108_14_fu_733_p2[5:1]}};
assign lshr_ln108_14_fu_758_p4 = {{add_ln108_15_fu_753_p2[5:1]}};
assign lshr_ln108_1_fu_455_p4 = {{add_ln108_1_fu_449_p2[6:1]}};
assign lshr_ln108_2_fu_476_p4 = {{add_ln108_2_fu_470_p2[5:1]}};
assign lshr_ln108_3_fu_527_p4 = {{add_ln108_3_fu_522_p2[5:1]}};
assign lshr_ln108_4_fu_547_p4 = {{add_ln108_4_fu_542_p2[6:1]}};
assign lshr_ln108_5_fu_497_p4 = {{add_ln108_5_fu_491_p2[6:1]}};
assign lshr_ln108_6_fu_567_p4 = {{add_ln108_6_fu_562_p2[5:1]}};
assign lshr_ln108_7_fu_587_p4 = {{add_ln108_7_fu_582_p2[5:1]}};
assign lshr_ln108_8_fu_607_p4 = {{add_ln108_8_fu_602_p2[6:1]}};
assign lshr_ln108_9_fu_627_p4 = {{add_ln108_9_fu_622_p2[6:1]}};
assign lshr_ln108_s_fu_647_p4 = {{add_ln108_10_fu_642_p2[6:1]}};
assign lshr_ln1_fu_434_p4 = {{add_ln108_fu_428_p2[6:1]}};
assign or_ln_fu_793_p3 = {{tmp_reg_1251}, {1'd1}};
assign trunc_ln7_fu_414_p1 = ap_sig_allocacmp_i_1[5:0];
assign xor_ln108_10_fu_840_p2 = (xor_ln108_9_fu_835_p2 ^ W_1_load_2_reg_1337);
assign xor_ln108_11_fu_845_p2 = (xor_ln108_10_fu_840_p2 ^ W_1_q1);
assign xor_ln108_12_fu_851_p2 = (xor_ln108_5_fu_814_p2 ^ W_q0);
assign xor_ln108_13_fu_857_p2 = (xor_ln108_12_fu_851_p2 ^ W_load_5_reg_1369);
assign xor_ln108_14_fu_862_p2 = (xor_ln108_13_fu_857_p2 ^ W_q1);
assign xor_ln108_15_fu_895_p2 = (xor_ln108_11_reg_1448 ^ W_load_reg_1263);
assign xor_ln108_16_fu_899_p2 = (xor_ln108_15_fu_895_p2 ^ W_load_7_reg_1460);
assign xor_ln108_17_fu_904_p2 = (xor_ln108_16_fu_899_p2 ^ W_load_3_reg_1330);
assign xor_ln108_18_fu_910_p2 = (xor_ln108_17_fu_904_p2 ^ W_1_load_5_reg_1437);
assign xor_ln108_19_fu_915_p2 = (xor_ln108_3_reg_1417 ^ xor_ln108_18_fu_910_p2);
assign xor_ln108_1_fu_782_p2 = (xor_ln108_fu_778_p2 ^ W_load_2_reg_1304);
assign xor_ln108_20_fu_920_p2 = (xor_ln108_19_fu_915_p2 ^ W_1_load_3_reg_1344);
assign xor_ln108_21_fu_925_p2 = (W_load_5_reg_1369 ^ W_load_3_reg_1330);
assign xor_ln108_22_fu_929_p2 = (xor_ln108_20_fu_920_p2 ^ xor_ln108_12_reg_1465);
assign xor_ln108_23_fu_934_p2 = (xor_ln108_22_fu_929_p2 ^ xor_ln108_21_fu_925_p2);
assign xor_ln108_24_fu_868_p2 = (xor_ln108_8_fu_829_p2 ^ W_1_q0);
assign xor_ln108_25_fu_940_p2 = (xor_ln108_24_reg_1483 ^ W_1_load_reg_1256);
assign xor_ln108_26_fu_944_p2 = (xor_ln108_25_fu_940_p2 ^ W_1_load_6_reg_1376);
assign xor_ln108_27_fu_950_p2 = (xor_ln108_14_reg_1470 ^ W_1_load_1_reg_1297);
assign xor_ln108_28_fu_954_p2 = (xor_ln108_27_fu_950_p2 ^ W_1_load_4_reg_1355);
assign xor_ln108_29_fu_959_p2 = (xor_ln108_28_fu_954_p2 ^ W_1_load_7_reg_1477);
assign xor_ln108_2_fu_787_p2 = (xor_ln108_1_fu_782_p2 ^ W_load_reg_1263);
assign xor_ln108_30_fu_964_p2 = (xor_ln108_26_fu_944_p2 ^ W_load_4_reg_1362);
assign xor_ln108_31_fu_969_p2 = (xor_ln108_reg_1402 ^ xor_ln108_30_fu_964_p2);
assign xor_ln108_32_fu_974_p2 = (xor_ln108_31_fu_969_p2 ^ W_load_2_reg_1304);
assign xor_ln108_33_fu_979_p2 = (xor_ln108_29_fu_959_p2 ^ W_load_6_reg_1455);
assign xor_ln108_34_fu_984_p2 = (xor_ln108_6_reg_1427 ^ xor_ln108_33_fu_979_p2);
assign xor_ln108_35_fu_989_p2 = (xor_ln108_34_fu_984_p2 ^ W_load_1_reg_1270);
assign xor_ln108_36_fu_994_p2 = (xor_ln108_32_fu_974_p2 ^ W_1_load_reg_1256);
assign xor_ln108_37_fu_999_p2 = (xor_ln108_9_reg_1443 ^ xor_ln108_36_fu_994_p2);
assign xor_ln108_38_fu_1004_p2 = (xor_ln108_37_fu_999_p2 ^ W_1_load_2_reg_1337);
assign xor_ln108_39_fu_1009_p2 = (W_1_load_6_reg_1376 ^ W_1_load_4_reg_1355);
assign xor_ln108_3_fu_805_p2 = (W_load_3_reg_1330 ^ W_1_load_2_reg_1337);
assign xor_ln108_40_fu_1013_p2 = (xor_ln108_35_fu_989_p2 ^ xor_ln108_24_reg_1483);
assign xor_ln108_41_fu_1018_p2 = (xor_ln108_40_fu_1013_p2 ^ xor_ln108_39_fu_1009_p2);
assign xor_ln108_42_fu_1024_p2 = (xor_ln108_38_fu_1004_p2 ^ xor_ln108_2_reg_1407);
assign xor_ln108_43_fu_1029_p2 = (xor_ln108_42_fu_1024_p2 ^ xor_ln108_16_fu_899_p2);
assign xor_ln108_44_fu_1035_p2 = (xor_ln108_5_reg_1422 ^ W_1_load_7_reg_1477);
assign xor_ln108_45_fu_1039_p2 = (xor_ln108_27_fu_950_p2 ^ xor_ln108_23_fu_934_p2);
assign xor_ln108_46_fu_1045_p2 = (xor_ln108_45_fu_1039_p2 ^ xor_ln108_44_fu_1035_p2);
assign xor_ln108_47_fu_1051_p2 = (xor_ln108_8_reg_1432 ^ W_load_reg_1263);
assign xor_ln108_48_fu_1055_p2 = (xor_ln108_41_fu_1018_p2 ^ xor_ln108_30_fu_964_p2);
assign xor_ln108_49_fu_1061_p2 = (xor_ln108_48_fu_1055_p2 ^ xor_ln108_47_fu_1051_p2);
assign xor_ln108_4_fu_809_p2 = (xor_ln108_3_fu_805_p2 ^ W_1_load_3_reg_1344);
assign xor_ln108_50_fu_1067_p2 = (xor_ln108_11_reg_1448 ^ W_1_load_1_reg_1297);
assign xor_ln108_51_fu_1071_p2 = (xor_ln108_43_fu_1029_p2 ^ xor_ln108_18_fu_910_p2);
assign xor_ln108_52_fu_1077_p2 = (xor_ln108_51_fu_1071_p2 ^ xor_ln108_50_fu_1067_p2);
assign xor_ln108_53_fu_1083_p2 = (xor_ln108_14_reg_1470 ^ W_load_4_reg_1362);
assign xor_ln108_54_fu_1087_p2 = (xor_ln108_53_fu_1083_p2 ^ xor_ln108_33_fu_979_p2);
assign xor_ln108_55_fu_1093_p2 = (xor_ln108_54_fu_1087_p2 ^ xor_ln108_46_fu_1045_p2);
assign xor_ln108_56_fu_1099_p2 = (xor_ln108_26_fu_944_p2 ^ W_1_load_5_reg_1437);
assign xor_ln108_57_fu_1104_p2 = (xor_ln108_49_fu_1061_p2 ^ xor_ln108_36_fu_994_p2);
assign xor_ln108_58_fu_1110_p2 = (xor_ln108_57_fu_1104_p2 ^ xor_ln108_56_fu_1099_p2);
assign xor_ln108_5_fu_814_p2 = (xor_ln108_4_fu_809_p2 ^ W_1_load_1_reg_1297);
assign xor_ln108_6_fu_820_p2 = (W_load_5_reg_1369 ^ W_1_load_4_reg_1355);
assign xor_ln108_7_fu_824_p2 = (xor_ln108_6_fu_820_p2 ^ W_load_1_reg_1270);
assign xor_ln108_8_fu_829_p2 = (xor_ln108_7_fu_824_p2 ^ W_load_4_reg_1362);
assign xor_ln108_9_fu_835_p2 = (xor_ln108_2_fu_787_p2 ^ W_1_load_6_reg_1376);
assign xor_ln108_fu_778_p2 = (W_load_1_reg_1270 ^ W_1_load_reg_1256);
assign zext_ln106_fu_879_p1 = add_ln106_1_fu_874_p2;
assign zext_ln108_10_fu_637_p1 = lshr_ln108_9_fu_627_p4;
assign zext_ln108_11_fu_657_p1 = lshr_ln108_s_fu_647_p4;
assign zext_ln108_12_fu_697_p1 = lshr_ln108_10_fu_687_p4;
assign zext_ln108_13_fu_677_p1 = lshr_ln108_11_fu_667_p4;
assign zext_ln108_14_fu_728_p1 = lshr_ln108_12_fu_718_p4;
assign zext_ln108_15_fu_748_p1 = lshr_ln108_13_fu_738_p4;
assign zext_ln108_16_fu_768_p1 = lshr_ln108_14_fu_758_p4;
assign zext_ln108_17_fu_890_p1 = add_ln108_16_fu_885_p2;
assign zext_ln108_18_fu_1121_p1 = add_ln108_17_fu_1116_p2;
assign zext_ln108_19_fu_1132_p1 = add_ln108_18_fu_1127_p2;
assign zext_ln108_1_fu_465_p1 = lshr_ln108_1_fu_455_p4;
assign zext_ln108_20_fu_1142_p1 = add_ln108_19_fu_1137_p2;
assign zext_ln108_21_fu_1153_p1 = add_ln108_20_fu_1148_p2;
assign zext_ln108_22_fu_1163_p1 = add_ln108_21_fu_1158_p2;
assign zext_ln108_23_fu_1174_p1 = add_ln108_22_fu_1169_p2;
assign zext_ln108_2_fu_486_p1 = lshr_ln108_2_fu_476_p4;
assign zext_ln108_3_fu_537_p1 = lshr_ln108_3_fu_527_p4;
assign zext_ln108_4_fu_557_p1 = lshr_ln108_4_fu_547_p4;
assign zext_ln108_5_fu_507_p1 = lshr_ln108_5_fu_497_p4;
assign zext_ln108_6_fu_577_p1 = lshr_ln108_6_fu_567_p4;
assign zext_ln108_7_fu_597_p1 = lshr_ln108_7_fu_587_p4;
assign zext_ln108_8_fu_800_p1 = or_ln_fu_793_p3;
assign zext_ln108_9_fu_617_p1 = lshr_ln108_8_fu_607_p4;
assign zext_ln108_fu_444_p1 = lshr_ln1_fu_434_p4;
assign zext_ln99_fu_773_p1 = lshr_ln_reg_1218;
always @ (posedge ap_clk) begin
    zext_ln108_8_reg_1412[0] <= 1'b1;
    zext_ln108_8_reg_1412[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln108_17_reg_1489[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln108_19_reg_1559[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln108_21_reg_1564[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln108_23_reg_1569[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 