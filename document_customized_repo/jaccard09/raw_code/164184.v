module forward_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v14650_address0,v14650_ce0,v14650_we0,v14650_d0,v14650_1_address0,v14650_1_ce0,v14650_1_we0,v14650_1_d0,v14644_0,v15438_0_address0,v15438_0_ce0,v15438_0_q0,v15438_1_address0,v15438_1_ce0,v15438_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v14650_address0;
output   v14650_ce0;
output   v14650_we0;
output  [7:0] v14650_d0;
output  [13:0] v14650_1_address0;
output   v14650_1_ce0;
output   v14650_1_we0;
output  [7:0] v14650_1_d0;
input  [6:0] v14644_0;
output  [16:0] v15438_0_address0;
output   v15438_0_ce0;
input  [7:0] v15438_0_q0;
output  [16:0] v15438_1_address0;
output   v15438_1_ce0;
input  [7:0] v15438_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln19002_fu_418_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln1900327_reg_196;
wire   [5:0] mul_i_fu_225_p3;
reg   [5:0] mul_i_reg_688;
wire   [5:0] mul9_i_cast_cast_cast_cast_cast_cast_fu_241_p3;
reg   [5:0] mul9_i_cast_cast_cast_cast_cast_cast_reg_693;
wire   [4:0] p_udiv2_cast_cast_cast_cast_fu_261_p3;
reg   [4:0] p_udiv2_cast_cast_cast_cast_reg_698;
reg   [4:0] p_udiv2_cast_cast_cast_cast_reg_698_pp0_iter1_reg;
wire   [4:0] v14622_fu_342_p3;
reg   [4:0] v14622_reg_703;
reg   [4:0] v14622_reg_703_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_709;
reg   [3:0] lshr_ln_reg_709_pp0_iter1_reg;
reg   [4:0] lshr_ln27_reg_715;
reg   [4:0] lshr_ln27_reg_715_pp0_iter1_reg;
wire   [0:0] icmp_ln19004_fu_406_p2;
reg   [0:0] icmp_ln19004_reg_720;
wire   [0:0] icmp_ln19003_fu_412_p2;
reg   [0:0] icmp_ln19003_reg_725;
reg   [0:0] icmp_ln19002_reg_730;
wire   [5:0] v14621_fu_453_p3;
reg   [5:0] v14621_reg_734;
wire   [11:0] add_ln19007_1_fu_504_p2;
reg   [11:0] add_ln19007_1_reg_740;
wire   [13:0] add_ln19009_1_fu_608_p2;
reg   [13:0] add_ln19009_1_reg_746;
reg   [0:0] ap_phi_mux_icmp_ln1900327_phi_fu_199_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1900426_phi_fu_210_p4;
wire   [63:0] zext_ln19007_4_fu_629_p1;
wire   [63:0] zext_ln19009_6_fu_643_p1;
wire   [63:0] zext_ln19009_4_fu_648_p1;
reg   [13:0] indvar_flatten1221_fu_116;
wire   [13:0] add_ln19002_1_fu_400_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten1221_load;
reg   [5:0] v1462122_fu_120;
reg   [8:0] indvar_flatten23_fu_124;
wire   [8:0] select_ln19003_1_fu_392_p3;
reg   [8:0] ap_sig_allocacmp_indvar_flatten23_load;
reg   [4:0] v1462224_fu_128;
reg   [4:0] ap_sig_allocacmp_v1462224_load;
reg   [4:0] v1462325_fu_132;
wire   [4:0] v14623_fu_380_p2;
reg   [4:0] ap_sig_allocacmp_v1462325_load;
reg    v15438_0_ce0_local;
reg    v15438_1_ce0_local;
reg    v14650_1_we0_local;
reg    v14650_1_ce0_local;
reg    v14650_we0_local;
reg    v14650_ce0_local;
wire   [0:0] tmp_fu_217_p3;
wire   [0:0] tmp_156_fu_233_p3;
wire   [0:0] empty_fu_249_p1;
wire   [4:0] select_ln19002_fu_306_p3;
wire   [0:0] or_ln19002_fu_322_p2;
wire   [4:0] select_ln19002_1_fu_314_p3;
wire   [4:0] add_ln19003_fu_328_p2;
wire   [4:0] v14623_mid2_fu_334_p3;
wire   [5:0] zext_ln19002_cast_cast_cast_cast_fu_253_p3;
wire   [5:0] zext_ln19004_fu_350_p1;
wire   [5:0] add_ln19006_fu_364_p2;
wire   [8:0] add_ln19003_1_fu_386_p2;
wire   [5:0] add_ln19002_fu_447_p2;
wire   [5:0] empty_235_fu_461_p2;
wire   [8:0] tmp_158_fu_474_p3;
wire   [11:0] p_shl54_fu_466_p3;
wire   [11:0] zext_ln19007_fu_482_p1;
wire   [5:0] zext_ln19003_fu_492_p1;
wire   [5:0] empty_236_fu_495_p2;
wire   [11:0] sub_ln19007_fu_486_p2;
wire   [11:0] zext_ln19007_1_fu_500_p1;
wire   [7:0] tmp_157_fu_522_p3;
wire   [10:0] p_shl56_fu_515_p3;
wire   [10:0] zext_ln19009_fu_529_p1;
wire   [10:0] sub_ln19009_fu_533_p2;
wire   [10:0] zext_ln19009_1_fu_539_p1;
wire   [10:0] add_ln19009_fu_542_p2;
wire   [9:0] trunc_ln19009_fu_548_p1;
wire   [11:0] tmp_159_fu_552_p3;
wire   [13:0] tmp_160_fu_560_p3;
wire   [13:0] zext_ln19009_2_fu_568_p1;
wire   [13:0] tmp_161_fu_585_p3;
wire   [16:0] p_shl_fu_578_p3;
wire   [16:0] zext_ln19007_2_fu_592_p1;
wire   [13:0] sub_ln19003_fu_572_p2;
wire   [13:0] zext_ln19009_3_fu_605_p1;
wire   [4:0] zext_ln19004_1_fu_602_p1;
wire   [4:0] add_ln19007_fu_614_p2;
wire   [16:0] sub_ln19007_1_fu_596_p2;
wire   [16:0] zext_ln19007_3_fu_619_p1;
wire   [16:0] add_ln19007_2_fu_623_p2;
wire   [16:0] zext_ln19009_5_fu_634_p1;
wire   [16:0] add_ln19009_2_fu_637_p2;
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
reg    ap_condition_484;
reg    ap_condition_489;
reg    ap_condition_119;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1221_fu_116 = 14'd0;
#0 v1462122_fu_120 = 6'd0;
#0 indvar_flatten23_fu_124 = 9'd0;
#0 v1462224_fu_128 = 5'd0;
#0 v1462325_fu_132 = 5'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_489)) begin
            icmp_ln1900327_reg_196 <= icmp_ln19003_reg_725;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1900327_reg_196 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_119)) begin
        indvar_flatten1221_fu_116 <= add_ln19002_1_fu_400_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_119)) begin
    indvar_flatten23_fu_124 <= select_ln19003_1_fu_392_p3;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1462122_fu_120 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1462122_fu_120 <= v14621_fu_453_p3;
    end
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_119)) begin
    v1462224_fu_128 <= v14622_fu_342_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_119)) begin
    v1462325_fu_132 <= v14623_fu_380_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln19007_1_reg_740 <= add_ln19007_1_fu_504_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln19002_reg_730 <= icmp_ln19002_fu_418_p2;
        lshr_ln27_reg_715 <= {{add_ln19006_fu_364_p2[5:1]}};
        lshr_ln27_reg_715_pp0_iter1_reg <= lshr_ln27_reg_715;
        lshr_ln_reg_709 <= {{v14623_mid2_fu_334_p3[4:1]}};
        lshr_ln_reg_709_pp0_iter1_reg <= lshr_ln_reg_709;
        mul9_i_cast_cast_cast_cast_cast_cast_reg_693[4 : 2] <= mul9_i_cast_cast_cast_cast_cast_cast_fu_241_p3[4 : 2];
        mul_i_reg_688[5] <= mul_i_fu_225_p3[5];
        p_udiv2_cast_cast_cast_cast_reg_698[3 : 1] <= p_udiv2_cast_cast_cast_cast_fu_261_p3[3 : 1];
        p_udiv2_cast_cast_cast_cast_reg_698_pp0_iter1_reg[3 : 1] <= p_udiv2_cast_cast_cast_cast_reg_698[3 : 1];
        v14621_reg_734 <= v14621_fu_453_p3;
        v14622_reg_703 <= v14622_fu_342_p3;
        v14622_reg_703_pp0_iter1_reg <= v14622_reg_703;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln19009_1_reg_746 <= add_ln19009_1_fu_608_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln19003_reg_725 <= icmp_ln19003_fu_412_p2;
        icmp_ln19004_reg_720 <= icmp_ln19004_fu_406_p2;
    end
