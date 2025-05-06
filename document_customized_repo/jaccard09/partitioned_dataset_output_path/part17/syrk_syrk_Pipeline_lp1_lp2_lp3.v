
module syrk_syrk_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_q0,buff_A0_2_address0,buff_A0_2_ce0,buff_A0_2_q0,buff_A0_3_address0,buff_A0_3_ce0,buff_A0_3_q0,buff_A0_4_address0,buff_A0_4_ce0,buff_A0_4_q0,buff_A0_5_address0,buff_A0_5_ce0,buff_A0_5_q0,buff_A0_6_address0,buff_A0_6_ce0,buff_A0_6_q0,buff_A0_7_address0,buff_A0_7_ce0,buff_A0_7_q0,buff_A1_address0,buff_A1_ce0,buff_A1_q0,buff_A1_1_address0,buff_A1_1_ce0,buff_A1_1_q0,buff_A1_2_address0,buff_A1_2_ce0,buff_A1_2_q0,buff_A1_3_address0,buff_A1_3_ce0,buff_A1_3_q0,buff_A1_4_address0,buff_A1_4_ce0,buff_A1_4_q0,buff_A1_5_address0,buff_A1_5_ce0,buff_A1_5_q0,buff_A1_6_address0,buff_A1_6_ce0,buff_A1_6_q0,buff_A1_7_address0,buff_A1_7_ce0,buff_A1_7_q0,alpha,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_q0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_q0,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_2_q0,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_3_q0,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_we0,buff_C_out_4_d0,buff_C_out_4_q0,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_we0,buff_C_out_5_d0,buff_C_out_5_q0,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_we0,buff_C_out_6_d0,buff_C_out_6_q0,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_we0,buff_C_out_7_d0,buff_C_out_7_q0,grp_fu_416_p_din0,grp_fu_416_p_din1,grp_fu_416_p_opcode,grp_fu_416_p_dout0,grp_fu_416_p_ce,grp_fu_420_p_din0,grp_fu_420_p_din1,grp_fu_420_p_dout0,grp_fu_420_p_ce);  
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
output  [8:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [8:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
input  [31:0] buff_A0_1_q0;
output  [8:0] buff_A0_2_address0;
output   buff_A0_2_ce0;
input  [31:0] buff_A0_2_q0;
output  [8:0] buff_A0_3_address0;
output   buff_A0_3_ce0;
input  [31:0] buff_A0_3_q0;
output  [8:0] buff_A0_4_address0;
output   buff_A0_4_ce0;
input  [31:0] buff_A0_4_q0;
output  [8:0] buff_A0_5_address0;
output   buff_A0_5_ce0;
input  [31:0] buff_A0_5_q0;
output  [8:0] buff_A0_6_address0;
output   buff_A0_6_ce0;
input  [31:0] buff_A0_6_q0;
output  [8:0] buff_A0_7_address0;
output   buff_A0_7_ce0;
input  [31:0] buff_A0_7_q0;
output  [8:0] buff_A1_address0;
output   buff_A1_ce0;
input  [31:0] buff_A1_q0;
output  [8:0] buff_A1_1_address0;
output   buff_A1_1_ce0;
input  [31:0] buff_A1_1_q0;
output  [8:0] buff_A1_2_address0;
output   buff_A1_2_ce0;
input  [31:0] buff_A1_2_q0;
output  [8:0] buff_A1_3_address0;
output   buff_A1_3_ce0;
input  [31:0] buff_A1_3_q0;
output  [8:0] buff_A1_4_address0;
output   buff_A1_4_ce0;
input  [31:0] buff_A1_4_q0;
output  [8:0] buff_A1_5_address0;
output   buff_A1_5_ce0;
input  [31:0] buff_A1_5_q0;
output  [8:0] buff_A1_6_address0;
output   buff_A1_6_ce0;
input  [31:0] buff_A1_6_q0;
output  [8:0] buff_A1_7_address0;
output   buff_A1_7_ce0;
input  [31:0] buff_A1_7_q0;
input  [31:0] alpha;
output  [8:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
input  [31:0] buff_C_out_q0;
output  [8:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
input  [31:0] buff_C_out_1_q0;
output  [8:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
output   buff_C_out_2_we0;
output  [31:0] buff_C_out_2_d0;
input  [31:0] buff_C_out_2_q0;
output  [8:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
output   buff_C_out_3_we0;
output  [31:0] buff_C_out_3_d0;
input  [31:0] buff_C_out_3_q0;
output  [8:0] buff_C_out_4_address0;
output   buff_C_out_4_ce0;
output   buff_C_out_4_we0;
output  [31:0] buff_C_out_4_d0;
input  [31:0] buff_C_out_4_q0;
output  [8:0] buff_C_out_5_address0;
output   buff_C_out_5_ce0;
output   buff_C_out_5_we0;
output  [31:0] buff_C_out_5_d0;
input  [31:0] buff_C_out_5_q0;
output  [8:0] buff_C_out_6_address0;
output   buff_C_out_6_ce0;
output   buff_C_out_6_we0;
output  [31:0] buff_C_out_6_d0;
input  [31:0] buff_C_out_6_q0;
output  [8:0] buff_C_out_7_address0;
output   buff_C_out_7_ce0;
output   buff_C_out_7_we0;
output  [31:0] buff_C_out_7_d0;
input  [31:0] buff_C_out_7_q0;
output  [31:0] grp_fu_416_p_din0;
output  [31:0] grp_fu_416_p_din1;
output  [1:0] grp_fu_416_p_opcode;
input  [31:0] grp_fu_416_p_dout0;
output   grp_fu_416_p_ce;
output  [31:0] grp_fu_420_p_din0;
output  [31:0] grp_fu_420_p_din1;
input  [31:0] grp_fu_420_p_dout0;
output   grp_fu_420_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln20_reg_919;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln20_fu_501_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln20_reg_919_pp0_iter1_reg;
reg   [6:0] k_load_reg_923;
wire   [0:0] icmp_ln21_fu_516_p2;
reg   [0:0] icmp_ln21_reg_928;
wire   [0:0] and_ln5_fu_534_p2;
reg   [0:0] and_ln5_reg_935;
wire   [5:0] trunc_ln21_fu_590_p1;
reg   [5:0] trunc_ln21_reg_941;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [6:0] k_mid2_fu_604_p3;
reg   [6:0] k_mid2_reg_946;
wire   [0:0] first_iter_1_fu_622_p2;
reg   [0:0] first_iter_1_reg_951;
reg   [0:0] first_iter_1_reg_951_pp0_iter1_reg;
wire   [2:0] trunc_ln21_1_fu_628_p1;
reg   [2:0] trunc_ln21_1_reg_955;
reg   [2:0] trunc_ln21_1_reg_955_pp0_iter1_reg;
reg   [2:0] trunc_ln21_1_reg_955_pp0_iter2_reg;
reg   [2:0] lshr_ln5_1_reg_960;
wire   [0:0] icmp_ln23_1_fu_698_p2;
reg   [0:0] icmp_ln23_1_reg_1045;
reg   [0:0] icmp_ln23_1_reg_1045_pp0_iter1_reg;
reg   [0:0] icmp_ln23_1_reg_1045_pp0_iter2_reg;
wire   [31:0] tmp_5_fu_722_p19;
reg   [31:0] tmp_5_reg_1049;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] tmp_6_fu_762_p19;
reg   [31:0] tmp_6_reg_1054;
reg   [31:0] mul_reg_1059;
wire    ap_block_pp0_stage7_11001;
reg   [8:0] buff_C_out_addr_reg_1064;
reg   [8:0] buff_C_out_addr_reg_1064_pp0_iter2_reg;
reg   [8:0] buff_C_out_1_addr_reg_1069;
reg   [8:0] buff_C_out_1_addr_reg_1069_pp0_iter2_reg;
reg   [8:0] buff_C_out_2_addr_reg_1074;
reg   [8:0] buff_C_out_2_addr_reg_1074_pp0_iter2_reg;
reg   [8:0] buff_C_out_3_addr_reg_1079;
reg   [8:0] buff_C_out_3_addr_reg_1079_pp0_iter2_reg;
reg   [8:0] buff_C_out_4_addr_reg_1084;
reg   [8:0] buff_C_out_4_addr_reg_1084_pp0_iter2_reg;
reg   [8:0] buff_C_out_5_addr_reg_1089;
reg   [8:0] buff_C_out_5_addr_reg_1089_pp0_iter2_reg;
reg   [8:0] buff_C_out_6_addr_reg_1094;
reg   [8:0] buff_C_out_6_addr_reg_1094_pp0_iter2_reg;
reg   [8:0] buff_C_out_7_addr_reg_1099;
reg   [8:0] buff_C_out_7_addr_reg_1099_pp0_iter2_reg;
reg   [31:0] mul2_reg_1104;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] add_reg_1114;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln24_fu_660_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln24_1_fu_680_p1;
wire   [63:0] tmp_8_cast_fu_808_p1;
reg   [6:0] k_fu_120;
wire   [6:0] add_ln23_fu_692_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_124;
wire   [6:0] select_ln21_fu_611_p3;
reg   [13:0] indvar_flatten7_fu_128;
wire   [13:0] select_ln21_1_fu_546_p3;
reg   [6:0] i_fu_132;
wire   [6:0] select_ln20_fu_583_p3;
reg   [18:0] indvar_flatten21_fu_136;
wire   [18:0] add_ln20_1_fu_507_p2;
reg   [31:0] empty_fu_140;
wire   [31:0] tmp_fu_820_p19;
wire    ap_block_pp0_stage4;
reg    buff_A0_ce0_local;
reg    buff_A0_1_ce0_local;
reg    buff_A0_2_ce0_local;
reg    buff_A0_3_ce0_local;
reg    buff_A0_4_ce0_local;
reg    buff_A0_5_ce0_local;
reg    buff_A0_6_ce0_local;
reg    buff_A0_7_ce0_local;
reg    buff_A1_ce0_local;
reg    buff_A1_1_ce0_local;
reg    buff_A1_2_ce0_local;
reg    buff_A1_3_ce0_local;
reg    buff_A1_4_ce0_local;
reg    buff_A1_5_ce0_local;
reg    buff_A1_6_ce0_local;
reg    buff_A1_7_ce0_local;
reg    buff_C_out_ce0_local;
reg   [8:0] buff_C_out_address0_local;
reg    buff_C_out_we0_local;
wire    ap_block_pp0_stage3;
reg    buff_C_out_1_ce0_local;
reg   [8:0] buff_C_out_1_address0_local;
reg    buff_C_out_1_we0_local;
reg    buff_C_out_2_ce0_local;
reg   [8:0] buff_C_out_2_address0_local;
reg    buff_C_out_2_we0_local;
reg    buff_C_out_3_ce0_local;
reg   [8:0] buff_C_out_3_address0_local;
reg    buff_C_out_3_we0_local;
reg    buff_C_out_4_ce0_local;
reg   [8:0] buff_C_out_4_address0_local;
reg    buff_C_out_4_we0_local;
reg    buff_C_out_5_ce0_local;
reg   [8:0] buff_C_out_5_address0_local;
reg    buff_C_out_5_we0_local;
reg    buff_C_out_6_ce0_local;
reg   [8:0] buff_C_out_6_address0_local;
reg    buff_C_out_6_we0_local;
reg    buff_C_out_7_ce0_local;
reg   [8:0] buff_C_out_7_address0_local;
reg    buff_C_out_7_we0_local;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_466_p0;
reg   [31:0] grp_fu_466_p1;
wire   [0:0] icmp_ln23_fu_528_p2;
wire   [0:0] xor_ln5_fu_522_p2;
wire   [13:0] add_ln21_1_fu_540_p2;
wire   [6:0] add_ln20_fu_570_p2;
wire   [6:0] select_ln5_fu_576_p3;
wire   [0:0] empty_10_fu_600_p2;
wire   [6:0] add_ln21_fu_594_p2;
wire   [2:0] lshr_ln5_3_fu_642_p4;
wire   [8:0] tmp_s_fu_652_p3;
wire   [5:0] empty_11_fu_618_p1;
wire   [8:0] tmp_3_fu_672_p3;
wire   [31:0] tmp_5_fu_722_p17;
wire   [2:0] trunc_ln23_fu_719_p1;
wire   [31:0] tmp_6_fu_762_p17;
wire   [8:0] tmp_8_fu_802_p3;
wire   [31:0] tmp_fu_820_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage3;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage4_00001;
wire   [2:0] tmp_5_fu_722_p1;
wire   [2:0] tmp_5_fu_722_p3;
wire   [2:0] tmp_5_fu_722_p5;
wire   [2:0] tmp_5_fu_722_p7;
wire  signed [2:0] tmp_5_fu_722_p9;
wire  signed [2:0] tmp_5_fu_722_p11;
wire  signed [2:0] tmp_5_fu_722_p13;
wire  signed [2:0] tmp_5_fu_722_p15;
wire   [2:0] tmp_6_fu_762_p1;
wire   [2:0] tmp_6_fu_762_p3;
wire   [2:0] tmp_6_fu_762_p5;
wire   [2:0] tmp_6_fu_762_p7;
wire  signed [2:0] tmp_6_fu_762_p9;
wire  signed [2:0] tmp_6_fu_762_p11;
wire  signed [2:0] tmp_6_fu_762_p13;
wire  signed [2:0] tmp_6_fu_762_p15;
wire   [2:0] tmp_fu_820_p1;
wire   [2:0] tmp_fu_820_p3;
wire   [2:0] tmp_fu_820_p5;
wire   [2:0] tmp_fu_820_p7;
wire  signed [2:0] tmp_fu_820_p9;
wire  signed [2:0] tmp_fu_820_p11;
wire  signed [2:0] tmp_fu_820_p13;
wire  signed [2:0] tmp_fu_820_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_120 = 7'd0;
#0 j_fu_124 = 7'd0;
#0 indvar_flatten7_fu_128 = 14'd0;
#0 i_fu_132 = 7'd0;
#0 indvar_flatten21_fu_136 = 19'd0;
#0 empty_fu_140 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U51(.din0(buff_A0_q0),.din1(buff_A0_1_q0),.din2(buff_A0_2_q0),.din3(buff_A0_3_q0),.din4(buff_A0_4_q0),.din5(buff_A0_5_q0),.din6(buff_A0_6_q0),.din7(buff_A0_7_q0),.def(tmp_5_fu_722_p17),.sel(trunc_ln23_fu_719_p1),.dout(tmp_5_fu_722_p19));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U52(.din0(buff_A1_q0),.din1(buff_A1_1_q0),.din2(buff_A1_2_q0),.din3(buff_A1_3_q0),.din4(buff_A1_4_q0),.din5(buff_A1_5_q0),.din6(buff_A1_6_q0),.din7(buff_A1_7_q0),.def(tmp_6_fu_762_p17),.sel(trunc_ln23_fu_719_p1),.dout(tmp_6_fu_762_p19));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U53(.din0(buff_C_out_q0),.din1(buff_C_out_1_q0),.din2(buff_C_out_2_q0),.din3(buff_C_out_3_q0),.din4(buff_C_out_4_q0),.din5(buff_C_out_5_q0),.din6(buff_C_out_6_q0),.din7(buff_C_out_7_q0),.def(tmp_fu_820_p17),.sel(trunc_ln21_1_reg_955_pp0_iter1_reg),.dout(tmp_fu_820_p19));
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        if (((ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_1_reg_951_pp0_iter1_reg == 1'd1))) begin
            empty_fu_140 <= tmp_fu_820_p19;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            empty_fu_140 <= add_reg_1114;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_132 <= 7'd0;
    end else if (((icmp_ln20_reg_919 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_132 <= select_ln20_fu_583_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten21_fu_136 <= 19'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln20_fu_501_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten21_fu_136 <= add_ln20_1_fu_507_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten7_fu_128 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln20_fu_501_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten7_fu_128 <= select_ln21_1_fu_546_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_124 <= 7'd0;
    end else if (((icmp_ln20_reg_919 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_124 <= select_ln21_fu_611_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_120 <= 7'd0;
    end else if (((icmp_ln20_reg_919 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_120 <= add_ln23_fu_692_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_reg_1114 <= grp_fu_416_p_dout0;
        buff_C_out_1_addr_reg_1069 <= tmp_8_cast_fu_808_p1;
        buff_C_out_1_addr_reg_1069_pp0_iter2_reg <= buff_C_out_1_addr_reg_1069;
        buff_C_out_2_addr_reg_1074 <= tmp_8_cast_fu_808_p1;
        buff_C_out_2_addr_reg_1074_pp0_iter2_reg <= buff_C_out_2_addr_reg_1074;
        buff_C_out_3_addr_reg_1079 <= tmp_8_cast_fu_808_p1;
        buff_C_out_3_addr_reg_1079_pp0_iter2_reg <= buff_C_out_3_addr_reg_1079;
        buff_C_out_4_addr_reg_1084 <= tmp_8_cast_fu_808_p1;
        buff_C_out_4_addr_reg_1084_pp0_iter2_reg <= buff_C_out_4_addr_reg_1084;
        buff_C_out_5_addr_reg_1089 <= tmp_8_cast_fu_808_p1;
        buff_C_out_5_addr_reg_1089_pp0_iter2_reg <= buff_C_out_5_addr_reg_1089;
        buff_C_out_6_addr_reg_1094 <= tmp_8_cast_fu_808_p1;
        buff_C_out_6_addr_reg_1094_pp0_iter2_reg <= buff_C_out_6_addr_reg_1094;
        buff_C_out_7_addr_reg_1099 <= tmp_8_cast_fu_808_p1;
        buff_C_out_7_addr_reg_1099_pp0_iter2_reg <= buff_C_out_7_addr_reg_1099;
        buff_C_out_addr_reg_1064 <= tmp_8_cast_fu_808_p1;
        buff_C_out_addr_reg_1064_pp0_iter2_reg <= buff_C_out_addr_reg_1064;
        first_iter_1_reg_951 <= first_iter_1_fu_622_p2;
        first_iter_1_reg_951_pp0_iter1_reg <= first_iter_1_reg_951;
        icmp_ln23_1_reg_1045 <= icmp_ln23_1_fu_698_p2;
        icmp_ln23_1_reg_1045_pp0_iter1_reg <= icmp_ln23_1_reg_1045;
        icmp_ln23_1_reg_1045_pp0_iter2_reg <= icmp_ln23_1_reg_1045_pp0_iter1_reg;
        k_mid2_reg_946 <= k_mid2_fu_604_p3;
        lshr_ln5_1_reg_960 <= {{select_ln21_fu_611_p3[5:3]}};
        trunc_ln21_1_reg_955 <= trunc_ln21_1_fu_628_p1;
        trunc_ln21_1_reg_955_pp0_iter1_reg <= trunc_ln21_1_reg_955;
        trunc_ln21_1_reg_955_pp0_iter2_reg <= trunc_ln21_1_reg_955_pp0_iter1_reg;
        trunc_ln21_reg_941 <= trunc_ln21_fu_590_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln5_reg_935 <= and_ln5_fu_534_p2;
        icmp_ln20_reg_919 <= icmp_ln20_fu_501_p2;
        icmp_ln20_reg_919_pp0_iter1_reg <= icmp_ln20_reg_919;
        icmp_ln21_reg_928 <= icmp_ln21_fu_516_p2;
        k_load_reg_923 <= k_fu_120;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul2_reg_1104 <= grp_fu_420_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_reg_1059 <= grp_fu_420_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_5_reg_1049 <= tmp_5_fu_722_p19;
        tmp_6_reg_1054 <= tmp_6_fu_762_p19;
    end
end
always @ (*) begin
    if (((icmp_ln20_reg_919 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln20_reg_919_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_1_ce0_local = 1'b1;
    end else begin
        buff_A0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_2_ce0_local = 1'b1;
    end else begin
        buff_A0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_3_ce0_local = 1'b1;
    end else begin
        buff_A0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_4_ce0_local = 1'b1;
    end else begin
        buff_A0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_5_ce0_local = 1'b1;
    end else begin
        buff_A0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_6_ce0_local = 1'b1;
    end else begin
        buff_A0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_7_ce0_local = 1'b1;
    end else begin
        buff_A0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_1_ce0_local = 1'b1;
    end else begin
        buff_A1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_2_ce0_local = 1'b1;
    end else begin
        buff_A1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_3_ce0_local = 1'b1;
    end else begin
        buff_A1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_4_ce0_local = 1'b1;
    end else begin
        buff_A1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_5_ce0_local = 1'b1;
    end else begin
        buff_A1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_6_ce0_local = 1'b1;
    end else begin
        buff_A1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_7_ce0_local = 1'b1;
    end else begin
        buff_A1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_ce0_local = 1'b1;
    end else begin
        buff_A1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_reg_1069_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_1_address0_local = tmp_8_cast_fu_808_p1;
    end else begin
        buff_C_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_1_reg_1045_pp0_iter2_reg == 1'd1) & (trunc_ln21_1_reg_955_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_2_address0_local = buff_C_out_2_addr_reg_1074_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_2_address0_local = tmp_8_cast_fu_808_p1;
    end else begin
        buff_C_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_1_reg_1045_pp0_iter2_reg == 1'd1) & (trunc_ln21_1_reg_955_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_2_we0_local = 1'b1;
    end else begin
        buff_C_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_3_address0_local = buff_C_out_3_addr_reg_1079_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_3_address0_local = tmp_8_cast_fu_808_p1;
    end else begin
        buff_C_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_1_reg_1045_pp0_iter2_reg == 1'd1) & (trunc_ln21_1_reg_955_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_3_we0_local = 1'b1;
    end else begin
        buff_C_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_4_address0_local = buff_C_out_4_addr_reg_1084_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_4_address0_local = tmp_8_cast_fu_808_p1;
    end else begin
        buff_C_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_4_ce0_local = 1'b1;
    end else begin
        buff_C_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_1_reg_1045_pp0_iter2_reg == 1'd1) & (trunc_ln21_1_reg_955_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_4_we0_local = 1'b1;
    end else begin
        buff_C_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_5_address0_local = buff_C_out_5_addr_reg_1089_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_5_address0_local = tmp_8_cast_fu_808_p1;
    end else begin
        buff_C_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_5_ce0_local = 1'b1;
    end else begin
        buff_C_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_1_reg_1045_pp0_iter2_reg == 1'd1) & (trunc_ln21_1_reg_955_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_5_we0_local = 1'b1;
    end else begin
        buff_C_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_6_address0_local = buff_C_out_6_addr_reg_1094_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_6_address0_local = tmp_8_cast_fu_808_p1;
    end else begin
        buff_C_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_6_ce0_local = 1'b1;
    end else begin
        buff_C_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_1_reg_1045_pp0_iter2_reg == 1'd1) & (trunc_ln21_1_reg_955_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_6_we0_local = 1'b1;
    end else begin
        buff_C_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_7_address0_local = buff_C_out_7_addr_reg_1099_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_7_address0_local = tmp_8_cast_fu_808_p1;
    end else begin
        buff_C_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_7_ce0_local = 1'b1;
    end else begin
        buff_C_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_1_reg_1045_pp0_iter2_reg == 1'd1) & (trunc_ln21_1_reg_955_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_7_we0_local = 1'b1;
    end else begin
        buff_C_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_address0_local = buff_C_out_addr_reg_1064_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_address0_local = tmp_8_cast_fu_808_p1;
    end else begin
        buff_C_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_1_reg_1045_pp0_iter2_reg == 1'd1) & (trunc_ln21_1_reg_955_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_466_p0 = mul_reg_1059;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_466_p0 = tmp_5_reg_1049;
    end else begin
        grp_fu_466_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_466_p1 = tmp_6_reg_1054;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_466_p1 = alpha;
    end else begin
        grp_fu_466_p1 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage3))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
assign add_ln20_1_fu_507_p2 = (indvar_flatten21_fu_136 + 19'd1);
assign add_ln20_fu_570_p2 = (i_fu_132 + 7'd1);
assign add_ln21_1_fu_540_p2 = (indvar_flatten7_fu_128 + 14'd1);
assign add_ln21_fu_594_p2 = (select_ln5_fu_576_p3 + 7'd1);
assign add_ln23_fu_692_p2 = (k_mid2_fu_604_p3 + 7'd1);
assign and_ln5_fu_534_p2 = (xor_ln5_fu_522_p2 & icmp_ln23_fu_528_p2);
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
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
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
assign buff_A0_1_address0 = zext_ln24_fu_660_p1;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_2_address0 = zext_ln24_fu_660_p1;
assign buff_A0_2_ce0 = buff_A0_2_ce0_local;
assign buff_A0_3_address0 = zext_ln24_fu_660_p1;
assign buff_A0_3_ce0 = buff_A0_3_ce0_local;
assign buff_A0_4_address0 = zext_ln24_fu_660_p1;
assign buff_A0_4_ce0 = buff_A0_4_ce0_local;
assign buff_A0_5_address0 = zext_ln24_fu_660_p1;
assign buff_A0_5_ce0 = buff_A0_5_ce0_local;
assign buff_A0_6_address0 = zext_ln24_fu_660_p1;
assign buff_A0_6_ce0 = buff_A0_6_ce0_local;
assign buff_A0_7_address0 = zext_ln24_fu_660_p1;
assign buff_A0_7_ce0 = buff_A0_7_ce0_local;
assign buff_A0_address0 = zext_ln24_fu_660_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A1_1_address0 = zext_ln24_1_fu_680_p1;
assign buff_A1_1_ce0 = buff_A1_1_ce0_local;
assign buff_A1_2_address0 = zext_ln24_1_fu_680_p1;
assign buff_A1_2_ce0 = buff_A1_2_ce0_local;
assign buff_A1_3_address0 = zext_ln24_1_fu_680_p1;
assign buff_A1_3_ce0 = buff_A1_3_ce0_local;
assign buff_A1_4_address0 = zext_ln24_1_fu_680_p1;
assign buff_A1_4_ce0 = buff_A1_4_ce0_local;
assign buff_A1_5_address0 = zext_ln24_1_fu_680_p1;
assign buff_A1_5_ce0 = buff_A1_5_ce0_local;
assign buff_A1_6_address0 = zext_ln24_1_fu_680_p1;
assign buff_A1_6_ce0 = buff_A1_6_ce0_local;
assign buff_A1_7_address0 = zext_ln24_1_fu_680_p1;
assign buff_A1_7_ce0 = buff_A1_7_ce0_local;
assign buff_A1_address0 = zext_ln24_1_fu_680_p1;
assign buff_A1_ce0 = buff_A1_ce0_local;
assign buff_C_out_1_address0 = buff_C_out_1_address0_local;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_d0 = add_reg_1114;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_2_address0 = buff_C_out_2_address0_local;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_d0 = add_reg_1114;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_3_address0 = buff_C_out_3_address0_local;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_d0 = add_reg_1114;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_4_address0 = buff_C_out_4_address0_local;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_4_d0 = add_reg_1114;
assign buff_C_out_4_we0 = buff_C_out_4_we0_local;
assign buff_C_out_5_address0 = buff_C_out_5_address0_local;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_5_d0 = add_reg_1114;
assign buff_C_out_5_we0 = buff_C_out_5_we0_local;
assign buff_C_out_6_address0 = buff_C_out_6_address0_local;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_6_d0 = add_reg_1114;
assign buff_C_out_6_we0 = buff_C_out_6_we0_local;
assign buff_C_out_7_address0 = buff_C_out_7_address0_local;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_7_d0 = add_reg_1114;
assign buff_C_out_7_we0 = buff_C_out_7_we0_local;
assign buff_C_out_address0 = buff_C_out_address0_local;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_d0 = add_reg_1114;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign empty_10_fu_600_p2 = (icmp_ln21_reg_928 | and_ln5_reg_935);
assign empty_11_fu_618_p1 = select_ln21_fu_611_p3[5:0];
assign first_iter_1_fu_622_p2 = ((k_mid2_fu_604_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_416_p_ce = 1'b1;
assign grp_fu_416_p_din0 = empty_fu_140;
assign grp_fu_416_p_din1 = mul2_reg_1104;
assign grp_fu_416_p_opcode = 2'd0;
assign grp_fu_420_p_ce = 1'b1;
assign grp_fu_420_p_din0 = grp_fu_466_p0;
assign grp_fu_420_p_din1 = grp_fu_466_p1;
assign icmp_ln20_fu_501_p2 = ((indvar_flatten21_fu_136 == 19'd262144) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_516_p2 = ((indvar_flatten7_fu_128 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln23_1_fu_698_p2 = ((add_ln23_fu_692_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln23_fu_528_p2 = ((k_fu_120 == 7'd64) ? 1'b1 : 1'b0);
assign k_mid2_fu_604_p3 = ((empty_10_fu_600_p2[0:0] == 1'b1) ? 7'd0 : k_load_reg_923);
assign lshr_ln5_3_fu_642_p4 = {{k_mid2_fu_604_p3[5:3]}};
assign select_ln20_fu_583_p3 = ((icmp_ln21_reg_928[0:0] == 1'b1) ? add_ln20_fu_570_p2 : i_fu_132);
assign select_ln21_1_fu_546_p3 = ((icmp_ln21_fu_516_p2[0:0] == 1'b1) ? 14'd1 : add_ln21_1_fu_540_p2);
assign select_ln21_fu_611_p3 = ((and_ln5_reg_935[0:0] == 1'b1) ? add_ln21_fu_594_p2 : select_ln5_fu_576_p3);
assign select_ln5_fu_576_p3 = ((icmp_ln21_reg_928[0:0] == 1'b1) ? 7'd0 : j_fu_124);
assign tmp_3_fu_672_p3 = {{empty_11_fu_618_p1}, {lshr_ln5_3_fu_642_p4}};
assign tmp_5_fu_722_p17 = 'bx;
assign tmp_6_fu_762_p17 = 'bx;
assign tmp_8_cast_fu_808_p1 = tmp_8_fu_802_p3;
assign tmp_8_fu_802_p3 = {{trunc_ln21_reg_941}, {lshr_ln5_1_reg_960}};
assign tmp_fu_820_p17 = 'bx;
assign tmp_s_fu_652_p3 = {{trunc_ln21_fu_590_p1}, {lshr_ln5_3_fu_642_p4}};
assign trunc_ln21_1_fu_628_p1 = select_ln21_fu_611_p3[2:0];
assign trunc_ln21_fu_590_p1 = select_ln20_fu_583_p3[5:0];
assign trunc_ln23_fu_719_p1 = k_mid2_reg_946[2:0];
assign xor_ln5_fu_522_p2 = (icmp_ln21_fu_516_p2 ^ 1'd1);
assign zext_ln24_1_fu_680_p1 = tmp_3_fu_672_p3;
assign zext_ln24_fu_660_p1 = tmp_s_fu_652_p3;
endmodule 
