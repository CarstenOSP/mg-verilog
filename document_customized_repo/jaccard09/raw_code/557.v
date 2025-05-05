module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,W_1_address0,W_1_ce0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,W_2_address0,W_2_ce0,W_2_q0,W_2_address1,W_2_ce1,W_2_q1,W_3_address0,W_3_ce0,W_3_q0,W_3_address1,W_3_ce1,W_3_q1,E_59_out,E_59_out_ap_vld,B_59_out,B_59_out_ap_vld,D_63_out,D_63_out_ap_vld,A_62_out,A_62_out_ap_vld,C_104_out,C_104_out_ap_vld); 
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
output  [31:0] E_59_out;
output   E_59_out_ap_vld;
output  [31:0] B_59_out;
output   B_59_out_ap_vld;
output  [31:0] D_63_out;
output   D_63_out_ap_vld;
output  [31:0] A_62_out;
output   A_62_out_ap_vld;
output  [31:0] C_104_out;
output   C_104_out_ap_vld;
reg ap_idle;
reg E_59_out_ap_vld;
reg B_59_out_ap_vld;
reg D_63_out_ap_vld;
reg A_62_out_ap_vld;
reg C_104_out_ap_vld;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln116_reg_1156;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln116_fu_348_p2;
reg   [31:0] W_load_reg_1180;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] W_1_load_reg_1185;
reg   [31:0] W_2_load_reg_1190;
reg   [31:0] W_3_load_reg_1195;
reg   [31:0] W_load_2_reg_1200;
reg   [31:0] W_1_load_2_reg_1205;
reg   [31:0] W_2_load_2_reg_1210;
reg   [31:0] W_3_load_2_reg_1215;
reg   [31:0] D_12_reg_1220;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] C_17_reg_1225;
wire   [31:0] temp_fu_459_p2;
reg   [31:0] temp_reg_1230;
wire   [31:0] C_18_fu_479_p3;
reg   [31:0] C_18_reg_1236;
wire   [26:0] trunc_ln118_2_fu_487_p1;
reg   [26:0] trunc_ln118_2_reg_1242;
reg   [4:0] lshr_ln118_2_reg_1247;
wire   [31:0] or_ln118_2_fu_519_p2;
reg   [31:0] or_ln118_2_reg_1252;
wire   [31:0] E_23_fu_539_p3;
reg   [31:0] E_23_reg_1257;
wire   [1:0] trunc_ln118_5_fu_547_p1;
reg   [1:0] trunc_ln118_5_reg_1265;
reg   [29:0] lshr_ln118_5_reg_1270;
wire   [31:0] add_ln118_6_fu_573_p2;
reg   [31:0] add_ln118_6_reg_1275;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] or_ln118_3_fu_592_p2;
reg   [31:0] or_ln118_3_reg_1280;
wire   [26:0] trunc_ln118_4_fu_607_p1;
reg   [26:0] trunc_ln118_4_reg_1285;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln118_4_reg_1290;
wire   [31:0] D_13_fu_621_p3;
reg   [31:0] D_13_reg_1295;
wire   [31:0] or_ln118_5_fu_644_p2;
reg   [31:0] or_ln118_5_reg_1302;
wire   [1:0] trunc_ln118_7_fu_650_p1;
reg   [1:0] trunc_ln118_7_reg_1307;
reg   [29:0] lshr_ln118_7_reg_1312;
wire   [31:0] add_ln118_10_fu_676_p2;
reg   [31:0] add_ln118_10_reg_1317;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] B_21_fu_685_p2;
reg   [31:0] B_21_reg_1322;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln118_6_fu_690_p1;
reg   [26:0] trunc_ln118_6_reg_1331;
reg   [4:0] lshr_ln118_6_reg_1336;
wire   [31:0] add_ln118_14_fu_716_p2;
reg   [31:0] add_ln118_14_reg_1341;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] A_13_fu_725_p2;
reg   [31:0] A_13_reg_1346;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] C_19_fu_731_p3;
reg   [31:0] C_19_reg_1354;
wire   [31:0] add_ln118_16_fu_760_p2;
reg   [31:0] add_ln118_16_reg_1361;
wire   [31:0] temp_10_fu_796_p2;
reg   [31:0] temp_10_reg_1366;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [26:0] trunc_ln118_10_fu_801_p1;
reg   [26:0] trunc_ln118_10_reg_1372;
reg   [4:0] lshr_ln118_s_reg_1377;
wire   [1:0] trunc_ln118_13_fu_815_p1;
reg   [1:0] trunc_ln118_13_reg_1382;
reg   [29:0] lshr_ln118_12_reg_1387;
wire   [31:0] add_ln118_22_fu_841_p2;
reg   [31:0] add_ln118_22_reg_1392;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [31:0] C_20_fu_858_p3;
reg   [31:0] C_20_reg_1397;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] temp_11_fu_892_p2;
reg   [31:0] temp_11_reg_1403;
wire   [26:0] trunc_ln118_12_fu_897_p1;
reg   [26:0] trunc_ln118_12_reg_1409;
reg   [4:0] lshr_ln118_11_reg_1414;
wire   [31:0] add_ln118_26_fu_950_p2;
reg   [31:0] add_ln118_26_reg_1419;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [26:0] trunc_ln118_14_fu_1012_p1;
reg   [26:0] trunc_ln118_14_reg_1424;
wire    ap_block_pp0_stage13_11001;
reg   [4:0] lshr_ln118_13_reg_1429;
wire   [31:0] or_ln118_13_fu_1042_p2;
reg   [31:0] or_ln118_13_reg_1434;
wire   [31:0] add_ln118_30_fu_1075_p2;
reg   [31:0] add_ln118_30_reg_1439;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln100_fu_322_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln116_fu_362_p1;
reg   [31:0] E_1_fu_90;
wire   [31:0] C_21_fu_967_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [31:0] E_12_fu_94;
wire   [31:0] C_22_fu_1006_p3;
reg   [31:0] E_13_fu_98;
wire   [31:0] C_9_fu_925_p3;
reg   [31:0] B_1_fu_102;
wire   [31:0] temp_12_fu_1001_p2;
reg   [31:0] B_11_fu_106;
wire   [31:0] temp_13_fu_1084_p2;
reg   [4:0] i_1_fu_110;
wire   [4:0] add_ln116_fu_370_p2;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage8_01001;
reg    W_ce1_local;
reg    W_ce0_local;
reg    W_1_ce1_local;
reg    W_1_ce0_local;
reg    W_2_ce1_local;
reg    W_2_ce0_local;
reg    W_3_ce1_local;
reg    W_3_ce0_local;
wire   [2:0] lshr_ln2_fu_312_p4;
wire   [1:0] tmp_s_fu_330_p4;
wire   [4:0] or_ln1_fu_340_p3;
wire   [2:0] or_ln2_fu_354_p3;
wire   [31:0] xor_ln118_fu_410_p2;
wire   [31:0] and_ln118_1_fu_422_p2;
wire   [31:0] and_ln118_fu_416_p2;
wire   [26:0] trunc_ln118_fu_396_p1;
wire   [4:0] lshr_ln3_fu_400_p4;
wire   [31:0] or_ln118_1_fu_434_p3;
wire   [31:0] add_ln118_1_fu_442_p2;
wire   [31:0] or_ln118_fu_428_p2;
wire   [31:0] add_ln118_fu_454_p2;
wire   [31:0] add_ln118_2_fu_448_p2;
wire   [1:0] trunc_ln118_1_fu_465_p1;
wire   [29:0] lshr_ln118_1_fu_469_p4;
wire   [31:0] xor_ln118_1_fu_501_p2;
wire   [31:0] and_ln118_2_fu_507_p2;
wire   [31:0] and_ln118_3_fu_513_p2;
wire   [1:0] trunc_ln118_3_fu_525_p1;
wire   [29:0] lshr_ln118_3_fu_529_p4;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln118_4_fu_561_p3;
wire   [31:0] add_ln118_5_fu_567_p2;
wire   [31:0] xor_ln118_2_fu_578_p2;
wire   [31:0] and_ln118_4_fu_583_p2;
wire   [31:0] and_ln118_5_fu_587_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln118_4_fu_598_p2;
wire   [31:0] temp_9_fu_602_p2;
wire   [31:0] xor_ln118_3_fu_627_p2;
wire   [31:0] and_ln118_6_fu_633_p2;
wire   [31:0] and_ln118_7_fu_639_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln118_7_fu_664_p3;
wire   [31:0] add_ln118_9_fu_670_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln118_8_fu_681_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln118_s_fu_704_p3;
wire   [31:0] add_ln118_13_fu_710_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln118_12_fu_721_p2;
wire   [26:0] trunc_ln118_8_fu_738_p1;
wire   [4:0] lshr_ln118_8_fu_742_p4;
wire   [31:0] or_ln118_8_fu_752_p3;
wire    ap_block_pp0_stage9;
wire   [31:0] xor_ln118_4_fu_765_p2;
wire   [31:0] and_ln118_8_fu_770_p2;
wire   [31:0] and_ln118_9_fu_774_p2;
wire   [31:0] add_ln118_17_fu_785_p2;
wire   [31:0] or_ln118_6_fu_779_p2;
wire   [31:0] add_ln118_18_fu_790_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln118_10_fu_829_p3;
wire   [31:0] add_ln118_21_fu_835_p2;
wire    ap_block_pp0_stage11;
wire   [1:0] trunc_ln118_9_fu_846_p1;
wire   [29:0] lshr_ln118_9_fu_849_p4;
wire   [31:0] xor_ln118_5_fu_866_p2;
wire   [31:0] and_ln118_10_fu_871_p2;
wire   [31:0] and_ln118_11_fu_876_p2;
wire   [31:0] or_ln118_9_fu_881_p2;
wire   [31:0] add_ln118_20_fu_887_p2;
wire   [1:0] trunc_ln118_15_fu_911_p1;
wire   [29:0] lshr_ln118_14_fu_915_p4;
wire    ap_block_pp0_stage12;
wire   [31:0] or_ln118_12_fu_938_p3;
wire   [31:0] add_ln118_25_fu_944_p2;
wire    ap_block_pp0_stage13;
wire   [1:0] trunc_ln118_11_fu_955_p1;
wire   [29:0] lshr_ln118_10_fu_958_p4;
wire   [31:0] xor_ln118_6_fu_975_p2;
wire   [31:0] and_ln118_12_fu_980_p2;
wire   [31:0] and_ln118_13_fu_985_p2;
wire   [31:0] or_ln118_11_fu_990_p2;
wire   [31:0] add_ln118_24_fu_996_p2;
wire   [31:0] xor_ln118_7_fu_1026_p2;
wire   [31:0] and_ln118_14_fu_1031_p2;
wire   [31:0] and_ln118_15_fu_1036_p2;
wire   [31:0] or_ln118_14_fu_1063_p3;
wire   [31:0] add_ln118_29_fu_1069_p2;
wire    ap_block_pp0_stage1;
wire   [31:0] add_ln118_28_fu_1080_p2;
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
#0 E_1_fu_90 = 32'd0;
#0 E_12_fu_94 = 32'd0;
#0 E_13_fu_98 = 32'd0;
#0 B_1_fu_102 = 32'd0;
#0 B_11_fu_106 = 32'd0;
#0 i_1_fu_110 = 5'd0;
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
        B_11_fu_106 <= A;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_11_fu_106 <= temp_13_fu_1084_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_102 <= B;
    end else if (((icmp_ln116_reg_1156 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        B_1_fu_102 <= temp_12_fu_1001_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_12_fu_94 <= D;
    end else if (((icmp_ln116_reg_1156 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        E_12_fu_94 <= C_22_fu_1006_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_13_fu_98 <= C;
    end else if (((icmp_ln116_reg_1156 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        E_13_fu_98 <= C_9_fu_925_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_90 <= E;
    end else if (((icmp_ln116_reg_1156 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        E_1_fu_90 <= C_21_fu_967_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln116_fu_348_p2 == 1'd1))) begin
            i_1_fu_110 <= add_ln116_fu_370_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_110 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_13_reg_1346 <= A_13_fu_725_p2;
        C_19_reg_1354 <= C_19_fu_731_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        B_21_reg_1322 <= B_21_fu_685_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_17_reg_1225 <= E_13_fu_98;
        C_18_reg_1236 <= C_18_fu_479_p3;
        D_12_reg_1220 <= E_12_fu_94;
        lshr_ln118_2_reg_1247 <= {{temp_fu_459_p2[31:27]}};
        lshr_ln118_5_reg_1270 <= {{temp_fu_459_p2[31:2]}};
        or_ln118_2_reg_1252 <= or_ln118_2_fu_519_p2;
        temp_reg_1230 <= temp_fu_459_p2;
        trunc_ln118_2_reg_1242 <= trunc_ln118_2_fu_487_p1;
        trunc_ln118_5_reg_1265 <= trunc_ln118_5_fu_547_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        C_20_reg_1397 <= C_20_fu_858_p3;
        lshr_ln118_11_reg_1414 <= {{temp_11_fu_892_p2[31:27]}};
        temp_11_reg_1403 <= temp_11_fu_892_p2;
        trunc_ln118_12_reg_1409 <= trunc_ln118_12_fu_897_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        D_13_reg_1295 <= D_13_fu_621_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_23_reg_1257 <= E_23_fu_539_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_load_2_reg_1205 <= W_1_q0;
        W_1_load_reg_1185 <= W_1_q1;
        W_2_load_2_reg_1210 <= W_2_q0;
        W_2_load_reg_1190 <= W_2_q1;
        W_3_load_2_reg_1215 <= W_3_q0;
        W_3_load_reg_1195 <= W_3_q1;
        W_load_2_reg_1200 <= W_q0;
        W_load_reg_1180 <= W_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln118_10_reg_1317 <= add_ln118_10_fu_676_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln118_14_reg_1341 <= add_ln118_14_fu_716_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln118_16_reg_1361 <= add_ln118_16_fu_760_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln118_22_reg_1392 <= add_ln118_22_fu_841_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln118_26_reg_1419 <= add_ln118_26_fu_950_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_30_reg_1439 <= add_ln118_30_fu_1075_p2;
        icmp_ln116_reg_1156 <= icmp_ln116_fu_348_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln118_6_reg_1275 <= add_ln118_6_fu_573_p2;
        or_ln118_3_reg_1280 <= or_ln118_3_fu_592_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln118_12_reg_1387 <= {{temp_10_fu_796_p2[31:2]}};
        lshr_ln118_s_reg_1377 <= {{temp_10_fu_796_p2[31:27]}};
        temp_10_reg_1366 <= temp_10_fu_796_p2;
        trunc_ln118_10_reg_1372 <= trunc_ln118_10_fu_801_p1;
        trunc_ln118_13_reg_1382 <= trunc_ln118_13_fu_815_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        lshr_ln118_13_reg_1429 <= {{temp_12_fu_1001_p2[31:27]}};
        or_ln118_13_reg_1434 <= or_ln118_13_fu_1042_p2;
        trunc_ln118_14_reg_1424 <= trunc_ln118_14_fu_1012_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln118_4_reg_1290 <= {{temp_9_fu_602_p2[31:27]}};
        lshr_ln118_7_reg_1312 <= {{temp_9_fu_602_p2[31:2]}};
        or_ln118_5_reg_1302 <= or_ln118_5_fu_644_p2;
        trunc_ln118_4_reg_1285 <= trunc_ln118_4_fu_607_p1;
        trunc_ln118_7_reg_1307 <= trunc_ln118_7_fu_650_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln118_6_reg_1336 <= {{B_21_fu_685_p2[31:27]}};
        trunc_ln118_6_reg_1331 <= trunc_ln118_6_fu_690_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1156 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_62_out_ap_vld = 1'b1;
    end else begin
        A_62_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1156 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        B_59_out_ap_vld = 1'b1;
    end else begin
        B_59_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1156 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_104_out_ap_vld = 1'b1;
    end else begin
        C_104_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1156 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        D_63_out_ap_vld = 1'b1;
    end else begin
        D_63_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1156 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_59_out_ap_vld = 1'b1;
    end else begin
        E_59_out_ap_vld = 1'b0;
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
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
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
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
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
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_1156 == 1'd0) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        ap_sig_allocacmp_i = i_1_fu_110;
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
assign A_13_fu_725_p2 = (add_ln118_14_reg_1341 + add_ln118_12_fu_721_p2);
assign A_62_out = A_13_fu_725_p2;
assign B_21_fu_685_p2 = (add_ln118_10_reg_1317 + add_ln118_8_fu_681_p2);
assign B_59_out = B_21_reg_1322;
assign C_104_out = {{trunc_ln118_7_reg_1307}, {lshr_ln118_7_reg_1312}};
assign C_18_fu_479_p3 = {{trunc_ln118_1_fu_465_p1}, {lshr_ln118_1_fu_469_p4}};
assign C_19_fu_731_p3 = {{trunc_ln118_7_reg_1307}, {lshr_ln118_7_reg_1312}};
assign C_20_fu_858_p3 = {{trunc_ln118_9_fu_846_p1}, {lshr_ln118_9_fu_849_p4}};
assign C_21_fu_967_p3 = {{trunc_ln118_11_fu_955_p1}, {lshr_ln118_10_fu_958_p4}};
assign C_22_fu_1006_p3 = {{trunc_ln118_13_reg_1382}, {lshr_ln118_12_reg_1387}};
assign C_9_fu_925_p3 = {{trunc_ln118_15_fu_911_p1}, {lshr_ln118_14_fu_915_p4}};
assign D_13_fu_621_p3 = {{trunc_ln118_5_reg_1265}, {lshr_ln118_5_reg_1270}};
assign D_63_out = D_13_reg_1295;
assign E_23_fu_539_p3 = {{trunc_ln118_3_fu_525_p1}, {lshr_ln118_3_fu_529_p4}};
assign E_59_out = E_23_reg_1257;
assign W_1_address0 = zext_ln116_fu_362_p1;
assign W_1_address1 = zext_ln100_fu_322_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_2_address0 = zext_ln116_fu_362_p1;
assign W_2_address1 = zext_ln100_fu_322_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_3_address0 = zext_ln116_fu_362_p1;
assign W_3_address1 = zext_ln100_fu_322_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_address0 = zext_ln116_fu_362_p1;
assign W_address1 = zext_ln100_fu_322_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln116_fu_370_p2 = (ap_sig_allocacmp_i + 5'd8);
assign add_ln118_10_fu_676_p2 = (add_ln118_9_fu_670_p2 + C_17_reg_1225);
assign add_ln118_12_fu_721_p2 = (W_3_load_reg_1195 + or_ln118_5_reg_1302);
assign add_ln118_13_fu_710_p2 = (or_ln118_s_fu_704_p3 + 32'd1518500249);
assign add_ln118_14_fu_716_p2 = (add_ln118_13_fu_710_p2 + C_18_reg_1236);
assign add_ln118_16_fu_760_p2 = (or_ln118_8_fu_752_p3 + W_load_2_reg_1200);
assign add_ln118_17_fu_785_p2 = (E_23_reg_1257 + 32'd1518500249);
assign add_ln118_18_fu_790_p2 = (add_ln118_17_fu_785_p2 + or_ln118_6_fu_779_p2);
assign add_ln118_1_fu_442_p2 = (or_ln118_1_fu_434_p3 + 32'd1518500249);
assign add_ln118_20_fu_887_p2 = (W_1_load_2_reg_1205 + or_ln118_9_fu_881_p2);
assign add_ln118_21_fu_835_p2 = (or_ln118_10_fu_829_p3 + 32'd1518500249);
assign add_ln118_22_fu_841_p2 = (add_ln118_21_fu_835_p2 + D_13_reg_1295);
assign add_ln118_24_fu_996_p2 = (W_2_load_2_reg_1210 + or_ln118_11_fu_990_p2);
assign add_ln118_25_fu_944_p2 = (or_ln118_12_fu_938_p3 + 32'd1518500249);
assign add_ln118_26_fu_950_p2 = (add_ln118_25_fu_944_p2 + C_19_reg_1354);
assign add_ln118_28_fu_1080_p2 = (W_3_load_2_reg_1215 + C_20_reg_1397);
assign add_ln118_29_fu_1069_p2 = (or_ln118_14_fu_1063_p3 + 32'd1518500249);
assign add_ln118_2_fu_448_p2 = (add_ln118_1_fu_442_p2 + E_1_fu_90);
assign add_ln118_30_fu_1075_p2 = (add_ln118_29_fu_1069_p2 + or_ln118_13_reg_1434);
assign add_ln118_4_fu_598_p2 = (W_1_load_reg_1185 + or_ln118_2_reg_1252);
assign add_ln118_5_fu_567_p2 = (or_ln118_4_fu_561_p3 + 32'd1518500249);
assign add_ln118_6_fu_573_p2 = (add_ln118_5_fu_567_p2 + D_12_reg_1220);
assign add_ln118_8_fu_681_p2 = (W_2_load_reg_1190 + or_ln118_3_reg_1280);
assign add_ln118_9_fu_670_p2 = (or_ln118_7_fu_664_p3 + 32'd1518500249);
assign add_ln118_fu_454_p2 = (or_ln118_fu_428_p2 + W_load_reg_1180);
assign and_ln118_10_fu_871_p2 = (C_20_fu_858_p3 & A_13_reg_1346);
assign and_ln118_11_fu_876_p2 = (xor_ln118_5_fu_866_p2 & C_19_reg_1354);
assign and_ln118_12_fu_980_p2 = (temp_10_reg_1366 & C_21_fu_967_p3);
assign and_ln118_13_fu_985_p2 = (xor_ln118_6_fu_975_p2 & C_20_reg_1397);
assign and_ln118_14_fu_1031_p2 = (temp_11_reg_1403 & C_22_fu_1006_p3);
assign and_ln118_15_fu_1036_p2 = (xor_ln118_7_fu_1026_p2 & C_21_fu_967_p3);
assign and_ln118_1_fu_422_p2 = (xor_ln118_fu_410_p2 & E_12_fu_94);
assign and_ln118_2_fu_507_p2 = (C_18_fu_479_p3 & B_11_fu_106);
assign and_ln118_3_fu_513_p2 = (xor_ln118_1_fu_501_p2 & E_13_fu_98);
assign and_ln118_4_fu_583_p2 = (temp_reg_1230 & E_23_reg_1257);
assign and_ln118_5_fu_587_p2 = (xor_ln118_2_fu_578_p2 & C_18_reg_1236);
assign and_ln118_6_fu_633_p2 = (temp_9_fu_602_p2 & D_13_fu_621_p3);
assign and_ln118_7_fu_639_p2 = (xor_ln118_3_fu_627_p2 & E_23_reg_1257);
assign and_ln118_8_fu_770_p2 = (C_19_reg_1354 & B_21_reg_1322);
assign and_ln118_9_fu_774_p2 = (xor_ln118_4_fu_765_p2 & D_13_reg_1295);
assign and_ln118_fu_416_p2 = (E_13_fu_98 & B_1_fu_102);
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
assign icmp_ln116_fu_348_p2 = ((or_ln1_fu_340_p3 < 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_10_fu_958_p4 = {{A_13_reg_1346[31:2]}};
assign lshr_ln118_14_fu_915_p4 = {{temp_11_fu_892_p2[31:2]}};
assign lshr_ln118_1_fu_469_p4 = {{B_1_fu_102[31:2]}};
assign lshr_ln118_3_fu_529_p4 = {{B_11_fu_106[31:2]}};
assign lshr_ln118_8_fu_742_p4 = {{A_13_fu_725_p2[31:27]}};
assign lshr_ln118_9_fu_849_p4 = {{B_21_reg_1322[31:2]}};
assign lshr_ln2_fu_312_p4 = {{ap_sig_allocacmp_i[4:2]}};
assign lshr_ln3_fu_400_p4 = {{B_11_fu_106[31:27]}};
assign or_ln118_10_fu_829_p3 = {{trunc_ln118_10_reg_1372}, {lshr_ln118_s_reg_1377}};
assign or_ln118_11_fu_990_p2 = (and_ln118_13_fu_985_p2 | and_ln118_12_fu_980_p2);
assign or_ln118_12_fu_938_p3 = {{trunc_ln118_12_reg_1409}, {lshr_ln118_11_reg_1414}};
assign or_ln118_13_fu_1042_p2 = (and_ln118_15_fu_1036_p2 | and_ln118_14_fu_1031_p2);
assign or_ln118_14_fu_1063_p3 = {{trunc_ln118_14_reg_1424}, {lshr_ln118_13_reg_1429}};
assign or_ln118_1_fu_434_p3 = {{trunc_ln118_fu_396_p1}, {lshr_ln3_fu_400_p4}};
assign or_ln118_2_fu_519_p2 = (and_ln118_3_fu_513_p2 | and_ln118_2_fu_507_p2);
assign or_ln118_3_fu_592_p2 = (and_ln118_5_fu_587_p2 | and_ln118_4_fu_583_p2);
assign or_ln118_4_fu_561_p3 = {{trunc_ln118_2_reg_1242}, {lshr_ln118_2_reg_1247}};
assign or_ln118_5_fu_644_p2 = (and_ln118_7_fu_639_p2 | and_ln118_6_fu_633_p2);
assign or_ln118_6_fu_779_p2 = (and_ln118_9_fu_774_p2 | and_ln118_8_fu_770_p2);
assign or_ln118_7_fu_664_p3 = {{trunc_ln118_4_reg_1285}, {lshr_ln118_4_reg_1290}};
assign or_ln118_8_fu_752_p3 = {{trunc_ln118_8_fu_738_p1}, {lshr_ln118_8_fu_742_p4}};
assign or_ln118_9_fu_881_p2 = (and_ln118_11_fu_876_p2 | and_ln118_10_fu_871_p2);
assign or_ln118_fu_428_p2 = (and_ln118_fu_416_p2 | and_ln118_1_fu_422_p2);
assign or_ln118_s_fu_704_p3 = {{trunc_ln118_6_reg_1331}, {lshr_ln118_6_reg_1336}};
assign or_ln1_fu_340_p3 = {{tmp_s_fu_330_p4}, {3'd4}};
assign or_ln2_fu_354_p3 = {{tmp_s_fu_330_p4}, {1'd1}};
assign temp_10_fu_796_p2 = (add_ln118_16_reg_1361 + add_ln118_18_fu_790_p2);
assign temp_11_fu_892_p2 = (add_ln118_22_reg_1392 + add_ln118_20_fu_887_p2);
assign temp_12_fu_1001_p2 = (add_ln118_26_reg_1419 + add_ln118_24_fu_996_p2);
assign temp_13_fu_1084_p2 = (add_ln118_30_reg_1439 + add_ln118_28_fu_1080_p2);
assign temp_9_fu_602_p2 = (add_ln118_6_reg_1275 + add_ln118_4_fu_598_p2);
assign temp_fu_459_p2 = (add_ln118_fu_454_p2 + add_ln118_2_fu_448_p2);
assign tmp_s_fu_330_p4 = {{ap_sig_allocacmp_i[4:3]}};
assign trunc_ln118_10_fu_801_p1 = temp_10_fu_796_p2[26:0];
assign trunc_ln118_11_fu_955_p1 = A_13_reg_1346[1:0];
assign trunc_ln118_12_fu_897_p1 = temp_11_fu_892_p2[26:0];
assign trunc_ln118_13_fu_815_p1 = temp_10_fu_796_p2[1:0];
assign trunc_ln118_14_fu_1012_p1 = temp_12_fu_1001_p2[26:0];
assign trunc_ln118_15_fu_911_p1 = temp_11_fu_892_p2[1:0];
assign trunc_ln118_1_fu_465_p1 = B_1_fu_102[1:0];
assign trunc_ln118_2_fu_487_p1 = temp_fu_459_p2[26:0];
assign trunc_ln118_3_fu_525_p1 = B_11_fu_106[1:0];
assign trunc_ln118_4_fu_607_p1 = temp_9_fu_602_p2[26:0];
assign trunc_ln118_5_fu_547_p1 = temp_fu_459_p2[1:0];
assign trunc_ln118_6_fu_690_p1 = B_21_fu_685_p2[26:0];
assign trunc_ln118_7_fu_650_p1 = temp_9_fu_602_p2[1:0];
assign trunc_ln118_8_fu_738_p1 = A_13_fu_725_p2[26:0];
assign trunc_ln118_9_fu_846_p1 = B_21_reg_1322[1:0];
assign trunc_ln118_fu_396_p1 = B_11_fu_106[26:0];
assign xor_ln118_1_fu_501_p2 = (32'd4294967295 ^ B_11_fu_106);
assign xor_ln118_2_fu_578_p2 = (temp_reg_1230 ^ 32'd4294967295);
assign xor_ln118_3_fu_627_p2 = (temp_9_fu_602_p2 ^ 32'd4294967295);
assign xor_ln118_4_fu_765_p2 = (32'd4294967295 ^ B_21_reg_1322);
assign xor_ln118_5_fu_866_p2 = (32'd4294967295 ^ A_13_reg_1346);
assign xor_ln118_6_fu_975_p2 = (temp_10_reg_1366 ^ 32'd4294967295);
assign xor_ln118_7_fu_1026_p2 = (temp_11_reg_1403 ^ 32'd4294967295);
assign xor_ln118_fu_410_p2 = (32'd4294967295 ^ B_1_fu_102);
assign zext_ln100_fu_322_p1 = lshr_ln2_fu_312_p4;
assign zext_ln116_fu_362_p1 = or_ln2_fu_354_p3;
endmodule 