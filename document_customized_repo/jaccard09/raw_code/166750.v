module forward_dataflow_in_loop_VITIS_LOOP_5374_1_Loop_VITIS_LOOP_5161_1_proc48_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,v3967_address0,v3967_ce0,v3967_we0,v3967_d0,v3967_1_address0,v3967_1_ce0,v3967_1_we0,v3967_1_d0,v3967_2_address0,v3967_2_ce0,v3967_2_we0,v3967_2_d0,v3967_3_address0,v3967_3_ce0,v3967_3_we0,v3967_3_d0,v3967_4_address0,v3967_4_ce0,v3967_4_we0,v3967_4_d0,v3967_5_address0,v3967_5_ce0,v3967_5_we0,v3967_5_d0,v3967_6_address0,v3967_6_ce0,v3967_6_we0,v3967_6_d0,v3967_7_address0,v3967_7_ce0,v3967_7_we0,v3967_7_d0,mul_i3,tmp_121,zext_ln5203_1,zext_ln5203,v9004_0_0_address0,v9004_0_0_ce0,v9004_0_0_q0,v9004_1_0_address0,v9004_1_0_ce0,v9004_1_0_q0,v9004_2_0_address0,v9004_2_0_ce0,v9004_2_0_q0,v9004_3_0_address0,v9004_3_0_ce0,v9004_3_0_q0,v9004_0_1_address0,v9004_0_1_ce0,v9004_0_1_q0,v9004_1_1_address0,v9004_1_1_ce0,v9004_1_1_q0,v9004_2_1_address0,v9004_2_1_ce0,v9004_2_1_q0,v9004_3_1_address0,v9004_3_1_ce0,v9004_3_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] mul_i;
output  [6:0] v3967_address0;
output   v3967_ce0;
output   v3967_we0;
output  [7:0] v3967_d0;
output  [6:0] v3967_1_address0;
output   v3967_1_ce0;
output   v3967_1_we0;
output  [7:0] v3967_1_d0;
output  [6:0] v3967_2_address0;
output   v3967_2_ce0;
output   v3967_2_we0;
output  [7:0] v3967_2_d0;
output  [6:0] v3967_3_address0;
output   v3967_3_ce0;
output   v3967_3_we0;
output  [7:0] v3967_3_d0;
output  [6:0] v3967_4_address0;
output   v3967_4_ce0;
output   v3967_4_we0;
output  [7:0] v3967_4_d0;
output  [6:0] v3967_5_address0;
output   v3967_5_ce0;
output   v3967_5_we0;
output  [7:0] v3967_5_d0;
output  [6:0] v3967_6_address0;
output   v3967_6_ce0;
output   v3967_6_we0;
output  [7:0] v3967_6_d0;
output  [6:0] v3967_7_address0;
output   v3967_7_ce0;
output   v3967_7_we0;
output  [7:0] v3967_7_d0;
input  [7:0] mul_i3;
input  [2:0] tmp_121;
input  [1:0] zext_ln5203_1;
input  [1:0] zext_ln5203;
output  [16:0] v9004_0_0_address0;
output   v9004_0_0_ce0;
input  [7:0] v9004_0_0_q0;
output  [16:0] v9004_1_0_address0;
output   v9004_1_0_ce0;
input  [7:0] v9004_1_0_q0;
output  [16:0] v9004_2_0_address0;
output   v9004_2_0_ce0;
input  [7:0] v9004_2_0_q0;
output  [16:0] v9004_3_0_address0;
output   v9004_3_0_ce0;
input  [7:0] v9004_3_0_q0;
output  [16:0] v9004_0_1_address0;
output   v9004_0_1_ce0;
input  [7:0] v9004_0_1_q0;
output  [16:0] v9004_1_1_address0;
output   v9004_1_1_ce0;
input  [7:0] v9004_1_1_q0;
output  [16:0] v9004_2_1_address0;
output   v9004_2_1_ce0;
input  [7:0] v9004_2_1_q0;
output  [16:0] v9004_3_1_address0;
output   v9004_3_1_ce0;
input  [7:0] v9004_3_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln5161_fu_542_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [16:0] zext_ln5203_cast_fu_402_p1;
reg   [16:0] zext_ln5203_cast_reg_736;
wire   [15:0] zext_ln5203_1_cast_fu_406_p1;
reg   [15:0] zext_ln5203_1_cast_reg_742;
reg   [6:0] tmp_s_reg_748;
reg   [3:0] lshr_ln_reg_756;
reg   [3:0] lshr_ln_reg_756_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_756_pp0_iter2_reg;
reg   [2:0] tmp_49_reg_763;
reg   [2:0] tmp_49_reg_763_pp0_iter1_reg;
reg   [2:0] tmp_49_reg_763_pp0_iter2_reg;
reg   [6:0] lshr_ln5_reg_768;
wire   [0:0] xor_ln5162_fu_536_p2;
reg   [0:0] xor_ln5162_reg_774;
reg   [0:0] icmp_ln5161_reg_779;
wire   [16:0] add_ln5165_1_fu_616_p2;
reg   [16:0] add_ln5165_1_reg_783;
wire   [16:0] add_ln5167_1_fu_672_p2;
reg   [16:0] add_ln5167_1_reg_788;
reg   [0:0] ap_phi_mux_icmp_ln516296_phi_fu_395_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln5165_2_fu_677_p1;
wire   [63:0] zext_ln5167_2_fu_684_p1;
wire   [63:0] zext_ln5179_fu_697_p1;
reg   [6:0] indvar_flatten93_fu_134;
wire   [6:0] add_ln5161_1_fu_522_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten93_load;
reg   [5:0] v387194_fu_138;
wire   [5:0] v3871_fu_448_p3;
reg   [5:0] ap_sig_allocacmp_v387194_load;
reg   [5:0] v387295_fu_142;
wire   [5:0] v3872_fu_516_p2;
reg   [5:0] ap_sig_allocacmp_v387295_load;
reg    v9004_0_0_ce0_local;
reg    v9004_0_1_ce0_local;
reg    v9004_1_0_ce0_local;
reg    v9004_1_1_ce0_local;
reg    v9004_2_0_ce0_local;
reg    v9004_2_1_ce0_local;
reg    v9004_3_0_ce0_local;
reg    v9004_3_1_ce0_local;
reg    v3967_7_we0_local;
reg    v3967_7_ce0_local;
reg    v3967_6_we0_local;
reg    v3967_6_ce0_local;
reg    v3967_5_we0_local;
reg    v3967_5_ce0_local;
reg    v3967_4_we0_local;
reg    v3967_4_ce0_local;
reg    v3967_3_we0_local;
reg    v3967_3_ce0_local;
reg    v3967_2_we0_local;
reg    v3967_2_ce0_local;
reg    v3967_1_we0_local;
reg    v3967_1_ce0_local;
reg    v3967_we0_local;
reg    v3967_ce0_local;
wire   [5:0] add_ln5161_fu_434_p2;
wire   [8:0] zext_ln5161_fu_456_p1;
wire   [8:0] empty_fu_460_p2;
wire   [5:0] select_ln5161_fu_440_p3;
wire   [7:0] zext_ln5162_fu_476_p1;
wire   [7:0] add_ln5164_fu_500_p2;
wire   [0:0] tmp_120_fu_528_p3;
wire   [13:0] tmp_51_fu_563_p4;
wire   [15:0] p_shl18_fu_574_p5;
wire   [15:0] zext_ln5165_fu_570_p1;
wire   [15:0] sub_ln5165_fu_583_p2;
wire   [15:0] add_ln5165_fu_589_p2;
wire   [14:0] trunc_ln5165_fu_594_p1;
wire   [16:0] tmp_fu_598_p3;
wire   [16:0] zext_ln5165_1_fu_606_p1;
wire   [16:0] sub_ln5165_1_fu_610_p2;
wire   [13:0] tmp_52_fu_621_p3;
wire   [15:0] p_shl16_fu_631_p4;
wire   [15:0] zext_ln5167_fu_627_p1;
wire   [15:0] sub_ln5167_fu_639_p2;
wire   [15:0] add_ln5167_fu_645_p2;
wire   [14:0] trunc_ln5167_fu_650_p1;
wire   [16:0] tmp_119_fu_654_p3;
wire   [16:0] zext_ln5167_1_fu_662_p1;
wire   [16:0] sub_ln5167_1_fu_666_p2;
wire   [6:0] tmp_50_fu_691_p3;
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
reg    ap_condition_529;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten93_fu_134 = 7'd0;
#0 v387194_fu_138 = 6'd0;
#0 v387295_fu_142 = 6'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten93_fu_134 <= add_ln5161_1_fu_522_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten93_fu_134 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v387194_fu_138 <= v3871_fu_448_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v387194_fu_138 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v387295_fu_142 <= v3872_fu_516_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v387295_fu_142 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln5165_1_reg_783 <= add_ln5165_1_fu_616_p2;
        add_ln5167_1_reg_788 <= add_ln5167_1_fu_672_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln5161_reg_779 <= icmp_ln5161_fu_542_p2;
        lshr_ln5_reg_768 <= {{add_ln5164_fu_500_p2[7:1]}};
        lshr_ln_reg_756 <= {{select_ln5161_fu_440_p3[4:1]}};
        lshr_ln_reg_756_pp0_iter1_reg <= lshr_ln_reg_756;
        tmp_49_reg_763 <= {{v3871_fu_448_p3[4:2]}};
        tmp_49_reg_763_pp0_iter1_reg <= tmp_49_reg_763;
        tmp_s_reg_748 <= {{empty_fu_460_p2[8:2]}};
        zext_ln5203_1_cast_reg_742[1 : 0] <= zext_ln5203_1_cast_fu_406_p1[1 : 0];
        zext_ln5203_cast_reg_736[1 : 0] <= zext_ln5203_cast_fu_402_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        lshr_ln_reg_756_pp0_iter2_reg <= lshr_ln_reg_756_pp0_iter1_reg;
        tmp_49_reg_763_pp0_iter2_reg <= tmp_49_reg_763_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln5162_reg_774 <= xor_ln5162_fu_536_p2;
    end
