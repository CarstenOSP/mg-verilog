module forward_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem5,shl_ln,v1696_address0,v1696_ce0,v1696_we0,v1696_d0,v1696_1_address0,v1696_1_ce0,v1696_1_we0,v1696_1_d0,mul_i,v9189_0_address0,v9189_0_ce0,v9189_0_q0,v9189_1_address0,v9189_1_ce0,v9189_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] rem5;
input  [7:0] shl_ln;
output  [8:0] v1696_address0;
output   v1696_ce0;
output   v1696_we0;
output  [7:0] v1696_d0;
output  [8:0] v1696_1_address0;
output   v1696_1_ce0;
output   v1696_1_we0;
output  [7:0] v1696_1_d0;
input  [7:0] mul_i;
output  [15:0] v9189_0_address0;
output   v9189_0_ce0;
input  [7:0] v9189_0_q0;
output  [15:0] v9189_1_address0;
output   v9189_1_ce0;
input  [7:0] v9189_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln2395_fu_207_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln239627_reg_172;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln2395_reg_410;
reg   [0:0] icmp_ln2395_reg_410_pp0_iter1_reg;
wire   [8:0] add_ln2401_fu_306_p2;
reg   [8:0] add_ln2401_reg_414;
wire   [0:0] icmp_ln2396_fu_353_p2;
reg   [0:0] icmp_ln2396_reg_429;
reg   [0:0] ap_phi_mux_icmp_ln239627_phi_fu_175_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln2399_fu_329_p1;
wire   [63:0] zext_ln2401_1_fu_342_p1;
wire   [63:0] zext_ln2401_2_fu_369_p1;
reg   [8:0] indvar_flatten24_fu_88;
wire   [8:0] add_ln2395_1_fu_201_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten24_load;
reg   [5:0] v166725_fu_92;
wire   [5:0] v1667_fu_238_p3;
reg   [5:0] v166826_fu_96;
wire   [5:0] v1668_fu_347_p2;
reg    v9189_0_ce0_local;
reg    v9189_1_ce0_local;
reg    v1696_1_we0_local;
reg    v1696_1_ce0_local;
reg    v1696_we0_local;
reg    v1696_ce0_local;
wire   [5:0] add_ln2395_fu_224_p2;
wire   [4:0] lshr_ln_fu_250_p4;
wire   [3:0] lshr_ln_cast_fu_260_p4;
wire   [8:0] zext_ln2395_fu_246_p1;
wire   [7:0] zext_ln2395_1_fu_270_p1;
wire   [8:0] empty_fu_282_p2;
wire   [5:0] select_ln2395_fu_230_p3;
wire   [8:0] tmp_s_fu_274_p3;
wire   [8:0] zext_ln2401_fu_302_p1;
wire   [7:0] zext_ln2396_fu_312_p1;
wire   [7:0] empty_352_fu_287_p2;
wire   [7:0] add_ln2398_fu_316_p2;
wire   [15:0] tmp_52_fu_321_p3;
wire   [7:0] tmp_51_fu_292_p4;
wire   [15:0] tmp_53_fu_334_p3;
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
#0 indvar_flatten24_fu_88 = 9'd0;
#0 v166725_fu_92 = 6'd0;
#0 v166826_fu_96 = 6'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((icmp_ln2395_reg_410_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln239627_reg_172 <= icmp_ln2396_reg_429;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln239627_reg_172 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten24_fu_88 <= add_ln2395_1_fu_201_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten24_fu_88 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v166725_fu_92 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v166725_fu_92 <= v1667_fu_238_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v166826_fu_96 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v166826_fu_96 <= v1668_fu_347_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln2401_reg_414 <= add_ln2401_fu_306_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln2395_reg_410 <= icmp_ln2395_fu_207_p2;
        icmp_ln2395_reg_410_pp0_iter1_reg <= icmp_ln2395_reg_410;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln2396_reg_429 <= icmp_ln2396_fu_353_p2;
    end
