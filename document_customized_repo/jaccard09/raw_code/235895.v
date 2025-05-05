module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v114_1_address0,v114_1_ce0,v114_1_q0,v114_1_address1,v114_1_ce1,v114_1_q1,v114_2_address0,v114_2_ce0,v114_2_q0,v114_2_address1,v114_2_ce1,v114_2_q1,v114_3_address0,v114_3_ce0,v114_3_q0,v114_3_address1,v114_3_ce1,v114_3_q1,v114_4_address0,v114_4_ce0,v114_4_q0,v114_4_address1,v114_4_ce1,v114_4_q1,v114_5_address0,v114_5_ce0,v114_5_q0,v114_5_address1,v114_5_ce1,v114_5_q1,v114_6_address0,v114_6_ce0,v114_6_q0,v114_6_address1,v114_6_ce1,v114_6_q1,v114_7_address0,v114_7_ce0,v114_7_q0,v114_7_address1,v114_7_ce1,v114_7_q1,v115_address0,v115_ce0,v115_q0,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_address1,v116_4_ce1,v116_4_q1,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_address1,v116_5_ce1,v116_5_q1,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_q0,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_q0,v117_0_address0,v117_0_ce0,v117_0_we0,v117_0_d0,v117_1_address0,v117_1_ce0,v117_1_we0,v117_1_d0,v117_2_address0,v117_2_ce0,v117_2_we0,v117_2_d0,v117_3_address0,v117_3_ce0,v117_3_we0,v117_3_d0,v117_4_address0,v117_4_ce0,v117_4_we0,v117_4_d0,v117_5_address0,v117_5_ce0,v117_5_we0,v117_5_d0,v117_6_address0,v117_6_ce0,v117_6_we0,v117_6_d0,v117_7_address0,v117_7_ce0,v117_7_we0,v117_7_d0); 
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
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
output  [8:0] v114_0_address0;
output   v114_0_ce0;
input  [31:0] v114_0_q0;
output  [8:0] v114_0_address1;
output   v114_0_ce1;
input  [31:0] v114_0_q1;
output  [8:0] v114_1_address0;
output   v114_1_ce0;
input  [31:0] v114_1_q0;
output  [8:0] v114_1_address1;
output   v114_1_ce1;
input  [31:0] v114_1_q1;
output  [8:0] v114_2_address0;
output   v114_2_ce0;
input  [31:0] v114_2_q0;
output  [8:0] v114_2_address1;
output   v114_2_ce1;
input  [31:0] v114_2_q1;
output  [8:0] v114_3_address0;
output   v114_3_ce0;
input  [31:0] v114_3_q0;
output  [8:0] v114_3_address1;
output   v114_3_ce1;
input  [31:0] v114_3_q1;
output  [8:0] v114_4_address0;
output   v114_4_ce0;
input  [31:0] v114_4_q0;
output  [8:0] v114_4_address1;
output   v114_4_ce1;
input  [31:0] v114_4_q1;
output  [8:0] v114_5_address0;
output   v114_5_ce0;
input  [31:0] v114_5_q0;
output  [8:0] v114_5_address1;
output   v114_5_ce1;
input  [31:0] v114_5_q1;
output  [8:0] v114_6_address0;
output   v114_6_ce0;
input  [31:0] v114_6_q0;
output  [8:0] v114_6_address1;
output   v114_6_ce1;
input  [31:0] v114_6_q1;
output  [8:0] v114_7_address0;
output   v114_7_ce0;
input  [31:0] v114_7_q0;
output  [8:0] v114_7_address1;
output   v114_7_ce1;
input  [31:0] v114_7_q1;
output  [5:0] v115_address0;
output   v115_ce0;
input  [31:0] v115_q0;
output  [2:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [2:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [2:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
input  [31:0] v116_2_q0;
output  [2:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
input  [31:0] v116_3_q0;
output  [2:0] v116_4_address0;
output   v116_4_ce0;
output   v116_4_we0;
output  [31:0] v116_4_d0;
output  [2:0] v116_4_address1;
output   v116_4_ce1;
input  [31:0] v116_4_q1;
output  [2:0] v116_5_address0;
output   v116_5_ce0;
output   v116_5_we0;
output  [31:0] v116_5_d0;
output  [2:0] v116_5_address1;
output   v116_5_ce1;
input  [31:0] v116_5_q1;
output  [2:0] v116_6_address0;
output   v116_6_ce0;
output   v116_6_we0;
output  [31:0] v116_6_d0;
input  [31:0] v116_6_q0;
output  [2:0] v116_7_address0;
output   v116_7_ce0;
output   v116_7_we0;
output  [31:0] v116_7_d0;
input  [31:0] v116_7_q0;
output  [2:0] v117_0_address0;
output   v117_0_ce0;
output   v117_0_we0;
output  [31:0] v117_0_d0;
output  [2:0] v117_1_address0;
output   v117_1_ce0;
output   v117_1_we0;
output  [31:0] v117_1_d0;
output  [2:0] v117_2_address0;
output   v117_2_ce0;
output   v117_2_we0;
output  [31:0] v117_2_d0;
output  [2:0] v117_3_address0;
output   v117_3_ce0;
output   v117_3_we0;
output  [31:0] v117_3_d0;
output  [2:0] v117_4_address0;
output   v117_4_ce0;
output   v117_4_we0;
output  [31:0] v117_4_d0;
output  [2:0] v117_5_address0;
output   v117_5_ce0;
output   v117_5_we0;
output  [31:0] v117_5_d0;
output  [2:0] v117_6_address0;
output   v117_6_ce0;
output   v117_6_we0;
output  [31:0] v117_6_d0;
output  [2:0] v117_7_address0;
output   v117_7_ce0;
output   v117_7_we0;
output  [31:0] v117_7_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [4:0] v123_address0;
reg    v123_ce0;
reg    v123_we0;
wire   [31:0] v123_q0;
reg    v123_ce1;
wire   [31:0] v123_q1;
reg   [4:0] v123_1_address0;
reg    v123_1_ce0;
reg    v123_1_we0;
wire   [31:0] v123_1_q0;
reg    v123_1_ce1;
wire   [31:0] v123_1_q1;
reg   [5:0] v124_address0;
reg    v124_ce0;
reg    v124_we0;
wire   [31:0] v124_q0;
reg    v124_ce1;
reg    v124_we1;
wire   [31:0] v124_q1;
wire    grp_atax_Pipeline_label_4_fu_88_ap_start;
wire    grp_atax_Pipeline_label_4_fu_88_ap_done;
wire    grp_atax_Pipeline_label_4_fu_88_ap_idle;
wire    grp_atax_Pipeline_label_4_fu_88_ap_ready;
wire   [4:0] grp_atax_Pipeline_label_4_fu_88_v123_address0;
wire    grp_atax_Pipeline_label_4_fu_88_v123_ce0;
wire    grp_atax_Pipeline_label_4_fu_88_v123_we0;
wire   [31:0] grp_atax_Pipeline_label_4_fu_88_v123_d0;
wire   [4:0] grp_atax_Pipeline_label_4_fu_88_v123_1_address0;
wire    grp_atax_Pipeline_label_4_fu_88_v123_1_ce0;
wire    grp_atax_Pipeline_label_4_fu_88_v123_1_we0;
wire   [31:0] grp_atax_Pipeline_label_4_fu_88_v123_1_d0;
wire   [2:0] grp_atax_Pipeline_label_4_fu_88_v117_0_address0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_0_ce0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_0_we0;
wire   [31:0] grp_atax_Pipeline_label_4_fu_88_v117_0_d0;
wire   [2:0] grp_atax_Pipeline_label_4_fu_88_v117_7_address0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_7_ce0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_7_we0;
wire   [31:0] grp_atax_Pipeline_label_4_fu_88_v117_7_d0;
wire   [2:0] grp_atax_Pipeline_label_4_fu_88_v117_6_address0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_6_ce0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_6_we0;
wire   [31:0] grp_atax_Pipeline_label_4_fu_88_v117_6_d0;
wire   [2:0] grp_atax_Pipeline_label_4_fu_88_v117_5_address0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_5_ce0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_5_we0;
wire   [31:0] grp_atax_Pipeline_label_4_fu_88_v117_5_d0;
wire   [2:0] grp_atax_Pipeline_label_4_fu_88_v117_4_address0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_4_ce0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_4_we0;
wire   [31:0] grp_atax_Pipeline_label_4_fu_88_v117_4_d0;
wire   [2:0] grp_atax_Pipeline_label_4_fu_88_v117_3_address0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_3_ce0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_3_we0;
wire   [31:0] grp_atax_Pipeline_label_4_fu_88_v117_3_d0;
wire   [2:0] grp_atax_Pipeline_label_4_fu_88_v117_2_address0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_2_ce0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_2_we0;
wire   [31:0] grp_atax_Pipeline_label_4_fu_88_v117_2_d0;
wire   [2:0] grp_atax_Pipeline_label_4_fu_88_v117_1_address0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_1_ce0;
wire    grp_atax_Pipeline_label_4_fu_88_v117_1_we0;
wire   [31:0] grp_atax_Pipeline_label_4_fu_88_v117_1_d0;
wire    grp_atax_node1_fu_112_ap_start;
wire    grp_atax_node1_fu_112_ap_done;
wire    grp_atax_node1_fu_112_ap_idle;
wire    grp_atax_node1_fu_112_ap_ready;
wire   [8:0] grp_atax_node1_fu_112_v114_0_address0;
wire    grp_atax_node1_fu_112_v114_0_ce0;
wire   [8:0] grp_atax_node1_fu_112_v114_0_address1;
wire    grp_atax_node1_fu_112_v114_0_ce1;
wire   [8:0] grp_atax_node1_fu_112_v114_1_address0;
wire    grp_atax_node1_fu_112_v114_1_ce0;
wire   [8:0] grp_atax_node1_fu_112_v114_1_address1;
wire    grp_atax_node1_fu_112_v114_1_ce1;
wire   [8:0] grp_atax_node1_fu_112_v114_2_address0;
wire    grp_atax_node1_fu_112_v114_2_ce0;
wire   [8:0] grp_atax_node1_fu_112_v114_2_address1;
wire    grp_atax_node1_fu_112_v114_2_ce1;
wire   [8:0] grp_atax_node1_fu_112_v114_3_address0;
wire    grp_atax_node1_fu_112_v114_3_ce0;
wire   [8:0] grp_atax_node1_fu_112_v114_3_address1;
wire    grp_atax_node1_fu_112_v114_3_ce1;
wire   [8:0] grp_atax_node1_fu_112_v114_4_address0;
wire    grp_atax_node1_fu_112_v114_4_ce0;
wire   [8:0] grp_atax_node1_fu_112_v114_4_address1;
wire    grp_atax_node1_fu_112_v114_4_ce1;
wire   [8:0] grp_atax_node1_fu_112_v114_5_address0;
wire    grp_atax_node1_fu_112_v114_5_ce0;
wire   [8:0] grp_atax_node1_fu_112_v114_5_address1;
wire    grp_atax_node1_fu_112_v114_5_ce1;
wire   [8:0] grp_atax_node1_fu_112_v114_6_address0;
wire    grp_atax_node1_fu_112_v114_6_ce0;
wire   [8:0] grp_atax_node1_fu_112_v114_6_address1;
wire    grp_atax_node1_fu_112_v114_6_ce1;
wire   [8:0] grp_atax_node1_fu_112_v114_7_address0;
wire    grp_atax_node1_fu_112_v114_7_ce0;
wire   [8:0] grp_atax_node1_fu_112_v114_7_address1;
wire    grp_atax_node1_fu_112_v114_7_ce1;
wire   [5:0] grp_atax_node1_fu_112_v115_address0;
wire    grp_atax_node1_fu_112_v115_ce0;
wire   [4:0] grp_atax_node1_fu_112_v57_0_address0;
wire    grp_atax_node1_fu_112_v57_0_ce0;
wire   [4:0] grp_atax_node1_fu_112_v57_0_address1;
wire    grp_atax_node1_fu_112_v57_0_ce1;
wire   [4:0] grp_atax_node1_fu_112_v57_1_address0;
wire    grp_atax_node1_fu_112_v57_1_ce0;
wire   [4:0] grp_atax_node1_fu_112_v57_1_address1;
wire    grp_atax_node1_fu_112_v57_1_ce1;
wire   [5:0] grp_atax_node1_fu_112_v58_address0;
wire    grp_atax_node1_fu_112_v58_ce0;
wire    grp_atax_node1_fu_112_v58_we0;
wire   [31:0] grp_atax_node1_fu_112_v58_d0;
wire   [5:0] grp_atax_node1_fu_112_v58_address1;
wire    grp_atax_node1_fu_112_v58_ce1;
wire    grp_atax_node1_fu_112_v58_we1;
wire   [31:0] grp_atax_node1_fu_112_v58_d1;
wire   [31:0] grp_atax_node1_fu_112_grp_fu_160_p_din0;
wire   [31:0] grp_atax_node1_fu_112_grp_fu_160_p_din1;
wire   [1:0] grp_atax_node1_fu_112_grp_fu_160_p_opcode;
wire    grp_atax_node1_fu_112_grp_fu_160_p_ce;
wire   [31:0] grp_atax_node1_fu_112_grp_fu_164_p_din0;
wire   [31:0] grp_atax_node1_fu_112_grp_fu_164_p_din1;
wire    grp_atax_node1_fu_112_grp_fu_164_p_ce;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_ap_start;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_ap_done;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_ap_idle;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_ap_ready;
wire   [5:0] grp_atax_Pipeline_label_0_label_1_fu_137_v124_address0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v124_ce0;
wire   [11:0] grp_atax_Pipeline_label_0_label_1_fu_137_v113_address0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v113_ce0;
wire   [11:0] grp_atax_Pipeline_label_0_label_1_fu_137_v113_address1;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v113_ce1;
wire   [2:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_0_address0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_0_ce0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_0_we0;
wire   [31:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_0_d0;
wire   [2:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_1_address0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_1_ce0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_1_we0;
wire   [31:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_1_d0;
wire   [2:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_2_address0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_2_ce0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_2_we0;
wire   [31:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_2_d0;
wire   [2:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_3_address0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_3_ce0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_3_we0;
wire   [31:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_3_d0;
wire   [2:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_address0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_ce0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_we0;
wire   [31:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_d0;
wire   [2:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_address1;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_ce1;
wire   [2:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_address0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_ce0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_we0;
wire   [31:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_d0;
wire   [2:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_address1;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_ce1;
wire   [2:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_6_address0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_6_ce0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_6_we0;
wire   [31:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_6_d0;
wire   [2:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_7_address0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_7_ce0;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_v116_7_we0;
wire   [31:0] grp_atax_Pipeline_label_0_label_1_fu_137_v116_7_d0;
wire   [31:0] grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_160_p_din0;
wire   [31:0] grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_160_p_din1;
wire   [1:0] grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_160_p_opcode;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_160_p_ce;
wire   [31:0] grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_164_p_din0;
wire   [31:0] grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_164_p_din1;
wire    grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_164_p_ce;
reg    grp_atax_Pipeline_label_4_fu_88_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_atax_node1_fu_112_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_atax_Pipeline_label_0_label_1_fu_137_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire   [31:0] grp_fu_160_p2;
reg   [31:0] grp_fu_160_p0;
reg   [31:0] grp_fu_160_p1;
reg    grp_fu_160_ce;
wire   [31:0] grp_fu_164_p2;
reg   [31:0] grp_fu_164_p0;
reg   [31:0] grp_fu_164_p1;
reg    grp_fu_164_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_atax_Pipeline_label_4_fu_88_ap_start_reg = 1'b0;
#0 grp_atax_node1_fu_112_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_label_0_label_1_fu_137_ap_start_reg = 1'b0;
end
atax_v123_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v123_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_address0),.ce0(v123_ce0),.we0(v123_we0),.d0(grp_atax_Pipeline_label_4_fu_88_v123_d0),.q0(v123_q0),.address1(grp_atax_node1_fu_112_v57_0_address1),.ce1(v123_ce1),.q1(v123_q1));
atax_v123_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v123_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_1_address0),.ce0(v123_1_ce0),.we0(v123_1_we0),.d0(grp_atax_Pipeline_label_4_fu_88_v123_1_d0),.q0(v123_1_q0),.address1(grp_atax_node1_fu_112_v57_1_address1),.ce1(v123_1_ce1),.q1(v123_1_q1));
atax_v124_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
v124_U(.clk(ap_clk),.reset(ap_rst),.address0(v124_address0),.ce0(v124_ce0),.we0(v124_we0),.d0(grp_atax_node1_fu_112_v58_d0),.q0(v124_q0),.address1(grp_atax_node1_fu_112_v58_address1),.ce1(v124_ce1),.we1(v124_we1),.d1(grp_atax_node1_fu_112_v58_d1),.q1(v124_q1));
atax_atax_Pipeline_label_4 grp_atax_Pipeline_label_4_fu_88(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_label_4_fu_88_ap_start),.ap_done(grp_atax_Pipeline_label_4_fu_88_ap_done),.ap_idle(grp_atax_Pipeline_label_4_fu_88_ap_idle),.ap_ready(grp_atax_Pipeline_label_4_fu_88_ap_ready),.v123_address0(grp_atax_Pipeline_label_4_fu_88_v123_address0),.v123_ce0(grp_atax_Pipeline_label_4_fu_88_v123_ce0),.v123_we0(grp_atax_Pipeline_label_4_fu_88_v123_we0),.v123_d0(grp_atax_Pipeline_label_4_fu_88_v123_d0),.v123_1_address0(grp_atax_Pipeline_label_4_fu_88_v123_1_address0),.v123_1_ce0(grp_atax_Pipeline_label_4_fu_88_v123_1_ce0),.v123_1_we0(grp_atax_Pipeline_label_4_fu_88_v123_1_we0),.v123_1_d0(grp_atax_Pipeline_label_4_fu_88_v123_1_d0),.v117_0_address0(grp_atax_Pipeline_label_4_fu_88_v117_0_address0),.v117_0_ce0(grp_atax_Pipeline_label_4_fu_88_v117_0_ce0),.v117_0_we0(grp_atax_Pipeline_label_4_fu_88_v117_0_we0),.v117_0_d0(grp_atax_Pipeline_label_4_fu_88_v117_0_d0),.v117_7_address0(grp_atax_Pipeline_label_4_fu_88_v117_7_address0),.v117_7_ce0(grp_atax_Pipeline_label_4_fu_88_v117_7_ce0),.v117_7_we0(grp_atax_Pipeline_label_4_fu_88_v117_7_we0),.v117_7_d0(grp_atax_Pipeline_label_4_fu_88_v117_7_d0),.v117_6_address0(grp_atax_Pipeline_label_4_fu_88_v117_6_address0),.v117_6_ce0(grp_atax_Pipeline_label_4_fu_88_v117_6_ce0),.v117_6_we0(grp_atax_Pipeline_label_4_fu_88_v117_6_we0),.v117_6_d0(grp_atax_Pipeline_label_4_fu_88_v117_6_d0),.v117_5_address0(grp_atax_Pipeline_label_4_fu_88_v117_5_address0),.v117_5_ce0(grp_atax_Pipeline_label_4_fu_88_v117_5_ce0),.v117_5_we0(grp_atax_Pipeline_label_4_fu_88_v117_5_we0),.v117_5_d0(grp_atax_Pipeline_label_4_fu_88_v117_5_d0),.v117_4_address0(grp_atax_Pipeline_label_4_fu_88_v117_4_address0),.v117_4_ce0(grp_atax_Pipeline_label_4_fu_88_v117_4_ce0),.v117_4_we0(grp_atax_Pipeline_label_4_fu_88_v117_4_we0),.v117_4_d0(grp_atax_Pipeline_label_4_fu_88_v117_4_d0),.v117_3_address0(grp_atax_Pipeline_label_4_fu_88_v117_3_address0),.v117_3_ce0(grp_atax_Pipeline_label_4_fu_88_v117_3_ce0),.v117_3_we0(grp_atax_Pipeline_label_4_fu_88_v117_3_we0),.v117_3_d0(grp_atax_Pipeline_label_4_fu_88_v117_3_d0),.v117_2_address0(grp_atax_Pipeline_label_4_fu_88_v117_2_address0),.v117_2_ce0(grp_atax_Pipeline_label_4_fu_88_v117_2_ce0),.v117_2_we0(grp_atax_Pipeline_label_4_fu_88_v117_2_we0),.v117_2_d0(grp_atax_Pipeline_label_4_fu_88_v117_2_d0),.v117_1_address0(grp_atax_Pipeline_label_4_fu_88_v117_1_address0),.v117_1_ce0(grp_atax_Pipeline_label_4_fu_88_v117_1_ce0),.v117_1_we0(grp_atax_Pipeline_label_4_fu_88_v117_1_we0),.v117_1_d0(grp_atax_Pipeline_label_4_fu_88_v117_1_d0));
atax_atax_node1 grp_atax_node1_fu_112(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node1_fu_112_ap_start),.ap_done(grp_atax_node1_fu_112_ap_done),.ap_idle(grp_atax_node1_fu_112_ap_idle),.ap_ready(grp_atax_node1_fu_112_ap_ready),.v114_0_address0(grp_atax_node1_fu_112_v114_0_address0),.v114_0_ce0(grp_atax_node1_fu_112_v114_0_ce0),.v114_0_q0(v114_0_q0),.v114_0_address1(grp_atax_node1_fu_112_v114_0_address1),.v114_0_ce1(grp_atax_node1_fu_112_v114_0_ce1),.v114_0_q1(v114_0_q1),.v114_1_address0(grp_atax_node1_fu_112_v114_1_address0),.v114_1_ce0(grp_atax_node1_fu_112_v114_1_ce0),.v114_1_q0(v114_1_q0),.v114_1_address1(grp_atax_node1_fu_112_v114_1_address1),.v114_1_ce1(grp_atax_node1_fu_112_v114_1_ce1),.v114_1_q1(v114_1_q1),.v114_2_address0(grp_atax_node1_fu_112_v114_2_address0),.v114_2_ce0(grp_atax_node1_fu_112_v114_2_ce0),.v114_2_q0(v114_2_q0),.v114_2_address1(grp_atax_node1_fu_112_v114_2_address1),.v114_2_ce1(grp_atax_node1_fu_112_v114_2_ce1),.v114_2_q1(v114_2_q1),.v114_3_address0(grp_atax_node1_fu_112_v114_3_address0),.v114_3_ce0(grp_atax_node1_fu_112_v114_3_ce0),.v114_3_q0(v114_3_q0),.v114_3_address1(grp_atax_node1_fu_112_v114_3_address1),.v114_3_ce1(grp_atax_node1_fu_112_v114_3_ce1),.v114_3_q1(v114_3_q1),.v114_4_address0(grp_atax_node1_fu_112_v114_4_address0),.v114_4_ce0(grp_atax_node1_fu_112_v114_4_ce0),.v114_4_q0(v114_4_q0),.v114_4_address1(grp_atax_node1_fu_112_v114_4_address1),.v114_4_ce1(grp_atax_node1_fu_112_v114_4_ce1),.v114_4_q1(v114_4_q1),.v114_5_address0(grp_atax_node1_fu_112_v114_5_address0),.v114_5_ce0(grp_atax_node1_fu_112_v114_5_ce0),.v114_5_q0(v114_5_q0),.v114_5_address1(grp_atax_node1_fu_112_v114_5_address1),.v114_5_ce1(grp_atax_node1_fu_112_v114_5_ce1),.v114_5_q1(v114_5_q1),.v114_6_address0(grp_atax_node1_fu_112_v114_6_address0),.v114_6_ce0(grp_atax_node1_fu_112_v114_6_ce0),.v114_6_q0(v114_6_q0),.v114_6_address1(grp_atax_node1_fu_112_v114_6_address1),.v114_6_ce1(grp_atax_node1_fu_112_v114_6_ce1),.v114_6_q1(v114_6_q1),.v114_7_address0(grp_atax_node1_fu_112_v114_7_address0),.v114_7_ce0(grp_atax_node1_fu_112_v114_7_ce0),.v114_7_q0(v114_7_q0),.v114_7_address1(grp_atax_node1_fu_112_v114_7_address1),.v114_7_ce1(grp_atax_node1_fu_112_v114_7_ce1),.v114_7_q1(v114_7_q1),.v115_address0(grp_atax_node1_fu_112_v115_address0),.v115_ce0(grp_atax_node1_fu_112_v115_ce0),.v115_q0(v115_q0),.v57_0_address0(grp_atax_node1_fu_112_v57_0_address0),.v57_0_ce0(grp_atax_node1_fu_112_v57_0_ce0),.v57_0_q0(v123_q0),.v57_0_address1(grp_atax_node1_fu_112_v57_0_address1),.v57_0_ce1(grp_atax_node1_fu_112_v57_0_ce1),.v57_0_q1(v123_q1),.v57_1_address0(grp_atax_node1_fu_112_v57_1_address0),.v57_1_ce0(grp_atax_node1_fu_112_v57_1_ce0),.v57_1_q0(v123_1_q0),.v57_1_address1(grp_atax_node1_fu_112_v57_1_address1),.v57_1_ce1(grp_atax_node1_fu_112_v57_1_ce1),.v57_1_q1(v123_1_q1),.v58_address0(grp_atax_node1_fu_112_v58_address0),.v58_ce0(grp_atax_node1_fu_112_v58_ce0),.v58_we0(grp_atax_node1_fu_112_v58_we0),.v58_d0(grp_atax_node1_fu_112_v58_d0),.v58_q0(v124_q0),.v58_address1(grp_atax_node1_fu_112_v58_address1),.v58_ce1(grp_atax_node1_fu_112_v58_ce1),.v58_we1(grp_atax_node1_fu_112_v58_we1),.v58_d1(grp_atax_node1_fu_112_v58_d1),.v58_q1(v124_q1),.grp_fu_160_p_din0(grp_atax_node1_fu_112_grp_fu_160_p_din0),.grp_fu_160_p_din1(grp_atax_node1_fu_112_grp_fu_160_p_din1),.grp_fu_160_p_opcode(grp_atax_node1_fu_112_grp_fu_160_p_opcode),.grp_fu_160_p_dout0(grp_fu_160_p2),.grp_fu_160_p_ce(grp_atax_node1_fu_112_grp_fu_160_p_ce),.grp_fu_164_p_din0(grp_atax_node1_fu_112_grp_fu_164_p_din0),.grp_fu_164_p_din1(grp_atax_node1_fu_112_grp_fu_164_p_din1),.grp_fu_164_p_dout0(grp_fu_164_p2),.grp_fu_164_p_ce(grp_atax_node1_fu_112_grp_fu_164_p_ce));
atax_atax_Pipeline_label_0_label_1 grp_atax_Pipeline_label_0_label_1_fu_137(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_label_0_label_1_fu_137_ap_start),.ap_done(grp_atax_Pipeline_label_0_label_1_fu_137_ap_done),.ap_idle(grp_atax_Pipeline_label_0_label_1_fu_137_ap_idle),.ap_ready(grp_atax_Pipeline_label_0_label_1_fu_137_ap_ready),.v124_address0(grp_atax_Pipeline_label_0_label_1_fu_137_v124_address0),.v124_ce0(grp_atax_Pipeline_label_0_label_1_fu_137_v124_ce0),.v124_q0(v124_q0),.v113_address0(grp_atax_Pipeline_label_0_label_1_fu_137_v113_address0),.v113_ce0(grp_atax_Pipeline_label_0_label_1_fu_137_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_Pipeline_label_0_label_1_fu_137_v113_address1),.v113_ce1(grp_atax_Pipeline_label_0_label_1_fu_137_v113_ce1),.v113_q1(v113_q1),.v116_0_address0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_0_address0),.v116_0_ce0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_0_ce0),.v116_0_we0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_0_we0),.v116_0_d0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_0_d0),.v116_0_q0(v116_0_q0),.v116_1_address0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_1_address0),.v116_1_ce0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_1_ce0),.v116_1_we0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_1_we0),.v116_1_d0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_2_address0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_2_address0),.v116_2_ce0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_2_ce0),.v116_2_we0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_2_we0),.v116_2_d0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_2_d0),.v116_2_q0(v116_2_q0),.v116_3_address0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_3_address0),.v116_3_ce0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_3_ce0),.v116_3_we0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_3_we0),.v116_3_d0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_3_d0),.v116_3_q0(v116_3_q0),.v116_4_address0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_address0),.v116_4_ce0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_ce0),.v116_4_we0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_we0),.v116_4_d0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_d0),.v116_4_address1(grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_address1),.v116_4_ce1(grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_ce1),.v116_4_q1(v116_4_q1),.v116_5_address0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_address0),.v116_5_ce0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_ce0),.v116_5_we0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_we0),.v116_5_d0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_d0),.v116_5_address1(grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_address1),.v116_5_ce1(grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_ce1),.v116_5_q1(v116_5_q1),.v116_6_address0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_6_address0),.v116_6_ce0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_6_ce0),.v116_6_we0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_6_we0),.v116_6_d0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_6_d0),.v116_6_q0(v116_6_q0),.v116_7_address0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_7_address0),.v116_7_ce0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_7_ce0),.v116_7_we0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_7_we0),.v116_7_d0(grp_atax_Pipeline_label_0_label_1_fu_137_v116_7_d0),.v116_7_q0(v116_7_q0),.grp_fu_160_p_din0(grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_160_p_din0),.grp_fu_160_p_din1(grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_160_p_din1),.grp_fu_160_p_opcode(grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_160_p_opcode),.grp_fu_160_p_dout0(grp_fu_160_p2),.grp_fu_160_p_ce(grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_160_p_ce),.grp_fu_164_p_din0(grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_164_p_din0),.grp_fu_164_p_din1(grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_164_p_din1),.grp_fu_164_p_dout0(grp_fu_164_p2),.grp_fu_164_p_ce(grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_164_p_ce));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U48(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_160_p0),.din1(grp_fu_160_p1),.ce(grp_fu_160_ce),.dout(grp_fu_160_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U49(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_164_p0),.din1(grp_fu_164_p1),.ce(grp_fu_164_ce),.dout(grp_fu_164_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_label_0_label_1_fu_137_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_Pipeline_label_0_label_1_fu_137_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_label_0_label_1_fu_137_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_label_0_label_1_fu_137_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_label_4_fu_88_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_atax_Pipeline_label_4_fu_88_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_label_4_fu_88_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_label_4_fu_88_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node1_fu_112_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_node1_fu_112_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node1_fu_112_ap_ready == 1'b1)) begin
            grp_atax_node1_fu_112_ap_start_reg <= 1'b0;
        end
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_atax_Pipeline_label_4_fu_88_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node1_fu_112_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_label_0_label_1_fu_137_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_atax_Pipeline_label_0_label_1_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
    if (((grp_atax_Pipeline_label_0_label_1_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_160_ce = grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_160_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_160_ce = grp_atax_node1_fu_112_grp_fu_160_p_ce;
    end else begin
        grp_fu_160_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_160_p0 = grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_160_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_160_p0 = grp_atax_node1_fu_112_grp_fu_160_p_din0;
    end else begin
        grp_fu_160_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_160_p1 = grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_160_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_160_p1 = grp_atax_node1_fu_112_grp_fu_160_p_din1;
    end else begin
        grp_fu_160_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_164_ce = grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_164_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_164_ce = grp_atax_node1_fu_112_grp_fu_164_p_ce;
    end else begin
        grp_fu_164_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_164_p0 = grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_164_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_164_p0 = grp_atax_node1_fu_112_grp_fu_164_p_din0;
    end else begin
        grp_fu_164_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_164_p1 = grp_atax_Pipeline_label_0_label_1_fu_137_grp_fu_164_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_164_p1 = grp_atax_node1_fu_112_grp_fu_164_p_din1;
    end else begin
        grp_fu_164_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_1_address0 = grp_atax_node1_fu_112_v57_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_1_address0 = grp_atax_Pipeline_label_4_fu_88_v123_1_address0;
    end else begin
        v123_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_1_ce0 = grp_atax_node1_fu_112_v57_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_1_ce0 = grp_atax_Pipeline_label_4_fu_88_v123_1_ce0;
    end else begin
        v123_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_1_ce1 = grp_atax_node1_fu_112_v57_1_ce1;
    end else begin
        v123_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_1_we0 = grp_atax_Pipeline_label_4_fu_88_v123_1_we0;
    end else begin
        v123_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_address0 = grp_atax_node1_fu_112_v57_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_address0 = grp_atax_Pipeline_label_4_fu_88_v123_address0;
    end else begin
        v123_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_ce0 = grp_atax_node1_fu_112_v57_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_ce0 = grp_atax_Pipeline_label_4_fu_88_v123_ce0;
    end else begin
        v123_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_ce1 = grp_atax_node1_fu_112_v57_0_ce1;
    end else begin
        v123_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_we0 = grp_atax_Pipeline_label_4_fu_88_v123_we0;
    end else begin
        v123_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v124_address0 = grp_atax_Pipeline_label_0_label_1_fu_137_v124_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_address0 = grp_atax_node1_fu_112_v58_address0;
    end else begin
        v124_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v124_ce0 = grp_atax_Pipeline_label_0_label_1_fu_137_v124_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce0 = grp_atax_node1_fu_112_v58_ce0;
    end else begin
        v124_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce1 = grp_atax_node1_fu_112_v58_ce1;
    end else begin
        v124_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_we0 = grp_atax_node1_fu_112_v58_we0;
    end else begin
        v124_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_we1 = grp_atax_node1_fu_112_v58_we1;
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
            if (((grp_atax_Pipeline_label_4_fu_88_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_atax_node1_fu_112_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_atax_Pipeline_label_0_label_1_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
assign grp_atax_Pipeline_label_0_label_1_fu_137_ap_start = grp_atax_Pipeline_label_0_label_1_fu_137_ap_start_reg;
assign grp_atax_Pipeline_label_4_fu_88_ap_start = grp_atax_Pipeline_label_4_fu_88_ap_start_reg;
assign grp_atax_node1_fu_112_ap_start = grp_atax_node1_fu_112_ap_start_reg;
assign v113_address0 = grp_atax_Pipeline_label_0_label_1_fu_137_v113_address0;
assign v113_address1 = grp_atax_Pipeline_label_0_label_1_fu_137_v113_address1;
assign v113_ce0 = grp_atax_Pipeline_label_0_label_1_fu_137_v113_ce0;
assign v113_ce1 = grp_atax_Pipeline_label_0_label_1_fu_137_v113_ce1;
assign v114_0_address0 = grp_atax_node1_fu_112_v114_0_address0;
assign v114_0_address1 = grp_atax_node1_fu_112_v114_0_address1;
assign v114_0_ce0 = grp_atax_node1_fu_112_v114_0_ce0;
assign v114_0_ce1 = grp_atax_node1_fu_112_v114_0_ce1;
assign v114_1_address0 = grp_atax_node1_fu_112_v114_1_address0;
assign v114_1_address1 = grp_atax_node1_fu_112_v114_1_address1;
assign v114_1_ce0 = grp_atax_node1_fu_112_v114_1_ce0;
assign v114_1_ce1 = grp_atax_node1_fu_112_v114_1_ce1;
assign v114_2_address0 = grp_atax_node1_fu_112_v114_2_address0;
assign v114_2_address1 = grp_atax_node1_fu_112_v114_2_address1;
assign v114_2_ce0 = grp_atax_node1_fu_112_v114_2_ce0;
assign v114_2_ce1 = grp_atax_node1_fu_112_v114_2_ce1;
assign v114_3_address0 = grp_atax_node1_fu_112_v114_3_address0;
assign v114_3_address1 = grp_atax_node1_fu_112_v114_3_address1;
assign v114_3_ce0 = grp_atax_node1_fu_112_v114_3_ce0;
assign v114_3_ce1 = grp_atax_node1_fu_112_v114_3_ce1;
assign v114_4_address0 = grp_atax_node1_fu_112_v114_4_address0;
assign v114_4_address1 = grp_atax_node1_fu_112_v114_4_address1;
assign v114_4_ce0 = grp_atax_node1_fu_112_v114_4_ce0;
assign v114_4_ce1 = grp_atax_node1_fu_112_v114_4_ce1;
assign v114_5_address0 = grp_atax_node1_fu_112_v114_5_address0;
assign v114_5_address1 = grp_atax_node1_fu_112_v114_5_address1;
assign v114_5_ce0 = grp_atax_node1_fu_112_v114_5_ce0;
assign v114_5_ce1 = grp_atax_node1_fu_112_v114_5_ce1;
assign v114_6_address0 = grp_atax_node1_fu_112_v114_6_address0;
assign v114_6_address1 = grp_atax_node1_fu_112_v114_6_address1;
assign v114_6_ce0 = grp_atax_node1_fu_112_v114_6_ce0;
assign v114_6_ce1 = grp_atax_node1_fu_112_v114_6_ce1;
assign v114_7_address0 = grp_atax_node1_fu_112_v114_7_address0;
assign v114_7_address1 = grp_atax_node1_fu_112_v114_7_address1;
assign v114_7_ce0 = grp_atax_node1_fu_112_v114_7_ce0;
assign v114_7_ce1 = grp_atax_node1_fu_112_v114_7_ce1;
assign v115_address0 = grp_atax_node1_fu_112_v115_address0;
assign v115_ce0 = grp_atax_node1_fu_112_v115_ce0;
assign v116_0_address0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_0_address0;
assign v116_0_ce0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_0_ce0;
assign v116_0_d0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_0_d0;
assign v116_0_we0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_0_we0;
assign v116_1_address0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_1_address0;
assign v116_1_ce0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_1_ce0;
assign v116_1_d0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_1_d0;
assign v116_1_we0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_1_we0;
assign v116_2_address0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_2_address0;
assign v116_2_ce0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_2_ce0;
assign v116_2_d0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_2_d0;
assign v116_2_we0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_2_we0;
assign v116_3_address0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_3_address0;
assign v116_3_ce0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_3_ce0;
assign v116_3_d0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_3_d0;
assign v116_3_we0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_3_we0;
assign v116_4_address0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_address0;
assign v116_4_address1 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_address1;
assign v116_4_ce0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_ce0;
assign v116_4_ce1 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_ce1;
assign v116_4_d0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_d0;
assign v116_4_we0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_4_we0;
assign v116_5_address0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_address0;
assign v116_5_address1 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_address1;
assign v116_5_ce0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_ce0;
assign v116_5_ce1 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_ce1;
assign v116_5_d0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_d0;
assign v116_5_we0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_5_we0;
assign v116_6_address0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_6_address0;
assign v116_6_ce0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_6_ce0;
assign v116_6_d0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_6_d0;
assign v116_6_we0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_6_we0;
assign v116_7_address0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_7_address0;
assign v116_7_ce0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_7_ce0;
assign v116_7_d0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_7_d0;
assign v116_7_we0 = grp_atax_Pipeline_label_0_label_1_fu_137_v116_7_we0;
assign v117_0_address0 = grp_atax_Pipeline_label_4_fu_88_v117_0_address0;
assign v117_0_ce0 = grp_atax_Pipeline_label_4_fu_88_v117_0_ce0;
assign v117_0_d0 = grp_atax_Pipeline_label_4_fu_88_v117_0_d0;
assign v117_0_we0 = grp_atax_Pipeline_label_4_fu_88_v117_0_we0;
assign v117_1_address0 = grp_atax_Pipeline_label_4_fu_88_v117_1_address0;
assign v117_1_ce0 = grp_atax_Pipeline_label_4_fu_88_v117_1_ce0;
assign v117_1_d0 = grp_atax_Pipeline_label_4_fu_88_v117_1_d0;
assign v117_1_we0 = grp_atax_Pipeline_label_4_fu_88_v117_1_we0;
assign v117_2_address0 = grp_atax_Pipeline_label_4_fu_88_v117_2_address0;
assign v117_2_ce0 = grp_atax_Pipeline_label_4_fu_88_v117_2_ce0;
assign v117_2_d0 = grp_atax_Pipeline_label_4_fu_88_v117_2_d0;
assign v117_2_we0 = grp_atax_Pipeline_label_4_fu_88_v117_2_we0;
assign v117_3_address0 = grp_atax_Pipeline_label_4_fu_88_v117_3_address0;
assign v117_3_ce0 = grp_atax_Pipeline_label_4_fu_88_v117_3_ce0;
assign v117_3_d0 = grp_atax_Pipeline_label_4_fu_88_v117_3_d0;
assign v117_3_we0 = grp_atax_Pipeline_label_4_fu_88_v117_3_we0;
assign v117_4_address0 = grp_atax_Pipeline_label_4_fu_88_v117_4_address0;
assign v117_4_ce0 = grp_atax_Pipeline_label_4_fu_88_v117_4_ce0;
assign v117_4_d0 = grp_atax_Pipeline_label_4_fu_88_v117_4_d0;
assign v117_4_we0 = grp_atax_Pipeline_label_4_fu_88_v117_4_we0;
assign v117_5_address0 = grp_atax_Pipeline_label_4_fu_88_v117_5_address0;
assign v117_5_ce0 = grp_atax_Pipeline_label_4_fu_88_v117_5_ce0;
assign v117_5_d0 = grp_atax_Pipeline_label_4_fu_88_v117_5_d0;
assign v117_5_we0 = grp_atax_Pipeline_label_4_fu_88_v117_5_we0;
assign v117_6_address0 = grp_atax_Pipeline_label_4_fu_88_v117_6_address0;
assign v117_6_ce0 = grp_atax_Pipeline_label_4_fu_88_v117_6_ce0;
assign v117_6_d0 = grp_atax_Pipeline_label_4_fu_88_v117_6_d0;
assign v117_6_we0 = grp_atax_Pipeline_label_4_fu_88_v117_6_we0;
assign v117_7_address0 = grp_atax_Pipeline_label_4_fu_88_v117_7_address0;
assign v117_7_ce0 = grp_atax_Pipeline_label_4_fu_88_v117_7_ce0;
assign v117_7_d0 = grp_atax_Pipeline_label_4_fu_88_v117_7_d0;
assign v117_7_we0 = grp_atax_Pipeline_label_4_fu_88_v117_7_we0;
endmodule 