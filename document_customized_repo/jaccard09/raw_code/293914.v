module backprop_backprop_Pipeline_label_2_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v0_4_address0,v0_4_ce0,v0_4_q0,v0_5_address0,v0_5_ce0,v0_5_q0,v0_6_address0,v0_6_ce0,v0_6_q0,v0_7_address0,v0_7_ce0,v0_7_q0,phi_mul,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v6_2_address0,v6_2_ce0,v6_2_q0,v6_3_address0,v6_3_ce0,v6_3_q0,v6_4_address0,v6_4_ce0,v6_4_q0,v6_5_address0,v6_5_ce0,v6_5_q0,v6_6_address0,v6_6_ce0,v6_6_q0,v6_7_address0,v6_7_ce0,v6_7_q0,v20_address0,v20_ce0,v20_we0,v20_d0,v20_1_address0,v20_1_ce0,v20_1_we0,v20_1_d0,v20_2_address0,v20_2_ce0,v20_2_we0,v20_2_d0,v20_3_address0,v20_3_ce0,v20_3_we0,v20_3_d0,grp_fu_3324_p_din0,grp_fu_3324_p_din1,grp_fu_3324_p_opcode,grp_fu_3324_p_dout0,grp_fu_3324_p_ce,grp_fu_3336_p_din0,grp_fu_3336_p_din1,grp_fu_3336_p_dout0,grp_fu_3336_p_ce); 
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
output  [6:0] v0_0_address0;
output   v0_0_ce0;
input  [63:0] v0_0_q0;
output  [6:0] v0_1_address0;
output   v0_1_ce0;
input  [63:0] v0_1_q0;
output  [6:0] v0_2_address0;
output   v0_2_ce0;
input  [63:0] v0_2_q0;
output  [6:0] v0_3_address0;
output   v0_3_ce0;
input  [63:0] v0_3_q0;
output  [6:0] v0_4_address0;
output   v0_4_ce0;
input  [63:0] v0_4_q0;
output  [6:0] v0_5_address0;
output   v0_5_ce0;
input  [63:0] v0_5_q0;
output  [6:0] v0_6_address0;
output   v0_6_ce0;
input  [63:0] v0_6_q0;
output  [6:0] v0_7_address0;
output   v0_7_ce0;
input  [63:0] v0_7_q0;
input  [11:0] phi_mul;
output  [8:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [8:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [8:0] v6_2_address0;
output   v6_2_ce0;
input  [63:0] v6_2_q0;
output  [8:0] v6_3_address0;
output   v6_3_ce0;
input  [63:0] v6_3_q0;
output  [8:0] v6_4_address0;
output   v6_4_ce0;
input  [63:0] v6_4_q0;
output  [8:0] v6_5_address0;
output   v6_5_ce0;
input  [63:0] v6_5_q0;
output  [8:0] v6_6_address0;
output   v6_6_ce0;
input  [63:0] v6_6_q0;
output  [8:0] v6_7_address0;
output   v6_7_ce0;
input  [63:0] v6_7_q0;
output  [3:0] v20_address0;
output   v20_ce0;
output   v20_we0;
output  [63:0] v20_d0;
output  [3:0] v20_1_address0;
output   v20_1_ce0;
output   v20_1_we0;
output  [63:0] v20_1_d0;
output  [3:0] v20_2_address0;
output   v20_2_ce0;
output   v20_2_we0;
output  [63:0] v20_2_d0;
output  [3:0] v20_3_address0;
output   v20_3_ce0;
output   v20_3_we0;
output  [63:0] v20_3_d0;
output  [63:0] grp_fu_3324_p_din0;
output  [63:0] grp_fu_3324_p_din1;
output  [0:0] grp_fu_3324_p_opcode;
input  [63:0] grp_fu_3324_p_dout0;
output   grp_fu_3324_p_ce;
output  [63:0] grp_fu_3336_p_din0;
output  [63:0] grp_fu_3336_p_din1;
input  [63:0] grp_fu_3336_p_dout0;
output   grp_fu_3336_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln66_reg_834;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln66_fu_453_p2;
reg   [0:0] icmp_ln66_reg_834_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_834_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_834_pp0_iter3_reg;
reg   [3:0] v24_load_reg_838;
wire   [0:0] icmp_ln68_fu_471_p2;
reg   [0:0] icmp_ln68_reg_843;
reg   [0:0] icmp_ln68_reg_843_pp0_iter1_reg;
reg   [0:0] icmp_ln68_reg_843_pp0_iter2_reg;
reg   [0:0] icmp_ln68_reg_843_pp0_iter3_reg;
wire   [1:0] trunc_ln66_fu_495_p1;
reg   [1:0] trunc_ln66_reg_854;
reg   [1:0] trunc_ln66_reg_854_pp0_iter1_reg;
reg   [1:0] trunc_ln66_reg_854_pp0_iter2_reg;
reg   [1:0] trunc_ln66_reg_854_pp0_iter3_reg;
reg   [1:0] trunc_ln66_reg_854_pp0_iter4_reg;
reg   [3:0] lshr_ln1_reg_858;
reg   [3:0] lshr_ln1_reg_858_pp0_iter1_reg;
reg   [3:0] lshr_ln1_reg_858_pp0_iter2_reg;
reg   [3:0] lshr_ln1_reg_858_pp0_iter3_reg;
reg   [3:0] lshr_ln1_reg_858_pp0_iter4_reg;
wire   [3:0] select_ln66_fu_519_p3;
reg   [3:0] select_ln66_reg_863;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [11:0] add_ln70_fu_529_p2;
reg   [11:0] add_ln70_reg_868;
wire   [0:0] icmp_ln68_1_fu_546_p2;
reg   [0:0] icmp_ln68_1_reg_874;
reg   [0:0] icmp_ln68_1_reg_874_pp0_iter1_reg;
reg   [0:0] icmp_ln68_1_reg_874_pp0_iter2_reg;
reg   [0:0] icmp_ln68_1_reg_874_pp0_iter3_reg;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [9:0] grp_fu_792_p3;
reg   [9:0] add_ln69_reg_883;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [9:0] add_ln69_reg_883_pp0_iter1_reg;
reg   [2:0] trunc_ln4_reg_889;
reg   [2:0] trunc_ln3_reg_894;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] v25_fu_659_p19;
reg   [63:0] v25_reg_979;
wire   [63:0] v26_fu_730_p19;
reg   [63:0] v26_reg_984;
reg   [63:0] v27_reg_989;
wire   [63:0] select_ln66_1_fu_772_p3;
reg   [63:0] v29_reg_999;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln69_fu_603_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_fu_615_p1;
wire   [63:0] zext_ln66_fu_785_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] v28_fu_140;
wire    ap_loop_init;
reg   [3:0] v24_fu_144;
wire   [3:0] add_ln68_fu_540_p2;
reg   [3:0] ap_sig_allocacmp_v24_load;
reg   [6:0] v23_fu_148;
wire   [6:0] select_ln66_2_fu_483_p3;
reg   [6:0] ap_sig_allocacmp_v23_load;
reg   [9:0] indvar_flatten_fu_152;
wire   [9:0] add_ln66_fu_459_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v0_0_ce0_local;
reg    v0_1_ce0_local;
reg    v0_2_ce0_local;
reg    v0_3_ce0_local;
reg    v0_4_ce0_local;
reg    v0_5_ce0_local;
reg    v0_6_ce0_local;
reg    v0_7_ce0_local;
reg    v6_0_ce0_local;
reg    v6_1_ce0_local;
reg    v6_2_ce0_local;
reg    v6_3_ce0_local;
reg    v6_4_ce0_local;
reg    v6_5_ce0_local;
reg    v6_6_ce0_local;
reg    v6_7_ce0_local;
reg    v20_2_we0_local;
reg    v20_2_ce0_local;
reg    v20_1_we0_local;
reg    v20_1_ce0_local;
reg    v20_we0_local;
reg    v20_ce0_local;
reg    v20_3_we0_local;
reg    v20_3_ce0_local;
wire    ap_block_pp0_stage2;
wire   [6:0] add_ln66_1_fu_477_p2;
wire   [11:0] zext_ln68_1_fu_525_p1;
wire   [11:0] grp_fu_534_p0;
wire   [9:0] grp_fu_534_p1;
wire   [7:0] grp_fu_560_p1;
wire    ap_block_pp0_stage3;
wire   [11:0] mul_ln70_fu_568_p0;
wire   [13:0] mul_ln70_fu_568_p1;
wire   [24:0] mul_ln70_fu_568_p2;
wire    ap_block_pp0_stage4;
wire   [9:0] mul_ln69_fu_587_p0;
wire   [11:0] mul_ln69_fu_587_p1;
wire   [20:0] mul_ln69_fu_587_p2;
wire   [9:0] grp_fu_560_p2;
wire   [11:0] grp_fu_534_p2;
wire   [63:0] v25_fu_659_p2;
wire   [63:0] v25_fu_659_p4;
wire   [63:0] v25_fu_659_p6;
wire   [63:0] v25_fu_659_p8;
wire   [63:0] v25_fu_659_p10;
wire   [63:0] v25_fu_659_p12;
wire   [63:0] v25_fu_659_p14;
wire   [63:0] v25_fu_659_p16;
wire   [63:0] v25_fu_659_p17;
wire   [63:0] v26_fu_730_p2;
wire   [63:0] v26_fu_730_p4;
wire   [63:0] v26_fu_730_p6;
wire   [63:0] v26_fu_730_p8;
wire   [63:0] v26_fu_730_p10;
wire   [63:0] v26_fu_730_p12;
wire   [63:0] v26_fu_730_p14;
wire   [63:0] v26_fu_730_p16;
wire   [63:0] v26_fu_730_p17;
wire   [6:0] grp_fu_792_p0;
wire   [3:0] grp_fu_792_p1;
wire   [3:0] grp_fu_792_p2;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage7_11001;
reg    ap_condition_exit_pp0_iter3_stage1;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] grp_fu_792_p00;
wire   [9:0] grp_fu_792_p20;
wire   [20:0] mul_ln69_fu_587_p00;
wire   [24:0] mul_ln70_fu_568_p00;
wire   [2:0] v25_fu_659_p1;
wire   [2:0] v25_fu_659_p3;
wire   [2:0] v25_fu_659_p5;
wire   [2:0] v25_fu_659_p7;
wire  signed [2:0] v25_fu_659_p9;
wire  signed [2:0] v25_fu_659_p11;
wire  signed [2:0] v25_fu_659_p13;
wire  signed [2:0] v25_fu_659_p15;
wire   [2:0] v26_fu_730_p1;
wire   [2:0] v26_fu_730_p3;
wire   [2:0] v26_fu_730_p5;
wire   [2:0] v26_fu_730_p7;
wire  signed [2:0] v26_fu_730_p9;
wire  signed [2:0] v26_fu_730_p11;
wire  signed [2:0] v26_fu_730_p13;
wire  signed [2:0] v26_fu_730_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_140 = 64'd0;
#0 v24_fu_144 = 4'd0;
#0 v23_fu_148 = 7'd0;
#0 indvar_flatten_fu_152 = 10'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_12ns_10ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 10 ),.dout_WIDTH( 12 ))
urem_12ns_10ns_12_16_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_534_p0),.din1(grp_fu_534_p1),.ce(1'b1),.dout(grp_fu_534_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_792_p3),.din1(grp_fu_560_p1),.ce(1'b1),.dout(grp_fu_560_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U19(.din0(mul_ln70_fu_568_p0),.din1(mul_ln70_fu_568_p1),.dout(mul_ln70_fu_568_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U20(.din0(mul_ln69_fu_587_p0),.din1(mul_ln69_fu_587_p1),.dout(mul_ln69_fu_587_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U21(.din0(v25_fu_659_p2),.din1(v25_fu_659_p4),.din2(v25_fu_659_p6),.din3(v25_fu_659_p8),.din4(v25_fu_659_p10),.din5(v25_fu_659_p12),.din6(v25_fu_659_p14),.din7(v25_fu_659_p16),.def(v25_fu_659_p17),.sel(trunc_ln3_reg_894),.dout(v25_fu_659_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U22(.din0(v26_fu_730_p2),.din1(v26_fu_730_p4),.din2(v26_fu_730_p6),.din3(v26_fu_730_p8),.din4(v26_fu_730_p10),.din5(v26_fu_730_p12),.din6(v26_fu_730_p14),.din7(v26_fu_730_p16),.def(v26_fu_730_p17),.sel(trunc_ln4_reg_889),.dout(v26_fu_730_p19));
backprop_mac_muladd_7ns_4ns_4ns_10_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 4 ),.din2_WIDTH( 4 ),.dout_WIDTH( 10 ))
mac_muladd_7ns_4ns_4ns_10_4_1_U23(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_792_p0),.din1(grp_fu_792_p1),.din2(grp_fu_792_p2),.ce(1'b1),.dout(grp_fu_792_p3));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln66_fu_453_p2 == 1'd0))) begin
            indvar_flatten_fu_152 <= add_ln66_fu_459_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_152 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln66_fu_453_p2 == 1'd0))) begin
            v23_fu_148 <= select_ln66_2_fu_483_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v23_fu_148 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v24_fu_144 <= 4'd0;
    end else if (((icmp_ln66_reg_834 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v24_fu_144 <= add_ln68_fu_540_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v28_fu_140 <= 64'd0;
        end else if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
            v28_fu_140 <= grp_fu_3324_p_dout0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln69_reg_883 <= grp_fu_792_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln69_reg_883_pp0_iter1_reg <= add_ln69_reg_883;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln70_reg_868 <= add_ln70_fu_529_p2;
        icmp_ln68_1_reg_874 <= icmp_ln68_1_fu_546_p2;
        icmp_ln68_1_reg_874_pp0_iter1_reg <= icmp_ln68_1_reg_874;
        icmp_ln68_1_reg_874_pp0_iter2_reg <= icmp_ln68_1_reg_874_pp0_iter1_reg;
        icmp_ln68_1_reg_874_pp0_iter3_reg <= icmp_ln68_1_reg_874_pp0_iter2_reg;
        select_ln66_reg_863 <= select_ln66_fu_519_p3;
        trunc_ln4_reg_889 <= {{mul_ln70_fu_568_p2[23:21]}};
        v25_reg_979 <= v25_fu_659_p19;
        v26_reg_984 <= v26_fu_730_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln66_reg_834 <= icmp_ln66_fu_453_p2;
        icmp_ln66_reg_834_pp0_iter1_reg <= icmp_ln66_reg_834;
        icmp_ln66_reg_834_pp0_iter2_reg <= icmp_ln66_reg_834_pp0_iter1_reg;
        icmp_ln66_reg_834_pp0_iter3_reg <= icmp_ln66_reg_834_pp0_iter2_reg;
        icmp_ln68_reg_843 <= icmp_ln68_fu_471_p2;
        icmp_ln68_reg_843_pp0_iter1_reg <= icmp_ln68_reg_843;
        icmp_ln68_reg_843_pp0_iter2_reg <= icmp_ln68_reg_843_pp0_iter1_reg;
        icmp_ln68_reg_843_pp0_iter3_reg <= icmp_ln68_reg_843_pp0_iter2_reg;
        lshr_ln1_reg_858 <= {{select_ln66_2_fu_483_p3[5:2]}};
        lshr_ln1_reg_858_pp0_iter1_reg <= lshr_ln1_reg_858;
        lshr_ln1_reg_858_pp0_iter2_reg <= lshr_ln1_reg_858_pp0_iter1_reg;
        lshr_ln1_reg_858_pp0_iter3_reg <= lshr_ln1_reg_858_pp0_iter2_reg;
        lshr_ln1_reg_858_pp0_iter4_reg <= lshr_ln1_reg_858_pp0_iter3_reg;
        trunc_ln66_reg_854 <= trunc_ln66_fu_495_p1;
        trunc_ln66_reg_854_pp0_iter1_reg <= trunc_ln66_reg_854;
        trunc_ln66_reg_854_pp0_iter2_reg <= trunc_ln66_reg_854_pp0_iter1_reg;
        trunc_ln66_reg_854_pp0_iter3_reg <= trunc_ln66_reg_854_pp0_iter2_reg;
        trunc_ln66_reg_854_pp0_iter4_reg <= trunc_ln66_reg_854_pp0_iter3_reg;
        v24_load_reg_838 <= ap_sig_allocacmp_v24_load;
        v27_reg_989 <= grp_fu_3336_p_dout0;
        v29_reg_999 <= grp_fu_3324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        trunc_ln3_reg_894 <= {{mul_ln69_fu_587_p2[19:17]}};
    end
end
always @ (*) begin
    if (((icmp_ln66_reg_834 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln66_reg_834_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
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
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v23_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v23_load = v23_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v24_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v24_load = v24_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_1_ce0_local = 1'b1;
    end else begin
        v20_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln68_1_reg_874_pp0_iter3_reg == 1'd1) & (trunc_ln66_reg_854_pp0_iter4_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_1_we0_local = 1'b1;
    end else begin
        v20_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_2_ce0_local = 1'b1;
    end else begin
        v20_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln68_1_reg_874_pp0_iter3_reg == 1'd1) & (trunc_ln66_reg_854_pp0_iter4_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_2_we0_local = 1'b1;
    end else begin
        v20_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_3_ce0_local = 1'b1;
    end else begin
        v20_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln68_1_reg_874_pp0_iter3_reg == 1'd1) & (trunc_ln66_reg_854_pp0_iter4_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_3_we0_local = 1'b1;
    end else begin
        v20_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln68_1_reg_874_pp0_iter3_reg == 1'd1) & (trunc_ln66_reg_854_pp0_iter4_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_we0_local = 1'b1;
    end else begin
        v20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_2_ce0_local = 1'b1;
    end else begin
        v6_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_3_ce0_local = 1'b1;
    end else begin
        v6_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_4_ce0_local = 1'b1;
    end else begin
        v6_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_5_ce0_local = 1'b1;
    end else begin
        v6_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_6_ce0_local = 1'b1;
    end else begin
        v6_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_7_ce0_local = 1'b1;
    end else begin
        v6_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
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
assign add_ln66_1_fu_477_p2 = (ap_sig_allocacmp_v23_load + 7'd1);
assign add_ln66_fu_459_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln68_fu_540_p2 = (select_ln66_fu_519_p3 + 4'd1);
assign add_ln70_fu_529_p2 = (zext_ln68_1_fu_525_p1 + phi_mul);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign grp_fu_3324_p_ce = 1'b1;
assign grp_fu_3324_p_din0 = select_ln66_1_fu_772_p3;
assign grp_fu_3324_p_din1 = v27_reg_989;
assign grp_fu_3324_p_opcode = 2'd0;
assign grp_fu_3336_p_ce = 1'b1;
assign grp_fu_3336_p_din0 = v25_reg_979;
assign grp_fu_3336_p_din1 = v26_reg_984;
assign grp_fu_534_p0 = (zext_ln68_1_fu_525_p1 + phi_mul);
assign grp_fu_534_p1 = 12'd265;
assign grp_fu_560_p1 = 10'd104;
assign grp_fu_792_p0 = grp_fu_792_p00;
assign grp_fu_792_p00 = select_ln66_2_fu_483_p3;
assign grp_fu_792_p1 = 10'd13;
assign grp_fu_792_p2 = grp_fu_792_p20;
assign grp_fu_792_p20 = select_ln66_reg_863;
assign icmp_ln66_fu_453_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd832) ? 1'b1 : 1'b0);
assign icmp_ln68_1_fu_546_p2 = ((add_ln68_fu_540_p2 == 4'd13) ? 1'b1 : 1'b0);
assign icmp_ln68_fu_471_p2 = ((ap_sig_allocacmp_v24_load == 4'd13) ? 1'b1 : 1'b0);
assign mul_ln69_fu_587_p0 = mul_ln69_fu_587_p00;
assign mul_ln69_fu_587_p00 = add_ln69_reg_883_pp0_iter1_reg;
assign mul_ln69_fu_587_p1 = 21'd1261;
assign mul_ln70_fu_568_p0 = mul_ln70_fu_568_p00;
assign mul_ln70_fu_568_p00 = add_ln70_reg_868;
assign mul_ln70_fu_568_p1 = 25'd7914;
assign select_ln66_1_fu_772_p3 = ((icmp_ln68_reg_843_pp0_iter3_reg[0:0] == 1'b1) ? 64'd0 : v28_fu_140);
assign select_ln66_2_fu_483_p3 = ((icmp_ln68_fu_471_p2[0:0] == 1'b1) ? add_ln66_1_fu_477_p2 : ap_sig_allocacmp_v23_load);
assign select_ln66_fu_519_p3 = ((icmp_ln68_reg_843[0:0] == 1'b1) ? 4'd0 : v24_load_reg_838);
assign trunc_ln66_fu_495_p1 = select_ln66_2_fu_483_p3[1:0];
assign v0_0_address0 = zext_ln69_fu_603_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln69_fu_603_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = zext_ln69_fu_603_p1;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = zext_ln69_fu_603_p1;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_4_address0 = zext_ln69_fu_603_p1;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_5_address0 = zext_ln69_fu_603_p1;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_6_address0 = zext_ln69_fu_603_p1;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_7_address0 = zext_ln69_fu_603_p1;
assign v0_7_ce0 = v0_7_ce0_local;
assign v20_1_address0 = zext_ln66_fu_785_p1;
assign v20_1_ce0 = v20_1_ce0_local;
assign v20_1_d0 = v29_reg_999;
assign v20_1_we0 = v20_1_we0_local;
assign v20_2_address0 = zext_ln66_fu_785_p1;
assign v20_2_ce0 = v20_2_ce0_local;
assign v20_2_d0 = v29_reg_999;
assign v20_2_we0 = v20_2_we0_local;
assign v20_3_address0 = zext_ln66_fu_785_p1;
assign v20_3_ce0 = v20_3_ce0_local;
assign v20_3_d0 = v29_reg_999;
assign v20_3_we0 = v20_3_we0_local;
assign v20_address0 = zext_ln66_fu_785_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_d0 = v29_reg_999;
assign v20_we0 = v20_we0_local;
assign v25_fu_659_p10 = v0_4_q0;
assign v25_fu_659_p12 = v0_5_q0;
assign v25_fu_659_p14 = v0_6_q0;
assign v25_fu_659_p16 = v0_7_q0;
assign v25_fu_659_p17 = 'bx;
assign v25_fu_659_p2 = v0_0_q0;
assign v25_fu_659_p4 = v0_1_q0;
assign v25_fu_659_p6 = v0_2_q0;
assign v25_fu_659_p8 = v0_3_q0;
assign v26_fu_730_p10 = v6_4_q0;
assign v26_fu_730_p12 = v6_5_q0;
assign v26_fu_730_p14 = v6_6_q0;
assign v26_fu_730_p16 = v6_7_q0;
assign v26_fu_730_p17 = 'bx;
assign v26_fu_730_p2 = v6_0_q0;
assign v26_fu_730_p4 = v6_1_q0;
assign v26_fu_730_p6 = v6_2_q0;
assign v26_fu_730_p8 = v6_3_q0;
assign v6_0_address0 = zext_ln70_fu_615_p1;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = zext_ln70_fu_615_p1;
assign v6_1_ce0 = v6_1_ce0_local;
assign v6_2_address0 = zext_ln70_fu_615_p1;
assign v6_2_ce0 = v6_2_ce0_local;
assign v6_3_address0 = zext_ln70_fu_615_p1;
assign v6_3_ce0 = v6_3_ce0_local;
assign v6_4_address0 = zext_ln70_fu_615_p1;
assign v6_4_ce0 = v6_4_ce0_local;
assign v6_5_address0 = zext_ln70_fu_615_p1;
assign v6_5_ce0 = v6_5_ce0_local;
assign v6_6_address0 = zext_ln70_fu_615_p1;
assign v6_6_ce0 = v6_6_ce0_local;
assign v6_7_address0 = zext_ln70_fu_615_p1;
assign v6_7_ce0 = v6_7_ce0_local;
assign zext_ln66_fu_785_p1 = lshr_ln1_reg_858_pp0_iter4_reg;
assign zext_ln68_1_fu_525_p1 = select_ln66_fu_519_p3;
assign zext_ln69_fu_603_p1 = grp_fu_560_p2;
assign zext_ln70_fu_615_p1 = grp_fu_534_p2;
endmodule 