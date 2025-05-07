module backprop_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0,weights1_ce0,weights1_we0,weights1_d0,weights1_q0,weights1_address1,weights1_ce1,weights1_we1,weights1_d1,weights1_q1,norm_1,grp_fu_381_p_din0,grp_fu_381_p_din1,grp_fu_381_p_dout0,grp_fu_381_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
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
output  [63:0] grp_fu_381_p_din0;
output  [63:0] grp_fu_381_p_din1;
input  [63:0] grp_fu_381_p_dout0;
output   grp_fu_381_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln140_reg_541;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_177;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_181;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_186;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln140_fu_208_p2;
reg   [0:0] icmp_ln140_reg_541_pp0_iter1_reg;
reg   [0:0] icmp_ln140_reg_541_pp0_iter2_reg;
reg   [0:0] icmp_ln140_reg_541_pp0_iter3_reg;
reg   [0:0] icmp_ln140_reg_541_pp0_iter4_reg;
reg   [0:0] icmp_ln140_reg_541_pp0_iter5_reg;
reg   [0:0] icmp_ln140_reg_541_pp0_iter6_reg;
reg   [0:0] icmp_ln140_reg_541_pp0_iter7_reg;
reg   [3:0] i_2_load_reg_545;
wire   [3:0] add_ln140_1_fu_223_p2;
reg   [3:0] add_ln140_1_reg_550;
wire   [6:0] select_ln121_fu_245_p3;
reg   [6:0] select_ln121_reg_555;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [3:0] select_ln140_fu_253_p3;
reg   [3:0] select_ln140_reg_560;
reg   [9:0] weights1_addr_reg_570;
reg   [9:0] weights1_addr_reg_570_pp0_iter1_reg;
reg   [9:0] weights1_addr_reg_570_pp0_iter2_reg;
reg   [9:0] weights1_addr_reg_570_pp0_iter3_reg;
reg   [9:0] weights1_addr_reg_570_pp0_iter4_reg;
reg   [9:0] weights1_addr_reg_570_pp0_iter5_reg;
reg   [9:0] weights1_addr_reg_570_pp0_iter6_reg;
reg   [9:0] weights1_addr_reg_570_pp0_iter7_reg;
reg   [9:0] weights1_addr_1_reg_575;
reg   [9:0] weights1_addr_1_reg_575_pp0_iter1_reg;
reg   [9:0] weights1_addr_1_reg_575_pp0_iter2_reg;
reg   [9:0] weights1_addr_1_reg_575_pp0_iter3_reg;
reg   [9:0] weights1_addr_1_reg_575_pp0_iter4_reg;
reg   [9:0] weights1_addr_1_reg_575_pp0_iter5_reg;
reg   [9:0] weights1_addr_1_reg_575_pp0_iter6_reg;
reg   [9:0] weights1_addr_1_reg_575_pp0_iter7_reg;
reg   [3:0] tmp_22_reg_581;
wire   [0:0] trunc_ln142_fu_317_p1;
reg   [0:0] trunc_ln142_reg_587;
reg   [2:0] tmp_23_reg_593;
wire   [1:0] trunc_ln142_1_fu_331_p1;
reg   [1:0] trunc_ln142_1_reg_601;
reg   [0:0] tmp_7_reg_606;
reg   [9:0] weights1_addr_2_reg_611;
reg   [9:0] weights1_addr_2_reg_611_pp0_iter1_reg;
reg   [9:0] weights1_addr_2_reg_611_pp0_iter2_reg;
reg   [9:0] weights1_addr_2_reg_611_pp0_iter3_reg;
reg   [9:0] weights1_addr_2_reg_611_pp0_iter4_reg;
reg   [9:0] weights1_addr_2_reg_611_pp0_iter5_reg;
reg   [9:0] weights1_addr_2_reg_611_pp0_iter6_reg;
reg   [9:0] weights1_addr_2_reg_611_pp0_iter7_reg;
reg   [9:0] weights1_addr_3_reg_616;
reg   [9:0] weights1_addr_3_reg_616_pp0_iter1_reg;
reg   [9:0] weights1_addr_3_reg_616_pp0_iter2_reg;
reg   [9:0] weights1_addr_3_reg_616_pp0_iter3_reg;
reg   [9:0] weights1_addr_3_reg_616_pp0_iter4_reg;
reg   [9:0] weights1_addr_3_reg_616_pp0_iter5_reg;
reg   [9:0] weights1_addr_3_reg_616_pp0_iter6_reg;
reg   [9:0] weights1_addr_3_reg_616_pp0_iter7_reg;
reg   [9:0] weights1_addr_3_reg_616_pp0_iter8_reg;
wire   [63:0] bitcast_ln142_fu_375_p1;
reg   [63:0] weights1_load_3_reg_627;
reg   [9:0] weights1_addr_4_reg_632;
reg   [9:0] weights1_addr_4_reg_632_pp0_iter1_reg;
reg   [9:0] weights1_addr_4_reg_632_pp0_iter2_reg;
reg   [9:0] weights1_addr_4_reg_632_pp0_iter3_reg;
reg   [9:0] weights1_addr_4_reg_632_pp0_iter4_reg;
reg   [9:0] weights1_addr_4_reg_632_pp0_iter5_reg;
reg   [9:0] weights1_addr_4_reg_632_pp0_iter6_reg;
reg   [9:0] weights1_addr_4_reg_632_pp0_iter7_reg;
reg   [9:0] weights1_addr_4_reg_632_pp0_iter8_reg;
reg   [9:0] weights1_addr_5_reg_638;
reg   [9:0] weights1_addr_5_reg_638_pp0_iter1_reg;
reg   [9:0] weights1_addr_5_reg_638_pp0_iter2_reg;
reg   [9:0] weights1_addr_5_reg_638_pp0_iter3_reg;
reg   [9:0] weights1_addr_5_reg_638_pp0_iter4_reg;
reg   [9:0] weights1_addr_5_reg_638_pp0_iter5_reg;
reg   [9:0] weights1_addr_5_reg_638_pp0_iter6_reg;
reg   [9:0] weights1_addr_5_reg_638_pp0_iter7_reg;
reg   [9:0] weights1_addr_5_reg_638_pp0_iter8_reg;
wire   [63:0] bitcast_ln142_2_fu_410_p1;
reg   [63:0] weights1_load_5_reg_648;
reg   [9:0] weights1_addr_6_reg_653;
reg   [9:0] weights1_addr_6_reg_653_pp0_iter1_reg;
reg   [9:0] weights1_addr_6_reg_653_pp0_iter2_reg;
reg   [9:0] weights1_addr_6_reg_653_pp0_iter3_reg;
reg   [9:0] weights1_addr_6_reg_653_pp0_iter4_reg;
reg   [9:0] weights1_addr_6_reg_653_pp0_iter5_reg;
reg   [9:0] weights1_addr_6_reg_653_pp0_iter6_reg;
reg   [9:0] weights1_addr_6_reg_653_pp0_iter7_reg;
reg   [9:0] weights1_addr_6_reg_653_pp0_iter8_reg;
reg   [9:0] weights1_addr_7_reg_659;
reg   [9:0] weights1_addr_7_reg_659_pp0_iter1_reg;
reg   [9:0] weights1_addr_7_reg_659_pp0_iter2_reg;
reg   [9:0] weights1_addr_7_reg_659_pp0_iter3_reg;
reg   [9:0] weights1_addr_7_reg_659_pp0_iter4_reg;
reg   [9:0] weights1_addr_7_reg_659_pp0_iter5_reg;
reg   [9:0] weights1_addr_7_reg_659_pp0_iter6_reg;
reg   [9:0] weights1_addr_7_reg_659_pp0_iter7_reg;
reg   [9:0] weights1_addr_7_reg_659_pp0_iter8_reg;
wire   [63:0] bitcast_ln142_4_fu_442_p1;
reg   [63:0] weights1_load_7_reg_669;
wire   [63:0] bitcast_ln142_6_fu_447_p1;
wire   [63:0] bitcast_ln142_8_fu_451_p1;
wire   [63:0] bitcast_ln142_10_fu_456_p1;
wire   [63:0] bitcast_ln142_12_fu_470_p1;
wire   [63:0] bitcast_ln142_14_fu_475_p1;
reg   [63:0] div_4_reg_699;
reg   [63:0] div_5_reg_704;
reg   [63:0] div_6_reg_709;
reg   [63:0] div_7_reg_714;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln142_fu_277_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln142_1_fu_302_p1;
wire   [63:0] zext_ln142_2_fu_357_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln142_3_fu_370_p1;
wire   [63:0] zext_ln142_4_fu_389_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln142_5_fu_405_p1;
wire   [63:0] zext_ln142_6_fu_424_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln142_7_fu_437_p1;
reg   [6:0] j_fu_82;
wire   [6:0] add_ln141_fu_460_p2;
wire    ap_loop_init;
reg   [3:0] i_2_fu_86;
reg   [3:0] ap_sig_allocacmp_i_2_load;
wire    ap_block_pp0_stage0;
reg   [6:0] indvar_flatten6_fu_90;
wire   [6:0] add_ln140_fu_214_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    weights1_ce1_local;
reg   [9:0] weights1_address1_local;
reg    weights1_ce0_local;
reg   [9:0] weights1_address0_local;
reg    weights1_we1_local;
reg   [63:0] weights1_d1_local;
wire   [63:0] bitcast_ln142_1_fu_479_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln142_3_fu_484_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln142_5_fu_489_p1;
wire   [63:0] bitcast_ln142_7_fu_494_p1;
wire    ap_block_pp0_stage5;
reg    weights1_we0_local;
reg   [63:0] weights1_d0_local;
wire   [63:0] bitcast_ln142_9_fu_499_p1;
wire   [63:0] bitcast_ln142_11_fu_503_p1;
wire   [63:0] bitcast_ln142_13_fu_507_p1;
wire   [63:0] bitcast_ln142_15_fu_511_p1;
reg   [63:0] grp_fu_173_p0;
wire   [0:0] tmp_fu_237_p3;
wire   [9:0] zext_ln141_fu_267_p1;
wire   [9:0] tmp_s_fu_259_p3;
wire   [9:0] add_ln142_fu_271_p2;
wire   [4:0] tmp_21_fu_282_p4;
wire   [9:0] add_ln142_1_fu_292_p4;
wire   [9:0] add_ln142_2_fu_348_p5;
wire   [9:0] add_ln142_3_fu_362_p4;
wire   [9:0] add_ln142_4_fu_380_p5;
wire   [9:0] add_ln142_5_fu_394_p6;
wire   [9:0] add_ln142_6_fu_415_p5;
wire   [9:0] add_ln142_7_fu_429_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter8_stage0;
reg    ap_idle_pp0_0to7;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to9;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_82 = 7'd0;
#0 i_2_fu_86 = 4'd0;
#0 indvar_flatten6_fu_90 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter9 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_86 <= 4'd0;
    end else if (((icmp_ln140_reg_541 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_fu_86 <= select_ln140_fu_253_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln140_fu_208_p2 == 1'd0))) begin
            indvar_flatten6_fu_90 <= add_ln140_fu_214_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_90 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_82 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_82 <= add_ln141_fu_460_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_181 <= weights1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_181 <= weights1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln140_1_reg_550 <= add_ln140_1_fu_223_p2;
        i_2_load_reg_545 <= ap_sig_allocacmp_i_2_load;
        icmp_ln140_reg_541 <= icmp_ln140_fu_208_p2;
        icmp_ln140_reg_541_pp0_iter1_reg <= icmp_ln140_reg_541;
        icmp_ln140_reg_541_pp0_iter2_reg <= icmp_ln140_reg_541_pp0_iter1_reg;
        icmp_ln140_reg_541_pp0_iter3_reg <= icmp_ln140_reg_541_pp0_iter2_reg;
        icmp_ln140_reg_541_pp0_iter4_reg <= icmp_ln140_reg_541_pp0_iter3_reg;
        icmp_ln140_reg_541_pp0_iter5_reg <= icmp_ln140_reg_541_pp0_iter4_reg;
        icmp_ln140_reg_541_pp0_iter6_reg <= icmp_ln140_reg_541_pp0_iter5_reg;
        icmp_ln140_reg_541_pp0_iter7_reg <= icmp_ln140_reg_541_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        div_4_reg_699 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div_5_reg_704 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div_6_reg_709 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div_7_reg_714 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_177 <= weights1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_186 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln121_reg_555 <= select_ln121_fu_245_p3;
        select_ln140_reg_560 <= select_ln140_fu_253_p3;
        tmp_22_reg_581 <= {{select_ln121_fu_245_p3[5:2]}};
        tmp_23_reg_593 <= {{select_ln121_fu_245_p3[5:3]}};
        tmp_7_reg_606 <= select_ln121_fu_245_p3[32'd1];
        trunc_ln142_1_reg_601 <= trunc_ln142_1_fu_331_p1;
        trunc_ln142_reg_587 <= trunc_ln142_fu_317_p1;
        weights1_addr_1_reg_575[9 : 1] <= zext_ln142_1_fu_302_p1[9 : 1];
        weights1_addr_1_reg_575_pp0_iter1_reg[9 : 1] <= weights1_addr_1_reg_575[9 : 1];
        weights1_addr_1_reg_575_pp0_iter2_reg[9 : 1] <= weights1_addr_1_reg_575_pp0_iter1_reg[9 : 1];
        weights1_addr_1_reg_575_pp0_iter3_reg[9 : 1] <= weights1_addr_1_reg_575_pp0_iter2_reg[9 : 1];
        weights1_addr_1_reg_575_pp0_iter4_reg[9 : 1] <= weights1_addr_1_reg_575_pp0_iter3_reg[9 : 1];
        weights1_addr_1_reg_575_pp0_iter5_reg[9 : 1] <= weights1_addr_1_reg_575_pp0_iter4_reg[9 : 1];
        weights1_addr_1_reg_575_pp0_iter6_reg[9 : 1] <= weights1_addr_1_reg_575_pp0_iter5_reg[9 : 1];
        weights1_addr_1_reg_575_pp0_iter7_reg[9 : 1] <= weights1_addr_1_reg_575_pp0_iter6_reg[9 : 1];
        weights1_addr_reg_570 <= zext_ln142_fu_277_p1;
        weights1_addr_reg_570_pp0_iter1_reg <= weights1_addr_reg_570;
        weights1_addr_reg_570_pp0_iter2_reg <= weights1_addr_reg_570_pp0_iter1_reg;
        weights1_addr_reg_570_pp0_iter3_reg <= weights1_addr_reg_570_pp0_iter2_reg;
        weights1_addr_reg_570_pp0_iter4_reg <= weights1_addr_reg_570_pp0_iter3_reg;
        weights1_addr_reg_570_pp0_iter5_reg <= weights1_addr_reg_570_pp0_iter4_reg;
        weights1_addr_reg_570_pp0_iter6_reg <= weights1_addr_reg_570_pp0_iter5_reg;
        weights1_addr_reg_570_pp0_iter7_reg <= weights1_addr_reg_570_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_addr_2_reg_611[0] <= zext_ln142_2_fu_357_p1[0];
weights1_addr_2_reg_611[9 : 2] <= zext_ln142_2_fu_357_p1[9 : 2];
        weights1_addr_2_reg_611_pp0_iter1_reg[0] <= weights1_addr_2_reg_611[0];
weights1_addr_2_reg_611_pp0_iter1_reg[9 : 2] <= weights1_addr_2_reg_611[9 : 2];
        weights1_addr_2_reg_611_pp0_iter2_reg[0] <= weights1_addr_2_reg_611_pp0_iter1_reg[0];
weights1_addr_2_reg_611_pp0_iter2_reg[9 : 2] <= weights1_addr_2_reg_611_pp0_iter1_reg[9 : 2];
        weights1_addr_2_reg_611_pp0_iter3_reg[0] <= weights1_addr_2_reg_611_pp0_iter2_reg[0];
weights1_addr_2_reg_611_pp0_iter3_reg[9 : 2] <= weights1_addr_2_reg_611_pp0_iter2_reg[9 : 2];
        weights1_addr_2_reg_611_pp0_iter4_reg[0] <= weights1_addr_2_reg_611_pp0_iter3_reg[0];
weights1_addr_2_reg_611_pp0_iter4_reg[9 : 2] <= weights1_addr_2_reg_611_pp0_iter3_reg[9 : 2];
        weights1_addr_2_reg_611_pp0_iter5_reg[0] <= weights1_addr_2_reg_611_pp0_iter4_reg[0];
weights1_addr_2_reg_611_pp0_iter5_reg[9 : 2] <= weights1_addr_2_reg_611_pp0_iter4_reg[9 : 2];
        weights1_addr_2_reg_611_pp0_iter6_reg[0] <= weights1_addr_2_reg_611_pp0_iter5_reg[0];
weights1_addr_2_reg_611_pp0_iter6_reg[9 : 2] <= weights1_addr_2_reg_611_pp0_iter5_reg[9 : 2];
        weights1_addr_2_reg_611_pp0_iter7_reg[0] <= weights1_addr_2_reg_611_pp0_iter6_reg[0];
weights1_addr_2_reg_611_pp0_iter7_reg[9 : 2] <= weights1_addr_2_reg_611_pp0_iter6_reg[9 : 2];
        weights1_addr_3_reg_616[9 : 2] <= zext_ln142_3_fu_370_p1[9 : 2];
        weights1_addr_3_reg_616_pp0_iter1_reg[9 : 2] <= weights1_addr_3_reg_616[9 : 2];
        weights1_addr_3_reg_616_pp0_iter2_reg[9 : 2] <= weights1_addr_3_reg_616_pp0_iter1_reg[9 : 2];
        weights1_addr_3_reg_616_pp0_iter3_reg[9 : 2] <= weights1_addr_3_reg_616_pp0_iter2_reg[9 : 2];
        weights1_addr_3_reg_616_pp0_iter4_reg[9 : 2] <= weights1_addr_3_reg_616_pp0_iter3_reg[9 : 2];
        weights1_addr_3_reg_616_pp0_iter5_reg[9 : 2] <= weights1_addr_3_reg_616_pp0_iter4_reg[9 : 2];
        weights1_addr_3_reg_616_pp0_iter6_reg[9 : 2] <= weights1_addr_3_reg_616_pp0_iter5_reg[9 : 2];
        weights1_addr_3_reg_616_pp0_iter7_reg[9 : 2] <= weights1_addr_3_reg_616_pp0_iter6_reg[9 : 2];
        weights1_addr_3_reg_616_pp0_iter8_reg[9 : 2] <= weights1_addr_3_reg_616_pp0_iter7_reg[9 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_addr_4_reg_632[1 : 0] <= zext_ln142_4_fu_389_p1[1 : 0];
weights1_addr_4_reg_632[9 : 3] <= zext_ln142_4_fu_389_p1[9 : 3];
        weights1_addr_4_reg_632_pp0_iter1_reg[1 : 0] <= weights1_addr_4_reg_632[1 : 0];
weights1_addr_4_reg_632_pp0_iter1_reg[9 : 3] <= weights1_addr_4_reg_632[9 : 3];
        weights1_addr_4_reg_632_pp0_iter2_reg[1 : 0] <= weights1_addr_4_reg_632_pp0_iter1_reg[1 : 0];
weights1_addr_4_reg_632_pp0_iter2_reg[9 : 3] <= weights1_addr_4_reg_632_pp0_iter1_reg[9 : 3];
        weights1_addr_4_reg_632_pp0_iter3_reg[1 : 0] <= weights1_addr_4_reg_632_pp0_iter2_reg[1 : 0];
weights1_addr_4_reg_632_pp0_iter3_reg[9 : 3] <= weights1_addr_4_reg_632_pp0_iter2_reg[9 : 3];
        weights1_addr_4_reg_632_pp0_iter4_reg[1 : 0] <= weights1_addr_4_reg_632_pp0_iter3_reg[1 : 0];
weights1_addr_4_reg_632_pp0_iter4_reg[9 : 3] <= weights1_addr_4_reg_632_pp0_iter3_reg[9 : 3];
        weights1_addr_4_reg_632_pp0_iter5_reg[1 : 0] <= weights1_addr_4_reg_632_pp0_iter4_reg[1 : 0];
weights1_addr_4_reg_632_pp0_iter5_reg[9 : 3] <= weights1_addr_4_reg_632_pp0_iter4_reg[9 : 3];
        weights1_addr_4_reg_632_pp0_iter6_reg[1 : 0] <= weights1_addr_4_reg_632_pp0_iter5_reg[1 : 0];
weights1_addr_4_reg_632_pp0_iter6_reg[9 : 3] <= weights1_addr_4_reg_632_pp0_iter5_reg[9 : 3];
        weights1_addr_4_reg_632_pp0_iter7_reg[1 : 0] <= weights1_addr_4_reg_632_pp0_iter6_reg[1 : 0];
weights1_addr_4_reg_632_pp0_iter7_reg[9 : 3] <= weights1_addr_4_reg_632_pp0_iter6_reg[9 : 3];
        weights1_addr_4_reg_632_pp0_iter8_reg[1 : 0] <= weights1_addr_4_reg_632_pp0_iter7_reg[1 : 0];
weights1_addr_4_reg_632_pp0_iter8_reg[9 : 3] <= weights1_addr_4_reg_632_pp0_iter7_reg[9 : 3];
        weights1_addr_5_reg_638[1] <= zext_ln142_5_fu_405_p1[1];
weights1_addr_5_reg_638[9 : 3] <= zext_ln142_5_fu_405_p1[9 : 3];
        weights1_addr_5_reg_638_pp0_iter1_reg[1] <= weights1_addr_5_reg_638[1];
weights1_addr_5_reg_638_pp0_iter1_reg[9 : 3] <= weights1_addr_5_reg_638[9 : 3];
        weights1_addr_5_reg_638_pp0_iter2_reg[1] <= weights1_addr_5_reg_638_pp0_iter1_reg[1];
weights1_addr_5_reg_638_pp0_iter2_reg[9 : 3] <= weights1_addr_5_reg_638_pp0_iter1_reg[9 : 3];
        weights1_addr_5_reg_638_pp0_iter3_reg[1] <= weights1_addr_5_reg_638_pp0_iter2_reg[1];
weights1_addr_5_reg_638_pp0_iter3_reg[9 : 3] <= weights1_addr_5_reg_638_pp0_iter2_reg[9 : 3];
        weights1_addr_5_reg_638_pp0_iter4_reg[1] <= weights1_addr_5_reg_638_pp0_iter3_reg[1];
weights1_addr_5_reg_638_pp0_iter4_reg[9 : 3] <= weights1_addr_5_reg_638_pp0_iter3_reg[9 : 3];
        weights1_addr_5_reg_638_pp0_iter5_reg[1] <= weights1_addr_5_reg_638_pp0_iter4_reg[1];
weights1_addr_5_reg_638_pp0_iter5_reg[9 : 3] <= weights1_addr_5_reg_638_pp0_iter4_reg[9 : 3];
        weights1_addr_5_reg_638_pp0_iter6_reg[1] <= weights1_addr_5_reg_638_pp0_iter5_reg[1];
weights1_addr_5_reg_638_pp0_iter6_reg[9 : 3] <= weights1_addr_5_reg_638_pp0_iter5_reg[9 : 3];
        weights1_addr_5_reg_638_pp0_iter7_reg[1] <= weights1_addr_5_reg_638_pp0_iter6_reg[1];
weights1_addr_5_reg_638_pp0_iter7_reg[9 : 3] <= weights1_addr_5_reg_638_pp0_iter6_reg[9 : 3];
        weights1_addr_5_reg_638_pp0_iter8_reg[1] <= weights1_addr_5_reg_638_pp0_iter7_reg[1];
weights1_addr_5_reg_638_pp0_iter8_reg[9 : 3] <= weights1_addr_5_reg_638_pp0_iter7_reg[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_addr_6_reg_653[0] <= zext_ln142_6_fu_424_p1[0];
weights1_addr_6_reg_653[9 : 3] <= zext_ln142_6_fu_424_p1[9 : 3];
        weights1_addr_6_reg_653_pp0_iter1_reg[0] <= weights1_addr_6_reg_653[0];
weights1_addr_6_reg_653_pp0_iter1_reg[9 : 3] <= weights1_addr_6_reg_653[9 : 3];
        weights1_addr_6_reg_653_pp0_iter2_reg[0] <= weights1_addr_6_reg_653_pp0_iter1_reg[0];
weights1_addr_6_reg_653_pp0_iter2_reg[9 : 3] <= weights1_addr_6_reg_653_pp0_iter1_reg[9 : 3];
        weights1_addr_6_reg_653_pp0_iter3_reg[0] <= weights1_addr_6_reg_653_pp0_iter2_reg[0];
weights1_addr_6_reg_653_pp0_iter3_reg[9 : 3] <= weights1_addr_6_reg_653_pp0_iter2_reg[9 : 3];
        weights1_addr_6_reg_653_pp0_iter4_reg[0] <= weights1_addr_6_reg_653_pp0_iter3_reg[0];
weights1_addr_6_reg_653_pp0_iter4_reg[9 : 3] <= weights1_addr_6_reg_653_pp0_iter3_reg[9 : 3];
        weights1_addr_6_reg_653_pp0_iter5_reg[0] <= weights1_addr_6_reg_653_pp0_iter4_reg[0];
weights1_addr_6_reg_653_pp0_iter5_reg[9 : 3] <= weights1_addr_6_reg_653_pp0_iter4_reg[9 : 3];
        weights1_addr_6_reg_653_pp0_iter6_reg[0] <= weights1_addr_6_reg_653_pp0_iter5_reg[0];
weights1_addr_6_reg_653_pp0_iter6_reg[9 : 3] <= weights1_addr_6_reg_653_pp0_iter5_reg[9 : 3];
        weights1_addr_6_reg_653_pp0_iter7_reg[0] <= weights1_addr_6_reg_653_pp0_iter6_reg[0];
weights1_addr_6_reg_653_pp0_iter7_reg[9 : 3] <= weights1_addr_6_reg_653_pp0_iter6_reg[9 : 3];
        weights1_addr_6_reg_653_pp0_iter8_reg[0] <= weights1_addr_6_reg_653_pp0_iter7_reg[0];
weights1_addr_6_reg_653_pp0_iter8_reg[9 : 3] <= weights1_addr_6_reg_653_pp0_iter7_reg[9 : 3];
        weights1_addr_7_reg_659[9 : 3] <= zext_ln142_7_fu_437_p1[9 : 3];
        weights1_addr_7_reg_659_pp0_iter1_reg[9 : 3] <= weights1_addr_7_reg_659[9 : 3];
        weights1_addr_7_reg_659_pp0_iter2_reg[9 : 3] <= weights1_addr_7_reg_659_pp0_iter1_reg[9 : 3];
        weights1_addr_7_reg_659_pp0_iter3_reg[9 : 3] <= weights1_addr_7_reg_659_pp0_iter2_reg[9 : 3];
        weights1_addr_7_reg_659_pp0_iter4_reg[9 : 3] <= weights1_addr_7_reg_659_pp0_iter3_reg[9 : 3];
        weights1_addr_7_reg_659_pp0_iter5_reg[9 : 3] <= weights1_addr_7_reg_659_pp0_iter4_reg[9 : 3];
        weights1_addr_7_reg_659_pp0_iter6_reg[9 : 3] <= weights1_addr_7_reg_659_pp0_iter5_reg[9 : 3];
        weights1_addr_7_reg_659_pp0_iter7_reg[9 : 3] <= weights1_addr_7_reg_659_pp0_iter6_reg[9 : 3];
        weights1_addr_7_reg_659_pp0_iter8_reg[9 : 3] <= weights1_addr_7_reg_659_pp0_iter7_reg[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_load_3_reg_627 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_load_5_reg_648 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_load_7_reg_669 <= weights1_q0;
    end
end
always @ (*) begin
    if (((icmp_ln140_reg_541 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln140_reg_541_pp0_iter7_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter8_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter8_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to7 = 1'b1;
    end else begin
        ap_idle_pp0_0to7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to9 = 1'b1;
    end else begin
        ap_idle_pp0_1to9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_2_load = i_2_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten6_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_173_p0 = bitcast_ln142_14_fu_475_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_173_p0 = bitcast_ln142_12_fu_470_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_173_p0 = bitcast_ln142_10_fu_456_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_173_p0 = bitcast_ln142_8_fu_451_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_173_p0 = bitcast_ln142_6_fu_447_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_173_p0 = bitcast_ln142_4_fu_442_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_173_p0 = bitcast_ln142_2_fu_410_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_173_p0 = bitcast_ln142_fu_375_p1;
    end else begin
        grp_fu_173_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_address0_local = weights1_addr_7_reg_659_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_address0_local = weights1_addr_6_reg_653_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_address0_local = weights1_addr_5_reg_638_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_address0_local = weights1_addr_4_reg_632_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_address0_local = zext_ln142_7_fu_437_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_address0_local = zext_ln142_5_fu_405_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_address0_local = zext_ln142_3_fu_370_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_address0_local = zext_ln142_1_fu_302_p1;
    end else begin
        weights1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_address1_local = weights1_addr_3_reg_616_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_address1_local = weights1_addr_2_reg_611_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_address1_local = weights1_addr_1_reg_575_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_address1_local = weights1_addr_reg_570_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_address1_local = zext_ln142_6_fu_424_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_address1_local = zext_ln142_4_fu_389_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_address1_local = zext_ln142_2_fu_357_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_address1_local = zext_ln142_fu_277_p1;
    end else begin
        weights1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_ce0_local = 1'b1;
    end else begin
        weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_ce1_local = 1'b1;
    end else begin
        weights1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_d0_local = bitcast_ln142_15_fu_511_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_d0_local = bitcast_ln142_13_fu_507_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_d0_local = bitcast_ln142_11_fu_503_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_d0_local = bitcast_ln142_9_fu_499_p1;
    end else begin
        weights1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_d1_local = bitcast_ln142_7_fu_494_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_d1_local = bitcast_ln142_5_fu_489_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_d1_local = bitcast_ln142_3_fu_484_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_d1_local = bitcast_ln142_1_fu_479_p1;
    end else begin
        weights1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        weights1_we0_local = 1'b1;
    end else begin
        weights1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        weights1_we1_local = 1'b1;
    end else begin
        weights1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to9 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln140_1_fu_223_p2 = (ap_sig_allocacmp_i_2_load + 4'd1);
assign add_ln140_fu_214_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 7'd1);
assign add_ln141_fu_460_p2 = (select_ln121_reg_555 + 7'd8);
assign add_ln142_1_fu_292_p4 = {{{select_ln140_fu_253_p3}, {tmp_21_fu_282_p4}}, {1'd1}};
assign add_ln142_2_fu_348_p5 = {{{{select_ln140_reg_560}, {tmp_22_reg_581}}, {1'd1}}, {trunc_ln142_reg_587}};
assign add_ln142_3_fu_362_p4 = {{{select_ln140_reg_560}, {tmp_22_reg_581}}, {2'd3}};
assign add_ln142_4_fu_380_p5 = {{{{select_ln140_reg_560}, {tmp_23_reg_593}}, {1'd1}}, {trunc_ln142_1_reg_601}};
assign add_ln142_5_fu_394_p6 = {{{{{select_ln140_reg_560}, {tmp_23_reg_593}}, {1'd1}}, {tmp_7_reg_606}}, {1'd1}};
assign add_ln142_6_fu_415_p5 = {{{{select_ln140_reg_560}, {tmp_23_reg_593}}, {2'd3}}, {trunc_ln142_reg_587}};
assign add_ln142_7_fu_429_p4 = {{{select_ln140_reg_560}, {tmp_23_reg_593}}, {3'd7}};
assign add_ln142_fu_271_p2 = (zext_ln141_fu_267_p1 + tmp_s_fu_259_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln142_10_fu_456_p1 = weights1_load_5_reg_648;
assign bitcast_ln142_11_fu_503_p1 = div_5_reg_704;
assign bitcast_ln142_12_fu_470_p1 = reg_177;
assign bitcast_ln142_13_fu_507_p1 = div_6_reg_709;
assign bitcast_ln142_14_fu_475_p1 = weights1_load_7_reg_669;
assign bitcast_ln142_15_fu_511_p1 = div_7_reg_714;
assign bitcast_ln142_1_fu_479_p1 = reg_186;
assign bitcast_ln142_2_fu_410_p1 = reg_181;
assign bitcast_ln142_3_fu_484_p1 = reg_186;
assign bitcast_ln142_4_fu_442_p1 = reg_177;
assign bitcast_ln142_5_fu_489_p1 = reg_186;
assign bitcast_ln142_6_fu_447_p1 = weights1_load_3_reg_627;
assign bitcast_ln142_7_fu_494_p1 = reg_186;
assign bitcast_ln142_8_fu_451_p1 = reg_181;
assign bitcast_ln142_9_fu_499_p1 = div_4_reg_699;
assign bitcast_ln142_fu_375_p1 = reg_177;
assign grp_fu_381_p_ce = 1'b1;
assign grp_fu_381_p_din0 = grp_fu_173_p0;
assign grp_fu_381_p_din1 = norm_1;
assign icmp_ln140_fu_208_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 7'd104) ? 1'b1 : 1'b0);
assign select_ln121_fu_245_p3 = ((tmp_fu_237_p3[0:0] == 1'b1) ? 7'd0 : j_fu_82);
assign select_ln140_fu_253_p3 = ((tmp_fu_237_p3[0:0] == 1'b1) ? add_ln140_1_reg_550 : i_2_load_reg_545);
assign tmp_21_fu_282_p4 = {{select_ln121_fu_245_p3[5:1]}};
assign tmp_fu_237_p3 = j_fu_82[32'd6];
assign tmp_s_fu_259_p3 = {{select_ln140_fu_253_p3}, {6'd0}};
assign trunc_ln142_1_fu_331_p1 = select_ln121_fu_245_p3[1:0];
assign trunc_ln142_fu_317_p1 = select_ln121_fu_245_p3[0:0];
assign weights1_address0 = weights1_address0_local;
assign weights1_address1 = weights1_address1_local;
assign weights1_ce0 = weights1_ce0_local;
assign weights1_ce1 = weights1_ce1_local;
assign weights1_d0 = weights1_d0_local;
assign weights1_d1 = weights1_d1_local;
assign weights1_we0 = weights1_we0_local;
assign weights1_we1 = weights1_we1_local;
assign zext_ln141_fu_267_p1 = select_ln121_fu_245_p3;
assign zext_ln142_1_fu_302_p1 = add_ln142_1_fu_292_p4;
assign zext_ln142_2_fu_357_p1 = add_ln142_2_fu_348_p5;
assign zext_ln142_3_fu_370_p1 = add_ln142_3_fu_362_p4;
assign zext_ln142_4_fu_389_p1 = add_ln142_4_fu_380_p5;
assign zext_ln142_5_fu_405_p1 = add_ln142_5_fu_394_p6;
assign zext_ln142_6_fu_424_p1 = add_ln142_6_fu_415_p5;
assign zext_ln142_7_fu_437_p1 = add_ln142_7_fu_429_p4;
assign zext_ln142_fu_277_p1 = add_ln142_fu_271_p2;
always @ (posedge ap_clk) begin
    weights1_addr_1_reg_575[0] <= 1'b1;
    weights1_addr_1_reg_575_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_1_reg_575_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_1_reg_575_pp0_iter3_reg[0] <= 1'b1;
    weights1_addr_1_reg_575_pp0_iter4_reg[0] <= 1'b1;
    weights1_addr_1_reg_575_pp0_iter5_reg[0] <= 1'b1;
    weights1_addr_1_reg_575_pp0_iter6_reg[0] <= 1'b1;
    weights1_addr_1_reg_575_pp0_iter7_reg[0] <= 1'b1;
    weights1_addr_2_reg_611[1] <= 1'b1;
    weights1_addr_2_reg_611_pp0_iter1_reg[1] <= 1'b1;
    weights1_addr_2_reg_611_pp0_iter2_reg[1] <= 1'b1;
    weights1_addr_2_reg_611_pp0_iter3_reg[1] <= 1'b1;
    weights1_addr_2_reg_611_pp0_iter4_reg[1] <= 1'b1;
    weights1_addr_2_reg_611_pp0_iter5_reg[1] <= 1'b1;
    weights1_addr_2_reg_611_pp0_iter6_reg[1] <= 1'b1;
    weights1_addr_2_reg_611_pp0_iter7_reg[1] <= 1'b1;
    weights1_addr_3_reg_616[1:0] <= 2'b11;
    weights1_addr_3_reg_616_pp0_iter1_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_616_pp0_iter2_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_616_pp0_iter3_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_616_pp0_iter4_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_616_pp0_iter5_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_616_pp0_iter6_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_616_pp0_iter7_reg[1:0] <= 2'b11;
    weights1_addr_3_reg_616_pp0_iter8_reg[1:0] <= 2'b11;
    weights1_addr_4_reg_632[2] <= 1'b1;
    weights1_addr_4_reg_632_pp0_iter1_reg[2] <= 1'b1;
    weights1_addr_4_reg_632_pp0_iter2_reg[2] <= 1'b1;
    weights1_addr_4_reg_632_pp0_iter3_reg[2] <= 1'b1;
    weights1_addr_4_reg_632_pp0_iter4_reg[2] <= 1'b1;
    weights1_addr_4_reg_632_pp0_iter5_reg[2] <= 1'b1;
    weights1_addr_4_reg_632_pp0_iter6_reg[2] <= 1'b1;
    weights1_addr_4_reg_632_pp0_iter7_reg[2] <= 1'b1;
    weights1_addr_4_reg_632_pp0_iter8_reg[2] <= 1'b1;
    weights1_addr_5_reg_638[0] <= 1'b1;
    weights1_addr_5_reg_638[2] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter1_reg[2] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter2_reg[2] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter3_reg[0] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter3_reg[2] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter4_reg[0] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter4_reg[2] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter5_reg[0] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter5_reg[2] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter6_reg[0] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter6_reg[2] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter7_reg[0] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter7_reg[2] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter8_reg[0] <= 1'b1;
    weights1_addr_5_reg_638_pp0_iter8_reg[2] <= 1'b1;
    weights1_addr_6_reg_653[2:1] <= 2'b11;
    weights1_addr_6_reg_653_pp0_iter1_reg[2:1] <= 2'b11;
    weights1_addr_6_reg_653_pp0_iter2_reg[2:1] <= 2'b11;
    weights1_addr_6_reg_653_pp0_iter3_reg[2:1] <= 2'b11;
    weights1_addr_6_reg_653_pp0_iter4_reg[2:1] <= 2'b11;
    weights1_addr_6_reg_653_pp0_iter5_reg[2:1] <= 2'b11;
    weights1_addr_6_reg_653_pp0_iter6_reg[2:1] <= 2'b11;
    weights1_addr_6_reg_653_pp0_iter7_reg[2:1] <= 2'b11;
    weights1_addr_6_reg_653_pp0_iter8_reg[2:1] <= 2'b11;
    weights1_addr_7_reg_659[2:0] <= 3'b111;
    weights1_addr_7_reg_659_pp0_iter1_reg[2:0] <= 3'b111;
    weights1_addr_7_reg_659_pp0_iter2_reg[2:0] <= 3'b111;
    weights1_addr_7_reg_659_pp0_iter3_reg[2:0] <= 3'b111;
    weights1_addr_7_reg_659_pp0_iter4_reg[2:0] <= 3'b111;
    weights1_addr_7_reg_659_pp0_iter5_reg[2:0] <= 3'b111;
    weights1_addr_7_reg_659_pp0_iter6_reg[2:0] <= 3'b111;
    weights1_addr_7_reg_659_pp0_iter7_reg[2:0] <= 3'b111;
    weights1_addr_7_reg_659_pp0_iter8_reg[2:0] <= 3'b111;
end
endmodule 