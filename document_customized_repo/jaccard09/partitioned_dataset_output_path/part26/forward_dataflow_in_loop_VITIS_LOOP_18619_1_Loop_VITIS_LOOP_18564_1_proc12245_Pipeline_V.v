
module forward_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,and_ln_i,mul9_i66_i_i,v14381_address0,v14381_ce0,v14381_we0,v14381_d0,v14381_1_address0,v14381_1_ce0,v14381_1_we0,v14381_1_d0,mul13_i_i_i,trunc_ln_i,v16169_0_address0,v16169_0_ce0,v16169_0_q0,v16169_1_address0,v16169_1_ce0,v16169_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] and_ln_i;
input  [6:0] mul9_i66_i_i;
output  [12:0] v14381_address0;
output   v14381_ce0;
output   v14381_we0;
output  [7:0] v14381_d0;
output  [12:0] v14381_1_address0;
output   v14381_1_ce0;
output   v14381_1_we0;
output  [7:0] v14381_1_d0;
input  [6:0] mul13_i_i_i;
input  [5:0] trunc_ln_i;
output  [17:0] v16169_0_address0;
output   v16169_0_ce0;
input  [7:0] v16169_0_q0;
output  [17:0] v16169_1_address0;
output   v16169_1_ce0;
input  [7:0] v16169_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln18564_fu_384_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1856527_i_reg_214;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] select_ln18565_fu_308_p3;
reg   [4:0] select_ln18565_reg_669;
reg   [4:0] select_ln18565_reg_669_pp0_iter1_reg;
reg   [3:0] lshr_ln65_i_reg_675;
reg   [3:0] lshr_ln65_i_reg_675_pp0_iter1_reg;
reg   [5:0] lshr_ln66_i_reg_681;
reg   [5:0] lshr_ln66_i_reg_681_pp0_iter1_reg;
wire   [0:0] icmp_ln18566_fu_372_p2;
reg   [0:0] icmp_ln18566_reg_686;
wire   [0:0] icmp_ln18565_fu_378_p2;
reg   [0:0] icmp_ln18565_reg_691;
reg   [0:0] icmp_ln18564_reg_696;
wire   [4:0] select_ln18564_2_fu_419_p3;
reg   [4:0] select_ln18564_2_reg_700;
wire   [11:0] add_ln18569_fu_470_p2;
reg   [11:0] add_ln18569_reg_706;
wire   [12:0] add_ln18571_1_fu_571_p2;
reg   [12:0] add_ln18571_1_reg_712;
reg   [0:0] ap_phi_mux_icmp_ln1856527_i_phi_fu_217_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1856626_i_phi_fu_228_p4;
wire   [63:0] zext_ln18569_4_fu_595_p1;
wire   [63:0] zext_ln18571_6_fu_609_p1;
wire   [63:0] zext_ln18571_4_fu_614_p1;
reg   [12:0] indvar_flatten1221_i_fu_116;
wire   [12:0] add_ln18564_1_fu_366_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten1221_i_load;
reg   [4:0] v1435322_i_fu_120;
reg   [8:0] indvar_flatten23_i_fu_124;
wire   [8:0] select_ln18565_1_fu_358_p3;
reg   [8:0] ap_sig_allocacmp_indvar_flatten23_i_load;
reg   [4:0] v1435424_i_fu_128;
reg   [4:0] ap_sig_allocacmp_v1435424_i_load;
reg   [4:0] v1435525_i_fu_132;
wire   [4:0] add_ln18566_fu_346_p2;
reg   [4:0] ap_sig_allocacmp_v1435525_i_load;
reg    v16169_0_ce0_local;
reg    v16169_1_ce0_local;
reg    v14381_1_we0_local;
reg    v14381_1_ce0_local;
reg    v14381_we0_local;
reg    v14381_ce0_local;
wire   [4:0] select_ln18564_fu_272_p3;
wire   [0:0] or_ln18564_fu_288_p2;
wire   [4:0] select_ln18564_1_fu_280_p3;
wire   [4:0] add_ln18565_fu_294_p2;
wire   [4:0] v14355_mid2_i_fu_300_p3;
wire   [6:0] zext_ln18566_fu_316_p1;
wire   [6:0] add_ln18568_fu_330_p2;
wire   [8:0] add_ln18565_1_fu_352_p2;
wire   [4:0] add_ln18564_fu_413_p2;
wire   [4:0] empty_fu_427_p2;
wire   [8:0] tmp_246_fu_440_p3;
wire   [11:0] p_shl26_fu_432_p3;
wire   [11:0] zext_ln18569_fu_448_p1;
wire   [6:0] zext_ln18565_fu_458_p1;
wire   [6:0] empty_309_fu_461_p2;
wire   [11:0] sub_ln18569_fu_452_p2;
wire   [11:0] zext_ln18569_1_fu_466_p1;
wire   [6:0] tmp_fu_488_p3;
wire   [9:0] p_shl28_fu_481_p3;
wire   [9:0] zext_ln18571_fu_495_p1;
wire   [9:0] sub_ln18571_fu_499_p2;
wire   [9:0] zext_ln18571_1_fu_505_p1;
wire   [9:0] add_ln18571_fu_508_p2;
wire   [8:0] trunc_ln18571_fu_514_p1;
wire   [10:0] tmp_247_fu_518_p3;
wire   [12:0] tmp_248_fu_526_p3;
wire   [12:0] zext_ln18571_2_fu_534_p1;
wire   [14:0] tmp_249_fu_551_p3;
wire   [17:0] p_shl_fu_544_p3;
wire   [17:0] zext_ln18569_2_fu_558_p1;
wire   [12:0] sub_ln18565_fu_538_p2;
wire   [12:0] zext_ln18571_3_fu_568_p1;
wire   [5:0] zext_ln18566_1_fu_577_p1;
wire   [5:0] add_ln18569_1_fu_580_p2;
wire   [17:0] sub_ln18569_1_fu_562_p2;
wire   [17:0] zext_ln18569_3_fu_585_p1;
wire   [17:0] add_ln18569_2_fu_589_p2;
wire   [17:0] zext_ln18571_5_fu_600_p1;
wire   [17:0] add_ln18571_2_fu_603_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_447;
reg    ap_condition_452;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten1221_i_fu_116 = 13'd0;
#0 v1435322_i_fu_120 = 5'd0;
#0 indvar_flatten23_i_fu_124 = 9'd0;
#0 v1435424_i_fu_128 = 5'd0;
#0 v1435525_i_fu_132 = 5'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_452)) begin
            icmp_ln1856527_i_reg_214 <= icmp_ln18565_reg_691;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1856527_i_reg_214 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten1221_i_fu_116 <= add_ln18564_1_fu_366_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1221_i_fu_116 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten23_i_fu_124 <= select_ln18565_1_fu_358_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten23_i_fu_124 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1435322_i_fu_120 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1435322_i_fu_120 <= select_ln18564_2_fu_419_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1435424_i_fu_128 <= select_ln18565_fu_308_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v1435424_i_fu_128 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1435525_i_fu_132 <= add_ln18566_fu_346_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v1435525_i_fu_132 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln18569_reg_706 <= add_ln18569_fu_470_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln18564_reg_696 <= icmp_ln18564_fu_384_p2;
        lshr_ln65_i_reg_675 <= {{v14355_mid2_i_fu_300_p3[4:1]}};
        lshr_ln65_i_reg_675_pp0_iter1_reg <= lshr_ln65_i_reg_675;
        lshr_ln66_i_reg_681 <= {{add_ln18568_fu_330_p2[6:1]}};
        lshr_ln66_i_reg_681_pp0_iter1_reg <= lshr_ln66_i_reg_681;
        select_ln18564_2_reg_700 <= select_ln18564_2_fu_419_p3;
        select_ln18565_reg_669 <= select_ln18565_fu_308_p3;
        select_ln18565_reg_669_pp0_iter1_reg <= select_ln18565_reg_669;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln18571_1_reg_712 <= add_ln18571_1_fu_571_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18565_reg_691 <= icmp_ln18565_fu_378_p2;
        icmp_ln18566_reg_686 <= icmp_ln18566_fu_372_p2;
    end
