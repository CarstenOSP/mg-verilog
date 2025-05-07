module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_41_reload,B_38_reload,C_48_reload,D_41_reload,E_38_reload,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,W_2_address0,W_2_ce0,W_2_q0,W_3_address0,W_3_ce0,W_3_q0,W_4_address0,W_4_ce0,W_4_q0,W_5_address0,W_5_ce0,W_5_q0,W_6_address0,W_6_ce0,W_6_q0,W_7_address0,W_7_ce0,W_7_q0,E_37_out,E_37_out_ap_vld,B_37_out,B_37_out_ap_vld,D_39_out,D_39_out_ap_vld,A_39_out,A_39_out_ap_vld,C_42_out,C_42_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 11'd1;
parameter    ap_ST_fsm_pp0_stage1 = 11'd2;
parameter    ap_ST_fsm_pp0_stage2 = 11'd4;
parameter    ap_ST_fsm_pp0_stage3 = 11'd8;
parameter    ap_ST_fsm_pp0_stage4 = 11'd16;
parameter    ap_ST_fsm_pp0_stage5 = 11'd32;
parameter    ap_ST_fsm_pp0_stage6 = 11'd64;
parameter    ap_ST_fsm_pp0_stage7 = 11'd128;
parameter    ap_ST_fsm_pp0_stage8 = 11'd256;
parameter    ap_ST_fsm_pp0_stage9 = 11'd512;
parameter    ap_ST_fsm_pp0_stage10 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_41_reload;
input  [31:0] B_38_reload;
input  [31:0] C_48_reload;
input  [31:0] D_41_reload;
input  [31:0] E_38_reload;
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
output  [31:0] E_37_out;
output   E_37_out_ap_vld;
output  [31:0] B_37_out;
output   B_37_out_ap_vld;
output  [31:0] D_39_out;
output   D_39_out_ap_vld;
output  [31:0] A_39_out;
output   A_39_out_ap_vld;
output  [31:0] C_42_out;
output   C_42_out_ap_vld;
reg ap_idle;
reg E_37_out_ap_vld;
reg B_37_out_ap_vld;
reg D_39_out_ap_vld;
reg A_39_out_ap_vld;
reg C_42_out_ap_vld;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln124_reg_1178;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [31:0] D_8_reg_1116;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_reg_1121;
reg   [31:0] A_8_reg_1128;
wire   [31:0] add_ln126_2_fu_404_p2;
reg   [31:0] add_ln126_2_reg_1138;
wire   [1:0] trunc_ln126_1_fu_410_p1;
reg   [1:0] trunc_ln126_1_reg_1143;
reg   [29:0] lshr_ln126_1_reg_1148;
wire   [31:0] E_23_fu_438_p3;
reg   [31:0] E_23_reg_1158;
wire   [0:0] icmp_ln124_fu_454_p2;
wire   [31:0] temp_fu_480_p2;
reg   [31:0] temp_reg_1202;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [26:0] trunc_ln126_2_fu_485_p1;
reg   [26:0] trunc_ln126_2_reg_1207;
reg   [4:0] lshr_ln126_2_reg_1212;
reg   [31:0] W_1_load_reg_1217;
reg   [31:0] W_2_load_reg_1222;
wire   [1:0] trunc_ln126_5_fu_499_p1;
reg   [1:0] trunc_ln126_5_reg_1227;
reg   [29:0] lshr_ln126_5_reg_1232;
reg   [31:0] W_3_load_reg_1237;
reg   [31:0] W_4_load_reg_1242;
reg   [31:0] W_5_load_reg_1247;
reg   [31:0] W_6_load_reg_1252;
reg   [31:0] W_7_load_reg_1257;
wire   [31:0] C_11_fu_513_p3;
reg   [31:0] C_11_reg_1262;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] temp_9_fu_562_p2;
reg   [31:0] temp_9_reg_1267;
wire   [26:0] trunc_ln126_4_fu_568_p1;
reg   [26:0] trunc_ln126_4_reg_1272;
reg   [4:0] lshr_ln126_4_reg_1277;
wire   [31:0] or_ln126_7_fu_597_p2;
reg   [31:0] or_ln126_7_reg_1282;
wire   [1:0] trunc_ln126_7_fu_603_p1;
reg   [1:0] trunc_ln126_7_reg_1287;
reg   [29:0] lshr_ln126_7_reg_1292;
wire   [31:0] B_21_fu_638_p2;
reg   [31:0] B_21_reg_1297;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] D_fu_644_p3;
reg   [31:0] D_reg_1305;
wire   [26:0] trunc_ln126_6_fu_650_p1;
reg   [26:0] trunc_ln126_6_reg_1313;
reg   [4:0] lshr_ln126_6_reg_1318;
wire   [31:0] or_ln126_9_fu_679_p2;
reg   [31:0] or_ln126_9_reg_1323;
wire   [31:0] A_fu_706_p2;
reg   [31:0] A_reg_1328;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] C_12_fu_713_p3;
reg   [31:0] C_12_reg_1337;
wire   [31:0] or_ln126_12_fu_745_p2;
reg   [31:0] or_ln126_12_reg_1346;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] add_ln126_18_fu_764_p2;
reg   [31:0] add_ln126_18_reg_1351;
wire   [31:0] temp_10_fu_774_p2;
reg   [31:0] temp_10_reg_1356;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] add_ln126_20_fu_801_p2;
reg   [31:0] add_ln126_20_reg_1361;
wire   [31:0] add_ln126_21_fu_806_p2;
reg   [31:0] add_ln126_21_reg_1366;
wire   [1:0] trunc_ln126_13_fu_811_p1;
reg   [1:0] trunc_ln126_13_reg_1371;
reg   [29:0] lshr_ln126_12_reg_1376;
wire   [31:0] C_13_fu_837_p3;
reg   [31:0] C_13_reg_1381;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] temp_11_fu_871_p2;
reg   [31:0] temp_11_reg_1388;
wire   [26:0] trunc_ln126_12_fu_876_p1;
reg   [26:0] trunc_ln126_12_reg_1393;
reg   [4:0] lshr_ln126_11_reg_1398;
wire   [31:0] temp_12_fu_980_p2;
reg   [31:0] temp_12_reg_1403;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [26:0] trunc_ln126_14_fu_992_p1;
reg   [26:0] trunc_ln126_14_reg_1408;
reg   [4:0] lshr_ln126_13_reg_1413;
wire   [31:0] or_ln126_21_fu_1023_p2;
reg   [31:0] or_ln126_21_reg_1418;
wire   [31:0] add_ln126_30_fu_1050_p2;
reg   [31:0] add_ln126_30_reg_1423;
wire    ap_block_pp0_stage10_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln100_fu_340_p1;
wire    ap_block_pp0_stage1;
reg   [31:0] E_fu_92;
wire   [31:0] C_14_fu_929_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage2;
reg   [31:0] E_12_fu_96;
wire   [31:0] C_15_fu_986_p3;
reg   [31:0] B_fu_100;
reg   [31:0] E_13_fu_104;
wire   [31:0] C_10_fu_904_p3;
reg   [31:0] B_11_fu_108;
wire   [31:0] temp_13_fu_1064_p2;
reg   [5:0] i_fu_112;
wire   [5:0] add_ln124_fu_460_p2;
wire    ap_block_pp0_stage5_01001;
reg    W_ce0_local;
reg    W_1_ce0_local;
reg    W_2_ce0_local;
reg    W_3_ce0_local;
reg    W_4_ce0_local;
reg    W_5_ce0_local;
reg    W_6_ce0_local;
reg    W_7_ce0_local;
wire    ap_block_pp0_stage0;
wire   [2:0] lshr_ln100_6_fu_330_p4;
wire   [31:0] or_ln126_fu_366_p2;
wire   [31:0] and_ln126_fu_372_p2;
wire   [31:0] and_ln126_1_fu_378_p2;
wire   [26:0] trunc_ln126_fu_352_p1;
wire   [4:0] lshr_ln5_fu_356_p4;
wire   [31:0] or_ln126_2_fu_390_p3;
wire   [31:0] or_ln126_1_fu_384_p2;
wire   [31:0] add_ln126_1_fu_398_p2;
wire   [1:0] trunc_ln126_3_fu_424_p1;
wire   [29:0] lshr_ln126_3_fu_428_p4;
wire   [5:0] or_ln2_fu_446_p3;
wire   [31:0] add_ln126_fu_474_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln126_3_fu_519_p2;
wire   [31:0] and_ln126_2_fu_524_p2;
wire   [31:0] and_ln126_3_fu_529_p2;
wire   [31:0] add_ln126_4_fu_546_p2;
wire   [31:0] or_ln126_4_fu_534_p2;
wire   [31:0] or_ln126_6_fu_540_p3;
wire   [31:0] add_ln126_5_fu_557_p2;
wire   [31:0] add_ln126_6_fu_551_p2;
wire   [31:0] or_ln126_5_fu_582_p2;
wire   [31:0] and_ln126_4_fu_587_p2;
wire   [31:0] and_ln126_5_fu_592_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln126_8_fu_623_p2;
wire   [31:0] or_ln126_s_fu_617_p3;
wire   [31:0] add_ln126_9_fu_633_p2;
wire   [31:0] add_ln126_10_fu_628_p2;
wire   [31:0] or_ln126_8_fu_664_p2;
wire   [31:0] and_ln126_6_fu_669_p2;
wire   [31:0] and_ln126_7_fu_674_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] add_ln126_12_fu_691_p2;
wire   [31:0] or_ln126_10_fu_685_p3;
wire   [31:0] add_ln126_13_fu_701_p2;
wire   [31:0] add_ln126_14_fu_696_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln126_11_fu_732_p2;
wire   [31:0] and_ln126_8_fu_736_p2;
wire   [31:0] and_ln126_9_fu_741_p2;
wire   [26:0] trunc_ln126_8_fu_720_p1;
wire   [4:0] lshr_ln126_8_fu_723_p4;
wire   [31:0] or_ln126_13_fu_751_p3;
wire   [31:0] add_ln126_17_fu_759_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] add_ln126_16_fu_770_p2;
wire   [26:0] trunc_ln126_10_fu_779_p1;
wire   [4:0] lshr_ln126_s_fu_783_p4;
wire   [31:0] or_ln126_16_fu_793_p3;
wire    ap_block_pp0_stage8;
wire   [1:0] trunc_ln126_9_fu_825_p1;
wire   [29:0] lshr_ln126_9_fu_828_p4;
wire   [31:0] or_ln126_14_fu_845_p2;
wire   [31:0] and_ln126_10_fu_850_p2;
wire   [31:0] and_ln126_11_fu_855_p2;
wire   [31:0] or_ln126_15_fu_860_p2;
wire   [31:0] add_ln126_22_fu_866_p2;
wire   [1:0] trunc_ln126_15_fu_890_p1;
wire   [29:0] lshr_ln126_14_fu_894_p4;
wire    ap_block_pp0_stage9;
wire   [1:0] trunc_ln126_11_fu_917_p1;
wire   [29:0] lshr_ln126_10_fu_920_p4;
wire   [31:0] or_ln126_17_fu_937_p2;
wire   [31:0] and_ln126_12_fu_942_p2;
wire   [31:0] and_ln126_13_fu_947_p2;
wire   [31:0] add_ln126_24_fu_964_p2;
wire   [31:0] or_ln126_18_fu_952_p2;
wire   [31:0] or_ln126_19_fu_958_p3;
wire   [31:0] add_ln126_25_fu_975_p2;
wire   [31:0] add_ln126_26_fu_969_p2;
wire   [31:0] or_ln126_20_fu_1006_p2;
wire   [31:0] and_ln126_14_fu_1012_p2;
wire   [31:0] and_ln126_15_fu_1017_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln126_22_fu_1039_p3;
wire   [31:0] add_ln126_29_fu_1045_p2;
wire   [31:0] add_ln126_28_fu_1060_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [10:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_92 = 32'd0;
#0 E_12_fu_96 = 32'd0;
#0 B_fu_100 = 32'd0;
#0 E_13_fu_104 = 32'd0;
#0 B_11_fu_108 = 32'd0;
#0 i_fu_112 = 6'd0;
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_11_fu_108 <= A_41_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_11_fu_108 <= temp_13_fu_1064_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_100 <= B_38_reload;
    end else if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        B_fu_100 <= temp_12_reg_1403;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_12_fu_96 <= D_41_reload;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        E_12_fu_96 <= C_15_fu_986_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_13_fu_104 <= C_48_reload;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_13_fu_104 <= C_10_fu_904_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_92 <= E_38_reload;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        E_fu_92 <= C_14_fu_929_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_112 <= 6'd40;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln124_fu_454_p2 == 1'd0))) begin
        i_fu_112 <= add_ln124_fu_460_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_8_reg_1128 <= B_11_fu_108;
        C_reg_1121 <= E_13_fu_104;
        D_8_reg_1116 <= E_12_fu_96;
        add_ln126_2_reg_1138 <= add_ln126_2_fu_404_p2;
        icmp_ln124_reg_1178 <= icmp_ln124_fu_454_p2;
        lshr_ln126_1_reg_1148 <= {{B_fu_100[31:2]}};
        trunc_ln126_1_reg_1143 <= trunc_ln126_1_fu_410_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_reg_1328 <= A_fu_706_p2;
        C_12_reg_1337 <= C_12_fu_713_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_21_reg_1297 <= B_21_fu_638_p2;
        D_reg_1305 <= D_fu_644_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_11_reg_1262 <= C_11_fu_513_p3;
        lshr_ln126_4_reg_1277 <= {{temp_9_fu_562_p2[31:27]}};
        lshr_ln126_7_reg_1292 <= {{temp_9_fu_562_p2[31:2]}};
        or_ln126_7_reg_1282 <= or_ln126_7_fu_597_p2;
        temp_9_reg_1267 <= temp_9_fu_562_p2;
        trunc_ln126_4_reg_1272 <= trunc_ln126_4_fu_568_p1;
        trunc_ln126_7_reg_1287 <= trunc_ln126_7_fu_603_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_13_reg_1381 <= C_13_fu_837_p3;
        lshr_ln126_11_reg_1398 <= {{temp_11_fu_871_p2[31:27]}};
        temp_11_reg_1388 <= temp_11_fu_871_p2;
        trunc_ln126_12_reg_1393 <= trunc_ln126_12_fu_876_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_23_reg_1158 <= E_23_fu_438_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        W_1_load_reg_1217 <= W_1_q0;
        W_2_load_reg_1222 <= W_2_q0;
        W_3_load_reg_1237 <= W_3_q0;
        W_4_load_reg_1242 <= W_4_q0;
        W_5_load_reg_1247 <= W_5_q0;
        W_6_load_reg_1252 <= W_6_q0;
        W_7_load_reg_1257 <= W_7_q0;
        lshr_ln126_2_reg_1212 <= {{temp_fu_480_p2[31:27]}};
        lshr_ln126_5_reg_1232 <= {{temp_fu_480_p2[31:2]}};
        temp_reg_1202 <= temp_fu_480_p2;
        trunc_ln126_2_reg_1207 <= trunc_ln126_2_fu_485_p1;
        trunc_ln126_5_reg_1227 <= trunc_ln126_5_fu_499_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln126_18_reg_1351 <= add_ln126_18_fu_764_p2;
        or_ln126_12_reg_1346 <= or_ln126_12_fu_745_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln126_20_reg_1361 <= add_ln126_20_fu_801_p2;
        add_ln126_21_reg_1366 <= add_ln126_21_fu_806_p2;
        lshr_ln126_12_reg_1376 <= {{temp_10_fu_774_p2[31:2]}};
        temp_10_reg_1356 <= temp_10_fu_774_p2;
        trunc_ln126_13_reg_1371 <= trunc_ln126_13_fu_811_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln126_30_reg_1423 <= add_ln126_30_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln126_13_reg_1413 <= {{temp_12_fu_980_p2[31:27]}};
        or_ln126_21_reg_1418 <= or_ln126_21_fu_1023_p2;
        temp_12_reg_1403 <= temp_12_fu_980_p2;
        trunc_ln126_14_reg_1408 <= trunc_ln126_14_fu_992_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln126_6_reg_1318 <= {{B_21_fu_638_p2[31:27]}};
        or_ln126_9_reg_1323 <= or_ln126_9_fu_679_p2;
        trunc_ln126_6_reg_1313 <= trunc_ln126_6_fu_650_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1178 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_39_out_ap_vld = 1'b1;
    end else begin
        A_39_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1178 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_37_out_ap_vld = 1'b1;
    end else begin
        B_37_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1178 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_42_out_ap_vld = 1'b1;
    end else begin
        C_42_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1178 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        D_39_out_ap_vld = 1'b1;
    end else begin
        D_39_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1178 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_37_out_ap_vld = 1'b1;
    end else begin
        E_37_out_ap_vld = 1'b0;
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
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
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
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
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
    if (((icmp_ln124_reg_1178 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_39_out = (add_ln126_13_fu_701_p2 + add_ln126_14_fu_696_p2);
assign A_fu_706_p2 = (add_ln126_13_fu_701_p2 + add_ln126_14_fu_696_p2);
assign B_21_fu_638_p2 = (add_ln126_9_fu_633_p2 + add_ln126_10_fu_628_p2);
assign B_37_out = B_21_reg_1297;
assign C_10_fu_904_p3 = {{trunc_ln126_15_fu_890_p1}, {lshr_ln126_14_fu_894_p4}};
assign C_11_fu_513_p3 = {{trunc_ln126_1_reg_1143}, {lshr_ln126_1_reg_1148}};
assign C_12_fu_713_p3 = {{trunc_ln126_7_reg_1287}, {lshr_ln126_7_reg_1292}};
assign C_13_fu_837_p3 = {{trunc_ln126_9_fu_825_p1}, {lshr_ln126_9_fu_828_p4}};
assign C_14_fu_929_p3 = {{trunc_ln126_11_fu_917_p1}, {lshr_ln126_10_fu_920_p4}};
assign C_15_fu_986_p3 = {{trunc_ln126_13_reg_1371}, {lshr_ln126_12_reg_1376}};
assign C_42_out = {{trunc_ln126_7_reg_1287}, {lshr_ln126_7_reg_1292}};
assign D_39_out = D_reg_1305;
assign D_fu_644_p3 = {{trunc_ln126_5_reg_1227}, {lshr_ln126_5_reg_1232}};
assign E_23_fu_438_p3 = {{trunc_ln126_3_fu_424_p1}, {lshr_ln126_3_fu_428_p4}};
assign E_37_out = E_23_reg_1158;
assign W_1_address0 = zext_ln100_fu_340_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_340_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_340_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_340_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_340_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_340_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_340_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_address0 = zext_ln100_fu_340_p1;
assign W_ce0 = W_ce0_local;
assign add_ln124_fu_460_p2 = (i_fu_112 + 6'd8);
assign add_ln126_10_fu_628_p2 = (add_ln126_8_fu_623_p2 + or_ln126_7_reg_1282);
assign add_ln126_12_fu_691_p2 = ($signed(W_3_load_reg_1237) + $signed(32'd2400959708));
assign add_ln126_13_fu_701_p2 = (or_ln126_10_fu_685_p3 + C_11_reg_1262);
assign add_ln126_14_fu_696_p2 = (add_ln126_12_fu_691_p2 + or_ln126_9_reg_1323);
assign add_ln126_16_fu_770_p2 = (W_4_load_reg_1242 + or_ln126_12_reg_1346);
assign add_ln126_17_fu_759_p2 = ($signed(E_23_reg_1158) + $signed(32'd2400959708));
assign add_ln126_18_fu_764_p2 = (or_ln126_13_fu_751_p3 + add_ln126_17_fu_759_p2);
assign add_ln126_1_fu_398_p2 = ($signed(or_ln126_2_fu_390_p3) + $signed(32'd2400959708));
assign add_ln126_20_fu_801_p2 = ($signed(W_5_load_reg_1247) + $signed(32'd2400959708));
assign add_ln126_21_fu_806_p2 = (or_ln126_16_fu_793_p3 + D_reg_1305);
assign add_ln126_22_fu_866_p2 = (add_ln126_20_reg_1361 + or_ln126_15_fu_860_p2);
assign add_ln126_24_fu_964_p2 = ($signed(W_6_load_reg_1252) + $signed(32'd2400959708));
assign add_ln126_25_fu_975_p2 = (or_ln126_19_fu_958_p3 + C_12_reg_1337);
assign add_ln126_26_fu_969_p2 = (add_ln126_24_fu_964_p2 + or_ln126_18_fu_952_p2);
assign add_ln126_28_fu_1060_p2 = (W_7_load_reg_1257 + C_13_reg_1381);
assign add_ln126_29_fu_1045_p2 = ($signed(32'd2400959708) + $signed(or_ln126_21_reg_1418));
assign add_ln126_2_fu_404_p2 = (or_ln126_1_fu_384_p2 + add_ln126_1_fu_398_p2);
assign add_ln126_30_fu_1050_p2 = (or_ln126_22_fu_1039_p3 + add_ln126_29_fu_1045_p2);
assign add_ln126_4_fu_546_p2 = ($signed(W_1_load_reg_1217) + $signed(32'd2400959708));
assign add_ln126_5_fu_557_p2 = (or_ln126_6_fu_540_p3 + D_8_reg_1116);
assign add_ln126_6_fu_551_p2 = (add_ln126_4_fu_546_p2 + or_ln126_4_fu_534_p2);
assign add_ln126_8_fu_623_p2 = ($signed(W_2_load_reg_1222) + $signed(32'd2400959708));
assign add_ln126_9_fu_633_p2 = (or_ln126_s_fu_617_p3 + C_reg_1121);
assign add_ln126_fu_474_p2 = (W_q0 + E_fu_92);
assign and_ln126_10_fu_850_p2 = (or_ln126_14_fu_845_p2 & A_reg_1328);
assign and_ln126_11_fu_855_p2 = (C_13_fu_837_p3 & C_12_reg_1337);
assign and_ln126_12_fu_942_p2 = (temp_10_reg_1356 & or_ln126_17_fu_937_p2);
assign and_ln126_13_fu_947_p2 = (C_14_fu_929_p3 & C_13_reg_1381);
assign and_ln126_14_fu_1012_p2 = (temp_11_reg_1388 & or_ln126_20_fu_1006_p2);
assign and_ln126_15_fu_1017_p2 = (C_15_fu_986_p3 & C_14_fu_929_p3);
assign and_ln126_1_fu_378_p2 = (E_13_fu_104 & E_12_fu_96);
assign and_ln126_2_fu_524_p2 = (or_ln126_3_fu_519_p2 & A_8_reg_1128);
assign and_ln126_3_fu_529_p2 = (C_reg_1121 & C_11_fu_513_p3);
assign and_ln126_4_fu_587_p2 = (temp_reg_1202 & or_ln126_5_fu_582_p2);
assign and_ln126_5_fu_592_p2 = (E_23_reg_1158 & C_11_fu_513_p3);
assign and_ln126_6_fu_669_p2 = (temp_9_reg_1267 & or_ln126_8_fu_664_p2);
assign and_ln126_7_fu_674_p2 = (E_23_reg_1158 & D_fu_644_p3);
assign and_ln126_8_fu_736_p2 = (or_ln126_11_fu_732_p2 & B_21_reg_1297);
assign and_ln126_9_fu_741_p2 = (D_reg_1305 & C_12_reg_1337);
assign and_ln126_fu_372_p2 = (or_ln126_fu_366_p2 & B_fu_100);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
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
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign icmp_ln124_fu_454_p2 = ((or_ln2_fu_446_p3 == 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln100_6_fu_330_p4 = {{i_fu_112[5:3]}};
assign lshr_ln126_10_fu_920_p4 = {{A_reg_1328[31:2]}};
assign lshr_ln126_14_fu_894_p4 = {{temp_11_fu_871_p2[31:2]}};
assign lshr_ln126_3_fu_428_p4 = {{B_11_fu_108[31:2]}};
assign lshr_ln126_8_fu_723_p4 = {{A_reg_1328[31:27]}};
assign lshr_ln126_9_fu_828_p4 = {{B_21_reg_1297[31:2]}};
assign lshr_ln126_s_fu_783_p4 = {{temp_10_fu_774_p2[31:27]}};
assign lshr_ln5_fu_356_p4 = {{B_11_fu_108[31:27]}};
assign or_ln126_10_fu_685_p3 = {{trunc_ln126_6_reg_1313}, {lshr_ln126_6_reg_1318}};
assign or_ln126_11_fu_732_p2 = (D_reg_1305 | C_12_reg_1337);
assign or_ln126_12_fu_745_p2 = (and_ln126_9_fu_741_p2 | and_ln126_8_fu_736_p2);
assign or_ln126_13_fu_751_p3 = {{trunc_ln126_8_fu_720_p1}, {lshr_ln126_8_fu_723_p4}};
assign or_ln126_14_fu_845_p2 = (C_13_fu_837_p3 | C_12_reg_1337);
assign or_ln126_15_fu_860_p2 = (and_ln126_11_fu_855_p2 | and_ln126_10_fu_850_p2);
assign or_ln126_16_fu_793_p3 = {{trunc_ln126_10_fu_779_p1}, {lshr_ln126_s_fu_783_p4}};
assign or_ln126_17_fu_937_p2 = (C_14_fu_929_p3 | C_13_reg_1381);
assign or_ln126_18_fu_952_p2 = (and_ln126_13_fu_947_p2 | and_ln126_12_fu_942_p2);
assign or_ln126_19_fu_958_p3 = {{trunc_ln126_12_reg_1393}, {lshr_ln126_11_reg_1398}};
assign or_ln126_1_fu_384_p2 = (and_ln126_fu_372_p2 | and_ln126_1_fu_378_p2);
assign or_ln126_20_fu_1006_p2 = (C_15_fu_986_p3 | C_14_fu_929_p3);
assign or_ln126_21_fu_1023_p2 = (and_ln126_15_fu_1017_p2 | and_ln126_14_fu_1012_p2);
assign or_ln126_22_fu_1039_p3 = {{trunc_ln126_14_reg_1408}, {lshr_ln126_13_reg_1413}};
assign or_ln126_2_fu_390_p3 = {{trunc_ln126_fu_352_p1}, {lshr_ln5_fu_356_p4}};
assign or_ln126_3_fu_519_p2 = (C_reg_1121 | C_11_fu_513_p3);
assign or_ln126_4_fu_534_p2 = (and_ln126_3_fu_529_p2 | and_ln126_2_fu_524_p2);
assign or_ln126_5_fu_582_p2 = (E_23_reg_1158 | C_11_fu_513_p3);
assign or_ln126_6_fu_540_p3 = {{trunc_ln126_2_reg_1207}, {lshr_ln126_2_reg_1212}};
assign or_ln126_7_fu_597_p2 = (and_ln126_5_fu_592_p2 | and_ln126_4_fu_587_p2);
assign or_ln126_8_fu_664_p2 = (E_23_reg_1158 | D_fu_644_p3);
assign or_ln126_9_fu_679_p2 = (and_ln126_7_fu_674_p2 | and_ln126_6_fu_669_p2);
assign or_ln126_fu_366_p2 = (E_13_fu_104 | E_12_fu_96);
assign or_ln126_s_fu_617_p3 = {{trunc_ln126_4_reg_1272}, {lshr_ln126_4_reg_1277}};
assign or_ln2_fu_446_p3 = {{lshr_ln100_6_fu_330_p4}, {3'd4}};
assign temp_10_fu_774_p2 = (add_ln126_18_reg_1351 + add_ln126_16_fu_770_p2);
assign temp_11_fu_871_p2 = (add_ln126_21_reg_1366 + add_ln126_22_fu_866_p2);
assign temp_12_fu_980_p2 = (add_ln126_25_fu_975_p2 + add_ln126_26_fu_969_p2);
assign temp_13_fu_1064_p2 = (add_ln126_30_reg_1423 + add_ln126_28_fu_1060_p2);
assign temp_9_fu_562_p2 = (add_ln126_5_fu_557_p2 + add_ln126_6_fu_551_p2);
assign temp_fu_480_p2 = (add_ln126_2_reg_1138 + add_ln126_fu_474_p2);
assign trunc_ln126_10_fu_779_p1 = temp_10_fu_774_p2[26:0];
assign trunc_ln126_11_fu_917_p1 = A_reg_1328[1:0];
assign trunc_ln126_12_fu_876_p1 = temp_11_fu_871_p2[26:0];
assign trunc_ln126_13_fu_811_p1 = temp_10_fu_774_p2[1:0];
assign trunc_ln126_14_fu_992_p1 = temp_12_fu_980_p2[26:0];
assign trunc_ln126_15_fu_890_p1 = temp_11_fu_871_p2[1:0];
assign trunc_ln126_1_fu_410_p1 = B_fu_100[1:0];
assign trunc_ln126_2_fu_485_p1 = temp_fu_480_p2[26:0];
assign trunc_ln126_3_fu_424_p1 = B_11_fu_108[1:0];
assign trunc_ln126_4_fu_568_p1 = temp_9_fu_562_p2[26:0];
assign trunc_ln126_5_fu_499_p1 = temp_fu_480_p2[1:0];
assign trunc_ln126_6_fu_650_p1 = B_21_fu_638_p2[26:0];
assign trunc_ln126_7_fu_603_p1 = temp_9_fu_562_p2[1:0];
assign trunc_ln126_8_fu_720_p1 = A_reg_1328[26:0];
assign trunc_ln126_9_fu_825_p1 = B_21_reg_1297[1:0];
assign trunc_ln126_fu_352_p1 = B_11_fu_108[26:0];
assign zext_ln100_fu_340_p1 = lshr_ln100_6_fu_330_p4;
endmodule 