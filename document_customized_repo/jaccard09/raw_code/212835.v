module SgdLR_sw_SgdLR_sw_Pipeline_label_457 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_address1,v2_3_ce1,v2_3_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_address1,v2_2_ce1,v2_2_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v3_1_address0,v3_1_ce0,v3_1_q0,v3_1_address1,v3_1_ce1,v3_1_q1,v3_2_address0,v3_2_ce0,v3_2_q0,v3_2_address1,v3_2_ce1,v3_2_q1,v3_3_address0,v3_3_ce0,v3_3_q0,v3_3_address1,v3_3_ce1,v3_3_q1,v3_4_address0,v3_4_ce0,v3_4_q0,v3_4_address1,v3_4_ce1,v3_4_q1,v3_5_address0,v3_5_ce0,v3_5_q0,v3_5_address1,v3_5_ce1,v3_5_q1,v3_6_address0,v3_6_ce0,v3_6_q0,v3_6_address1,v3_6_ce1,v3_6_q1,v3_7_address0,v3_7_ce0,v3_7_q0,v3_7_address1,v3_7_ce1,v3_7_q1,grp_fu_1802_p_din0,grp_fu_1802_p_din1,grp_fu_1802_p_opcode,grp_fu_1802_p_dout0,grp_fu_1802_p_ce,grp_fu_3578_p_din0,grp_fu_3578_p_din1,grp_fu_3578_p_opcode,grp_fu_3578_p_dout0,grp_fu_3578_p_ce,grp_fu_3570_p_din0,grp_fu_3570_p_din1,grp_fu_3570_p_dout0,grp_fu_3570_p_ce,grp_fu_3574_p_din0,grp_fu_3574_p_din1,grp_fu_3574_p_dout0,grp_fu_3574_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v2_3_address0;
output   v2_3_ce0;
output   v2_3_we0;
output  [31:0] v2_3_d0;
output  [7:0] v2_3_address1;
output   v2_3_ce1;
input  [31:0] v2_3_q1;
output  [7:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [31:0] v2_2_d0;
output  [7:0] v2_2_address1;
output   v2_2_ce1;
input  [31:0] v2_2_q1;
output  [7:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
input  [31:0] v2_1_q0;
output  [7:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
input  [31:0] v2_0_q0;
output  [6:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [6:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [6:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [6:0] v3_1_address1;
output   v3_1_ce1;
input  [31:0] v3_1_q1;
output  [6:0] v3_2_address0;
output   v3_2_ce0;
input  [31:0] v3_2_q0;
output  [6:0] v3_2_address1;
output   v3_2_ce1;
input  [31:0] v3_2_q1;
output  [6:0] v3_3_address0;
output   v3_3_ce0;
input  [31:0] v3_3_q0;
output  [6:0] v3_3_address1;
output   v3_3_ce1;
input  [31:0] v3_3_q1;
output  [6:0] v3_4_address0;
output   v3_4_ce0;
input  [31:0] v3_4_q0;
output  [6:0] v3_4_address1;
output   v3_4_ce1;
input  [31:0] v3_4_q1;
output  [6:0] v3_5_address0;
output   v3_5_ce0;
input  [31:0] v3_5_q0;
output  [6:0] v3_5_address1;
output   v3_5_ce1;
input  [31:0] v3_5_q1;
output  [6:0] v3_6_address0;
output   v3_6_ce0;
input  [31:0] v3_6_q0;
output  [6:0] v3_6_address1;
output   v3_6_ce1;
input  [31:0] v3_6_q1;
output  [6:0] v3_7_address0;
output   v3_7_ce0;
input  [31:0] v3_7_q0;
output  [6:0] v3_7_address1;
output   v3_7_ce1;
input  [31:0] v3_7_q1;
output  [31:0] grp_fu_1802_p_din0;
output  [31:0] grp_fu_1802_p_din1;
output  [0:0] grp_fu_1802_p_opcode;
input  [31:0] grp_fu_1802_p_dout0;
output   grp_fu_1802_p_ce;
output  [31:0] grp_fu_3578_p_din0;
output  [31:0] grp_fu_3578_p_din1;
output  [1:0] grp_fu_3578_p_opcode;
input  [31:0] grp_fu_3578_p_dout0;
output   grp_fu_3578_p_ce;
output  [31:0] grp_fu_3570_p_din0;
output  [31:0] grp_fu_3570_p_din1;
input  [31:0] grp_fu_3570_p_dout0;
output   grp_fu_3570_p_ce;
output  [31:0] grp_fu_3574_p_din0;
output  [31:0] grp_fu_3574_p_din1;
input  [31:0] grp_fu_3574_p_dout0;
output   grp_fu_3574_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_877;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_514;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_518;
reg   [10:0] v25_3_reg_870;
wire   [0:0] tmp_fu_530_p3;
reg   [0:0] tmp_reg_877_pp0_iter1_reg;
reg   [0:0] tmp_reg_877_pp0_iter2_reg;
reg   [0:0] tmp_reg_877_pp0_iter3_reg;
reg   [0:0] tmp_reg_877_pp0_iter4_reg;
reg   [0:0] tmp_reg_877_pp0_iter5_reg;
reg   [7:0] lshr_ln55_s_reg_961;
reg   [7:0] lshr_ln55_s_reg_961_pp0_iter1_reg;
reg   [2:0] trunc_ln55_s_reg_966;
wire   [31:0] v26_fu_613_p19;
reg   [31:0] v26_reg_972;
wire   [31:0] v26_7_fu_653_p19;
reg   [31:0] v26_7_reg_977;
wire   [31:0] v26_8_fu_742_p19;
reg   [31:0] v26_8_reg_1062;
wire   [31:0] v26_9_fu_781_p19;
reg   [31:0] v26_9_reg_1067;
reg   [7:0] v2_0_addr_reg_1072;
reg   [7:0] v2_0_addr_reg_1072_pp0_iter3_reg;
reg   [7:0] v2_0_addr_reg_1072_pp0_iter4_reg;
reg   [7:0] v2_0_addr_reg_1072_pp0_iter5_reg;
reg   [7:0] v2_0_addr_reg_1072_pp0_iter6_reg;
reg   [7:0] v2_1_addr_reg_1077;
reg   [7:0] v2_1_addr_reg_1077_pp0_iter3_reg;
reg   [7:0] v2_1_addr_reg_1077_pp0_iter4_reg;
reg   [7:0] v2_1_addr_reg_1077_pp0_iter5_reg;
reg   [7:0] v2_1_addr_reg_1077_pp0_iter6_reg;
reg   [7:0] v2_2_addr_reg_1082;
reg   [7:0] v2_2_addr_reg_1082_pp0_iter3_reg;
reg   [7:0] v2_2_addr_reg_1082_pp0_iter4_reg;
reg   [7:0] v2_2_addr_reg_1082_pp0_iter5_reg;
reg   [7:0] v2_2_addr_reg_1082_pp0_iter6_reg;
reg   [7:0] v2_3_addr_reg_1088;
reg   [7:0] v2_3_addr_reg_1088_pp0_iter3_reg;
reg   [7:0] v2_3_addr_reg_1088_pp0_iter4_reg;
reg   [7:0] v2_3_addr_reg_1088_pp0_iter5_reg;
reg   [7:0] v2_3_addr_reg_1088_pp0_iter6_reg;
reg   [31:0] v27_reg_1094;
reg   [31:0] v2_0_load_reg_1099;
reg   [31:0] v27_7_reg_1104;
reg   [31:0] v2_1_load_reg_1109;
reg   [31:0] v2_2_load_reg_1114;
reg   [31:0] v2_3_load_reg_1119;
wire   [31:0] v28_fu_827_p1;
wire   [31:0] v28_7_fu_831_p1;
reg   [31:0] v27_8_reg_1134;
reg   [31:0] v27_9_reg_1139;
wire   [31:0] v28_8_fu_835_p1;
wire   [31:0] v28_9_fu_839_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln55_3_fu_542_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_fu_572_p1;
wire   [63:0] zext_ln56_5_fu_710_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_6_fu_730_p1;
wire   [63:0] zext_ln55_fu_820_p1;
reg   [10:0] v25_fu_104;
wire   [10:0] add_ln55_fu_584_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_3;
reg    v3_ce1_local;
reg   [6:0] v3_address1_local;
reg    v3_ce0_local;
reg   [6:0] v3_address0_local;
reg    v3_1_ce1_local;
reg   [6:0] v3_1_address1_local;
reg    v3_1_ce0_local;
reg   [6:0] v3_1_address0_local;
reg    v3_2_ce1_local;
reg   [6:0] v3_2_address1_local;
reg    v3_2_ce0_local;
reg   [6:0] v3_2_address0_local;
reg    v3_3_ce1_local;
reg   [6:0] v3_3_address1_local;
reg    v3_3_ce0_local;
reg   [6:0] v3_3_address0_local;
reg    v3_4_ce1_local;
reg   [6:0] v3_4_address1_local;
reg    v3_4_ce0_local;
reg   [6:0] v3_4_address0_local;
reg    v3_5_ce1_local;
reg   [6:0] v3_5_address1_local;
reg    v3_5_ce0_local;
reg   [6:0] v3_5_address0_local;
reg    v3_6_ce1_local;
reg   [6:0] v3_6_address1_local;
reg    v3_6_ce0_local;
reg   [6:0] v3_6_address0_local;
reg    v3_7_ce1_local;
reg   [6:0] v3_7_address1_local;
reg    v3_7_ce0_local;
reg   [6:0] v3_7_address0_local;
reg    v2_0_ce0_local;
reg   [7:0] v2_0_address0_local;
reg    v2_0_we0_local;
wire   [31:0] bitcast_ln60_fu_843_p1;
reg    v2_1_ce0_local;
reg   [7:0] v2_1_address0_local;
reg    v2_1_we0_local;
wire   [31:0] bitcast_ln60_7_fu_848_p1;
reg    v2_2_ce1_local;
reg    v2_2_we0_local;
wire   [31:0] bitcast_ln60_8_fu_853_p1;
reg    v2_2_ce0_local;
reg    v2_3_ce1_local;
reg    v2_3_we0_local;
wire   [31:0] bitcast_ln60_9_fu_858_p1;
reg    v2_3_ce0_local;
reg   [31:0] grp_fu_496_p0;
reg   [31:0] grp_fu_496_p1;
reg   [31:0] grp_fu_500_p0;
reg   [31:0] grp_fu_500_p1;
reg   [31:0] grp_fu_504_p0;
reg   [31:0] grp_fu_509_p0;
wire   [6:0] trunc_ln55_fu_538_p1;
wire   [5:0] tmp_s_fu_554_p4;
wire   [6:0] or_ln56_s_fu_564_p3;
wire   [31:0] v26_fu_613_p17;
wire   [2:0] v26_fu_613_p18;
wire   [31:0] v26_7_fu_653_p17;
wire   [2:0] v26_7_fu_653_p18;
wire   [4:0] tmp_3_fu_693_p4;
wire   [6:0] or_ln56_5_fu_702_p3;
wire   [6:0] or_ln56_6_fu_722_p3;
wire   [31:0] v26_8_fu_742_p17;
wire   [31:0] v26_9_fu_781_p17;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter6_stage0;
reg    ap_idle_pp0_0to5;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to7;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v26_fu_613_p1;
wire   [2:0] v26_fu_613_p3;
wire   [2:0] v26_fu_613_p5;
wire   [2:0] v26_fu_613_p7;
wire  signed [2:0] v26_fu_613_p9;
wire  signed [2:0] v26_fu_613_p11;
wire  signed [2:0] v26_fu_613_p13;
wire  signed [2:0] v26_fu_613_p15;
wire   [2:0] v26_7_fu_653_p1;
wire   [2:0] v26_7_fu_653_p3;
wire   [2:0] v26_7_fu_653_p5;
wire   [2:0] v26_7_fu_653_p7;
wire  signed [2:0] v26_7_fu_653_p9;
wire  signed [2:0] v26_7_fu_653_p11;
wire  signed [2:0] v26_7_fu_653_p13;
wire  signed [2:0] v26_7_fu_653_p15;
wire   [2:0] v26_8_fu_742_p1;
wire   [2:0] v26_8_fu_742_p3;
wire   [2:0] v26_8_fu_742_p5;
wire   [2:0] v26_8_fu_742_p7;
wire  signed [2:0] v26_8_fu_742_p9;
wire  signed [2:0] v26_8_fu_742_p11;
wire  signed [2:0] v26_8_fu_742_p13;
wire  signed [2:0] v26_8_fu_742_p15;
wire   [2:0] v26_9_fu_781_p1;
wire   [2:0] v26_9_fu_781_p3;
wire   [2:0] v26_9_fu_781_p5;
wire   [2:0] v26_9_fu_781_p7;
wire  signed [2:0] v26_9_fu_781_p9;
wire  signed [2:0] v26_9_fu_781_p11;
wire  signed [2:0] v26_9_fu_781_p13;
wire  signed [2:0] v26_9_fu_781_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_fu_104 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U956(.din0(v3_q1),.din1(v3_1_q1),.din2(v3_2_q1),.din3(v3_3_q1),.din4(v3_4_q1),.din5(v3_5_q1),.din6(v3_6_q1),.din7(v3_7_q1),.def(v26_fu_613_p17),.sel(v26_fu_613_p18),.dout(v26_fu_613_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U957(.din0(v3_q0),.din1(v3_1_q0),.din2(v3_2_q0),.din3(v3_3_q0),.din4(v3_4_q0),.din5(v3_5_q0),.din6(v3_6_q0),.din7(v3_7_q0),.def(v26_7_fu_653_p17),.sel(v26_7_fu_653_p18),.dout(v26_7_fu_653_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U958(.din0(v3_q1),.din1(v3_1_q1),.din2(v3_2_q1),.din3(v3_3_q1),.din4(v3_4_q1),.din5(v3_5_q1),.din6(v3_6_q1),.din7(v3_7_q1),.def(v26_8_fu_742_p17),.sel(trunc_ln55_s_reg_966),.dout(v26_8_fu_742_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U959(.din0(v3_q0),.din1(v3_1_q0),.din2(v3_2_q0),.din3(v3_3_q0),.din4(v3_4_q0),.din5(v3_5_q0),.din6(v3_6_q0),.din7(v3_7_q0),.def(v26_9_fu_781_p17),.sel(trunc_ln55_s_reg_966),.dout(v26_9_fu_781_p19));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter7 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_530_p3 == 1'd0))) begin
            v25_fu_104 <= add_ln55_fu_584_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_104 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln55_s_reg_961 <= {{v25_3_reg_870[9:2]}};
        lshr_ln55_s_reg_961_pp0_iter1_reg <= lshr_ln55_s_reg_961;
        trunc_ln55_s_reg_966 <= {{v25_3_reg_870[9:7]}};
        v26_7_reg_977 <= v26_7_fu_653_p19;
        v26_reg_972 <= v26_fu_613_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_514 <= grp_fu_1802_p_dout0;
        reg_518 <= grp_fu_3578_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_877 <= ap_sig_allocacmp_v25_3[32'd10];
        tmp_reg_877_pp0_iter1_reg <= tmp_reg_877;
        tmp_reg_877_pp0_iter2_reg <= tmp_reg_877_pp0_iter1_reg;
        tmp_reg_877_pp0_iter3_reg <= tmp_reg_877_pp0_iter2_reg;
        tmp_reg_877_pp0_iter4_reg <= tmp_reg_877_pp0_iter3_reg;
        tmp_reg_877_pp0_iter5_reg <= tmp_reg_877_pp0_iter4_reg;
        v25_3_reg_870 <= ap_sig_allocacmp_v25_3;
        v26_8_reg_1062 <= v26_8_fu_742_p19;
        v26_9_reg_1067 <= v26_9_fu_781_p19;
        v2_0_addr_reg_1072 <= zext_ln55_fu_820_p1;
        v2_0_addr_reg_1072_pp0_iter3_reg <= v2_0_addr_reg_1072;
        v2_0_addr_reg_1072_pp0_iter4_reg <= v2_0_addr_reg_1072_pp0_iter3_reg;
        v2_0_addr_reg_1072_pp0_iter5_reg <= v2_0_addr_reg_1072_pp0_iter4_reg;
        v2_0_addr_reg_1072_pp0_iter6_reg <= v2_0_addr_reg_1072_pp0_iter5_reg;
        v2_1_addr_reg_1077 <= zext_ln55_fu_820_p1;
        v2_1_addr_reg_1077_pp0_iter3_reg <= v2_1_addr_reg_1077;
        v2_1_addr_reg_1077_pp0_iter4_reg <= v2_1_addr_reg_1077_pp0_iter3_reg;
        v2_1_addr_reg_1077_pp0_iter5_reg <= v2_1_addr_reg_1077_pp0_iter4_reg;
        v2_1_addr_reg_1077_pp0_iter6_reg <= v2_1_addr_reg_1077_pp0_iter5_reg;
        v2_2_addr_reg_1082 <= zext_ln55_fu_820_p1;
        v2_2_addr_reg_1082_pp0_iter3_reg <= v2_2_addr_reg_1082;
        v2_2_addr_reg_1082_pp0_iter4_reg <= v2_2_addr_reg_1082_pp0_iter3_reg;
        v2_2_addr_reg_1082_pp0_iter5_reg <= v2_2_addr_reg_1082_pp0_iter4_reg;
        v2_2_addr_reg_1082_pp0_iter6_reg <= v2_2_addr_reg_1082_pp0_iter5_reg;
        v2_3_addr_reg_1088 <= zext_ln55_fu_820_p1;
        v2_3_addr_reg_1088_pp0_iter3_reg <= v2_3_addr_reg_1088;
        v2_3_addr_reg_1088_pp0_iter4_reg <= v2_3_addr_reg_1088_pp0_iter3_reg;
        v2_3_addr_reg_1088_pp0_iter5_reg <= v2_3_addr_reg_1088_pp0_iter4_reg;
        v2_3_addr_reg_1088_pp0_iter6_reg <= v2_3_addr_reg_1088_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_7_reg_1104 <= grp_fu_3574_p_dout0;
        v27_reg_1094 <= grp_fu_3570_p_dout0;
        v2_0_load_reg_1099 <= v2_0_q0;
        v2_1_load_reg_1109 <= v2_1_q0;
        v2_2_load_reg_1114 <= v2_2_q1;
        v2_3_load_reg_1119 <= v2_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_8_reg_1134 <= grp_fu_3570_p_dout0;
        v27_9_reg_1139 <= grp_fu_3574_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_877 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (tmp_reg_877_pp0_iter5_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter6_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter6_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to5 = 1'b1;
    end else begin
        ap_idle_pp0_0to5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
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
        ap_sig_allocacmp_v25_3 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_3 = v25_fu_104;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_496_p0 = v28_8_fu_835_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_496_p0 = v28_fu_827_p1;
        end else begin
            grp_fu_496_p0 = 'bx;
        end
    end else begin
        grp_fu_496_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_496_p1 = v27_8_reg_1134;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_496_p1 = v27_reg_1094;
        end else begin
            grp_fu_496_p1 = 'bx;
        end
    end else begin
        grp_fu_496_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_500_p0 = v28_9_fu_839_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_500_p0 = v28_7_fu_831_p1;
        end else begin
            grp_fu_500_p0 = 'bx;
        end
    end else begin
        grp_fu_500_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_500_p1 = v27_9_reg_1139;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_500_p1 = v27_7_reg_1104;
        end else begin
            grp_fu_500_p1 = 'bx;
        end
    end else begin
        grp_fu_500_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_504_p0 = v26_8_reg_1062;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_504_p0 = v26_reg_972;
        end else begin
            grp_fu_504_p0 = 'bx;
        end
    end else begin
        grp_fu_504_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_509_p0 = v26_9_reg_1067;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_509_p0 = v26_7_reg_977;
        end else begin
            grp_fu_509_p0 = 'bx;
        end
    end else begin
        grp_fu_509_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address0_local = v2_0_addr_reg_1072_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address0_local = zext_ln55_fu_820_p1;
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address0_local = v2_1_addr_reg_1077_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address0_local = zext_ln55_fu_820_p1;
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_ce1_local = 1'b1;
    end else begin
        v2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_we0_local = 1'b1;
    end else begin
        v2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_ce1_local = 1'b1;
    end else begin
        v2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address0_local = zext_ln56_6_fu_730_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address0_local = zext_ln56_fu_572_p1;
        end else begin
            v3_1_address0_local = 'bx;
        end
    end else begin
        v3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address1_local = zext_ln56_5_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address1_local = zext_ln55_3_fu_542_p1;
        end else begin
            v3_1_address1_local = 'bx;
        end
    end else begin
        v3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_2_address0_local = zext_ln56_6_fu_730_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_2_address0_local = zext_ln56_fu_572_p1;
        end else begin
            v3_2_address0_local = 'bx;
        end
    end else begin
        v3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_2_address1_local = zext_ln56_5_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_2_address1_local = zext_ln55_3_fu_542_p1;
        end else begin
            v3_2_address1_local = 'bx;
        end
    end else begin
        v3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_2_ce1_local = 1'b1;
    end else begin
        v3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_3_address0_local = zext_ln56_6_fu_730_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_3_address0_local = zext_ln56_fu_572_p1;
        end else begin
            v3_3_address0_local = 'bx;
        end
    end else begin
        v3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_3_address1_local = zext_ln56_5_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_3_address1_local = zext_ln55_3_fu_542_p1;
        end else begin
            v3_3_address1_local = 'bx;
        end
    end else begin
        v3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_3_ce1_local = 1'b1;
    end else begin
        v3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_4_address0_local = zext_ln56_6_fu_730_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_4_address0_local = zext_ln56_fu_572_p1;
        end else begin
            v3_4_address0_local = 'bx;
        end
    end else begin
        v3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_4_address1_local = zext_ln56_5_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_4_address1_local = zext_ln55_3_fu_542_p1;
        end else begin
            v3_4_address1_local = 'bx;
        end
    end else begin
        v3_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_4_ce0_local = 1'b1;
    end else begin
        v3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_4_ce1_local = 1'b1;
    end else begin
        v3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_5_address0_local = zext_ln56_6_fu_730_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_5_address0_local = zext_ln56_fu_572_p1;
        end else begin
            v3_5_address0_local = 'bx;
        end
    end else begin
        v3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_5_address1_local = zext_ln56_5_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_5_address1_local = zext_ln55_3_fu_542_p1;
        end else begin
            v3_5_address1_local = 'bx;
        end
    end else begin
        v3_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_5_ce0_local = 1'b1;
    end else begin
        v3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_5_ce1_local = 1'b1;
    end else begin
        v3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_6_address0_local = zext_ln56_6_fu_730_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_6_address0_local = zext_ln56_fu_572_p1;
        end else begin
            v3_6_address0_local = 'bx;
        end
    end else begin
        v3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_6_address1_local = zext_ln56_5_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_6_address1_local = zext_ln55_3_fu_542_p1;
        end else begin
            v3_6_address1_local = 'bx;
        end
    end else begin
        v3_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_6_ce0_local = 1'b1;
    end else begin
        v3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_6_ce1_local = 1'b1;
    end else begin
        v3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_7_address0_local = zext_ln56_6_fu_730_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_7_address0_local = zext_ln56_fu_572_p1;
        end else begin
            v3_7_address0_local = 'bx;
        end
    end else begin
        v3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_7_address1_local = zext_ln56_5_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_7_address1_local = zext_ln55_3_fu_542_p1;
        end else begin
            v3_7_address1_local = 'bx;
        end
    end else begin
        v3_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_7_ce0_local = 1'b1;
    end else begin
        v3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_7_ce1_local = 1'b1;
    end else begin
        v3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln56_6_fu_730_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln56_fu_572_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln56_5_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln55_3_fu_542_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln55_fu_584_p2 = (ap_sig_allocacmp_v25_3 + 11'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_7_fu_848_p1 = reg_518;
assign bitcast_ln60_8_fu_853_p1 = reg_514;
assign bitcast_ln60_9_fu_858_p1 = reg_518;
assign bitcast_ln60_fu_843_p1 = reg_514;
assign grp_fu_1802_p_ce = 1'b1;
assign grp_fu_1802_p_din0 = grp_fu_496_p0;
assign grp_fu_1802_p_din1 = grp_fu_496_p1;
assign grp_fu_1802_p_opcode = 2'd0;
assign grp_fu_3570_p_ce = 1'b1;
assign grp_fu_3570_p_din0 = grp_fu_504_p0;
assign grp_fu_3570_p_din1 = 32'd3345637376;
assign grp_fu_3574_p_ce = 1'b1;
assign grp_fu_3574_p_din0 = grp_fu_509_p0;
assign grp_fu_3574_p_din1 = 32'd3345637376;
assign grp_fu_3578_p_ce = 1'b1;
assign grp_fu_3578_p_din0 = grp_fu_500_p0;
assign grp_fu_3578_p_din1 = grp_fu_500_p1;
assign grp_fu_3578_p_opcode = 2'd0;
assign or_ln56_5_fu_702_p3 = {{tmp_3_fu_693_p4}, {2'd2}};
assign or_ln56_6_fu_722_p3 = {{tmp_3_fu_693_p4}, {2'd3}};
assign or_ln56_s_fu_564_p3 = {{tmp_s_fu_554_p4}, {1'd1}};
assign tmp_3_fu_693_p4 = {{v25_3_reg_870[6:2]}};
assign tmp_fu_530_p3 = ap_sig_allocacmp_v25_3[32'd10];
assign tmp_s_fu_554_p4 = {{ap_sig_allocacmp_v25_3[6:1]}};
assign trunc_ln55_fu_538_p1 = ap_sig_allocacmp_v25_3[6:0];
assign v26_7_fu_653_p17 = 'bx;
assign v26_7_fu_653_p18 = {{v25_3_reg_870[9:7]}};
assign v26_8_fu_742_p17 = 'bx;
assign v26_9_fu_781_p17 = 'bx;
assign v26_fu_613_p17 = 'bx;
assign v26_fu_613_p18 = {{v25_3_reg_870[9:7]}};
assign v28_7_fu_831_p1 = v2_1_load_reg_1109;
assign v28_8_fu_835_p1 = v2_2_load_reg_1114;
assign v28_9_fu_839_p1 = v2_3_load_reg_1119;
assign v28_fu_827_p1 = v2_0_load_reg_1099;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_d0 = bitcast_ln60_fu_843_p1;
assign v2_0_we0 = v2_0_we0_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_d0 = bitcast_ln60_7_fu_848_p1;
assign v2_1_we0 = v2_1_we0_local;
assign v2_2_address0 = v2_2_addr_reg_1082_pp0_iter6_reg;
assign v2_2_address1 = zext_ln55_fu_820_p1;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = bitcast_ln60_8_fu_853_p1;
assign v2_2_we0 = v2_2_we0_local;
assign v2_3_address0 = v2_3_addr_reg_1088_pp0_iter6_reg;
assign v2_3_address1 = zext_ln55_fu_820_p1;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = bitcast_ln60_9_fu_858_p1;
assign v2_3_we0 = v2_3_we0_local;
assign v3_1_address0 = v3_1_address0_local;
assign v3_1_address1 = v3_1_address1_local;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_2_address0 = v3_2_address0_local;
assign v3_2_address1 = v3_2_address1_local;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_ce1 = v3_2_ce1_local;
assign v3_3_address0 = v3_3_address0_local;
assign v3_3_address1 = v3_3_address1_local;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_ce1 = v3_3_ce1_local;
assign v3_4_address0 = v3_4_address0_local;
assign v3_4_address1 = v3_4_address1_local;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_4_ce1 = v3_4_ce1_local;
assign v3_5_address0 = v3_5_address0_local;
assign v3_5_address1 = v3_5_address1_local;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_5_ce1 = v3_5_ce1_local;
assign v3_6_address0 = v3_6_address0_local;
assign v3_6_address1 = v3_6_address1_local;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_6_ce1 = v3_6_ce1_local;
assign v3_7_address0 = v3_7_address0_local;
assign v3_7_address1 = v3_7_address1_local;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_7_ce1 = v3_7_ce1_local;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_3_fu_542_p1 = trunc_ln55_fu_538_p1;
assign zext_ln55_fu_820_p1 = lshr_ln55_s_reg_961_pp0_iter1_reg;
assign zext_ln56_5_fu_710_p1 = or_ln56_5_fu_702_p3;
assign zext_ln56_6_fu_730_p1 = or_ln56_6_fu_722_p3;
assign zext_ln56_fu_572_p1 = or_ln56_s_fu_564_p3;
endmodule 