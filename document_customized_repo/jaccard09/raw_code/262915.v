module backprop_backprop_Pipeline_label_18 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v14_5_reload,v14_3_reload,empty,v7_address0,v7_ce0,v7_q0,v7_address1,v7_ce1,v7_q1,v15_5_reload,v15_3_reload,v101,mul_ln179,v10_address0,v10_ce0,v10_we0,v10_d0,v10_address1,v10_ce1,v10_we1,v10_d1,v14_10_reload,v15_10_reload,grp_fu_2879_p_din0,grp_fu_2879_p_din1,grp_fu_2879_p_opcode,grp_fu_2879_p_dout0,grp_fu_2879_p_ce,grp_fu_2883_p_din0,grp_fu_2883_p_din1,grp_fu_2883_p_opcode,grp_fu_2883_p_dout0,grp_fu_2883_p_ce,grp_fu_2891_p_din0,grp_fu_2891_p_din1,grp_fu_2891_p_dout0,grp_fu_2891_p_ce,grp_fu_2895_p_din0,grp_fu_2895_p_din1,grp_fu_2895_p_dout0,grp_fu_2895_p_ce,grp_fu_2899_p_din0,grp_fu_2899_p_din1,grp_fu_2899_p_dout0,grp_fu_2899_p_ce,grp_fu_6977_p_din0,grp_fu_6977_p_din1,grp_fu_6977_p_dout0,grp_fu_6977_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] v14_5_reload;
input  [63:0] v14_3_reload;
input  [8:0] empty;
output  [8:0] v7_address0;
output   v7_ce0;
input  [63:0] v7_q0;
output  [8:0] v7_address1;
output   v7_ce1;
input  [63:0] v7_q1;
input  [63:0] v15_5_reload;
input  [63:0] v15_3_reload;
input  [63:0] v101;
input  [7:0] mul_ln179;
output  [7:0] v10_address0;
output   v10_ce0;
output   v10_we0;
output  [63:0] v10_d0;
output  [7:0] v10_address1;
output   v10_ce1;
output   v10_we1;
output  [63:0] v10_d1;
input  [63:0] v14_10_reload;
input  [63:0] v15_10_reload;
output  [63:0] grp_fu_2879_p_din0;
output  [63:0] grp_fu_2879_p_din1;
output  [0:0] grp_fu_2879_p_opcode;
input  [63:0] grp_fu_2879_p_dout0;
output   grp_fu_2879_p_ce;
output  [63:0] grp_fu_2883_p_din0;
output  [63:0] grp_fu_2883_p_din1;
output  [0:0] grp_fu_2883_p_opcode;
input  [63:0] grp_fu_2883_p_dout0;
output   grp_fu_2883_p_ce;
output  [63:0] grp_fu_2891_p_din0;
output  [63:0] grp_fu_2891_p_din1;
input  [63:0] grp_fu_2891_p_dout0;
output   grp_fu_2891_p_ce;
output  [63:0] grp_fu_2895_p_din0;
output  [63:0] grp_fu_2895_p_din1;
input  [63:0] grp_fu_2895_p_dout0;
output   grp_fu_2895_p_ce;
output  [63:0] grp_fu_2899_p_din0;
output  [63:0] grp_fu_2899_p_din1;
input  [63:0] grp_fu_2899_p_dout0;
output   grp_fu_2899_p_ce;
output  [63:0] grp_fu_6977_p_din0;
output  [63:0] grp_fu_6977_p_din1;
input  [63:0] grp_fu_6977_p_dout0;
output   grp_fu_6977_p_ce;
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
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_enable_reg_pp0_iter24;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln179_fu_245_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] v102_1_reg_462;
reg   [1:0] v102_1_reg_462_pp0_iter1_reg;
reg   [1:0] v102_1_reg_462_pp0_iter2_reg;
reg   [1:0] v102_1_reg_462_pp0_iter3_reg;
reg   [1:0] v102_1_reg_462_pp0_iter4_reg;
reg   [1:0] v102_1_reg_462_pp0_iter5_reg;
reg   [1:0] v102_1_reg_462_pp0_iter6_reg;
reg   [1:0] v102_1_reg_462_pp0_iter7_reg;
reg   [1:0] v102_1_reg_462_pp0_iter8_reg;
reg   [1:0] v102_1_reg_462_pp0_iter9_reg;
reg   [1:0] v102_1_reg_462_pp0_iter10_reg;
reg   [1:0] v102_1_reg_462_pp0_iter11_reg;
reg   [1:0] v102_1_reg_462_pp0_iter12_reg;
reg   [1:0] v102_1_reg_462_pp0_iter13_reg;
reg   [1:0] v102_1_reg_462_pp0_iter14_reg;
reg   [1:0] v102_1_reg_462_pp0_iter15_reg;
reg   [1:0] v102_1_reg_462_pp0_iter16_reg;
reg   [1:0] v102_1_reg_462_pp0_iter17_reg;
reg   [1:0] v102_1_reg_462_pp0_iter18_reg;
reg   [1:0] v102_1_reg_462_pp0_iter19_reg;
reg   [1:0] v102_1_reg_462_pp0_iter20_reg;
reg   [1:0] v102_1_reg_462_pp0_iter21_reg;
reg   [1:0] v102_1_reg_462_pp0_iter22_reg;
reg   [1:0] v102_1_reg_462_pp0_iter23_reg;
wire   [1:0] or_ln4_fu_237_p3;
reg   [1:0] or_ln4_reg_473;
reg   [1:0] or_ln4_reg_473_pp0_iter1_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter2_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter3_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter4_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter5_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter6_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter7_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter8_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter9_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter10_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter11_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter12_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter13_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter14_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter15_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter16_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter17_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter18_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter19_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter20_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter21_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter22_reg;
reg   [1:0] or_ln4_reg_473_pp0_iter23_reg;
reg   [0:0] icmp_ln179_reg_478;
reg   [0:0] icmp_ln179_reg_478_pp0_iter1_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter2_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter3_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter4_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter5_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter6_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter7_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter8_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter9_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter10_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter11_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter12_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter13_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter14_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter15_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter16_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter17_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter18_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter19_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter20_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter21_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter22_reg;
reg   [0:0] icmp_ln179_reg_478_pp0_iter23_reg;
wire   [0:0] icmp_ln180_fu_297_p2;
reg   [0:0] icmp_ln180_reg_487;
reg   [0:0] icmp_ln180_reg_487_pp0_iter2_reg;
reg   [0:0] icmp_ln180_reg_487_pp0_iter3_reg;
reg   [0:0] icmp_ln180_reg_487_pp0_iter4_reg;
reg   [0:0] icmp_ln180_reg_487_pp0_iter5_reg;
reg   [0:0] icmp_ln180_reg_487_pp0_iter6_reg;
reg   [0:0] icmp_ln180_reg_487_pp0_iter7_reg;
reg   [0:0] icmp_ln180_reg_487_pp0_iter8_reg;
reg   [63:0] v7_load_reg_493;
reg   [63:0] v7_load_1_reg_498;
wire   [63:0] v103_fu_302_p3;
wire   [63:0] v104_fu_308_p1;
wire   [63:0] v104_1_fu_312_p1;
wire   [0:0] xor_ln183_2_fu_328_p2;
reg   [0:0] xor_ln183_2_reg_518;
wire   [62:0] trunc_ln183_fu_334_p1;
reg   [62:0] trunc_ln183_reg_523;
wire   [63:0] v107_fu_338_p3;
reg   [63:0] v107_reg_528;
wire   [0:0] xor_ln183_fu_355_p2;
reg   [0:0] xor_ln183_reg_533;
wire   [62:0] trunc_ln183_1_fu_361_p1;
reg   [62:0] trunc_ln183_1_reg_538;
wire   [63:0] v106_fu_371_p1;
wire   [63:0] v106_1_fu_382_p1;
reg   [63:0] v108_reg_553;
reg   [63:0] v108_1_reg_558;
reg   [63:0] v109_reg_563;
reg   [63:0] v109_1_reg_568;
wire   [63:0] zext_ln181_fu_224_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln181_1_fu_261_p1;
wire   [63:0] zext_ln187_fu_395_p1;
wire   [63:0] zext_ln187_1_fu_408_p1;
reg   [1:0] v102_fu_74;
wire   [1:0] xor_ln7_fu_284_p3;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_v102_1;
reg    v7_ce1_local;
reg    v7_ce0_local;
reg    v10_we1_local;
reg    v10_ce1_local;
reg    v10_we0_local;
reg    v10_ce0_local;
wire   [8:0] zext_ln179_1_fu_214_p1;
wire   [8:0] add_ln181_fu_218_p2;
wire   [0:0] tmp_9_fu_229_p3;
wire   [8:0] zext_ln179_3_fu_251_p1;
wire   [8:0] add_ln181_1_fu_255_p2;
wire   [0:0] bit_sel1_fu_266_p3;
wire   [0:0] xor_ln179_fu_274_p2;
wire   [0:0] trunc_ln179_fu_280_p1;
wire   [63:0] bitcast_ln183_fu_316_p1;
wire   [0:0] bit_sel9_fu_320_p3;
wire   [63:0] bitcast_ln183_2_fu_343_p1;
wire   [0:0] bit_sel_fu_347_p3;
wire   [63:0] xor_ln6_fu_365_p3;
wire   [63:0] xor_ln183_1_fu_376_p3;
wire   [7:0] zext_ln179_fu_387_p1;
wire   [7:0] add_ln187_fu_390_p2;
wire   [7:0] zext_ln179_2_fu_400_p1;
wire   [7:0] add_ln187_1_fu_403_p2;
wire    ap_block_pp0_stage0_00001;
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
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg    ap_loop_exit_ready_pp0_iter23_reg;
reg    ap_loop_exit_ready_pp0_iter24_reg;
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
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 v102_fu_74 = 2'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter24_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
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
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
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
    if (((ap_loop_exit_ready_pp0_iter23_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter24_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln179_fu_245_p2 == 1'd0))) begin
            v102_fu_74 <= xor_ln7_fu_284_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v102_fu_74 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
        ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln179_reg_478_pp0_iter10_reg <= icmp_ln179_reg_478_pp0_iter9_reg;
        icmp_ln179_reg_478_pp0_iter11_reg <= icmp_ln179_reg_478_pp0_iter10_reg;
        icmp_ln179_reg_478_pp0_iter12_reg <= icmp_ln179_reg_478_pp0_iter11_reg;
        icmp_ln179_reg_478_pp0_iter13_reg <= icmp_ln179_reg_478_pp0_iter12_reg;
        icmp_ln179_reg_478_pp0_iter14_reg <= icmp_ln179_reg_478_pp0_iter13_reg;
        icmp_ln179_reg_478_pp0_iter15_reg <= icmp_ln179_reg_478_pp0_iter14_reg;
        icmp_ln179_reg_478_pp0_iter16_reg <= icmp_ln179_reg_478_pp0_iter15_reg;
        icmp_ln179_reg_478_pp0_iter17_reg <= icmp_ln179_reg_478_pp0_iter16_reg;
        icmp_ln179_reg_478_pp0_iter18_reg <= icmp_ln179_reg_478_pp0_iter17_reg;
        icmp_ln179_reg_478_pp0_iter19_reg <= icmp_ln179_reg_478_pp0_iter18_reg;
        icmp_ln179_reg_478_pp0_iter20_reg <= icmp_ln179_reg_478_pp0_iter19_reg;
        icmp_ln179_reg_478_pp0_iter21_reg <= icmp_ln179_reg_478_pp0_iter20_reg;
        icmp_ln179_reg_478_pp0_iter22_reg <= icmp_ln179_reg_478_pp0_iter21_reg;
        icmp_ln179_reg_478_pp0_iter23_reg <= icmp_ln179_reg_478_pp0_iter22_reg;
        icmp_ln179_reg_478_pp0_iter2_reg <= icmp_ln179_reg_478_pp0_iter1_reg;
        icmp_ln179_reg_478_pp0_iter3_reg <= icmp_ln179_reg_478_pp0_iter2_reg;
        icmp_ln179_reg_478_pp0_iter4_reg <= icmp_ln179_reg_478_pp0_iter3_reg;
        icmp_ln179_reg_478_pp0_iter5_reg <= icmp_ln179_reg_478_pp0_iter4_reg;
        icmp_ln179_reg_478_pp0_iter6_reg <= icmp_ln179_reg_478_pp0_iter5_reg;
        icmp_ln179_reg_478_pp0_iter7_reg <= icmp_ln179_reg_478_pp0_iter6_reg;
        icmp_ln179_reg_478_pp0_iter8_reg <= icmp_ln179_reg_478_pp0_iter7_reg;
        icmp_ln179_reg_478_pp0_iter9_reg <= icmp_ln179_reg_478_pp0_iter8_reg;
        icmp_ln180_reg_487_pp0_iter2_reg <= icmp_ln180_reg_487;
        icmp_ln180_reg_487_pp0_iter3_reg <= icmp_ln180_reg_487_pp0_iter2_reg;
        icmp_ln180_reg_487_pp0_iter4_reg <= icmp_ln180_reg_487_pp0_iter3_reg;
        icmp_ln180_reg_487_pp0_iter5_reg <= icmp_ln180_reg_487_pp0_iter4_reg;
        icmp_ln180_reg_487_pp0_iter6_reg <= icmp_ln180_reg_487_pp0_iter5_reg;
        icmp_ln180_reg_487_pp0_iter7_reg <= icmp_ln180_reg_487_pp0_iter6_reg;
        icmp_ln180_reg_487_pp0_iter8_reg <= icmp_ln180_reg_487_pp0_iter7_reg;
        or_ln4_reg_473_pp0_iter10_reg[1] <= or_ln4_reg_473_pp0_iter9_reg[1];
        or_ln4_reg_473_pp0_iter11_reg[1] <= or_ln4_reg_473_pp0_iter10_reg[1];
        or_ln4_reg_473_pp0_iter12_reg[1] <= or_ln4_reg_473_pp0_iter11_reg[1];
        or_ln4_reg_473_pp0_iter13_reg[1] <= or_ln4_reg_473_pp0_iter12_reg[1];
        or_ln4_reg_473_pp0_iter14_reg[1] <= or_ln4_reg_473_pp0_iter13_reg[1];
        or_ln4_reg_473_pp0_iter15_reg[1] <= or_ln4_reg_473_pp0_iter14_reg[1];
        or_ln4_reg_473_pp0_iter16_reg[1] <= or_ln4_reg_473_pp0_iter15_reg[1];
        or_ln4_reg_473_pp0_iter17_reg[1] <= or_ln4_reg_473_pp0_iter16_reg[1];
        or_ln4_reg_473_pp0_iter18_reg[1] <= or_ln4_reg_473_pp0_iter17_reg[1];
        or_ln4_reg_473_pp0_iter19_reg[1] <= or_ln4_reg_473_pp0_iter18_reg[1];
        or_ln4_reg_473_pp0_iter20_reg[1] <= or_ln4_reg_473_pp0_iter19_reg[1];
        or_ln4_reg_473_pp0_iter21_reg[1] <= or_ln4_reg_473_pp0_iter20_reg[1];
        or_ln4_reg_473_pp0_iter22_reg[1] <= or_ln4_reg_473_pp0_iter21_reg[1];
        or_ln4_reg_473_pp0_iter23_reg[1] <= or_ln4_reg_473_pp0_iter22_reg[1];
        or_ln4_reg_473_pp0_iter2_reg[1] <= or_ln4_reg_473_pp0_iter1_reg[1];
        or_ln4_reg_473_pp0_iter3_reg[1] <= or_ln4_reg_473_pp0_iter2_reg[1];
        or_ln4_reg_473_pp0_iter4_reg[1] <= or_ln4_reg_473_pp0_iter3_reg[1];
        or_ln4_reg_473_pp0_iter5_reg[1] <= or_ln4_reg_473_pp0_iter4_reg[1];
        or_ln4_reg_473_pp0_iter6_reg[1] <= or_ln4_reg_473_pp0_iter5_reg[1];
        or_ln4_reg_473_pp0_iter7_reg[1] <= or_ln4_reg_473_pp0_iter6_reg[1];
        or_ln4_reg_473_pp0_iter8_reg[1] <= or_ln4_reg_473_pp0_iter7_reg[1];
        or_ln4_reg_473_pp0_iter9_reg[1] <= or_ln4_reg_473_pp0_iter8_reg[1];
        trunc_ln183_1_reg_538 <= trunc_ln183_1_fu_361_p1;
        trunc_ln183_reg_523 <= trunc_ln183_fu_334_p1;
        v102_1_reg_462_pp0_iter10_reg <= v102_1_reg_462_pp0_iter9_reg;
        v102_1_reg_462_pp0_iter11_reg <= v102_1_reg_462_pp0_iter10_reg;
        v102_1_reg_462_pp0_iter12_reg <= v102_1_reg_462_pp0_iter11_reg;
        v102_1_reg_462_pp0_iter13_reg <= v102_1_reg_462_pp0_iter12_reg;
        v102_1_reg_462_pp0_iter14_reg <= v102_1_reg_462_pp0_iter13_reg;
        v102_1_reg_462_pp0_iter15_reg <= v102_1_reg_462_pp0_iter14_reg;
        v102_1_reg_462_pp0_iter16_reg <= v102_1_reg_462_pp0_iter15_reg;
        v102_1_reg_462_pp0_iter17_reg <= v102_1_reg_462_pp0_iter16_reg;
        v102_1_reg_462_pp0_iter18_reg <= v102_1_reg_462_pp0_iter17_reg;
        v102_1_reg_462_pp0_iter19_reg <= v102_1_reg_462_pp0_iter18_reg;
        v102_1_reg_462_pp0_iter20_reg <= v102_1_reg_462_pp0_iter19_reg;
        v102_1_reg_462_pp0_iter21_reg <= v102_1_reg_462_pp0_iter20_reg;
        v102_1_reg_462_pp0_iter22_reg <= v102_1_reg_462_pp0_iter21_reg;
        v102_1_reg_462_pp0_iter23_reg <= v102_1_reg_462_pp0_iter22_reg;
        v102_1_reg_462_pp0_iter2_reg <= v102_1_reg_462_pp0_iter1_reg;
        v102_1_reg_462_pp0_iter3_reg <= v102_1_reg_462_pp0_iter2_reg;
        v102_1_reg_462_pp0_iter4_reg <= v102_1_reg_462_pp0_iter3_reg;
        v102_1_reg_462_pp0_iter5_reg <= v102_1_reg_462_pp0_iter4_reg;
        v102_1_reg_462_pp0_iter6_reg <= v102_1_reg_462_pp0_iter5_reg;
        v102_1_reg_462_pp0_iter7_reg <= v102_1_reg_462_pp0_iter6_reg;
        v102_1_reg_462_pp0_iter8_reg <= v102_1_reg_462_pp0_iter7_reg;
        v102_1_reg_462_pp0_iter9_reg <= v102_1_reg_462_pp0_iter8_reg;
        v107_reg_528 <= v107_fu_338_p3;
        v108_1_reg_558 <= grp_fu_2895_p_dout0;
        v108_reg_553 <= grp_fu_2891_p_dout0;
        v109_1_reg_568 <= grp_fu_6977_p_dout0;
        v109_reg_563 <= grp_fu_2899_p_dout0;
        xor_ln183_2_reg_518 <= xor_ln183_2_fu_328_p2;
        xor_ln183_reg_533 <= xor_ln183_fu_355_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln179_reg_478 <= icmp_ln179_fu_245_p2;
        icmp_ln179_reg_478_pp0_iter1_reg <= icmp_ln179_reg_478;
        icmp_ln180_reg_487 <= icmp_ln180_fu_297_p2;
        or_ln4_reg_473[1] <= or_ln4_fu_237_p3[1];
        or_ln4_reg_473_pp0_iter1_reg[1] <= or_ln4_reg_473[1];
        v102_1_reg_462 <= ap_sig_allocacmp_v102_1;
        v102_1_reg_462_pp0_iter1_reg <= v102_1_reg_462;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_load_1_reg_498 <= v7_q0;
        v7_load_reg_493 <= v7_q1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln179_fu_245_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter24_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_v102_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_v102_1 = v102_fu_74;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter24 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v10_ce0_local = 1'b1;
    end else begin
        v10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter24 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v10_ce1_local = 1'b1;
    end else begin
        v10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter24 == 1'b1) & (icmp_ln179_reg_478_pp0_iter23_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v10_we0_local = 1'b1;
    end else begin
        v10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter24 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v10_we1_local = 1'b1;
    end else begin
        v10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_ce0_local = 1'b1;
    end else begin
        v7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_ce1_local = 1'b1;
    end else begin
        v7_ce1_local = 1'b0;
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
assign add_ln181_1_fu_255_p2 = (zext_ln179_3_fu_251_p1 + empty);
assign add_ln181_fu_218_p2 = (zext_ln179_1_fu_214_p1 + empty);
assign add_ln187_1_fu_403_p2 = (zext_ln179_2_fu_400_p1 + mul_ln179);
assign add_ln187_fu_390_p2 = (zext_ln179_fu_387_p1 + mul_ln179);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bit_sel1_fu_266_p3 = ap_sig_allocacmp_v102_1[2'd1];
assign bit_sel9_fu_320_p3 = bitcast_ln183_fu_316_p1[64'd63];
assign bit_sel_fu_347_p3 = bitcast_ln183_2_fu_343_p1[64'd63];
assign bitcast_ln183_2_fu_343_p1 = grp_fu_2883_p_dout0;
assign bitcast_ln183_fu_316_p1 = grp_fu_2879_p_dout0;
assign grp_fu_2879_p_ce = 1'b1;
assign grp_fu_2879_p_din0 = v103_fu_302_p3;
assign grp_fu_2879_p_din1 = v104_fu_308_p1;
assign grp_fu_2879_p_opcode = 2'd1;
assign grp_fu_2883_p_ce = 1'b1;
assign grp_fu_2883_p_din0 = v14_10_reload;
assign grp_fu_2883_p_din1 = v104_1_fu_312_p1;
assign grp_fu_2883_p_opcode = 2'd1;
assign grp_fu_2891_p_ce = 1'b1;
assign grp_fu_2891_p_din0 = v106_fu_371_p1;
assign grp_fu_2891_p_din1 = v107_reg_528;
assign grp_fu_2895_p_ce = 1'b1;
assign grp_fu_2895_p_din0 = v106_1_fu_382_p1;
assign grp_fu_2895_p_din1 = v15_10_reload;
assign grp_fu_2899_p_ce = 1'b1;
assign grp_fu_2899_p_din0 = v101;
assign grp_fu_2899_p_din1 = v108_reg_553;
assign grp_fu_6977_p_ce = 1'b1;
assign grp_fu_6977_p_din0 = v101;
assign grp_fu_6977_p_din1 = v108_1_reg_558;
assign icmp_ln179_fu_245_p2 = ((or_ln4_fu_237_p3 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln180_fu_297_p2 = ((v102_1_reg_462 == 2'd2) ? 1'b1 : 1'b0);
assign or_ln4_fu_237_p3 = {{tmp_9_fu_229_p3}, {1'd1}};
assign tmp_9_fu_229_p3 = ap_sig_allocacmp_v102_1[32'd1];
assign trunc_ln179_fu_280_p1 = ap_sig_allocacmp_v102_1[0:0];
assign trunc_ln183_1_fu_361_p1 = bitcast_ln183_2_fu_343_p1[62:0];
assign trunc_ln183_fu_334_p1 = bitcast_ln183_fu_316_p1[62:0];
assign v103_fu_302_p3 = ((icmp_ln180_reg_487[0:0] == 1'b1) ? v14_5_reload : v14_3_reload);
assign v104_1_fu_312_p1 = v7_load_1_reg_498;
assign v104_fu_308_p1 = v7_load_reg_493;
assign v106_1_fu_382_p1 = xor_ln183_1_fu_376_p3;
assign v106_fu_371_p1 = xor_ln6_fu_365_p3;
assign v107_fu_338_p3 = ((icmp_ln180_reg_487_pp0_iter8_reg[0:0] == 1'b1) ? v15_5_reload : v15_3_reload);
assign v10_address0 = zext_ln187_1_fu_408_p1;
assign v10_address1 = zext_ln187_fu_395_p1;
assign v10_ce0 = v10_ce0_local;
assign v10_ce1 = v10_ce1_local;
assign v10_d0 = v109_1_reg_568;
assign v10_d1 = v109_reg_563;
assign v10_we0 = v10_we0_local;
assign v10_we1 = v10_we1_local;
assign v7_address0 = zext_ln181_1_fu_261_p1;
assign v7_address1 = zext_ln181_fu_224_p1;
assign v7_ce0 = v7_ce0_local;
assign v7_ce1 = v7_ce1_local;
assign xor_ln179_fu_274_p2 = (bit_sel1_fu_266_p3 ^ 1'd1);
assign xor_ln183_1_fu_376_p3 = {{xor_ln183_reg_533}, {trunc_ln183_1_reg_538}};
assign xor_ln183_2_fu_328_p2 = (bit_sel9_fu_320_p3 ^ 1'd1);
assign xor_ln183_fu_355_p2 = (bit_sel_fu_347_p3 ^ 1'd1);
assign xor_ln6_fu_365_p3 = {{xor_ln183_2_reg_518}, {trunc_ln183_reg_523}};
assign xor_ln7_fu_284_p3 = {{xor_ln179_fu_274_p2}, {trunc_ln179_fu_280_p1}};
assign zext_ln179_1_fu_214_p1 = ap_sig_allocacmp_v102_1;
assign zext_ln179_2_fu_400_p1 = or_ln4_reg_473_pp0_iter23_reg;
assign zext_ln179_3_fu_251_p1 = or_ln4_fu_237_p3;
assign zext_ln179_fu_387_p1 = v102_1_reg_462_pp0_iter23_reg;
assign zext_ln181_1_fu_261_p1 = add_ln181_1_fu_255_p2;
assign zext_ln181_fu_224_p1 = add_ln181_fu_218_p2;
assign zext_ln187_1_fu_408_p1 = add_ln187_1_fu_403_p2;
assign zext_ln187_fu_395_p1 = add_ln187_fu_390_p2;
always @ (posedge ap_clk) begin
    or_ln4_reg_473[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter1_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter2_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter3_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter4_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter5_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter6_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter7_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter8_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter9_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter10_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter11_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter12_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter13_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter14_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter15_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter16_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter17_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter18_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter19_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter20_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter21_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter22_reg[0] <= 1'b1;
    or_ln4_reg_473_pp0_iter23_reg[0] <= 1'b1;
end
endmodule 