
module backprop_update_weights_1_Pipeline_up_weight_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_q0,weights3_address1,weights3_ce1,weights3_we1,weights3_d1,weights3_q1,norm_15);  
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
output  [7:0] weights3_address0;
output   weights3_ce0;
output   weights3_we0;
output  [63:0] weights3_d0;
input  [63:0] weights3_q0;
output  [7:0] weights3_address1;
output   weights3_ce1;
output   weights3_we1;
output  [63:0] weights3_d1;
input  [63:0] weights3_q1;
input  [63:0] norm_15;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
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
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] tmp_reg_330;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_129;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_133;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_125_p2;
reg   [63:0] reg_138;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [6:0] i_4_reg_325;
wire   [7:0] sub_ln194_fu_174_p2;
reg   [7:0] sub_ln194_reg_334;
reg   [7:0] weights3_addr_reg_342;
reg   [7:0] weights3_addr_reg_342_pp0_iter1_reg;
reg   [7:0] weights3_addr_reg_342_pp0_iter2_reg;
reg   [7:0] weights3_addr_reg_342_pp0_iter3_reg;
reg   [7:0] weights3_addr_reg_342_pp0_iter4_reg;
reg   [7:0] weights3_addr_reg_342_pp0_iter5_reg;
reg   [7:0] weights3_addr_reg_342_pp0_iter6_reg;
reg   [7:0] weights3_addr_reg_342_pp0_iter7_reg;
reg   [7:0] weights3_addr_reg_342_pp0_iter8_reg;
reg   [7:0] weights3_addr_reg_342_pp0_iter9_reg;
reg   [7:0] weights3_addr_reg_342_pp0_iter10_reg;
reg   [7:0] weights3_addr_6_reg_347;
reg   [7:0] weights3_addr_6_reg_347_pp0_iter1_reg;
reg   [7:0] weights3_addr_6_reg_347_pp0_iter2_reg;
reg   [7:0] weights3_addr_6_reg_347_pp0_iter3_reg;
reg   [7:0] weights3_addr_6_reg_347_pp0_iter4_reg;
reg   [7:0] weights3_addr_6_reg_347_pp0_iter5_reg;
reg   [7:0] weights3_addr_6_reg_347_pp0_iter6_reg;
reg   [7:0] weights3_addr_6_reg_347_pp0_iter7_reg;
reg   [7:0] weights3_addr_6_reg_347_pp0_iter8_reg;
reg   [7:0] weights3_addr_6_reg_347_pp0_iter9_reg;
reg   [7:0] weights3_addr_6_reg_347_pp0_iter10_reg;
reg   [7:0] weights3_addr_7_reg_352;
reg   [7:0] weights3_addr_7_reg_352_pp0_iter1_reg;
reg   [7:0] weights3_addr_7_reg_352_pp0_iter2_reg;
reg   [7:0] weights3_addr_7_reg_352_pp0_iter3_reg;
reg   [7:0] weights3_addr_7_reg_352_pp0_iter4_reg;
reg   [7:0] weights3_addr_7_reg_352_pp0_iter5_reg;
reg   [7:0] weights3_addr_7_reg_352_pp0_iter6_reg;
reg   [7:0] weights3_addr_7_reg_352_pp0_iter7_reg;
reg   [7:0] weights3_addr_7_reg_352_pp0_iter8_reg;
reg   [7:0] weights3_addr_7_reg_352_pp0_iter9_reg;
reg   [7:0] weights3_addr_7_reg_352_pp0_iter10_reg;
reg   [7:0] weights3_addr_8_reg_357;
reg   [7:0] weights3_addr_8_reg_357_pp0_iter1_reg;
reg   [7:0] weights3_addr_8_reg_357_pp0_iter2_reg;
reg   [7:0] weights3_addr_8_reg_357_pp0_iter3_reg;
reg   [7:0] weights3_addr_8_reg_357_pp0_iter4_reg;
reg   [7:0] weights3_addr_8_reg_357_pp0_iter5_reg;
reg   [7:0] weights3_addr_8_reg_357_pp0_iter6_reg;
reg   [7:0] weights3_addr_8_reg_357_pp0_iter7_reg;
reg   [7:0] weights3_addr_8_reg_357_pp0_iter8_reg;
reg   [7:0] weights3_addr_8_reg_357_pp0_iter9_reg;
reg   [7:0] weights3_addr_8_reg_357_pp0_iter10_reg;
wire   [63:0] bitcast_ln194_fu_228_p1;
reg   [63:0] weights3_load_8_reg_367;
reg   [7:0] weights3_addr_9_reg_372;
reg   [7:0] weights3_addr_9_reg_372_pp0_iter1_reg;
reg   [7:0] weights3_addr_9_reg_372_pp0_iter2_reg;
reg   [7:0] weights3_addr_9_reg_372_pp0_iter3_reg;
reg   [7:0] weights3_addr_9_reg_372_pp0_iter4_reg;
reg   [7:0] weights3_addr_9_reg_372_pp0_iter5_reg;
reg   [7:0] weights3_addr_9_reg_372_pp0_iter6_reg;
reg   [7:0] weights3_addr_9_reg_372_pp0_iter7_reg;
reg   [7:0] weights3_addr_9_reg_372_pp0_iter8_reg;
reg   [7:0] weights3_addr_9_reg_372_pp0_iter9_reg;
reg   [7:0] weights3_addr_9_reg_372_pp0_iter10_reg;
reg   [7:0] weights3_addr_10_reg_377;
reg   [7:0] weights3_addr_10_reg_377_pp0_iter1_reg;
reg   [7:0] weights3_addr_10_reg_377_pp0_iter2_reg;
reg   [7:0] weights3_addr_10_reg_377_pp0_iter3_reg;
reg   [7:0] weights3_addr_10_reg_377_pp0_iter4_reg;
reg   [7:0] weights3_addr_10_reg_377_pp0_iter5_reg;
reg   [7:0] weights3_addr_10_reg_377_pp0_iter6_reg;
reg   [7:0] weights3_addr_10_reg_377_pp0_iter7_reg;
reg   [7:0] weights3_addr_10_reg_377_pp0_iter8_reg;
reg   [7:0] weights3_addr_10_reg_377_pp0_iter9_reg;
reg   [7:0] weights3_addr_10_reg_377_pp0_iter10_reg;
reg   [7:0] weights3_addr_10_reg_377_pp0_iter11_reg;
wire   [63:0] bitcast_ln194_2_fu_253_p1;
reg   [63:0] weights3_load_10_reg_387;
wire   [63:0] bitcast_ln194_4_fu_258_p1;
wire   [63:0] bitcast_ln194_6_fu_263_p1;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] bitcast_ln194_8_fu_277_p1;
wire   [63:0] bitcast_ln194_10_fu_282_p1;
reg   [63:0] div213_s_reg_412;
reg   [63:0] div213_2_reg_417;
reg   [63:0] div213_1_2_reg_422;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln194_fu_180_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_1_fu_203_p1;
wire   [63:0] zext_ln194_2_fu_213_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_3_fu_223_p1;
wire   [63:0] zext_ln194_4_fu_238_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln194_5_fu_248_p1;
reg   [6:0] i_fu_58;
wire   [6:0] add_ln192_fu_267_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_4;
reg    weights3_ce1_local;
reg   [7:0] weights3_address1_local;
reg    weights3_ce0_local;
reg   [7:0] weights3_address0_local;
reg    weights3_we1_local;
reg   [63:0] weights3_d1_local;
wire   [63:0] bitcast_ln194_1_fu_286_p1;
wire    ap_block_pp0_stage3;
reg    weights3_we0_local;
reg   [63:0] weights3_d0_local;
wire   [63:0] bitcast_ln194_3_fu_291_p1;
wire   [63:0] bitcast_ln194_5_fu_295_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] bitcast_ln194_7_fu_299_p1;
wire   [63:0] bitcast_ln194_9_fu_304_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln194_11_fu_309_p1;
reg   [63:0] grp_fu_125_p0;
wire   [5:0] trunc_ln194_fu_162_p1;
wire   [7:0] p_shl_fu_166_p3;
wire   [7:0] zext_ln21_fu_158_p1;
wire   [6:0] tmp_s_fu_185_p4;
wire   [7:0] or_ln5_fu_195_p3;
wire   [7:0] add_ln194_fu_208_p2;
wire   [7:0] empty_fu_218_p2;
wire   [7:0] add_ln194_1_fu_233_p2;
wire   [7:0] add_ln194_2_fu_243_p2;
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
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to11;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
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
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_58 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U487(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_125_p0),.din1(norm_15),.ce(1'b1),.dout(grp_fu_125_p2));
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
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_58 <= 7'd0;
    end else if (((tmp_reg_330 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        i_fu_58 <= add_ln192_fu_267_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_133 <= weights3_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_133 <= weights3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div213_1_2_reg_422 <= grp_fu_125_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div213_2_reg_417 <= grp_fu_125_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        div213_s_reg_412 <= grp_fu_125_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_4_reg_325 <= ap_sig_allocacmp_i_4;
        sub_ln194_reg_334 <= sub_ln194_fu_174_p2;
        tmp_reg_330 <= ap_sig_allocacmp_i_4[32'd6];
        weights3_addr_6_reg_347[7 : 1] <= zext_ln194_1_fu_203_p1[7 : 1];
        weights3_addr_6_reg_347_pp0_iter10_reg[7 : 1] <= weights3_addr_6_reg_347_pp0_iter9_reg[7 : 1];
        weights3_addr_6_reg_347_pp0_iter1_reg[7 : 1] <= weights3_addr_6_reg_347[7 : 1];
        weights3_addr_6_reg_347_pp0_iter2_reg[7 : 1] <= weights3_addr_6_reg_347_pp0_iter1_reg[7 : 1];
        weights3_addr_6_reg_347_pp0_iter3_reg[7 : 1] <= weights3_addr_6_reg_347_pp0_iter2_reg[7 : 1];
        weights3_addr_6_reg_347_pp0_iter4_reg[7 : 1] <= weights3_addr_6_reg_347_pp0_iter3_reg[7 : 1];
        weights3_addr_6_reg_347_pp0_iter5_reg[7 : 1] <= weights3_addr_6_reg_347_pp0_iter4_reg[7 : 1];
        weights3_addr_6_reg_347_pp0_iter6_reg[7 : 1] <= weights3_addr_6_reg_347_pp0_iter5_reg[7 : 1];
        weights3_addr_6_reg_347_pp0_iter7_reg[7 : 1] <= weights3_addr_6_reg_347_pp0_iter6_reg[7 : 1];
        weights3_addr_6_reg_347_pp0_iter8_reg[7 : 1] <= weights3_addr_6_reg_347_pp0_iter7_reg[7 : 1];
        weights3_addr_6_reg_347_pp0_iter9_reg[7 : 1] <= weights3_addr_6_reg_347_pp0_iter8_reg[7 : 1];
        weights3_addr_reg_342 <= zext_ln194_fu_180_p1;
        weights3_addr_reg_342_pp0_iter10_reg <= weights3_addr_reg_342_pp0_iter9_reg;
        weights3_addr_reg_342_pp0_iter1_reg <= weights3_addr_reg_342;
        weights3_addr_reg_342_pp0_iter2_reg <= weights3_addr_reg_342_pp0_iter1_reg;
        weights3_addr_reg_342_pp0_iter3_reg <= weights3_addr_reg_342_pp0_iter2_reg;
        weights3_addr_reg_342_pp0_iter4_reg <= weights3_addr_reg_342_pp0_iter3_reg;
        weights3_addr_reg_342_pp0_iter5_reg <= weights3_addr_reg_342_pp0_iter4_reg;
        weights3_addr_reg_342_pp0_iter6_reg <= weights3_addr_reg_342_pp0_iter5_reg;
        weights3_addr_reg_342_pp0_iter7_reg <= weights3_addr_reg_342_pp0_iter6_reg;
        weights3_addr_reg_342_pp0_iter8_reg <= weights3_addr_reg_342_pp0_iter7_reg;
        weights3_addr_reg_342_pp0_iter9_reg <= weights3_addr_reg_342_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_129 <= weights3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_138 <= grp_fu_125_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_addr_10_reg_377 <= zext_ln194_5_fu_248_p1;
        weights3_addr_10_reg_377_pp0_iter10_reg <= weights3_addr_10_reg_377_pp0_iter9_reg;
        weights3_addr_10_reg_377_pp0_iter11_reg <= weights3_addr_10_reg_377_pp0_iter10_reg;
        weights3_addr_10_reg_377_pp0_iter1_reg <= weights3_addr_10_reg_377;
        weights3_addr_10_reg_377_pp0_iter2_reg <= weights3_addr_10_reg_377_pp0_iter1_reg;
        weights3_addr_10_reg_377_pp0_iter3_reg <= weights3_addr_10_reg_377_pp0_iter2_reg;
        weights3_addr_10_reg_377_pp0_iter4_reg <= weights3_addr_10_reg_377_pp0_iter3_reg;
        weights3_addr_10_reg_377_pp0_iter5_reg <= weights3_addr_10_reg_377_pp0_iter4_reg;
        weights3_addr_10_reg_377_pp0_iter6_reg <= weights3_addr_10_reg_377_pp0_iter5_reg;
        weights3_addr_10_reg_377_pp0_iter7_reg <= weights3_addr_10_reg_377_pp0_iter6_reg;
        weights3_addr_10_reg_377_pp0_iter8_reg <= weights3_addr_10_reg_377_pp0_iter7_reg;
        weights3_addr_10_reg_377_pp0_iter9_reg <= weights3_addr_10_reg_377_pp0_iter8_reg;
        weights3_addr_9_reg_372 <= zext_ln194_4_fu_238_p1;
        weights3_addr_9_reg_372_pp0_iter10_reg <= weights3_addr_9_reg_372_pp0_iter9_reg;
        weights3_addr_9_reg_372_pp0_iter1_reg <= weights3_addr_9_reg_372;
        weights3_addr_9_reg_372_pp0_iter2_reg <= weights3_addr_9_reg_372_pp0_iter1_reg;
        weights3_addr_9_reg_372_pp0_iter3_reg <= weights3_addr_9_reg_372_pp0_iter2_reg;
        weights3_addr_9_reg_372_pp0_iter4_reg <= weights3_addr_9_reg_372_pp0_iter3_reg;
        weights3_addr_9_reg_372_pp0_iter5_reg <= weights3_addr_9_reg_372_pp0_iter4_reg;
        weights3_addr_9_reg_372_pp0_iter6_reg <= weights3_addr_9_reg_372_pp0_iter5_reg;
        weights3_addr_9_reg_372_pp0_iter7_reg <= weights3_addr_9_reg_372_pp0_iter6_reg;
        weights3_addr_9_reg_372_pp0_iter8_reg <= weights3_addr_9_reg_372_pp0_iter7_reg;
        weights3_addr_9_reg_372_pp0_iter9_reg <= weights3_addr_9_reg_372_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_addr_7_reg_352 <= zext_ln194_2_fu_213_p1;
        weights3_addr_7_reg_352_pp0_iter10_reg <= weights3_addr_7_reg_352_pp0_iter9_reg;
        weights3_addr_7_reg_352_pp0_iter1_reg <= weights3_addr_7_reg_352;
        weights3_addr_7_reg_352_pp0_iter2_reg <= weights3_addr_7_reg_352_pp0_iter1_reg;
        weights3_addr_7_reg_352_pp0_iter3_reg <= weights3_addr_7_reg_352_pp0_iter2_reg;
        weights3_addr_7_reg_352_pp0_iter4_reg <= weights3_addr_7_reg_352_pp0_iter3_reg;
        weights3_addr_7_reg_352_pp0_iter5_reg <= weights3_addr_7_reg_352_pp0_iter4_reg;
        weights3_addr_7_reg_352_pp0_iter6_reg <= weights3_addr_7_reg_352_pp0_iter5_reg;
        weights3_addr_7_reg_352_pp0_iter7_reg <= weights3_addr_7_reg_352_pp0_iter6_reg;
        weights3_addr_7_reg_352_pp0_iter8_reg <= weights3_addr_7_reg_352_pp0_iter7_reg;
        weights3_addr_7_reg_352_pp0_iter9_reg <= weights3_addr_7_reg_352_pp0_iter8_reg;
        weights3_addr_8_reg_357 <= zext_ln194_3_fu_223_p1;
        weights3_addr_8_reg_357_pp0_iter10_reg <= weights3_addr_8_reg_357_pp0_iter9_reg;
        weights3_addr_8_reg_357_pp0_iter1_reg <= weights3_addr_8_reg_357;
        weights3_addr_8_reg_357_pp0_iter2_reg <= weights3_addr_8_reg_357_pp0_iter1_reg;
        weights3_addr_8_reg_357_pp0_iter3_reg <= weights3_addr_8_reg_357_pp0_iter2_reg;
        weights3_addr_8_reg_357_pp0_iter4_reg <= weights3_addr_8_reg_357_pp0_iter3_reg;
        weights3_addr_8_reg_357_pp0_iter5_reg <= weights3_addr_8_reg_357_pp0_iter4_reg;
        weights3_addr_8_reg_357_pp0_iter6_reg <= weights3_addr_8_reg_357_pp0_iter5_reg;
        weights3_addr_8_reg_357_pp0_iter7_reg <= weights3_addr_8_reg_357_pp0_iter6_reg;
        weights3_addr_8_reg_357_pp0_iter8_reg <= weights3_addr_8_reg_357_pp0_iter7_reg;
        weights3_addr_8_reg_357_pp0_iter9_reg <= weights3_addr_8_reg_357_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_load_10_reg_387 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_load_8_reg_367 <= weights3_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to11 = 1'b1;
    end else begin
        ap_idle_pp0_1to11 = 1'b0;
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
        ap_sig_allocacmp_i_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_58;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_125_p0 = bitcast_ln194_10_fu_282_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_125_p0 = bitcast_ln194_8_fu_277_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_125_p0 = bitcast_ln194_6_fu_263_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_125_p0 = bitcast_ln194_4_fu_258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_125_p0 = bitcast_ln194_2_fu_253_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_125_p0 = bitcast_ln194_fu_228_p1;
    end else begin
        grp_fu_125_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_address0_local = weights3_addr_10_reg_377_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_address0_local = weights3_addr_8_reg_357_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_address0_local = weights3_addr_6_reg_347_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_address0_local = zext_ln194_5_fu_248_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_address0_local = zext_ln194_3_fu_223_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_address0_local = zext_ln194_1_fu_203_p1;
    end else begin
        weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_address1_local = weights3_addr_9_reg_372_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_address1_local = weights3_addr_7_reg_352_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_address1_local = weights3_addr_reg_342_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_address1_local = zext_ln194_4_fu_238_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_address1_local = zext_ln194_2_fu_213_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_address1_local = zext_ln194_fu_180_p1;
    end else begin
        weights3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_ce0_local = 1'b1;
    end else begin
        weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_ce1_local = 1'b1;
    end else begin
        weights3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_d0_local = bitcast_ln194_11_fu_309_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_d0_local = bitcast_ln194_7_fu_299_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_d0_local = bitcast_ln194_3_fu_291_p1;
    end else begin
        weights3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter10 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_d1_local = bitcast_ln194_9_fu_304_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_d1_local = bitcast_ln194_5_fu_295_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_d1_local = bitcast_ln194_1_fu_286_p1;
        end else begin
            weights3_d1_local = 'bx;
        end
    end else begin
        weights3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights3_we0_local = 1'b1;
    end else begin
        weights3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights3_we1_local = 1'b1;
    end else begin
        weights3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to11 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln192_fu_267_p2 = (i_4_reg_325 + 7'd2);
assign add_ln194_1_fu_233_p2 = (sub_ln194_reg_334 + 8'd4);
assign add_ln194_2_fu_243_p2 = (sub_ln194_reg_334 + 8'd5);
assign add_ln194_fu_208_p2 = (sub_ln194_reg_334 + 8'd2);
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
assign bitcast_ln194_10_fu_282_p1 = weights3_load_10_reg_387;
assign bitcast_ln194_11_fu_309_p1 = div213_1_2_reg_422;
assign bitcast_ln194_1_fu_286_p1 = reg_138;
assign bitcast_ln194_2_fu_253_p1 = reg_133;
assign bitcast_ln194_3_fu_291_p1 = div213_s_reg_412;
assign bitcast_ln194_4_fu_258_p1 = reg_129;
assign bitcast_ln194_5_fu_295_p1 = div213_2_reg_417;
assign bitcast_ln194_6_fu_263_p1 = weights3_load_8_reg_367;
assign bitcast_ln194_7_fu_299_p1 = reg_138;
assign bitcast_ln194_8_fu_277_p1 = reg_133;
assign bitcast_ln194_9_fu_304_p1 = reg_138;
assign bitcast_ln194_fu_228_p1 = reg_129;
assign empty_fu_218_p2 = (sub_ln194_reg_334 + 8'd3);
assign or_ln5_fu_195_p3 = {{tmp_s_fu_185_p4}, {1'd1}};
assign p_shl_fu_166_p3 = {{trunc_ln194_fu_162_p1}, {2'd0}};
assign sub_ln194_fu_174_p2 = (p_shl_fu_166_p3 - zext_ln21_fu_158_p1);
assign tmp_s_fu_185_p4 = {{sub_ln194_fu_174_p2[7:1]}};
assign trunc_ln194_fu_162_p1 = ap_sig_allocacmp_i_4[5:0];
assign weights3_address0 = weights3_address0_local;
assign weights3_address1 = weights3_address1_local;
assign weights3_ce0 = weights3_ce0_local;
assign weights3_ce1 = weights3_ce1_local;
assign weights3_d0 = weights3_d0_local;
assign weights3_d1 = weights3_d1_local;
assign weights3_we0 = weights3_we0_local;
assign weights3_we1 = weights3_we1_local;
assign zext_ln194_1_fu_203_p1 = or_ln5_fu_195_p3;
assign zext_ln194_2_fu_213_p1 = add_ln194_fu_208_p2;
assign zext_ln194_3_fu_223_p1 = empty_fu_218_p2;
assign zext_ln194_4_fu_238_p1 = add_ln194_1_fu_233_p2;
assign zext_ln194_5_fu_248_p1 = add_ln194_2_fu_243_p2;
assign zext_ln194_fu_180_p1 = sub_ln194_fu_174_p2;
assign zext_ln21_fu_158_p1 = ap_sig_allocacmp_i_4;
always @ (posedge ap_clk) begin
    weights3_addr_6_reg_347[0] <= 1'b1;
    weights3_addr_6_reg_347_pp0_iter1_reg[0] <= 1'b1;
    weights3_addr_6_reg_347_pp0_iter2_reg[0] <= 1'b1;
    weights3_addr_6_reg_347_pp0_iter3_reg[0] <= 1'b1;
    weights3_addr_6_reg_347_pp0_iter4_reg[0] <= 1'b1;
    weights3_addr_6_reg_347_pp0_iter5_reg[0] <= 1'b1;
    weights3_addr_6_reg_347_pp0_iter6_reg[0] <= 1'b1;
    weights3_addr_6_reg_347_pp0_iter7_reg[0] <= 1'b1;
    weights3_addr_6_reg_347_pp0_iter8_reg[0] <= 1'b1;
    weights3_addr_6_reg_347_pp0_iter9_reg[0] <= 1'b1;
    weights3_addr_6_reg_347_pp0_iter10_reg[0] <= 1'b1;
end
endmodule 
