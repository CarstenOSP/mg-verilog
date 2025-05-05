module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,W_2_address0,W_2_ce0,W_2_q0,W_3_address0,W_3_ce0,W_3_q0,W_4_address0,W_4_ce0,W_4_q0,W_5_address0,W_5_ce0,W_5_q0,W_6_address0,W_6_ce0,W_6_q0,W_7_address0,W_7_ce0,W_7_q0,E_55_out,E_55_out_ap_vld,B_55_out,B_55_out_ap_vld,D_59_out,D_59_out_ap_vld,A_59_out,A_59_out_ap_vld,C_86_out,C_86_out_ap_vld); 
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
input  [31:0] A;
input  [31:0] B;
input  [31:0] C;
input  [31:0] D;
input  [31:0] E;
output  [3:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [3:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [3:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [3:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [3:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [3:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [3:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [3:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [31:0] E_55_out;
output   E_55_out_ap_vld;
output  [31:0] B_55_out;
output   B_55_out_ap_vld;
output  [31:0] D_59_out;
output   D_59_out_ap_vld;
output  [31:0] A_59_out;
output   A_59_out_ap_vld;
output  [31:0] C_86_out;
output   C_86_out_ap_vld;
reg ap_idle;
reg E_55_out_ap_vld;
reg B_55_out_ap_vld;
reg D_59_out_ap_vld;
reg A_59_out_ap_vld;
reg C_86_out_ap_vld;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln116_reg_1140;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln116_fu_348_p2;
reg   [31:0] W_load_1_reg_1164;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] W_1_load_1_reg_1169;
reg   [31:0] W_2_load_1_reg_1174;
reg   [31:0] W_3_load_1_reg_1179;
reg   [31:0] W_4_load_1_reg_1184;
reg   [31:0] W_5_load_1_reg_1189;
reg   [31:0] W_6_load_1_reg_1194;
reg   [31:0] W_7_load_1_reg_1199;
reg   [31:0] D_32_reg_1204;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] C_45_reg_1209;
wire   [31:0] temp_fu_443_p2;
reg   [31:0] temp_reg_1214;
wire   [31:0] C_46_fu_463_p3;
reg   [31:0] C_46_reg_1220;
wire   [26:0] trunc_ln118_2_fu_471_p1;
reg   [26:0] trunc_ln118_2_reg_1226;
reg   [4:0] lshr_ln118_2_reg_1231;
wire   [31:0] or_ln118_2_fu_503_p2;
reg   [31:0] or_ln118_2_reg_1236;
wire   [31:0] E_61_fu_523_p3;
reg   [31:0] E_61_reg_1241;
wire   [1:0] trunc_ln118_5_fu_531_p1;
reg   [1:0] trunc_ln118_5_reg_1249;
reg   [29:0] lshr_ln118_5_reg_1254;
wire   [31:0] add_ln118_6_fu_557_p2;
reg   [31:0] add_ln118_6_reg_1259;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] or_ln118_3_fu_576_p2;
reg   [31:0] or_ln118_3_reg_1264;
wire   [26:0] trunc_ln118_4_fu_591_p1;
reg   [26:0] trunc_ln118_4_reg_1269;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln118_4_reg_1274;
wire   [31:0] D_33_fu_605_p3;
reg   [31:0] D_33_reg_1279;
wire   [31:0] or_ln118_5_fu_628_p2;
reg   [31:0] or_ln118_5_reg_1286;
wire   [1:0] trunc_ln118_7_fu_634_p1;
reg   [1:0] trunc_ln118_7_reg_1291;
reg   [29:0] lshr_ln118_7_reg_1296;
wire   [31:0] add_ln118_10_fu_660_p2;
reg   [31:0] add_ln118_10_reg_1301;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] B_58_fu_669_p2;
reg   [31:0] B_58_reg_1306;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln118_6_fu_674_p1;
reg   [26:0] trunc_ln118_6_reg_1315;
reg   [4:0] lshr_ln118_6_reg_1320;
wire   [31:0] add_ln118_14_fu_700_p2;
reg   [31:0] add_ln118_14_reg_1325;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] A_33_fu_709_p2;
reg   [31:0] A_33_reg_1330;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] C_47_fu_715_p3;
reg   [31:0] C_47_reg_1338;
wire   [31:0] add_ln118_16_fu_744_p2;
reg   [31:0] add_ln118_16_reg_1345;
wire   [31:0] temp_38_fu_780_p2;
reg   [31:0] temp_38_reg_1350;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [26:0] trunc_ln118_10_fu_785_p1;
reg   [26:0] trunc_ln118_10_reg_1356;
reg   [4:0] lshr_ln118_s_reg_1361;
wire   [1:0] trunc_ln118_13_fu_799_p1;
reg   [1:0] trunc_ln118_13_reg_1366;
reg   [29:0] lshr_ln118_12_reg_1371;
wire   [31:0] add_ln118_22_fu_825_p2;
reg   [31:0] add_ln118_22_reg_1376;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [31:0] C_48_fu_842_p3;
reg   [31:0] C_48_reg_1381;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] temp_39_fu_876_p2;
reg   [31:0] temp_39_reg_1387;
wire   [26:0] trunc_ln118_12_fu_881_p1;
reg   [26:0] trunc_ln118_12_reg_1393;
reg   [4:0] lshr_ln118_11_reg_1398;
wire   [31:0] add_ln118_26_fu_934_p2;
reg   [31:0] add_ln118_26_reg_1403;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [26:0] trunc_ln118_14_fu_996_p1;
reg   [26:0] trunc_ln118_14_reg_1408;
wire    ap_block_pp0_stage13_11001;
reg   [4:0] lshr_ln118_13_reg_1413;
wire   [31:0] or_ln118_13_fu_1026_p2;
reg   [31:0] or_ln118_13_reg_1418;
wire   [31:0] add_ln118_30_fu_1059_p2;
reg   [31:0] add_ln118_30_reg_1423;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln100_fu_328_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_1_fu_92;
wire   [31:0] C_49_fu_951_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [31:0] E_50_fu_96;
wire   [31:0] C_50_fu_990_p3;
reg   [31:0] E_51_fu_100;
wire   [31:0] C_9_fu_909_p3;
reg   [31:0] B_1_fu_104;
wire   [31:0] temp_40_fu_985_p2;
reg   [31:0] B_48_fu_108;
wire   [31:0] temp_41_fu_1068_p2;
reg   [4:0] i_1_fu_112;
wire   [4:0] add_ln116_fu_354_p2;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage8_01001;
reg    W_ce0_local;
reg    W_1_ce0_local;
reg    W_2_ce0_local;
reg    W_3_ce0_local;
reg    W_4_ce0_local;
reg    W_5_ce0_local;
reg    W_6_ce0_local;
reg    W_7_ce0_local;
wire   [1:0] lshr_ln2_fu_318_p4;
wire   [4:0] or_ln_fu_340_p3;
wire   [31:0] xor_ln118_fu_394_p2;
wire   [31:0] and_ln118_1_fu_406_p2;
wire   [31:0] and_ln118_fu_400_p2;
wire   [26:0] trunc_ln118_fu_380_p1;
wire   [4:0] lshr_ln3_fu_384_p4;
wire   [31:0] or_ln118_1_fu_418_p3;
wire   [31:0] add_ln118_1_fu_426_p2;
wire   [31:0] or_ln118_fu_412_p2;
wire   [31:0] add_ln118_fu_438_p2;
wire   [31:0] add_ln118_2_fu_432_p2;
wire   [1:0] trunc_ln118_1_fu_449_p1;
wire   [29:0] lshr_ln118_1_fu_453_p4;
wire   [31:0] xor_ln118_1_fu_485_p2;
wire   [31:0] and_ln118_2_fu_491_p2;
wire   [31:0] and_ln118_3_fu_497_p2;
wire   [1:0] trunc_ln118_3_fu_509_p1;
wire   [29:0] lshr_ln118_3_fu_513_p4;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln118_4_fu_545_p3;
wire   [31:0] add_ln118_5_fu_551_p2;
wire   [31:0] xor_ln118_2_fu_562_p2;
wire   [31:0] and_ln118_4_fu_567_p2;
wire   [31:0] and_ln118_5_fu_571_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln118_4_fu_582_p2;
wire   [31:0] temp_37_fu_586_p2;
wire   [31:0] xor_ln118_3_fu_611_p2;
wire   [31:0] and_ln118_6_fu_617_p2;
wire   [31:0] and_ln118_7_fu_623_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln118_7_fu_648_p3;
wire   [31:0] add_ln118_9_fu_654_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln118_8_fu_665_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln118_s_fu_688_p3;
wire   [31:0] add_ln118_13_fu_694_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln118_12_fu_705_p2;
wire   [26:0] trunc_ln118_8_fu_722_p1;
wire   [4:0] lshr_ln118_8_fu_726_p4;
wire   [31:0] or_ln118_8_fu_736_p3;
wire    ap_block_pp0_stage9;
wire   [31:0] xor_ln118_4_fu_749_p2;
wire   [31:0] and_ln118_8_fu_754_p2;
wire   [31:0] and_ln118_9_fu_758_p2;
wire   [31:0] add_ln118_17_fu_769_p2;
wire   [31:0] or_ln118_6_fu_763_p2;
wire   [31:0] add_ln118_18_fu_774_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln118_10_fu_813_p3;
wire   [31:0] add_ln118_21_fu_819_p2;
wire    ap_block_pp0_stage11;
wire   [1:0] trunc_ln118_9_fu_830_p1;
wire   [29:0] lshr_ln118_9_fu_833_p4;
wire   [31:0] xor_ln118_5_fu_850_p2;
wire   [31:0] and_ln118_10_fu_855_p2;
wire   [31:0] and_ln118_11_fu_860_p2;
wire   [31:0] or_ln118_9_fu_865_p2;
wire   [31:0] add_ln118_20_fu_871_p2;
wire   [1:0] trunc_ln118_15_fu_895_p1;
wire   [29:0] lshr_ln118_14_fu_899_p4;
wire    ap_block_pp0_stage12;
wire   [31:0] or_ln118_12_fu_922_p3;
wire   [31:0] add_ln118_25_fu_928_p2;
wire    ap_block_pp0_stage13;
wire   [1:0] trunc_ln118_11_fu_939_p1;
wire   [29:0] lshr_ln118_10_fu_942_p4;
wire   [31:0] xor_ln118_6_fu_959_p2;
wire   [31:0] and_ln118_12_fu_964_p2;
wire   [31:0] and_ln118_13_fu_969_p2;
wire   [31:0] or_ln118_11_fu_974_p2;
wire   [31:0] add_ln118_24_fu_980_p2;
wire   [31:0] xor_ln118_7_fu_1010_p2;
wire   [31:0] and_ln118_14_fu_1015_p2;
wire   [31:0] and_ln118_15_fu_1020_p2;
wire   [31:0] or_ln118_14_fu_1047_p3;
wire   [31:0] add_ln118_29_fu_1053_p2;
wire    ap_block_pp0_stage1;
wire   [31:0] add_ln118_28_fu_1064_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [13:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
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
#0 E_1_fu_92 = 32'd0;
#0 E_50_fu_96 = 32'd0;
#0 E_51_fu_100 = 32'd0;
#0 B_1_fu_104 = 32'd0;
#0 B_48_fu_108 = 32'd0;
#0 i_1_fu_112 = 5'd0;
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage13_subdone) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_104 <= B;
    end else if (((icmp_ln116_reg_1140 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        B_1_fu_104 <= temp_40_fu_985_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_48_fu_108 <= A;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_48_fu_108 <= temp_41_fu_1068_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_92 <= E;
    end else if (((icmp_ln116_reg_1140 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        E_1_fu_92 <= C_49_fu_951_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_50_fu_96 <= D;
    end else if (((icmp_ln116_reg_1140 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        E_50_fu_96 <= C_50_fu_990_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_51_fu_100 <= C;
    end else if (((icmp_ln116_reg_1140 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        E_51_fu_100 <= C_9_fu_909_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln116_fu_348_p2 == 1'd1))) begin
            i_1_fu_112 <= add_ln116_fu_354_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_112 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_33_reg_1330 <= A_33_fu_709_p2;
        C_47_reg_1338 <= C_47_fu_715_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        B_58_reg_1306 <= B_58_fu_669_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_45_reg_1209 <= E_51_fu_100;
        C_46_reg_1220 <= C_46_fu_463_p3;
        D_32_reg_1204 <= E_50_fu_96;
        lshr_ln118_2_reg_1231 <= {{temp_fu_443_p2[31:27]}};
        lshr_ln118_5_reg_1254 <= {{temp_fu_443_p2[31:2]}};
        or_ln118_2_reg_1236 <= or_ln118_2_fu_503_p2;
        temp_reg_1214 <= temp_fu_443_p2;
        trunc_ln118_2_reg_1226 <= trunc_ln118_2_fu_471_p1;
        trunc_ln118_5_reg_1249 <= trunc_ln118_5_fu_531_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        C_48_reg_1381 <= C_48_fu_842_p3;
        lshr_ln118_11_reg_1398 <= {{temp_39_fu_876_p2[31:27]}};
        temp_39_reg_1387 <= temp_39_fu_876_p2;
        trunc_ln118_12_reg_1393 <= trunc_ln118_12_fu_881_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        D_33_reg_1279 <= D_33_fu_605_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_61_reg_1241 <= E_61_fu_523_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_load_1_reg_1169 <= W_1_q0;
        W_2_load_1_reg_1174 <= W_2_q0;
        W_3_load_1_reg_1179 <= W_3_q0;
        W_4_load_1_reg_1184 <= W_4_q0;
        W_5_load_1_reg_1189 <= W_5_q0;
        W_6_load_1_reg_1194 <= W_6_q0;
        W_7_load_1_reg_1199 <= W_7_q0;
        W_load_1_reg_1164 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln118_10_reg_1301 <= add_ln118_10_fu_660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln118_14_reg_1325 <= add_ln118_14_fu_700_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln118_16_reg_1345 <= add_ln118_16_fu_744_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln118_22_reg_1376 <= add_ln118_22_fu_825_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln118_26_reg_1403 <= add_ln118_26_fu_934_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_30_reg_1423 <= add_ln118_30_fu_1059_p2;
        icmp_ln116_reg_1140 <= icmp_ln116_fu_348_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln118_6_reg_1259 <= add_ln118_6_fu_557_p2;
        or_ln118_3_reg_1264 <= or_ln118_3_fu_576_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln118_12_reg_1371 <= {{temp_38_fu_780_p2[31:2]}};
        lshr_ln118_s_reg_1361 <= {{temp_38_fu_780_p2[31:27]}};
        temp_38_reg_1350 <= temp_38_fu_780_p2;
        trunc_ln118_10_reg_1356 <= trunc_ln118_10_fu_785_p1;
        trunc_ln118_13_reg_1366 <= trunc_ln118_13_fu_799_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        lshr_ln118_13_reg_1413 <= {{temp_40_fu_985_p2[31:27]}};
        or_ln118_13_reg_1418 <= or_ln118_13_fu_1026_p2;
        trunc_ln118_14_reg_1408 <= trunc_ln118_14_fu_996_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln118_4_reg_1274 <= {{temp_37_fu_586_p2[31:27]}};
        lshr_ln118_7_reg_1296 <= {{temp_37_fu_586_p2[31:2]}};
        or_ln118_5_reg_1286 <= or_ln118_5_fu_628_p2;
        trunc_ln118_4_reg_1269 <= trunc_ln118_4_fu_591_p1;
        trunc_ln118_7_reg_1291 <= trunc_ln118_7_fu_634_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln118_6_reg_1320 <= {{B_58_fu_669_p2[31:27]}};
        trunc_ln118_6_reg_1315 <= trunc_ln118_6_fu_674_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1140 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_59_out_ap_vld = 1'b1;
    end else begin
        A_59_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1140 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        B_55_out_ap_vld = 1'b1;
    end else begin
        B_55_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1140 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_86_out_ap_vld = 1'b1;
    end else begin
        C_86_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1140 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        D_59_out_ap_vld = 1'b1;
    end else begin
        D_59_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1140 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_55_out_ap_vld = 1'b1;
    end else begin
        E_55_out_ap_vld = 1'b0;
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
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_1140 == 1'd0) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((1'b0 == ap_block_pp0_stage13_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 5'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_112;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to1 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign A_33_fu_709_p2 = (add_ln118_14_reg_1325 + add_ln118_12_fu_705_p2);
assign A_59_out = A_33_fu_709_p2;
assign B_55_out = B_58_reg_1306;
assign B_58_fu_669_p2 = (add_ln118_10_reg_1301 + add_ln118_8_fu_665_p2);
assign C_46_fu_463_p3 = {{trunc_ln118_1_fu_449_p1}, {lshr_ln118_1_fu_453_p4}};
assign C_47_fu_715_p3 = {{trunc_ln118_7_reg_1291}, {lshr_ln118_7_reg_1296}};
assign C_48_fu_842_p3 = {{trunc_ln118_9_fu_830_p1}, {lshr_ln118_9_fu_833_p4}};
assign C_49_fu_951_p3 = {{trunc_ln118_11_fu_939_p1}, {lshr_ln118_10_fu_942_p4}};
assign C_50_fu_990_p3 = {{trunc_ln118_13_reg_1366}, {lshr_ln118_12_reg_1371}};
assign C_86_out = {{trunc_ln118_7_reg_1291}, {lshr_ln118_7_reg_1296}};
assign C_9_fu_909_p3 = {{trunc_ln118_15_fu_895_p1}, {lshr_ln118_14_fu_899_p4}};
assign D_33_fu_605_p3 = {{trunc_ln118_5_reg_1249}, {lshr_ln118_5_reg_1254}};
assign D_59_out = D_33_reg_1279;
assign E_55_out = E_61_reg_1241;
assign E_61_fu_523_p3 = {{trunc_ln118_3_fu_509_p1}, {lshr_ln118_3_fu_513_p4}};
assign W_1_address0 = zext_ln100_fu_328_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_328_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_328_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_328_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_328_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_328_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_328_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_address0 = zext_ln100_fu_328_p1;
assign W_ce0 = W_ce0_local;
assign add_ln116_fu_354_p2 = (ap_sig_allocacmp_i + 5'd8);
assign add_ln118_10_fu_660_p2 = (add_ln118_9_fu_654_p2 + C_45_reg_1209);
assign add_ln118_12_fu_705_p2 = (W_3_load_1_reg_1179 + or_ln118_5_reg_1286);
assign add_ln118_13_fu_694_p2 = (or_ln118_s_fu_688_p3 + 32'd1518500249);
assign add_ln118_14_fu_700_p2 = (add_ln118_13_fu_694_p2 + C_46_reg_1220);
assign add_ln118_16_fu_744_p2 = (or_ln118_8_fu_736_p3 + W_4_load_1_reg_1184);
assign add_ln118_17_fu_769_p2 = (E_61_reg_1241 + 32'd1518500249);
assign add_ln118_18_fu_774_p2 = (add_ln118_17_fu_769_p2 + or_ln118_6_fu_763_p2);
assign add_ln118_1_fu_426_p2 = (or_ln118_1_fu_418_p3 + 32'd1518500249);
assign add_ln118_20_fu_871_p2 = (W_5_load_1_reg_1189 + or_ln118_9_fu_865_p2);
assign add_ln118_21_fu_819_p2 = (or_ln118_10_fu_813_p3 + 32'd1518500249);
assign add_ln118_22_fu_825_p2 = (add_ln118_21_fu_819_p2 + D_33_reg_1279);
assign add_ln118_24_fu_980_p2 = (W_6_load_1_reg_1194 + or_ln118_11_fu_974_p2);
assign add_ln118_25_fu_928_p2 = (or_ln118_12_fu_922_p3 + 32'd1518500249);
assign add_ln118_26_fu_934_p2 = (add_ln118_25_fu_928_p2 + C_47_reg_1338);
assign add_ln118_28_fu_1064_p2 = (W_7_load_1_reg_1199 + C_48_reg_1381);
assign add_ln118_29_fu_1053_p2 = (or_ln118_14_fu_1047_p3 + 32'd1518500249);
assign add_ln118_2_fu_432_p2 = (add_ln118_1_fu_426_p2 + E_1_fu_92);
assign add_ln118_30_fu_1059_p2 = (add_ln118_29_fu_1053_p2 + or_ln118_13_reg_1418);
assign add_ln118_4_fu_582_p2 = (W_1_load_1_reg_1169 + or_ln118_2_reg_1236);
assign add_ln118_5_fu_551_p2 = (or_ln118_4_fu_545_p3 + 32'd1518500249);
assign add_ln118_6_fu_557_p2 = (add_ln118_5_fu_551_p2 + D_32_reg_1204);
assign add_ln118_8_fu_665_p2 = (W_2_load_1_reg_1174 + or_ln118_3_reg_1264);
assign add_ln118_9_fu_654_p2 = (or_ln118_7_fu_648_p3 + 32'd1518500249);
assign add_ln118_fu_438_p2 = (or_ln118_fu_412_p2 + W_load_1_reg_1164);
assign and_ln118_10_fu_855_p2 = (C_48_fu_842_p3 & A_33_reg_1330);
assign and_ln118_11_fu_860_p2 = (xor_ln118_5_fu_850_p2 & C_47_reg_1338);
assign and_ln118_12_fu_964_p2 = (temp_38_reg_1350 & C_49_fu_951_p3);
assign and_ln118_13_fu_969_p2 = (xor_ln118_6_fu_959_p2 & C_48_reg_1381);
assign and_ln118_14_fu_1015_p2 = (temp_39_reg_1387 & C_50_fu_990_p3);
assign and_ln118_15_fu_1020_p2 = (xor_ln118_7_fu_1010_p2 & C_49_fu_951_p3);
assign and_ln118_1_fu_406_p2 = (xor_ln118_fu_394_p2 & E_50_fu_96);
assign and_ln118_2_fu_491_p2 = (C_46_fu_463_p3 & B_48_fu_108);
assign and_ln118_3_fu_497_p2 = (xor_ln118_1_fu_485_p2 & E_51_fu_100);
assign and_ln118_4_fu_567_p2 = (temp_reg_1214 & E_61_reg_1241);
assign and_ln118_5_fu_571_p2 = (xor_ln118_2_fu_562_p2 & C_46_reg_1220);
assign and_ln118_6_fu_617_p2 = (temp_37_fu_586_p2 & D_33_fu_605_p3);
assign and_ln118_7_fu_623_p2 = (xor_ln118_3_fu_611_p2 & E_61_reg_1241);
assign and_ln118_8_fu_754_p2 = (C_47_reg_1338 & B_58_reg_1306);
assign and_ln118_9_fu_758_p2 = (xor_ln118_4_fu_749_p2 & D_33_reg_1279);
assign and_ln118_fu_400_p2 = (E_51_fu_100 & B_1_fu_104);
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
assign icmp_ln116_fu_348_p2 = ((or_ln_fu_340_p3 < 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_10_fu_942_p4 = {{A_33_reg_1330[31:2]}};
assign lshr_ln118_14_fu_899_p4 = {{temp_39_fu_876_p2[31:2]}};
assign lshr_ln118_1_fu_453_p4 = {{B_1_fu_104[31:2]}};
assign lshr_ln118_3_fu_513_p4 = {{B_48_fu_108[31:2]}};
assign lshr_ln118_8_fu_726_p4 = {{A_33_fu_709_p2[31:27]}};
assign lshr_ln118_9_fu_833_p4 = {{B_58_reg_1306[31:2]}};
assign lshr_ln2_fu_318_p4 = {{ap_sig_allocacmp_i[4:3]}};
assign lshr_ln3_fu_384_p4 = {{B_48_fu_108[31:27]}};
assign or_ln118_10_fu_813_p3 = {{trunc_ln118_10_reg_1356}, {lshr_ln118_s_reg_1361}};
assign or_ln118_11_fu_974_p2 = (and_ln118_13_fu_969_p2 | and_ln118_12_fu_964_p2);
assign or_ln118_12_fu_922_p3 = {{trunc_ln118_12_reg_1393}, {lshr_ln118_11_reg_1398}};
assign or_ln118_13_fu_1026_p2 = (and_ln118_15_fu_1020_p2 | and_ln118_14_fu_1015_p2);
assign or_ln118_14_fu_1047_p3 = {{trunc_ln118_14_reg_1408}, {lshr_ln118_13_reg_1413}};
assign or_ln118_1_fu_418_p3 = {{trunc_ln118_fu_380_p1}, {lshr_ln3_fu_384_p4}};
assign or_ln118_2_fu_503_p2 = (and_ln118_3_fu_497_p2 | and_ln118_2_fu_491_p2);
assign or_ln118_3_fu_576_p2 = (and_ln118_5_fu_571_p2 | and_ln118_4_fu_567_p2);
assign or_ln118_4_fu_545_p3 = {{trunc_ln118_2_reg_1226}, {lshr_ln118_2_reg_1231}};
assign or_ln118_5_fu_628_p2 = (and_ln118_7_fu_623_p2 | and_ln118_6_fu_617_p2);
assign or_ln118_6_fu_763_p2 = (and_ln118_9_fu_758_p2 | and_ln118_8_fu_754_p2);
assign or_ln118_7_fu_648_p3 = {{trunc_ln118_4_reg_1269}, {lshr_ln118_4_reg_1274}};
assign or_ln118_8_fu_736_p3 = {{trunc_ln118_8_fu_722_p1}, {lshr_ln118_8_fu_726_p4}};
assign or_ln118_9_fu_865_p2 = (and_ln118_11_fu_860_p2 | and_ln118_10_fu_855_p2);
assign or_ln118_fu_412_p2 = (and_ln118_fu_400_p2 | and_ln118_1_fu_406_p2);
assign or_ln118_s_fu_688_p3 = {{trunc_ln118_6_reg_1315}, {lshr_ln118_6_reg_1320}};
assign or_ln_fu_340_p3 = {{lshr_ln2_fu_318_p4}, {3'd4}};
assign temp_37_fu_586_p2 = (add_ln118_6_reg_1259 + add_ln118_4_fu_582_p2);
assign temp_38_fu_780_p2 = (add_ln118_16_reg_1345 + add_ln118_18_fu_774_p2);
assign temp_39_fu_876_p2 = (add_ln118_22_reg_1376 + add_ln118_20_fu_871_p2);
assign temp_40_fu_985_p2 = (add_ln118_26_reg_1403 + add_ln118_24_fu_980_p2);
assign temp_41_fu_1068_p2 = (add_ln118_30_reg_1423 + add_ln118_28_fu_1064_p2);
assign temp_fu_443_p2 = (add_ln118_fu_438_p2 + add_ln118_2_fu_432_p2);
assign trunc_ln118_10_fu_785_p1 = temp_38_fu_780_p2[26:0];
assign trunc_ln118_11_fu_939_p1 = A_33_reg_1330[1:0];
assign trunc_ln118_12_fu_881_p1 = temp_39_fu_876_p2[26:0];
assign trunc_ln118_13_fu_799_p1 = temp_38_fu_780_p2[1:0];
assign trunc_ln118_14_fu_996_p1 = temp_40_fu_985_p2[26:0];
assign trunc_ln118_15_fu_895_p1 = temp_39_fu_876_p2[1:0];
assign trunc_ln118_1_fu_449_p1 = B_1_fu_104[1:0];
assign trunc_ln118_2_fu_471_p1 = temp_fu_443_p2[26:0];
assign trunc_ln118_3_fu_509_p1 = B_48_fu_108[1:0];
assign trunc_ln118_4_fu_591_p1 = temp_37_fu_586_p2[26:0];
assign trunc_ln118_5_fu_531_p1 = temp_fu_443_p2[1:0];
assign trunc_ln118_6_fu_674_p1 = B_58_fu_669_p2[26:0];
assign trunc_ln118_7_fu_634_p1 = temp_37_fu_586_p2[1:0];
assign trunc_ln118_8_fu_722_p1 = A_33_fu_709_p2[26:0];
assign trunc_ln118_9_fu_830_p1 = B_58_reg_1306[1:0];
assign trunc_ln118_fu_380_p1 = B_48_fu_108[26:0];
assign xor_ln118_1_fu_485_p2 = (32'd4294967295 ^ B_48_fu_108);
assign xor_ln118_2_fu_562_p2 = (temp_reg_1214 ^ 32'd4294967295);
assign xor_ln118_3_fu_611_p2 = (temp_37_fu_586_p2 ^ 32'd4294967295);
assign xor_ln118_4_fu_749_p2 = (32'd4294967295 ^ B_58_reg_1306);
assign xor_ln118_5_fu_850_p2 = (32'd4294967295 ^ A_33_reg_1330);
assign xor_ln118_6_fu_959_p2 = (temp_38_reg_1350 ^ 32'd4294967295);
assign xor_ln118_7_fu_1010_p2 = (temp_39_reg_1387 ^ 32'd4294967295);
assign xor_ln118_fu_394_p2 = (32'd4294967295 ^ B_1_fu_104);
assign zext_ln100_fu_328_p1 = lshr_ln2_fu_318_p4;
endmodule 