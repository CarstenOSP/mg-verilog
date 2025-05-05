module ellpack_ellpack_Pipeline_ellpack_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum,empty,nzval_0_address0,nzval_0_ce0,nzval_0_q0,nzval_2_address0,nzval_2_ce0,nzval_2_q0,nzval_4_address0,nzval_4_ce0,nzval_4_q0,nzval_6_address0,nzval_6_ce0,nzval_6_q0,cols_0_address0,cols_0_ce0,cols_0_q0,cols_2_address0,cols_2_ce0,cols_2_q0,cols_4_address0,cols_4_ce0,cols_4_q0,cols_6_address0,cols_6_ce0,cols_6_q0,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,vec_2_address0,vec_2_ce0,vec_2_q0,vec_2_address1,vec_2_ce1,vec_2_q1,vec_3_address0,vec_3_ce0,vec_3_q0,vec_3_address1,vec_3_ce1,vec_3_q1,vec_4_address0,vec_4_ce0,vec_4_q0,vec_4_address1,vec_4_ce1,vec_4_q1,vec_5_address0,vec_5_ce0,vec_5_q0,vec_5_address1,vec_5_ce1,vec_5_q1,vec_6_address0,vec_6_ce0,vec_6_q0,vec_6_address1,vec_6_ce1,vec_6_q1,vec_7_address0,vec_7_ce0,vec_7_q0,vec_7_address1,vec_7_ce1,vec_7_q1,nzval_1_address0,nzval_1_ce0,nzval_1_q0,nzval_3_address0,nzval_3_ce0,nzval_3_q0,nzval_5_address0,nzval_5_ce0,nzval_5_q0,nzval_7_address0,nzval_7_ce0,nzval_7_q0,cols_1_address0,cols_1_ce0,cols_1_q0,cols_3_address0,cols_3_ce0,cols_3_q0,cols_5_address0,cols_5_ce0,cols_5_q0,cols_7_address0,cols_7_ce0,cols_7_q0,sum_1_out,sum_1_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] sum;
input  [12:0] empty;
output  [9:0] nzval_0_address0;
output   nzval_0_ce0;
input  [63:0] nzval_0_q0;
output  [9:0] nzval_2_address0;
output   nzval_2_ce0;
input  [63:0] nzval_2_q0;
output  [9:0] nzval_4_address0;
output   nzval_4_ce0;
input  [63:0] nzval_4_q0;
output  [9:0] nzval_6_address0;
output   nzval_6_ce0;
input  [63:0] nzval_6_q0;
output  [9:0] cols_0_address0;
output   cols_0_ce0;
input  [31:0] cols_0_q0;
output  [9:0] cols_2_address0;
output   cols_2_ce0;
input  [31:0] cols_2_q0;
output  [9:0] cols_4_address0;
output   cols_4_ce0;
input  [31:0] cols_4_q0;
output  [9:0] cols_6_address0;
output   cols_6_ce0;
input  [31:0] cols_6_q0;
output  [5:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [5:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [5:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [5:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
output  [5:0] vec_2_address0;
output   vec_2_ce0;
input  [63:0] vec_2_q0;
output  [5:0] vec_2_address1;
output   vec_2_ce1;
input  [63:0] vec_2_q1;
output  [5:0] vec_3_address0;
output   vec_3_ce0;
input  [63:0] vec_3_q0;
output  [5:0] vec_3_address1;
output   vec_3_ce1;
input  [63:0] vec_3_q1;
output  [5:0] vec_4_address0;
output   vec_4_ce0;
input  [63:0] vec_4_q0;
output  [5:0] vec_4_address1;
output   vec_4_ce1;
input  [63:0] vec_4_q1;
output  [5:0] vec_5_address0;
output   vec_5_ce0;
input  [63:0] vec_5_q0;
output  [5:0] vec_5_address1;
output   vec_5_ce1;
input  [63:0] vec_5_q1;
output  [5:0] vec_6_address0;
output   vec_6_ce0;
input  [63:0] vec_6_q0;
output  [5:0] vec_6_address1;
output   vec_6_ce1;
input  [63:0] vec_6_q1;
output  [5:0] vec_7_address0;
output   vec_7_ce0;
input  [63:0] vec_7_q0;
output  [5:0] vec_7_address1;
output   vec_7_ce1;
input  [63:0] vec_7_q1;
output  [9:0] nzval_1_address0;
output   nzval_1_ce0;
input  [63:0] nzval_1_q0;
output  [9:0] nzval_3_address0;
output   nzval_3_ce0;
input  [63:0] nzval_3_q0;
output  [9:0] nzval_5_address0;
output   nzval_5_ce0;
input  [63:0] nzval_5_q0;
output  [9:0] nzval_7_address0;
output   nzval_7_ce0;
input  [63:0] nzval_7_q0;
output  [9:0] cols_1_address0;
output   cols_1_ce0;
input  [31:0] cols_1_q0;
output  [9:0] cols_3_address0;
output   cols_3_ce0;
input  [31:0] cols_3_q0;
output  [9:0] cols_5_address0;
output   cols_5_ce0;
input  [31:0] cols_5_q0;
output  [9:0] cols_7_address0;
output   cols_7_ce0;
input  [31:0] cols_7_q0;
output  [63:0] sum_1_out;
output   sum_1_out_ap_vld;
reg ap_idle;
reg sum_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] icmp_ln15_reg_1071;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] j_1_reg_1066;
wire   [0:0] icmp_ln15_fu_588_p2;
wire   [2:0] trunc_ln16_fu_604_p1;
reg   [2:0] trunc_ln16_reg_1075;
wire   [63:0] tmp_fu_696_p11;
reg   [63:0] tmp_reg_1163;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [2:0] trunc_ln16_5_fu_758_p1;
reg   [2:0] trunc_ln16_5_reg_1168;
reg   [5:0] lshr_ln16_1_reg_1173;
wire   [63:0] tmp_3_fu_788_p11;
reg   [63:0] tmp_3_reg_1178;
wire   [2:0] trunc_ln16_10_fu_850_p1;
reg   [2:0] trunc_ln16_10_reg_1183;
reg   [5:0] lshr_ln16_3_reg_1188;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_2_fu_918_p19;
reg   [63:0] tmp_2_reg_1273;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_5_fu_989_p19;
reg   [63:0] tmp_5_reg_1278;
wire   [63:0] grp_fu_571_p2;
reg   [63:0] Si_reg_1283;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] Si_1_reg_1293;
wire   [63:0] grp_fu_567_p2;
reg   [63:0] sum_2_reg_1298;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln16_2_fu_618_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln16_3_fu_668_p1;
wire   [63:0] zext_ln16_fu_864_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln16_1_fu_875_p1;
reg   [63:0] sum_1_fu_132;
wire    ap_block_pp0_stage10;
wire    ap_loop_init;
wire    ap_block_pp0_stage11;
reg   [3:0] j_fu_136;
wire   [3:0] add_ln15_fu_1032_p2;
wire    ap_block_pp0_stage15_11001;
reg   [3:0] ap_sig_allocacmp_j_1;
wire    ap_block_pp0_stage10_01001;
reg    nzval_0_ce0_local;
reg    nzval_2_ce0_local;
reg    nzval_4_ce0_local;
reg    nzval_6_ce0_local;
reg    cols_0_ce0_local;
reg    cols_2_ce0_local;
reg    cols_4_ce0_local;
reg    cols_6_ce0_local;
reg    nzval_1_ce0_local;
reg    nzval_3_ce0_local;
reg    nzval_5_ce0_local;
reg    nzval_7_ce0_local;
reg    cols_1_ce0_local;
reg    cols_3_ce0_local;
reg    cols_5_ce0_local;
reg    cols_7_ce0_local;
reg    vec_0_ce1_local;
reg    vec_0_ce0_local;
reg    vec_1_ce1_local;
reg    vec_1_ce0_local;
reg    vec_2_ce1_local;
reg    vec_2_ce0_local;
reg    vec_3_ce1_local;
reg    vec_3_ce0_local;
reg    vec_4_ce1_local;
reg    vec_4_ce0_local;
reg    vec_5_ce1_local;
reg    vec_5_ce0_local;
reg    vec_6_ce1_local;
reg    vec_6_ce0_local;
reg    vec_7_ce1_local;
reg    vec_7_ce0_local;
reg   [63:0] grp_fu_567_p0;
reg   [63:0] grp_fu_567_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_571_p0;
reg   [63:0] grp_fu_571_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire   [12:0] zext_ln15_fu_594_p1;
wire   [12:0] add_ln16_fu_598_p2;
wire   [9:0] lshr_ln1_fu_608_p4;
wire   [2:0] tmp_6_fu_630_p4;
wire   [3:0] or_ln_fu_640_p3;
wire   [12:0] zext_ln14_fu_648_p1;
wire   [12:0] add_ln16_1_fu_652_p2;
wire   [9:0] lshr_ln16_2_fu_658_p4;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_fu_696_p2;
wire   [63:0] tmp_fu_696_p4;
wire   [63:0] tmp_fu_696_p6;
wire   [63:0] tmp_fu_696_p8;
wire   [63:0] tmp_fu_696_p9;
wire   [8:0] tmp_1_fu_735_p2;
wire   [8:0] tmp_1_fu_735_p4;
wire   [8:0] tmp_1_fu_735_p6;
wire   [8:0] tmp_1_fu_735_p8;
wire   [8:0] tmp_1_fu_735_p9;
wire   [8:0] tmp_1_fu_735_p11;
wire   [63:0] tmp_3_fu_788_p2;
wire   [63:0] tmp_3_fu_788_p4;
wire   [63:0] tmp_3_fu_788_p6;
wire   [63:0] tmp_3_fu_788_p8;
wire   [63:0] tmp_3_fu_788_p9;
wire   [8:0] tmp_4_fu_827_p2;
wire   [8:0] tmp_4_fu_827_p4;
wire   [8:0] tmp_4_fu_827_p6;
wire   [8:0] tmp_4_fu_827_p8;
wire   [8:0] tmp_4_fu_827_p9;
wire   [8:0] tmp_4_fu_827_p11;
wire   [63:0] tmp_2_fu_918_p2;
wire   [63:0] tmp_2_fu_918_p4;
wire   [63:0] tmp_2_fu_918_p6;
wire   [63:0] tmp_2_fu_918_p8;
wire   [63:0] tmp_2_fu_918_p10;
wire   [63:0] tmp_2_fu_918_p12;
wire   [63:0] tmp_2_fu_918_p14;
wire   [63:0] tmp_2_fu_918_p16;
wire   [63:0] tmp_2_fu_918_p17;
wire   [63:0] tmp_5_fu_989_p2;
wire   [63:0] tmp_5_fu_989_p4;
wire   [63:0] tmp_5_fu_989_p6;
wire   [63:0] tmp_5_fu_989_p8;
wire   [63:0] tmp_5_fu_989_p10;
wire   [63:0] tmp_5_fu_989_p12;
wire   [63:0] tmp_5_fu_989_p14;
wire   [63:0] tmp_5_fu_989_p16;
wire   [63:0] tmp_5_fu_989_p17;
wire    ap_block_pp0_stage15;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_fu_696_p1;
wire   [2:0] tmp_fu_696_p3;
wire  signed [2:0] tmp_fu_696_p5;
wire  signed [2:0] tmp_fu_696_p7;
wire   [2:0] tmp_1_fu_735_p1;
wire   [2:0] tmp_1_fu_735_p3;
wire  signed [2:0] tmp_1_fu_735_p5;
wire  signed [2:0] tmp_1_fu_735_p7;
wire   [2:0] tmp_3_fu_788_p1;
wire   [2:0] tmp_3_fu_788_p3;
wire  signed [2:0] tmp_3_fu_788_p5;
wire  signed [2:0] tmp_3_fu_788_p7;
wire   [2:0] tmp_4_fu_827_p1;
wire   [2:0] tmp_4_fu_827_p3;
wire  signed [2:0] tmp_4_fu_827_p5;
wire  signed [2:0] tmp_4_fu_827_p7;
wire   [2:0] tmp_2_fu_918_p1;
wire   [2:0] tmp_2_fu_918_p3;
wire   [2:0] tmp_2_fu_918_p5;
wire   [2:0] tmp_2_fu_918_p7;
wire  signed [2:0] tmp_2_fu_918_p9;
wire  signed [2:0] tmp_2_fu_918_p11;
wire  signed [2:0] tmp_2_fu_918_p13;
wire  signed [2:0] tmp_2_fu_918_p15;
wire   [2:0] tmp_5_fu_989_p1;
wire   [2:0] tmp_5_fu_989_p3;
wire   [2:0] tmp_5_fu_989_p5;
wire   [2:0] tmp_5_fu_989_p7;
wire  signed [2:0] tmp_5_fu_989_p9;
wire  signed [2:0] tmp_5_fu_989_p11;
wire  signed [2:0] tmp_5_fu_989_p13;
wire  signed [2:0] tmp_5_fu_989_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 sum_1_fu_132 = 64'd0;
#0 j_fu_136 = 4'd0;
#0 ap_done_reg = 1'b0;
end
ellpack_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_567_p0),.din1(grp_fu_567_p1),.ce(1'b1),.dout(grp_fu_567_p2));
ellpack_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_571_p0),.din1(grp_fu_571_p1),.ce(1'b1),.dout(grp_fu_571_p2));
(* dissolve_hierarchy = "yes" *) ellpack_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U3(.din0(tmp_fu_696_p2),.din1(tmp_fu_696_p4),.din2(tmp_fu_696_p6),.din3(tmp_fu_696_p8),.def(tmp_fu_696_p9),.sel(trunc_ln16_reg_1075),.dout(tmp_fu_696_p11));
(* dissolve_hierarchy = "yes" *) ellpack_sparsemux_9_3_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 9 ),.CASE1( 3'h2 ),.din1_WIDTH( 9 ),.CASE2( 3'h4 ),.din2_WIDTH( 9 ),.CASE3( 3'h6 ),.din3_WIDTH( 9 ),.def_WIDTH( 9 ),.sel_WIDTH( 3 ),.dout_WIDTH( 9 ))
sparsemux_9_3_9_1_1_U4(.din0(tmp_1_fu_735_p2),.din1(tmp_1_fu_735_p4),.din2(tmp_1_fu_735_p6),.din3(tmp_1_fu_735_p8),.def(tmp_1_fu_735_p9),.sel(trunc_ln16_reg_1075),.dout(tmp_1_fu_735_p11));
(* dissolve_hierarchy = "yes" *) ellpack_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U5(.din0(tmp_3_fu_788_p2),.din1(tmp_3_fu_788_p4),.din2(tmp_3_fu_788_p6),.din3(tmp_3_fu_788_p8),.def(tmp_3_fu_788_p9),.sel(trunc_ln16_reg_1075),.dout(tmp_3_fu_788_p11));
(* dissolve_hierarchy = "yes" *) ellpack_sparsemux_9_3_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 9 ),.CASE1( 3'h2 ),.din1_WIDTH( 9 ),.CASE2( 3'h4 ),.din2_WIDTH( 9 ),.CASE3( 3'h6 ),.din3_WIDTH( 9 ),.def_WIDTH( 9 ),.sel_WIDTH( 3 ),.dout_WIDTH( 9 ))
sparsemux_9_3_9_1_1_U6(.din0(tmp_4_fu_827_p2),.din1(tmp_4_fu_827_p4),.din2(tmp_4_fu_827_p6),.din3(tmp_4_fu_827_p8),.def(tmp_4_fu_827_p9),.sel(trunc_ln16_reg_1075),.dout(tmp_4_fu_827_p11));
(* dissolve_hierarchy = "yes" *) ellpack_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U7(.din0(tmp_2_fu_918_p2),.din1(tmp_2_fu_918_p4),.din2(tmp_2_fu_918_p6),.din3(tmp_2_fu_918_p8),.din4(tmp_2_fu_918_p10),.din5(tmp_2_fu_918_p12),.din6(tmp_2_fu_918_p14),.din7(tmp_2_fu_918_p16),.def(tmp_2_fu_918_p17),.sel(trunc_ln16_5_reg_1168),.dout(tmp_2_fu_918_p19));
(* dissolve_hierarchy = "yes" *) ellpack_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U8(.din0(tmp_5_fu_989_p2),.din1(tmp_5_fu_989_p4),.din2(tmp_5_fu_989_p6),.din3(tmp_5_fu_989_p8),.din4(tmp_5_fu_989_p10),.din5(tmp_5_fu_989_p12),.din6(tmp_5_fu_989_p14),.din7(tmp_5_fu_989_p16),.def(tmp_5_fu_989_p17),.sel(trunc_ln16_10_reg_1183),.dout(tmp_5_fu_989_p19));
ellpack_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
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
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_136 <= 4'd0;
    end else if (((icmp_ln15_reg_1071 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        j_fu_136 <= add_ln15_fu_1032_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_1_fu_132 <= sum;
    end else if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        sum_1_fu_132 <= grp_fu_567_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        Si_1_reg_1293 <= grp_fu_571_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        Si_reg_1283 <= grp_fu_571_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln15_reg_1071 <= icmp_ln15_fu_588_p2;
        j_1_reg_1066 <= ap_sig_allocacmp_j_1;
        trunc_ln16_reg_1075 <= trunc_ln16_fu_604_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln16_1_reg_1173 <= {{tmp_1_fu_735_p11[8:3]}};
        lshr_ln16_3_reg_1188 <= {{tmp_4_fu_827_p11[8:3]}};
        tmp_3_reg_1178 <= tmp_3_fu_788_p11;
        tmp_reg_1163 <= tmp_fu_696_p11;
        trunc_ln16_10_reg_1183 <= trunc_ln16_10_fu_850_p1;
        trunc_ln16_5_reg_1168 <= trunc_ln16_5_fu_758_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_2_reg_1298 <= grp_fu_567_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_2_reg_1273 <= tmp_2_fu_918_p19;
        tmp_5_reg_1278 <= tmp_5_fu_989_p19;
    end
end
always @ (*) begin
    if (((icmp_ln15_reg_1071 == 1'd0) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cols_0_ce0_local = 1'b1;
    end else begin
        cols_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cols_1_ce0_local = 1'b1;
    end else begin
        cols_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cols_2_ce0_local = 1'b1;
    end else begin
        cols_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cols_3_ce0_local = 1'b1;
    end else begin
        cols_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cols_4_ce0_local = 1'b1;
    end else begin
        cols_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cols_5_ce0_local = 1'b1;
    end else begin
        cols_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cols_6_ce0_local = 1'b1;
    end else begin
        cols_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cols_7_ce0_local = 1'b1;
    end else begin
        cols_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_567_p0 = sum_2_reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_567_p0 = sum_1_fu_132;
    end else begin
        grp_fu_567_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_567_p1 = Si_1_reg_1293;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_567_p1 = Si_reg_1283;
    end else begin
        grp_fu_567_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_571_p0 = tmp_3_reg_1178;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_571_p0 = tmp_reg_1163;
        end else begin
            grp_fu_571_p0 = 'bx;
        end
    end else begin
        grp_fu_571_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_571_p1 = tmp_5_reg_1278;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_571_p1 = tmp_2_reg_1273;
        end else begin
            grp_fu_571_p1 = 'bx;
        end
    end else begin
        grp_fu_571_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nzval_0_ce0_local = 1'b1;
    end else begin
        nzval_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nzval_1_ce0_local = 1'b1;
    end else begin
        nzval_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nzval_2_ce0_local = 1'b1;
    end else begin
        nzval_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nzval_3_ce0_local = 1'b1;
    end else begin
        nzval_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nzval_4_ce0_local = 1'b1;
    end else begin
        nzval_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nzval_5_ce0_local = 1'b1;
    end else begin
        nzval_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nzval_6_ce0_local = 1'b1;
    end else begin
        nzval_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nzval_7_ce0_local = 1'b1;
    end else begin
        nzval_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln15_reg_1071 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        sum_1_out_ap_vld = 1'b1;
    end else begin
        sum_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_0_ce0_local = 1'b1;
    end else begin
        vec_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_0_ce1_local = 1'b1;
    end else begin
        vec_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_1_ce0_local = 1'b1;
    end else begin
        vec_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_1_ce1_local = 1'b1;
    end else begin
        vec_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_2_ce0_local = 1'b1;
    end else begin
        vec_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_2_ce1_local = 1'b1;
    end else begin
        vec_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_3_ce0_local = 1'b1;
    end else begin
        vec_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_3_ce1_local = 1'b1;
    end else begin
        vec_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_4_ce0_local = 1'b1;
    end else begin
        vec_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_4_ce1_local = 1'b1;
    end else begin
        vec_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_5_ce0_local = 1'b1;
    end else begin
        vec_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_5_ce1_local = 1'b1;
    end else begin
        vec_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_6_ce0_local = 1'b1;
    end else begin
        vec_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_6_ce1_local = 1'b1;
    end else begin
        vec_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_7_ce0_local = 1'b1;
    end else begin
        vec_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_7_ce1_local = 1'b1;
    end else begin
        vec_7_ce1_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_1032_p2 = (j_1_reg_1066 + 4'd2);
assign add_ln16_1_fu_652_p2 = (zext_ln14_fu_648_p1 + empty);
assign add_ln16_fu_598_p2 = (zext_ln15_fu_594_p1 + empty);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign cols_0_address0 = zext_ln16_2_fu_618_p1;
assign cols_0_ce0 = cols_0_ce0_local;
assign cols_1_address0 = zext_ln16_3_fu_668_p1;
assign cols_1_ce0 = cols_1_ce0_local;
assign cols_2_address0 = zext_ln16_2_fu_618_p1;
assign cols_2_ce0 = cols_2_ce0_local;
assign cols_3_address0 = zext_ln16_3_fu_668_p1;
assign cols_3_ce0 = cols_3_ce0_local;
assign cols_4_address0 = zext_ln16_2_fu_618_p1;
assign cols_4_ce0 = cols_4_ce0_local;
assign cols_5_address0 = zext_ln16_3_fu_668_p1;
assign cols_5_ce0 = cols_5_ce0_local;
assign cols_6_address0 = zext_ln16_2_fu_618_p1;
assign cols_6_ce0 = cols_6_ce0_local;
assign cols_7_address0 = zext_ln16_3_fu_668_p1;
assign cols_7_ce0 = cols_7_ce0_local;
assign icmp_ln15_fu_588_p2 = ((ap_sig_allocacmp_j_1 < 4'd10) ? 1'b1 : 1'b0);
assign lshr_ln16_2_fu_658_p4 = {{add_ln16_1_fu_652_p2[12:3]}};
assign lshr_ln1_fu_608_p4 = {{add_ln16_fu_598_p2[12:3]}};
assign nzval_0_address0 = zext_ln16_2_fu_618_p1;
assign nzval_0_ce0 = nzval_0_ce0_local;
assign nzval_1_address0 = zext_ln16_3_fu_668_p1;
assign nzval_1_ce0 = nzval_1_ce0_local;
assign nzval_2_address0 = zext_ln16_2_fu_618_p1;
assign nzval_2_ce0 = nzval_2_ce0_local;
assign nzval_3_address0 = zext_ln16_3_fu_668_p1;
assign nzval_3_ce0 = nzval_3_ce0_local;
assign nzval_4_address0 = zext_ln16_2_fu_618_p1;
assign nzval_4_ce0 = nzval_4_ce0_local;
assign nzval_5_address0 = zext_ln16_3_fu_668_p1;
assign nzval_5_ce0 = nzval_5_ce0_local;
assign nzval_6_address0 = zext_ln16_2_fu_618_p1;
assign nzval_6_ce0 = nzval_6_ce0_local;
assign nzval_7_address0 = zext_ln16_3_fu_668_p1;
assign nzval_7_ce0 = nzval_7_ce0_local;
assign or_ln_fu_640_p3 = {{tmp_6_fu_630_p4}, {1'd1}};
assign sum_1_out = sum_1_fu_132;
assign tmp_1_fu_735_p2 = cols_0_q0[8:0];
assign tmp_1_fu_735_p4 = cols_2_q0[8:0];
assign tmp_1_fu_735_p6 = cols_4_q0[8:0];
assign tmp_1_fu_735_p8 = cols_6_q0[8:0];
assign tmp_1_fu_735_p9 = 'bx;
assign tmp_2_fu_918_p10 = vec_4_q1;
assign tmp_2_fu_918_p12 = vec_5_q1;
assign tmp_2_fu_918_p14 = vec_6_q1;
assign tmp_2_fu_918_p16 = vec_7_q1;
assign tmp_2_fu_918_p17 = 'bx;
assign tmp_2_fu_918_p2 = vec_0_q1;
assign tmp_2_fu_918_p4 = vec_1_q1;
assign tmp_2_fu_918_p6 = vec_2_q1;
assign tmp_2_fu_918_p8 = vec_3_q1;
assign tmp_3_fu_788_p2 = nzval_1_q0;
assign tmp_3_fu_788_p4 = nzval_3_q0;
assign tmp_3_fu_788_p6 = nzval_5_q0;
assign tmp_3_fu_788_p8 = nzval_7_q0;
assign tmp_3_fu_788_p9 = 'bx;
assign tmp_4_fu_827_p2 = cols_1_q0[8:0];
assign tmp_4_fu_827_p4 = cols_3_q0[8:0];
assign tmp_4_fu_827_p6 = cols_5_q0[8:0];
assign tmp_4_fu_827_p8 = cols_7_q0[8:0];
assign tmp_4_fu_827_p9 = 'bx;
assign tmp_5_fu_989_p10 = vec_4_q0;
assign tmp_5_fu_989_p12 = vec_5_q0;
assign tmp_5_fu_989_p14 = vec_6_q0;
assign tmp_5_fu_989_p16 = vec_7_q0;
assign tmp_5_fu_989_p17 = 'bx;
assign tmp_5_fu_989_p2 = vec_0_q0;
assign tmp_5_fu_989_p4 = vec_1_q0;
assign tmp_5_fu_989_p6 = vec_2_q0;
assign tmp_5_fu_989_p8 = vec_3_q0;
assign tmp_6_fu_630_p4 = {{ap_sig_allocacmp_j_1[3:1]}};
assign tmp_fu_696_p2 = nzval_0_q0;
assign tmp_fu_696_p4 = nzval_2_q0;
assign tmp_fu_696_p6 = nzval_4_q0;
assign tmp_fu_696_p8 = nzval_6_q0;
assign tmp_fu_696_p9 = 'bx;
assign trunc_ln16_10_fu_850_p1 = tmp_4_fu_827_p11[2:0];
assign trunc_ln16_5_fu_758_p1 = tmp_1_fu_735_p11[2:0];
assign trunc_ln16_fu_604_p1 = add_ln16_fu_598_p2[2:0];
assign vec_0_address0 = zext_ln16_1_fu_875_p1;
assign vec_0_address1 = zext_ln16_fu_864_p1;
assign vec_0_ce0 = vec_0_ce0_local;
assign vec_0_ce1 = vec_0_ce1_local;
assign vec_1_address0 = zext_ln16_1_fu_875_p1;
assign vec_1_address1 = zext_ln16_fu_864_p1;
assign vec_1_ce0 = vec_1_ce0_local;
assign vec_1_ce1 = vec_1_ce1_local;
assign vec_2_address0 = zext_ln16_1_fu_875_p1;
assign vec_2_address1 = zext_ln16_fu_864_p1;
assign vec_2_ce0 = vec_2_ce0_local;
assign vec_2_ce1 = vec_2_ce1_local;
assign vec_3_address0 = zext_ln16_1_fu_875_p1;
assign vec_3_address1 = zext_ln16_fu_864_p1;
assign vec_3_ce0 = vec_3_ce0_local;
assign vec_3_ce1 = vec_3_ce1_local;
assign vec_4_address0 = zext_ln16_1_fu_875_p1;
assign vec_4_address1 = zext_ln16_fu_864_p1;
assign vec_4_ce0 = vec_4_ce0_local;
assign vec_4_ce1 = vec_4_ce1_local;
assign vec_5_address0 = zext_ln16_1_fu_875_p1;
assign vec_5_address1 = zext_ln16_fu_864_p1;
assign vec_5_ce0 = vec_5_ce0_local;
assign vec_5_ce1 = vec_5_ce1_local;
assign vec_6_address0 = zext_ln16_1_fu_875_p1;
assign vec_6_address1 = zext_ln16_fu_864_p1;
assign vec_6_ce0 = vec_6_ce0_local;
assign vec_6_ce1 = vec_6_ce1_local;
assign vec_7_address0 = zext_ln16_1_fu_875_p1;
assign vec_7_address1 = zext_ln16_fu_864_p1;
assign vec_7_ce0 = vec_7_ce0_local;
assign vec_7_ce1 = vec_7_ce1_local;
assign zext_ln14_fu_648_p1 = or_ln_fu_640_p3;
assign zext_ln15_fu_594_p1 = ap_sig_allocacmp_j_1;
assign zext_ln16_1_fu_875_p1 = lshr_ln16_3_reg_1188;
assign zext_ln16_2_fu_618_p1 = lshr_ln1_fu_608_p4;
assign zext_ln16_3_fu_668_p1 = lshr_ln16_2_fu_658_p4;
assign zext_ln16_fu_864_p1 = lshr_ln16_1_reg_1173;
endmodule 