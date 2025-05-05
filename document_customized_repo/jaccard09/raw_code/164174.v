module forward_dataflow_in_loop_VITIS_LOOP_18872_1_Loop_VITIS_LOOP_18775_1_proc18262 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v14572_address0,v14572_ce0,v14572_we0,v14572_d0,v14572_1_address0,v14572_1_ce0,v14572_1_we0,v14572_1_d0,v14572_2_address0,v14572_2_ce0,v14572_2_we0,v14572_2_d0,v14572_3_address0,v14572_3_ce0,v14572_3_we0,v14572_3_d0,v14566,v15404_0_0_address0,v15404_0_0_ce0,v15404_0_0_q0,v15404_0_1_address0,v15404_0_1_ce0,v15404_0_1_q0,v15404_1_0_address0,v15404_1_0_ce0,v15404_1_0_q0,v15404_1_1_address0,v15404_1_1_ce0,v15404_1_1_q0,ap_return); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] v14572_address0;
output   v14572_ce0;
output   v14572_we0;
output  [7:0] v14572_d0;
output  [7:0] v14572_1_address0;
output   v14572_1_ce0;
output   v14572_1_we0;
output  [7:0] v14572_1_d0;
output  [7:0] v14572_2_address0;
output   v14572_2_ce0;
output   v14572_2_we0;
output  [7:0] v14572_2_d0;
output  [7:0] v14572_3_address0;
output   v14572_3_ce0;
output   v14572_3_we0;
output  [7:0] v14572_3_d0;
input  [4:0] v14566;
output  [10:0] v15404_0_0_address0;
output   v15404_0_0_ce0;
input  [7:0] v15404_0_0_q0;
output  [10:0] v15404_0_1_address0;
output   v15404_0_1_ce0;
input  [7:0] v15404_0_1_q0;
output  [10:0] v15404_1_0_address0;
output   v15404_1_0_ce0;
input  [7:0] v15404_1_0_q0;
output  [10:0] v15404_1_1_address0;
output   v15404_1_1_ce0;
input  [7:0] v15404_1_1_q0;
output  [4:0] ap_return;
reg ap_idle;
reg[4:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln18775_fu_454_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
reg   [4:0] v14566_read_reg_592;
reg   [4:0] v14566_read_reg_592_pp0_iter1_reg;
wire   [5:0] tmp_97_i_cast_fu_298_p1;
reg   [5:0] tmp_97_i_cast_reg_596;
reg   [3:0] lshr_ln_i_cast_reg_601;
wire   [5:0] empty_247_fu_382_p2;
reg   [5:0] empty_247_reg_606;
reg   [5:0] tmp_100_i_reg_611;
reg   [4:0] lshr_ln60_i_reg_616;
reg   [5:0] lshr_ln61_i_reg_622;
wire   [0:0] xor_ln18776_fu_448_p2;
reg   [0:0] xor_ln18776_reg_627;
reg   [0:0] icmp_ln18775_reg_632;
wire   [7:0] add_ln18785_fu_502_p2;
reg   [7:0] add_ln18785_reg_636;
reg   [0:0] ap_phi_mux_icmp_ln1877648_i_phi_fu_233_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln18779_1_fu_523_p1;
wire   [63:0] zext_ln18783_fu_534_p1;
wire   [63:0] zext_ln18781_1_fu_548_p1;
wire   [63:0] zext_ln18785_2_fu_559_p1;
wire   [63:0] zext_ln18785_1_fu_564_p1;
reg   [7:0] indvar_flatten45_i_fu_104;
wire   [7:0] add_ln18775_1_fu_434_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten45_i_load;
reg   [5:0] v1453046_i_fu_108;
wire   [5:0] select_ln18775_1_fu_340_p3;
reg   [5:0] ap_sig_allocacmp_v1453046_i_load;
reg   [5:0] v1453147_i_fu_112;
wire   [5:0] add_ln18776_fu_428_p2;
reg   [5:0] ap_sig_allocacmp_v1453147_i_load;
reg    v15404_0_0_ce0_local;
reg    v15404_0_1_ce0_local;
reg    v15404_1_0_ce0_local;
reg    v15404_1_1_ce0_local;
reg    v14572_3_we0_local;
reg    v14572_3_ce0_local;
reg    v14572_2_we0_local;
reg    v14572_2_ce0_local;
reg    v14572_1_we0_local;
reg    v14572_1_ce0_local;
reg    v14572_we0_local;
reg    v14572_ce0_local;
wire   [1:0] tmp_i_fu_244_p4;
wire   [5:0] v14566_cast_fu_240_p1;
wire   [0:0] tmp_fu_270_p3;
wire   [5:0] mul_i215_i_i_fu_278_p3;
wire   [4:0] tmp_97_i_fu_290_p3;
wire   [5:0] add_ln18775_fu_326_p2;
wire   [4:0] lshr_ln_i_fu_352_p4;
wire   [6:0] mul_i179_i_i_fu_254_p3;
wire   [6:0] zext_ln18775_fu_348_p1;
wire   [5:0] zext_ln18775_1_fu_372_p1;
wire   [5:0] trunc_ln_i_fu_262_p3;
wire   [6:0] empty_fu_376_p2;
wire   [5:0] select_ln18775_fu_332_p3;
wire   [6:0] zext_ln18776_fu_398_p1;
wire   [6:0] mul_i215_cast_i_i_fu_286_p1;
wire   [6:0] add_ln18778_fu_412_p2;
wire   [0:0] tmp_179_fu_440_p3;
wire   [7:0] tmp_98_i_fu_475_p3;
wire   [7:0] zext_ln18785_fu_499_p1;
wire   [5:0] zext_ln18776_1_fu_496_p1;
wire   [5:0] add_ln18779_fu_508_p2;
wire   [10:0] tmp_99_i_fu_482_p3;
wire   [10:0] zext_ln18779_fu_513_p1;
wire   [10:0] add_ln18779_1_fu_517_p2;
wire   [10:0] tmp_101_i_fu_489_p3;
wire   [10:0] add_ln18783_fu_528_p2;
wire   [10:0] zext_ln18781_fu_539_p1;
wire   [10:0] add_ln18781_fu_542_p2;
wire   [10:0] add_ln18785_1_fu_553_p2;
reg   [4:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_436;
reg    ap_condition_121;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten45_i_fu_104 = 8'd0;
#0 v1453046_i_fu_108 = 6'd0;
#0 v1453147_i_fu_112 = 6'd0;
#0 ap_return_preg = 5'd0;
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
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 5'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_return_preg <= v14566_read_reg_592_pp0_iter1_reg;
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
    if ((1'b1 == ap_condition_121)) begin
        indvar_flatten45_i_fu_104 <= add_ln18775_1_fu_434_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_121)) begin
    v1453046_i_fu_108 <= select_ln18775_1_fu_340_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_121)) begin
    v1453147_i_fu_112 <= add_ln18776_fu_428_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln18785_reg_636 <= add_ln18785_fu_502_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_247_reg_606 <= empty_247_fu_382_p2;
        icmp_ln18775_reg_632 <= icmp_ln18775_fu_454_p2;
        lshr_ln60_i_reg_616 <= {{select_ln18775_fu_332_p3[5:1]}};
        lshr_ln61_i_reg_622 <= {{add_ln18778_fu_412_p2[6:1]}};
        lshr_ln_i_cast_reg_601 <= {{select_ln18775_1_fu_340_p3[4:1]}};
        tmp_100_i_reg_611 <= {{empty_fu_376_p2[6:1]}};
        tmp_97_i_cast_reg_596[4] <= tmp_97_i_cast_fu_298_p1[4];
        v14566_read_reg_592_pp0_iter1_reg <= v14566_read_reg_592;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14566_read_reg_592 <= v14566;
        xor_ln18776_reg_627 <= xor_ln18776_fu_448_p2;
    end
