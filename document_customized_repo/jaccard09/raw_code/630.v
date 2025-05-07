module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_q0,W_1_address1,W_1_ce1,W_1_we1,W_1_d1,W_1_q1,W_address0,W_ce0,W_we0,W_d0,W_q0,W_address1,W_ce1,W_we1,W_d1,W_q1); 
parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
input  [31:0] W_1_q0;
output  [5:0] W_1_address1;
output   W_1_ce1;
output   W_1_we1;
output  [31:0] W_1_d1;
input  [31:0] W_1_q1;
output  [5:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
input  [31:0] W_q0;
output  [5:0] W_address1;
output   W_ce1;
output   W_we1;
output  [31:0] W_d1;
input  [31:0] W_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln106_fu_316_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state7;
reg   [31:0] reg_304;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state4;
reg   [6:0] i_3_reg_878;
reg   [31:0] W_1_load_reg_922;
reg   [31:0] W_load_reg_928;
reg   [31:0] W_1_load_1_reg_954;
reg   [31:0] W_load_2_reg_960;
wire    ap_CS_fsm_state3;
reg   [31:0] W_load_3_reg_985;
reg   [31:0] W_1_load_2_reg_991;
reg   [31:0] W_1_load_3_reg_997;
wire   [31:0] xor_ln108_2_fu_579_p2;
reg   [31:0] xor_ln108_2_reg_1002;
reg   [31:0] W_1_load_4_reg_1028;
wire   [31:0] xor_ln108_8_fu_677_p2;
reg   [31:0] xor_ln108_8_reg_1033;
reg   [31:0] W_1_load_5_reg_1039;
wire   [63:0] zext_ln108_8_fu_715_p1;
reg   [63:0] zext_ln108_8_reg_1044;
wire    ap_CS_fsm_state5;
wire   [31:0] xor_ln108_11_fu_744_p2;
reg   [31:0] xor_ln108_11_reg_1049;
wire   [31:0] xor_ln108_14_fu_762_p2;
reg   [31:0] xor_ln108_14_reg_1054;
wire   [31:0] xor_ln108_17_fu_778_p2;
reg   [31:0] xor_ln108_17_reg_1059;
wire   [31:0] xor_ln108_20_fu_794_p2;
reg   [31:0] xor_ln108_20_reg_1064;
wire   [31:0] xor_ln108_23_fu_810_p2;
reg   [31:0] xor_ln108_23_reg_1069;
wire   [63:0] zext_ln108_18_fu_856_p1;
reg   [63:0] zext_ln108_18_reg_1074;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln108_fu_338_p1;
wire   [63:0] zext_ln108_1_fu_359_p1;
wire   [63:0] zext_ln108_2_fu_380_p1;
wire   [63:0] zext_ln108_5_fu_401_p1;
wire   [63:0] zext_ln108_3_fu_425_p1;
wire   [63:0] zext_ln108_4_fu_445_p1;
wire   [63:0] zext_ln108_6_fu_465_p1;
wire   [63:0] zext_ln108_7_fu_485_p1;
wire   [63:0] zext_ln108_9_fu_505_p1;
wire   [63:0] zext_ln108_10_fu_525_p1;
wire   [63:0] zext_ln108_11_fu_545_p1;
wire   [63:0] zext_ln108_12_fu_565_p1;
wire   [63:0] zext_ln108_13_fu_600_p1;
wire   [63:0] zext_ln108_15_fu_620_p1;
wire   [63:0] zext_ln108_16_fu_640_p1;
wire   [63:0] zext_ln108_17_fu_660_p1;
wire   [63:0] zext_ln99_fu_692_p1;
wire   [63:0] zext_ln108_14_fu_842_p1;
reg   [6:0] i_fu_90;
wire   [6:0] add_ln106_fu_861_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg    W_1_ce1_local;
reg   [5:0] W_1_address1_local;
reg    W_1_ce0_local;
reg   [5:0] W_1_address0_local;
reg    W_1_we0_local;
reg   [31:0] W_1_d0_local;
wire   [31:0] xor_ln108_5_fu_728_p2;
reg    W_1_we1_local;
reg   [31:0] W_1_d1_local;
reg    W_ce1_local;
reg   [5:0] W_address1_local;
reg    W_ce0_local;
reg   [5:0] W_address0_local;
reg    W_we1_local;
reg   [31:0] W_d1_local;
reg    W_we0_local;
reg   [31:0] W_d0_local;
wire   [6:0] add_ln108_fu_322_p2;
wire   [5:0] lshr_ln1_fu_328_p4;
wire   [6:0] add_ln108_1_fu_343_p2;
wire   [5:0] lshr_ln108_1_fu_349_p4;
wire   [6:0] add_ln108_2_fu_364_p2;
wire   [5:0] lshr_ln108_2_fu_370_p4;
wire   [6:0] add_ln108_5_fu_385_p2;
wire   [5:0] lshr_ln108_5_fu_391_p4;
wire   [5:0] trunc_ln106_fu_406_p1;
wire   [5:0] add_ln108_3_fu_409_p2;
wire   [4:0] lshr_ln108_3_fu_415_p4;
wire   [6:0] add_ln108_4_fu_430_p2;
wire   [5:0] lshr_ln108_4_fu_435_p4;
wire   [6:0] add_ln108_6_fu_450_p2;
wire   [5:0] lshr_ln108_6_fu_455_p4;
wire   [6:0] add_ln108_7_fu_470_p2;
wire   [5:0] lshr_ln108_7_fu_475_p4;
wire   [6:0] add_ln108_8_fu_490_p2;
wire   [5:0] lshr_ln108_8_fu_495_p4;
wire   [6:0] add_ln108_9_fu_510_p2;
wire   [5:0] lshr_ln108_9_fu_515_p4;
wire   [6:0] add_ln108_10_fu_530_p2;
wire   [5:0] lshr_ln108_s_fu_535_p4;
wire   [6:0] add_ln108_11_fu_550_p2;
wire   [5:0] lshr_ln108_10_fu_555_p4;
wire   [31:0] xor_ln108_fu_574_p2;
wire   [31:0] xor_ln108_1_fu_570_p2;
wire   [6:0] add_ln108_12_fu_585_p2;
wire   [5:0] lshr_ln108_11_fu_590_p4;
wire   [6:0] add_ln108_13_fu_605_p2;
wire   [5:0] lshr_ln108_12_fu_610_p4;
wire   [6:0] add_ln108_14_fu_625_p2;
wire   [5:0] lshr_ln108_13_fu_630_p4;
wire   [6:0] add_ln108_15_fu_645_p2;
wire   [5:0] lshr_ln108_14_fu_650_p4;
wire   [31:0] xor_ln108_7_fu_671_p2;
wire   [31:0] xor_ln108_6_fu_665_p2;
wire   [5:0] lshr_ln_fu_683_p4;
wire   [4:0] tmp_fu_698_p4;
wire   [5:0] or_ln_fu_707_p3;
wire   [31:0] xor_ln108_3_fu_724_p2;
wire   [31:0] xor_ln108_4_fu_720_p2;
wire   [31:0] xor_ln108_10_fu_739_p2;
wire   [31:0] xor_ln108_9_fu_735_p2;
wire   [31:0] xor_ln108_13_fu_756_p2;
wire   [31:0] xor_ln108_12_fu_750_p2;
wire   [31:0] xor_ln108_16_fu_772_p2;
wire   [31:0] xor_ln108_15_fu_768_p2;
wire   [31:0] xor_ln108_19_fu_789_p2;
wire   [31:0] xor_ln108_18_fu_784_p2;
wire   [31:0] xor_ln108_22_fu_804_p2;
wire   [31:0] xor_ln108_21_fu_800_p2;
wire   [3:0] tmp_9_fu_816_p4;
wire   [0:0] tmp_1_fu_825_p3;
wire   [5:0] or_ln108_1_fu_832_p4;
wire   [5:0] or_ln108_2_fu_848_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
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
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        i_fu_90 <= 7'd16;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        i_fu_90 <= add_ln106_fu_861_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_load_1_reg_954 <= W_1_q0;
        W_1_load_reg_922 <= W_1_q1;
        W_load_reg_928 <= W_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_load_2_reg_991 <= W_1_q1;
        W_1_load_3_reg_997 <= W_1_q0;
        W_load_2_reg_960 <= W_q1;
        W_load_3_reg_985 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        W_1_load_4_reg_1028 <= W_1_q1;
        W_1_load_5_reg_1039 <= W_1_q0;
        xor_ln108_2_reg_1002 <= xor_ln108_2_fu_579_p2;
        xor_ln108_8_reg_1033 <= xor_ln108_8_fu_677_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_3_reg_878 <= ap_sig_allocacmp_i_3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_304 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        xor_ln108_11_reg_1049 <= xor_ln108_11_fu_744_p2;
        xor_ln108_14_reg_1054 <= xor_ln108_14_fu_762_p2;
        xor_ln108_17_reg_1059 <= xor_ln108_17_fu_778_p2;
        xor_ln108_20_reg_1064 <= xor_ln108_20_fu_794_p2;
        xor_ln108_23_reg_1069 <= xor_ln108_23_fu_810_p2;
        zext_ln108_8_reg_1044[5 : 1] <= zext_ln108_8_fu_715_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        zext_ln108_18_reg_1074[5 : 2] <= zext_ln108_18_fu_856_p1[5 : 2];
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        W_1_address0_local = zext_ln108_8_reg_1044;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        W_1_address0_local = zext_ln99_fu_692_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_1_address0_local = zext_ln108_17_fu_660_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_address0_local = zext_ln108_12_fu_565_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address0_local = zext_ln108_7_fu_485_p1;
    end else if (((icmp_ln106_fu_316_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_1_address0_local = zext_ln108_5_fu_401_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        W_1_address1_local = zext_ln108_18_reg_1074;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        W_1_address1_local = zext_ln108_14_fu_842_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_1_address1_local = zext_ln108_13_fu_600_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_address1_local = zext_ln108_9_fu_505_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address1_local = zext_ln108_6_fu_465_p1;
    end else if (((icmp_ln106_fu_316_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_1_address1_local = zext_ln108_fu_338_p1;
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_316_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_316_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        W_1_d0_local = xor_ln108_11_reg_1049;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        W_1_d0_local = xor_ln108_5_fu_728_p2;
    end else begin
        W_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        W_1_d1_local = xor_ln108_23_reg_1069;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        W_1_d1_local = xor_ln108_20_reg_1064;
    end else begin
        W_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        W_1_we1_local = 1'b1;
    end else begin
        W_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        W_address0_local = zext_ln108_18_fu_856_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        W_address0_local = zext_ln108_8_fu_715_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_address0_local = zext_ln108_16_fu_640_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_address0_local = zext_ln108_11_fu_545_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_address0_local = zext_ln108_4_fu_445_p1;
    end else if (((icmp_ln106_fu_316_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_address0_local = zext_ln108_2_fu_380_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        W_address1_local = zext_ln108_14_fu_842_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        W_address1_local = zext_ln99_fu_692_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_address1_local = zext_ln108_15_fu_620_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_address1_local = zext_ln108_10_fu_525_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_address1_local = zext_ln108_3_fu_425_p1;
    end else if (((icmp_ln106_fu_316_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_address1_local = zext_ln108_1_fu_359_p1;
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_316_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln106_fu_316_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        W_d0_local = xor_ln108_17_reg_1059;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        W_d0_local = xor_ln108_8_reg_1033;
    end else begin
        W_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        W_d1_local = xor_ln108_14_reg_1054;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        W_d1_local = xor_ln108_2_reg_1002;
    end else begin
        W_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
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
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln106_fu_316_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_90;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln106_fu_316_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
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
assign W_1_d0 = W_1_d0_local;
assign W_1_d1 = W_1_d1_local;
assign W_1_we0 = W_1_we0_local;
assign W_1_we1 = W_1_we1_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_d0 = W_d0_local;
assign W_d1 = W_d1_local;
assign W_we0 = W_we0_local;
assign W_we1 = W_we1_local;
assign add_ln106_fu_861_p2 = (i_3_reg_878 + 7'd8);
assign add_ln108_10_fu_530_p2 = ($signed(i_3_reg_878) + $signed(7'd116));
assign add_ln108_11_fu_550_p2 = ($signed(i_3_reg_878) + $signed(7'd123));
assign add_ln108_12_fu_585_p2 = ($signed(i_3_reg_878) + $signed(7'd117));
assign add_ln108_13_fu_605_p2 = ($signed(i_3_reg_878) + $signed(7'd124));
assign add_ln108_14_fu_625_p2 = ($signed(i_3_reg_878) + $signed(7'd118));
assign add_ln108_15_fu_645_p2 = ($signed(i_3_reg_878) + $signed(7'd119));
assign add_ln108_1_fu_343_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd120));
assign add_ln108_2_fu_364_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd114));
assign add_ln108_3_fu_409_p2 = ($signed(trunc_ln106_fu_406_p1) + $signed(6'd48));
assign add_ln108_4_fu_430_p2 = ($signed(i_3_reg_878) + $signed(7'd126));
assign add_ln108_5_fu_385_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd121));
assign add_ln108_6_fu_450_p2 = ($signed(i_3_reg_878) + $signed(7'd115));
assign add_ln108_7_fu_470_p2 = ($signed(i_3_reg_878) + $signed(7'd113));
assign add_ln108_8_fu_490_p2 = ($signed(i_3_reg_878) + $signed(7'd127));
assign add_ln108_9_fu_510_p2 = ($signed(i_3_reg_878) + $signed(7'd122));
assign add_ln108_fu_322_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd125));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_316_p2 = ((ap_sig_allocacmp_i_3 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_10_fu_555_p4 = {{add_ln108_11_fu_550_p2[6:1]}};
assign lshr_ln108_11_fu_590_p4 = {{add_ln108_12_fu_585_p2[6:1]}};
assign lshr_ln108_12_fu_610_p4 = {{add_ln108_13_fu_605_p2[6:1]}};
assign lshr_ln108_13_fu_630_p4 = {{add_ln108_14_fu_625_p2[6:1]}};
assign lshr_ln108_14_fu_650_p4 = {{add_ln108_15_fu_645_p2[6:1]}};
assign lshr_ln108_1_fu_349_p4 = {{add_ln108_1_fu_343_p2[6:1]}};
assign lshr_ln108_2_fu_370_p4 = {{add_ln108_2_fu_364_p2[6:1]}};
assign lshr_ln108_3_fu_415_p4 = {{add_ln108_3_fu_409_p2[5:1]}};
assign lshr_ln108_4_fu_435_p4 = {{add_ln108_4_fu_430_p2[6:1]}};
assign lshr_ln108_5_fu_391_p4 = {{add_ln108_5_fu_385_p2[6:1]}};
assign lshr_ln108_6_fu_455_p4 = {{add_ln108_6_fu_450_p2[6:1]}};
assign lshr_ln108_7_fu_475_p4 = {{add_ln108_7_fu_470_p2[6:1]}};
assign lshr_ln108_8_fu_495_p4 = {{add_ln108_8_fu_490_p2[6:1]}};
assign lshr_ln108_9_fu_515_p4 = {{add_ln108_9_fu_510_p2[6:1]}};
assign lshr_ln108_s_fu_535_p4 = {{add_ln108_10_fu_530_p2[6:1]}};
assign lshr_ln1_fu_328_p4 = {{add_ln108_fu_322_p2[6:1]}};
assign lshr_ln_fu_683_p4 = {{i_3_reg_878[6:1]}};
assign or_ln108_1_fu_832_p4 = {{{tmp_9_fu_816_p4}, {1'd1}}, {tmp_1_fu_825_p3}};
assign or_ln108_2_fu_848_p3 = {{tmp_9_fu_816_p4}, {2'd3}};
assign or_ln_fu_707_p3 = {{tmp_fu_698_p4}, {1'd1}};
assign tmp_1_fu_825_p3 = i_3_reg_878[32'd1];
assign tmp_9_fu_816_p4 = {{i_3_reg_878[6:3]}};
assign tmp_fu_698_p4 = {{i_3_reg_878[6:2]}};
assign trunc_ln106_fu_406_p1 = i_3_reg_878[5:0];
assign xor_ln108_10_fu_739_p2 = (xor_ln108_2_reg_1002 ^ W_1_q1);
assign xor_ln108_11_fu_744_p2 = (xor_ln108_9_fu_735_p2 ^ xor_ln108_10_fu_739_p2);
assign xor_ln108_12_fu_750_p2 = (reg_304 ^ W_q1);
assign xor_ln108_13_fu_756_p2 = (xor_ln108_5_fu_728_p2 ^ W_q0);
assign xor_ln108_14_fu_762_p2 = (xor_ln108_13_fu_756_p2 ^ xor_ln108_12_fu_750_p2);
assign xor_ln108_15_fu_768_p2 = (W_load_reg_928 ^ W_load_3_reg_985);
assign xor_ln108_16_fu_772_p2 = (xor_ln108_11_fu_744_p2 ^ W_q0);
assign xor_ln108_17_fu_778_p2 = (xor_ln108_16_fu_772_p2 ^ xor_ln108_15_fu_768_p2);
assign xor_ln108_18_fu_784_p2 = (W_1_q1 ^ W_1_load_reg_922);
assign xor_ln108_19_fu_789_p2 = (xor_ln108_8_reg_1033 ^ W_1_q0);
assign xor_ln108_1_fu_570_p2 = (W_load_reg_928 ^ W_load_2_reg_960);
assign xor_ln108_20_fu_794_p2 = (xor_ln108_19_fu_789_p2 ^ xor_ln108_18_fu_784_p2);
assign xor_ln108_21_fu_800_p2 = (W_1_load_4_reg_1028 ^ W_1_load_1_reg_954);
assign xor_ln108_22_fu_804_p2 = (xor_ln108_14_fu_762_p2 ^ W_1_q0);
assign xor_ln108_23_fu_810_p2 = (xor_ln108_22_fu_804_p2 ^ xor_ln108_21_fu_800_p2);
assign xor_ln108_2_fu_579_p2 = (xor_ln108_fu_574_p2 ^ xor_ln108_1_fu_570_p2);
assign xor_ln108_3_fu_724_p2 = (W_load_3_reg_985 ^ W_1_load_2_reg_991);
assign xor_ln108_4_fu_720_p2 = (W_1_load_3_reg_997 ^ W_1_load_1_reg_954);
assign xor_ln108_5_fu_728_p2 = (xor_ln108_4_fu_720_p2 ^ xor_ln108_3_fu_724_p2);
assign xor_ln108_6_fu_665_p2 = (reg_304 ^ W_q1);
assign xor_ln108_7_fu_671_p2 = (W_q0 ^ W_1_q1);
assign xor_ln108_8_fu_677_p2 = (xor_ln108_7_fu_671_p2 ^ xor_ln108_6_fu_665_p2);
assign xor_ln108_9_fu_735_p2 = (W_1_load_5_reg_1039 ^ W_1_load_2_reg_991);
assign xor_ln108_fu_574_p2 = (reg_304 ^ W_1_load_reg_922);
assign zext_ln108_10_fu_525_p1 = lshr_ln108_9_fu_515_p4;
assign zext_ln108_11_fu_545_p1 = lshr_ln108_s_fu_535_p4;
assign zext_ln108_12_fu_565_p1 = lshr_ln108_10_fu_555_p4;
assign zext_ln108_13_fu_600_p1 = lshr_ln108_11_fu_590_p4;
assign zext_ln108_14_fu_842_p1 = or_ln108_1_fu_832_p4;
assign zext_ln108_15_fu_620_p1 = lshr_ln108_12_fu_610_p4;
assign zext_ln108_16_fu_640_p1 = lshr_ln108_13_fu_630_p4;
assign zext_ln108_17_fu_660_p1 = lshr_ln108_14_fu_650_p4;
assign zext_ln108_18_fu_856_p1 = or_ln108_2_fu_848_p3;
assign zext_ln108_1_fu_359_p1 = lshr_ln108_1_fu_349_p4;
assign zext_ln108_2_fu_380_p1 = lshr_ln108_2_fu_370_p4;
assign zext_ln108_3_fu_425_p1 = lshr_ln108_3_fu_415_p4;
assign zext_ln108_4_fu_445_p1 = lshr_ln108_4_fu_435_p4;
assign zext_ln108_5_fu_401_p1 = lshr_ln108_5_fu_391_p4;
assign zext_ln108_6_fu_465_p1 = lshr_ln108_6_fu_455_p4;
assign zext_ln108_7_fu_485_p1 = lshr_ln108_7_fu_475_p4;
assign zext_ln108_8_fu_715_p1 = or_ln_fu_707_p3;
assign zext_ln108_9_fu_505_p1 = lshr_ln108_8_fu_495_p4;
assign zext_ln108_fu_338_p1 = lshr_ln1_fu_328_p4;
assign zext_ln99_fu_692_p1 = lshr_ln_fu_683_p4;
always @ (posedge ap_clk) begin
    zext_ln108_8_reg_1044[0] <= 1'b1;
    zext_ln108_8_reg_1044[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln108_18_reg_1074[1:0] <= 2'b11;
    zext_ln108_18_reg_1074[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 