
module needwun_needwun_Pipeline_init_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_address0,M_ce0,M_we0,M_d0,M_address1,M_ce1,M_we1,M_d1);  
parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] M_address0;
output   M_ce0;
output   M_we0;
output  [31:0] M_d0;
output  [14:0] M_address1;
output   M_ce1;
output   M_we1;
output  [31:0] M_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln23_fu_327_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state8;
reg   [7:0] b_idx_4_reg_917;
wire   [14:0] tmp_35_fu_285_p3;
reg   [14:0] tmp_35_reg_928;
wire   [3:0] tmp_6_fu_462_p4;
reg   [3:0] tmp_6_reg_949;
wire    ap_CS_fsm_state3;
wire   [0:0] tmp_36_fu_504_p3;
reg   [0:0] tmp_36_reg_955;
wire   [2:0] tmp_7_fu_612_p4;
reg   [2:0] tmp_7_reg_960;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln24_fu_293_p1;
wire   [63:0] zext_ln24_1_fu_339_p1;
wire   [63:0] zext_ln24_3_fu_382_p1;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln24_5_fu_424_p1;
wire   [63:0] zext_ln24_7_fu_457_p1;
wire   [63:0] zext_ln24_9_fu_499_p1;
wire   [63:0] zext_ln24_11_fu_543_p1;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln24_13_fu_575_p1;
wire   [63:0] zext_ln24_15_fu_607_p1;
wire   [63:0] zext_ln24_17_fu_649_p1;
wire   [63:0] zext_ln24_19_fu_695_p1;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln24_21_fu_738_p1;
wire   [63:0] zext_ln24_23_fu_774_p1;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln24_25_fu_806_p1;
wire   [63:0] zext_ln24_27_fu_841_p1;
wire   [63:0] zext_ln24_29_fu_873_p1;
reg   [7:0] b_idx_fu_126;
wire   [7:0] add_ln23_fu_900_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_b_idx_4;
reg    M_we1_local;
reg   [31:0] M_d1_local;
wire  signed [31:0] sext_ln24_fu_304_p1;
reg    M_ce1_local;
reg   [14:0] M_address1_local;
reg    M_we0_local;
reg   [31:0] M_d0_local;
wire  signed [31:0] sext_ln24_1_fu_372_p1;
reg    M_ce0_local;
reg   [14:0] M_address0_local;
wire  signed [31:0] sext_ln24_2_fu_414_p1;
wire  signed [31:0] sext_ln24_3_fu_447_p1;
wire  signed [31:0] sext_ln24_4_fu_489_p1;
wire  signed [31:0] sext_ln24_5_fu_533_p1;
wire  signed [31:0] sext_ln24_6_fu_565_p1;
wire  signed [31:0] sext_ln24_7_fu_597_p1;
wire  signed [31:0] sext_ln24_8_fu_639_p1;
wire  signed [31:0] sext_ln24_9_fu_685_p1;
wire  signed [31:0] sext_ln24_10_fu_728_p1;
wire  signed [31:0] sext_ln24_11_fu_764_p1;
wire  signed [31:0] sext_ln24_12_fu_796_p1;
wire  signed [31:0] sext_ln24_13_fu_831_p1;
wire  signed [31:0] sext_ln24_14_fu_863_p1;
wire  signed [31:0] sext_ln24_15_fu_895_p1;
wire   [6:0] tmp_fu_275_p4;
wire   [7:0] sub_ln24_fu_298_p2;
wire   [6:0] tmp_s_fu_309_p4;
wire   [7:0] or_ln2_fu_319_p3;
wire   [14:0] add_ln24_fu_333_p2;
wire   [5:0] tmp_4_fu_344_p4;
wire   [6:0] or_ln24_s_fu_354_p3;
wire   [7:0] zext_ln24_2_fu_362_p1;
wire   [7:0] sub_ln24_1_fu_366_p2;
wire   [14:0] add_ln24_1_fu_377_p2;
wire   [4:0] tmp_5_fu_387_p4;
wire   [6:0] or_ln3_fu_396_p3;
wire   [7:0] zext_ln24_4_fu_404_p1;
wire   [7:0] sub_ln24_2_fu_408_p2;
wire   [14:0] add_ln24_2_fu_419_p2;
wire   [6:0] or_ln24_1_fu_429_p3;
wire   [7:0] zext_ln24_6_fu_437_p1;
wire   [7:0] sub_ln24_3_fu_441_p2;
wire   [14:0] add_ln24_3_fu_452_p2;
wire   [6:0] or_ln24_2_fu_471_p3;
wire   [7:0] zext_ln24_8_fu_479_p1;
wire   [7:0] sub_ln24_4_fu_483_p2;
wire   [14:0] add_ln24_4_fu_494_p2;
wire   [6:0] or_ln24_3_fu_511_p5;
wire   [7:0] zext_ln24_10_fu_523_p1;
wire   [7:0] sub_ln24_5_fu_527_p2;
wire   [14:0] add_ln24_5_fu_538_p2;
wire   [6:0] or_ln24_4_fu_548_p3;
wire   [7:0] zext_ln24_12_fu_555_p1;
wire   [7:0] sub_ln24_6_fu_559_p2;
wire   [14:0] add_ln24_6_fu_570_p2;
wire   [6:0] or_ln24_5_fu_580_p3;
wire   [7:0] zext_ln24_14_fu_587_p1;
wire   [7:0] sub_ln24_7_fu_591_p2;
wire   [14:0] add_ln24_7_fu_602_p2;
wire   [6:0] or_ln24_6_fu_621_p3;
wire   [7:0] zext_ln24_16_fu_629_p1;
wire   [7:0] sub_ln24_8_fu_633_p2;
wire   [14:0] add_ln24_8_fu_644_p2;
wire   [1:0] tmp_8_fu_654_p4;
wire   [6:0] or_ln24_7_fu_663_p5;
wire   [7:0] zext_ln24_18_fu_675_p1;
wire   [7:0] sub_ln24_9_fu_679_p2;
wire   [14:0] add_ln24_9_fu_690_p2;
wire   [0:0] tmp_37_fu_700_p3;
wire   [6:0] or_ln24_8_fu_707_p5;
wire   [7:0] zext_ln24_20_fu_718_p1;
wire   [7:0] sub_ln24_10_fu_722_p2;
wire   [14:0] add_ln24_10_fu_733_p2;
wire   [6:0] or_ln24_9_fu_743_p5;
wire   [7:0] zext_ln24_22_fu_754_p1;
wire   [7:0] sub_ln24_11_fu_758_p2;
wire   [14:0] add_ln24_11_fu_769_p2;
wire   [6:0] or_ln24_10_fu_779_p3;
wire   [7:0] zext_ln24_24_fu_786_p1;
wire   [7:0] sub_ln24_12_fu_790_p2;
wire   [14:0] add_ln24_12_fu_801_p2;
wire   [6:0] or_ln24_11_fu_811_p5;
wire   [7:0] zext_ln24_26_fu_821_p1;
wire   [7:0] sub_ln24_13_fu_825_p2;
wire   [14:0] add_ln24_13_fu_836_p2;
wire   [6:0] or_ln24_12_fu_846_p3;
wire   [7:0] zext_ln24_28_fu_853_p1;
wire   [7:0] sub_ln24_14_fu_857_p2;
wire   [14:0] add_ln24_14_fu_868_p2;
wire   [6:0] or_ln24_13_fu_878_p3;
wire   [7:0] zext_ln24_30_fu_885_p1;
wire   [7:0] sub_ln24_15_fu_889_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 b_idx_fu_126 = 8'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        b_idx_fu_126 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        b_idx_fu_126 <= add_ln23_fu_900_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        b_idx_4_reg_917 <= ap_sig_allocacmp_b_idx_4;
        tmp_35_reg_928 <= tmp_35_fu_285_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_36_reg_955 <= b_idx_4_reg_917[32'd1];
        tmp_6_reg_949 <= {{b_idx_4_reg_917[6:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_7_reg_960 <= {{b_idx_4_reg_917[6:4]}};
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_address0_local = zext_ln24_29_fu_873_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_address0_local = zext_ln24_25_fu_806_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_address0_local = zext_ln24_21_fu_738_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_address0_local = zext_ln24_17_fu_649_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_address0_local = zext_ln24_13_fu_575_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_address0_local = zext_ln24_9_fu_499_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address0_local = zext_ln24_5_fu_424_p1;
    end else if (((icmp_ln23_fu_327_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        M_address0_local = zext_ln24_1_fu_339_p1;
    end else begin
        M_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_address1_local = zext_ln24_27_fu_841_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_address1_local = zext_ln24_23_fu_774_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_address1_local = zext_ln24_19_fu_695_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_address1_local = zext_ln24_15_fu_607_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_address1_local = zext_ln24_11_fu_543_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_address1_local = zext_ln24_7_fu_457_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address1_local = zext_ln24_3_fu_382_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        M_address1_local = zext_ln24_fu_293_p1;
    end else begin
        M_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln23_fu_327_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_ce0_local = 1'b1;
    end else begin
        M_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_ce1_local = 1'b1;
    end else begin
        M_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_d0_local = sext_ln24_15_fu_895_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_d0_local = sext_ln24_13_fu_831_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_d0_local = sext_ln24_11_fu_764_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_d0_local = sext_ln24_9_fu_685_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_d0_local = sext_ln24_7_fu_597_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_d0_local = sext_ln24_5_fu_533_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d0_local = sext_ln24_3_fu_447_p1;
    end else if (((icmp_ln23_fu_327_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        M_d0_local = sext_ln24_1_fu_372_p1;
    end else begin
        M_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_d1_local = sext_ln24_14_fu_863_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_d1_local = sext_ln24_12_fu_796_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_d1_local = sext_ln24_10_fu_728_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_d1_local = sext_ln24_8_fu_639_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_d1_local = sext_ln24_6_fu_565_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_d1_local = sext_ln24_4_fu_489_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d1_local = sext_ln24_2_fu_414_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        M_d1_local = sext_ln24_fu_304_p1;
    end else begin
        M_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln23_fu_327_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_we0_local = 1'b1;
    end else begin
        M_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_we1_local = 1'b1;
    end else begin
        M_we1_local = 1'b0;
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
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln23_fu_327_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_b_idx_4 = 8'd0;
    end else begin
        ap_sig_allocacmp_b_idx_4 = b_idx_fu_126;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln23_fu_327_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign M_address0 = M_address0_local;
assign M_address1 = M_address1_local;
assign M_ce0 = M_ce0_local;
assign M_ce1 = M_ce1_local;
assign M_d0 = M_d0_local;
assign M_d1 = M_d1_local;
assign M_we0 = M_we0_local;
assign M_we1 = M_we1_local;
assign add_ln23_fu_900_p2 = (b_idx_4_reg_917 + 8'd16);
assign add_ln24_10_fu_733_p2 = (tmp_35_reg_928 + 15'd1419);
assign add_ln24_11_fu_769_p2 = (tmp_35_reg_928 + 15'd1548);
assign add_ln24_12_fu_801_p2 = (tmp_35_reg_928 + 15'd1677);
assign add_ln24_13_fu_836_p2 = (tmp_35_reg_928 + 15'd1806);
assign add_ln24_14_fu_868_p2 = (tmp_35_reg_928 + 15'd1935);
assign add_ln24_1_fu_377_p2 = (tmp_35_reg_928 + 15'd258);
assign add_ln24_2_fu_419_p2 = (tmp_35_reg_928 + 15'd387);
assign add_ln24_3_fu_452_p2 = (tmp_35_reg_928 + 15'd516);
assign add_ln24_4_fu_494_p2 = (tmp_35_reg_928 + 15'd645);
assign add_ln24_5_fu_538_p2 = (tmp_35_reg_928 + 15'd774);
assign add_ln24_6_fu_570_p2 = (tmp_35_reg_928 + 15'd903);
assign add_ln24_7_fu_602_p2 = (tmp_35_reg_928 + 15'd1032);
assign add_ln24_8_fu_644_p2 = (tmp_35_reg_928 + 15'd1161);
assign add_ln24_9_fu_690_p2 = (tmp_35_reg_928 + 15'd1290);
assign add_ln24_fu_333_p2 = (tmp_35_fu_285_p3 + 15'd129);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln23_fu_327_p2 = ((or_ln2_fu_319_p3 < 8'd129) ? 1'b1 : 1'b0);
assign or_ln24_10_fu_779_p3 = {{tmp_7_reg_960}, {4'd12}};
assign or_ln24_11_fu_811_p5 = {{{{tmp_7_reg_960}, {2'd3}}, {tmp_36_reg_955}}, {1'd1}};
assign or_ln24_12_fu_846_p3 = {{tmp_7_reg_960}, {4'd14}};
assign or_ln24_13_fu_878_p3 = {{tmp_7_reg_960}, {4'd15}};
assign or_ln24_1_fu_429_p3 = {{tmp_5_fu_387_p4}, {2'd3}};
assign or_ln24_2_fu_471_p3 = {{tmp_6_fu_462_p4}, {3'd4}};
assign or_ln24_3_fu_511_p5 = {{{{tmp_6_fu_462_p4}, {1'd1}}, {tmp_36_fu_504_p3}}, {1'd1}};
assign or_ln24_4_fu_548_p3 = {{tmp_6_reg_949}, {3'd6}};
assign or_ln24_5_fu_580_p3 = {{tmp_6_reg_949}, {3'd7}};
assign or_ln24_6_fu_621_p3 = {{tmp_7_fu_612_p4}, {4'd8}};
assign or_ln24_7_fu_663_p5 = {{{{tmp_7_fu_612_p4}, {1'd1}}, {tmp_8_fu_654_p4}}, {1'd1}};
assign or_ln24_8_fu_707_p5 = {{{{tmp_7_reg_960}, {1'd1}}, {tmp_37_fu_700_p3}}, {2'd2}};
assign or_ln24_9_fu_743_p5 = {{{{tmp_7_reg_960}, {1'd1}}, {tmp_37_fu_700_p3}}, {2'd3}};
assign or_ln24_s_fu_354_p3 = {{tmp_4_fu_344_p4}, {1'd1}};
assign or_ln2_fu_319_p3 = {{tmp_s_fu_309_p4}, {1'd1}};
assign or_ln3_fu_396_p3 = {{tmp_5_fu_387_p4}, {2'd2}};
assign sext_ln24_10_fu_728_p1 = $signed(sub_ln24_10_fu_722_p2);
assign sext_ln24_11_fu_764_p1 = $signed(sub_ln24_11_fu_758_p2);
assign sext_ln24_12_fu_796_p1 = $signed(sub_ln24_12_fu_790_p2);
assign sext_ln24_13_fu_831_p1 = $signed(sub_ln24_13_fu_825_p2);
assign sext_ln24_14_fu_863_p1 = $signed(sub_ln24_14_fu_857_p2);
assign sext_ln24_15_fu_895_p1 = $signed(sub_ln24_15_fu_889_p2);
assign sext_ln24_1_fu_372_p1 = $signed(sub_ln24_1_fu_366_p2);
assign sext_ln24_2_fu_414_p1 = $signed(sub_ln24_2_fu_408_p2);
assign sext_ln24_3_fu_447_p1 = $signed(sub_ln24_3_fu_441_p2);
assign sext_ln24_4_fu_489_p1 = $signed(sub_ln24_4_fu_483_p2);
assign sext_ln24_5_fu_533_p1 = $signed(sub_ln24_5_fu_527_p2);
assign sext_ln24_6_fu_565_p1 = $signed(sub_ln24_6_fu_559_p2);
assign sext_ln24_7_fu_597_p1 = $signed(sub_ln24_7_fu_591_p2);
assign sext_ln24_8_fu_639_p1 = $signed(sub_ln24_8_fu_633_p2);
assign sext_ln24_9_fu_685_p1 = $signed(sub_ln24_9_fu_679_p2);
assign sext_ln24_fu_304_p1 = $signed(sub_ln24_fu_298_p2);
assign sub_ln24_10_fu_722_p2 = (8'd0 - zext_ln24_20_fu_718_p1);
assign sub_ln24_11_fu_758_p2 = (8'd0 - zext_ln24_22_fu_754_p1);
assign sub_ln24_12_fu_790_p2 = (8'd0 - zext_ln24_24_fu_786_p1);
assign sub_ln24_13_fu_825_p2 = (8'd0 - zext_ln24_26_fu_821_p1);
assign sub_ln24_14_fu_857_p2 = (8'd0 - zext_ln24_28_fu_853_p1);
assign sub_ln24_15_fu_889_p2 = (8'd0 - zext_ln24_30_fu_885_p1);
assign sub_ln24_1_fu_366_p2 = (8'd0 - zext_ln24_2_fu_362_p1);
assign sub_ln24_2_fu_408_p2 = (8'd0 - zext_ln24_4_fu_404_p1);
assign sub_ln24_3_fu_441_p2 = (8'd0 - zext_ln24_6_fu_437_p1);
assign sub_ln24_4_fu_483_p2 = (8'd0 - zext_ln24_8_fu_479_p1);
assign sub_ln24_5_fu_527_p2 = (8'd0 - zext_ln24_10_fu_523_p1);
assign sub_ln24_6_fu_559_p2 = (8'd0 - zext_ln24_12_fu_555_p1);
assign sub_ln24_7_fu_591_p2 = (8'd0 - zext_ln24_14_fu_587_p1);
assign sub_ln24_8_fu_633_p2 = (8'd0 - zext_ln24_16_fu_629_p1);
assign sub_ln24_9_fu_679_p2 = (8'd0 - zext_ln24_18_fu_675_p1);
assign sub_ln24_fu_298_p2 = (8'd0 - ap_sig_allocacmp_b_idx_4);
assign tmp_35_fu_285_p3 = {{tmp_fu_275_p4}, {ap_sig_allocacmp_b_idx_4}};
assign tmp_36_fu_504_p3 = b_idx_4_reg_917[32'd1];
assign tmp_37_fu_700_p3 = b_idx_4_reg_917[32'd2];
assign tmp_4_fu_344_p4 = {{ap_sig_allocacmp_b_idx_4[6:1]}};
assign tmp_5_fu_387_p4 = {{b_idx_4_reg_917[6:2]}};
assign tmp_6_fu_462_p4 = {{b_idx_4_reg_917[6:3]}};
assign tmp_7_fu_612_p4 = {{b_idx_4_reg_917[6:4]}};
assign tmp_8_fu_654_p4 = {{b_idx_4_reg_917[2:1]}};
assign tmp_fu_275_p4 = {{ap_sig_allocacmp_b_idx_4[7:1]}};
assign tmp_s_fu_309_p4 = {{ap_sig_allocacmp_b_idx_4[7:1]}};
assign zext_ln24_10_fu_523_p1 = or_ln24_3_fu_511_p5;
assign zext_ln24_11_fu_543_p1 = add_ln24_5_fu_538_p2;
assign zext_ln24_12_fu_555_p1 = or_ln24_4_fu_548_p3;
assign zext_ln24_13_fu_575_p1 = add_ln24_6_fu_570_p2;
assign zext_ln24_14_fu_587_p1 = or_ln24_5_fu_580_p3;
assign zext_ln24_15_fu_607_p1 = add_ln24_7_fu_602_p2;
assign zext_ln24_16_fu_629_p1 = or_ln24_6_fu_621_p3;
assign zext_ln24_17_fu_649_p1 = add_ln24_8_fu_644_p2;
assign zext_ln24_18_fu_675_p1 = or_ln24_7_fu_663_p5;
assign zext_ln24_19_fu_695_p1 = add_ln24_9_fu_690_p2;
assign zext_ln24_1_fu_339_p1 = add_ln24_fu_333_p2;
assign zext_ln24_20_fu_718_p1 = or_ln24_8_fu_707_p5;
assign zext_ln24_21_fu_738_p1 = add_ln24_10_fu_733_p2;
assign zext_ln24_22_fu_754_p1 = or_ln24_9_fu_743_p5;
assign zext_ln24_23_fu_774_p1 = add_ln24_11_fu_769_p2;
assign zext_ln24_24_fu_786_p1 = or_ln24_10_fu_779_p3;
assign zext_ln24_25_fu_806_p1 = add_ln24_12_fu_801_p2;
assign zext_ln24_26_fu_821_p1 = or_ln24_11_fu_811_p5;
assign zext_ln24_27_fu_841_p1 = add_ln24_13_fu_836_p2;
assign zext_ln24_28_fu_853_p1 = or_ln24_12_fu_846_p3;
assign zext_ln24_29_fu_873_p1 = add_ln24_14_fu_868_p2;
assign zext_ln24_2_fu_362_p1 = or_ln24_s_fu_354_p3;
assign zext_ln24_30_fu_885_p1 = or_ln24_13_fu_878_p3;
assign zext_ln24_3_fu_382_p1 = add_ln24_1_fu_377_p2;
assign zext_ln24_4_fu_404_p1 = or_ln3_fu_396_p3;
assign zext_ln24_5_fu_424_p1 = add_ln24_2_fu_419_p2;
assign zext_ln24_6_fu_437_p1 = or_ln24_1_fu_429_p3;
assign zext_ln24_7_fu_457_p1 = add_ln24_3_fu_452_p2;
assign zext_ln24_8_fu_479_p1 = or_ln24_2_fu_471_p3;
assign zext_ln24_9_fu_499_p1 = add_ln24_4_fu_494_p2;
assign zext_ln24_fu_293_p1 = tmp_35_fu_285_p3;
endmodule 
