module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_31_reload,B_27_reload,C_34_reload,D_31_reload,E_27_reload,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,W_1_address0,W_1_ce0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,W_2_address0,W_2_ce0,W_2_q0,W_2_address1,W_2_ce1,W_2_q1,W_3_address0,W_3_ce0,W_3_q0,W_3_address1,W_3_ce1,W_3_q1,E_26_out,E_26_out_ap_vld,B_26_out,B_26_out_ap_vld,D_29_out,D_29_out_ap_vld,A_29_out,A_29_out_ap_vld,C_28_out,C_28_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 14'd1;
parameter    ap_ST_fsm_pp0_stage1 = 14'd2;
parameter    ap_ST_fsm_pp0_stage2 = 14'd4;
parameter    ap_ST_fsm_pp0_stage3 = 14'd8;
parameter    ap_ST_fsm_pp0_stage4 = 14'd16;
parameter    ap_ST_fsm_pp0_stage5 = 14'd32;
parameter    ap_ST_fsm_pp0_stage6 = 14'd64;
parameter    ap_ST_fsm_pp0_stage7 = 14'd128;
parameter    ap_ST_fsm_pp0_stage8 = 14'd256;
parameter    ap_ST_fsm_pp0_stage9 = 14'd512;
parameter    ap_ST_fsm_pp0_stage10 = 14'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 14'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 14'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 14'd8192;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_31_reload;
input  [31:0] B_27_reload;
input  [31:0] C_34_reload;
input  [31:0] D_31_reload;
input  [31:0] E_27_reload;
output  [4:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [4:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [4:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [4:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [4:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [4:0] W_2_address1;
output   W_2_ce1;
input  [31:0] W_2_q1;
output  [4:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [4:0] W_3_address1;
output   W_3_ce1;
input  [31:0] W_3_q1;
output  [31:0] E_26_out;
output   E_26_out_ap_vld;
output  [31:0] B_26_out;
output   B_26_out_ap_vld;
output  [31:0] D_29_out;
output   D_29_out_ap_vld;
output  [31:0] A_29_out;
output   A_29_out_ap_vld;
output  [31:0] C_28_out;
output   C_28_out_ap_vld;
reg ap_idle;
reg E_26_out_ap_vld;
reg B_26_out_ap_vld;
reg D_29_out_ap_vld;
reg A_29_out_ap_vld;
reg C_28_out_ap_vld;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln120_reg_1064;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_subdone;
reg   [31:0] A_8_reg_1019;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [5:0] i_reg_1024;
wire   [31:0] add_ln122_2_fu_356_p2;
reg   [31:0] add_ln122_2_reg_1034;
wire   [1:0] trunc_ln122_3_fu_362_p1;
reg   [1:0] trunc_ln122_3_reg_1044;
reg   [29:0] lshr_ln122_3_reg_1049;
wire   [0:0] icmp_ln120_fu_382_p2;
reg   [31:0] D_10_reg_1088;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] C_reg_1093;
wire   [31:0] temp_fu_429_p2;
reg   [31:0] temp_reg_1099;
wire   [31:0] C_6_fu_448_p3;
reg   [31:0] C_6_reg_1104;
wire   [26:0] trunc_ln122_2_fu_456_p1;
reg   [26:0] trunc_ln122_2_reg_1111;
reg   [4:0] lshr_ln122_2_reg_1116;
reg   [31:0] W_1_load_reg_1121;
reg   [31:0] W_2_load_reg_1126;
wire   [1:0] trunc_ln122_5_fu_470_p1;
reg   [1:0] trunc_ln122_5_reg_1131;
reg   [29:0] lshr_ln122_5_reg_1136;
reg   [31:0] W_3_load_reg_1141;
reg   [31:0] W_load_1_reg_1146;
reg   [31:0] W_1_load_1_reg_1151;
reg   [31:0] W_2_load_1_reg_1156;
reg   [31:0] W_3_load_1_reg_1161;
wire   [31:0] add_ln122_6_fu_496_p2;
reg   [31:0] add_ln122_6_reg_1166;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] E_18_fu_501_p3;
reg   [31:0] E_18_reg_1171;
wire   [31:0] xor_ln122_5_fu_512_p2;
reg   [31:0] xor_ln122_5_reg_1178;
wire   [26:0] trunc_ln122_4_fu_536_p1;
reg   [26:0] trunc_ln122_4_reg_1183;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln122_4_reg_1188;
wire   [31:0] D_fu_550_p3;
reg   [31:0] D_reg_1193;
wire   [31:0] xor_ln122_7_fu_561_p2;
reg   [31:0] xor_ln122_7_reg_1200;
wire   [1:0] trunc_ln122_7_fu_567_p1;
reg   [1:0] trunc_ln122_7_reg_1205;
reg   [29:0] lshr_ln122_7_reg_1210;
wire   [31:0] add_ln122_10_fu_593_p2;
reg   [31:0] add_ln122_10_reg_1215;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] B_16_fu_602_p2;
reg   [31:0] B_16_reg_1220;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln122_6_fu_607_p1;
reg   [26:0] trunc_ln122_6_reg_1228;
reg   [4:0] lshr_ln122_6_reg_1233;
wire   [31:0] add_ln122_14_fu_633_p2;
reg   [31:0] add_ln122_14_reg_1238;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] A_fu_642_p2;
reg   [31:0] A_reg_1243;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] C_7_fu_648_p3;
reg   [31:0] C_7_reg_1250;
wire   [31:0] add_ln122_16_fu_677_p2;
reg   [31:0] add_ln122_16_reg_1257;
wire   [31:0] temp_4_fu_702_p2;
reg   [31:0] temp_4_reg_1262;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [26:0] trunc_ln122_10_fu_707_p1;
reg   [26:0] trunc_ln122_10_reg_1267;
reg   [4:0] lshr_ln122_s_reg_1272;
wire   [1:0] trunc_ln122_13_fu_721_p1;
reg   [1:0] trunc_ln122_13_reg_1277;
reg   [29:0] lshr_ln122_12_reg_1282;
wire   [31:0] add_ln122_22_fu_757_p2;
reg   [31:0] add_ln122_22_reg_1287;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [31:0] C_8_fu_774_p3;
reg   [31:0] C_8_reg_1292;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] temp_5_fu_797_p2;
reg   [31:0] temp_5_reg_1298;
wire   [26:0] trunc_ln122_12_fu_802_p1;
reg   [26:0] trunc_ln122_12_reg_1303;
reg   [4:0] lshr_ln122_11_reg_1308;
wire   [31:0] xor_ln122_13_fu_867_p2;
reg   [31:0] xor_ln122_13_reg_1313;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [31:0] add_ln122_26_fu_885_p2;
reg   [31:0] add_ln122_26_reg_1318;
wire   [31:0] xor_ln122_15_fu_901_p2;
reg   [31:0] xor_ln122_15_reg_1323;
wire   [31:0] add_ln122_28_fu_907_p2;
reg   [31:0] add_ln122_28_reg_1328;
wire   [31:0] add_ln122_29_fu_952_p2;
reg   [31:0] add_ln122_29_reg_1333;
wire    ap_block_pp0_stage13_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln100_fu_320_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln120_fu_394_p1;
reg   [31:0] E_fu_82;
wire   [31:0] C_9_fu_855_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] B_fu_86;
wire   [31:0] temp_6_fu_925_p2;
wire    ap_block_pp0_stage2;
reg   [31:0] E_7_fu_90;
wire   [31:0] C_10_fu_890_p3;
reg   [31:0] B_6_fu_94;
wire   [31:0] temp_7_fu_967_p2;
reg   [31:0] E_8_fu_98;
wire   [31:0] C_5_fu_830_p3;
reg   [5:0] i_2_fu_102;
wire   [5:0] add_ln120_1_fu_735_p2;
wire    ap_block_pp0_stage8_01001;
reg    W_ce1_local;
reg    W_ce0_local;
reg    W_1_ce1_local;
reg    W_1_ce0_local;
reg    W_2_ce1_local;
reg    W_2_ce0_local;
reg    W_3_ce1_local;
reg    W_3_ce0_local;
wire    ap_block_pp0_stage0;
wire   [3:0] lshr_ln100_1_fu_310_p4;
wire   [26:0] trunc_ln122_fu_328_p1;
wire   [4:0] lshr_ln4_fu_332_p4;
wire   [31:0] or_ln3_fu_342_p3;
wire   [31:0] add_ln122_1_fu_350_p2;
wire   [5:0] add_ln120_fu_376_p2;
wire   [3:0] add_ln100_fu_388_p2;
wire   [31:0] xor_ln122_fu_411_p2;
wire   [31:0] xor_ln122_1_fu_417_p2;
wire   [31:0] add_ln122_fu_423_p2;
wire   [1:0] trunc_ln122_1_fu_434_p1;
wire   [29:0] lshr_ln122_1_fu_438_p4;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln122_2_fu_484_p3;
wire   [31:0] add_ln122_5_fu_490_p2;
wire   [31:0] xor_ln122_4_fu_507_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] xor_ln122_2_fu_517_p2;
wire   [31:0] xor_ln122_3_fu_521_p2;
wire   [31:0] add_ln122_4_fu_526_p2;
wire   [31:0] temp_3_fu_531_p2;
wire   [31:0] xor_ln122_6_fu_556_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln122_4_fu_581_p3;
wire   [31:0] add_ln122_9_fu_587_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln122_8_fu_598_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln122_6_fu_621_p3;
wire   [31:0] add_ln122_13_fu_627_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln122_12_fu_638_p2;
wire   [26:0] trunc_ln122_8_fu_655_p1;
wire   [4:0] lshr_ln122_8_fu_659_p4;
wire   [31:0] or_ln122_8_fu_669_p3;
wire    ap_block_pp0_stage9;
wire   [31:0] xor_ln122_8_fu_682_p2;
wire   [31:0] add_ln122_17_fu_691_p2;
wire   [31:0] xor_ln122_9_fu_686_p2;
wire   [31:0] add_ln122_18_fu_696_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln122_s_fu_745_p3;
wire   [31:0] add_ln122_21_fu_751_p2;
wire    ap_block_pp0_stage11;
wire   [1:0] trunc_ln122_9_fu_762_p1;
wire   [29:0] lshr_ln122_9_fu_765_p4;
wire   [31:0] xor_ln122_10_fu_782_p2;
wire   [31:0] xor_ln122_11_fu_786_p2;
wire   [31:0] add_ln122_20_fu_792_p2;
wire   [1:0] trunc_ln122_15_fu_816_p1;
wire   [29:0] lshr_ln122_14_fu_820_p4;
wire    ap_block_pp0_stage12;
wire   [1:0] trunc_ln122_11_fu_843_p1;
wire   [29:0] lshr_ln122_10_fu_846_p4;
wire   [31:0] xor_ln122_12_fu_863_p2;
wire   [31:0] or_ln122_1_fu_873_p3;
wire   [31:0] add_ln122_25_fu_879_p2;
wire   [31:0] xor_ln122_14_fu_896_p2;
wire    ap_block_pp0_stage13;
wire   [31:0] add_ln122_24_fu_921_p2;
wire   [26:0] trunc_ln122_14_fu_930_p1;
wire   [4:0] lshr_ln122_13_fu_934_p4;
wire   [31:0] or_ln122_3_fu_944_p3;
wire   [31:0] add_ln122_30_fu_963_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [13:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_82 = 32'd0;
#0 B_fu_86 = 32'd0;
#0 E_7_fu_90 = 32'd0;
#0 B_6_fu_94 = 32'd0;
#0 E_8_fu_98 = 32'd0;
#0 i_2_fu_102 = 6'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage13_subdone) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_6_fu_94 <= A_31_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_6_fu_94 <= temp_7_fu_967_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_86 <= B_27_reload;
    end else if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        B_fu_86 <= temp_6_fu_925_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_7_fu_90 <= D_31_reload;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        E_7_fu_90 <= C_10_fu_890_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_8_fu_98 <= C_34_reload;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        E_8_fu_98 <= C_5_fu_830_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_82 <= E_27_reload;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        E_fu_82 <= C_9_fu_855_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_102 <= 6'd20;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        i_2_fu_102 <= add_ln120_1_fu_735_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_8_reg_1019 <= B_6_fu_94;
        add_ln122_2_reg_1034 <= add_ln122_2_fu_356_p2;
        i_reg_1024 <= i_2_fu_102;
        icmp_ln120_reg_1064 <= icmp_ln120_fu_382_p2;
        lshr_ln122_3_reg_1049 <= {{B_6_fu_94[31:2]}};
        trunc_ln122_3_reg_1044 <= trunc_ln122_3_fu_362_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_reg_1243 <= A_fu_642_p2;
        C_7_reg_1250 <= C_7_fu_648_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        B_16_reg_1220 <= B_16_fu_602_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_6_reg_1104 <= C_6_fu_448_p3;
        C_reg_1093 <= E_8_fu_98;
        D_10_reg_1088 <= E_7_fu_90;
        lshr_ln122_2_reg_1116 <= {{temp_fu_429_p2[31:27]}};
        lshr_ln122_5_reg_1136 <= {{temp_fu_429_p2[31:2]}};
        temp_reg_1099 <= temp_fu_429_p2;
        trunc_ln122_2_reg_1111 <= trunc_ln122_2_fu_456_p1;
        trunc_ln122_5_reg_1131 <= trunc_ln122_5_fu_470_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        C_8_reg_1292 <= C_8_fu_774_p3;
        lshr_ln122_11_reg_1308 <= {{temp_5_fu_797_p2[31:27]}};
        temp_5_reg_1298 <= temp_5_fu_797_p2;
        trunc_ln122_12_reg_1303 <= trunc_ln122_12_fu_802_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        D_reg_1193 <= D_fu_550_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_18_reg_1171 <= E_18_fu_501_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        W_1_load_1_reg_1151 <= W_1_q0;
        W_1_load_reg_1121 <= W_1_q1;
        W_2_load_1_reg_1156 <= W_2_q0;
        W_2_load_reg_1126 <= W_2_q1;
        W_3_load_1_reg_1161 <= W_3_q0;
        W_3_load_reg_1141 <= W_3_q1;
        W_load_1_reg_1146 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln122_10_reg_1215 <= add_ln122_10_fu_593_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln122_14_reg_1238 <= add_ln122_14_fu_633_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln122_16_reg_1257 <= add_ln122_16_fu_677_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln122_22_reg_1287 <= add_ln122_22_fu_757_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln122_26_reg_1318 <= add_ln122_26_fu_885_p2;
        add_ln122_28_reg_1328 <= add_ln122_28_fu_907_p2;
        xor_ln122_13_reg_1313 <= xor_ln122_13_fu_867_p2;
        xor_ln122_15_reg_1323 <= xor_ln122_15_fu_901_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln122_29_reg_1333 <= add_ln122_29_fu_952_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln122_6_reg_1166 <= add_ln122_6_fu_496_p2;
        xor_ln122_5_reg_1178 <= xor_ln122_5_fu_512_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln122_12_reg_1282 <= {{temp_4_fu_702_p2[31:2]}};
        lshr_ln122_s_reg_1272 <= {{temp_4_fu_702_p2[31:27]}};
        temp_4_reg_1262 <= temp_4_fu_702_p2;
        trunc_ln122_10_reg_1267 <= trunc_ln122_10_fu_707_p1;
        trunc_ln122_13_reg_1277 <= trunc_ln122_13_fu_721_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln122_4_reg_1188 <= {{temp_3_fu_531_p2[31:27]}};
        lshr_ln122_7_reg_1210 <= {{temp_3_fu_531_p2[31:2]}};
        trunc_ln122_4_reg_1183 <= trunc_ln122_4_fu_536_p1;
        trunc_ln122_7_reg_1205 <= trunc_ln122_7_fu_567_p1;
        xor_ln122_7_reg_1200 <= xor_ln122_7_fu_561_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln122_6_reg_1233 <= {{B_16_fu_602_p2[31:27]}};
        trunc_ln122_6_reg_1228 <= trunc_ln122_6_fu_607_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1064 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_29_out_ap_vld = 1'b1;
    end else begin
        A_29_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1064 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        B_26_out_ap_vld = 1'b1;
    end else begin
        B_26_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1064 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_28_out_ap_vld = 1'b1;
    end else begin
        C_28_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1064 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        D_29_out_ap_vld = 1'b1;
    end else begin
        D_29_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1064 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_26_out_ap_vld = 1'b1;
    end else begin
        E_26_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln120_reg_1064 == 1'd0) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage13_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_29_out = A_fu_642_p2;
assign A_fu_642_p2 = (add_ln122_14_reg_1238 + add_ln122_12_fu_638_p2);
assign B_16_fu_602_p2 = (add_ln122_10_reg_1215 + add_ln122_8_fu_598_p2);
assign B_26_out = B_16_reg_1220;
assign C_10_fu_890_p3 = {{trunc_ln122_13_reg_1277}, {lshr_ln122_12_reg_1282}};
assign C_28_out = {{trunc_ln122_7_reg_1205}, {lshr_ln122_7_reg_1210}};
assign C_5_fu_830_p3 = {{trunc_ln122_15_fu_816_p1}, {lshr_ln122_14_fu_820_p4}};
assign C_6_fu_448_p3 = {{trunc_ln122_1_fu_434_p1}, {lshr_ln122_1_fu_438_p4}};
assign C_7_fu_648_p3 = {{trunc_ln122_7_reg_1205}, {lshr_ln122_7_reg_1210}};
assign C_8_fu_774_p3 = {{trunc_ln122_9_fu_762_p1}, {lshr_ln122_9_fu_765_p4}};
assign C_9_fu_855_p3 = {{trunc_ln122_11_fu_843_p1}, {lshr_ln122_10_fu_846_p4}};
assign D_29_out = D_reg_1193;
assign D_fu_550_p3 = {{trunc_ln122_5_reg_1131}, {lshr_ln122_5_reg_1136}};
assign E_18_fu_501_p3 = {{trunc_ln122_3_reg_1044}, {lshr_ln122_3_reg_1049}};
assign E_26_out = E_18_reg_1171;
assign W_1_address0 = zext_ln120_fu_394_p1;
assign W_1_address1 = zext_ln100_fu_320_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_2_address0 = zext_ln120_fu_394_p1;
assign W_2_address1 = zext_ln100_fu_320_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_3_address0 = zext_ln120_fu_394_p1;
assign W_3_address1 = zext_ln100_fu_320_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_address0 = zext_ln120_fu_394_p1;
assign W_address1 = zext_ln100_fu_320_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln100_fu_388_p2 = (lshr_ln100_1_fu_310_p4 + 4'd1);
assign add_ln120_1_fu_735_p2 = (i_reg_1024 + 6'd8);
assign add_ln120_fu_376_p2 = (i_2_fu_102 + 6'd4);
assign add_ln122_10_fu_593_p2 = (add_ln122_9_fu_587_p2 + C_reg_1093);
assign add_ln122_12_fu_638_p2 = (W_3_load_reg_1141 + xor_ln122_7_reg_1200);
assign add_ln122_13_fu_627_p2 = (or_ln122_6_fu_621_p3 + 32'd1859775393);
assign add_ln122_14_fu_633_p2 = (add_ln122_13_fu_627_p2 + C_6_reg_1104);
assign add_ln122_16_fu_677_p2 = (or_ln122_8_fu_669_p3 + W_load_1_reg_1146);
assign add_ln122_17_fu_691_p2 = (E_18_reg_1171 + 32'd1859775393);
assign add_ln122_18_fu_696_p2 = (add_ln122_17_fu_691_p2 + xor_ln122_9_fu_686_p2);
assign add_ln122_1_fu_350_p2 = (or_ln3_fu_342_p3 + 32'd1859775393);
assign add_ln122_20_fu_792_p2 = (W_1_load_1_reg_1151 + xor_ln122_11_fu_786_p2);
assign add_ln122_21_fu_751_p2 = (or_ln122_s_fu_745_p3 + 32'd1859775393);
assign add_ln122_22_fu_757_p2 = (add_ln122_21_fu_751_p2 + D_reg_1193);
assign add_ln122_24_fu_921_p2 = (W_2_load_1_reg_1156 + xor_ln122_13_reg_1313);
assign add_ln122_25_fu_879_p2 = (or_ln122_1_fu_873_p3 + 32'd1859775393);
assign add_ln122_26_fu_885_p2 = (add_ln122_25_fu_879_p2 + C_7_reg_1250);
assign add_ln122_28_fu_907_p2 = (W_3_load_1_reg_1161 + C_8_reg_1292);
assign add_ln122_29_fu_952_p2 = (or_ln122_3_fu_944_p3 + 32'd1859775393);
assign add_ln122_2_fu_356_p2 = (add_ln122_1_fu_350_p2 + E_fu_82);
assign add_ln122_30_fu_963_p2 = (add_ln122_28_reg_1328 + xor_ln122_15_reg_1323);
assign add_ln122_4_fu_526_p2 = (W_1_load_reg_1121 + xor_ln122_3_fu_521_p2);
assign add_ln122_5_fu_490_p2 = (or_ln122_2_fu_484_p3 + 32'd1859775393);
assign add_ln122_6_fu_496_p2 = (add_ln122_5_fu_490_p2 + D_10_reg_1088);
assign add_ln122_8_fu_598_p2 = (W_2_load_reg_1126 + xor_ln122_5_reg_1178);
assign add_ln122_9_fu_587_p2 = (or_ln122_4_fu_581_p3 + 32'd1859775393);
assign add_ln122_fu_423_p2 = (W_q1 + xor_ln122_1_fu_417_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
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
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign icmp_ln120_fu_382_p2 = ((add_ln120_fu_376_p2 < 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln100_1_fu_310_p4 = {{i_2_fu_102[5:2]}};
assign lshr_ln122_10_fu_846_p4 = {{A_reg_1243[31:2]}};
assign lshr_ln122_13_fu_934_p4 = {{temp_6_fu_925_p2[31:27]}};
assign lshr_ln122_14_fu_820_p4 = {{temp_5_fu_797_p2[31:2]}};
assign lshr_ln122_1_fu_438_p4 = {{B_fu_86[31:2]}};
assign lshr_ln122_8_fu_659_p4 = {{A_fu_642_p2[31:27]}};
assign lshr_ln122_9_fu_765_p4 = {{B_16_reg_1220[31:2]}};
assign lshr_ln4_fu_332_p4 = {{B_6_fu_94[31:27]}};
assign or_ln122_1_fu_873_p3 = {{trunc_ln122_12_reg_1303}, {lshr_ln122_11_reg_1308}};
assign or_ln122_2_fu_484_p3 = {{trunc_ln122_2_reg_1111}, {lshr_ln122_2_reg_1116}};
assign or_ln122_3_fu_944_p3 = {{trunc_ln122_14_fu_930_p1}, {lshr_ln122_13_fu_934_p4}};
assign or_ln122_4_fu_581_p3 = {{trunc_ln122_4_reg_1183}, {lshr_ln122_4_reg_1188}};
assign or_ln122_6_fu_621_p3 = {{trunc_ln122_6_reg_1228}, {lshr_ln122_6_reg_1233}};
assign or_ln122_8_fu_669_p3 = {{trunc_ln122_8_fu_655_p1}, {lshr_ln122_8_fu_659_p4}};
assign or_ln122_s_fu_745_p3 = {{trunc_ln122_10_reg_1267}, {lshr_ln122_s_reg_1272}};
assign or_ln3_fu_342_p3 = {{trunc_ln122_fu_328_p1}, {lshr_ln4_fu_332_p4}};
assign temp_3_fu_531_p2 = (add_ln122_6_reg_1166 + add_ln122_4_fu_526_p2);
assign temp_4_fu_702_p2 = (add_ln122_16_reg_1257 + add_ln122_18_fu_696_p2);
assign temp_5_fu_797_p2 = (add_ln122_22_reg_1287 + add_ln122_20_fu_792_p2);
assign temp_6_fu_925_p2 = (add_ln122_26_reg_1318 + add_ln122_24_fu_921_p2);
assign temp_7_fu_967_p2 = (add_ln122_29_reg_1333 + add_ln122_30_fu_963_p2);
assign temp_fu_429_p2 = (add_ln122_2_reg_1034 + add_ln122_fu_423_p2);
assign trunc_ln122_10_fu_707_p1 = temp_4_fu_702_p2[26:0];
assign trunc_ln122_11_fu_843_p1 = A_reg_1243[1:0];
assign trunc_ln122_12_fu_802_p1 = temp_5_fu_797_p2[26:0];
assign trunc_ln122_13_fu_721_p1 = temp_4_fu_702_p2[1:0];
assign trunc_ln122_14_fu_930_p1 = temp_6_fu_925_p2[26:0];
assign trunc_ln122_15_fu_816_p1 = temp_5_fu_797_p2[1:0];
assign trunc_ln122_1_fu_434_p1 = B_fu_86[1:0];
assign trunc_ln122_2_fu_456_p1 = temp_fu_429_p2[26:0];
assign trunc_ln122_3_fu_362_p1 = B_6_fu_94[1:0];
assign trunc_ln122_4_fu_536_p1 = temp_3_fu_531_p2[26:0];
assign trunc_ln122_5_fu_470_p1 = temp_fu_429_p2[1:0];
assign trunc_ln122_6_fu_607_p1 = B_16_fu_602_p2[26:0];
assign trunc_ln122_7_fu_567_p1 = temp_3_fu_531_p2[1:0];
assign trunc_ln122_8_fu_655_p1 = A_fu_642_p2[26:0];
assign trunc_ln122_9_fu_762_p1 = B_16_reg_1220[1:0];
assign trunc_ln122_fu_328_p1 = B_6_fu_94[26:0];
assign xor_ln122_10_fu_782_p2 = (C_7_reg_1250 ^ A_reg_1243);
assign xor_ln122_11_fu_786_p2 = (xor_ln122_10_fu_782_p2 ^ C_8_fu_774_p3);
assign xor_ln122_12_fu_863_p2 = (temp_4_reg_1262 ^ C_8_reg_1292);
assign xor_ln122_13_fu_867_p2 = (xor_ln122_12_fu_863_p2 ^ C_9_fu_855_p3);
assign xor_ln122_14_fu_896_p2 = (temp_5_reg_1298 ^ C_9_fu_855_p3);
assign xor_ln122_15_fu_901_p2 = (xor_ln122_14_fu_896_p2 ^ C_10_fu_890_p3);
assign xor_ln122_1_fu_417_p2 = (xor_ln122_fu_411_p2 ^ E_8_fu_98);
assign xor_ln122_2_fu_517_p2 = (C_6_reg_1104 ^ A_8_reg_1019);
assign xor_ln122_3_fu_521_p2 = (xor_ln122_2_fu_517_p2 ^ C_reg_1093);
assign xor_ln122_4_fu_507_p2 = (temp_reg_1099 ^ E_18_fu_501_p3);
assign xor_ln122_5_fu_512_p2 = (xor_ln122_4_fu_507_p2 ^ C_6_reg_1104);
assign xor_ln122_6_fu_556_p2 = (temp_3_fu_531_p2 ^ E_18_reg_1171);
assign xor_ln122_7_fu_561_p2 = (xor_ln122_6_fu_556_p2 ^ D_fu_550_p3);
assign xor_ln122_8_fu_682_p2 = (D_reg_1193 ^ B_16_reg_1220);
assign xor_ln122_9_fu_686_p2 = (xor_ln122_8_fu_682_p2 ^ C_7_reg_1250);
assign xor_ln122_fu_411_p2 = (E_7_fu_90 ^ B_fu_86);
assign zext_ln100_fu_320_p1 = lshr_ln100_1_fu_310_p4;
assign zext_ln120_fu_394_p1 = add_ln100_fu_388_p2;
endmodule 