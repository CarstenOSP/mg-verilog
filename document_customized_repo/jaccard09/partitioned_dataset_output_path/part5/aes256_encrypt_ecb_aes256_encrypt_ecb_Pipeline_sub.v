
module aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_sub (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_address1,buf_1_ce1,buf_1_q1,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_address1,buf_0_ce1,buf_0_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
output  [2:0] buf_1_address1;
output   buf_1_ce1;
input  [7:0] buf_1_q1;
output  [2:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
output  [2:0] buf_0_address1;
output   buf_0_ce1;
input  [7:0] buf_0_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln58_fu_126_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [6:0] sbox_0_address0;
wire   [7:0] sbox_0_q0;
wire   [6:0] sbox_1_address0;
wire   [7:0] sbox_1_q0;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln58_fu_132_p1;
reg   [0:0] trunc_ln58_reg_210;
reg   [0:0] trunc_ln58_reg_210_pp0_iter1_reg;
reg   [2:0] buf_0_addr_reg_215;
reg   [2:0] buf_0_addr_reg_215_pp0_iter1_reg;
reg   [2:0] buf_1_addr_reg_221;
reg   [2:0] buf_1_addr_reg_221_pp0_iter1_reg;
wire   [0:0] trunc_ln58_2_fu_170_p1;
reg   [0:0] trunc_ln58_2_reg_227;
wire   [63:0] zext_ln58_fu_152_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln58_2_fu_184_p1;
reg   [4:0] i_fu_54;
wire   [4:0] add_ln58_fu_136_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_4;
reg    buf_0_ce1_local;
reg    buf_0_we0_local;
wire   [7:0] select_ln58_2_fu_190_p3;
reg    buf_0_ce0_local;
reg    buf_1_ce1_local;
reg    buf_1_we0_local;
reg    buf_1_ce0_local;
reg    sbox_0_ce0_local;
reg    sbox_1_ce0_local;
wire   [2:0] lshr_ln58_2_fu_142_p4;
wire   [7:0] select_ln58_fu_163_p3;
wire   [6:0] lshr_ln58_3_fu_174_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_54 = 5'd0;
#0 ap_done_reg = 1'b0;
end
aes256_encrypt_ecb_aes_expandEncKey_sbox_0_RAM_1P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 128 ),.AddressWidth( 7 ))
sbox_0_U(.clk(ap_clk),.reset(ap_rst),.address0(sbox_0_address0),.ce0(sbox_0_ce0_local),.q0(sbox_0_q0));
aes256_encrypt_ecb_aes_expandEncKey_sbox_1_RAM_1P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 128 ),.AddressWidth( 7 ))
sbox_1_U(.clk(ap_clk),.reset(ap_rst),.address0(sbox_1_address0),.ce0(sbox_1_ce0_local),.q0(sbox_1_q0));
aes256_encrypt_ecb_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln58_fu_126_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_54 <= add_ln58_fu_136_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_54 <= 5'd16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        buf_0_addr_reg_215 <= zext_ln58_fu_152_p1;
        buf_0_addr_reg_215_pp0_iter1_reg <= buf_0_addr_reg_215;
        buf_1_addr_reg_221 <= zext_ln58_fu_152_p1;
        buf_1_addr_reg_221_pp0_iter1_reg <= buf_1_addr_reg_221;
        trunc_ln58_2_reg_227 <= trunc_ln58_2_fu_170_p1;
        trunc_ln58_reg_210 <= trunc_ln58_fu_132_p1;
        trunc_ln58_reg_210_pp0_iter1_reg <= trunc_ln58_reg_210;
    end
end
always @ (*) begin
    if (((icmp_ln58_fu_126_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_4 = 5'd16;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_54;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_0_ce0_local = 1'b1;
    end else begin
        buf_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_0_ce1_local = 1'b1;
    end else begin
        buf_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln58_reg_210_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_0_we0_local = 1'b1;
    end else begin
        buf_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_1_ce0_local = 1'b1;
    end else begin
        buf_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_1_ce1_local = 1'b1;
    end else begin
        buf_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln58_reg_210_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_1_we0_local = 1'b1;
    end else begin
        buf_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sbox_0_ce0_local = 1'b1;
    end else begin
        sbox_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sbox_1_ce0_local = 1'b1;
    end else begin
        sbox_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln58_fu_136_p2 = ($signed(ap_sig_allocacmp_i_4) + $signed(5'd31));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buf_0_address0 = buf_0_addr_reg_215_pp0_iter1_reg;
assign buf_0_address1 = zext_ln58_fu_152_p1;
assign buf_0_ce0 = buf_0_ce0_local;
assign buf_0_ce1 = buf_0_ce1_local;
assign buf_0_d0 = select_ln58_2_fu_190_p3;
assign buf_0_we0 = buf_0_we0_local;
assign buf_1_address0 = buf_1_addr_reg_221_pp0_iter1_reg;
assign buf_1_address1 = zext_ln58_fu_152_p1;
assign buf_1_ce0 = buf_1_ce0_local;
assign buf_1_ce1 = buf_1_ce1_local;
assign buf_1_d0 = select_ln58_2_fu_190_p3;
assign buf_1_we0 = buf_1_we0_local;
assign icmp_ln58_fu_126_p2 = ((ap_sig_allocacmp_i_4 == 5'd0) ? 1'b1 : 1'b0);
assign lshr_ln58_2_fu_142_p4 = {{add_ln58_fu_136_p2[3:1]}};
assign lshr_ln58_3_fu_174_p4 = {{select_ln58_fu_163_p3[7:1]}};
assign sbox_0_address0 = zext_ln58_2_fu_184_p1;
assign sbox_1_address0 = zext_ln58_2_fu_184_p1;
assign select_ln58_2_fu_190_p3 = ((trunc_ln58_2_reg_227[0:0] == 1'b1) ? sbox_1_q0 : sbox_0_q0);
assign select_ln58_fu_163_p3 = ((trunc_ln58_reg_210[0:0] == 1'b1) ? buf_0_q1 : buf_1_q1);
assign trunc_ln58_2_fu_170_p1 = select_ln58_fu_163_p3[0:0];
assign trunc_ln58_fu_132_p1 = ap_sig_allocacmp_i_4[0:0];
assign zext_ln58_2_fu_184_p1 = lshr_ln58_3_fu_174_p4;
assign zext_ln58_fu_152_p1 = lshr_ln58_2_fu_142_p4;
endmodule 
