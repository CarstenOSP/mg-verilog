module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [6:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [6:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [6:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [6:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [6:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [6:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
output  [6:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [6:0] smem_5_address1;
output   smem_5_ce1;
input  [63:0] smem_5_q1;
output  [6:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [6:0] smem_6_address1;
output   smem_6_ce1;
input  [63:0] smem_6_q1;
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
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln309_reg_1341;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_1335;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln309_fu_717_p2;
reg   [0:0] icmp_ln309_reg_1341_pp0_iter1_reg;
reg   [0:0] icmp_ln309_reg_1341_pp0_iter2_reg;
reg   [0:0] icmp_ln309_reg_1341_pp0_iter3_reg;
reg   [0:0] icmp_ln309_reg_1341_pp0_iter4_reg;
reg   [0:0] icmp_ln309_reg_1341_pp0_iter5_reg;
reg   [0:0] icmp_ln309_reg_1341_pp0_iter6_reg;
wire   [8:0] offset_fu_737_p3;
reg   [8:0] offset_reg_1345;
reg   [8:0] offset_reg_1345_pp0_iter1_reg;
reg   [8:0] offset_reg_1345_pp0_iter2_reg;
reg   [8:0] offset_reg_1345_pp0_iter3_reg;
reg   [8:0] offset_reg_1345_pp0_iter4_reg;
wire   [5:0] trunc_ln314_fu_756_p1;
reg   [5:0] trunc_ln314_reg_1352;
wire    ap_block_pp0_stage1_11001;
reg   [5:0] trunc_ln314_reg_1352_pp0_iter1_reg;
reg   [5:0] trunc_ln314_reg_1352_pp0_iter2_reg;
reg   [5:0] trunc_ln314_reg_1352_pp0_iter3_reg;
reg   [5:0] trunc_ln314_reg_1352_pp0_iter4_reg;
reg   [5:0] trunc_ln314_reg_1352_pp0_iter5_reg;
reg   [5:0] trunc_ln314_reg_1352_pp0_iter6_reg;
reg   [5:0] trunc_ln314_reg_1352_pp0_iter7_reg;
wire   [9:0] zext_ln172_fu_764_p1;
reg   [9:0] zext_ln172_reg_1360;
reg   [6:0] tmp_53_reg_1368;
reg   [6:0] tmp_53_reg_1368_pp0_iter5_reg;
wire   [2:0] trunc_ln172_fu_786_p1;
reg   [2:0] trunc_ln172_reg_1373;
reg   [7:0] tmp_58_reg_1385;
reg   [7:0] tmp_59_reg_1390;
reg   [7:0] tmp_60_reg_1395;
wire   [63:0] tmp_s_fu_937_p17;
reg   [63:0] tmp_s_reg_1680;
wire   [63:0] tmp_15_fu_972_p17;
reg   [63:0] tmp_15_reg_1685;
wire   [63:0] tmp_16_fu_1007_p17;
reg   [63:0] tmp_16_reg_1690;
wire   [63:0] tmp_17_fu_1042_p17;
reg   [63:0] tmp_17_reg_1695;
wire   [63:0] tmp_18_fu_1077_p17;
reg   [63:0] tmp_18_reg_1700;
wire   [63:0] tmp_19_fu_1112_p17;
reg   [63:0] tmp_19_reg_1705;
wire   [63:0] tmp_20_fu_1147_p17;
reg   [63:0] tmp_20_reg_1710;
wire   [63:0] tmp_21_fu_1182_p17;
reg   [63:0] tmp_21_reg_1715;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln172_4_fu_817_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_fu_836_p1;
wire   [63:0] zext_ln316_fu_856_p1;
wire   [63:0] zext_ln317_fu_876_p1;
wire   [63:0] zext_ln318_fu_896_p1;
wire   [63:0] zext_ln319_fu_907_p1;
wire   [63:0] zext_ln320_fu_917_p1;
wire   [63:0] zext_ln321_fu_927_p1;
wire   [63:0] zext_ln314_fu_1224_p1;
wire   [63:0] zext_ln315_1_fu_1237_p1;
wire   [63:0] zext_ln318_1_fu_1250_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln319_1_fu_1263_p1;
reg   [6:0] tid_fu_112;
wire   [6:0] add_ln309_fu_751_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce1_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_1_ce1_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_2_ce1_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_3_ce1_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_4_ce1_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    smem_5_ce1_local;
reg    smem_5_ce0_local;
reg   [6:0] smem_5_address0_local;
reg    smem_6_ce1_local;
reg    smem_6_ce0_local;
reg   [6:0] smem_6_address0_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
wire   [2:0] tmp_fu_723_p4;
wire   [5:0] trunc_ln312_fu_733_p1;
wire   [8:0] grp_fu_745_p0;
wire   [3:0] grp_fu_745_p1;
wire   [8:0] mul_ln172_fu_770_p0;
wire   [10:0] mul_ln172_fu_770_p1;
wire   [18:0] mul_ln172_fu_770_p2;
wire   [2:0] grp_fu_745_p2;
wire   [20:0] tmp_58_fu_790_p1;
wire  signed [20:0] grp_fu_1269_p3;
wire   [20:0] tmp_59_fu_799_p1;
wire  signed [20:0] grp_fu_1278_p3;
wire   [20:0] tmp_60_fu_808_p1;
wire  signed [20:0] grp_fu_1287_p3;
wire   [20:0] tmp_54_fu_827_p1;
wire  signed [20:0] grp_fu_1296_p3;
wire   [7:0] tmp_54_fu_827_p4;
wire   [20:0] tmp_55_fu_847_p1;
wire  signed [20:0] grp_fu_1304_p3;
wire   [7:0] tmp_55_fu_847_p4;
wire   [20:0] tmp_56_fu_867_p1;
wire  signed [20:0] grp_fu_1312_p3;
wire   [7:0] tmp_56_fu_867_p4;
wire   [20:0] tmp_57_fu_887_p1;
wire  signed [20:0] grp_fu_1320_p3;
wire   [7:0] tmp_57_fu_887_p4;
wire   [63:0] tmp_s_fu_937_p15;
wire   [63:0] tmp_15_fu_972_p15;
wire   [63:0] tmp_16_fu_1007_p15;
wire   [63:0] tmp_17_fu_1042_p15;
wire   [63:0] tmp_18_fu_1077_p15;
wire   [63:0] tmp_19_fu_1112_p15;
wire   [63:0] tmp_20_fu_1147_p15;
wire   [63:0] tmp_21_fu_1182_p15;
wire   [7:0] shl_ln7_fu_1217_p3;
wire   [7:0] or_ln_fu_1230_p3;
wire   [7:0] or_ln5_fu_1243_p3;
wire   [7:0] or_ln6_fu_1256_p3;
wire   [8:0] grp_fu_1269_p0;
wire   [5:0] grp_fu_1269_p1;
wire   [10:0] grp_fu_1269_p2;
wire   [8:0] grp_fu_1278_p0;
wire   [4:0] grp_fu_1278_p1;
wire   [10:0] grp_fu_1278_p2;
wire   [8:0] grp_fu_1287_p0;
wire   [5:0] grp_fu_1287_p1;
wire   [10:0] grp_fu_1287_p2;
wire   [8:0] grp_fu_1296_p0;
wire   [5:0] grp_fu_1296_p1;
wire   [10:0] grp_fu_1296_p2;
wire   [8:0] grp_fu_1304_p0;
wire   [3:0] grp_fu_1304_p1;
wire   [10:0] grp_fu_1304_p2;
wire   [8:0] grp_fu_1312_p0;
wire   [5:0] grp_fu_1312_p1;
wire   [10:0] grp_fu_1312_p2;
wire   [8:0] grp_fu_1320_p0;
wire   [4:0] grp_fu_1320_p1;
wire   [10:0] grp_fu_1320_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter7_stage0;
reg    ap_idle_pp0_0to6;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to8;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_fu_770_p00;
reg    ap_condition_347;
wire   [2:0] tmp_s_fu_937_p1;
wire   [2:0] tmp_s_fu_937_p3;
wire   [2:0] tmp_s_fu_937_p5;
wire   [2:0] tmp_s_fu_937_p7;
wire  signed [2:0] tmp_s_fu_937_p9;
wire  signed [2:0] tmp_s_fu_937_p11;
wire  signed [2:0] tmp_s_fu_937_p13;
wire   [2:0] tmp_15_fu_972_p1;
wire  signed [2:0] tmp_15_fu_972_p3;
wire  signed [2:0] tmp_15_fu_972_p5;
wire  signed [2:0] tmp_15_fu_972_p7;
wire   [2:0] tmp_15_fu_972_p9;
wire   [2:0] tmp_15_fu_972_p11;
wire   [2:0] tmp_15_fu_972_p13;
wire  signed [2:0] tmp_16_fu_1007_p1;
wire   [2:0] tmp_16_fu_1007_p3;
wire   [2:0] tmp_16_fu_1007_p5;
wire   [2:0] tmp_16_fu_1007_p7;
wire   [2:0] tmp_16_fu_1007_p9;
wire  signed [2:0] tmp_16_fu_1007_p11;
wire  signed [2:0] tmp_16_fu_1007_p13;
wire   [2:0] tmp_17_fu_1042_p1;
wire   [2:0] tmp_17_fu_1042_p3;
wire  signed [2:0] tmp_17_fu_1042_p5;
wire  signed [2:0] tmp_17_fu_1042_p7;
wire  signed [2:0] tmp_17_fu_1042_p9;
wire   [2:0] tmp_17_fu_1042_p11;
wire   [2:0] tmp_17_fu_1042_p13;
wire  signed [2:0] tmp_18_fu_1077_p1;
wire  signed [2:0] tmp_18_fu_1077_p3;
wire   [2:0] tmp_18_fu_1077_p5;
wire   [2:0] tmp_18_fu_1077_p7;
wire   [2:0] tmp_18_fu_1077_p9;
wire   [2:0] tmp_18_fu_1077_p11;
wire  signed [2:0] tmp_18_fu_1077_p13;
wire   [2:0] tmp_19_fu_1112_p1;
wire   [2:0] tmp_19_fu_1112_p3;
wire   [2:0] tmp_19_fu_1112_p5;
wire  signed [2:0] tmp_19_fu_1112_p7;
wire  signed [2:0] tmp_19_fu_1112_p9;
wire  signed [2:0] tmp_19_fu_1112_p11;
wire   [2:0] tmp_19_fu_1112_p13;
wire  signed [2:0] tmp_20_fu_1147_p1;
wire  signed [2:0] tmp_20_fu_1147_p3;
wire  signed [2:0] tmp_20_fu_1147_p5;
wire   [2:0] tmp_20_fu_1147_p7;
wire   [2:0] tmp_20_fu_1147_p9;
wire   [2:0] tmp_20_fu_1147_p11;
wire   [2:0] tmp_20_fu_1147_p13;
wire   [2:0] tmp_21_fu_1182_p1;
wire   [2:0] tmp_21_fu_1182_p3;
wire   [2:0] tmp_21_fu_1182_p5;
wire   [2:0] tmp_21_fu_1182_p7;
wire  signed [2:0] tmp_21_fu_1182_p9;
wire  signed [2:0] tmp_21_fu_1182_p11;
wire  signed [2:0] tmp_21_fu_1182_p13;
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
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_112 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U192(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_745_p0),.din1(grp_fu_745_p1),.ce(1'b1),.dout(grp_fu_745_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U193(.din0(mul_ln172_fu_770_p0),.din1(mul_ln172_fu_770_p1),.dout(mul_ln172_fu_770_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U194(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.def(tmp_s_fu_937_p15),.sel(trunc_ln172_reg_1373),.dout(tmp_s_fu_937_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U195(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_15_fu_972_p15),.sel(trunc_ln172_reg_1373),.dout(tmp_15_fu_972_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U196(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_16_fu_1007_p15),.sel(trunc_ln172_reg_1373),.dout(tmp_16_fu_1007_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U197(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_17_fu_1042_p15),.sel(trunc_ln172_reg_1373),.dout(tmp_17_fu_1042_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U198(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_18_fu_1077_p15),.sel(trunc_ln172_reg_1373),.dout(tmp_18_fu_1077_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U199(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_19_fu_1112_p15),.sel(trunc_ln172_reg_1373),.dout(tmp_19_fu_1112_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U200(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_20_fu_1147_p15),.sel(trunc_ln172_reg_1373),.dout(tmp_20_fu_1147_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U201(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.def(tmp_21_fu_1182_p15),.sel(trunc_ln172_reg_1373),.dout(tmp_21_fu_1182_p17));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U202(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1269_p0),.din1(grp_fu_1269_p1),.din2(grp_fu_1269_p2),.ce(1'b1),.dout(grp_fu_1269_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U203(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1278_p0),.din1(grp_fu_1278_p1),.din2(grp_fu_1278_p2),.ce(1'b1),.dout(grp_fu_1278_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U204(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1287_p0),.din1(grp_fu_1287_p1),.din2(grp_fu_1287_p2),.ce(1'b1),.dout(grp_fu_1287_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U205(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1296_p0),.din1(grp_fu_1296_p1),.din2(grp_fu_1296_p2),.ce(1'b1),.dout(grp_fu_1296_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U206(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1304_p0),.din1(grp_fu_1304_p1),.din2(grp_fu_1304_p2),.ce(1'b1),.dout(grp_fu_1304_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U207(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1312_p0),.din1(grp_fu_1312_p1),.din2(grp_fu_1312_p2),.ce(1'b1),.dout(grp_fu_1312_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U208(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1320_p0),.din1(grp_fu_1320_p1),.din2(grp_fu_1320_p2),.ce(1'b1),.dout(grp_fu_1320_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter8 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_112 <= 7'd0;
    end else if (((icmp_ln309_reg_1341 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_fu_112 <= add_ln309_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln309_reg_1341 <= icmp_ln309_fu_717_p2;
        icmp_ln309_reg_1341_pp0_iter1_reg <= icmp_ln309_reg_1341;
        icmp_ln309_reg_1341_pp0_iter2_reg <= icmp_ln309_reg_1341_pp0_iter1_reg;
        icmp_ln309_reg_1341_pp0_iter3_reg <= icmp_ln309_reg_1341_pp0_iter2_reg;
        icmp_ln309_reg_1341_pp0_iter4_reg <= icmp_ln309_reg_1341_pp0_iter3_reg;
        icmp_ln309_reg_1341_pp0_iter5_reg <= icmp_ln309_reg_1341_pp0_iter4_reg;
        icmp_ln309_reg_1341_pp0_iter6_reg <= icmp_ln309_reg_1341_pp0_iter5_reg;
        offset_reg_1345 <= offset_fu_737_p3;
        offset_reg_1345_pp0_iter1_reg <= offset_reg_1345;
        offset_reg_1345_pp0_iter2_reg <= offset_reg_1345_pp0_iter1_reg;
        offset_reg_1345_pp0_iter3_reg <= offset_reg_1345_pp0_iter2_reg;
        offset_reg_1345_pp0_iter4_reg <= offset_reg_1345_pp0_iter3_reg;
        tid_2_reg_1335 <= ap_sig_allocacmp_tid_2;
        tmp_15_reg_1685 <= tmp_15_fu_972_p17;
        tmp_16_reg_1690 <= tmp_16_fu_1007_p17;
        tmp_17_reg_1695 <= tmp_17_fu_1042_p17;
        tmp_18_reg_1700 <= tmp_18_fu_1077_p17;
        tmp_19_reg_1705 <= tmp_19_fu_1112_p17;
        tmp_20_reg_1710 <= tmp_20_fu_1147_p17;
        tmp_21_reg_1715 <= tmp_21_fu_1182_p17;
        tmp_58_reg_1385 <= {{tmp_58_fu_790_p1[20:13]}};
        tmp_59_reg_1390 <= {{tmp_59_fu_799_p1[20:13]}};
        tmp_60_reg_1395 <= {{tmp_60_fu_808_p1[20:13]}};
        tmp_s_reg_1680 <= tmp_s_fu_937_p17;
        trunc_ln172_reg_1373 <= trunc_ln172_fu_786_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_53_reg_1368 <= {{mul_ln172_fu_770_p2[18:12]}};
        tmp_53_reg_1368_pp0_iter5_reg <= tmp_53_reg_1368;
        trunc_ln314_reg_1352 <= trunc_ln314_fu_756_p1;
        trunc_ln314_reg_1352_pp0_iter1_reg <= trunc_ln314_reg_1352;
        trunc_ln314_reg_1352_pp0_iter2_reg <= trunc_ln314_reg_1352_pp0_iter1_reg;
        trunc_ln314_reg_1352_pp0_iter3_reg <= trunc_ln314_reg_1352_pp0_iter2_reg;
        trunc_ln314_reg_1352_pp0_iter4_reg <= trunc_ln314_reg_1352_pp0_iter3_reg;
        trunc_ln314_reg_1352_pp0_iter5_reg <= trunc_ln314_reg_1352_pp0_iter4_reg;
        trunc_ln314_reg_1352_pp0_iter6_reg <= trunc_ln314_reg_1352_pp0_iter5_reg;
        trunc_ln314_reg_1352_pp0_iter7_reg <= trunc_ln314_reg_1352_pp0_iter6_reg;
        zext_ln172_reg_1360[8 : 0] <= zext_ln172_fu_764_p1[8 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln319_1_fu_1263_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln315_1_fu_1237_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln318_1_fu_1250_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln314_fu_1224_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_21_reg_1715;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_17_reg_1695;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_20_reg_1710;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_16_reg_1690;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln319_1_fu_1263_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_1_fu_1237_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln318_1_fu_1250_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_fu_1224_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_19_reg_1705;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_15_reg_1685;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_18_reg_1700;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_s_reg_1680;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln309_reg_1341 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln309_reg_1341_pp0_iter6_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to6 = 1'b1;
    end else begin
        ap_idle_pp0_0to6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
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
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_112;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_347)) begin
        if ((trunc_ln172_reg_1373 == 3'd1)) begin
            smem_1_address0_local = zext_ln321_fu_927_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd5)) begin
            smem_1_address0_local = zext_ln320_fu_917_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd2)) begin
            smem_1_address0_local = zext_ln319_fu_907_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd6)) begin
            smem_1_address0_local = zext_ln318_fu_896_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd3)) begin
            smem_1_address0_local = zext_ln317_fu_876_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd0)) begin
            smem_1_address0_local = zext_ln316_fu_856_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd4)) begin
            smem_1_address0_local = zext_ln315_fu_836_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_347)) begin
        if ((trunc_ln172_reg_1373 == 3'd2)) begin
            smem_2_address0_local = zext_ln321_fu_927_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd6)) begin
            smem_2_address0_local = zext_ln320_fu_917_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd3)) begin
            smem_2_address0_local = zext_ln319_fu_907_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd0)) begin
            smem_2_address0_local = zext_ln318_fu_896_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd4)) begin
            smem_2_address0_local = zext_ln317_fu_876_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd1)) begin
            smem_2_address0_local = zext_ln316_fu_856_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd5)) begin
            smem_2_address0_local = zext_ln315_fu_836_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_347)) begin
        if ((trunc_ln172_reg_1373 == 3'd3)) begin
            smem_3_address0_local = zext_ln321_fu_927_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd0)) begin
            smem_3_address0_local = zext_ln320_fu_917_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd4)) begin
            smem_3_address0_local = zext_ln319_fu_907_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd1)) begin
            smem_3_address0_local = zext_ln318_fu_896_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd5)) begin
            smem_3_address0_local = zext_ln317_fu_876_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd2)) begin
            smem_3_address0_local = zext_ln316_fu_856_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd6)) begin
            smem_3_address0_local = zext_ln315_fu_836_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_347)) begin
        if ((trunc_ln172_reg_1373 == 3'd4)) begin
            smem_4_address0_local = zext_ln321_fu_927_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd1)) begin
            smem_4_address0_local = zext_ln320_fu_917_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd5)) begin
            smem_4_address0_local = zext_ln319_fu_907_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd2)) begin
            smem_4_address0_local = zext_ln318_fu_896_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd6)) begin
            smem_4_address0_local = zext_ln317_fu_876_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd3)) begin
            smem_4_address0_local = zext_ln316_fu_856_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd0)) begin
            smem_4_address0_local = zext_ln315_fu_836_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_347)) begin
        if ((trunc_ln172_reg_1373 == 3'd5)) begin
            smem_5_address0_local = zext_ln321_fu_927_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd2)) begin
            smem_5_address0_local = zext_ln320_fu_917_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd6)) begin
            smem_5_address0_local = zext_ln319_fu_907_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd3)) begin
            smem_5_address0_local = zext_ln318_fu_896_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd0)) begin
            smem_5_address0_local = zext_ln317_fu_876_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd4)) begin
            smem_5_address0_local = zext_ln316_fu_856_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd1)) begin
            smem_5_address0_local = zext_ln315_fu_836_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_347)) begin
        if ((trunc_ln172_reg_1373 == 3'd6)) begin
            smem_6_address0_local = zext_ln321_fu_927_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd3)) begin
            smem_6_address0_local = zext_ln320_fu_917_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd0)) begin
            smem_6_address0_local = zext_ln319_fu_907_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd4)) begin
            smem_6_address0_local = zext_ln318_fu_896_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd1)) begin
            smem_6_address0_local = zext_ln317_fu_876_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd5)) begin
            smem_6_address0_local = zext_ln316_fu_856_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd2)) begin
            smem_6_address0_local = zext_ln315_fu_836_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd0)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_347)) begin
        if ((trunc_ln172_reg_1373 == 3'd0)) begin
            smem_address0_local = zext_ln321_fu_927_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd4)) begin
            smem_address0_local = zext_ln320_fu_917_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd1)) begin
            smem_address0_local = zext_ln319_fu_907_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd5)) begin
            smem_address0_local = zext_ln318_fu_896_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd2)) begin
            smem_address0_local = zext_ln317_fu_876_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd6)) begin
            smem_address0_local = zext_ln316_fu_856_p1;
        end else if ((trunc_ln172_reg_1373 == 3'd3)) begin
            smem_address0_local = zext_ln315_fu_836_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1373 == 3'd0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to8 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = DATA_x_1_d0_local;
assign DATA_x_1_d1 = DATA_x_1_d1_local;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_d1 = DATA_x_d1_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_751_p2 = (tid_2_reg_1335 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_347 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_1269_p0 = zext_ln172_fu_764_p1;
assign grp_fu_1269_p1 = 10'd48;
assign grp_fu_1269_p2 = 21'd1171;
assign grp_fu_1278_p0 = zext_ln172_fu_764_p1;
assign grp_fu_1278_p1 = 10'd24;
assign grp_fu_1278_p2 = 21'd1171;
assign grp_fu_1287_p0 = zext_ln172_fu_764_p1;
assign grp_fu_1287_p1 = 10'd56;
assign grp_fu_1287_p2 = 21'd1171;
assign grp_fu_1296_p0 = zext_ln172_reg_1360;
assign grp_fu_1296_p1 = 10'd32;
assign grp_fu_1296_p2 = 21'd1171;
assign grp_fu_1304_p0 = zext_ln172_reg_1360;
assign grp_fu_1304_p1 = 10'd8;
assign grp_fu_1304_p2 = 21'd1171;
assign grp_fu_1312_p0 = zext_ln172_reg_1360;
assign grp_fu_1312_p1 = 10'd40;
assign grp_fu_1312_p2 = 21'd1171;
assign grp_fu_1320_p0 = zext_ln172_reg_1360;
assign grp_fu_1320_p1 = 10'd16;
assign grp_fu_1320_p2 = 21'd1171;
assign grp_fu_745_p0 = {{tmp_fu_723_p4}, {trunc_ln312_fu_733_p1}};
assign grp_fu_745_p1 = 9'd7;
assign icmp_ln309_fu_717_p2 = ((ap_sig_allocacmp_tid_2 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_fu_770_p0 = mul_ln172_fu_770_p00;
assign mul_ln172_fu_770_p00 = offset_reg_1345_pp0_iter4_reg;
assign mul_ln172_fu_770_p1 = 19'd586;
assign offset_fu_737_p3 = {{tmp_fu_723_p4}, {trunc_ln312_fu_733_p1}};
assign or_ln5_fu_1243_p3 = {{trunc_ln314_reg_1352_pp0_iter7_reg}, {2'd1}};
assign or_ln6_fu_1256_p3 = {{trunc_ln314_reg_1352_pp0_iter7_reg}, {2'd3}};
assign or_ln_fu_1230_p3 = {{trunc_ln314_reg_1352_pp0_iter6_reg}, {2'd2}};
assign shl_ln7_fu_1217_p3 = {{trunc_ln314_reg_1352_pp0_iter6_reg}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = zext_ln172_4_fu_817_p1;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = zext_ln172_4_fu_817_p1;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = zext_ln172_4_fu_817_p1;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_address1 = zext_ln172_4_fu_817_p1;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_ce1 = smem_4_ce1_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_address1 = zext_ln172_4_fu_817_p1;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_ce1 = smem_5_ce1_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_address1 = zext_ln172_4_fu_817_p1;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_ce1 = smem_6_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = zext_ln172_4_fu_817_p1;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_15_fu_972_p15 = 'bx;
assign tmp_16_fu_1007_p15 = 'bx;
assign tmp_17_fu_1042_p15 = 'bx;
assign tmp_18_fu_1077_p15 = 'bx;
assign tmp_19_fu_1112_p15 = 'bx;
assign tmp_20_fu_1147_p15 = 'bx;
assign tmp_21_fu_1182_p15 = 'bx;
assign tmp_54_fu_827_p1 = grp_fu_1296_p3;
assign tmp_54_fu_827_p4 = {{tmp_54_fu_827_p1[20:13]}};
assign tmp_55_fu_847_p1 = grp_fu_1304_p3;
assign tmp_55_fu_847_p4 = {{tmp_55_fu_847_p1[20:13]}};
assign tmp_56_fu_867_p1 = grp_fu_1312_p3;
assign tmp_56_fu_867_p4 = {{tmp_56_fu_867_p1[20:13]}};
assign tmp_57_fu_887_p1 = grp_fu_1320_p3;
assign tmp_57_fu_887_p4 = {{tmp_57_fu_887_p1[20:13]}};
assign tmp_58_fu_790_p1 = grp_fu_1269_p3;
assign tmp_59_fu_799_p1 = grp_fu_1278_p3;
assign tmp_60_fu_808_p1 = grp_fu_1287_p3;
assign tmp_fu_723_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_s_fu_937_p15 = 'bx;
assign trunc_ln172_fu_786_p1 = grp_fu_745_p2[2:0];
assign trunc_ln312_fu_733_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_756_p1 = tid_2_reg_1335[5:0];
assign zext_ln172_4_fu_817_p1 = tmp_53_reg_1368_pp0_iter5_reg;
assign zext_ln172_fu_764_p1 = offset_reg_1345_pp0_iter4_reg;
assign zext_ln314_fu_1224_p1 = shl_ln7_fu_1217_p3;
assign zext_ln315_1_fu_1237_p1 = or_ln_fu_1230_p3;
assign zext_ln315_fu_836_p1 = tmp_54_fu_827_p4;
assign zext_ln316_fu_856_p1 = tmp_55_fu_847_p4;
assign zext_ln317_fu_876_p1 = tmp_56_fu_867_p4;
assign zext_ln318_1_fu_1250_p1 = or_ln5_fu_1243_p3;
assign zext_ln318_fu_896_p1 = tmp_57_fu_887_p4;
assign zext_ln319_1_fu_1263_p1 = or_ln6_fu_1256_p3;
assign zext_ln319_fu_907_p1 = tmp_58_reg_1385;
assign zext_ln320_fu_917_p1 = tmp_59_reg_1390;
assign zext_ln321_fu_927_p1 = tmp_60_reg_1395;
always @ (posedge ap_clk) begin
    zext_ln172_reg_1360[9] <= 1'b0;
end
endmodule 