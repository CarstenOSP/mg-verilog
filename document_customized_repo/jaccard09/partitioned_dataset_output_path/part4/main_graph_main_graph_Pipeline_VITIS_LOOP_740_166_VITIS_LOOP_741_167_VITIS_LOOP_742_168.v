
module main_graph_main_graph_Pipeline_VITIS_LOOP_740_166_VITIS_LOOP_741_167_VITIS_LOOP_742_168 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v24_address1,v24_ce1,v24_we1,v24_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v24_address1;
output   v24_ce1;
output   v24_we1;
output  [6:0] v24_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln740_fu_128_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [2:0] v368_mid2_fu_214_p3;
reg   [2:0] v368_mid2_reg_352;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] add_ln743_fu_242_p2;
reg   [10:0] add_ln743_reg_357;
wire   [63:0] zext_ln743_2_fu_309_p1;
wire    ap_block_pp0_stage0;
reg   [2:0] v368_fu_62;
wire   [2:0] add_ln742_fu_248_p2;
wire    ap_loop_init;
reg   [2:0] v367_fu_66;
wire   [2:0] select_ln741_fu_222_p3;
reg   [5:0] indvar_flatten1981_fu_70;
wire   [5:0] select_ln741_1_fu_260_p3;
reg   [9:0] v366_fu_74;
wire   [9:0] select_ln740_1_fu_190_p3;
reg   [13:0] indvar_flatten1994_fu_78;
wire   [13:0] add_ln740_1_fu_134_p2;
reg    v24_we1_local;
reg    v24_ce1_local;
wire   [0:0] icmp_ln741_fu_158_p2;
wire   [0:0] icmp_ln742_fu_178_p2;
wire   [0:0] xor_ln740_fu_172_p2;
wire   [9:0] add_ln740_fu_152_p2;
wire   [2:0] select_ln740_fu_164_p3;
wire   [0:0] and_ln740_fu_184_p2;
wire   [0:0] empty_fu_208_p2;
wire   [2:0] add_ln741_fu_202_p2;
wire   [8:0] trunc_ln741_fu_198_p1;
wire   [10:0] tmp_s_fu_230_p3;
wire   [10:0] zext_ln743_fu_238_p1;
wire   [5:0] add_ln741_1_fu_254_p2;
wire   [12:0] tmp_fu_293_p3;
wire   [12:0] zext_ln743_1_fu_300_p1;
wire   [12:0] add_ln743_1_fu_303_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 v368_fu_62 = 3'd0;
#0 v367_fu_66 = 3'd0;
#0 indvar_flatten1981_fu_70 = 6'd0;
#0 v366_fu_74 = 10'd0;
#0 indvar_flatten1994_fu_78 = 14'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1981_fu_70 <= 6'd0;
        end else if (((icmp_ln740_fu_128_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1981_fu_70 <= select_ln741_1_fu_260_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1994_fu_78 <= 14'd0;
        end else if (((icmp_ln740_fu_128_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1994_fu_78 <= add_ln740_1_fu_134_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v366_fu_74 <= 10'd0;
        end else if (((icmp_ln740_fu_128_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v366_fu_74 <= select_ln740_1_fu_190_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v367_fu_66 <= 3'd0;
        end else if (((icmp_ln740_fu_128_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v367_fu_66 <= select_ln741_fu_222_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v368_fu_62 <= 3'd0;
        end else if (((icmp_ln740_fu_128_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v368_fu_62 <= add_ln742_fu_248_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln743_reg_357 <= add_ln743_fu_242_p2;
        v368_mid2_reg_352 <= v368_mid2_fu_214_p3;
    end
end
always @ (*) begin
    if (((icmp_ln740_fu_128_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v24_ce1_local = 1'b1;
    end else begin
        v24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v24_we1_local = 1'b1;
    end else begin
        v24_we1_local = 1'b0;
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
assign add_ln740_1_fu_134_p2 = (indvar_flatten1994_fu_78 + 14'd1);
assign add_ln740_fu_152_p2 = (v366_fu_74 + 10'd1);
assign add_ln741_1_fu_254_p2 = (indvar_flatten1981_fu_70 + 6'd1);
assign add_ln741_fu_202_p2 = (select_ln740_fu_164_p3 + 3'd1);
assign add_ln742_fu_248_p2 = (v368_mid2_fu_214_p3 + 3'd1);
assign add_ln743_1_fu_303_p2 = (tmp_fu_293_p3 + zext_ln743_1_fu_300_p1);
assign add_ln743_fu_242_p2 = (tmp_s_fu_230_p3 + zext_ln743_fu_238_p1);
assign and_ln740_fu_184_p2 = (xor_ln740_fu_172_p2 & icmp_ln742_fu_178_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_208_p2 = (icmp_ln741_fu_158_p2 | and_ln740_fu_184_p2);
assign icmp_ln740_fu_128_p2 = ((indvar_flatten1994_fu_78 == 14'd8192) ? 1'b1 : 1'b0);
assign icmp_ln741_fu_158_p2 = ((indvar_flatten1981_fu_70 == 6'd16) ? 1'b1 : 1'b0);
assign icmp_ln742_fu_178_p2 = ((v368_fu_62 == 3'd4) ? 1'b1 : 1'b0);
assign select_ln740_1_fu_190_p3 = ((icmp_ln741_fu_158_p2[0:0] == 1'b1) ? add_ln740_fu_152_p2 : v366_fu_74);
assign select_ln740_fu_164_p3 = ((icmp_ln741_fu_158_p2[0:0] == 1'b1) ? 3'd0 : v367_fu_66);
assign select_ln741_1_fu_260_p3 = ((icmp_ln741_fu_158_p2[0:0] == 1'b1) ? 6'd1 : add_ln741_1_fu_254_p2);
assign select_ln741_fu_222_p3 = ((and_ln740_fu_184_p2[0:0] == 1'b1) ? add_ln741_fu_202_p2 : select_ln740_fu_164_p3);
assign tmp_fu_293_p3 = {{add_ln743_reg_357}, {2'd0}};
assign tmp_s_fu_230_p3 = {{trunc_ln741_fu_198_p1}, {2'd0}};
assign trunc_ln741_fu_198_p1 = select_ln740_1_fu_190_p3[8:0];
assign v24_address1 = zext_ln743_2_fu_309_p1;
assign v24_ce1 = v24_ce1_local;
assign v24_d1 = 7'd0;
assign v24_we1 = v24_we1_local;
assign v368_mid2_fu_214_p3 = ((empty_fu_208_p2[0:0] == 1'b1) ? 3'd0 : v368_fu_62);
assign xor_ln740_fu_172_p2 = (icmp_ln741_fu_158_p2 ^ 1'd1);
assign zext_ln743_1_fu_300_p1 = v368_mid2_reg_352;
assign zext_ln743_2_fu_309_p1 = add_ln743_1_fu_303_p2;
assign zext_ln743_fu_238_p1 = select_ln741_fu_222_p3;
endmodule 
