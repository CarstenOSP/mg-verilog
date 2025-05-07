module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v113_2_address0,v113_2_ce0,v113_2_q0,v113_2_address1,v113_2_ce1,v113_2_q1,v113_3_address0,v113_3_ce0,v113_3_q0,v113_3_address1,v113_3_ce1,v113_3_q1,v113_4_address0,v113_4_ce0,v113_4_q0,v113_4_address1,v113_4_ce1,v113_4_q1,v113_5_address0,v113_5_ce0,v113_5_q0,v113_5_address1,v113_5_ce1,v113_5_q1,v113_6_address0,v113_6_ce0,v113_6_q0,v113_6_address1,v113_6_ce1,v113_6_q1,v113_7_address0,v113_7_ce0,v113_7_q0,v113_7_address1,v113_7_ce1,v113_7_q1,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v114_1_address0,v114_1_ce0,v114_1_q0,v114_1_address1,v114_1_ce1,v114_1_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_0_address1,v115_0_ce1,v115_0_q1,v115_1_address0,v115_1_ce0,v115_1_q0,v115_1_address1,v115_1_ce1,v115_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v117_address0,v117_ce0,v117_we0,v117_d0,v117_address1,v117_ce1,v117_we1,v117_d1); 
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [8:0] v113_0_address1;
output   v113_0_ce1;
input  [31:0] v113_0_q1;
output  [8:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [8:0] v113_1_address1;
output   v113_1_ce1;
input  [31:0] v113_1_q1;
output  [8:0] v113_2_address0;
output   v113_2_ce0;
input  [31:0] v113_2_q0;
output  [8:0] v113_2_address1;
output   v113_2_ce1;
input  [31:0] v113_2_q1;
output  [8:0] v113_3_address0;
output   v113_3_ce0;
input  [31:0] v113_3_q0;
output  [8:0] v113_3_address1;
output   v113_3_ce1;
input  [31:0] v113_3_q1;
output  [8:0] v113_4_address0;
output   v113_4_ce0;
input  [31:0] v113_4_q0;
output  [8:0] v113_4_address1;
output   v113_4_ce1;
input  [31:0] v113_4_q1;
output  [8:0] v113_5_address0;
output   v113_5_ce0;
input  [31:0] v113_5_q0;
output  [8:0] v113_5_address1;
output   v113_5_ce1;
input  [31:0] v113_5_q1;
output  [8:0] v113_6_address0;
output   v113_6_ce0;
input  [31:0] v113_6_q0;
output  [8:0] v113_6_address1;
output   v113_6_ce1;
input  [31:0] v113_6_q1;
output  [8:0] v113_7_address0;
output   v113_7_ce0;
input  [31:0] v113_7_q0;
output  [8:0] v113_7_address1;
output   v113_7_ce1;
input  [31:0] v113_7_q1;
output  [10:0] v114_0_address0;
output   v114_0_ce0;
input  [31:0] v114_0_q0;
output  [10:0] v114_0_address1;
output   v114_0_ce1;
input  [31:0] v114_0_q1;
output  [10:0] v114_1_address0;
output   v114_1_ce0;
input  [31:0] v114_1_q0;
output  [10:0] v114_1_address1;
output   v114_1_ce1;
input  [31:0] v114_1_q1;
output  [4:0] v115_0_address0;
output   v115_0_ce0;
input  [31:0] v115_0_q0;
output  [4:0] v115_0_address1;
output   v115_0_ce1;
input  [31:0] v115_0_q1;
output  [4:0] v115_1_address0;
output   v115_1_ce0;
input  [31:0] v115_1_q0;
output  [4:0] v115_1_address1;
output   v115_1_ce1;
input  [31:0] v115_1_q1;
output  [4:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [4:0] v116_0_address1;
output   v116_0_ce1;
output   v116_0_we1;
output  [31:0] v116_0_d1;
input  [31:0] v116_0_q1;
output  [4:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [4:0] v116_1_address1;
output   v116_1_ce1;
output   v116_1_we1;
output  [31:0] v116_1_d1;
input  [31:0] v116_1_q1;
output  [5:0] v117_address0;
output   v117_ce0;
output   v117_we0;
output  [31:0] v117_d0;
output  [5:0] v117_address1;
output   v117_ce1;
output   v117_we1;
output  [31:0] v117_d1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [2:0] v123_address0;
reg    v123_ce0;
wire   [31:0] v123_q0;
reg    v123_ce1;
wire   [31:0] v123_q1;
reg   [2:0] v123_1_address0;
reg    v123_1_ce0;
wire   [31:0] v123_1_q0;
reg    v123_1_ce1;
wire   [31:0] v123_1_q1;
reg   [2:0] v123_2_address0;
reg    v123_2_ce0;
wire   [31:0] v123_2_q0;
reg    v123_2_ce1;
wire   [31:0] v123_2_q1;
reg   [2:0] v123_3_address0;
reg    v123_3_ce0;
wire   [31:0] v123_3_q0;
reg    v123_3_ce1;
wire   [31:0] v123_3_q1;
reg   [2:0] v123_4_address0;
reg    v123_4_ce0;
wire   [31:0] v123_4_q0;
reg    v123_4_ce1;
wire   [31:0] v123_4_q1;
reg   [2:0] v123_5_address0;
reg    v123_5_ce0;
wire   [31:0] v123_5_q0;
reg    v123_5_ce1;
wire   [31:0] v123_5_q1;
reg   [2:0] v123_6_address0;
reg    v123_6_ce0;
wire   [31:0] v123_6_q0;
reg    v123_6_ce1;
wire   [31:0] v123_6_q1;
reg   [2:0] v123_7_address0;
reg    v123_7_ce0;
wire   [31:0] v123_7_q0;
reg    v123_7_ce1;
wire   [31:0] v123_7_q1;
reg   [4:0] v124_address0;
reg    v124_ce0;
reg    v124_we0;
wire   [31:0] v124_q0;
reg    v124_ce1;
reg    v124_we1;
wire   [31:0] v124_q1;
reg   [4:0] v124_1_address0;
reg    v124_1_ce0;
reg    v124_1_we0;
wire   [31:0] v124_1_q0;
reg    v124_1_ce1;
reg    v124_1_we1;
wire   [31:0] v124_1_q1;
wire    grp_atax_node1_fu_269_ap_start;
wire    grp_atax_node1_fu_269_ap_done;
wire    grp_atax_node1_fu_269_ap_idle;
wire    grp_atax_node1_fu_269_ap_ready;
wire   [10:0] grp_atax_node1_fu_269_v114_0_address0;
wire    grp_atax_node1_fu_269_v114_0_ce0;
wire   [10:0] grp_atax_node1_fu_269_v114_0_address1;
wire    grp_atax_node1_fu_269_v114_0_ce1;
wire   [10:0] grp_atax_node1_fu_269_v114_1_address0;
wire    grp_atax_node1_fu_269_v114_1_ce0;
wire   [10:0] grp_atax_node1_fu_269_v114_1_address1;
wire    grp_atax_node1_fu_269_v114_1_ce1;
wire   [4:0] grp_atax_node1_fu_269_v115_0_address0;
wire    grp_atax_node1_fu_269_v115_0_ce0;
wire   [4:0] grp_atax_node1_fu_269_v115_0_address1;
wire    grp_atax_node1_fu_269_v115_0_ce1;
wire   [4:0] grp_atax_node1_fu_269_v115_1_address0;
wire    grp_atax_node1_fu_269_v115_1_ce0;
wire   [4:0] grp_atax_node1_fu_269_v115_1_address1;
wire    grp_atax_node1_fu_269_v115_1_ce1;
wire   [2:0] grp_atax_node1_fu_269_v57_0_address0;
wire    grp_atax_node1_fu_269_v57_0_ce0;
wire   [2:0] grp_atax_node1_fu_269_v57_0_address1;
wire    grp_atax_node1_fu_269_v57_0_ce1;
wire   [2:0] grp_atax_node1_fu_269_v57_1_address0;
wire    grp_atax_node1_fu_269_v57_1_ce0;
wire   [2:0] grp_atax_node1_fu_269_v57_1_address1;
wire    grp_atax_node1_fu_269_v57_1_ce1;
wire   [2:0] grp_atax_node1_fu_269_v57_2_address0;
wire    grp_atax_node1_fu_269_v57_2_ce0;
wire   [2:0] grp_atax_node1_fu_269_v57_2_address1;
wire    grp_atax_node1_fu_269_v57_2_ce1;
wire   [2:0] grp_atax_node1_fu_269_v57_3_address0;
wire    grp_atax_node1_fu_269_v57_3_ce0;
wire   [2:0] grp_atax_node1_fu_269_v57_3_address1;
wire    grp_atax_node1_fu_269_v57_3_ce1;
wire   [2:0] grp_atax_node1_fu_269_v57_4_address0;
wire    grp_atax_node1_fu_269_v57_4_ce0;
wire   [2:0] grp_atax_node1_fu_269_v57_4_address1;
wire    grp_atax_node1_fu_269_v57_4_ce1;
wire   [2:0] grp_atax_node1_fu_269_v57_5_address0;
wire    grp_atax_node1_fu_269_v57_5_ce0;
wire   [2:0] grp_atax_node1_fu_269_v57_5_address1;
wire    grp_atax_node1_fu_269_v57_5_ce1;
wire   [2:0] grp_atax_node1_fu_269_v57_6_address0;
wire    grp_atax_node1_fu_269_v57_6_ce0;
wire   [2:0] grp_atax_node1_fu_269_v57_6_address1;
wire    grp_atax_node1_fu_269_v57_6_ce1;
wire   [2:0] grp_atax_node1_fu_269_v57_7_address0;
wire    grp_atax_node1_fu_269_v57_7_ce0;
wire   [2:0] grp_atax_node1_fu_269_v57_7_address1;
wire    grp_atax_node1_fu_269_v57_7_ce1;
wire   [4:0] grp_atax_node1_fu_269_v58_0_address0;
wire    grp_atax_node1_fu_269_v58_0_ce0;
wire    grp_atax_node1_fu_269_v58_0_we0;
wire   [31:0] grp_atax_node1_fu_269_v58_0_d0;
wire   [4:0] grp_atax_node1_fu_269_v58_0_address1;
wire    grp_atax_node1_fu_269_v58_0_ce1;
wire    grp_atax_node1_fu_269_v58_0_we1;
wire   [31:0] grp_atax_node1_fu_269_v58_0_d1;
wire   [4:0] grp_atax_node1_fu_269_v58_1_address0;
wire    grp_atax_node1_fu_269_v58_1_ce0;
wire    grp_atax_node1_fu_269_v58_1_we0;
wire   [31:0] grp_atax_node1_fu_269_v58_1_d0;
wire   [4:0] grp_atax_node1_fu_269_v58_1_address1;
wire    grp_atax_node1_fu_269_v58_1_ce1;
wire    grp_atax_node1_fu_269_v58_1_we1;
wire   [31:0] grp_atax_node1_fu_269_v58_1_d1;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_411_p_din0;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_411_p_din1;
wire   [1:0] grp_atax_node1_fu_269_grp_fu_411_p_opcode;
wire    grp_atax_node1_fu_269_grp_fu_411_p_ce;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_415_p_din0;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_415_p_din1;
wire   [1:0] grp_atax_node1_fu_269_grp_fu_415_p_opcode;
wire    grp_atax_node1_fu_269_grp_fu_415_p_ce;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_419_p_din0;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_419_p_din1;
wire    grp_atax_node1_fu_269_grp_fu_419_p_ce;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_423_p_din0;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_423_p_din1;
wire    grp_atax_node1_fu_269_grp_fu_423_p_ce;
wire    grp_atax_node0_fu_291_ap_start;
wire    grp_atax_node0_fu_291_ap_done;
wire    grp_atax_node0_fu_291_ap_idle;
wire    grp_atax_node0_fu_291_ap_ready;
wire   [4:0] grp_atax_node0_fu_291_v0_0_address0;
wire    grp_atax_node0_fu_291_v0_0_ce0;
wire   [4:0] grp_atax_node0_fu_291_v0_1_address0;
wire    grp_atax_node0_fu_291_v0_1_ce0;
wire   [8:0] grp_atax_node0_fu_291_v113_0_address0;
wire    grp_atax_node0_fu_291_v113_0_ce0;
wire   [8:0] grp_atax_node0_fu_291_v113_0_address1;
wire    grp_atax_node0_fu_291_v113_0_ce1;
wire   [8:0] grp_atax_node0_fu_291_v113_1_address0;
wire    grp_atax_node0_fu_291_v113_1_ce0;
wire   [8:0] grp_atax_node0_fu_291_v113_1_address1;
wire    grp_atax_node0_fu_291_v113_1_ce1;
wire   [8:0] grp_atax_node0_fu_291_v113_2_address0;
wire    grp_atax_node0_fu_291_v113_2_ce0;
wire   [8:0] grp_atax_node0_fu_291_v113_2_address1;
wire    grp_atax_node0_fu_291_v113_2_ce1;
wire   [8:0] grp_atax_node0_fu_291_v113_3_address0;
wire    grp_atax_node0_fu_291_v113_3_ce0;
wire   [8:0] grp_atax_node0_fu_291_v113_3_address1;
wire    grp_atax_node0_fu_291_v113_3_ce1;
wire   [8:0] grp_atax_node0_fu_291_v113_4_address0;
wire    grp_atax_node0_fu_291_v113_4_ce0;
wire   [8:0] grp_atax_node0_fu_291_v113_4_address1;
wire    grp_atax_node0_fu_291_v113_4_ce1;
wire   [8:0] grp_atax_node0_fu_291_v113_5_address0;
wire    grp_atax_node0_fu_291_v113_5_ce0;
wire   [8:0] grp_atax_node0_fu_291_v113_5_address1;
wire    grp_atax_node0_fu_291_v113_5_ce1;
wire   [8:0] grp_atax_node0_fu_291_v113_6_address0;
wire    grp_atax_node0_fu_291_v113_6_ce0;
wire   [8:0] grp_atax_node0_fu_291_v113_6_address1;
wire    grp_atax_node0_fu_291_v113_6_ce1;
wire   [8:0] grp_atax_node0_fu_291_v113_7_address0;
wire    grp_atax_node0_fu_291_v113_7_ce0;
wire   [8:0] grp_atax_node0_fu_291_v113_7_address1;
wire    grp_atax_node0_fu_291_v113_7_ce1;
wire   [4:0] grp_atax_node0_fu_291_v116_0_address0;
wire    grp_atax_node0_fu_291_v116_0_ce0;
wire    grp_atax_node0_fu_291_v116_0_we0;
wire   [31:0] grp_atax_node0_fu_291_v116_0_d0;
wire   [4:0] grp_atax_node0_fu_291_v116_0_address1;
wire    grp_atax_node0_fu_291_v116_0_ce1;
wire    grp_atax_node0_fu_291_v116_0_we1;
wire   [31:0] grp_atax_node0_fu_291_v116_0_d1;
wire   [4:0] grp_atax_node0_fu_291_v116_1_address0;
wire    grp_atax_node0_fu_291_v116_1_ce0;
wire    grp_atax_node0_fu_291_v116_1_we0;
wire   [31:0] grp_atax_node0_fu_291_v116_1_d0;
wire   [4:0] grp_atax_node0_fu_291_v116_1_address1;
wire    grp_atax_node0_fu_291_v116_1_ce1;
wire    grp_atax_node0_fu_291_v116_1_we1;
wire   [31:0] grp_atax_node0_fu_291_v116_1_d1;
wire   [31:0] grp_atax_node0_fu_291_grp_fu_411_p_din0;
wire   [31:0] grp_atax_node0_fu_291_grp_fu_411_p_din1;
wire   [1:0] grp_atax_node0_fu_291_grp_fu_411_p_opcode;
wire    grp_atax_node0_fu_291_grp_fu_411_p_ce;
wire   [31:0] grp_atax_node0_fu_291_grp_fu_415_p_din0;
wire   [31:0] grp_atax_node0_fu_291_grp_fu_415_p_din1;
wire   [1:0] grp_atax_node0_fu_291_grp_fu_415_p_opcode;
wire    grp_atax_node0_fu_291_grp_fu_415_p_ce;
wire   [31:0] grp_atax_node0_fu_291_grp_fu_419_p_din0;
wire   [31:0] grp_atax_node0_fu_291_grp_fu_419_p_din1;
wire    grp_atax_node0_fu_291_grp_fu_419_p_ce;
wire   [31:0] grp_atax_node0_fu_291_grp_fu_423_p_din0;
wire   [31:0] grp_atax_node0_fu_291_grp_fu_423_p_din1;
wire    grp_atax_node0_fu_291_grp_fu_423_p_ce;
reg    grp_atax_node1_fu_269_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_atax_node0_fu_291_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln164_1_fu_344_p1;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln164_fu_325_p1;
wire   [63:0] zext_ln165_fu_374_p1;
reg   [6:0] v1121_fu_94;
wire   [6:0] v112_fu_379_p2;
reg    v117_we1_local;
reg    v117_ce1_local;
reg    v117_we0_local;
reg    v117_ce0_local;
reg    v123_4_we0_local;
wire   [2:0] trunc_ln164_fu_330_p1;
reg    v123_4_ce0_local;
reg    v123_5_we0_local;
reg    v123_5_ce0_local;
reg    v123_2_we0_local;
reg    v123_2_ce0_local;
reg    v123_3_we0_local;
reg    v123_3_ce0_local;
reg    v123_we0_local;
reg    v123_ce0_local;
reg    v123_1_we0_local;
reg    v123_1_ce0_local;
reg    v123_6_we0_local;
reg    v123_6_ce0_local;
reg    v123_7_we0_local;
reg    v123_7_ce0_local;
wire   [2:0] lshr_ln_fu_334_p4;
wire   [4:0] tmp_fu_356_p4;
wire   [5:0] or_ln_fu_366_p3;
wire   [0:0] tmp_13_fu_385_p3;
wire   [31:0] grp_fu_411_p2;
reg   [31:0] grp_fu_411_p0;
reg   [31:0] grp_fu_411_p1;
reg    grp_fu_411_ce;
wire   [31:0] grp_fu_415_p2;
reg   [31:0] grp_fu_415_p0;
reg   [31:0] grp_fu_415_p1;
reg    grp_fu_415_ce;
wire   [31:0] grp_fu_419_p2;
reg   [31:0] grp_fu_419_p0;
reg   [31:0] grp_fu_419_p1;
reg    grp_fu_419_ce;
wire   [31:0] grp_fu_423_p2;
reg   [31:0] grp_fu_423_p0;
reg   [31:0] grp_fu_423_p1;
reg    grp_fu_423_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_atax_node1_fu_269_ap_start_reg = 1'b0;
#0 grp_atax_node0_fu_291_ap_start_reg = 1'b0;
#0 v1121_fu_94 = 7'd0;
end
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_address0),.ce0(v123_ce0),.we0(v123_we0_local),.d0(32'd0),.q0(v123_q0),.address1(grp_atax_node1_fu_269_v57_0_address1),.ce1(v123_ce1),.q1(v123_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_1_address0),.ce0(v123_1_ce0),.we0(v123_1_we0_local),.d0(32'd0),.q0(v123_1_q0),.address1(grp_atax_node1_fu_269_v57_1_address1),.ce1(v123_1_ce1),.q1(v123_1_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_2_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_2_address0),.ce0(v123_2_ce0),.we0(v123_2_we0_local),.d0(32'd0),.q0(v123_2_q0),.address1(grp_atax_node1_fu_269_v57_2_address1),.ce1(v123_2_ce1),.q1(v123_2_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_3_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_3_address0),.ce0(v123_3_ce0),.we0(v123_3_we0_local),.d0(32'd0),.q0(v123_3_q0),.address1(grp_atax_node1_fu_269_v57_3_address1),.ce1(v123_3_ce1),.q1(v123_3_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_4_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_4_address0),.ce0(v123_4_ce0),.we0(v123_4_we0_local),.d0(32'd0),.q0(v123_4_q0),.address1(grp_atax_node1_fu_269_v57_4_address1),.ce1(v123_4_ce1),.q1(v123_4_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_5_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_5_address0),.ce0(v123_5_ce0),.we0(v123_5_we0_local),.d0(32'd0),.q0(v123_5_q0),.address1(grp_atax_node1_fu_269_v57_5_address1),.ce1(v123_5_ce1),.q1(v123_5_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_6_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_6_address0),.ce0(v123_6_ce0),.we0(v123_6_we0_local),.d0(32'd0),.q0(v123_6_q0),.address1(grp_atax_node1_fu_269_v57_6_address1),.ce1(v123_6_ce1),.q1(v123_6_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_7_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_7_address0),.ce0(v123_7_ce0),.we0(v123_7_we0_local),.d0(32'd0),.q0(v123_7_q0),.address1(grp_atax_node1_fu_269_v57_7_address1),.ce1(v123_7_ce1),.q1(v123_7_q1));
atax_v124_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v124_U(.clk(ap_clk),.reset(ap_rst),.address0(v124_address0),.ce0(v124_ce0),.we0(v124_we0),.d0(grp_atax_node1_fu_269_v58_0_d0),.q0(v124_q0),.address1(grp_atax_node1_fu_269_v58_0_address1),.ce1(v124_ce1),.we1(v124_we1),.d1(grp_atax_node1_fu_269_v58_0_d1),.q1(v124_q1));
atax_v124_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v124_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v124_1_address0),.ce0(v124_1_ce0),.we0(v124_1_we0),.d0(grp_atax_node1_fu_269_v58_1_d0),.q0(v124_1_q0),.address1(grp_atax_node1_fu_269_v58_1_address1),.ce1(v124_1_ce1),.we1(v124_1_we1),.d1(grp_atax_node1_fu_269_v58_1_d1),.q1(v124_1_q1));
atax_atax_node1 grp_atax_node1_fu_269(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node1_fu_269_ap_start),.ap_done(grp_atax_node1_fu_269_ap_done),.ap_idle(grp_atax_node1_fu_269_ap_idle),.ap_ready(grp_atax_node1_fu_269_ap_ready),.v114_0_address0(grp_atax_node1_fu_269_v114_0_address0),.v114_0_ce0(grp_atax_node1_fu_269_v114_0_ce0),.v114_0_q0(v114_0_q0),.v114_0_address1(grp_atax_node1_fu_269_v114_0_address1),.v114_0_ce1(grp_atax_node1_fu_269_v114_0_ce1),.v114_0_q1(v114_0_q1),.v114_1_address0(grp_atax_node1_fu_269_v114_1_address0),.v114_1_ce0(grp_atax_node1_fu_269_v114_1_ce0),.v114_1_q0(v114_1_q0),.v114_1_address1(grp_atax_node1_fu_269_v114_1_address1),.v114_1_ce1(grp_atax_node1_fu_269_v114_1_ce1),.v114_1_q1(v114_1_q1),.v115_0_address0(grp_atax_node1_fu_269_v115_0_address0),.v115_0_ce0(grp_atax_node1_fu_269_v115_0_ce0),.v115_0_q0(v115_0_q0),.v115_0_address1(grp_atax_node1_fu_269_v115_0_address1),.v115_0_ce1(grp_atax_node1_fu_269_v115_0_ce1),.v115_0_q1(v115_0_q1),.v115_1_address0(grp_atax_node1_fu_269_v115_1_address0),.v115_1_ce0(grp_atax_node1_fu_269_v115_1_ce0),.v115_1_q0(v115_1_q0),.v115_1_address1(grp_atax_node1_fu_269_v115_1_address1),.v115_1_ce1(grp_atax_node1_fu_269_v115_1_ce1),.v115_1_q1(v115_1_q1),.v57_0_address0(grp_atax_node1_fu_269_v57_0_address0),.v57_0_ce0(grp_atax_node1_fu_269_v57_0_ce0),.v57_0_q0(v123_q0),.v57_0_address1(grp_atax_node1_fu_269_v57_0_address1),.v57_0_ce1(grp_atax_node1_fu_269_v57_0_ce1),.v57_0_q1(v123_q1),.v57_1_address0(grp_atax_node1_fu_269_v57_1_address0),.v57_1_ce0(grp_atax_node1_fu_269_v57_1_ce0),.v57_1_q0(v123_1_q0),.v57_1_address1(grp_atax_node1_fu_269_v57_1_address1),.v57_1_ce1(grp_atax_node1_fu_269_v57_1_ce1),.v57_1_q1(v123_1_q1),.v57_2_address0(grp_atax_node1_fu_269_v57_2_address0),.v57_2_ce0(grp_atax_node1_fu_269_v57_2_ce0),.v57_2_q0(v123_2_q0),.v57_2_address1(grp_atax_node1_fu_269_v57_2_address1),.v57_2_ce1(grp_atax_node1_fu_269_v57_2_ce1),.v57_2_q1(v123_2_q1),.v57_3_address0(grp_atax_node1_fu_269_v57_3_address0),.v57_3_ce0(grp_atax_node1_fu_269_v57_3_ce0),.v57_3_q0(v123_3_q0),.v57_3_address1(grp_atax_node1_fu_269_v57_3_address1),.v57_3_ce1(grp_atax_node1_fu_269_v57_3_ce1),.v57_3_q1(v123_3_q1),.v57_4_address0(grp_atax_node1_fu_269_v57_4_address0),.v57_4_ce0(grp_atax_node1_fu_269_v57_4_ce0),.v57_4_q0(v123_4_q0),.v57_4_address1(grp_atax_node1_fu_269_v57_4_address1),.v57_4_ce1(grp_atax_node1_fu_269_v57_4_ce1),.v57_4_q1(v123_4_q1),.v57_5_address0(grp_atax_node1_fu_269_v57_5_address0),.v57_5_ce0(grp_atax_node1_fu_269_v57_5_ce0),.v57_5_q0(v123_5_q0),.v57_5_address1(grp_atax_node1_fu_269_v57_5_address1),.v57_5_ce1(grp_atax_node1_fu_269_v57_5_ce1),.v57_5_q1(v123_5_q1),.v57_6_address0(grp_atax_node1_fu_269_v57_6_address0),.v57_6_ce0(grp_atax_node1_fu_269_v57_6_ce0),.v57_6_q0(v123_6_q0),.v57_6_address1(grp_atax_node1_fu_269_v57_6_address1),.v57_6_ce1(grp_atax_node1_fu_269_v57_6_ce1),.v57_6_q1(v123_6_q1),.v57_7_address0(grp_atax_node1_fu_269_v57_7_address0),.v57_7_ce0(grp_atax_node1_fu_269_v57_7_ce0),.v57_7_q0(v123_7_q0),.v57_7_address1(grp_atax_node1_fu_269_v57_7_address1),.v57_7_ce1(grp_atax_node1_fu_269_v57_7_ce1),.v57_7_q1(v123_7_q1),.v58_0_address0(grp_atax_node1_fu_269_v58_0_address0),.v58_0_ce0(grp_atax_node1_fu_269_v58_0_ce0),.v58_0_we0(grp_atax_node1_fu_269_v58_0_we0),.v58_0_d0(grp_atax_node1_fu_269_v58_0_d0),.v58_0_q0(v124_q0),.v58_0_address1(grp_atax_node1_fu_269_v58_0_address1),.v58_0_ce1(grp_atax_node1_fu_269_v58_0_ce1),.v58_0_we1(grp_atax_node1_fu_269_v58_0_we1),.v58_0_d1(grp_atax_node1_fu_269_v58_0_d1),.v58_0_q1(v124_q1),.v58_1_address0(grp_atax_node1_fu_269_v58_1_address0),.v58_1_ce0(grp_atax_node1_fu_269_v58_1_ce0),.v58_1_we0(grp_atax_node1_fu_269_v58_1_we0),.v58_1_d0(grp_atax_node1_fu_269_v58_1_d0),.v58_1_q0(v124_1_q0),.v58_1_address1(grp_atax_node1_fu_269_v58_1_address1),.v58_1_ce1(grp_atax_node1_fu_269_v58_1_ce1),.v58_1_we1(grp_atax_node1_fu_269_v58_1_we1),.v58_1_d1(grp_atax_node1_fu_269_v58_1_d1),.v58_1_q1(v124_1_q1),.grp_fu_411_p_din0(grp_atax_node1_fu_269_grp_fu_411_p_din0),.grp_fu_411_p_din1(grp_atax_node1_fu_269_grp_fu_411_p_din1),.grp_fu_411_p_opcode(grp_atax_node1_fu_269_grp_fu_411_p_opcode),.grp_fu_411_p_dout0(grp_fu_411_p2),.grp_fu_411_p_ce(grp_atax_node1_fu_269_grp_fu_411_p_ce),.grp_fu_415_p_din0(grp_atax_node1_fu_269_grp_fu_415_p_din0),.grp_fu_415_p_din1(grp_atax_node1_fu_269_grp_fu_415_p_din1),.grp_fu_415_p_opcode(grp_atax_node1_fu_269_grp_fu_415_p_opcode),.grp_fu_415_p_dout0(grp_fu_415_p2),.grp_fu_415_p_ce(grp_atax_node1_fu_269_grp_fu_415_p_ce),.grp_fu_419_p_din0(grp_atax_node1_fu_269_grp_fu_419_p_din0),.grp_fu_419_p_din1(grp_atax_node1_fu_269_grp_fu_419_p_din1),.grp_fu_419_p_dout0(grp_fu_419_p2),.grp_fu_419_p_ce(grp_atax_node1_fu_269_grp_fu_419_p_ce),.grp_fu_423_p_din0(grp_atax_node1_fu_269_grp_fu_423_p_din0),.grp_fu_423_p_din1(grp_atax_node1_fu_269_grp_fu_423_p_din1),.grp_fu_423_p_dout0(grp_fu_423_p2),.grp_fu_423_p_ce(grp_atax_node1_fu_269_grp_fu_423_p_ce));
atax_atax_node0 grp_atax_node0_fu_291(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_fu_291_ap_start),.ap_done(grp_atax_node0_fu_291_ap_done),.ap_idle(grp_atax_node0_fu_291_ap_idle),.ap_ready(grp_atax_node0_fu_291_ap_ready),.v0_0_address0(grp_atax_node0_fu_291_v0_0_address0),.v0_0_ce0(grp_atax_node0_fu_291_v0_0_ce0),.v0_0_q0(v124_q0),.v0_1_address0(grp_atax_node0_fu_291_v0_1_address0),.v0_1_ce0(grp_atax_node0_fu_291_v0_1_ce0),.v0_1_q0(v124_1_q0),.v113_0_address0(grp_atax_node0_fu_291_v113_0_address0),.v113_0_ce0(grp_atax_node0_fu_291_v113_0_ce0),.v113_0_q0(v113_0_q0),.v113_0_address1(grp_atax_node0_fu_291_v113_0_address1),.v113_0_ce1(grp_atax_node0_fu_291_v113_0_ce1),.v113_0_q1(v113_0_q1),.v113_1_address0(grp_atax_node0_fu_291_v113_1_address0),.v113_1_ce0(grp_atax_node0_fu_291_v113_1_ce0),.v113_1_q0(v113_1_q0),.v113_1_address1(grp_atax_node0_fu_291_v113_1_address1),.v113_1_ce1(grp_atax_node0_fu_291_v113_1_ce1),.v113_1_q1(v113_1_q1),.v113_2_address0(grp_atax_node0_fu_291_v113_2_address0),.v113_2_ce0(grp_atax_node0_fu_291_v113_2_ce0),.v113_2_q0(v113_2_q0),.v113_2_address1(grp_atax_node0_fu_291_v113_2_address1),.v113_2_ce1(grp_atax_node0_fu_291_v113_2_ce1),.v113_2_q1(v113_2_q1),.v113_3_address0(grp_atax_node0_fu_291_v113_3_address0),.v113_3_ce0(grp_atax_node0_fu_291_v113_3_ce0),.v113_3_q0(v113_3_q0),.v113_3_address1(grp_atax_node0_fu_291_v113_3_address1),.v113_3_ce1(grp_atax_node0_fu_291_v113_3_ce1),.v113_3_q1(v113_3_q1),.v113_4_address0(grp_atax_node0_fu_291_v113_4_address0),.v113_4_ce0(grp_atax_node0_fu_291_v113_4_ce0),.v113_4_q0(v113_4_q0),.v113_4_address1(grp_atax_node0_fu_291_v113_4_address1),.v113_4_ce1(grp_atax_node0_fu_291_v113_4_ce1),.v113_4_q1(v113_4_q1),.v113_5_address0(grp_atax_node0_fu_291_v113_5_address0),.v113_5_ce0(grp_atax_node0_fu_291_v113_5_ce0),.v113_5_q0(v113_5_q0),.v113_5_address1(grp_atax_node0_fu_291_v113_5_address1),.v113_5_ce1(grp_atax_node0_fu_291_v113_5_ce1),.v113_5_q1(v113_5_q1),.v113_6_address0(grp_atax_node0_fu_291_v113_6_address0),.v113_6_ce0(grp_atax_node0_fu_291_v113_6_ce0),.v113_6_q0(v113_6_q0),.v113_6_address1(grp_atax_node0_fu_291_v113_6_address1),.v113_6_ce1(grp_atax_node0_fu_291_v113_6_ce1),.v113_6_q1(v113_6_q1),.v113_7_address0(grp_atax_node0_fu_291_v113_7_address0),.v113_7_ce0(grp_atax_node0_fu_291_v113_7_ce0),.v113_7_q0(v113_7_q0),.v113_7_address1(grp_atax_node0_fu_291_v113_7_address1),.v113_7_ce1(grp_atax_node0_fu_291_v113_7_ce1),.v113_7_q1(v113_7_q1),.v116_0_address0(grp_atax_node0_fu_291_v116_0_address0),.v116_0_ce0(grp_atax_node0_fu_291_v116_0_ce0),.v116_0_we0(grp_atax_node0_fu_291_v116_0_we0),.v116_0_d0(grp_atax_node0_fu_291_v116_0_d0),.v116_0_q0(v116_0_q0),.v116_0_address1(grp_atax_node0_fu_291_v116_0_address1),.v116_0_ce1(grp_atax_node0_fu_291_v116_0_ce1),.v116_0_we1(grp_atax_node0_fu_291_v116_0_we1),.v116_0_d1(grp_atax_node0_fu_291_v116_0_d1),.v116_0_q1(v116_0_q1),.v116_1_address0(grp_atax_node0_fu_291_v116_1_address0),.v116_1_ce0(grp_atax_node0_fu_291_v116_1_ce0),.v116_1_we0(grp_atax_node0_fu_291_v116_1_we0),.v116_1_d0(grp_atax_node0_fu_291_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_1_address1(grp_atax_node0_fu_291_v116_1_address1),.v116_1_ce1(grp_atax_node0_fu_291_v116_1_ce1),.v116_1_we1(grp_atax_node0_fu_291_v116_1_we1),.v116_1_d1(grp_atax_node0_fu_291_v116_1_d1),.v116_1_q1(v116_1_q1),.grp_fu_411_p_din0(grp_atax_node0_fu_291_grp_fu_411_p_din0),.grp_fu_411_p_din1(grp_atax_node0_fu_291_grp_fu_411_p_din1),.grp_fu_411_p_opcode(grp_atax_node0_fu_291_grp_fu_411_p_opcode),.grp_fu_411_p_dout0(grp_fu_411_p2),.grp_fu_411_p_ce(grp_atax_node0_fu_291_grp_fu_411_p_ce),.grp_fu_415_p_din0(grp_atax_node0_fu_291_grp_fu_415_p_din0),.grp_fu_415_p_din1(grp_atax_node0_fu_291_grp_fu_415_p_din1),.grp_fu_415_p_opcode(grp_atax_node0_fu_291_grp_fu_415_p_opcode),.grp_fu_415_p_dout0(grp_fu_415_p2),.grp_fu_415_p_ce(grp_atax_node0_fu_291_grp_fu_415_p_ce),.grp_fu_419_p_din0(grp_atax_node0_fu_291_grp_fu_419_p_din0),.grp_fu_419_p_din1(grp_atax_node0_fu_291_grp_fu_419_p_din1),.grp_fu_419_p_dout0(grp_fu_419_p2),.grp_fu_419_p_ce(grp_atax_node0_fu_291_grp_fu_419_p_ce),.grp_fu_423_p_din0(grp_atax_node0_fu_291_grp_fu_423_p_din0),.grp_fu_423_p_din1(grp_atax_node0_fu_291_grp_fu_423_p_din1),.grp_fu_423_p_dout0(grp_fu_423_p2),.grp_fu_423_p_ce(grp_atax_node0_fu_291_grp_fu_423_p_ce));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U277(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_411_p0),.din1(grp_fu_411_p1),.ce(grp_fu_411_ce),.dout(grp_fu_411_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U278(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_415_p0),.din1(grp_fu_415_p1),.ce(grp_fu_415_ce),.dout(grp_fu_415_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U279(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_419_p0),.din1(grp_fu_419_p1),.ce(grp_fu_419_ce),.dout(grp_fu_419_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U280(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_423_p0),.din1(grp_fu_423_p1),.ce(grp_fu_423_ce),.dout(grp_fu_423_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_fu_291_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_node0_fu_291_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_fu_291_ap_ready == 1'b1)) begin
            grp_atax_node0_fu_291_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node1_fu_269_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_node1_fu_269_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node1_fu_269_ap_ready == 1'b1)) begin
            grp_atax_node1_fu_269_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v1121_fu_94 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v1121_fu_94 <= v112_fu_379_p2;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node1_fu_269_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_fu_291_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_atax_node0_fu_291_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((grp_atax_node0_fu_291_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_411_ce = grp_atax_node0_fu_291_grp_fu_411_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_411_ce = grp_atax_node1_fu_269_grp_fu_411_p_ce;
    end else begin
        grp_fu_411_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_411_p0 = grp_atax_node0_fu_291_grp_fu_411_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_411_p0 = grp_atax_node1_fu_269_grp_fu_411_p_din0;
    end else begin
        grp_fu_411_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_411_p1 = grp_atax_node0_fu_291_grp_fu_411_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_411_p1 = grp_atax_node1_fu_269_grp_fu_411_p_din1;
    end else begin
        grp_fu_411_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_415_ce = grp_atax_node0_fu_291_grp_fu_415_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_415_ce = grp_atax_node1_fu_269_grp_fu_415_p_ce;
    end else begin
        grp_fu_415_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_415_p0 = grp_atax_node0_fu_291_grp_fu_415_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_415_p0 = grp_atax_node1_fu_269_grp_fu_415_p_din0;
    end else begin
        grp_fu_415_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_415_p1 = grp_atax_node0_fu_291_grp_fu_415_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_415_p1 = grp_atax_node1_fu_269_grp_fu_415_p_din1;
    end else begin
        grp_fu_415_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_419_ce = grp_atax_node0_fu_291_grp_fu_419_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_419_ce = grp_atax_node1_fu_269_grp_fu_419_p_ce;
    end else begin
        grp_fu_419_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_419_p0 = grp_atax_node0_fu_291_grp_fu_419_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_419_p0 = grp_atax_node1_fu_269_grp_fu_419_p_din0;
    end else begin
        grp_fu_419_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_419_p1 = grp_atax_node0_fu_291_grp_fu_419_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_419_p1 = grp_atax_node1_fu_269_grp_fu_419_p_din1;
    end else begin
        grp_fu_419_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_423_ce = grp_atax_node0_fu_291_grp_fu_423_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_423_ce = grp_atax_node1_fu_269_grp_fu_423_p_ce;
    end else begin
        grp_fu_423_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_423_p0 = grp_atax_node0_fu_291_grp_fu_423_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_423_p0 = grp_atax_node1_fu_269_grp_fu_423_p_din0;
    end else begin
        grp_fu_423_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_423_p1 = grp_atax_node0_fu_291_grp_fu_423_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_423_p1 = grp_atax_node1_fu_269_grp_fu_423_p_din1;
    end else begin
        grp_fu_423_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v117_ce0_local = 1'b1;
    end else begin
        v117_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v117_ce1_local = 1'b1;
    end else begin
        v117_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v117_we0_local = 1'b1;
    end else begin
        v117_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v117_we1_local = 1'b1;
    end else begin
        v117_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_1_address0 = grp_atax_node1_fu_269_v57_1_address0;
    end else begin
        v123_1_address0 = zext_ln164_1_fu_344_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_1_ce0 = grp_atax_node1_fu_269_v57_1_ce0;
    end else begin
        v123_1_ce0 = v123_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_1_ce0_local = 1'b1;
    end else begin
        v123_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_1_ce1 = grp_atax_node1_fu_269_v57_1_ce1;
    end else begin
        v123_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln164_fu_330_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_1_we0_local = 1'b1;
    end else begin
        v123_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_2_address0 = grp_atax_node1_fu_269_v57_2_address0;
    end else begin
        v123_2_address0 = zext_ln164_1_fu_344_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_2_ce0 = grp_atax_node1_fu_269_v57_2_ce0;
    end else begin
        v123_2_ce0 = v123_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_2_ce0_local = 1'b1;
    end else begin
        v123_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_2_ce1 = grp_atax_node1_fu_269_v57_2_ce1;
    end else begin
        v123_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln164_fu_330_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_2_we0_local = 1'b1;
    end else begin
        v123_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_3_address0 = grp_atax_node1_fu_269_v57_3_address0;
    end else begin
        v123_3_address0 = zext_ln164_1_fu_344_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_3_ce0 = grp_atax_node1_fu_269_v57_3_ce0;
    end else begin
        v123_3_ce0 = v123_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_3_ce0_local = 1'b1;
    end else begin
        v123_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_3_ce1 = grp_atax_node1_fu_269_v57_3_ce1;
    end else begin
        v123_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln164_fu_330_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_3_we0_local = 1'b1;
    end else begin
        v123_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_4_address0 = grp_atax_node1_fu_269_v57_4_address0;
    end else begin
        v123_4_address0 = zext_ln164_1_fu_344_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_4_ce0 = grp_atax_node1_fu_269_v57_4_ce0;
    end else begin
        v123_4_ce0 = v123_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_4_ce0_local = 1'b1;
    end else begin
        v123_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_4_ce1 = grp_atax_node1_fu_269_v57_4_ce1;
    end else begin
        v123_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln164_fu_330_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_4_we0_local = 1'b1;
    end else begin
        v123_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_5_address0 = grp_atax_node1_fu_269_v57_5_address0;
    end else begin
        v123_5_address0 = zext_ln164_1_fu_344_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_5_ce0 = grp_atax_node1_fu_269_v57_5_ce0;
    end else begin
        v123_5_ce0 = v123_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_5_ce0_local = 1'b1;
    end else begin
        v123_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_5_ce1 = grp_atax_node1_fu_269_v57_5_ce1;
    end else begin
        v123_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln164_fu_330_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_5_we0_local = 1'b1;
    end else begin
        v123_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_6_address0 = grp_atax_node1_fu_269_v57_6_address0;
    end else begin
        v123_6_address0 = zext_ln164_1_fu_344_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_6_ce0 = grp_atax_node1_fu_269_v57_6_ce0;
    end else begin
        v123_6_ce0 = v123_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_6_ce0_local = 1'b1;
    end else begin
        v123_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_6_ce1 = grp_atax_node1_fu_269_v57_6_ce1;
    end else begin
        v123_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln164_fu_330_p1 == 3'd0) & ~(trunc_ln164_fu_330_p1 == 3'd2) & ~(trunc_ln164_fu_330_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_6_we0_local = 1'b1;
    end else begin
        v123_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_7_address0 = grp_atax_node1_fu_269_v57_7_address0;
    end else begin
        v123_7_address0 = zext_ln164_1_fu_344_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_7_ce0 = grp_atax_node1_fu_269_v57_7_ce0;
    end else begin
        v123_7_ce0 = v123_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_7_ce0_local = 1'b1;
    end else begin
        v123_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_7_ce1 = grp_atax_node1_fu_269_v57_7_ce1;
    end else begin
        v123_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln164_fu_330_p1 == 3'd0) & ~(trunc_ln164_fu_330_p1 == 3'd2) & ~(trunc_ln164_fu_330_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_7_we0_local = 1'b1;
    end else begin
        v123_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_address0 = grp_atax_node1_fu_269_v57_0_address0;
    end else begin
        v123_address0 = zext_ln164_1_fu_344_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_ce0 = grp_atax_node1_fu_269_v57_0_ce0;
    end else begin
        v123_ce0 = v123_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_ce0_local = 1'b1;
    end else begin
        v123_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_ce1 = grp_atax_node1_fu_269_v57_0_ce1;
    end else begin
        v123_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln164_fu_330_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_we0_local = 1'b1;
    end else begin
        v123_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v124_1_address0 = grp_atax_node0_fu_291_v0_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_1_address0 = grp_atax_node1_fu_269_v58_1_address0;
    end else begin
        v124_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v124_1_ce0 = grp_atax_node0_fu_291_v0_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_1_ce0 = grp_atax_node1_fu_269_v58_1_ce0;
    end else begin
        v124_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_1_ce1 = grp_atax_node1_fu_269_v58_1_ce1;
    end else begin
        v124_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_1_we0 = grp_atax_node1_fu_269_v58_1_we0;
    end else begin
        v124_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_1_we1 = grp_atax_node1_fu_269_v58_1_we1;
    end else begin
        v124_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v124_address0 = grp_atax_node0_fu_291_v0_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_address0 = grp_atax_node1_fu_269_v58_0_address0;
    end else begin
        v124_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v124_ce0 = grp_atax_node0_fu_291_v0_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce0 = grp_atax_node1_fu_269_v58_0_ce0;
    end else begin
        v124_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce1 = grp_atax_node1_fu_269_v58_0_ce1;
    end else begin
        v124_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_we0 = grp_atax_node1_fu_269_v58_0_we0;
    end else begin
        v124_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_we1 = grp_atax_node1_fu_269_v58_0_we1;
    end else begin
        v124_we1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_13_fu_385_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_atax_node1_fu_269_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_atax_node0_fu_291_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign grp_atax_node0_fu_291_ap_start = grp_atax_node0_fu_291_ap_start_reg;
assign grp_atax_node1_fu_269_ap_start = grp_atax_node1_fu_269_ap_start_reg;
assign lshr_ln_fu_334_p4 = {{v1121_fu_94[5:3]}};
assign or_ln_fu_366_p3 = {{tmp_fu_356_p4}, {1'd1}};
assign tmp_13_fu_385_p3 = v112_fu_379_p2[32'd6];
assign tmp_fu_356_p4 = {{v1121_fu_94[5:1]}};
assign trunc_ln164_fu_330_p1 = v1121_fu_94[2:0];
assign v112_fu_379_p2 = (v1121_fu_94 + 7'd2);
assign v113_0_address0 = grp_atax_node0_fu_291_v113_0_address0;
assign v113_0_address1 = grp_atax_node0_fu_291_v113_0_address1;
assign v113_0_ce0 = grp_atax_node0_fu_291_v113_0_ce0;
assign v113_0_ce1 = grp_atax_node0_fu_291_v113_0_ce1;
assign v113_1_address0 = grp_atax_node0_fu_291_v113_1_address0;
assign v113_1_address1 = grp_atax_node0_fu_291_v113_1_address1;
assign v113_1_ce0 = grp_atax_node0_fu_291_v113_1_ce0;
assign v113_1_ce1 = grp_atax_node0_fu_291_v113_1_ce1;
assign v113_2_address0 = grp_atax_node0_fu_291_v113_2_address0;
assign v113_2_address1 = grp_atax_node0_fu_291_v113_2_address1;
assign v113_2_ce0 = grp_atax_node0_fu_291_v113_2_ce0;
assign v113_2_ce1 = grp_atax_node0_fu_291_v113_2_ce1;
assign v113_3_address0 = grp_atax_node0_fu_291_v113_3_address0;
assign v113_3_address1 = grp_atax_node0_fu_291_v113_3_address1;
assign v113_3_ce0 = grp_atax_node0_fu_291_v113_3_ce0;
assign v113_3_ce1 = grp_atax_node0_fu_291_v113_3_ce1;
assign v113_4_address0 = grp_atax_node0_fu_291_v113_4_address0;
assign v113_4_address1 = grp_atax_node0_fu_291_v113_4_address1;
assign v113_4_ce0 = grp_atax_node0_fu_291_v113_4_ce0;
assign v113_4_ce1 = grp_atax_node0_fu_291_v113_4_ce1;
assign v113_5_address0 = grp_atax_node0_fu_291_v113_5_address0;
assign v113_5_address1 = grp_atax_node0_fu_291_v113_5_address1;
assign v113_5_ce0 = grp_atax_node0_fu_291_v113_5_ce0;
assign v113_5_ce1 = grp_atax_node0_fu_291_v113_5_ce1;
assign v113_6_address0 = grp_atax_node0_fu_291_v113_6_address0;
assign v113_6_address1 = grp_atax_node0_fu_291_v113_6_address1;
assign v113_6_ce0 = grp_atax_node0_fu_291_v113_6_ce0;
assign v113_6_ce1 = grp_atax_node0_fu_291_v113_6_ce1;
assign v113_7_address0 = grp_atax_node0_fu_291_v113_7_address0;
assign v113_7_address1 = grp_atax_node0_fu_291_v113_7_address1;
assign v113_7_ce0 = grp_atax_node0_fu_291_v113_7_ce0;
assign v113_7_ce1 = grp_atax_node0_fu_291_v113_7_ce1;
assign v114_0_address0 = grp_atax_node1_fu_269_v114_0_address0;
assign v114_0_address1 = grp_atax_node1_fu_269_v114_0_address1;
assign v114_0_ce0 = grp_atax_node1_fu_269_v114_0_ce0;
assign v114_0_ce1 = grp_atax_node1_fu_269_v114_0_ce1;
assign v114_1_address0 = grp_atax_node1_fu_269_v114_1_address0;
assign v114_1_address1 = grp_atax_node1_fu_269_v114_1_address1;
assign v114_1_ce0 = grp_atax_node1_fu_269_v114_1_ce0;
assign v114_1_ce1 = grp_atax_node1_fu_269_v114_1_ce1;
assign v115_0_address0 = grp_atax_node1_fu_269_v115_0_address0;
assign v115_0_address1 = grp_atax_node1_fu_269_v115_0_address1;
assign v115_0_ce0 = grp_atax_node1_fu_269_v115_0_ce0;
assign v115_0_ce1 = grp_atax_node1_fu_269_v115_0_ce1;
assign v115_1_address0 = grp_atax_node1_fu_269_v115_1_address0;
assign v115_1_address1 = grp_atax_node1_fu_269_v115_1_address1;
assign v115_1_ce0 = grp_atax_node1_fu_269_v115_1_ce0;
assign v115_1_ce1 = grp_atax_node1_fu_269_v115_1_ce1;
assign v116_0_address0 = grp_atax_node0_fu_291_v116_0_address0;
assign v116_0_address1 = grp_atax_node0_fu_291_v116_0_address1;
assign v116_0_ce0 = grp_atax_node0_fu_291_v116_0_ce0;
assign v116_0_ce1 = grp_atax_node0_fu_291_v116_0_ce1;
assign v116_0_d0 = grp_atax_node0_fu_291_v116_0_d0;
assign v116_0_d1 = grp_atax_node0_fu_291_v116_0_d1;
assign v116_0_we0 = grp_atax_node0_fu_291_v116_0_we0;
assign v116_0_we1 = grp_atax_node0_fu_291_v116_0_we1;
assign v116_1_address0 = grp_atax_node0_fu_291_v116_1_address0;
assign v116_1_address1 = grp_atax_node0_fu_291_v116_1_address1;
assign v116_1_ce0 = grp_atax_node0_fu_291_v116_1_ce0;
assign v116_1_ce1 = grp_atax_node0_fu_291_v116_1_ce1;
assign v116_1_d0 = grp_atax_node0_fu_291_v116_1_d0;
assign v116_1_d1 = grp_atax_node0_fu_291_v116_1_d1;
assign v116_1_we0 = grp_atax_node0_fu_291_v116_1_we0;
assign v116_1_we1 = grp_atax_node0_fu_291_v116_1_we1;
assign v117_address0 = zext_ln165_fu_374_p1;
assign v117_address1 = zext_ln164_fu_325_p1;
assign v117_ce0 = v117_ce0_local;
assign v117_ce1 = v117_ce1_local;
assign v117_d0 = 32'd0;
assign v117_d1 = 32'd0;
assign v117_we0 = v117_we0_local;
assign v117_we1 = v117_we1_local;
assign zext_ln164_1_fu_344_p1 = lshr_ln_fu_334_p4;
assign zext_ln164_fu_325_p1 = v1121_fu_94;
assign zext_ln165_fu_374_p1 = or_ln_fu_366_p3;
endmodule 