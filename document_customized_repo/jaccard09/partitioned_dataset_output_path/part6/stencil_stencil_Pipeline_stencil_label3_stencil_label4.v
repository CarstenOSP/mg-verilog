
module stencil_stencil_Pipeline_stencil_label3_stencil_label4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,r,c,filter_address0,filter_ce0,filter_q0,filter_address1,filter_ce1,filter_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,empty,temp_out,temp_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] r;
input  [5:0] c;
output  [3:0] filter_address0;
output   filter_ce0;
input  [31:0] filter_q0;
output  [3:0] filter_address1;
output   filter_ce1;
input  [31:0] filter_q1;
output  [9:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [9:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [9:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [9:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [9:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [9:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [9:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [9:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [9:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [9:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [9:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [9:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [9:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [9:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [9:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [9:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
input  [2:0] empty;
output  [31:0] temp_out;
output   temp_out_ap_vld;
reg ap_idle;
reg temp_out_ap_vld;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln10_reg_1013;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_448_p2;
reg   [31:0] reg_456;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] k1_1_reg_1001;
wire   [6:0] empty_12_fu_490_p2;
reg   [6:0] empty_12_reg_1008;
wire   [0:0] icmp_ln10_fu_496_p2;
reg   [0:0] icmp_ln10_reg_1013_pp0_iter1_reg;
reg   [0:0] icmp_ln10_reg_1013_pp0_iter2_reg;
wire   [1:0] add_ln10_1_fu_508_p2;
reg   [1:0] add_ln10_1_reg_1017;
wire   [3:0] p_mid1_fu_526_p2;
reg   [3:0] p_mid1_reg_1023;
reg   [1:0] k2_1_reg_1033;
wire   [2:0] trunc_ln12_fu_592_p1;
reg   [2:0] trunc_ln12_reg_1044;
wire   [0:0] icmp_ln11_fu_634_p2;
reg   [0:0] icmp_ln11_reg_1089;
reg   [0:0] icmp_ln11_reg_1089_pp0_iter1_reg;
reg   [0:0] icmp_ln11_reg_1089_pp0_iter2_reg;
reg  signed [31:0] filter_load_2_reg_1095;
wire   [2:0] select_ln10_2_fu_670_p3;
reg   [2:0] select_ln10_2_reg_1100;
reg   [9:0] lshr_ln12_1_reg_1150;
reg  signed [31:0] filter_load_reg_1155;
wire  signed [31:0] tmp_fu_760_p19;
reg  signed [31:0] tmp_reg_1160;
wire  signed [31:0] tmp_mid1_fu_799_p19;
reg  signed [31:0] tmp_mid1_reg_1165;
reg  signed [31:0] filter_load_1_reg_1170;
wire  signed [31:0] tmp_1_fu_885_p19;
reg  signed [31:0] tmp_1_reg_1215;
wire   [31:0] grp_fu_452_p2;
reg   [31:0] mul_ln12_1_reg_1220;
wire   [31:0] temp_fu_927_p2;
reg   [31:0] temp_reg_1225;
wire   [31:0] add_ln13_fu_934_p2;
reg   [31:0] add_ln13_reg_1230;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln12_4_fu_532_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_fu_581_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_1_fu_606_p1;
wire   [63:0] zext_ln12_5_fu_694_p1;
wire   [63:0] zext_ln12_2_fu_734_p1;
wire   [63:0] zext_ln12_3_fu_838_p1;
reg   [31:0] temp_1_fu_110;
wire   [31:0] temp_4_fu_944_p2;
wire    ap_loop_init;
reg   [1:0] k2_fu_114;
wire   [1:0] select_ln11_fu_873_p3;
reg   [1:0] k1_fu_118;
wire   [1:0] select_ln10_5_fu_714_p3;
reg   [1:0] ap_sig_allocacmp_k1_1;
reg   [1:0] indvar_flatten_fu_122;
wire   [1:0] add_ln10_fu_502_p2;
reg   [1:0] ap_sig_allocacmp_indvar_flatten_load;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_block_pp0_stage1_01001;
reg    filter_ce0_local;
reg   [3:0] filter_address0_local;
reg    filter_ce1_local;
reg    orig_0_ce1_local;
reg    orig_0_ce0_local;
reg   [9:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg    orig_1_ce0_local;
reg   [9:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg    orig_2_ce0_local;
reg   [9:0] orig_2_address0_local;
reg    orig_3_ce1_local;
reg    orig_3_ce0_local;
reg   [9:0] orig_3_address0_local;
reg    orig_4_ce1_local;
reg    orig_4_ce0_local;
reg   [9:0] orig_4_address0_local;
reg    orig_5_ce1_local;
reg    orig_5_ce0_local;
reg   [9:0] orig_5_address0_local;
reg    orig_6_ce1_local;
reg    orig_6_ce0_local;
reg   [9:0] orig_6_address0_local;
reg    orig_7_ce1_local;
reg    orig_7_ce0_local;
reg   [9:0] orig_7_address0_local;
reg  signed [31:0] grp_fu_448_p0;
reg  signed [31:0] grp_fu_448_p1;
wire   [6:0] k1_cast1_fu_486_p1;
wire   [3:0] p_shl_fu_518_p3;
wire   [3:0] zext_ln10_1_fu_514_p1;
wire   [3:0] p_shl9_fu_548_p3;
wire   [3:0] zext_ln10_fu_545_p1;
wire   [3:0] zext_ln8_1_fu_571_p1;
wire   [3:0] empty_11_fu_555_p2;
wire   [3:0] add_ln12_fu_575_p2;
wire   [12:0] zext_ln8_fu_567_p1;
wire   [12:0] tmp_3_fu_561_p3;
wire   [12:0] add_ln12_1_fu_586_p2;
wire   [9:0] lshr_ln_fu_596_p4;
wire   [0:0] tmp_5_fu_618_p3;
wire   [1:0] or_ln_fu_626_p3;
wire   [6:0] k1_cast1_mid1_fu_647_p1;
wire   [6:0] p_mid112_fu_650_p2;
wire   [12:0] tmp_3_mid1_fu_655_p3;
wire   [2:0] tmp_4_fu_677_p4;
wire   [9:0] lshr_ln12_mid1_fu_686_p3;
wire   [1:0] select_ln10_4_fu_706_p3;
wire   [3:0] zext_ln5_1_fu_724_p1;
wire   [3:0] select_ln10_fu_640_p3;
wire   [3:0] add_ln12_2_fu_728_p2;
wire   [12:0] zext_ln5_fu_720_p1;
wire   [12:0] select_ln10_1_fu_662_p3;
wire   [12:0] add_ln12_3_fu_739_p2;
wire   [31:0] tmp_fu_760_p17;
wire   [31:0] tmp_mid1_fu_799_p17;
wire   [0:0] bit_sel_fu_849_p3;
wire   [0:0] xor_ln11_fu_856_p2;
wire   [0:0] trunc_ln11_fu_862_p1;
wire   [1:0] k2_op_fu_865_p3;
wire   [31:0] tmp_1_fu_885_p17;
wire   [31:0] select_ln10_3_fu_939_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_fu_760_p1;
wire   [2:0] tmp_fu_760_p3;
wire   [2:0] tmp_fu_760_p5;
wire   [2:0] tmp_fu_760_p7;
wire  signed [2:0] tmp_fu_760_p9;
wire  signed [2:0] tmp_fu_760_p11;
wire  signed [2:0] tmp_fu_760_p13;
wire  signed [2:0] tmp_fu_760_p15;
wire   [2:0] tmp_mid1_fu_799_p1;
wire   [2:0] tmp_mid1_fu_799_p3;
wire   [2:0] tmp_mid1_fu_799_p5;
wire   [2:0] tmp_mid1_fu_799_p7;
wire  signed [2:0] tmp_mid1_fu_799_p9;
wire  signed [2:0] tmp_mid1_fu_799_p11;
wire  signed [2:0] tmp_mid1_fu_799_p13;
wire  signed [2:0] tmp_mid1_fu_799_p15;
wire  signed [2:0] tmp_1_fu_885_p1;
wire   [2:0] tmp_1_fu_885_p3;
wire   [2:0] tmp_1_fu_885_p5;
wire   [2:0] tmp_1_fu_885_p7;
wire   [2:0] tmp_1_fu_885_p9;
wire  signed [2:0] tmp_1_fu_885_p11;
wire  signed [2:0] tmp_1_fu_885_p13;
wire  signed [2:0] tmp_1_fu_885_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 temp_1_fu_110 = 32'd0;
#0 k2_fu_114 = 2'd0;
#0 k1_fu_118 = 2'd0;
#0 indvar_flatten_fu_122 = 2'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_448_p0),.din1(grp_fu_448_p1),.ce(1'b1),.dout(grp_fu_448_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(filter_load_2_reg_1095),.din1(tmp_mid1_reg_1165),.ce(1'b1),.dout(grp_fu_452_p2));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U3(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_fu_760_p17),.sel(trunc_ln12_reg_1044),.dout(tmp_fu_760_p19));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U4(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(tmp_mid1_fu_799_p17),.sel(empty),.dout(tmp_mid1_fu_799_p19));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U5(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(tmp_1_fu_885_p17),.sel(select_ln10_2_reg_1100),.dout(tmp_1_fu_885_p19));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln10_fu_496_p2 == 1'd0))) begin
            indvar_flatten_fu_122 <= add_ln10_fu_502_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_122 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k1_fu_118 <= 2'd0;
    end else if (((icmp_ln10_reg_1013 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k1_fu_118 <= select_ln10_5_fu_714_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k2_fu_114 <= 2'd0;
        end else if (((icmp_ln10_reg_1013 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            k2_fu_114 <= select_ln11_fu_873_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            temp_1_fu_110 <= 32'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            temp_1_fu_110 <= temp_4_fu_944_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln10_1_reg_1017 <= add_ln10_1_fu_508_p2;
        empty_12_reg_1008 <= empty_12_fu_490_p2;
        icmp_ln10_reg_1013 <= icmp_ln10_fu_496_p2;
        icmp_ln10_reg_1013_pp0_iter1_reg <= icmp_ln10_reg_1013;
        icmp_ln10_reg_1013_pp0_iter2_reg <= icmp_ln10_reg_1013_pp0_iter1_reg;
        k1_1_reg_1001 <= ap_sig_allocacmp_k1_1;
        mul_ln12_1_reg_1220 <= grp_fu_452_p2;
        p_mid1_reg_1023 <= p_mid1_fu_526_p2;
        tmp_mid1_reg_1165 <= tmp_mid1_fu_799_p19;
        tmp_reg_1160 <= tmp_fu_760_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_reg_1230 <= add_ln13_fu_934_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln11_reg_1089 <= icmp_ln11_fu_634_p2;
        icmp_ln11_reg_1089_pp0_iter1_reg <= icmp_ln11_reg_1089;
        icmp_ln11_reg_1089_pp0_iter2_reg <= icmp_ln11_reg_1089_pp0_iter1_reg;
        k2_1_reg_1033 <= k2_fu_114;
        lshr_ln12_1_reg_1150 <= {{add_ln12_3_fu_739_p2[12:3]}};
        select_ln10_2_reg_1100 <= select_ln10_2_fu_670_p3;
        tmp_1_reg_1215 <= tmp_1_fu_885_p19;
        trunc_ln12_reg_1044 <= trunc_ln12_fu_592_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        filter_load_1_reg_1170 <= filter_q0;
        filter_load_reg_1155 <= filter_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        filter_load_2_reg_1095 <= filter_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_456 <= grp_fu_448_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_reg_1225 <= temp_fu_927_p2;
    end
end
always @ (*) begin
    if (((icmp_ln10_reg_1013 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_reg_1013_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 2'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k1_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_k1_1 = k1_fu_118;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            filter_address0_local = zext_ln12_2_fu_734_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            filter_address0_local = zext_ln12_4_fu_532_p1;
        end else begin
            filter_address0_local = 'bx;
        end
    end else begin
        filter_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        filter_ce0_local = 1'b1;
    end else begin
        filter_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        filter_ce1_local = 1'b1;
    end else begin
        filter_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_448_p0 = filter_load_1_reg_1170;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_448_p0 = filter_load_reg_1155;
    end else begin
        grp_fu_448_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_448_p1 = tmp_1_reg_1215;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_448_p1 = tmp_reg_1160;
    end else begin
        grp_fu_448_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_3_fu_838_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_5_fu_694_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_3_fu_838_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_5_fu_694_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_3_fu_838_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_5_fu_694_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_3_fu_838_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_5_fu_694_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_3_fu_838_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_5_fu_694_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln12_3_fu_838_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_5_fu_694_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_3_fu_838_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_5_fu_694_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_3_fu_838_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_5_fu_694_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_reg_1013_pp0_iter2_reg == 1'd1))) begin
        temp_out_ap_vld = 1'b1;
    end else begin
        temp_out_ap_vld = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln10_1_fu_508_p2 = (ap_sig_allocacmp_k1_1 + 2'd1);
assign add_ln10_fu_502_p2 = (ap_sig_allocacmp_indvar_flatten_load + 2'd1);
assign add_ln12_1_fu_586_p2 = (zext_ln8_fu_567_p1 + tmp_3_fu_561_p3);
assign add_ln12_2_fu_728_p2 = (zext_ln5_1_fu_724_p1 + select_ln10_fu_640_p3);
assign add_ln12_3_fu_739_p2 = (zext_ln5_fu_720_p1 + select_ln10_1_fu_662_p3);
assign add_ln12_fu_575_p2 = (zext_ln8_1_fu_571_p1 + empty_11_fu_555_p2);
assign add_ln13_fu_934_p2 = (mul_ln12_1_reg_1220 + temp_fu_927_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bit_sel_fu_849_p3 = k2_1_reg_1033[2'd1];
assign empty_11_fu_555_p2 = (p_shl9_fu_548_p3 - zext_ln10_fu_545_p1);
assign empty_12_fu_490_p2 = (k1_cast1_fu_486_p1 + r);
assign filter_address0 = filter_address0_local;
assign filter_address1 = zext_ln12_fu_581_p1;
assign filter_ce0 = filter_ce0_local;
assign filter_ce1 = filter_ce1_local;
assign icmp_ln10_fu_496_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_634_p2 = ((or_ln_fu_626_p3 == 2'd3) ? 1'b1 : 1'b0);
assign k1_cast1_fu_486_p1 = ap_sig_allocacmp_k1_1;
assign k1_cast1_mid1_fu_647_p1 = add_ln10_1_reg_1017;
assign k2_op_fu_865_p3 = {{xor_ln11_fu_856_p2}, {trunc_ln11_fu_862_p1}};
assign lshr_ln12_mid1_fu_686_p3 = {{p_mid112_fu_650_p2}, {tmp_4_fu_677_p4}};
assign lshr_ln_fu_596_p4 = {{add_ln12_1_fu_586_p2[12:3]}};
assign or_ln_fu_626_p3 = {{tmp_5_fu_618_p3}, {1'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = zext_ln12_1_fu_606_p1;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = zext_ln12_1_fu_606_p1;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = zext_ln12_1_fu_606_p1;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = zext_ln12_1_fu_606_p1;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign orig_4_address0 = orig_4_address0_local;
assign orig_4_address1 = zext_ln12_1_fu_606_p1;
assign orig_4_ce0 = orig_4_ce0_local;
assign orig_4_ce1 = orig_4_ce1_local;
assign orig_5_address0 = orig_5_address0_local;
assign orig_5_address1 = zext_ln12_1_fu_606_p1;
assign orig_5_ce0 = orig_5_ce0_local;
assign orig_5_ce1 = orig_5_ce1_local;
assign orig_6_address0 = orig_6_address0_local;
assign orig_6_address1 = zext_ln12_1_fu_606_p1;
assign orig_6_ce0 = orig_6_ce0_local;
assign orig_6_ce1 = orig_6_ce1_local;
assign orig_7_address0 = orig_7_address0_local;
assign orig_7_address1 = zext_ln12_1_fu_606_p1;
assign orig_7_ce0 = orig_7_ce0_local;
assign orig_7_ce1 = orig_7_ce1_local;
assign p_mid112_fu_650_p2 = (k1_cast1_mid1_fu_647_p1 + r);
assign p_mid1_fu_526_p2 = (p_shl_fu_518_p3 - zext_ln10_1_fu_514_p1);
assign p_shl9_fu_548_p3 = {{k1_1_reg_1001}, {2'd0}};
assign p_shl_fu_518_p3 = {{add_ln10_1_fu_508_p2}, {2'd0}};
assign select_ln10_1_fu_662_p3 = ((icmp_ln11_fu_634_p2[0:0] == 1'b1) ? tmp_3_mid1_fu_655_p3 : tmp_3_fu_561_p3);
assign select_ln10_2_fu_670_p3 = ((icmp_ln11_fu_634_p2[0:0] == 1'b1) ? empty : trunc_ln12_fu_592_p1);
assign select_ln10_3_fu_939_p3 = ((icmp_ln11_reg_1089_pp0_iter2_reg[0:0] == 1'b1) ? add_ln13_reg_1230 : temp_reg_1225);
assign select_ln10_4_fu_706_p3 = ((icmp_ln11_fu_634_p2[0:0] == 1'b1) ? 2'd1 : or_ln_fu_626_p3);
assign select_ln10_5_fu_714_p3 = ((icmp_ln11_fu_634_p2[0:0] == 1'b1) ? add_ln10_1_reg_1017 : k1_1_reg_1001);
assign select_ln10_fu_640_p3 = ((icmp_ln11_fu_634_p2[0:0] == 1'b1) ? p_mid1_reg_1023 : empty_11_fu_555_p2);
assign select_ln11_fu_873_p3 = ((icmp_ln11_reg_1089[0:0] == 1'b1) ? 2'd2 : k2_op_fu_865_p3);
assign temp_4_fu_944_p2 = (reg_456 + select_ln10_3_fu_939_p3);
assign temp_fu_927_p2 = (reg_456 + temp_1_fu_110);
assign temp_out = temp_fu_927_p2;
assign tmp_1_fu_885_p17 = 'bx;
assign tmp_3_fu_561_p3 = {{empty_12_reg_1008}, {c}};
assign tmp_3_mid1_fu_655_p3 = {{p_mid112_fu_650_p2}, {c}};
assign tmp_4_fu_677_p4 = {{c[5:3]}};
assign tmp_5_fu_618_p3 = k2_fu_114[32'd1];
assign tmp_fu_760_p17 = 'bx;
assign tmp_mid1_fu_799_p17 = 'bx;
assign trunc_ln11_fu_862_p1 = k2_1_reg_1033[0:0];
assign trunc_ln12_fu_592_p1 = add_ln12_1_fu_586_p2[2:0];
assign xor_ln11_fu_856_p2 = (bit_sel_fu_849_p3 ^ 1'd1);
assign zext_ln10_1_fu_514_p1 = add_ln10_1_fu_508_p2;
assign zext_ln10_fu_545_p1 = k1_1_reg_1001;
assign zext_ln12_1_fu_606_p1 = lshr_ln_fu_596_p4;
assign zext_ln12_2_fu_734_p1 = add_ln12_2_fu_728_p2;
assign zext_ln12_3_fu_838_p1 = lshr_ln12_1_reg_1150;
assign zext_ln12_4_fu_532_p1 = p_mid1_fu_526_p2;
assign zext_ln12_5_fu_694_p1 = lshr_ln12_mid1_fu_686_p3;
assign zext_ln12_fu_581_p1 = add_ln12_fu_575_p2;
assign zext_ln5_1_fu_724_p1 = select_ln10_4_fu_706_p3;
assign zext_ln5_fu_720_p1 = select_ln10_4_fu_706_p3;
assign zext_ln8_1_fu_571_p1 = k2_fu_114;
assign zext_ln8_fu_567_p1 = k2_fu_114;
endmodule 
