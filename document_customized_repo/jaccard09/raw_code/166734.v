module forward_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_445_1_proc6215 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v242_address0,v242_ce0,v242_we0,v242_d0,v242_1_address0,v242_1_ce0,v242_1_we0,v242_1_d0,v242_2_address0,v242_2_ce0,v242_2_we0,v242_2_d0,v242_3_address0,v242_3_ce0,v242_3_we0,v242_3_d0,v242_4_address0,v242_4_ce0,v242_4_we0,v242_4_d0,v242_5_address0,v242_5_ce0,v242_5_we0,v242_5_d0,v242_6_address0,v242_6_ce0,v242_6_we0,v242_6_d0,v242_7_address0,v242_7_ce0,v242_7_we0,v242_7_d0,v236,v9010_0_0_address0,v9010_0_0_ce0,v9010_0_0_q0,v9010_0_1_address0,v9010_0_1_ce0,v9010_0_1_q0,v9010_0_2_address0,v9010_0_2_ce0,v9010_0_2_q0,v9010_0_3_address0,v9010_0_3_ce0,v9010_0_3_q0,v9010_1_0_address0,v9010_1_0_ce0,v9010_1_0_q0,v9010_1_1_address0,v9010_1_1_ce0,v9010_1_1_q0,v9010_1_2_address0,v9010_1_2_ce0,v9010_1_2_q0,v9010_1_3_address0,v9010_1_3_ce0,v9010_1_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [6:0] v242_address0;
output   v242_ce0;
output   v242_we0;
output  [7:0] v242_d0;
output  [6:0] v242_1_address0;
output   v242_1_ce0;
output   v242_1_we0;
output  [7:0] v242_1_d0;
output  [6:0] v242_2_address0;
output   v242_2_ce0;
output   v242_2_we0;
output  [7:0] v242_2_d0;
output  [6:0] v242_3_address0;
output   v242_3_ce0;
output   v242_3_we0;
output  [7:0] v242_3_d0;
output  [6:0] v242_4_address0;
output   v242_4_ce0;
output   v242_4_we0;
output  [7:0] v242_4_d0;
output  [6:0] v242_5_address0;
output   v242_5_ce0;
output   v242_5_we0;
output  [7:0] v242_5_d0;
output  [6:0] v242_6_address0;
output   v242_6_ce0;
output   v242_6_we0;
output  [7:0] v242_6_d0;
output  [6:0] v242_7_address0;
output   v242_7_ce0;
output   v242_7_we0;
output  [7:0] v242_7_d0;
input  [13:0] v236;
output  [20:0] v9010_0_0_address0;
output   v9010_0_0_ce0;
input  [7:0] v9010_0_0_q0;
output  [20:0] v9010_0_1_address0;
output   v9010_0_1_ce0;
input  [7:0] v9010_0_1_q0;
output  [20:0] v9010_0_2_address0;
output   v9010_0_2_ce0;
input  [7:0] v9010_0_2_q0;
output  [20:0] v9010_0_3_address0;
output   v9010_0_3_ce0;
input  [7:0] v9010_0_3_q0;
output  [20:0] v9010_1_0_address0;
output   v9010_1_0_ce0;
input  [7:0] v9010_1_0_q0;
output  [20:0] v9010_1_1_address0;
output   v9010_1_1_ce0;
input  [7:0] v9010_1_1_q0;
output  [20:0] v9010_1_2_address0;
output   v9010_1_2_ce0;
input  [7:0] v9010_1_2_q0;
output  [20:0] v9010_1_3_address0;
output   v9010_1_3_ce0;
input  [7:0] v9010_1_3_q0;
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
wire   [0:0] icmp_ln445_fu_433_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [11:0] mul_i139_i_i_fu_381_p3;
reg   [11:0] mul_i139_i_i_reg_676;
wire   [10:0] trunc_ln_i_fu_389_p3;
reg   [10:0] trunc_ln_i_reg_681;
wire   [6:0] empty_fu_397_p1;
reg   [6:0] empty_reg_686;
wire   [11:0] rem_i_i_fu_401_p3;
reg   [11:0] rem_i_i_reg_692;
reg   [0:0] icmp_ln445_reg_697;
reg   [0:0] icmp_ln445_reg_697_pp0_iter1_reg;
reg   [3:0] lshr_ln_i_cast_reg_701;
wire   [2:0] lshr_ln17_i_fu_524_p4;
reg   [2:0] lshr_ln17_i_reg_706;
wire   [0:0] xor_ln446_fu_621_p2;
reg   [0:0] xor_ln446_reg_751;
reg   [0:0] ap_phi_mux_icmp_ln44696_i_phi_fu_363_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln449_fu_548_p1;
wire   [63:0] zext_ln457_fu_562_p1;
wire   [63:0] zext_ln451_fu_585_p1;
wire   [63:0] zext_ln459_fu_600_p1;
wire   [63:0] zext_ln463_fu_643_p1;
reg   [6:0] indvar_flatten93_i_fu_126;
wire   [6:0] add_ln445_1_fu_427_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten93_i_load;
reg   [5:0] v21294_i_fu_130;
wire   [5:0] select_ln445_1_fu_464_p3;
reg   [5:0] v21395_i_fu_134;
wire   [5:0] add_ln446_fu_607_p2;
reg    v9010_0_0_ce0_local;
reg    v9010_0_1_ce0_local;
reg    v9010_0_2_ce0_local;
reg    v9010_0_3_ce0_local;
reg    v9010_1_0_ce0_local;
reg    v9010_1_1_ce0_local;
reg    v9010_1_2_ce0_local;
reg    v9010_1_3_ce0_local;
reg    v242_7_we0_local;
reg    v242_7_ce0_local;
reg    v242_6_we0_local;
reg    v242_6_ce0_local;
reg    v242_5_we0_local;
reg    v242_5_ce0_local;
reg    v242_4_we0_local;
reg    v242_4_ce0_local;
reg    v242_3_we0_local;
reg    v242_3_ce0_local;
reg    v242_2_we0_local;
reg    v242_2_ce0_local;
reg    v242_1_we0_local;
reg    v242_1_ce0_local;
reg    v242_we0_local;
reg    v242_ce0_local;
wire   [6:0] tmp_i_fu_371_p4;
wire   [5:0] add_ln445_fu_450_p2;
wire   [4:0] lshr_ln_i_fu_476_p4;
wire   [11:0] zext_ln445_fu_472_p1;
wire   [10:0] zext_ln445_1_fu_496_p1;
wire   [11:0] empty_165_fu_500_p2;
wire   [5:0] select_ln445_fu_456_p3;
wire   [11:0] zext_ln446_fu_520_p1;
wire   [10:0] empty_166_fu_505_p2;
wire   [20:0] tmp_157_i_fu_539_p4;
wire   [10:0] tmp_153_i_fu_510_p4;
wire   [20:0] tmp_159_i_fu_553_p4;
wire   [11:0] add_ln448_fu_534_p2;
wire   [9:0] lshr_ln18_i_fu_567_p4;
wire   [20:0] tmp_160_i_fu_577_p3;
wire   [20:0] tmp_162_i_fu_592_p3;
wire   [0:0] tmp_fu_613_p3;
wire   [6:0] tmp_155_i_fu_637_p3;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_242;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten93_i_fu_126 = 7'd0;
#0 v21294_i_fu_130 = 6'd0;
#0 v21395_i_fu_134 = 6'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_242)) begin
        indvar_flatten93_i_fu_126 <= add_ln445_1_fu_427_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v21294_i_fu_130 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v21294_i_fu_130 <= select_ln445_1_fu_464_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v21395_i_fu_134 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v21395_i_fu_134 <= add_ln446_fu_607_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        empty_reg_686 <= empty_fu_397_p1;
        icmp_ln445_reg_697 <= icmp_ln445_fu_433_p2;
        icmp_ln445_reg_697_pp0_iter1_reg <= icmp_ln445_reg_697;
        lshr_ln17_i_reg_706 <= {{select_ln445_fu_456_p3[4:2]}};
        lshr_ln_i_cast_reg_701 <= {{select_ln445_1_fu_464_p3[4:1]}};
        mul_i139_i_i_reg_676[11 : 5] <= mul_i139_i_i_fu_381_p3[11 : 5];
        rem_i_i_reg_692[11 : 5] <= rem_i_i_fu_401_p3[11 : 5];
        trunc_ln_i_reg_681[10 : 4] <= trunc_ln_i_fu_389_p3[10 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln446_reg_751 <= xor_ln446_fu_621_p2;
    end
end
always @ (*) begin
    if (((icmp_ln445_fu_433_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln445_reg_697_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln44696_i_phi_fu_363_p4 = xor_ln446_reg_751;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln44696_i_phi_fu_363_p4 = 1'd1;
    end else begin
        ap_phi_mux_icmp_ln44696_i_phi_fu_363_p4 = xor_ln446_reg_751;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten93_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten93_i_load = indvar_flatten93_i_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_1_ce0_local = 1'b1;
    end else begin
        v242_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_1_we0_local = 1'b1;
    end else begin
        v242_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_2_ce0_local = 1'b1;
    end else begin
        v242_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_2_we0_local = 1'b1;
    end else begin
        v242_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_3_ce0_local = 1'b1;
    end else begin
        v242_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_3_we0_local = 1'b1;
    end else begin
        v242_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_4_ce0_local = 1'b1;
    end else begin
        v242_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_4_we0_local = 1'b1;
    end else begin
        v242_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_5_ce0_local = 1'b1;
    end else begin
        v242_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_5_we0_local = 1'b1;
    end else begin
        v242_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_6_ce0_local = 1'b1;
    end else begin
        v242_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_6_we0_local = 1'b1;
    end else begin
        v242_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_7_ce0_local = 1'b1;
    end else begin
        v242_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_7_we0_local = 1'b1;
    end else begin
        v242_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_ce0_local = 1'b1;
    end else begin
        v242_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v242_we0_local = 1'b1;
    end else begin
        v242_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9010_0_0_ce0_local = 1'b1;
    end else begin
        v9010_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9010_0_1_ce0_local = 1'b1;
    end else begin
        v9010_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9010_0_2_ce0_local = 1'b1;
    end else begin
        v9010_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9010_0_3_ce0_local = 1'b1;
    end else begin
        v9010_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9010_1_0_ce0_local = 1'b1;
    end else begin
        v9010_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9010_1_1_ce0_local = 1'b1;
    end else begin
        v9010_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9010_1_2_ce0_local = 1'b1;
    end else begin
        v9010_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9010_1_3_ce0_local = 1'b1;
    end else begin
        v9010_1_3_ce0_local = 1'b0;
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
assign add_ln445_1_fu_427_p2 = (ap_sig_allocacmp_indvar_flatten93_i_load + 7'd1);
assign add_ln445_fu_450_p2 = (v21294_i_fu_130 + 6'd2);
assign add_ln446_fu_607_p2 = (select_ln445_fu_456_p3 + 6'd4);
assign add_ln448_fu_534_p2 = (rem_i_i_reg_692 + zext_ln446_fu_520_p1);
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
    ap_condition_242 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_165_fu_500_p2 = (mul_i139_i_i_reg_676 + zext_ln445_fu_472_p1);
assign empty_166_fu_505_p2 = (trunc_ln_i_reg_681 + zext_ln445_1_fu_496_p1);
assign empty_fu_397_p1 = v236[6:0];
assign icmp_ln445_fu_433_p2 = ((ap_sig_allocacmp_indvar_flatten93_i_load == 7'd127) ? 1'b1 : 1'b0);
assign lshr_ln17_i_fu_524_p4 = {{select_ln445_fu_456_p3[4:2]}};
assign lshr_ln18_i_fu_567_p4 = {{add_ln448_fu_534_p2[11:2]}};
assign lshr_ln_i_fu_476_p4 = {{select_ln445_1_fu_464_p3[5:1]}};
assign mul_i139_i_i_fu_381_p3 = {{tmp_i_fu_371_p4}, {5'd0}};
assign rem_i_i_fu_401_p3 = {{empty_fu_397_p1}, {5'd0}};
assign select_ln445_1_fu_464_p3 = ((ap_phi_mux_icmp_ln44696_i_phi_fu_363_p4[0:0] == 1'b1) ? v21294_i_fu_130 : add_ln445_fu_450_p2);
assign select_ln445_fu_456_p3 = ((ap_phi_mux_icmp_ln44696_i_phi_fu_363_p4[0:0] == 1'b1) ? v21395_i_fu_134 : 6'd0);
assign tmp_153_i_fu_510_p4 = {{empty_165_fu_500_p2[11:1]}};
assign tmp_155_i_fu_637_p3 = {{lshr_ln_i_cast_reg_701}, {lshr_ln17_i_reg_706}};
assign tmp_157_i_fu_539_p4 = {{{empty_166_fu_505_p2}, {empty_reg_686}}, {lshr_ln17_i_fu_524_p4}};
assign tmp_159_i_fu_553_p4 = {{{tmp_153_i_fu_510_p4}, {empty_reg_686}}, {lshr_ln17_i_fu_524_p4}};
assign tmp_160_i_fu_577_p3 = {{empty_166_fu_505_p2}, {lshr_ln18_i_fu_567_p4}};
assign tmp_162_i_fu_592_p3 = {{tmp_153_i_fu_510_p4}, {lshr_ln18_i_fu_567_p4}};
assign tmp_fu_613_p3 = add_ln446_fu_607_p2[32'd5];
assign tmp_i_fu_371_p4 = {{v236[13:7]}};
assign trunc_ln_i_fu_389_p3 = {{tmp_i_fu_371_p4}, {4'd0}};
assign v242_1_address0 = zext_ln463_fu_643_p1;
assign v242_1_ce0 = v242_1_ce0_local;
assign v242_1_d0 = v9010_1_2_q0;
assign v242_1_we0 = v242_1_we0_local;
assign v242_2_address0 = zext_ln463_fu_643_p1;
assign v242_2_ce0 = v242_2_ce0_local;
assign v242_2_d0 = v9010_1_1_q0;
assign v242_2_we0 = v242_2_we0_local;
assign v242_3_address0 = zext_ln463_fu_643_p1;
assign v242_3_ce0 = v242_3_ce0_local;
assign v242_3_d0 = v9010_1_0_q0;
assign v242_3_we0 = v242_3_we0_local;
assign v242_4_address0 = zext_ln463_fu_643_p1;
assign v242_4_ce0 = v242_4_ce0_local;
assign v242_4_d0 = v9010_0_3_q0;
assign v242_4_we0 = v242_4_we0_local;
assign v242_5_address0 = zext_ln463_fu_643_p1;
assign v242_5_ce0 = v242_5_ce0_local;
assign v242_5_d0 = v9010_0_2_q0;
assign v242_5_we0 = v242_5_we0_local;
assign v242_6_address0 = zext_ln463_fu_643_p1;
assign v242_6_ce0 = v242_6_ce0_local;
assign v242_6_d0 = v9010_0_1_q0;
assign v242_6_we0 = v242_6_we0_local;
assign v242_7_address0 = zext_ln463_fu_643_p1;
assign v242_7_ce0 = v242_7_ce0_local;
assign v242_7_d0 = v9010_0_0_q0;
assign v242_7_we0 = v242_7_we0_local;
assign v242_address0 = zext_ln463_fu_643_p1;
assign v242_ce0 = v242_ce0_local;
assign v242_d0 = v9010_1_3_q0;
assign v242_we0 = v242_we0_local;
assign v9010_0_0_address0 = zext_ln449_fu_548_p1;
assign v9010_0_0_ce0 = v9010_0_0_ce0_local;
assign v9010_0_1_address0 = zext_ln451_fu_585_p1;
assign v9010_0_1_ce0 = v9010_0_1_ce0_local;
assign v9010_0_2_address0 = zext_ln451_fu_585_p1;
assign v9010_0_2_ce0 = v9010_0_2_ce0_local;
assign v9010_0_3_address0 = zext_ln451_fu_585_p1;
assign v9010_0_3_ce0 = v9010_0_3_ce0_local;
assign v9010_1_0_address0 = zext_ln457_fu_562_p1;
assign v9010_1_0_ce0 = v9010_1_0_ce0_local;
assign v9010_1_1_address0 = zext_ln459_fu_600_p1;
assign v9010_1_1_ce0 = v9010_1_1_ce0_local;
assign v9010_1_2_address0 = zext_ln459_fu_600_p1;
assign v9010_1_2_ce0 = v9010_1_2_ce0_local;
assign v9010_1_3_address0 = zext_ln459_fu_600_p1;
assign v9010_1_3_ce0 = v9010_1_3_ce0_local;
assign xor_ln446_fu_621_p2 = (tmp_fu_613_p3 ^ 1'd1);
assign zext_ln445_1_fu_496_p1 = lshr_ln_i_fu_476_p4;
assign zext_ln445_fu_472_p1 = select_ln445_1_fu_464_p3;
assign zext_ln446_fu_520_p1 = select_ln445_fu_456_p3;
assign zext_ln449_fu_548_p1 = tmp_157_i_fu_539_p4;
assign zext_ln451_fu_585_p1 = tmp_160_i_fu_577_p3;
assign zext_ln457_fu_562_p1 = tmp_159_i_fu_553_p4;
assign zext_ln459_fu_600_p1 = tmp_162_i_fu_592_p3;
assign zext_ln463_fu_643_p1 = tmp_155_i_fu_637_p3;
always @ (posedge ap_clk) begin
    mul_i139_i_i_reg_676[4:0] <= 5'b00000;
    trunc_ln_i_reg_681[3:0] <= 4'b0000;
    rem_i_i_reg_692[4:0] <= 5'b00000;
end
endmodule 