module forward_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v178_address0,v178_ce0,v178_we0,v178_d0,v178_1_address0,v178_1_ce0,v178_1_we0,v178_1_d0,v172,v13695_0_address0,v13695_0_ce0,v13695_0_q0,v13695_1_address0,v13695_1_ce0,v13695_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v178_address0;
output   v178_ce0;
output   v178_we0;
output  [7:0] v178_d0;
output  [8:0] v178_1_address0;
output   v178_1_ce0;
output   v178_1_we0;
output  [7:0] v178_1_d0;
input  [9:0] v172;
output  [18:0] v13695_0_address0;
output   v13695_0_ce0;
input  [7:0] v13695_0_q0;
output  [18:0] v13695_1_address0;
output   v13695_1_ce0;
input  [7:0] v13695_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln436_fu_296_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [7:0] mul_i_i_i_fu_186_p3;
reg   [7:0] mul_i_i_i_reg_412;
wire   [6:0] empty_fu_194_p1;
reg   [6:0] empty_reg_417;
wire   [12:0] zext_ln436_fu_206_p1;
reg   [12:0] zext_ln436_reg_422;
wire   [5:0] select_ln436_fu_240_p3;
reg   [5:0] select_ln436_reg_427;
wire   [5:0] select_ln436_1_fu_248_p3;
reg   [5:0] select_ln436_1_reg_432;
wire   [4:0] trunc_ln436_fu_256_p1;
reg   [4:0] trunc_ln436_reg_437;
reg   [4:0] trunc_ln436_reg_437_pp0_iter1_reg;
reg   [3:0] lshr_ln_i_reg_442;
reg   [3:0] lshr_ln_i_reg_442_pp0_iter1_reg;
wire   [0:0] xor_ln437_fu_290_p2;
reg   [0:0] xor_ln437_reg_448;
reg   [0:0] icmp_ln436_reg_453;
reg   [0:0] ap_phi_mux_icmp_ln43724_i_phi_fu_169_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln440_fu_349_p1;
wire   [63:0] zext_ln442_2_fu_374_p1;
wire   [63:0] zext_ln442_fu_385_p1;
reg   [8:0] indvar_flatten21_i_fu_94;
wire   [8:0] add_ln436_1_fu_276_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten21_i_load;
reg   [5:0] v16122_i_fu_98;
reg   [5:0] ap_sig_allocacmp_v16122_i_load;
reg   [5:0] v16223_i_fu_102;
wire   [5:0] add_ln437_fu_270_p2;
reg   [5:0] ap_sig_allocacmp_v16223_i_load;
reg    v13695_0_ce0_local;
reg    v13695_1_ce0_local;
reg    v178_1_we0_local;
reg    v178_1_ce0_local;
reg    v178_we0_local;
reg    v178_ce0_local;
wire   [2:0] tmp_i_fu_176_p4;
wire   [11:0] rem_i_i_fu_198_p3;
wire   [5:0] add_ln436_fu_234_p2;
wire   [0:0] tmp_fu_282_p3;
wire   [7:0] zext_ln436_1_fu_317_p1;
wire   [7:0] empty_275_fu_320_p2;
wire   [12:0] zext_ln437_fu_333_p1;
wire   [18:0] tmp_201_i_fu_341_p4;
wire   [12:0] add_ln439_fu_336_p2;
wire   [11:0] lshr_ln31_i_fu_354_p4;
wire   [18:0] tmp_198_i_fu_325_p3;
wire   [18:0] zext_ln442_1_fu_364_p1;
wire   [18:0] add_ln442_fu_368_p2;
wire   [8:0] tmp_199_i_fu_379_p3;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_322;
reg    ap_condition_112;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten21_i_fu_94 = 9'd0;
#0 v16122_i_fu_98 = 6'd0;
#0 v16223_i_fu_102 = 6'd0;
end
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_112)) begin
        indvar_flatten21_i_fu_94 <= add_ln436_1_fu_276_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_112)) begin
    v16122_i_fu_98 <= select_ln436_1_fu_248_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_112)) begin
    v16223_i_fu_102 <= add_ln437_fu_270_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_reg_417 <= empty_fu_194_p1;
        icmp_ln436_reg_453 <= icmp_ln436_fu_296_p2;
        lshr_ln_i_reg_442 <= {{select_ln436_fu_240_p3[4:1]}};
        lshr_ln_i_reg_442_pp0_iter1_reg <= lshr_ln_i_reg_442;
        mul_i_i_i_reg_412[7 : 5] <= mul_i_i_i_fu_186_p3[7 : 5];
        select_ln436_1_reg_432 <= select_ln436_1_fu_248_p3;
        select_ln436_reg_427 <= select_ln436_fu_240_p3;
        trunc_ln436_reg_437 <= trunc_ln436_fu_256_p1;
        trunc_ln436_reg_437_pp0_iter1_reg <= trunc_ln436_reg_437;
        zext_ln436_reg_422[11 : 5] <= zext_ln436_fu_206_p1[11 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln437_reg_448 <= xor_ln437_fu_290_p2;
    end
end
always @ (*) begin
    if (((icmp_ln436_fu_296_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_322)) begin
            ap_phi_mux_icmp_ln43724_i_phi_fu_169_p4 = xor_ln437_reg_448;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln43724_i_phi_fu_169_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln43724_i_phi_fu_169_p4 = xor_ln437_reg_448;
        end
    end else begin
        ap_phi_mux_icmp_ln43724_i_phi_fu_169_p4 = xor_ln437_reg_448;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten21_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten21_i_load = indvar_flatten21_i_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v16122_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v16122_i_load = v16122_i_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v16223_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v16223_i_load = v16223_i_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13695_0_ce0_local = 1'b1;
    end else begin
        v13695_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13695_1_ce0_local = 1'b1;
    end else begin
        v13695_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v178_1_ce0_local = 1'b1;
    end else begin
        v178_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v178_1_we0_local = 1'b1;
    end else begin
        v178_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v178_ce0_local = 1'b1;
    end else begin
        v178_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v178_we0_local = 1'b1;
    end else begin
        v178_we0_local = 1'b0;
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
assign add_ln436_1_fu_276_p2 = (ap_sig_allocacmp_indvar_flatten21_i_load + 9'd1);
assign add_ln436_fu_234_p2 = (ap_sig_allocacmp_v16122_i_load + 6'd1);
assign add_ln437_fu_270_p2 = (select_ln436_fu_240_p3 + 6'd2);
assign add_ln439_fu_336_p2 = (zext_ln436_reg_422 + zext_ln437_fu_333_p1);
assign add_ln442_fu_368_p2 = (tmp_198_i_fu_325_p3 + zext_ln442_1_fu_364_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_112 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_322 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln436_reg_453 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_275_fu_320_p2 = (mul_i_i_i_reg_412 + zext_ln436_1_fu_317_p1);
assign empty_fu_194_p1 = v172[6:0];
assign icmp_ln436_fu_296_p2 = ((ap_sig_allocacmp_indvar_flatten21_i_load == 9'd511) ? 1'b1 : 1'b0);
assign lshr_ln31_i_fu_354_p4 = {{add_ln439_fu_336_p2[12:1]}};
assign mul_i_i_i_fu_186_p3 = {{tmp_i_fu_176_p4}, {5'd0}};
assign rem_i_i_fu_198_p3 = {{empty_fu_194_p1}, {5'd0}};
assign select_ln436_1_fu_248_p3 = ((ap_phi_mux_icmp_ln43724_i_phi_fu_169_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v16122_i_load : add_ln436_fu_234_p2);
assign select_ln436_fu_240_p3 = ((ap_phi_mux_icmp_ln43724_i_phi_fu_169_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v16223_i_load : 6'd0);
assign tmp_198_i_fu_325_p3 = {{empty_275_fu_320_p2}, {11'd0}};
assign tmp_199_i_fu_379_p3 = {{trunc_ln436_reg_437_pp0_iter1_reg}, {lshr_ln_i_reg_442_pp0_iter1_reg}};
assign tmp_201_i_fu_341_p4 = {{{empty_275_fu_320_p2}, {empty_reg_417}}, {lshr_ln_i_reg_442}};
assign tmp_fu_282_p3 = add_ln437_fu_270_p2[32'd5];
assign tmp_i_fu_176_p4 = {{v172[9:7]}};
assign trunc_ln436_fu_256_p1 = select_ln436_1_fu_248_p3[4:0];
assign v13695_0_address0 = zext_ln440_fu_349_p1;
assign v13695_0_ce0 = v13695_0_ce0_local;
assign v13695_1_address0 = zext_ln442_2_fu_374_p1;
assign v13695_1_ce0 = v13695_1_ce0_local;
assign v178_1_address0 = zext_ln442_fu_385_p1;
assign v178_1_ce0 = v178_1_ce0_local;
assign v178_1_d0 = v13695_0_q0;
assign v178_1_we0 = v178_1_we0_local;
assign v178_address0 = zext_ln442_fu_385_p1;
assign v178_ce0 = v178_ce0_local;
assign v178_d0 = v13695_1_q0;
assign v178_we0 = v178_we0_local;
assign xor_ln437_fu_290_p2 = (tmp_fu_282_p3 ^ 1'd1);
assign zext_ln436_1_fu_317_p1 = select_ln436_1_reg_432;
assign zext_ln436_fu_206_p1 = rem_i_i_fu_198_p3;
assign zext_ln437_fu_333_p1 = select_ln436_reg_427;
assign zext_ln440_fu_349_p1 = tmp_201_i_fu_341_p4;
assign zext_ln442_1_fu_364_p1 = lshr_ln31_i_fu_354_p4;
assign zext_ln442_2_fu_374_p1 = add_ln442_fu_368_p2;
assign zext_ln442_fu_385_p1 = tmp_199_i_fu_379_p3;
always @ (posedge ap_clk) begin
    mul_i_i_i_reg_412[4:0] <= 5'b00000;
    zext_ln436_reg_422[4:0] <= 5'b00000;
    zext_ln436_reg_422[12] <= 1'b0;
end
endmodule 