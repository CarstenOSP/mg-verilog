module k2mm_k2mm_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_address1,buff_B_ce1,buff_B_q1,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_B_1_address1,buff_B_1_ce1,buff_B_1_q1,buff_B_2_address0,buff_B_2_ce0,buff_B_2_q0,buff_B_2_address1,buff_B_2_ce1,buff_B_2_q1,buff_B_3_address0,buff_B_3_ce0,buff_B_3_q0,buff_B_3_address1,buff_B_3_ce1,buff_B_3_q1,buff_B_4_address0,buff_B_4_ce0,buff_B_4_q0,buff_B_4_address1,buff_B_4_ce1,buff_B_4_q1,buff_B_5_address0,buff_B_5_ce0,buff_B_5_q0,buff_B_5_address1,buff_B_5_ce1,buff_B_5_q1,buff_B_6_address0,buff_B_6_ce0,buff_B_6_q0,buff_B_6_address1,buff_B_6_ce1,buff_B_6_q1,buff_B_7_address0,buff_B_7_ce0,buff_B_7_q0,buff_B_7_address1,buff_B_7_ce1,buff_B_7_q1,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,alpha,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_we0,tmp1_2_d0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_we0,tmp1_3_d0,tmp1_3_q0,grp_fu_2258_p_din0,grp_fu_2258_p_din1,grp_fu_2258_p_opcode,grp_fu_2258_p_dout0,grp_fu_2258_p_ce,grp_fu_2262_p_din0,grp_fu_2262_p_din1,grp_fu_2262_p_dout0,grp_fu_2262_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 29'd1;
parameter    ap_ST_fsm_pp0_stage1 = 29'd2;
parameter    ap_ST_fsm_pp0_stage2 = 29'd4;
parameter    ap_ST_fsm_pp0_stage3 = 29'd8;
parameter    ap_ST_fsm_pp0_stage4 = 29'd16;
parameter    ap_ST_fsm_pp0_stage5 = 29'd32;
parameter    ap_ST_fsm_pp0_stage6 = 29'd64;
parameter    ap_ST_fsm_pp0_stage7 = 29'd128;
parameter    ap_ST_fsm_pp0_stage8 = 29'd256;
parameter    ap_ST_fsm_pp0_stage9 = 29'd512;
parameter    ap_ST_fsm_pp0_stage10 = 29'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 29'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 29'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 29'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 29'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 29'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 29'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 29'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 29'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 29'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 29'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 29'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 29'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 29'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 29'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 29'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 29'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 29'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 29'd268435456;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [8:0] buff_B_address1;
output   buff_B_ce1;
input  [31:0] buff_B_q1;
output  [8:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
output  [8:0] buff_B_1_address1;
output   buff_B_1_ce1;
input  [31:0] buff_B_1_q1;
output  [8:0] buff_B_2_address0;
output   buff_B_2_ce0;
input  [31:0] buff_B_2_q0;
output  [8:0] buff_B_2_address1;
output   buff_B_2_ce1;
input  [31:0] buff_B_2_q1;
output  [8:0] buff_B_3_address0;
output   buff_B_3_ce0;
input  [31:0] buff_B_3_q0;
output  [8:0] buff_B_3_address1;
output   buff_B_3_ce1;
input  [31:0] buff_B_3_q1;
output  [8:0] buff_B_4_address0;
output   buff_B_4_ce0;
input  [31:0] buff_B_4_q0;
output  [8:0] buff_B_4_address1;
output   buff_B_4_ce1;
input  [31:0] buff_B_4_q1;
output  [8:0] buff_B_5_address0;
output   buff_B_5_ce0;
input  [31:0] buff_B_5_q0;
output  [8:0] buff_B_5_address1;
output   buff_B_5_ce1;
input  [31:0] buff_B_5_q1;
output  [8:0] buff_B_6_address0;
output   buff_B_6_ce0;
input  [31:0] buff_B_6_q0;
output  [8:0] buff_B_6_address1;
output   buff_B_6_ce1;
input  [31:0] buff_B_6_q1;
output  [8:0] buff_B_7_address0;
output   buff_B_7_ce0;
input  [31:0] buff_B_7_q0;
output  [8:0] buff_B_7_address1;
output   buff_B_7_ce1;
input  [31:0] buff_B_7_q1;
output  [9:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [9:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [9:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [9:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
input  [31:0] alpha;
output  [9:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [9:0] tmp1_1_address0;
output   tmp1_1_ce0;
output   tmp1_1_we0;
output  [31:0] tmp1_1_d0;
input  [31:0] tmp1_1_q0;
output  [9:0] tmp1_2_address0;
output   tmp1_2_ce0;
output   tmp1_2_we0;
output  [31:0] tmp1_2_d0;
input  [31:0] tmp1_2_q0;
output  [9:0] tmp1_3_address0;
output   tmp1_3_ce0;
output   tmp1_3_we0;
output  [31:0] tmp1_3_d0;
input  [31:0] tmp1_3_q0;
output  [31:0] grp_fu_2258_p_din0;
output  [31:0] grp_fu_2258_p_din1;
output  [1:0] grp_fu_2258_p_opcode;
input  [31:0] grp_fu_2258_p_dout0;
output   grp_fu_2258_p_ce;
output  [31:0] grp_fu_2262_p_din0;
output  [31:0] grp_fu_2262_p_din1;
input  [31:0] grp_fu_2262_p_dout0;
output   grp_fu_2262_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [28:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] icmp_ln27_reg_953;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_subdone;
reg   [31:0] reg_448;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage10_11001;
reg   [31:0] reg_454;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] reg_460;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [31:0] reg_466;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [31:0] reg_472;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_512_p2;
wire   [0:0] icmp_ln28_fu_524_p2;
reg   [0:0] icmp_ln28_reg_957;
wire   [0:0] first_iter_1_fu_635_p2;
reg   [0:0] first_iter_1_reg_965;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] trunc_ln28_1_fu_641_p1;
reg   [1:0] trunc_ln28_1_reg_969;
reg   [1:0] trunc_ln28_1_reg_969_pp0_iter1_reg;
reg   [9:0] tmp1_addr_reg_978;
reg   [9:0] tmp1_addr_reg_978_pp0_iter1_reg;
reg   [9:0] tmp1_1_addr_reg_983;
reg   [9:0] tmp1_1_addr_reg_983_pp0_iter1_reg;
reg   [9:0] tmp1_2_addr_reg_988;
reg   [9:0] tmp1_2_addr_reg_988_pp0_iter1_reg;
reg   [9:0] tmp1_3_addr_reg_993;
reg   [9:0] tmp1_3_addr_reg_993_pp0_iter1_reg;
reg   [0:0] tmp_2_reg_1098;
reg   [0:0] tmp_2_reg_1098_pp0_iter1_reg;
wire   [31:0] tmp_fu_778_p11;
reg   [31:0] tmp_reg_1102;
reg   [31:0] buff_A_load_reg_1107;
wire   [31:0] tmp_65_fu_801_p11;
reg   [31:0] tmp_65_reg_1112;
reg   [31:0] buff_A_1_load_reg_1117;
wire   [31:0] tmp_66_fu_824_p11;
reg   [31:0] tmp_66_reg_1122;
reg   [31:0] buff_A_2_load_reg_1127;
wire   [31:0] tmp_67_fu_847_p11;
reg   [31:0] tmp_67_reg_1132;
reg   [31:0] buff_A_3_load_reg_1137;
wire   [31:0] tmp_68_fu_870_p11;
reg   [31:0] tmp_68_reg_1142;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_72_cast_fu_663_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln30_fu_689_p1;
wire   [63:0] zext_ln30_1_fu_719_p1;
wire   [63:0] zext_ln30_2_fu_737_p1;
reg   [6:0] k_fu_106;
wire   [6:0] add_ln29_fu_749_p2;
wire    ap_loop_init;
reg   [6:0] j_fu_110;
wire   [6:0] select_ln28_fu_627_p3;
reg   [11:0] indvar_flatten9_fu_114;
wire   [11:0] select_ln28_1_fu_536_p3;
reg   [11:0] ap_sig_allocacmp_indvar_flatten9_load;
wire    ap_block_pp0_stage0;
reg   [6:0] i_1_fu_118;
wire   [6:0] select_ln27_fu_602_p3;
reg   [16:0] indvar_flatten23_fu_122;
wire   [16:0] add_ln27_1_fu_518_p2;
reg   [16:0] ap_sig_allocacmp_indvar_flatten23_load;
reg   [31:0] empty_fu_126;
wire    ap_block_pp0_stage11;
reg    tmp1_ce0_local;
reg   [9:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage10;
reg    tmp1_1_ce0_local;
reg   [9:0] tmp1_1_address0_local;
reg    tmp1_1_we0_local;
reg    tmp1_2_ce0_local;
reg   [9:0] tmp1_2_address0_local;
reg    tmp1_2_we0_local;
reg    tmp1_3_ce0_local;
reg   [9:0] tmp1_3_address0_local;
reg    tmp1_3_we0_local;
reg    buff_A_ce0_local;
reg    buff_B_ce1_local;
reg    buff_B_ce0_local;
reg    buff_B_2_ce1_local;
reg    buff_B_2_ce0_local;
reg    buff_B_4_ce1_local;
reg    buff_B_4_ce0_local;
reg    buff_B_6_ce1_local;
reg    buff_B_6_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_B_1_ce1_local;
reg    buff_B_1_ce0_local;
reg    buff_B_3_ce1_local;
reg    buff_B_3_ce0_local;
reg    buff_B_5_ce1_local;
reg    buff_B_5_ce0_local;
reg    buff_B_7_ce1_local;
reg    buff_B_7_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce0_local;
reg   [31:0] grp_fu_440_p0;
reg   [31:0] grp_fu_440_p1;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
reg   [31:0] grp_fu_444_p0;
reg   [31:0] grp_fu_444_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire   [11:0] add_ln28_1_fu_530_p2;
wire   [0:0] tmp_1_fu_583_p3;
wire   [0:0] xor_ln29_fu_591_p2;
wire   [6:0] add_ln27_fu_563_p2;
wire   [6:0] select_ln6_fu_569_p3;
wire   [0:0] or_ln6_fu_597_p2;
wire   [6:0] select_ln6_1_fu_576_p3;
wire   [6:0] add_ln28_fu_613_p2;
wire   [6:0] k_mid2_fu_619_p3;
wire   [5:0] trunc_ln28_fu_609_p1;
wire   [3:0] lshr_ln6_3_fu_645_p4;
wire   [9:0] tmp_72_fu_655_p3;
wire   [4:0] lshr_ln6_6_fu_671_p4;
wire   [8:0] tmp_73_fu_681_p3;
wire   [3:0] lshr_ln6_7_fu_701_p4;
wire   [9:0] tmp_75_fu_711_p3;
wire   [8:0] tmp_77_fu_727_p4;
wire   [31:0] tmp_fu_778_p9;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_65_fu_801_p9;
wire   [31:0] tmp_66_fu_824_p9;
wire   [31:0] tmp_67_fu_847_p9;
wire   [31:0] tmp_68_fu_870_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [28:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage18_00001;
wire    ap_block_pp0_stage25_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_condition_1122;
wire   [1:0] tmp_fu_778_p1;
wire   [1:0] tmp_fu_778_p3;
wire  signed [1:0] tmp_fu_778_p5;
wire  signed [1:0] tmp_fu_778_p7;
wire   [1:0] tmp_65_fu_801_p1;
wire   [1:0] tmp_65_fu_801_p3;
wire  signed [1:0] tmp_65_fu_801_p5;
wire  signed [1:0] tmp_65_fu_801_p7;
wire   [1:0] tmp_66_fu_824_p1;
wire   [1:0] tmp_66_fu_824_p3;
wire  signed [1:0] tmp_66_fu_824_p5;
wire  signed [1:0] tmp_66_fu_824_p7;
wire   [1:0] tmp_67_fu_847_p1;
wire   [1:0] tmp_67_fu_847_p3;
wire  signed [1:0] tmp_67_fu_847_p5;
wire  signed [1:0] tmp_67_fu_847_p7;
wire   [1:0] tmp_68_fu_870_p1;
wire   [1:0] tmp_68_fu_870_p3;
wire  signed [1:0] tmp_68_fu_870_p5;
wire  signed [1:0] tmp_68_fu_870_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 29'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_106 = 7'd0;
#0 j_fu_110 = 7'd0;
#0 indvar_flatten9_fu_114 = 12'd0;
#0 i_1_fu_118 = 7'd0;
#0 indvar_flatten23_fu_122 = 17'd0;
#0 empty_fu_126 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U315(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.def(tmp_fu_778_p9),.sel(trunc_ln28_1_reg_969),.dout(tmp_fu_778_p11));
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U316(.din0(buff_B_q1),.din1(buff_B_2_q1),.din2(buff_B_4_q1),.din3(buff_B_6_q1),.def(tmp_65_fu_801_p9),.sel(trunc_ln28_1_reg_969),.dout(tmp_65_fu_801_p11));
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U317(.din0(buff_B_1_q1),.din1(buff_B_3_q1),.din2(buff_B_5_q1),.din3(buff_B_7_q1),.def(tmp_66_fu_824_p9),.sel(trunc_ln28_1_reg_969),.dout(tmp_66_fu_824_p11));
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U318(.din0(buff_B_q0),.din1(buff_B_2_q0),.din2(buff_B_4_q0),.din3(buff_B_6_q0),.def(tmp_67_fu_847_p9),.sel(trunc_ln28_1_reg_969),.dout(tmp_67_fu_847_p11));
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U319(.din0(buff_B_1_q0),.din1(buff_B_3_q0),.din2(buff_B_5_q0),.din3(buff_B_7_q0),.def(tmp_68_fu_870_p9),.sel(trunc_ln28_1_reg_969),.dout(tmp_68_fu_870_p11));
k2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage28_subdone) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        if ((1'b1 == ap_condition_1122)) begin
            empty_fu_126 <= tmp_reg_1102;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_126 <= reg_472;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_118 <= 7'd0;
    end else if (((icmp_ln27_reg_953 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_1_fu_118 <= select_ln27_fu_602_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_512_p2 == 1'd0))) begin
            indvar_flatten23_fu_122 <= add_ln27_1_fu_518_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten23_fu_122 <= 17'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_512_p2 == 1'd0))) begin
            indvar_flatten9_fu_114 <= select_ln28_1_fu_536_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten9_fu_114 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_110 <= 7'd0;
    end else if (((icmp_ln27_reg_953 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_110 <= select_ln28_fu_627_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_106 <= 7'd0;
    end else if (((icmp_ln27_reg_953 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k_fu_106 <= add_ln29_fu_749_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A_1_load_reg_1117 <= buff_A_1_q0;
        buff_A_2_load_reg_1127 <= buff_A_2_q0;
        buff_A_3_load_reg_1137 <= buff_A_3_q0;
        buff_A_load_reg_1107 <= buff_A_q0;
        tmp_65_reg_1112 <= tmp_65_fu_801_p11;
        tmp_66_reg_1122 <= tmp_66_fu_824_p11;
        tmp_67_reg_1132 <= tmp_67_fu_847_p11;
        tmp_68_reg_1142 <= tmp_68_fu_870_p11;
        tmp_reg_1102 <= tmp_fu_778_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        first_iter_1_reg_965 <= first_iter_1_fu_635_p2;
        tmp1_1_addr_reg_983 <= tmp_72_cast_fu_663_p1;
        tmp1_1_addr_reg_983_pp0_iter1_reg <= tmp1_1_addr_reg_983;
        tmp1_2_addr_reg_988 <= tmp_72_cast_fu_663_p1;
        tmp1_2_addr_reg_988_pp0_iter1_reg <= tmp1_2_addr_reg_988;
        tmp1_3_addr_reg_993 <= tmp_72_cast_fu_663_p1;
        tmp1_3_addr_reg_993_pp0_iter1_reg <= tmp1_3_addr_reg_993;
        tmp1_addr_reg_978 <= tmp_72_cast_fu_663_p1;
        tmp1_addr_reg_978_pp0_iter1_reg <= tmp1_addr_reg_978;
        tmp_2_reg_1098 <= add_ln29_fu_749_p2[32'd6];
        tmp_2_reg_1098_pp0_iter1_reg <= tmp_2_reg_1098;
        trunc_ln28_1_reg_969 <= trunc_ln28_1_fu_641_p1;
        trunc_ln28_1_reg_969_pp0_iter1_reg <= trunc_ln28_1_reg_969;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln27_reg_953 <= icmp_ln27_fu_512_p2;
        icmp_ln28_reg_957 <= icmp_ln28_fu_524_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_448 <= grp_fu_2262_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_454 <= grp_fu_2262_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_460 <= grp_fu_2262_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_466 <= grp_fu_2262_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_472 <= grp_fu_2258_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_953 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage28_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten23_load = 17'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten23_load = indvar_flatten23_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten9_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten9_load = indvar_flatten9_fu_114;
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
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_1_ce1_local = 1'b1;
    end else begin
        buff_B_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_2_ce0_local = 1'b1;
    end else begin
        buff_B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_2_ce1_local = 1'b1;
    end else begin
        buff_B_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_3_ce0_local = 1'b1;
    end else begin
        buff_B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_3_ce1_local = 1'b1;
    end else begin
        buff_B_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_4_ce0_local = 1'b1;
    end else begin
        buff_B_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_4_ce1_local = 1'b1;
    end else begin
        buff_B_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_5_ce0_local = 1'b1;
    end else begin
        buff_B_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_5_ce1_local = 1'b1;
    end else begin
        buff_B_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_6_ce0_local = 1'b1;
    end else begin
        buff_B_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_6_ce1_local = 1'b1;
    end else begin
        buff_B_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_7_ce0_local = 1'b1;
    end else begin
        buff_B_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_7_ce1_local = 1'b1;
    end else begin
        buff_B_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_ce1_local = 1'b1;
    end else begin
        buff_B_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_440_p0 = reg_472;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_440_p0 = empty_fu_126;
    end else begin
        grp_fu_440_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_440_p1 = reg_466;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_440_p1 = reg_460;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_440_p1 = reg_454;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_440_p1 = reg_448;
    end else begin
        grp_fu_440_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_444_p0 = reg_466;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_444_p0 = reg_460;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_444_p0 = reg_454;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_444_p0 = reg_448;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_444_p0 = buff_A_3_load_reg_1137;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_444_p0 = buff_A_2_load_reg_1127;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_444_p0 = buff_A_1_load_reg_1117;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_444_p0 = buff_A_load_reg_1107;
        end else begin
            grp_fu_444_p0 = 'bx;
        end
    end else begin
        grp_fu_444_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_444_p1 = tmp_68_reg_1142;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_444_p1 = tmp_67_reg_1132;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_444_p1 = tmp_66_reg_1122;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_444_p1 = tmp_65_reg_1112;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_444_p1 = alpha;
    end else begin
        grp_fu_444_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_1_address0_local = tmp1_1_addr_reg_983_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_1_address0_local = tmp_72_cast_fu_663_p1;
    end else begin
        tmp1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_1098_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_969_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_2_address0_local = tmp1_2_addr_reg_988_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_2_address0_local = tmp_72_cast_fu_663_p1;
    end else begin
        tmp1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_1098_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_969_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_3_address0_local = tmp1_3_addr_reg_993_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_3_address0_local = tmp_72_cast_fu_663_p1;
    end else begin
        tmp1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_1098_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_969_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_address0_local = tmp1_addr_reg_978_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_address0_local = tmp_72_cast_fu_663_p1;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_1098_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_969_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to1 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_1_fu_518_p2 = (ap_sig_allocacmp_indvar_flatten23_load + 17'd1);
assign add_ln27_fu_563_p2 = (i_1_fu_118 + 7'd1);
assign add_ln28_1_fu_530_p2 = (ap_sig_allocacmp_indvar_flatten9_load + 12'd1);
assign add_ln28_fu_613_p2 = (select_ln6_fu_569_p3 + 7'd1);
assign add_ln29_fu_749_p2 = (k_mid2_fu_619_p3 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1122 = ((icmp_ln27_reg_953 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_1_reg_965 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln30_1_fu_719_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln30_1_fu_719_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln30_1_fu_719_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_address0 = zext_ln30_1_fu_719_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_B_1_address0 = zext_ln30_2_fu_737_p1;
assign buff_B_1_address1 = zext_ln30_fu_689_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_1_ce1 = buff_B_1_ce1_local;
assign buff_B_2_address0 = zext_ln30_2_fu_737_p1;
assign buff_B_2_address1 = zext_ln30_fu_689_p1;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_2_ce1 = buff_B_2_ce1_local;
assign buff_B_3_address0 = zext_ln30_2_fu_737_p1;
assign buff_B_3_address1 = zext_ln30_fu_689_p1;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_3_ce1 = buff_B_3_ce1_local;
assign buff_B_4_address0 = zext_ln30_2_fu_737_p1;
assign buff_B_4_address1 = zext_ln30_fu_689_p1;
assign buff_B_4_ce0 = buff_B_4_ce0_local;
assign buff_B_4_ce1 = buff_B_4_ce1_local;
assign buff_B_5_address0 = zext_ln30_2_fu_737_p1;
assign buff_B_5_address1 = zext_ln30_fu_689_p1;
assign buff_B_5_ce0 = buff_B_5_ce0_local;
assign buff_B_5_ce1 = buff_B_5_ce1_local;
assign buff_B_6_address0 = zext_ln30_2_fu_737_p1;
assign buff_B_6_address1 = zext_ln30_fu_689_p1;
assign buff_B_6_ce0 = buff_B_6_ce0_local;
assign buff_B_6_ce1 = buff_B_6_ce1_local;
assign buff_B_7_address0 = zext_ln30_2_fu_737_p1;
assign buff_B_7_address1 = zext_ln30_fu_689_p1;
assign buff_B_7_ce0 = buff_B_7_ce0_local;
assign buff_B_7_ce1 = buff_B_7_ce1_local;
assign buff_B_address0 = zext_ln30_2_fu_737_p1;
assign buff_B_address1 = zext_ln30_fu_689_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_B_ce1 = buff_B_ce1_local;
assign first_iter_1_fu_635_p2 = ((k_mid2_fu_619_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_2258_p_ce = 1'b1;
assign grp_fu_2258_p_din0 = grp_fu_440_p0;
assign grp_fu_2258_p_din1 = grp_fu_440_p1;
assign grp_fu_2258_p_opcode = 2'd0;
assign grp_fu_2262_p_ce = 1'b1;
assign grp_fu_2262_p_din0 = grp_fu_444_p0;
assign grp_fu_2262_p_din1 = grp_fu_444_p1;
assign icmp_ln27_fu_512_p2 = ((ap_sig_allocacmp_indvar_flatten23_load == 17'd65536) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_524_p2 = ((ap_sig_allocacmp_indvar_flatten9_load == 12'd1024) ? 1'b1 : 1'b0);
assign k_mid2_fu_619_p3 = ((or_ln6_fu_597_p2[0:0] == 1'b1) ? select_ln6_1_fu_576_p3 : 7'd0);
assign lshr_ln6_3_fu_645_p4 = {{select_ln28_fu_627_p3[5:2]}};
assign lshr_ln6_6_fu_671_p4 = {{k_mid2_fu_619_p3[5:1]}};
assign lshr_ln6_7_fu_701_p4 = {{k_mid2_fu_619_p3[5:2]}};
assign or_ln6_fu_597_p2 = (xor_ln29_fu_591_p2 | icmp_ln28_reg_957);
assign select_ln27_fu_602_p3 = ((icmp_ln28_reg_957[0:0] == 1'b1) ? add_ln27_fu_563_p2 : i_1_fu_118);
assign select_ln28_1_fu_536_p3 = ((icmp_ln28_fu_524_p2[0:0] == 1'b1) ? 12'd1 : add_ln28_1_fu_530_p2);
assign select_ln28_fu_627_p3 = ((or_ln6_fu_597_p2[0:0] == 1'b1) ? select_ln6_fu_569_p3 : add_ln28_fu_613_p2);
assign select_ln6_1_fu_576_p3 = ((icmp_ln28_reg_957[0:0] == 1'b1) ? 7'd0 : k_fu_106);
assign select_ln6_fu_569_p3 = ((icmp_ln28_reg_957[0:0] == 1'b1) ? 7'd0 : j_fu_110);
assign tmp1_1_address0 = tmp1_1_address0_local;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = reg_472;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_2_address0 = tmp1_2_address0_local;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_2_d0 = reg_472;
assign tmp1_2_we0 = tmp1_2_we0_local;
assign tmp1_3_address0 = tmp1_3_address0_local;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_3_d0 = reg_472;
assign tmp1_3_we0 = tmp1_3_we0_local;
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = reg_472;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_1_fu_583_p3 = k_fu_106[32'd6];
assign tmp_65_fu_801_p9 = 'bx;
assign tmp_66_fu_824_p9 = 'bx;
assign tmp_67_fu_847_p9 = 'bx;
assign tmp_68_fu_870_p9 = 'bx;
assign tmp_72_cast_fu_663_p1 = tmp_72_fu_655_p3;
assign tmp_72_fu_655_p3 = {{trunc_ln28_fu_609_p1}, {lshr_ln6_3_fu_645_p4}};
assign tmp_73_fu_681_p3 = {{lshr_ln6_6_fu_671_p4}, {lshr_ln6_3_fu_645_p4}};
assign tmp_75_fu_711_p3 = {{trunc_ln28_fu_609_p1}, {lshr_ln6_7_fu_701_p4}};
assign tmp_77_fu_727_p4 = {{{lshr_ln6_7_fu_701_p4}, {1'd1}}, {lshr_ln6_3_fu_645_p4}};
assign tmp_fu_778_p9 = 'bx;
assign trunc_ln28_1_fu_641_p1 = select_ln28_fu_627_p3[1:0];
assign trunc_ln28_fu_609_p1 = select_ln27_fu_602_p3[5:0];
assign xor_ln29_fu_591_p2 = (tmp_1_fu_583_p3 ^ 1'd1);
assign zext_ln30_1_fu_719_p1 = tmp_75_fu_711_p3;
assign zext_ln30_2_fu_737_p1 = tmp_77_fu_727_p4;
assign zext_ln30_fu_689_p1 = tmp_73_fu_681_p3;
endmodule 