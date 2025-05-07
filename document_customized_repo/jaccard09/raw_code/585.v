module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_7_address0,W_7_ce0,W_7_we0,W_7_d0,W_7_q0,W_7_address1,W_7_ce1,W_7_we1,W_7_d1,W_7_q1,W_6_address0,W_6_ce0,W_6_we0,W_6_d0,W_6_q0,W_6_address1,W_6_ce1,W_6_we1,W_6_d1,W_6_q1,W_5_address0,W_5_ce0,W_5_we0,W_5_d0,W_5_q0,W_5_address1,W_5_ce1,W_5_we1,W_5_d1,W_5_q1,W_4_address0,W_4_ce0,W_4_we0,W_4_d0,W_4_q0,W_4_address1,W_4_ce1,W_4_we1,W_4_d1,W_4_q1,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_q0,W_3_address1,W_3_ce1,W_3_we1,W_3_d1,W_3_q1,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_q0,W_2_address1,W_2_ce1,W_2_we1,W_2_d1,W_2_q1,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_q0,W_1_address1,W_1_ce1,W_1_we1,W_1_d1,W_1_q1,W_address0,W_ce0,W_we0,W_d0,W_q0,W_address1,W_ce1,W_we1,W_d1,W_q1); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] W_7_address0;
output   W_7_ce0;
output   W_7_we0;
output  [31:0] W_7_d0;
input  [31:0] W_7_q0;
output  [3:0] W_7_address1;
output   W_7_ce1;
output   W_7_we1;
output  [31:0] W_7_d1;
input  [31:0] W_7_q1;
output  [3:0] W_6_address0;
output   W_6_ce0;
output   W_6_we0;
output  [31:0] W_6_d0;
input  [31:0] W_6_q0;
output  [3:0] W_6_address1;
output   W_6_ce1;
output   W_6_we1;
output  [31:0] W_6_d1;
input  [31:0] W_6_q1;
output  [3:0] W_5_address0;
output   W_5_ce0;
output   W_5_we0;
output  [31:0] W_5_d0;
input  [31:0] W_5_q0;
output  [3:0] W_5_address1;
output   W_5_ce1;
output   W_5_we1;
output  [31:0] W_5_d1;
input  [31:0] W_5_q1;
output  [3:0] W_4_address0;
output   W_4_ce0;
output   W_4_we0;
output  [31:0] W_4_d0;
input  [31:0] W_4_q0;
output  [3:0] W_4_address1;
output   W_4_ce1;
output   W_4_we1;
output  [31:0] W_4_d1;
input  [31:0] W_4_q1;
output  [3:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
input  [31:0] W_3_q0;
output  [3:0] W_3_address1;
output   W_3_ce1;
output   W_3_we1;
output  [31:0] W_3_d1;
input  [31:0] W_3_q1;
output  [3:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
input  [31:0] W_2_q0;
output  [3:0] W_2_address1;
output   W_2_ce1;
output   W_2_we1;
output  [31:0] W_2_d1;
input  [31:0] W_2_q1;
output  [3:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
input  [31:0] W_1_q0;
output  [3:0] W_1_address1;
output   W_1_ce1;
output   W_1_we1;
output  [31:0] W_1_d1;
input  [31:0] W_1_q1;
output  [3:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
input  [31:0] W_q0;
output  [3:0] W_address1;
output   W_ce1;
output   W_we1;
output  [31:0] W_d1;
input  [31:0] W_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln106_fu_430_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state3;
reg   [6:0] i_3_reg_1106;
wire   [63:0] zext_ln99_fu_785_p1;
reg   [63:0] zext_ln99_reg_1196;
wire    ap_CS_fsm_state2;
reg   [31:0] W_5_load_reg_1204;
reg   [31:0] W_load_reg_1209;
reg   [31:0] W_2_load_reg_1214;
wire   [31:0] xor_ln108_2_fu_805_p2;
reg   [31:0] xor_ln108_2_reg_1219;
reg   [31:0] W_6_load_reg_1224;
reg   [31:0] W_3_load_reg_1230;
reg   [31:0] W_1_load_1_reg_1237;
wire   [31:0] xor_ln108_5_fu_824_p2;
reg   [31:0] xor_ln108_5_reg_1242;
reg   [31:0] W_7_load_reg_1247;
reg   [31:0] W_4_load_reg_1253;
wire   [31:0] xor_ln108_6_fu_831_p2;
reg   [31:0] xor_ln108_6_reg_1258;
reg   [31:0] W_3_load_1_reg_1263;
reg   [31:0] W_5_load_1_reg_1269;
wire   [31:0] xor_ln108_9_fu_850_p2;
reg   [31:0] xor_ln108_9_reg_1274;
reg   [31:0] W_4_load_1_reg_1280;
reg   [31:0] W_6_load_1_reg_1285;
wire   [31:0] xor_ln108_12_fu_856_p2;
reg   [31:0] xor_ln108_12_reg_1290;
reg   [31:0] W_7_load_1_reg_1295;
wire   [31:0] xor_ln108_24_fu_875_p2;
reg   [31:0] xor_ln108_24_reg_1301;
wire   [31:0] xor_ln108_26_fu_887_p2;
reg   [31:0] xor_ln108_26_reg_1306;
wire   [31:0] xor_ln108_27_fu_893_p2;
reg   [31:0] xor_ln108_27_reg_1311;
wire   [31:0] xor_ln108_32_fu_911_p2;
reg   [31:0] xor_ln108_32_reg_1317;
wire   [63:0] zext_ln108_fu_456_p1;
wire   [63:0] zext_ln108_1_fu_477_p1;
wire   [63:0] zext_ln108_2_fu_498_p1;
wire   [63:0] zext_ln108_3_fu_519_p1;
wire   [63:0] zext_ln108_4_fu_540_p1;
wire   [63:0] zext_ln108_5_fu_561_p1;
wire   [63:0] zext_ln108_6_fu_582_p1;
wire   [63:0] zext_ln108_7_fu_603_p1;
wire   [63:0] zext_ln108_8_fu_624_p1;
wire   [63:0] zext_ln108_9_fu_645_p1;
wire   [63:0] zext_ln108_10_fu_666_p1;
wire   [63:0] zext_ln108_11_fu_687_p1;
wire   [63:0] zext_ln108_12_fu_708_p1;
wire   [63:0] zext_ln108_13_fu_729_p1;
wire   [63:0] zext_ln108_14_fu_750_p1;
wire   [63:0] zext_ln108_15_fu_771_p1;
wire   [63:0] zext_ln108_16_fu_934_p1;
reg   [6:0] i_fu_90;
wire   [6:0] add_ln106_fu_1089_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg    W_5_ce1_local;
reg   [3:0] W_5_address1_local;
reg    W_5_ce0_local;
reg   [3:0] W_5_address0_local;
reg    W_5_we1_local;
reg    W_5_we0_local;
wire   [31:0] xor_ln108_41_fu_1054_p2;
reg    W_ce1_local;
reg   [3:0] W_address1_local;
reg    W_ce0_local;
reg   [3:0] W_address0_local;
reg    W_we0_local;
reg    W_we1_local;
reg    W_2_ce1_local;
reg   [3:0] W_2_address1_local;
reg    W_2_ce0_local;
reg   [3:0] W_2_address0_local;
reg    W_2_we0_local;
wire   [31:0] xor_ln108_8_fu_843_p2;
reg    W_2_we1_local;
wire   [31:0] xor_ln108_35_fu_1023_p2;
reg    W_6_ce1_local;
reg   [3:0] W_6_address1_local;
reg    W_6_ce0_local;
reg   [3:0] W_6_address0_local;
reg    W_6_we1_local;
wire   [31:0] xor_ln108_17_fu_966_p2;
reg    W_6_we0_local;
wire   [31:0] xor_ln108_43_fu_1066_p2;
reg    W_1_ce1_local;
reg   [3:0] W_1_address1_local;
reg    W_1_ce0_local;
reg   [3:0] W_1_address0_local;
reg    W_1_we0_local;
reg    W_1_we1_local;
wire   [31:0] xor_ln108_20_fu_981_p2;
reg    W_3_ce1_local;
reg   [3:0] W_3_address1_local;
reg    W_3_ce0_local;
reg   [3:0] W_3_address0_local;
reg    W_3_we1_local;
wire   [31:0] xor_ln108_11_fu_950_p2;
reg    W_3_we0_local;
wire   [31:0] xor_ln108_38_fu_1038_p2;
reg    W_7_ce1_local;
reg   [3:0] W_7_address1_local;
reg    W_7_ce0_local;
reg   [3:0] W_7_address0_local;
reg    W_7_we1_local;
wire   [31:0] xor_ln108_29_fu_1008_p2;
reg    W_7_we0_local;
wire   [31:0] xor_ln108_46_fu_1082_p2;
reg    W_4_ce1_local;
reg   [3:0] W_4_address1_local;
reg    W_4_ce0_local;
reg   [3:0] W_4_address0_local;
reg    W_4_we0_local;
wire   [31:0] xor_ln108_14_fu_868_p2;
reg    W_4_we1_local;
wire   [31:0] xor_ln108_23_fu_997_p2;
wire   [6:0] add_ln108_fu_440_p2;
wire   [3:0] lshr_ln1_fu_446_p4;
wire   [6:0] add_ln108_1_fu_461_p2;
wire   [3:0] lshr_ln108_1_fu_467_p4;
wire   [6:0] add_ln108_2_fu_482_p2;
wire   [3:0] lshr_ln108_2_fu_488_p4;
wire   [5:0] trunc_ln106_fu_436_p1;
wire   [5:0] add_ln108_3_fu_503_p2;
wire   [2:0] lshr_ln108_3_fu_509_p4;
wire   [6:0] add_ln108_4_fu_524_p2;
wire   [3:0] lshr_ln108_4_fu_530_p4;
wire   [6:0] add_ln108_5_fu_545_p2;
wire   [3:0] lshr_ln108_5_fu_551_p4;
wire   [6:0] add_ln108_6_fu_566_p2;
wire   [3:0] lshr_ln108_6_fu_572_p4;
wire   [6:0] add_ln108_7_fu_587_p2;
wire   [3:0] lshr_ln108_7_fu_593_p4;
wire   [6:0] add_ln108_8_fu_608_p2;
wire   [3:0] lshr_ln108_8_fu_614_p4;
wire   [6:0] add_ln108_9_fu_629_p2;
wire   [3:0] lshr_ln108_9_fu_635_p4;
wire   [6:0] add_ln108_10_fu_650_p2;
wire   [3:0] lshr_ln108_s_fu_656_p4;
wire   [6:0] add_ln108_11_fu_671_p2;
wire   [3:0] lshr_ln108_10_fu_677_p4;
wire   [6:0] add_ln108_12_fu_692_p2;
wire   [3:0] lshr_ln108_11_fu_698_p4;
wire   [6:0] add_ln108_13_fu_713_p2;
wire   [3:0] lshr_ln108_12_fu_719_p4;
wire   [6:0] add_ln108_14_fu_734_p2;
wire   [3:0] lshr_ln108_13_fu_740_p4;
wire   [6:0] add_ln108_15_fu_755_p2;
wire   [3:0] lshr_ln108_14_fu_761_p4;
wire   [3:0] lshr_ln_fu_776_p4;
wire   [31:0] xor_ln108_fu_793_p2;
wire   [31:0] xor_ln108_1_fu_799_p2;
wire   [31:0] xor_ln108_3_fu_812_p2;
wire   [31:0] xor_ln108_4_fu_818_p2;
wire   [31:0] xor_ln108_7_fu_837_p2;
wire   [31:0] xor_ln108_13_fu_862_p2;
wire   [31:0] xor_ln108_25_fu_881_p2;
wire   [31:0] xor_ln108_31_fu_905_p2;
wire   [31:0] xor_ln108_30_fu_899_p2;
wire   [2:0] tmp_fu_917_p4;
wire   [3:0] or_ln_fu_926_p3;
wire   [31:0] xor_ln108_10_fu_946_p2;
wire   [31:0] xor_ln108_15_fu_956_p2;
wire   [31:0] xor_ln108_16_fu_961_p2;
wire   [31:0] xor_ln108_19_fu_976_p2;
wire   [31:0] xor_ln108_18_fu_972_p2;
wire   [31:0] xor_ln108_22_fu_992_p2;
wire   [31:0] xor_ln108_21_fu_988_p2;
wire   [31:0] xor_ln108_28_fu_1004_p2;
wire   [31:0] xor_ln108_34_fu_1018_p2;
wire   [31:0] xor_ln108_33_fu_1014_p2;
wire   [31:0] xor_ln108_37_fu_1034_p2;
wire   [31:0] xor_ln108_36_fu_1030_p2;
wire   [31:0] xor_ln108_40_fu_1049_p2;
wire   [31:0] xor_ln108_39_fu_1045_p2;
wire   [31:0] xor_ln108_42_fu_1061_p2;
wire   [31:0] xor_ln108_44_fu_1073_p2;
wire   [31:0] xor_ln108_45_fu_1077_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 i_fu_90 = 7'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_90 <= 7'd16;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_90 <= add_ln106_fu_1089_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_load_1_reg_1237 <= W_1_q0;
        W_2_load_reg_1214 <= W_2_q1;
        W_3_load_1_reg_1263 <= W_3_q0;
        W_3_load_reg_1230 <= W_3_q1;
        W_4_load_1_reg_1280 <= W_4_q0;
        W_4_load_reg_1253 <= W_4_q1;
        W_5_load_1_reg_1269 <= W_5_q0;
        W_5_load_reg_1204 <= W_5_q1;
        W_6_load_1_reg_1285 <= W_6_q0;
        W_6_load_reg_1224 <= W_6_q1;
        W_7_load_1_reg_1295 <= W_7_q0;
        W_7_load_reg_1247 <= W_7_q1;
        W_load_reg_1209 <= W_q1;
        xor_ln108_12_reg_1290 <= xor_ln108_12_fu_856_p2;
        xor_ln108_24_reg_1301 <= xor_ln108_24_fu_875_p2;
        xor_ln108_26_reg_1306 <= xor_ln108_26_fu_887_p2;
        xor_ln108_27_reg_1311 <= xor_ln108_27_fu_893_p2;
        xor_ln108_2_reg_1219 <= xor_ln108_2_fu_805_p2;
        xor_ln108_32_reg_1317 <= xor_ln108_32_fu_911_p2;
        xor_ln108_5_reg_1242 <= xor_ln108_5_fu_824_p2;
        xor_ln108_6_reg_1258 <= xor_ln108_6_fu_831_p2;
        xor_ln108_9_reg_1274 <= xor_ln108_9_fu_850_p2;
        zext_ln99_reg_1196[3 : 0] <= zext_ln99_fu_785_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_3_reg_1106 <= ap_sig_allocacmp_i_3;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address0_local = zext_ln99_fu_785_p1;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_1_address0_local = zext_ln108_7_fu_603_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_address1_local = zext_ln108_16_fu_934_p1;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_1_address1_local = zext_ln108_5_fu_561_p1;
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_we1_local = 1'b1;
    end else begin
        W_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_2_address0_local = zext_ln99_fu_785_p1;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_2_address0_local = zext_ln108_9_fu_645_p1;
    end else begin
        W_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_2_address1_local = zext_ln108_16_fu_934_p1;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_2_address1_local = zext_ln108_2_fu_498_p1;
    end else begin
        W_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_2_we1_local = 1'b1;
    end else begin
        W_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_3_address0_local = zext_ln108_16_fu_934_p1;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_3_address0_local = zext_ln108_11_fu_687_p1;
    end else begin
        W_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_3_address1_local = zext_ln99_reg_1196;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_3_address1_local = zext_ln108_6_fu_582_p1;
    end else begin
        W_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_3_we1_local = 1'b1;
    end else begin
        W_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_4_address0_local = zext_ln99_fu_785_p1;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_4_address0_local = zext_ln108_13_fu_729_p1;
    end else begin
        W_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_4_address1_local = zext_ln108_16_fu_934_p1;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_4_address1_local = zext_ln108_10_fu_666_p1;
    end else begin
        W_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_4_ce1_local = 1'b1;
    end else begin
        W_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_4_we0_local = 1'b1;
    end else begin
        W_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_4_we1_local = 1'b1;
    end else begin
        W_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_5_address0_local = zext_ln108_16_fu_934_p1;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_5_address0_local = zext_ln108_12_fu_708_p1;
    end else begin
        W_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_5_address1_local = zext_ln99_reg_1196;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_5_address1_local = zext_ln108_fu_456_p1;
    end else begin
        W_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_5_ce1_local = 1'b1;
    end else begin
        W_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_5_we0_local = 1'b1;
    end else begin
        W_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_5_we1_local = 1'b1;
    end else begin
        W_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_6_address0_local = zext_ln108_16_fu_934_p1;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_6_address0_local = zext_ln108_14_fu_750_p1;
    end else begin
        W_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_6_address1_local = zext_ln99_reg_1196;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_6_address1_local = zext_ln108_4_fu_540_p1;
    end else begin
        W_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_6_ce1_local = 1'b1;
    end else begin
        W_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_6_we0_local = 1'b1;
    end else begin
        W_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_6_we1_local = 1'b1;
    end else begin
        W_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_7_address0_local = zext_ln108_16_fu_934_p1;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_7_address0_local = zext_ln108_15_fu_771_p1;
    end else begin
        W_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_7_address1_local = zext_ln99_reg_1196;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_7_address1_local = zext_ln108_8_fu_624_p1;
    end else begin
        W_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_7_ce1_local = 1'b1;
    end else begin
        W_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_7_we0_local = 1'b1;
    end else begin
        W_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_7_we1_local = 1'b1;
    end else begin
        W_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_address0_local = zext_ln99_fu_785_p1;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_address0_local = zext_ln108_3_fu_519_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_address1_local = zext_ln108_16_fu_934_p1;
    end else if (((icmp_ln106_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_address1_local = zext_ln108_1_fu_477_p1;
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_430_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_we1_local = 1'b1;
    end else begin
        W_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln106_fu_430_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_90;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln106_fu_430_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
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
assign W_1_d0 = xor_ln108_5_fu_824_p2;
assign W_1_d1 = xor_ln108_20_fu_981_p2;
assign W_1_we0 = W_1_we0_local;
assign W_1_we1 = W_1_we1_local;
assign W_2_address0 = W_2_address0_local;
assign W_2_address1 = W_2_address1_local;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_2_d0 = xor_ln108_8_fu_843_p2;
assign W_2_d1 = xor_ln108_35_fu_1023_p2;
assign W_2_we0 = W_2_we0_local;
assign W_2_we1 = W_2_we1_local;
assign W_3_address0 = W_3_address0_local;
assign W_3_address1 = W_3_address1_local;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_d0 = xor_ln108_38_fu_1038_p2;
assign W_3_d1 = xor_ln108_11_fu_950_p2;
assign W_3_we0 = W_3_we0_local;
assign W_3_we1 = W_3_we1_local;
assign W_4_address0 = W_4_address0_local;
assign W_4_address1 = W_4_address1_local;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_ce1 = W_4_ce1_local;
assign W_4_d0 = xor_ln108_14_fu_868_p2;
assign W_4_d1 = xor_ln108_23_fu_997_p2;
assign W_4_we0 = W_4_we0_local;
assign W_4_we1 = W_4_we1_local;
assign W_5_address0 = W_5_address0_local;
assign W_5_address1 = W_5_address1_local;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_ce1 = W_5_ce1_local;
assign W_5_d0 = xor_ln108_41_fu_1054_p2;
assign W_5_d1 = xor_ln108_26_reg_1306;
assign W_5_we0 = W_5_we0_local;
assign W_5_we1 = W_5_we1_local;
assign W_6_address0 = W_6_address0_local;
assign W_6_address1 = W_6_address1_local;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_ce1 = W_6_ce1_local;
assign W_6_d0 = xor_ln108_43_fu_1066_p2;
assign W_6_d1 = xor_ln108_17_fu_966_p2;
assign W_6_we0 = W_6_we0_local;
assign W_6_we1 = W_6_we1_local;
assign W_7_address0 = W_7_address0_local;
assign W_7_address1 = W_7_address1_local;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_ce1 = W_7_ce1_local;
assign W_7_d0 = xor_ln108_46_fu_1082_p2;
assign W_7_d1 = xor_ln108_29_fu_1008_p2;
assign W_7_we0 = W_7_we0_local;
assign W_7_we1 = W_7_we1_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_d0 = xor_ln108_2_fu_805_p2;
assign W_d1 = xor_ln108_32_reg_1317;
assign W_we0 = W_we0_local;
assign W_we1 = W_we1_local;
assign add_ln106_fu_1089_p2 = (i_3_reg_1106 + 7'd16);
assign add_ln108_10_fu_650_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd116));
assign add_ln108_11_fu_671_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd123));
assign add_ln108_12_fu_692_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd117));
assign add_ln108_13_fu_713_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd124));
assign add_ln108_14_fu_734_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd118));
assign add_ln108_15_fu_755_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd119));
assign add_ln108_1_fu_461_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd120));
assign add_ln108_2_fu_482_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd114));
assign add_ln108_3_fu_503_p2 = ($signed(trunc_ln106_fu_436_p1) + $signed(6'd48));
assign add_ln108_4_fu_524_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd126));
assign add_ln108_5_fu_545_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd121));
assign add_ln108_6_fu_566_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd115));
assign add_ln108_7_fu_587_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd113));
assign add_ln108_8_fu_608_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd127));
assign add_ln108_9_fu_629_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd122));
assign add_ln108_fu_440_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd125));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_430_p2 = ((ap_sig_allocacmp_i_3 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_10_fu_677_p4 = {{add_ln108_11_fu_671_p2[6:3]}};
assign lshr_ln108_11_fu_698_p4 = {{add_ln108_12_fu_692_p2[6:3]}};
assign lshr_ln108_12_fu_719_p4 = {{add_ln108_13_fu_713_p2[6:3]}};
assign lshr_ln108_13_fu_740_p4 = {{add_ln108_14_fu_734_p2[6:3]}};
assign lshr_ln108_14_fu_761_p4 = {{add_ln108_15_fu_755_p2[6:3]}};
assign lshr_ln108_1_fu_467_p4 = {{add_ln108_1_fu_461_p2[6:3]}};
assign lshr_ln108_2_fu_488_p4 = {{add_ln108_2_fu_482_p2[6:3]}};
assign lshr_ln108_3_fu_509_p4 = {{add_ln108_3_fu_503_p2[5:3]}};
assign lshr_ln108_4_fu_530_p4 = {{add_ln108_4_fu_524_p2[6:3]}};
assign lshr_ln108_5_fu_551_p4 = {{add_ln108_5_fu_545_p2[6:3]}};
assign lshr_ln108_6_fu_572_p4 = {{add_ln108_6_fu_566_p2[6:3]}};
assign lshr_ln108_7_fu_593_p4 = {{add_ln108_7_fu_587_p2[6:3]}};
assign lshr_ln108_8_fu_614_p4 = {{add_ln108_8_fu_608_p2[6:3]}};
assign lshr_ln108_9_fu_635_p4 = {{add_ln108_9_fu_629_p2[6:3]}};
assign lshr_ln108_s_fu_656_p4 = {{add_ln108_10_fu_650_p2[6:3]}};
assign lshr_ln1_fu_446_p4 = {{add_ln108_fu_440_p2[6:3]}};
assign lshr_ln_fu_776_p4 = {{i_3_reg_1106[6:3]}};
assign or_ln_fu_926_p3 = {{tmp_fu_917_p4}, {1'd1}};
assign tmp_fu_917_p4 = {{i_3_reg_1106[6:4]}};
assign trunc_ln106_fu_436_p1 = ap_sig_allocacmp_i_3[5:0];
assign xor_ln108_10_fu_946_p2 = (xor_ln108_9_reg_1274 ^ W_3_load_reg_1230);
assign xor_ln108_11_fu_950_p2 = (xor_ln108_10_fu_946_p2 ^ W_3_load_1_reg_1263);
assign xor_ln108_12_fu_856_p2 = (xor_ln108_5_fu_824_p2 ^ W_6_q0);
assign xor_ln108_13_fu_862_p2 = (xor_ln108_12_fu_856_p2 ^ W_4_q1);
assign xor_ln108_14_fu_868_p2 = (xor_ln108_13_fu_862_p2 ^ W_4_q0);
assign xor_ln108_15_fu_956_p2 = (xor_ln108_11_fu_950_p2 ^ W_load_reg_1209);
assign xor_ln108_16_fu_961_p2 = (xor_ln108_15_fu_956_p2 ^ W_6_load_1_reg_1285);
assign xor_ln108_17_fu_966_p2 = (xor_ln108_16_fu_961_p2 ^ W_6_load_reg_1224);
assign xor_ln108_18_fu_972_p2 = (W_3_load_1_reg_1263 ^ W_1_load_1_reg_1237);
assign xor_ln108_19_fu_976_p2 = (xor_ln108_16_fu_961_p2 ^ W_3_load_reg_1230);
assign xor_ln108_1_fu_799_p2 = (xor_ln108_fu_793_p2 ^ W_q0);
assign xor_ln108_20_fu_981_p2 = (xor_ln108_19_fu_976_p2 ^ xor_ln108_18_fu_972_p2);
assign xor_ln108_21_fu_988_p2 = (W_6_load_reg_1224 ^ W_4_load_reg_1253);
assign xor_ln108_22_fu_992_p2 = (xor_ln108_20_fu_981_p2 ^ xor_ln108_12_reg_1290);
assign xor_ln108_23_fu_997_p2 = (xor_ln108_22_fu_992_p2 ^ xor_ln108_21_fu_988_p2);
assign xor_ln108_24_fu_875_p2 = (xor_ln108_8_fu_843_p2 ^ W_7_q0);
assign xor_ln108_25_fu_881_p2 = (xor_ln108_24_fu_875_p2 ^ W_5_q1);
assign xor_ln108_26_fu_887_p2 = (xor_ln108_25_fu_881_p2 ^ W_5_q0);
assign xor_ln108_27_fu_893_p2 = (xor_ln108_14_fu_868_p2 ^ W_1_q1);
assign xor_ln108_28_fu_1004_p2 = (xor_ln108_27_reg_1311 ^ W_7_load_reg_1247);
assign xor_ln108_29_fu_1008_p2 = (xor_ln108_28_fu_1004_p2 ^ W_7_load_1_reg_1295);
assign xor_ln108_2_fu_805_p2 = (xor_ln108_1_fu_799_p2 ^ W_q1);
assign xor_ln108_30_fu_899_p2 = (W_q0 ^ W_2_q0);
assign xor_ln108_31_fu_905_p2 = (xor_ln108_fu_793_p2 ^ xor_ln108_26_fu_887_p2);
assign xor_ln108_32_fu_911_p2 = (xor_ln108_31_fu_905_p2 ^ xor_ln108_30_fu_899_p2);
assign xor_ln108_33_fu_1014_p2 = (W_4_load_1_reg_1280 ^ W_2_load_reg_1214);
assign xor_ln108_34_fu_1018_p2 = (xor_ln108_6_reg_1258 ^ xor_ln108_29_fu_1008_p2);
assign xor_ln108_35_fu_1023_p2 = (xor_ln108_34_fu_1018_p2 ^ xor_ln108_33_fu_1014_p2);
assign xor_ln108_36_fu_1030_p2 = (W_5_load_reg_1204 ^ W_3_load_reg_1230);
assign xor_ln108_37_fu_1034_p2 = (xor_ln108_9_reg_1274 ^ xor_ln108_32_reg_1317);
assign xor_ln108_38_fu_1038_p2 = (xor_ln108_37_fu_1034_p2 ^ xor_ln108_36_fu_1030_p2);
assign xor_ln108_39_fu_1045_p2 = (W_7_load_reg_1247 ^ W_5_load_1_reg_1269);
assign xor_ln108_3_fu_812_p2 = (W_6_q1 ^ W_3_q1);
assign xor_ln108_40_fu_1049_p2 = (xor_ln108_35_fu_1023_p2 ^ xor_ln108_24_reg_1301);
assign xor_ln108_41_fu_1054_p2 = (xor_ln108_40_fu_1049_p2 ^ xor_ln108_39_fu_1045_p2);
assign xor_ln108_42_fu_1061_p2 = (xor_ln108_38_fu_1038_p2 ^ xor_ln108_2_reg_1219);
assign xor_ln108_43_fu_1066_p2 = (xor_ln108_42_fu_1061_p2 ^ xor_ln108_16_fu_961_p2);
assign xor_ln108_44_fu_1073_p2 = (xor_ln108_5_reg_1242 ^ W_7_load_1_reg_1295);
assign xor_ln108_45_fu_1077_p2 = (xor_ln108_44_fu_1073_p2 ^ xor_ln108_27_reg_1311);
assign xor_ln108_46_fu_1082_p2 = (xor_ln108_45_fu_1077_p2 ^ xor_ln108_23_fu_997_p2);
assign xor_ln108_4_fu_818_p2 = (xor_ln108_3_fu_812_p2 ^ W_1_q0);
assign xor_ln108_5_fu_824_p2 = (xor_ln108_4_fu_818_p2 ^ W_1_q1);
assign xor_ln108_6_fu_831_p2 = (W_7_q1 ^ W_4_q1);
assign xor_ln108_7_fu_837_p2 = (xor_ln108_6_fu_831_p2 ^ W_2_q1);
assign xor_ln108_8_fu_843_p2 = (xor_ln108_7_fu_837_p2 ^ W_2_q0);
assign xor_ln108_9_fu_850_p2 = (xor_ln108_2_fu_805_p2 ^ W_5_q0);
assign xor_ln108_fu_793_p2 = (W_5_q1 ^ W_2_q1);
assign zext_ln108_10_fu_666_p1 = lshr_ln108_s_fu_656_p4;
assign zext_ln108_11_fu_687_p1 = lshr_ln108_10_fu_677_p4;
assign zext_ln108_12_fu_708_p1 = lshr_ln108_11_fu_698_p4;
assign zext_ln108_13_fu_729_p1 = lshr_ln108_12_fu_719_p4;
assign zext_ln108_14_fu_750_p1 = lshr_ln108_13_fu_740_p4;
assign zext_ln108_15_fu_771_p1 = lshr_ln108_14_fu_761_p4;
assign zext_ln108_16_fu_934_p1 = or_ln_fu_926_p3;
assign zext_ln108_1_fu_477_p1 = lshr_ln108_1_fu_467_p4;
assign zext_ln108_2_fu_498_p1 = lshr_ln108_2_fu_488_p4;
assign zext_ln108_3_fu_519_p1 = lshr_ln108_3_fu_509_p4;
assign zext_ln108_4_fu_540_p1 = lshr_ln108_4_fu_530_p4;
assign zext_ln108_5_fu_561_p1 = lshr_ln108_5_fu_551_p4;
assign zext_ln108_6_fu_582_p1 = lshr_ln108_6_fu_572_p4;
assign zext_ln108_7_fu_603_p1 = lshr_ln108_7_fu_593_p4;
assign zext_ln108_8_fu_624_p1 = lshr_ln108_8_fu_614_p4;
assign zext_ln108_9_fu_645_p1 = lshr_ln108_9_fu_635_p4;
assign zext_ln108_fu_456_p1 = lshr_ln1_fu_446_p4;
assign zext_ln99_fu_785_p1 = lshr_ln_fu_776_p4;
always @ (posedge ap_clk) begin
    zext_ln99_reg_1196[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 