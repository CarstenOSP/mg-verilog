
module main_graph_main_graph_Pipeline_VITIS_LOOP_664_90_VITIS_LOOP_665_91_VITIS_LOOP_666_92 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v80_address1,v80_ce1,v80_we1,v80_d1,v81_address0,v81_ce0,v81_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v80_address1;
output   v80_ce1;
output   v80_we1;
output  [6:0] v80_d1;
output  [12:0] v81_address0;
output   v81_ce0;
input  [7:0] v81_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln664_fu_142_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] v290_mid2_fu_228_p3;
reg   [3:0] v290_mid2_reg_388;
wire   [9:0] add_ln670_fu_256_p2;
reg   [9:0] add_ln670_reg_393;
wire   [63:0] zext_ln670_2_fu_323_p1;
reg   [63:0] zext_ln670_2_reg_398;
wire    ap_block_pp0_stage0;
reg   [3:0] v290_fu_64;
wire   [3:0] add_ln666_fu_262_p2;
wire    ap_loop_init;
reg   [3:0] v289_fu_68;
wire   [3:0] select_ln665_fu_236_p3;
reg   [7:0] indvar_flatten474_fu_72;
wire   [7:0] select_ln665_1_fu_274_p3;
reg   [7:0] v288_fu_76;
wire   [7:0] select_ln664_1_fu_204_p3;
reg   [13:0] indvar_flatten487_fu_80;
wire   [13:0] add_ln664_1_fu_148_p2;
reg    v81_ce0_local;
reg    v80_we1_local;
wire   [6:0] v293_fu_340_p3;
reg    v80_ce1_local;
wire   [0:0] icmp_ln665_fu_172_p2;
wire   [0:0] icmp_ln666_fu_192_p2;
wire   [0:0] xor_ln664_fu_186_p2;
wire   [7:0] add_ln664_fu_166_p2;
wire   [3:0] select_ln664_fu_178_p3;
wire   [0:0] and_ln664_fu_198_p2;
wire   [0:0] empty_fu_222_p2;
wire   [3:0] add_ln665_fu_216_p2;
wire   [6:0] trunc_ln665_fu_212_p1;
wire   [9:0] tmp_s_fu_244_p3;
wire   [9:0] zext_ln670_fu_252_p1;
wire   [7:0] add_ln665_1_fu_268_p2;
wire   [12:0] tmp_fu_307_p3;
wire   [12:0] zext_ln670_1_fu_314_p1;
wire   [12:0] add_ln670_1_fu_317_p2;
wire   [0:0] v292_fu_332_p3;
wire   [6:0] trunc_ln667_fu_328_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
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
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 v290_fu_64 = 4'd0;
#0 v289_fu_68 = 4'd0;
#0 indvar_flatten474_fu_72 = 8'd0;
#0 v288_fu_76 = 8'd0;
#0 indvar_flatten487_fu_80 = 14'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten474_fu_72 <= 8'd0;
        end else if (((icmp_ln664_fu_142_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten474_fu_72 <= select_ln665_1_fu_274_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten487_fu_80 <= 14'd0;
        end else if (((icmp_ln664_fu_142_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten487_fu_80 <= add_ln664_1_fu_148_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v288_fu_76 <= 8'd0;
        end else if (((icmp_ln664_fu_142_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v288_fu_76 <= select_ln664_1_fu_204_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v289_fu_68 <= 4'd0;
        end else if (((icmp_ln664_fu_142_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v289_fu_68 <= select_ln665_fu_236_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v290_fu_64 <= 4'd0;
        end else if (((icmp_ln664_fu_142_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v290_fu_64 <= add_ln666_fu_262_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln670_reg_393 <= add_ln670_fu_256_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        v290_mid2_reg_388 <= v290_mid2_fu_228_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln670_2_reg_398[12 : 0] <= zext_ln670_2_fu_323_p1[12 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln664_fu_142_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v80_ce1_local = 1'b1;
    end else begin
        v80_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v80_we1_local = 1'b1;
    end else begin
        v80_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v81_ce0_local = 1'b1;
    end else begin
        v81_ce0_local = 1'b0;
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
assign add_ln664_1_fu_148_p2 = (indvar_flatten487_fu_80 + 14'd1);
assign add_ln664_fu_166_p2 = (v288_fu_76 + 8'd1);
assign add_ln665_1_fu_268_p2 = (indvar_flatten474_fu_72 + 8'd1);
assign add_ln665_fu_216_p2 = (select_ln664_fu_178_p3 + 4'd1);
assign add_ln666_fu_262_p2 = (v290_mid2_fu_228_p3 + 4'd1);
assign add_ln670_1_fu_317_p2 = (tmp_fu_307_p3 + zext_ln670_1_fu_314_p1);
assign add_ln670_fu_256_p2 = (tmp_s_fu_244_p3 + zext_ln670_fu_252_p1);
assign and_ln664_fu_198_p2 = (xor_ln664_fu_186_p2 & icmp_ln666_fu_192_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_222_p2 = (icmp_ln665_fu_172_p2 | and_ln664_fu_198_p2);
assign icmp_ln664_fu_142_p2 = ((indvar_flatten487_fu_80 == 14'd8192) ? 1'b1 : 1'b0);
assign icmp_ln665_fu_172_p2 = ((indvar_flatten474_fu_72 == 8'd64) ? 1'b1 : 1'b0);
assign icmp_ln666_fu_192_p2 = ((v290_fu_64 == 4'd8) ? 1'b1 : 1'b0);
assign select_ln664_1_fu_204_p3 = ((icmp_ln665_fu_172_p2[0:0] == 1'b1) ? add_ln664_fu_166_p2 : v288_fu_76);
assign select_ln664_fu_178_p3 = ((icmp_ln665_fu_172_p2[0:0] == 1'b1) ? 4'd0 : v289_fu_68);
assign select_ln665_1_fu_274_p3 = ((icmp_ln665_fu_172_p2[0:0] == 1'b1) ? 8'd1 : add_ln665_1_fu_268_p2);
assign select_ln665_fu_236_p3 = ((and_ln664_fu_198_p2[0:0] == 1'b1) ? add_ln665_fu_216_p2 : select_ln664_fu_178_p3);
assign tmp_fu_307_p3 = {{add_ln670_reg_393}, {3'd0}};
assign tmp_s_fu_244_p3 = {{trunc_ln665_fu_212_p1}, {3'd0}};
assign trunc_ln665_fu_212_p1 = select_ln664_1_fu_204_p3[6:0];
assign trunc_ln667_fu_328_p1 = v81_q0[6:0];
assign v290_mid2_fu_228_p3 = ((empty_fu_222_p2[0:0] == 1'b1) ? 4'd0 : v290_fu_64);
assign v292_fu_332_p3 = v81_q0[32'd7];
assign v293_fu_340_p3 = ((v292_fu_332_p3[0:0] == 1'b1) ? 7'd0 : trunc_ln667_fu_328_p1);
assign v80_address1 = zext_ln670_2_reg_398;
assign v80_ce1 = v80_ce1_local;
assign v80_d1 = v293_fu_340_p3;
assign v80_we1 = v80_we1_local;
assign v81_address0 = zext_ln670_2_fu_323_p1;
assign v81_ce0 = v81_ce0_local;
assign xor_ln664_fu_186_p2 = (icmp_ln665_fu_172_p2 ^ 1'd1);
assign zext_ln670_1_fu_314_p1 = v290_mid2_reg_388;
assign zext_ln670_2_fu_323_p1 = add_ln670_1_fu_317_p2;
assign zext_ln670_fu_252_p1 = select_ln665_fu_236_p3;
always @ (posedge ap_clk) begin
    zext_ln670_2_reg_398[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 
