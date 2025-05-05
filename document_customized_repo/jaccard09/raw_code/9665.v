module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_27_reload,B_4_reload,E_26_reload,D_27_reload,E_5_reload,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,W_1_address0,W_1_ce0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,E_27_out,E_27_out_ap_vld,B_27_out,B_27_out_ap_vld,D_31_out,D_31_out_ap_vld,A_31_out,A_31_out_ap_vld,C_31_out,C_31_out_ap_vld); 
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
input  [31:0] A_27_reload;
input  [31:0] B_4_reload;
input  [31:0] E_26_reload;
input  [31:0] D_27_reload;
input  [31:0] E_5_reload;
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
output  [31:0] E_27_out;
output   E_27_out_ap_vld;
output  [31:0] B_27_out;
output   B_27_out_ap_vld;
output  [31:0] D_31_out;
output   D_31_out_ap_vld;
output  [31:0] A_31_out;
output   A_31_out_ap_vld;
output  [31:0] C_31_out;
output   C_31_out_ap_vld;
reg ap_idle;
reg E_27_out_ap_vld;
reg B_27_out_ap_vld;
reg D_31_out_ap_vld;
reg A_31_out_ap_vld;
reg C_31_out_ap_vld;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln124_reg_1200;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [31:0] reg_267;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_271;
wire   [31:0] grp_fu_275_p2;
reg   [31:0] reg_281;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] tmp_1_fu_358_p4;
reg   [2:0] tmp_1_reg_1194;
wire   [0:0] icmp_ln124_fu_376_p2;
reg   [0:0] tmp_reg_1204;
reg   [31:0] D_8_reg_1209;
reg   [31:0] C_reg_1214;
reg   [31:0] A_8_reg_1221;
wire   [31:0] add_ln126_2_fu_465_p2;
reg   [31:0] add_ln126_2_reg_1226;
wire   [1:0] trunc_ln126_1_fu_471_p1;
reg   [1:0] trunc_ln126_1_reg_1231;
reg   [29:0] lshr_ln126_1_reg_1236;
wire   [31:0] E_22_fu_499_p3;
reg   [31:0] E_22_reg_1241;
reg   [31:0] W_load_4_reg_1251;
reg   [31:0] W_1_load_4_reg_1256;
wire   [31:0] C_11_fu_548_p3;
reg   [31:0] C_11_reg_1281;
wire   [31:0] or_ln126_4_fu_583_p2;
reg   [31:0] or_ln126_4_reg_1286;
wire   [31:0] add_ln126_5_fu_597_p2;
reg   [31:0] add_ln126_5_reg_1291;
wire   [31:0] or_ln126_7_fu_618_p2;
reg   [31:0] or_ln126_7_reg_1296;
wire   [1:0] trunc_ln126_5_fu_624_p1;
reg   [1:0] trunc_ln126_5_reg_1301;
reg   [29:0] lshr_ln126_5_reg_1306;
reg   [31:0] W_load_6_reg_1311;
reg   [31:0] W_1_load_6_reg_1316;
wire   [31:0] add_ln126_8_fu_670_p2;
reg   [31:0] add_ln126_8_reg_1321;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] add_ln126_9_fu_675_p2;
reg   [31:0] add_ln126_9_reg_1326;
wire   [31:0] D_fu_680_p3;
reg   [31:0] D_reg_1331;
wire   [31:0] or_ln126_9_fu_702_p2;
reg   [31:0] or_ln126_9_reg_1339;
wire   [1:0] trunc_ln126_7_fu_708_p1;
reg   [1:0] trunc_ln126_7_reg_1344;
reg   [29:0] lshr_ln126_7_reg_1349;
wire   [31:0] B_20_fu_726_p2;
reg   [31:0] B_20_reg_1354;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] add_ln126_13_fu_753_p2;
reg   [31:0] add_ln126_13_reg_1362;
wire   [31:0] A_fu_768_p2;
reg   [31:0] A_reg_1367;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] C_12_fu_774_p3;
reg   [31:0] C_12_reg_1376;
wire   [31:0] or_ln126_12_fu_806_p2;
reg   [31:0] or_ln126_12_reg_1385;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] add_ln126_18_fu_825_p2;
reg   [31:0] add_ln126_18_reg_1390;
wire   [31:0] temp_10_fu_836_p2;
reg   [31:0] temp_10_reg_1395;
wire   [31:0] add_ln126_21_fu_863_p2;
reg   [31:0] add_ln126_21_reg_1400;
wire   [1:0] trunc_ln126_13_fu_868_p1;
reg   [1:0] trunc_ln126_13_reg_1405;
reg   [29:0] lshr_ln126_12_reg_1410;
wire   [31:0] C_13_fu_894_p3;
reg   [31:0] C_13_reg_1415;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] temp_11_fu_929_p2;
reg   [31:0] temp_11_reg_1422;
wire   [26:0] trunc_ln126_12_fu_934_p1;
reg   [26:0] trunc_ln126_12_reg_1427;
reg   [4:0] lshr_ln126_11_reg_1432;
wire   [31:0] temp_12_fu_1038_p2;
reg   [31:0] temp_12_reg_1437;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [26:0] trunc_ln126_14_fu_1050_p1;
reg   [26:0] trunc_ln126_14_reg_1442;
reg   [4:0] lshr_ln126_13_reg_1447;
wire   [31:0] or_ln126_21_fu_1081_p2;
reg   [31:0] or_ln126_21_reg_1452;
wire   [31:0] add_ln126_30_fu_1108_p2;
reg   [31:0] add_ln126_30_reg_1457;
wire    ap_block_pp0_stage10_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln100_2_fu_328_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln100_3_fu_352_p1;
wire   [63:0] zext_ln124_fu_515_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln100_fu_528_p1;
reg   [31:0] E_7_fu_96;
wire   [31:0] C_14_fu_987_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [31:0] E_fu_100;
wire   [31:0] C_15_fu_1044_p3;
reg   [31:0] B_7_fu_104;
reg   [31:0] E_12_fu_108;
wire   [31:0] C_10_fu_962_p3;
reg   [31:0] B_fu_112;
wire   [31:0] temp_13_fu_1122_p2;
reg   [5:0] i_fu_116;
wire   [5:0] add_ln124_fu_390_p2;
reg   [5:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage5_01001;
reg    W_ce1_local;
reg   [5:0] W_address1_local;
reg    W_ce0_local;
reg   [5:0] W_address0_local;
reg    W_1_ce1_local;
reg   [5:0] W_1_address1_local;
reg    W_1_ce0_local;
reg   [5:0] W_1_address0_local;
wire    ap_block_pp0_stage7;
wire   [4:0] lshr_ln100_2_fu_318_p4;
wire   [3:0] tmp_s_fu_334_p4;
wire   [4:0] or_ln1_fu_344_p3;
wire   [5:0] or_ln2_fu_368_p3;
wire   [31:0] or_ln126_fu_427_p2;
wire   [31:0] and_ln126_fu_433_p2;
wire   [31:0] and_ln126_1_fu_439_p2;
wire   [26:0] trunc_ln126_fu_413_p1;
wire   [4:0] lshr_ln5_fu_417_p4;
wire   [31:0] or_ln126_2_fu_451_p3;
wire   [31:0] or_ln126_1_fu_445_p2;
wire   [31:0] add_ln126_1_fu_459_p2;
wire   [1:0] trunc_ln126_3_fu_485_p1;
wire   [29:0] lshr_ln126_3_fu_489_p4;
wire   [4:0] or_ln100_1_fu_507_p4;
wire   [4:0] or_ln100_2_fu_521_p3;
wire   [31:0] add_ln126_fu_537_p2;
wire   [31:0] temp_fu_543_p2;
wire   [31:0] or_ln126_3_fu_568_p2;
wire   [31:0] and_ln126_2_fu_573_p2;
wire   [31:0] and_ln126_3_fu_578_p2;
wire   [26:0] trunc_ln126_2_fu_554_p1;
wire   [4:0] lshr_ln126_2_fu_558_p4;
wire   [31:0] or_ln126_6_fu_589_p3;
wire   [31:0] or_ln126_5_fu_602_p2;
wire   [31:0] and_ln126_4_fu_607_p2;
wire   [31:0] and_ln126_5_fu_613_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln126_6_fu_638_p2;
wire   [31:0] temp_9_fu_643_p2;
wire   [26:0] trunc_ln126_4_fu_648_p1;
wire   [4:0] lshr_ln126_4_fu_652_p4;
wire   [31:0] or_ln126_s_fu_662_p3;
wire   [31:0] or_ln126_8_fu_686_p2;
wire   [31:0] and_ln126_6_fu_691_p2;
wire   [31:0] and_ln126_7_fu_697_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln126_10_fu_722_p2;
wire   [26:0] trunc_ln126_6_fu_731_p1;
wire   [4:0] lshr_ln126_6_fu_735_p4;
wire   [31:0] or_ln126_10_fu_745_p3;
wire    ap_block_pp0_stage5;
wire   [31:0] add_ln126_12_fu_758_p2;
wire   [31:0] add_ln126_14_fu_763_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln126_11_fu_793_p2;
wire   [31:0] and_ln126_8_fu_797_p2;
wire   [31:0] and_ln126_9_fu_802_p2;
wire   [26:0] trunc_ln126_8_fu_781_p1;
wire   [4:0] lshr_ln126_8_fu_784_p4;
wire   [31:0] or_ln126_13_fu_812_p3;
wire   [31:0] add_ln126_17_fu_820_p2;
wire   [31:0] add_ln126_16_fu_831_p2;
wire   [26:0] trunc_ln126_10_fu_841_p1;
wire   [4:0] lshr_ln126_s_fu_845_p4;
wire   [31:0] or_ln126_16_fu_855_p3;
wire    ap_block_pp0_stage8;
wire   [1:0] trunc_ln126_9_fu_882_p1;
wire   [29:0] lshr_ln126_9_fu_885_p4;
wire   [31:0] or_ln126_14_fu_902_p2;
wire   [31:0] and_ln126_10_fu_907_p2;
wire   [31:0] and_ln126_11_fu_912_p2;
wire   [31:0] or_ln126_15_fu_917_p2;
wire   [31:0] add_ln126_22_fu_923_p2;
wire   [1:0] trunc_ln126_15_fu_948_p1;
wire   [29:0] lshr_ln126_14_fu_952_p4;
wire    ap_block_pp0_stage9;
wire   [1:0] trunc_ln126_11_fu_975_p1;
wire   [29:0] lshr_ln126_10_fu_978_p4;
wire   [31:0] or_ln126_17_fu_995_p2;
wire   [31:0] and_ln126_12_fu_1000_p2;
wire   [31:0] and_ln126_13_fu_1005_p2;
wire   [31:0] add_ln126_24_fu_1022_p2;
wire   [31:0] or_ln126_18_fu_1010_p2;
wire   [31:0] or_ln126_19_fu_1016_p3;
wire   [31:0] add_ln126_25_fu_1033_p2;
wire   [31:0] add_ln126_26_fu_1027_p2;
wire   [31:0] or_ln126_20_fu_1064_p2;
wire   [31:0] and_ln126_14_fu_1070_p2;
wire   [31:0] and_ln126_15_fu_1075_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln126_22_fu_1097_p3;
wire   [31:0] add_ln126_29_fu_1103_p2;
wire   [31:0] add_ln126_28_fu_1118_p2;
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
#0 E_7_fu_96 = 32'd0;
#0 E_fu_100 = 32'd0;
#0 B_7_fu_104 = 32'd0;
#0 E_12_fu_108 = 32'd0;
#0 B_fu_112 = 32'd0;
#0 i_fu_116 = 6'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_7_fu_104 <= B_4_reload;
    end else if (((icmp_ln124_reg_1200 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        B_7_fu_104 <= temp_12_reg_1437;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_112 <= A_27_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_fu_112 <= temp_13_fu_1122_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_12_fu_108 <= E_26_reload;
    end else if (((icmp_ln124_reg_1200 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_12_fu_108 <= C_10_fu_962_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_7_fu_96 <= E_5_reload;
    end else if (((icmp_ln124_reg_1200 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        E_7_fu_96 <= C_14_fu_987_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_100 <= D_27_reload;
    end else if (((icmp_ln124_reg_1200 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        E_fu_100 <= C_15_fu_1044_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln124_fu_376_p2 == 1'd0))) begin
            i_fu_116 <= add_ln124_fu_390_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_116 <= 6'd40;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_8_reg_1221 <= B_fu_112;
        C_reg_1214 <= E_12_fu_108;
        D_8_reg_1209 <= E_fu_100;
        add_ln126_2_reg_1226 <= add_ln126_2_fu_465_p2;
        lshr_ln126_1_reg_1236 <= {{B_7_fu_104[31:2]}};
        trunc_ln126_1_reg_1231 <= trunc_ln126_1_fu_471_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_reg_1367 <= A_fu_768_p2;
        C_12_reg_1376 <= C_12_fu_774_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_20_reg_1354 <= B_20_fu_726_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_11_reg_1281 <= C_11_fu_548_p3;
        add_ln126_5_reg_1291 <= add_ln126_5_fu_597_p2;
        lshr_ln126_5_reg_1306 <= {{temp_fu_543_p2[31:2]}};
        or_ln126_4_reg_1286 <= or_ln126_4_fu_583_p2;
        or_ln126_7_reg_1296 <= or_ln126_7_fu_618_p2;
        trunc_ln126_5_reg_1301 <= trunc_ln126_5_fu_624_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_13_reg_1415 <= C_13_fu_894_p3;
        lshr_ln126_11_reg_1432 <= {{temp_11_fu_929_p2[31:27]}};
        temp_11_reg_1422 <= temp_11_fu_929_p2;
        trunc_ln126_12_reg_1427 <= trunc_ln126_12_fu_934_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        D_reg_1331 <= D_fu_680_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_22_reg_1241 <= E_22_fu_499_p3;
        W_1_load_4_reg_1256 <= W_1_q0;
        W_load_4_reg_1251 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        W_1_load_6_reg_1316 <= W_1_q0;
        W_load_6_reg_1311 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln126_13_reg_1362 <= add_ln126_13_fu_753_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln126_18_reg_1390 <= add_ln126_18_fu_825_p2;
        or_ln126_12_reg_1385 <= or_ln126_12_fu_806_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln126_21_reg_1400 <= add_ln126_21_fu_863_p2;
        lshr_ln126_12_reg_1410 <= {{temp_10_fu_836_p2[31:2]}};
        temp_10_reg_1395 <= temp_10_fu_836_p2;
        trunc_ln126_13_reg_1405 <= trunc_ln126_13_fu_868_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln126_30_reg_1457 <= add_ln126_30_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln126_8_reg_1321 <= add_ln126_8_fu_670_p2;
        add_ln126_9_reg_1326 <= add_ln126_9_fu_675_p2;
        lshr_ln126_7_reg_1349 <= {{temp_9_fu_643_p2[31:2]}};
        or_ln126_9_reg_1339 <= or_ln126_9_fu_702_p2;
        trunc_ln126_7_reg_1344 <= trunc_ln126_7_fu_708_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln124_reg_1200 <= icmp_ln124_fu_376_p2;
        tmp_1_reg_1194 <= {{ap_sig_allocacmp_i_2[5:3]}};
        tmp_reg_1204 <= ap_sig_allocacmp_i_2[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln126_13_reg_1447 <= {{temp_12_fu_1038_p2[31:27]}};
        or_ln126_21_reg_1452 <= or_ln126_21_fu_1081_p2;
        temp_12_reg_1437 <= temp_12_fu_1038_p2;
        trunc_ln126_14_reg_1442 <= trunc_ln126_14_fu_1050_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_267 <= W_q1;
        reg_271 <= W_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_281 <= grp_fu_275_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1200 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_31_out_ap_vld = 1'b1;
    end else begin
        A_31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1200 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_27_out_ap_vld = 1'b1;
    end else begin
        B_27_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1200 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_31_out_ap_vld = 1'b1;
    end else begin
        C_31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1200 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        D_31_out_ap_vld = 1'b1;
    end else begin
        D_31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1200 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_27_out_ap_vld = 1'b1;
    end else begin
        E_27_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_1_address0_local = zext_ln100_fu_528_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_1_address0_local = zext_ln100_3_fu_352_p1;
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
            W_1_address1_local = zext_ln124_fu_515_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_1_address1_local = zext_ln100_2_fu_328_p1;
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
            W_address0_local = zext_ln100_fu_528_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_address0_local = zext_ln100_3_fu_352_p1;
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
            W_address1_local = zext_ln124_fu_515_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_address1_local = zext_ln100_2_fu_328_p1;
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
    if (((icmp_ln124_reg_1200 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 6'd40;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_116;
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
assign A_31_out = (add_ln126_13_reg_1362 + add_ln126_14_fu_763_p2);
assign A_fu_768_p2 = (add_ln126_13_reg_1362 + add_ln126_14_fu_763_p2);
assign B_20_fu_726_p2 = (add_ln126_9_reg_1326 + add_ln126_10_fu_722_p2);
assign B_27_out = B_20_reg_1354;
assign C_10_fu_962_p3 = {{trunc_ln126_15_fu_948_p1}, {lshr_ln126_14_fu_952_p4}};
assign C_11_fu_548_p3 = {{trunc_ln126_1_reg_1231}, {lshr_ln126_1_reg_1236}};
assign C_12_fu_774_p3 = {{trunc_ln126_7_reg_1344}, {lshr_ln126_7_reg_1349}};
assign C_13_fu_894_p3 = {{trunc_ln126_9_fu_882_p1}, {lshr_ln126_9_fu_885_p4}};
assign C_14_fu_987_p3 = {{trunc_ln126_11_fu_975_p1}, {lshr_ln126_10_fu_978_p4}};
assign C_15_fu_1044_p3 = {{trunc_ln126_13_reg_1405}, {lshr_ln126_12_reg_1410}};
assign C_31_out = {{trunc_ln126_7_reg_1344}, {lshr_ln126_7_reg_1349}};
assign D_31_out = D_reg_1331;
assign D_fu_680_p3 = {{trunc_ln126_5_reg_1301}, {lshr_ln126_5_reg_1306}};
assign E_22_fu_499_p3 = {{trunc_ln126_3_fu_485_p1}, {lshr_ln126_3_fu_489_p4}};
assign E_27_out = E_22_reg_1241;
assign W_1_address0 = W_1_address0_local;
assign W_1_address1 = W_1_address1_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln124_fu_390_p2 = (ap_sig_allocacmp_i_2 + 6'd8);
assign add_ln126_10_fu_722_p2 = (add_ln126_8_reg_1321 + or_ln126_7_reg_1296);
assign add_ln126_12_fu_758_p2 = ($signed(W_1_load_4_reg_1256) + $signed(32'd2400959708));
assign add_ln126_13_fu_753_p2 = (or_ln126_10_fu_745_p3 + C_11_reg_1281);
assign add_ln126_14_fu_763_p2 = (add_ln126_12_fu_758_p2 + or_ln126_9_reg_1339);
assign add_ln126_16_fu_831_p2 = (reg_267 + or_ln126_12_reg_1385);
assign add_ln126_17_fu_820_p2 = ($signed(E_22_reg_1241) + $signed(32'd2400959708));
assign add_ln126_18_fu_825_p2 = (or_ln126_13_fu_812_p3 + add_ln126_17_fu_820_p2);
assign add_ln126_1_fu_459_p2 = ($signed(or_ln126_2_fu_451_p3) + $signed(32'd2400959708));
assign add_ln126_21_fu_863_p2 = (or_ln126_16_fu_855_p3 + D_reg_1331);
assign add_ln126_22_fu_923_p2 = (reg_281 + or_ln126_15_fu_917_p2);
assign add_ln126_24_fu_1022_p2 = ($signed(W_load_6_reg_1311) + $signed(32'd2400959708));
assign add_ln126_25_fu_1033_p2 = (or_ln126_19_fu_1016_p3 + C_12_reg_1376);
assign add_ln126_26_fu_1027_p2 = (add_ln126_24_fu_1022_p2 + or_ln126_18_fu_1010_p2);
assign add_ln126_28_fu_1118_p2 = (W_1_load_6_reg_1316 + C_13_reg_1415);
assign add_ln126_29_fu_1103_p2 = ($signed(32'd2400959708) + $signed(or_ln126_21_reg_1452));
assign add_ln126_2_fu_465_p2 = (or_ln126_1_fu_445_p2 + add_ln126_1_fu_459_p2);
assign add_ln126_30_fu_1108_p2 = (or_ln126_22_fu_1097_p3 + add_ln126_29_fu_1103_p2);
assign add_ln126_5_fu_597_p2 = (or_ln126_6_fu_589_p3 + D_8_reg_1209);
assign add_ln126_6_fu_638_p2 = (reg_281 + or_ln126_4_reg_1286);
assign add_ln126_8_fu_670_p2 = ($signed(W_load_4_reg_1251) + $signed(32'd2400959708));
assign add_ln126_9_fu_675_p2 = (or_ln126_s_fu_662_p3 + C_reg_1214);
assign add_ln126_fu_537_p2 = (reg_267 + E_7_fu_96);
assign and_ln126_10_fu_907_p2 = (or_ln126_14_fu_902_p2 & A_reg_1367);
assign and_ln126_11_fu_912_p2 = (C_13_fu_894_p3 & C_12_reg_1376);
assign and_ln126_12_fu_1000_p2 = (temp_10_reg_1395 & or_ln126_17_fu_995_p2);
assign and_ln126_13_fu_1005_p2 = (C_14_fu_987_p3 & C_13_reg_1415);
assign and_ln126_14_fu_1070_p2 = (temp_11_reg_1422 & or_ln126_20_fu_1064_p2);
assign and_ln126_15_fu_1075_p2 = (C_15_fu_1044_p3 & C_14_fu_987_p3);
assign and_ln126_1_fu_439_p2 = (E_fu_100 & E_12_fu_108);
assign and_ln126_2_fu_573_p2 = (or_ln126_3_fu_568_p2 & A_8_reg_1221);
assign and_ln126_3_fu_578_p2 = (C_reg_1214 & C_11_fu_548_p3);
assign and_ln126_4_fu_607_p2 = (temp_fu_543_p2 & or_ln126_5_fu_602_p2);
assign and_ln126_5_fu_613_p2 = (E_22_reg_1241 & C_11_fu_548_p3);
assign and_ln126_6_fu_691_p2 = (temp_9_fu_643_p2 & or_ln126_8_fu_686_p2);
assign and_ln126_7_fu_697_p2 = (E_22_reg_1241 & D_fu_680_p3);
assign and_ln126_8_fu_797_p2 = (or_ln126_11_fu_793_p2 & B_20_reg_1354);
assign and_ln126_9_fu_802_p2 = (D_reg_1331 & C_12_reg_1376);
assign and_ln126_fu_433_p2 = (or_ln126_fu_427_p2 & B_7_fu_104);
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
assign grp_fu_275_p2 = ($signed(reg_271) + $signed(32'd2400959708));
assign icmp_ln124_fu_376_p2 = ((or_ln2_fu_368_p3 == 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln100_2_fu_318_p4 = {{ap_sig_allocacmp_i_2[5:1]}};
assign lshr_ln126_10_fu_978_p4 = {{A_reg_1367[31:2]}};
assign lshr_ln126_14_fu_952_p4 = {{temp_11_fu_929_p2[31:2]}};
assign lshr_ln126_2_fu_558_p4 = {{temp_fu_543_p2[31:27]}};
assign lshr_ln126_3_fu_489_p4 = {{B_fu_112[31:2]}};
assign lshr_ln126_4_fu_652_p4 = {{temp_9_fu_643_p2[31:27]}};
assign lshr_ln126_6_fu_735_p4 = {{B_20_fu_726_p2[31:27]}};
assign lshr_ln126_8_fu_784_p4 = {{A_reg_1367[31:27]}};
assign lshr_ln126_9_fu_885_p4 = {{B_20_reg_1354[31:2]}};
assign lshr_ln126_s_fu_845_p4 = {{temp_10_fu_836_p2[31:27]}};
assign lshr_ln5_fu_417_p4 = {{B_fu_112[31:27]}};
assign or_ln100_1_fu_507_p4 = {{{tmp_1_reg_1194}, {1'd1}}, {tmp_reg_1204}};
assign or_ln100_2_fu_521_p3 = {{tmp_1_reg_1194}, {2'd3}};
assign or_ln126_10_fu_745_p3 = {{trunc_ln126_6_fu_731_p1}, {lshr_ln126_6_fu_735_p4}};
assign or_ln126_11_fu_793_p2 = (D_reg_1331 | C_12_reg_1376);
assign or_ln126_12_fu_806_p2 = (and_ln126_9_fu_802_p2 | and_ln126_8_fu_797_p2);
assign or_ln126_13_fu_812_p3 = {{trunc_ln126_8_fu_781_p1}, {lshr_ln126_8_fu_784_p4}};
assign or_ln126_14_fu_902_p2 = (C_13_fu_894_p3 | C_12_reg_1376);
assign or_ln126_15_fu_917_p2 = (and_ln126_11_fu_912_p2 | and_ln126_10_fu_907_p2);
assign or_ln126_16_fu_855_p3 = {{trunc_ln126_10_fu_841_p1}, {lshr_ln126_s_fu_845_p4}};
assign or_ln126_17_fu_995_p2 = (C_14_fu_987_p3 | C_13_reg_1415);
assign or_ln126_18_fu_1010_p2 = (and_ln126_13_fu_1005_p2 | and_ln126_12_fu_1000_p2);
assign or_ln126_19_fu_1016_p3 = {{trunc_ln126_12_reg_1427}, {lshr_ln126_11_reg_1432}};
assign or_ln126_1_fu_445_p2 = (and_ln126_fu_433_p2 | and_ln126_1_fu_439_p2);
assign or_ln126_20_fu_1064_p2 = (C_15_fu_1044_p3 | C_14_fu_987_p3);
assign or_ln126_21_fu_1081_p2 = (and_ln126_15_fu_1075_p2 | and_ln126_14_fu_1070_p2);
assign or_ln126_22_fu_1097_p3 = {{trunc_ln126_14_reg_1442}, {lshr_ln126_13_reg_1447}};
assign or_ln126_2_fu_451_p3 = {{trunc_ln126_fu_413_p1}, {lshr_ln5_fu_417_p4}};
assign or_ln126_3_fu_568_p2 = (C_reg_1214 | C_11_fu_548_p3);
assign or_ln126_4_fu_583_p2 = (and_ln126_3_fu_578_p2 | and_ln126_2_fu_573_p2);
assign or_ln126_5_fu_602_p2 = (E_22_reg_1241 | C_11_fu_548_p3);
assign or_ln126_6_fu_589_p3 = {{trunc_ln126_2_fu_554_p1}, {lshr_ln126_2_fu_558_p4}};
assign or_ln126_7_fu_618_p2 = (and_ln126_5_fu_613_p2 | and_ln126_4_fu_607_p2);
assign or_ln126_8_fu_686_p2 = (E_22_reg_1241 | D_fu_680_p3);
assign or_ln126_9_fu_702_p2 = (and_ln126_7_fu_697_p2 | and_ln126_6_fu_691_p2);
assign or_ln126_fu_427_p2 = (E_fu_100 | E_12_fu_108);
assign or_ln126_s_fu_662_p3 = {{trunc_ln126_4_fu_648_p1}, {lshr_ln126_4_fu_652_p4}};
assign or_ln1_fu_344_p3 = {{tmp_s_fu_334_p4}, {1'd1}};
assign or_ln2_fu_368_p3 = {{tmp_1_fu_358_p4}, {3'd4}};
assign temp_10_fu_836_p2 = (add_ln126_18_reg_1390 + add_ln126_16_fu_831_p2);
assign temp_11_fu_929_p2 = (add_ln126_21_reg_1400 + add_ln126_22_fu_923_p2);
assign temp_12_fu_1038_p2 = (add_ln126_25_fu_1033_p2 + add_ln126_26_fu_1027_p2);
assign temp_13_fu_1122_p2 = (add_ln126_30_reg_1457 + add_ln126_28_fu_1118_p2);
assign temp_9_fu_643_p2 = (add_ln126_5_reg_1291 + add_ln126_6_fu_638_p2);
assign temp_fu_543_p2 = (add_ln126_2_reg_1226 + add_ln126_fu_537_p2);
assign tmp_1_fu_358_p4 = {{ap_sig_allocacmp_i_2[5:3]}};
assign tmp_s_fu_334_p4 = {{ap_sig_allocacmp_i_2[5:2]}};
assign trunc_ln126_10_fu_841_p1 = temp_10_fu_836_p2[26:0];
assign trunc_ln126_11_fu_975_p1 = A_reg_1367[1:0];
assign trunc_ln126_12_fu_934_p1 = temp_11_fu_929_p2[26:0];
assign trunc_ln126_13_fu_868_p1 = temp_10_fu_836_p2[1:0];
assign trunc_ln126_14_fu_1050_p1 = temp_12_fu_1038_p2[26:0];
assign trunc_ln126_15_fu_948_p1 = temp_11_fu_929_p2[1:0];
assign trunc_ln126_1_fu_471_p1 = B_7_fu_104[1:0];
assign trunc_ln126_2_fu_554_p1 = temp_fu_543_p2[26:0];
assign trunc_ln126_3_fu_485_p1 = B_fu_112[1:0];
assign trunc_ln126_4_fu_648_p1 = temp_9_fu_643_p2[26:0];
assign trunc_ln126_5_fu_624_p1 = temp_fu_543_p2[1:0];
assign trunc_ln126_6_fu_731_p1 = B_20_fu_726_p2[26:0];
assign trunc_ln126_7_fu_708_p1 = temp_9_fu_643_p2[1:0];
assign trunc_ln126_8_fu_781_p1 = A_reg_1367[26:0];
assign trunc_ln126_9_fu_882_p1 = B_20_reg_1354[1:0];
assign trunc_ln126_fu_413_p1 = B_fu_112[26:0];
assign zext_ln100_2_fu_328_p1 = lshr_ln100_2_fu_318_p4;
assign zext_ln100_3_fu_352_p1 = or_ln1_fu_344_p3;
assign zext_ln100_fu_528_p1 = or_ln100_2_fu_521_p3;
assign zext_ln124_fu_515_p1 = or_ln100_1_fu_507_p4;
endmodule 