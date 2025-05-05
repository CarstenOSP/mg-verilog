module main_graph_main_graph_Pipeline_VITIS_LOOP_565_79_VITIS_LOOP_566_80_VITIS_LOOP_567_81 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v71_address1,v71_ce1,v71_we1,v71_d1,v71_1_address1,v71_1_ce1,v71_1_we1,v71_1_d1,v72_address0,v72_ce0,v72_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v71_address1;
output   v71_ce1;
output   v71_we1;
output  [6:0] v71_d1;
output  [14:0] v71_1_address1;
output   v71_1_ce1;
output   v71_1_we1;
output  [6:0] v71_1_d1;
output  [15:0] v72_address0;
output   v72_ce0;
input  [7:0] v72_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln565_fu_171_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln565_reg_465;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] trunc_ln566_fu_246_p1;
reg   [5:0] trunc_ln566_reg_469;
wire   [5:0] v242_mid2_fu_262_p3;
reg   [5:0] v242_mid2_reg_474;
wire   [5:0] select_ln566_fu_270_p3;
reg   [5:0] select_ln566_reg_480;
wire   [0:0] trunc_ln565_fu_278_p1;
reg   [0:0] trunc_ln565_reg_486;
reg   [0:0] trunc_ln565_reg_486_pp0_iter2_reg;
reg   [4:0] lshr_ln_reg_490;
wire   [14:0] add_ln571_1_fu_386_p2;
reg   [14:0] add_ln571_1_reg_495;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln568_fu_398_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln571_4_fu_403_p1;
reg   [5:0] v242_fu_76;
wire   [5:0] add_ln567_fu_292_p2;
wire    ap_loop_init;
reg   [5:0] v241_fu_80;
reg   [11:0] indvar_flatten849_fu_84;
wire   [11:0] select_ln566_1_fu_304_p3;
reg   [6:0] v240_fu_88;
wire   [6:0] select_ln565_1_fu_238_p3;
reg   [16:0] indvar_flatten862_fu_92;
wire   [16:0] add_ln565_1_fu_177_p2;
reg   [16:0] ap_sig_allocacmp_indvar_flatten862_load;
reg    v72_ce0_local;
reg    v71_we1_local;
wire   [6:0] v245_fu_420_p3;
reg    v71_ce1_local;
reg    v71_1_we1_local;
reg    v71_1_ce1_local;
wire   [0:0] icmp_ln566_fu_206_p2;
wire   [0:0] icmp_ln567_fu_226_p2;
wire   [0:0] xor_ln565_fu_220_p2;
wire   [6:0] add_ln565_fu_200_p2;
wire   [5:0] select_ln565_fu_212_p3;
wire   [0:0] and_ln565_fu_232_p2;
wire   [0:0] empty_fu_256_p2;
wire   [5:0] add_ln566_fu_250_p2;
wire   [11:0] add_ln566_1_fu_298_p2;
wire   [9:0] tmp_51_fu_339_p3;
wire   [9:0] zext_ln571_1_fu_349_p1;
wire   [9:0] add_ln571_fu_352_p2;
wire   [10:0] tmp_50_fu_332_p3;
wire   [10:0] zext_ln571_fu_346_p1;
wire   [10:0] add_ln568_fu_366_p2;
wire   [14:0] tmp_fu_358_p3;
wire   [14:0] zext_ln571_3_fu_383_p1;
wire   [15:0] tmp_83_fu_372_p3;
wire   [15:0] zext_ln571_2_fu_380_p1;
wire   [15:0] add_ln568_1_fu_392_p2;
wire   [0:0] v244_fu_412_p3;
wire   [6:0] trunc_ln568_fu_408_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
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
#0 v242_fu_76 = 6'd0;
#0 v241_fu_80 = 6'd0;
#0 indvar_flatten849_fu_84 = 12'd0;
#0 v240_fu_88 = 7'd0;
#0 indvar_flatten862_fu_92 = 17'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            indvar_flatten849_fu_84 <= 12'd0;
        end else if (((icmp_ln565_reg_465 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten849_fu_84 <= select_ln566_1_fu_304_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln565_fu_171_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten862_fu_92 <= add_ln565_1_fu_177_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten862_fu_92 <= 17'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v240_fu_88 <= 7'd0;
        end else if (((icmp_ln565_reg_465 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v240_fu_88 <= select_ln565_1_fu_238_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v241_fu_80 <= 6'd0;
        end else if (((icmp_ln565_reg_465 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v241_fu_80 <= select_ln566_fu_270_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v242_fu_76 <= 6'd0;
        end else if (((icmp_ln565_reg_465 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v242_fu_76 <= add_ln567_fu_292_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln571_1_reg_495 <= add_ln571_1_fu_386_p2;
        trunc_ln565_reg_486_pp0_iter2_reg <= trunc_ln565_reg_486;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln565_reg_465 <= icmp_ln565_fu_171_p2;
        lshr_ln_reg_490 <= {{select_ln565_1_fu_238_p3[5:1]}};
        select_ln566_reg_480 <= select_ln566_fu_270_p3;
        trunc_ln565_reg_486 <= trunc_ln565_fu_278_p1;
        trunc_ln566_reg_469 <= trunc_ln566_fu_246_p1;
        v242_mid2_reg_474 <= v242_mid2_fu_262_p3;
    end
end
always @ (*) begin
    if (((icmp_ln565_fu_171_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln565_reg_465 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten862_load = 17'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten862_load = indvar_flatten862_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v71_1_ce1_local = 1'b1;
    end else begin
        v71_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln565_reg_486_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v71_1_we1_local = 1'b1;
    end else begin
        v71_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v71_ce1_local = 1'b1;
    end else begin
        v71_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln565_reg_486_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v71_we1_local = 1'b1;
    end else begin
        v71_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v72_ce0_local = 1'b1;
    end else begin
        v72_ce0_local = 1'b0;
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
assign add_ln565_1_fu_177_p2 = (ap_sig_allocacmp_indvar_flatten862_load + 17'd1);
assign add_ln565_fu_200_p2 = (v240_fu_88 + 7'd1);
assign add_ln566_1_fu_298_p2 = (indvar_flatten849_fu_84 + 12'd1);
assign add_ln566_fu_250_p2 = (select_ln565_fu_212_p3 + 6'd1);
assign add_ln567_fu_292_p2 = (v242_mid2_fu_262_p3 + 6'd1);
assign add_ln568_1_fu_392_p2 = (tmp_83_fu_372_p3 + zext_ln571_2_fu_380_p1);
assign add_ln568_fu_366_p2 = (tmp_50_fu_332_p3 + zext_ln571_fu_346_p1);
assign add_ln571_1_fu_386_p2 = (tmp_fu_358_p3 + zext_ln571_3_fu_383_p1);
assign add_ln571_fu_352_p2 = (tmp_51_fu_339_p3 + zext_ln571_1_fu_349_p1);
assign and_ln565_fu_232_p2 = (xor_ln565_fu_220_p2 & icmp_ln567_fu_226_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_256_p2 = (icmp_ln566_fu_206_p2 | and_ln565_fu_232_p2);
assign icmp_ln565_fu_171_p2 = ((ap_sig_allocacmp_indvar_flatten862_load == 17'd65536) ? 1'b1 : 1'b0);
assign icmp_ln566_fu_206_p2 = ((indvar_flatten849_fu_84 == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln567_fu_226_p2 = ((v242_fu_76 == 6'd32) ? 1'b1 : 1'b0);
assign select_ln565_1_fu_238_p3 = ((icmp_ln566_fu_206_p2[0:0] == 1'b1) ? add_ln565_fu_200_p2 : v240_fu_88);
assign select_ln565_fu_212_p3 = ((icmp_ln566_fu_206_p2[0:0] == 1'b1) ? 6'd0 : v241_fu_80);
assign select_ln566_1_fu_304_p3 = ((icmp_ln566_fu_206_p2[0:0] == 1'b1) ? 12'd1 : add_ln566_1_fu_298_p2);
assign select_ln566_fu_270_p3 = ((and_ln565_fu_232_p2[0:0] == 1'b1) ? add_ln566_fu_250_p2 : select_ln565_fu_212_p3);
assign tmp_50_fu_332_p3 = {{trunc_ln566_reg_469}, {5'd0}};
assign tmp_51_fu_339_p3 = {{lshr_ln_reg_490}, {5'd0}};
assign tmp_83_fu_372_p3 = {{add_ln568_fu_366_p2}, {5'd0}};
assign tmp_fu_358_p3 = {{add_ln571_fu_352_p2}, {5'd0}};
assign trunc_ln565_fu_278_p1 = select_ln565_1_fu_238_p3[0:0];
assign trunc_ln566_fu_246_p1 = select_ln565_1_fu_238_p3[5:0];
assign trunc_ln568_fu_408_p1 = v72_q0[6:0];
assign v242_mid2_fu_262_p3 = ((empty_fu_256_p2[0:0] == 1'b1) ? 6'd0 : v242_fu_76);
assign v244_fu_412_p3 = v72_q0[32'd7];
assign v245_fu_420_p3 = ((v244_fu_412_p3[0:0] == 1'b1) ? 7'd0 : trunc_ln568_fu_408_p1);
assign v71_1_address1 = zext_ln571_4_fu_403_p1;
assign v71_1_ce1 = v71_1_ce1_local;
assign v71_1_d1 = v245_fu_420_p3;
assign v71_1_we1 = v71_1_we1_local;
assign v71_address1 = zext_ln571_4_fu_403_p1;
assign v71_ce1 = v71_ce1_local;
assign v71_d1 = v245_fu_420_p3;
assign v71_we1 = v71_we1_local;
assign v72_address0 = zext_ln568_fu_398_p1;
assign v72_ce0 = v72_ce0_local;
assign xor_ln565_fu_220_p2 = (icmp_ln566_fu_206_p2 ^ 1'd1);
assign zext_ln568_fu_398_p1 = add_ln568_1_fu_392_p2;
assign zext_ln571_1_fu_349_p1 = select_ln566_reg_480;
assign zext_ln571_2_fu_380_p1 = v242_mid2_reg_474;
assign zext_ln571_3_fu_383_p1 = v242_mid2_reg_474;
assign zext_ln571_4_fu_403_p1 = add_ln571_1_reg_495;
assign zext_ln571_fu_346_p1 = select_ln566_reg_480;
endmodule 