module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce); 
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
output  [12:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [12:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [12:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [12:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [12:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [12:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [12:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [12:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
output  [12:0] v227_4_address0;
output   v227_4_ce0;
input  [31:0] v227_4_q0;
output  [12:0] v227_4_address1;
output   v227_4_ce1;
input  [31:0] v227_4_q1;
output  [12:0] v227_5_address0;
output   v227_5_ce0;
input  [31:0] v227_5_q0;
output  [12:0] v227_5_address1;
output   v227_5_ce1;
input  [31:0] v227_5_q1;
output  [12:0] v227_6_address0;
output   v227_6_ce0;
input  [31:0] v227_6_q0;
output  [12:0] v227_6_address1;
output   v227_6_ce1;
input  [31:0] v227_6_q1;
output  [12:0] v227_7_address0;
output   v227_7_ce0;
input  [31:0] v227_7_q0;
output  [12:0] v227_7_address1;
output   v227_7_ce1;
input  [31:0] v227_7_q1;
output  [0:0] v236_din;
input   v236_full_n;
output   v236_write;
output  [15:0] v225_address0;
output   v225_ce0;
output   v225_we0;
output  [31:0] v225_d0;
input  [31:0] v225_q0;
output  [15:0] v225_address1;
output   v225_ce1;
output   v225_we1;
output  [31:0] v225_d1;
input  [31:0] v225_q1;
input  [31:0] v113;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
output  [1:0] grp_fu_148_p_opcode;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v226_address0;
reg v226_ce0;
reg[15:0] v225_address0;
reg v225_ce0;
reg v225_we0;
reg[31:0] v225_d0;
reg[15:0] v225_address1;
reg v225_ce1;
reg v225_we1;
reg[31:0] v225_d1;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state6;
reg   [0:0] icmp_ln168_reg_356;
wire   [15:0] trunc_ln168_fu_189_p1;
reg   [15:0] trunc_ln168_reg_324;
wire    ap_CS_fsm_state2;
wire   [12:0] mul_ln175_fu_211_p2;
reg   [12:0] mul_ln175_reg_329;
wire   [0:0] icmp_ln175_fu_217_p2;
reg   [0:0] icmp_ln175_reg_337;
reg   [14:0] tmp_reg_345;
reg   [13:0] tmp_1_reg_350;
wire   [0:0] icmp_ln168_fu_261_p2;
wire   [0:0] cmp11_0_fu_267_p2;
reg   [0:0] cmp11_0_reg_360;
wire    ap_CS_fsm_state3;
wire   [15:0] or_ln_fu_273_p3;
reg   [15:0] or_ln_reg_365;
wire    ap_CS_fsm_state5;
wire   [15:0] or_ln168_1_cast_fu_281_p3;
reg   [15:0] or_ln168_1_cast_reg_370;
wire   [15:0] or_ln168_2_fu_298_p3;
reg   [15:0] or_ln168_2_reg_375;
wire    ap_CS_fsm_state9;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v226_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_0_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_0_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_4_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_4_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_380_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_380_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_380_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_380_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_384_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_384_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_384_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_388_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_388_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_388_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v226_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_1_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_1_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_5_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_5_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_380_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_380_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_380_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_380_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_384_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_384_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_384_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_388_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_388_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_388_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v226_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_2_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_2_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_6_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_6_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_380_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_380_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_380_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_380_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_384_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_384_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_384_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_388_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_388_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_388_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v226_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_3_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_3_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_7_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_7_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_380_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_380_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_380_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_380_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_384_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_384_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_384_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_388_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_388_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_388_p_ce;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_start_reg;
wire    ap_CS_fsm_state10;
reg   [63:0] v114_fu_98;
wire   [63:0] add_ln168_fu_288_p2;
reg    ap_block_state6;
reg    v236_write_local;
wire   [4:0] lshr_ln_fu_197_p4;
wire   [4:0] mul_ln175_fu_211_p0;
wire   [8:0] mul_ln175_fu_211_p1;
wire   [2:0] trunc_ln168_1_fu_193_p1;
wire   [61:0] tmp_2_fu_233_p4;
wire   [63:0] or_ln168_1_fu_253_p3;
reg   [31:0] grp_fu_380_p0;
reg   [31:0] grp_fu_380_p1;
reg    grp_fu_380_ce;
reg   [31:0] grp_fu_384_p0;
reg   [31:0] grp_fu_384_p1;
reg    grp_fu_384_ce;
reg   [31:0] grp_fu_388_p0;
reg   [31:0] grp_fu_388_p1;
reg    grp_fu_388_ce;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire   [12:0] mul_ln175_fu_211_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_start_reg = 1'b0;
#0 v114_fu_98 = 64'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_5 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_ready),.v114(trunc_ln168_reg_324),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175(mul_ln175_reg_329),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_4_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_4_address0),.v227_4_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_4_ce0),.v227_4_q0(v227_4_q0),.v227_4_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_4_address1),.v227_4_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_4_ce1),.v227_4_q1(v227_4_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_d1),.v225_q1(v225_q1),.cmp11_0(cmp11_0_reg_360),.icmp_ln175(icmp_ln175_reg_337),.grp_fu_380_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_380_p_din0),.grp_fu_380_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_380_p_din1),.grp_fu_380_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_380_p_opcode),.grp_fu_380_p_dout0(grp_fu_148_p_dout0),.grp_fu_380_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_380_p_ce),.grp_fu_384_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_384_p_din0),.grp_fu_384_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_384_p_din1),.grp_fu_384_p_dout0(grp_fu_152_p_dout0),.grp_fu_384_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_384_p_ce),.grp_fu_388_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_388_p_din0),.grp_fu_388_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_388_p_din1),.grp_fu_388_p_dout0(grp_fu_156_p_dout0),.grp_fu_388_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_388_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_53 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_ready),.zext_ln169_1(or_ln_reg_365),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175(mul_ln175_reg_329),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_5_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_5_address0),.v227_5_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_5_ce0),.v227_5_q0(v227_5_q0),.v227_5_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_5_address1),.v227_5_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_5_ce1),.v227_5_q1(v227_5_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_d1),.v225_q1(v225_q1),.icmp_ln175(icmp_ln175_reg_337),.grp_fu_380_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_380_p_din0),.grp_fu_380_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_380_p_din1),.grp_fu_380_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_380_p_opcode),.grp_fu_380_p_dout0(grp_fu_148_p_dout0),.grp_fu_380_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_380_p_ce),.grp_fu_384_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_384_p_din0),.grp_fu_384_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_384_p_din1),.grp_fu_384_p_dout0(grp_fu_152_p_dout0),.grp_fu_384_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_384_p_ce),.grp_fu_388_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_388_p_din0),.grp_fu_388_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_388_p_din1),.grp_fu_388_p_dout0(grp_fu_156_p_dout0),.grp_fu_388_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_388_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_54 grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_ready),.or_ln168_1(or_ln168_1_cast_reg_370),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175(mul_ln175_reg_329),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_6_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_6_address0),.v227_6_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_6_ce0),.v227_6_q0(v227_6_q0),.v227_6_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_6_address1),.v227_6_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_6_ce1),.v227_6_q1(v227_6_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_d1),.v225_q1(v225_q1),.icmp_ln175(icmp_ln175_reg_337),.grp_fu_380_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_380_p_din0),.grp_fu_380_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_380_p_din1),.grp_fu_380_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_380_p_opcode),.grp_fu_380_p_dout0(grp_fu_148_p_dout0),.grp_fu_380_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_380_p_ce),.grp_fu_384_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_384_p_din0),.grp_fu_384_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_384_p_din1),.grp_fu_384_p_dout0(grp_fu_152_p_dout0),.grp_fu_384_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_384_p_ce),.grp_fu_388_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_388_p_din0),.grp_fu_388_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_388_p_din1),.grp_fu_388_p_dout0(grp_fu_156_p_dout0),.grp_fu_388_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_388_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_55 grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_ready),.zext_ln169_4(or_ln168_2_reg_375),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175(mul_ln175_reg_329),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_3_ce1),.v227_3_q1(v227_3_q1),.v227_7_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_7_address0),.v227_7_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_7_ce0),.v227_7_q0(v227_7_q0),.v227_7_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_7_address1),.v227_7_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_7_ce1),.v227_7_q1(v227_7_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_d1),.v225_q1(v225_q1),.icmp_ln175(icmp_ln175_reg_337),.grp_fu_380_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_380_p_din0),.grp_fu_380_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_380_p_din1),.grp_fu_380_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_380_p_opcode),.grp_fu_380_p_dout0(grp_fu_148_p_dout0),.grp_fu_380_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_380_p_ce),.grp_fu_384_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_384_p_din0),.grp_fu_384_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_384_p_din1),.grp_fu_384_p_dout0(grp_fu_152_p_dout0),.grp_fu_384_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_384_p_ce),.grp_fu_388_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_388_p_din0),.grp_fu_388_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_388_p_din1),.grp_fu_388_p_dout0(grp_fu_156_p_dout0),.grp_fu_388_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_388_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U120(.din0(mul_ln175_fu_211_p0),.din1(mul_ln175_fu_211_p1),.dout(mul_ln175_fu_211_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v114_fu_98 <= 64'd0;
    end else if ((~((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_done == 1'b0) | (1'b1 == ap_block_state6)) & (1'b1 == ap_CS_fsm_state6) & (icmp_ln168_reg_356 == 1'd1))) begin
        v114_fu_98 <= add_ln168_fu_288_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_0_reg_360 <= cmp11_0_fu_267_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln168_reg_356 <= icmp_ln168_fu_261_p2;
        icmp_ln175_reg_337 <= icmp_ln175_fu_217_p2;
        mul_ln175_reg_329 <= mul_ln175_fu_211_p2;
        tmp_1_reg_350 <= {{v114_fu_98[15:2]}};
        tmp_reg_345 <= {{v114_fu_98[15:1]}};
        trunc_ln168_reg_324 <= trunc_ln168_fu_189_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        or_ln168_1_cast_reg_370[15 : 2] <= or_ln168_1_cast_fu_281_p3[15 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        or_ln168_2_reg_375[15 : 2] <= or_ln168_2_fu_298_p3[15 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        or_ln_reg_365[15 : 1] <= or_ln_fu_273_p3[15 : 1];
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_done == 1'b0) | (1'b1 == ap_block_state6))) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((~((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_done == 1'b0) | (1'b1 == ap_block_state6)) & (1'b1 == ap_CS_fsm_state6) & (icmp_ln168_reg_356 == 1'd0)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if ((~((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_done == 1'b0) | (1'b1 == ap_block_state6)) & (1'b1 == ap_CS_fsm_state6) & (icmp_ln168_reg_356 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_380_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_380_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_380_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_380_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_380_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_380_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_380_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_380_p_ce;
    end else begin
        grp_fu_380_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_380_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_380_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_380_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_380_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_380_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_380_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_380_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_380_p_din0;
    end else begin
        grp_fu_380_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_380_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_380_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_380_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_380_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_380_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_380_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_380_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_380_p_din1;
    end else begin
        grp_fu_380_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_384_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_384_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_384_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_384_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_384_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_384_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_384_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_384_p_ce;
    end else begin
        grp_fu_384_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_384_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_384_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_384_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_384_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_384_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_384_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_384_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_384_p_din0;
    end else begin
        grp_fu_384_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_384_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_384_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_384_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_384_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_384_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_384_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_384_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_384_p_din1;
    end else begin
        grp_fu_384_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_388_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_388_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_388_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_388_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_388_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_388_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_388_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_388_p_ce;
    end else begin
        grp_fu_388_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_388_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_388_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_388_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_388_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_388_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_388_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_388_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_388_p_din0;
    end else begin
        grp_fu_388_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_388_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_grp_fu_388_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_388_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_grp_fu_388_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_388_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_grp_fu_388_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_388_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_grp_fu_388_p_din1;
    end else begin
        grp_fu_388_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v226_address0;
    end else begin
        v226_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v226_ce0;
    end else begin
        v226_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln168_reg_356 == 1'd0))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if ((~((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_done == 1'b0) | (1'b1 == ap_block_state6)) & (1'b1 == ap_CS_fsm_state6) & (icmp_ln168_reg_356 == 1'd0))) begin
        v236_write_local = 1'b1;
    end else begin
        v236_write_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if ((~((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_done == 1'b0) | (1'b1 == ap_block_state6)) & (1'b1 == ap_CS_fsm_state6) & (icmp_ln168_reg_356 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_done == 1'b0) | (1'b1 == ap_block_state6)) & (1'b1 == ap_CS_fsm_state6) & (icmp_ln168_reg_356 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_fu_288_p2 = (v114_fu_98 + 64'd4);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state6 = ((icmp_ln168_reg_356 == 1'd0) & (v236_full_n == 1'b0));
end
assign cmp11_0_fu_267_p2 = ((v114_fu_98 == 64'd0) ? 1'b1 : 1'b0);
assign grp_fu_148_p_ce = grp_fu_380_ce;
assign grp_fu_148_p_din0 = grp_fu_380_p0;
assign grp_fu_148_p_din1 = grp_fu_380_p1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = grp_fu_384_ce;
assign grp_fu_152_p_din0 = grp_fu_384_p0;
assign grp_fu_152_p_din1 = grp_fu_384_p1;
assign grp_fu_156_p_ce = grp_fu_388_ce;
assign grp_fu_156_p_din0 = grp_fu_388_p0;
assign grp_fu_156_p_din1 = grp_fu_388_p1;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_ap_start_reg;
assign icmp_ln168_fu_261_p2 = (($signed(or_ln168_1_fu_253_p3) < $signed(64'd210)) ? 1'b1 : 1'b0);
assign icmp_ln175_fu_217_p2 = ((trunc_ln168_1_fu_193_p1 != 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_197_p4 = {{v114_fu_98[7:3]}};
assign mul_ln175_fu_211_p0 = mul_ln175_fu_211_p00;
assign mul_ln175_fu_211_p00 = lshr_ln_fu_197_p4;
assign mul_ln175_fu_211_p1 = 13'd190;
assign or_ln168_1_cast_fu_281_p3 = {{tmp_1_reg_350}, {2'd2}};
assign or_ln168_1_fu_253_p3 = {{tmp_2_fu_233_p4}, {2'd2}};
assign or_ln168_2_fu_298_p3 = {{tmp_1_reg_350}, {2'd3}};
assign or_ln_fu_273_p3 = {{tmp_reg_345}, {1'd1}};
assign tmp_2_fu_233_p4 = {{v114_fu_98[63:2]}};
assign trunc_ln168_1_fu_193_p1 = v114_fu_98[2:0];
assign trunc_ln168_fu_189_p1 = v114_fu_98[15:0];
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_1_ce1;
assign v227_2_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_2_address0;
assign v227_2_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_2_address1;
assign v227_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_2_ce0;
assign v227_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_2_ce1;
assign v227_3_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_3_address0;
assign v227_3_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_3_address1;
assign v227_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_3_ce0;
assign v227_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_3_ce1;
assign v227_4_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_4_address0;
assign v227_4_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_4_address1;
assign v227_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_4_ce0;
assign v227_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_116_v227_4_ce1;
assign v227_5_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_5_address0;
assign v227_5_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_5_address1;
assign v227_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_5_ce0;
assign v227_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_133_v227_5_ce1;
assign v227_6_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_6_address0;
assign v227_6_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_6_address1;
assign v227_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_6_ce0;
assign v227_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_149_v227_6_ce1;
assign v227_7_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_7_address0;
assign v227_7_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_7_address1;
assign v227_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_7_ce0;
assign v227_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_165_v227_7_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
always @ (posedge ap_clk) begin
    or_ln_reg_365[0] <= 1'b1;
    or_ln168_1_cast_reg_370[1:0] <= 2'b10;
    or_ln168_2_reg_375[1:0] <= 2'b11;
end
endmodule 