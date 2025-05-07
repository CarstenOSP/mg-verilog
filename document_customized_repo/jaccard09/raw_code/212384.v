module SgdLR_sw_SgdLR_sw_Pipeline_label_317 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_address0,v3_ce0,v3_we0,v3_d0,tmp_103,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v22_5,grp_fu_1543_p_din0,grp_fu_1543_p_din1,grp_fu_1543_p_dout0,grp_fu_1543_p_ce,grp_fu_1547_p_din0,grp_fu_1547_p_din1,grp_fu_1547_p_dout0,grp_fu_1547_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v3_3_address0;
output   v3_3_ce0;
output   v3_3_we0;
output  [31:0] v3_3_d0;
output  [7:0] v3_2_address0;
output   v3_2_ce0;
output   v3_2_we0;
output  [31:0] v3_2_d0;
output  [7:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [7:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
input  [10:0] tmp_103;
output  [20:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [20:0] v0_0_address1;
output   v0_0_ce1;
input  [31:0] v0_0_q1;
output  [20:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [20:0] v0_1_address1;
output   v0_1_ce1;
input  [31:0] v0_1_q1;
output  [20:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [20:0] v0_2_address1;
output   v0_2_ce1;
input  [31:0] v0_2_q1;
output  [20:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [20:0] v0_3_address1;
output   v0_3_ce1;
input  [31:0] v0_3_q1;
input  [31:0] v22_5;
output  [31:0] grp_fu_1543_p_din0;
output  [31:0] grp_fu_1543_p_din1;
input  [31:0] grp_fu_1543_p_dout0;
output   grp_fu_1543_p_ce;
output  [31:0] grp_fu_1547_p_din0;
output  [31:0] grp_fu_1547_p_din1;
input  [31:0] grp_fu_1547_p_dout0;
output   grp_fu_1547_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
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
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_1232;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] reg_540;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage3_11001;
reg   [1:0] reg_544;
reg   [1:0] reg_548;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] reg_552;
reg   [31:0] reg_556;
reg   [31:0] reg_562;
reg   [10:0] v19_4_reg_1224;
wire   [22:0] add_ln51_s_fu_584_p4;
reg   [22:0] add_ln51_s_reg_1236;
reg   [22:0] add_ln51_s_reg_1236_pp0_iter1_reg;
reg   [22:0] add_ln51_s_reg_1236_pp0_iter2_reg;
reg   [22:0] add_ln51_s_reg_1236_pp0_iter3_reg;
reg   [22:0] add_ln51_s_reg_1236_pp0_iter4_reg;
reg   [22:0] add_ln51_s_reg_1236_pp0_iter5_reg;
reg   [22:0] add_ln51_s_reg_1236_pp0_iter6_reg;
wire   [22:0] add_ln51_21_fu_610_p5;
reg   [22:0] add_ln51_21_reg_1242;
reg   [22:0] add_ln51_21_reg_1242_pp0_iter1_reg;
reg   [22:0] add_ln51_21_reg_1242_pp0_iter2_reg;
reg   [22:0] add_ln51_21_reg_1242_pp0_iter3_reg;
reg   [22:0] add_ln51_21_reg_1242_pp0_iter4_reg;
reg   [22:0] add_ln51_21_reg_1242_pp0_iter5_reg;
reg   [22:0] add_ln51_21_reg_1242_pp0_iter6_reg;
wire   [7:0] lshr_ln48_5_fu_628_p4;
reg   [7:0] lshr_ln48_5_reg_1248;
reg   [7:0] lshr_ln48_5_reg_1248_pp0_iter1_reg;
reg   [7:0] lshr_ln48_5_reg_1248_pp0_iter2_reg;
reg   [7:0] lshr_ln48_5_reg_1248_pp0_iter3_reg;
reg   [7:0] lshr_ln48_5_reg_1248_pp0_iter4_reg;
reg   [7:0] lshr_ln48_5_reg_1248_pp0_iter5_reg;
reg   [7:0] lshr_ln48_5_reg_1248_pp0_iter6_reg;
reg   [7:0] lshr_ln48_5_reg_1248_pp0_iter7_reg;
wire   [22:0] add_ln51_22_fu_637_p5;
reg   [22:0] add_ln51_22_reg_1253;
reg   [22:0] add_ln51_22_reg_1253_pp0_iter1_reg;
reg   [22:0] add_ln51_22_reg_1253_pp0_iter2_reg;
reg   [22:0] add_ln51_22_reg_1253_pp0_iter3_reg;
reg   [22:0] add_ln51_22_reg_1253_pp0_iter4_reg;
reg   [22:0] add_ln51_22_reg_1253_pp0_iter5_reg;
reg   [22:0] add_ln51_22_reg_1253_pp0_iter6_reg;
wire   [22:0] add_ln51_23_fu_654_p5;
reg   [22:0] add_ln51_23_reg_1259;
reg   [22:0] add_ln51_23_reg_1259_pp0_iter1_reg;
reg   [22:0] add_ln51_23_reg_1259_pp0_iter2_reg;
reg   [22:0] add_ln51_23_reg_1259_pp0_iter3_reg;
reg   [22:0] add_ln51_23_reg_1259_pp0_iter4_reg;
reg   [22:0] add_ln51_23_reg_1259_pp0_iter5_reg;
reg   [22:0] add_ln51_23_reg_1259_pp0_iter6_reg;
wire   [6:0] tmp_5_fu_671_p4;
reg   [6:0] tmp_5_reg_1265;
reg   [6:0] tmp_5_reg_1265_pp0_iter1_reg;
reg   [6:0] tmp_5_reg_1265_pp0_iter2_reg;
reg   [6:0] tmp_5_reg_1265_pp0_iter3_reg;
reg   [6:0] tmp_5_reg_1265_pp0_iter4_reg;
reg   [6:0] tmp_5_reg_1265_pp0_iter5_reg;
reg   [6:0] tmp_5_reg_1265_pp0_iter6_reg;
reg   [6:0] tmp_5_reg_1265_pp0_iter7_reg;
wire   [22:0] add_ln51_24_fu_680_p5;
reg   [22:0] add_ln51_24_reg_1272;
reg   [22:0] add_ln51_24_reg_1272_pp0_iter1_reg;
reg   [22:0] add_ln51_24_reg_1272_pp0_iter2_reg;
reg   [22:0] add_ln51_24_reg_1272_pp0_iter3_reg;
reg   [22:0] add_ln51_24_reg_1272_pp0_iter4_reg;
reg   [22:0] add_ln51_24_reg_1272_pp0_iter5_reg;
reg   [22:0] add_ln51_24_reg_1272_pp0_iter6_reg;
wire   [22:0] add_ln51_25_fu_704_p7;
reg   [22:0] add_ln51_25_reg_1278;
reg   [22:0] add_ln51_25_reg_1278_pp0_iter1_reg;
reg   [22:0] add_ln51_25_reg_1278_pp0_iter2_reg;
reg   [22:0] add_ln51_25_reg_1278_pp0_iter3_reg;
reg   [22:0] add_ln51_25_reg_1278_pp0_iter4_reg;
reg   [22:0] add_ln51_25_reg_1278_pp0_iter5_reg;
reg   [22:0] add_ln51_25_reg_1278_pp0_iter6_reg;
wire   [22:0] add_ln51_26_fu_725_p5;
reg   [22:0] add_ln51_26_reg_1284;
reg   [22:0] add_ln51_26_reg_1284_pp0_iter1_reg;
reg   [22:0] add_ln51_26_reg_1284_pp0_iter2_reg;
reg   [22:0] add_ln51_26_reg_1284_pp0_iter3_reg;
reg   [22:0] add_ln51_26_reg_1284_pp0_iter4_reg;
reg   [22:0] add_ln51_26_reg_1284_pp0_iter5_reg;
reg   [22:0] add_ln51_26_reg_1284_pp0_iter6_reg;
wire   [22:0] add_ln51_27_fu_741_p5;
reg   [22:0] add_ln51_27_reg_1290;
reg   [22:0] add_ln51_27_reg_1290_pp0_iter1_reg;
reg   [22:0] add_ln51_27_reg_1290_pp0_iter2_reg;
reg   [22:0] add_ln51_27_reg_1290_pp0_iter3_reg;
reg   [22:0] add_ln51_27_reg_1290_pp0_iter4_reg;
reg   [22:0] add_ln51_27_reg_1290_pp0_iter5_reg;
reg   [22:0] add_ln51_27_reg_1290_pp0_iter6_reg;
wire   [31:0] v23_fu_815_p11;
reg   [31:0] v23_reg_1336;
wire   [31:0] v23_31_fu_855_p11;
reg   [31:0] v23_31_reg_1341;
wire   [31:0] v23_32_fu_919_p11;
reg   [31:0] v23_32_reg_1386;
wire   [31:0] v23_33_fu_959_p11;
reg   [31:0] v23_33_reg_1391;
wire   [31:0] v23_34_fu_1023_p11;
reg   [31:0] v23_34_reg_1436;
wire   [31:0] v23_35_fu_1063_p11;
reg   [31:0] v23_35_reg_1441;
wire   [31:0] v23_36_fu_1119_p11;
reg   [31:0] v23_36_reg_1486;
wire   [31:0] v23_37_fu_1159_p11;
reg   [31:0] v23_37_reg_1491;
wire   [63:0] zext_ln48_fu_1183_p1;
reg   [63:0] zext_ln48_reg_1496;
wire   [63:0] zext_ln51_49_fu_1195_p1;
reg   [63:0] zext_ln51_49_reg_1502;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_45_fu_775_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln51_46_fu_783_p1;
wire   [63:0] zext_ln51_47_fu_879_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln51_48_fu_887_p1;
wire   [63:0] zext_ln51_50_fu_983_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_51_fu_991_p1;
wire   [63:0] zext_ln51_52_fu_1087_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_53_fu_1095_p1;
reg   [10:0] v19_fu_110;
wire   [10:0] add_ln47_fu_757_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_4;
reg    v0_0_ce1_local;
reg   [20:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [20:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [20:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [20:0] v0_1_address0_local;
reg    v0_2_ce1_local;
reg   [20:0] v0_2_address1_local;
reg    v0_2_ce0_local;
reg   [20:0] v0_2_address0_local;
reg    v0_3_ce1_local;
reg   [20:0] v0_3_address1_local;
reg    v0_3_ce0_local;
reg   [20:0] v0_3_address0_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg   [7:0] v3_address0_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg   [7:0] v3_1_address0_local;
reg    v3_2_we0_local;
reg    v3_2_ce0_local;
reg   [7:0] v3_2_address0_local;
reg    v3_3_we0_local;
reg    v3_3_ce0_local;
reg   [7:0] v3_3_address0_local;
reg   [31:0] grp_fu_502_p1;
reg   [31:0] grp_fu_506_p1;
reg   [22:0] grp_fu_510_p0;
wire   [46:0] zext_ln51_fu_767_p1;
wire   [46:0] zext_ln51_57_fu_791_p1;
wire   [46:0] zext_ln51_59_fu_895_p1;
wire   [46:0] zext_ln51_61_fu_999_p1;
wire   [24:0] grp_fu_510_p1;
reg   [22:0] grp_fu_515_p0;
wire   [46:0] zext_ln51_56_fu_771_p1;
wire   [46:0] zext_ln51_58_fu_795_p1;
wire   [46:0] zext_ln51_60_fu_899_p1;
wire   [46:0] zext_ln51_62_fu_1003_p1;
wire   [24:0] grp_fu_515_p1;
wire   [46:0] grp_fu_510_p2;
wire   [46:0] grp_fu_515_p2;
wire   [22:0] grp_fu_594_p0;
wire   [21:0] grp_fu_594_p1;
wire   [8:0] tmp_s_fu_600_p4;
wire   [22:0] grp_fu_622_p0;
wire   [21:0] grp_fu_622_p1;
wire   [22:0] grp_fu_648_p0;
wire   [21:0] grp_fu_648_p1;
wire   [22:0] grp_fu_665_p0;
wire   [21:0] grp_fu_665_p1;
wire   [22:0] grp_fu_691_p0;
wire   [21:0] grp_fu_691_p1;
wire   [0:0] tmp_13_fu_697_p3;
wire   [22:0] grp_fu_719_p0;
wire   [21:0] grp_fu_719_p1;
wire   [22:0] grp_fu_735_p0;
wire   [21:0] grp_fu_735_p1;
wire   [22:0] grp_fu_751_p0;
wire   [21:0] grp_fu_751_p1;
wire   [22:0] grp_fu_594_p2;
wire   [22:0] grp_fu_622_p2;
wire   [31:0] v23_fu_815_p2;
wire   [31:0] v23_fu_815_p4;
wire   [31:0] v23_fu_815_p6;
wire   [31:0] v23_fu_815_p8;
wire   [31:0] v23_fu_815_p9;
wire   [31:0] v23_31_fu_855_p2;
wire   [31:0] v23_31_fu_855_p4;
wire   [31:0] v23_31_fu_855_p6;
wire   [31:0] v23_31_fu_855_p8;
wire   [31:0] v23_31_fu_855_p9;
wire   [22:0] grp_fu_648_p2;
wire   [22:0] grp_fu_665_p2;
wire   [31:0] v23_32_fu_919_p2;
wire   [31:0] v23_32_fu_919_p4;
wire   [31:0] v23_32_fu_919_p6;
wire   [31:0] v23_32_fu_919_p8;
wire   [31:0] v23_32_fu_919_p9;
wire   [31:0] v23_33_fu_959_p2;
wire   [31:0] v23_33_fu_959_p4;
wire   [31:0] v23_33_fu_959_p6;
wire   [31:0] v23_33_fu_959_p8;
wire   [31:0] v23_33_fu_959_p9;
wire   [22:0] grp_fu_691_p2;
wire   [22:0] grp_fu_719_p2;
wire   [31:0] v23_34_fu_1023_p2;
wire   [31:0] v23_34_fu_1023_p4;
wire   [31:0] v23_34_fu_1023_p6;
wire   [31:0] v23_34_fu_1023_p8;
wire   [31:0] v23_34_fu_1023_p9;
wire   [31:0] v23_35_fu_1063_p2;
wire   [31:0] v23_35_fu_1063_p4;
wire   [31:0] v23_35_fu_1063_p6;
wire   [31:0] v23_35_fu_1063_p8;
wire   [31:0] v23_35_fu_1063_p9;
wire   [22:0] grp_fu_735_p2;
wire   [22:0] grp_fu_751_p2;
wire   [31:0] v23_36_fu_1119_p2;
wire   [31:0] v23_36_fu_1119_p4;
wire   [31:0] v23_36_fu_1119_p6;
wire   [31:0] v23_36_fu_1119_p8;
wire   [31:0] v23_36_fu_1119_p9;
wire   [31:0] v23_37_fu_1159_p2;
wire   [31:0] v23_37_fu_1159_p4;
wire   [31:0] v23_37_fu_1159_p6;
wire   [31:0] v23_37_fu_1159_p8;
wire   [31:0] v23_37_fu_1159_p9;
wire   [7:0] or_ln48_5_fu_1188_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to8;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v23_fu_815_p1;
wire   [1:0] v23_fu_815_p3;
wire  signed [1:0] v23_fu_815_p5;
wire  signed [1:0] v23_fu_815_p7;
wire   [1:0] v23_31_fu_855_p1;
wire   [1:0] v23_31_fu_855_p3;
wire  signed [1:0] v23_31_fu_855_p5;
wire  signed [1:0] v23_31_fu_855_p7;
wire   [1:0] v23_32_fu_919_p1;
wire   [1:0] v23_32_fu_919_p3;
wire  signed [1:0] v23_32_fu_919_p5;
wire  signed [1:0] v23_32_fu_919_p7;
wire   [1:0] v23_33_fu_959_p1;
wire   [1:0] v23_33_fu_959_p3;
wire  signed [1:0] v23_33_fu_959_p5;
wire  signed [1:0] v23_33_fu_959_p7;
wire   [1:0] v23_34_fu_1023_p1;
wire   [1:0] v23_34_fu_1023_p3;
wire  signed [1:0] v23_34_fu_1023_p5;
wire  signed [1:0] v23_34_fu_1023_p7;
wire   [1:0] v23_35_fu_1063_p1;
wire   [1:0] v23_35_fu_1063_p3;
wire  signed [1:0] v23_35_fu_1063_p5;
wire  signed [1:0] v23_35_fu_1063_p7;
wire   [1:0] v23_36_fu_1119_p1;
wire   [1:0] v23_36_fu_1119_p3;
wire  signed [1:0] v23_36_fu_1119_p5;
wire  signed [1:0] v23_36_fu_1119_p7;
wire   [1:0] v23_37_fu_1159_p1;
wire   [1:0] v23_37_fu_1159_p3;
wire  signed [1:0] v23_37_fu_1159_p5;
wire  signed [1:0] v23_37_fu_1159_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v19_fu_110 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U373(.din0(grp_fu_510_p0),.din1(grp_fu_510_p1),.dout(grp_fu_510_p2));
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U374(.din0(grp_fu_515_p0),.din1(grp_fu_515_p1),.dout(grp_fu_515_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U375(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_594_p0),.din1(grp_fu_594_p1),.ce(1'b1),.dout(grp_fu_594_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U376(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_622_p0),.din1(grp_fu_622_p1),.ce(1'b1),.dout(grp_fu_622_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U377(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_648_p0),.din1(grp_fu_648_p1),.ce(1'b1),.dout(grp_fu_648_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U378(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_665_p0),.din1(grp_fu_665_p1),.ce(1'b1),.dout(grp_fu_665_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U379(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_691_p0),.din1(grp_fu_691_p1),.ce(1'b1),.dout(grp_fu_691_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U380(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_719_p0),.din1(grp_fu_719_p1),.ce(1'b1),.dout(grp_fu_719_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U381(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_735_p0),.din1(grp_fu_735_p1),.ce(1'b1),.dout(grp_fu_735_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U382(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_751_p0),.din1(grp_fu_751_p1),.ce(1'b1),.dout(grp_fu_751_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U383(.din0(v23_fu_815_p2),.din1(v23_fu_815_p4),.din2(v23_fu_815_p6),.din3(v23_fu_815_p8),.def(v23_fu_815_p9),.sel(reg_540),.dout(v23_fu_815_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U384(.din0(v23_31_fu_855_p2),.din1(v23_31_fu_855_p4),.din2(v23_31_fu_855_p6),.din3(v23_31_fu_855_p8),.def(v23_31_fu_855_p9),.sel(reg_544),.dout(v23_31_fu_855_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U385(.din0(v23_32_fu_919_p2),.din1(v23_32_fu_919_p4),.din2(v23_32_fu_919_p6),.din3(v23_32_fu_919_p8),.def(v23_32_fu_919_p9),.sel(reg_548),.dout(v23_32_fu_919_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U386(.din0(v23_33_fu_959_p2),.din1(v23_33_fu_959_p4),.din2(v23_33_fu_959_p6),.din3(v23_33_fu_959_p8),.def(v23_33_fu_959_p9),.sel(reg_552),.dout(v23_33_fu_959_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U387(.din0(v23_34_fu_1023_p2),.din1(v23_34_fu_1023_p4),.din2(v23_34_fu_1023_p6),.din3(v23_34_fu_1023_p8),.def(v23_34_fu_1023_p9),.sel(reg_540),.dout(v23_34_fu_1023_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U388(.din0(v23_35_fu_1063_p2),.din1(v23_35_fu_1063_p4),.din2(v23_35_fu_1063_p6),.din3(v23_35_fu_1063_p8),.def(v23_35_fu_1063_p9),.sel(reg_544),.dout(v23_35_fu_1063_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U389(.din0(v23_36_fu_1119_p2),.din1(v23_36_fu_1119_p4),.din2(v23_36_fu_1119_p6),.din3(v23_36_fu_1119_p8),.def(v23_36_fu_1119_p9),.sel(reg_548),.dout(v23_36_fu_1119_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U390(.din0(v23_37_fu_1159_p2),.din1(v23_37_fu_1159_p4),.din2(v23_37_fu_1159_p6),.din3(v23_37_fu_1159_p8),.def(v23_37_fu_1159_p9),.sel(reg_552),.dout(v23_37_fu_1159_p11));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_fu_110 <= 11'd0;
    end else if (((tmp_reg_1232 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v19_fu_110 <= add_ln47_fu_757_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln51_21_reg_1242[9 : 1] <= add_ln51_21_fu_610_p5[9 : 1];
add_ln51_21_reg_1242[22 : 12] <= add_ln51_21_fu_610_p5[22 : 12];
        add_ln51_21_reg_1242_pp0_iter1_reg[9 : 1] <= add_ln51_21_reg_1242[9 : 1];
add_ln51_21_reg_1242_pp0_iter1_reg[22 : 12] <= add_ln51_21_reg_1242[22 : 12];
        add_ln51_21_reg_1242_pp0_iter2_reg[9 : 1] <= add_ln51_21_reg_1242_pp0_iter1_reg[9 : 1];
add_ln51_21_reg_1242_pp0_iter2_reg[22 : 12] <= add_ln51_21_reg_1242_pp0_iter1_reg[22 : 12];
        add_ln51_21_reg_1242_pp0_iter3_reg[9 : 1] <= add_ln51_21_reg_1242_pp0_iter2_reg[9 : 1];
add_ln51_21_reg_1242_pp0_iter3_reg[22 : 12] <= add_ln51_21_reg_1242_pp0_iter2_reg[22 : 12];
        add_ln51_21_reg_1242_pp0_iter4_reg[9 : 1] <= add_ln51_21_reg_1242_pp0_iter3_reg[9 : 1];
add_ln51_21_reg_1242_pp0_iter4_reg[22 : 12] <= add_ln51_21_reg_1242_pp0_iter3_reg[22 : 12];
        add_ln51_21_reg_1242_pp0_iter5_reg[9 : 1] <= add_ln51_21_reg_1242_pp0_iter4_reg[9 : 1];
add_ln51_21_reg_1242_pp0_iter5_reg[22 : 12] <= add_ln51_21_reg_1242_pp0_iter4_reg[22 : 12];
        add_ln51_21_reg_1242_pp0_iter6_reg[9 : 1] <= add_ln51_21_reg_1242_pp0_iter5_reg[9 : 1];
add_ln51_21_reg_1242_pp0_iter6_reg[22 : 12] <= add_ln51_21_reg_1242_pp0_iter5_reg[22 : 12];
        add_ln51_s_reg_1236[10 : 0] <= add_ln51_s_fu_584_p4[10 : 0];
add_ln51_s_reg_1236[22 : 12] <= add_ln51_s_fu_584_p4[22 : 12];
        add_ln51_s_reg_1236_pp0_iter1_reg[10 : 0] <= add_ln51_s_reg_1236[10 : 0];
add_ln51_s_reg_1236_pp0_iter1_reg[22 : 12] <= add_ln51_s_reg_1236[22 : 12];
        add_ln51_s_reg_1236_pp0_iter2_reg[10 : 0] <= add_ln51_s_reg_1236_pp0_iter1_reg[10 : 0];
add_ln51_s_reg_1236_pp0_iter2_reg[22 : 12] <= add_ln51_s_reg_1236_pp0_iter1_reg[22 : 12];
        add_ln51_s_reg_1236_pp0_iter3_reg[10 : 0] <= add_ln51_s_reg_1236_pp0_iter2_reg[10 : 0];
add_ln51_s_reg_1236_pp0_iter3_reg[22 : 12] <= add_ln51_s_reg_1236_pp0_iter2_reg[22 : 12];
        add_ln51_s_reg_1236_pp0_iter4_reg[10 : 0] <= add_ln51_s_reg_1236_pp0_iter3_reg[10 : 0];
add_ln51_s_reg_1236_pp0_iter4_reg[22 : 12] <= add_ln51_s_reg_1236_pp0_iter3_reg[22 : 12];
        add_ln51_s_reg_1236_pp0_iter5_reg[10 : 0] <= add_ln51_s_reg_1236_pp0_iter4_reg[10 : 0];
add_ln51_s_reg_1236_pp0_iter5_reg[22 : 12] <= add_ln51_s_reg_1236_pp0_iter4_reg[22 : 12];
        add_ln51_s_reg_1236_pp0_iter6_reg[10 : 0] <= add_ln51_s_reg_1236_pp0_iter5_reg[10 : 0];
add_ln51_s_reg_1236_pp0_iter6_reg[22 : 12] <= add_ln51_s_reg_1236_pp0_iter5_reg[22 : 12];
        tmp_reg_1232 <= ap_sig_allocacmp_v19_4[32'd10];
        v19_4_reg_1224 <= ap_sig_allocacmp_v19_4;
        v23_32_reg_1386 <= v23_32_fu_919_p11;
        v23_33_reg_1391 <= v23_33_fu_959_p11;
        zext_ln48_reg_1496[7 : 0] <= zext_ln48_fu_1183_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln51_22_reg_1253[9 : 2] <= add_ln51_22_fu_637_p5[9 : 2];
add_ln51_22_reg_1253[22 : 12] <= add_ln51_22_fu_637_p5[22 : 12];
        add_ln51_22_reg_1253_pp0_iter1_reg[9 : 2] <= add_ln51_22_reg_1253[9 : 2];
add_ln51_22_reg_1253_pp0_iter1_reg[22 : 12] <= add_ln51_22_reg_1253[22 : 12];
        add_ln51_22_reg_1253_pp0_iter2_reg[9 : 2] <= add_ln51_22_reg_1253_pp0_iter1_reg[9 : 2];
add_ln51_22_reg_1253_pp0_iter2_reg[22 : 12] <= add_ln51_22_reg_1253_pp0_iter1_reg[22 : 12];
        add_ln51_22_reg_1253_pp0_iter3_reg[9 : 2] <= add_ln51_22_reg_1253_pp0_iter2_reg[9 : 2];
add_ln51_22_reg_1253_pp0_iter3_reg[22 : 12] <= add_ln51_22_reg_1253_pp0_iter2_reg[22 : 12];
        add_ln51_22_reg_1253_pp0_iter4_reg[9 : 2] <= add_ln51_22_reg_1253_pp0_iter3_reg[9 : 2];
add_ln51_22_reg_1253_pp0_iter4_reg[22 : 12] <= add_ln51_22_reg_1253_pp0_iter3_reg[22 : 12];
        add_ln51_22_reg_1253_pp0_iter5_reg[9 : 2] <= add_ln51_22_reg_1253_pp0_iter4_reg[9 : 2];
add_ln51_22_reg_1253_pp0_iter5_reg[22 : 12] <= add_ln51_22_reg_1253_pp0_iter4_reg[22 : 12];
        add_ln51_22_reg_1253_pp0_iter6_reg[9 : 2] <= add_ln51_22_reg_1253_pp0_iter5_reg[9 : 2];
add_ln51_22_reg_1253_pp0_iter6_reg[22 : 12] <= add_ln51_22_reg_1253_pp0_iter5_reg[22 : 12];
        add_ln51_23_reg_1259[9 : 2] <= add_ln51_23_fu_654_p5[9 : 2];
add_ln51_23_reg_1259[22 : 12] <= add_ln51_23_fu_654_p5[22 : 12];
        add_ln51_23_reg_1259_pp0_iter1_reg[9 : 2] <= add_ln51_23_reg_1259[9 : 2];
add_ln51_23_reg_1259_pp0_iter1_reg[22 : 12] <= add_ln51_23_reg_1259[22 : 12];
        add_ln51_23_reg_1259_pp0_iter2_reg[9 : 2] <= add_ln51_23_reg_1259_pp0_iter1_reg[9 : 2];
add_ln51_23_reg_1259_pp0_iter2_reg[22 : 12] <= add_ln51_23_reg_1259_pp0_iter1_reg[22 : 12];
        add_ln51_23_reg_1259_pp0_iter3_reg[9 : 2] <= add_ln51_23_reg_1259_pp0_iter2_reg[9 : 2];
add_ln51_23_reg_1259_pp0_iter3_reg[22 : 12] <= add_ln51_23_reg_1259_pp0_iter2_reg[22 : 12];
        add_ln51_23_reg_1259_pp0_iter4_reg[9 : 2] <= add_ln51_23_reg_1259_pp0_iter3_reg[9 : 2];
add_ln51_23_reg_1259_pp0_iter4_reg[22 : 12] <= add_ln51_23_reg_1259_pp0_iter3_reg[22 : 12];
        add_ln51_23_reg_1259_pp0_iter5_reg[9 : 2] <= add_ln51_23_reg_1259_pp0_iter4_reg[9 : 2];
add_ln51_23_reg_1259_pp0_iter5_reg[22 : 12] <= add_ln51_23_reg_1259_pp0_iter4_reg[22 : 12];
        add_ln51_23_reg_1259_pp0_iter6_reg[9 : 2] <= add_ln51_23_reg_1259_pp0_iter5_reg[9 : 2];
add_ln51_23_reg_1259_pp0_iter6_reg[22 : 12] <= add_ln51_23_reg_1259_pp0_iter5_reg[22 : 12];
        lshr_ln48_5_reg_1248 <= {{v19_4_reg_1224[9:2]}};
        lshr_ln48_5_reg_1248_pp0_iter1_reg <= lshr_ln48_5_reg_1248;
        lshr_ln48_5_reg_1248_pp0_iter2_reg <= lshr_ln48_5_reg_1248_pp0_iter1_reg;
        lshr_ln48_5_reg_1248_pp0_iter3_reg <= lshr_ln48_5_reg_1248_pp0_iter2_reg;
        lshr_ln48_5_reg_1248_pp0_iter4_reg <= lshr_ln48_5_reg_1248_pp0_iter3_reg;
        lshr_ln48_5_reg_1248_pp0_iter5_reg <= lshr_ln48_5_reg_1248_pp0_iter4_reg;
        lshr_ln48_5_reg_1248_pp0_iter6_reg <= lshr_ln48_5_reg_1248_pp0_iter5_reg;
        lshr_ln48_5_reg_1248_pp0_iter7_reg <= lshr_ln48_5_reg_1248_pp0_iter6_reg;
        v23_34_reg_1436 <= v23_34_fu_1023_p11;
        v23_35_reg_1441 <= v23_35_fu_1063_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln51_24_reg_1272[9 : 3] <= add_ln51_24_fu_680_p5[9 : 3];
add_ln51_24_reg_1272[22 : 12] <= add_ln51_24_fu_680_p5[22 : 12];
        add_ln51_24_reg_1272_pp0_iter1_reg[9 : 3] <= add_ln51_24_reg_1272[9 : 3];
add_ln51_24_reg_1272_pp0_iter1_reg[22 : 12] <= add_ln51_24_reg_1272[22 : 12];
        add_ln51_24_reg_1272_pp0_iter2_reg[9 : 3] <= add_ln51_24_reg_1272_pp0_iter1_reg[9 : 3];
add_ln51_24_reg_1272_pp0_iter2_reg[22 : 12] <= add_ln51_24_reg_1272_pp0_iter1_reg[22 : 12];
        add_ln51_24_reg_1272_pp0_iter3_reg[9 : 3] <= add_ln51_24_reg_1272_pp0_iter2_reg[9 : 3];
add_ln51_24_reg_1272_pp0_iter3_reg[22 : 12] <= add_ln51_24_reg_1272_pp0_iter2_reg[22 : 12];
        add_ln51_24_reg_1272_pp0_iter4_reg[9 : 3] <= add_ln51_24_reg_1272_pp0_iter3_reg[9 : 3];
add_ln51_24_reg_1272_pp0_iter4_reg[22 : 12] <= add_ln51_24_reg_1272_pp0_iter3_reg[22 : 12];
        add_ln51_24_reg_1272_pp0_iter5_reg[9 : 3] <= add_ln51_24_reg_1272_pp0_iter4_reg[9 : 3];
add_ln51_24_reg_1272_pp0_iter5_reg[22 : 12] <= add_ln51_24_reg_1272_pp0_iter4_reg[22 : 12];
        add_ln51_24_reg_1272_pp0_iter6_reg[9 : 3] <= add_ln51_24_reg_1272_pp0_iter5_reg[9 : 3];
add_ln51_24_reg_1272_pp0_iter6_reg[22 : 12] <= add_ln51_24_reg_1272_pp0_iter5_reg[22 : 12];
        add_ln51_25_reg_1278[1] <= add_ln51_25_fu_704_p7[1];
add_ln51_25_reg_1278[9 : 3] <= add_ln51_25_fu_704_p7[9 : 3];
add_ln51_25_reg_1278[22 : 12] <= add_ln51_25_fu_704_p7[22 : 12];
        add_ln51_25_reg_1278_pp0_iter1_reg[1] <= add_ln51_25_reg_1278[1];
add_ln51_25_reg_1278_pp0_iter1_reg[9 : 3] <= add_ln51_25_reg_1278[9 : 3];
add_ln51_25_reg_1278_pp0_iter1_reg[22 : 12] <= add_ln51_25_reg_1278[22 : 12];
        add_ln51_25_reg_1278_pp0_iter2_reg[1] <= add_ln51_25_reg_1278_pp0_iter1_reg[1];
add_ln51_25_reg_1278_pp0_iter2_reg[9 : 3] <= add_ln51_25_reg_1278_pp0_iter1_reg[9 : 3];
add_ln51_25_reg_1278_pp0_iter2_reg[22 : 12] <= add_ln51_25_reg_1278_pp0_iter1_reg[22 : 12];
        add_ln51_25_reg_1278_pp0_iter3_reg[1] <= add_ln51_25_reg_1278_pp0_iter2_reg[1];
add_ln51_25_reg_1278_pp0_iter3_reg[9 : 3] <= add_ln51_25_reg_1278_pp0_iter2_reg[9 : 3];
add_ln51_25_reg_1278_pp0_iter3_reg[22 : 12] <= add_ln51_25_reg_1278_pp0_iter2_reg[22 : 12];
        add_ln51_25_reg_1278_pp0_iter4_reg[1] <= add_ln51_25_reg_1278_pp0_iter3_reg[1];
add_ln51_25_reg_1278_pp0_iter4_reg[9 : 3] <= add_ln51_25_reg_1278_pp0_iter3_reg[9 : 3];
add_ln51_25_reg_1278_pp0_iter4_reg[22 : 12] <= add_ln51_25_reg_1278_pp0_iter3_reg[22 : 12];
        add_ln51_25_reg_1278_pp0_iter5_reg[1] <= add_ln51_25_reg_1278_pp0_iter4_reg[1];
add_ln51_25_reg_1278_pp0_iter5_reg[9 : 3] <= add_ln51_25_reg_1278_pp0_iter4_reg[9 : 3];
add_ln51_25_reg_1278_pp0_iter5_reg[22 : 12] <= add_ln51_25_reg_1278_pp0_iter4_reg[22 : 12];
        add_ln51_25_reg_1278_pp0_iter6_reg[1] <= add_ln51_25_reg_1278_pp0_iter5_reg[1];
add_ln51_25_reg_1278_pp0_iter6_reg[9 : 3] <= add_ln51_25_reg_1278_pp0_iter5_reg[9 : 3];
add_ln51_25_reg_1278_pp0_iter6_reg[22 : 12] <= add_ln51_25_reg_1278_pp0_iter5_reg[22 : 12];
        tmp_5_reg_1265 <= {{v19_4_reg_1224[9:3]}};
        tmp_5_reg_1265_pp0_iter1_reg <= tmp_5_reg_1265;
        tmp_5_reg_1265_pp0_iter2_reg <= tmp_5_reg_1265_pp0_iter1_reg;
        tmp_5_reg_1265_pp0_iter3_reg <= tmp_5_reg_1265_pp0_iter2_reg;
        tmp_5_reg_1265_pp0_iter4_reg <= tmp_5_reg_1265_pp0_iter3_reg;
        tmp_5_reg_1265_pp0_iter5_reg <= tmp_5_reg_1265_pp0_iter4_reg;
        tmp_5_reg_1265_pp0_iter6_reg <= tmp_5_reg_1265_pp0_iter5_reg;
        tmp_5_reg_1265_pp0_iter7_reg <= tmp_5_reg_1265_pp0_iter6_reg;
        v23_36_reg_1486 <= v23_36_fu_1119_p11;
        v23_37_reg_1491 <= v23_37_fu_1159_p11;
        zext_ln51_49_reg_1502[7 : 1] <= zext_ln51_49_fu_1195_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln51_26_reg_1284[9 : 3] <= add_ln51_26_fu_725_p5[9 : 3];
add_ln51_26_reg_1284[22 : 12] <= add_ln51_26_fu_725_p5[22 : 12];
        add_ln51_26_reg_1284_pp0_iter1_reg[9 : 3] <= add_ln51_26_reg_1284[9 : 3];
add_ln51_26_reg_1284_pp0_iter1_reg[22 : 12] <= add_ln51_26_reg_1284[22 : 12];
        add_ln51_26_reg_1284_pp0_iter2_reg[9 : 3] <= add_ln51_26_reg_1284_pp0_iter1_reg[9 : 3];
add_ln51_26_reg_1284_pp0_iter2_reg[22 : 12] <= add_ln51_26_reg_1284_pp0_iter1_reg[22 : 12];
        add_ln51_26_reg_1284_pp0_iter3_reg[9 : 3] <= add_ln51_26_reg_1284_pp0_iter2_reg[9 : 3];
add_ln51_26_reg_1284_pp0_iter3_reg[22 : 12] <= add_ln51_26_reg_1284_pp0_iter2_reg[22 : 12];
        add_ln51_26_reg_1284_pp0_iter4_reg[9 : 3] <= add_ln51_26_reg_1284_pp0_iter3_reg[9 : 3];
add_ln51_26_reg_1284_pp0_iter4_reg[22 : 12] <= add_ln51_26_reg_1284_pp0_iter3_reg[22 : 12];
        add_ln51_26_reg_1284_pp0_iter5_reg[9 : 3] <= add_ln51_26_reg_1284_pp0_iter4_reg[9 : 3];
add_ln51_26_reg_1284_pp0_iter5_reg[22 : 12] <= add_ln51_26_reg_1284_pp0_iter4_reg[22 : 12];
        add_ln51_26_reg_1284_pp0_iter6_reg[9 : 3] <= add_ln51_26_reg_1284_pp0_iter5_reg[9 : 3];
add_ln51_26_reg_1284_pp0_iter6_reg[22 : 12] <= add_ln51_26_reg_1284_pp0_iter5_reg[22 : 12];
        add_ln51_27_reg_1290[9 : 3] <= add_ln51_27_fu_741_p5[9 : 3];
add_ln51_27_reg_1290[22 : 12] <= add_ln51_27_fu_741_p5[22 : 12];
        add_ln51_27_reg_1290_pp0_iter1_reg[9 : 3] <= add_ln51_27_reg_1290[9 : 3];
add_ln51_27_reg_1290_pp0_iter1_reg[22 : 12] <= add_ln51_27_reg_1290[22 : 12];
        add_ln51_27_reg_1290_pp0_iter2_reg[9 : 3] <= add_ln51_27_reg_1290_pp0_iter1_reg[9 : 3];
add_ln51_27_reg_1290_pp0_iter2_reg[22 : 12] <= add_ln51_27_reg_1290_pp0_iter1_reg[22 : 12];
        add_ln51_27_reg_1290_pp0_iter3_reg[9 : 3] <= add_ln51_27_reg_1290_pp0_iter2_reg[9 : 3];
add_ln51_27_reg_1290_pp0_iter3_reg[22 : 12] <= add_ln51_27_reg_1290_pp0_iter2_reg[22 : 12];
        add_ln51_27_reg_1290_pp0_iter4_reg[9 : 3] <= add_ln51_27_reg_1290_pp0_iter3_reg[9 : 3];
add_ln51_27_reg_1290_pp0_iter4_reg[22 : 12] <= add_ln51_27_reg_1290_pp0_iter3_reg[22 : 12];
        add_ln51_27_reg_1290_pp0_iter5_reg[9 : 3] <= add_ln51_27_reg_1290_pp0_iter4_reg[9 : 3];
add_ln51_27_reg_1290_pp0_iter5_reg[22 : 12] <= add_ln51_27_reg_1290_pp0_iter4_reg[22 : 12];
        add_ln51_27_reg_1290_pp0_iter6_reg[9 : 3] <= add_ln51_27_reg_1290_pp0_iter5_reg[9 : 3];
add_ln51_27_reg_1290_pp0_iter6_reg[22 : 12] <= add_ln51_27_reg_1290_pp0_iter5_reg[22 : 12];
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        v23_31_reg_1341 <= v23_31_fu_855_p11;
        v23_reg_1336 <= v23_fu_815_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_540 <= {{grp_fu_510_p2[45:44]}};
        reg_544 <= {{grp_fu_515_p2[45:44]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_548 <= {{grp_fu_510_p2[45:44]}};
        reg_552 <= {{grp_fu_515_p2[45:44]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_556 <= grp_fu_1543_p_dout0;
        reg_562 <= grp_fu_1547_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_1232 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v19_4 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_4 = v19_fu_110;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_502_p1 = v23_36_reg_1486;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_502_p1 = v23_34_reg_1436;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_502_p1 = v23_32_reg_1386;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_502_p1 = v23_reg_1336;
        end else begin
            grp_fu_502_p1 = 'bx;
        end
    end else begin
        grp_fu_502_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_506_p1 = v23_37_reg_1491;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_506_p1 = v23_35_reg_1441;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_506_p1 = v23_33_reg_1391;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_506_p1 = v23_31_reg_1341;
        end else begin
            grp_fu_506_p1 = 'bx;
        end
    end else begin
        grp_fu_506_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_510_p0 = zext_ln51_61_fu_999_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_510_p0 = zext_ln51_59_fu_895_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_510_p0 = zext_ln51_57_fu_791_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_510_p0 = zext_ln51_fu_767_p1;
    end else begin
        grp_fu_510_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_515_p0 = zext_ln51_62_fu_1003_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_515_p0 = zext_ln51_60_fu_899_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_515_p0 = zext_ln51_58_fu_795_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_515_p0 = zext_ln51_56_fu_771_p1;
    end else begin
        grp_fu_515_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln51_53_fu_1095_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln51_51_fu_991_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = zext_ln51_48_fu_887_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address0_local = zext_ln51_46_fu_783_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address1_local = zext_ln51_52_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address1_local = zext_ln51_50_fu_983_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address1_local = zext_ln51_47_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address1_local = zext_ln51_45_fu_775_p1;
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address0_local = zext_ln51_53_fu_1095_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln51_51_fu_991_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = zext_ln51_48_fu_887_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address0_local = zext_ln51_46_fu_783_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address1_local = zext_ln51_52_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address1_local = zext_ln51_50_fu_983_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address1_local = zext_ln51_47_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address1_local = zext_ln51_45_fu_775_p1;
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address0_local = zext_ln51_53_fu_1095_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address0_local = zext_ln51_51_fu_991_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address0_local = zext_ln51_48_fu_887_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address0_local = zext_ln51_46_fu_783_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address1_local = zext_ln51_52_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address1_local = zext_ln51_50_fu_983_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address1_local = zext_ln51_47_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address1_local = zext_ln51_45_fu_775_p1;
    end else begin
        v0_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce1_local = 1'b1;
    end else begin
        v0_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address0_local = zext_ln51_53_fu_1095_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address0_local = zext_ln51_51_fu_991_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address0_local = zext_ln51_48_fu_887_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address0_local = zext_ln51_46_fu_783_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address1_local = zext_ln51_52_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address1_local = zext_ln51_50_fu_983_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address1_local = zext_ln51_47_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address1_local = zext_ln51_45_fu_775_p1;
    end else begin
        v0_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce1_local = 1'b1;
    end else begin
        v0_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_1_address0_local = zext_ln51_49_fu_1195_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address0_local = zext_ln48_fu_1183_p1;
        end else begin
            v3_1_address0_local = 'bx;
        end
    end else begin
        v3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_2_address0_local = zext_ln51_49_reg_1502;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_2_address0_local = zext_ln48_reg_1496;
        end else begin
            v3_2_address0_local = 'bx;
        end
    end else begin
        v3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_2_we0_local = 1'b1;
    end else begin
        v3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_3_address0_local = zext_ln51_49_reg_1502;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_3_address0_local = zext_ln48_reg_1496;
        end else begin
            v3_3_address0_local = 'bx;
        end
    end else begin
        v3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_3_we0_local = 1'b1;
    end else begin
        v3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address0_local = zext_ln51_49_fu_1195_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln48_fu_1183_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to8 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln47_fu_757_p2 = (v19_4_reg_1224 + 11'd8);
assign add_ln51_21_fu_610_p5 = {{{{tmp_103}, {2'd2}}, {tmp_s_fu_600_p4}}, {1'd1}};
assign add_ln51_22_fu_637_p5 = {{{{tmp_103}, {2'd2}}, {lshr_ln48_5_fu_628_p4}}, {2'd2}};
assign add_ln51_23_fu_654_p5 = {{{{tmp_103}, {2'd2}}, {lshr_ln48_5_fu_628_p4}}, {2'd3}};
assign add_ln51_24_fu_680_p5 = {{{{tmp_103}, {2'd2}}, {tmp_5_fu_671_p4}}, {3'd4}};
assign add_ln51_25_fu_704_p7 = {{{{{{tmp_103}, {2'd2}}, {tmp_5_fu_671_p4}}, {1'd1}}, {tmp_13_fu_697_p3}}, {1'd1}};
assign add_ln51_26_fu_725_p5 = {{{{tmp_103}, {2'd2}}, {tmp_5_reg_1265}}, {3'd6}};
assign add_ln51_27_fu_741_p5 = {{{{tmp_103}, {2'd2}}, {tmp_5_reg_1265}}, {3'd7}};
assign add_ln51_s_fu_584_p4 = {{{tmp_103}, {1'd1}}, {ap_sig_allocacmp_v19_4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_1543_p_ce = 1'b1;
assign grp_fu_1543_p_din0 = v22_5;
assign grp_fu_1543_p_din1 = grp_fu_502_p1;
assign grp_fu_1547_p_ce = 1'b1;
assign grp_fu_1547_p_din0 = v22_5;
assign grp_fu_1547_p_din1 = grp_fu_506_p1;
assign grp_fu_510_p1 = 47'd15270995;
assign grp_fu_515_p1 = 47'd15270995;
assign grp_fu_594_p0 = {{{tmp_103}, {1'd1}}, {ap_sig_allocacmp_v19_4}};
assign grp_fu_594_p1 = 23'd1152000;
assign grp_fu_622_p0 = {{{{tmp_103}, {2'd2}}, {tmp_s_fu_600_p4}}, {1'd1}};
assign grp_fu_622_p1 = 23'd1152000;
assign grp_fu_648_p0 = {{{{tmp_103}, {2'd2}}, {lshr_ln48_5_fu_628_p4}}, {2'd2}};
assign grp_fu_648_p1 = 23'd1152000;
assign grp_fu_665_p0 = {{{{tmp_103}, {2'd2}}, {lshr_ln48_5_fu_628_p4}}, {2'd3}};
assign grp_fu_665_p1 = 23'd1152000;
assign grp_fu_691_p0 = {{{{tmp_103}, {2'd2}}, {tmp_5_fu_671_p4}}, {3'd4}};
assign grp_fu_691_p1 = 23'd1152000;
assign grp_fu_719_p0 = {{{{{{tmp_103}, {2'd2}}, {tmp_5_fu_671_p4}}, {1'd1}}, {tmp_13_fu_697_p3}}, {1'd1}};
assign grp_fu_719_p1 = 23'd1152000;
assign grp_fu_735_p0 = {{{{tmp_103}, {2'd2}}, {tmp_5_reg_1265}}, {3'd6}};
assign grp_fu_735_p1 = 23'd1152000;
assign grp_fu_751_p0 = {{{{tmp_103}, {2'd2}}, {tmp_5_reg_1265}}, {3'd7}};
assign grp_fu_751_p1 = 23'd1152000;
assign lshr_ln48_5_fu_628_p4 = {{v19_4_reg_1224[9:2]}};
assign or_ln48_5_fu_1188_p3 = {{tmp_5_reg_1265_pp0_iter7_reg}, {1'd1}};
assign tmp_13_fu_697_p3 = v19_4_reg_1224[32'd1];
assign tmp_5_fu_671_p4 = {{v19_4_reg_1224[9:3]}};
assign tmp_s_fu_600_p4 = {{ap_sig_allocacmp_v19_4[9:1]}};
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_address1 = v0_2_address1_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_2_ce1 = v0_2_ce1_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_address1 = v0_3_address1_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_3_ce1 = v0_3_ce1_local;
assign v23_31_fu_855_p2 = v0_0_q0;
assign v23_31_fu_855_p4 = v0_1_q0;
assign v23_31_fu_855_p6 = v0_2_q0;
assign v23_31_fu_855_p8 = v0_3_q0;
assign v23_31_fu_855_p9 = 'bx;
assign v23_32_fu_919_p2 = v0_0_q1;
assign v23_32_fu_919_p4 = v0_1_q1;
assign v23_32_fu_919_p6 = v0_2_q1;
assign v23_32_fu_919_p8 = v0_3_q1;
assign v23_32_fu_919_p9 = 'bx;
assign v23_33_fu_959_p2 = v0_0_q0;
assign v23_33_fu_959_p4 = v0_1_q0;
assign v23_33_fu_959_p6 = v0_2_q0;
assign v23_33_fu_959_p8 = v0_3_q0;
assign v23_33_fu_959_p9 = 'bx;
assign v23_34_fu_1023_p2 = v0_0_q1;
assign v23_34_fu_1023_p4 = v0_1_q1;
assign v23_34_fu_1023_p6 = v0_2_q1;
assign v23_34_fu_1023_p8 = v0_3_q1;
assign v23_34_fu_1023_p9 = 'bx;
assign v23_35_fu_1063_p2 = v0_0_q0;
assign v23_35_fu_1063_p4 = v0_1_q0;
assign v23_35_fu_1063_p6 = v0_2_q0;
assign v23_35_fu_1063_p8 = v0_3_q0;
assign v23_35_fu_1063_p9 = 'bx;
assign v23_36_fu_1119_p2 = v0_0_q1;
assign v23_36_fu_1119_p4 = v0_1_q1;
assign v23_36_fu_1119_p6 = v0_2_q1;
assign v23_36_fu_1119_p8 = v0_3_q1;
assign v23_36_fu_1119_p9 = 'bx;
assign v23_37_fu_1159_p2 = v0_0_q0;
assign v23_37_fu_1159_p4 = v0_1_q0;
assign v23_37_fu_1159_p6 = v0_2_q0;
assign v23_37_fu_1159_p8 = v0_3_q0;
assign v23_37_fu_1159_p9 = 'bx;
assign v23_fu_815_p2 = v0_0_q1;
assign v23_fu_815_p4 = v0_1_q1;
assign v23_fu_815_p6 = v0_2_q1;
assign v23_fu_815_p8 = v0_3_q1;
assign v23_fu_815_p9 = 'bx;
assign v3_1_address0 = v3_1_address0_local;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = reg_562;
assign v3_1_we0 = v3_1_we0_local;
assign v3_2_address0 = v3_2_address0_local;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_d0 = reg_556;
assign v3_2_we0 = v3_2_we0_local;
assign v3_3_address0 = v3_3_address0_local;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_d0 = reg_562;
assign v3_3_we0 = v3_3_we0_local;
assign v3_address0 = v3_address0_local;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = reg_556;
assign v3_we0 = v3_we0_local;
assign zext_ln48_fu_1183_p1 = lshr_ln48_5_reg_1248_pp0_iter7_reg;
assign zext_ln51_45_fu_775_p1 = grp_fu_594_p2;
assign zext_ln51_46_fu_783_p1 = grp_fu_622_p2;
assign zext_ln51_47_fu_879_p1 = grp_fu_648_p2;
assign zext_ln51_48_fu_887_p1 = grp_fu_665_p2;
assign zext_ln51_49_fu_1195_p1 = or_ln48_5_fu_1188_p3;
assign zext_ln51_50_fu_983_p1 = grp_fu_691_p2;
assign zext_ln51_51_fu_991_p1 = grp_fu_719_p2;
assign zext_ln51_52_fu_1087_p1 = grp_fu_735_p2;
assign zext_ln51_53_fu_1095_p1 = grp_fu_751_p2;
assign zext_ln51_56_fu_771_p1 = add_ln51_21_reg_1242_pp0_iter6_reg;
assign zext_ln51_57_fu_791_p1 = add_ln51_22_reg_1253_pp0_iter6_reg;
assign zext_ln51_58_fu_795_p1 = add_ln51_23_reg_1259_pp0_iter6_reg;
assign zext_ln51_59_fu_895_p1 = add_ln51_24_reg_1272_pp0_iter6_reg;
assign zext_ln51_60_fu_899_p1 = add_ln51_25_reg_1278_pp0_iter6_reg;
assign zext_ln51_61_fu_999_p1 = add_ln51_26_reg_1284_pp0_iter6_reg;
assign zext_ln51_62_fu_1003_p1 = add_ln51_27_reg_1290_pp0_iter6_reg;
assign zext_ln51_fu_767_p1 = add_ln51_s_reg_1236_pp0_iter6_reg;
always @ (posedge ap_clk) begin
    add_ln51_s_reg_1236[11] <= 1'b1;
    add_ln51_s_reg_1236_pp0_iter1_reg[11] <= 1'b1;
    add_ln51_s_reg_1236_pp0_iter2_reg[11] <= 1'b1;
    add_ln51_s_reg_1236_pp0_iter3_reg[11] <= 1'b1;
    add_ln51_s_reg_1236_pp0_iter4_reg[11] <= 1'b1;
    add_ln51_s_reg_1236_pp0_iter5_reg[11] <= 1'b1;
    add_ln51_s_reg_1236_pp0_iter6_reg[11] <= 1'b1;
    add_ln51_21_reg_1242[0] <= 1'b1;
    add_ln51_21_reg_1242[11:10] <= 2'b10;
    add_ln51_21_reg_1242_pp0_iter1_reg[0] <= 1'b1;
    add_ln51_21_reg_1242_pp0_iter1_reg[11:10] <= 2'b10;
    add_ln51_21_reg_1242_pp0_iter2_reg[0] <= 1'b1;
    add_ln51_21_reg_1242_pp0_iter2_reg[11:10] <= 2'b10;
    add_ln51_21_reg_1242_pp0_iter3_reg[0] <= 1'b1;
    add_ln51_21_reg_1242_pp0_iter3_reg[11:10] <= 2'b10;
    add_ln51_21_reg_1242_pp0_iter4_reg[0] <= 1'b1;
    add_ln51_21_reg_1242_pp0_iter4_reg[11:10] <= 2'b10;
    add_ln51_21_reg_1242_pp0_iter5_reg[0] <= 1'b1;
    add_ln51_21_reg_1242_pp0_iter5_reg[11:10] <= 2'b10;
    add_ln51_21_reg_1242_pp0_iter6_reg[0] <= 1'b1;
    add_ln51_21_reg_1242_pp0_iter6_reg[11:10] <= 2'b10;
    add_ln51_22_reg_1253[1:0] <= 2'b10;
    add_ln51_22_reg_1253[11:10] <= 2'b10;
    add_ln51_22_reg_1253_pp0_iter1_reg[1:0] <= 2'b10;
    add_ln51_22_reg_1253_pp0_iter1_reg[11:10] <= 2'b10;
    add_ln51_22_reg_1253_pp0_iter2_reg[1:0] <= 2'b10;
    add_ln51_22_reg_1253_pp0_iter2_reg[11:10] <= 2'b10;
    add_ln51_22_reg_1253_pp0_iter3_reg[1:0] <= 2'b10;
    add_ln51_22_reg_1253_pp0_iter3_reg[11:10] <= 2'b10;
    add_ln51_22_reg_1253_pp0_iter4_reg[1:0] <= 2'b10;
    add_ln51_22_reg_1253_pp0_iter4_reg[11:10] <= 2'b10;
    add_ln51_22_reg_1253_pp0_iter5_reg[1:0] <= 2'b10;
    add_ln51_22_reg_1253_pp0_iter5_reg[11:10] <= 2'b10;
    add_ln51_22_reg_1253_pp0_iter6_reg[1:0] <= 2'b10;
    add_ln51_22_reg_1253_pp0_iter6_reg[11:10] <= 2'b10;
    add_ln51_23_reg_1259[1:0] <= 2'b11;
    add_ln51_23_reg_1259[11:10] <= 2'b10;
    add_ln51_23_reg_1259_pp0_iter1_reg[1:0] <= 2'b11;
    add_ln51_23_reg_1259_pp0_iter1_reg[11:10] <= 2'b10;
    add_ln51_23_reg_1259_pp0_iter2_reg[1:0] <= 2'b11;
    add_ln51_23_reg_1259_pp0_iter2_reg[11:10] <= 2'b10;
    add_ln51_23_reg_1259_pp0_iter3_reg[1:0] <= 2'b11;
    add_ln51_23_reg_1259_pp0_iter3_reg[11:10] <= 2'b10;
    add_ln51_23_reg_1259_pp0_iter4_reg[1:0] <= 2'b11;
    add_ln51_23_reg_1259_pp0_iter4_reg[11:10] <= 2'b10;
    add_ln51_23_reg_1259_pp0_iter5_reg[1:0] <= 2'b11;
    add_ln51_23_reg_1259_pp0_iter5_reg[11:10] <= 2'b10;
    add_ln51_23_reg_1259_pp0_iter6_reg[1:0] <= 2'b11;
    add_ln51_23_reg_1259_pp0_iter6_reg[11:10] <= 2'b10;
    add_ln51_24_reg_1272[2:0] <= 3'b100;
    add_ln51_24_reg_1272[11:10] <= 2'b10;
    add_ln51_24_reg_1272_pp0_iter1_reg[2:0] <= 3'b100;
    add_ln51_24_reg_1272_pp0_iter1_reg[11:10] <= 2'b10;
    add_ln51_24_reg_1272_pp0_iter2_reg[2:0] <= 3'b100;
    add_ln51_24_reg_1272_pp0_iter2_reg[11:10] <= 2'b10;
    add_ln51_24_reg_1272_pp0_iter3_reg[2:0] <= 3'b100;
    add_ln51_24_reg_1272_pp0_iter3_reg[11:10] <= 2'b10;
    add_ln51_24_reg_1272_pp0_iter4_reg[2:0] <= 3'b100;
    add_ln51_24_reg_1272_pp0_iter4_reg[11:10] <= 2'b10;
    add_ln51_24_reg_1272_pp0_iter5_reg[2:0] <= 3'b100;
    add_ln51_24_reg_1272_pp0_iter5_reg[11:10] <= 2'b10;
    add_ln51_24_reg_1272_pp0_iter6_reg[2:0] <= 3'b100;
    add_ln51_24_reg_1272_pp0_iter6_reg[11:10] <= 2'b10;
    add_ln51_25_reg_1278[0] <= 1'b1;
    add_ln51_25_reg_1278[2:2] <= 1'b1;
    add_ln51_25_reg_1278[11:10] <= 2'b10;
    add_ln51_25_reg_1278_pp0_iter1_reg[0] <= 1'b1;
    add_ln51_25_reg_1278_pp0_iter1_reg[2:2] <= 1'b1;
    add_ln51_25_reg_1278_pp0_iter1_reg[11:10] <= 2'b10;
    add_ln51_25_reg_1278_pp0_iter2_reg[0] <= 1'b1;
    add_ln51_25_reg_1278_pp0_iter2_reg[2:2] <= 1'b1;
    add_ln51_25_reg_1278_pp0_iter2_reg[11:10] <= 2'b10;
    add_ln51_25_reg_1278_pp0_iter3_reg[0] <= 1'b1;
    add_ln51_25_reg_1278_pp0_iter3_reg[2:2] <= 1'b1;
    add_ln51_25_reg_1278_pp0_iter3_reg[11:10] <= 2'b10;
    add_ln51_25_reg_1278_pp0_iter4_reg[0] <= 1'b1;
    add_ln51_25_reg_1278_pp0_iter4_reg[2:2] <= 1'b1;
    add_ln51_25_reg_1278_pp0_iter4_reg[11:10] <= 2'b10;
    add_ln51_25_reg_1278_pp0_iter5_reg[0] <= 1'b1;
    add_ln51_25_reg_1278_pp0_iter5_reg[2:2] <= 1'b1;
    add_ln51_25_reg_1278_pp0_iter5_reg[11:10] <= 2'b10;
    add_ln51_25_reg_1278_pp0_iter6_reg[0] <= 1'b1;
    add_ln51_25_reg_1278_pp0_iter6_reg[2:2] <= 1'b1;
    add_ln51_25_reg_1278_pp0_iter6_reg[11:10] <= 2'b10;
    add_ln51_26_reg_1284[2:0] <= 3'b110;
    add_ln51_26_reg_1284[11:10] <= 2'b10;
    add_ln51_26_reg_1284_pp0_iter1_reg[2:0] <= 3'b110;
    add_ln51_26_reg_1284_pp0_iter1_reg[11:10] <= 2'b10;
    add_ln51_26_reg_1284_pp0_iter2_reg[2:0] <= 3'b110;
    add_ln51_26_reg_1284_pp0_iter2_reg[11:10] <= 2'b10;
    add_ln51_26_reg_1284_pp0_iter3_reg[2:0] <= 3'b110;
    add_ln51_26_reg_1284_pp0_iter3_reg[11:10] <= 2'b10;
    add_ln51_26_reg_1284_pp0_iter4_reg[2:0] <= 3'b110;
    add_ln51_26_reg_1284_pp0_iter4_reg[11:10] <= 2'b10;
    add_ln51_26_reg_1284_pp0_iter5_reg[2:0] <= 3'b110;
    add_ln51_26_reg_1284_pp0_iter5_reg[11:10] <= 2'b10;
    add_ln51_26_reg_1284_pp0_iter6_reg[2:0] <= 3'b110;
    add_ln51_26_reg_1284_pp0_iter6_reg[11:10] <= 2'b10;
    add_ln51_27_reg_1290[2:0] <= 3'b111;
    add_ln51_27_reg_1290[11:10] <= 2'b10;
    add_ln51_27_reg_1290_pp0_iter1_reg[2:0] <= 3'b111;
    add_ln51_27_reg_1290_pp0_iter1_reg[11:10] <= 2'b10;
    add_ln51_27_reg_1290_pp0_iter2_reg[2:0] <= 3'b111;
    add_ln51_27_reg_1290_pp0_iter2_reg[11:10] <= 2'b10;
    add_ln51_27_reg_1290_pp0_iter3_reg[2:0] <= 3'b111;
    add_ln51_27_reg_1290_pp0_iter3_reg[11:10] <= 2'b10;
    add_ln51_27_reg_1290_pp0_iter4_reg[2:0] <= 3'b111;
    add_ln51_27_reg_1290_pp0_iter4_reg[11:10] <= 2'b10;
    add_ln51_27_reg_1290_pp0_iter5_reg[2:0] <= 3'b111;
    add_ln51_27_reg_1290_pp0_iter5_reg[11:10] <= 2'b10;
    add_ln51_27_reg_1290_pp0_iter6_reg[2:0] <= 3'b111;
    add_ln51_27_reg_1290_pp0_iter6_reg[11:10] <= 2'b10;
    zext_ln48_reg_1496[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln51_49_reg_1502[0] <= 1'b1;
    zext_ln51_49_reg_1502[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 