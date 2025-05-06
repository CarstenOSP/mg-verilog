
module backprop_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_address0,delta_weights1_ce0,delta_weights1_we0,delta_weights1_d0,delta_weights1_address1,delta_weights1_ce1,delta_weights1_we1,delta_weights1_d1,oracle_activations1_address0,oracle_activations1_ce0,oracle_activations1_q0,oracle_activations1_address1,oracle_activations1_ce1,oracle_activations1_q1,oracle_activations1_address2,oracle_activations1_ce2,oracle_activations1_q2,oracle_activations1_address3,oracle_activations1_ce3,oracle_activations1_q3,oracle_activations1_1_address0,oracle_activations1_1_ce0,oracle_activations1_1_q0,oracle_activations1_1_address1,oracle_activations1_1_ce1,oracle_activations1_1_q1,oracle_activations1_1_address2,oracle_activations1_1_ce2,oracle_activations1_1_q2,oracle_activations1_1_address3,oracle_activations1_1_ce3,oracle_activations1_1_q3,grp_fu_1770_p_din0,grp_fu_1770_p_din1,grp_fu_1770_p_dout0,grp_fu_1770_p_ce,grp_fu_3161_p_din0,grp_fu_3161_p_din1,grp_fu_3161_p_dout0,grp_fu_3161_p_ce,grp_fu_3165_p_din0,grp_fu_3165_p_din1,grp_fu_3165_p_dout0,grp_fu_3165_p_ce,grp_fu_3169_p_din0,grp_fu_3169_p_din1,grp_fu_3169_p_dout0,grp_fu_3169_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] phi_mul;
output  [10:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [10:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [8:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [8:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [8:0] delta_weights1_address0;
output   delta_weights1_ce0;
output   delta_weights1_we0;
output  [63:0] delta_weights1_d0;
output  [8:0] delta_weights1_address1;
output   delta_weights1_ce1;
output   delta_weights1_we1;
output  [63:0] delta_weights1_d1;
output  [4:0] oracle_activations1_address0;
output   oracle_activations1_ce0;
input  [63:0] oracle_activations1_q0;
output  [4:0] oracle_activations1_address1;
output   oracle_activations1_ce1;
input  [63:0] oracle_activations1_q1;
output  [4:0] oracle_activations1_address2;
output   oracle_activations1_ce2;
input  [63:0] oracle_activations1_q2;
output  [4:0] oracle_activations1_address3;
output   oracle_activations1_ce3;
input  [63:0] oracle_activations1_q3;
output  [4:0] oracle_activations1_1_address0;
output   oracle_activations1_1_ce0;
input  [63:0] oracle_activations1_1_q0;
output  [4:0] oracle_activations1_1_address1;
output   oracle_activations1_1_ce1;
input  [63:0] oracle_activations1_1_q1;
output  [4:0] oracle_activations1_1_address2;
output   oracle_activations1_1_ce2;
input  [63:0] oracle_activations1_1_q2;
output  [4:0] oracle_activations1_1_address3;
output   oracle_activations1_1_ce3;
input  [63:0] oracle_activations1_1_q3;
output  [63:0] grp_fu_1770_p_din0;
output  [63:0] grp_fu_1770_p_din1;
input  [63:0] grp_fu_1770_p_dout0;
output   grp_fu_1770_p_ce;
output  [63:0] grp_fu_3161_p_din0;
output  [63:0] grp_fu_3161_p_din1;
input  [63:0] grp_fu_3161_p_dout0;
output   grp_fu_3161_p_ce;
output  [63:0] grp_fu_3165_p_din0;
output  [63:0] grp_fu_3165_p_din1;
input  [63:0] grp_fu_3165_p_dout0;
output   grp_fu_3165_p_ce;
output  [63:0] grp_fu_3169_p_din0;
output  [63:0] grp_fu_3169_p_din1;
input  [63:0] grp_fu_3169_p_dout0;
output   grp_fu_3169_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln113_reg_639;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_330;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_336;
wire   [0:0] icmp_ln113_fu_360_p2;
reg   [0:0] icmp_ln113_reg_639_pp0_iter1_reg;
reg   [0:0] icmp_ln113_reg_639_pp0_iter2_reg;
reg   [0:0] icmp_ln113_reg_639_pp0_iter3_reg;
reg   [0:0] icmp_ln113_reg_639_pp0_iter4_reg;
wire   [6:0] select_ln112_fu_386_p3;
reg   [6:0] select_ln112_reg_643;
wire   [3:0] select_ln113_fu_400_p3;
reg   [3:0] select_ln113_reg_648;
reg   [3:0] select_ln113_reg_648_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_648_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_648_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_648_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_648_pp0_iter5_reg;
wire   [4:0] lshr_ln_fu_408_p4;
reg   [4:0] lshr_ln_reg_657;
reg   [4:0] lshr_ln_reg_657_pp0_iter1_reg;
reg   [4:0] lshr_ln_reg_657_pp0_iter2_reg;
reg   [4:0] lshr_ln_reg_657_pp0_iter3_reg;
reg   [4:0] lshr_ln_reg_657_pp0_iter4_reg;
wire   [3:0] tmp_54_fu_424_p4;
reg   [3:0] tmp_54_reg_672;
reg   [3:0] tmp_54_reg_672_pp0_iter1_reg;
reg   [3:0] tmp_54_reg_672_pp0_iter2_reg;
reg   [3:0] tmp_54_reg_672_pp0_iter3_reg;
reg   [3:0] tmp_54_reg_672_pp0_iter4_reg;
reg   [3:0] tmp_54_reg_672_pp0_iter5_reg;
wire   [2:0] tmp_55_fu_448_p4;
reg   [2:0] tmp_55_reg_687;
reg   [2:0] tmp_55_reg_687_pp0_iter1_reg;
reg   [2:0] tmp_55_reg_687_pp0_iter2_reg;
reg   [2:0] tmp_55_reg_687_pp0_iter3_reg;
reg   [2:0] tmp_55_reg_687_pp0_iter4_reg;
reg   [2:0] tmp_55_reg_687_pp0_iter5_reg;
wire   [0:0] tmp_32_fu_458_p3;
reg   [0:0] tmp_32_reg_693;
reg   [0:0] tmp_32_reg_693_pp0_iter1_reg;
reg   [0:0] tmp_32_reg_693_pp0_iter2_reg;
reg   [0:0] tmp_32_reg_693_pp0_iter3_reg;
reg   [0:0] tmp_32_reg_693_pp0_iter4_reg;
reg   [0:0] tmp_32_reg_693_pp0_iter5_reg;
wire   [0:0] empty_fu_514_p1;
reg   [0:0] empty_reg_718;
reg   [63:0] oracle_activations1_load_reg_733;
reg   [63:0] oracle_activations1_1_load_reg_738;
reg   [63:0] oracle_activations1_load_1_reg_743;
reg   [63:0] oracle_activations1_1_load_1_reg_748;
reg   [63:0] oracle_activations1_load_2_reg_753;
reg   [63:0] oracle_activations1_load_2_reg_753_pp0_iter1_reg;
reg   [63:0] oracle_activations1_1_load_2_reg_758;
reg   [63:0] oracle_activations1_1_load_2_reg_758_pp0_iter1_reg;
reg   [63:0] oracle_activations1_load_3_reg_763;
reg   [63:0] oracle_activations1_load_3_reg_763_pp0_iter1_reg;
reg   [63:0] oracle_activations1_1_load_3_reg_768;
reg   [63:0] oracle_activations1_1_load_3_reg_768_pp0_iter1_reg;
wire   [63:0] tmp_29_v_fu_544_p3;
reg   [63:0] tmp_29_v_reg_773;
wire   [63:0] tmp_29_fu_551_p1;
reg   [63:0] tmp_29_reg_778;
reg   [63:0] mul_2_i1_reg_786;
reg   [63:0] mul_3_i1_reg_791;
reg   [63:0] mul_6_i1_reg_796;
reg   [63:0] mul_7_i1_reg_801;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln112_fu_418_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln115_1_fu_442_p1;
wire   [63:0] zext_ln115_3_fu_476_p1;
wire   [63:0] zext_ln115_5_fu_490_p1;
wire   [63:0] p_cast_fu_528_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln115_fu_564_p1;
wire   [63:0] zext_ln115_2_fu_578_p1;
wire   [63:0] zext_ln115_4_fu_593_p1;
wire   [63:0] zext_ln115_6_fu_607_p1;
reg   [6:0] j_fu_90;
wire   [6:0] add_ln114_fu_534_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_94;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [6:0] indvar_flatten19_fu_98;
wire   [6:0] add_ln113_fu_366_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten19_load;
reg    oracle_activations1_ce3_local;
reg    oracle_activations1_ce2_local;
reg    oracle_activations1_ce1_local;
reg    oracle_activations1_ce0_local;
reg    oracle_activations1_1_ce3_local;
reg    oracle_activations1_1_ce2_local;
reg    oracle_activations1_1_ce1_local;
reg    oracle_activations1_1_ce0_local;
reg    training_data_0_ce0_local;
reg    training_data_1_ce0_local;
reg    delta_weights1_we1_local;
reg   [63:0] delta_weights1_d1_local;
reg    delta_weights1_ce1_local;
reg   [8:0] delta_weights1_address1_local;
reg    delta_weights1_we0_local;
reg   [63:0] delta_weights1_d0_local;
reg    delta_weights1_ce0_local;
reg   [8:0] delta_weights1_address0_local;
reg    delta_weights1_1_we1_local;
reg   [63:0] delta_weights1_1_d1_local;
reg    delta_weights1_1_ce1_local;
reg   [8:0] delta_weights1_1_address1_local;
reg    delta_weights1_1_we0_local;
reg   [63:0] delta_weights1_1_d0_local;
reg    delta_weights1_1_ce0_local;
reg   [8:0] delta_weights1_1_address0_local;
reg   [63:0] grp_fu_314_p0;
reg   [63:0] grp_fu_314_p1;
reg   [63:0] grp_fu_318_p0;
reg   [63:0] grp_fu_318_p1;
reg   [63:0] grp_fu_322_p0;
reg   [63:0] grp_fu_322_p1;
reg   [63:0] grp_fu_326_p0;
reg   [63:0] grp_fu_326_p1;
wire   [0:0] tmp_fu_378_p3;
wire   [3:0] add_ln113_1_fu_394_p2;
wire   [4:0] or_ln_fu_434_p3;
wire   [4:0] or_ln115_1_fu_466_p4;
wire   [4:0] or_ln115_2_fu_482_p3;
wire   [11:0] zext_ln113_fu_506_p1;
wire   [11:0] arrayidx10_sum_fu_509_p2;
wire   [10:0] tmp_s_fu_518_p4;
wire   [8:0] add_ln6_fu_558_p3;
wire   [8:0] add_ln115_1_fu_570_p4;
wire   [8:0] add_ln115_2_fu_584_p5;
wire   [8:0] add_ln115_3_fu_599_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter5_stage0;
reg    ap_idle_pp0_0to4;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to6;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_90 = 7'd0;
#0 i_fu_94 = 4'd0;
#0 indvar_flatten19_fu_98 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln113_fu_360_p2 == 1'd0))) begin
            i_fu_94 <= select_ln113_fu_400_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_94 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln113_fu_360_p2 == 1'd0))) begin
            indvar_flatten19_fu_98 <= add_ln113_fu_366_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten19_fu_98 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_90 <= 7'd0;
    end else if (((icmp_ln113_reg_639 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_90 <= add_ln114_fu_534_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_reg_718 <= empty_fu_514_p1;
        oracle_activations1_1_load_2_reg_758_pp0_iter1_reg <= oracle_activations1_1_load_2_reg_758;
        oracle_activations1_1_load_3_reg_768_pp0_iter1_reg <= oracle_activations1_1_load_3_reg_768;
        oracle_activations1_load_2_reg_753_pp0_iter1_reg <= oracle_activations1_load_2_reg_753;
        oracle_activations1_load_3_reg_763_pp0_iter1_reg <= oracle_activations1_load_3_reg_763;
        tmp_29_reg_778 <= tmp_29_fu_551_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln113_reg_639 <= icmp_ln113_fu_360_p2;
        icmp_ln113_reg_639_pp0_iter1_reg <= icmp_ln113_reg_639;
        icmp_ln113_reg_639_pp0_iter2_reg <= icmp_ln113_reg_639_pp0_iter1_reg;
        icmp_ln113_reg_639_pp0_iter3_reg <= icmp_ln113_reg_639_pp0_iter2_reg;
        icmp_ln113_reg_639_pp0_iter4_reg <= icmp_ln113_reg_639_pp0_iter3_reg;
        lshr_ln_reg_657 <= {{select_ln112_fu_386_p3[5:1]}};
        lshr_ln_reg_657_pp0_iter1_reg <= lshr_ln_reg_657;
        lshr_ln_reg_657_pp0_iter2_reg <= lshr_ln_reg_657_pp0_iter1_reg;
        lshr_ln_reg_657_pp0_iter3_reg <= lshr_ln_reg_657_pp0_iter2_reg;
        lshr_ln_reg_657_pp0_iter4_reg <= lshr_ln_reg_657_pp0_iter3_reg;
        select_ln112_reg_643 <= select_ln112_fu_386_p3;
        select_ln113_reg_648 <= select_ln113_fu_400_p3;
        select_ln113_reg_648_pp0_iter1_reg <= select_ln113_reg_648;
        select_ln113_reg_648_pp0_iter2_reg <= select_ln113_reg_648_pp0_iter1_reg;
        select_ln113_reg_648_pp0_iter3_reg <= select_ln113_reg_648_pp0_iter2_reg;
        select_ln113_reg_648_pp0_iter4_reg <= select_ln113_reg_648_pp0_iter3_reg;
        select_ln113_reg_648_pp0_iter5_reg <= select_ln113_reg_648_pp0_iter4_reg;
        tmp_29_v_reg_773 <= tmp_29_v_fu_544_p3;
        tmp_32_reg_693 <= select_ln112_fu_386_p3[32'd1];
        tmp_32_reg_693_pp0_iter1_reg <= tmp_32_reg_693;
        tmp_32_reg_693_pp0_iter2_reg <= tmp_32_reg_693_pp0_iter1_reg;
        tmp_32_reg_693_pp0_iter3_reg <= tmp_32_reg_693_pp0_iter2_reg;
        tmp_32_reg_693_pp0_iter4_reg <= tmp_32_reg_693_pp0_iter3_reg;
        tmp_32_reg_693_pp0_iter5_reg <= tmp_32_reg_693_pp0_iter4_reg;
        tmp_54_reg_672 <= {{select_ln112_fu_386_p3[5:2]}};
        tmp_54_reg_672_pp0_iter1_reg <= tmp_54_reg_672;
        tmp_54_reg_672_pp0_iter2_reg <= tmp_54_reg_672_pp0_iter1_reg;
        tmp_54_reg_672_pp0_iter3_reg <= tmp_54_reg_672_pp0_iter2_reg;
        tmp_54_reg_672_pp0_iter4_reg <= tmp_54_reg_672_pp0_iter3_reg;
        tmp_54_reg_672_pp0_iter5_reg <= tmp_54_reg_672_pp0_iter4_reg;
        tmp_55_reg_687 <= {{select_ln112_fu_386_p3[5:3]}};
        tmp_55_reg_687_pp0_iter1_reg <= tmp_55_reg_687;
        tmp_55_reg_687_pp0_iter2_reg <= tmp_55_reg_687_pp0_iter1_reg;
        tmp_55_reg_687_pp0_iter3_reg <= tmp_55_reg_687_pp0_iter2_reg;
        tmp_55_reg_687_pp0_iter4_reg <= tmp_55_reg_687_pp0_iter3_reg;
        tmp_55_reg_687_pp0_iter5_reg <= tmp_55_reg_687_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_2_i1_reg_786 <= grp_fu_3165_p_dout0;
        mul_3_i1_reg_791 <= grp_fu_3169_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_6_i1_reg_796 <= grp_fu_3165_p_dout0;
        mul_7_i1_reg_801 <= grp_fu_3169_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations1_1_load_1_reg_748 <= oracle_activations1_1_q2;
        oracle_activations1_1_load_2_reg_758 <= oracle_activations1_1_q1;
        oracle_activations1_1_load_3_reg_768 <= oracle_activations1_1_q0;
        oracle_activations1_1_load_reg_738 <= oracle_activations1_1_q3;
        oracle_activations1_load_1_reg_743 <= oracle_activations1_q2;
        oracle_activations1_load_2_reg_753 <= oracle_activations1_q1;
        oracle_activations1_load_3_reg_763 <= oracle_activations1_q0;
        oracle_activations1_load_reg_733 <= oracle_activations1_q3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_330 <= grp_fu_1770_p_dout0;
        reg_336 <= grp_fu_3161_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln113_reg_639 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln113_reg_639_pp0_iter4_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter5_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter5_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten19_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten19_load = indvar_flatten19_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_1_address0_local = zext_ln115_6_fu_607_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_1_address0_local = zext_ln115_4_fu_593_p1;
    end else begin
        delta_weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_1_address1_local = zext_ln115_2_fu_578_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_1_address1_local = zext_ln115_fu_564_p1;
        end else begin
            delta_weights1_1_address1_local = 'bx;
        end
    end else begin
        delta_weights1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_ce1_local = 1'b1;
    end else begin
        delta_weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_1_d0_local = mul_7_i1_reg_801;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_1_d0_local = reg_336;
    end else begin
        delta_weights1_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_1_d1_local = mul_3_i1_reg_791;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_1_d1_local = reg_336;
        end else begin
            delta_weights1_1_d1_local = 'bx;
        end
    end else begin
        delta_weights1_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_we1_local = 1'b1;
    end else begin
        delta_weights1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_address0_local = zext_ln115_6_fu_607_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_address0_local = zext_ln115_4_fu_593_p1;
    end else begin
        delta_weights1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_address1_local = zext_ln115_2_fu_578_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_address1_local = zext_ln115_fu_564_p1;
        end else begin
            delta_weights1_address1_local = 'bx;
        end
    end else begin
        delta_weights1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_ce0_local = 1'b1;
    end else begin
        delta_weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_ce1_local = 1'b1;
    end else begin
        delta_weights1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_d0_local = mul_6_i1_reg_796;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_d0_local = reg_330;
    end else begin
        delta_weights1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_d1_local = mul_2_i1_reg_786;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_d1_local = reg_330;
        end else begin
            delta_weights1_d1_local = 'bx;
        end
    end else begin
        delta_weights1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_we0_local = 1'b1;
    end else begin
        delta_weights1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_we1_local = 1'b1;
    end else begin
        delta_weights1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_314_p0 = tmp_29_reg_778;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_314_p0 = tmp_29_fu_551_p1;
    end else begin
        grp_fu_314_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_314_p1 = oracle_activations1_load_2_reg_753_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_314_p1 = oracle_activations1_load_reg_733;
    end else begin
        grp_fu_314_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_318_p0 = tmp_29_reg_778;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_318_p0 = tmp_29_fu_551_p1;
    end else begin
        grp_fu_318_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_318_p1 = oracle_activations1_1_load_2_reg_758_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_318_p1 = oracle_activations1_1_load_reg_738;
    end else begin
        grp_fu_318_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_322_p0 = tmp_29_reg_778;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_322_p0 = tmp_29_fu_551_p1;
    end else begin
        grp_fu_322_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_322_p1 = oracle_activations1_load_3_reg_763_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_322_p1 = oracle_activations1_load_1_reg_743;
    end else begin
        grp_fu_322_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_326_p0 = tmp_29_reg_778;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_326_p0 = tmp_29_fu_551_p1;
    end else begin
        grp_fu_326_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_326_p1 = oracle_activations1_1_load_3_reg_768_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_326_p1 = oracle_activations1_1_load_1_reg_748;
    end else begin
        grp_fu_326_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_1_ce1_local = 1'b1;
    end else begin
        oracle_activations1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_1_ce2_local = 1'b1;
    end else begin
        oracle_activations1_1_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_1_ce3_local = 1'b1;
    end else begin
        oracle_activations1_1_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_ce1_local = 1'b1;
    end else begin
        oracle_activations1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_ce2_local = 1'b1;
    end else begin
        oracle_activations1_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_ce3_local = 1'b1;
    end else begin
        oracle_activations1_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln113_1_fu_394_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_366_p2 = (ap_sig_allocacmp_indvar_flatten19_load + 7'd1);
assign add_ln114_fu_534_p2 = (select_ln112_reg_643 + 7'd8);
assign add_ln115_1_fu_570_p4 = {{{select_ln113_reg_648_pp0_iter5_reg}, {tmp_54_reg_672_pp0_iter5_reg}}, {1'd1}};
assign add_ln115_2_fu_584_p5 = {{{{select_ln113_reg_648_pp0_iter5_reg}, {tmp_55_reg_687_pp0_iter5_reg}}, {1'd1}}, {tmp_32_reg_693_pp0_iter5_reg}};
assign add_ln115_3_fu_599_p4 = {{{select_ln113_reg_648_pp0_iter5_reg}, {tmp_55_reg_687_pp0_iter5_reg}}, {2'd3}};
assign add_ln6_fu_558_p3 = {{select_ln113_reg_648_pp0_iter4_reg}, {lshr_ln_reg_657_pp0_iter4_reg}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign arrayidx10_sum_fu_509_p2 = (zext_ln113_fu_506_p1 + phi_mul);
assign delta_weights1_1_address0 = delta_weights1_1_address0_local;
assign delta_weights1_1_address1 = delta_weights1_1_address1_local;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_ce1 = delta_weights1_1_ce1_local;
assign delta_weights1_1_d0 = delta_weights1_1_d0_local;
assign delta_weights1_1_d1 = delta_weights1_1_d1_local;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_1_we1 = delta_weights1_1_we1_local;
assign delta_weights1_address0 = delta_weights1_address0_local;
assign delta_weights1_address1 = delta_weights1_address1_local;
assign delta_weights1_ce0 = delta_weights1_ce0_local;
assign delta_weights1_ce1 = delta_weights1_ce1_local;
assign delta_weights1_d0 = delta_weights1_d0_local;
assign delta_weights1_d1 = delta_weights1_d1_local;
assign delta_weights1_we0 = delta_weights1_we0_local;
assign delta_weights1_we1 = delta_weights1_we1_local;
assign empty_fu_514_p1 = arrayidx10_sum_fu_509_p2[0:0];
assign grp_fu_1770_p_ce = 1'b1;
assign grp_fu_1770_p_din0 = grp_fu_314_p0;
assign grp_fu_1770_p_din1 = grp_fu_314_p1;
assign grp_fu_3161_p_ce = 1'b1;
assign grp_fu_3161_p_din0 = grp_fu_318_p0;
assign grp_fu_3161_p_din1 = grp_fu_318_p1;
assign grp_fu_3165_p_ce = 1'b1;
assign grp_fu_3165_p_din0 = grp_fu_322_p0;
assign grp_fu_3165_p_din1 = grp_fu_322_p1;
assign grp_fu_3169_p_ce = 1'b1;
assign grp_fu_3169_p_din0 = grp_fu_326_p0;
assign grp_fu_3169_p_din1 = grp_fu_326_p1;
assign icmp_ln113_fu_360_p2 = ((ap_sig_allocacmp_indvar_flatten19_load == 7'd104) ? 1'b1 : 1'b0);
assign lshr_ln_fu_408_p4 = {{select_ln112_fu_386_p3[5:1]}};
assign or_ln115_1_fu_466_p4 = {{{tmp_55_fu_448_p4}, {1'd1}}, {tmp_32_fu_458_p3}};
assign or_ln115_2_fu_482_p3 = {{tmp_55_fu_448_p4}, {2'd3}};
assign or_ln_fu_434_p3 = {{tmp_54_fu_424_p4}, {1'd1}};
assign oracle_activations1_1_address0 = zext_ln115_5_fu_490_p1;
assign oracle_activations1_1_address1 = zext_ln115_3_fu_476_p1;
assign oracle_activations1_1_address2 = zext_ln115_1_fu_442_p1;
assign oracle_activations1_1_address3 = zext_ln112_fu_418_p1;
assign oracle_activations1_1_ce0 = oracle_activations1_1_ce0_local;
assign oracle_activations1_1_ce1 = oracle_activations1_1_ce1_local;
assign oracle_activations1_1_ce2 = oracle_activations1_1_ce2_local;
assign oracle_activations1_1_ce3 = oracle_activations1_1_ce3_local;
assign oracle_activations1_address0 = zext_ln115_5_fu_490_p1;
assign oracle_activations1_address1 = zext_ln115_3_fu_476_p1;
assign oracle_activations1_address2 = zext_ln115_1_fu_442_p1;
assign oracle_activations1_address3 = zext_ln112_fu_418_p1;
assign oracle_activations1_ce0 = oracle_activations1_ce0_local;
assign oracle_activations1_ce1 = oracle_activations1_ce1_local;
assign oracle_activations1_ce2 = oracle_activations1_ce2_local;
assign oracle_activations1_ce3 = oracle_activations1_ce3_local;
assign p_cast_fu_528_p1 = tmp_s_fu_518_p4;
assign select_ln112_fu_386_p3 = ((tmp_fu_378_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_400_p3 = ((tmp_fu_378_p3[0:0] == 1'b1) ? add_ln113_1_fu_394_p2 : ap_sig_allocacmp_i_load);
assign tmp_29_fu_551_p1 = tmp_29_v_reg_773;
assign tmp_29_v_fu_544_p3 = ((empty_reg_718[0:0] == 1'b1) ? training_data_1_q0 : training_data_0_q0);
assign tmp_32_fu_458_p3 = select_ln112_fu_386_p3[32'd1];
assign tmp_54_fu_424_p4 = {{select_ln112_fu_386_p3[5:2]}};
assign tmp_55_fu_448_p4 = {{select_ln112_fu_386_p3[5:3]}};
assign tmp_fu_378_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_s_fu_518_p4 = {{arrayidx10_sum_fu_509_p2[11:1]}};
assign training_data_0_address0 = p_cast_fu_528_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_1_address0 = p_cast_fu_528_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign zext_ln112_fu_418_p1 = lshr_ln_fu_408_p4;
assign zext_ln113_fu_506_p1 = select_ln113_reg_648;
assign zext_ln115_1_fu_442_p1 = or_ln_fu_434_p3;
assign zext_ln115_2_fu_578_p1 = add_ln115_1_fu_570_p4;
assign zext_ln115_3_fu_476_p1 = or_ln115_1_fu_466_p4;
assign zext_ln115_4_fu_593_p1 = add_ln115_2_fu_584_p5;
assign zext_ln115_5_fu_490_p1 = or_ln115_2_fu_482_p3;
assign zext_ln115_6_fu_607_p1 = add_ln115_3_fu_599_p4;
assign zext_ln115_fu_564_p1 = add_ln6_fu_558_p3;
endmodule 
