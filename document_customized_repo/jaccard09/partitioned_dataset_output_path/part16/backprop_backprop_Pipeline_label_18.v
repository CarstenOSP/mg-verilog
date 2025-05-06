
module backprop_backprop_Pipeline_label_18 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v107_1_reload,mux_case_13996,v103_1_reload,mux_case_13678,mux_case_23782_reload,mux_case_03568_reload,trunc_ln3,v7_0_address0,v7_0_ce0,v7_0_q0,v7_1_address0,v7_1_ce0,v7_1_q0,empty,v75_reload,mux_case_03886_reload,v101,mul_ln179,v10_address0,v10_ce0,v10_we0,v10_d0,v10_address1,v10_ce1,v10_we1,v10_d1,mul_ln168,mux_case_13998_out,mux_case_13998_out_ap_vld,mux_case_13680_out,mux_case_13680_out_ap_vld,grp_fu_5220_p_din0,grp_fu_5220_p_din1,grp_fu_5220_p_opcode,grp_fu_5220_p_dout0,grp_fu_5220_p_ce,grp_fu_5224_p_din0,grp_fu_5224_p_din1,grp_fu_5224_p_opcode,grp_fu_5224_p_dout0,grp_fu_5224_p_ce,grp_fu_2437_p_din0,grp_fu_2437_p_din1,grp_fu_2437_p_dout0,grp_fu_2437_p_ce,grp_fu_5228_p_din0,grp_fu_5228_p_din1,grp_fu_5228_p_dout0,grp_fu_5228_p_ce,grp_fu_5252_p_din0,grp_fu_5252_p_din1,grp_fu_5252_p_dout0,grp_fu_5252_p_ce,grp_fu_5256_p_din0,grp_fu_5256_p_din1,grp_fu_5256_p_dout0,grp_fu_5256_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] v107_1_reload;
input  [63:0] mux_case_13996;
input  [63:0] v103_1_reload;
input  [63:0] mux_case_13678;
input  [63:0] mux_case_23782_reload;
input  [63:0] mux_case_03568_reload;
input  [7:0] trunc_ln3;
output  [7:0] v7_0_address0;
output   v7_0_ce0;
input  [63:0] v7_0_q0;
output  [7:0] v7_1_address0;
output   v7_1_ce0;
input  [63:0] v7_1_q0;
input  [0:0] empty;
input  [63:0] v75_reload;
input  [63:0] mux_case_03886_reload;
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
input  [8:0] mul_ln168;
output  [63:0] mux_case_13998_out;
output   mux_case_13998_out_ap_vld;
output  [63:0] mux_case_13680_out;
output   mux_case_13680_out_ap_vld;
output  [63:0] grp_fu_5220_p_din0;
output  [63:0] grp_fu_5220_p_din1;
output  [0:0] grp_fu_5220_p_opcode;
input  [63:0] grp_fu_5220_p_dout0;
output   grp_fu_5220_p_ce;
output  [63:0] grp_fu_5224_p_din0;
output  [63:0] grp_fu_5224_p_din1;
output  [0:0] grp_fu_5224_p_opcode;
input  [63:0] grp_fu_5224_p_dout0;
output   grp_fu_5224_p_ce;
output  [63:0] grp_fu_2437_p_din0;
output  [63:0] grp_fu_2437_p_din1;
input  [63:0] grp_fu_2437_p_dout0;
output   grp_fu_2437_p_ce;
output  [63:0] grp_fu_5228_p_din0;
output  [63:0] grp_fu_5228_p_din1;
input  [63:0] grp_fu_5228_p_dout0;
output   grp_fu_5228_p_ce;
output  [63:0] grp_fu_5252_p_din0;
output  [63:0] grp_fu_5252_p_din1;
input  [63:0] grp_fu_5252_p_dout0;
output   grp_fu_5252_p_ce;
output  [63:0] grp_fu_5256_p_din0;
output  [63:0] grp_fu_5256_p_din1;
input  [63:0] grp_fu_5256_p_dout0;
output   grp_fu_5256_p_ce;
reg ap_idle;
reg mux_case_13998_out_ap_vld;
reg mux_case_13680_out_ap_vld;
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
wire   [0:0] icmp_ln179_fu_341_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_read_fu_138_p2;
reg   [1:0] v102_1_reg_621;
reg   [1:0] v102_1_reg_621_pp0_iter1_reg;
reg   [1:0] v102_1_reg_621_pp0_iter2_reg;
reg   [1:0] v102_1_reg_621_pp0_iter3_reg;
reg   [1:0] v102_1_reg_621_pp0_iter4_reg;
reg   [1:0] v102_1_reg_621_pp0_iter5_reg;
reg   [1:0] v102_1_reg_621_pp0_iter6_reg;
reg   [1:0] v102_1_reg_621_pp0_iter7_reg;
reg   [1:0] v102_1_reg_621_pp0_iter8_reg;
reg   [1:0] v102_1_reg_621_pp0_iter9_reg;
reg   [1:0] v102_1_reg_621_pp0_iter10_reg;
reg   [1:0] v102_1_reg_621_pp0_iter11_reg;
reg   [1:0] v102_1_reg_621_pp0_iter12_reg;
reg   [1:0] v102_1_reg_621_pp0_iter13_reg;
reg   [1:0] v102_1_reg_621_pp0_iter14_reg;
reg   [1:0] v102_1_reg_621_pp0_iter15_reg;
reg   [1:0] v102_1_reg_621_pp0_iter16_reg;
reg   [1:0] v102_1_reg_621_pp0_iter17_reg;
reg   [1:0] v102_1_reg_621_pp0_iter18_reg;
reg   [1:0] v102_1_reg_621_pp0_iter19_reg;
reg   [1:0] v102_1_reg_621_pp0_iter20_reg;
reg   [1:0] v102_1_reg_621_pp0_iter21_reg;
reg   [1:0] v102_1_reg_621_pp0_iter22_reg;
reg   [1:0] v102_1_reg_621_pp0_iter23_reg;
wire   [1:0] or_ln3_fu_333_p3;
reg   [1:0] or_ln3_reg_637;
reg   [1:0] or_ln3_reg_637_pp0_iter1_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter2_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter3_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter4_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter5_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter6_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter7_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter8_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter9_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter10_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter11_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter12_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter13_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter14_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter15_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter16_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter17_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter18_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter19_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter20_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter21_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter22_reg;
reg   [1:0] or_ln3_reg_637_pp0_iter23_reg;
reg   [0:0] icmp_ln179_reg_642;
reg   [0:0] icmp_ln179_reg_642_pp0_iter1_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter2_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter3_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter4_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter5_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter6_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter7_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter8_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter9_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter10_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter11_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter12_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter13_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter14_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter15_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter16_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter17_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter18_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter19_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter20_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter21_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter22_reg;
reg   [0:0] icmp_ln179_reg_642_pp0_iter23_reg;
wire   [0:0] icmp_ln180_fu_414_p2;
reg   [0:0] icmp_ln180_reg_656;
reg   [0:0] icmp_ln180_reg_656_pp0_iter2_reg;
reg   [0:0] icmp_ln180_reg_656_pp0_iter3_reg;
reg   [0:0] icmp_ln180_reg_656_pp0_iter4_reg;
reg   [0:0] icmp_ln180_reg_656_pp0_iter5_reg;
reg   [0:0] icmp_ln180_reg_656_pp0_iter6_reg;
reg   [0:0] icmp_ln180_reg_656_pp0_iter7_reg;
reg   [0:0] icmp_ln180_reg_656_pp0_iter8_reg;
wire   [63:0] select_ln181_fu_419_p3;
reg   [63:0] select_ln181_reg_662;
wire   [63:0] select_ln181_1_fu_426_p3;
reg   [63:0] select_ln181_1_reg_667;
wire   [63:0] v103_fu_433_p3;
wire   [63:0] v104_fu_439_p1;
wire   [63:0] v104_1_fu_443_p1;
wire   [0:0] xor_ln183_2_fu_459_p2;
reg   [0:0] xor_ln183_2_reg_687;
wire   [62:0] trunc_ln183_fu_465_p1;
reg   [62:0] trunc_ln183_reg_692;
wire   [63:0] v107_fu_469_p3;
reg   [63:0] v107_reg_697;
wire   [0:0] xor_ln183_fu_486_p2;
reg   [0:0] xor_ln183_reg_702;
wire   [62:0] trunc_ln183_1_fu_492_p1;
reg   [62:0] trunc_ln183_1_reg_707;
wire   [63:0] v106_fu_502_p1;
wire   [63:0] v106_1_fu_513_p1;
reg   [63:0] v108_reg_722;
reg   [63:0] v108_1_reg_727;
reg   [63:0] v109_reg_732;
reg   [63:0] v109_1_reg_737;
wire   [63:0] zext_ln181_1_fu_327_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln181_2_fu_367_p1;
wire   [63:0] zext_ln187_fu_526_p1;
wire   [63:0] zext_ln187_1_fu_539_p1;
reg   [1:0] v102_fu_96;
wire   [1:0] xor_ln7_fu_391_p3;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_v102_1;
reg   [63:0] mux_case_13680_fu_100;
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
reg   [63:0] mux_case_13998_fu_104;
wire    ap_block_pp0_stage0_01001;
reg    v7_0_ce0_local;
reg   [7:0] v7_0_address0_local;
reg    v7_1_ce0_local;
reg   [7:0] v7_1_address0_local;
reg    v10_we1_local;
reg    v10_ce1_local;
reg    v10_we0_local;
reg    v10_ce0_local;
wire   [0:0] tmp_3_fu_309_p3;
wire   [7:0] zext_ln181_fu_317_p1;
wire   [7:0] add_ln181_fu_321_p2;
wire   [8:0] zext_ln179_2_fu_347_p1;
wire   [8:0] add_ln181_1_fu_351_p2;
wire   [7:0] lshr_ln181_1_fu_357_p4;
wire   [0:0] bit_sel9_fu_373_p3;
wire   [0:0] xor_ln179_fu_381_p2;
wire   [0:0] trunc_ln179_fu_387_p1;
wire   [63:0] bitcast_ln183_fu_447_p1;
wire   [0:0] bit_sel7_fu_451_p3;
wire   [63:0] bitcast_ln183_2_fu_474_p1;
wire   [0:0] bit_sel8_fu_478_p3;
wire   [63:0] xor_ln6_fu_496_p3;
wire   [63:0] xor_ln183_1_fu_507_p3;
wire   [7:0] zext_ln179_fu_518_p1;
wire   [7:0] add_ln187_fu_521_p2;
wire   [7:0] zext_ln179_1_fu_531_p1;
wire   [7:0] add_ln187_1_fu_534_p2;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_504;
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
#0 v102_fu_96 = 2'd0;
#0 mux_case_13680_fu_100 = 64'd0;
#0 mux_case_13998_fu_104 = 64'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln179_fu_341_p2 == 1'd0))) begin
            mux_case_13680_fu_100 <= v103_1_reload;
        end else if ((ap_loop_init == 1'b1)) begin
            mux_case_13680_fu_100 <= mux_case_13678;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln179_fu_341_p2 == 1'd0))) begin
            mux_case_13998_fu_104 <= v107_1_reload;
        end else if ((ap_loop_init == 1'b1)) begin
            mux_case_13998_fu_104 <= mux_case_13996;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln179_fu_341_p2 == 1'd0))) begin
            v102_fu_96 <= xor_ln7_fu_391_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v102_fu_96 <= 2'd0;
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
        icmp_ln179_reg_642_pp0_iter10_reg <= icmp_ln179_reg_642_pp0_iter9_reg;
        icmp_ln179_reg_642_pp0_iter11_reg <= icmp_ln179_reg_642_pp0_iter10_reg;
        icmp_ln179_reg_642_pp0_iter12_reg <= icmp_ln179_reg_642_pp0_iter11_reg;
        icmp_ln179_reg_642_pp0_iter13_reg <= icmp_ln179_reg_642_pp0_iter12_reg;
        icmp_ln179_reg_642_pp0_iter14_reg <= icmp_ln179_reg_642_pp0_iter13_reg;
        icmp_ln179_reg_642_pp0_iter15_reg <= icmp_ln179_reg_642_pp0_iter14_reg;
        icmp_ln179_reg_642_pp0_iter16_reg <= icmp_ln179_reg_642_pp0_iter15_reg;
        icmp_ln179_reg_642_pp0_iter17_reg <= icmp_ln179_reg_642_pp0_iter16_reg;
        icmp_ln179_reg_642_pp0_iter18_reg <= icmp_ln179_reg_642_pp0_iter17_reg;
        icmp_ln179_reg_642_pp0_iter19_reg <= icmp_ln179_reg_642_pp0_iter18_reg;
        icmp_ln179_reg_642_pp0_iter20_reg <= icmp_ln179_reg_642_pp0_iter19_reg;
        icmp_ln179_reg_642_pp0_iter21_reg <= icmp_ln179_reg_642_pp0_iter20_reg;
        icmp_ln179_reg_642_pp0_iter22_reg <= icmp_ln179_reg_642_pp0_iter21_reg;
        icmp_ln179_reg_642_pp0_iter23_reg <= icmp_ln179_reg_642_pp0_iter22_reg;
        icmp_ln179_reg_642_pp0_iter2_reg <= icmp_ln179_reg_642_pp0_iter1_reg;
        icmp_ln179_reg_642_pp0_iter3_reg <= icmp_ln179_reg_642_pp0_iter2_reg;
        icmp_ln179_reg_642_pp0_iter4_reg <= icmp_ln179_reg_642_pp0_iter3_reg;
        icmp_ln179_reg_642_pp0_iter5_reg <= icmp_ln179_reg_642_pp0_iter4_reg;
        icmp_ln179_reg_642_pp0_iter6_reg <= icmp_ln179_reg_642_pp0_iter5_reg;
        icmp_ln179_reg_642_pp0_iter7_reg <= icmp_ln179_reg_642_pp0_iter6_reg;
        icmp_ln179_reg_642_pp0_iter8_reg <= icmp_ln179_reg_642_pp0_iter7_reg;
        icmp_ln179_reg_642_pp0_iter9_reg <= icmp_ln179_reg_642_pp0_iter8_reg;
        icmp_ln180_reg_656_pp0_iter2_reg <= icmp_ln180_reg_656;
        icmp_ln180_reg_656_pp0_iter3_reg <= icmp_ln180_reg_656_pp0_iter2_reg;
        icmp_ln180_reg_656_pp0_iter4_reg <= icmp_ln180_reg_656_pp0_iter3_reg;
        icmp_ln180_reg_656_pp0_iter5_reg <= icmp_ln180_reg_656_pp0_iter4_reg;
        icmp_ln180_reg_656_pp0_iter6_reg <= icmp_ln180_reg_656_pp0_iter5_reg;
        icmp_ln180_reg_656_pp0_iter7_reg <= icmp_ln180_reg_656_pp0_iter6_reg;
        icmp_ln180_reg_656_pp0_iter8_reg <= icmp_ln180_reg_656_pp0_iter7_reg;
        or_ln3_reg_637_pp0_iter10_reg[1] <= or_ln3_reg_637_pp0_iter9_reg[1];
        or_ln3_reg_637_pp0_iter11_reg[1] <= or_ln3_reg_637_pp0_iter10_reg[1];
        or_ln3_reg_637_pp0_iter12_reg[1] <= or_ln3_reg_637_pp0_iter11_reg[1];
        or_ln3_reg_637_pp0_iter13_reg[1] <= or_ln3_reg_637_pp0_iter12_reg[1];
        or_ln3_reg_637_pp0_iter14_reg[1] <= or_ln3_reg_637_pp0_iter13_reg[1];
        or_ln3_reg_637_pp0_iter15_reg[1] <= or_ln3_reg_637_pp0_iter14_reg[1];
        or_ln3_reg_637_pp0_iter16_reg[1] <= or_ln3_reg_637_pp0_iter15_reg[1];
        or_ln3_reg_637_pp0_iter17_reg[1] <= or_ln3_reg_637_pp0_iter16_reg[1];
        or_ln3_reg_637_pp0_iter18_reg[1] <= or_ln3_reg_637_pp0_iter17_reg[1];
        or_ln3_reg_637_pp0_iter19_reg[1] <= or_ln3_reg_637_pp0_iter18_reg[1];
        or_ln3_reg_637_pp0_iter20_reg[1] <= or_ln3_reg_637_pp0_iter19_reg[1];
        or_ln3_reg_637_pp0_iter21_reg[1] <= or_ln3_reg_637_pp0_iter20_reg[1];
        or_ln3_reg_637_pp0_iter22_reg[1] <= or_ln3_reg_637_pp0_iter21_reg[1];
        or_ln3_reg_637_pp0_iter23_reg[1] <= or_ln3_reg_637_pp0_iter22_reg[1];
        or_ln3_reg_637_pp0_iter2_reg[1] <= or_ln3_reg_637_pp0_iter1_reg[1];
        or_ln3_reg_637_pp0_iter3_reg[1] <= or_ln3_reg_637_pp0_iter2_reg[1];
        or_ln3_reg_637_pp0_iter4_reg[1] <= or_ln3_reg_637_pp0_iter3_reg[1];
        or_ln3_reg_637_pp0_iter5_reg[1] <= or_ln3_reg_637_pp0_iter4_reg[1];
        or_ln3_reg_637_pp0_iter6_reg[1] <= or_ln3_reg_637_pp0_iter5_reg[1];
        or_ln3_reg_637_pp0_iter7_reg[1] <= or_ln3_reg_637_pp0_iter6_reg[1];
        or_ln3_reg_637_pp0_iter8_reg[1] <= or_ln3_reg_637_pp0_iter7_reg[1];
        or_ln3_reg_637_pp0_iter9_reg[1] <= or_ln3_reg_637_pp0_iter8_reg[1];
        trunc_ln183_1_reg_707 <= trunc_ln183_1_fu_492_p1;
        trunc_ln183_reg_692 <= trunc_ln183_fu_465_p1;
        v102_1_reg_621_pp0_iter10_reg <= v102_1_reg_621_pp0_iter9_reg;
        v102_1_reg_621_pp0_iter11_reg <= v102_1_reg_621_pp0_iter10_reg;
        v102_1_reg_621_pp0_iter12_reg <= v102_1_reg_621_pp0_iter11_reg;
        v102_1_reg_621_pp0_iter13_reg <= v102_1_reg_621_pp0_iter12_reg;
        v102_1_reg_621_pp0_iter14_reg <= v102_1_reg_621_pp0_iter13_reg;
        v102_1_reg_621_pp0_iter15_reg <= v102_1_reg_621_pp0_iter14_reg;
        v102_1_reg_621_pp0_iter16_reg <= v102_1_reg_621_pp0_iter15_reg;
        v102_1_reg_621_pp0_iter17_reg <= v102_1_reg_621_pp0_iter16_reg;
        v102_1_reg_621_pp0_iter18_reg <= v102_1_reg_621_pp0_iter17_reg;
        v102_1_reg_621_pp0_iter19_reg <= v102_1_reg_621_pp0_iter18_reg;
        v102_1_reg_621_pp0_iter20_reg <= v102_1_reg_621_pp0_iter19_reg;
        v102_1_reg_621_pp0_iter21_reg <= v102_1_reg_621_pp0_iter20_reg;
        v102_1_reg_621_pp0_iter22_reg <= v102_1_reg_621_pp0_iter21_reg;
        v102_1_reg_621_pp0_iter23_reg <= v102_1_reg_621_pp0_iter22_reg;
        v102_1_reg_621_pp0_iter2_reg <= v102_1_reg_621_pp0_iter1_reg;
        v102_1_reg_621_pp0_iter3_reg <= v102_1_reg_621_pp0_iter2_reg;
        v102_1_reg_621_pp0_iter4_reg <= v102_1_reg_621_pp0_iter3_reg;
        v102_1_reg_621_pp0_iter5_reg <= v102_1_reg_621_pp0_iter4_reg;
        v102_1_reg_621_pp0_iter6_reg <= v102_1_reg_621_pp0_iter5_reg;
        v102_1_reg_621_pp0_iter7_reg <= v102_1_reg_621_pp0_iter6_reg;
        v102_1_reg_621_pp0_iter8_reg <= v102_1_reg_621_pp0_iter7_reg;
        v102_1_reg_621_pp0_iter9_reg <= v102_1_reg_621_pp0_iter8_reg;
        v107_reg_697 <= v107_fu_469_p3;
        v108_1_reg_727 <= grp_fu_5228_p_dout0;
        v108_reg_722 <= grp_fu_2437_p_dout0;
        v109_1_reg_737 <= grp_fu_5256_p_dout0;
        v109_reg_732 <= grp_fu_5252_p_dout0;
        xor_ln183_2_reg_687 <= xor_ln183_2_fu_459_p2;
        xor_ln183_reg_702 <= xor_ln183_fu_486_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln179_reg_642 <= icmp_ln179_fu_341_p2;
        icmp_ln179_reg_642_pp0_iter1_reg <= icmp_ln179_reg_642;
        icmp_ln180_reg_656 <= icmp_ln180_fu_414_p2;
        or_ln3_reg_637[1] <= or_ln3_fu_333_p3[1];
        or_ln3_reg_637_pp0_iter1_reg[1] <= or_ln3_reg_637[1];
        select_ln181_1_reg_667 <= select_ln181_1_fu_426_p3;
        select_ln181_reg_662 <= select_ln181_fu_419_p3;
        v102_1_reg_621 <= ap_sig_allocacmp_v102_1;
        v102_1_reg_621_pp0_iter1_reg <= v102_1_reg_621;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln179_fu_341_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_sig_allocacmp_v102_1 = v102_fu_96;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter24_reg == 1'b1) & (icmp_ln179_reg_642_pp0_iter23_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mux_case_13680_out_ap_vld = 1'b1;
    end else begin
        mux_case_13680_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter24_reg == 1'b1) & (icmp_ln179_reg_642_pp0_iter23_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mux_case_13998_out_ap_vld = 1'b1;
    end else begin
        mux_case_13998_out_ap_vld = 1'b0;
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
    if (((ap_enable_reg_pp0_iter24 == 1'b1) & (icmp_ln179_reg_642_pp0_iter23_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if ((1'b1 == ap_condition_504)) begin
        if (((tmp_read_fu_138_p2 == 1'd1) & (icmp_ln179_fu_341_p2 == 1'd0))) begin
            v7_0_address0_local = zext_ln181_2_fu_367_p1;
        end else if ((tmp_read_fu_138_p2 == 1'd0)) begin
            v7_0_address0_local = zext_ln181_1_fu_327_p1;
        end else begin
            v7_0_address0_local = 'bx;
        end
    end else begin
        v7_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_read_fu_138_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln179_fu_341_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_read_fu_138_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        v7_0_ce0_local = 1'b1;
    end else begin
        v7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_504)) begin
        if (((tmp_read_fu_138_p2 == 1'd0) & (icmp_ln179_fu_341_p2 == 1'd0))) begin
            v7_1_address0_local = zext_ln181_2_fu_367_p1;
        end else if ((tmp_read_fu_138_p2 == 1'd1)) begin
            v7_1_address0_local = zext_ln181_1_fu_327_p1;
        end else begin
            v7_1_address0_local = 'bx;
        end
    end else begin
        v7_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_read_fu_138_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_read_fu_138_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln179_fu_341_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        v7_1_ce0_local = 1'b1;
    end else begin
        v7_1_ce0_local = 1'b0;
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
assign add_ln181_1_fu_351_p2 = (zext_ln179_2_fu_347_p1 + mul_ln168);
assign add_ln181_fu_321_p2 = (zext_ln181_fu_317_p1 + trunc_ln3);
assign add_ln187_1_fu_534_p2 = (zext_ln179_1_fu_531_p1 + mul_ln179);
assign add_ln187_fu_521_p2 = (zext_ln179_fu_518_p1 + mul_ln179);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_504 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bit_sel7_fu_451_p3 = bitcast_ln183_fu_447_p1[64'd63];
assign bit_sel8_fu_478_p3 = bitcast_ln183_2_fu_474_p1[64'd63];
assign bit_sel9_fu_373_p3 = ap_sig_allocacmp_v102_1[2'd1];
assign bitcast_ln183_2_fu_474_p1 = grp_fu_5224_p_dout0;
assign bitcast_ln183_fu_447_p1 = grp_fu_5220_p_dout0;
assign grp_fu_2437_p_ce = 1'b1;
assign grp_fu_2437_p_din0 = v106_fu_502_p1;
assign grp_fu_2437_p_din1 = v107_reg_697;
assign grp_fu_5220_p_ce = 1'b1;
assign grp_fu_5220_p_din0 = v103_fu_433_p3;
assign grp_fu_5220_p_din1 = v104_fu_439_p1;
assign grp_fu_5220_p_opcode = 2'd1;
assign grp_fu_5224_p_ce = 1'b1;
assign grp_fu_5224_p_din0 = v103_1_reload;
assign grp_fu_5224_p_din1 = v104_1_fu_443_p1;
assign grp_fu_5224_p_opcode = 2'd1;
assign grp_fu_5228_p_ce = 1'b1;
assign grp_fu_5228_p_din0 = v106_1_fu_513_p1;
assign grp_fu_5228_p_din1 = v107_1_reload;
assign grp_fu_5252_p_ce = 1'b1;
assign grp_fu_5252_p_din0 = v101;
assign grp_fu_5252_p_din1 = v108_reg_722;
assign grp_fu_5256_p_ce = 1'b1;
assign grp_fu_5256_p_din0 = v101;
assign grp_fu_5256_p_din1 = v108_1_reg_727;
assign icmp_ln179_fu_341_p2 = ((or_ln3_fu_333_p3 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln180_fu_414_p2 = ((v102_1_reg_621 == 2'd2) ? 1'b1 : 1'b0);
assign lshr_ln181_1_fu_357_p4 = {{add_ln181_1_fu_351_p2[8:1]}};
assign mux_case_13680_out = mux_case_13680_fu_100;
assign mux_case_13998_out = mux_case_13998_fu_104;
assign or_ln3_fu_333_p3 = {{tmp_3_fu_309_p3}, {1'd1}};
assign select_ln181_1_fu_426_p3 = ((empty[0:0] == 1'b1) ? v7_0_q0 : v7_1_q0);
assign select_ln181_fu_419_p3 = ((empty[0:0] == 1'b1) ? v7_1_q0 : v7_0_q0);
assign tmp_3_fu_309_p3 = ap_sig_allocacmp_v102_1[32'd1];
assign tmp_read_fu_138_p2 = empty;
assign trunc_ln179_fu_387_p1 = ap_sig_allocacmp_v102_1[0:0];
assign trunc_ln183_1_fu_492_p1 = bitcast_ln183_2_fu_474_p1[62:0];
assign trunc_ln183_fu_465_p1 = bitcast_ln183_fu_447_p1[62:0];
assign v103_fu_433_p3 = ((icmp_ln180_reg_656[0:0] == 1'b1) ? mux_case_23782_reload : mux_case_03568_reload);
assign v104_1_fu_443_p1 = select_ln181_1_reg_667;
assign v104_fu_439_p1 = select_ln181_reg_662;
assign v106_1_fu_513_p1 = xor_ln183_1_fu_507_p3;
assign v106_fu_502_p1 = xor_ln6_fu_496_p3;
assign v107_fu_469_p3 = ((icmp_ln180_reg_656_pp0_iter8_reg[0:0] == 1'b1) ? v75_reload : mux_case_03886_reload);
assign v10_address0 = zext_ln187_1_fu_539_p1;
assign v10_address1 = zext_ln187_fu_526_p1;
assign v10_ce0 = v10_ce0_local;
assign v10_ce1 = v10_ce1_local;
assign v10_d0 = v109_1_reg_737;
assign v10_d1 = v109_reg_732;
assign v10_we0 = v10_we0_local;
assign v10_we1 = v10_we1_local;
assign v7_0_address0 = v7_0_address0_local;
assign v7_0_ce0 = v7_0_ce0_local;
assign v7_1_address0 = v7_1_address0_local;
assign v7_1_ce0 = v7_1_ce0_local;
assign xor_ln179_fu_381_p2 = (bit_sel9_fu_373_p3 ^ 1'd1);
assign xor_ln183_1_fu_507_p3 = {{xor_ln183_reg_702}, {trunc_ln183_1_reg_707}};
assign xor_ln183_2_fu_459_p2 = (bit_sel7_fu_451_p3 ^ 1'd1);
assign xor_ln183_fu_486_p2 = (bit_sel8_fu_478_p3 ^ 1'd1);
assign xor_ln6_fu_496_p3 = {{xor_ln183_2_reg_687}, {trunc_ln183_reg_692}};
assign xor_ln7_fu_391_p3 = {{xor_ln179_fu_381_p2}, {trunc_ln179_fu_387_p1}};
assign zext_ln179_1_fu_531_p1 = or_ln3_reg_637_pp0_iter23_reg;
assign zext_ln179_2_fu_347_p1 = or_ln3_fu_333_p3;
assign zext_ln179_fu_518_p1 = v102_1_reg_621_pp0_iter23_reg;
assign zext_ln181_1_fu_327_p1 = add_ln181_fu_321_p2;
assign zext_ln181_2_fu_367_p1 = lshr_ln181_1_fu_357_p4;
assign zext_ln181_fu_317_p1 = tmp_3_fu_309_p3;
assign zext_ln187_1_fu_539_p1 = add_ln187_1_fu_534_p2;
assign zext_ln187_fu_526_p1 = add_ln187_fu_521_p2;
always @ (posedge ap_clk) begin
    or_ln3_reg_637[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter1_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter2_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter3_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter4_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter5_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter6_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter7_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter8_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter9_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter10_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter11_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter12_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter13_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter14_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter15_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter16_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter17_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter18_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter19_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter20_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter21_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter22_reg[0] <= 1'b1;
    or_ln3_reg_637_pp0_iter23_reg[0] <= 1'b1;
end
endmodule 
