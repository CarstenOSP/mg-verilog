
module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_35_reload,B_31_reload,C_42_reload,D_35_reload,E_31_reload,W_4_address0,W_4_ce0,W_4_q0,W_5_address0,W_5_ce0,W_5_q0,W_6_address0,W_6_ce0,W_6_q0,W_7_address0,W_7_ce0,W_7_q0,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,W_2_address0,W_2_ce0,W_2_q0,W_3_address0,W_3_ce0,W_3_q0,E_30_out,E_30_out_ap_vld,B_30_out,B_30_out_ap_vld,D_33_out,D_33_out_ap_vld,A_33_out,A_33_out_ap_vld,C_36_out,C_36_out_ap_vld);  
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
input  [31:0] A_35_reload;
input  [31:0] B_31_reload;
input  [31:0] C_42_reload;
input  [31:0] D_35_reload;
input  [31:0] E_31_reload;
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
output  [31:0] E_30_out;
output   E_30_out_ap_vld;
output  [31:0] B_30_out;
output   B_30_out_ap_vld;
output  [31:0] D_33_out;
output   D_33_out_ap_vld;
output  [31:0] A_33_out;
output   A_33_out_ap_vld;
output  [31:0] C_36_out;
output   C_36_out_ap_vld;
reg ap_idle;
reg E_30_out_ap_vld;
reg B_30_out_ap_vld;
reg D_33_out_ap_vld;
reg A_33_out_ap_vld;
reg C_36_out_ap_vld;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln120_reg_1146;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_subdone;
reg   [31:0] A_10_reg_1101;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [5:0] i_reg_1106;
wire   [31:0] add_ln122_2_fu_374_p2;
reg   [31:0] add_ln122_2_reg_1116;
wire   [1:0] trunc_ln122_3_fu_380_p1;
reg   [1:0] trunc_ln122_3_reg_1126;
reg   [29:0] lshr_ln122_3_reg_1131;
wire   [0:0] icmp_ln120_fu_400_p2;
reg   [31:0] D_9_reg_1170;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] C_reg_1175;
wire   [31:0] temp_fu_511_p2;
reg   [31:0] temp_reg_1181;
wire   [31:0] C_9_fu_530_p3;
reg   [31:0] C_9_reg_1186;
wire   [26:0] trunc_ln122_2_fu_538_p1;
reg   [26:0] trunc_ln122_2_reg_1193;
reg   [4:0] lshr_ln122_2_reg_1198;
reg   [31:0] W_5_load_reg_1203;
reg   [31:0] W_6_load_reg_1208;
wire   [1:0] trunc_ln122_5_fu_552_p1;
reg   [1:0] trunc_ln122_5_reg_1213;
reg   [29:0] lshr_ln122_5_reg_1218;
reg   [31:0] W_7_load_reg_1223;
reg   [31:0] W_load_reg_1228;
reg   [31:0] W_1_load_reg_1233;
reg   [31:0] W_2_load_reg_1238;
reg   [31:0] W_3_load_reg_1243;
wire   [31:0] add_ln122_6_fu_578_p2;
reg   [31:0] add_ln122_6_reg_1248;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] E_21_fu_583_p3;
reg   [31:0] E_21_reg_1253;
wire   [31:0] xor_ln122_5_fu_594_p2;
reg   [31:0] xor_ln122_5_reg_1260;
wire   [26:0] trunc_ln122_4_fu_618_p1;
reg   [26:0] trunc_ln122_4_reg_1265;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln122_4_reg_1270;
wire   [31:0] D_fu_632_p3;
reg   [31:0] D_reg_1275;
wire   [31:0] xor_ln122_7_fu_643_p2;
reg   [31:0] xor_ln122_7_reg_1282;
wire   [1:0] trunc_ln122_7_fu_649_p1;
reg   [1:0] trunc_ln122_7_reg_1287;
reg   [29:0] lshr_ln122_7_reg_1292;
wire   [31:0] add_ln122_10_fu_675_p2;
reg   [31:0] add_ln122_10_reg_1297;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] B_20_fu_684_p2;
reg   [31:0] B_20_reg_1302;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln122_6_fu_689_p1;
reg   [26:0] trunc_ln122_6_reg_1310;
reg   [4:0] lshr_ln122_6_reg_1315;
wire   [31:0] add_ln122_14_fu_715_p2;
reg   [31:0] add_ln122_14_reg_1320;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] A_fu_724_p2;
reg   [31:0] A_reg_1325;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] C_10_fu_730_p3;
reg   [31:0] C_10_reg_1332;
wire   [31:0] add_ln122_16_fu_759_p2;
reg   [31:0] add_ln122_16_reg_1339;
wire   [31:0] temp_8_fu_784_p2;
reg   [31:0] temp_8_reg_1344;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [26:0] trunc_ln122_10_fu_789_p1;
reg   [26:0] trunc_ln122_10_reg_1349;
reg   [4:0] lshr_ln122_s_reg_1354;
wire   [1:0] trunc_ln122_13_fu_803_p1;
reg   [1:0] trunc_ln122_13_reg_1359;
reg   [29:0] lshr_ln122_12_reg_1364;
wire   [31:0] add_ln122_22_fu_839_p2;
reg   [31:0] add_ln122_22_reg_1369;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [31:0] C_11_fu_856_p3;
reg   [31:0] C_11_reg_1374;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] temp_9_fu_879_p2;
reg   [31:0] temp_9_reg_1380;
wire   [26:0] trunc_ln122_12_fu_884_p1;
reg   [26:0] trunc_ln122_12_reg_1385;
reg   [4:0] lshr_ln122_11_reg_1390;
wire   [31:0] xor_ln122_13_fu_949_p2;
reg   [31:0] xor_ln122_13_reg_1395;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [31:0] add_ln122_26_fu_967_p2;
reg   [31:0] add_ln122_26_reg_1400;
wire   [31:0] xor_ln122_15_fu_983_p2;
reg   [31:0] xor_ln122_15_reg_1405;
wire   [31:0] add_ln122_28_fu_989_p2;
reg   [31:0] add_ln122_28_reg_1410;
wire   [31:0] add_ln122_29_fu_1034_p2;
reg   [31:0] add_ln122_29_reg_1415;
wire    ap_block_pp0_stage13_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln100_fu_338_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln120_fu_416_p1;
wire   [63:0] zext_ln100_1_fu_437_p1;
wire   [63:0] zext_ln100_2_fu_458_p1;
wire   [63:0] zext_ln100_3_fu_479_p1;
reg   [31:0] E_fu_96;
wire   [31:0] C_12_fu_937_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] B_fu_100;
wire   [31:0] temp_10_fu_1007_p2;
wire    ap_block_pp0_stage2;
reg   [31:0] E_10_fu_104;
wire   [31:0] C_13_fu_972_p3;
reg   [31:0] B_10_fu_108;
wire   [31:0] temp_11_fu_1049_p2;
reg   [31:0] E_11_fu_112;
wire   [31:0] C_8_fu_912_p3;
reg   [5:0] i_2_fu_116;
wire   [5:0] add_ln120_4_fu_817_p2;
wire    ap_block_pp0_stage8_01001;
reg    W_4_ce0_local;
reg    W_5_ce0_local;
reg    W_6_ce0_local;
reg    W_7_ce0_local;
reg    W_ce0_local;
reg    W_1_ce0_local;
reg    W_2_ce0_local;
reg    W_3_ce0_local;
wire    ap_block_pp0_stage0;
wire   [2:0] lshr_ln100_1_fu_328_p4;
wire   [26:0] trunc_ln122_fu_346_p1;
wire   [4:0] lshr_ln4_fu_350_p4;
wire   [31:0] or_ln1_fu_360_p3;
wire   [31:0] add_ln122_1_fu_368_p2;
wire   [5:0] add_ln120_fu_394_p2;
wire   [2:0] lshr_ln100_2_fu_406_p4;
wire   [5:0] add_ln120_1_fu_421_p2;
wire   [2:0] lshr_ln100_3_fu_427_p4;
wire   [5:0] add_ln120_2_fu_442_p2;
wire   [2:0] lshr_ln100_4_fu_448_p4;
wire   [5:0] add_ln120_3_fu_463_p2;
wire   [2:0] lshr_ln100_5_fu_469_p4;
wire   [31:0] xor_ln122_fu_493_p2;
wire   [31:0] xor_ln122_1_fu_499_p2;
wire   [31:0] add_ln122_fu_505_p2;
wire   [1:0] trunc_ln122_1_fu_516_p1;
wire   [29:0] lshr_ln122_1_fu_520_p4;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln122_2_fu_566_p3;
wire   [31:0] add_ln122_5_fu_572_p2;
wire   [31:0] xor_ln122_4_fu_589_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] xor_ln122_2_fu_599_p2;
wire   [31:0] xor_ln122_3_fu_603_p2;
wire   [31:0] add_ln122_4_fu_608_p2;
wire   [31:0] temp_7_fu_613_p2;
wire   [31:0] xor_ln122_6_fu_638_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln122_4_fu_663_p3;
wire   [31:0] add_ln122_9_fu_669_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln122_8_fu_680_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln122_6_fu_703_p3;
wire   [31:0] add_ln122_13_fu_709_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln122_12_fu_720_p2;
wire   [26:0] trunc_ln122_8_fu_737_p1;
wire   [4:0] lshr_ln122_8_fu_741_p4;
wire   [31:0] or_ln122_8_fu_751_p3;
wire    ap_block_pp0_stage9;
wire   [31:0] xor_ln122_8_fu_764_p2;
wire   [31:0] add_ln122_17_fu_773_p2;
wire   [31:0] xor_ln122_9_fu_768_p2;
wire   [31:0] add_ln122_18_fu_778_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln122_s_fu_827_p3;
wire   [31:0] add_ln122_21_fu_833_p2;
wire    ap_block_pp0_stage11;
wire   [1:0] trunc_ln122_9_fu_844_p1;
wire   [29:0] lshr_ln122_9_fu_847_p4;
wire   [31:0] xor_ln122_10_fu_864_p2;
wire   [31:0] xor_ln122_11_fu_868_p2;
wire   [31:0] add_ln122_20_fu_874_p2;
wire   [1:0] trunc_ln122_15_fu_898_p1;
wire   [29:0] lshr_ln122_14_fu_902_p4;
wire    ap_block_pp0_stage12;
wire   [1:0] trunc_ln122_11_fu_925_p1;
wire   [29:0] lshr_ln122_10_fu_928_p4;
wire   [31:0] xor_ln122_12_fu_945_p2;
wire   [31:0] or_ln122_1_fu_955_p3;
wire   [31:0] add_ln122_25_fu_961_p2;
wire   [31:0] xor_ln122_14_fu_978_p2;
wire    ap_block_pp0_stage13;
wire   [31:0] add_ln122_24_fu_1003_p2;
wire   [26:0] trunc_ln122_14_fu_1012_p1;
wire   [4:0] lshr_ln122_13_fu_1016_p4;
wire   [31:0] or_ln122_3_fu_1026_p3;
wire   [31:0] add_ln122_30_fu_1045_p2;
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
#0 E_fu_96 = 32'd0;
#0 B_fu_100 = 32'd0;
#0 E_10_fu_104 = 32'd0;
#0 B_10_fu_108 = 32'd0;
#0 E_11_fu_112 = 32'd0;
#0 i_2_fu_116 = 6'd0;
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
            B_10_fu_108 <= A_35_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_10_fu_108 <= temp_11_fu_1049_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_100 <= B_31_reload;
    end else if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        B_fu_100 <= temp_10_fu_1007_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_10_fu_104 <= D_35_reload;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        E_10_fu_104 <= C_13_fu_972_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_11_fu_112 <= C_42_reload;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        E_11_fu_112 <= C_8_fu_912_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_96 <= E_31_reload;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        E_fu_96 <= C_12_fu_937_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_116 <= 6'd20;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        i_2_fu_116 <= add_ln120_4_fu_817_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_10_reg_1101 <= B_10_fu_108;
        add_ln122_2_reg_1116 <= add_ln122_2_fu_374_p2;
        i_reg_1106 <= i_2_fu_116;
        icmp_ln120_reg_1146 <= icmp_ln120_fu_400_p2;
        lshr_ln122_3_reg_1131 <= {{B_10_fu_108[31:2]}};
        trunc_ln122_3_reg_1126 <= trunc_ln122_3_fu_380_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_reg_1325 <= A_fu_724_p2;
        C_10_reg_1332 <= C_10_fu_730_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        B_20_reg_1302 <= B_20_fu_684_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        C_11_reg_1374 <= C_11_fu_856_p3;
        lshr_ln122_11_reg_1390 <= {{temp_9_fu_879_p2[31:27]}};
        temp_9_reg_1380 <= temp_9_fu_879_p2;
        trunc_ln122_12_reg_1385 <= trunc_ln122_12_fu_884_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_9_reg_1186 <= C_9_fu_530_p3;
        C_reg_1175 <= E_11_fu_112;
        D_9_reg_1170 <= E_10_fu_104;
        W_1_load_reg_1233 <= W_1_q0;
        W_2_load_reg_1238 <= W_2_q0;
        W_3_load_reg_1243 <= W_3_q0;
        W_5_load_reg_1203 <= W_5_q0;
        W_6_load_reg_1208 <= W_6_q0;
        W_7_load_reg_1223 <= W_7_q0;
        W_load_reg_1228 <= W_q0;
        lshr_ln122_2_reg_1198 <= {{temp_fu_511_p2[31:27]}};
        lshr_ln122_5_reg_1218 <= {{temp_fu_511_p2[31:2]}};
        temp_reg_1181 <= temp_fu_511_p2;
        trunc_ln122_2_reg_1193 <= trunc_ln122_2_fu_538_p1;
        trunc_ln122_5_reg_1213 <= trunc_ln122_5_fu_552_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        D_reg_1275 <= D_fu_632_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_21_reg_1253 <= E_21_fu_583_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln122_10_reg_1297 <= add_ln122_10_fu_675_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln122_14_reg_1320 <= add_ln122_14_fu_715_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln122_16_reg_1339 <= add_ln122_16_fu_759_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln122_22_reg_1369 <= add_ln122_22_fu_839_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln122_26_reg_1400 <= add_ln122_26_fu_967_p2;
        add_ln122_28_reg_1410 <= add_ln122_28_fu_989_p2;
        xor_ln122_13_reg_1395 <= xor_ln122_13_fu_949_p2;
        xor_ln122_15_reg_1405 <= xor_ln122_15_fu_983_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln122_29_reg_1415 <= add_ln122_29_fu_1034_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln122_6_reg_1248 <= add_ln122_6_fu_578_p2;
        xor_ln122_5_reg_1260 <= xor_ln122_5_fu_594_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln122_12_reg_1364 <= {{temp_8_fu_784_p2[31:2]}};
        lshr_ln122_s_reg_1354 <= {{temp_8_fu_784_p2[31:27]}};
        temp_8_reg_1344 <= temp_8_fu_784_p2;
        trunc_ln122_10_reg_1349 <= trunc_ln122_10_fu_789_p1;
        trunc_ln122_13_reg_1359 <= trunc_ln122_13_fu_803_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln122_4_reg_1270 <= {{temp_7_fu_613_p2[31:27]}};
        lshr_ln122_7_reg_1292 <= {{temp_7_fu_613_p2[31:2]}};
        trunc_ln122_4_reg_1265 <= trunc_ln122_4_fu_618_p1;
        trunc_ln122_7_reg_1287 <= trunc_ln122_7_fu_649_p1;
        xor_ln122_7_reg_1282 <= xor_ln122_7_fu_643_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln122_6_reg_1315 <= {{B_20_fu_684_p2[31:27]}};
        trunc_ln122_6_reg_1310 <= trunc_ln122_6_fu_689_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1146 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_33_out_ap_vld = 1'b1;
    end else begin
        A_33_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1146 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        B_30_out_ap_vld = 1'b1;
    end else begin
        B_30_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1146 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_36_out_ap_vld = 1'b1;
    end else begin
        C_36_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1146 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        D_33_out_ap_vld = 1'b1;
    end else begin
        D_33_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1146 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_30_out_ap_vld = 1'b1;
    end else begin
        E_30_out_ap_vld = 1'b0;
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
    if (((icmp_ln120_reg_1146 == 1'd0) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
assign A_33_out = A_fu_724_p2;
assign A_fu_724_p2 = (add_ln122_14_reg_1320 + add_ln122_12_fu_720_p2);
assign B_20_fu_684_p2 = (add_ln122_10_reg_1297 + add_ln122_8_fu_680_p2);
assign B_30_out = B_20_reg_1302;
assign C_10_fu_730_p3 = {{trunc_ln122_7_reg_1287}, {lshr_ln122_7_reg_1292}};
assign C_11_fu_856_p3 = {{trunc_ln122_9_fu_844_p1}, {lshr_ln122_9_fu_847_p4}};
assign C_12_fu_937_p3 = {{trunc_ln122_11_fu_925_p1}, {lshr_ln122_10_fu_928_p4}};
assign C_13_fu_972_p3 = {{trunc_ln122_13_reg_1359}, {lshr_ln122_12_reg_1364}};
assign C_36_out = {{trunc_ln122_7_reg_1287}, {lshr_ln122_7_reg_1292}};
assign C_8_fu_912_p3 = {{trunc_ln122_15_fu_898_p1}, {lshr_ln122_14_fu_902_p4}};
assign C_9_fu_530_p3 = {{trunc_ln122_1_fu_516_p1}, {lshr_ln122_1_fu_520_p4}};
assign D_33_out = D_reg_1275;
assign D_fu_632_p3 = {{trunc_ln122_5_reg_1213}, {lshr_ln122_5_reg_1218}};
assign E_21_fu_583_p3 = {{trunc_ln122_3_reg_1126}, {lshr_ln122_3_reg_1131}};
assign E_30_out = E_21_reg_1253;
assign W_1_address0 = zext_ln100_1_fu_437_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_2_fu_458_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_3_fu_479_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_338_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_338_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_338_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_338_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_address0 = zext_ln120_fu_416_p1;
assign W_ce0 = W_ce0_local;
assign add_ln120_1_fu_421_p2 = (i_2_fu_116 + 6'd5);
assign add_ln120_2_fu_442_p2 = (i_2_fu_116 + 6'd6);
assign add_ln120_3_fu_463_p2 = (i_2_fu_116 + 6'd7);
assign add_ln120_4_fu_817_p2 = (i_reg_1106 + 6'd8);
assign add_ln120_fu_394_p2 = (i_2_fu_116 + 6'd4);
assign add_ln122_10_fu_675_p2 = (add_ln122_9_fu_669_p2 + C_reg_1175);
assign add_ln122_12_fu_720_p2 = (W_7_load_reg_1223 + xor_ln122_7_reg_1282);
assign add_ln122_13_fu_709_p2 = (or_ln122_6_fu_703_p3 + 32'd1859775393);
assign add_ln122_14_fu_715_p2 = (add_ln122_13_fu_709_p2 + C_9_reg_1186);
assign add_ln122_16_fu_759_p2 = (or_ln122_8_fu_751_p3 + W_load_reg_1228);
assign add_ln122_17_fu_773_p2 = (E_21_reg_1253 + 32'd1859775393);
assign add_ln122_18_fu_778_p2 = (add_ln122_17_fu_773_p2 + xor_ln122_9_fu_768_p2);
assign add_ln122_1_fu_368_p2 = (or_ln1_fu_360_p3 + 32'd1859775393);
assign add_ln122_20_fu_874_p2 = (W_1_load_reg_1233 + xor_ln122_11_fu_868_p2);
assign add_ln122_21_fu_833_p2 = (or_ln122_s_fu_827_p3 + 32'd1859775393);
assign add_ln122_22_fu_839_p2 = (add_ln122_21_fu_833_p2 + D_reg_1275);
assign add_ln122_24_fu_1003_p2 = (W_2_load_reg_1238 + xor_ln122_13_reg_1395);
assign add_ln122_25_fu_961_p2 = (or_ln122_1_fu_955_p3 + 32'd1859775393);
assign add_ln122_26_fu_967_p2 = (add_ln122_25_fu_961_p2 + C_10_reg_1332);
assign add_ln122_28_fu_989_p2 = (W_3_load_reg_1243 + C_11_reg_1374);
assign add_ln122_29_fu_1034_p2 = (or_ln122_3_fu_1026_p3 + 32'd1859775393);
assign add_ln122_2_fu_374_p2 = (add_ln122_1_fu_368_p2 + E_fu_96);
assign add_ln122_30_fu_1045_p2 = (add_ln122_28_reg_1410 + xor_ln122_15_reg_1405);
assign add_ln122_4_fu_608_p2 = (W_5_load_reg_1203 + xor_ln122_3_fu_603_p2);
assign add_ln122_5_fu_572_p2 = (or_ln122_2_fu_566_p3 + 32'd1859775393);
assign add_ln122_6_fu_578_p2 = (add_ln122_5_fu_572_p2 + D_9_reg_1170);
assign add_ln122_8_fu_680_p2 = (W_6_load_reg_1208 + xor_ln122_5_reg_1260);
assign add_ln122_9_fu_669_p2 = (or_ln122_4_fu_663_p3 + 32'd1859775393);
assign add_ln122_fu_505_p2 = (W_4_q0 + xor_ln122_1_fu_499_p2);
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
assign icmp_ln120_fu_400_p2 = ((add_ln120_fu_394_p2 < 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln100_1_fu_328_p4 = {{i_2_fu_116[5:3]}};
assign lshr_ln100_2_fu_406_p4 = {{add_ln120_fu_394_p2[5:3]}};
assign lshr_ln100_3_fu_427_p4 = {{add_ln120_1_fu_421_p2[5:3]}};
assign lshr_ln100_4_fu_448_p4 = {{add_ln120_2_fu_442_p2[5:3]}};
assign lshr_ln100_5_fu_469_p4 = {{add_ln120_3_fu_463_p2[5:3]}};
assign lshr_ln122_10_fu_928_p4 = {{A_reg_1325[31:2]}};
assign lshr_ln122_13_fu_1016_p4 = {{temp_10_fu_1007_p2[31:27]}};
assign lshr_ln122_14_fu_902_p4 = {{temp_9_fu_879_p2[31:2]}};
assign lshr_ln122_1_fu_520_p4 = {{B_fu_100[31:2]}};
assign lshr_ln122_8_fu_741_p4 = {{A_fu_724_p2[31:27]}};
assign lshr_ln122_9_fu_847_p4 = {{B_20_reg_1302[31:2]}};
assign lshr_ln4_fu_350_p4 = {{B_10_fu_108[31:27]}};
assign or_ln122_1_fu_955_p3 = {{trunc_ln122_12_reg_1385}, {lshr_ln122_11_reg_1390}};
assign or_ln122_2_fu_566_p3 = {{trunc_ln122_2_reg_1193}, {lshr_ln122_2_reg_1198}};
assign or_ln122_3_fu_1026_p3 = {{trunc_ln122_14_fu_1012_p1}, {lshr_ln122_13_fu_1016_p4}};
assign or_ln122_4_fu_663_p3 = {{trunc_ln122_4_reg_1265}, {lshr_ln122_4_reg_1270}};
assign or_ln122_6_fu_703_p3 = {{trunc_ln122_6_reg_1310}, {lshr_ln122_6_reg_1315}};
assign or_ln122_8_fu_751_p3 = {{trunc_ln122_8_fu_737_p1}, {lshr_ln122_8_fu_741_p4}};
assign or_ln122_s_fu_827_p3 = {{trunc_ln122_10_reg_1349}, {lshr_ln122_s_reg_1354}};
assign or_ln1_fu_360_p3 = {{trunc_ln122_fu_346_p1}, {lshr_ln4_fu_350_p4}};
assign temp_10_fu_1007_p2 = (add_ln122_26_reg_1400 + add_ln122_24_fu_1003_p2);
assign temp_11_fu_1049_p2 = (add_ln122_29_reg_1415 + add_ln122_30_fu_1045_p2);
assign temp_7_fu_613_p2 = (add_ln122_6_reg_1248 + add_ln122_4_fu_608_p2);
assign temp_8_fu_784_p2 = (add_ln122_16_reg_1339 + add_ln122_18_fu_778_p2);
assign temp_9_fu_879_p2 = (add_ln122_22_reg_1369 + add_ln122_20_fu_874_p2);
assign temp_fu_511_p2 = (add_ln122_2_reg_1116 + add_ln122_fu_505_p2);
assign trunc_ln122_10_fu_789_p1 = temp_8_fu_784_p2[26:0];
assign trunc_ln122_11_fu_925_p1 = A_reg_1325[1:0];
assign trunc_ln122_12_fu_884_p1 = temp_9_fu_879_p2[26:0];
assign trunc_ln122_13_fu_803_p1 = temp_8_fu_784_p2[1:0];
assign trunc_ln122_14_fu_1012_p1 = temp_10_fu_1007_p2[26:0];
assign trunc_ln122_15_fu_898_p1 = temp_9_fu_879_p2[1:0];
assign trunc_ln122_1_fu_516_p1 = B_fu_100[1:0];
assign trunc_ln122_2_fu_538_p1 = temp_fu_511_p2[26:0];
assign trunc_ln122_3_fu_380_p1 = B_10_fu_108[1:0];
assign trunc_ln122_4_fu_618_p1 = temp_7_fu_613_p2[26:0];
assign trunc_ln122_5_fu_552_p1 = temp_fu_511_p2[1:0];
assign trunc_ln122_6_fu_689_p1 = B_20_fu_684_p2[26:0];
assign trunc_ln122_7_fu_649_p1 = temp_7_fu_613_p2[1:0];
assign trunc_ln122_8_fu_737_p1 = A_fu_724_p2[26:0];
assign trunc_ln122_9_fu_844_p1 = B_20_reg_1302[1:0];
assign trunc_ln122_fu_346_p1 = B_10_fu_108[26:0];
assign xor_ln122_10_fu_864_p2 = (C_10_reg_1332 ^ A_reg_1325);
assign xor_ln122_11_fu_868_p2 = (xor_ln122_10_fu_864_p2 ^ C_11_fu_856_p3);
assign xor_ln122_12_fu_945_p2 = (temp_8_reg_1344 ^ C_11_reg_1374);
assign xor_ln122_13_fu_949_p2 = (xor_ln122_12_fu_945_p2 ^ C_12_fu_937_p3);
assign xor_ln122_14_fu_978_p2 = (temp_9_reg_1380 ^ C_12_fu_937_p3);
assign xor_ln122_15_fu_983_p2 = (xor_ln122_14_fu_978_p2 ^ C_13_fu_972_p3);
assign xor_ln122_1_fu_499_p2 = (xor_ln122_fu_493_p2 ^ E_11_fu_112);
assign xor_ln122_2_fu_599_p2 = (C_9_reg_1186 ^ A_10_reg_1101);
assign xor_ln122_3_fu_603_p2 = (xor_ln122_2_fu_599_p2 ^ C_reg_1175);
assign xor_ln122_4_fu_589_p2 = (temp_reg_1181 ^ E_21_fu_583_p3);
assign xor_ln122_5_fu_594_p2 = (xor_ln122_4_fu_589_p2 ^ C_9_reg_1186);
assign xor_ln122_6_fu_638_p2 = (temp_7_fu_613_p2 ^ E_21_reg_1253);
assign xor_ln122_7_fu_643_p2 = (xor_ln122_6_fu_638_p2 ^ D_fu_632_p3);
assign xor_ln122_8_fu_764_p2 = (D_reg_1275 ^ B_20_reg_1302);
assign xor_ln122_9_fu_768_p2 = (xor_ln122_8_fu_764_p2 ^ C_10_reg_1332);
assign xor_ln122_fu_493_p2 = (E_10_fu_104 ^ B_fu_100);
assign zext_ln100_1_fu_437_p1 = lshr_ln100_3_fu_427_p4;
assign zext_ln100_2_fu_458_p1 = lshr_ln100_4_fu_448_p4;
assign zext_ln100_3_fu_479_p1 = lshr_ln100_5_fu_469_p4;
assign zext_ln100_fu_338_p1 = lshr_ln100_1_fu_328_p4;
assign zext_ln120_fu_416_p1 = lshr_ln100_2_fu_406_p4;
endmodule 
