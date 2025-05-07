module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_62_reload,B_59_reload,C_104_reload,D_63_reload,E_59_reload,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,W_1_address0,W_1_ce0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,E_14_out,E_14_out_ap_vld,B_14_out,B_14_out_ap_vld,D_60_out,D_60_out_ap_vld,A_59_out,A_59_out_ap_vld,C_57_out,C_57_out_ap_vld); 
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
input  [31:0] A_62_reload;
input  [31:0] B_59_reload;
input  [31:0] C_104_reload;
input  [31:0] D_63_reload;
input  [31:0] E_59_reload;
output  [5:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [5:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [5:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [5:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [31:0] E_14_out;
output   E_14_out_ap_vld;
output  [31:0] B_14_out;
output   B_14_out_ap_vld;
output  [31:0] D_60_out;
output   D_60_out_ap_vld;
output  [31:0] A_59_out;
output   A_59_out_ap_vld;
output  [31:0] C_57_out;
output   C_57_out_ap_vld;
reg ap_idle;
reg E_14_out_ap_vld;
reg B_14_out_ap_vld;
reg D_60_out_ap_vld;
reg A_59_out_ap_vld;
reg C_57_out_ap_vld;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln120_reg_1102;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_subdone;
reg   [31:0] reg_257;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [5:0] i_1_reg_1037;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] lshr_ln100_1_fu_294_p4;
reg   [4:0] lshr_ln100_1_reg_1043;
reg   [31:0] A_reg_1069;
wire   [31:0] add_ln122_2_fu_368_p2;
reg   [31:0] add_ln122_2_reg_1074;
reg   [31:0] W_1_load_reg_1079;
wire   [31:0] C_4_fu_388_p3;
reg   [31:0] C_4_reg_1084;
reg   [31:0] W_load_1_reg_1092;
reg   [31:0] W_1_load_1_reg_1097;
wire   [0:0] icmp_ln120_fu_401_p2;
reg   [31:0] D_reg_1126;
reg   [31:0] C_reg_1131;
wire   [31:0] temp_fu_456_p2;
reg   [31:0] temp_reg_1137;
wire   [1:0] trunc_ln122_1_fu_461_p1;
reg   [1:0] trunc_ln122_1_reg_1142;
reg   [29:0] lshr_ln122_1_reg_1147;
wire   [26:0] trunc_ln122_2_fu_475_p1;
reg   [26:0] trunc_ln122_2_reg_1152;
reg   [4:0] lshr_ln122_2_reg_1157;
wire   [1:0] trunc_ln122_5_fu_489_p1;
reg   [1:0] trunc_ln122_5_reg_1162;
reg   [29:0] lshr_ln122_5_reg_1167;
reg   [31:0] W_1_load_2_reg_1172;
reg   [31:0] W_load_3_reg_1177;
reg   [31:0] W_1_load_3_reg_1182;
wire   [31:0] C_3_fu_503_p3;
reg   [31:0] C_3_reg_1187;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] add_ln122_6_fu_521_p2;
reg   [31:0] add_ln122_6_reg_1193;
wire   [31:0] xor_ln122_5_fu_530_p2;
reg   [31:0] xor_ln122_5_reg_1198;
wire   [31:0] temp_1_fu_550_p2;
reg   [31:0] temp_1_reg_1203;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [26:0] trunc_ln122_4_fu_555_p1;
reg   [26:0] trunc_ln122_4_reg_1208;
reg   [4:0] lshr_ln122_4_reg_1213;
wire   [1:0] trunc_ln122_7_fu_569_p1;
reg   [1:0] trunc_ln122_7_reg_1218;
reg   [29:0] lshr_ln122_7_reg_1223;
wire   [31:0] add_ln122_10_fu_595_p2;
reg   [31:0] add_ln122_10_reg_1228;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] C_5_fu_600_p3;
reg   [31:0] C_5_reg_1233;
wire   [31:0] xor_ln122_7_fu_610_p2;
reg   [31:0] xor_ln122_7_reg_1240;
wire   [31:0] temp_2_fu_620_p2;
reg   [31:0] temp_2_reg_1245;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln122_6_fu_625_p1;
reg   [26:0] trunc_ln122_6_reg_1253;
reg   [4:0] lshr_ln122_6_reg_1258;
wire   [31:0] add_ln122_14_fu_651_p2;
reg   [31:0] add_ln122_14_reg_1263;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] temp_3_fu_660_p2;
reg   [31:0] temp_3_reg_1268;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] C_6_fu_666_p3;
reg   [31:0] C_6_reg_1277;
wire   [31:0] temp_4_fu_719_p2;
reg   [31:0] temp_4_reg_1284;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [26:0] trunc_ln122_10_fu_725_p1;
reg   [26:0] trunc_ln122_10_reg_1289;
reg   [4:0] lshr_ln122_s_reg_1294;
wire   [1:0] trunc_ln122_13_fu_739_p1;
reg   [1:0] trunc_ln122_13_reg_1299;
reg   [29:0] lshr_ln122_12_reg_1304;
wire   [31:0] add_ln122_22_fu_775_p2;
reg   [31:0] add_ln122_22_reg_1309;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [31:0] C_7_fu_792_p3;
reg   [31:0] C_7_reg_1314;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] temp_5_fu_815_p2;
reg   [31:0] temp_5_reg_1320;
wire   [26:0] trunc_ln122_12_fu_820_p1;
reg   [26:0] trunc_ln122_12_reg_1325;
reg   [4:0] lshr_ln122_11_reg_1330;
wire   [31:0] xor_ln122_13_fu_885_p2;
reg   [31:0] xor_ln122_13_reg_1335;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [31:0] add_ln122_26_fu_903_p2;
reg   [31:0] add_ln122_26_reg_1340;
wire   [31:0] xor_ln122_15_fu_919_p2;
reg   [31:0] xor_ln122_15_reg_1345;
wire   [31:0] add_ln122_28_fu_925_p2;
reg   [31:0] add_ln122_28_reg_1350;
wire   [31:0] add_ln122_29_fu_970_p2;
reg   [31:0] add_ln122_29_reg_1355;
wire    ap_block_pp0_stage13_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln100_fu_304_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln100_1_fu_328_p1;
wire   [63:0] zext_ln100_2_fu_412_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln100_3_fu_423_p1;
reg   [31:0] E_fu_86;
wire   [31:0] C_8_fu_873_p3;
wire    ap_loop_init;
reg   [31:0] B_fu_90;
wire   [31:0] temp_6_fu_943_p2;
wire    ap_block_pp0_stage2;
reg   [31:0] E_1_fu_94;
wire   [31:0] C_9_fu_908_p3;
reg   [31:0] B_1_fu_98;
wire   [31:0] temp_7_fu_985_p2;
reg   [31:0] E_2_fu_102;
wire   [31:0] C_2_fu_848_p3;
reg   [5:0] i_fu_106;
wire   [5:0] add_ln120_1_fu_753_p2;
reg   [5:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage8_01001;
reg    W_ce1_local;
reg   [5:0] W_address1_local;
reg    W_ce0_local;
reg   [5:0] W_address0_local;
reg    W_1_ce1_local;
reg   [5:0] W_1_address1_local;
reg    W_1_ce0_local;
reg   [5:0] W_1_address0_local;
wire   [3:0] tmp_s_fu_310_p4;
wire   [4:0] or_ln100_3_fu_320_p3;
wire   [26:0] trunc_ln122_fu_340_p1;
wire   [4:0] lshr_ln4_fu_344_p4;
wire   [31:0] or_ln3_fu_354_p3;
wire   [31:0] add_ln122_1_fu_362_p2;
wire   [1:0] trunc_ln122_3_fu_374_p1;
wire   [29:0] lshr_ln122_3_fu_378_p4;
wire   [5:0] add_ln120_fu_396_p2;
wire   [4:0] add_ln100_fu_407_p2;
wire   [4:0] add_ln100_1_fu_418_p2;
wire   [31:0] xor_ln122_fu_438_p2;
wire   [31:0] xor_ln122_1_fu_444_p2;
wire   [31:0] add_ln122_fu_450_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln122_2_fu_509_p3;
wire   [31:0] add_ln122_5_fu_515_p2;
wire   [31:0] xor_ln122_4_fu_526_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] xor_ln122_2_fu_536_p2;
wire   [31:0] xor_ln122_3_fu_540_p2;
wire   [31:0] add_ln122_4_fu_545_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln122_4_fu_583_p3;
wire   [31:0] add_ln122_9_fu_589_p2;
wire   [31:0] xor_ln122_6_fu_606_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln122_8_fu_616_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln122_6_fu_639_p3;
wire   [31:0] add_ln122_13_fu_645_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln122_12_fu_656_p2;
wire    ap_block_pp0_stage9;
wire   [31:0] xor_ln122_8_fu_685_p2;
wire   [26:0] trunc_ln122_8_fu_673_p1;
wire   [4:0] lshr_ln122_8_fu_676_p4;
wire   [31:0] add_ln122_17_fu_702_p2;
wire   [31:0] xor_ln122_9_fu_689_p2;
wire   [31:0] or_ln122_8_fu_694_p3;
wire   [31:0] add_ln122_16_fu_713_p2;
wire   [31:0] add_ln122_18_fu_707_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln122_s_fu_763_p3;
wire   [31:0] add_ln122_21_fu_769_p2;
wire    ap_block_pp0_stage11;
wire   [1:0] trunc_ln122_9_fu_780_p1;
wire   [29:0] lshr_ln122_9_fu_783_p4;
wire   [31:0] xor_ln122_10_fu_800_p2;
wire   [31:0] xor_ln122_11_fu_804_p2;
wire   [31:0] add_ln122_20_fu_810_p2;
wire   [1:0] trunc_ln122_15_fu_834_p1;
wire   [29:0] lshr_ln122_14_fu_838_p4;
wire    ap_block_pp0_stage12;
wire   [1:0] trunc_ln122_11_fu_861_p1;
wire   [29:0] lshr_ln122_10_fu_864_p4;
wire   [31:0] xor_ln122_12_fu_881_p2;
wire   [31:0] or_ln122_1_fu_891_p3;
wire   [31:0] add_ln122_25_fu_897_p2;
wire   [31:0] xor_ln122_14_fu_914_p2;
wire    ap_block_pp0_stage13;
wire   [31:0] add_ln122_24_fu_939_p2;
wire   [26:0] trunc_ln122_14_fu_948_p1;
wire   [4:0] lshr_ln122_13_fu_952_p4;
wire   [31:0] or_ln122_3_fu_962_p3;
wire   [31:0] add_ln122_30_fu_981_p2;
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
#0 E_fu_86 = 32'd0;
#0 B_fu_90 = 32'd0;
#0 E_1_fu_94 = 32'd0;
#0 B_1_fu_98 = 32'd0;
#0 E_2_fu_102 = 32'd0;
#0 i_fu_106 = 6'd0;
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
            B_1_fu_98 <= A_62_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_1_fu_98 <= temp_7_fu_985_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_90 <= B_59_reload;
    end else if (((icmp_ln120_reg_1102 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        B_fu_90 <= temp_6_fu_943_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_94 <= D_63_reload;
    end else if (((icmp_ln120_reg_1102 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        E_1_fu_94 <= C_9_fu_908_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_102 <= C_104_reload;
    end else if (((icmp_ln120_reg_1102 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        E_2_fu_102 <= C_2_fu_848_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_86 <= E_59_reload;
    end else if (((icmp_ln120_reg_1102 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        E_fu_86 <= C_8_fu_873_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_106 <= 6'd20;
    end else if (((icmp_ln120_reg_1102 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        i_fu_106 <= add_ln120_1_fu_753_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_reg_1069 <= B_1_fu_98;
        add_ln122_2_reg_1074 <= add_ln122_2_fu_368_p2;
        icmp_ln120_reg_1102 <= icmp_ln120_fu_401_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_3_reg_1187 <= C_3_fu_503_p3;
        add_ln122_6_reg_1193 <= add_ln122_6_fu_521_p2;
        xor_ln122_5_reg_1198 <= xor_ln122_5_fu_530_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_4_reg_1084 <= C_4_fu_388_p3;
        W_1_load_1_reg_1097 <= W_1_q0;
        W_1_load_reg_1079 <= W_1_q1;
        W_load_1_reg_1092 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_5_reg_1233 <= C_5_fu_600_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_6_reg_1277 <= C_6_fu_666_p3;
        temp_3_reg_1268 <= temp_3_fu_660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        C_7_reg_1314 <= C_7_fu_792_p3;
        lshr_ln122_11_reg_1330 <= {{temp_5_fu_815_p2[31:27]}};
        temp_5_reg_1320 <= temp_5_fu_815_p2;
        trunc_ln122_12_reg_1325 <= trunc_ln122_12_fu_820_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_reg_1131 <= E_2_fu_102;
        D_reg_1126 <= E_1_fu_94;
        lshr_ln122_1_reg_1147 <= {{B_fu_90[31:2]}};
        lshr_ln122_2_reg_1157 <= {{temp_fu_456_p2[31:27]}};
        lshr_ln122_5_reg_1167 <= {{temp_fu_456_p2[31:2]}};
        temp_reg_1137 <= temp_fu_456_p2;
        trunc_ln122_1_reg_1142 <= trunc_ln122_1_fu_461_p1;
        trunc_ln122_2_reg_1152 <= trunc_ln122_2_fu_475_p1;
        trunc_ln122_5_reg_1162 <= trunc_ln122_5_fu_489_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        W_1_load_2_reg_1172 <= W_1_q1;
        W_1_load_3_reg_1182 <= W_1_q0;
        W_load_3_reg_1177 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln122_10_reg_1228 <= add_ln122_10_fu_595_p2;
        xor_ln122_7_reg_1240 <= xor_ln122_7_fu_610_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln122_14_reg_1263 <= add_ln122_14_fu_651_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln122_22_reg_1309 <= add_ln122_22_fu_775_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln122_26_reg_1340 <= add_ln122_26_fu_903_p2;
        add_ln122_28_reg_1350 <= add_ln122_28_fu_925_p2;
        xor_ln122_13_reg_1335 <= xor_ln122_13_fu_885_p2;
        xor_ln122_15_reg_1345 <= xor_ln122_15_fu_919_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln122_29_reg_1355 <= add_ln122_29_fu_970_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_1037 <= ap_sig_allocacmp_i_1;
        lshr_ln100_1_reg_1043 <= {{ap_sig_allocacmp_i_1[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln122_12_reg_1304 <= {{temp_4_fu_719_p2[31:2]}};
        lshr_ln122_s_reg_1294 <= {{temp_4_fu_719_p2[31:27]}};
        temp_4_reg_1284 <= temp_4_fu_719_p2;
        trunc_ln122_10_reg_1289 <= trunc_ln122_10_fu_725_p1;
        trunc_ln122_13_reg_1299 <= trunc_ln122_13_fu_739_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln122_4_reg_1213 <= {{temp_1_fu_550_p2[31:27]}};
        lshr_ln122_7_reg_1223 <= {{temp_1_fu_550_p2[31:2]}};
        temp_1_reg_1203 <= temp_1_fu_550_p2;
        trunc_ln122_4_reg_1208 <= trunc_ln122_4_fu_555_p1;
        trunc_ln122_7_reg_1218 <= trunc_ln122_7_fu_569_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln122_6_reg_1258 <= {{temp_2_fu_620_p2[31:27]}};
        trunc_ln122_6_reg_1253 <= trunc_ln122_6_fu_625_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_257 <= W_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        temp_2_reg_1245 <= temp_2_fu_620_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1102 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_59_out_ap_vld = 1'b1;
    end else begin
        A_59_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1102 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        B_14_out_ap_vld = 1'b1;
    end else begin
        B_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1102 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_57_out_ap_vld = 1'b1;
    end else begin
        C_57_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1102 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        D_60_out_ap_vld = 1'b1;
    end else begin
        D_60_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1102 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_14_out_ap_vld = 1'b1;
    end else begin
        E_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_1_address0_local = zext_ln100_3_fu_423_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_1_address0_local = zext_ln100_1_fu_328_p1;
        end else begin
            W_1_address0_local = 'bx;
        end
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_1_address1_local = zext_ln100_2_fu_412_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_1_address1_local = zext_ln100_fu_304_p1;
        end else begin
            W_1_address1_local = 'bx;
        end
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_address0_local = zext_ln100_3_fu_423_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_address0_local = zext_ln100_1_fu_328_p1;
        end else begin
            W_address0_local = 'bx;
        end
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_address1_local = zext_ln100_2_fu_412_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_address1_local = zext_ln100_fu_304_p1;
        end else begin
            W_address1_local = 'bx;
        end
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln120_reg_1102 == 1'd0) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 6'd20;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_106;
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
assign A_59_out = (add_ln122_14_reg_1263 + add_ln122_12_fu_656_p2);
assign B_14_out = temp_2_reg_1245;
assign C_2_fu_848_p3 = {{trunc_ln122_15_fu_834_p1}, {lshr_ln122_14_fu_838_p4}};
assign C_3_fu_503_p3 = {{trunc_ln122_1_reg_1142}, {lshr_ln122_1_reg_1147}};
assign C_4_fu_388_p3 = {{trunc_ln122_3_fu_374_p1}, {lshr_ln122_3_fu_378_p4}};
assign C_57_out = {{trunc_ln122_7_reg_1218}, {lshr_ln122_7_reg_1223}};
assign C_5_fu_600_p3 = {{trunc_ln122_5_reg_1162}, {lshr_ln122_5_reg_1167}};
assign C_6_fu_666_p3 = {{trunc_ln122_7_reg_1218}, {lshr_ln122_7_reg_1223}};
assign C_7_fu_792_p3 = {{trunc_ln122_9_fu_780_p1}, {lshr_ln122_9_fu_783_p4}};
assign C_8_fu_873_p3 = {{trunc_ln122_11_fu_861_p1}, {lshr_ln122_10_fu_864_p4}};
assign C_9_fu_908_p3 = {{trunc_ln122_13_reg_1299}, {lshr_ln122_12_reg_1304}};
assign D_60_out = C_5_reg_1233;
assign E_14_out = C_4_reg_1084;
assign W_1_address0 = W_1_address0_local;
assign W_1_address1 = W_1_address1_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln100_1_fu_418_p2 = (lshr_ln100_1_reg_1043 + 5'd3);
assign add_ln100_fu_407_p2 = (lshr_ln100_1_reg_1043 + 5'd2);
assign add_ln120_1_fu_753_p2 = (i_1_reg_1037 + 6'd8);
assign add_ln120_fu_396_p2 = (i_1_reg_1037 + 6'd4);
assign add_ln122_10_fu_595_p2 = (add_ln122_9_fu_589_p2 + C_reg_1131);
assign add_ln122_12_fu_656_p2 = (W_1_load_1_reg_1097 + xor_ln122_7_reg_1240);
assign add_ln122_13_fu_645_p2 = (or_ln122_6_fu_639_p3 + 32'd1859775393);
assign add_ln122_14_fu_651_p2 = (add_ln122_13_fu_645_p2 + C_3_reg_1187);
assign add_ln122_16_fu_713_p2 = (or_ln122_8_fu_694_p3 + reg_257);
assign add_ln122_17_fu_702_p2 = (C_4_reg_1084 + 32'd1859775393);
assign add_ln122_18_fu_707_p2 = (add_ln122_17_fu_702_p2 + xor_ln122_9_fu_689_p2);
assign add_ln122_1_fu_362_p2 = (or_ln3_fu_354_p3 + 32'd1859775393);
assign add_ln122_20_fu_810_p2 = (W_1_load_2_reg_1172 + xor_ln122_11_fu_804_p2);
assign add_ln122_21_fu_769_p2 = (or_ln122_s_fu_763_p3 + 32'd1859775393);
assign add_ln122_22_fu_775_p2 = (add_ln122_21_fu_769_p2 + C_5_reg_1233);
assign add_ln122_24_fu_939_p2 = (W_load_3_reg_1177 + xor_ln122_13_reg_1335);
assign add_ln122_25_fu_897_p2 = (or_ln122_1_fu_891_p3 + 32'd1859775393);
assign add_ln122_26_fu_903_p2 = (add_ln122_25_fu_897_p2 + C_6_reg_1277);
assign add_ln122_28_fu_925_p2 = (W_1_load_3_reg_1182 + C_7_reg_1314);
assign add_ln122_29_fu_970_p2 = (or_ln122_3_fu_962_p3 + 32'd1859775393);
assign add_ln122_2_fu_368_p2 = (add_ln122_1_fu_362_p2 + E_fu_86);
assign add_ln122_30_fu_981_p2 = (add_ln122_28_reg_1350 + xor_ln122_15_reg_1345);
assign add_ln122_4_fu_545_p2 = (W_1_load_reg_1079 + xor_ln122_3_fu_540_p2);
assign add_ln122_5_fu_515_p2 = (or_ln122_2_fu_509_p3 + 32'd1859775393);
assign add_ln122_6_fu_521_p2 = (add_ln122_5_fu_515_p2 + D_reg_1126);
assign add_ln122_8_fu_616_p2 = (W_load_1_reg_1092 + xor_ln122_5_reg_1198);
assign add_ln122_9_fu_589_p2 = (or_ln122_4_fu_583_p3 + 32'd1859775393);
assign add_ln122_fu_450_p2 = (reg_257 + xor_ln122_1_fu_444_p2);
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
assign icmp_ln120_fu_401_p2 = ((add_ln120_fu_396_p2 < 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln100_1_fu_294_p4 = {{ap_sig_allocacmp_i_1[5:1]}};
assign lshr_ln122_10_fu_864_p4 = {{temp_3_reg_1268[31:2]}};
assign lshr_ln122_13_fu_952_p4 = {{temp_6_fu_943_p2[31:27]}};
assign lshr_ln122_14_fu_838_p4 = {{temp_5_fu_815_p2[31:2]}};
assign lshr_ln122_3_fu_378_p4 = {{B_1_fu_98[31:2]}};
assign lshr_ln122_8_fu_676_p4 = {{temp_3_reg_1268[31:27]}};
assign lshr_ln122_9_fu_783_p4 = {{temp_2_reg_1245[31:2]}};
assign lshr_ln4_fu_344_p4 = {{B_1_fu_98[31:27]}};
assign or_ln100_3_fu_320_p3 = {{tmp_s_fu_310_p4}, {1'd1}};
assign or_ln122_1_fu_891_p3 = {{trunc_ln122_12_reg_1325}, {lshr_ln122_11_reg_1330}};
assign or_ln122_2_fu_509_p3 = {{trunc_ln122_2_reg_1152}, {lshr_ln122_2_reg_1157}};
assign or_ln122_3_fu_962_p3 = {{trunc_ln122_14_fu_948_p1}, {lshr_ln122_13_fu_952_p4}};
assign or_ln122_4_fu_583_p3 = {{trunc_ln122_4_reg_1208}, {lshr_ln122_4_reg_1213}};
assign or_ln122_6_fu_639_p3 = {{trunc_ln122_6_reg_1253}, {lshr_ln122_6_reg_1258}};
assign or_ln122_8_fu_694_p3 = {{trunc_ln122_8_fu_673_p1}, {lshr_ln122_8_fu_676_p4}};
assign or_ln122_s_fu_763_p3 = {{trunc_ln122_10_reg_1289}, {lshr_ln122_s_reg_1294}};
assign or_ln3_fu_354_p3 = {{trunc_ln122_fu_340_p1}, {lshr_ln4_fu_344_p4}};
assign temp_1_fu_550_p2 = (add_ln122_6_reg_1193 + add_ln122_4_fu_545_p2);
assign temp_2_fu_620_p2 = (add_ln122_10_reg_1228 + add_ln122_8_fu_616_p2);
assign temp_3_fu_660_p2 = (add_ln122_14_reg_1263 + add_ln122_12_fu_656_p2);
assign temp_4_fu_719_p2 = (add_ln122_16_fu_713_p2 + add_ln122_18_fu_707_p2);
assign temp_5_fu_815_p2 = (add_ln122_22_reg_1309 + add_ln122_20_fu_810_p2);
assign temp_6_fu_943_p2 = (add_ln122_26_reg_1340 + add_ln122_24_fu_939_p2);
assign temp_7_fu_985_p2 = (add_ln122_29_reg_1355 + add_ln122_30_fu_981_p2);
assign temp_fu_456_p2 = (add_ln122_2_reg_1074 + add_ln122_fu_450_p2);
assign tmp_s_fu_310_p4 = {{ap_sig_allocacmp_i_1[5:2]}};
assign trunc_ln122_10_fu_725_p1 = temp_4_fu_719_p2[26:0];
assign trunc_ln122_11_fu_861_p1 = temp_3_reg_1268[1:0];
assign trunc_ln122_12_fu_820_p1 = temp_5_fu_815_p2[26:0];
assign trunc_ln122_13_fu_739_p1 = temp_4_fu_719_p2[1:0];
assign trunc_ln122_14_fu_948_p1 = temp_6_fu_943_p2[26:0];
assign trunc_ln122_15_fu_834_p1 = temp_5_fu_815_p2[1:0];
assign trunc_ln122_1_fu_461_p1 = B_fu_90[1:0];
assign trunc_ln122_2_fu_475_p1 = temp_fu_456_p2[26:0];
assign trunc_ln122_3_fu_374_p1 = B_1_fu_98[1:0];
assign trunc_ln122_4_fu_555_p1 = temp_1_fu_550_p2[26:0];
assign trunc_ln122_5_fu_489_p1 = temp_fu_456_p2[1:0];
assign trunc_ln122_6_fu_625_p1 = temp_2_fu_620_p2[26:0];
assign trunc_ln122_7_fu_569_p1 = temp_1_fu_550_p2[1:0];
assign trunc_ln122_8_fu_673_p1 = temp_3_reg_1268[26:0];
assign trunc_ln122_9_fu_780_p1 = temp_2_reg_1245[1:0];
assign trunc_ln122_fu_340_p1 = B_1_fu_98[26:0];
assign xor_ln122_10_fu_800_p2 = (temp_3_reg_1268 ^ C_6_reg_1277);
assign xor_ln122_11_fu_804_p2 = (xor_ln122_10_fu_800_p2 ^ C_7_fu_792_p3);
assign xor_ln122_12_fu_881_p2 = (temp_4_reg_1284 ^ C_7_reg_1314);
assign xor_ln122_13_fu_885_p2 = (xor_ln122_12_fu_881_p2 ^ C_8_fu_873_p3);
assign xor_ln122_14_fu_914_p2 = (temp_5_reg_1320 ^ C_8_fu_873_p3);
assign xor_ln122_15_fu_919_p2 = (xor_ln122_14_fu_914_p2 ^ C_9_fu_908_p3);
assign xor_ln122_1_fu_444_p2 = (xor_ln122_fu_438_p2 ^ E_2_fu_102);
assign xor_ln122_2_fu_536_p2 = (C_3_reg_1187 ^ A_reg_1069);
assign xor_ln122_3_fu_540_p2 = (xor_ln122_2_fu_536_p2 ^ C_reg_1131);
assign xor_ln122_4_fu_526_p2 = (temp_reg_1137 ^ C_4_reg_1084);
assign xor_ln122_5_fu_530_p2 = (xor_ln122_4_fu_526_p2 ^ C_3_fu_503_p3);
assign xor_ln122_6_fu_606_p2 = (temp_1_reg_1203 ^ C_4_reg_1084);
assign xor_ln122_7_fu_610_p2 = (xor_ln122_6_fu_606_p2 ^ C_5_fu_600_p3);
assign xor_ln122_8_fu_685_p2 = (temp_2_reg_1245 ^ C_5_reg_1233);
assign xor_ln122_9_fu_689_p2 = (xor_ln122_8_fu_685_p2 ^ C_6_reg_1277);
assign xor_ln122_fu_438_p2 = (E_1_fu_94 ^ B_fu_90);
assign zext_ln100_1_fu_328_p1 = or_ln100_3_fu_320_p3;
assign zext_ln100_2_fu_412_p1 = add_ln100_fu_407_p2;
assign zext_ln100_3_fu_423_p1 = add_ln100_1_fu_418_p2;
assign zext_ln100_fu_304_p1 = lshr_ln100_1_fu_294_p4;
endmodule 