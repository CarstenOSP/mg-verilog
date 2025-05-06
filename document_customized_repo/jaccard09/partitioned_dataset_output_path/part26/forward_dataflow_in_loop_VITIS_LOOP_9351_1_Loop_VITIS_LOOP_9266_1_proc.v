
module forward_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7302_address0,v7302_ce0,v7302_we0,v7302_d0,v7302_1_address0,v7302_1_ce0,v7302_1_we0,v7302_1_d0,v7301_1_address0,v7301_1_ce0,v7301_1_q0,v7300_1_address0,v7300_1_ce0,v7300_1_q0,v7301_address0,v7301_ce0,v7301_q0,v7300_address0,v7300_ce0,v7300_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v7302_address0;
output   v7302_ce0;
output   v7302_we0;
output  [7:0] v7302_d0;
output  [13:0] v7302_1_address0;
output   v7302_1_ce0;
output   v7302_1_we0;
output  [7:0] v7302_1_d0;
output  [13:0] v7301_1_address0;
output   v7301_1_ce0;
input  [7:0] v7301_1_q0;
output  [13:0] v7300_1_address0;
output   v7300_1_ce0;
input  [7:0] v7300_1_q0;
output  [13:0] v7301_address0;
output   v7301_ce0;
input  [7:0] v7301_q0;
output  [13:0] v7300_address0;
output   v7300_ce0;
input  [7:0] v7300_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln9266_fu_276_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln926739_reg_170;
reg   [3:0] lshr_ln_reg_472;
wire   [0:0] icmp_ln9267_fu_270_p2;
reg   [0:0] icmp_ln9267_reg_477;
reg   [0:0] icmp_ln9266_reg_482;
reg   [0:0] icmp_ln9266_reg_482_pp0_iter1_reg;
wire   [4:0] v7260_mid2_fu_335_p3;
reg   [4:0] v7260_mid2_reg_486;
reg   [4:0] v7260_mid2_reg_486_pp0_iter2_reg;
wire   [0:0] icmp_ln9268_fu_370_p2;
reg   [0:0] icmp_ln9268_reg_491;
wire   [63:0] zext_ln9277_4_fu_389_p1;
reg   [63:0] zext_ln9277_4_reg_501;
reg   [0:0] ap_phi_mux_icmp_ln926739_phi_fu_173_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln926838_phi_fu_184_p4;
reg    ap_loop_init_pp0_iter1_reg;
reg   [13:0] indvar_flatten1233_fu_72;
wire   [13:0] add_ln9266_1_fu_264_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v725834_fu_76;
wire   [5:0] v7258_fu_232_p3;
reg   [5:0] ap_sig_allocacmp_v725834_load;
reg   [9:0] indvar_flatten35_fu_80;
wire   [9:0] select_ln9267_1_fu_256_p3;
reg   [9:0] ap_sig_allocacmp_indvar_flatten35_load;
reg   [4:0] v725936_fu_84;
wire   [4:0] v7259_fu_343_p3;
reg   [4:0] v726037_fu_88;
wire   [4:0] v7260_fu_364_p2;
reg    v7301_1_ce0_local;
reg    v7300_1_ce0_local;
reg    v7301_ce0_local;
reg    v7300_ce0_local;
reg    v7302_1_we0_local;
wire   [7:0] select_ln9273_fu_402_p3;
reg    v7302_1_ce0_local;
reg    v7302_we0_local;
wire   [7:0] select_ln9277_fu_417_p3;
reg    v7302_ce0_local;
wire   [5:0] add_ln9266_fu_226_p2;
wire   [9:0] add_ln9267_1_fu_250_p2;
wire   [0:0] xor_ln9266_fu_311_p2;
wire   [4:0] select_ln9266_fu_303_p3;
wire   [0:0] and_ln9266_fu_317_p2;
wire   [0:0] empty_fu_329_p2;
wire   [4:0] add_ln9267_fu_323_p2;
wire   [3:0] mul_ln9277_fu_354_p0;
wire   [5:0] mul_ln9277_fu_354_p1;
wire   [13:0] grp_fu_426_p4;
wire   [0:0] icmp_ln224_fu_396_p2;
wire   [0:0] icmp_ln224_1_fu_411_p2;
wire   [8:0] mul_ln9277_fu_354_p2;
wire   [4:0] grp_fu_426_p1;
wire   [4:0] grp_fu_426_p2;
wire   [4:0] grp_fu_426_p3;
reg    grp_fu_426_ce;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [8:0] grp_fu_426_p10;
wire   [13:0] grp_fu_426_p30;
wire   [8:0] mul_ln9277_fu_354_p00;
reg    ap_condition_398;
reg    ap_condition_403;
reg    ap_condition_120;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_72 = 14'd0;
#0 v725834_fu_76 = 6'd0;
#0 indvar_flatten35_fu_80 = 10'd0;
#0 v725936_fu_84 = 5'd0;
#0 v726037_fu_88 = 5'd0;
end
forward_mul_4ns_6ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 6 ),.dout_WIDTH( 9 ))
mul_4ns_6ns_9_1_1_U2968(.din0(mul_ln9277_fu_354_p0),.din1(mul_ln9277_fu_354_p1),.dout(mul_ln9277_fu_354_p2));
forward_ama_addmuladd_9ns_5ns_5ns_5ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 14 ))
ama_addmuladd_9ns_5ns_5ns_5ns_14_4_1_U2969(.clk(ap_clk),.reset(ap_rst),.din0(mul_ln9277_fu_354_p2),.din1(grp_fu_426_p1),.din2(grp_fu_426_p2),.din3(grp_fu_426_p3),.ce(grp_fu_426_ce),.dout(grp_fu_426_p4));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_403)) begin
            icmp_ln926739_reg_170 <= icmp_ln9267_reg_477;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln926739_reg_170 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_120)) begin
        indvar_flatten1233_fu_72 <= add_ln9266_1_fu_264_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_120)) begin
    indvar_flatten35_fu_80 <= select_ln9267_1_fu_256_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_120)) begin
    v725834_fu_76 <= v7258_fu_232_p3;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v725936_fu_84 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v725936_fu_84 <= v7259_fu_343_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v726037_fu_88 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v726037_fu_88 <= v7260_fu_364_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln9266_reg_482 <= icmp_ln9266_fu_276_p2;
        icmp_ln9266_reg_482_pp0_iter1_reg <= icmp_ln9266_reg_482;
        lshr_ln_reg_472 <= {{v7258_fu_232_p3[4:1]}};
        v7260_mid2_reg_486 <= v7260_mid2_fu_335_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        v7260_mid2_reg_486_pp0_iter2_reg <= v7260_mid2_reg_486;
        zext_ln9277_4_reg_501[13 : 0] <= zext_ln9277_4_fu_389_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9267_reg_477 <= icmp_ln9267_fu_270_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9268_reg_491 <= icmp_ln9268_fu_370_p2;
    end
