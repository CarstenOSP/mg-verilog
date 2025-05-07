module backprop_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_address0,delta_weights1_ce0,delta_weights1_we0,delta_weights1_d0,delta_weights1_address1,delta_weights1_ce1,delta_weights1_we1,delta_weights1_d1,oracle_activations1_address0,oracle_activations1_ce0,oracle_activations1_q0,oracle_activations1_address1,oracle_activations1_ce1,oracle_activations1_q1,oracle_activations1_1_address0,oracle_activations1_1_ce0,oracle_activations1_1_q0,oracle_activations1_1_address1,oracle_activations1_1_ce1,oracle_activations1_1_q1,oracle_activations1_2_address0,oracle_activations1_2_ce0,oracle_activations1_2_q0,oracle_activations1_2_address1,oracle_activations1_2_ce1,oracle_activations1_2_q1,oracle_activations1_3_address0,oracle_activations1_3_ce0,oracle_activations1_3_q0,oracle_activations1_3_address1,oracle_activations1_3_ce1,oracle_activations1_3_q1,grp_fu_2070_p_din0,grp_fu_2070_p_din1,grp_fu_2070_p_dout0,grp_fu_2070_p_ce,grp_fu_3523_p_din0,grp_fu_3523_p_din1,grp_fu_3523_p_dout0,grp_fu_3523_p_ce,grp_fu_3527_p_din0,grp_fu_3527_p_din1,grp_fu_3527_p_dout0,grp_fu_3527_p_ce,grp_fu_3531_p_din0,grp_fu_3531_p_din1,grp_fu_3531_p_dout0,grp_fu_3531_p_ce,grp_fu_3535_p_din0,grp_fu_3535_p_din1,grp_fu_3535_p_dout0,grp_fu_3535_p_ce,grp_fu_3539_p_din0,grp_fu_3539_p_din1,grp_fu_3539_p_dout0,grp_fu_3539_p_ce,grp_fu_3543_p_din0,grp_fu_3543_p_din1,grp_fu_3543_p_dout0,grp_fu_3543_p_ce,grp_fu_3547_p_din0,grp_fu_3547_p_din1,grp_fu_3547_p_dout0,grp_fu_3547_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] phi_mul;
output  [9:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [9:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [9:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [9:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [7:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [7:0] delta_weights1_3_address1;
output   delta_weights1_3_ce1;
output   delta_weights1_3_we1;
output  [63:0] delta_weights1_3_d1;
output  [7:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [7:0] delta_weights1_2_address1;
output   delta_weights1_2_ce1;
output   delta_weights1_2_we1;
output  [63:0] delta_weights1_2_d1;
output  [7:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [7:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [7:0] delta_weights1_address0;
output   delta_weights1_ce0;
output   delta_weights1_we0;
output  [63:0] delta_weights1_d0;
output  [7:0] delta_weights1_address1;
output   delta_weights1_ce1;
output   delta_weights1_we1;
output  [63:0] delta_weights1_d1;
output  [3:0] oracle_activations1_address0;
output   oracle_activations1_ce0;
input  [63:0] oracle_activations1_q0;
output  [3:0] oracle_activations1_address1;
output   oracle_activations1_ce1;
input  [63:0] oracle_activations1_q1;
output  [3:0] oracle_activations1_1_address0;
output   oracle_activations1_1_ce0;
input  [63:0] oracle_activations1_1_q0;
output  [3:0] oracle_activations1_1_address1;
output   oracle_activations1_1_ce1;
input  [63:0] oracle_activations1_1_q1;
output  [3:0] oracle_activations1_2_address0;
output   oracle_activations1_2_ce0;
input  [63:0] oracle_activations1_2_q0;
output  [3:0] oracle_activations1_2_address1;
output   oracle_activations1_2_ce1;
input  [63:0] oracle_activations1_2_q1;
output  [3:0] oracle_activations1_3_address0;
output   oracle_activations1_3_ce0;
input  [63:0] oracle_activations1_3_q0;
output  [3:0] oracle_activations1_3_address1;
output   oracle_activations1_3_ce1;
input  [63:0] oracle_activations1_3_q1;
output  [63:0] grp_fu_2070_p_din0;
output  [63:0] grp_fu_2070_p_din1;
input  [63:0] grp_fu_2070_p_dout0;
output   grp_fu_2070_p_ce;
output  [63:0] grp_fu_3523_p_din0;
output  [63:0] grp_fu_3523_p_din1;
input  [63:0] grp_fu_3523_p_dout0;
output   grp_fu_3523_p_ce;
output  [63:0] grp_fu_3527_p_din0;
output  [63:0] grp_fu_3527_p_din1;
input  [63:0] grp_fu_3527_p_dout0;
output   grp_fu_3527_p_ce;
output  [63:0] grp_fu_3531_p_din0;
output  [63:0] grp_fu_3531_p_din1;
input  [63:0] grp_fu_3531_p_dout0;
output   grp_fu_3531_p_ce;
output  [63:0] grp_fu_3535_p_din0;
output  [63:0] grp_fu_3535_p_din1;
input  [63:0] grp_fu_3535_p_dout0;
output   grp_fu_3535_p_ce;
output  [63:0] grp_fu_3539_p_din0;
output  [63:0] grp_fu_3539_p_din1;
input  [63:0] grp_fu_3539_p_dout0;
output   grp_fu_3539_p_ce;
output  [63:0] grp_fu_3543_p_din0;
output  [63:0] grp_fu_3543_p_din1;
input  [63:0] grp_fu_3543_p_dout0;
output   grp_fu_3543_p_ce;
output  [63:0] grp_fu_3547_p_din0;
output  [63:0] grp_fu_3547_p_din1;
input  [63:0] grp_fu_3547_p_dout0;
output   grp_fu_3547_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln113_fu_422_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] select_ln113_fu_462_p3;
reg   [3:0] select_ln113_reg_662;
reg   [3:0] select_ln113_reg_662_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_662_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_662_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_662_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_662_pp0_iter5_reg;
reg   [3:0] select_ln113_reg_662_pp0_iter6_reg;
reg   [3:0] select_ln113_reg_662_pp0_iter7_reg;
reg   [3:0] select_ln113_reg_662_pp0_iter8_reg;
reg   [3:0] select_ln113_reg_662_pp0_iter9_reg;
reg   [3:0] select_ln113_reg_662_pp0_iter10_reg;
reg   [3:0] lshr_ln_reg_669;
reg   [3:0] lshr_ln_reg_669_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_669_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_669_pp0_iter3_reg;
reg   [3:0] lshr_ln_reg_669_pp0_iter4_reg;
reg   [3:0] lshr_ln_reg_669_pp0_iter5_reg;
reg   [3:0] lshr_ln_reg_669_pp0_iter6_reg;
reg   [3:0] lshr_ln_reg_669_pp0_iter7_reg;
reg   [3:0] lshr_ln_reg_669_pp0_iter8_reg;
reg   [3:0] lshr_ln_reg_669_pp0_iter9_reg;
reg   [2:0] tmp_29_reg_675;
reg   [2:0] tmp_29_reg_675_pp0_iter1_reg;
reg   [2:0] tmp_29_reg_675_pp0_iter2_reg;
reg   [2:0] tmp_29_reg_675_pp0_iter3_reg;
reg   [2:0] tmp_29_reg_675_pp0_iter4_reg;
reg   [2:0] tmp_29_reg_675_pp0_iter5_reg;
reg   [2:0] tmp_29_reg_675_pp0_iter6_reg;
reg   [2:0] tmp_29_reg_675_pp0_iter7_reg;
reg   [2:0] tmp_29_reg_675_pp0_iter8_reg;
reg   [2:0] tmp_29_reg_675_pp0_iter9_reg;
reg   [2:0] tmp_29_reg_675_pp0_iter10_reg;
wire   [1:0] empty_fu_519_p1;
reg   [1:0] empty_reg_681;
wire   [63:0] tmp_28_fu_564_p11;
reg   [63:0] tmp_28_reg_726;
reg   [63:0] tmp_28_reg_726_pp0_iter3_reg;
reg   [63:0] oracle_activations1_load_reg_738;
reg   [63:0] oracle_activations1_1_load_reg_763;
reg   [63:0] oracle_activations1_2_load_reg_768;
reg   [63:0] oracle_activations1_3_load_reg_773;
reg   [63:0] oracle_activations1_load_1_reg_778;
reg   [63:0] oracle_activations1_1_load_1_reg_783;
reg   [63:0] oracle_activations1_2_load_1_reg_788;
reg   [63:0] oracle_activations1_3_load_1_reg_793;
reg   [63:0] mul_i4_reg_798;
reg   [63:0] mul_1_i1_reg_803;
reg   [63:0] mul_2_i1_reg_808;
reg   [63:0] mul_3_i1_reg_813;
reg   [63:0] mul_4_i1_reg_818;
reg   [63:0] mul_5_i1_reg_823;
reg   [63:0] mul_6_i1_reg_828;
reg   [63:0] mul_7_i1_reg_833;
wire   [63:0] p_cast_fu_533_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln112_fu_541_p1;
wire   [63:0] zext_ln115_1_fu_594_p1;
wire   [63:0] zext_ln115_fu_608_p1;
wire   [63:0] zext_ln115_2_fu_624_p1;
reg   [6:0] j_fu_102;
wire   [6:0] add_ln114_fu_490_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_106;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [6:0] indvar_flatten19_fu_110;
wire   [6:0] add_ln113_fu_428_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten19_load;
reg    training_data_0_ce0_local;
reg    training_data_1_ce0_local;
reg    training_data_2_ce0_local;
reg    training_data_3_ce0_local;
reg    oracle_activations1_ce1_local;
reg    oracle_activations1_ce0_local;
reg    oracle_activations1_1_ce1_local;
reg    oracle_activations1_1_ce0_local;
reg    oracle_activations1_2_ce1_local;
reg    oracle_activations1_2_ce0_local;
reg    oracle_activations1_3_ce1_local;
reg    oracle_activations1_3_ce0_local;
reg    delta_weights1_we1_local;
reg    delta_weights1_ce1_local;
reg    delta_weights1_we0_local;
reg    delta_weights1_ce0_local;
reg    delta_weights1_1_we1_local;
reg    delta_weights1_1_ce1_local;
reg    delta_weights1_1_we0_local;
reg    delta_weights1_1_ce0_local;
reg    delta_weights1_2_we1_local;
reg    delta_weights1_2_ce1_local;
reg    delta_weights1_2_we0_local;
reg    delta_weights1_2_ce0_local;
reg    delta_weights1_3_we1_local;
reg    delta_weights1_3_ce1_local;
reg    delta_weights1_3_we0_local;
reg    delta_weights1_3_ce0_local;
wire   [0:0] tmp_fu_440_p3;
wire   [3:0] add_ln113_1_fu_456_p2;
wire   [6:0] select_ln112_fu_448_p3;
wire   [11:0] zext_ln113_fu_511_p1;
wire   [11:0] arrayidx10_sum_fu_514_p2;
wire   [9:0] tmp_s_fu_523_p4;
wire   [63:0] tmp_28_fu_564_p2;
wire   [63:0] tmp_28_fu_564_p4;
wire   [63:0] tmp_28_fu_564_p6;
wire   [63:0] tmp_28_fu_564_p8;
wire   [63:0] tmp_28_fu_564_p9;
wire   [3:0] or_ln9_fu_587_p3;
wire   [7:0] add_ln3_fu_602_p3;
wire   [7:0] add_ln115_1_fu_616_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_28_fu_564_p1;
wire   [1:0] tmp_28_fu_564_p3;
wire  signed [1:0] tmp_28_fu_564_p5;
wire  signed [1:0] tmp_28_fu_564_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 j_fu_102 = 7'd0;
#0 i_fu_106 = 4'd0;
#0 indvar_flatten19_fu_110 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U335(.din0(tmp_28_fu_564_p2),.din1(tmp_28_fu_564_p4),.din2(tmp_28_fu_564_p6),.din3(tmp_28_fu_564_p8),.def(tmp_28_fu_564_p9),.sel(empty_reg_681),.dout(tmp_28_fu_564_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter10_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_422_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_106 <= select_ln113_fu_462_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_106 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_422_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten19_fu_110 <= add_ln113_fu_428_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten19_fu_110 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_422_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_102 <= add_ln114_fu_490_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_102 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln_reg_669_pp0_iter2_reg <= lshr_ln_reg_669_pp0_iter1_reg;
        lshr_ln_reg_669_pp0_iter3_reg <= lshr_ln_reg_669_pp0_iter2_reg;
        lshr_ln_reg_669_pp0_iter4_reg <= lshr_ln_reg_669_pp0_iter3_reg;
        lshr_ln_reg_669_pp0_iter5_reg <= lshr_ln_reg_669_pp0_iter4_reg;
        lshr_ln_reg_669_pp0_iter6_reg <= lshr_ln_reg_669_pp0_iter5_reg;
        lshr_ln_reg_669_pp0_iter7_reg <= lshr_ln_reg_669_pp0_iter6_reg;
        lshr_ln_reg_669_pp0_iter8_reg <= lshr_ln_reg_669_pp0_iter7_reg;
        lshr_ln_reg_669_pp0_iter9_reg <= lshr_ln_reg_669_pp0_iter8_reg;
        mul_1_i1_reg_803 <= grp_fu_3523_p_dout0;
        mul_2_i1_reg_808 <= grp_fu_3527_p_dout0;
        mul_3_i1_reg_813 <= grp_fu_3531_p_dout0;
        mul_4_i1_reg_818 <= grp_fu_3535_p_dout0;
        mul_5_i1_reg_823 <= grp_fu_3539_p_dout0;
        mul_6_i1_reg_828 <= grp_fu_3543_p_dout0;
        mul_7_i1_reg_833 <= grp_fu_3547_p_dout0;
        mul_i4_reg_798 <= grp_fu_2070_p_dout0;
        select_ln113_reg_662_pp0_iter10_reg <= select_ln113_reg_662_pp0_iter9_reg;
        select_ln113_reg_662_pp0_iter2_reg <= select_ln113_reg_662_pp0_iter1_reg;
        select_ln113_reg_662_pp0_iter3_reg <= select_ln113_reg_662_pp0_iter2_reg;
        select_ln113_reg_662_pp0_iter4_reg <= select_ln113_reg_662_pp0_iter3_reg;
        select_ln113_reg_662_pp0_iter5_reg <= select_ln113_reg_662_pp0_iter4_reg;
        select_ln113_reg_662_pp0_iter6_reg <= select_ln113_reg_662_pp0_iter5_reg;
        select_ln113_reg_662_pp0_iter7_reg <= select_ln113_reg_662_pp0_iter6_reg;
        select_ln113_reg_662_pp0_iter8_reg <= select_ln113_reg_662_pp0_iter7_reg;
        select_ln113_reg_662_pp0_iter9_reg <= select_ln113_reg_662_pp0_iter8_reg;
        tmp_28_reg_726 <= tmp_28_fu_564_p11;
        tmp_28_reg_726_pp0_iter3_reg <= tmp_28_reg_726;
        tmp_29_reg_675_pp0_iter10_reg <= tmp_29_reg_675_pp0_iter9_reg;
        tmp_29_reg_675_pp0_iter2_reg <= tmp_29_reg_675_pp0_iter1_reg;
        tmp_29_reg_675_pp0_iter3_reg <= tmp_29_reg_675_pp0_iter2_reg;
        tmp_29_reg_675_pp0_iter4_reg <= tmp_29_reg_675_pp0_iter3_reg;
        tmp_29_reg_675_pp0_iter5_reg <= tmp_29_reg_675_pp0_iter4_reg;
        tmp_29_reg_675_pp0_iter6_reg <= tmp_29_reg_675_pp0_iter5_reg;
        tmp_29_reg_675_pp0_iter7_reg <= tmp_29_reg_675_pp0_iter6_reg;
        tmp_29_reg_675_pp0_iter8_reg <= tmp_29_reg_675_pp0_iter7_reg;
        tmp_29_reg_675_pp0_iter9_reg <= tmp_29_reg_675_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_681 <= empty_fu_519_p1;
        lshr_ln_reg_669 <= {{select_ln112_fu_448_p3[5:2]}};
        lshr_ln_reg_669_pp0_iter1_reg <= lshr_ln_reg_669;
        select_ln113_reg_662 <= select_ln113_fu_462_p3;
        select_ln113_reg_662_pp0_iter1_reg <= select_ln113_reg_662;
        tmp_29_reg_675 <= {{select_ln112_fu_448_p3[5:3]}};
        tmp_29_reg_675_pp0_iter1_reg <= tmp_29_reg_675;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        oracle_activations1_1_load_1_reg_783 <= oracle_activations1_1_q0;
        oracle_activations1_2_load_1_reg_788 <= oracle_activations1_2_q0;
        oracle_activations1_3_load_1_reg_793 <= oracle_activations1_3_q0;
        oracle_activations1_load_1_reg_778 <= oracle_activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_1_load_reg_763 <= oracle_activations1_1_q1;
        oracle_activations1_2_load_reg_768 <= oracle_activations1_2_q1;
        oracle_activations1_3_load_reg_773 <= oracle_activations1_3_q1;
        oracle_activations1_load_reg_738 <= oracle_activations1_q1;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_422_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter10_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten19_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten19_load = indvar_flatten19_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_ce1_local = 1'b1;
    end else begin
        delta_weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_we1_local = 1'b1;
    end else begin
        delta_weights1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_ce1_local = 1'b1;
    end else begin
        delta_weights1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_we1_local = 1'b1;
    end else begin
        delta_weights1_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_ce1_local = 1'b1;
    end else begin
        delta_weights1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_we1_local = 1'b1;
    end else begin
        delta_weights1_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_ce0_local = 1'b1;
    end else begin
        delta_weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_ce1_local = 1'b1;
    end else begin
        delta_weights1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_we0_local = 1'b1;
    end else begin
        delta_weights1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_we1_local = 1'b1;
    end else begin
        delta_weights1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_1_ce1_local = 1'b1;
    end else begin
        oracle_activations1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_2_ce0_local = 1'b1;
    end else begin
        oracle_activations1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_2_ce1_local = 1'b1;
    end else begin
        oracle_activations1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_3_ce0_local = 1'b1;
    end else begin
        oracle_activations1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_3_ce1_local = 1'b1;
    end else begin
        oracle_activations1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_ce1_local = 1'b1;
    end else begin
        oracle_activations1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
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
assign add_ln113_1_fu_456_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_428_p2 = (ap_sig_allocacmp_indvar_flatten19_load + 7'd1);
assign add_ln114_fu_490_p2 = (select_ln112_fu_448_p3 + 7'd8);
assign add_ln115_1_fu_616_p4 = {{{select_ln113_reg_662_pp0_iter10_reg}, {tmp_29_reg_675_pp0_iter10_reg}}, {1'd1}};
assign add_ln3_fu_602_p3 = {{select_ln113_reg_662_pp0_iter9_reg}, {lshr_ln_reg_669_pp0_iter9_reg}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign arrayidx10_sum_fu_514_p2 = (zext_ln113_fu_511_p1 + phi_mul);
assign delta_weights1_1_address0 = zext_ln115_2_fu_624_p1;
assign delta_weights1_1_address1 = zext_ln115_fu_608_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_ce1 = delta_weights1_1_ce1_local;
assign delta_weights1_1_d0 = mul_5_i1_reg_823;
assign delta_weights1_1_d1 = mul_1_i1_reg_803;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_1_we1 = delta_weights1_1_we1_local;
assign delta_weights1_2_address0 = zext_ln115_2_fu_624_p1;
assign delta_weights1_2_address1 = zext_ln115_fu_608_p1;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_ce1 = delta_weights1_2_ce1_local;
assign delta_weights1_2_d0 = mul_6_i1_reg_828;
assign delta_weights1_2_d1 = mul_2_i1_reg_808;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_2_we1 = delta_weights1_2_we1_local;
assign delta_weights1_3_address0 = zext_ln115_2_fu_624_p1;
assign delta_weights1_3_address1 = zext_ln115_fu_608_p1;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_ce1 = delta_weights1_3_ce1_local;
assign delta_weights1_3_d0 = mul_7_i1_reg_833;
assign delta_weights1_3_d1 = mul_3_i1_reg_813;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_3_we1 = delta_weights1_3_we1_local;
assign delta_weights1_address0 = zext_ln115_2_fu_624_p1;
assign delta_weights1_address1 = zext_ln115_fu_608_p1;
assign delta_weights1_ce0 = delta_weights1_ce0_local;
assign delta_weights1_ce1 = delta_weights1_ce1_local;
assign delta_weights1_d0 = mul_4_i1_reg_818;
assign delta_weights1_d1 = mul_i4_reg_798;
assign delta_weights1_we0 = delta_weights1_we0_local;
assign delta_weights1_we1 = delta_weights1_we1_local;
assign empty_fu_519_p1 = arrayidx10_sum_fu_514_p2[1:0];
assign grp_fu_2070_p_ce = 1'b1;
assign grp_fu_2070_p_din0 = tmp_28_reg_726;
assign grp_fu_2070_p_din1 = oracle_activations1_load_reg_738;
assign grp_fu_3523_p_ce = 1'b1;
assign grp_fu_3523_p_din0 = tmp_28_reg_726;
assign grp_fu_3523_p_din1 = oracle_activations1_1_load_reg_763;
assign grp_fu_3527_p_ce = 1'b1;
assign grp_fu_3527_p_din0 = tmp_28_reg_726;
assign grp_fu_3527_p_din1 = oracle_activations1_2_load_reg_768;
assign grp_fu_3531_p_ce = 1'b1;
assign grp_fu_3531_p_din0 = tmp_28_reg_726;
assign grp_fu_3531_p_din1 = oracle_activations1_3_load_reg_773;
assign grp_fu_3535_p_ce = 1'b1;
assign grp_fu_3535_p_din0 = tmp_28_reg_726_pp0_iter3_reg;
assign grp_fu_3535_p_din1 = oracle_activations1_load_1_reg_778;
assign grp_fu_3539_p_ce = 1'b1;
assign grp_fu_3539_p_din0 = tmp_28_reg_726_pp0_iter3_reg;
assign grp_fu_3539_p_din1 = oracle_activations1_1_load_1_reg_783;
assign grp_fu_3543_p_ce = 1'b1;
assign grp_fu_3543_p_din0 = tmp_28_reg_726_pp0_iter3_reg;
assign grp_fu_3543_p_din1 = oracle_activations1_2_load_1_reg_788;
assign grp_fu_3547_p_ce = 1'b1;
assign grp_fu_3547_p_din0 = tmp_28_reg_726_pp0_iter3_reg;
assign grp_fu_3547_p_din1 = oracle_activations1_3_load_1_reg_793;
assign icmp_ln113_fu_422_p2 = ((ap_sig_allocacmp_indvar_flatten19_load == 7'd104) ? 1'b1 : 1'b0);
assign or_ln9_fu_587_p3 = {{tmp_29_reg_675_pp0_iter1_reg}, {1'd1}};
assign oracle_activations1_1_address0 = zext_ln115_1_fu_594_p1;
assign oracle_activations1_1_address1 = zext_ln112_fu_541_p1;
assign oracle_activations1_1_ce0 = oracle_activations1_1_ce0_local;
assign oracle_activations1_1_ce1 = oracle_activations1_1_ce1_local;
assign oracle_activations1_2_address0 = zext_ln115_1_fu_594_p1;
assign oracle_activations1_2_address1 = zext_ln112_fu_541_p1;
assign oracle_activations1_2_ce0 = oracle_activations1_2_ce0_local;
assign oracle_activations1_2_ce1 = oracle_activations1_2_ce1_local;
assign oracle_activations1_3_address0 = zext_ln115_1_fu_594_p1;
assign oracle_activations1_3_address1 = zext_ln112_fu_541_p1;
assign oracle_activations1_3_ce0 = oracle_activations1_3_ce0_local;
assign oracle_activations1_3_ce1 = oracle_activations1_3_ce1_local;
assign oracle_activations1_address0 = zext_ln115_1_fu_594_p1;
assign oracle_activations1_address1 = zext_ln112_fu_541_p1;
assign oracle_activations1_ce0 = oracle_activations1_ce0_local;
assign oracle_activations1_ce1 = oracle_activations1_ce1_local;
assign p_cast_fu_533_p1 = tmp_s_fu_523_p4;
assign select_ln112_fu_448_p3 = ((tmp_fu_440_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_462_p3 = ((tmp_fu_440_p3[0:0] == 1'b1) ? add_ln113_1_fu_456_p2 : ap_sig_allocacmp_i_load);
assign tmp_28_fu_564_p2 = training_data_0_q0;
assign tmp_28_fu_564_p4 = training_data_1_q0;
assign tmp_28_fu_564_p6 = training_data_2_q0;
assign tmp_28_fu_564_p8 = training_data_3_q0;
assign tmp_28_fu_564_p9 = 'bx;
assign tmp_fu_440_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_s_fu_523_p4 = {{arrayidx10_sum_fu_514_p2[11:2]}};
assign training_data_0_address0 = p_cast_fu_533_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_1_address0 = p_cast_fu_533_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_2_address0 = p_cast_fu_533_p1;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_3_address0 = p_cast_fu_533_p1;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign zext_ln112_fu_541_p1 = lshr_ln_reg_669;
assign zext_ln113_fu_511_p1 = select_ln113_reg_662;
assign zext_ln115_1_fu_594_p1 = or_ln9_fu_587_p3;
assign zext_ln115_2_fu_624_p1 = add_ln115_1_fu_616_p4;
assign zext_ln115_fu_608_p1 = add_ln3_fu_602_p3;
endmodule 