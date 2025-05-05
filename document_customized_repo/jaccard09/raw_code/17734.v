module aes256_encrypt_ecb_aes_mixColumns (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_r_address0,buf_r_ce0,buf_r_we0,buf_r_d0,buf_r_q0,buf_r_address1,buf_r_ce1,buf_r_we1,buf_r_d1,buf_r_q1); 
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
output  [3:0] buf_r_address0;
output   buf_r_ce0;
output   buf_r_we0;
output  [7:0] buf_r_d0;
input  [7:0] buf_r_q0;
output  [3:0] buf_r_address1;
output   buf_r_ce1;
output   buf_r_we1;
output  [7:0] buf_r_d1;
input  [7:0] buf_r_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] tmp_1_fu_169_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state8;
reg   [7:0] reg_147;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state5;
reg   [7:0] reg_151;
reg   [3:0] buf_r_addr_reg_686;
reg   [3:0] buf_r_addr_1_reg_691;
reg   [1:0] tmp_s_reg_696;
reg   [0:0] tmp_6_reg_702;
reg   [0:0] tmp_7_reg_710;
reg   [3:0] buf_r_addr_4_reg_715;
reg   [3:0] buf_r_addr_5_reg_720;
reg   [3:0] buf_r_addr_2_reg_725;
wire    ap_CS_fsm_state3;
reg   [3:0] buf_r_addr_3_reg_730;
reg   [7:0] a_1_reg_735;
reg   [7:0] b_1_reg_742;
reg   [7:0] c_reg_749;
wire    ap_CS_fsm_state4;
reg   [7:0] d_reg_756;
reg   [3:0] buf_r_addr_6_reg_764;
reg   [3:0] buf_r_addr_7_reg_769;
wire   [7:0] xor_ln104_1_fu_361_p2;
reg   [7:0] xor_ln104_1_reg_774;
wire   [7:0] xor_ln104_4_fu_406_p2;
reg   [7:0] xor_ln104_4_reg_779;
wire   [7:0] xor_ln104_6_fu_546_p2;
reg   [7:0] xor_ln104_6_reg_784;
wire    ap_CS_fsm_state6;
wire   [7:0] xor_ln104_9_fu_590_p2;
reg   [7:0] xor_ln104_9_reg_789;
wire   [63:0] zext_ln100_fu_177_p1;
wire   [63:0] zext_ln102_fu_200_p1;
wire   [63:0] zext_ln102_6_fu_249_p1;
wire   [63:0] zext_ln102_3_fu_264_p1;
wire   [63:0] zext_ln102_1_fu_276_p1;
wire   [63:0] zext_ln102_2_fu_288_p1;
wire   [63:0] zext_ln102_4_fu_300_p1;
wire   [63:0] zext_ln102_5_fu_312_p1;
reg   [4:0] i_fu_70;
wire   [4:0] add_ln100_fu_231_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_5;
reg    buf_r_ce1_local;
reg   [3:0] buf_r_address1_local;
reg    buf_r_ce0_local;
reg   [3:0] buf_r_address0_local;
reg    buf_r_we1_local;
reg   [7:0] buf_r_d1_local;
wire   [7:0] xor_ln105_2_fu_450_p2;
reg    buf_r_we0_local;
reg   [7:0] buf_r_d0_local;
wire   [7:0] xor_ln105_4_fu_489_p2;
wire   [7:0] xor_ln105_7_fu_629_p2;
wire   [7:0] xor_ln105_9_fu_669_p2;
wire    ap_CS_fsm_state7;
wire   [2:0] tmp_fu_182_p4;
wire   [3:0] or_ln_fu_192_p3;
wire   [3:0] or_ln1_fu_242_p3;
wire   [3:0] or_ln102_3_fu_254_p5;
wire   [3:0] or_ln102_1_fu_269_p3;
wire   [3:0] or_ln102_2_fu_281_p3;
wire   [3:0] or_ln102_4_fu_293_p3;
wire   [3:0] or_ln102_5_fu_305_p3;
wire   [7:0] grp_fu_155_p2;
wire   [7:0] xor_ln103_1_fu_317_p2;
wire   [7:0] shl_ln55_fu_335_p2;
wire   [0:0] tmp_2_fu_327_p3;
wire   [7:0] xor_ln55_fu_341_p2;
wire   [7:0] select_ln55_fu_347_p3;
wire   [7:0] e_fu_322_p2;
wire   [7:0] xor_ln104_fu_355_p2;
wire   [7:0] xor_ln104_2_fu_367_p2;
wire   [7:0] shl_ln55_1_fu_380_p2;
wire   [0:0] tmp_3_fu_372_p3;
wire   [7:0] xor_ln55_1_fu_386_p2;
wire   [7:0] select_ln55_1_fu_392_p3;
wire   [7:0] xor_ln104_3_fu_400_p2;
wire   [7:0] xor_ln105_fu_412_p2;
wire   [7:0] shl_ln55_2_fu_424_p2;
wire   [0:0] tmp_4_fu_416_p3;
wire   [7:0] xor_ln55_2_fu_430_p2;
wire   [7:0] select_ln55_2_fu_436_p3;
wire   [7:0] xor_ln105_1_fu_444_p2;
wire   [7:0] xor_ln105_3_fu_456_p2;
wire   [7:0] shl_ln55_3_fu_469_p2;
wire   [0:0] tmp_5_fu_461_p3;
wire   [7:0] xor_ln55_3_fu_475_p2;
wire   [7:0] select_ln55_3_fu_481_p3;
wire   [7:0] xor_ln103_3_fu_496_p2;
wire   [7:0] xor_ln103_4_fu_500_p2;
wire   [7:0] shl_ln55_4_fu_520_p2;
wire   [0:0] tmp_8_fu_512_p3;
wire   [7:0] xor_ln55_4_fu_526_p2;
wire   [7:0] select_ln55_4_fu_532_p3;
wire   [7:0] e_1_fu_506_p2;
wire   [7:0] xor_ln104_5_fu_540_p2;
wire   [7:0] xor_ln104_7_fu_551_p2;
wire   [7:0] shl_ln55_5_fu_564_p2;
wire   [0:0] tmp_9_fu_556_p3;
wire   [7:0] xor_ln55_5_fu_570_p2;
wire   [7:0] select_ln55_5_fu_576_p3;
wire   [7:0] xor_ln104_8_fu_584_p2;
wire   [7:0] shl_ln55_6_fu_603_p2;
wire   [0:0] tmp_10_fu_595_p3;
wire   [7:0] xor_ln55_6_fu_609_p2;
wire   [7:0] select_ln55_6_fu_615_p3;
wire   [7:0] xor_ln105_6_fu_623_p2;
wire   [7:0] xor_ln105_8_fu_636_p2;
wire   [7:0] shl_ln55_7_fu_649_p2;
wire   [0:0] tmp_11_fu_641_p3;
wire   [7:0] xor_ln55_7_fu_655_p2;
wire   [7:0] select_ln55_7_fu_661_p3;
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
#0 i_fu_70 = 5'd0;
#0 ap_done_reg = 1'b0;
end
aes256_encrypt_ecb_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((tmp_1_fu_169_p3 == 1'd0)) begin
            i_fu_70 <= add_ln100_fu_231_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_70 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        a_1_reg_735 <= buf_r_q1;
        b_1_reg_742 <= buf_r_q0;
        buf_r_addr_2_reg_725[3 : 2] <= zext_ln102_1_fu_276_p1[3 : 2];
        buf_r_addr_3_reg_730[3 : 2] <= zext_ln102_2_fu_288_p1[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_r_addr_1_reg_691[3 : 1] <= zext_ln102_fu_200_p1[3 : 1];
        buf_r_addr_reg_686 <= zext_ln100_fu_177_p1;
        tmp_6_reg_702 <= ap_sig_allocacmp_i_5[32'd3];
        tmp_7_reg_710 <= ap_sig_allocacmp_i_5[32'd1];
        tmp_s_reg_696 <= {{ap_sig_allocacmp_i_5[3:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_r_addr_4_reg_715[3] <= zext_ln102_6_fu_249_p1[3];
        buf_r_addr_5_reg_720[1] <= zext_ln102_3_fu_264_p1[1];
buf_r_addr_5_reg_720[3] <= zext_ln102_3_fu_264_p1[3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_r_addr_6_reg_764[3] <= zext_ln102_4_fu_300_p1[3];
        buf_r_addr_7_reg_769[3] <= zext_ln102_5_fu_312_p1[3];
        c_reg_749 <= buf_r_q1;
        d_reg_756 <= buf_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_147 <= buf_r_q1;
        reg_151 <= buf_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        xor_ln104_1_reg_774 <= xor_ln104_1_fu_361_p2;
        xor_ln104_4_reg_779 <= xor_ln104_4_fu_406_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        xor_ln104_6_reg_784 <= xor_ln104_6_fu_546_p2;
        xor_ln104_9_reg_789 <= xor_ln104_9_fu_590_p2;
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
    if (((tmp_1_fu_169_p3 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
        ap_sig_allocacmp_i_5 = 5'd0;
    end else begin
        ap_sig_allocacmp_i_5 = i_fu_70;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_r_address0_local = buf_r_addr_5_reg_720;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buf_r_address0_local = buf_r_addr_1_reg_691;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_r_address0_local = buf_r_addr_7_reg_769;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_r_address0_local = buf_r_addr_3_reg_730;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_r_address0_local = zext_ln102_5_fu_312_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_r_address0_local = zext_ln102_2_fu_288_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_r_address0_local = zext_ln102_3_fu_264_p1;
    end else if (((tmp_1_fu_169_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_r_address0_local = zext_ln102_fu_200_p1;
    end else begin
        buf_r_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_r_address1_local = buf_r_addr_4_reg_715;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buf_r_address1_local = buf_r_addr_reg_686;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_r_address1_local = buf_r_addr_6_reg_764;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_r_address1_local = buf_r_addr_2_reg_725;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_r_address1_local = zext_ln102_4_fu_300_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_r_address1_local = zext_ln102_1_fu_276_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_r_address1_local = zext_ln102_6_fu_249_p1;
    end else if (((tmp_1_fu_169_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_r_address1_local = zext_ln100_fu_177_p1;
    end else begin
        buf_r_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | ((tmp_1_fu_169_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_r_ce0_local = 1'b1;
    end else begin
        buf_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | ((tmp_1_fu_169_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_r_ce1_local = 1'b1;
    end else begin
        buf_r_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_r_d0_local = xor_ln104_9_reg_789;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buf_r_d0_local = xor_ln104_4_reg_779;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_r_d0_local = xor_ln105_9_fu_669_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_r_d0_local = xor_ln105_4_fu_489_p2;
    end else begin
        buf_r_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_r_d1_local = xor_ln104_6_reg_784;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buf_r_d1_local = xor_ln104_1_reg_774;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_r_d1_local = xor_ln105_7_fu_629_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_r_d1_local = xor_ln105_2_fu_450_p2;
    end else begin
        buf_r_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        buf_r_we0_local = 1'b1;
    end else begin
        buf_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        buf_r_we1_local = 1'b1;
    end else begin
        buf_r_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((tmp_1_fu_169_p3 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
assign add_ln100_fu_231_p2 = (ap_sig_allocacmp_i_5 + 5'd8);
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
assign buf_r_address0 = buf_r_address0_local;
assign buf_r_address1 = buf_r_address1_local;
assign buf_r_ce0 = buf_r_ce0_local;
assign buf_r_ce1 = buf_r_ce1_local;
assign buf_r_d0 = buf_r_d0_local;
assign buf_r_d1 = buf_r_d1_local;
assign buf_r_we0 = buf_r_we0_local;
assign buf_r_we1 = buf_r_we1_local;
assign e_1_fu_506_p2 = (xor_ln103_4_fu_500_p2 ^ reg_151);
assign e_fu_322_p2 = (xor_ln103_1_fu_317_p2 ^ d_reg_756);
assign grp_fu_155_p2 = (reg_151 ^ reg_147);
assign or_ln102_1_fu_269_p3 = {{tmp_s_reg_696}, {2'd2}};
assign or_ln102_2_fu_281_p3 = {{tmp_s_reg_696}, {2'd3}};
assign or_ln102_3_fu_254_p5 = {{{{tmp_6_reg_702}, {1'd1}}, {tmp_7_reg_710}}, {1'd1}};
assign or_ln102_4_fu_293_p3 = {{tmp_6_reg_702}, {3'd6}};
assign or_ln102_5_fu_305_p3 = {{tmp_6_reg_702}, {3'd7}};
assign or_ln1_fu_242_p3 = {{tmp_6_reg_702}, {3'd4}};
assign or_ln_fu_192_p3 = {{tmp_fu_182_p4}, {1'd1}};
assign select_ln55_1_fu_392_p3 = ((tmp_3_fu_372_p3[0:0] == 1'b1) ? xor_ln55_1_fu_386_p2 : shl_ln55_1_fu_380_p2);
assign select_ln55_2_fu_436_p3 = ((tmp_4_fu_416_p3[0:0] == 1'b1) ? xor_ln55_2_fu_430_p2 : shl_ln55_2_fu_424_p2);
assign select_ln55_3_fu_481_p3 = ((tmp_5_fu_461_p3[0:0] == 1'b1) ? xor_ln55_3_fu_475_p2 : shl_ln55_3_fu_469_p2);
assign select_ln55_4_fu_532_p3 = ((tmp_8_fu_512_p3[0:0] == 1'b1) ? xor_ln55_4_fu_526_p2 : shl_ln55_4_fu_520_p2);
assign select_ln55_5_fu_576_p3 = ((tmp_9_fu_556_p3[0:0] == 1'b1) ? xor_ln55_5_fu_570_p2 : shl_ln55_5_fu_564_p2);
assign select_ln55_6_fu_615_p3 = ((tmp_10_fu_595_p3[0:0] == 1'b1) ? xor_ln55_6_fu_609_p2 : shl_ln55_6_fu_603_p2);
assign select_ln55_7_fu_661_p3 = ((tmp_11_fu_641_p3[0:0] == 1'b1) ? xor_ln55_7_fu_655_p2 : shl_ln55_7_fu_649_p2);
assign select_ln55_fu_347_p3 = ((tmp_2_fu_327_p3[0:0] == 1'b1) ? xor_ln55_fu_341_p2 : shl_ln55_fu_335_p2);
assign shl_ln55_1_fu_380_p2 = xor_ln104_2_fu_367_p2 << 8'd1;
assign shl_ln55_2_fu_424_p2 = xor_ln105_fu_412_p2 << 8'd1;
assign shl_ln55_3_fu_469_p2 = xor_ln105_3_fu_456_p2 << 8'd1;
assign shl_ln55_4_fu_520_p2 = xor_ln103_3_fu_496_p2 << 8'd1;
assign shl_ln55_5_fu_564_p2 = xor_ln104_7_fu_551_p2 << 8'd1;
assign shl_ln55_6_fu_603_p2 = grp_fu_155_p2 << 8'd1;
assign shl_ln55_7_fu_649_p2 = xor_ln105_8_fu_636_p2 << 8'd1;
assign shl_ln55_fu_335_p2 = grp_fu_155_p2 << 8'd1;
assign tmp_10_fu_595_p3 = grp_fu_155_p2[32'd7];
assign tmp_11_fu_641_p3 = xor_ln105_8_fu_636_p2[32'd7];
assign tmp_1_fu_169_p3 = ap_sig_allocacmp_i_5[32'd4];
assign tmp_2_fu_327_p3 = grp_fu_155_p2[32'd7];
assign tmp_3_fu_372_p3 = xor_ln104_2_fu_367_p2[32'd7];
assign tmp_4_fu_416_p3 = xor_ln105_fu_412_p2[32'd7];
assign tmp_5_fu_461_p3 = xor_ln105_3_fu_456_p2[32'd7];
assign tmp_8_fu_512_p3 = xor_ln103_3_fu_496_p2[32'd7];
assign tmp_9_fu_556_p3 = xor_ln104_7_fu_551_p2[32'd7];
assign tmp_fu_182_p4 = {{ap_sig_allocacmp_i_5[3:1]}};
assign xor_ln103_1_fu_317_p2 = (grp_fu_155_p2 ^ c_reg_749);
assign xor_ln103_3_fu_496_p2 = (b_1_reg_742 ^ a_1_reg_735);
assign xor_ln103_4_fu_500_p2 = (xor_ln103_3_fu_496_p2 ^ reg_147);
assign xor_ln104_1_fu_361_p2 = (xor_ln104_fu_355_p2 ^ reg_147);
assign xor_ln104_2_fu_367_p2 = (reg_151 ^ c_reg_749);
assign xor_ln104_3_fu_400_p2 = (select_ln55_1_fu_392_p3 ^ e_fu_322_p2);
assign xor_ln104_4_fu_406_p2 = (xor_ln104_3_fu_400_p2 ^ reg_151);
assign xor_ln104_5_fu_540_p2 = (select_ln55_4_fu_532_p3 ^ e_1_fu_506_p2);
assign xor_ln104_6_fu_546_p2 = (xor_ln104_5_fu_540_p2 ^ a_1_reg_735);
assign xor_ln104_7_fu_551_p2 = (reg_147 ^ b_1_reg_742);
assign xor_ln104_8_fu_584_p2 = (select_ln55_5_fu_576_p3 ^ e_1_fu_506_p2);
assign xor_ln104_9_fu_590_p2 = (xor_ln104_8_fu_584_p2 ^ b_1_reg_742);
assign xor_ln104_fu_355_p2 = (select_ln55_fu_347_p3 ^ e_fu_322_p2);
assign xor_ln105_1_fu_444_p2 = (select_ln55_2_fu_436_p3 ^ grp_fu_155_p2);
assign xor_ln105_2_fu_450_p2 = (xor_ln105_1_fu_444_p2 ^ d_reg_756);
assign xor_ln105_3_fu_456_p2 = (reg_147 ^ d_reg_756);
assign xor_ln105_4_fu_489_p2 = (xor_ln103_1_fu_317_p2 ^ select_ln55_3_fu_481_p3);
assign xor_ln105_6_fu_623_p2 = (xor_ln103_3_fu_496_p2 ^ select_ln55_6_fu_615_p3);
assign xor_ln105_7_fu_629_p2 = (xor_ln105_6_fu_623_p2 ^ reg_151);
assign xor_ln105_8_fu_636_p2 = (reg_151 ^ a_1_reg_735);
assign xor_ln105_9_fu_669_p2 = (xor_ln103_4_fu_500_p2 ^ select_ln55_7_fu_661_p3);
assign xor_ln105_fu_412_p2 = (d_reg_756 ^ c_reg_749);
assign xor_ln55_1_fu_386_p2 = (shl_ln55_1_fu_380_p2 ^ 8'd27);
assign xor_ln55_2_fu_430_p2 = (shl_ln55_2_fu_424_p2 ^ 8'd27);
assign xor_ln55_3_fu_475_p2 = (shl_ln55_3_fu_469_p2 ^ 8'd27);
assign xor_ln55_4_fu_526_p2 = (shl_ln55_4_fu_520_p2 ^ 8'd27);
assign xor_ln55_5_fu_570_p2 = (shl_ln55_5_fu_564_p2 ^ 8'd27);
assign xor_ln55_6_fu_609_p2 = (shl_ln55_6_fu_603_p2 ^ 8'd27);
assign xor_ln55_7_fu_655_p2 = (shl_ln55_7_fu_649_p2 ^ 8'd27);
assign xor_ln55_fu_341_p2 = (shl_ln55_fu_335_p2 ^ 8'd27);
assign zext_ln100_fu_177_p1 = ap_sig_allocacmp_i_5;
assign zext_ln102_1_fu_276_p1 = or_ln102_1_fu_269_p3;
assign zext_ln102_2_fu_288_p1 = or_ln102_2_fu_281_p3;
assign zext_ln102_3_fu_264_p1 = or_ln102_3_fu_254_p5;
assign zext_ln102_4_fu_300_p1 = or_ln102_4_fu_293_p3;
assign zext_ln102_5_fu_312_p1 = or_ln102_5_fu_305_p3;
assign zext_ln102_6_fu_249_p1 = or_ln1_fu_242_p3;
assign zext_ln102_fu_200_p1 = or_ln_fu_192_p3;
always @ (posedge ap_clk) begin
    buf_r_addr_1_reg_691[0] <= 1'b1;
    buf_r_addr_4_reg_715[2:0] <= 3'b100;
    buf_r_addr_5_reg_720[0] <= 1'b1;
    buf_r_addr_5_reg_720[2] <= 1'b1;
    buf_r_addr_2_reg_725[1:0] <= 2'b10;
    buf_r_addr_3_reg_730[1:0] <= 2'b11;
    buf_r_addr_6_reg_764[2:0] <= 3'b110;
    buf_r_addr_7_reg_769[2:0] <= 3'b111;
end
endmodule 