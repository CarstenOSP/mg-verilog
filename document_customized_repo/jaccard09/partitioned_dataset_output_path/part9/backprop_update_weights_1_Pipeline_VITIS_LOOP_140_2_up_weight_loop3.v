
module backprop_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0,weights1_ce0,weights1_we0,weights1_d0,weights1_q0,weights1_address1,weights1_ce1,weights1_we1,weights1_d1,weights1_q1,norm_1,grp_fu_377_p_din0,grp_fu_377_p_din1,grp_fu_377_p_dout0,grp_fu_377_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] weights1_address0;
output   weights1_ce0;
output   weights1_we0;
output  [63:0] weights1_d0;
input  [63:0] weights1_q0;
output  [9:0] weights1_address1;
output   weights1_ce1;
output   weights1_we1;
output  [63:0] weights1_d1;
input  [63:0] weights1_q1;
input  [63:0] norm_1;
output  [63:0] grp_fu_377_p_din0;
output  [63:0] grp_fu_377_p_din1;
input  [63:0] grp_fu_377_p_dout0;
output   grp_fu_377_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
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
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln140_reg_376;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_133;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_137;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln140_fu_159_p2;
reg   [0:0] icmp_ln140_reg_376_pp0_iter1_reg;
reg   [0:0] icmp_ln140_reg_376_pp0_iter2_reg;
reg   [0:0] icmp_ln140_reg_376_pp0_iter3_reg;
reg   [0:0] icmp_ln140_reg_376_pp0_iter4_reg;
reg   [0:0] icmp_ln140_reg_376_pp0_iter5_reg;
reg   [0:0] icmp_ln140_reg_376_pp0_iter6_reg;
reg   [0:0] icmp_ln140_reg_376_pp0_iter7_reg;
reg   [0:0] icmp_ln140_reg_376_pp0_iter8_reg;
reg   [0:0] icmp_ln140_reg_376_pp0_iter9_reg;
reg   [0:0] icmp_ln140_reg_376_pp0_iter10_reg;
reg   [0:0] icmp_ln140_reg_376_pp0_iter11_reg;
reg   [0:0] icmp_ln140_reg_376_pp0_iter12_reg;
reg   [0:0] icmp_ln140_reg_376_pp0_iter13_reg;
reg   [0:0] icmp_ln140_reg_376_pp0_iter14_reg;
reg   [0:0] icmp_ln140_reg_376_pp0_iter15_reg;
reg   [3:0] i_2_load_reg_380;
wire   [3:0] add_ln140_1_fu_174_p2;
reg   [3:0] add_ln140_1_reg_385;
wire   [6:0] select_ln121_fu_196_p3;
reg   [6:0] select_ln121_reg_390;
wire   [3:0] select_ln140_fu_204_p3;
reg   [3:0] select_ln140_reg_395;
reg   [9:0] weights1_addr_reg_401;
reg   [9:0] weights1_addr_reg_401_pp0_iter1_reg;
reg   [9:0] weights1_addr_reg_401_pp0_iter2_reg;
reg   [9:0] weights1_addr_reg_401_pp0_iter3_reg;
reg   [9:0] weights1_addr_reg_401_pp0_iter4_reg;
reg   [9:0] weights1_addr_reg_401_pp0_iter5_reg;
reg   [9:0] weights1_addr_reg_401_pp0_iter6_reg;
reg   [9:0] weights1_addr_reg_401_pp0_iter7_reg;
reg   [9:0] weights1_addr_reg_401_pp0_iter8_reg;
reg   [9:0] weights1_addr_reg_401_pp0_iter9_reg;
reg   [9:0] weights1_addr_reg_401_pp0_iter10_reg;
reg   [9:0] weights1_addr_reg_401_pp0_iter11_reg;
reg   [9:0] weights1_addr_reg_401_pp0_iter12_reg;
reg   [9:0] weights1_addr_reg_401_pp0_iter13_reg;
reg   [9:0] weights1_addr_reg_401_pp0_iter14_reg;
reg   [9:0] weights1_addr_reg_401_pp0_iter15_reg;
reg   [9:0] weights1_addr_1_reg_406;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter1_reg;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter2_reg;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter3_reg;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter4_reg;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter5_reg;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter6_reg;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter7_reg;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter8_reg;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter9_reg;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter10_reg;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter11_reg;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter12_reg;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter13_reg;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter14_reg;
reg   [9:0] weights1_addr_1_reg_406_pp0_iter15_reg;
reg   [3:0] tmp_13_reg_411;
wire   [0:0] trunc_ln142_fu_268_p1;
reg   [0:0] trunc_ln142_reg_417;
reg   [63:0] weights1_load_1_reg_422;
reg   [9:0] weights1_addr_2_reg_427;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter1_reg;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter2_reg;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter3_reg;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter4_reg;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter5_reg;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter6_reg;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter7_reg;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter8_reg;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter9_reg;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter10_reg;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter11_reg;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter12_reg;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter13_reg;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter14_reg;
reg   [9:0] weights1_addr_2_reg_427_pp0_iter15_reg;
reg   [9:0] weights1_addr_3_reg_432;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter1_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter2_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter3_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter4_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter5_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter6_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter7_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter8_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter9_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter10_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter11_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter12_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter13_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter14_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter15_reg;
reg   [9:0] weights1_addr_3_reg_432_pp0_iter16_reg;
wire   [63:0] bitcast_ln142_fu_304_p1;
reg   [63:0] weights1_load_3_reg_442;
wire   [63:0] bitcast_ln142_2_fu_309_p1;
wire   [63:0] bitcast_ln142_4_fu_323_p1;
wire   [63:0] bitcast_ln142_6_fu_328_p1;
reg   [63:0] div_1_reg_462;
reg   [63:0] div_3_reg_467;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln142_fu_228_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln142_1_fu_253_p1;
wire   [63:0] zext_ln142_2_fu_286_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln142_3_fu_299_p1;
reg   [6:0] j_fu_70;
wire   [6:0] add_ln141_fu_313_p2;
wire    ap_loop_init;
reg   [3:0] i_2_fu_74;
reg   [3:0] ap_sig_allocacmp_i_2_load;
wire    ap_block_pp0_stage0;
reg   [7:0] indvar_flatten6_fu_78;
wire   [7:0] add_ln140_fu_165_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    weights1_ce1_local;
reg   [9:0] weights1_address1_local;
reg    weights1_ce0_local;
reg   [9:0] weights1_address0_local;
reg    weights1_we1_local;
reg   [63:0] weights1_d1_local;
wire   [63:0] bitcast_ln142_1_fu_332_p1;
wire    ap_block_pp0_stage3;
reg    weights1_we0_local;
reg   [63:0] weights1_d0_local;
wire   [63:0] bitcast_ln142_3_fu_337_p1;
wire   [63:0] bitcast_ln142_5_fu_341_p1;
wire   [63:0] bitcast_ln142_7_fu_346_p1;
reg   [63:0] grp_fu_129_p0;
wire   [0:0] tmp_fu_188_p3;
wire   [9:0] zext_ln141_fu_218_p1;
wire   [9:0] tmp_s_fu_210_p3;
wire   [9:0] add_ln142_fu_222_p2;
wire   [4:0] tmp_12_fu_233_p4;
wire   [9:0] add_ln142_1_fu_243_p4;
wire   [9:0] add_ln142_2_fu_277_p5;
wire   [9:0] add_ln142_3_fu_291_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter16_stage0;
reg    ap_idle_pp0_0to15;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to17;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
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
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_70 = 7'd0;
#0 i_2_fu_74 = 4'd0;
#0 indvar_flatten6_fu_78 = 8'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter17 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_74 <= 4'd0;
    end else if (((icmp_ln140_reg_376 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_fu_74 <= select_ln140_fu_204_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln140_fu_159_p2 == 1'd0))) begin
            indvar_flatten6_fu_78 <= add_ln140_fu_165_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_78 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_70 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_70 <= add_ln141_fu_313_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln140_1_reg_385 <= add_ln140_1_fu_174_p2;
        i_2_load_reg_380 <= ap_sig_allocacmp_i_2_load;
        icmp_ln140_reg_376 <= icmp_ln140_fu_159_p2;
        icmp_ln140_reg_376_pp0_iter10_reg <= icmp_ln140_reg_376_pp0_iter9_reg;
        icmp_ln140_reg_376_pp0_iter11_reg <= icmp_ln140_reg_376_pp0_iter10_reg;
        icmp_ln140_reg_376_pp0_iter12_reg <= icmp_ln140_reg_376_pp0_iter11_reg;
        icmp_ln140_reg_376_pp0_iter13_reg <= icmp_ln140_reg_376_pp0_iter12_reg;
        icmp_ln140_reg_376_pp0_iter14_reg <= icmp_ln140_reg_376_pp0_iter13_reg;
        icmp_ln140_reg_376_pp0_iter15_reg <= icmp_ln140_reg_376_pp0_iter14_reg;
        icmp_ln140_reg_376_pp0_iter1_reg <= icmp_ln140_reg_376;
        icmp_ln140_reg_376_pp0_iter2_reg <= icmp_ln140_reg_376_pp0_iter1_reg;
        icmp_ln140_reg_376_pp0_iter3_reg <= icmp_ln140_reg_376_pp0_iter2_reg;
        icmp_ln140_reg_376_pp0_iter4_reg <= icmp_ln140_reg_376_pp0_iter3_reg;
        icmp_ln140_reg_376_pp0_iter5_reg <= icmp_ln140_reg_376_pp0_iter4_reg;
        icmp_ln140_reg_376_pp0_iter6_reg <= icmp_ln140_reg_376_pp0_iter5_reg;
        icmp_ln140_reg_376_pp0_iter7_reg <= icmp_ln140_reg_376_pp0_iter6_reg;
        icmp_ln140_reg_376_pp0_iter8_reg <= icmp_ln140_reg_376_pp0_iter7_reg;
        icmp_ln140_reg_376_pp0_iter9_reg <= icmp_ln140_reg_376_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div_1_reg_462 <= grp_fu_377_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        div_3_reg_467 <= grp_fu_377_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_133 <= weights1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_137 <= grp_fu_377_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln121_reg_390 <= select_ln121_fu_196_p3;
        select_ln140_reg_395 <= select_ln140_fu_204_p3;
        tmp_13_reg_411 <= {{select_ln121_fu_196_p3[5:2]}};
        trunc_ln142_reg_417 <= trunc_ln142_fu_268_p1;
        weights1_addr_1_reg_406[9 : 1] <= zext_ln142_1_fu_253_p1[9 : 1];
        weights1_addr_1_reg_406_pp0_iter10_reg[9 : 1] <= weights1_addr_1_reg_406_pp0_iter9_reg[9 : 1];
        weights1_addr_1_reg_406_pp0_iter11_reg[9 : 1] <= weights1_addr_1_reg_406_pp0_iter10_reg[9 : 1];
        weights1_addr_1_reg_406_pp0_iter12_reg[9 : 1] <= weights1_addr_1_reg_406_pp0_iter11_reg[9 : 1];
        weights1_addr_1_reg_406_pp0_iter13_reg[9 : 1] <= weights1_addr_1_reg_406_pp0_iter12_reg[9 : 1];
        weights1_addr_1_reg_406_pp0_iter14_reg[9 : 1] <= weights1_addr_1_reg_406_pp0_iter13_reg[9 : 1];
        weights1_addr_1_reg_406_pp0_iter15_reg[9 : 1] <= weights1_addr_1_reg_406_pp0_iter14_reg[9 : 1];
        weights1_addr_1_reg_406_pp0_iter1_reg[9 : 1] <= weights1_addr_1_reg_406[9 : 1];
        weights1_addr_1_reg_406_pp0_iter2_reg[9 : 1] <= weights1_addr_1_reg_406_pp0_iter1_reg[9 : 1];
        weights1_addr_1_reg_406_pp0_iter3_reg[9 : 1] <= weights1_addr_1_reg_406_pp0_iter2_reg[9 : 1];
        weights1_addr_1_reg_406_pp0_iter4_reg[9 : 1] <= weights1_addr_1_reg_406_pp0_iter3_reg[9 : 1];
        weights1_addr_1_reg_406_pp0_iter5_reg[9 : 1] <= weights1_addr_1_reg_406_pp0_iter4_reg[9 : 1];
        weights1_addr_1_reg_406_pp0_iter6_reg[9 : 1] <= weights1_addr_1_reg_406_pp0_iter5_reg[9 : 1];
        weights1_addr_1_reg_406_pp0_iter7_reg[9 : 1] <= weights1_addr_1_reg_406_pp0_iter6_reg[9 : 1];
        weights1_addr_1_reg_406_pp0_iter8_reg[9 : 1] <= weights1_addr_1_reg_406_pp0_iter7_reg[9 : 1];
        weights1_addr_1_reg_406_pp0_iter9_reg[9 : 1] <= weights1_addr_1_reg_406_pp0_iter8_reg[9 : 1];
        weights1_addr_reg_401 <= zext_ln142_fu_228_p1;
        weights1_addr_reg_401_pp0_iter10_reg <= weights1_addr_reg_401_pp0_iter9_reg;
        weights1_addr_reg_401_pp0_iter11_reg <= weights1_addr_reg_401_pp0_iter10_reg;
        weights1_addr_reg_401_pp0_iter12_reg <= weights1_addr_reg_401_pp0_iter11_reg;
        weights1_addr_reg_401_pp0_iter13_reg <= weights1_addr_reg_401_pp0_iter12_reg;
        weights1_addr_reg_401_pp0_iter14_reg <= weights1_addr_reg_401_pp0_iter13_reg;
        weights1_addr_reg_401_pp0_iter15_reg <= weights1_addr_reg_401_pp0_iter14_reg;
        weights1_addr_reg_401_pp0_iter1_reg <= weights1_addr_reg_401;
        weights1_addr_reg_401_pp0_iter2_reg <= weights1_addr_reg_401_pp0_iter1_reg;
        weights1_addr_reg_401_pp0_iter3_reg <= weights1_addr_reg_401_pp0_iter2_reg;
        weights1_addr_reg_401_pp0_iter4_reg <= weights1_addr_reg_401_pp0_iter3_reg;
        weights1_addr_reg_401_pp0_iter5_reg <= weights1_addr_reg_401_pp0_iter4_reg;
        weights1_addr_reg_401_pp0_iter6_reg <= weights1_addr_reg_401_pp0_iter5_reg;
        weights1_addr_reg_401_pp0_iter7_reg <= weights1_addr_reg_401_pp0_iter6_reg;
        weights1_addr_reg_401_pp0_iter8_reg <= weights1_addr_reg_401_pp0_iter7_reg;
        weights1_addr_reg_401_pp0_iter9_reg <= weights1_addr_reg_401_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_addr_2_reg_427[0] <= zext_ln142_2_fu_286_p1[0];
weights1_addr_2_reg_427[9 : 2] <= zext_ln142_2_fu_286_p1[9 : 2];
        weights1_addr_2_reg_427_pp0_iter10_reg[0] <= weights1_addr_2_reg_427_pp0_iter9_reg[0];
weights1_addr_2_reg_427_pp0_iter10_reg[9 : 2] <= weights1_addr_2_reg_427_pp0_iter9_reg[9 : 2];
        weights1_addr_2_reg_427_pp0_iter11_reg[0] <= weights1_addr_2_reg_427_pp0_iter10_reg[0];
weights1_addr_2_reg_427_pp0_iter11_reg[9 : 2] <= weights1_addr_2_reg_427_pp0_iter10_reg[9 : 2];
        weights1_addr_2_reg_427_pp0_iter12_reg[0] <= weights1_addr_2_reg_427_pp0_iter11_reg[0];
weights1_addr_2_reg_427_pp0_iter12_reg[9 : 2] <= weights1_addr_2_reg_427_pp0_iter11_reg[9 : 2];
        weights1_addr_2_reg_427_pp0_iter13_reg[0] <= weights1_addr_2_reg_427_pp0_iter12_reg[0];
weights1_addr_2_reg_427_pp0_iter13_reg[9 : 2] <= weights1_addr_2_reg_427_pp0_iter12_reg[9 : 2];
        weights1_addr_2_reg_427_pp0_iter14_reg[0] <= weights1_addr_2_reg_427_pp0_iter13_reg[0];
weights1_addr_2_reg_427_pp0_iter14_reg[9 : 2] <= weights1_addr_2_reg_427_pp0_iter13_reg[9 : 2];
        weights1_addr_2_reg_427_pp0_iter15_reg[0] <= weights1_addr_2_reg_427_pp0_iter14_reg[0];
weights1_addr_2_reg_427_pp0_iter15_reg[9 : 2] <= weights1_addr_2_reg_427_pp0_iter14_reg[9 : 2];
        weights1_addr_2_reg_427_pp0_iter1_reg[0] <= weights1_addr_2_reg_427[0];
weights1_addr_2_reg_427_pp0_iter1_reg[9 : 2] <= weights1_addr_2_reg_427[9 : 2];
        weights1_addr_2_reg_427_pp0_iter2_reg[0] <= weights1_addr_2_reg_427_pp0_iter1_reg[0];
weights1_addr_2_reg_427_pp0_iter2_reg[9 : 2] <= weights1_addr_2_reg_427_pp0_iter1_reg[9 : 2];
        weights1_addr_2_reg_427_pp0_iter3_reg[0] <= weights1_addr_2_reg_427_pp0_iter2_reg[0];
weights1_addr_2_reg_427_pp0_iter3_reg[9 : 2] <= weights1_addr_2_reg_427_pp0_iter2_reg[9 : 2];
        weights1_addr_2_reg_427_pp0_iter4_reg[0] <= weights1_addr_2_reg_427_pp0_iter3_reg[0];
weights1_addr_2_reg_427_pp0_iter4_reg[9 : 2] <= weights1_addr_2_reg_427_pp0_iter3_reg[9 : 2];
        weights1_addr_2_reg_427_pp0_iter5_reg[0] <= weights1_addr_2_reg_427_pp0_iter4_reg[0];
weights1_addr_2_reg_427_pp0_iter5_reg[9 : 2] <= weights1_addr_2_reg_427_pp0_iter4_reg[9 : 2];
        weights1_addr_2_reg_427_pp0_iter6_reg[0] <= weights1_addr_2_reg_427_pp0_iter5_reg[0];
weights1_addr_2_reg_427_pp0_iter6_reg[9 : 2] <= weights1_addr_2_reg_427_pp0_iter5_reg[9 : 2];
        weights1_addr_2_reg_427_pp0_iter7_reg[0] <= weights1_addr_2_reg_427_pp0_iter6_reg[0];
weights1_addr_2_reg_427_pp0_iter7_reg[9 : 2] <= weights1_addr_2_reg_427_pp0_iter6_reg[9 : 2];
        weights1_addr_2_reg_427_pp0_iter8_reg[0] <= weights1_addr_2_reg_427_pp0_iter7_reg[0];
weights1_addr_2_reg_427_pp0_iter8_reg[9 : 2] <= weights1_addr_2_reg_427_pp0_iter7_reg[9 : 2];
        weights1_addr_2_reg_427_pp0_iter9_reg[0] <= weights1_addr_2_reg_427_pp0_iter8_reg[0];
weights1_addr_2_reg_427_pp0_iter9_reg[9 : 2] <= weights1_addr_2_reg_427_pp0_iter8_reg[9 : 2];
        weights1_addr_3_reg_432[9 : 2] <= zext_ln142_3_fu_299_p1[9 : 2];
        weights1_addr_3_reg_432_pp0_iter10_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter9_reg[9 : 2];
        weights1_addr_3_reg_432_pp0_iter11_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter10_reg[9 : 2];
        weights1_addr_3_reg_432_pp0_iter12_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter11_reg[9 : 2];
        weights1_addr_3_reg_432_pp0_iter13_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter12_reg[9 : 2];
        weights1_addr_3_reg_432_pp0_iter14_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter13_reg[9 : 2];
        weights1_addr_3_reg_432_pp0_iter15_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter14_reg[9 : 2];
        weights1_addr_3_reg_432_pp0_iter16_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter15_reg[9 : 2];
        weights1_addr_3_reg_432_pp0_iter1_reg[9 : 2] <= weights1_addr_3_reg_432[9 : 2];
        weights1_addr_3_reg_432_pp0_iter2_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter1_reg[9 : 2];
        weights1_addr_3_reg_432_pp0_iter3_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter2_reg[9 : 2];
        weights1_addr_3_reg_432_pp0_iter4_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter3_reg[9 : 2];
        weights1_addr_3_reg_432_pp0_iter5_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter4_reg[9 : 2];
        weights1_addr_3_reg_432_pp0_iter6_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter5_reg[9 : 2];
        weights1_addr_3_reg_432_pp0_iter7_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter6_reg[9 : 2];
        weights1_addr_3_reg_432_pp0_iter8_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter7_reg[9 : 2];
        weights1_addr_3_reg_432_pp0_iter9_reg[9 : 2] <= weights1_addr_3_reg_432_pp0_iter8_reg[9 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_load_1_reg_422 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_load_3_reg_442 <= weights1_q0;
    end
end
always @ (*) begin
    if (((icmp_ln140_reg_376 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln140_reg_376_pp0_iter15_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter16_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter16_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to15 = 1'b1;
    end else begin
        ap_idle_pp0_0to15 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to17 = 1'b1;
    end else begin
        ap_idle_pp0_1to17 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_2_load = i_2_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten6_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_129_p0 = bitcast_ln142_6_fu_328_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_129_p0 = bitcast_ln142_4_fu_323_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_129_p0 = bitcast_ln142_2_fu_309_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_129_p0 = bitcast_ln142_fu_304_p1;
    end else begin
        grp_fu_129_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_address0_local = weights1_addr_3_reg_432_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_address0_local = weights1_addr_1_reg_406_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_address0_local = zext_ln142_3_fu_299_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_address0_local = zext_ln142_1_fu_253_p1;
    end else begin
        weights1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_address1_local = weights1_addr_2_reg_427_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_address1_local = weights1_addr_reg_401_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_address1_local = zext_ln142_2_fu_286_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_address1_local = zext_ln142_fu_228_p1;
    end else begin
        weights1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_ce0_local = 1'b1;
    end else begin
        weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_ce1_local = 1'b1;
    end else begin
        weights1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_d0_local = bitcast_ln142_7_fu_346_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_d0_local = bitcast_ln142_3_fu_337_p1;
    end else begin
        weights1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_d1_local = bitcast_ln142_5_fu_341_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_d1_local = bitcast_ln142_1_fu_332_p1;
    end else begin
        weights1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_we0_local = 1'b1;
    end else begin
        weights1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_we1_local = 1'b1;
    end else begin
        weights1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to17 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln140_1_fu_174_p2 = (ap_sig_allocacmp_i_2_load + 4'd1);
assign add_ln140_fu_165_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 8'd1);
assign add_ln141_fu_313_p2 = (select_ln121_reg_390 + 7'd4);
assign add_ln142_1_fu_243_p4 = {{{select_ln140_fu_204_p3}, {tmp_12_fu_233_p4}}, {1'd1}};
assign add_ln142_2_fu_277_p5 = {{{{select_ln140_reg_395}, {tmp_13_reg_411}}, {1'd1}}, {trunc_ln142_reg_417}};
assign add_ln142_3_fu_291_p4 = {{{select_ln140_reg_395}, {tmp_13_reg_411}}, {2'd3}};
assign add_ln142_fu_222_p2 = (zext_ln141_fu_218_p1 + tmp_s_fu_210_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln142_1_fu_332_p1 = reg_137;
assign bitcast_ln142_2_fu_309_p1 = weights1_load_1_reg_422;
assign bitcast_ln142_3_fu_337_p1 = div_1_reg_462;
assign bitcast_ln142_4_fu_323_p1 = reg_133;
assign bitcast_ln142_5_fu_341_p1 = reg_137;
assign bitcast_ln142_6_fu_328_p1 = weights1_load_3_reg_442;
assign bitcast_ln142_7_fu_346_p1 = div_3_reg_467;
assign bitcast_ln142_fu_304_p1 = reg_133;
assign grp_fu_377_p_ce = 1'b1;
assign grp_fu_377_p_din0 = grp_fu_129_p0;
assign grp_fu_377_p_din1 = norm_1;
assign icmp_ln140_fu_159_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 8'd208) ? 1'b1 : 1'b0);
assign select_ln121_fu_196_p3 = ((tmp_fu_188_p3[0:0] == 1'b1) ? 7'd0 : j_fu_70);
assign select_ln140_fu_204_p3 = ((tmp_fu_188_p3[0:0] == 1'b1) ? add_ln140_1_reg_385 : i_2_load_reg_380);
assign tmp_12_fu_233_p4 = {{select_ln121_fu_196_p3[5:1]}};
assign tmp_fu_188_p3 = j_fu_70[32'd6];
assign tmp_s_fu_210_p3 = {{select_ln140_fu_204_p3}, {6'd0}};
assign trunc_ln142_fu_268_p1 = select_ln121_fu_196_p3[0:0];
assign weights1_address0 = weights1_address0_local;
assign weights1_address1 = weights1_address1_local;
assign weights1_ce0 = weights1_ce0_local;
assign weights1_ce1 = weights1_ce1_local;
assign weights1_d0 = weights1_d0_local;
assign weights1_d1 = weights1_d1_local;
assign weights1_we0 = weights1_we0_local;
assign weights1_we1 = weights1_we1_local;
assign zext_ln141_fu_218_p1 = select_ln121_fu_196_p3;
assign zext_ln142_1_fu_253_p1 = add_ln142_1_fu_243_p4;
assign zext_ln142_2_fu_286_p1 = add_ln142_2_fu_277_p5;
assign zext_ln142_3_fu_299_p1 = add_ln142_3_fu_291_p4;
assign zext_ln142_fu_228_p1 = add_ln142_fu_222_p2;
always @ (posedge ap_clk) begin
    weights1_addr_1_reg_406[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter3_reg[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter4_reg[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter5_reg[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter6_reg[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter7_reg[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter8_reg[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter9_reg[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter10_reg[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter11_reg[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter12_reg[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter13_reg[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter14_reg[0] <= 1'b1;
    weights1_addr_1_reg_406_pp0_iter15_reg[0] <= 1'b1;
    weights1_addr_2_reg_427[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter1_reg[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter2_reg[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter3_reg[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter4_reg[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter5_reg[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter6_reg[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter7_reg[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter8_reg[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter9_reg[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter10_reg[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter11_reg[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter12_reg[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter13_reg[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter14_reg[1] <= 1'b1;
    weights1_addr_2_reg_427_pp0_iter15_reg[1] <= 1'b1;
    weights1_addr_3_reg_432[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter1_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter2_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter3_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter4_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter5_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter6_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter7_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter8_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter9_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter10_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter11_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter12_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter13_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter14_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter15_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_432_pp0_iter16_reg[1:0] <= 2'b11;
end
endmodule 