end
always @ (*) begin
    if (((icmp_ln2395_fu_207_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln2395_reg_410_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln239627_phi_fu_175_p4 = icmp_ln2396_reg_429;
    end else begin
        ap_phi_mux_icmp_ln239627_phi_fu_175_p4 = icmp_ln239627_reg_172;
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
        ap_sig_allocacmp_indvar_flatten24_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten24_load = indvar_flatten24_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1696_1_ce0_local = 1'b1;
    end else begin
        v1696_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1696_1_we0_local = 1'b1;
    end else begin
        v1696_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1696_ce0_local = 1'b1;
    end else begin
        v1696_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1696_we0_local = 1'b1;
    end else begin
        v1696_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9189_0_ce0_local = 1'b1;
    end else begin
        v9189_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9189_1_ce0_local = 1'b1;
    end else begin
        v9189_1_ce0_local = 1'b0;
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
assign add_ln2395_1_fu_201_p2 = (ap_sig_allocacmp_indvar_flatten24_load + 9'd1);
assign add_ln2395_fu_224_p2 = (v166725_fu_92 + 6'd2);
assign add_ln2398_fu_316_p2 = (mul_i + zext_ln2396_fu_312_p1);
assign add_ln2401_fu_306_p2 = (tmp_s_fu_274_p3 + zext_ln2401_fu_302_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_352_fu_287_p2 = (shl_ln + zext_ln2395_1_fu_270_p1);
assign empty_fu_282_p2 = (rem5 + zext_ln2395_fu_246_p1);
assign icmp_ln2395_fu_207_p2 = ((ap_sig_allocacmp_indvar_flatten24_load == 9'd511) ? 1'b1 : 1'b0);
assign icmp_ln2396_fu_353_p2 = ((v1668_fu_347_p2 == 6'd32) ? 1'b1 : 1'b0);
assign lshr_ln_cast_fu_260_p4 = {{v1667_fu_238_p3[4:1]}};
assign lshr_ln_fu_250_p4 = {{v1667_fu_238_p3[5:1]}};
assign select_ln2395_fu_230_p3 = ((ap_phi_mux_icmp_ln239627_phi_fu_175_p4[0:0] == 1'b1) ? 6'd0 : v166826_fu_96);
assign tmp_51_fu_292_p4 = {{empty_fu_282_p2[8:1]}};
assign tmp_52_fu_321_p3 = {{empty_352_fu_287_p2}, {add_ln2398_fu_316_p2}};
assign tmp_53_fu_334_p3 = {{tmp_51_fu_292_p4}, {add_ln2398_fu_316_p2}};
assign tmp_s_fu_274_p3 = {{lshr_ln_cast_fu_260_p4}, {5'd0}};
assign v1667_fu_238_p3 = ((ap_phi_mux_icmp_ln239627_phi_fu_175_p4[0:0] == 1'b1) ? add_ln2395_fu_224_p2 : v166725_fu_92);
assign v1668_fu_347_p2 = (select_ln2395_fu_230_p3 + 6'd1);
assign v1696_1_address0 = zext_ln2401_2_fu_369_p1;
assign v1696_1_ce0 = v1696_1_ce0_local;
assign v1696_1_d0 = v9189_0_q0;
assign v1696_1_we0 = v1696_1_we0_local;
assign v1696_address0 = zext_ln2401_2_fu_369_p1;
assign v1696_ce0 = v1696_ce0_local;
assign v1696_d0 = v9189_1_q0;
assign v1696_we0 = v1696_we0_local;
assign v9189_0_address0 = zext_ln2399_fu_329_p1;
assign v9189_0_ce0 = v9189_0_ce0_local;
assign v9189_1_address0 = zext_ln2401_1_fu_342_p1;
assign v9189_1_ce0 = v9189_1_ce0_local;
assign zext_ln2395_1_fu_270_p1 = lshr_ln_fu_250_p4;
assign zext_ln2395_fu_246_p1 = v1667_fu_238_p3;
assign zext_ln2396_fu_312_p1 = select_ln2395_fu_230_p3;
assign zext_ln2399_fu_329_p1 = tmp_52_fu_321_p3;
assign zext_ln2401_1_fu_342_p1 = tmp_53_fu_334_p3;
assign zext_ln2401_2_fu_369_p1 = add_ln2401_reg_414;
assign zext_ln2401_fu_302_p1 = select_ln2395_fu_230_p3;
endmodule 