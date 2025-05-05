module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_0_address1,last_activations_0_ce1,last_activations_0_q1,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_1_address1,last_activations_1_ce1,last_activations_1_q1,grp_fu_1770_p_din0,grp_fu_1770_p_din1,grp_fu_1770_p_dout0,grp_fu_1770_p_ce,grp_fu_3161_p_din0,grp_fu_3161_p_din1,grp_fu_3161_p_dout0,grp_fu_3161_p_ce,grp_fu_3165_p_din0,grp_fu_3165_p_din1,grp_fu_3165_p_dout0,grp_fu_3165_p_ce,grp_fu_3169_p_din0,grp_fu_3169_p_din1,grp_fu_3169_p_dout0,grp_fu_3169_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [6:0] delta_weights3_0_address1;
output   delta_weights3_0_ce1;
output   delta_weights3_0_we1;
output  [63:0] delta_weights3_0_d1;
output  [6:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [6:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
output  [4:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [4:0] last_activations_0_address1;
output   last_activations_0_ce1;
input  [63:0] last_activations_0_q1;
output  [4:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [4:0] last_activations_1_address1;
output   last_activations_1_ce1;
input  [63:0] last_activations_1_q1;
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
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] tmp_21_reg_954;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_438;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_443;
reg   [63:0] reg_448;
reg   [63:0] reg_453;
reg   [6:0] i_9_reg_946;
reg   [0:0] tmp_21_reg_954_pp0_iter1_reg;
wire   [5:0] lshr_ln_fu_474_p4;
reg   [5:0] lshr_ln_reg_958;
reg   [5:0] lshr_ln_reg_958_pp0_iter1_reg;
reg   [63:0] last_activations_0_load_reg_983;
reg   [63:0] last_activations_1_load_reg_1010;
reg   [63:0] last_activations_0_load_1_reg_1017;
reg   [63:0] last_activations_1_load_1_reg_1024;
reg   [63:0] last_activations_0_load_2_reg_1031;
reg   [63:0] last_activations_1_load_2_reg_1038;
reg   [63:0] last_activations_0_load_3_reg_1045;
reg   [63:0] last_activations_1_load_3_reg_1052;
reg   [4:0] tmp_22_reg_1059;
wire   [7:0] empty_fu_642_p2;
reg   [7:0] empty_reg_1066;
wire   [6:0] lshr_ln2_fu_648_p4;
reg   [6:0] lshr_ln2_reg_1077;
reg   [4:0] tmp_27_reg_1082;
wire   [6:0] or_ln75_1_fu_703_p3;
reg   [6:0] or_ln75_1_reg_1087;
reg   [6:0] lshr_ln75_2_reg_1096;
wire   [6:0] lshr_ln75_4_fu_801_p4;
reg   [6:0] lshr_ln75_4_reg_1102;
reg   [6:0] lshr_ln75_6_reg_1107;
reg   [6:0] lshr_ln75_7_reg_1113;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln72_fu_484_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast_fu_508_p1;
wire   [63:0] p_cast5_fu_540_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] p_cast7_fu_554_p1;
wire   [63:0] zext_ln75_fu_595_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln75_1_fu_619_p1;
wire   [63:0] zext_ln75_2_fu_658_p1;
wire   [63:0] zext_ln75_3_fu_688_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln75_4_fu_698_p1;
wire   [63:0] zext_ln75_5_fu_710_p1;
wire   [63:0] zext_ln75_6_fu_736_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln75_7_fu_741_p1;
wire   [63:0] zext_ln75_8_fu_760_p1;
wire   [63:0] zext_ln75_9_fu_770_p1;
wire   [63:0] zext_ln75_10_fu_780_p1;
wire   [63:0] zext_ln75_11_fu_791_p1;
wire   [63:0] zext_ln75_12_fu_811_p1;
wire   [63:0] zext_ln75_13_fu_831_p1;
wire   [63:0] zext_ln75_14_fu_841_p1;
wire   [63:0] zext_ln75_15_fu_851_p1;
wire   [63:0] zext_ln75_16_fu_892_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln75_17_fu_897_p1;
wire   [63:0] zext_ln75_18_fu_901_p1;
wire   [63:0] zext_ln75_19_fu_910_p1;
reg   [6:0] i_fu_108;
wire   [6:0] add_ln73_fu_569_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_9;
reg    last_activations_0_ce1_local;
reg   [4:0] last_activations_0_address1_local;
reg    last_activations_0_ce0_local;
reg   [4:0] last_activations_0_address0_local;
reg    last_activations_1_ce1_local;
reg   [4:0] last_activations_1_address1_local;
reg    last_activations_1_ce0_local;
reg   [4:0] last_activations_1_address0_local;
reg    delta_weights3_0_we1_local;
reg    delta_weights3_0_ce1_local;
reg   [6:0] delta_weights3_0_address1_local;
reg    delta_weights3_0_we0_local;
reg    delta_weights3_0_ce0_local;
reg   [6:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we1_local;
reg    delta_weights3_1_ce1_local;
reg   [6:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg   [6:0] delta_weights3_1_address0_local;
reg   [63:0] grp_fu_422_p0;
reg   [63:0] grp_fu_422_p1;
reg   [63:0] grp_fu_426_p0;
reg   [63:0] grp_fu_426_p1;
reg   [63:0] grp_fu_430_p0;
reg   [63:0] grp_fu_430_p1;
reg   [63:0] grp_fu_434_p0;
reg   [63:0] grp_fu_434_p1;
wire   [3:0] tmp_s_fu_490_p4;
wire   [4:0] tmp_26_fu_500_p3;
wire   [2:0] tmp_28_fu_514_p4;
wire   [0:0] tmp_23_fu_523_p3;
wire   [4:0] tmp_29_fu_530_p4;
wire   [4:0] tmp_30_fu_546_p3;
wire   [6:0] p_shl5_fu_582_p3;
wire   [6:0] zext_ln72_1_fu_579_p1;
wire   [6:0] sub_ln75_fu_589_p2;
wire   [5:0] tmp_fu_601_p4;
wire   [6:0] or_ln_fu_611_p3;
wire   [5:0] or_ln6_fu_624_p3;
wire   [7:0] p_shl_fu_635_p3;
wire   [7:0] or_ln73_cast_fu_631_p1;
wire   [7:0] add_ln75_fu_673_p2;
wire   [6:0] lshr_ln75_1_fu_678_p4;
wire   [6:0] add_ln75_1_fu_693_p2;
wire   [7:0] empty_44_fu_716_p2;
wire   [6:0] add_ln75_2_fu_731_p2;
wire   [7:0] add_ln75_3_fu_745_p2;
wire   [6:0] lshr_ln75_3_fu_750_p4;
wire   [6:0] add_ln75_4_fu_765_p2;
wire   [6:0] add_ln75_5_fu_775_p2;
wire   [6:0] add_ln75_6_fu_786_p2;
wire   [7:0] empty_45_fu_796_p2;
wire   [7:0] add_ln75_7_fu_816_p2;
wire   [6:0] lshr_ln75_5_fu_821_p4;
wire   [6:0] add_ln75_8_fu_836_p2;
wire   [6:0] add_ln75_9_fu_846_p2;
wire   [7:0] empty_46_fu_857_p2;
wire   [7:0] add_ln75_11_fu_872_p2;
wire   [6:0] add_ln75_10_fu_887_p2;
wire   [6:0] add_ln75_12_fu_905_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage2;
reg    ap_idle_pp0_0to0;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_108 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_108 <= 7'd0;
    end else if (((tmp_21_reg_954 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        i_fu_108 <= add_ln73_fu_569_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        empty_reg_1066[7 : 1] <= empty_fu_642_p2[7 : 1];
        lshr_ln2_reg_1077 <= {{empty_fu_642_p2[7:1]}};
        tmp_27_reg_1082 <= {{sub_ln75_fu_589_p2[6:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_9_reg_946 <= ap_sig_allocacmp_i_9;
        lshr_ln75_4_reg_1102 <= {{empty_45_fu_796_p2[7:1]}};
        lshr_ln_reg_958 <= {{ap_sig_allocacmp_i_9[6:1]}};
        lshr_ln_reg_958_pp0_iter1_reg <= lshr_ln_reg_958;
        tmp_21_reg_954 <= ap_sig_allocacmp_i_9[32'd6];
        tmp_21_reg_954_pp0_iter1_reg <= tmp_21_reg_954;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        last_activations_0_load_1_reg_1017 <= last_activations_0_q0;
        last_activations_0_load_reg_983 <= last_activations_0_q1;
        last_activations_1_load_1_reg_1024 <= last_activations_1_q0;
        last_activations_1_load_reg_1010 <= last_activations_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        last_activations_0_load_2_reg_1031 <= last_activations_0_q1;
        last_activations_0_load_3_reg_1045 <= last_activations_0_q0;
        last_activations_1_load_2_reg_1038 <= last_activations_1_q1;
        last_activations_1_load_3_reg_1052 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln75_2_reg_1096 <= {{empty_44_fu_716_p2[7:1]}};
        or_ln75_1_reg_1087[6 : 2] <= or_ln75_1_fu_703_p3[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln75_6_reg_1107 <= {{empty_46_fu_857_p2[7:1]}};
        lshr_ln75_7_reg_1113 <= {{add_ln75_11_fu_872_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_438 <= grp_fu_1770_p_dout0;
        reg_443 <= grp_fu_3161_p_dout0;
        reg_448 <= grp_fu_3165_p_dout0;
        reg_453 <= grp_fu_3169_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_22_reg_1059 <= {{i_9_reg_946[5:1]}};
    end
end
always @ (*) begin
    if (((tmp_21_reg_954 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_21_reg_954_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_9 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_9 = i_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_0_address0_local = zext_ln75_18_fu_901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_address0_local = zext_ln75_15_fu_851_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_0_address0_local = zext_ln75_11_fu_791_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_0_address0_local = zext_ln75_8_fu_760_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_0_address0_local = zext_ln75_5_fu_710_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_0_address0_local = zext_ln75_1_fu_619_p1;
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_0_address1_local = zext_ln75_16_fu_892_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_address1_local = zext_ln75_13_fu_831_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_0_address1_local = zext_ln75_10_fu_780_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_0_address1_local = zext_ln75_6_fu_736_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_0_address1_local = zext_ln75_3_fu_688_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_0_address1_local = zext_ln75_fu_595_p1;
    end else begin
        delta_weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_1_address0_local = zext_ln75_19_fu_910_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_address0_local = zext_ln75_15_fu_851_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_1_address0_local = zext_ln75_12_fu_811_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_1_address0_local = zext_ln75_9_fu_770_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_1_address0_local = zext_ln75_5_fu_710_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_1_address0_local = zext_ln75_2_fu_658_p1;
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_1_address1_local = zext_ln75_17_fu_897_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_address1_local = zext_ln75_14_fu_841_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_1_address1_local = zext_ln75_10_fu_780_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_1_address1_local = zext_ln75_7_fu_741_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_1_address1_local = zext_ln75_4_fu_698_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_1_address1_local = zext_ln75_fu_595_p1;
    end else begin
        delta_weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_422_p0 = last_activations_0_load_3_reg_1045;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_422_p0 = last_activations_1_load_2_reg_1038;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_422_p0 = last_activations_0_load_2_reg_1031;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_422_p0 = last_activations_0_load_1_reg_1017;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_422_p0 = last_activations_1_load_reg_1010;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_422_p0 = last_activations_0_load_reg_983;
    end else begin
        grp_fu_422_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_422_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_422_p1 = output_difference_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_422_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_422_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_426_p0 = last_activations_1_load_3_reg_1052;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_426_p0 = last_activations_1_load_2_reg_1038;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_426_p0 = last_activations_0_load_2_reg_1031;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_426_p0 = last_activations_1_load_1_reg_1024;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_426_p0 = last_activations_1_load_reg_1010;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_426_p0 = last_activations_0_load_reg_983;
    end else begin
        grp_fu_426_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_426_p1 = output_difference_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_426_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_426_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_426_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_430_p0 = last_activations_1_load_3_reg_1052;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_430_p0 = last_activations_0_load_3_reg_1045;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_430_p0 = last_activations_0_load_2_reg_1031;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_430_p0 = last_activations_1_load_1_reg_1024;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_430_p0 = last_activations_0_load_1_reg_1017;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_430_p0 = last_activations_0_load_reg_983;
    end else begin
        grp_fu_430_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_430_p1 = output_difference_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_430_p1 = output_difference_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_430_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_430_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_434_p0 = last_activations_1_load_3_reg_1052;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_434_p0 = last_activations_0_load_3_reg_1045;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_434_p0 = last_activations_1_load_2_reg_1038;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_434_p0 = last_activations_1_load_1_reg_1024;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_434_p0 = last_activations_0_load_1_reg_1017;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_434_p0 = last_activations_1_load_reg_1010;
    end else begin
        grp_fu_434_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_434_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_434_p1 = output_difference_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_434_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_434_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_0_address0_local = p_cast7_fu_554_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_0_address0_local = p_cast_fu_508_p1;
        end else begin
            last_activations_0_address0_local = 'bx;
        end
    end else begin
        last_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_0_address1_local = p_cast5_fu_540_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_0_address1_local = zext_ln72_fu_484_p1;
        end else begin
            last_activations_0_address1_local = 'bx;
        end
    end else begin
        last_activations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_0_ce1_local = 1'b1;
    end else begin
        last_activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_1_address0_local = p_cast7_fu_554_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_1_address0_local = p_cast_fu_508_p1;
        end else begin
            last_activations_1_address0_local = 'bx;
        end
    end else begin
        last_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_1_address1_local = p_cast5_fu_540_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_1_address1_local = zext_ln72_fu_484_p1;
        end else begin
            last_activations_1_address1_local = 'bx;
        end
    end else begin
        last_activations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_1_ce1_local = 1'b1;
    end else begin
        last_activations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln73_fu_569_p2 = (i_9_reg_946 + 7'd8);
assign add_ln75_10_fu_887_p2 = (or_ln75_1_reg_1087 + 7'd7);
assign add_ln75_11_fu_872_p2 = (empty_reg_1066 + 8'd19);
assign add_ln75_12_fu_905_p2 = (lshr_ln75_6_reg_1107 + 7'd1);
assign add_ln75_1_fu_693_p2 = (lshr_ln2_reg_1077 + 7'd1);
assign add_ln75_2_fu_731_p2 = (or_ln75_1_reg_1087 + 7'd1);
assign add_ln75_3_fu_745_p2 = (empty_reg_1066 + 8'd7);
assign add_ln75_4_fu_765_p2 = (lshr_ln75_2_reg_1096 + 7'd1);
assign add_ln75_5_fu_775_p2 = (or_ln75_1_reg_1087 + 7'd3);
assign add_ln75_6_fu_786_p2 = (or_ln75_1_reg_1087 + 7'd4);
assign add_ln75_7_fu_816_p2 = (empty_reg_1066 + 8'd13);
assign add_ln75_8_fu_836_p2 = (lshr_ln75_4_reg_1102 + 7'd1);
assign add_ln75_9_fu_846_p2 = (or_ln75_1_reg_1087 + 7'd6);
assign add_ln75_fu_673_p2 = (empty_reg_1066 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_address1 = delta_weights3_0_address1_local;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = reg_448;
assign delta_weights3_0_d1 = reg_438;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = reg_453;
assign delta_weights3_1_d1 = reg_443;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign empty_44_fu_716_p2 = (empty_reg_1066 + 8'd6);
assign empty_45_fu_796_p2 = (empty_reg_1066 + 8'd12);
assign empty_46_fu_857_p2 = (empty_reg_1066 + 8'd18);
assign empty_fu_642_p2 = (p_shl_fu_635_p3 - or_ln73_cast_fu_631_p1);
assign grp_fu_1770_p_ce = 1'b1;
assign grp_fu_1770_p_din0 = grp_fu_422_p0;
assign grp_fu_1770_p_din1 = grp_fu_422_p1;
assign grp_fu_3161_p_ce = 1'b1;
assign grp_fu_3161_p_din0 = grp_fu_426_p0;
assign grp_fu_3161_p_din1 = grp_fu_426_p1;
assign grp_fu_3165_p_ce = 1'b1;
assign grp_fu_3165_p_din0 = grp_fu_430_p0;
assign grp_fu_3165_p_din1 = grp_fu_430_p1;
assign grp_fu_3169_p_ce = 1'b1;
assign grp_fu_3169_p_din0 = grp_fu_434_p0;
assign grp_fu_3169_p_din1 = grp_fu_434_p1;
assign last_activations_0_address0 = last_activations_0_address0_local;
assign last_activations_0_address1 = last_activations_0_address1_local;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_0_ce1 = last_activations_0_ce1_local;
assign last_activations_1_address0 = last_activations_1_address0_local;
assign last_activations_1_address1 = last_activations_1_address1_local;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_1_ce1 = last_activations_1_ce1_local;
assign lshr_ln2_fu_648_p4 = {{empty_fu_642_p2[7:1]}};
assign lshr_ln75_1_fu_678_p4 = {{add_ln75_fu_673_p2[7:1]}};
assign lshr_ln75_3_fu_750_p4 = {{add_ln75_3_fu_745_p2[7:1]}};
assign lshr_ln75_4_fu_801_p4 = {{empty_45_fu_796_p2[7:1]}};
assign lshr_ln75_5_fu_821_p4 = {{add_ln75_7_fu_816_p2[7:1]}};
assign lshr_ln_fu_474_p4 = {{ap_sig_allocacmp_i_9[6:1]}};
assign or_ln6_fu_624_p3 = {{tmp_22_reg_1059}, {1'd1}};
assign or_ln73_cast_fu_631_p1 = or_ln6_fu_624_p3;
assign or_ln75_1_fu_703_p3 = {{tmp_27_reg_1082}, {2'd3}};
assign or_ln_fu_611_p3 = {{tmp_fu_601_p4}, {1'd1}};
assign p_cast5_fu_540_p1 = tmp_29_fu_530_p4;
assign p_cast7_fu_554_p1 = tmp_30_fu_546_p3;
assign p_cast_fu_508_p1 = tmp_26_fu_500_p3;
assign p_shl5_fu_582_p3 = {{tmp_22_reg_1059}, {2'd0}};
assign p_shl_fu_635_p3 = {{tmp_22_reg_1059}, {3'd4}};
assign sub_ln75_fu_589_p2 = (p_shl5_fu_582_p3 - zext_ln72_1_fu_579_p1);
assign tmp_23_fu_523_p3 = i_9_reg_946[32'd1];
assign tmp_26_fu_500_p3 = {{tmp_s_fu_490_p4}, {1'd1}};
assign tmp_28_fu_514_p4 = {{i_9_reg_946[5:3]}};
assign tmp_29_fu_530_p4 = {{{tmp_28_fu_514_p4}, {1'd1}}, {tmp_23_fu_523_p3}};
assign tmp_30_fu_546_p3 = {{tmp_28_fu_514_p4}, {2'd3}};
assign tmp_fu_601_p4 = {{sub_ln75_fu_589_p2[6:1]}};
assign tmp_s_fu_490_p4 = {{ap_sig_allocacmp_i_9[5:2]}};
assign zext_ln72_1_fu_579_p1 = lshr_ln_reg_958_pp0_iter1_reg;
assign zext_ln72_fu_484_p1 = lshr_ln_fu_474_p4;
assign zext_ln75_10_fu_780_p1 = add_ln75_5_fu_775_p2;
assign zext_ln75_11_fu_791_p1 = add_ln75_6_fu_786_p2;
assign zext_ln75_12_fu_811_p1 = lshr_ln75_4_fu_801_p4;
assign zext_ln75_13_fu_831_p1 = lshr_ln75_5_fu_821_p4;
assign zext_ln75_14_fu_841_p1 = add_ln75_8_fu_836_p2;
assign zext_ln75_15_fu_851_p1 = add_ln75_9_fu_846_p2;
assign zext_ln75_16_fu_892_p1 = add_ln75_10_fu_887_p2;
assign zext_ln75_17_fu_897_p1 = lshr_ln75_6_reg_1107;
assign zext_ln75_18_fu_901_p1 = lshr_ln75_7_reg_1113;
assign zext_ln75_19_fu_910_p1 = add_ln75_12_fu_905_p2;
assign zext_ln75_1_fu_619_p1 = or_ln_fu_611_p3;
assign zext_ln75_2_fu_658_p1 = lshr_ln2_fu_648_p4;
assign zext_ln75_3_fu_688_p1 = lshr_ln75_1_fu_678_p4;
assign zext_ln75_4_fu_698_p1 = add_ln75_1_fu_693_p2;
assign zext_ln75_5_fu_710_p1 = or_ln75_1_fu_703_p3;
assign zext_ln75_6_fu_736_p1 = add_ln75_2_fu_731_p2;
assign zext_ln75_7_fu_741_p1 = lshr_ln75_2_reg_1096;
assign zext_ln75_8_fu_760_p1 = lshr_ln75_3_fu_750_p4;
assign zext_ln75_9_fu_770_p1 = add_ln75_4_fu_765_p2;
assign zext_ln75_fu_595_p1 = sub_ln75_fu_589_p2;
always @ (posedge ap_clk) begin
    empty_reg_1066[0] <= 1'b1;
    or_ln75_1_reg_1087[1:0] <= 2'b11;
end
endmodule 