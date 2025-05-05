module backprop_backprop_Pipeline_label_16 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mux_case_273111,mux_case_172107,mux_case_071103,mux_case_05677_reload,mux_case_15781_reload,mux_case_25885_reload,mul_ln168,v7_0_address0,v7_0_ce0,v7_0_q0,v7_1_address0,v7_1_ce0,v7_1_q0,v7_2_address0,v7_2_ce0,v7_2_q0,v7_3_address0,v7_3_ce0,v7_3_q0,v7_4_address0,v7_4_ce0,v7_4_q0,v7_5_address0,v7_5_ce0,v7_5_q0,v7_6_address0,v7_6_ce0,v7_6_q0,v7_7_address0,v7_7_ce0,v7_7_q0,v107_reload,mux_case_16093_reload,v107_3_reload,mux_case_273109_out,mux_case_273109_out_ap_vld,mux_case_172105_out,mux_case_172105_out_ap_vld,mux_case_071101_out,mux_case_071101_out_ap_vld,grp_fu_3108_p_din0,grp_fu_3108_p_din1,grp_fu_3108_p_opcode,grp_fu_3108_p_dout0,grp_fu_3108_p_ce,grp_fu_3116_p_din0,grp_fu_3116_p_din1,grp_fu_3116_p_dout0,grp_fu_3116_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] mux_case_273111;
input  [63:0] mux_case_172107;
input  [63:0] mux_case_071103;
input  [63:0] mux_case_05677_reload;
input  [63:0] mux_case_15781_reload;
input  [63:0] mux_case_25885_reload;
input  [8:0] mul_ln168;
output  [5:0] v7_0_address0;
output   v7_0_ce0;
input  [63:0] v7_0_q0;
output  [5:0] v7_1_address0;
output   v7_1_ce0;
input  [63:0] v7_1_q0;
output  [5:0] v7_2_address0;
output   v7_2_ce0;
input  [63:0] v7_2_q0;
output  [5:0] v7_3_address0;
output   v7_3_ce0;
input  [63:0] v7_3_q0;
output  [5:0] v7_4_address0;
output   v7_4_ce0;
input  [63:0] v7_4_q0;
output  [5:0] v7_5_address0;
output   v7_5_ce0;
input  [63:0] v7_5_q0;
output  [5:0] v7_6_address0;
output   v7_6_ce0;
input  [63:0] v7_6_q0;
output  [5:0] v7_7_address0;
output   v7_7_ce0;
input  [63:0] v7_7_q0;
input  [63:0] v107_reload;
input  [63:0] mux_case_16093_reload;
input  [63:0] v107_3_reload;
output  [63:0] mux_case_273109_out;
output   mux_case_273109_out_ap_vld;
output  [63:0] mux_case_172105_out;
output   mux_case_172105_out_ap_vld;
output  [63:0] mux_case_071101_out;
output   mux_case_071101_out_ap_vld;
output  [63:0] grp_fu_3108_p_din0;
output  [63:0] grp_fu_3108_p_din1;
output  [0:0] grp_fu_3108_p_opcode;
input  [63:0] grp_fu_3108_p_dout0;
output   grp_fu_3108_p_ce;
output  [63:0] grp_fu_3116_p_din0;
output  [63:0] grp_fu_3116_p_din1;
input  [63:0] grp_fu_3116_p_dout0;
output   grp_fu_3116_p_ce;
reg ap_idle;
reg mux_case_273109_out_ap_vld;
reg mux_case_172105_out_ap_vld;
reg mux_case_071101_out_ap_vld;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln168_fu_348_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] v93_1_reg_620;
reg   [1:0] v93_1_reg_620_pp0_iter1_reg;
reg   [1:0] v93_1_reg_620_pp0_iter2_reg;
reg   [1:0] v93_1_reg_620_pp0_iter3_reg;
reg   [1:0] v93_1_reg_620_pp0_iter4_reg;
reg   [1:0] v93_1_reg_620_pp0_iter5_reg;
reg   [1:0] v93_1_reg_620_pp0_iter6_reg;
reg   [1:0] v93_1_reg_620_pp0_iter7_reg;
reg   [1:0] v93_1_reg_620_pp0_iter8_reg;
reg   [1:0] v93_1_reg_620_pp0_iter9_reg;
reg   [1:0] v93_1_reg_620_pp0_iter10_reg;
reg   [1:0] v93_1_reg_620_pp0_iter11_reg;
reg   [1:0] v93_1_reg_620_pp0_iter12_reg;
reg   [1:0] v93_1_reg_620_pp0_iter13_reg;
reg   [1:0] v93_1_reg_620_pp0_iter14_reg;
reg   [1:0] v93_1_reg_620_pp0_iter15_reg;
reg   [1:0] v93_1_reg_620_pp0_iter16_reg;
reg   [0:0] icmp_ln168_reg_626;
reg   [0:0] icmp_ln168_reg_626_pp0_iter1_reg;
reg   [0:0] icmp_ln168_reg_626_pp0_iter2_reg;
reg   [0:0] icmp_ln168_reg_626_pp0_iter3_reg;
reg   [0:0] icmp_ln168_reg_626_pp0_iter4_reg;
reg   [0:0] icmp_ln168_reg_626_pp0_iter5_reg;
reg   [0:0] icmp_ln168_reg_626_pp0_iter6_reg;
reg   [0:0] icmp_ln168_reg_626_pp0_iter7_reg;
reg   [0:0] icmp_ln168_reg_626_pp0_iter8_reg;
reg   [0:0] icmp_ln168_reg_626_pp0_iter9_reg;
reg   [0:0] icmp_ln168_reg_626_pp0_iter10_reg;
reg   [0:0] icmp_ln168_reg_626_pp0_iter11_reg;
reg   [0:0] icmp_ln168_reg_626_pp0_iter12_reg;
reg   [0:0] icmp_ln168_reg_626_pp0_iter13_reg;
reg   [0:0] icmp_ln168_reg_626_pp0_iter14_reg;
reg   [0:0] icmp_ln168_reg_626_pp0_iter15_reg;
wire   [2:0] trunc_ln170_fu_370_p1;
reg   [2:0] trunc_ln170_reg_630;
wire   [63:0] v95_fu_433_p19;
reg   [63:0] v95_reg_675;
wire   [63:0] v94_fu_472_p9;
wire   [0:0] xor_ln172_fu_501_p2;
reg   [0:0] xor_ln172_reg_685;
wire   [62:0] trunc_ln172_fu_507_p1;
reg   [62:0] trunc_ln172_reg_690;
wire   [63:0] v98_fu_511_p9;
reg   [63:0] v98_reg_695;
wire   [63:0] v97_fu_533_p1;
reg   [63:0] v13_reg_705;
wire   [63:0] zext_ln170_fu_384_p1;
wire    ap_block_pp0_stage0;
reg   [1:0] v93_fu_116;
wire   [1:0] add_ln168_fu_354_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_v93_1;
reg   [63:0] mux_case_071101_fu_120;
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
reg   [63:0] mux_case_172105_fu_124;
reg   [63:0] mux_case_273109_fu_128;
wire    ap_block_pp0_stage0_01001;
reg    v7_0_ce0_local;
reg    v7_1_ce0_local;
reg    v7_2_ce0_local;
reg    v7_3_ce0_local;
reg    v7_4_ce0_local;
reg    v7_5_ce0_local;
reg    v7_6_ce0_local;
reg    v7_7_ce0_local;
wire   [8:0] zext_ln168_fu_360_p1;
wire   [8:0] add_ln170_fu_364_p2;
wire   [5:0] lshr_ln6_fu_374_p4;
wire   [63:0] v95_fu_433_p2;
wire   [63:0] v95_fu_433_p4;
wire   [63:0] v95_fu_433_p6;
wire   [63:0] v95_fu_433_p8;
wire   [63:0] v95_fu_433_p10;
wire   [63:0] v95_fu_433_p12;
wire   [63:0] v95_fu_433_p14;
wire   [63:0] v95_fu_433_p16;
wire   [63:0] v95_fu_433_p17;
wire   [63:0] v94_fu_472_p7;
wire   [63:0] bitcast_ln172_fu_489_p1;
wire   [0:0] bit_sel_fu_493_p3;
wire   [63:0] v98_fu_511_p7;
wire   [63:0] xor_ln6_fu_527_p3;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_660;
wire   [2:0] v95_fu_433_p1;
wire   [2:0] v95_fu_433_p3;
wire   [2:0] v95_fu_433_p5;
wire   [2:0] v95_fu_433_p7;
wire  signed [2:0] v95_fu_433_p9;
wire  signed [2:0] v95_fu_433_p11;
wire  signed [2:0] v95_fu_433_p13;
wire  signed [2:0] v95_fu_433_p15;
wire   [1:0] v94_fu_472_p1;
wire   [1:0] v94_fu_472_p3;
wire  signed [1:0] v94_fu_472_p5;
wire   [1:0] v98_fu_511_p1;
wire   [1:0] v98_fu_511_p3;
wire  signed [1:0] v98_fu_511_p5;
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
#0 v93_fu_116 = 2'd0;
#0 mux_case_071101_fu_120 = 64'd0;
#0 mux_case_172105_fu_124 = 64'd0;
#0 mux_case_273109_fu_128 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U260(.din0(v95_fu_433_p2),.din1(v95_fu_433_p4),.din2(v95_fu_433_p6),.din3(v95_fu_433_p8),.din4(v95_fu_433_p10),.din5(v95_fu_433_p12),.din6(v95_fu_433_p14),.din7(v95_fu_433_p16),.def(v95_fu_433_p17),.sel(trunc_ln170_reg_630),.dout(v95_fu_433_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U261(.din0(mux_case_05677_reload),.din1(mux_case_15781_reload),.din2(mux_case_25885_reload),.def(v94_fu_472_p7),.sel(v93_1_reg_620_pp0_iter1_reg),.dout(v94_fu_472_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U262(.din0(v107_reload),.din1(mux_case_16093_reload),.din2(v107_3_reload),.def(v98_fu_511_p7),.sel(v93_1_reg_620_pp0_iter8_reg),.dout(v98_fu_511_p9));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            mux_case_071101_fu_120 <= mux_case_071103;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (v93_1_reg_620_pp0_iter16_reg == 2'd0))) begin
            mux_case_071101_fu_120 <= v13_reg_705;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            mux_case_172105_fu_124 <= mux_case_172107;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (v93_1_reg_620_pp0_iter16_reg == 2'd1))) begin
            mux_case_172105_fu_124 <= v13_reg_705;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            mux_case_273109_fu_128 <= mux_case_273111;
        end else if ((1'b1 == ap_condition_660)) begin
            mux_case_273109_fu_128 <= v13_reg_705;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln168_fu_348_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v93_fu_116 <= add_ln168_fu_354_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v93_fu_116 <= 2'd0;
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
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln168_reg_626_pp0_iter10_reg <= icmp_ln168_reg_626_pp0_iter9_reg;
        icmp_ln168_reg_626_pp0_iter11_reg <= icmp_ln168_reg_626_pp0_iter10_reg;
        icmp_ln168_reg_626_pp0_iter12_reg <= icmp_ln168_reg_626_pp0_iter11_reg;
        icmp_ln168_reg_626_pp0_iter13_reg <= icmp_ln168_reg_626_pp0_iter12_reg;
        icmp_ln168_reg_626_pp0_iter14_reg <= icmp_ln168_reg_626_pp0_iter13_reg;
        icmp_ln168_reg_626_pp0_iter15_reg <= icmp_ln168_reg_626_pp0_iter14_reg;
        icmp_ln168_reg_626_pp0_iter2_reg <= icmp_ln168_reg_626_pp0_iter1_reg;
        icmp_ln168_reg_626_pp0_iter3_reg <= icmp_ln168_reg_626_pp0_iter2_reg;
        icmp_ln168_reg_626_pp0_iter4_reg <= icmp_ln168_reg_626_pp0_iter3_reg;
        icmp_ln168_reg_626_pp0_iter5_reg <= icmp_ln168_reg_626_pp0_iter4_reg;
        icmp_ln168_reg_626_pp0_iter6_reg <= icmp_ln168_reg_626_pp0_iter5_reg;
        icmp_ln168_reg_626_pp0_iter7_reg <= icmp_ln168_reg_626_pp0_iter6_reg;
        icmp_ln168_reg_626_pp0_iter8_reg <= icmp_ln168_reg_626_pp0_iter7_reg;
        icmp_ln168_reg_626_pp0_iter9_reg <= icmp_ln168_reg_626_pp0_iter8_reg;
        trunc_ln172_reg_690 <= trunc_ln172_fu_507_p1;
        v13_reg_705 <= grp_fu_3116_p_dout0;
        v93_1_reg_620_pp0_iter10_reg <= v93_1_reg_620_pp0_iter9_reg;
        v93_1_reg_620_pp0_iter11_reg <= v93_1_reg_620_pp0_iter10_reg;
        v93_1_reg_620_pp0_iter12_reg <= v93_1_reg_620_pp0_iter11_reg;
        v93_1_reg_620_pp0_iter13_reg <= v93_1_reg_620_pp0_iter12_reg;
        v93_1_reg_620_pp0_iter14_reg <= v93_1_reg_620_pp0_iter13_reg;
        v93_1_reg_620_pp0_iter15_reg <= v93_1_reg_620_pp0_iter14_reg;
        v93_1_reg_620_pp0_iter16_reg <= v93_1_reg_620_pp0_iter15_reg;
        v93_1_reg_620_pp0_iter2_reg <= v93_1_reg_620_pp0_iter1_reg;
        v93_1_reg_620_pp0_iter3_reg <= v93_1_reg_620_pp0_iter2_reg;
        v93_1_reg_620_pp0_iter4_reg <= v93_1_reg_620_pp0_iter3_reg;
        v93_1_reg_620_pp0_iter5_reg <= v93_1_reg_620_pp0_iter4_reg;
        v93_1_reg_620_pp0_iter6_reg <= v93_1_reg_620_pp0_iter5_reg;
        v93_1_reg_620_pp0_iter7_reg <= v93_1_reg_620_pp0_iter6_reg;
        v93_1_reg_620_pp0_iter8_reg <= v93_1_reg_620_pp0_iter7_reg;
        v93_1_reg_620_pp0_iter9_reg <= v93_1_reg_620_pp0_iter8_reg;
        v98_reg_695 <= v98_fu_511_p9;
        xor_ln172_reg_685 <= xor_ln172_fu_501_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln168_reg_626 <= icmp_ln168_fu_348_p2;
        icmp_ln168_reg_626_pp0_iter1_reg <= icmp_ln168_reg_626;
        trunc_ln170_reg_630 <= trunc_ln170_fu_370_p1;
        v93_1_reg_620 <= ap_sig_allocacmp_v93_1;
        v93_1_reg_620_pp0_iter1_reg <= v93_1_reg_620;
        v95_reg_675 <= v95_fu_433_p19;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_348_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v93_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_v93_1 = v93_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln168_reg_626_pp0_iter15_reg == 1'd1))) begin
        mux_case_071101_out_ap_vld = 1'b1;
    end else begin
        mux_case_071101_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln168_reg_626_pp0_iter15_reg == 1'd1))) begin
        mux_case_172105_out_ap_vld = 1'b1;
    end else begin
        mux_case_172105_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln168_reg_626_pp0_iter15_reg == 1'd1))) begin
        mux_case_273109_out_ap_vld = 1'b1;
    end else begin
        mux_case_273109_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_0_ce0_local = 1'b1;
    end else begin
        v7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_1_ce0_local = 1'b1;
    end else begin
        v7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_2_ce0_local = 1'b1;
    end else begin
        v7_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_3_ce0_local = 1'b1;
    end else begin
        v7_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_4_ce0_local = 1'b1;
    end else begin
        v7_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_5_ce0_local = 1'b1;
    end else begin
        v7_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_6_ce0_local = 1'b1;
    end else begin
        v7_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_7_ce0_local = 1'b1;
    end else begin
        v7_7_ce0_local = 1'b0;
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
assign add_ln168_fu_354_p2 = (ap_sig_allocacmp_v93_1 + 2'd1);
assign add_ln170_fu_364_p2 = (zext_ln168_fu_360_p1 + mul_ln168);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_660 = (~(v93_1_reg_620_pp0_iter16_reg == 2'd1) & ~(v93_1_reg_620_pp0_iter16_reg == 2'd0) & (ap_enable_reg_pp0_iter17 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bit_sel_fu_493_p3 = bitcast_ln172_fu_489_p1[64'd63];
assign bitcast_ln172_fu_489_p1 = grp_fu_3108_p_dout0;
assign grp_fu_3108_p_ce = 1'b1;
assign grp_fu_3108_p_din0 = v94_fu_472_p9;
assign grp_fu_3108_p_din1 = v95_reg_675;
assign grp_fu_3108_p_opcode = 2'd1;
assign grp_fu_3116_p_ce = 1'b1;
assign grp_fu_3116_p_din0 = v97_fu_533_p1;
assign grp_fu_3116_p_din1 = v98_reg_695;
assign icmp_ln168_fu_348_p2 = ((ap_sig_allocacmp_v93_1 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_374_p4 = {{add_ln170_fu_364_p2[8:3]}};
assign mux_case_071101_out = mux_case_071101_fu_120;
assign mux_case_172105_out = mux_case_172105_fu_124;
assign mux_case_273109_out = mux_case_273109_fu_128;
assign trunc_ln170_fu_370_p1 = add_ln170_fu_364_p2[2:0];
assign trunc_ln172_fu_507_p1 = bitcast_ln172_fu_489_p1[62:0];
assign v7_0_address0 = zext_ln170_fu_384_p1;
assign v7_0_ce0 = v7_0_ce0_local;
assign v7_1_address0 = zext_ln170_fu_384_p1;
assign v7_1_ce0 = v7_1_ce0_local;
assign v7_2_address0 = zext_ln170_fu_384_p1;
assign v7_2_ce0 = v7_2_ce0_local;
assign v7_3_address0 = zext_ln170_fu_384_p1;
assign v7_3_ce0 = v7_3_ce0_local;
assign v7_4_address0 = zext_ln170_fu_384_p1;
assign v7_4_ce0 = v7_4_ce0_local;
assign v7_5_address0 = zext_ln170_fu_384_p1;
assign v7_5_ce0 = v7_5_ce0_local;
assign v7_6_address0 = zext_ln170_fu_384_p1;
assign v7_6_ce0 = v7_6_ce0_local;
assign v7_7_address0 = zext_ln170_fu_384_p1;
assign v7_7_ce0 = v7_7_ce0_local;
assign v94_fu_472_p7 = 'bx;
assign v95_fu_433_p10 = v7_4_q0;
assign v95_fu_433_p12 = v7_5_q0;
assign v95_fu_433_p14 = v7_6_q0;
assign v95_fu_433_p16 = v7_7_q0;
assign v95_fu_433_p17 = 'bx;
assign v95_fu_433_p2 = v7_0_q0;
assign v95_fu_433_p4 = v7_1_q0;
assign v95_fu_433_p6 = v7_2_q0;
assign v95_fu_433_p8 = v7_3_q0;
assign v97_fu_533_p1 = xor_ln6_fu_527_p3;
assign v98_fu_511_p7 = 'bx;
assign xor_ln172_fu_501_p2 = (bit_sel_fu_493_p3 ^ 1'd1);
assign xor_ln6_fu_527_p3 = {{xor_ln172_reg_685}, {trunc_ln172_reg_690}};
assign zext_ln168_fu_360_p1 = ap_sig_allocacmp_v93_1;
assign zext_ln170_fu_384_p1 = lshr_ln6_fu_374_p4;
endmodule 