
module SgdLR_sw_SgdLR_sw_Pipeline_label_27 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_0_address0,v2_0_ce0,v2_0_q0,v2_1_address0,v2_1_ce0,v2_1_q0,v2_2_address0,v2_2_ce0,v2_2_q0,v2_3_address0,v2_3_ce0,v2_3_q0,v2_4_address0,v2_4_ce0,v2_4_q0,v2_5_address0,v2_5_ce0,v2_5_q0,v2_6_address0,v2_6_ce0,v2_6_q0,v2_7_address0,v2_7_ce0,v2_7_q0,zext_ln33_2,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v0_4_address0,v0_4_ce0,v0_4_q0,v0_5_address0,v0_5_ce0,v0_5_q0,v0_6_address0,v0_6_ce0,v0_6_q0,v0_7_address0,v0_7_ce0,v0_7_q0,v6_9_out,v6_9_out_ap_vld,grp_fu_631_p_din0,grp_fu_631_p_din1,grp_fu_631_p_opcode,grp_fu_631_p_dout0,grp_fu_631_p_ce,grp_fu_1073_p_din0,grp_fu_1073_p_din1,grp_fu_1073_p_dout0,grp_fu_1073_p_ce);  
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
output  [6:0] v2_0_address0;
output   v2_0_ce0;
input  [31:0] v2_0_q0;
output  [6:0] v2_1_address0;
output   v2_1_ce0;
input  [31:0] v2_1_q0;
output  [6:0] v2_2_address0;
output   v2_2_ce0;
input  [31:0] v2_2_q0;
output  [6:0] v2_3_address0;
output   v2_3_ce0;
input  [31:0] v2_3_q0;
output  [6:0] v2_4_address0;
output   v2_4_ce0;
input  [31:0] v2_4_q0;
output  [6:0] v2_5_address0;
output   v2_5_ce0;
input  [31:0] v2_5_q0;
output  [6:0] v2_6_address0;
output   v2_6_ce0;
input  [31:0] v2_6_q0;
output  [6:0] v2_7_address0;
output   v2_7_ce0;
input  [31:0] v2_7_q0;
input  [22:0] zext_ln33_2;
output  [19:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [19:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [19:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [19:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [19:0] v0_4_address0;
output   v0_4_ce0;
input  [31:0] v0_4_q0;
output  [19:0] v0_5_address0;
output   v0_5_ce0;
input  [31:0] v0_5_q0;
output  [19:0] v0_6_address0;
output   v0_6_ce0;
input  [31:0] v0_6_q0;
output  [19:0] v0_7_address0;
output   v0_7_ce0;
input  [31:0] v0_7_q0;
output  [31:0] v6_9_out;
output   v6_9_out_ap_vld;
output  [31:0] grp_fu_631_p_din0;
output  [31:0] grp_fu_631_p_din1;
output  [0:0] grp_fu_631_p_opcode;
input  [31:0] grp_fu_631_p_dout0;
output   grp_fu_631_p_ce;
output  [31:0] grp_fu_1073_p_din0;
output  [31:0] grp_fu_1073_p_din1;
input  [31:0] grp_fu_1073_p_dout0;
output   grp_fu_1073_p_ce;
reg ap_idle;
reg v6_9_out_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln33_reg_628;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [23:0] zext_ln33_2_cast_fu_350_p1;
reg   [23:0] zext_ln33_2_cast_reg_616;
reg   [10:0] v8_1_reg_621;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln33_fu_367_p2;
reg   [0:0] icmp_ln33_reg_628_pp0_iter1_reg;
reg   [0:0] icmp_ln33_reg_628_pp0_iter2_reg;
reg   [0:0] icmp_ln33_reg_628_pp0_iter3_reg;
wire   [23:0] add_ln35_fu_377_p2;
reg   [23:0] add_ln35_reg_632;
reg   [2:0] trunc_ln35_3_reg_638;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [2:0] trunc_ln35_3_reg_638_pp0_iter1_reg;
reg   [2:0] trunc_ln35_3_reg_638_pp0_iter2_reg;
reg   [2:0] trunc_ln35_3_reg_638_pp0_iter3_reg;
wire   [6:0] trunc_ln33_fu_407_p1;
reg   [6:0] trunc_ln33_reg_643;
reg   [6:0] trunc_ln33_reg_643_pp0_iter2_reg;
reg   [2:0] trunc_ln29_3_reg_648;
reg   [2:0] trunc_ln29_3_reg_648_pp0_iter2_reg;
reg   [2:0] trunc_ln29_3_reg_648_pp0_iter3_reg;
wire   [31:0] v9_fu_467_p19;
reg   [31:0] v9_reg_693;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] v10_fu_550_p19;
reg   [31:0] v10_reg_738;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v11_reg_743;
reg   [31:0] v13_reg_753;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln29_fu_424_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln35_fu_506_p1;
wire    ap_block_pp0_stage4;
reg   [31:0] v12_fu_108;
wire    ap_block_pp0_stage1;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage7_11001;
reg    ap_condition_exit_pp0_iter4_stage1;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [10:0] v8_fu_112;
wire   [10:0] add_ln33_fu_402_p2;
wire    ap_block_pp0_stage1_01001;
reg    v2_0_ce0_local;
reg    v2_1_ce0_local;
reg    v2_2_ce0_local;
reg    v2_3_ce0_local;
reg    v2_4_ce0_local;
reg    v2_5_ce0_local;
reg    v2_6_ce0_local;
reg    v2_7_ce0_local;
reg    v0_0_ce0_local;
reg    v0_1_ce0_local;
reg    v0_2_ce0_local;
reg    v0_3_ce0_local;
reg    v0_4_ce0_local;
reg    v0_5_ce0_local;
reg    v0_6_ce0_local;
reg    v0_7_ce0_local;
wire    ap_block_pp0_stage6;
wire   [23:0] mul_ln35_fu_345_p0;
wire   [25:0] mul_ln35_fu_345_p1;
wire   [23:0] zext_ln33_fu_373_p1;
wire   [23:0] grp_fu_382_p0;
wire   [20:0] grp_fu_382_p1;
wire   [48:0] mul_ln35_fu_345_p2;
wire   [31:0] v9_fu_467_p2;
wire   [31:0] v9_fu_467_p4;
wire   [31:0] v9_fu_467_p6;
wire   [31:0] v9_fu_467_p8;
wire   [31:0] v9_fu_467_p10;
wire   [31:0] v9_fu_467_p12;
wire   [31:0] v9_fu_467_p14;
wire   [31:0] v9_fu_467_p16;
wire   [31:0] v9_fu_467_p17;
wire   [23:0] grp_fu_382_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] v10_fu_550_p2;
wire   [31:0] v10_fu_550_p4;
wire   [31:0] v10_fu_550_p6;
wire   [31:0] v10_fu_550_p8;
wire   [31:0] v10_fu_550_p10;
wire   [31:0] v10_fu_550_p12;
wire   [31:0] v10_fu_550_p14;
wire   [31:0] v10_fu_550_p16;
wire   [31:0] v10_fu_550_p17;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [48:0] mul_ln35_fu_345_p00;
wire   [2:0] v9_fu_467_p1;
wire   [2:0] v9_fu_467_p3;
wire   [2:0] v9_fu_467_p5;
wire   [2:0] v9_fu_467_p7;
wire  signed [2:0] v9_fu_467_p9;
wire  signed [2:0] v9_fu_467_p11;
wire  signed [2:0] v9_fu_467_p13;
wire  signed [2:0] v9_fu_467_p15;
wire   [2:0] v10_fu_550_p1;
wire   [2:0] v10_fu_550_p3;
wire   [2:0] v10_fu_550_p5;
wire   [2:0] v10_fu_550_p7;
wire  signed [2:0] v10_fu_550_p9;
wire  signed [2:0] v10_fu_550_p11;
wire  signed [2:0] v10_fu_550_p13;
wire  signed [2:0] v10_fu_550_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v12_fu_108 = 32'd0;
#0 v8_fu_112 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_mul_24ns_26ns_49_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 24 ),.din1_WIDTH( 26 ),.dout_WIDTH( 49 ))
mul_24ns_26ns_49_1_1_U257(.din0(mul_ln35_fu_345_p0),.din1(mul_ln35_fu_345_p1),.dout(mul_ln35_fu_345_p2));
SgdLR_sw_urem_24ns_21ns_24_28_1 #(.ID( 1 ),.NUM_STAGE( 28 ),.din0_WIDTH( 24 ),.din1_WIDTH( 21 ),.dout_WIDTH( 24 ))
urem_24ns_21ns_24_28_1_U258(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_382_p0),.din1(grp_fu_382_p1),.ce(1'b1),.dout(grp_fu_382_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U259(.din0(v9_fu_467_p2),.din1(v9_fu_467_p4),.din2(v9_fu_467_p6),.din3(v9_fu_467_p8),.din4(v9_fu_467_p10),.din5(v9_fu_467_p12),.din6(v9_fu_467_p14),.din7(v9_fu_467_p16),.def(v9_fu_467_p17),.sel(trunc_ln29_3_reg_648_pp0_iter3_reg),.dout(v9_fu_467_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U260(.din0(v10_fu_550_p2),.din1(v10_fu_550_p4),.din2(v10_fu_550_p6),.din3(v10_fu_550_p8),.din4(v10_fu_550_p10),.din5(v10_fu_550_p12),.din6(v10_fu_550_p14),.din7(v10_fu_550_p16),.def(v10_fu_550_p17),.sel(trunc_ln35_3_reg_638_pp0_iter3_reg),.dout(v10_fu_550_p19));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_fu_108 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v12_fu_108 <= v13_reg_753;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v8_fu_112 <= 11'd0;
        end else if (((icmp_ln33_reg_628 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v8_fu_112 <= add_ln33_fu_402_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln35_reg_632 <= add_ln35_fu_377_p2;
        icmp_ln33_reg_628 <= icmp_ln33_fu_367_p2;
        icmp_ln33_reg_628_pp0_iter1_reg <= icmp_ln33_reg_628;
        icmp_ln33_reg_628_pp0_iter2_reg <= icmp_ln33_reg_628_pp0_iter1_reg;
        icmp_ln33_reg_628_pp0_iter3_reg <= icmp_ln33_reg_628_pp0_iter2_reg;
        v11_reg_743 <= grp_fu_1073_p_dout0;
        v8_1_reg_621 <= v8_fu_112;
        v9_reg_693 <= v9_fu_467_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln29_3_reg_648 <= {{v8_1_reg_621[9:7]}};
        trunc_ln29_3_reg_648_pp0_iter2_reg <= trunc_ln29_3_reg_648;
        trunc_ln29_3_reg_648_pp0_iter3_reg <= trunc_ln29_3_reg_648_pp0_iter2_reg;
        trunc_ln33_reg_643 <= trunc_ln33_fu_407_p1;
        trunc_ln33_reg_643_pp0_iter2_reg <= trunc_ln33_reg_643;
        v13_reg_753 <= grp_fu_631_p_dout0;
        zext_ln33_2_cast_reg_616[22 : 0] <= zext_ln33_2_cast_fu_350_p1[22 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln35_3_reg_638 <= {{mul_ln35_fu_345_p2[46:44]}};
        trunc_ln35_3_reg_638_pp0_iter1_reg <= trunc_ln35_3_reg_638;
        trunc_ln35_3_reg_638_pp0_iter2_reg <= trunc_ln35_3_reg_638_pp0_iter1_reg;
        trunc_ln35_3_reg_638_pp0_iter3_reg <= trunc_ln35_3_reg_638_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v10_reg_738 <= v10_fu_550_p19;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_628 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_628 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln33_reg_628_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter4_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_4_ce0_local = 1'b1;
    end else begin
        v2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_5_ce0_local = 1'b1;
    end else begin
        v2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_6_ce0_local = 1'b1;
    end else begin
        v2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_7_ce0_local = 1'b1;
    end else begin
        v2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln33_reg_628_pp0_iter3_reg == 1'd1))) begin
        v6_9_out_ap_vld = 1'b1;
    end else begin
        v6_9_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign add_ln33_fu_402_p2 = (v8_1_reg_621 + 11'd1);
assign add_ln35_fu_377_p2 = (zext_ln33_fu_373_p1 + zext_ln33_2_cast_reg_616);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign grp_fu_1073_p_ce = 1'b1;
assign grp_fu_1073_p_din0 = v9_reg_693;
assign grp_fu_1073_p_din1 = v10_reg_738;
assign grp_fu_382_p0 = (zext_ln33_fu_373_p1 + zext_ln33_2_cast_reg_616);
assign grp_fu_382_p1 = 24'd576000;
assign grp_fu_631_p_ce = 1'b1;
assign grp_fu_631_p_din0 = v12_fu_108;
assign grp_fu_631_p_din1 = v11_reg_743;
assign grp_fu_631_p_opcode = 2'd0;
assign icmp_ln33_fu_367_p2 = ((v8_fu_112 == 11'd1024) ? 1'b1 : 1'b0);
assign mul_ln35_fu_345_p0 = mul_ln35_fu_345_p00;
assign mul_ln35_fu_345_p00 = add_ln35_reg_632;
assign mul_ln35_fu_345_p1 = 49'd30541990;
assign trunc_ln33_fu_407_p1 = v8_1_reg_621[6:0];
assign v0_0_address0 = zext_ln35_fu_506_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln35_fu_506_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = zext_ln35_fu_506_p1;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = zext_ln35_fu_506_p1;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_4_address0 = zext_ln35_fu_506_p1;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_5_address0 = zext_ln35_fu_506_p1;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_6_address0 = zext_ln35_fu_506_p1;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_7_address0 = zext_ln35_fu_506_p1;
assign v0_7_ce0 = v0_7_ce0_local;
assign v10_fu_550_p10 = v0_4_q0;
assign v10_fu_550_p12 = v0_5_q0;
assign v10_fu_550_p14 = v0_6_q0;
assign v10_fu_550_p16 = v0_7_q0;
assign v10_fu_550_p17 = 'bx;
assign v10_fu_550_p2 = v0_0_q0;
assign v10_fu_550_p4 = v0_1_q0;
assign v10_fu_550_p6 = v0_2_q0;
assign v10_fu_550_p8 = v0_3_q0;
assign v2_0_address0 = zext_ln29_fu_424_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_1_address0 = zext_ln29_fu_424_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_2_address0 = zext_ln29_fu_424_p1;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_3_address0 = zext_ln29_fu_424_p1;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_4_address0 = zext_ln29_fu_424_p1;
assign v2_4_ce0 = v2_4_ce0_local;
assign v2_5_address0 = zext_ln29_fu_424_p1;
assign v2_5_ce0 = v2_5_ce0_local;
assign v2_6_address0 = zext_ln29_fu_424_p1;
assign v2_6_ce0 = v2_6_ce0_local;
assign v2_7_address0 = zext_ln29_fu_424_p1;
assign v2_7_ce0 = v2_7_ce0_local;
assign v6_9_out = v12_fu_108;
assign v9_fu_467_p10 = v2_4_q0;
assign v9_fu_467_p12 = v2_5_q0;
assign v9_fu_467_p14 = v2_6_q0;
assign v9_fu_467_p16 = v2_7_q0;
assign v9_fu_467_p17 = 'bx;
assign v9_fu_467_p2 = v2_0_q0;
assign v9_fu_467_p4 = v2_1_q0;
assign v9_fu_467_p6 = v2_2_q0;
assign v9_fu_467_p8 = v2_3_q0;
assign zext_ln29_fu_424_p1 = trunc_ln33_reg_643_pp0_iter2_reg;
assign zext_ln33_2_cast_fu_350_p1 = zext_ln33_2;
assign zext_ln33_fu_373_p1 = v8_fu_112;
assign zext_ln35_fu_506_p1 = grp_fu_382_p2;
always @ (posedge ap_clk) begin
    zext_ln33_2_cast_reg_616[23] <= 1'b0;
end
endmodule 
