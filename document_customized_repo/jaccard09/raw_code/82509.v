module fft1D_512_fft1D_512_Pipeline_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_we1,DATA_y_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_y_address1,DATA_y_ce1,DATA_y_we1,DATA_y_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1,smem_8_address0,smem_8_ce0,smem_8_q0,smem_8_address1,smem_8_ce1,smem_8_q1,smem_9_address0,smem_9_ce0,smem_9_q0,smem_9_address1,smem_9_ce1,smem_9_q1,smem_10_address0,smem_10_ce0,smem_10_q0,smem_10_address1,smem_10_ce1,smem_10_q1,smem_11_address0,smem_11_ce0,smem_11_q0,smem_11_address1,smem_11_ce1,smem_11_q1,smem_12_address0,smem_12_ce0,smem_12_q0,smem_12_address1,smem_12_ce1,smem_12_q1,p_phi_out,p_phi_out_ap_vld,p_phi18_out,p_phi18_out_ap_vld,p_phi19_out,p_phi19_out_ap_vld,p_phi20_out,p_phi20_out_ap_vld,p_phi21_out,p_phi21_out_ap_vld,p_phi22_out,p_phi22_out_ap_vld,p_phi23_out,p_phi23_out_ap_vld,p_phi24_out,p_phi24_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [7:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
output   DATA_y_1_we1;
output  [63:0] DATA_y_1_d1;
output  [7:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [7:0] DATA_y_address1;
output   DATA_y_ce1;
output   DATA_y_we1;
output  [63:0] DATA_y_d1;
output  [6:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [6:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [6:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [6:0] smem_7_address1;
output   smem_7_ce1;
input  [63:0] smem_7_q1;
output  [6:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [6:0] smem_8_address1;
output   smem_8_ce1;
input  [63:0] smem_8_q1;
output  [6:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [6:0] smem_9_address1;
output   smem_9_ce1;
input  [63:0] smem_9_q1;
output  [6:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [6:0] smem_10_address1;
output   smem_10_ce1;
input  [63:0] smem_10_q1;
output  [6:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [6:0] smem_11_address1;
output   smem_11_ce1;
input  [63:0] smem_11_q1;
output  [6:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
output  [6:0] smem_12_address1;
output   smem_12_ce1;
input  [63:0] smem_12_q1;
output  [63:0] p_phi_out;
output   p_phi_out_ap_vld;
output  [63:0] p_phi18_out;
output   p_phi18_out_ap_vld;
output  [63:0] p_phi19_out;
output   p_phi19_out_ap_vld;
output  [63:0] p_phi20_out;
output   p_phi20_out_ap_vld;
output  [63:0] p_phi21_out;
output   p_phi21_out_ap_vld;
output  [63:0] p_phi22_out;
output   p_phi22_out_ap_vld;
output  [63:0] p_phi23_out;
output   p_phi23_out_ap_vld;
output  [63:0] p_phi24_out;
output   p_phi24_out_ap_vld;
reg ap_idle;
reg p_phi_out_ap_vld;
reg p_phi18_out_ap_vld;
reg p_phi19_out_ap_vld;
reg p_phi20_out_ap_vld;
reg p_phi21_out_ap_vld;
reg p_phi22_out_ap_vld;
reg p_phi23_out_ap_vld;
reg p_phi24_out_ap_vld;
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
reg   [0:0] icmp_ln340_reg_1567;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_6_reg_1561;
wire   [0:0] icmp_ln340_fu_823_p2;
reg   [0:0] icmp_ln340_reg_1567_pp0_iter1_reg;
reg   [0:0] icmp_ln340_reg_1567_pp0_iter2_reg;
reg   [0:0] icmp_ln340_reg_1567_pp0_iter3_reg;
reg   [0:0] icmp_ln340_reg_1567_pp0_iter4_reg;
reg   [0:0] icmp_ln340_reg_1567_pp0_iter5_reg;
reg   [0:0] icmp_ln340_reg_1567_pp0_iter6_reg;
wire   [8:0] offset_assign_1_fu_843_p3;
reg   [8:0] offset_assign_1_reg_1571;
reg   [8:0] offset_assign_1_reg_1571_pp0_iter1_reg;
reg   [8:0] offset_assign_1_reg_1571_pp0_iter2_reg;
reg   [8:0] offset_assign_1_reg_1571_pp0_iter3_reg;
reg   [8:0] offset_assign_1_reg_1571_pp0_iter4_reg;
wire   [5:0] trunc_ln341_fu_862_p1;
reg   [5:0] trunc_ln341_reg_1578;
wire    ap_block_pp0_stage1_11001;
reg   [5:0] trunc_ln341_reg_1578_pp0_iter1_reg;
reg   [5:0] trunc_ln341_reg_1578_pp0_iter2_reg;
reg   [5:0] trunc_ln341_reg_1578_pp0_iter3_reg;
reg   [5:0] trunc_ln341_reg_1578_pp0_iter4_reg;
reg   [5:0] trunc_ln341_reg_1578_pp0_iter5_reg;
reg   [5:0] trunc_ln341_reg_1578_pp0_iter6_reg;
reg   [5:0] trunc_ln341_reg_1578_pp0_iter7_reg;
wire   [9:0] zext_ln102_fu_870_p1;
reg   [9:0] zext_ln102_reg_1586;
reg   [6:0] tmp_92_reg_1594;
reg   [6:0] tmp_92_reg_1594_pp0_iter5_reg;
wire   [2:0] trunc_ln102_fu_892_p1;
reg   [2:0] trunc_ln102_reg_1599;
reg   [7:0] tmp_97_reg_1611;
reg   [7:0] tmp_98_reg_1616;
reg   [7:0] tmp_99_reg_1621;
wire   [63:0] tmp_46_fu_1043_p17;
reg   [63:0] tmp_46_reg_1906;
wire   [63:0] tmp_s_fu_1078_p17;
reg   [63:0] tmp_s_reg_1911;
wire   [63:0] tmp_47_fu_1113_p17;
reg   [63:0] tmp_47_reg_1916;
wire   [63:0] tmp_48_fu_1148_p17;
reg   [63:0] tmp_48_reg_1921;
wire   [63:0] tmp_49_fu_1183_p17;
reg   [63:0] tmp_49_reg_1926;
wire   [63:0] tmp_50_fu_1218_p17;
reg   [63:0] tmp_50_reg_1931;
wire   [63:0] tmp_51_fu_1253_p17;
reg   [63:0] tmp_51_reg_1936;
wire   [63:0] tmp_52_fu_1288_p17;
reg   [63:0] tmp_52_reg_1941;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln102_1_fu_923_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln104_1_fu_942_p1;
wire   [63:0] zext_ln105_1_fu_962_p1;
wire   [63:0] zext_ln106_1_fu_982_p1;
wire   [63:0] zext_ln107_1_fu_1002_p1;
wire   [63:0] zext_ln108_1_fu_1013_p1;
wire   [63:0] zext_ln109_1_fu_1023_p1;
wire   [63:0] zext_ln110_1_fu_1033_p1;
wire   [63:0] zext_ln341_fu_1370_p1;
wire   [63:0] zext_ln343_fu_1383_p1;
wire   [63:0] zext_ln345_fu_1396_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln347_fu_1409_p1;
reg   [63:0] p_phi24_fu_130;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter7_stage0;
reg    ap_idle_pp0_0to6;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [63:0] p_phi23_fu_134;
reg   [63:0] p_phi22_fu_138;
reg   [63:0] p_phi21_fu_142;
reg   [63:0] p_phi20_fu_146;
reg   [63:0] p_phi19_fu_150;
reg   [63:0] p_phi18_fu_154;
reg   [63:0] p_phi_fu_158;
reg   [6:0] tid_fu_162;
wire   [6:0] add_ln340_fu_857_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_6;
wire    ap_block_pp0_stage0_01001;
reg    smem_ce1_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_7_ce1_local;
reg    smem_7_ce0_local;
reg   [6:0] smem_7_address0_local;
reg    smem_8_ce1_local;
reg    smem_8_ce0_local;
reg   [6:0] smem_8_address0_local;
reg    smem_9_ce1_local;
reg    smem_9_ce0_local;
reg   [6:0] smem_9_address0_local;
reg    smem_10_ce1_local;
reg    smem_10_ce0_local;
reg   [6:0] smem_10_address0_local;
reg    smem_11_ce1_local;
reg    smem_11_ce0_local;
reg   [6:0] smem_11_address0_local;
reg    smem_12_ce1_local;
reg    smem_12_ce0_local;
reg   [6:0] smem_12_address0_local;
reg    DATA_y_we1_local;
reg   [63:0] DATA_y_d1_local;
reg    DATA_y_ce1_local;
reg   [7:0] DATA_y_address1_local;
reg    DATA_y_we0_local;
reg   [63:0] DATA_y_d0_local;
reg    DATA_y_ce0_local;
reg   [7:0] DATA_y_address0_local;
reg    DATA_y_1_we1_local;
reg   [63:0] DATA_y_1_d1_local;
reg    DATA_y_1_ce1_local;
reg   [7:0] DATA_y_1_address1_local;
reg    DATA_y_1_we0_local;
reg   [63:0] DATA_y_1_d0_local;
reg    DATA_y_1_ce0_local;
reg   [7:0] DATA_y_1_address0_local;
wire   [2:0] tmp_fu_829_p4;
wire   [5:0] trunc_ln353_fu_839_p1;
wire   [8:0] grp_fu_851_p0;
wire   [3:0] grp_fu_851_p1;
wire   [8:0] mul_ln102_fu_876_p0;
wire   [10:0] mul_ln102_fu_876_p1;
wire   [18:0] mul_ln102_fu_876_p2;
wire   [2:0] grp_fu_851_p2;
wire   [20:0] tmp_97_fu_896_p1;
wire  signed [20:0] grp_fu_1447_p3;
wire   [20:0] tmp_98_fu_905_p1;
wire  signed [20:0] grp_fu_1456_p3;
wire   [20:0] tmp_99_fu_914_p1;
wire  signed [20:0] grp_fu_1465_p3;
wire   [20:0] tmp_93_fu_933_p1;
wire  signed [20:0] grp_fu_1474_p3;
wire   [7:0] tmp_93_fu_933_p4;
wire   [20:0] tmp_94_fu_953_p1;
wire  signed [20:0] grp_fu_1482_p3;
wire   [7:0] tmp_94_fu_953_p4;
wire   [20:0] tmp_95_fu_973_p1;
wire  signed [20:0] grp_fu_1490_p3;
wire   [7:0] tmp_95_fu_973_p4;
wire   [20:0] tmp_96_fu_993_p1;
wire  signed [20:0] grp_fu_1498_p3;
wire   [7:0] tmp_96_fu_993_p4;
wire   [63:0] tmp_46_fu_1043_p15;
wire   [63:0] tmp_s_fu_1078_p15;
wire   [63:0] tmp_47_fu_1113_p15;
wire   [63:0] tmp_48_fu_1148_p15;
wire   [63:0] tmp_49_fu_1183_p15;
wire   [63:0] tmp_50_fu_1218_p15;
wire   [63:0] tmp_51_fu_1253_p15;
wire   [63:0] tmp_52_fu_1288_p15;
wire   [7:0] shl_ln9_fu_1363_p3;
wire   [7:0] or_ln_fu_1376_p3;
wire   [7:0] or_ln14_fu_1389_p3;
wire   [7:0] or_ln15_fu_1402_p3;
wire   [8:0] grp_fu_1447_p0;
wire   [5:0] grp_fu_1447_p1;
wire   [10:0] grp_fu_1447_p2;
wire   [8:0] grp_fu_1456_p0;
wire   [5:0] grp_fu_1456_p1;
wire   [10:0] grp_fu_1456_p2;
wire   [8:0] grp_fu_1465_p0;
wire   [5:0] grp_fu_1465_p1;
wire   [10:0] grp_fu_1465_p2;
wire   [8:0] grp_fu_1474_p0;
wire   [3:0] grp_fu_1474_p1;
wire   [10:0] grp_fu_1474_p2;
wire   [8:0] grp_fu_1482_p0;
wire   [4:0] grp_fu_1482_p1;
wire   [10:0] grp_fu_1482_p2;
wire   [8:0] grp_fu_1490_p0;
wire   [4:0] grp_fu_1490_p1;
wire   [10:0] grp_fu_1490_p2;
wire   [8:0] grp_fu_1498_p0;
wire   [5:0] grp_fu_1498_p1;
wire   [10:0] grp_fu_1498_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to8;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln102_fu_876_p00;
reg    ap_condition_427;
wire   [2:0] tmp_46_fu_1043_p1;
wire   [2:0] tmp_46_fu_1043_p3;
wire   [2:0] tmp_46_fu_1043_p5;
wire   [2:0] tmp_46_fu_1043_p7;
wire  signed [2:0] tmp_46_fu_1043_p9;
wire  signed [2:0] tmp_46_fu_1043_p11;
wire  signed [2:0] tmp_46_fu_1043_p13;
wire  signed [2:0] tmp_s_fu_1078_p1;
wire   [2:0] tmp_s_fu_1078_p3;
wire   [2:0] tmp_s_fu_1078_p5;
wire   [2:0] tmp_s_fu_1078_p7;
wire   [2:0] tmp_s_fu_1078_p9;
wire  signed [2:0] tmp_s_fu_1078_p11;
wire  signed [2:0] tmp_s_fu_1078_p13;
wire  signed [2:0] tmp_47_fu_1113_p1;
wire  signed [2:0] tmp_47_fu_1113_p3;
wire   [2:0] tmp_47_fu_1113_p5;
wire   [2:0] tmp_47_fu_1113_p7;
wire   [2:0] tmp_47_fu_1113_p9;
wire   [2:0] tmp_47_fu_1113_p11;
wire  signed [2:0] tmp_47_fu_1113_p13;
wire  signed [2:0] tmp_48_fu_1148_p1;
wire  signed [2:0] tmp_48_fu_1148_p3;
wire  signed [2:0] tmp_48_fu_1148_p5;
wire   [2:0] tmp_48_fu_1148_p7;
wire   [2:0] tmp_48_fu_1148_p9;
wire   [2:0] tmp_48_fu_1148_p11;
wire   [2:0] tmp_48_fu_1148_p13;
wire   [2:0] tmp_49_fu_1183_p1;
wire  signed [2:0] tmp_49_fu_1183_p3;
wire  signed [2:0] tmp_49_fu_1183_p5;
wire  signed [2:0] tmp_49_fu_1183_p7;
wire   [2:0] tmp_49_fu_1183_p9;
wire   [2:0] tmp_49_fu_1183_p11;
wire   [2:0] tmp_49_fu_1183_p13;
wire   [2:0] tmp_50_fu_1218_p1;
wire   [2:0] tmp_50_fu_1218_p3;
wire  signed [2:0] tmp_50_fu_1218_p5;
wire  signed [2:0] tmp_50_fu_1218_p7;
wire  signed [2:0] tmp_50_fu_1218_p9;
wire   [2:0] tmp_50_fu_1218_p11;
wire   [2:0] tmp_50_fu_1218_p13;
wire   [2:0] tmp_51_fu_1253_p1;
wire   [2:0] tmp_51_fu_1253_p3;
wire   [2:0] tmp_51_fu_1253_p5;
wire  signed [2:0] tmp_51_fu_1253_p7;
wire  signed [2:0] tmp_51_fu_1253_p9;
wire  signed [2:0] tmp_51_fu_1253_p11;
wire   [2:0] tmp_51_fu_1253_p13;
wire   [2:0] tmp_52_fu_1288_p1;
wire   [2:0] tmp_52_fu_1288_p3;
wire   [2:0] tmp_52_fu_1288_p5;
wire   [2:0] tmp_52_fu_1288_p7;
wire  signed [2:0] tmp_52_fu_1288_p9;
wire  signed [2:0] tmp_52_fu_1288_p11;
wire  signed [2:0] tmp_52_fu_1288_p13;
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
#0 p_phi24_fu_130 = 64'd0;
#0 p_phi23_fu_134 = 64'd0;
#0 p_phi22_fu_138 = 64'd0;
#0 p_phi21_fu_142 = 64'd0;
#0 p_phi20_fu_146 = 64'd0;
#0 p_phi19_fu_150 = 64'd0;
#0 p_phi18_fu_154 = 64'd0;
#0 p_phi_fu_158 = 64'd0;
#0 tid_fu_162 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U258(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_851_p0),.din1(grp_fu_851_p1),.ce(1'b1),.dout(grp_fu_851_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U259(.din0(mul_ln102_fu_876_p0),.din1(mul_ln102_fu_876_p1),.dout(mul_ln102_fu_876_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U260(.din0(smem_q1),.din1(smem_7_q1),.din2(smem_8_q1),.din3(smem_9_q1),.din4(smem_10_q1),.din5(smem_11_q1),.din6(smem_12_q1),.def(tmp_46_fu_1043_p15),.sel(trunc_ln102_reg_1599),.dout(tmp_46_fu_1043_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U261(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_s_fu_1078_p15),.sel(trunc_ln102_reg_1599),.dout(tmp_s_fu_1078_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U262(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_47_fu_1113_p15),.sel(trunc_ln102_reg_1599),.dout(tmp_47_fu_1113_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U263(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_48_fu_1148_p15),.sel(trunc_ln102_reg_1599),.dout(tmp_48_fu_1148_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U264(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_49_fu_1183_p15),.sel(trunc_ln102_reg_1599),.dout(tmp_49_fu_1183_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U265(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_50_fu_1218_p15),.sel(trunc_ln102_reg_1599),.dout(tmp_50_fu_1218_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U266(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_51_fu_1253_p15),.sel(trunc_ln102_reg_1599),.dout(tmp_51_fu_1253_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U267(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_52_fu_1288_p15),.sel(trunc_ln102_reg_1599),.dout(tmp_52_fu_1288_p17));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U268(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1447_p0),.din1(grp_fu_1447_p1),.din2(grp_fu_1447_p2),.ce(1'b1),.dout(grp_fu_1447_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U269(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1456_p0),.din1(grp_fu_1456_p1),.din2(grp_fu_1456_p2),.ce(1'b1),.dout(grp_fu_1456_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U270(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1465_p0),.din1(grp_fu_1465_p1),.din2(grp_fu_1465_p2),.ce(1'b1),.dout(grp_fu_1465_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U271(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1474_p0),.din1(grp_fu_1474_p1),.din2(grp_fu_1474_p2),.ce(1'b1),.dout(grp_fu_1474_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U272(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1482_p0),.din1(grp_fu_1482_p1),.din2(grp_fu_1482_p2),.ce(1'b1),.dout(grp_fu_1482_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U273(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1490_p0),.din1(grp_fu_1490_p1),.din2(grp_fu_1490_p2),.ce(1'b1),.dout(grp_fu_1490_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U274(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1498_p0),.din1(grp_fu_1498_p1),.din2(grp_fu_1498_p2),.ce(1'b1),.dout(grp_fu_1498_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        tid_fu_162 <= 7'd0;
    end else if (((icmp_ln340_reg_1567 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_fu_162 <= add_ln340_fu_857_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln340_reg_1567 <= icmp_ln340_fu_823_p2;
        icmp_ln340_reg_1567_pp0_iter1_reg <= icmp_ln340_reg_1567;
        icmp_ln340_reg_1567_pp0_iter2_reg <= icmp_ln340_reg_1567_pp0_iter1_reg;
        icmp_ln340_reg_1567_pp0_iter3_reg <= icmp_ln340_reg_1567_pp0_iter2_reg;
        icmp_ln340_reg_1567_pp0_iter4_reg <= icmp_ln340_reg_1567_pp0_iter3_reg;
        icmp_ln340_reg_1567_pp0_iter5_reg <= icmp_ln340_reg_1567_pp0_iter4_reg;
        icmp_ln340_reg_1567_pp0_iter6_reg <= icmp_ln340_reg_1567_pp0_iter5_reg;
        offset_assign_1_reg_1571 <= offset_assign_1_fu_843_p3;
        offset_assign_1_reg_1571_pp0_iter1_reg <= offset_assign_1_reg_1571;
        offset_assign_1_reg_1571_pp0_iter2_reg <= offset_assign_1_reg_1571_pp0_iter1_reg;
        offset_assign_1_reg_1571_pp0_iter3_reg <= offset_assign_1_reg_1571_pp0_iter2_reg;
        offset_assign_1_reg_1571_pp0_iter4_reg <= offset_assign_1_reg_1571_pp0_iter3_reg;
        tid_6_reg_1561 <= ap_sig_allocacmp_tid_6;
        tmp_46_reg_1906 <= tmp_46_fu_1043_p17;
        tmp_47_reg_1916 <= tmp_47_fu_1113_p17;
        tmp_48_reg_1921 <= tmp_48_fu_1148_p17;
        tmp_49_reg_1926 <= tmp_49_fu_1183_p17;
        tmp_50_reg_1931 <= tmp_50_fu_1218_p17;
        tmp_51_reg_1936 <= tmp_51_fu_1253_p17;
        tmp_52_reg_1941 <= tmp_52_fu_1288_p17;
        tmp_97_reg_1611 <= {{tmp_97_fu_896_p1[20:13]}};
        tmp_98_reg_1616 <= {{tmp_98_fu_905_p1[20:13]}};
        tmp_99_reg_1621 <= {{tmp_99_fu_914_p1[20:13]}};
        tmp_s_reg_1911 <= tmp_s_fu_1078_p17;
        trunc_ln102_reg_1599 <= trunc_ln102_fu_892_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi18_fu_154 <= tmp_s_fu_1078_p17;
        p_phi19_fu_150 <= tmp_47_fu_1113_p17;
        p_phi20_fu_146 <= tmp_48_fu_1148_p17;
        p_phi21_fu_142 <= tmp_49_fu_1183_p17;
        p_phi22_fu_138 <= tmp_50_fu_1218_p17;
        p_phi23_fu_134 <= tmp_51_fu_1253_p17;
        p_phi24_fu_130 <= tmp_52_fu_1288_p17;
        p_phi_fu_158 <= tmp_46_fu_1043_p17;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_92_reg_1594 <= {{mul_ln102_fu_876_p2[18:12]}};
        tmp_92_reg_1594_pp0_iter5_reg <= tmp_92_reg_1594;
        trunc_ln341_reg_1578 <= trunc_ln341_fu_862_p1;
        trunc_ln341_reg_1578_pp0_iter1_reg <= trunc_ln341_reg_1578;
        trunc_ln341_reg_1578_pp0_iter2_reg <= trunc_ln341_reg_1578_pp0_iter1_reg;
        trunc_ln341_reg_1578_pp0_iter3_reg <= trunc_ln341_reg_1578_pp0_iter2_reg;
        trunc_ln341_reg_1578_pp0_iter4_reg <= trunc_ln341_reg_1578_pp0_iter3_reg;
        trunc_ln341_reg_1578_pp0_iter5_reg <= trunc_ln341_reg_1578_pp0_iter4_reg;
        trunc_ln341_reg_1578_pp0_iter6_reg <= trunc_ln341_reg_1578_pp0_iter5_reg;
        trunc_ln341_reg_1578_pp0_iter7_reg <= trunc_ln341_reg_1578_pp0_iter6_reg;
        zext_ln102_reg_1586[8 : 0] <= zext_ln102_fu_870_p1[8 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_address0_local = zext_ln347_fu_1409_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address0_local = zext_ln343_fu_1383_p1;
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_address1_local = zext_ln345_fu_1396_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address1_local = zext_ln341_fu_1370_p1;
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_d0_local = tmp_52_reg_1941;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_d0_local = tmp_48_reg_1921;
    end else begin
        DATA_y_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_d1_local = tmp_50_reg_1931;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_d1_local = tmp_s_reg_1911;
    end else begin
        DATA_y_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_1_we1_local = 1'b1;
    end else begin
        DATA_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_address0_local = zext_ln347_fu_1409_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address0_local = zext_ln343_fu_1383_p1;
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_address1_local = zext_ln345_fu_1396_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address1_local = zext_ln341_fu_1370_p1;
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_d0_local = tmp_51_reg_1936;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_d0_local = tmp_47_reg_1916;
    end else begin
        DATA_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_d1_local = tmp_49_reg_1926;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_d1_local = tmp_46_reg_1906;
    end else begin
        DATA_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_we1_local = 1'b1;
    end else begin
        DATA_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln340_reg_1567 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln340_reg_1567_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_tid_6 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_6 = tid_fu_162;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln340_reg_1567_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi18_out_ap_vld = 1'b1;
    end else begin
        p_phi18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln340_reg_1567_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi19_out_ap_vld = 1'b1;
    end else begin
        p_phi19_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln340_reg_1567_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi20_out_ap_vld = 1'b1;
    end else begin
        p_phi20_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln340_reg_1567_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi21_out_ap_vld = 1'b1;
    end else begin
        p_phi21_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln340_reg_1567_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi22_out_ap_vld = 1'b1;
    end else begin
        p_phi22_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln340_reg_1567_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi23_out_ap_vld = 1'b1;
    end else begin
        p_phi23_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln340_reg_1567_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi24_out_ap_vld = 1'b1;
    end else begin
        p_phi24_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln340_reg_1567_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi_out_ap_vld = 1'b1;
    end else begin
        p_phi_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_427)) begin
        if ((trunc_ln102_reg_1599 == 3'd4)) begin
            smem_10_address0_local = zext_ln110_1_fu_1033_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd5)) begin
            smem_10_address0_local = zext_ln109_1_fu_1023_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd6)) begin
            smem_10_address0_local = zext_ln108_1_fu_1013_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd0)) begin
            smem_10_address0_local = zext_ln107_1_fu_1002_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd1)) begin
            smem_10_address0_local = zext_ln106_1_fu_982_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd2)) begin
            smem_10_address0_local = zext_ln105_1_fu_962_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd3)) begin
            smem_10_address0_local = zext_ln104_1_fu_942_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_427)) begin
        if ((trunc_ln102_reg_1599 == 3'd5)) begin
            smem_11_address0_local = zext_ln110_1_fu_1033_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd6)) begin
            smem_11_address0_local = zext_ln109_1_fu_1023_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd0)) begin
            smem_11_address0_local = zext_ln108_1_fu_1013_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd1)) begin
            smem_11_address0_local = zext_ln107_1_fu_1002_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd2)) begin
            smem_11_address0_local = zext_ln106_1_fu_982_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd3)) begin
            smem_11_address0_local = zext_ln105_1_fu_962_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd4)) begin
            smem_11_address0_local = zext_ln104_1_fu_942_p1;
        end else begin
            smem_11_address0_local = 'bx;
        end
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_427)) begin
        if ((trunc_ln102_reg_1599 == 3'd6)) begin
            smem_12_address0_local = zext_ln110_1_fu_1033_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd0)) begin
            smem_12_address0_local = zext_ln109_1_fu_1023_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd1)) begin
            smem_12_address0_local = zext_ln108_1_fu_1013_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd2)) begin
            smem_12_address0_local = zext_ln107_1_fu_1002_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd3)) begin
            smem_12_address0_local = zext_ln106_1_fu_982_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd4)) begin
            smem_12_address0_local = zext_ln105_1_fu_962_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd5)) begin
            smem_12_address0_local = zext_ln104_1_fu_942_p1;
        end else begin
            smem_12_address0_local = 'bx;
        end
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_ce1_local = 1'b1;
    end else begin
        smem_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_427)) begin
        if ((trunc_ln102_reg_1599 == 3'd1)) begin
            smem_7_address0_local = zext_ln110_1_fu_1033_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd2)) begin
            smem_7_address0_local = zext_ln109_1_fu_1023_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd3)) begin
            smem_7_address0_local = zext_ln108_1_fu_1013_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd4)) begin
            smem_7_address0_local = zext_ln107_1_fu_1002_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd5)) begin
            smem_7_address0_local = zext_ln106_1_fu_982_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd6)) begin
            smem_7_address0_local = zext_ln105_1_fu_962_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd0)) begin
            smem_7_address0_local = zext_ln104_1_fu_942_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_427)) begin
        if ((trunc_ln102_reg_1599 == 3'd2)) begin
            smem_8_address0_local = zext_ln110_1_fu_1033_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd3)) begin
            smem_8_address0_local = zext_ln109_1_fu_1023_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd4)) begin
            smem_8_address0_local = zext_ln108_1_fu_1013_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd5)) begin
            smem_8_address0_local = zext_ln107_1_fu_1002_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd6)) begin
            smem_8_address0_local = zext_ln106_1_fu_982_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd0)) begin
            smem_8_address0_local = zext_ln105_1_fu_962_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd1)) begin
            smem_8_address0_local = zext_ln104_1_fu_942_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_427)) begin
        if ((trunc_ln102_reg_1599 == 3'd3)) begin
            smem_9_address0_local = zext_ln110_1_fu_1033_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd4)) begin
            smem_9_address0_local = zext_ln109_1_fu_1023_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd5)) begin
            smem_9_address0_local = zext_ln108_1_fu_1013_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd6)) begin
            smem_9_address0_local = zext_ln107_1_fu_1002_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd0)) begin
            smem_9_address0_local = zext_ln106_1_fu_982_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd1)) begin
            smem_9_address0_local = zext_ln105_1_fu_962_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd2)) begin
            smem_9_address0_local = zext_ln104_1_fu_942_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_427)) begin
        if ((trunc_ln102_reg_1599 == 3'd0)) begin
            smem_address0_local = zext_ln110_1_fu_1033_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd1)) begin
            smem_address0_local = zext_ln109_1_fu_1023_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd2)) begin
            smem_address0_local = zext_ln108_1_fu_1013_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd3)) begin
            smem_address0_local = zext_ln107_1_fu_1002_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd4)) begin
            smem_address0_local = zext_ln106_1_fu_982_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd5)) begin
            smem_address0_local = zext_ln105_1_fu_962_p1;
        end else if ((trunc_ln102_reg_1599 == 3'd6)) begin
            smem_address0_local = zext_ln104_1_fu_942_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1599 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_address1 = DATA_y_1_address1_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_1_d0 = DATA_y_1_d0_local;
assign DATA_y_1_d1 = DATA_y_1_d1_local;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_1_we1 = DATA_y_1_we1_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_address1 = DATA_y_address1_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign DATA_y_d0 = DATA_y_d0_local;
assign DATA_y_d1 = DATA_y_d1_local;
assign DATA_y_we0 = DATA_y_we0_local;
assign DATA_y_we1 = DATA_y_we1_local;
assign add_ln340_fu_857_p2 = (tid_6_reg_1561 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_427 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_1447_p0 = zext_ln102_fu_870_p1;
assign grp_fu_1447_p1 = 10'd40;
assign grp_fu_1447_p2 = 21'd1171;
assign grp_fu_1456_p0 = zext_ln102_fu_870_p1;
assign grp_fu_1456_p1 = 10'd48;
assign grp_fu_1456_p2 = 21'd1171;
assign grp_fu_1465_p0 = zext_ln102_fu_870_p1;
assign grp_fu_1465_p1 = 10'd56;
assign grp_fu_1465_p2 = 21'd1171;
assign grp_fu_1474_p0 = zext_ln102_reg_1586;
assign grp_fu_1474_p1 = 10'd8;
assign grp_fu_1474_p2 = 21'd1171;
assign grp_fu_1482_p0 = zext_ln102_reg_1586;
assign grp_fu_1482_p1 = 10'd16;
assign grp_fu_1482_p2 = 21'd1171;
assign grp_fu_1490_p0 = zext_ln102_reg_1586;
assign grp_fu_1490_p1 = 10'd24;
assign grp_fu_1490_p2 = 21'd1171;
assign grp_fu_1498_p0 = zext_ln102_reg_1586;
assign grp_fu_1498_p1 = 10'd32;
assign grp_fu_1498_p2 = 21'd1171;
assign grp_fu_851_p0 = {{tmp_fu_829_p4}, {trunc_ln353_fu_839_p1}};
assign grp_fu_851_p1 = 9'd7;
assign icmp_ln340_fu_823_p2 = ((ap_sig_allocacmp_tid_6 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln102_fu_876_p0 = mul_ln102_fu_876_p00;
assign mul_ln102_fu_876_p00 = offset_assign_1_reg_1571_pp0_iter4_reg;
assign mul_ln102_fu_876_p1 = 19'd586;
assign offset_assign_1_fu_843_p3 = {{tmp_fu_829_p4}, {trunc_ln353_fu_839_p1}};
assign or_ln14_fu_1389_p3 = {{trunc_ln341_reg_1578_pp0_iter7_reg}, {2'd2}};
assign or_ln15_fu_1402_p3 = {{trunc_ln341_reg_1578_pp0_iter7_reg}, {2'd3}};
assign or_ln_fu_1376_p3 = {{trunc_ln341_reg_1578_pp0_iter6_reg}, {2'd1}};
assign p_phi18_out = p_phi18_fu_154;
assign p_phi19_out = p_phi19_fu_150;
assign p_phi20_out = p_phi20_fu_146;
assign p_phi21_out = p_phi21_fu_142;
assign p_phi22_out = p_phi22_fu_138;
assign p_phi23_out = p_phi23_fu_134;
assign p_phi24_out = p_phi24_fu_130;
assign p_phi_out = p_phi_fu_158;
assign shl_ln9_fu_1363_p3 = {{trunc_ln341_reg_1578_pp0_iter6_reg}, {2'd0}};
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_address1 = zext_ln102_1_fu_923_p1;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_ce1 = smem_10_ce1_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_address1 = zext_ln102_1_fu_923_p1;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_11_ce1 = smem_11_ce1_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_address1 = zext_ln102_1_fu_923_p1;
assign smem_12_ce0 = smem_12_ce0_local;
assign smem_12_ce1 = smem_12_ce1_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_address1 = zext_ln102_1_fu_923_p1;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_ce1 = smem_7_ce1_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_address1 = zext_ln102_1_fu_923_p1;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_ce1 = smem_8_ce1_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_address1 = zext_ln102_1_fu_923_p1;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_ce1 = smem_9_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = zext_ln102_1_fu_923_p1;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_46_fu_1043_p15 = 'bx;
assign tmp_47_fu_1113_p15 = 'bx;
assign tmp_48_fu_1148_p15 = 'bx;
assign tmp_49_fu_1183_p15 = 'bx;
assign tmp_50_fu_1218_p15 = 'bx;
assign tmp_51_fu_1253_p15 = 'bx;
assign tmp_52_fu_1288_p15 = 'bx;
assign tmp_93_fu_933_p1 = grp_fu_1474_p3;
assign tmp_93_fu_933_p4 = {{tmp_93_fu_933_p1[20:13]}};
assign tmp_94_fu_953_p1 = grp_fu_1482_p3;
assign tmp_94_fu_953_p4 = {{tmp_94_fu_953_p1[20:13]}};
assign tmp_95_fu_973_p1 = grp_fu_1490_p3;
assign tmp_95_fu_973_p4 = {{tmp_95_fu_973_p1[20:13]}};
assign tmp_96_fu_993_p1 = grp_fu_1498_p3;
assign tmp_96_fu_993_p4 = {{tmp_96_fu_993_p1[20:13]}};
assign tmp_97_fu_896_p1 = grp_fu_1447_p3;
assign tmp_98_fu_905_p1 = grp_fu_1456_p3;
assign tmp_99_fu_914_p1 = grp_fu_1465_p3;
assign tmp_fu_829_p4 = {{ap_sig_allocacmp_tid_6[5:3]}};
assign tmp_s_fu_1078_p15 = 'bx;
assign trunc_ln102_fu_892_p1 = grp_fu_851_p2[2:0];
assign trunc_ln341_fu_862_p1 = tid_6_reg_1561[5:0];
assign trunc_ln353_fu_839_p1 = ap_sig_allocacmp_tid_6[5:0];
assign zext_ln102_1_fu_923_p1 = tmp_92_reg_1594_pp0_iter5_reg;
assign zext_ln102_fu_870_p1 = offset_assign_1_reg_1571_pp0_iter4_reg;
assign zext_ln104_1_fu_942_p1 = tmp_93_fu_933_p4;
assign zext_ln105_1_fu_962_p1 = tmp_94_fu_953_p4;
assign zext_ln106_1_fu_982_p1 = tmp_95_fu_973_p4;
assign zext_ln107_1_fu_1002_p1 = tmp_96_fu_993_p4;
assign zext_ln108_1_fu_1013_p1 = tmp_97_reg_1611;
assign zext_ln109_1_fu_1023_p1 = tmp_98_reg_1616;
assign zext_ln110_1_fu_1033_p1 = tmp_99_reg_1621;
assign zext_ln341_fu_1370_p1 = shl_ln9_fu_1363_p3;
assign zext_ln343_fu_1383_p1 = or_ln_fu_1376_p3;
assign zext_ln345_fu_1396_p1 = or_ln14_fu_1389_p3;
assign zext_ln347_fu_1409_p1 = or_ln15_fu_1402_p3;
always @ (posedge ap_clk) begin
    zext_ln102_reg_1586[9] <= 1'b0;
end
endmodule 