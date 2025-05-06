
module aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_mix (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_r_address0,buf_r_ce0,buf_r_we0,buf_r_d0,buf_r_q0,buf_r_address1,buf_r_ce1,buf_r_we1,buf_r_d1,buf_r_q1);  
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
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] tmp_fu_113_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state4;
reg   [3:0] buf_r_addr_reg_390;
reg   [3:0] buf_r_addr_1_reg_395;
reg   [1:0] tmp_28_reg_400;
reg   [7:0] a_reg_406;
wire    ap_CS_fsm_state2;
reg   [7:0] b_reg_413;
reg   [3:0] buf_r_addr_2_reg_420;
reg   [3:0] buf_r_addr_3_reg_425;
wire   [7:0] xor_ln104_1_fu_244_p2;
reg   [7:0] xor_ln104_1_reg_430;
wire    ap_CS_fsm_state3;
wire   [7:0] xor_ln104_4_fu_288_p2;
reg   [7:0] xor_ln104_4_reg_435;
wire   [63:0] zext_ln100_fu_121_p1;
wire   [63:0] zext_ln102_fu_144_p1;
wire   [63:0] zext_ln102_1_fu_177_p1;
wire   [63:0] zext_ln102_2_fu_189_p1;
reg   [4:0] i_fu_60;
wire   [4:0] add_ln100_fu_159_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_7;
reg    buf_r_ce1_local;
reg   [3:0] buf_r_address1_local;
reg    buf_r_ce0_local;
reg   [3:0] buf_r_address0_local;
reg    buf_r_we1_local;
reg   [7:0] buf_r_d1_local;
wire   [7:0] xor_ln105_2_fu_333_p2;
reg    buf_r_we0_local;
reg   [7:0] buf_r_d0_local;
wire   [7:0] xor_ln105_4_fu_373_p2;
wire   [2:0] tmp_s_fu_126_p4;
wire   [3:0] or_ln2_fu_136_p3;
wire   [3:0] or_ln102_1_fu_170_p3;
wire   [3:0] or_ln102_2_fu_182_p3;
wire   [7:0] xor_ln103_fu_194_p2;
wire   [7:0] xor_ln103_1_fu_198_p2;
wire   [7:0] shl_ln55_fu_218_p2;
wire   [0:0] tmp_18_fu_210_p3;
wire   [7:0] xor_ln55_fu_224_p2;
wire   [7:0] select_ln55_fu_230_p3;
wire   [7:0] e_fu_204_p2;
wire   [7:0] xor_ln104_fu_238_p2;
wire   [7:0] xor_ln104_2_fu_249_p2;
wire   [7:0] shl_ln55_1_fu_262_p2;
wire   [0:0] tmp_19_fu_254_p3;
wire   [7:0] xor_ln55_1_fu_268_p2;
wire   [7:0] select_ln55_1_fu_274_p3;
wire   [7:0] xor_ln104_3_fu_282_p2;
wire   [7:0] xor_ln105_fu_293_p2;
wire   [7:0] shl_ln55_2_fu_307_p2;
wire   [0:0] tmp_20_fu_299_p3;
wire   [7:0] xor_ln55_2_fu_313_p2;
wire   [7:0] select_ln55_2_fu_319_p3;
wire   [7:0] xor_ln105_1_fu_327_p2;
wire   [7:0] xor_ln105_3_fu_340_p2;
wire   [7:0] shl_ln55_3_fu_353_p2;
wire   [0:0] tmp_21_fu_345_p3;
wire   [7:0] xor_ln55_3_fu_359_p2;
wire   [7:0] select_ln55_3_fu_365_p3;
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
#0 i_fu_60 = 5'd0;
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
        if ((tmp_fu_113_p3 == 1'd0)) begin
            i_fu_60 <= add_ln100_fu_159_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_60 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        a_reg_406 <= buf_r_q1;
        b_reg_413 <= buf_r_q0;
        buf_r_addr_2_reg_420[3 : 2] <= zext_ln102_1_fu_177_p1[3 : 2];
        buf_r_addr_3_reg_425[3 : 2] <= zext_ln102_2_fu_189_p1[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_r_addr_1_reg_395[3 : 1] <= zext_ln102_fu_144_p1[3 : 1];
        buf_r_addr_reg_390 <= zext_ln100_fu_121_p1;
        tmp_28_reg_400 <= {{ap_sig_allocacmp_i_7[3:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        xor_ln104_1_reg_430 <= xor_ln104_1_fu_244_p2;
        xor_ln104_4_reg_435 <= xor_ln104_4_fu_288_p2;
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
    if (((tmp_fu_113_p3 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_7 = 5'd0;
    end else begin
        ap_sig_allocacmp_i_7 = i_fu_60;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_r_address0_local = buf_r_addr_1_reg_395;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_r_address0_local = buf_r_addr_3_reg_425;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_r_address0_local = zext_ln102_2_fu_189_p1;
    end else if (((tmp_fu_113_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_r_address0_local = zext_ln102_fu_144_p1;
    end else begin
        buf_r_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_r_address1_local = buf_r_addr_reg_390;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_r_address1_local = buf_r_addr_2_reg_420;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_r_address1_local = zext_ln102_1_fu_177_p1;
    end else if (((tmp_fu_113_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        buf_r_address1_local = zext_ln100_fu_121_p1;
    end else begin
        buf_r_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | ((tmp_fu_113_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_r_ce0_local = 1'b1;
    end else begin
        buf_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | ((tmp_fu_113_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_r_ce1_local = 1'b1;
    end else begin
        buf_r_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_r_d0_local = xor_ln104_4_reg_435;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_r_d0_local = xor_ln105_4_fu_373_p2;
    end else begin
        buf_r_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_r_d1_local = xor_ln104_1_reg_430;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_r_d1_local = xor_ln105_2_fu_333_p2;
    end else begin
        buf_r_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        buf_r_we0_local = 1'b1;
    end else begin
        buf_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        buf_r_we1_local = 1'b1;
    end else begin
        buf_r_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((tmp_fu_113_p3 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
assign add_ln100_fu_159_p2 = (ap_sig_allocacmp_i_7 + 5'd4);
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
assign buf_r_address0 = buf_r_address0_local;
assign buf_r_address1 = buf_r_address1_local;
assign buf_r_ce0 = buf_r_ce0_local;
assign buf_r_ce1 = buf_r_ce1_local;
assign buf_r_d0 = buf_r_d0_local;
assign buf_r_d1 = buf_r_d1_local;
assign buf_r_we0 = buf_r_we0_local;
assign buf_r_we1 = buf_r_we1_local;
assign e_fu_204_p2 = (xor_ln103_1_fu_198_p2 ^ buf_r_q0);
assign or_ln102_1_fu_170_p3 = {{tmp_28_reg_400}, {2'd2}};
assign or_ln102_2_fu_182_p3 = {{tmp_28_reg_400}, {2'd3}};
assign or_ln2_fu_136_p3 = {{tmp_s_fu_126_p4}, {1'd1}};
assign select_ln55_1_fu_274_p3 = ((tmp_19_fu_254_p3[0:0] == 1'b1) ? xor_ln55_1_fu_268_p2 : shl_ln55_1_fu_262_p2);
assign select_ln55_2_fu_319_p3 = ((tmp_20_fu_299_p3[0:0] == 1'b1) ? xor_ln55_2_fu_313_p2 : shl_ln55_2_fu_307_p2);
assign select_ln55_3_fu_365_p3 = ((tmp_21_fu_345_p3[0:0] == 1'b1) ? xor_ln55_3_fu_359_p2 : shl_ln55_3_fu_353_p2);
assign select_ln55_fu_230_p3 = ((tmp_18_fu_210_p3[0:0] == 1'b1) ? xor_ln55_fu_224_p2 : shl_ln55_fu_218_p2);
assign shl_ln55_1_fu_262_p2 = xor_ln104_2_fu_249_p2 << 8'd1;
assign shl_ln55_2_fu_307_p2 = xor_ln105_fu_293_p2 << 8'd1;
assign shl_ln55_3_fu_353_p2 = xor_ln105_3_fu_340_p2 << 8'd1;
assign shl_ln55_fu_218_p2 = xor_ln103_fu_194_p2 << 8'd1;
assign tmp_18_fu_210_p3 = xor_ln103_fu_194_p2[32'd7];
assign tmp_19_fu_254_p3 = xor_ln104_2_fu_249_p2[32'd7];
assign tmp_20_fu_299_p3 = xor_ln105_fu_293_p2[32'd7];
assign tmp_21_fu_345_p3 = xor_ln105_3_fu_340_p2[32'd7];
assign tmp_fu_113_p3 = ap_sig_allocacmp_i_7[32'd4];
assign tmp_s_fu_126_p4 = {{ap_sig_allocacmp_i_7[3:1]}};
assign xor_ln103_1_fu_198_p2 = (xor_ln103_fu_194_p2 ^ buf_r_q1);
assign xor_ln103_fu_194_p2 = (b_reg_413 ^ a_reg_406);
assign xor_ln104_1_fu_244_p2 = (xor_ln104_fu_238_p2 ^ a_reg_406);
assign xor_ln104_2_fu_249_p2 = (buf_r_q1 ^ b_reg_413);
assign xor_ln104_3_fu_282_p2 = (select_ln55_1_fu_274_p3 ^ e_fu_204_p2);
assign xor_ln104_4_fu_288_p2 = (xor_ln104_3_fu_282_p2 ^ b_reg_413);
assign xor_ln104_fu_238_p2 = (select_ln55_fu_230_p3 ^ e_fu_204_p2);
assign xor_ln105_1_fu_327_p2 = (xor_ln103_fu_194_p2 ^ select_ln55_2_fu_319_p3);
assign xor_ln105_2_fu_333_p2 = (xor_ln105_1_fu_327_p2 ^ buf_r_q0);
assign xor_ln105_3_fu_340_p2 = (buf_r_q0 ^ a_reg_406);
assign xor_ln105_4_fu_373_p2 = (xor_ln103_1_fu_198_p2 ^ select_ln55_3_fu_365_p3);
assign xor_ln105_fu_293_p2 = (buf_r_q1 ^ buf_r_q0);
assign xor_ln55_1_fu_268_p2 = (shl_ln55_1_fu_262_p2 ^ 8'd27);
assign xor_ln55_2_fu_313_p2 = (shl_ln55_2_fu_307_p2 ^ 8'd27);
assign xor_ln55_3_fu_359_p2 = (shl_ln55_3_fu_353_p2 ^ 8'd27);
assign xor_ln55_fu_224_p2 = (shl_ln55_fu_218_p2 ^ 8'd27);
assign zext_ln100_fu_121_p1 = ap_sig_allocacmp_i_7;
assign zext_ln102_1_fu_177_p1 = or_ln102_1_fu_170_p3;
assign zext_ln102_2_fu_189_p1 = or_ln102_2_fu_182_p3;
assign zext_ln102_fu_144_p1 = or_ln2_fu_136_p3;
always @ (posedge ap_clk) begin
    buf_r_addr_1_reg_395[0] <= 1'b1;
    buf_r_addr_2_reg_420[1:0] <= 2'b10;
    buf_r_addr_3_reg_425[1:0] <= 2'b11;
end
endmodule 
