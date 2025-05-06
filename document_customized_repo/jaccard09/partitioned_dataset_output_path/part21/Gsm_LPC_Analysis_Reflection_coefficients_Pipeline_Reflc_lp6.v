
module Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_Reflc_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,indvars_iv26,P_1,P_1_ap_vld,K_i,K_o,K_o_ap_vld,K_6_i,K_6_o,K_6_o_ap_vld,K_5_i,K_5_o,K_5_o_ap_vld,K_4_i,K_4_o,K_4_o_ap_vld,K_3_i,K_3_o,K_3_o_ap_vld,K_2_i,K_2_o,K_2_o_ap_vld,K_1_i,K_1_o,K_1_o_ap_vld,P_7_i,P_7_o,P_7_o_ap_vld,P_6_i,P_6_o,P_6_o_ap_vld,P_5_i,P_5_o,P_5_o_ap_vld,P_4_i,P_4_o,P_4_o_ap_vld,P_3_i,P_3_o,P_3_o_ap_vld,P_2_i,P_2_o,P_2_o_ap_vld,sext_ln60,select_ln191_reload);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] indvars_iv26;
output  [15:0] P_1;
output   P_1_ap_vld;
input  [15:0] K_i;
output  [15:0] K_o;
output   K_o_ap_vld;
input  [15:0] K_6_i;
output  [15:0] K_6_o;
output   K_6_o_ap_vld;
input  [15:0] K_5_i;
output  [15:0] K_5_o;
output   K_5_o_ap_vld;
input  [15:0] K_4_i;
output  [15:0] K_4_o;
output   K_4_o_ap_vld;
input  [15:0] K_3_i;
output  [15:0] K_3_o;
output   K_3_o_ap_vld;
input  [15:0] K_2_i;
output  [15:0] K_2_o;
output   K_2_o_ap_vld;
input  [15:0] K_1_i;
output  [15:0] K_1_o;
output   K_1_o_ap_vld;
input  [15:0] P_7_i;
output  [15:0] P_7_o;
output   P_7_o_ap_vld;
input  [15:0] P_6_i;
output  [15:0] P_6_o;
output   P_6_o_ap_vld;
input  [15:0] P_5_i;
output  [15:0] P_5_o;
output   P_5_o_ap_vld;
input  [15:0] P_4_i;
output  [15:0] P_4_o;
output   P_4_o_ap_vld;
input  [15:0] P_3_i;
output  [15:0] P_3_o;
output   P_3_o_ap_vld;
input  [15:0] P_2_i;
output  [15:0] P_2_o;
output   P_2_o_ap_vld;
input  [15:0] sext_ln60;
input  [15:0] select_ln191_reload;
reg ap_idle;
reg P_1_ap_vld;
reg[15:0] K_o;
reg K_o_ap_vld;
reg[15:0] K_6_o;
reg K_6_o_ap_vld;
reg[15:0] K_5_o;
reg K_5_o_ap_vld;
reg[15:0] K_4_o;
reg K_4_o_ap_vld;
reg[15:0] K_3_o;
reg K_3_o_ap_vld;
reg[15:0] K_2_o;
reg K_2_o_ap_vld;
reg[15:0] K_1_o;
reg K_1_o_ap_vld;
reg[15:0] P_7_o;
reg P_7_o_ap_vld;
reg[15:0] P_6_o;
reg P_6_o_ap_vld;
reg[15:0] P_5_o;
reg P_5_o_ap_vld;
reg[15:0] P_4_o;
reg P_4_o_ap_vld;
reg[15:0] P_3_o;
reg P_3_o_ap_vld;
reg[15:0] P_2_o;
reg P_2_o_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln219_fu_312_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire  signed [30:0] sext_ln60_cast_fu_300_p1;
reg  signed [30:0] sext_ln60_cast_reg_590;
wire   [2:0] trunc_ln219_fu_317_p1;
reg   [2:0] trunc_ln219_reg_600;
reg   [2:0] trunc_ln219_reg_600_pp0_iter2_reg;
reg   [2:0] trunc_ln219_reg_600_pp0_iter3_reg;
reg   [2:0] trunc_ln219_reg_600_pp0_iter4_reg;
reg   [2:0] trunc_ln219_reg_600_pp0_iter5_reg;
wire  signed [15:0] a_assign_7_fu_321_p17;
reg  signed [15:0] a_assign_7_reg_604;
reg  signed [15:0] a_assign_7_reg_604_pp0_iter2_reg;
reg  signed [15:0] a_assign_7_reg_604_pp0_iter3_reg;
reg  signed [15:0] a_assign_7_reg_604_pp0_iter4_reg;
wire  signed [15:0] a_assign_8_fu_363_p17;
reg  signed [15:0] a_assign_8_reg_611;
reg  signed [15:0] a_assign_8_reg_611_pp0_iter2_reg;
reg  signed [15:0] a_assign_8_reg_611_pp0_iter3_reg;
reg  signed [15:0] a_assign_8_reg_611_pp0_iter4_reg;
wire   [15:0] add_ln39_fu_428_p2;
reg   [15:0] add_ln39_reg_628;
wire   [0:0] icmp_ln40_fu_439_p2;
reg   [0:0] icmp_ln40_reg_633;
wire   [0:0] icmp_ln40_1_fu_455_p2;
reg   [0:0] icmp_ln40_1_reg_639;
wire   [15:0] add_ln39_2_fu_474_p2;
reg   [15:0] add_ln39_2_reg_644;
wire   [0:0] icmp_ln40_2_fu_485_p2;
reg   [0:0] icmp_ln40_2_reg_649;
wire   [0:0] icmp_ln40_3_fu_501_p2;
reg   [0:0] icmp_ln40_3_reg_655;
reg   [63:0] m_fu_102;
wire   [63:0] add_ln222_fu_357_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [15:0] P_fu_518_p3;
wire    ap_block_pp0_stage0_01001;
wire   [15:0] K_7_fu_543_p3;
wire   [15:0] a_assign_7_fu_321_p15;
wire   [15:0] a_assign_8_fu_363_p15;
wire  signed [30:0] temp_fu_412_p1;
wire   [30:0] grp_fu_557_p3;
wire  signed [15:0] temp_fu_412_p4;
wire  signed [16:0] sext_ln39_fu_421_p1;
wire  signed [16:0] sext_ln39_1_fu_424_p1;
wire   [16:0] sum_fu_433_p2;
wire   [1:0] tmp_fu_445_p4;
wire  signed [30:0] temp_28_fu_461_p1;
wire   [30:0] grp_fu_565_p3;
wire  signed [15:0] temp_28_fu_461_p4;
wire  signed [16:0] sext_ln39_2_fu_470_p1;
wire  signed [16:0] sext_ln60_1_fu_409_p1;
wire   [16:0] sum_1_fu_479_p2;
wire   [1:0] tmp_6_fu_491_p4;
wire   [0:0] or_ln40_fu_514_p2;
wire   [15:0] select_ln40_fu_507_p3;
wire   [0:0] or_ln40_1_fu_539_p2;
wire   [15:0] select_ln40_2_fu_532_p3;
wire  signed [15:0] grp_fu_557_p1;
wire   [14:0] grp_fu_557_p2;
wire  signed [15:0] grp_fu_565_p1;
wire   [14:0] grp_fu_565_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] a_assign_7_fu_321_p1;
wire   [2:0] a_assign_7_fu_321_p3;
wire   [2:0] a_assign_7_fu_321_p5;
wire  signed [2:0] a_assign_7_fu_321_p7;
wire  signed [2:0] a_assign_7_fu_321_p9;
wire  signed [2:0] a_assign_7_fu_321_p11;
wire  signed [2:0] a_assign_7_fu_321_p13;
wire   [2:0] a_assign_8_fu_363_p1;
wire   [2:0] a_assign_8_fu_363_p3;
wire   [2:0] a_assign_8_fu_363_p5;
wire  signed [2:0] a_assign_8_fu_363_p7;
wire  signed [2:0] a_assign_8_fu_363_p9;
wire  signed [2:0] a_assign_8_fu_363_p11;
wire  signed [2:0] a_assign_8_fu_363_p13;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 m_fu_102 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_15_3_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 16 ),.CASE1( 3'h2 ),.din1_WIDTH( 16 ),.CASE2( 3'h3 ),.din2_WIDTH( 16 ),.CASE3( 3'h4 ),.din3_WIDTH( 16 ),.CASE4( 3'h5 ),.din4_WIDTH( 16 ),.CASE5( 3'h6 ),.din5_WIDTH( 16 ),.CASE6( 3'h7 ),.din6_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 3 ),.dout_WIDTH( 16 ))
sparsemux_15_3_16_1_1_U1201(.din0(K_i),.din1(K_1_i),.din2(K_2_i),.din3(K_3_i),.din4(K_4_i),.din5(K_5_i),.din6(K_6_i),.def(a_assign_7_fu_321_p15),.sel(trunc_ln219_fu_317_p1),.dout(a_assign_7_fu_321_p17));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_15_3_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 16 ),.CASE1( 3'h2 ),.din1_WIDTH( 16 ),.CASE2( 3'h3 ),.din2_WIDTH( 16 ),.CASE3( 3'h4 ),.din3_WIDTH( 16 ),.CASE4( 3'h5 ),.din4_WIDTH( 16 ),.CASE5( 3'h6 ),.din5_WIDTH( 16 ),.CASE6( 3'h7 ),.din6_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 3 ),.dout_WIDTH( 16 ))
sparsemux_15_3_16_1_1_U1202(.din0(P_2_i),.din1(P_3_i),.din2(P_4_i),.din3(P_5_i),.din4(P_6_i),.din5(P_7_i),.din6(select_ln191_reload),.def(a_assign_8_fu_363_p15),.sel(trunc_ln219_fu_317_p1),.dout(a_assign_8_fu_363_p17));
Gsm_LPC_Analysis_mac_muladd_16s_16s_15ns_31_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 15 ),.dout_WIDTH( 31 ))
mac_muladd_16s_16s_15ns_31_4_1_U1203(.clk(ap_clk),.reset(ap_rst),.din0(a_assign_7_reg_604),.din1(grp_fu_557_p1),.din2(grp_fu_557_p2),.ce(1'b1),.dout(grp_fu_557_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_15ns_31_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 15 ),.dout_WIDTH( 31 ))
mac_muladd_16s_16s_15ns_31_4_1_U1204(.clk(ap_clk),.reset(ap_rst),.din0(a_assign_8_reg_611),.din1(grp_fu_565_p1),.din2(grp_fu_565_p2),.ce(1'b1),.dout(grp_fu_565_p3));
Gsm_LPC_Analysis_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            m_fu_102 <= 64'd1;
        end else if (((icmp_ln219_fu_312_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            m_fu_102 <= add_ln222_fu_357_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_assign_7_reg_604 <= a_assign_7_fu_321_p17;
        a_assign_8_reg_611 <= a_assign_8_fu_363_p17;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        sext_ln60_cast_reg_590 <= sext_ln60_cast_fu_300_p1;
        trunc_ln219_reg_600 <= trunc_ln219_fu_317_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        a_assign_7_reg_604_pp0_iter2_reg <= a_assign_7_reg_604;
        a_assign_7_reg_604_pp0_iter3_reg <= a_assign_7_reg_604_pp0_iter2_reg;
        a_assign_7_reg_604_pp0_iter4_reg <= a_assign_7_reg_604_pp0_iter3_reg;
        a_assign_8_reg_611_pp0_iter2_reg <= a_assign_8_reg_611;
        a_assign_8_reg_611_pp0_iter3_reg <= a_assign_8_reg_611_pp0_iter2_reg;
        a_assign_8_reg_611_pp0_iter4_reg <= a_assign_8_reg_611_pp0_iter3_reg;
        add_ln39_2_reg_644 <= add_ln39_2_fu_474_p2;
        add_ln39_reg_628 <= add_ln39_fu_428_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        icmp_ln40_1_reg_639 <= icmp_ln40_1_fu_455_p2;
        icmp_ln40_2_reg_649 <= icmp_ln40_2_fu_485_p2;
        icmp_ln40_3_reg_655 <= icmp_ln40_3_fu_501_p2;
        icmp_ln40_reg_633 <= icmp_ln40_fu_439_p2;
        trunc_ln219_reg_600_pp0_iter2_reg <= trunc_ln219_reg_600;
        trunc_ln219_reg_600_pp0_iter3_reg <= trunc_ln219_reg_600_pp0_iter2_reg;
        trunc_ln219_reg_600_pp0_iter4_reg <= trunc_ln219_reg_600_pp0_iter3_reg;
        trunc_ln219_reg_600_pp0_iter5_reg <= trunc_ln219_reg_600_pp0_iter4_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd2))) begin
        K_1_o = K_7_fu_543_p3;
    end else begin
        K_1_o = K_1_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd2))) begin
        K_1_o_ap_vld = 1'b1;
    end else begin
        K_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd3))) begin
        K_2_o = K_7_fu_543_p3;
    end else begin
        K_2_o = K_2_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd3))) begin
        K_2_o_ap_vld = 1'b1;
    end else begin
        K_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd4))) begin
        K_3_o = K_7_fu_543_p3;
    end else begin
        K_3_o = K_3_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd4))) begin
        K_3_o_ap_vld = 1'b1;
    end else begin
        K_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd5))) begin
        K_4_o = K_7_fu_543_p3;
    end else begin
        K_4_o = K_4_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd5))) begin
        K_4_o_ap_vld = 1'b1;
    end else begin
        K_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd6))) begin
        K_5_o = K_7_fu_543_p3;
    end else begin
        K_5_o = K_5_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd6))) begin
        K_5_o_ap_vld = 1'b1;
    end else begin
        K_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & ((trunc_ln219_reg_600_pp0_iter5_reg == 3'd0) | (trunc_ln219_reg_600_pp0_iter5_reg == 3'd7)))) begin
        K_6_o = K_7_fu_543_p3;
    end else begin
        K_6_o = K_6_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & ((trunc_ln219_reg_600_pp0_iter5_reg == 3'd0) | (trunc_ln219_reg_600_pp0_iter5_reg == 3'd7)))) begin
        K_6_o_ap_vld = 1'b1;
    end else begin
        K_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd1))) begin
        K_o = K_7_fu_543_p3;
    end else begin
        K_o = K_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd1))) begin
        K_o_ap_vld = 1'b1;
    end else begin
        K_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd1))) begin
        P_1_ap_vld = 1'b1;
    end else begin
        P_1_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd2))) begin
        P_2_o = P_fu_518_p3;
    end else begin
        P_2_o = P_2_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd2))) begin
        P_2_o_ap_vld = 1'b1;
    end else begin
        P_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd3))) begin
        P_3_o = P_fu_518_p3;
    end else begin
        P_3_o = P_3_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd3))) begin
        P_3_o_ap_vld = 1'b1;
    end else begin
        P_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd4))) begin
        P_4_o = P_fu_518_p3;
    end else begin
        P_4_o = P_4_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd4))) begin
        P_4_o_ap_vld = 1'b1;
    end else begin
        P_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd5))) begin
        P_5_o = P_fu_518_p3;
    end else begin
        P_5_o = P_5_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd5))) begin
        P_5_o_ap_vld = 1'b1;
    end else begin
        P_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd6))) begin
        P_6_o = P_fu_518_p3;
    end else begin
        P_6_o = P_6_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_600_pp0_iter5_reg == 3'd6))) begin
        P_6_o_ap_vld = 1'b1;
    end else begin
        P_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & ((trunc_ln219_reg_600_pp0_iter5_reg == 3'd0) | (trunc_ln219_reg_600_pp0_iter5_reg == 3'd7)))) begin
        P_7_o = P_fu_518_p3;
    end else begin
        P_7_o = P_7_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & ((trunc_ln219_reg_600_pp0_iter5_reg == 3'd0) | (trunc_ln219_reg_600_pp0_iter5_reg == 3'd7)))) begin
        P_7_o_ap_vld = 1'b1;
    end else begin
        P_7_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln219_fu_312_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign K_7_fu_543_p3 = ((or_ln40_1_fu_539_p2[0:0] == 1'b1) ? select_ln40_2_fu_532_p3 : add_ln39_2_reg_644);
assign P_1 = ((or_ln40_fu_514_p2[0:0] == 1'b1) ? select_ln40_fu_507_p3 : add_ln39_reg_628);
assign P_fu_518_p3 = ((or_ln40_fu_514_p2[0:0] == 1'b1) ? select_ln40_fu_507_p3 : add_ln39_reg_628);
assign a_assign_7_fu_321_p15 = 'bx;
assign a_assign_8_fu_363_p15 = 'bx;
assign add_ln222_fu_357_p2 = (m_fu_102 + 64'd1);
assign add_ln39_2_fu_474_p2 = ($signed(temp_28_fu_461_p4) + $signed(a_assign_7_reg_604_pp0_iter4_reg));
assign add_ln39_fu_428_p2 = ($signed(a_assign_8_reg_611_pp0_iter4_reg) + $signed(temp_fu_412_p4));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_557_p1 = sext_ln60_cast_reg_590;
assign grp_fu_557_p2 = 31'd16384;
assign grp_fu_565_p1 = sext_ln60_cast_reg_590;
assign grp_fu_565_p2 = 31'd16384;
assign icmp_ln219_fu_312_p2 = ((m_fu_102 == indvars_iv26) ? 1'b1 : 1'b0);
assign icmp_ln40_1_fu_455_p2 = ((tmp_fu_445_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln40_2_fu_485_p2 = (($signed(sum_1_fu_479_p2) < $signed(17'd98304)) ? 1'b1 : 1'b0);
assign icmp_ln40_3_fu_501_p2 = ((tmp_6_fu_491_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_439_p2 = (($signed(sum_fu_433_p2) < $signed(17'd98304)) ? 1'b1 : 1'b0);
assign or_ln40_1_fu_539_p2 = (icmp_ln40_3_reg_655 | icmp_ln40_2_reg_649);
assign or_ln40_fu_514_p2 = (icmp_ln40_reg_633 | icmp_ln40_1_reg_639);
assign select_ln40_2_fu_532_p3 = ((icmp_ln40_2_reg_649[0:0] == 1'b1) ? 16'd32768 : 16'd32767);
assign select_ln40_fu_507_p3 = ((icmp_ln40_reg_633[0:0] == 1'b1) ? 16'd32768 : 16'd32767);
assign sext_ln39_1_fu_424_p1 = temp_fu_412_p4;
assign sext_ln39_2_fu_470_p1 = temp_28_fu_461_p4;
assign sext_ln39_fu_421_p1 = a_assign_8_reg_611_pp0_iter4_reg;
assign sext_ln60_1_fu_409_p1 = a_assign_7_reg_604_pp0_iter4_reg;
assign sext_ln60_cast_fu_300_p1 = $signed(sext_ln60);
assign sum_1_fu_479_p2 = ($signed(sext_ln39_2_fu_470_p1) + $signed(sext_ln60_1_fu_409_p1));
assign sum_fu_433_p2 = ($signed(sext_ln39_fu_421_p1) + $signed(sext_ln39_1_fu_424_p1));
assign temp_28_fu_461_p1 = grp_fu_565_p3;
assign temp_28_fu_461_p4 = {{temp_28_fu_461_p1[30:15]}};
assign temp_fu_412_p1 = grp_fu_557_p3;
assign temp_fu_412_p4 = {{temp_fu_412_p1[30:15]}};
assign tmp_6_fu_491_p4 = {{sum_1_fu_479_p2[16:15]}};
assign tmp_fu_445_p4 = {{sum_fu_433_p2[16:15]}};
assign trunc_ln219_fu_317_p1 = m_fu_102[2:0];
endmodule 
