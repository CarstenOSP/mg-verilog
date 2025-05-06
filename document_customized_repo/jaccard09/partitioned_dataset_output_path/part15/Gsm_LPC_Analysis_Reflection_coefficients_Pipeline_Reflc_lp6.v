
module Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_Reflc_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,indvars_iv26,P_1,P_1_ap_vld,K_i,K_o,K_o_ap_vld,K_6_i,K_6_o,K_6_o_ap_vld,K_5_i,K_5_o,K_5_o_ap_vld,K_4_i,K_4_o,K_4_o_ap_vld,K_3_i,K_3_o,K_3_o_ap_vld,K_2_i,K_2_o,K_2_o_ap_vld,K_1_i,K_1_o,K_1_o_ap_vld,P_7_i,P_7_o,P_7_o_ap_vld,P_6_i,P_6_o,P_6_o_ap_vld,P_5_i,P_5_o,P_5_o_ap_vld,P_4_i,P_4_o,P_4_o_ap_vld,P_3_i,P_3_o,P_3_o_ap_vld,P_2_i,P_2_o,P_2_o_ap_vld,icmp_ln56,sext_ln60,select_ln191_reload);  
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
input  [0:0] icmp_ln56;
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
wire   [0:0] icmp_ln219_fu_322_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire  signed [30:0] sext_ln60_cast_fu_310_p1;
reg  signed [30:0] sext_ln60_cast_reg_646;
wire   [2:0] trunc_ln219_fu_327_p1;
reg   [2:0] trunc_ln219_reg_656;
reg   [2:0] trunc_ln219_reg_656_pp0_iter2_reg;
reg   [2:0] trunc_ln219_reg_656_pp0_iter3_reg;
reg   [2:0] trunc_ln219_reg_656_pp0_iter4_reg;
reg   [2:0] trunc_ln219_reg_656_pp0_iter5_reg;
wire  signed [15:0] a_assign_4_fu_331_p17;
reg  signed [15:0] a_assign_4_reg_660;
reg  signed [15:0] a_assign_4_reg_660_pp0_iter2_reg;
reg  signed [15:0] a_assign_4_reg_660_pp0_iter3_reg;
reg  signed [15:0] a_assign_4_reg_660_pp0_iter4_reg;
reg  signed [15:0] a_assign_4_reg_660_pp0_iter5_reg;
wire  signed [15:0] a_assign_5_fu_373_p17;
reg  signed [15:0] a_assign_5_reg_668;
reg  signed [15:0] a_assign_5_reg_668_pp0_iter2_reg;
reg  signed [15:0] a_assign_5_reg_668_pp0_iter3_reg;
reg  signed [15:0] a_assign_5_reg_668_pp0_iter4_reg;
reg  signed [15:0] a_assign_5_reg_668_pp0_iter5_reg;
wire  signed [15:0] temp_fu_438_p3;
reg  signed [15:0] temp_reg_686;
wire  signed [15:0] temp_1_fu_465_p3;
reg  signed [15:0] temp_1_reg_692;
reg   [63:0] m_fu_106;
wire   [63:0] add_ln222_fu_367_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [15:0] P_fu_528_p3;
wire    ap_block_pp0_stage0_01001;
wire   [15:0] K_7_fu_592_p3;
wire   [15:0] a_assign_4_fu_331_p15;
wire   [15:0] a_assign_5_fu_373_p15;
wire   [0:0] icmp_ln56_1_fu_419_p2;
wire  signed [30:0] trunc_ln62_1_fu_429_p1;
wire   [30:0] grp_fu_607_p3;
wire   [0:0] and_ln56_fu_424_p2;
wire   [15:0] trunc_ln62_1_fu_429_p4;
wire   [0:0] icmp_ln56_2_fu_446_p2;
wire  signed [30:0] trunc_ln62_2_fu_456_p1;
wire   [30:0] grp_fu_615_p3;
wire   [0:0] and_ln56_1_fu_451_p2;
wire   [15:0] trunc_ln62_2_fu_456_p4;
wire  signed [16:0] sext_ln39_fu_476_p1;
wire  signed [16:0] sext_ln39_1_fu_479_p1;
wire   [16:0] sum_fu_486_p2;
wire   [1:0] tmp_fu_498_p4;
wire   [0:0] icmp_ln40_fu_492_p2;
wire   [0:0] icmp_ln40_1_fu_508_p2;
wire   [0:0] or_ln40_fu_522_p2;
wire   [15:0] select_ln40_fu_514_p3;
wire   [15:0] add_ln39_fu_482_p2;
wire  signed [16:0] sext_ln39_2_fu_543_p1;
wire  signed [16:0] sext_ln60_1_fu_473_p1;
wire   [16:0] sum_1_fu_550_p2;
wire   [1:0] tmp_1_fu_562_p4;
wire   [0:0] icmp_ln40_2_fu_556_p2;
wire   [0:0] icmp_ln40_3_fu_572_p2;
wire   [0:0] or_ln40_1_fu_586_p2;
wire   [15:0] select_ln40_2_fu_578_p3;
wire   [15:0] add_ln39_2_fu_546_p2;
wire  signed [15:0] grp_fu_607_p1;
wire   [14:0] grp_fu_607_p2;
wire  signed [15:0] grp_fu_615_p1;
wire   [14:0] grp_fu_615_p2;
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
wire   [2:0] a_assign_4_fu_331_p1;
wire   [2:0] a_assign_4_fu_331_p3;
wire   [2:0] a_assign_4_fu_331_p5;
wire  signed [2:0] a_assign_4_fu_331_p7;
wire  signed [2:0] a_assign_4_fu_331_p9;
wire  signed [2:0] a_assign_4_fu_331_p11;
wire  signed [2:0] a_assign_4_fu_331_p13;
wire   [2:0] a_assign_5_fu_373_p1;
wire   [2:0] a_assign_5_fu_373_p3;
wire   [2:0] a_assign_5_fu_373_p5;
wire  signed [2:0] a_assign_5_fu_373_p7;
wire  signed [2:0] a_assign_5_fu_373_p9;
wire  signed [2:0] a_assign_5_fu_373_p11;
wire  signed [2:0] a_assign_5_fu_373_p13;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 m_fu_106 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_15_3_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 16 ),.CASE1( 3'h2 ),.din1_WIDTH( 16 ),.CASE2( 3'h3 ),.din2_WIDTH( 16 ),.CASE3( 3'h4 ),.din3_WIDTH( 16 ),.CASE4( 3'h5 ),.din4_WIDTH( 16 ),.CASE5( 3'h6 ),.din5_WIDTH( 16 ),.CASE6( 3'h7 ),.din6_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 3 ),.dout_WIDTH( 16 ))
sparsemux_15_3_16_1_1_U1073(.din0(K_i),.din1(K_1_i),.din2(K_2_i),.din3(K_3_i),.din4(K_4_i),.din5(K_5_i),.din6(K_6_i),.def(a_assign_4_fu_331_p15),.sel(trunc_ln219_fu_327_p1),.dout(a_assign_4_fu_331_p17));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_15_3_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 16 ),.CASE1( 3'h2 ),.din1_WIDTH( 16 ),.CASE2( 3'h3 ),.din2_WIDTH( 16 ),.CASE3( 3'h4 ),.din3_WIDTH( 16 ),.CASE4( 3'h5 ),.din4_WIDTH( 16 ),.CASE5( 3'h6 ),.din5_WIDTH( 16 ),.CASE6( 3'h7 ),.din6_WIDTH( 16 ),.def_WIDTH( 16 ),.sel_WIDTH( 3 ),.dout_WIDTH( 16 ))
sparsemux_15_3_16_1_1_U1074(.din0(P_2_i),.din1(P_3_i),.din2(P_4_i),.din3(P_5_i),.din4(P_6_i),.din5(P_7_i),.din6(select_ln191_reload),.def(a_assign_5_fu_373_p15),.sel(trunc_ln219_fu_327_p1),.dout(a_assign_5_fu_373_p17));
Gsm_LPC_Analysis_mac_muladd_16s_16s_15ns_31_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 15 ),.dout_WIDTH( 31 ))
mac_muladd_16s_16s_15ns_31_4_1_U1075(.clk(ap_clk),.reset(ap_rst),.din0(a_assign_4_reg_660),.din1(grp_fu_607_p1),.din2(grp_fu_607_p2),.ce(1'b1),.dout(grp_fu_607_p3));
Gsm_LPC_Analysis_mac_muladd_16s_16s_15ns_31_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 15 ),.dout_WIDTH( 31 ))
mac_muladd_16s_16s_15ns_31_4_1_U1076(.clk(ap_clk),.reset(ap_rst),.din0(a_assign_5_reg_668),.din1(grp_fu_615_p1),.din2(grp_fu_615_p2),.ce(1'b1),.dout(grp_fu_615_p3));
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
            m_fu_106 <= 64'd1;
        end else if (((icmp_ln219_fu_322_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            m_fu_106 <= add_ln222_fu_367_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_assign_4_reg_660 <= a_assign_4_fu_331_p17;
        a_assign_5_reg_668 <= a_assign_5_fu_373_p17;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        sext_ln60_cast_reg_646 <= sext_ln60_cast_fu_310_p1;
        trunc_ln219_reg_656 <= trunc_ln219_fu_327_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        a_assign_4_reg_660_pp0_iter2_reg <= a_assign_4_reg_660;
        a_assign_4_reg_660_pp0_iter3_reg <= a_assign_4_reg_660_pp0_iter2_reg;
        a_assign_4_reg_660_pp0_iter4_reg <= a_assign_4_reg_660_pp0_iter3_reg;
        a_assign_4_reg_660_pp0_iter5_reg <= a_assign_4_reg_660_pp0_iter4_reg;
        a_assign_5_reg_668_pp0_iter2_reg <= a_assign_5_reg_668;
        a_assign_5_reg_668_pp0_iter3_reg <= a_assign_5_reg_668_pp0_iter2_reg;
        a_assign_5_reg_668_pp0_iter4_reg <= a_assign_5_reg_668_pp0_iter3_reg;
        a_assign_5_reg_668_pp0_iter5_reg <= a_assign_5_reg_668_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        temp_1_reg_692 <= temp_1_fu_465_p3;
        temp_reg_686 <= temp_fu_438_p3;
        trunc_ln219_reg_656_pp0_iter2_reg <= trunc_ln219_reg_656;
        trunc_ln219_reg_656_pp0_iter3_reg <= trunc_ln219_reg_656_pp0_iter2_reg;
        trunc_ln219_reg_656_pp0_iter4_reg <= trunc_ln219_reg_656_pp0_iter3_reg;
        trunc_ln219_reg_656_pp0_iter5_reg <= trunc_ln219_reg_656_pp0_iter4_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd2))) begin
        K_1_o = K_7_fu_592_p3;
    end else begin
        K_1_o = K_1_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd2))) begin
        K_1_o_ap_vld = 1'b1;
    end else begin
        K_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd3))) begin
        K_2_o = K_7_fu_592_p3;
    end else begin
        K_2_o = K_2_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd3))) begin
        K_2_o_ap_vld = 1'b1;
    end else begin
        K_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd4))) begin
        K_3_o = K_7_fu_592_p3;
    end else begin
        K_3_o = K_3_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd4))) begin
        K_3_o_ap_vld = 1'b1;
    end else begin
        K_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd5))) begin
        K_4_o = K_7_fu_592_p3;
    end else begin
        K_4_o = K_4_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd5))) begin
        K_4_o_ap_vld = 1'b1;
    end else begin
        K_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd6))) begin
        K_5_o = K_7_fu_592_p3;
    end else begin
        K_5_o = K_5_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd6))) begin
        K_5_o_ap_vld = 1'b1;
    end else begin
        K_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & ((trunc_ln219_reg_656_pp0_iter5_reg == 3'd0) | (trunc_ln219_reg_656_pp0_iter5_reg == 3'd7)))) begin
        K_6_o = K_7_fu_592_p3;
    end else begin
        K_6_o = K_6_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & ((trunc_ln219_reg_656_pp0_iter5_reg == 3'd0) | (trunc_ln219_reg_656_pp0_iter5_reg == 3'd7)))) begin
        K_6_o_ap_vld = 1'b1;
    end else begin
        K_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd1))) begin
        K_o = K_7_fu_592_p3;
    end else begin
        K_o = K_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd1))) begin
        K_o_ap_vld = 1'b1;
    end else begin
        K_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd1))) begin
        P_1_ap_vld = 1'b1;
    end else begin
        P_1_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd2))) begin
        P_2_o = P_fu_528_p3;
    end else begin
        P_2_o = P_2_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd2))) begin
        P_2_o_ap_vld = 1'b1;
    end else begin
        P_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd3))) begin
        P_3_o = P_fu_528_p3;
    end else begin
        P_3_o = P_3_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd3))) begin
        P_3_o_ap_vld = 1'b1;
    end else begin
        P_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd4))) begin
        P_4_o = P_fu_528_p3;
    end else begin
        P_4_o = P_4_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd4))) begin
        P_4_o_ap_vld = 1'b1;
    end else begin
        P_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd5))) begin
        P_5_o = P_fu_528_p3;
    end else begin
        P_5_o = P_5_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd5))) begin
        P_5_o_ap_vld = 1'b1;
    end else begin
        P_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd6))) begin
        P_6_o = P_fu_528_p3;
    end else begin
        P_6_o = P_6_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln219_reg_656_pp0_iter5_reg == 3'd6))) begin
        P_6_o_ap_vld = 1'b1;
    end else begin
        P_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter6 == 1'b1) & ((trunc_ln219_reg_656_pp0_iter5_reg == 3'd0) | (trunc_ln219_reg_656_pp0_iter5_reg == 3'd7)))) begin
        P_7_o = P_fu_528_p3;
    end else begin
        P_7_o = P_7_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & ((trunc_ln219_reg_656_pp0_iter5_reg == 3'd0) | (trunc_ln219_reg_656_pp0_iter5_reg == 3'd7)))) begin
        P_7_o_ap_vld = 1'b1;
    end else begin
        P_7_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln219_fu_322_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign K_7_fu_592_p3 = ((or_ln40_1_fu_586_p2[0:0] == 1'b1) ? select_ln40_2_fu_578_p3 : add_ln39_2_fu_546_p2);
assign P_1 = ((or_ln40_fu_522_p2[0:0] == 1'b1) ? select_ln40_fu_514_p3 : add_ln39_fu_482_p2);
assign P_fu_528_p3 = ((or_ln40_fu_522_p2[0:0] == 1'b1) ? select_ln40_fu_514_p3 : add_ln39_fu_482_p2);
assign a_assign_4_fu_331_p15 = 'bx;
assign a_assign_5_fu_373_p15 = 'bx;
assign add_ln222_fu_367_p2 = (m_fu_106 + 64'd1);
assign add_ln39_2_fu_546_p2 = ($signed(temp_1_reg_692) + $signed(a_assign_4_reg_660_pp0_iter5_reg));
assign add_ln39_fu_482_p2 = ($signed(a_assign_5_reg_668_pp0_iter5_reg) + $signed(temp_reg_686));
assign and_ln56_1_fu_451_p2 = (icmp_ln56_2_fu_446_p2 & icmp_ln56);
assign and_ln56_fu_424_p2 = (icmp_ln56_1_fu_419_p2 & icmp_ln56);
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
assign grp_fu_607_p1 = sext_ln60_cast_reg_646;
assign grp_fu_607_p2 = 31'd16384;
assign grp_fu_615_p1 = sext_ln60_cast_reg_646;
assign grp_fu_615_p2 = 31'd16384;
assign icmp_ln219_fu_322_p2 = ((m_fu_106 == indvars_iv26) ? 1'b1 : 1'b0);
assign icmp_ln40_1_fu_508_p2 = ((tmp_fu_498_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln40_2_fu_556_p2 = (($signed(sum_1_fu_550_p2) < $signed(17'd98304)) ? 1'b1 : 1'b0);
assign icmp_ln40_3_fu_572_p2 = ((tmp_1_fu_562_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_492_p2 = (($signed(sum_fu_486_p2) < $signed(17'd98304)) ? 1'b1 : 1'b0);
assign icmp_ln56_1_fu_419_p2 = ((a_assign_4_reg_660_pp0_iter4_reg == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln56_2_fu_446_p2 = ((a_assign_5_reg_668_pp0_iter4_reg == 16'd32768) ? 1'b1 : 1'b0);
assign or_ln40_1_fu_586_p2 = (icmp_ln40_3_fu_572_p2 | icmp_ln40_2_fu_556_p2);
assign or_ln40_fu_522_p2 = (icmp_ln40_fu_492_p2 | icmp_ln40_1_fu_508_p2);
assign select_ln40_2_fu_578_p3 = ((icmp_ln40_2_fu_556_p2[0:0] == 1'b1) ? 16'd32768 : 16'd32767);
assign select_ln40_fu_514_p3 = ((icmp_ln40_fu_492_p2[0:0] == 1'b1) ? 16'd32768 : 16'd32767);
assign sext_ln39_1_fu_479_p1 = temp_reg_686;
assign sext_ln39_2_fu_543_p1 = temp_1_reg_692;
assign sext_ln39_fu_476_p1 = a_assign_5_reg_668_pp0_iter5_reg;
assign sext_ln60_1_fu_473_p1 = a_assign_4_reg_660_pp0_iter5_reg;
assign sext_ln60_cast_fu_310_p1 = $signed(sext_ln60);
assign sum_1_fu_550_p2 = ($signed(sext_ln39_2_fu_543_p1) + $signed(sext_ln60_1_fu_473_p1));
assign sum_fu_486_p2 = ($signed(sext_ln39_fu_476_p1) + $signed(sext_ln39_1_fu_479_p1));
assign temp_1_fu_465_p3 = ((and_ln56_1_fu_451_p2[0:0] == 1'b1) ? 16'd32767 : trunc_ln62_2_fu_456_p4);
assign temp_fu_438_p3 = ((and_ln56_fu_424_p2[0:0] == 1'b1) ? 16'd32767 : trunc_ln62_1_fu_429_p4);
assign tmp_1_fu_562_p4 = {{sum_1_fu_550_p2[16:15]}};
assign tmp_fu_498_p4 = {{sum_fu_486_p2[16:15]}};
assign trunc_ln219_fu_327_p1 = m_fu_106[2:0];
assign trunc_ln62_1_fu_429_p1 = grp_fu_607_p3;
assign trunc_ln62_1_fu_429_p4 = {{trunc_ln62_1_fu_429_p1[30:15]}};
assign trunc_ln62_2_fu_456_p1 = grp_fu_615_p3;
assign trunc_ln62_2_fu_456_p4 = {{trunc_ln62_2_fu_456_p1[30:15]}};
endmodule 
