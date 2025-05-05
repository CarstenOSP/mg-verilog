module aes256_encrypt_ecb_aes_mixColumns (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_q0,buf_0_address1,buf_0_ce1,buf_0_we1,buf_0_d1,buf_0_q1,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_q0,buf_1_address1,buf_1_ce1,buf_1_we1,buf_1_d1,buf_1_q1); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
input  [7:0] buf_0_q0;
output  [2:0] buf_0_address1;
output   buf_0_ce1;
output   buf_0_we1;
output  [7:0] buf_0_d1;
input  [7:0] buf_0_q1;
output  [2:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
input  [7:0] buf_1_q0;
output  [2:0] buf_1_address1;
output   buf_1_ce1;
output   buf_1_we1;
output  [7:0] buf_1_d1;
input  [7:0] buf_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] tmp_1_fu_156_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state4;
reg   [2:0] buf_0_addr_reg_641;
reg   [2:0] buf_1_addr_reg_646;
reg   [1:0] tmp_reg_651;
wire   [0:0] tmp_6_fu_190_p3;
reg   [0:0] tmp_6_reg_656;
reg   [2:0] buf_0_addr_2_reg_661;
reg   [2:0] buf_1_addr_2_reg_666;
reg   [7:0] a_reg_671;
wire    ap_CS_fsm_state2;
reg   [7:0] b_reg_678;
reg   [2:0] buf_0_addr_1_reg_685;
reg   [2:0] buf_1_addr_1_reg_690;
reg   [7:0] a_2_reg_695;
reg   [7:0] b_2_reg_702;
reg   [2:0] buf_0_addr_3_reg_709;
reg   [2:0] buf_1_addr_3_reg_714;
wire   [7:0] xor_ln104_1_fu_309_p2;
reg   [7:0] xor_ln104_1_reg_719;
wire    ap_CS_fsm_state3;
wire   [7:0] xor_ln104_4_fu_353_p2;
reg   [7:0] xor_ln104_4_reg_724;
wire   [7:0] xor_ln104_7_fu_528_p2;
reg   [7:0] xor_ln104_7_reg_729;
wire   [7:0] xor_ln104_9_fu_539_p2;
reg   [7:0] xor_ln104_9_reg_734;
wire   [63:0] zext_ln98_fu_174_p1;
wire   [63:0] zext_ln98_1_fu_216_p1;
wire   [63:0] zext_ln102_fu_240_p1;
wire   [63:0] zext_ln102_1_fu_253_p1;
reg   [4:0] i_fu_62;
wire   [4:0] add_ln100_fu_222_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_5;
reg    buf_0_ce1_local;
reg   [2:0] buf_0_address1_local;
reg    buf_0_ce0_local;
reg   [2:0] buf_0_address0_local;
reg    buf_0_we1_local;
reg   [7:0] buf_0_d1_local;
wire   [7:0] xor_ln105_2_fu_398_p2;
reg    buf_0_we0_local;
reg   [7:0] buf_0_d0_local;
wire   [7:0] xor_ln105_7_fu_584_p2;
reg    buf_1_ce1_local;
reg   [2:0] buf_1_address1_local;
reg    buf_1_ce0_local;
reg   [2:0] buf_1_address0_local;
reg    buf_1_we1_local;
reg   [7:0] buf_1_d1_local;
wire   [7:0] xor_ln105_4_fu_438_p2;
reg    buf_1_we0_local;
reg   [7:0] buf_1_d0_local;
wire   [7:0] xor_ln105_9_fu_624_p2;
wire   [2:0] lshr_ln_fu_164_p4;
wire   [0:0] tmp_7_fu_198_p3;
wire   [2:0] or_ln102_1_fu_206_p4;
wire   [2:0] or_ln_fu_233_p3;
wire   [2:0] or_ln102_3_fu_246_p3;
wire   [7:0] xor_ln103_fu_259_p2;
wire   [7:0] xor_ln103_1_fu_263_p2;
wire   [7:0] shl_ln55_fu_283_p2;
wire   [0:0] tmp_2_fu_275_p3;
wire   [7:0] xor_ln55_fu_289_p2;
wire   [7:0] select_ln55_fu_295_p3;
wire   [7:0] e_fu_269_p2;
wire   [7:0] xor_ln104_fu_303_p2;
wire   [7:0] xor_ln104_2_fu_314_p2;
wire   [7:0] shl_ln55_1_fu_327_p2;
wire   [0:0] tmp_3_fu_319_p3;
wire   [7:0] xor_ln55_1_fu_333_p2;
wire   [7:0] select_ln55_1_fu_339_p3;
wire   [7:0] xor_ln104_3_fu_347_p2;
wire   [7:0] xor_ln105_fu_358_p2;
wire   [7:0] shl_ln55_2_fu_372_p2;
wire   [0:0] tmp_4_fu_364_p3;
wire   [7:0] xor_ln55_2_fu_378_p2;
wire   [7:0] select_ln55_2_fu_384_p3;
wire   [7:0] xor_ln105_1_fu_392_p2;
wire   [7:0] xor_ln105_3_fu_405_p2;
wire   [7:0] shl_ln55_3_fu_418_p2;
wire   [0:0] tmp_5_fu_410_p3;
wire   [7:0] xor_ln55_3_fu_424_p2;
wire   [7:0] select_ln55_3_fu_430_p3;
wire   [7:0] xor_ln103_3_fu_445_p2;
wire   [7:0] shl_ln55_4_fu_457_p2;
wire   [0:0] tmp_8_fu_449_p3;
wire   [7:0] xor_ln55_4_fu_463_p2;
wire   [7:0] xor_ln104_5_fu_483_p2;
wire   [7:0] shl_ln55_5_fu_496_p2;
wire   [0:0] tmp_9_fu_488_p3;
wire   [7:0] xor_ln55_5_fu_502_p2;
wire   [7:0] xor_ln103_4_fu_477_p2;
wire   [7:0] select_ln55_4_fu_469_p3;
wire   [7:0] e_2_fu_516_p2;
wire   [7:0] xor_ln104_6_fu_522_p2;
wire   [7:0] select_ln55_5_fu_508_p3;
wire   [7:0] xor_ln104_8_fu_533_p2;
wire   [7:0] xor_ln105_5_fu_544_p2;
wire   [7:0] shl_ln55_6_fu_558_p2;
wire   [0:0] tmp_10_fu_550_p3;
wire   [7:0] xor_ln55_6_fu_564_p2;
wire   [7:0] select_ln55_6_fu_570_p3;
wire   [7:0] xor_ln105_6_fu_578_p2;
wire   [7:0] xor_ln105_8_fu_591_p2;
wire   [7:0] shl_ln55_7_fu_604_p2;
wire   [0:0] tmp_11_fu_596_p3;
wire   [7:0] xor_ln55_7_fu_610_p2;
wire   [7:0] select_ln55_7_fu_616_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 i_fu_62 = 5'd0;
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
        if ((tmp_1_fu_156_p3 == 1'd0)) begin
            i_fu_62 <= add_ln100_fu_222_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_62 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        a_2_reg_695 <= buf_0_q0;
        a_reg_671 <= buf_0_q1;
        b_2_reg_702 <= buf_1_q0;
        b_reg_678 <= buf_1_q1;
        buf_0_addr_1_reg_685[2 : 1] <= zext_ln102_fu_240_p1[2 : 1];
        buf_0_addr_3_reg_709[2] <= zext_ln102_1_fu_253_p1[2];
        buf_1_addr_1_reg_690[2 : 1] <= zext_ln102_fu_240_p1[2 : 1];
        buf_1_addr_3_reg_714[2] <= zext_ln102_1_fu_253_p1[2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_0_addr_2_reg_661[0] <= zext_ln98_1_fu_216_p1[0];
buf_0_addr_2_reg_661[2] <= zext_ln98_1_fu_216_p1[2];
        buf_0_addr_reg_641 <= zext_ln98_fu_174_p1;
        buf_1_addr_2_reg_666[0] <= zext_ln98_1_fu_216_p1[0];
buf_1_addr_2_reg_666[2] <= zext_ln98_1_fu_216_p1[2];
        buf_1_addr_reg_646 <= zext_ln98_fu_174_p1;
        tmp_6_reg_656 <= ap_sig_allocacmp_i_5[32'd3];
        tmp_reg_651 <= {{ap_sig_allocacmp_i_5[3:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        xor_ln104_1_reg_719 <= xor_ln104_1_fu_309_p2;
        xor_ln104_4_reg_724 <= xor_ln104_4_fu_353_p2;
        xor_ln104_7_reg_729 <= xor_ln104_7_fu_528_p2;
        xor_ln104_9_reg_734 <= xor_ln104_9_fu_539_p2;
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
always @ (*) begin
    if (((tmp_1_fu_156_p3 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_5 = 5'd0;
    end else begin
        ap_sig_allocacmp_i_5 = i_fu_62;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_0_address0_local = buf_0_addr_2_reg_661;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_0_address0_local = buf_0_addr_3_reg_709;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_0_address0_local = zext_ln102_1_fu_253_p1;
    end else if (((tmp_1_fu_156_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_0_address0_local = zext_ln98_1_fu_216_p1;
    end else begin
        buf_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_0_address1_local = buf_0_addr_reg_641;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_0_address1_local = buf_0_addr_1_reg_685;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_0_address1_local = zext_ln102_fu_240_p1;
    end else if (((tmp_1_fu_156_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_0_address1_local = zext_ln98_fu_174_p1;
    end else begin
        buf_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((tmp_1_fu_156_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_0_ce0_local = 1'b1;
    end else begin
        buf_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((tmp_1_fu_156_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_0_ce1_local = 1'b1;
    end else begin
        buf_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_0_d0_local = xor_ln104_7_reg_729;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_0_d0_local = xor_ln105_7_fu_584_p2;
    end else begin
        buf_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_0_d1_local = xor_ln104_1_reg_719;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_0_d1_local = xor_ln105_2_fu_398_p2;
    end else begin
        buf_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        buf_0_we0_local = 1'b1;
    end else begin
        buf_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        buf_0_we1_local = 1'b1;
    end else begin
        buf_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_1_address0_local = buf_1_addr_2_reg_666;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_1_address0_local = buf_1_addr_3_reg_714;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_1_address0_local = zext_ln102_1_fu_253_p1;
    end else if (((tmp_1_fu_156_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_1_address0_local = zext_ln98_1_fu_216_p1;
    end else begin
        buf_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_1_address1_local = buf_1_addr_reg_646;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_1_address1_local = buf_1_addr_1_reg_690;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_1_address1_local = zext_ln102_fu_240_p1;
    end else if (((tmp_1_fu_156_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_1_address1_local = zext_ln98_fu_174_p1;
    end else begin
        buf_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((tmp_1_fu_156_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_1_ce0_local = 1'b1;
    end else begin
        buf_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((tmp_1_fu_156_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_1_ce1_local = 1'b1;
    end else begin
        buf_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_1_d0_local = xor_ln104_9_reg_734;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_1_d0_local = xor_ln105_9_fu_624_p2;
    end else begin
        buf_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_1_d1_local = xor_ln104_4_reg_724;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_1_d1_local = xor_ln105_4_fu_438_p2;
    end else begin
        buf_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        buf_1_we0_local = 1'b1;
    end else begin
        buf_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        buf_1_we1_local = 1'b1;
    end else begin
        buf_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((tmp_1_fu_156_p3 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln100_fu_222_p2 = (ap_sig_allocacmp_i_5 + 5'd8);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buf_0_address0 = buf_0_address0_local;
assign buf_0_address1 = buf_0_address1_local;
assign buf_0_ce0 = buf_0_ce0_local;
assign buf_0_ce1 = buf_0_ce1_local;
assign buf_0_d0 = buf_0_d0_local;
assign buf_0_d1 = buf_0_d1_local;
assign buf_0_we0 = buf_0_we0_local;
assign buf_0_we1 = buf_0_we1_local;
assign buf_1_address0 = buf_1_address0_local;
assign buf_1_address1 = buf_1_address1_local;
assign buf_1_ce0 = buf_1_ce0_local;
assign buf_1_ce1 = buf_1_ce1_local;
assign buf_1_d0 = buf_1_d0_local;
assign buf_1_d1 = buf_1_d1_local;
assign buf_1_we0 = buf_1_we0_local;
assign buf_1_we1 = buf_1_we1_local;
assign e_2_fu_516_p2 = (xor_ln103_4_fu_477_p2 ^ buf_1_q0);
assign e_fu_269_p2 = (xor_ln103_1_fu_263_p2 ^ buf_1_q1);
assign lshr_ln_fu_164_p4 = {{ap_sig_allocacmp_i_5[3:1]}};
assign or_ln102_1_fu_206_p4 = {{{tmp_6_fu_190_p3}, {1'd1}}, {tmp_7_fu_198_p3}};
assign or_ln102_3_fu_246_p3 = {{tmp_6_reg_656}, {2'd3}};
assign or_ln_fu_233_p3 = {{tmp_reg_651}, {1'd1}};
assign select_ln55_1_fu_339_p3 = ((tmp_3_fu_319_p3[0:0] == 1'b1) ? xor_ln55_1_fu_333_p2 : shl_ln55_1_fu_327_p2);
assign select_ln55_2_fu_384_p3 = ((tmp_4_fu_364_p3[0:0] == 1'b1) ? xor_ln55_2_fu_378_p2 : shl_ln55_2_fu_372_p2);
assign select_ln55_3_fu_430_p3 = ((tmp_5_fu_410_p3[0:0] == 1'b1) ? xor_ln55_3_fu_424_p2 : shl_ln55_3_fu_418_p2);
assign select_ln55_4_fu_469_p3 = ((tmp_8_fu_449_p3[0:0] == 1'b1) ? xor_ln55_4_fu_463_p2 : shl_ln55_4_fu_457_p2);
assign select_ln55_5_fu_508_p3 = ((tmp_9_fu_488_p3[0:0] == 1'b1) ? xor_ln55_5_fu_502_p2 : shl_ln55_5_fu_496_p2);
assign select_ln55_6_fu_570_p3 = ((tmp_10_fu_550_p3[0:0] == 1'b1) ? xor_ln55_6_fu_564_p2 : shl_ln55_6_fu_558_p2);
assign select_ln55_7_fu_616_p3 = ((tmp_11_fu_596_p3[0:0] == 1'b1) ? xor_ln55_7_fu_610_p2 : shl_ln55_7_fu_604_p2);
assign select_ln55_fu_295_p3 = ((tmp_2_fu_275_p3[0:0] == 1'b1) ? xor_ln55_fu_289_p2 : shl_ln55_fu_283_p2);
assign shl_ln55_1_fu_327_p2 = xor_ln104_2_fu_314_p2 << 8'd1;
assign shl_ln55_2_fu_372_p2 = xor_ln105_fu_358_p2 << 8'd1;
assign shl_ln55_3_fu_418_p2 = xor_ln105_3_fu_405_p2 << 8'd1;
assign shl_ln55_4_fu_457_p2 = xor_ln103_3_fu_445_p2 << 8'd1;
assign shl_ln55_5_fu_496_p2 = xor_ln104_5_fu_483_p2 << 8'd1;
assign shl_ln55_6_fu_558_p2 = xor_ln105_5_fu_544_p2 << 8'd1;
assign shl_ln55_7_fu_604_p2 = xor_ln105_8_fu_591_p2 << 8'd1;
assign shl_ln55_fu_283_p2 = xor_ln103_fu_259_p2 << 8'd1;
assign tmp_10_fu_550_p3 = xor_ln105_5_fu_544_p2[32'd7];
assign tmp_11_fu_596_p3 = xor_ln105_8_fu_591_p2[32'd7];
assign tmp_1_fu_156_p3 = ap_sig_allocacmp_i_5[32'd4];
assign tmp_2_fu_275_p3 = xor_ln103_fu_259_p2[32'd7];
assign tmp_3_fu_319_p3 = xor_ln104_2_fu_314_p2[32'd7];
assign tmp_4_fu_364_p3 = xor_ln105_fu_358_p2[32'd7];
assign tmp_5_fu_410_p3 = xor_ln105_3_fu_405_p2[32'd7];
assign tmp_6_fu_190_p3 = ap_sig_allocacmp_i_5[32'd3];
assign tmp_7_fu_198_p3 = ap_sig_allocacmp_i_5[32'd1];
assign tmp_8_fu_449_p3 = xor_ln103_3_fu_445_p2[32'd7];
assign tmp_9_fu_488_p3 = xor_ln104_5_fu_483_p2[32'd7];
assign xor_ln103_1_fu_263_p2 = (xor_ln103_fu_259_p2 ^ buf_0_q1);
assign xor_ln103_3_fu_445_p2 = (b_2_reg_702 ^ a_2_reg_695);
assign xor_ln103_4_fu_477_p2 = (xor_ln103_3_fu_445_p2 ^ buf_0_q0);
assign xor_ln103_fu_259_p2 = (b_reg_678 ^ a_reg_671);
assign xor_ln104_1_fu_309_p2 = (xor_ln104_fu_303_p2 ^ a_reg_671);
assign xor_ln104_2_fu_314_p2 = (buf_0_q1 ^ b_reg_678);
assign xor_ln104_3_fu_347_p2 = (select_ln55_1_fu_339_p3 ^ e_fu_269_p2);
assign xor_ln104_4_fu_353_p2 = (xor_ln104_3_fu_347_p2 ^ b_reg_678);
assign xor_ln104_5_fu_483_p2 = (buf_0_q0 ^ b_2_reg_702);
assign xor_ln104_6_fu_522_p2 = (select_ln55_4_fu_469_p3 ^ e_2_fu_516_p2);
assign xor_ln104_7_fu_528_p2 = (xor_ln104_6_fu_522_p2 ^ a_2_reg_695);
assign xor_ln104_8_fu_533_p2 = (select_ln55_5_fu_508_p3 ^ e_2_fu_516_p2);
assign xor_ln104_9_fu_539_p2 = (xor_ln104_8_fu_533_p2 ^ b_2_reg_702);
assign xor_ln104_fu_303_p2 = (select_ln55_fu_295_p3 ^ e_fu_269_p2);
assign xor_ln105_1_fu_392_p2 = (xor_ln103_fu_259_p2 ^ select_ln55_2_fu_384_p3);
assign xor_ln105_2_fu_398_p2 = (xor_ln105_1_fu_392_p2 ^ buf_1_q1);
assign xor_ln105_3_fu_405_p2 = (buf_1_q1 ^ a_reg_671);
assign xor_ln105_4_fu_438_p2 = (xor_ln103_1_fu_263_p2 ^ select_ln55_3_fu_430_p3);
assign xor_ln105_5_fu_544_p2 = (buf_1_q0 ^ buf_0_q0);
assign xor_ln105_6_fu_578_p2 = (xor_ln103_3_fu_445_p2 ^ select_ln55_6_fu_570_p3);
assign xor_ln105_7_fu_584_p2 = (xor_ln105_6_fu_578_p2 ^ buf_1_q0);
assign xor_ln105_8_fu_591_p2 = (buf_1_q0 ^ a_2_reg_695);
assign xor_ln105_9_fu_624_p2 = (xor_ln103_4_fu_477_p2 ^ select_ln55_7_fu_616_p3);
assign xor_ln105_fu_358_p2 = (buf_1_q1 ^ buf_0_q1);
assign xor_ln55_1_fu_333_p2 = (shl_ln55_1_fu_327_p2 ^ 8'd27);
assign xor_ln55_2_fu_378_p2 = (shl_ln55_2_fu_372_p2 ^ 8'd27);
assign xor_ln55_3_fu_424_p2 = (shl_ln55_3_fu_418_p2 ^ 8'd27);
assign xor_ln55_4_fu_463_p2 = (shl_ln55_4_fu_457_p2 ^ 8'd27);
assign xor_ln55_5_fu_502_p2 = (shl_ln55_5_fu_496_p2 ^ 8'd27);
assign xor_ln55_6_fu_564_p2 = (shl_ln55_6_fu_558_p2 ^ 8'd27);
assign xor_ln55_7_fu_610_p2 = (shl_ln55_7_fu_604_p2 ^ 8'd27);
assign xor_ln55_fu_289_p2 = (shl_ln55_fu_283_p2 ^ 8'd27);
assign zext_ln102_1_fu_253_p1 = or_ln102_3_fu_246_p3;
assign zext_ln102_fu_240_p1 = or_ln_fu_233_p3;
assign zext_ln98_1_fu_216_p1 = or_ln102_1_fu_206_p4;
assign zext_ln98_fu_174_p1 = lshr_ln_fu_164_p4;
always @ (posedge ap_clk) begin
    buf_0_addr_2_reg_661[1] <= 1'b1;
    buf_1_addr_2_reg_666[1] <= 1'b1;
    buf_0_addr_1_reg_685[0] <= 1'b1;
    buf_1_addr_1_reg_690[0] <= 1'b1;
    buf_0_addr_3_reg_709[1:0] <= 2'b11;
    buf_1_addr_3_reg_714[1:0] <= 2'b11;
end
endmodule 