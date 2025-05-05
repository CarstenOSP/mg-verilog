module mvt_mvt_Pipeline_lp1_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_8_address0,buff_A_8_ce0,buff_A_8_q0,buff_A_9_address0,buff_A_9_ce0,buff_A_9_q0,buff_A_10_address0,buff_A_10_ce0,buff_A_10_q0,buff_A_11_address0,buff_A_11_ce0,buff_A_11_q0,buff_A_12_address0,buff_A_12_ce0,buff_A_12_q0,buff_A_13_address0,buff_A_13_ce0,buff_A_13_q0,buff_A_14_address0,buff_A_14_ce0,buff_A_14_q0,buff_A_15_address0,buff_A_15_ce0,buff_A_15_q0,buff_y1_address0,buff_y1_ce0,buff_y1_q0,buff_y1_1_address0,buff_y1_1_ce0,buff_y1_1_q0,buff_y1_2_address0,buff_y1_2_ce0,buff_y1_2_q0,buff_y1_3_address0,buff_y1_3_ce0,buff_y1_3_q0,buff_y1_4_address0,buff_y1_4_ce0,buff_y1_4_q0,buff_y1_5_address0,buff_y1_5_ce0,buff_y1_5_q0,buff_y1_6_address0,buff_y1_6_ce0,buff_y1_6_q0,buff_y1_7_address0,buff_y1_7_ce0,buff_y1_7_q0,buff_x1_address0,buff_x1_ce0,buff_x1_we0,buff_x1_d0,buff_x1_q0,buff_x1_1_address0,buff_x1_1_ce0,buff_x1_1_we0,buff_x1_1_d0,buff_x1_1_q0,buff_x1_2_address0,buff_x1_2_ce0,buff_x1_2_we0,buff_x1_2_d0,buff_x1_2_q0,buff_x1_3_address0,buff_x1_3_ce0,buff_x1_3_we0,buff_x1_3_d0,buff_x1_3_q0,buff_x1_4_address0,buff_x1_4_ce0,buff_x1_4_we0,buff_x1_4_d0,buff_x1_4_q0,buff_x1_5_address0,buff_x1_5_ce0,buff_x1_5_we0,buff_x1_5_d0,buff_x1_5_q0,buff_x1_6_address0,buff_x1_6_ce0,buff_x1_6_we0,buff_x1_6_d0,buff_x1_6_q0,buff_x1_7_address0,buff_x1_7_ce0,buff_x1_7_we0,buff_x1_7_d0,buff_x1_7_q0,grp_fu_1036_p_din0,grp_fu_1036_p_din1,grp_fu_1036_p_opcode,grp_fu_1036_p_dout0,grp_fu_1036_p_ce,grp_fu_1040_p_din0,grp_fu_1040_p_din1,grp_fu_1040_p_dout0,grp_fu_1040_p_ce); 
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
output  [7:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [7:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [7:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [7:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [7:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [7:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [7:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [7:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [7:0] buff_A_8_address0;
output   buff_A_8_ce0;
input  [31:0] buff_A_8_q0;
output  [7:0] buff_A_9_address0;
output   buff_A_9_ce0;
input  [31:0] buff_A_9_q0;
output  [7:0] buff_A_10_address0;
output   buff_A_10_ce0;
input  [31:0] buff_A_10_q0;
output  [7:0] buff_A_11_address0;
output   buff_A_11_ce0;
input  [31:0] buff_A_11_q0;
output  [7:0] buff_A_12_address0;
output   buff_A_12_ce0;
input  [31:0] buff_A_12_q0;
output  [7:0] buff_A_13_address0;
output   buff_A_13_ce0;
input  [31:0] buff_A_13_q0;
output  [7:0] buff_A_14_address0;
output   buff_A_14_ce0;
input  [31:0] buff_A_14_q0;
output  [7:0] buff_A_15_address0;
output   buff_A_15_ce0;
input  [31:0] buff_A_15_q0;
output  [2:0] buff_y1_address0;
output   buff_y1_ce0;
input  [31:0] buff_y1_q0;
output  [2:0] buff_y1_1_address0;
output   buff_y1_1_ce0;
input  [31:0] buff_y1_1_q0;
output  [2:0] buff_y1_2_address0;
output   buff_y1_2_ce0;
input  [31:0] buff_y1_2_q0;
output  [2:0] buff_y1_3_address0;
output   buff_y1_3_ce0;
input  [31:0] buff_y1_3_q0;
output  [2:0] buff_y1_4_address0;
output   buff_y1_4_ce0;
input  [31:0] buff_y1_4_q0;
output  [2:0] buff_y1_5_address0;
output   buff_y1_5_ce0;
input  [31:0] buff_y1_5_q0;
output  [2:0] buff_y1_6_address0;
output   buff_y1_6_ce0;
input  [31:0] buff_y1_6_q0;
output  [2:0] buff_y1_7_address0;
output   buff_y1_7_ce0;
input  [31:0] buff_y1_7_q0;
output  [2:0] buff_x1_address0;
output   buff_x1_ce0;
output   buff_x1_we0;
output  [31:0] buff_x1_d0;
input  [31:0] buff_x1_q0;
output  [2:0] buff_x1_1_address0;
output   buff_x1_1_ce0;
output   buff_x1_1_we0;
output  [31:0] buff_x1_1_d0;
input  [31:0] buff_x1_1_q0;
output  [2:0] buff_x1_2_address0;
output   buff_x1_2_ce0;
output   buff_x1_2_we0;
output  [31:0] buff_x1_2_d0;
input  [31:0] buff_x1_2_q0;
output  [2:0] buff_x1_3_address0;
output   buff_x1_3_ce0;
output   buff_x1_3_we0;
output  [31:0] buff_x1_3_d0;
input  [31:0] buff_x1_3_q0;
output  [2:0] buff_x1_4_address0;
output   buff_x1_4_ce0;
output   buff_x1_4_we0;
output  [31:0] buff_x1_4_d0;
input  [31:0] buff_x1_4_q0;
output  [2:0] buff_x1_5_address0;
output   buff_x1_5_ce0;
output   buff_x1_5_we0;
output  [31:0] buff_x1_5_d0;
input  [31:0] buff_x1_5_q0;
output  [2:0] buff_x1_6_address0;
output   buff_x1_6_ce0;
output   buff_x1_6_we0;
output  [31:0] buff_x1_6_d0;
input  [31:0] buff_x1_6_q0;
output  [2:0] buff_x1_7_address0;
output   buff_x1_7_ce0;
output   buff_x1_7_we0;
output  [31:0] buff_x1_7_d0;
input  [31:0] buff_x1_7_q0;
output  [31:0] grp_fu_1036_p_din0;
output  [31:0] grp_fu_1036_p_din1;
output  [1:0] grp_fu_1036_p_opcode;
input  [31:0] grp_fu_1036_p_dout0;
output   grp_fu_1036_p_ce;
output  [31:0] grp_fu_1040_p_din0;
output  [31:0] grp_fu_1040_p_din1;
input  [31:0] grp_fu_1040_p_dout0;
output   grp_fu_1040_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln23_reg_967;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln23_fu_584_p2;
wire   [6:0] select_ln6_fu_614_p3;
reg   [6:0] select_ln6_reg_971;
wire   [0:0] first_iter_0_fu_630_p2;
reg   [0:0] first_iter_0_reg_977;
wire   [2:0] trunc_ln23_fu_636_p1;
reg   [2:0] trunc_ln23_reg_981;
reg   [2:0] trunc_ln23_reg_981_pp0_iter1_reg;
reg   [2:0] buff_x1_addr_reg_986;
reg   [2:0] buff_x1_addr_reg_986_pp0_iter1_reg;
reg   [2:0] buff_x1_1_addr_reg_991;
reg   [2:0] buff_x1_1_addr_reg_991_pp0_iter1_reg;
reg   [2:0] buff_x1_2_addr_reg_996;
reg   [2:0] buff_x1_2_addr_reg_996_pp0_iter1_reg;
reg   [2:0] buff_x1_3_addr_reg_1001;
reg   [2:0] buff_x1_3_addr_reg_1001_pp0_iter1_reg;
reg   [2:0] buff_x1_4_addr_reg_1006;
reg   [2:0] buff_x1_4_addr_reg_1006_pp0_iter1_reg;
reg   [2:0] buff_x1_5_addr_reg_1011;
reg   [2:0] buff_x1_5_addr_reg_1011_pp0_iter1_reg;
reg   [2:0] buff_x1_6_addr_reg_1016;
reg   [2:0] buff_x1_6_addr_reg_1016_pp0_iter1_reg;
reg   [2:0] buff_x1_7_addr_reg_1021;
reg   [2:0] buff_x1_7_addr_reg_1021_pp0_iter1_reg;
wire   [0:0] trunc_ln23_1_fu_662_p1;
reg   [0:0] trunc_ln23_1_reg_1026;
wire   [2:0] lshr_ln6_5_fu_666_p4;
reg   [2:0] lshr_ln6_5_reg_1038;
reg   [4:0] tmp_7_reg_1043;
wire   [31:0] tmp_fu_708_p19;
reg   [31:0] tmp_reg_1088;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [2:0] trunc_ln24_fu_747_p1;
reg   [2:0] trunc_ln24_reg_1093;
wire   [31:0] tmp_2_fu_776_p19;
reg   [31:0] tmp_2_reg_1178;
wire   [0:0] icmp_ln24_1_fu_821_p2;
reg   [0:0] icmp_ln24_1_reg_1183;
reg   [0:0] icmp_ln24_1_reg_1183_pp0_iter1_reg;
wire   [31:0] tmp_s_fu_888_p19;
reg   [31:0] tmp_s_reg_1187;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] mul_reg_1192;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] add_reg_1202;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln6_1_fu_650_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln6_fu_676_p1;
wire   [63:0] zext_ln25_fu_756_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_126;
wire   [6:0] add_ln24_fu_816_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_1_fu_130;
wire   [6:0] select_ln23_fu_622_p3;
reg   [6:0] ap_sig_allocacmp_i_1_load;
reg   [12:0] indvar_flatten_fu_134;
wire   [12:0] add_ln23_1_fu_590_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [31:0] empty_fu_138;
wire    ap_block_pp0_stage7;
reg    buff_x1_ce0_local;
reg   [2:0] buff_x1_address0_local;
reg    buff_x1_we0_local;
wire    ap_block_pp0_stage6;
reg    buff_x1_1_ce0_local;
reg   [2:0] buff_x1_1_address0_local;
reg    buff_x1_1_we0_local;
reg    buff_x1_2_ce0_local;
reg   [2:0] buff_x1_2_address0_local;
reg    buff_x1_2_we0_local;
reg    buff_x1_3_ce0_local;
reg   [2:0] buff_x1_3_address0_local;
reg    buff_x1_3_we0_local;
reg    buff_x1_4_ce0_local;
reg   [2:0] buff_x1_4_address0_local;
reg    buff_x1_4_we0_local;
reg    buff_x1_5_ce0_local;
reg   [2:0] buff_x1_5_address0_local;
reg    buff_x1_5_we0_local;
reg    buff_x1_6_ce0_local;
reg   [2:0] buff_x1_6_address0_local;
reg    buff_x1_6_we0_local;
reg    buff_x1_7_ce0_local;
reg   [2:0] buff_x1_7_address0_local;
reg    buff_x1_7_we0_local;
reg    buff_y1_ce0_local;
reg    buff_y1_1_ce0_local;
reg    buff_y1_2_ce0_local;
reg    buff_y1_3_ce0_local;
reg    buff_y1_4_ce0_local;
reg    buff_y1_5_ce0_local;
reg    buff_y1_6_ce0_local;
reg    buff_y1_7_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_7_ce0_local;
reg    buff_A_8_ce0_local;
reg    buff_A_9_ce0_local;
reg    buff_A_10_ce0_local;
reg    buff_A_11_ce0_local;
reg    buff_A_12_ce0_local;
reg    buff_A_13_ce0_local;
reg    buff_A_14_ce0_local;
reg    buff_A_15_ce0_local;
wire    ap_block_pp0_stage3;
wire   [0:0] icmp_ln24_fu_608_p2;
wire   [6:0] add_ln23_fu_602_p2;
wire   [2:0] lshr_ln6_3_fu_640_p4;
wire   [31:0] tmp_fu_708_p17;
wire   [7:0] tmp_8_fu_750_p3;
wire   [31:0] tmp_2_fu_776_p17;
wire   [2:0] tmp_2_fu_776_p18;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_s_fu_888_p2;
wire   [31:0] tmp_s_fu_888_p4;
wire   [31:0] tmp_s_fu_888_p6;
wire   [31:0] tmp_s_fu_888_p8;
wire   [31:0] tmp_s_fu_888_p10;
wire   [31:0] tmp_s_fu_888_p12;
wire   [31:0] tmp_s_fu_888_p14;
wire   [31:0] tmp_s_fu_888_p16;
wire   [31:0] tmp_s_fu_888_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
reg    ap_condition_910;
wire   [2:0] tmp_fu_708_p1;
wire   [2:0] tmp_fu_708_p3;
wire   [2:0] tmp_fu_708_p5;
wire   [2:0] tmp_fu_708_p7;
wire  signed [2:0] tmp_fu_708_p9;
wire  signed [2:0] tmp_fu_708_p11;
wire  signed [2:0] tmp_fu_708_p13;
wire  signed [2:0] tmp_fu_708_p15;
wire   [2:0] tmp_2_fu_776_p1;
wire   [2:0] tmp_2_fu_776_p3;
wire   [2:0] tmp_2_fu_776_p5;
wire   [2:0] tmp_2_fu_776_p7;
wire  signed [2:0] tmp_2_fu_776_p9;
wire  signed [2:0] tmp_2_fu_776_p11;
wire  signed [2:0] tmp_2_fu_776_p13;
wire  signed [2:0] tmp_2_fu_776_p15;
wire   [2:0] tmp_s_fu_888_p1;
wire   [2:0] tmp_s_fu_888_p3;
wire   [2:0] tmp_s_fu_888_p5;
wire   [2:0] tmp_s_fu_888_p7;
wire  signed [2:0] tmp_s_fu_888_p9;
wire  signed [2:0] tmp_s_fu_888_p11;
wire  signed [2:0] tmp_s_fu_888_p13;
wire  signed [2:0] tmp_s_fu_888_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_126 = 7'd0;
#0 i_1_fu_130 = 7'd0;
#0 indvar_flatten_fu_134 = 13'd0;
#0 empty_fu_138 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U29(.din0(buff_x1_q0),.din1(buff_x1_1_q0),.din2(buff_x1_2_q0),.din3(buff_x1_3_q0),.din4(buff_x1_4_q0),.din5(buff_x1_5_q0),.din6(buff_x1_6_q0),.din7(buff_x1_7_q0),.def(tmp_fu_708_p17),.sel(trunc_ln23_reg_981),.dout(tmp_fu_708_p19));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U30(.din0(buff_y1_q0),.din1(buff_y1_1_q0),.din2(buff_y1_2_q0),.din3(buff_y1_3_q0),.din4(buff_y1_4_q0),.din5(buff_y1_5_q0),.din6(buff_y1_6_q0),.din7(buff_y1_7_q0),.def(tmp_2_fu_776_p17),.sel(tmp_2_fu_776_p18),.dout(tmp_2_fu_776_p19));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U31(.din0(tmp_s_fu_888_p2),.din1(tmp_s_fu_888_p4),.din2(tmp_s_fu_888_p6),.din3(tmp_s_fu_888_p8),.din4(tmp_s_fu_888_p10),.din5(tmp_s_fu_888_p12),.din6(tmp_s_fu_888_p14),.din7(tmp_s_fu_888_p16),.def(tmp_s_fu_888_p17),.sel(trunc_ln24_reg_1093),.dout(tmp_s_fu_888_p19));
mvt_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        if ((1'b1 == ap_condition_910)) begin
            empty_fu_138 <= tmp_reg_1088;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_138 <= add_reg_1202;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln23_fu_584_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_1_fu_130 <= select_ln23_fu_622_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_130 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln23_fu_584_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_134 <= add_ln23_1_fu_590_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_134 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_126 <= 7'd0;
    end else if (((icmp_ln23_reg_967 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_126 <= add_ln24_fu_816_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_reg_1202 <= grp_fu_1036_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_1_addr_reg_991 <= zext_ln6_1_fu_650_p1;
        buff_x1_1_addr_reg_991_pp0_iter1_reg <= buff_x1_1_addr_reg_991;
        buff_x1_2_addr_reg_996 <= zext_ln6_1_fu_650_p1;
        buff_x1_2_addr_reg_996_pp0_iter1_reg <= buff_x1_2_addr_reg_996;
        buff_x1_3_addr_reg_1001 <= zext_ln6_1_fu_650_p1;
        buff_x1_3_addr_reg_1001_pp0_iter1_reg <= buff_x1_3_addr_reg_1001;
        buff_x1_4_addr_reg_1006 <= zext_ln6_1_fu_650_p1;
        buff_x1_4_addr_reg_1006_pp0_iter1_reg <= buff_x1_4_addr_reg_1006;
        buff_x1_5_addr_reg_1011 <= zext_ln6_1_fu_650_p1;
        buff_x1_5_addr_reg_1011_pp0_iter1_reg <= buff_x1_5_addr_reg_1011;
        buff_x1_6_addr_reg_1016 <= zext_ln6_1_fu_650_p1;
        buff_x1_6_addr_reg_1016_pp0_iter1_reg <= buff_x1_6_addr_reg_1016;
        buff_x1_7_addr_reg_1021 <= zext_ln6_1_fu_650_p1;
        buff_x1_7_addr_reg_1021_pp0_iter1_reg <= buff_x1_7_addr_reg_1021;
        buff_x1_addr_reg_986 <= zext_ln6_1_fu_650_p1;
        buff_x1_addr_reg_986_pp0_iter1_reg <= buff_x1_addr_reg_986;
        first_iter_0_reg_977 <= first_iter_0_fu_630_p2;
        icmp_ln23_reg_967 <= icmp_ln23_fu_584_p2;
        lshr_ln6_5_reg_1038 <= {{select_ln6_fu_614_p3[5:3]}};
        select_ln6_reg_971 <= select_ln6_fu_614_p3;
        tmp_7_reg_1043 <= {{select_ln23_fu_622_p3[5:1]}};
        trunc_ln23_1_reg_1026 <= trunc_ln23_1_fu_662_p1;
        trunc_ln23_reg_981 <= trunc_ln23_fu_636_p1;
        trunc_ln23_reg_981_pp0_iter1_reg <= trunc_ln23_reg_981;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln24_1_reg_1183 <= icmp_ln24_1_fu_821_p2;
        icmp_ln24_1_reg_1183_pp0_iter1_reg <= icmp_ln24_1_reg_1183;
        tmp_2_reg_1178 <= tmp_2_fu_776_p19;
        tmp_reg_1088 <= tmp_fu_708_p19;
        trunc_ln24_reg_1093 <= trunc_ln24_fu_747_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_reg_1192 <= grp_fu_1040_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_s_reg_1187 <= tmp_s_fu_888_p19;
    end
end
always @ (*) begin
    if (((icmp_ln23_reg_967 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1_load = i_1_fu_130;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_134;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_10_ce0_local = 1'b1;
    end else begin
        buff_A_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_11_ce0_local = 1'b1;
    end else begin
        buff_A_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_12_ce0_local = 1'b1;
    end else begin
        buff_A_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_13_ce0_local = 1'b1;
    end else begin
        buff_A_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_14_ce0_local = 1'b1;
    end else begin
        buff_A_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_15_ce0_local = 1'b1;
    end else begin
        buff_A_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_5_ce0_local = 1'b1;
    end else begin
        buff_A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_7_ce0_local = 1'b1;
    end else begin
        buff_A_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_8_ce0_local = 1'b1;
    end else begin
        buff_A_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_9_ce0_local = 1'b1;
    end else begin
        buff_A_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_1_address0_local = buff_x1_1_addr_reg_991_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_1_address0_local = zext_ln6_1_fu_650_p1;
    end else begin
        buff_x1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_1_ce0_local = 1'b1;
    end else begin
        buff_x1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln24_1_reg_1183_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln23_reg_981_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_1_we0_local = 1'b1;
    end else begin
        buff_x1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_2_address0_local = buff_x1_2_addr_reg_996_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_2_address0_local = zext_ln6_1_fu_650_p1;
    end else begin
        buff_x1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_2_ce0_local = 1'b1;
    end else begin
        buff_x1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln24_1_reg_1183_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln23_reg_981_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_2_we0_local = 1'b1;
    end else begin
        buff_x1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_3_address0_local = buff_x1_3_addr_reg_1001_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_3_address0_local = zext_ln6_1_fu_650_p1;
    end else begin
        buff_x1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_3_ce0_local = 1'b1;
    end else begin
        buff_x1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln24_1_reg_1183_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln23_reg_981_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_3_we0_local = 1'b1;
    end else begin
        buff_x1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_4_address0_local = buff_x1_4_addr_reg_1006_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_4_address0_local = zext_ln6_1_fu_650_p1;
    end else begin
        buff_x1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_4_ce0_local = 1'b1;
    end else begin
        buff_x1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln24_1_reg_1183_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln23_reg_981_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_4_we0_local = 1'b1;
    end else begin
        buff_x1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_5_address0_local = buff_x1_5_addr_reg_1011_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_5_address0_local = zext_ln6_1_fu_650_p1;
    end else begin
        buff_x1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_5_ce0_local = 1'b1;
    end else begin
        buff_x1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln24_1_reg_1183_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln23_reg_981_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_5_we0_local = 1'b1;
    end else begin
        buff_x1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_6_address0_local = buff_x1_6_addr_reg_1016_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_6_address0_local = zext_ln6_1_fu_650_p1;
    end else begin
        buff_x1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_6_ce0_local = 1'b1;
    end else begin
        buff_x1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln24_1_reg_1183_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln23_reg_981_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_6_we0_local = 1'b1;
    end else begin
        buff_x1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_7_address0_local = buff_x1_7_addr_reg_1021_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_7_address0_local = zext_ln6_1_fu_650_p1;
    end else begin
        buff_x1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_7_ce0_local = 1'b1;
    end else begin
        buff_x1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln24_1_reg_1183_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln23_reg_981_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_7_we0_local = 1'b1;
    end else begin
        buff_x1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_address0_local = buff_x1_addr_reg_986_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_address0_local = zext_ln6_1_fu_650_p1;
    end else begin
        buff_x1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x1_ce0_local = 1'b1;
    end else begin
        buff_x1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln24_1_reg_1183_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln23_reg_981_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x1_we0_local = 1'b1;
    end else begin
        buff_x1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_1_ce0_local = 1'b1;
    end else begin
        buff_y1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_2_ce0_local = 1'b1;
    end else begin
        buff_y1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_3_ce0_local = 1'b1;
    end else begin
        buff_y1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_4_ce0_local = 1'b1;
    end else begin
        buff_y1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_5_ce0_local = 1'b1;
    end else begin
        buff_y1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_6_ce0_local = 1'b1;
    end else begin
        buff_y1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_7_ce0_local = 1'b1;
    end else begin
        buff_y1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y1_ce0_local = 1'b1;
    end else begin
        buff_y1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
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
assign add_ln23_1_fu_590_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln23_fu_602_p2 = (ap_sig_allocacmp_i_1_load + 7'd1);
assign add_ln24_fu_816_p2 = (select_ln6_reg_971 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_910 = ((icmp_ln23_reg_967 == 1'd0) & (first_iter_0_reg_977 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_10_address0 = zext_ln25_fu_756_p1;
assign buff_A_10_ce0 = buff_A_10_ce0_local;
assign buff_A_11_address0 = zext_ln25_fu_756_p1;
assign buff_A_11_ce0 = buff_A_11_ce0_local;
assign buff_A_12_address0 = zext_ln25_fu_756_p1;
assign buff_A_12_ce0 = buff_A_12_ce0_local;
assign buff_A_13_address0 = zext_ln25_fu_756_p1;
assign buff_A_13_ce0 = buff_A_13_ce0_local;
assign buff_A_14_address0 = zext_ln25_fu_756_p1;
assign buff_A_14_ce0 = buff_A_14_ce0_local;
assign buff_A_15_address0 = zext_ln25_fu_756_p1;
assign buff_A_15_ce0 = buff_A_15_ce0_local;
assign buff_A_1_address0 = zext_ln25_fu_756_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln25_fu_756_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln25_fu_756_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln25_fu_756_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln25_fu_756_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln25_fu_756_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln25_fu_756_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_8_address0 = zext_ln25_fu_756_p1;
assign buff_A_8_ce0 = buff_A_8_ce0_local;
assign buff_A_9_address0 = zext_ln25_fu_756_p1;
assign buff_A_9_ce0 = buff_A_9_ce0_local;
assign buff_A_address0 = zext_ln25_fu_756_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_x1_1_address0 = buff_x1_1_address0_local;
assign buff_x1_1_ce0 = buff_x1_1_ce0_local;
assign buff_x1_1_d0 = add_reg_1202;
assign buff_x1_1_we0 = buff_x1_1_we0_local;
assign buff_x1_2_address0 = buff_x1_2_address0_local;
assign buff_x1_2_ce0 = buff_x1_2_ce0_local;
assign buff_x1_2_d0 = add_reg_1202;
assign buff_x1_2_we0 = buff_x1_2_we0_local;
assign buff_x1_3_address0 = buff_x1_3_address0_local;
assign buff_x1_3_ce0 = buff_x1_3_ce0_local;
assign buff_x1_3_d0 = add_reg_1202;
assign buff_x1_3_we0 = buff_x1_3_we0_local;
assign buff_x1_4_address0 = buff_x1_4_address0_local;
assign buff_x1_4_ce0 = buff_x1_4_ce0_local;
assign buff_x1_4_d0 = add_reg_1202;
assign buff_x1_4_we0 = buff_x1_4_we0_local;
assign buff_x1_5_address0 = buff_x1_5_address0_local;
assign buff_x1_5_ce0 = buff_x1_5_ce0_local;
assign buff_x1_5_d0 = add_reg_1202;
assign buff_x1_5_we0 = buff_x1_5_we0_local;
assign buff_x1_6_address0 = buff_x1_6_address0_local;
assign buff_x1_6_ce0 = buff_x1_6_ce0_local;
assign buff_x1_6_d0 = add_reg_1202;
assign buff_x1_6_we0 = buff_x1_6_we0_local;
assign buff_x1_7_address0 = buff_x1_7_address0_local;
assign buff_x1_7_ce0 = buff_x1_7_ce0_local;
assign buff_x1_7_d0 = add_reg_1202;
assign buff_x1_7_we0 = buff_x1_7_we0_local;
assign buff_x1_address0 = buff_x1_address0_local;
assign buff_x1_ce0 = buff_x1_ce0_local;
assign buff_x1_d0 = add_reg_1202;
assign buff_x1_we0 = buff_x1_we0_local;
assign buff_y1_1_address0 = zext_ln6_fu_676_p1;
assign buff_y1_1_ce0 = buff_y1_1_ce0_local;
assign buff_y1_2_address0 = zext_ln6_fu_676_p1;
assign buff_y1_2_ce0 = buff_y1_2_ce0_local;
assign buff_y1_3_address0 = zext_ln6_fu_676_p1;
assign buff_y1_3_ce0 = buff_y1_3_ce0_local;
assign buff_y1_4_address0 = zext_ln6_fu_676_p1;
assign buff_y1_4_ce0 = buff_y1_4_ce0_local;
assign buff_y1_5_address0 = zext_ln6_fu_676_p1;
assign buff_y1_5_ce0 = buff_y1_5_ce0_local;
assign buff_y1_6_address0 = zext_ln6_fu_676_p1;
assign buff_y1_6_ce0 = buff_y1_6_ce0_local;
assign buff_y1_7_address0 = zext_ln6_fu_676_p1;
assign buff_y1_7_ce0 = buff_y1_7_ce0_local;
assign buff_y1_address0 = zext_ln6_fu_676_p1;
assign buff_y1_ce0 = buff_y1_ce0_local;
assign first_iter_0_fu_630_p2 = ((select_ln6_fu_614_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_1036_p_ce = 1'b1;
assign grp_fu_1036_p_din0 = empty_fu_138;
assign grp_fu_1036_p_din1 = mul_reg_1192;
assign grp_fu_1036_p_opcode = 2'd0;
assign grp_fu_1040_p_ce = 1'b1;
assign grp_fu_1040_p_din0 = tmp_s_reg_1187;
assign grp_fu_1040_p_din1 = tmp_2_reg_1178;
assign icmp_ln23_fu_584_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln24_1_fu_821_p2 = ((add_ln24_fu_816_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_608_p2 = ((ap_sig_allocacmp_j_load == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln6_3_fu_640_p4 = {{select_ln23_fu_622_p3[5:3]}};
assign lshr_ln6_5_fu_666_p4 = {{select_ln6_fu_614_p3[5:3]}};
assign select_ln23_fu_622_p3 = ((icmp_ln24_fu_608_p2[0:0] == 1'b1) ? add_ln23_fu_602_p2 : ap_sig_allocacmp_i_1_load);
assign select_ln6_fu_614_p3 = ((icmp_ln24_fu_608_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign tmp_2_fu_776_p17 = 'bx;
assign tmp_2_fu_776_p18 = select_ln6_reg_971[2:0];
assign tmp_8_fu_750_p3 = {{tmp_7_reg_1043}, {lshr_ln6_5_reg_1038}};
assign tmp_fu_708_p17 = 'bx;
assign tmp_s_fu_888_p10 = ((trunc_ln23_1_reg_1026[0:0] == 1'b1) ? buff_A_9_q0 : buff_A_8_q0);
assign tmp_s_fu_888_p12 = ((trunc_ln23_1_reg_1026[0:0] == 1'b1) ? buff_A_11_q0 : buff_A_10_q0);
assign tmp_s_fu_888_p14 = ((trunc_ln23_1_reg_1026[0:0] == 1'b1) ? buff_A_13_q0 : buff_A_12_q0);
assign tmp_s_fu_888_p16 = ((trunc_ln23_1_reg_1026[0:0] == 1'b1) ? buff_A_15_q0 : buff_A_14_q0);
assign tmp_s_fu_888_p17 = 'bx;
assign tmp_s_fu_888_p2 = ((trunc_ln23_1_reg_1026[0:0] == 1'b1) ? buff_A_1_q0 : buff_A_q0);
assign tmp_s_fu_888_p4 = ((trunc_ln23_1_reg_1026[0:0] == 1'b1) ? buff_A_3_q0 : buff_A_2_q0);
assign tmp_s_fu_888_p6 = ((trunc_ln23_1_reg_1026[0:0] == 1'b1) ? buff_A_5_q0 : buff_A_4_q0);
assign tmp_s_fu_888_p8 = ((trunc_ln23_1_reg_1026[0:0] == 1'b1) ? buff_A_7_q0 : buff_A_6_q0);
assign trunc_ln23_1_fu_662_p1 = select_ln23_fu_622_p3[0:0];
assign trunc_ln23_fu_636_p1 = select_ln23_fu_622_p3[2:0];
assign trunc_ln24_fu_747_p1 = select_ln6_reg_971[2:0];
assign zext_ln25_fu_756_p1 = tmp_8_fu_750_p3;
assign zext_ln6_1_fu_650_p1 = lshr_ln6_3_fu_640_p4;
assign zext_ln6_fu_676_p1 = lshr_ln6_5_fu_666_p4;
endmodule 