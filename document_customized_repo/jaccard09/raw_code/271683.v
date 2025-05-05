module backprop_backprop_Pipeline_label_25_label_26 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul171,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v12_3_address0,v12_3_ce0,v12_3_we0,v12_3_d0,v12_3_address1,v12_3_ce1,v12_3_we1,v12_3_d1,v12_2_address0,v12_2_ce0,v12_2_we0,v12_2_d0,v12_2_address1,v12_2_ce1,v12_2_we1,v12_2_d1,v12_1_address0,v12_1_ce0,v12_1_we0,v12_1_d0,v12_1_address1,v12_1_ce1,v12_1_we1,v12_1_d1,v12_address0,v12_ce0,v12_we0,v12_d0,v12_address1,v12_ce1,v12_we1,v12_d1,v9_address0,v9_ce0,v9_q0,v9_address1,v9_ce1,v9_q1,v9_1_address0,v9_1_ce0,v9_1_q0,v9_1_address1,v9_1_ce1,v9_1_q1,v9_2_address0,v9_2_ce0,v9_2_q0,v9_2_address1,v9_2_ce1,v9_2_q1,v9_3_address0,v9_3_ce0,v9_3_q0,v9_3_address1,v9_3_ce1,v9_3_q1,grp_fu_3706_p_din0,grp_fu_3706_p_din1,grp_fu_3706_p_dout0,grp_fu_3706_p_ce,grp_fu_3710_p_din0,grp_fu_3710_p_din1,grp_fu_3710_p_dout0,grp_fu_3710_p_ce,grp_fu_3714_p_din0,grp_fu_3714_p_din1,grp_fu_3714_p_dout0,grp_fu_3714_p_ce,grp_fu_8623_p_din0,grp_fu_8623_p_din1,grp_fu_8623_p_dout0,grp_fu_8623_p_ce,grp_fu_8627_p_din0,grp_fu_8627_p_din1,grp_fu_8627_p_dout0,grp_fu_8627_p_ce,grp_fu_8631_p_din0,grp_fu_8631_p_din1,grp_fu_8631_p_dout0,grp_fu_8631_p_ce,grp_fu_8635_p_din0,grp_fu_8635_p_din1,grp_fu_8635_p_dout0,grp_fu_8635_p_ce,grp_fu_8639_p_din0,grp_fu_8639_p_din1,grp_fu_8639_p_dout0,grp_fu_8639_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] phi_mul171;
output  [10:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [10:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [7:0] v12_3_address0;
output   v12_3_ce0;
output   v12_3_we0;
output  [63:0] v12_3_d0;
output  [7:0] v12_3_address1;
output   v12_3_ce1;
output   v12_3_we1;
output  [63:0] v12_3_d1;
output  [7:0] v12_2_address0;
output   v12_2_ce0;
output   v12_2_we0;
output  [63:0] v12_2_d0;
output  [7:0] v12_2_address1;
output   v12_2_ce1;
output   v12_2_we1;
output  [63:0] v12_2_d1;
output  [7:0] v12_1_address0;
output   v12_1_ce0;
output   v12_1_we0;
output  [63:0] v12_1_d0;
output  [7:0] v12_1_address1;
output   v12_1_ce1;
output   v12_1_we1;
output  [63:0] v12_1_d1;
output  [7:0] v12_address0;
output   v12_ce0;
output   v12_we0;
output  [63:0] v12_d0;
output  [7:0] v12_address1;
output   v12_ce1;
output   v12_we1;
output  [63:0] v12_d1;
output  [3:0] v9_address0;
output   v9_ce0;
input  [63:0] v9_q0;
output  [3:0] v9_address1;
output   v9_ce1;
input  [63:0] v9_q1;
output  [3:0] v9_1_address0;
output   v9_1_ce0;
input  [63:0] v9_1_q0;
output  [3:0] v9_1_address1;
output   v9_1_ce1;
input  [63:0] v9_1_q1;
output  [3:0] v9_2_address0;
output   v9_2_ce0;
input  [63:0] v9_2_q0;
output  [3:0] v9_2_address1;
output   v9_2_ce1;
input  [63:0] v9_2_q1;
output  [3:0] v9_3_address0;
output   v9_3_ce0;
input  [63:0] v9_3_q0;
output  [3:0] v9_3_address1;
output   v9_3_ce1;
input  [63:0] v9_3_q1;
output  [63:0] grp_fu_3706_p_din0;
output  [63:0] grp_fu_3706_p_din1;
input  [63:0] grp_fu_3706_p_dout0;
output   grp_fu_3706_p_ce;
output  [63:0] grp_fu_3710_p_din0;
output  [63:0] grp_fu_3710_p_din1;
input  [63:0] grp_fu_3710_p_dout0;
output   grp_fu_3710_p_ce;
output  [63:0] grp_fu_3714_p_din0;
output  [63:0] grp_fu_3714_p_din1;
input  [63:0] grp_fu_3714_p_dout0;
output   grp_fu_3714_p_ce;
output  [63:0] grp_fu_8623_p_din0;
output  [63:0] grp_fu_8623_p_din1;
input  [63:0] grp_fu_8623_p_dout0;
output   grp_fu_8623_p_ce;
output  [63:0] grp_fu_8627_p_din0;
output  [63:0] grp_fu_8627_p_din1;
input  [63:0] grp_fu_8627_p_dout0;
output   grp_fu_8627_p_ce;
output  [63:0] grp_fu_8631_p_din0;
output  [63:0] grp_fu_8631_p_din1;
input  [63:0] grp_fu_8631_p_dout0;
output   grp_fu_8631_p_ce;
output  [63:0] grp_fu_8635_p_din0;
output  [63:0] grp_fu_8635_p_din1;
input  [63:0] grp_fu_8635_p_dout0;
output   grp_fu_8635_p_ce;
output  [63:0] grp_fu_8639_p_din0;
output  [63:0] grp_fu_8639_p_din1;
input  [63:0] grp_fu_8639_p_dout0;
output   grp_fu_8639_p_ce;
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
wire   [0:0] icmp_ln233_fu_380_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] select_ln233_1_fu_420_p3;
reg   [3:0] select_ln233_1_reg_593;
reg   [3:0] select_ln233_1_reg_593_pp0_iter1_reg;
reg   [3:0] select_ln233_1_reg_593_pp0_iter2_reg;
reg   [3:0] select_ln233_1_reg_593_pp0_iter3_reg;
reg   [3:0] select_ln233_1_reg_593_pp0_iter4_reg;
reg   [3:0] select_ln233_1_reg_593_pp0_iter5_reg;
reg   [3:0] select_ln233_1_reg_593_pp0_iter6_reg;
reg   [3:0] select_ln233_1_reg_593_pp0_iter7_reg;
reg   [3:0] select_ln233_1_reg_593_pp0_iter8_reg;
reg   [3:0] select_ln233_1_reg_593_pp0_iter9_reg;
reg   [3:0] select_ln233_1_reg_593_pp0_iter10_reg;
reg   [3:0] lshr_ln4_reg_600;
reg   [3:0] lshr_ln4_reg_600_pp0_iter1_reg;
reg   [3:0] lshr_ln4_reg_600_pp0_iter2_reg;
reg   [3:0] lshr_ln4_reg_600_pp0_iter3_reg;
reg   [3:0] lshr_ln4_reg_600_pp0_iter4_reg;
reg   [3:0] lshr_ln4_reg_600_pp0_iter5_reg;
reg   [3:0] lshr_ln4_reg_600_pp0_iter6_reg;
reg   [3:0] lshr_ln4_reg_600_pp0_iter7_reg;
reg   [3:0] lshr_ln4_reg_600_pp0_iter8_reg;
reg   [3:0] lshr_ln4_reg_600_pp0_iter9_reg;
reg   [2:0] tmp_s_reg_606;
reg   [2:0] tmp_s_reg_606_pp0_iter1_reg;
reg   [2:0] tmp_s_reg_606_pp0_iter2_reg;
reg   [2:0] tmp_s_reg_606_pp0_iter3_reg;
reg   [2:0] tmp_s_reg_606_pp0_iter4_reg;
reg   [2:0] tmp_s_reg_606_pp0_iter5_reg;
reg   [2:0] tmp_s_reg_606_pp0_iter6_reg;
reg   [2:0] tmp_s_reg_606_pp0_iter7_reg;
reg   [2:0] tmp_s_reg_606_pp0_iter8_reg;
reg   [2:0] tmp_s_reg_606_pp0_iter9_reg;
reg   [2:0] tmp_s_reg_606_pp0_iter10_reg;
wire   [0:0] trunc_ln234_fu_477_p1;
reg   [0:0] trunc_ln234_reg_612;
wire   [63:0] select_ln234_fu_504_p3;
reg   [63:0] select_ln234_reg_647;
reg   [63:0] v143_reg_652;
reg   [63:0] v143_8_reg_677;
reg   [63:0] v143_9_reg_682;
reg   [63:0] v143_10_reg_687;
wire   [63:0] v141_fu_526_p1;
reg   [63:0] v141_reg_692;
reg   [63:0] v143_11_reg_704;
reg   [63:0] v143_12_reg_709;
reg   [63:0] v143_13_reg_714;
reg   [63:0] v143_7_reg_719;
reg   [63:0] v144_reg_724;
reg   [63:0] v144_1_reg_729;
reg   [63:0] v144_2_reg_734;
reg   [63:0] v144_3_reg_739;
reg   [63:0] v144_4_reg_744;
reg   [63:0] v144_5_reg_749;
reg   [63:0] v144_6_reg_754;
reg   [63:0] v144_7_reg_759;
wire   [63:0] zext_ln234_fu_491_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln235_fu_497_p1;
wire   [63:0] zext_ln236_fu_518_p1;
wire   [63:0] zext_ln238_fu_539_p1;
wire   [63:0] zext_ln238_1_fu_555_p1;
reg   [6:0] v142_fu_86;
wire   [6:0] add_ln235_fu_448_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v142_load;
reg   [3:0] v140_fu_90;
reg   [3:0] ap_sig_allocacmp_v140_load;
reg   [6:0] indvar_flatten_fu_94;
wire   [6:0] add_ln233_fu_386_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v6_0_ce0_local;
reg    v6_1_ce0_local;
reg    v9_ce1_local;
reg    v9_ce0_local;
reg    v9_1_ce1_local;
reg    v9_1_ce0_local;
reg    v9_2_ce1_local;
reg    v9_2_ce0_local;
reg    v9_3_ce1_local;
reg    v9_3_ce0_local;
reg    v12_we1_local;
reg    v12_ce1_local;
reg    v12_we0_local;
reg    v12_ce0_local;
reg    v12_1_we1_local;
reg    v12_1_ce1_local;
reg    v12_1_we0_local;
reg    v12_1_ce0_local;
reg    v12_2_we1_local;
reg    v12_2_ce1_local;
reg    v12_2_we0_local;
reg    v12_2_ce0_local;
reg    v12_3_we1_local;
reg    v12_3_ce1_local;
reg    v12_3_we0_local;
reg    v12_3_ce0_local;
wire   [0:0] tmp_fu_398_p3;
wire   [3:0] add_ln233_1_fu_414_p2;
wire   [6:0] select_ln233_fu_406_p3;
wire   [11:0] zext_ln233_fu_469_p1;
wire   [11:0] add_ln234_fu_472_p2;
wire   [10:0] lshr_ln3_fu_481_p4;
wire   [3:0] or_ln6_fu_511_p3;
wire   [7:0] add_ln1_fu_533_p3;
wire   [7:0] add_ln238_1_fu_547_p4;
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
#0 v142_fu_86 = 7'd0;
#0 v140_fu_90 = 4'd0;
#0 indvar_flatten_fu_94 = 7'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
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
        if (((icmp_ln233_fu_380_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_94 <= add_ln233_fu_386_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_94 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln233_fu_380_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v140_fu_90 <= select_ln233_1_fu_420_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v140_fu_90 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln233_fu_380_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v142_fu_86 <= add_ln235_fu_448_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v142_fu_86 <= 7'd0;
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
        lshr_ln4_reg_600_pp0_iter2_reg <= lshr_ln4_reg_600_pp0_iter1_reg;
        lshr_ln4_reg_600_pp0_iter3_reg <= lshr_ln4_reg_600_pp0_iter2_reg;
        lshr_ln4_reg_600_pp0_iter4_reg <= lshr_ln4_reg_600_pp0_iter3_reg;
        lshr_ln4_reg_600_pp0_iter5_reg <= lshr_ln4_reg_600_pp0_iter4_reg;
        lshr_ln4_reg_600_pp0_iter6_reg <= lshr_ln4_reg_600_pp0_iter5_reg;
        lshr_ln4_reg_600_pp0_iter7_reg <= lshr_ln4_reg_600_pp0_iter6_reg;
        lshr_ln4_reg_600_pp0_iter8_reg <= lshr_ln4_reg_600_pp0_iter7_reg;
        lshr_ln4_reg_600_pp0_iter9_reg <= lshr_ln4_reg_600_pp0_iter8_reg;
        select_ln233_1_reg_593_pp0_iter10_reg <= select_ln233_1_reg_593_pp0_iter9_reg;
        select_ln233_1_reg_593_pp0_iter2_reg <= select_ln233_1_reg_593_pp0_iter1_reg;
        select_ln233_1_reg_593_pp0_iter3_reg <= select_ln233_1_reg_593_pp0_iter2_reg;
        select_ln233_1_reg_593_pp0_iter4_reg <= select_ln233_1_reg_593_pp0_iter3_reg;
        select_ln233_1_reg_593_pp0_iter5_reg <= select_ln233_1_reg_593_pp0_iter4_reg;
        select_ln233_1_reg_593_pp0_iter6_reg <= select_ln233_1_reg_593_pp0_iter5_reg;
        select_ln233_1_reg_593_pp0_iter7_reg <= select_ln233_1_reg_593_pp0_iter6_reg;
        select_ln233_1_reg_593_pp0_iter8_reg <= select_ln233_1_reg_593_pp0_iter7_reg;
        select_ln233_1_reg_593_pp0_iter9_reg <= select_ln233_1_reg_593_pp0_iter8_reg;
        select_ln234_reg_647 <= select_ln234_fu_504_p3;
        tmp_s_reg_606_pp0_iter10_reg <= tmp_s_reg_606_pp0_iter9_reg;
        tmp_s_reg_606_pp0_iter2_reg <= tmp_s_reg_606_pp0_iter1_reg;
        tmp_s_reg_606_pp0_iter3_reg <= tmp_s_reg_606_pp0_iter2_reg;
        tmp_s_reg_606_pp0_iter4_reg <= tmp_s_reg_606_pp0_iter3_reg;
        tmp_s_reg_606_pp0_iter5_reg <= tmp_s_reg_606_pp0_iter4_reg;
        tmp_s_reg_606_pp0_iter6_reg <= tmp_s_reg_606_pp0_iter5_reg;
        tmp_s_reg_606_pp0_iter7_reg <= tmp_s_reg_606_pp0_iter6_reg;
        tmp_s_reg_606_pp0_iter8_reg <= tmp_s_reg_606_pp0_iter7_reg;
        tmp_s_reg_606_pp0_iter9_reg <= tmp_s_reg_606_pp0_iter8_reg;
        v141_reg_692 <= v141_fu_526_p1;
        v144_1_reg_729 <= grp_fu_3710_p_dout0;
        v144_2_reg_734 <= grp_fu_3714_p_dout0;
        v144_3_reg_739 <= grp_fu_8623_p_dout0;
        v144_4_reg_744 <= grp_fu_8627_p_dout0;
        v144_5_reg_749 <= grp_fu_8631_p_dout0;
        v144_6_reg_754 <= grp_fu_8635_p_dout0;
        v144_7_reg_759 <= grp_fu_8639_p_dout0;
        v144_reg_724 <= grp_fu_3706_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln4_reg_600 <= {{select_ln233_fu_406_p3[5:2]}};
        lshr_ln4_reg_600_pp0_iter1_reg <= lshr_ln4_reg_600;
        select_ln233_1_reg_593 <= select_ln233_1_fu_420_p3;
        select_ln233_1_reg_593_pp0_iter1_reg <= select_ln233_1_reg_593;
        tmp_s_reg_606 <= {{select_ln233_fu_406_p3[5:3]}};
        tmp_s_reg_606_pp0_iter1_reg <= tmp_s_reg_606;
        trunc_ln234_reg_612 <= trunc_ln234_fu_477_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v143_10_reg_687 <= v9_3_q1;
        v143_8_reg_677 <= v9_1_q1;
        v143_9_reg_682 <= v9_2_q1;
        v143_reg_652 <= v9_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v143_11_reg_704 <= v9_q0;
        v143_12_reg_709 <= v9_1_q0;
        v143_13_reg_714 <= v9_2_q0;
        v143_7_reg_719 <= v9_3_q0;
    end
end
always @ (*) begin
    if (((icmp_ln233_fu_380_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v140_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v140_load = v140_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v142_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v142_load = v142_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v12_1_ce0_local = 1'b1;
    end else begin
        v12_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v12_1_ce1_local = 1'b1;
    end else begin
        v12_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v12_1_we0_local = 1'b1;
    end else begin
        v12_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v12_1_we1_local = 1'b1;
    end else begin
        v12_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v12_2_ce0_local = 1'b1;
    end else begin
        v12_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v12_2_ce1_local = 1'b1;
    end else begin
        v12_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v12_2_we0_local = 1'b1;
    end else begin
        v12_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v12_2_we1_local = 1'b1;
    end else begin
        v12_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v12_3_ce0_local = 1'b1;
    end else begin
        v12_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v12_3_ce1_local = 1'b1;
    end else begin
        v12_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v12_3_we0_local = 1'b1;
    end else begin
        v12_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v12_3_we1_local = 1'b1;
    end else begin
        v12_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v12_ce0_local = 1'b1;
    end else begin
        v12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v12_ce1_local = 1'b1;
    end else begin
        v12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v12_we0_local = 1'b1;
    end else begin
        v12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v12_we1_local = 1'b1;
    end else begin
        v12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9_1_ce0_local = 1'b1;
    end else begin
        v9_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_1_ce1_local = 1'b1;
    end else begin
        v9_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9_2_ce0_local = 1'b1;
    end else begin
        v9_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_2_ce1_local = 1'b1;
    end else begin
        v9_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9_3_ce0_local = 1'b1;
    end else begin
        v9_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_3_ce1_local = 1'b1;
    end else begin
        v9_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9_ce0_local = 1'b1;
    end else begin
        v9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_ce1_local = 1'b1;
    end else begin
        v9_ce1_local = 1'b0;
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
assign add_ln1_fu_533_p3 = {{select_ln233_1_reg_593_pp0_iter9_reg}, {lshr_ln4_reg_600_pp0_iter9_reg}};
assign add_ln233_1_fu_414_p2 = (ap_sig_allocacmp_v140_load + 4'd1);
assign add_ln233_fu_386_p2 = (ap_sig_allocacmp_indvar_flatten_load + 7'd1);
assign add_ln234_fu_472_p2 = (zext_ln233_fu_469_p1 + phi_mul171);
assign add_ln235_fu_448_p2 = (select_ln233_fu_406_p3 + 7'd8);
assign add_ln238_1_fu_547_p4 = {{{select_ln233_1_reg_593_pp0_iter10_reg}, {tmp_s_reg_606_pp0_iter10_reg}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_3706_p_ce = 1'b1;
assign grp_fu_3706_p_din0 = v141_fu_526_p1;
assign grp_fu_3706_p_din1 = v143_reg_652;
assign grp_fu_3710_p_ce = 1'b1;
assign grp_fu_3710_p_din0 = v141_fu_526_p1;
assign grp_fu_3710_p_din1 = v143_8_reg_677;
assign grp_fu_3714_p_ce = 1'b1;
assign grp_fu_3714_p_din0 = v141_fu_526_p1;
assign grp_fu_3714_p_din1 = v143_9_reg_682;
assign grp_fu_8623_p_ce = 1'b1;
assign grp_fu_8623_p_din0 = v141_fu_526_p1;
assign grp_fu_8623_p_din1 = v143_10_reg_687;
assign grp_fu_8627_p_ce = 1'b1;
assign grp_fu_8627_p_din0 = v141_reg_692;
assign grp_fu_8627_p_din1 = v143_11_reg_704;
assign grp_fu_8631_p_ce = 1'b1;
assign grp_fu_8631_p_din0 = v141_reg_692;
assign grp_fu_8631_p_din1 = v143_12_reg_709;
assign grp_fu_8635_p_ce = 1'b1;
assign grp_fu_8635_p_din0 = v141_reg_692;
assign grp_fu_8635_p_din1 = v143_13_reg_714;
assign grp_fu_8639_p_ce = 1'b1;
assign grp_fu_8639_p_din0 = v141_reg_692;
assign grp_fu_8639_p_din1 = v143_7_reg_719;
assign icmp_ln233_fu_380_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 7'd104) ? 1'b1 : 1'b0);
assign lshr_ln3_fu_481_p4 = {{add_ln234_fu_472_p2[11:1]}};
assign or_ln6_fu_511_p3 = {{tmp_s_reg_606_pp0_iter1_reg}, {1'd1}};
assign select_ln233_1_fu_420_p3 = ((tmp_fu_398_p3[0:0] == 1'b1) ? add_ln233_1_fu_414_p2 : ap_sig_allocacmp_v140_load);
assign select_ln233_fu_406_p3 = ((tmp_fu_398_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v142_load);
assign select_ln234_fu_504_p3 = ((trunc_ln234_reg_612[0:0] == 1'b1) ? v6_1_q0 : v6_0_q0);
assign tmp_fu_398_p3 = ap_sig_allocacmp_v142_load[32'd6];
assign trunc_ln234_fu_477_p1 = add_ln234_fu_472_p2[0:0];
assign v12_1_address0 = zext_ln238_1_fu_555_p1;
assign v12_1_address1 = zext_ln238_fu_539_p1;
assign v12_1_ce0 = v12_1_ce0_local;
assign v12_1_ce1 = v12_1_ce1_local;
assign v12_1_d0 = v144_5_reg_749;
assign v12_1_d1 = v144_1_reg_729;
assign v12_1_we0 = v12_1_we0_local;
assign v12_1_we1 = v12_1_we1_local;
assign v12_2_address0 = zext_ln238_1_fu_555_p1;
assign v12_2_address1 = zext_ln238_fu_539_p1;
assign v12_2_ce0 = v12_2_ce0_local;
assign v12_2_ce1 = v12_2_ce1_local;
assign v12_2_d0 = v144_6_reg_754;
assign v12_2_d1 = v144_2_reg_734;
assign v12_2_we0 = v12_2_we0_local;
assign v12_2_we1 = v12_2_we1_local;
assign v12_3_address0 = zext_ln238_1_fu_555_p1;
assign v12_3_address1 = zext_ln238_fu_539_p1;
assign v12_3_ce0 = v12_3_ce0_local;
assign v12_3_ce1 = v12_3_ce1_local;
assign v12_3_d0 = v144_7_reg_759;
assign v12_3_d1 = v144_3_reg_739;
assign v12_3_we0 = v12_3_we0_local;
assign v12_3_we1 = v12_3_we1_local;
assign v12_address0 = zext_ln238_1_fu_555_p1;
assign v12_address1 = zext_ln238_fu_539_p1;
assign v12_ce0 = v12_ce0_local;
assign v12_ce1 = v12_ce1_local;
assign v12_d0 = v144_4_reg_744;
assign v12_d1 = v144_reg_724;
assign v12_we0 = v12_we0_local;
assign v12_we1 = v12_we1_local;
assign v141_fu_526_p1 = select_ln234_reg_647;
assign v6_0_address0 = zext_ln234_fu_491_p1;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = zext_ln234_fu_491_p1;
assign v6_1_ce0 = v6_1_ce0_local;
assign v9_1_address0 = zext_ln236_fu_518_p1;
assign v9_1_address1 = zext_ln235_fu_497_p1;
assign v9_1_ce0 = v9_1_ce0_local;
assign v9_1_ce1 = v9_1_ce1_local;
assign v9_2_address0 = zext_ln236_fu_518_p1;
assign v9_2_address1 = zext_ln235_fu_497_p1;
assign v9_2_ce0 = v9_2_ce0_local;
assign v9_2_ce1 = v9_2_ce1_local;
assign v9_3_address0 = zext_ln236_fu_518_p1;
assign v9_3_address1 = zext_ln235_fu_497_p1;
assign v9_3_ce0 = v9_3_ce0_local;
assign v9_3_ce1 = v9_3_ce1_local;
assign v9_address0 = zext_ln236_fu_518_p1;
assign v9_address1 = zext_ln235_fu_497_p1;
assign v9_ce0 = v9_ce0_local;
assign v9_ce1 = v9_ce1_local;
assign zext_ln233_fu_469_p1 = select_ln233_1_reg_593;
assign zext_ln234_fu_491_p1 = lshr_ln3_fu_481_p4;
assign zext_ln235_fu_497_p1 = lshr_ln4_reg_600;
assign zext_ln236_fu_518_p1 = or_ln6_fu_511_p3;
assign zext_ln238_1_fu_555_p1 = add_ln238_1_fu_547_p4;
assign zext_ln238_fu_539_p1 = add_ln1_fu_533_p3;
endmodule 