end
always @ (*) begin
    if (((icmp_ln9266_fu_276_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_398)) begin
            ap_phi_mux_icmp_ln926739_phi_fu_173_p4 = icmp_ln9267_reg_477;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln926739_phi_fu_173_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln926739_phi_fu_173_p4 = icmp_ln9267_reg_477;
        end
    end else begin
        ap_phi_mux_icmp_ln926739_phi_fu_173_p4 = icmp_ln9267_reg_477;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln9266_reg_482_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln926838_phi_fu_184_p4 = icmp_ln9268_reg_491;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln926838_phi_fu_184_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln926838_phi_fu_184_p4 = icmp_ln9268_reg_491;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v725834_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v725834_load = v725834_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_426_ce = 1'b1;
    end else begin
        grp_fu_426_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v7300_1_ce0_local = 1'b1;
    end else begin
        v7300_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v7300_ce0_local = 1'b1;
    end else begin
        v7300_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v7301_1_ce0_local = 1'b1;
    end else begin
        v7301_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v7301_ce0_local = 1'b1;
    end else begin
        v7301_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7302_1_ce0_local = 1'b1;
    end else begin
        v7302_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7302_1_we0_local = 1'b1;
    end else begin
        v7302_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7302_ce0_local = 1'b1;
    end else begin
        v7302_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7302_we0_local = 1'b1;
    end else begin
        v7302_we0_local = 1'b0;
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
assign add_ln9266_1_fu_264_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 14'd1);
assign add_ln9266_fu_226_p2 = (ap_sig_allocacmp_v725834_load + 6'd2);
assign add_ln9267_1_fu_250_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 10'd1);
assign add_ln9267_fu_323_p2 = (select_ln9266_fu_303_p3 + 5'd1);
assign and_ln9266_fu_317_p2 = (xor_ln9266_fu_311_p2 & ap_phi_mux_icmp_ln926838_phi_fu_184_p4);
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
    ap_condition_120 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_398 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln9266_reg_482 == 1'd0));
end
always @ (*) begin
    ap_condition_403 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln9266_reg_482 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_329_p2 = (icmp_ln926739_reg_170 | and_ln9266_fu_317_p2);
assign grp_fu_426_p1 = grp_fu_426_p10;
assign grp_fu_426_p10 = v7259_fu_343_p3;
assign grp_fu_426_p2 = 14'd27;
assign grp_fu_426_p3 = grp_fu_426_p30;
assign grp_fu_426_p30 = v7260_mid2_reg_486_pp0_iter2_reg;
assign icmp_ln224_1_fu_411_p2 = (($signed(v7300_q0) < $signed(v7301_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_fu_396_p2 = (($signed(v7300_1_q0) < $signed(v7301_1_q0)) ? 1'b1 : 1'b0);
assign icmp_ln9266_fu_276_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 14'd11663) ? 1'b1 : 1'b0);
assign icmp_ln9267_fu_270_p2 = ((select_ln9267_1_fu_256_p3 == 10'd729) ? 1'b1 : 1'b0);
assign icmp_ln9268_fu_370_p2 = ((v7260_fu_364_p2 == 5'd27) ? 1'b1 : 1'b0);
assign mul_ln9277_fu_354_p0 = mul_ln9277_fu_354_p00;
assign mul_ln9277_fu_354_p00 = lshr_ln_reg_472;
assign mul_ln9277_fu_354_p1 = 9'd27;
assign select_ln9266_fu_303_p3 = ((icmp_ln926739_reg_170[0:0] == 1'b1) ? 5'd0 : v725936_fu_84);
assign select_ln9267_1_fu_256_p3 = ((ap_phi_mux_icmp_ln926739_phi_fu_173_p4[0:0] == 1'b1) ? 10'd1 : add_ln9267_1_fu_250_p2);
assign select_ln9273_fu_402_p3 = ((icmp_ln224_fu_396_p2[0:0] == 1'b1) ? v7301_1_q0 : v7300_1_q0);
assign select_ln9277_fu_417_p3 = ((icmp_ln224_1_fu_411_p2[0:0] == 1'b1) ? v7301_q0 : v7300_q0);
assign v7258_fu_232_p3 = ((ap_phi_mux_icmp_ln926739_phi_fu_173_p4[0:0] == 1'b1) ? add_ln9266_fu_226_p2 : ap_sig_allocacmp_v725834_load);
assign v7259_fu_343_p3 = ((and_ln9266_fu_317_p2[0:0] == 1'b1) ? add_ln9267_fu_323_p2 : select_ln9266_fu_303_p3);
assign v7260_fu_364_p2 = (v7260_mid2_fu_335_p3 + 5'd1);
assign v7260_mid2_fu_335_p3 = ((empty_fu_329_p2[0:0] == 1'b1) ? 5'd0 : v726037_fu_88);
assign v7300_1_address0 = zext_ln9277_4_fu_389_p1;
assign v7300_1_ce0 = v7300_1_ce0_local;
assign v7300_address0 = zext_ln9277_4_fu_389_p1;
assign v7300_ce0 = v7300_ce0_local;
assign v7301_1_address0 = zext_ln9277_4_fu_389_p1;
assign v7301_1_ce0 = v7301_1_ce0_local;
assign v7301_address0 = zext_ln9277_4_fu_389_p1;
assign v7301_ce0 = v7301_ce0_local;
assign v7302_1_address0 = zext_ln9277_4_reg_501;
assign v7302_1_ce0 = v7302_1_ce0_local;
assign v7302_1_d0 = select_ln9273_fu_402_p3;
assign v7302_1_we0 = v7302_1_we0_local;
assign v7302_address0 = zext_ln9277_4_reg_501;
assign v7302_ce0 = v7302_ce0_local;
assign v7302_d0 = select_ln9277_fu_417_p3;
assign v7302_we0 = v7302_we0_local;
assign xor_ln9266_fu_311_p2 = (icmp_ln926739_reg_170 ^ 1'd1);
assign zext_ln9277_4_fu_389_p1 = grp_fu_426_p4;
always @ (posedge ap_clk) begin
    zext_ln9277_4_reg_501[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 