end
always @ (*) begin
    if (((icmp_ln5161_fu_542_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_529)) begin
            ap_phi_mux_icmp_ln516296_phi_fu_395_p4 = xor_ln5162_reg_774;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln516296_phi_fu_395_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln516296_phi_fu_395_p4 = xor_ln5162_reg_774;
        end
    end else begin
        ap_phi_mux_icmp_ln516296_phi_fu_395_p4 = xor_ln5162_reg_774;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten93_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten93_load = indvar_flatten93_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v387194_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v387194_load = v387194_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v387295_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v387295_load = v387295_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_1_ce0_local = 1'b1;
    end else begin
        v3967_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_1_we0_local = 1'b1;
    end else begin
        v3967_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_2_ce0_local = 1'b1;
    end else begin
        v3967_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_2_we0_local = 1'b1;
    end else begin
        v3967_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_3_ce0_local = 1'b1;
    end else begin
        v3967_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_3_we0_local = 1'b1;
    end else begin
        v3967_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_4_ce0_local = 1'b1;
    end else begin
        v3967_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_4_we0_local = 1'b1;
    end else begin
        v3967_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_5_ce0_local = 1'b1;
    end else begin
        v3967_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_5_we0_local = 1'b1;
    end else begin
        v3967_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_6_ce0_local = 1'b1;
    end else begin
        v3967_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_6_we0_local = 1'b1;
    end else begin
        v3967_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_7_ce0_local = 1'b1;
    end else begin
        v3967_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_7_we0_local = 1'b1;
    end else begin
        v3967_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_ce0_local = 1'b1;
    end else begin
        v3967_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3967_we0_local = 1'b1;
    end else begin
        v3967_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9004_0_0_ce0_local = 1'b1;
    end else begin
        v9004_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9004_0_1_ce0_local = 1'b1;
    end else begin
        v9004_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9004_1_0_ce0_local = 1'b1;
    end else begin
        v9004_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9004_1_1_ce0_local = 1'b1;
    end else begin
        v9004_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9004_2_0_ce0_local = 1'b1;
    end else begin
        v9004_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9004_2_1_ce0_local = 1'b1;
    end else begin
        v9004_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9004_3_0_ce0_local = 1'b1;
    end else begin
        v9004_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9004_3_1_ce0_local = 1'b1;
    end else begin
        v9004_3_1_ce0_local = 1'b0;
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
assign add_ln5161_1_fu_522_p2 = (ap_sig_allocacmp_indvar_flatten93_load + 7'd1);
assign add_ln5161_fu_434_p2 = (ap_sig_allocacmp_v387194_load + 6'd4);
assign add_ln5164_fu_500_p2 = (mul_i3 + zext_ln5162_fu_476_p1);
assign add_ln5165_1_fu_616_p2 = (sub_ln5165_1_fu_610_p2 + zext_ln5203_cast_reg_736);
assign add_ln5165_fu_589_p2 = (sub_ln5165_fu_583_p2 + zext_ln5203_1_cast_reg_742);
assign add_ln5167_1_fu_672_p2 = (sub_ln5167_1_fu_666_p2 + zext_ln5203_cast_reg_736);
assign add_ln5167_fu_645_p2 = (sub_ln5167_fu_639_p2 + zext_ln5203_1_cast_reg_742);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_529 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln5161_reg_779 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_460_p2 = (mul_i + zext_ln5161_fu_456_p1);
assign icmp_ln5161_fu_542_p2 = ((ap_sig_allocacmp_indvar_flatten93_load == 7'd127) ? 1'b1 : 1'b0);
assign p_shl16_fu_631_p4 = {{{tmp_s_reg_748}, {lshr_ln5_reg_768}}, {2'd0}};
assign p_shl18_fu_574_p5 = {{{{tmp_s_reg_748}, {tmp_121}}, {lshr_ln_reg_756}}, {2'd0}};
assign select_ln5161_fu_440_p3 = ((ap_phi_mux_icmp_ln516296_phi_fu_395_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v387295_load : 6'd0);
assign sub_ln5165_1_fu_610_p2 = (tmp_fu_598_p3 - zext_ln5165_1_fu_606_p1);
assign sub_ln5165_fu_583_p2 = (p_shl18_fu_574_p5 - zext_ln5165_fu_570_p1);
assign sub_ln5167_1_fu_666_p2 = (tmp_119_fu_654_p3 - zext_ln5167_1_fu_662_p1);
assign sub_ln5167_fu_639_p2 = (p_shl16_fu_631_p4 - zext_ln5167_fu_627_p1);
assign tmp_119_fu_654_p3 = {{trunc_ln5167_fu_650_p1}, {2'd0}};
assign tmp_120_fu_528_p3 = v3872_fu_516_p2[32'd5];
assign tmp_50_fu_691_p3 = {{tmp_49_reg_763_pp0_iter2_reg}, {lshr_ln_reg_756_pp0_iter2_reg}};
assign tmp_51_fu_563_p4 = {{{tmp_s_reg_748}, {tmp_121}}, {lshr_ln_reg_756}};
assign tmp_52_fu_621_p3 = {{tmp_s_reg_748}, {lshr_ln5_reg_768}};
assign tmp_fu_598_p3 = {{trunc_ln5165_fu_594_p1}, {2'd0}};
assign trunc_ln5165_fu_594_p1 = add_ln5165_fu_589_p2[14:0];
assign trunc_ln5167_fu_650_p1 = add_ln5167_fu_645_p2[14:0];
assign v3871_fu_448_p3 = ((ap_phi_mux_icmp_ln516296_phi_fu_395_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v387194_load : add_ln5161_fu_434_p2);
assign v3872_fu_516_p2 = (select_ln5161_fu_440_p3 + 6'd2);
assign v3967_1_address0 = zext_ln5179_fu_697_p1;
assign v3967_1_ce0 = v3967_1_ce0_local;
assign v3967_1_d0 = v9004_3_0_q0;
assign v3967_1_we0 = v3967_1_we0_local;
assign v3967_2_address0 = zext_ln5179_fu_697_p1;
assign v3967_2_ce0 = v3967_2_ce0_local;
assign v3967_2_d0 = v9004_2_1_q0;
assign v3967_2_we0 = v3967_2_we0_local;
assign v3967_3_address0 = zext_ln5179_fu_697_p1;
assign v3967_3_ce0 = v3967_3_ce0_local;
assign v3967_3_d0 = v9004_2_0_q0;
assign v3967_3_we0 = v3967_3_we0_local;
assign v3967_4_address0 = zext_ln5179_fu_697_p1;
assign v3967_4_ce0 = v3967_4_ce0_local;
assign v3967_4_d0 = v9004_1_1_q0;
assign v3967_4_we0 = v3967_4_we0_local;
assign v3967_5_address0 = zext_ln5179_fu_697_p1;
assign v3967_5_ce0 = v3967_5_ce0_local;
assign v3967_5_d0 = v9004_1_0_q0;
assign v3967_5_we0 = v3967_5_we0_local;
assign v3967_6_address0 = zext_ln5179_fu_697_p1;
assign v3967_6_ce0 = v3967_6_ce0_local;
assign v3967_6_d0 = v9004_0_1_q0;
assign v3967_6_we0 = v3967_6_we0_local;
assign v3967_7_address0 = zext_ln5179_fu_697_p1;
assign v3967_7_ce0 = v3967_7_ce0_local;
assign v3967_7_d0 = v9004_0_0_q0;
assign v3967_7_we0 = v3967_7_we0_local;
assign v3967_address0 = zext_ln5179_fu_697_p1;
assign v3967_ce0 = v3967_ce0_local;
assign v3967_d0 = v9004_3_1_q0;
assign v3967_we0 = v3967_we0_local;
assign v9004_0_0_address0 = zext_ln5165_2_fu_677_p1;
assign v9004_0_0_ce0 = v9004_0_0_ce0_local;
assign v9004_0_1_address0 = zext_ln5167_2_fu_684_p1;
assign v9004_0_1_ce0 = v9004_0_1_ce0_local;
assign v9004_1_0_address0 = zext_ln5165_2_fu_677_p1;
assign v9004_1_0_ce0 = v9004_1_0_ce0_local;
assign v9004_1_1_address0 = zext_ln5167_2_fu_684_p1;
assign v9004_1_1_ce0 = v9004_1_1_ce0_local;
assign v9004_2_0_address0 = zext_ln5165_2_fu_677_p1;
assign v9004_2_0_ce0 = v9004_2_0_ce0_local;
assign v9004_2_1_address0 = zext_ln5167_2_fu_684_p1;
assign v9004_2_1_ce0 = v9004_2_1_ce0_local;
assign v9004_3_0_address0 = zext_ln5165_2_fu_677_p1;
assign v9004_3_0_ce0 = v9004_3_0_ce0_local;
assign v9004_3_1_address0 = zext_ln5167_2_fu_684_p1;
assign v9004_3_1_ce0 = v9004_3_1_ce0_local;
assign xor_ln5162_fu_536_p2 = (tmp_120_fu_528_p3 ^ 1'd1);
assign zext_ln5161_fu_456_p1 = v3871_fu_448_p3;
assign zext_ln5162_fu_476_p1 = select_ln5161_fu_440_p3;
assign zext_ln5165_1_fu_606_p1 = add_ln5165_fu_589_p2;
assign zext_ln5165_2_fu_677_p1 = add_ln5165_1_reg_783;
assign zext_ln5165_fu_570_p1 = tmp_51_fu_563_p4;
assign zext_ln5167_1_fu_662_p1 = add_ln5167_fu_645_p2;
assign zext_ln5167_2_fu_684_p1 = add_ln5167_1_reg_788;
assign zext_ln5167_fu_627_p1 = tmp_52_fu_621_p3;
assign zext_ln5179_fu_697_p1 = tmp_50_fu_691_p3;
assign zext_ln5203_1_cast_fu_406_p1 = zext_ln5203_1;
assign zext_ln5203_cast_fu_402_p1 = zext_ln5203;
always @ (posedge ap_clk) begin
    zext_ln5203_cast_reg_736[16:2] <= 15'b000000000000000;
    zext_ln5203_1_cast_reg_742[15:2] <= 14'b00000000000000;
end
endmodule 