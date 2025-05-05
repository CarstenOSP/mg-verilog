module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v113,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_opcode,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_opcode,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_opcode,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce); 
parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
output  [15:0] v226_address1;
output   v226_ce1;
input  [31:0] v226_q1;
output  [15:0] v227_address0;
output   v227_ce0;
input  [31:0] v227_q0;
output  [15:0] v227_address1;
output   v227_ce1;
input  [31:0] v227_q1;
output  [0:0] v236_din;
input   v236_full_n;
output   v236_write;
output  [14:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [14:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
output  [14:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [14:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
input  [31:0] v113;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
output  [1:0] grp_fu_152_p_opcode;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
output  [1:0] grp_fu_156_p_opcode;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
output  [1:0] grp_fu_160_p_opcode;
input  [31:0] grp_fu_160_p_dout0;
output   grp_fu_160_p_ce;
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
input  [31:0] grp_fu_164_p_dout0;
output   grp_fu_164_p_ce;
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
output  [31:0] grp_fu_188_p_din0;
output  [31:0] grp_fu_188_p_din1;
input  [31:0] grp_fu_188_p_dout0;
output   grp_fu_188_p_ce;
output  [31:0] grp_fu_192_p_din0;
output  [31:0] grp_fu_192_p_din1;
input  [31:0] grp_fu_192_p_dout0;
output   grp_fu_192_p_ce;
output  [31:0] grp_fu_196_p_din0;
output  [31:0] grp_fu_196_p_din1;
input  [31:0] grp_fu_196_p_dout0;
output   grp_fu_196_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_296_p2;
reg   [15:0] phi_mul_load_reg_725;
wire   [15:0] add_ln168_1_fu_290_p2;
reg   [15:0] add_ln168_1_reg_730;
wire   [7:0] add_ln168_fu_302_p2;
reg   [7:0] add_ln168_reg_738;
wire   [15:0] zext_ln168_fu_308_p1;
reg   [15:0] zext_ln168_reg_743;
wire   [0:0] cmp11_fu_312_p2;
reg   [0:0] cmp11_reg_756;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_328_p2;
reg   [7:0] add_ln169_reg_769;
wire    ap_CS_fsm_state4;
reg   [6:0] tmp_reg_779;
wire    ap_CS_fsm_state5;
reg   [6:0] tmp_1_reg_789;
wire    ap_CS_fsm_state6;
reg   [6:0] tmp_2_reg_804;
reg   [31:0] v226_load_reg_809;
wire    ap_CS_fsm_state7;
reg   [6:0] tmp_3_reg_829;
reg   [31:0] v226_load_1_reg_834;
wire    ap_CS_fsm_state8;
reg   [31:0] v226_load_2_reg_839;
reg   [31:0] v226_load_3_reg_854;
wire    ap_CS_fsm_state9;
reg   [31:0] v226_load_4_reg_859;
reg   [31:0] v226_load_5_reg_874;
wire    ap_CS_fsm_state10;
reg   [31:0] v226_load_6_reg_879;
reg   [31:0] v226_load_7_reg_894;
wire    ap_CS_fsm_state11;
reg   [31:0] v226_load_8_reg_899;
wire   [31:0] v119_fu_458_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_462_p1;
wire   [31:0] v143_fu_466_p1;
wire   [31:0] v154_fu_470_p1;
wire   [31:0] v165_fu_474_p1;
wire   [31:0] v176_fu_478_p1;
wire   [31:0] v187_fu_482_p1;
wire   [31:0] v198_fu_486_p1;
wire   [31:0] v209_fu_490_p1;
wire   [0:0] trunc_ln169_fu_494_p1;
reg   [0:0] trunc_ln169_reg_949;
wire    ap_CS_fsm_state15;
wire   [14:0] mul_ln171_fu_512_p2;
reg   [14:0] mul_ln171_reg_954;
reg   [31:0] v_reg_959;
wire   [14:0] mul_ln186_fu_521_p2;
reg   [14:0] mul_ln186_reg_964;
reg   [31:0] v18_reg_969;
wire   [14:0] mul_ln199_fu_537_p2;
reg   [14:0] mul_ln199_reg_974;
reg   [31:0] v19_reg_979;
wire   [14:0] mul_ln212_fu_546_p2;
reg   [14:0] mul_ln212_reg_984;
reg   [31:0] v20_reg_989;
wire   [14:0] mul_ln225_fu_562_p2;
reg   [14:0] mul_ln225_reg_994;
reg   [31:0] v21_reg_999;
wire   [14:0] mul_ln238_fu_571_p2;
reg   [14:0] mul_ln238_reg_1004;
reg   [31:0] v22_reg_1009;
wire   [14:0] mul_ln251_fu_587_p2;
reg   [14:0] mul_ln251_reg_1014;
reg   [31:0] v23_reg_1019;
wire   [14:0] mul_ln264_fu_596_p2;
reg   [14:0] mul_ln264_reg_1024;
reg   [31:0] v24_reg_1029;
wire   [14:0] mul_ln277_fu_612_p2;
reg   [14:0] mul_ln277_reg_1034;
reg   [31:0] v25_reg_1039;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1044_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1044_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1044_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1044_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1048_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1048_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1048_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1048_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1052_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1052_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1052_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1052_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_238_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_238_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_238_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_242_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_242_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_242_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_246_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_246_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_246_p_ce;
reg   [7:0] v115_reg_195;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start_reg;
wire    ap_CS_fsm_state16;
wire   [63:0] p_cast1900_fu_382_p1;
wire   [63:0] p_cast_fu_406_p1;
wire   [63:0] p_cast1901_fu_410_p1;
wire   [63:0] p_cast1902_fu_434_p1;
wire   [63:0] p_cast1903_fu_438_p1;
wire   [63:0] p_cast1904_fu_442_p1;
wire   [63:0] p_cast1905_fu_446_p1;
wire   [63:0] p_cast1906_fu_450_p1;
wire   [63:0] p_cast1907_fu_454_p1;
reg   [15:0] phi_mul_fu_92;
wire   [0:0] icmp_ln169_fu_318_p2;
reg   [7:0] v114_fu_96;
reg    v236_write_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg   [31:0] grp_fu_238_p0;
reg   [31:0] grp_fu_238_p1;
reg   [31:0] grp_fu_242_p0;
reg   [31:0] grp_fu_242_p1;
reg   [31:0] grp_fu_246_p0;
reg   [31:0] grp_fu_246_p1;
wire   [7:0] empty_22_fu_342_p2;
wire   [7:0] empty_29_fu_362_p2;
wire   [15:0] grp_fu_618_p3;
wire   [7:0] empty_36_fu_386_p2;
wire   [15:0] grp_fu_626_p3;
wire   [15:0] grp_fu_634_p4;
wire   [7:0] empty_43_fu_414_p2;
wire   [15:0] grp_fu_644_p3;
wire   [15:0] grp_fu_652_p4;
wire   [15:0] grp_fu_662_p3;
wire   [15:0] grp_fu_670_p4;
wire   [15:0] grp_fu_680_p3;
wire   [15:0] grp_fu_688_p4;
wire   [6:0] lshr_ln_fu_498_p4;
wire   [6:0] mul_ln171_fu_512_p0;
wire   [8:0] mul_ln171_fu_512_p1;
wire   [6:0] mul_ln186_fu_521_p0;
wire   [8:0] mul_ln186_fu_521_p1;
wire   [6:0] empty_28_fu_527_p2;
wire   [6:0] mul_ln199_fu_537_p0;
wire   [8:0] mul_ln199_fu_537_p1;
wire   [6:0] mul_ln212_fu_546_p0;
wire   [8:0] mul_ln212_fu_546_p1;
wire   [6:0] empty_35_fu_552_p2;
wire   [6:0] mul_ln225_fu_562_p0;
wire   [8:0] mul_ln225_fu_562_p1;
wire   [6:0] mul_ln238_fu_571_p0;
wire   [8:0] mul_ln238_fu_571_p1;
wire   [6:0] empty_42_fu_577_p2;
wire   [6:0] mul_ln251_fu_587_p0;
wire   [8:0] mul_ln251_fu_587_p1;
wire   [6:0] mul_ln264_fu_596_p0;
wire   [8:0] mul_ln264_fu_596_p1;
wire   [6:0] empty_49_fu_602_p2;
wire   [6:0] mul_ln277_fu_612_p0;
wire   [8:0] mul_ln277_fu_612_p1;
wire   [7:0] grp_fu_618_p0;
wire   [7:0] grp_fu_618_p1;
wire   [7:0] grp_fu_618_p2;
wire   [7:0] grp_fu_626_p0;
wire   [7:0] grp_fu_626_p1;
wire   [7:0] grp_fu_626_p2;
wire   [1:0] grp_fu_634_p1;
wire   [7:0] grp_fu_634_p2;
wire   [7:0] grp_fu_634_p3;
wire   [7:0] grp_fu_644_p0;
wire   [7:0] grp_fu_644_p1;
wire   [7:0] grp_fu_644_p2;
wire   [2:0] grp_fu_652_p1;
wire   [7:0] grp_fu_652_p2;
wire   [7:0] grp_fu_652_p3;
wire   [7:0] grp_fu_662_p0;
wire   [7:0] grp_fu_662_p1;
wire   [7:0] grp_fu_662_p2;
wire   [2:0] grp_fu_670_p1;
wire   [7:0] grp_fu_670_p2;
wire   [7:0] grp_fu_670_p3;
wire   [7:0] grp_fu_680_p0;
wire   [7:0] grp_fu_680_p1;
wire   [7:0] grp_fu_680_p2;
wire   [3:0] grp_fu_688_p1;
wire   [7:0] grp_fu_688_p2;
wire   [7:0] grp_fu_688_p3;
reg    grp_fu_238_ce;
reg    grp_fu_242_ce;
reg    grp_fu_246_ce;
reg    grp_fu_1044_ce;
reg    grp_fu_1048_ce;
reg    grp_fu_1052_ce;
reg   [16:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire   [15:0] grp_fu_618_p00;
wire   [15:0] grp_fu_626_p00;
wire   [15:0] grp_fu_644_p00;
wire   [15:0] grp_fu_662_p00;
wire   [15:0] grp_fu_680_p00;
wire   [14:0] mul_ln171_fu_512_p00;
wire   [14:0] mul_ln186_fu_521_p00;
wire   [14:0] mul_ln199_fu_537_p00;
wire   [14:0] mul_ln212_fu_546_p00;
wire   [14:0] mul_ln225_fu_562_p00;
wire   [14:0] mul_ln238_fu_571_p00;
wire   [14:0] mul_ln251_fu_587_p00;
wire   [14:0] mul_ln264_fu_596_p00;
wire   [14:0] mul_ln277_fu_612_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start_reg = 1'b0;
#0 phi_mul_fu_92 = 16'd0;
#0 v114_fu_96 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_207(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_d1),.v225_1_q1(v225_1_q1),.phi_mul(phi_mul_load_reg_725),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_954),.mul_ln199(mul_ln199_reg_974),.mul_ln225(mul_ln225_reg_994),.mul_ln251(mul_ln251_reg_1014),.mul_ln277(mul_ln277_reg_1034),.mul_ln186(mul_ln186_reg_964),.mul_ln212(mul_ln212_reg_984),.mul_ln238(mul_ln238_reg_1004),.mul_ln264(mul_ln264_reg_1024),.empty(trunc_ln169_reg_949),.cmp11(cmp11_reg_756),.v120(v_reg_959),.v133(v18_reg_969),.v144(v19_reg_979),.v155(v20_reg_989),.v166(v21_reg_999),.v177(v22_reg_1009),.v188(v23_reg_1019),.v199(v24_reg_1029),.v210(v25_reg_1039),.grp_fu_1044_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1044_p_din0),.grp_fu_1044_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1044_p_din1),.grp_fu_1044_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1044_p_opcode),.grp_fu_1044_p_dout0(grp_fu_152_p_dout0),.grp_fu_1044_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1044_p_ce),.grp_fu_1048_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1048_p_din0),.grp_fu_1048_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1048_p_din1),.grp_fu_1048_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1048_p_opcode),.grp_fu_1048_p_dout0(grp_fu_156_p_dout0),.grp_fu_1048_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1048_p_ce),.grp_fu_1052_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1052_p_din0),.grp_fu_1052_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1052_p_din1),.grp_fu_1052_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1052_p_opcode),.grp_fu_1052_p_dout0(grp_fu_160_p_dout0),.grp_fu_1052_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1052_p_ce),.grp_fu_238_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_238_p_din0),.grp_fu_238_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_238_p_din1),.grp_fu_238_p_dout0(grp_fu_164_p_dout0),.grp_fu_238_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_238_p_ce),.grp_fu_242_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_242_p_din0),.grp_fu_242_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_242_p_din1),.grp_fu_242_p_dout0(grp_fu_168_p_dout0),.grp_fu_242_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_242_p_ce),.grp_fu_246_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_246_p_din0),.grp_fu_246_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_246_p_din1),.grp_fu_246_p_dout0(grp_fu_172_p_dout0),.grp_fu_246_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_246_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U40(.din0(mul_ln171_fu_512_p0),.din1(mul_ln171_fu_512_p1),.dout(mul_ln171_fu_512_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U41(.din0(mul_ln186_fu_521_p0),.din1(mul_ln186_fu_521_p1),.dout(mul_ln186_fu_521_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U42(.din0(mul_ln199_fu_537_p0),.din1(mul_ln199_fu_537_p1),.dout(mul_ln199_fu_537_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U43(.din0(mul_ln212_fu_546_p0),.din1(mul_ln212_fu_546_p1),.dout(mul_ln212_fu_546_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U44(.din0(mul_ln225_fu_562_p0),.din1(mul_ln225_fu_562_p1),.dout(mul_ln225_fu_562_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U45(.din0(mul_ln238_fu_571_p0),.din1(mul_ln238_fu_571_p1),.dout(mul_ln238_fu_571_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U46(.din0(mul_ln251_fu_587_p0),.din1(mul_ln251_fu_587_p1),.dout(mul_ln251_fu_587_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U47(.din0(mul_ln264_fu_596_p0),.din1(mul_ln264_fu_596_p1),.dout(mul_ln264_fu_596_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U48(.din0(mul_ln277_fu_612_p0),.din1(mul_ln277_fu_612_p1),.dout(mul_ln277_fu_612_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U49(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_618_p0),.din1(grp_fu_618_p1),.din2(grp_fu_618_p2),.ce(1'b1),.dout(grp_fu_618_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U50(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_626_p0),.din1(grp_fu_626_p1),.din2(grp_fu_626_p2),.ce(1'b1),.dout(grp_fu_626_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1_U51(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_195),.din1(grp_fu_634_p1),.din2(grp_fu_634_p2),.din3(grp_fu_634_p3),.ce(1'b1),.dout(grp_fu_634_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U52(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_644_p0),.din1(grp_fu_644_p1),.din2(grp_fu_644_p2),.ce(1'b1),.dout(grp_fu_644_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U53(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_195),.din1(grp_fu_652_p1),.din2(grp_fu_652_p2),.din3(grp_fu_652_p3),.ce(1'b1),.dout(grp_fu_652_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_662_p0),.din1(grp_fu_662_p1),.din2(grp_fu_662_p2),.ce(1'b1),.dout(grp_fu_662_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U55(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_195),.din1(grp_fu_670_p1),.din2(grp_fu_670_p2),.din3(grp_fu_670_p3),.ce(1'b1),.dout(grp_fu_670_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U56(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_680_p0),.din1(grp_fu_680_p1),.din2(grp_fu_680_p2),.ce(1'b1),.dout(grp_fu_680_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U57(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_195),.din1(grp_fu_688_p1),.din2(grp_fu_688_p2),.din3(grp_fu_688_p3),.ce(1'b1),.dout(grp_fu_688_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_92 <= 16'd0;
    end else if (((icmp_ln169_fu_318_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_92 <= add_ln168_1_reg_730;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_96 <= 8'd0;
    end else if (((icmp_ln169_fu_318_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_96 <= add_ln168_reg_738;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_195 <= add_ln169_reg_769;
    end else if (((icmp_ln168_fu_296_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        v115_reg_195 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_730 <= add_ln168_1_fu_290_p2;
        add_ln168_reg_738 <= add_ln168_fu_302_p2;
        cmp11_reg_756 <= cmp11_fu_312_p2;
        phi_mul_load_reg_725 <= phi_mul_fu_92;
        zext_ln168_reg_743[7 : 0] <= zext_ln168_fu_308_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_769 <= add_ln169_fu_328_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_954 <= mul_ln171_fu_512_p2;
        mul_ln186_reg_964 <= mul_ln186_fu_521_p2;
        mul_ln199_reg_974 <= mul_ln199_fu_537_p2;
        mul_ln212_reg_984 <= mul_ln212_fu_546_p2;
        mul_ln225_reg_994 <= mul_ln225_fu_562_p2;
        mul_ln238_reg_1004 <= mul_ln238_fu_571_p2;
        mul_ln251_reg_1014 <= mul_ln251_fu_587_p2;
        mul_ln264_reg_1024 <= mul_ln264_fu_596_p2;
        mul_ln277_reg_1034 <= mul_ln277_fu_612_p2;
        trunc_ln169_reg_949 <= trunc_ln169_fu_494_p1;
        v18_reg_969 <= grp_fu_168_p_dout0;
        v19_reg_979 <= grp_fu_172_p_dout0;
        v20_reg_989 <= grp_fu_176_p_dout0;
        v21_reg_999 <= grp_fu_180_p_dout0;
        v22_reg_1009 <= grp_fu_184_p_dout0;
        v23_reg_1019 <= grp_fu_188_p_dout0;
        v24_reg_1029 <= grp_fu_192_p_dout0;
        v25_reg_1039 <= grp_fu_196_p_dout0;
        v_reg_959 <= grp_fu_164_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_1_reg_789 <= {{empty_29_fu_362_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_2_reg_804 <= {{empty_36_fu_386_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_3_reg_829 <= {{empty_43_fu_414_p2[7:1]}};
        v226_load_reg_809 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_779 <= {{empty_22_fu_342_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_load_1_reg_834 <= v226_q1;
        v226_load_2_reg_839 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_load_3_reg_854 <= v226_q0;
        v226_load_4_reg_859 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_load_5_reg_874 <= v226_q0;
        v226_load_6_reg_879 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_load_7_reg_894 <= v226_q0;
        v226_load_8_reg_899 <= v226_q1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
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
    if ((1'b1 == ap_block_state2)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((icmp_ln168_fu_296_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_296_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1044_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1044_p_ce;
    end else begin
        grp_fu_1044_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1048_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1048_p_ce;
    end else begin
        grp_fu_1048_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1052_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1052_p_ce;
    end else begin
        grp_fu_1052_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_238_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_238_p_ce;
    end else begin
        grp_fu_238_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_238_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_238_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_238_p0 = v119_fu_458_p1;
    end else begin
        grp_fu_238_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_238_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_238_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_238_p1 = v113;
    end else begin
        grp_fu_238_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_242_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_242_p_ce;
    end else begin
        grp_fu_242_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_242_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_242_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_242_p0 = v132_fu_462_p1;
    end else begin
        grp_fu_242_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_242_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_242_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_242_p1 = v113;
    end else begin
        grp_fu_242_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_246_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_246_p_ce;
    end else begin
        grp_fu_246_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_246_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_246_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_246_p0 = v143_fu_466_p1;
    end else begin
        grp_fu_246_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_246_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_246_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_246_p1 = v113;
    end else begin
        grp_fu_246_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast1906_fu_450_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast1904_fu_442_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast1902_fu_434_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast1901_fu_410_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast1900_fu_382_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast1907_fu_454_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast1905_fu_446_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast1903_fu_438_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast_fu_406_p1;
    end else begin
        v226_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_ce0_local = 1'b1;
    end else begin
        v226_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_ce1_local = 1'b1;
    end else begin
        v226_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_296_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_296_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        v236_write_local = 1'b1;
    end else begin
        v236_write_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln168_fu_296_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln168_fu_296_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_318_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_1_fu_290_p2 = (phi_mul_fu_92 + 16'd190);
assign add_ln168_fu_302_p2 = (v114_fu_96 + 8'd1);
assign add_ln169_fu_328_p2 = (v115_reg_195 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state2 = ((icmp_ln168_fu_296_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_312_p2 = ((v114_fu_96 == 8'd0) ? 1'b1 : 1'b0);
assign empty_22_fu_342_p2 = (v115_reg_195 + 8'd1);
assign empty_28_fu_527_p2 = (lshr_ln_fu_498_p4 + 7'd1);
assign empty_29_fu_362_p2 = (v115_reg_195 + 8'd3);
assign empty_35_fu_552_p2 = (lshr_ln_fu_498_p4 + 7'd2);
assign empty_36_fu_386_p2 = (v115_reg_195 + 8'd5);
assign empty_42_fu_577_p2 = (lshr_ln_fu_498_p4 + 7'd3);
assign empty_43_fu_414_p2 = (v115_reg_195 + 8'd7);
assign empty_49_fu_602_p2 = (lshr_ln_fu_498_p4 + 7'd4);
assign grp_fu_152_p_ce = grp_fu_1044_ce;
assign grp_fu_152_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1044_p_din0;
assign grp_fu_152_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1044_p_din1;
assign grp_fu_152_p_opcode = 2'd0;
assign grp_fu_156_p_ce = grp_fu_1048_ce;
assign grp_fu_156_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1048_p_din0;
assign grp_fu_156_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1048_p_din1;
assign grp_fu_156_p_opcode = 2'd0;
assign grp_fu_160_p_ce = grp_fu_1052_ce;
assign grp_fu_160_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1052_p_din0;
assign grp_fu_160_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_1052_p_din1;
assign grp_fu_160_p_opcode = 2'd0;
assign grp_fu_164_p_ce = grp_fu_238_ce;
assign grp_fu_164_p_din0 = grp_fu_238_p0;
assign grp_fu_164_p_din1 = grp_fu_238_p1;
assign grp_fu_168_p_ce = grp_fu_242_ce;
assign grp_fu_168_p_din0 = grp_fu_242_p0;
assign grp_fu_168_p_din1 = grp_fu_242_p1;
assign grp_fu_172_p_ce = grp_fu_246_ce;
assign grp_fu_172_p_din0 = grp_fu_246_p0;
assign grp_fu_172_p_din1 = grp_fu_246_p1;
assign grp_fu_176_p_ce = 1'b1;
assign grp_fu_176_p_din0 = v154_fu_470_p1;
assign grp_fu_176_p_din1 = v113;
assign grp_fu_180_p_ce = 1'b1;
assign grp_fu_180_p_din0 = v165_fu_474_p1;
assign grp_fu_180_p_din1 = v113;
assign grp_fu_184_p_ce = 1'b1;
assign grp_fu_184_p_din0 = v176_fu_478_p1;
assign grp_fu_184_p_din1 = v113;
assign grp_fu_188_p_ce = 1'b1;
assign grp_fu_188_p_din0 = v187_fu_482_p1;
assign grp_fu_188_p_din1 = v113;
assign grp_fu_192_p_ce = 1'b1;
assign grp_fu_192_p_din0 = v198_fu_486_p1;
assign grp_fu_192_p_din1 = v113;
assign grp_fu_196_p_ce = 1'b1;
assign grp_fu_196_p_din0 = v209_fu_490_p1;
assign grp_fu_196_p_din1 = v113;
assign grp_fu_618_p0 = grp_fu_618_p00;
assign grp_fu_618_p00 = v115_reg_195;
assign grp_fu_618_p1 = 16'd210;
assign grp_fu_618_p2 = zext_ln168_reg_743;
assign grp_fu_626_p0 = grp_fu_626_p00;
assign grp_fu_626_p00 = empty_22_fu_342_p2;
assign grp_fu_626_p1 = 16'd210;
assign grp_fu_626_p2 = zext_ln168_reg_743;
assign grp_fu_634_p1 = 8'd2;
assign grp_fu_634_p2 = 16'd210;
assign grp_fu_634_p3 = zext_ln168_reg_743;
assign grp_fu_644_p0 = grp_fu_644_p00;
assign grp_fu_644_p00 = empty_29_fu_362_p2;
assign grp_fu_644_p1 = 16'd210;
assign grp_fu_644_p2 = zext_ln168_reg_743;
assign grp_fu_652_p1 = 8'd4;
assign grp_fu_652_p2 = 16'd210;
assign grp_fu_652_p3 = zext_ln168_reg_743;
assign grp_fu_662_p0 = grp_fu_662_p00;
assign grp_fu_662_p00 = empty_36_fu_386_p2;
assign grp_fu_662_p1 = 16'd210;
assign grp_fu_662_p2 = zext_ln168_reg_743;
assign grp_fu_670_p1 = 8'd6;
assign grp_fu_670_p2 = 16'd210;
assign grp_fu_670_p3 = zext_ln168_reg_743;
assign grp_fu_680_p0 = grp_fu_680_p00;
assign grp_fu_680_p00 = empty_43_fu_414_p2;
assign grp_fu_680_p1 = 16'd210;
assign grp_fu_680_p2 = zext_ln168_reg_743;
assign grp_fu_688_p1 = 8'd8;
assign grp_fu_688_p2 = 16'd210;
assign grp_fu_688_p3 = zext_ln168_reg_743;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start_reg;
assign icmp_ln168_fu_296_p2 = ((v114_fu_96 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_318_p2 = ((v115_reg_195 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_498_p4 = {{v115_reg_195[7:1]}};
assign mul_ln171_fu_512_p0 = mul_ln171_fu_512_p00;
assign mul_ln171_fu_512_p00 = lshr_ln_fu_498_p4;
assign mul_ln171_fu_512_p1 = 15'd190;
assign mul_ln186_fu_521_p0 = mul_ln186_fu_521_p00;
assign mul_ln186_fu_521_p00 = tmp_reg_779;
assign mul_ln186_fu_521_p1 = 15'd190;
assign mul_ln199_fu_537_p0 = mul_ln199_fu_537_p00;
assign mul_ln199_fu_537_p00 = empty_28_fu_527_p2;
assign mul_ln199_fu_537_p1 = 15'd190;
assign mul_ln212_fu_546_p0 = mul_ln212_fu_546_p00;
assign mul_ln212_fu_546_p00 = tmp_1_reg_789;
assign mul_ln212_fu_546_p1 = 15'd190;
assign mul_ln225_fu_562_p0 = mul_ln225_fu_562_p00;
assign mul_ln225_fu_562_p00 = empty_35_fu_552_p2;
assign mul_ln225_fu_562_p1 = 15'd190;
assign mul_ln238_fu_571_p0 = mul_ln238_fu_571_p00;
assign mul_ln238_fu_571_p00 = tmp_2_reg_804;
assign mul_ln238_fu_571_p1 = 15'd190;
assign mul_ln251_fu_587_p0 = mul_ln251_fu_587_p00;
assign mul_ln251_fu_587_p00 = empty_42_fu_577_p2;
assign mul_ln251_fu_587_p1 = 15'd190;
assign mul_ln264_fu_596_p0 = mul_ln264_fu_596_p00;
assign mul_ln264_fu_596_p00 = tmp_3_reg_829;
assign mul_ln264_fu_596_p1 = 15'd190;
assign mul_ln277_fu_612_p0 = mul_ln277_fu_612_p00;
assign mul_ln277_fu_612_p00 = empty_49_fu_602_p2;
assign mul_ln277_fu_612_p1 = 15'd190;
assign p_cast1900_fu_382_p1 = grp_fu_618_p3;
assign p_cast1901_fu_410_p1 = grp_fu_634_p4;
assign p_cast1902_fu_434_p1 = grp_fu_644_p3;
assign p_cast1903_fu_438_p1 = grp_fu_652_p4;
assign p_cast1904_fu_442_p1 = grp_fu_662_p3;
assign p_cast1905_fu_446_p1 = grp_fu_670_p4;
assign p_cast1906_fu_450_p1 = grp_fu_680_p3;
assign p_cast1907_fu_454_p1 = grp_fu_688_p4;
assign p_cast_fu_406_p1 = grp_fu_626_p3;
assign trunc_ln169_fu_494_p1 = v115_reg_195[0:0];
assign v119_fu_458_p1 = v226_load_reg_809;
assign v132_fu_462_p1 = v226_load_1_reg_834;
assign v143_fu_466_p1 = v226_load_2_reg_839;
assign v154_fu_470_p1 = v226_load_3_reg_854;
assign v165_fu_474_p1 = v226_load_4_reg_859;
assign v176_fu_478_p1 = v226_load_5_reg_874;
assign v187_fu_482_p1 = v226_load_6_reg_879;
assign v198_fu_486_p1 = v226_load_7_reg_894;
assign v209_fu_490_p1 = v226_load_8_reg_899;
assign v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_1_we1;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_address0;
assign v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_address1;
assign v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_ce0;
assign v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_308_p1 = v114_fu_96;
always @ (posedge ap_clk) begin
    zext_ln168_reg_743[15:8] <= 8'b00000000;
end
endmodule 