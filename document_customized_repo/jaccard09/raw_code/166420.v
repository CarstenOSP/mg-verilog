module forward_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v5773_address0,v5773_ce0,v5773_we0,v5773_d0,v5773_1_address0,v5773_1_ce0,v5773_1_we0,v5773_1_d0,v5766,v13729_0_address0,v13729_0_ce0,v13729_0_q0,v13729_1_address0,v13729_1_ce0,v13729_1_q0,v13729_2_address0,v13729_2_ce0,v13729_2_q0,v13729_3_address0,v13729_3_ce0,v13729_3_q0,ap_return); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v5773_address0;
output   v5773_ce0;
output   v5773_we0;
output  [7:0] v5773_d0;
output  [8:0] v5773_1_address0;
output   v5773_1_ce0;
output   v5773_1_we0;
output  [7:0] v5773_1_d0;
input  [7:0] v5766;
output  [15:0] v13729_0_address0;
output   v13729_0_ce0;
input  [7:0] v13729_0_q0;
output  [15:0] v13729_1_address0;
output   v13729_1_ce0;
input  [7:0] v13729_1_q0;
output  [15:0] v13729_2_address0;
output   v13729_2_ce0;
input  [7:0] v13729_2_q0;
output  [15:0] v13729_3_address0;
output   v13729_3_ce0;
input  [7:0] v13729_3_q0;
output  [5:0] ap_return;
reg ap_idle;
reg[5:0] ap_return;
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
wire   [0:0] icmp_ln7179_fu_374_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [5:0] empty_fu_256_p1;
reg   [5:0] empty_reg_772;
reg   [5:0] empty_reg_772_pp0_iter1_reg;
reg   [5:0] empty_reg_772_pp0_iter2_reg;
wire   [8:0] mul_i32_i_i_fu_270_p3;
reg   [8:0] mul_i32_i_i_reg_776;
wire   [5:0] tmp_i_fu_302_p4;
reg   [5:0] tmp_i_reg_781;
wire   [3:0] thr_add2_cast_cast_i_cast_cast_i_cast_cast_fu_336_p1;
reg   [3:0] thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_786;
reg   [3:0] thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_786_pp0_iter1_reg;
reg   [0:0] icmp_ln7179_reg_791;
reg   [0:0] icmp_ln7179_reg_791_pp0_iter1_reg;
wire   [1:0] v5758_mid2_i_fu_443_p3;
reg   [1:0] v5758_mid2_i_reg_795;
wire   [8:0] add_ln7186_1_fu_530_p2;
reg   [8:0] add_ln7186_1_reg_801;
wire   [12:0] add_ln7184_1_fu_571_p2;
reg   [12:0] add_ln7184_1_reg_807;
wire   [11:0] trunc_ln7184_fu_577_p1;
reg   [11:0] trunc_ln7184_reg_812;
wire   [0:0] icmp_ln7184_fu_581_p2;
reg   [0:0] icmp_ln7184_reg_817;
reg   [0:0] icmp_ln7184_reg_817_pp0_iter2_reg;
wire   [0:0] icmp_ln7181_fu_607_p2;
reg   [0:0] icmp_ln7181_reg_823;
wire   [0:0] icmp_ln7180_fu_613_p2;
reg   [0:0] icmp_ln7180_reg_828;
wire   [8:0] add_ln7186_2_fu_676_p2;
reg   [8:0] add_ln7186_2_reg_833;
reg   [0:0] ap_phi_mux_icmp_ln718039_i_phi_fu_234_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln718138_i_phi_fu_245_p4;
wire   [63:0] zext_ln7184_5_fu_708_p1;
wire   [63:0] zext_ln7186_3_fu_716_p1;
reg   [8:0] indvar_flatten1233_i_fu_126;
wire   [8:0] add_ln7179_1_fu_368_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten1233_i_load;
reg   [5:0] v575634_i_fu_130;
wire   [5:0] select_ln7179_1_fu_423_p3;
reg   [4:0] indvar_flatten35_i_fu_134;
wire   [4:0] select_ln7180_1_fu_599_p3;
reg   [3:0] v575736_i_fu_138;
wire   [3:0] select_ln7180_fu_451_p3;
reg   [1:0] v575837_i_fu_142;
wire   [1:0] add_ln7181_fu_587_p2;
reg    v13729_0_ce0_local;
reg    v13729_1_ce0_local;
reg    v13729_2_ce0_local;
reg    v13729_3_ce0_local;
reg    v5773_1_we0_local;
wire   [7:0] select_ln7184_fu_721_p3;
reg    v5773_1_ce0_local;
reg    v5773_we0_local;
wire   [7:0] select_ln7186_fu_729_p3;
reg    v5773_ce0_local;
wire   [3:0] tmp_152_i_fu_260_p4;
wire   [8:0] v5766_cast3_fu_252_p1;
wire   [0:0] tmp_fu_278_p3;
wire   [3:0] empty_202_fu_294_p3;
wire   [0:0] tmp_145_fu_286_p3;
wire   [0:0] empty_203_fu_312_p1;
wire   [0:0] tmp_146_fu_316_p3;
wire   [1:0] thr_add2_i_i_fu_324_p3;
wire  signed [2:0] thr_add2_cast_cast_i_cast_cast_i_cast_fu_332_p1;
wire   [0:0] xor_ln7179_fu_411_p2;
wire   [5:0] add_ln7179_fu_397_p2;
wire   [3:0] select_ln7179_fu_403_p3;
wire   [0:0] and_ln7179_fu_417_p2;
wire   [0:0] empty_204_fu_437_p2;
wire   [3:0] add_ln7180_fu_431_p2;
wire   [7:0] tmp_147_fu_463_p3;
wire   [8:0] zext_ln7186_fu_471_p1;
wire   [8:0] zext_ln7179_fu_459_p1;
wire   [8:0] empty_205_fu_481_p2;
wire   [11:0] tmp_148_fu_486_p3;
wire   [9:0] tmp_149_fu_498_p3;
wire   [12:0] zext_ln7184_fu_494_p1;
wire   [12:0] zext_ln7184_1_fu_506_p1;
wire   [2:0] lshr_ln_i_fu_516_p4;
wire   [8:0] add_ln7186_fu_475_p2;
wire   [8:0] zext_ln7186_1_fu_526_p1;
wire   [4:0] tmp_156_i_fu_536_p3;
wire   [5:0] p_cast8_i_i_i_fu_544_p1;
wire   [5:0] empty_206_fu_548_p2;
wire   [3:0] tmp_157_i_fu_557_p4;
wire   [12:0] add_ln7184_fu_510_p2;
wire   [12:0] zext_ln7184_2_fu_567_p1;
wire   [1:0] empty_207_fu_553_p1;
wire   [4:0] add_ln7180_1_fu_593_p2;
wire   [8:0] shl_ln7186_fu_639_p2;
wire   [14:0] tmp_150_fu_649_p3;
wire   [15:0] tmp_151_fu_656_p3;
wire   [15:0] zext_ln7184_3_fu_663_p1;
wire   [8:0] sub_ln7186_fu_644_p2;
wire   [8:0] zext_ln7186_2_fu_673_p1;
wire   [2:0] shl_ln_i_fu_682_p3;
wire   [3:0] zext_ln7183_fu_689_p1;
wire   [3:0] add_ln7183_fu_693_p2;
wire   [15:0] sub_ln7181_fu_667_p2;
wire   [15:0] zext_ln7184_4_fu_698_p1;
wire   [15:0] add_ln7184_2_fu_702_p2;
reg   [5:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_112;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_i_fu_126 = 9'd0;
#0 v575634_i_fu_130 = 6'd0;
#0 indvar_flatten35_i_fu_134 = 5'd0;
#0 v575736_i_fu_138 = 4'd0;
#0 v575837_i_fu_142 = 2'd0;
#0 ap_return_preg = 6'd0;
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
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 6'd0;
    end else begin
        if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            ap_return_preg <= empty_reg_772_pp0_iter2_reg;
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
    if ((1'b1 == ap_condition_112)) begin
        indvar_flatten1233_i_fu_126 <= add_ln7179_1_fu_368_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten35_i_fu_134 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten35_i_fu_134 <= select_ln7180_1_fu_599_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v575634_i_fu_130 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v575634_i_fu_130 <= select_ln7179_1_fu_423_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v575736_i_fu_138 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v575736_i_fu_138 <= select_ln7180_fu_451_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v575837_i_fu_142 <= 2'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v575837_i_fu_142 <= add_ln7181_fu_587_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln7184_1_reg_807 <= add_ln7184_1_fu_571_p2;
        add_ln7186_1_reg_801 <= add_ln7186_1_fu_530_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        empty_reg_772_pp0_iter1_reg <= empty_reg_772;
        icmp_ln7179_reg_791 <= icmp_ln7179_fu_374_p2;
        icmp_ln7179_reg_791_pp0_iter1_reg <= icmp_ln7179_reg_791;
        icmp_ln7184_reg_817 <= icmp_ln7184_fu_581_p2;
        mul_i32_i_i_reg_776[8 : 5] <= mul_i32_i_i_fu_270_p3[8 : 5];
        thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_786[2 : 0] <= thr_add2_cast_cast_i_cast_cast_i_cast_cast_fu_336_p1[2 : 0];
        thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_786_pp0_iter1_reg[2 : 0] <= thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_786[2 : 0];
        tmp_i_reg_781[0] <= tmp_i_fu_302_p4[0];
tmp_i_reg_781[2] <= tmp_i_fu_302_p4[2];
tmp_i_reg_781[4] <= tmp_i_fu_302_p4[4];
        trunc_ln7184_reg_812 <= trunc_ln7184_fu_577_p1;
        v5758_mid2_i_reg_795 <= v5758_mid2_i_fu_443_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln7186_2_reg_833 <= add_ln7186_2_fu_676_p2;
        empty_reg_772_pp0_iter2_reg <= empty_reg_772_pp0_iter1_reg;
        icmp_ln7184_reg_817_pp0_iter2_reg <= icmp_ln7184_reg_817;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_772 <= empty_fu_256_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln7180_reg_828 <= icmp_ln7180_fu_613_p2;
        icmp_ln7181_reg_823 <= icmp_ln7181_fu_607_p2;
    end
end
always @ (*) begin
    if (((icmp_ln7179_fu_374_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7179_reg_791_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln718039_i_phi_fu_234_p4 = icmp_ln7180_reg_828;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln718039_i_phi_fu_234_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln718039_i_phi_fu_234_p4 = icmp_ln7180_reg_828;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7179_reg_791_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln718138_i_phi_fu_245_p4 = icmp_ln7181_reg_823;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln718138_i_phi_fu_245_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln718138_i_phi_fu_245_p4 = icmp_ln7181_reg_823;
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
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_return = empty_reg_772_pp0_iter2_reg;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1233_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_i_load = indvar_flatten1233_i_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13729_0_ce0_local = 1'b1;
    end else begin
        v13729_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13729_1_ce0_local = 1'b1;
    end else begin
        v13729_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13729_2_ce0_local = 1'b1;
    end else begin
        v13729_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13729_3_ce0_local = 1'b1;
    end else begin
        v13729_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5773_1_ce0_local = 1'b1;
    end else begin
        v5773_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5773_1_we0_local = 1'b1;
    end else begin
        v5773_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5773_ce0_local = 1'b1;
    end else begin
        v5773_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5773_we0_local = 1'b1;
    end else begin
        v5773_we0_local = 1'b0;
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
assign add_ln7179_1_fu_368_p2 = (ap_sig_allocacmp_indvar_flatten1233_i_load + 9'd1);
assign add_ln7179_fu_397_p2 = (v575634_i_fu_130 + 6'd1);
assign add_ln7180_1_fu_593_p2 = (indvar_flatten35_i_fu_134 + 5'd1);
assign add_ln7180_fu_431_p2 = (select_ln7179_fu_403_p3 + 4'd2);
assign add_ln7181_fu_587_p2 = (v5758_mid2_i_fu_443_p3 + 2'd1);
assign add_ln7183_fu_693_p2 = (zext_ln7183_fu_689_p1 + thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_786_pp0_iter1_reg);
assign add_ln7184_1_fu_571_p2 = (add_ln7184_fu_510_p2 + zext_ln7184_2_fu_567_p1);
assign add_ln7184_2_fu_702_p2 = (sub_ln7181_fu_667_p2 + zext_ln7184_4_fu_698_p1);
assign add_ln7184_fu_510_p2 = (zext_ln7184_fu_494_p1 + zext_ln7184_1_fu_506_p1);
assign add_ln7186_1_fu_530_p2 = (add_ln7186_fu_475_p2 + zext_ln7186_1_fu_526_p1);
assign add_ln7186_2_fu_676_p2 = (sub_ln7186_fu_644_p2 + zext_ln7186_2_fu_673_p1);
assign add_ln7186_fu_475_p2 = (zext_ln7186_fu_471_p1 + zext_ln7179_fu_459_p1);
assign and_ln7179_fu_417_p2 = (xor_ln7179_fu_411_p2 & ap_phi_mux_icmp_ln718138_i_phi_fu_245_p4);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_202_fu_294_p3 = ((tmp_fu_278_p3[0:0] == 1'b1) ? 4'd10 : 4'd0);
assign empty_203_fu_312_p1 = v5766[0:0];
assign empty_204_fu_437_p2 = (ap_phi_mux_icmp_ln718039_i_phi_fu_234_p4 | and_ln7179_fu_417_p2);
assign empty_205_fu_481_p2 = (mul_i32_i_i_reg_776 + zext_ln7179_fu_459_p1);
assign empty_206_fu_548_p2 = (tmp_i_reg_781 + p_cast8_i_i_i_fu_544_p1);
assign empty_207_fu_553_p1 = empty_206_fu_548_p2[1:0];
assign empty_fu_256_p1 = v5766[5:0];
assign icmp_ln7179_fu_374_p2 = ((ap_sig_allocacmp_indvar_flatten1233_i_load == 9'd479) ? 1'b1 : 1'b0);
assign icmp_ln7180_fu_613_p2 = ((select_ln7180_1_fu_599_p3 == 5'd15) ? 1'b1 : 1'b0);
assign icmp_ln7181_fu_607_p2 = ((add_ln7181_fu_587_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln7184_fu_581_p2 = ((empty_207_fu_553_p1 == 2'd1) ? 1'b1 : 1'b0);
assign lshr_ln_i_fu_516_p4 = {{select_ln7180_fu_451_p3[3:1]}};
assign mul_i32_i_i_fu_270_p3 = {{tmp_152_i_fu_260_p4}, {5'd0}};
assign p_cast8_i_i_i_fu_544_p1 = tmp_156_i_fu_536_p3;
assign select_ln7179_1_fu_423_p3 = ((ap_phi_mux_icmp_ln718039_i_phi_fu_234_p4[0:0] == 1'b1) ? add_ln7179_fu_397_p2 : v575634_i_fu_130);
assign select_ln7179_fu_403_p3 = ((ap_phi_mux_icmp_ln718039_i_phi_fu_234_p4[0:0] == 1'b1) ? 4'd0 : v575736_i_fu_138);
assign select_ln7180_1_fu_599_p3 = ((ap_phi_mux_icmp_ln718039_i_phi_fu_234_p4[0:0] == 1'b1) ? 5'd1 : add_ln7180_1_fu_593_p2);
assign select_ln7180_fu_451_p3 = ((and_ln7179_fu_417_p2[0:0] == 1'b1) ? add_ln7180_fu_431_p2 : select_ln7179_fu_403_p3);
assign select_ln7184_fu_721_p3 = ((icmp_ln7184_reg_817_pp0_iter2_reg[0:0] == 1'b1) ? v13729_1_q0 : v13729_0_q0);
assign select_ln7186_fu_729_p3 = ((icmp_ln7184_reg_817_pp0_iter2_reg[0:0] == 1'b1) ? v13729_3_q0 : v13729_2_q0);
assign shl_ln7186_fu_639_p2 = add_ln7186_1_reg_801 << 9'd2;
assign shl_ln_i_fu_682_p3 = {{v5758_mid2_i_reg_795}, {1'd0}};
assign sub_ln7181_fu_667_p2 = (tmp_151_fu_656_p3 - zext_ln7184_3_fu_663_p1);
assign sub_ln7186_fu_644_p2 = (shl_ln7186_fu_639_p2 - add_ln7186_1_reg_801);
assign thr_add2_cast_cast_i_cast_cast_i_cast_cast_fu_336_p1 = $unsigned(thr_add2_cast_cast_i_cast_cast_i_cast_fu_332_p1);
assign thr_add2_cast_cast_i_cast_cast_i_cast_fu_332_p1 = $signed(thr_add2_i_i_fu_324_p3);
assign thr_add2_i_i_fu_324_p3 = {{empty_203_fu_312_p1}, {tmp_146_fu_316_p3}};
assign tmp_145_fu_286_p3 = v5766_cast3_fu_252_p1[32'd7];
assign tmp_146_fu_316_p3 = v5766_cast3_fu_252_p1[32'd6];
assign tmp_147_fu_463_p3 = {{select_ln7179_1_fu_423_p3}, {2'd0}};
assign tmp_148_fu_486_p3 = {{empty_205_fu_481_p2}, {3'd0}};
assign tmp_149_fu_498_p3 = {{empty_205_fu_481_p2}, {1'd0}};
assign tmp_150_fu_649_p3 = {{add_ln7184_1_reg_807}, {2'd0}};
assign tmp_151_fu_656_p3 = {{trunc_ln7184_reg_812}, {4'd0}};
assign tmp_152_i_fu_260_p4 = {{v5766[5:2]}};
assign tmp_156_i_fu_536_p3 = {{select_ln7180_fu_451_p3}, {1'd0}};
assign tmp_157_i_fu_557_p4 = {{empty_206_fu_548_p2[5:2]}};
assign tmp_fu_278_p3 = v5766_cast3_fu_252_p1[32'd1];
assign tmp_i_fu_302_p4 = {{{{1'd0}, {empty_202_fu_294_p3}}}, {tmp_145_fu_286_p3}};
assign trunc_ln7184_fu_577_p1 = add_ln7184_1_fu_571_p2[11:0];
assign v13729_0_address0 = zext_ln7184_5_fu_708_p1;
assign v13729_0_ce0 = v13729_0_ce0_local;
assign v13729_1_address0 = zext_ln7184_5_fu_708_p1;
assign v13729_1_ce0 = v13729_1_ce0_local;
assign v13729_2_address0 = zext_ln7184_5_fu_708_p1;
assign v13729_2_ce0 = v13729_2_ce0_local;
assign v13729_3_address0 = zext_ln7184_5_fu_708_p1;
assign v13729_3_ce0 = v13729_3_ce0_local;
assign v5758_mid2_i_fu_443_p3 = ((empty_204_fu_437_p2[0:0] == 1'b1) ? 2'd0 : v575837_i_fu_142);
assign v5766_cast3_fu_252_p1 = v5766;
assign v5773_1_address0 = zext_ln7186_3_fu_716_p1;
assign v5773_1_ce0 = v5773_1_ce0_local;
assign v5773_1_d0 = select_ln7184_fu_721_p3;
assign v5773_1_we0 = v5773_1_we0_local;
assign v5773_address0 = zext_ln7186_3_fu_716_p1;
assign v5773_ce0 = v5773_ce0_local;
assign v5773_d0 = select_ln7186_fu_729_p3;
assign v5773_we0 = v5773_we0_local;
assign xor_ln7179_fu_411_p2 = (ap_phi_mux_icmp_ln718039_i_phi_fu_234_p4 ^ 1'd1);
assign zext_ln7179_fu_459_p1 = select_ln7179_1_fu_423_p3;
assign zext_ln7183_fu_689_p1 = shl_ln_i_fu_682_p3;
assign zext_ln7184_1_fu_506_p1 = tmp_149_fu_498_p3;
assign zext_ln7184_2_fu_567_p1 = tmp_157_i_fu_557_p4;
assign zext_ln7184_3_fu_663_p1 = tmp_150_fu_649_p3;
assign zext_ln7184_4_fu_698_p1 = add_ln7183_fu_693_p2;
assign zext_ln7184_5_fu_708_p1 = add_ln7184_2_fu_702_p2;
assign zext_ln7184_fu_494_p1 = tmp_148_fu_486_p3;
assign zext_ln7186_1_fu_526_p1 = lshr_ln_i_fu_516_p4;
assign zext_ln7186_2_fu_673_p1 = v5758_mid2_i_reg_795;
assign zext_ln7186_3_fu_716_p1 = add_ln7186_2_reg_833;
assign zext_ln7186_fu_471_p1 = tmp_147_fu_463_p3;
always @ (posedge ap_clk) begin
    mul_i32_i_i_reg_776[4:0] <= 5'b00000;
    tmp_i_reg_781[1] <= 1'b0;
    tmp_i_reg_781[3:3] <= 1'b0;
    tmp_i_reg_781[5] <= 1'b0;
    thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_786[3] <= 1'b0;
    thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_786_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 