end
always @ (*) begin
    if (((icmp_ln19002_fu_418_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_484)) begin
            ap_phi_mux_icmp_ln1900327_phi_fu_199_p4 = icmp_ln19003_reg_725;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1900327_phi_fu_199_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1900327_phi_fu_199_p4 = icmp_ln19003_reg_725;
        end
    end else begin
        ap_phi_mux_icmp_ln1900327_phi_fu_199_p4 = icmp_ln19003_reg_725;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_484)) begin
            ap_phi_mux_icmp_ln1900426_phi_fu_210_p4 = icmp_ln19004_reg_720;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1900426_phi_fu_210_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1900426_phi_fu_210_p4 = icmp_ln19004_reg_720;
        end
    end else begin
        ap_phi_mux_icmp_ln1900426_phi_fu_210_p4 = icmp_ln19004_reg_720;
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
        ap_sig_allocacmp_indvar_flatten1221_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1221_load = indvar_flatten1221_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten23_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten23_load = indvar_flatten23_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1462224_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1462224_load = v1462224_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1462325_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1462325_load = v1462325_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14650_1_ce0_local = 1'b1;
    end else begin
        v14650_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14650_1_we0_local = 1'b1;
    end else begin
        v14650_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14650_ce0_local = 1'b1;
    end else begin
        v14650_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14650_we0_local = 1'b1;
    end else begin
        v14650_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15438_0_ce0_local = 1'b1;
    end else begin
        v15438_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15438_1_ce0_local = 1'b1;
    end else begin
        v15438_1_ce0_local = 1'b0;
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
assign add_ln19002_1_fu_400_p2 = (ap_sig_allocacmp_indvar_flatten1221_load + 14'd1);
assign add_ln19002_fu_447_p2 = (v1462122_fu_120 + 6'd1);
assign add_ln19003_1_fu_386_p2 = (ap_sig_allocacmp_indvar_flatten23_load + 9'd1);
assign add_ln19003_fu_328_p2 = (select_ln19002_fu_306_p3 + 5'd1);
assign add_ln19006_fu_364_p2 = (zext_ln19002_cast_cast_cast_cast_fu_253_p3 + zext_ln19004_fu_350_p1);
assign add_ln19007_1_fu_504_p2 = (sub_ln19007_fu_486_p2 + zext_ln19007_1_fu_500_p1);
assign add_ln19007_2_fu_623_p2 = (sub_ln19007_1_fu_596_p2 + zext_ln19007_3_fu_619_p1);
assign add_ln19007_fu_614_p2 = (zext_ln19004_1_fu_602_p1 + p_udiv2_cast_cast_cast_cast_reg_698_pp0_iter1_reg);
assign add_ln19009_1_fu_608_p2 = (sub_ln19003_fu_572_p2 + zext_ln19009_3_fu_605_p1);
assign add_ln19009_2_fu_637_p2 = (sub_ln19007_1_fu_596_p2 + zext_ln19009_5_fu_634_p1);
assign add_ln19009_fu_542_p2 = (sub_ln19009_fu_533_p2 + zext_ln19009_1_fu_539_p1);
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
    ap_condition_119 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_484 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln19002_reg_730 == 1'd0));
end
always @ (*) begin
    ap_condition_489 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln19002_reg_730 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_235_fu_461_p2 = (v14621_fu_453_p3 + mul_i_reg_688);
assign empty_236_fu_495_p2 = (mul9_i_cast_cast_cast_cast_cast_cast_reg_693 + zext_ln19003_fu_492_p1);
assign empty_fu_249_p1 = v14644_0[0:0];
assign icmp_ln19002_fu_418_p2 = ((ap_sig_allocacmp_indvar_flatten1221_load == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln19003_fu_412_p2 = ((select_ln19003_1_fu_392_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln19004_fu_406_p2 = ((v14623_fu_380_p2 < 5'd28) ? 1'b1 : 1'b0);
assign mul9_i_cast_cast_cast_cast_cast_cast_fu_241_p3 = ((tmp_156_fu_233_p3[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign mul_i_fu_225_p3 = {{tmp_fu_217_p3}, {5'd0}};
assign or_ln19002_fu_322_p2 = (ap_phi_mux_icmp_ln1900426_phi_fu_210_p4 | ap_phi_mux_icmp_ln1900327_phi_fu_199_p4);
assign p_shl54_fu_466_p3 = {{empty_235_fu_461_p2}, {6'd0}};
assign p_shl56_fu_515_p3 = {{v14621_reg_734}, {5'd0}};
assign p_shl_fu_578_p3 = {{add_ln19007_1_reg_740}, {5'd0}};
assign p_udiv2_cast_cast_cast_cast_fu_261_p3 = ((empty_fu_249_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign select_ln19002_1_fu_314_p3 = ((ap_phi_mux_icmp_ln1900327_phi_fu_199_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1462325_load);
assign select_ln19002_fu_306_p3 = ((ap_phi_mux_icmp_ln1900327_phi_fu_199_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1462224_load);
assign select_ln19003_1_fu_392_p3 = ((ap_phi_mux_icmp_ln1900327_phi_fu_199_p4[0:0] == 1'b1) ? 9'd1 : add_ln19003_1_fu_386_p2);
assign sub_ln19003_fu_572_p2 = (tmp_160_fu_560_p3 - zext_ln19009_2_fu_568_p1);
assign sub_ln19007_1_fu_596_p2 = (p_shl_fu_578_p3 - zext_ln19007_2_fu_592_p1);
assign sub_ln19007_fu_486_p2 = (p_shl54_fu_466_p3 - zext_ln19007_fu_482_p1);
assign sub_ln19009_fu_533_p2 = (p_shl56_fu_515_p3 - zext_ln19009_fu_529_p1);
assign tmp_156_fu_233_p3 = v14644_0[32'd1];
assign tmp_157_fu_522_p3 = {{v14621_reg_734}, {2'd0}};
assign tmp_158_fu_474_p3 = {{empty_235_fu_461_p2}, {3'd0}};
assign tmp_159_fu_552_p3 = {{add_ln19009_fu_542_p2}, {1'd0}};
assign tmp_160_fu_560_p3 = {{trunc_ln19009_fu_548_p1}, {4'd0}};
assign tmp_161_fu_585_p3 = {{add_ln19007_1_reg_740}, {2'd0}};
assign tmp_fu_217_p3 = v14644_0[32'd2];
assign trunc_ln19009_fu_548_p1 = add_ln19009_fu_542_p2[9:0];
assign v14621_fu_453_p3 = ((icmp_ln1900327_reg_196[0:0] == 1'b1) ? add_ln19002_fu_447_p2 : v1462122_fu_120);
assign v14622_fu_342_p3 = ((or_ln19002_fu_322_p2[0:0] == 1'b1) ? select_ln19002_fu_306_p3 : add_ln19003_fu_328_p2);
assign v14623_fu_380_p2 = (v14623_mid2_fu_334_p3 + 5'd2);
assign v14623_mid2_fu_334_p3 = ((or_ln19002_fu_322_p2[0:0] == 1'b1) ? select_ln19002_1_fu_314_p3 : 5'd0);
assign v14650_1_address0 = zext_ln19009_4_fu_648_p1;
assign v14650_1_ce0 = v14650_1_ce0_local;
assign v14650_1_d0 = v15438_0_q0;
assign v14650_1_we0 = v14650_1_we0_local;
assign v14650_address0 = zext_ln19009_4_fu_648_p1;
assign v14650_ce0 = v14650_ce0_local;
assign v14650_d0 = v15438_1_q0;
assign v14650_we0 = v14650_we0_local;
assign v15438_0_address0 = zext_ln19007_4_fu_629_p1;
assign v15438_0_ce0 = v15438_0_ce0_local;
assign v15438_1_address0 = zext_ln19009_6_fu_643_p1;
assign v15438_1_ce0 = v15438_1_ce0_local;
assign zext_ln19002_cast_cast_cast_cast_fu_253_p3 = ((empty_fu_249_p1[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign zext_ln19003_fu_492_p1 = v14622_reg_703;
assign zext_ln19004_1_fu_602_p1 = lshr_ln_reg_709_pp0_iter1_reg;
assign zext_ln19004_fu_350_p1 = v14623_mid2_fu_334_p3;
assign zext_ln19007_1_fu_500_p1 = empty_236_fu_495_p2;
assign zext_ln19007_2_fu_592_p1 = tmp_161_fu_585_p3;
assign zext_ln19007_3_fu_619_p1 = add_ln19007_fu_614_p2;
assign zext_ln19007_4_fu_629_p1 = add_ln19007_2_fu_623_p2;
assign zext_ln19007_fu_482_p1 = tmp_158_fu_474_p3;
assign zext_ln19009_1_fu_539_p1 = v14622_reg_703_pp0_iter1_reg;
assign zext_ln19009_2_fu_568_p1 = tmp_159_fu_552_p3;
assign zext_ln19009_3_fu_605_p1 = lshr_ln_reg_709_pp0_iter1_reg;
assign zext_ln19009_4_fu_648_p1 = add_ln19009_1_reg_746;
assign zext_ln19009_5_fu_634_p1 = lshr_ln27_reg_715_pp0_iter1_reg;
assign zext_ln19009_6_fu_643_p1 = add_ln19009_2_fu_637_p2;
assign zext_ln19009_fu_529_p1 = tmp_157_fu_522_p3;
always @ (posedge ap_clk) begin
    mul_i_reg_688[4:0] <= 5'b00000;
    mul9_i_cast_cast_cast_cast_cast_cast_reg_693[1:0] <= 2'b00;
    mul9_i_cast_cast_cast_cast_cast_cast_reg_693[5] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_698[0] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_698[4] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_698_pp0_iter1_reg[0] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_698_pp0_iter1_reg[4] <= 1'b0;
end
endmodule 