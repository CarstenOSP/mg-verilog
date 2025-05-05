module bicg_bicg_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v0_4_address0,v0_4_ce0,v0_4_q0,v0_5_address0,v0_5_ce0,v0_5_q0,v0_6_address0,v0_6_ce0,v0_6_q0,v0_7_address0,v0_7_ce0,v0_7_q0,v0_8_address0,v0_8_ce0,v0_8_q0,v0_9_address0,v0_9_ce0,v0_9_q0,v0_10_address0,v0_10_ce0,v0_10_q0,v0_11_address0,v0_11_ce0,v0_11_q0,v0_12_address0,v0_12_ce0,v0_12_q0,v0_13_address0,v0_13_ce0,v0_13_q0,v0_14_address0,v0_14_ce0,v0_14_q0,v0_15_address0,v0_15_ce0,v0_15_q0,v1_address0,v1_ce0,v1_q0,v1_address1,v1_ce1,v1_q1,v141_address0,v141_ce0,v141_we0,v141_d0,v141_address1,v141_ce1,v141_we1,v141_d1,v142_address0,v142_ce0,v142_we0,v142_d0,v142_address1,v142_ce1,v142_we1,v142_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [1:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [1:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [1:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [1:0] v0_4_address0;
output   v0_4_ce0;
input  [31:0] v0_4_q0;
output  [1:0] v0_5_address0;
output   v0_5_ce0;
input  [31:0] v0_5_q0;
output  [1:0] v0_6_address0;
output   v0_6_ce0;
input  [31:0] v0_6_q0;
output  [1:0] v0_7_address0;
output   v0_7_ce0;
input  [31:0] v0_7_q0;
output  [1:0] v0_8_address0;
output   v0_8_ce0;
input  [31:0] v0_8_q0;
output  [1:0] v0_9_address0;
output   v0_9_ce0;
input  [31:0] v0_9_q0;
output  [1:0] v0_10_address0;
output   v0_10_ce0;
input  [31:0] v0_10_q0;
output  [1:0] v0_11_address0;
output   v0_11_ce0;
input  [31:0] v0_11_q0;
output  [1:0] v0_12_address0;
output   v0_12_ce0;
input  [31:0] v0_12_q0;
output  [1:0] v0_13_address0;
output   v0_13_ce0;
input  [31:0] v0_13_q0;
output  [1:0] v0_14_address0;
output   v0_14_ce0;
input  [31:0] v0_14_q0;
output  [1:0] v0_15_address0;
output   v0_15_ce0;
input  [31:0] v0_15_q0;
output  [5:0] v1_address0;
output   v1_ce0;
input  [31:0] v1_q0;
output  [5:0] v1_address1;
output   v1_ce1;
input  [31:0] v1_q1;
output  [5:0] v141_address0;
output   v141_ce0;
output   v141_we0;
output  [31:0] v141_d0;
output  [5:0] v141_address1;
output   v141_ce1;
output   v141_we1;
output  [31:0] v141_d1;
output  [5:0] v142_address0;
output   v142_ce0;
output   v142_we0;
output  [31:0] v142_d0;
output  [5:0] v142_address1;
output   v142_ce1;
output   v142_we1;
output  [31:0] v142_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_130_fu_753_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [6:0] v4_1_reg_1212;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_130_reg_1221;
wire   [63:0] zext_ln27_fu_761_p1;
reg   [63:0] zext_ln27_reg_1225;
wire   [1:0] lshr_ln_fu_766_p4;
reg   [1:0] lshr_ln_reg_1231;
wire   [63:0] zext_ln28_fu_814_p1;
reg   [63:0] zext_ln28_reg_1253;
wire   [63:0] zext_ln28_1_fu_867_p1;
reg   [63:0] zext_ln28_1_reg_1339;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] v5_2_reg_1345;
wire   [63:0] zext_ln28_2_fu_880_p1;
reg   [63:0] zext_ln28_2_reg_1355;
reg   [31:0] v5_3_reg_1361;
reg   [31:0] v5_4_reg_1371;
reg   [31:0] v5_5_reg_1376;
reg   [31:0] v5_6_reg_1381;
reg   [31:0] v5_7_reg_1386;
reg   [31:0] v5_8_reg_1391;
reg   [31:0] v5_9_reg_1396;
reg   [31:0] v5_10_reg_1401;
reg   [31:0] v5_11_reg_1406;
reg   [31:0] v5_12_reg_1411;
reg   [31:0] v5_13_reg_1416;
reg   [31:0] v5_14_reg_1421;
reg   [31:0] v5_15_reg_1426;
wire   [2:0] tmp_1_fu_903_p4;
reg   [2:0] tmp_1_reg_1431;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] zext_ln28_3_fu_920_p1;
reg   [63:0] zext_ln28_3_reg_1437;
wire   [0:0] tmp_131_fu_925_p3;
reg   [0:0] tmp_131_reg_1448;
wire   [63:0] zext_ln28_4_fu_944_p1;
reg   [63:0] zext_ln28_4_reg_1453;
reg   [1:0] tmp_2_reg_1464;
reg   [0:0] tmp_132_reg_1469;
wire   [63:0] zext_ln28_5_fu_990_p1;
reg   [63:0] zext_ln28_5_reg_1475;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] zext_ln28_6_fu_1002_p1;
reg   [63:0] zext_ln28_6_reg_1486;
wire   [63:0] zext_ln28_7_fu_1032_p1;
reg   [63:0] zext_ln28_7_reg_1497;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] zext_ln28_8_fu_1047_p1;
reg   [63:0] zext_ln28_8_reg_1508;
wire   [63:0] zext_ln28_9_fu_1080_p1;
reg   [63:0] zext_ln28_9_reg_1519;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] zext_ln28_10_fu_1095_p1;
reg   [63:0] zext_ln28_10_reg_1530;
wire   [63:0] zext_ln28_11_fu_1125_p1;
reg   [63:0] zext_ln28_11_reg_1541;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] zext_ln28_12_fu_1140_p1;
reg   [63:0] zext_ln28_12_reg_1552;
wire   [63:0] zext_ln28_13_fu_1170_p1;
reg   [63:0] zext_ln28_13_reg_1563;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] zext_ln28_14_fu_1182_p1;
reg   [63:0] zext_ln28_14_reg_1574;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln27_1_fu_776_p1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
reg   [6:0] v4_fu_122;
wire   [6:0] add_ln27_fu_819_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v4_1;
reg    v0_0_ce0_local;
reg    v1_ce1_local;
reg   [5:0] v1_address1_local;
reg    v1_ce0_local;
reg   [5:0] v1_address0_local;
reg    v0_1_ce0_local;
reg    v0_2_ce0_local;
reg    v0_3_ce0_local;
reg    v0_4_ce0_local;
reg    v0_5_ce0_local;
reg    v0_6_ce0_local;
reg    v0_7_ce0_local;
reg    v0_8_ce0_local;
reg    v0_9_ce0_local;
reg    v0_10_ce0_local;
reg    v0_11_ce0_local;
reg    v0_12_ce0_local;
reg    v0_13_ce0_local;
reg    v0_14_ce0_local;
reg    v0_15_ce0_local;
reg    v141_we1_local;
reg   [31:0] v141_d1_local;
wire   [31:0] bitcast_ln29_fu_830_p1;
reg    v141_ce1_local;
reg   [5:0] v141_address1_local;
reg    v141_we0_local;
reg   [31:0] v141_d0_local;
wire   [31:0] bitcast_ln29_1_fu_840_p1;
reg    v141_ce0_local;
reg   [5:0] v141_address0_local;
wire   [31:0] bitcast_ln29_2_fu_885_p1;
wire   [31:0] bitcast_ln29_3_fu_894_p1;
wire   [31:0] bitcast_ln29_4_fu_965_p1;
wire   [31:0] bitcast_ln29_5_fu_974_p1;
wire   [31:0] bitcast_ln29_6_fu_1007_p1;
wire   [31:0] bitcast_ln29_7_fu_1016_p1;
wire   [31:0] bitcast_ln29_8_fu_1052_p1;
wire   [31:0] bitcast_ln29_9_fu_1061_p1;
wire   [31:0] bitcast_ln29_10_fu_1100_p1;
wire   [31:0] bitcast_ln29_11_fu_1109_p1;
wire   [31:0] bitcast_ln29_12_fu_1145_p1;
wire   [31:0] bitcast_ln29_13_fu_1154_p1;
wire   [31:0] bitcast_ln29_14_fu_1187_p1;
wire   [31:0] bitcast_ln29_15_fu_1196_p1;
reg    v142_we1_local;
reg   [31:0] v142_d1_local;
wire   [31:0] bitcast_ln31_fu_835_p1;
reg    v142_ce1_local;
reg   [5:0] v142_address1_local;
reg    v142_we0_local;
reg   [31:0] v142_d0_local;
wire   [31:0] bitcast_ln31_1_fu_845_p1;
reg    v142_ce0_local;
reg   [5:0] v142_address0_local;
wire   [31:0] bitcast_ln31_2_fu_889_p1;
wire   [31:0] bitcast_ln31_3_fu_898_p1;
wire   [31:0] bitcast_ln31_4_fu_969_p1;
wire   [31:0] bitcast_ln31_5_fu_978_p1;
wire   [31:0] bitcast_ln31_6_fu_1011_p1;
wire   [31:0] bitcast_ln31_7_fu_1020_p1;
wire   [31:0] bitcast_ln31_8_fu_1056_p1;
wire   [31:0] bitcast_ln31_9_fu_1065_p1;
wire   [31:0] bitcast_ln31_10_fu_1104_p1;
wire   [31:0] bitcast_ln31_11_fu_1113_p1;
wire   [31:0] bitcast_ln31_12_fu_1149_p1;
wire   [31:0] bitcast_ln31_13_fu_1158_p1;
wire   [31:0] bitcast_ln31_14_fu_1191_p1;
wire   [31:0] bitcast_ln31_15_fu_1200_p1;
wire   [4:0] tmp_fu_796_p4;
wire   [5:0] or_ln_fu_806_p3;
wire   [3:0] tmp_s_fu_850_p4;
wire   [5:0] or_ln27_1_fu_859_p3;
wire   [5:0] or_ln27_2_fu_872_p3;
wire   [5:0] or_ln27_3_fu_912_p3;
wire   [5:0] or_ln27_4_fu_932_p5;
wire   [5:0] or_ln27_5_fu_983_p3;
wire   [5:0] or_ln27_6_fu_995_p3;
wire   [5:0] or_ln27_7_fu_1025_p3;
wire   [5:0] or_ln27_8_fu_1037_p5;
wire   [5:0] or_ln27_9_fu_1070_p5;
wire   [5:0] or_ln27_s_fu_1085_p5;
wire   [5:0] or_ln27_10_fu_1118_p3;
wire   [5:0] or_ln27_11_fu_1130_p5;
wire   [5:0] or_ln27_12_fu_1163_p3;
wire   [5:0] or_ln27_13_fu_1175_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v4_fu_122 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_130_fu_753_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v4_fu_122 <= add_ln27_fu_819_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v4_fu_122 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_1231 <= {{ap_sig_allocacmp_v4_1[5:4]}};
        tmp_130_reg_1221 <= ap_sig_allocacmp_v4_1[32'd6];
        v4_1_reg_1212 <= ap_sig_allocacmp_v4_1;
        zext_ln27_reg_1225[6 : 0] <= zext_ln27_fu_761_p1[6 : 0];
        zext_ln28_reg_1253[5 : 1] <= zext_ln28_fu_814_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_131_reg_1448 <= v4_1_reg_1212[32'd1];
        tmp_132_reg_1469 <= v4_1_reg_1212[32'd2];
        tmp_1_reg_1431 <= {{v4_1_reg_1212[5:3]}};
        tmp_2_reg_1464 <= {{v4_1_reg_1212[2:1]}};
        zext_ln28_3_reg_1437[5 : 3] <= zext_ln28_3_fu_920_p1[5 : 3];
        zext_ln28_4_reg_1453[1] <= zext_ln28_4_fu_944_p1[1];
zext_ln28_4_reg_1453[5 : 3] <= zext_ln28_4_fu_944_p1[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v5_10_reg_1401 <= v0_10_q0;
        v5_11_reg_1406 <= v0_11_q0;
        v5_12_reg_1411 <= v0_12_q0;
        v5_13_reg_1416 <= v0_13_q0;
        v5_14_reg_1421 <= v0_14_q0;
        v5_15_reg_1426 <= v0_15_q0;
        v5_2_reg_1345 <= v0_2_q0;
        v5_3_reg_1361 <= v0_3_q0;
        v5_4_reg_1371 <= v0_4_q0;
        v5_5_reg_1376 <= v0_5_q0;
        v5_6_reg_1381 <= v0_6_q0;
        v5_7_reg_1386 <= v0_7_q0;
        v5_8_reg_1391 <= v0_8_q0;
        v5_9_reg_1396 <= v0_9_q0;
        zext_ln28_1_reg_1339[5 : 2] <= zext_ln28_1_fu_867_p1[5 : 2];
        zext_ln28_2_reg_1355[5 : 2] <= zext_ln28_2_fu_880_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        zext_ln28_10_reg_1530[2] <= zext_ln28_10_fu_1095_p1[2];
zext_ln28_10_reg_1530[5 : 4] <= zext_ln28_10_fu_1095_p1[5 : 4];
        zext_ln28_9_reg_1519[2] <= zext_ln28_9_fu_1080_p1[2];
zext_ln28_9_reg_1519[5 : 4] <= zext_ln28_9_fu_1080_p1[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        zext_ln28_11_reg_1541[5 : 4] <= zext_ln28_11_fu_1125_p1[5 : 4];
        zext_ln28_12_reg_1552[1] <= zext_ln28_12_fu_1140_p1[1];
zext_ln28_12_reg_1552[5 : 4] <= zext_ln28_12_fu_1140_p1[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        zext_ln28_13_reg_1563[5 : 4] <= zext_ln28_13_fu_1170_p1[5 : 4];
        zext_ln28_14_reg_1574[5 : 4] <= zext_ln28_14_fu_1182_p1[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln28_5_reg_1475[5 : 3] <= zext_ln28_5_fu_990_p1[5 : 3];
        zext_ln28_6_reg_1486[5 : 3] <= zext_ln28_6_fu_1002_p1[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        zext_ln28_7_reg_1497[5 : 4] <= zext_ln28_7_fu_1032_p1[5 : 4];
        zext_ln28_8_reg_1508[2 : 1] <= zext_ln28_8_fu_1047_p1[2 : 1];
zext_ln28_8_reg_1508[5 : 4] <= zext_ln28_8_fu_1047_p1[5 : 4];
    end
end
always @ (*) begin
    if (((tmp_130_fu_753_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_1 = v4_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_10_ce0_local = 1'b1;
    end else begin
        v0_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_11_ce0_local = 1'b1;
    end else begin
        v0_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_12_ce0_local = 1'b1;
    end else begin
        v0_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_13_ce0_local = 1'b1;
    end else begin
        v0_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_14_ce0_local = 1'b1;
    end else begin
        v0_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_15_ce0_local = 1'b1;
    end else begin
        v0_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_8_ce0_local = 1'b1;
    end else begin
        v0_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_9_ce0_local = 1'b1;
    end else begin
        v0_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_address0_local = zext_ln28_14_reg_1574;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v141_address0_local = zext_ln28_12_reg_1552;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v141_address0_local = zext_ln28_10_reg_1530;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v141_address0_local = zext_ln28_8_reg_1508;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v141_address0_local = zext_ln28_6_reg_1486;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_address0_local = zext_ln28_4_reg_1453;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_address0_local = zext_ln28_2_reg_1355;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_address0_local = zext_ln28_reg_1253;
    end else begin
        v141_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_address1_local = zext_ln28_13_reg_1563;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v141_address1_local = zext_ln28_11_reg_1541;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v141_address1_local = zext_ln28_9_reg_1519;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v141_address1_local = zext_ln28_7_reg_1497;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v141_address1_local = zext_ln28_5_reg_1475;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_address1_local = zext_ln28_3_reg_1437;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_address1_local = zext_ln28_1_reg_1339;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_address1_local = zext_ln27_reg_1225;
    end else begin
        v141_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v141_ce0_local = 1'b1;
    end else begin
        v141_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v141_ce1_local = 1'b1;
    end else begin
        v141_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_d0_local = bitcast_ln29_15_fu_1196_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v141_d0_local = bitcast_ln29_13_fu_1154_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v141_d0_local = bitcast_ln29_11_fu_1109_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v141_d0_local = bitcast_ln29_9_fu_1061_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v141_d0_local = bitcast_ln29_7_fu_1016_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_d0_local = bitcast_ln29_5_fu_974_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_d0_local = bitcast_ln29_3_fu_894_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_d0_local = bitcast_ln29_1_fu_840_p1;
    end else begin
        v141_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_d1_local = bitcast_ln29_14_fu_1187_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v141_d1_local = bitcast_ln29_12_fu_1145_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v141_d1_local = bitcast_ln29_10_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v141_d1_local = bitcast_ln29_8_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v141_d1_local = bitcast_ln29_6_fu_1007_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_d1_local = bitcast_ln29_4_fu_965_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_d1_local = bitcast_ln29_2_fu_885_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_d1_local = bitcast_ln29_fu_830_p1;
    end else begin
        v141_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v141_we0_local = 1'b1;
    end else begin
        v141_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v141_we1_local = 1'b1;
    end else begin
        v141_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_address0_local = zext_ln28_14_reg_1574;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v142_address0_local = zext_ln28_12_reg_1552;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v142_address0_local = zext_ln28_10_reg_1530;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v142_address0_local = zext_ln28_8_reg_1508;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v142_address0_local = zext_ln28_6_reg_1486;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_address0_local = zext_ln28_4_reg_1453;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_address0_local = zext_ln28_2_reg_1355;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_address0_local = zext_ln28_reg_1253;
    end else begin
        v142_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_address1_local = zext_ln28_13_reg_1563;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v142_address1_local = zext_ln28_11_reg_1541;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v142_address1_local = zext_ln28_9_reg_1519;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v142_address1_local = zext_ln28_7_reg_1497;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v142_address1_local = zext_ln28_5_reg_1475;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_address1_local = zext_ln28_3_reg_1437;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_address1_local = zext_ln28_1_reg_1339;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_address1_local = zext_ln27_reg_1225;
    end else begin
        v142_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v142_ce0_local = 1'b1;
    end else begin
        v142_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v142_ce1_local = 1'b1;
    end else begin
        v142_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_d0_local = bitcast_ln31_15_fu_1200_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v142_d0_local = bitcast_ln31_13_fu_1158_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v142_d0_local = bitcast_ln31_11_fu_1113_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v142_d0_local = bitcast_ln31_9_fu_1065_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v142_d0_local = bitcast_ln31_7_fu_1020_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_d0_local = bitcast_ln31_5_fu_978_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_d0_local = bitcast_ln31_3_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_d0_local = bitcast_ln31_1_fu_845_p1;
    end else begin
        v142_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_d1_local = bitcast_ln31_14_fu_1191_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v142_d1_local = bitcast_ln31_12_fu_1149_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v142_d1_local = bitcast_ln31_10_fu_1104_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v142_d1_local = bitcast_ln31_8_fu_1056_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v142_d1_local = bitcast_ln31_6_fu_1011_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_d1_local = bitcast_ln31_4_fu_969_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_d1_local = bitcast_ln31_2_fu_889_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_d1_local = bitcast_ln31_fu_835_p1;
    end else begin
        v142_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v142_we0_local = 1'b1;
    end else begin
        v142_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_130_reg_1221 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v142_we1_local = 1'b1;
    end else begin
        v142_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v1_address0_local = zext_ln28_14_fu_1182_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v1_address0_local = zext_ln28_12_fu_1140_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v1_address0_local = zext_ln28_10_fu_1095_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v1_address0_local = zext_ln28_8_fu_1047_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v1_address0_local = zext_ln28_6_fu_1002_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v1_address0_local = zext_ln28_4_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v1_address0_local = zext_ln28_2_fu_880_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v1_address0_local = zext_ln28_fu_814_p1;
        end else begin
            v1_address0_local = 'bx;
        end
    end else begin
        v1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v1_address1_local = zext_ln28_13_fu_1170_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v1_address1_local = zext_ln28_11_fu_1125_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v1_address1_local = zext_ln28_9_fu_1080_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v1_address1_local = zext_ln28_7_fu_1032_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v1_address1_local = zext_ln28_5_fu_990_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v1_address1_local = zext_ln28_3_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v1_address1_local = zext_ln28_1_fu_867_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v1_address1_local = zext_ln27_fu_761_p1;
        end else begin
            v1_address1_local = 'bx;
        end
    end else begin
        v1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v1_ce0_local = 1'b1;
    end else begin
        v1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v1_ce1_local = 1'b1;
    end else begin
        v1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_fu_819_p2 = (ap_sig_allocacmp_v4_1 + 7'd16);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln29_10_fu_1100_p1 = v5_10_reg_1401;
assign bitcast_ln29_11_fu_1109_p1 = v5_11_reg_1406;
assign bitcast_ln29_12_fu_1145_p1 = v5_12_reg_1411;
assign bitcast_ln29_13_fu_1154_p1 = v5_13_reg_1416;
assign bitcast_ln29_14_fu_1187_p1 = v5_14_reg_1421;
assign bitcast_ln29_15_fu_1196_p1 = v5_15_reg_1426;
assign bitcast_ln29_1_fu_840_p1 = v0_1_q0;
assign bitcast_ln29_2_fu_885_p1 = v5_2_reg_1345;
assign bitcast_ln29_3_fu_894_p1 = v5_3_reg_1361;
assign bitcast_ln29_4_fu_965_p1 = v5_4_reg_1371;
assign bitcast_ln29_5_fu_974_p1 = v5_5_reg_1376;
assign bitcast_ln29_6_fu_1007_p1 = v5_6_reg_1381;
assign bitcast_ln29_7_fu_1016_p1 = v5_7_reg_1386;
assign bitcast_ln29_8_fu_1052_p1 = v5_8_reg_1391;
assign bitcast_ln29_9_fu_1061_p1 = v5_9_reg_1396;
assign bitcast_ln29_fu_830_p1 = v0_0_q0;
assign bitcast_ln31_10_fu_1104_p1 = v1_q1;
assign bitcast_ln31_11_fu_1113_p1 = v1_q0;
assign bitcast_ln31_12_fu_1149_p1 = v1_q1;
assign bitcast_ln31_13_fu_1158_p1 = v1_q0;
assign bitcast_ln31_14_fu_1191_p1 = v1_q1;
assign bitcast_ln31_15_fu_1200_p1 = v1_q0;
assign bitcast_ln31_1_fu_845_p1 = v1_q0;
assign bitcast_ln31_2_fu_889_p1 = v1_q1;
assign bitcast_ln31_3_fu_898_p1 = v1_q0;
assign bitcast_ln31_4_fu_969_p1 = v1_q1;
assign bitcast_ln31_5_fu_978_p1 = v1_q0;
assign bitcast_ln31_6_fu_1011_p1 = v1_q1;
assign bitcast_ln31_7_fu_1020_p1 = v1_q0;
assign bitcast_ln31_8_fu_1056_p1 = v1_q1;
assign bitcast_ln31_9_fu_1065_p1 = v1_q0;
assign bitcast_ln31_fu_835_p1 = v1_q1;
assign lshr_ln_fu_766_p4 = {{ap_sig_allocacmp_v4_1[5:4]}};
assign or_ln27_10_fu_1118_p3 = {{lshr_ln_reg_1231}, {4'd12}};
assign or_ln27_11_fu_1130_p5 = {{{{lshr_ln_reg_1231}, {2'd3}}, {tmp_131_reg_1448}}, {1'd1}};
assign or_ln27_12_fu_1163_p3 = {{lshr_ln_reg_1231}, {4'd14}};
assign or_ln27_13_fu_1175_p3 = {{lshr_ln_reg_1231}, {4'd15}};
assign or_ln27_1_fu_859_p3 = {{tmp_s_fu_850_p4}, {2'd2}};
assign or_ln27_2_fu_872_p3 = {{tmp_s_fu_850_p4}, {2'd3}};
assign or_ln27_3_fu_912_p3 = {{tmp_1_fu_903_p4}, {3'd4}};
assign or_ln27_4_fu_932_p5 = {{{{tmp_1_fu_903_p4}, {1'd1}}, {tmp_131_fu_925_p3}}, {1'd1}};
assign or_ln27_5_fu_983_p3 = {{tmp_1_reg_1431}, {3'd6}};
assign or_ln27_6_fu_995_p3 = {{tmp_1_reg_1431}, {3'd7}};
assign or_ln27_7_fu_1025_p3 = {{lshr_ln_reg_1231}, {4'd8}};
assign or_ln27_8_fu_1037_p5 = {{{{lshr_ln_reg_1231}, {1'd1}}, {tmp_2_reg_1464}}, {1'd1}};
assign or_ln27_9_fu_1070_p5 = {{{{lshr_ln_reg_1231}, {1'd1}}, {tmp_132_reg_1469}}, {2'd2}};
assign or_ln27_s_fu_1085_p5 = {{{{lshr_ln_reg_1231}, {1'd1}}, {tmp_132_reg_1469}}, {2'd3}};
assign or_ln_fu_806_p3 = {{tmp_fu_796_p4}, {1'd1}};
assign tmp_130_fu_753_p3 = ap_sig_allocacmp_v4_1[32'd6];
assign tmp_131_fu_925_p3 = v4_1_reg_1212[32'd1];
assign tmp_1_fu_903_p4 = {{v4_1_reg_1212[5:3]}};
assign tmp_fu_796_p4 = {{ap_sig_allocacmp_v4_1[5:1]}};
assign tmp_s_fu_850_p4 = {{v4_1_reg_1212[5:2]}};
assign v0_0_address0 = zext_ln27_1_fu_776_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_10_address0 = zext_ln27_1_fu_776_p1;
assign v0_10_ce0 = v0_10_ce0_local;
assign v0_11_address0 = zext_ln27_1_fu_776_p1;
assign v0_11_ce0 = v0_11_ce0_local;
assign v0_12_address0 = zext_ln27_1_fu_776_p1;
assign v0_12_ce0 = v0_12_ce0_local;
assign v0_13_address0 = zext_ln27_1_fu_776_p1;
assign v0_13_ce0 = v0_13_ce0_local;
assign v0_14_address0 = zext_ln27_1_fu_776_p1;
assign v0_14_ce0 = v0_14_ce0_local;
assign v0_15_address0 = zext_ln27_1_fu_776_p1;
assign v0_15_ce0 = v0_15_ce0_local;
assign v0_1_address0 = zext_ln27_1_fu_776_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = zext_ln27_1_fu_776_p1;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = zext_ln27_1_fu_776_p1;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_4_address0 = zext_ln27_1_fu_776_p1;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_5_address0 = zext_ln27_1_fu_776_p1;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_6_address0 = zext_ln27_1_fu_776_p1;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_7_address0 = zext_ln27_1_fu_776_p1;
assign v0_7_ce0 = v0_7_ce0_local;
assign v0_8_address0 = zext_ln27_1_fu_776_p1;
assign v0_8_ce0 = v0_8_ce0_local;
assign v0_9_address0 = zext_ln27_1_fu_776_p1;
assign v0_9_ce0 = v0_9_ce0_local;
assign v141_address0 = v141_address0_local;
assign v141_address1 = v141_address1_local;
assign v141_ce0 = v141_ce0_local;
assign v141_ce1 = v141_ce1_local;
assign v141_d0 = v141_d0_local;
assign v141_d1 = v141_d1_local;
assign v141_we0 = v141_we0_local;
assign v141_we1 = v141_we1_local;
assign v142_address0 = v142_address0_local;
assign v142_address1 = v142_address1_local;
assign v142_ce0 = v142_ce0_local;
assign v142_ce1 = v142_ce1_local;
assign v142_d0 = v142_d0_local;
assign v142_d1 = v142_d1_local;
assign v142_we0 = v142_we0_local;
assign v142_we1 = v142_we1_local;
assign v1_address0 = v1_address0_local;
assign v1_address1 = v1_address1_local;
assign v1_ce0 = v1_ce0_local;
assign v1_ce1 = v1_ce1_local;
assign zext_ln27_1_fu_776_p1 = lshr_ln_fu_766_p4;
assign zext_ln27_fu_761_p1 = ap_sig_allocacmp_v4_1;
assign zext_ln28_10_fu_1095_p1 = or_ln27_s_fu_1085_p5;
assign zext_ln28_11_fu_1125_p1 = or_ln27_10_fu_1118_p3;
assign zext_ln28_12_fu_1140_p1 = or_ln27_11_fu_1130_p5;
assign zext_ln28_13_fu_1170_p1 = or_ln27_12_fu_1163_p3;
assign zext_ln28_14_fu_1182_p1 = or_ln27_13_fu_1175_p3;
assign zext_ln28_1_fu_867_p1 = or_ln27_1_fu_859_p3;
assign zext_ln28_2_fu_880_p1 = or_ln27_2_fu_872_p3;
assign zext_ln28_3_fu_920_p1 = or_ln27_3_fu_912_p3;
assign zext_ln28_4_fu_944_p1 = or_ln27_4_fu_932_p5;
assign zext_ln28_5_fu_990_p1 = or_ln27_5_fu_983_p3;
assign zext_ln28_6_fu_1002_p1 = or_ln27_6_fu_995_p3;
assign zext_ln28_7_fu_1032_p1 = or_ln27_7_fu_1025_p3;
assign zext_ln28_8_fu_1047_p1 = or_ln27_8_fu_1037_p5;
assign zext_ln28_9_fu_1080_p1 = or_ln27_9_fu_1070_p5;
assign zext_ln28_fu_814_p1 = or_ln_fu_806_p3;
always @ (posedge ap_clk) begin
    zext_ln27_reg_1225[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln28_reg_1253[0] <= 1'b1;
    zext_ln28_reg_1253[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_1_reg_1339[1:0] <= 2'b10;
    zext_ln28_1_reg_1339[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_2_reg_1355[1:0] <= 2'b11;
    zext_ln28_2_reg_1355[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_3_reg_1437[2:0] <= 3'b100;
    zext_ln28_3_reg_1437[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_4_reg_1453[0] <= 1'b1;
    zext_ln28_4_reg_1453[2:2] <= 1'b1;
    zext_ln28_4_reg_1453[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_5_reg_1475[2:0] <= 3'b110;
    zext_ln28_5_reg_1475[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_6_reg_1486[2:0] <= 3'b111;
    zext_ln28_6_reg_1486[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_7_reg_1497[3:0] <= 4'b1000;
    zext_ln28_7_reg_1497[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_8_reg_1508[0] <= 1'b1;
    zext_ln28_8_reg_1508[3:3] <= 1'b1;
    zext_ln28_8_reg_1508[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_9_reg_1519[1:0] <= 2'b10;
    zext_ln28_9_reg_1519[3:3] <= 1'b1;
    zext_ln28_9_reg_1519[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_10_reg_1530[1:0] <= 2'b11;
    zext_ln28_10_reg_1530[3:3] <= 1'b1;
    zext_ln28_10_reg_1530[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_11_reg_1541[3:0] <= 4'b1100;
    zext_ln28_11_reg_1541[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_12_reg_1552[0] <= 1'b1;
    zext_ln28_12_reg_1552[3:2] <= 2'b11;
    zext_ln28_12_reg_1552[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_13_reg_1563[3:0] <= 4'b1110;
    zext_ln28_13_reg_1563[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_14_reg_1574[3:0] <= 4'b1111;
    zext_ln28_14_reg_1574[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 