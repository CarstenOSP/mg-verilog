
module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_0_address1,last_activations_0_ce1,last_activations_0_q1,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_1_address1,last_activations_1_ce1,last_activations_1_q1,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_2_address1,last_activations_2_ce1,last_activations_2_q1,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_3_address1,last_activations_3_ce1,last_activations_3_q1,grp_fu_2070_p_din0,grp_fu_2070_p_din1,grp_fu_2070_p_dout0,grp_fu_2070_p_ce,grp_fu_3523_p_din0,grp_fu_3523_p_din1,grp_fu_3523_p_dout0,grp_fu_3523_p_ce,grp_fu_3527_p_din0,grp_fu_3527_p_din1,grp_fu_3527_p_dout0,grp_fu_3527_p_ce,grp_fu_3531_p_din0,grp_fu_3531_p_din1,grp_fu_3531_p_dout0,grp_fu_3531_p_ce,grp_fu_3535_p_din0,grp_fu_3535_p_din1,grp_fu_3535_p_dout0,grp_fu_3535_p_ce,grp_fu_3539_p_din0,grp_fu_3539_p_din1,grp_fu_3539_p_dout0,grp_fu_3539_p_ce,grp_fu_3543_p_din0,grp_fu_3543_p_din1,grp_fu_3543_p_dout0,grp_fu_3543_p_ce,grp_fu_3547_p_din0,grp_fu_3547_p_din1,grp_fu_3547_p_dout0,grp_fu_3547_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [5:0] delta_weights3_0_address1;
output   delta_weights3_0_ce1;
output   delta_weights3_0_we1;
output  [63:0] delta_weights3_0_d1;
output  [5:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [5:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
output  [5:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [5:0] delta_weights3_2_address1;
output   delta_weights3_2_ce1;
output   delta_weights3_2_we1;
output  [63:0] delta_weights3_2_d1;
output  [5:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [5:0] delta_weights3_3_address1;
output   delta_weights3_3_ce1;
output   delta_weights3_3_we1;
output  [63:0] delta_weights3_3_d1;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
output  [3:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [3:0] last_activations_0_address1;
output   last_activations_0_ce1;
input  [63:0] last_activations_0_q1;
output  [3:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [3:0] last_activations_1_address1;
output   last_activations_1_ce1;
input  [63:0] last_activations_1_q1;
output  [3:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [3:0] last_activations_2_address1;
output   last_activations_2_ce1;
input  [63:0] last_activations_2_q1;
output  [3:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [3:0] last_activations_3_address1;
output   last_activations_3_ce1;
input  [63:0] last_activations_3_q1;
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
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_14_reg_955;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_488;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_493;
reg   [63:0] reg_498;
reg   [63:0] reg_503;
reg   [63:0] reg_508;
reg   [63:0] reg_513;
reg   [63:0] reg_518;
reg   [63:0] reg_523;
reg   [6:0] i_7_reg_949;
wire   [3:0] lshr_ln_fu_544_p4;
reg   [3:0] lshr_ln_reg_959;
reg   [3:0] lshr_ln_reg_959_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_959_pp0_iter2_reg;
reg   [63:0] last_activations_0_load_reg_1005;
reg   [63:0] last_activations_1_load_reg_1012;
reg   [63:0] last_activations_2_load_reg_1019;
reg   [63:0] last_activations_3_load_reg_1026;
reg   [63:0] last_activations_0_load_1_reg_1033;
reg   [63:0] last_activations_1_load_1_reg_1040;
reg   [63:0] last_activations_2_load_1_reg_1047;
reg   [63:0] last_activations_3_load_1_reg_1054;
reg   [4:0] tmp_reg_1061;
reg   [4:0] tmp_reg_1061_pp0_iter1_reg;
wire   [7:0] empty_fu_625_p2;
reg   [7:0] empty_reg_1067;
reg   [5:0] lshr_ln5_reg_1082;
wire   [5:0] sub_ln75_fu_651_p2;
reg   [5:0] sub_ln75_reg_1087;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln72_fu_554_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast_fu_580_p1;
wire   [63:0] zext_ln75_fu_657_p1;
wire   [63:0] zext_ln75_1_fu_664_p1;
wire   [63:0] zext_ln75_2_fu_683_p1;
wire   [63:0] zext_ln75_3_fu_703_p1;
wire   [63:0] zext_ln75_4_fu_723_p1;
wire   [63:0] zext_ln75_5_fu_744_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln75_6_fu_764_p1;
wire   [63:0] zext_ln75_7_fu_776_p1;
wire   [63:0] zext_ln75_8_fu_798_p1;
wire   [63:0] zext_ln75_9_fu_818_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln75_10_fu_838_p1;
wire   [63:0] zext_ln75_11_fu_858_p1;
wire   [63:0] zext_ln75_12_fu_879_p1;
wire   [63:0] zext_ln75_13_fu_899_p1;
reg   [6:0] i_fu_106;
wire   [6:0] add_ln73_fu_597_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_7;
reg    last_activations_0_ce1_local;
reg    last_activations_0_ce0_local;
reg    last_activations_1_ce1_local;
reg    last_activations_1_ce0_local;
reg    last_activations_2_ce1_local;
reg    last_activations_2_ce0_local;
reg    last_activations_3_ce1_local;
reg    last_activations_3_ce0_local;
reg    delta_weights3_0_we1_local;
reg    delta_weights3_0_ce1_local;
reg   [5:0] delta_weights3_0_address1_local;
reg    delta_weights3_0_we0_local;
reg    delta_weights3_0_ce0_local;
reg   [5:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we1_local;
reg    delta_weights3_1_ce1_local;
reg   [5:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg   [5:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we1_local;
reg    delta_weights3_2_ce1_local;
reg   [5:0] delta_weights3_2_address1_local;
reg    delta_weights3_2_we0_local;
reg    delta_weights3_2_ce0_local;
reg   [5:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we1_local;
reg    delta_weights3_3_ce1_local;
reg   [5:0] delta_weights3_3_address1_local;
reg    delta_weights3_3_we0_local;
reg    delta_weights3_3_ce0_local;
reg   [5:0] delta_weights3_3_address0_local;
reg   [63:0] grp_fu_456_p0;
reg   [63:0] grp_fu_456_p1;
reg   [63:0] grp_fu_460_p0;
reg   [63:0] grp_fu_460_p1;
reg   [63:0] grp_fu_464_p0;
reg   [63:0] grp_fu_464_p1;
reg   [63:0] grp_fu_468_p0;
reg   [63:0] grp_fu_468_p1;
reg   [63:0] grp_fu_472_p0;
reg   [63:0] grp_fu_472_p1;
reg   [63:0] grp_fu_476_p0;
reg   [63:0] grp_fu_476_p1;
reg   [63:0] grp_fu_480_p0;
reg   [63:0] grp_fu_480_p1;
reg   [63:0] grp_fu_484_p0;
reg   [63:0] grp_fu_484_p1;
wire   [2:0] tmp_s_fu_562_p4;
wire   [3:0] tmp_26_fu_572_p3;
wire   [5:0] or_ln_fu_607_p3;
wire   [7:0] p_shl_fu_618_p3;
wire   [7:0] or_ln73_cast_fu_614_p1;
wire   [5:0] p_shl5_fu_644_p3;
wire   [5:0] zext_ln72_1_fu_641_p1;
wire   [7:0] add_ln75_fu_668_p2;
wire   [5:0] lshr_ln75_1_fu_673_p4;
wire   [7:0] add_ln75_1_fu_688_p2;
wire   [5:0] lshr_ln75_2_fu_693_p4;
wire   [7:0] empty_97_fu_708_p2;
wire   [5:0] lshr_ln75_3_fu_713_p4;
wire   [7:0] add_ln75_2_fu_729_p2;
wire   [5:0] lshr_ln75_4_fu_734_p4;
wire   [7:0] empty_98_fu_749_p2;
wire   [5:0] lshr_ln75_5_fu_754_p4;
wire   [5:0] add_ln75_3_fu_771_p2;
wire   [7:0] empty_99_fu_783_p2;
wire   [5:0] lshr_ln75_6_fu_788_p4;
wire   [7:0] add_ln75_4_fu_803_p2;
wire   [5:0] lshr_ln75_7_fu_808_p4;
wire   [7:0] add_ln75_5_fu_823_p2;
wire   [5:0] lshr_ln75_8_fu_828_p4;
wire   [7:0] empty_100_fu_843_p2;
wire   [5:0] lshr_ln75_9_fu_848_p4;
wire   [7:0] add_ln75_6_fu_864_p2;
wire   [5:0] lshr_ln75_s_fu_869_p4;
wire   [7:0] empty_101_fu_884_p2;
wire   [5:0] lshr_ln75_10_fu_889_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_106 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_106 <= 7'd0;
    end else if (((tmp_14_reg_955 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_106 <= add_ln73_fu_597_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_1067[7 : 1] <= empty_fu_625_p2[7 : 1];
        lshr_ln5_reg_1082 <= {{empty_fu_625_p2[7:2]}};
        tmp_reg_1061 <= {{i_7_reg_949[5:1]}};
        tmp_reg_1061_pp0_iter1_reg <= tmp_reg_1061;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_7_reg_949 <= ap_sig_allocacmp_i_7;
        lshr_ln_reg_959 <= {{ap_sig_allocacmp_i_7[5:2]}};
        lshr_ln_reg_959_pp0_iter1_reg <= lshr_ln_reg_959;
        lshr_ln_reg_959_pp0_iter2_reg <= lshr_ln_reg_959_pp0_iter1_reg;
        sub_ln75_reg_1087 <= sub_ln75_fu_651_p2;
        tmp_14_reg_955 <= ap_sig_allocacmp_i_7[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        last_activations_0_load_1_reg_1033 <= last_activations_0_q0;
        last_activations_0_load_reg_1005 <= last_activations_0_q1;
        last_activations_1_load_1_reg_1040 <= last_activations_1_q0;
        last_activations_1_load_reg_1012 <= last_activations_1_q1;
        last_activations_2_load_1_reg_1047 <= last_activations_2_q0;
        last_activations_2_load_reg_1019 <= last_activations_2_q1;
        last_activations_3_load_1_reg_1054 <= last_activations_3_q0;
        last_activations_3_load_reg_1026 <= last_activations_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_488 <= grp_fu_2070_p_dout0;
        reg_493 <= grp_fu_3523_p_dout0;
        reg_498 <= grp_fu_3527_p_dout0;
        reg_503 <= grp_fu_3531_p_dout0;
        reg_508 <= grp_fu_3535_p_dout0;
        reg_513 <= grp_fu_3539_p_dout0;
        reg_518 <= grp_fu_3543_p_dout0;
        reg_523 <= grp_fu_3547_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_14_reg_955 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_7 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_7 = i_fu_106;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            delta_weights3_0_address0_local = zext_ln75_12_fu_879_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights3_0_address0_local = zext_ln75_7_fu_776_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights3_0_address0_local = zext_ln75_2_fu_683_p1;
        end else begin
            delta_weights3_0_address0_local = 'bx;
        end
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            delta_weights3_0_address1_local = zext_ln75_9_fu_818_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights3_0_address1_local = zext_ln75_5_fu_744_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights3_0_address1_local = zext_ln75_fu_657_p1;
        end else begin
            delta_weights3_0_address1_local = 'bx;
        end
    end else begin
        delta_weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            delta_weights3_1_address0_local = zext_ln75_13_fu_899_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights3_1_address0_local = zext_ln75_7_fu_776_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights3_1_address0_local = zext_ln75_3_fu_703_p1;
        end else begin
            delta_weights3_1_address0_local = 'bx;
        end
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            delta_weights3_1_address1_local = zext_ln75_10_fu_838_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights3_1_address1_local = zext_ln75_6_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights3_1_address1_local = zext_ln75_fu_657_p1;
        end else begin
            delta_weights3_1_address1_local = 'bx;
        end
    end else begin
        delta_weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            delta_weights3_2_address0_local = zext_ln75_13_fu_899_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights3_2_address0_local = zext_ln75_7_fu_776_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights3_2_address0_local = zext_ln75_4_fu_723_p1;
        end else begin
            delta_weights3_2_address0_local = 'bx;
        end
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            delta_weights3_2_address1_local = zext_ln75_11_fu_858_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights3_2_address1_local = zext_ln75_6_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights3_2_address1_local = zext_ln75_fu_657_p1;
        end else begin
            delta_weights3_2_address1_local = 'bx;
        end
    end else begin
        delta_weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            delta_weights3_3_address0_local = zext_ln75_13_fu_899_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights3_3_address0_local = zext_ln75_8_fu_798_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights3_3_address0_local = zext_ln75_4_fu_723_p1;
        end else begin
            delta_weights3_3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            delta_weights3_3_address1_local = zext_ln75_11_fu_858_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights3_3_address1_local = zext_ln75_6_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights3_3_address1_local = zext_ln75_1_fu_664_p1;
        end else begin
            delta_weights3_3_address1_local = 'bx;
        end
    end else begin
        delta_weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_456_p0 = last_activations_1_load_1_reg_1040;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_456_p0 = last_activations_2_load_reg_1019;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_456_p0 = last_activations_0_load_reg_1005;
    end else begin
        grp_fu_456_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_456_p1 = output_difference_0_1_val;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_456_p1 = output_difference_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_456_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_456_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_460_p0 = last_activations_1_load_1_reg_1040;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p0 = last_activations_3_load_reg_1026;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_460_p0 = last_activations_0_load_reg_1005;
    end else begin
        grp_fu_460_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_460_p1 = output_difference_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p1 = output_difference_0_0_val;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_460_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_460_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_464_p0 = last_activations_2_load_1_reg_1047;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_464_p0 = last_activations_3_load_reg_1026;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_464_p0 = last_activations_0_load_reg_1005;
    end else begin
        grp_fu_464_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_464_p1 = output_difference_0_0_val;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_464_p1 = output_difference_0_1_val;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_464_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_464_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p0 = last_activations_2_load_1_reg_1047;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_p0 = last_activations_3_load_reg_1026;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_468_p0 = last_activations_1_load_reg_1012;
    end else begin
        grp_fu_468_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p1 = output_difference_0_1_val;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_p1 = output_difference_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_468_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_468_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_472_p0 = last_activations_2_load_1_reg_1047;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_472_p0 = last_activations_0_load_1_reg_1033;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_472_p0 = last_activations_1_load_reg_1012;
    end else begin
        grp_fu_472_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_472_p1 = output_difference_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_472_p1 = output_difference_0_0_val;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_472_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_472_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_476_p0 = last_activations_3_load_1_reg_1054;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_476_p0 = last_activations_0_load_1_reg_1033;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_476_p0 = last_activations_1_load_reg_1012;
    end else begin
        grp_fu_476_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_476_p1 = output_difference_0_0_val;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_476_p1 = output_difference_0_1_val;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_476_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_476_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_480_p0 = last_activations_3_load_1_reg_1054;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_480_p0 = last_activations_0_load_1_reg_1033;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_480_p0 = last_activations_2_load_reg_1019;
    end else begin
        grp_fu_480_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_480_p1 = output_difference_0_1_val;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_480_p1 = output_difference_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_480_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_480_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_484_p0 = last_activations_3_load_1_reg_1054;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_484_p0 = last_activations_1_load_1_reg_1040;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_484_p0 = last_activations_2_load_reg_1019;
    end else begin
        grp_fu_484_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_484_p1 = output_difference_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_484_p1 = output_difference_0_0_val;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_484_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_484_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_0_ce1_local = 1'b1;
    end else begin
        last_activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_1_ce1_local = 1'b1;
    end else begin
        last_activations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_2_ce0_local = 1'b1;
    end else begin
        last_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_2_ce1_local = 1'b1;
    end else begin
        last_activations_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_3_ce0_local = 1'b1;
    end else begin
        last_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_3_ce1_local = 1'b1;
    end else begin
        last_activations_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln73_fu_597_p2 = (i_7_reg_949 + 7'd8);
assign add_ln75_1_fu_688_p2 = (empty_reg_1067 + 8'd2);
assign add_ln75_2_fu_729_p2 = (empty_reg_1067 + 8'd5);
assign add_ln75_3_fu_771_p2 = (sub_ln75_reg_1087 + 6'd3);
assign add_ln75_4_fu_803_p2 = (empty_reg_1067 + 8'd13);
assign add_ln75_5_fu_823_p2 = (empty_reg_1067 + 8'd14);
assign add_ln75_6_fu_864_p2 = (empty_reg_1067 + 8'd17);
assign add_ln75_fu_668_p2 = (empty_reg_1067 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_address1 = delta_weights3_0_address1_local;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = reg_508;
assign delta_weights3_0_d1 = reg_488;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = reg_513;
assign delta_weights3_1_d1 = reg_493;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_address1 = delta_weights3_2_address1_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = reg_518;
assign delta_weights3_2_d1 = reg_498;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_address1 = delta_weights3_3_address1_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = reg_523;
assign delta_weights3_3_d1 = reg_503;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign empty_100_fu_843_p2 = (empty_reg_1067 + 8'd15);
assign empty_101_fu_884_p2 = (empty_reg_1067 + 8'd18);
assign empty_97_fu_708_p2 = (empty_reg_1067 + 8'd3);
assign empty_98_fu_749_p2 = (empty_reg_1067 + 8'd6);
assign empty_99_fu_783_p2 = (empty_reg_1067 + 8'd12);
assign empty_fu_625_p2 = (p_shl_fu_618_p3 - or_ln73_cast_fu_614_p1);
assign grp_fu_2070_p_ce = 1'b1;
assign grp_fu_2070_p_din0 = grp_fu_456_p0;
assign grp_fu_2070_p_din1 = grp_fu_456_p1;
assign grp_fu_3523_p_ce = 1'b1;
assign grp_fu_3523_p_din0 = grp_fu_460_p0;
assign grp_fu_3523_p_din1 = grp_fu_460_p1;
assign grp_fu_3527_p_ce = 1'b1;
assign grp_fu_3527_p_din0 = grp_fu_464_p0;
assign grp_fu_3527_p_din1 = grp_fu_464_p1;
assign grp_fu_3531_p_ce = 1'b1;
assign grp_fu_3531_p_din0 = grp_fu_468_p0;
assign grp_fu_3531_p_din1 = grp_fu_468_p1;
assign grp_fu_3535_p_ce = 1'b1;
assign grp_fu_3535_p_din0 = grp_fu_472_p0;
assign grp_fu_3535_p_din1 = grp_fu_472_p1;
assign grp_fu_3539_p_ce = 1'b1;
assign grp_fu_3539_p_din0 = grp_fu_476_p0;
assign grp_fu_3539_p_din1 = grp_fu_476_p1;
assign grp_fu_3543_p_ce = 1'b1;
assign grp_fu_3543_p_din0 = grp_fu_480_p0;
assign grp_fu_3543_p_din1 = grp_fu_480_p1;
assign grp_fu_3547_p_ce = 1'b1;
assign grp_fu_3547_p_din0 = grp_fu_484_p0;
assign grp_fu_3547_p_din1 = grp_fu_484_p1;
assign last_activations_0_address0 = p_cast_fu_580_p1;
assign last_activations_0_address1 = zext_ln72_fu_554_p1;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_0_ce1 = last_activations_0_ce1_local;
assign last_activations_1_address0 = p_cast_fu_580_p1;
assign last_activations_1_address1 = zext_ln72_fu_554_p1;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_1_ce1 = last_activations_1_ce1_local;
assign last_activations_2_address0 = p_cast_fu_580_p1;
assign last_activations_2_address1 = zext_ln72_fu_554_p1;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_2_ce1 = last_activations_2_ce1_local;
assign last_activations_3_address0 = p_cast_fu_580_p1;
assign last_activations_3_address1 = zext_ln72_fu_554_p1;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_3_ce1 = last_activations_3_ce1_local;
assign lshr_ln75_10_fu_889_p4 = {{empty_101_fu_884_p2[7:2]}};
assign lshr_ln75_1_fu_673_p4 = {{add_ln75_fu_668_p2[7:2]}};
assign lshr_ln75_2_fu_693_p4 = {{add_ln75_1_fu_688_p2[7:2]}};
assign lshr_ln75_3_fu_713_p4 = {{empty_97_fu_708_p2[7:2]}};
assign lshr_ln75_4_fu_734_p4 = {{add_ln75_2_fu_729_p2[7:2]}};
assign lshr_ln75_5_fu_754_p4 = {{empty_98_fu_749_p2[7:2]}};
assign lshr_ln75_6_fu_788_p4 = {{empty_99_fu_783_p2[7:2]}};
assign lshr_ln75_7_fu_808_p4 = {{add_ln75_4_fu_803_p2[7:2]}};
assign lshr_ln75_8_fu_828_p4 = {{add_ln75_5_fu_823_p2[7:2]}};
assign lshr_ln75_9_fu_848_p4 = {{empty_100_fu_843_p2[7:2]}};
assign lshr_ln75_s_fu_869_p4 = {{add_ln75_6_fu_864_p2[7:2]}};
assign lshr_ln_fu_544_p4 = {{ap_sig_allocacmp_i_7[5:2]}};
assign or_ln73_cast_fu_614_p1 = or_ln_fu_607_p3;
assign or_ln_fu_607_p3 = {{tmp_reg_1061_pp0_iter1_reg}, {1'd1}};
assign p_cast_fu_580_p1 = tmp_26_fu_572_p3;
assign p_shl5_fu_644_p3 = {{lshr_ln_reg_959_pp0_iter2_reg}, {2'd0}};
assign p_shl_fu_618_p3 = {{tmp_reg_1061_pp0_iter1_reg}, {3'd4}};
assign sub_ln75_fu_651_p2 = (p_shl5_fu_644_p3 - zext_ln72_1_fu_641_p1);
assign tmp_26_fu_572_p3 = {{tmp_s_fu_562_p4}, {1'd1}};
assign tmp_s_fu_562_p4 = {{ap_sig_allocacmp_i_7[5:3]}};
assign zext_ln72_1_fu_641_p1 = lshr_ln_reg_959_pp0_iter2_reg;
assign zext_ln72_fu_554_p1 = lshr_ln_fu_544_p4;
assign zext_ln75_10_fu_838_p1 = lshr_ln75_8_fu_828_p4;
assign zext_ln75_11_fu_858_p1 = lshr_ln75_9_fu_848_p4;
assign zext_ln75_12_fu_879_p1 = lshr_ln75_s_fu_869_p4;
assign zext_ln75_13_fu_899_p1 = lshr_ln75_10_fu_889_p4;
assign zext_ln75_1_fu_664_p1 = lshr_ln5_reg_1082;
assign zext_ln75_2_fu_683_p1 = lshr_ln75_1_fu_673_p4;
assign zext_ln75_3_fu_703_p1 = lshr_ln75_2_fu_693_p4;
assign zext_ln75_4_fu_723_p1 = lshr_ln75_3_fu_713_p4;
assign zext_ln75_5_fu_744_p1 = lshr_ln75_4_fu_734_p4;
assign zext_ln75_6_fu_764_p1 = lshr_ln75_5_fu_754_p4;
assign zext_ln75_7_fu_776_p1 = add_ln75_3_fu_771_p2;
assign zext_ln75_8_fu_798_p1 = lshr_ln75_6_fu_788_p4;
assign zext_ln75_9_fu_818_p1 = lshr_ln75_7_fu_808_p4;
assign zext_ln75_fu_657_p1 = sub_ln75_fu_651_p2;
always @ (posedge ap_clk) begin
    empty_reg_1067[0] <= 1'b1;
end
endmodule 
