module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_31_reload,B_6_reload,C_27_reload,D_31_reload,E_6_reload,W_address0,W_ce0,W_q0,W_8_address0,W_8_ce0,W_8_q0,W_1_address0,W_1_ce0,W_1_q0,W_9_address0,W_9_ce0,W_9_q0,W_2_address0,W_2_ce0,W_2_q0,W_10_address0,W_10_ce0,W_10_q0,W_3_address0,W_3_ce0,W_3_q0,W_11_address0,W_11_ce0,W_11_q0,W_4_address0,W_4_ce0,W_4_q0,W_12_address0,W_12_ce0,W_12_q0,W_5_address0,W_5_ce0,W_5_q0,W_13_address0,W_13_ce0,W_13_q0,W_6_address0,W_6_ce0,W_6_q0,W_14_address0,W_14_ce0,W_14_q0,W_7_address0,W_7_ce0,W_7_q0,W_15_address0,W_15_ce0,W_15_q0,E_31_out,E_31_out_ap_vld,B_31_out,B_31_out_ap_vld,D_35_out,D_35_out_ap_vld,A_35_out,A_35_out_ap_vld,C_39_out,C_39_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_31_reload;
input  [31:0] B_6_reload;
input  [31:0] C_27_reload;
input  [31:0] D_31_reload;
input  [31:0] E_6_reload;
output  [2:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [2:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [2:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [2:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [2:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [2:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [2:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [2:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [2:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [2:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [2:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [2:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [2:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [2:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [2:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [2:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [31:0] E_31_out;
output   E_31_out_ap_vld;
output  [31:0] B_31_out;
output   B_31_out_ap_vld;
output  [31:0] D_35_out;
output   D_35_out_ap_vld;
output  [31:0] A_35_out;
output   A_35_out_ap_vld;
output  [31:0] C_39_out;
output   C_39_out_ap_vld;
reg ap_idle;
reg E_31_out_ap_vld;
reg B_31_out_ap_vld;
reg D_35_out_ap_vld;
reg A_35_out_ap_vld;
reg C_39_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln124_reg_1392;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_2_reg_1335;
wire   [0:0] icmp_ln126_fu_478_p2;
reg   [0:0] icmp_ln126_reg_1350;
wire   [0:0] icmp_ln124_fu_502_p2;
reg   [31:0] C_reg_1436;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] add_ln126_1_fu_551_p2;
reg   [31:0] add_ln126_1_reg_1443;
wire   [31:0] add_ln126_fu_557_p2;
reg   [31:0] add_ln126_reg_1448;
wire   [1:0] trunc_ln126_1_fu_563_p1;
reg   [1:0] trunc_ln126_1_reg_1453;
reg   [29:0] lshr_ln126_1_reg_1458;
wire   [31:0] add_ln126_5_fu_584_p2;
reg   [31:0] add_ln126_5_reg_1463;
wire   [31:0] select_ln126_2_fu_590_p3;
reg   [31:0] select_ln126_2_reg_1468;
wire   [31:0] select_ln126_3_fu_597_p3;
reg   [31:0] select_ln126_3_reg_1473;
wire   [31:0] select_ln126_4_fu_604_p3;
reg   [31:0] select_ln126_4_reg_1478;
wire   [31:0] select_ln126_5_fu_611_p3;
reg   [31:0] select_ln126_5_reg_1483;
wire   [31:0] select_ln126_6_fu_618_p3;
reg   [31:0] select_ln126_6_reg_1488;
wire   [31:0] select_ln126_7_fu_625_p3;
reg   [31:0] select_ln126_7_reg_1493;
wire   [31:0] temp_fu_662_p2;
reg   [31:0] temp_reg_1498;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_11_fu_667_p3;
reg   [31:0] C_11_reg_1503;
wire   [31:0] add_ln126_4_fu_717_p2;
reg   [31:0] add_ln126_4_reg_1509;
wire   [31:0] E_22_fu_737_p3;
reg   [31:0] E_22_reg_1514;
wire   [31:0] add_ln126_9_fu_745_p2;
reg   [31:0] add_ln126_9_reg_1523;
wire   [1:0] trunc_ln126_5_fu_749_p1;
reg   [1:0] trunc_ln126_5_reg_1528;
reg   [29:0] lshr_ln126_5_reg_1533;
wire   [31:0] add_ln126_13_fu_763_p2;
reg   [31:0] add_ln126_13_reg_1538;
wire   [31:0] add_ln126_17_fu_768_p2;
reg   [31:0] add_ln126_17_reg_1543;
wire   [31:0] temp_9_fu_778_p2;
reg   [31:0] temp_9_reg_1548;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] add_ln126_8_fu_824_p2;
reg   [31:0] add_ln126_8_reg_1553;
wire   [1:0] trunc_ln126_7_fu_830_p1;
reg   [1:0] trunc_ln126_7_reg_1558;
reg   [29:0] lshr_ln126_7_reg_1563;
wire   [31:0] B_21_fu_849_p2;
reg   [31:0] B_21_reg_1568;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] D_fu_854_p3;
reg   [31:0] D_reg_1576;
wire   [31:0] add_ln126_12_fu_903_p2;
reg   [31:0] add_ln126_12_reg_1584;
wire   [31:0] A_fu_914_p2;
reg   [31:0] A_reg_1589;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] C_12_fu_920_p3;
reg   [31:0] C_12_reg_1596;
wire   [31:0] add_ln126_16_fu_970_p2;
reg   [31:0] add_ln126_16_reg_1603;
wire   [31:0] temp_10_fu_981_p2;
reg   [31:0] temp_10_reg_1608;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] C_13_fu_998_p3;
reg   [31:0] C_13_reg_1613;
wire   [31:0] add_ln126_21_fu_1049_p2;
reg   [31:0] add_ln126_21_reg_1620;
wire   [31:0] add_ln126_20_fu_1053_p2;
reg   [31:0] add_ln126_20_reg_1625;
wire   [31:0] add_ln126_25_fu_1059_p2;
reg   [31:0] add_ln126_25_reg_1630;
wire   [1:0] trunc_ln126_13_fu_1063_p1;
reg   [1:0] trunc_ln126_13_reg_1635;
reg   [29:0] lshr_ln126_12_reg_1640;
wire   [31:0] add_ln126_24_fu_1150_p2;
reg   [31:0] add_ln126_24_reg_1645;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] or_ln126_21_fu_1180_p2;
reg   [31:0] or_ln126_21_reg_1650;
wire   [26:0] trunc_ln126_14_fu_1233_p1;
reg   [26:0] trunc_ln126_14_reg_1655;
wire    ap_block_pp0_stage8_11001;
reg   [4:0] lshr_ln126_13_reg_1660;
wire   [31:0] add_ln126_30_fu_1273_p2;
reg   [31:0] add_ln126_30_reg_1665;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln100_2_fu_458_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_11_fu_114;
wire   [31:0] C_14_fu_1099_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_fu_118;
wire   [31:0] C_15_fu_1156_p3;
reg   [31:0] B_fu_122;
wire   [31:0] temp_12_fu_1228_p2;
reg   [31:0] E_12_fu_126;
wire   [31:0] C_10_fu_1200_p3;
reg   [31:0] B_11_fu_130;
wire   [31:0] temp_13_fu_1283_p2;
wire    ap_block_pp0_stage2;
reg   [5:0] i_fu_134;
wire   [5:0] add_ln124_fu_1247_p2;
reg   [5:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage5_01001;
reg    W_ce0_local;
reg    W_8_ce0_local;
reg    W_1_ce0_local;
reg    W_9_ce0_local;
reg    W_2_ce0_local;
reg    W_10_ce0_local;
reg    W_3_ce0_local;
reg    W_11_ce0_local;
reg    W_4_ce0_local;
reg    W_12_ce0_local;
reg    W_5_ce0_local;
reg    W_13_ce0_local;
reg    W_6_ce0_local;
reg    W_14_ce0_local;
reg    W_7_ce0_local;
reg    W_15_ce0_local;
wire   [1:0] lshr_ln100_2_fu_448_p4;
wire   [3:0] trunc_ln14_fu_444_p1;
wire   [2:0] tmp_s_fu_484_p4;
wire   [5:0] or_ln1_fu_494_p3;
wire   [31:0] or_ln126_fu_527_p2;
wire   [31:0] and_ln126_fu_533_p2;
wire   [31:0] and_ln126_1_fu_539_p2;
wire   [31:0] select_ln126_fu_520_p3;
wire   [31:0] or_ln126_1_fu_545_p2;
wire   [31:0] select_ln126_1_fu_577_p3;
wire   [26:0] trunc_ln126_fu_635_p1;
wire   [4:0] lshr_ln5_fu_639_p4;
wire   [31:0] or_ln126_2_fu_649_p3;
wire   [31:0] add_ln126_2_fu_657_p2;
wire   [31:0] or_ln126_3_fu_687_p2;
wire   [31:0] and_ln126_2_fu_692_p2;
wire   [31:0] and_ln126_3_fu_698_p2;
wire   [26:0] trunc_ln126_2_fu_673_p1;
wire   [4:0] lshr_ln126_2_fu_677_p4;
wire   [31:0] or_ln126_6_fu_709_p3;
wire   [31:0] or_ln126_4_fu_703_p2;
wire   [1:0] trunc_ln126_3_fu_723_p1;
wire   [29:0] lshr_ln126_3_fu_727_p4;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln126_6_fu_773_p2;
wire   [31:0] or_ln126_5_fu_797_p2;
wire   [31:0] and_ln126_4_fu_801_p2;
wire   [31:0] and_ln126_5_fu_806_p2;
wire   [26:0] trunc_ln126_4_fu_783_p1;
wire   [4:0] lshr_ln126_4_fu_787_p4;
wire   [31:0] or_ln126_s_fu_816_p3;
wire   [31:0] or_ln126_7_fu_810_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln126_10_fu_844_p2;
wire   [31:0] or_ln126_8_fu_874_p2;
wire   [31:0] and_ln126_6_fu_879_p2;
wire   [31:0] and_ln126_7_fu_884_p2;
wire   [26:0] trunc_ln126_6_fu_860_p1;
wire   [4:0] lshr_ln126_6_fu_864_p4;
wire   [31:0] or_ln126_10_fu_895_p3;
wire   [31:0] or_ln126_9_fu_889_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] add_ln126_14_fu_909_p2;
wire   [31:0] or_ln126_11_fu_941_p2;
wire   [31:0] and_ln126_8_fu_946_p2;
wire   [31:0] and_ln126_9_fu_951_p2;
wire   [26:0] trunc_ln126_8_fu_927_p1;
wire   [4:0] lshr_ln126_8_fu_931_p4;
wire   [31:0] or_ln126_13_fu_962_p3;
wire   [31:0] or_ln126_12_fu_956_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln126_18_fu_976_p2;
wire   [1:0] trunc_ln126_9_fu_986_p1;
wire   [29:0] lshr_ln126_9_fu_989_p4;
wire   [31:0] or_ln126_14_fu_1020_p2;
wire   [31:0] and_ln126_10_fu_1025_p2;
wire   [31:0] and_ln126_11_fu_1030_p2;
wire   [26:0] trunc_ln126_10_fu_1006_p1;
wire   [4:0] lshr_ln126_s_fu_1010_p4;
wire   [31:0] or_ln126_16_fu_1041_p3;
wire   [31:0] or_ln126_15_fu_1035_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] add_ln126_22_fu_1077_p2;
wire   [1:0] trunc_ln126_11_fu_1087_p1;
wire   [29:0] lshr_ln126_10_fu_1090_p4;
wire   [31:0] temp_11_fu_1082_p2;
wire   [31:0] or_ln126_17_fu_1121_p2;
wire   [31:0] and_ln126_12_fu_1126_p2;
wire   [31:0] and_ln126_13_fu_1131_p2;
wire   [26:0] trunc_ln126_12_fu_1107_p1;
wire   [4:0] lshr_ln126_11_fu_1111_p4;
wire   [31:0] or_ln126_19_fu_1142_p3;
wire   [31:0] or_ln126_18_fu_1136_p2;
wire   [31:0] or_ln126_20_fu_1162_p2;
wire   [31:0] and_ln126_14_fu_1168_p2;
wire   [31:0] and_ln126_15_fu_1174_p2;
wire   [1:0] trunc_ln126_15_fu_1186_p1;
wire   [29:0] lshr_ln126_14_fu_1190_p4;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln126_26_fu_1223_p2;
wire   [31:0] or_ln126_22_fu_1262_p3;
wire   [31:0] add_ln126_29_fu_1268_p2;
wire   [31:0] add_ln126_28_fu_1278_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_11_fu_114 = 32'd0;
#0 E_fu_118 = 32'd0;
#0 B_fu_122 = 32'd0;
#0 E_12_fu_126 = 32'd0;
#0 B_11_fu_130 = 32'd0;
#0 i_fu_134 = 6'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_11_fu_130 <= A_31_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_11_fu_130 <= temp_13_fu_1283_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_122 <= B_6_reload;
    end else if (((icmp_ln124_reg_1392 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        B_fu_122 <= temp_12_fu_1228_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_11_fu_114 <= E_6_reload;
    end else if (((icmp_ln124_reg_1392 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        E_11_fu_114 <= C_14_fu_1099_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_12_fu_126 <= C_27_reload;
    end else if (((icmp_ln124_reg_1392 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        E_12_fu_126 <= C_10_fu_1200_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_118 <= D_31_reload;
    end else if (((icmp_ln124_reg_1392 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        E_fu_118 <= C_15_fu_1156_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_134 <= 6'd40;
    end else if (((icmp_ln124_reg_1392 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        i_fu_134 <= add_ln124_fu_1247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_reg_1589 <= A_fu_914_p2;
        C_12_reg_1596 <= C_12_fu_920_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_21_reg_1568 <= B_21_fu_849_p2;
        D_reg_1576 <= D_fu_854_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_11_reg_1503 <= C_11_fu_667_p3;
        add_ln126_13_reg_1538 <= add_ln126_13_fu_763_p2;
        add_ln126_17_reg_1543 <= add_ln126_17_fu_768_p2;
        add_ln126_4_reg_1509 <= add_ln126_4_fu_717_p2;
        add_ln126_9_reg_1523 <= add_ln126_9_fu_745_p2;
        lshr_ln126_5_reg_1533 <= {{temp_fu_662_p2[31:2]}};
        temp_reg_1498 <= temp_fu_662_p2;
        trunc_ln126_5_reg_1528 <= trunc_ln126_5_fu_749_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        C_13_reg_1613 <= C_13_fu_998_p3;
        add_ln126_20_reg_1625 <= add_ln126_20_fu_1053_p2;
        add_ln126_21_reg_1620 <= add_ln126_21_fu_1049_p2;
        add_ln126_25_reg_1630 <= add_ln126_25_fu_1059_p2;
        lshr_ln126_12_reg_1640 <= {{temp_10_fu_981_p2[31:2]}};
        temp_10_reg_1608 <= temp_10_fu_981_p2;
        trunc_ln126_13_reg_1635 <= trunc_ln126_13_fu_1063_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_reg_1436 <= E_12_fu_126;
        add_ln126_1_reg_1443 <= add_ln126_1_fu_551_p2;
        add_ln126_5_reg_1463 <= add_ln126_5_fu_584_p2;
        add_ln126_reg_1448 <= add_ln126_fu_557_p2;
        lshr_ln126_1_reg_1458 <= {{B_fu_122[31:2]}};
        select_ln126_2_reg_1468 <= select_ln126_2_fu_590_p3;
        select_ln126_3_reg_1473 <= select_ln126_3_fu_597_p3;
        select_ln126_4_reg_1478 <= select_ln126_4_fu_604_p3;
        select_ln126_5_reg_1483 <= select_ln126_5_fu_611_p3;
        select_ln126_6_reg_1488 <= select_ln126_6_fu_618_p3;
        select_ln126_7_reg_1493 <= select_ln126_7_fu_625_p3;
        trunc_ln126_1_reg_1453 <= trunc_ln126_1_fu_563_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_22_reg_1514 <= E_22_fu_737_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln126_12_reg_1584 <= add_ln126_12_fu_903_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln126_16_reg_1603 <= add_ln126_16_fu_970_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln126_24_reg_1645 <= add_ln126_24_fu_1150_p2;
        or_ln126_21_reg_1650 <= or_ln126_21_fu_1180_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln126_30_reg_1665 <= add_ln126_30_fu_1273_p2;
        i_2_reg_1335 <= ap_sig_allocacmp_i_2;
        icmp_ln124_reg_1392 <= icmp_ln124_fu_502_p2;
        icmp_ln126_reg_1350 <= icmp_ln126_fu_478_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln126_8_reg_1553 <= add_ln126_8_fu_824_p2;
        lshr_ln126_7_reg_1563 <= {{temp_9_fu_778_p2[31:2]}};
        temp_9_reg_1548 <= temp_9_fu_778_p2;
        trunc_ln126_7_reg_1558 <= trunc_ln126_7_fu_830_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        lshr_ln126_13_reg_1660 <= {{temp_12_fu_1228_p2[31:27]}};
        trunc_ln126_14_reg_1655 <= trunc_ln126_14_fu_1233_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1392 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_35_out_ap_vld = 1'b1;
    end else begin
        A_35_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1392 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_31_out_ap_vld = 1'b1;
    end else begin
        B_31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1392 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_39_out_ap_vld = 1'b1;
    end else begin
        C_39_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1392 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        D_35_out_ap_vld = 1'b1;
    end else begin
        D_35_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1392 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_31_out_ap_vld = 1'b1;
    end else begin
        E_31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_1392 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 6'd40;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_134;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_35_out = A_fu_914_p2;
assign A_fu_914_p2 = (add_ln126_12_reg_1584 + add_ln126_14_fu_909_p2);
assign B_21_fu_849_p2 = (add_ln126_8_reg_1553 + add_ln126_10_fu_844_p2);
assign B_31_out = B_21_reg_1568;
assign C_10_fu_1200_p3 = {{trunc_ln126_15_fu_1186_p1}, {lshr_ln126_14_fu_1190_p4}};
assign C_11_fu_667_p3 = {{trunc_ln126_1_reg_1453}, {lshr_ln126_1_reg_1458}};
assign C_12_fu_920_p3 = {{trunc_ln126_7_reg_1558}, {lshr_ln126_7_reg_1563}};
assign C_13_fu_998_p3 = {{trunc_ln126_9_fu_986_p1}, {lshr_ln126_9_fu_989_p4}};
assign C_14_fu_1099_p3 = {{trunc_ln126_11_fu_1087_p1}, {lshr_ln126_10_fu_1090_p4}};
assign C_15_fu_1156_p3 = {{trunc_ln126_13_reg_1635}, {lshr_ln126_12_reg_1640}};
assign C_39_out = C_12_fu_920_p3;
assign D_35_out = D_reg_1576;
assign D_fu_854_p3 = {{trunc_ln126_5_reg_1528}, {lshr_ln126_5_reg_1533}};
assign E_22_fu_737_p3 = {{trunc_ln126_3_fu_723_p1}, {lshr_ln126_3_fu_727_p4}};
assign E_31_out = E_22_reg_1514;
assign W_10_address0 = zext_ln100_2_fu_458_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_2_fu_458_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_2_fu_458_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_2_fu_458_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_2_fu_458_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_2_fu_458_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_1_address0 = zext_ln100_2_fu_458_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_2_fu_458_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_2_fu_458_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_2_fu_458_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_2_fu_458_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_2_fu_458_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_2_fu_458_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_2_fu_458_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_2_fu_458_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_2_fu_458_p1;
assign W_ce0 = W_ce0_local;
assign add_ln124_fu_1247_p2 = (i_2_reg_1335 + 6'd8);
assign add_ln126_10_fu_844_p2 = ($signed(add_ln126_9_reg_1523) + $signed(32'd2400959708));
assign add_ln126_12_fu_903_p2 = (or_ln126_10_fu_895_p3 + or_ln126_9_fu_889_p2);
assign add_ln126_13_fu_763_p2 = (C_11_fu_667_p3 + select_ln126_3_reg_1473);
assign add_ln126_14_fu_909_p2 = ($signed(add_ln126_13_reg_1538) + $signed(32'd2400959708));
assign add_ln126_16_fu_970_p2 = (or_ln126_13_fu_962_p3 + or_ln126_12_fu_956_p2);
assign add_ln126_17_fu_768_p2 = (E_22_fu_737_p3 + select_ln126_4_reg_1478);
assign add_ln126_18_fu_976_p2 = ($signed(add_ln126_17_reg_1543) + $signed(32'd2400959708));
assign add_ln126_1_fu_551_p2 = ($signed(32'd2400959708) + $signed(select_ln126_fu_520_p3));
assign add_ln126_20_fu_1053_p2 = (or_ln126_16_fu_1041_p3 + or_ln126_15_fu_1035_p2);
assign add_ln126_21_fu_1049_p2 = (D_reg_1576 + select_ln126_5_reg_1483);
assign add_ln126_22_fu_1077_p2 = ($signed(add_ln126_21_reg_1620) + $signed(32'd2400959708));
assign add_ln126_24_fu_1150_p2 = (or_ln126_19_fu_1142_p3 + or_ln126_18_fu_1136_p2);
assign add_ln126_25_fu_1059_p2 = (C_12_reg_1596 + select_ln126_6_reg_1488);
assign add_ln126_26_fu_1223_p2 = ($signed(add_ln126_25_reg_1630) + $signed(32'd2400959708));
assign add_ln126_28_fu_1278_p2 = ($signed(C_13_reg_1613) + $signed(32'd2400959708));
assign add_ln126_29_fu_1268_p2 = (or_ln126_22_fu_1262_p3 + select_ln126_7_reg_1493);
assign add_ln126_2_fu_657_p2 = (or_ln126_2_fu_649_p3 + add_ln126_1_reg_1443);
assign add_ln126_30_fu_1273_p2 = (add_ln126_29_fu_1268_p2 + or_ln126_21_reg_1650);
assign add_ln126_4_fu_717_p2 = (or_ln126_6_fu_709_p3 + or_ln126_4_fu_703_p2);
assign add_ln126_5_fu_584_p2 = (E_fu_118 + select_ln126_1_fu_577_p3);
assign add_ln126_6_fu_773_p2 = ($signed(add_ln126_5_reg_1463) + $signed(32'd2400959708));
assign add_ln126_8_fu_824_p2 = (or_ln126_s_fu_816_p3 + or_ln126_7_fu_810_p2);
assign add_ln126_9_fu_745_p2 = (C_reg_1436 + select_ln126_2_reg_1468);
assign add_ln126_fu_557_p2 = (or_ln126_1_fu_545_p2 + E_11_fu_114);
assign and_ln126_10_fu_1025_p2 = (or_ln126_14_fu_1020_p2 & A_reg_1589);
assign and_ln126_11_fu_1030_p2 = (C_13_fu_998_p3 & C_12_reg_1596);
assign and_ln126_12_fu_1126_p2 = (temp_10_reg_1608 & or_ln126_17_fu_1121_p2);
assign and_ln126_13_fu_1131_p2 = (C_14_fu_1099_p3 & C_13_reg_1613);
assign and_ln126_14_fu_1168_p2 = (temp_11_fu_1082_p2 & or_ln126_20_fu_1162_p2);
assign and_ln126_15_fu_1174_p2 = (C_15_fu_1156_p3 & C_14_fu_1099_p3);
assign and_ln126_1_fu_539_p2 = (E_fu_118 & E_12_fu_126);
assign and_ln126_2_fu_692_p2 = (or_ln126_3_fu_687_p2 & B_11_fu_130);
assign and_ln126_3_fu_698_p2 = (C_reg_1436 & C_11_fu_667_p3);
assign and_ln126_4_fu_801_p2 = (temp_reg_1498 & or_ln126_5_fu_797_p2);
assign and_ln126_5_fu_806_p2 = (E_22_reg_1514 & C_11_reg_1503);
assign and_ln126_6_fu_879_p2 = (temp_9_reg_1548 & or_ln126_8_fu_874_p2);
assign and_ln126_7_fu_884_p2 = (E_22_reg_1514 & D_fu_854_p3);
assign and_ln126_8_fu_946_p2 = (or_ln126_11_fu_941_p2 & B_21_reg_1568);
assign and_ln126_9_fu_951_p2 = (D_reg_1576 & C_12_fu_920_p3);
assign and_ln126_fu_533_p2 = (or_ln126_fu_527_p2 & B_fu_122);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_01001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign icmp_ln124_fu_502_p2 = ((or_ln1_fu_494_p3 == 6'd60) ? 1'b1 : 1'b0);
assign icmp_ln126_fu_478_p2 = ((trunc_ln14_fu_444_p1 != 4'd0) ? 1'b1 : 1'b0);
assign lshr_ln100_2_fu_448_p4 = {{ap_sig_allocacmp_i_2[5:4]}};
assign lshr_ln126_10_fu_1090_p4 = {{A_reg_1589[31:2]}};
assign lshr_ln126_11_fu_1111_p4 = {{temp_11_fu_1082_p2[31:27]}};
assign lshr_ln126_14_fu_1190_p4 = {{temp_11_fu_1082_p2[31:2]}};
assign lshr_ln126_2_fu_677_p4 = {{temp_fu_662_p2[31:27]}};
assign lshr_ln126_3_fu_727_p4 = {{B_11_fu_130[31:2]}};
assign lshr_ln126_4_fu_787_p4 = {{temp_9_fu_778_p2[31:27]}};
assign lshr_ln126_6_fu_864_p4 = {{B_21_fu_849_p2[31:27]}};
assign lshr_ln126_8_fu_931_p4 = {{A_fu_914_p2[31:27]}};
assign lshr_ln126_9_fu_989_p4 = {{B_21_reg_1568[31:2]}};
assign lshr_ln126_s_fu_1010_p4 = {{temp_10_fu_981_p2[31:27]}};
assign lshr_ln5_fu_639_p4 = {{B_11_fu_130[31:27]}};
assign or_ln126_10_fu_895_p3 = {{trunc_ln126_6_fu_860_p1}, {lshr_ln126_6_fu_864_p4}};
assign or_ln126_11_fu_941_p2 = (D_reg_1576 | C_12_fu_920_p3);
assign or_ln126_12_fu_956_p2 = (and_ln126_9_fu_951_p2 | and_ln126_8_fu_946_p2);
assign or_ln126_13_fu_962_p3 = {{trunc_ln126_8_fu_927_p1}, {lshr_ln126_8_fu_931_p4}};
assign or_ln126_14_fu_1020_p2 = (C_13_fu_998_p3 | C_12_reg_1596);
assign or_ln126_15_fu_1035_p2 = (and_ln126_11_fu_1030_p2 | and_ln126_10_fu_1025_p2);
assign or_ln126_16_fu_1041_p3 = {{trunc_ln126_10_fu_1006_p1}, {lshr_ln126_s_fu_1010_p4}};
assign or_ln126_17_fu_1121_p2 = (C_14_fu_1099_p3 | C_13_reg_1613);
assign or_ln126_18_fu_1136_p2 = (and_ln126_13_fu_1131_p2 | and_ln126_12_fu_1126_p2);
assign or_ln126_19_fu_1142_p3 = {{trunc_ln126_12_fu_1107_p1}, {lshr_ln126_11_fu_1111_p4}};
assign or_ln126_1_fu_545_p2 = (and_ln126_fu_533_p2 | and_ln126_1_fu_539_p2);
assign or_ln126_20_fu_1162_p2 = (C_15_fu_1156_p3 | C_14_fu_1099_p3);
assign or_ln126_21_fu_1180_p2 = (and_ln126_15_fu_1174_p2 | and_ln126_14_fu_1168_p2);
assign or_ln126_22_fu_1262_p3 = {{trunc_ln126_14_reg_1655}, {lshr_ln126_13_reg_1660}};
assign or_ln126_2_fu_649_p3 = {{trunc_ln126_fu_635_p1}, {lshr_ln5_fu_639_p4}};
assign or_ln126_3_fu_687_p2 = (C_reg_1436 | C_11_fu_667_p3);
assign or_ln126_4_fu_703_p2 = (and_ln126_3_fu_698_p2 | and_ln126_2_fu_692_p2);
assign or_ln126_5_fu_797_p2 = (E_22_reg_1514 | C_11_reg_1503);
assign or_ln126_6_fu_709_p3 = {{trunc_ln126_2_fu_673_p1}, {lshr_ln126_2_fu_677_p4}};
assign or_ln126_7_fu_810_p2 = (and_ln126_5_fu_806_p2 | and_ln126_4_fu_801_p2);
assign or_ln126_8_fu_874_p2 = (E_22_reg_1514 | D_fu_854_p3);
assign or_ln126_9_fu_889_p2 = (and_ln126_7_fu_884_p2 | and_ln126_6_fu_879_p2);
assign or_ln126_fu_527_p2 = (E_fu_118 | E_12_fu_126);
assign or_ln126_s_fu_816_p3 = {{trunc_ln126_4_fu_783_p1}, {lshr_ln126_4_fu_787_p4}};
assign or_ln1_fu_494_p3 = {{tmp_s_fu_484_p4}, {3'd4}};
assign select_ln126_1_fu_577_p3 = ((icmp_ln126_reg_1350[0:0] == 1'b1) ? W_9_q0 : W_1_q0);
assign select_ln126_2_fu_590_p3 = ((icmp_ln126_reg_1350[0:0] == 1'b1) ? W_10_q0 : W_2_q0);
assign select_ln126_3_fu_597_p3 = ((icmp_ln126_reg_1350[0:0] == 1'b1) ? W_11_q0 : W_3_q0);
assign select_ln126_4_fu_604_p3 = ((icmp_ln126_reg_1350[0:0] == 1'b1) ? W_12_q0 : W_4_q0);
assign select_ln126_5_fu_611_p3 = ((icmp_ln126_reg_1350[0:0] == 1'b1) ? W_13_q0 : W_5_q0);
assign select_ln126_6_fu_618_p3 = ((icmp_ln126_reg_1350[0:0] == 1'b1) ? W_14_q0 : W_6_q0);
assign select_ln126_7_fu_625_p3 = ((icmp_ln126_reg_1350[0:0] == 1'b1) ? W_15_q0 : W_7_q0);
assign select_ln126_fu_520_p3 = ((icmp_ln126_reg_1350[0:0] == 1'b1) ? W_8_q0 : W_q0);
assign temp_10_fu_981_p2 = (add_ln126_16_reg_1603 + add_ln126_18_fu_976_p2);
assign temp_11_fu_1082_p2 = (add_ln126_20_reg_1625 + add_ln126_22_fu_1077_p2);
assign temp_12_fu_1228_p2 = (add_ln126_24_reg_1645 + add_ln126_26_fu_1223_p2);
assign temp_13_fu_1283_p2 = (add_ln126_30_reg_1665 + add_ln126_28_fu_1278_p2);
assign temp_9_fu_778_p2 = (add_ln126_4_reg_1509 + add_ln126_6_fu_773_p2);
assign temp_fu_662_p2 = (add_ln126_reg_1448 + add_ln126_2_fu_657_p2);
assign tmp_s_fu_484_p4 = {{ap_sig_allocacmp_i_2[5:3]}};
assign trunc_ln126_10_fu_1006_p1 = temp_10_fu_981_p2[26:0];
assign trunc_ln126_11_fu_1087_p1 = A_reg_1589[1:0];
assign trunc_ln126_12_fu_1107_p1 = temp_11_fu_1082_p2[26:0];
assign trunc_ln126_13_fu_1063_p1 = temp_10_fu_981_p2[1:0];
assign trunc_ln126_14_fu_1233_p1 = temp_12_fu_1228_p2[26:0];
assign trunc_ln126_15_fu_1186_p1 = temp_11_fu_1082_p2[1:0];
assign trunc_ln126_1_fu_563_p1 = B_fu_122[1:0];
assign trunc_ln126_2_fu_673_p1 = temp_fu_662_p2[26:0];
assign trunc_ln126_3_fu_723_p1 = B_11_fu_130[1:0];
assign trunc_ln126_4_fu_783_p1 = temp_9_fu_778_p2[26:0];
assign trunc_ln126_5_fu_749_p1 = temp_fu_662_p2[1:0];
assign trunc_ln126_6_fu_860_p1 = B_21_fu_849_p2[26:0];
assign trunc_ln126_7_fu_830_p1 = temp_9_fu_778_p2[1:0];
assign trunc_ln126_8_fu_927_p1 = A_fu_914_p2[26:0];
assign trunc_ln126_9_fu_986_p1 = B_21_reg_1568[1:0];
assign trunc_ln126_fu_635_p1 = B_11_fu_130[26:0];
assign trunc_ln14_fu_444_p1 = ap_sig_allocacmp_i_2[3:0];
assign zext_ln100_2_fu_458_p1 = lshr_ln100_2_fu_448_p4;
endmodule 