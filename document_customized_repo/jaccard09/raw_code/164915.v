module forward_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12304_1_proc175 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7929_address0,v7929_ce0,v7929_we0,v7929_d0,v7929_1_address0,v7929_1_ce0,v7929_1_we0,v7929_1_d0,v7929_2_address0,v7929_2_ce0,v7929_2_we0,v7929_2_d0,v7929_3_address0,v7929_3_ce0,v7929_3_we0,v7929_3_d0,v7928_3_address0,v7928_3_ce0,v7928_3_q0,v7927_3_address0,v7927_3_ce0,v7927_3_q0,v7928_2_address0,v7928_2_ce0,v7928_2_q0,v7928_1_address0,v7928_1_ce0,v7928_1_q0,v7928_address0,v7928_ce0,v7928_q0,v7927_2_address0,v7927_2_ce0,v7927_2_q0,v7927_1_address0,v7927_1_ce0,v7927_1_q0,v7927_address0,v7927_ce0,v7927_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] v7929_address0;
output   v7929_ce0;
output   v7929_we0;
output  [7:0] v7929_d0;
output  [7:0] v7929_1_address0;
output   v7929_1_ce0;
output   v7929_1_we0;
output  [7:0] v7929_1_d0;
output  [7:0] v7929_2_address0;
output   v7929_2_ce0;
output   v7929_2_we0;
output  [7:0] v7929_2_d0;
output  [7:0] v7929_3_address0;
output   v7929_3_ce0;
output   v7929_3_we0;
output  [7:0] v7929_3_d0;
output  [7:0] v7928_3_address0;
output   v7928_3_ce0;
input  [7:0] v7928_3_q0;
output  [7:0] v7927_3_address0;
output   v7927_3_ce0;
input  [7:0] v7927_3_q0;
output  [7:0] v7928_2_address0;
output   v7928_2_ce0;
input  [7:0] v7928_2_q0;
output  [7:0] v7928_1_address0;
output   v7928_1_ce0;
input  [7:0] v7928_1_q0;
output  [7:0] v7928_address0;
output   v7928_ce0;
input  [7:0] v7928_q0;
output  [7:0] v7927_2_address0;
output   v7927_2_ce0;
input  [7:0] v7927_2_q0;
output  [7:0] v7927_1_address0;
output   v7927_1_ce0;
input  [7:0] v7927_1_q0;
output  [7:0] v7927_address0;
output   v7927_ce0;
input  [7:0] v7927_q0;
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
wire   [0:0] icmp_ln12304_fu_338_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
reg   [3:0] tmp_reg_485;
reg   [3:0] lshr_ln_reg_491;
wire   [0:0] icmp_ln12305_fu_332_p2;
reg   [0:0] icmp_ln12305_reg_496;
reg   [0:0] icmp_ln12304_reg_501;
wire   [63:0] zext_ln12322_2_fu_392_p1;
reg   [63:0] zext_ln12322_2_reg_505;
reg   [0:0] ap_phi_mux_icmp_ln1230572_phi_fu_247_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [7:0] indvar_flatten69_fu_76;
wire   [7:0] add_ln12304_1_fu_326_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten69_load;
reg   [4:0] v788070_fu_80;
wire   [4:0] v7880_fu_292_p3;
reg   [4:0] ap_sig_allocacmp_v788070_load;
reg   [4:0] v788171_fu_84;
wire   [4:0] v7881_fu_320_p2;
reg   [4:0] ap_sig_allocacmp_v788171_load;
reg    v7928_3_ce0_local;
reg    v7927_3_ce0_local;
reg    v7928_2_ce0_local;
reg    v7928_1_ce0_local;
reg    v7928_ce0_local;
reg    v7927_2_ce0_local;
reg    v7927_1_ce0_local;
reg    v7927_ce0_local;
reg    v7929_3_we0_local;
wire   [7:0] select_ln12310_fu_410_p3;
reg    v7929_3_ce0_local;
reg    v7929_2_we0_local;
wire   [7:0] select_ln12314_fu_425_p3;
reg    v7929_2_ce0_local;
reg    v7929_1_we0_local;
wire   [7:0] select_ln12318_fu_440_p3;
reg    v7929_1_ce0_local;
reg    v7929_we0_local;
wire   [7:0] select_ln12322_fu_455_p3;
reg    v7929_ce0_local;
wire   [4:0] add_ln12304_fu_278_p2;
wire   [4:0] select_ln12304_fu_284_p3;
wire   [4:0] tmp_395_fu_366_p3;
wire   [7:0] p_shl_fu_359_p3;
wire   [7:0] zext_ln12322_fu_373_p1;
wire   [7:0] sub_ln12322_fu_377_p2;
wire   [7:0] zext_ln12322_1_fu_383_p1;
wire   [7:0] add_ln12322_fu_386_p2;
wire   [0:0] icmp_ln224_fu_404_p2;
wire   [0:0] icmp_ln224_2_fu_419_p2;
wire   [0:0] icmp_ln224_3_fu_434_p2;
wire   [0:0] icmp_ln224_4_fu_449_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_388;
reg    ap_condition_147;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten69_fu_76 = 8'd0;
#0 v788070_fu_80 = 5'd0;
#0 v788171_fu_84 = 5'd0;
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
    if ((1'b1 == ap_condition_147)) begin
        indvar_flatten69_fu_76 <= add_ln12304_1_fu_326_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_147)) begin
    v788070_fu_80 <= v7880_fu_292_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_147)) begin
    v788171_fu_84 <= v7881_fu_320_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln12304_reg_501 <= icmp_ln12304_fu_338_p2;
        lshr_ln_reg_491 <= {{select_ln12304_fu_284_p3[4:1]}};
        tmp_reg_485 <= {{v7880_fu_292_p3[4:1]}};
        zext_ln12322_2_reg_505[7 : 0] <= zext_ln12322_2_fu_392_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12305_reg_496 <= icmp_ln12305_fu_332_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12304_fu_338_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_388)) begin
            ap_phi_mux_icmp_ln1230572_phi_fu_247_p4 = icmp_ln12305_reg_496;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1230572_phi_fu_247_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1230572_phi_fu_247_p4 = icmp_ln12305_reg_496;
        end
    end else begin
        ap_phi_mux_icmp_ln1230572_phi_fu_247_p4 = icmp_ln12305_reg_496;
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
        ap_sig_allocacmp_indvar_flatten69_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten69_load = indvar_flatten69_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v788070_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v788070_load = v788070_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v788171_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v788171_load = v788171_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7927_1_ce0_local = 1'b1;
    end else begin
        v7927_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7927_2_ce0_local = 1'b1;
    end else begin
        v7927_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7927_3_ce0_local = 1'b1;
    end else begin
        v7927_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7927_ce0_local = 1'b1;
    end else begin
        v7927_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7928_1_ce0_local = 1'b1;
    end else begin
        v7928_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7928_2_ce0_local = 1'b1;
    end else begin
        v7928_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7928_3_ce0_local = 1'b1;
    end else begin
        v7928_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7928_ce0_local = 1'b1;
    end else begin
        v7928_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7929_1_ce0_local = 1'b1;
    end else begin
        v7929_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7929_1_we0_local = 1'b1;
    end else begin
        v7929_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7929_2_ce0_local = 1'b1;
    end else begin
        v7929_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7929_2_we0_local = 1'b1;
    end else begin
        v7929_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7929_3_ce0_local = 1'b1;
    end else begin
        v7929_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7929_3_we0_local = 1'b1;
    end else begin
        v7929_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7929_ce0_local = 1'b1;
    end else begin
        v7929_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7929_we0_local = 1'b1;
    end else begin
        v7929_we0_local = 1'b0;
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
assign add_ln12304_1_fu_326_p2 = (ap_sig_allocacmp_indvar_flatten69_load + 8'd1);
assign add_ln12304_fu_278_p2 = (ap_sig_allocacmp_v788070_load + 5'd2);
assign add_ln12322_fu_386_p2 = (sub_ln12322_fu_377_p2 + zext_ln12322_1_fu_383_p1);
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
    ap_condition_147 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_388 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12304_reg_501 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln12304_fu_338_p2 = ((ap_sig_allocacmp_indvar_flatten69_load == 8'd195) ? 1'b1 : 1'b0);
assign icmp_ln12305_fu_332_p2 = ((v7881_fu_320_p2 < 5'd28) ? 1'b1 : 1'b0);
assign icmp_ln224_2_fu_419_p2 = (($signed(v7927_2_q0) < $signed(v7928_2_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_3_fu_434_p2 = (($signed(v7927_1_q0) < $signed(v7928_1_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_4_fu_449_p2 = (($signed(v7927_q0) < $signed(v7928_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_fu_404_p2 = (($signed(v7927_3_q0) < $signed(v7928_3_q0)) ? 1'b1 : 1'b0);
assign p_shl_fu_359_p3 = {{tmp_reg_485}, {4'd0}};
assign select_ln12304_fu_284_p3 = ((ap_phi_mux_icmp_ln1230572_phi_fu_247_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v788171_load : 5'd0);
assign select_ln12310_fu_410_p3 = ((icmp_ln224_fu_404_p2[0:0] == 1'b1) ? v7928_3_q0 : v7927_3_q0);
assign select_ln12314_fu_425_p3 = ((icmp_ln224_2_fu_419_p2[0:0] == 1'b1) ? v7928_2_q0 : v7927_2_q0);
assign select_ln12318_fu_440_p3 = ((icmp_ln224_3_fu_434_p2[0:0] == 1'b1) ? v7928_1_q0 : v7927_1_q0);
assign select_ln12322_fu_455_p3 = ((icmp_ln224_4_fu_449_p2[0:0] == 1'b1) ? v7928_q0 : v7927_q0);
assign sub_ln12322_fu_377_p2 = (p_shl_fu_359_p3 - zext_ln12322_fu_373_p1);
assign tmp_395_fu_366_p3 = {{tmp_reg_485}, {1'd0}};
assign v7880_fu_292_p3 = ((ap_phi_mux_icmp_ln1230572_phi_fu_247_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v788070_load : add_ln12304_fu_278_p2);
assign v7881_fu_320_p2 = (select_ln12304_fu_284_p3 + 5'd2);
assign v7927_1_address0 = zext_ln12322_2_fu_392_p1;
assign v7927_1_ce0 = v7927_1_ce0_local;
assign v7927_2_address0 = zext_ln12322_2_fu_392_p1;
assign v7927_2_ce0 = v7927_2_ce0_local;
assign v7927_3_address0 = zext_ln12322_2_fu_392_p1;
assign v7927_3_ce0 = v7927_3_ce0_local;
assign v7927_address0 = zext_ln12322_2_fu_392_p1;
assign v7927_ce0 = v7927_ce0_local;
assign v7928_1_address0 = zext_ln12322_2_fu_392_p1;
assign v7928_1_ce0 = v7928_1_ce0_local;
assign v7928_2_address0 = zext_ln12322_2_fu_392_p1;
assign v7928_2_ce0 = v7928_2_ce0_local;
assign v7928_3_address0 = zext_ln12322_2_fu_392_p1;
assign v7928_3_ce0 = v7928_3_ce0_local;
assign v7928_address0 = zext_ln12322_2_fu_392_p1;
assign v7928_ce0 = v7928_ce0_local;
assign v7929_1_address0 = zext_ln12322_2_reg_505;
assign v7929_1_ce0 = v7929_1_ce0_local;
assign v7929_1_d0 = select_ln12318_fu_440_p3;
assign v7929_1_we0 = v7929_1_we0_local;
assign v7929_2_address0 = zext_ln12322_2_reg_505;
assign v7929_2_ce0 = v7929_2_ce0_local;
assign v7929_2_d0 = select_ln12314_fu_425_p3;
assign v7929_2_we0 = v7929_2_we0_local;
assign v7929_3_address0 = zext_ln12322_2_reg_505;
assign v7929_3_ce0 = v7929_3_ce0_local;
assign v7929_3_d0 = select_ln12310_fu_410_p3;
assign v7929_3_we0 = v7929_3_we0_local;
assign v7929_address0 = zext_ln12322_2_reg_505;
assign v7929_ce0 = v7929_ce0_local;
assign v7929_d0 = select_ln12322_fu_455_p3;
assign v7929_we0 = v7929_we0_local;
assign zext_ln12322_1_fu_383_p1 = lshr_ln_reg_491;
assign zext_ln12322_2_fu_392_p1 = add_ln12322_fu_386_p2;
assign zext_ln12322_fu_373_p1 = tmp_395_fu_366_p3;
always @ (posedge ap_clk) begin
    zext_ln12322_2_reg_505[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 