end
always @ (*) begin
    if (((icmp_ln18775_fu_454_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_436)) begin
            ap_phi_mux_icmp_ln1877648_i_phi_fu_233_p4 = xor_ln18776_reg_627;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1877648_i_phi_fu_233_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1877648_i_phi_fu_233_p4 = xor_ln18776_reg_627;
        end
    end else begin
        ap_phi_mux_icmp_ln1877648_i_phi_fu_233_p4 = xor_ln18776_reg_627;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_return = v14566_read_reg_592_pp0_iter1_reg;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten45_i_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten45_i_load = indvar_flatten45_i_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1453046_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1453046_i_load = v1453046_i_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1453147_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1453147_i_load = v1453147_i_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14572_1_ce0_local = 1'b1;
    end else begin
        v14572_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14572_1_we0_local = 1'b1;
    end else begin
        v14572_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14572_2_ce0_local = 1'b1;
    end else begin
        v14572_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14572_2_we0_local = 1'b1;
    end else begin
        v14572_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14572_3_ce0_local = 1'b1;
    end else begin
        v14572_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14572_3_we0_local = 1'b1;
    end else begin
        v14572_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14572_ce0_local = 1'b1;
    end else begin
        v14572_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14572_we0_local = 1'b1;
    end else begin
        v14572_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15404_0_0_ce0_local = 1'b1;
    end else begin
        v15404_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15404_0_1_ce0_local = 1'b1;
    end else begin
        v15404_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15404_1_0_ce0_local = 1'b1;
    end else begin
        v15404_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15404_1_1_ce0_local = 1'b1;
    end else begin
        v15404_1_1_ce0_local = 1'b0;
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
assign add_ln18775_1_fu_434_p2 = (ap_sig_allocacmp_indvar_flatten45_i_load + 8'd1);
assign add_ln18775_fu_326_p2 = (ap_sig_allocacmp_v1453046_i_load + 6'd2);
assign add_ln18776_fu_428_p2 = (select_ln18775_fu_332_p3 + 6'd2);
assign add_ln18778_fu_412_p2 = (zext_ln18776_fu_398_p1 + mul_i215_cast_i_i_fu_286_p1);
assign add_ln18779_1_fu_517_p2 = (tmp_99_i_fu_482_p3 + zext_ln18779_fu_513_p1);
assign add_ln18779_fu_508_p2 = (zext_ln18776_1_fu_496_p1 + tmp_97_i_cast_reg_596);
assign add_ln18781_fu_542_p2 = (tmp_99_i_fu_482_p3 + zext_ln18781_fu_539_p1);
assign add_ln18783_fu_528_p2 = (tmp_101_i_fu_489_p3 + zext_ln18779_fu_513_p1);
assign add_ln18785_1_fu_553_p2 = (tmp_101_i_fu_489_p3 + zext_ln18781_fu_539_p1);
assign add_ln18785_fu_502_p2 = (tmp_98_i_fu_475_p3 + zext_ln18785_fu_499_p1);
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
    ap_condition_121 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_436 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln18775_reg_632 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_247_fu_382_p2 = (zext_ln18775_1_fu_372_p1 + trunc_ln_i_fu_262_p3);
assign empty_fu_376_p2 = (mul_i179_i_i_fu_254_p3 + zext_ln18775_fu_348_p1);
assign icmp_ln18775_fu_454_p2 = ((ap_sig_allocacmp_indvar_flatten45_i_load == 8'd255) ? 1'b1 : 1'b0);
assign lshr_ln_i_fu_352_p4 = {{select_ln18775_1_fu_340_p3[5:1]}};
assign mul_i179_i_i_fu_254_p3 = {{tmp_i_fu_244_p4}, {5'd0}};
assign mul_i215_cast_i_i_fu_286_p1 = mul_i215_i_i_fu_278_p3;
assign mul_i215_i_i_fu_278_p3 = {{tmp_fu_270_p3}, {5'd0}};
assign select_ln18775_1_fu_340_p3 = ((ap_phi_mux_icmp_ln1877648_i_phi_fu_233_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1453046_i_load : add_ln18775_fu_326_p2);
assign select_ln18775_fu_332_p3 = ((ap_phi_mux_icmp_ln1877648_i_phi_fu_233_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1453147_i_load : 6'd0);
assign tmp_101_i_fu_489_p3 = {{tmp_100_i_reg_611}, {5'd0}};
assign tmp_179_fu_440_p3 = add_ln18776_fu_428_p2[32'd5];
assign tmp_97_i_cast_fu_298_p1 = tmp_97_i_fu_290_p3;
assign tmp_97_i_fu_290_p3 = {{tmp_fu_270_p3}, {4'd0}};
assign tmp_98_i_fu_475_p3 = {{lshr_ln_i_cast_reg_601}, {4'd0}};
assign tmp_99_i_fu_482_p3 = {{empty_247_reg_606}, {5'd0}};
assign tmp_fu_270_p3 = v14566_cast_fu_240_p1[32'd4];
assign tmp_i_fu_244_p4 = {{v14566[3:2]}};
assign trunc_ln_i_fu_262_p3 = {{tmp_i_fu_244_p4}, {4'd0}};
assign v14566_cast_fu_240_p1 = v14566;
assign v14572_1_address0 = zext_ln18785_1_fu_564_p1;
assign v14572_1_ce0 = v14572_1_ce0_local;
assign v14572_1_d0 = v15404_1_0_q0;
assign v14572_1_we0 = v14572_1_we0_local;
assign v14572_2_address0 = zext_ln18785_1_fu_564_p1;
assign v14572_2_ce0 = v14572_2_ce0_local;
assign v14572_2_d0 = v15404_0_1_q0;
assign v14572_2_we0 = v14572_2_we0_local;
assign v14572_3_address0 = zext_ln18785_1_fu_564_p1;
assign v14572_3_ce0 = v14572_3_ce0_local;
assign v14572_3_d0 = v15404_0_0_q0;
assign v14572_3_we0 = v14572_3_we0_local;
assign v14572_address0 = zext_ln18785_1_fu_564_p1;
assign v14572_ce0 = v14572_ce0_local;
assign v14572_d0 = v15404_1_1_q0;
assign v14572_we0 = v14572_we0_local;
assign v15404_0_0_address0 = zext_ln18779_1_fu_523_p1;
assign v15404_0_0_ce0 = v15404_0_0_ce0_local;
assign v15404_0_1_address0 = zext_ln18781_1_fu_548_p1;
assign v15404_0_1_ce0 = v15404_0_1_ce0_local;
assign v15404_1_0_address0 = zext_ln18783_fu_534_p1;
assign v15404_1_0_ce0 = v15404_1_0_ce0_local;
assign v15404_1_1_address0 = zext_ln18785_2_fu_559_p1;
assign v15404_1_1_ce0 = v15404_1_1_ce0_local;
assign xor_ln18776_fu_448_p2 = (tmp_179_fu_440_p3 ^ 1'd1);
assign zext_ln18775_1_fu_372_p1 = lshr_ln_i_fu_352_p4;
assign zext_ln18775_fu_348_p1 = select_ln18775_1_fu_340_p3;
assign zext_ln18776_1_fu_496_p1 = lshr_ln60_i_reg_616;
assign zext_ln18776_fu_398_p1 = select_ln18775_fu_332_p3;
assign zext_ln18779_1_fu_523_p1 = add_ln18779_1_fu_517_p2;
assign zext_ln18779_fu_513_p1 = add_ln18779_fu_508_p2;
assign zext_ln18781_1_fu_548_p1 = add_ln18781_fu_542_p2;
assign zext_ln18781_fu_539_p1 = lshr_ln61_i_reg_622;
assign zext_ln18783_fu_534_p1 = add_ln18783_fu_528_p2;
assign zext_ln18785_1_fu_564_p1 = add_ln18785_reg_636;
assign zext_ln18785_2_fu_559_p1 = add_ln18785_1_fu_553_p2;
assign zext_ln18785_fu_499_p1 = lshr_ln60_i_reg_616;
always @ (posedge ap_clk) begin
    tmp_97_i_cast_reg_596[3:0] <= 4'b0000;
    tmp_97_i_cast_reg_596[5] <= 1'b0;
end
endmodule 