end
always @ (*) begin
    if (((icmp_ln18564_fu_384_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_447)) begin
            ap_phi_mux_icmp_ln1856527_i_phi_fu_217_p4 = icmp_ln18565_reg_691;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1856527_i_phi_fu_217_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1856527_i_phi_fu_217_p4 = icmp_ln18565_reg_691;
        end
    end else begin
        ap_phi_mux_icmp_ln1856527_i_phi_fu_217_p4 = icmp_ln18565_reg_691;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_447)) begin
            ap_phi_mux_icmp_ln1856626_i_phi_fu_228_p4 = icmp_ln18566_reg_686;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1856626_i_phi_fu_228_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1856626_i_phi_fu_228_p4 = icmp_ln18566_reg_686;
        end
    end else begin
        ap_phi_mux_icmp_ln1856626_i_phi_fu_228_p4 = icmp_ln18566_reg_686;
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
        ap_sig_allocacmp_indvar_flatten1221_i_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1221_i_load = indvar_flatten1221_i_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten23_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten23_i_load = indvar_flatten23_i_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1435424_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1435424_i_load = v1435424_i_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1435525_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1435525_i_load = v1435525_i_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14381_1_ce0_local = 1'b1;
    end else begin
        v14381_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14381_1_we0_local = 1'b1;
    end else begin
        v14381_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14381_ce0_local = 1'b1;
    end else begin
        v14381_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14381_we0_local = 1'b1;
    end else begin
        v14381_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16169_0_ce0_local = 1'b1;
    end else begin
        v16169_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16169_1_ce0_local = 1'b1;
    end else begin
        v16169_1_ce0_local = 1'b0;
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
assign add_ln18564_1_fu_366_p2 = (ap_sig_allocacmp_indvar_flatten1221_i_load + 13'd1);
assign add_ln18564_fu_413_p2 = (v1435322_i_fu_120 + 5'd1);
assign add_ln18565_1_fu_352_p2 = (ap_sig_allocacmp_indvar_flatten23_i_load + 9'd1);
assign add_ln18565_fu_294_p2 = (select_ln18564_fu_272_p3 + 5'd1);
assign add_ln18566_fu_346_p2 = (v14355_mid2_i_fu_300_p3 + 5'd2);
assign add_ln18568_fu_330_p2 = (mul13_i_i_i + zext_ln18566_fu_316_p1);
assign add_ln18569_1_fu_580_p2 = (trunc_ln_i + zext_ln18566_1_fu_577_p1);
assign add_ln18569_2_fu_589_p2 = (sub_ln18569_1_fu_562_p2 + zext_ln18569_3_fu_585_p1);
assign add_ln18569_fu_470_p2 = (sub_ln18569_fu_452_p2 + zext_ln18569_1_fu_466_p1);
assign add_ln18571_1_fu_571_p2 = (sub_ln18565_fu_538_p2 + zext_ln18571_3_fu_568_p1);
assign add_ln18571_2_fu_603_p2 = (sub_ln18569_1_fu_562_p2 + zext_ln18571_5_fu_600_p1);
assign add_ln18571_fu_508_p2 = (sub_ln18571_fu_499_p2 + zext_ln18571_1_fu_505_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_447 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln18564_reg_696 == 1'd0));
end
always @ (*) begin
    ap_condition_452 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln18564_reg_696 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_309_fu_461_p2 = (mul9_i66_i_i + zext_ln18565_fu_458_p1);
assign empty_fu_427_p2 = (select_ln18564_2_fu_419_p3 + and_ln_i);
assign icmp_ln18564_fu_384_p2 = ((ap_sig_allocacmp_indvar_flatten1221_i_load == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln18565_fu_378_p2 = ((select_ln18565_1_fu_358_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln18566_fu_372_p2 = ((add_ln18566_fu_346_p2 < 5'd28) ? 1'b1 : 1'b0);
assign or_ln18564_fu_288_p2 = (ap_phi_mux_icmp_ln1856626_i_phi_fu_228_p4 | ap_phi_mux_icmp_ln1856527_i_phi_fu_217_p4);
assign p_shl26_fu_432_p3 = {{empty_fu_427_p2}, {7'd0}};
assign p_shl28_fu_481_p3 = {{select_ln18564_2_reg_700}, {5'd0}};
assign p_shl_fu_544_p3 = {{add_ln18569_reg_706}, {6'd0}};
assign select_ln18564_1_fu_280_p3 = ((ap_phi_mux_icmp_ln1856527_i_phi_fu_217_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1435525_i_load);
assign select_ln18564_2_fu_419_p3 = ((icmp_ln1856527_i_reg_214[0:0] == 1'b1) ? add_ln18564_fu_413_p2 : v1435322_i_fu_120);
assign select_ln18564_fu_272_p3 = ((ap_phi_mux_icmp_ln1856527_i_phi_fu_217_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1435424_i_load);
assign select_ln18565_1_fu_358_p3 = ((ap_phi_mux_icmp_ln1856527_i_phi_fu_217_p4[0:0] == 1'b1) ? 9'd1 : add_ln18565_1_fu_352_p2);
assign select_ln18565_fu_308_p3 = ((or_ln18564_fu_288_p2[0:0] == 1'b1) ? select_ln18564_fu_272_p3 : add_ln18565_fu_294_p2);
assign sub_ln18565_fu_538_p2 = (tmp_248_fu_526_p3 - zext_ln18571_2_fu_534_p1);
assign sub_ln18569_1_fu_562_p2 = (p_shl_fu_544_p3 - zext_ln18569_2_fu_558_p1);
assign sub_ln18569_fu_452_p2 = (p_shl26_fu_432_p3 - zext_ln18569_fu_448_p1);
assign sub_ln18571_fu_499_p2 = (p_shl28_fu_481_p3 - zext_ln18571_fu_495_p1);
assign tmp_246_fu_440_p3 = {{empty_fu_427_p2}, {4'd0}};
assign tmp_247_fu_518_p3 = {{add_ln18571_fu_508_p2}, {1'd0}};
assign tmp_248_fu_526_p3 = {{trunc_ln18571_fu_514_p1}, {4'd0}};
assign tmp_249_fu_551_p3 = {{add_ln18569_reg_706}, {3'd0}};
assign tmp_fu_488_p3 = {{select_ln18564_2_reg_700}, {2'd0}};
assign trunc_ln18571_fu_514_p1 = add_ln18571_fu_508_p2[8:0];
assign v14355_mid2_i_fu_300_p3 = ((or_ln18564_fu_288_p2[0:0] == 1'b1) ? select_ln18564_1_fu_280_p3 : 5'd0);
assign v14381_1_address0 = zext_ln18571_4_fu_614_p1;
assign v14381_1_ce0 = v14381_1_ce0_local;
assign v14381_1_d0 = v16169_0_q0;
assign v14381_1_we0 = v14381_1_we0_local;
assign v14381_address0 = zext_ln18571_4_fu_614_p1;
assign v14381_ce0 = v14381_ce0_local;
assign v14381_d0 = v16169_1_q0;
assign v14381_we0 = v14381_we0_local;
assign v16169_0_address0 = zext_ln18569_4_fu_595_p1;
assign v16169_0_ce0 = v16169_0_ce0_local;
assign v16169_1_address0 = zext_ln18571_6_fu_609_p1;
assign v16169_1_ce0 = v16169_1_ce0_local;
assign zext_ln18565_fu_458_p1 = select_ln18565_reg_669;
assign zext_ln18566_1_fu_577_p1 = lshr_ln65_i_reg_675_pp0_iter1_reg;
assign zext_ln18566_fu_316_p1 = v14355_mid2_i_fu_300_p3;
assign zext_ln18569_1_fu_466_p1 = empty_309_fu_461_p2;
assign zext_ln18569_2_fu_558_p1 = tmp_249_fu_551_p3;
assign zext_ln18569_3_fu_585_p1 = add_ln18569_1_fu_580_p2;
assign zext_ln18569_4_fu_595_p1 = add_ln18569_2_fu_589_p2;
assign zext_ln18569_fu_448_p1 = tmp_246_fu_440_p3;
assign zext_ln18571_1_fu_505_p1 = select_ln18565_reg_669_pp0_iter1_reg;
assign zext_ln18571_2_fu_534_p1 = tmp_247_fu_518_p3;
assign zext_ln18571_3_fu_568_p1 = lshr_ln65_i_reg_675_pp0_iter1_reg;
assign zext_ln18571_4_fu_614_p1 = add_ln18571_1_reg_712;
assign zext_ln18571_5_fu_600_p1 = lshr_ln66_i_reg_681_pp0_iter1_reg;
assign zext_ln18571_6_fu_609_p1 = add_ln18571_2_fu_603_p2;
assign zext_ln18571_fu_495_p1 = tmp_fu_488_p3;
endmodule 
