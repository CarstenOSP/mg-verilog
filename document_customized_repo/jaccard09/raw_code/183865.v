module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v228_4_address0,v228_4_ce0,v228_4_q0,v228_4_address1,v228_4_ce1,v228_4_q1,v228_5_address0,v228_5_ce0,v228_5_q0,v228_5_address1,v228_5_ce1,v228_5_q1,v228_6_address0,v228_6_ce0,v228_6_q0,v228_6_address1,v228_6_ce1,v228_6_q1,v228_7_address0,v228_7_ce0,v228_7_q0,v228_7_address1,v228_7_ce1,v228_7_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v4,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_opcode,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce); 
parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [15:0] v224_address0;
output   v224_ce0;
input  [31:0] v224_q0;
output  [15:0] v224_address1;
output   v224_ce1;
input  [31:0] v224_q1;
output  [12:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [12:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [12:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [12:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
output  [12:0] v228_2_address0;
output   v228_2_ce0;
input  [31:0] v228_2_q0;
output  [12:0] v228_2_address1;
output   v228_2_ce1;
input  [31:0] v228_2_q1;
output  [12:0] v228_3_address0;
output   v228_3_ce0;
input  [31:0] v228_3_q0;
output  [12:0] v228_3_address1;
output   v228_3_ce1;
input  [31:0] v228_3_q1;
output  [12:0] v228_4_address0;
output   v228_4_ce0;
input  [31:0] v228_4_q0;
output  [12:0] v228_4_address1;
output   v228_4_ce1;
input  [31:0] v228_4_q1;
output  [12:0] v228_5_address0;
output   v228_5_ce0;
input  [31:0] v228_5_q0;
output  [12:0] v228_5_address1;
output   v228_5_ce1;
input  [31:0] v228_5_q1;
output  [12:0] v228_6_address0;
output   v228_6_ce0;
input  [31:0] v228_6_q0;
output  [12:0] v228_6_address1;
output   v228_6_ce1;
input  [31:0] v228_6_q1;
output  [12:0] v228_7_address0;
output   v228_7_ce0;
input  [31:0] v228_7_q0;
output  [12:0] v228_7_address1;
output   v228_7_ce1;
input  [31:0] v228_7_q1;
output  [14:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [14:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [14:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [14:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
input  [31:0] v4;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
output  [1:0] grp_fu_180_p_opcode;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [7:0] add_ln31_fu_276_p2;
reg   [7:0] add_ln31_reg_707;
wire    ap_CS_fsm_state2;
wire   [15:0] zext_ln31_fu_282_p1;
reg   [15:0] zext_ln31_reg_712;
wire   [2:0] trunc_ln31_fu_286_p1;
reg   [2:0] trunc_ln31_reg_725;
wire   [12:0] mul_ln38_fu_304_p2;
reg   [12:0] mul_ln38_reg_730;
wire   [0:0] cmp11_fu_310_p2;
reg   [0:0] cmp11_reg_735;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_326_p2;
reg   [7:0] add_ln32_reg_748;
wire    ap_CS_fsm_state4;
reg   [6:0] tmp_reg_758;
wire    ap_CS_fsm_state5;
reg   [6:0] tmp_1_reg_768;
wire    ap_CS_fsm_state6;
reg   [6:0] tmp_2_reg_783;
reg   [31:0] v224_load_reg_788;
wire    ap_CS_fsm_state7;
reg   [6:0] tmp_3_reg_808;
reg   [31:0] v224_load_1_reg_813;
wire    ap_CS_fsm_state8;
reg   [31:0] v224_load_2_reg_818;
reg   [31:0] v224_load_3_reg_833;
wire    ap_CS_fsm_state9;
reg   [31:0] v224_load_4_reg_838;
reg   [31:0] v224_load_5_reg_853;
wire    ap_CS_fsm_state10;
reg   [31:0] v224_load_6_reg_858;
wire   [0:0] trunc_ln32_fu_452_p1;
reg   [0:0] trunc_ln32_reg_873;
wire    ap_CS_fsm_state11;
wire   [14:0] mul_ln34_fu_470_p2;
reg   [14:0] mul_ln34_reg_878;
wire   [14:0] mul_ln49_fu_479_p2;
reg   [14:0] mul_ln49_reg_883;
wire   [14:0] mul_ln62_fu_495_p2;
reg   [14:0] mul_ln62_reg_888;
wire   [14:0] mul_ln75_fu_504_p2;
reg   [14:0] mul_ln75_reg_893;
wire   [14:0] mul_ln88_fu_520_p2;
reg   [14:0] mul_ln88_reg_898;
wire   [14:0] mul_ln101_fu_529_p2;
reg   [14:0] mul_ln101_reg_903;
wire   [14:0] mul_ln114_fu_545_p2;
reg   [14:0] mul_ln114_reg_908;
wire   [14:0] mul_ln127_fu_554_p2;
reg   [14:0] mul_ln127_reg_913;
reg   [31:0] v224_load_7_reg_918;
wire   [14:0] mul_ln140_fu_570_p2;
reg   [14:0] mul_ln140_reg_923;
reg   [31:0] v224_load_8_reg_928;
wire   [31:0] v11_fu_576_p1;
reg   [31:0] v11_reg_933;
wire    ap_CS_fsm_state12;
wire   [31:0] v24_fu_580_p1;
reg   [31:0] v24_reg_938;
wire   [31:0] v35_fu_584_p1;
reg   [31:0] v35_reg_943;
wire   [31:0] v46_fu_588_p1;
reg   [31:0] v46_reg_948;
wire   [31:0] v57_fu_592_p1;
reg   [31:0] v57_reg_953;
wire   [31:0] v68_fu_596_p1;
reg   [31:0] v68_reg_958;
wire   [31:0] v79_fu_600_p1;
reg   [31:0] v79_reg_963;
wire   [31:0] v90_fu_604_p1;
reg   [31:0] v90_reg_968;
wire   [31:0] v101_fu_608_p1;
reg   [31:0] v101_reg_973;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_0_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_0_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_1_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_1_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_2_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_2_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_3_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_3_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_4_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_4_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_5_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_5_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_6_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_6_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_7_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_7_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_978_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_978_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_978_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_978_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_982_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_982_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_982_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_986_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_986_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_986_p_ce;
reg   [7:0] v6_reg_203;
wire   [0:0] icmp_ln31_fu_270_p2;
wire    ap_CS_fsm_state13;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_start_reg;
wire   [63:0] p_cast2573_fu_376_p1;
wire   [63:0] p_cast_fu_400_p1;
wire   [63:0] p_cast2574_fu_404_p1;
wire   [63:0] p_cast2575_fu_428_p1;
wire   [63:0] p_cast2576_fu_432_p1;
wire   [63:0] p_cast2577_fu_436_p1;
wire   [63:0] p_cast2578_fu_440_p1;
wire   [63:0] p_cast2579_fu_444_p1;
wire   [63:0] p_cast2580_fu_448_p1;
reg   [7:0] v5_fu_106;
wire   [0:0] icmp_ln32_fu_316_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
wire   [4:0] lshr_ln_fu_290_p4;
wire   [4:0] mul_ln38_fu_304_p0;
wire   [8:0] mul_ln38_fu_304_p1;
wire   [7:0] empty_44_fu_336_p2;
wire   [7:0] empty_51_fu_356_p2;
wire   [15:0] grp_fu_612_p3;
wire   [7:0] empty_58_fu_380_p2;
wire   [15:0] grp_fu_620_p3;
wire   [15:0] grp_fu_628_p4;
wire   [7:0] empty_65_fu_408_p2;
wire   [15:0] grp_fu_638_p3;
wire   [15:0] grp_fu_646_p4;
wire   [15:0] grp_fu_656_p3;
wire   [15:0] grp_fu_664_p4;
wire   [15:0] grp_fu_674_p3;
wire   [15:0] grp_fu_682_p4;
wire   [6:0] lshr_ln1_fu_456_p4;
wire   [6:0] mul_ln34_fu_470_p0;
wire   [8:0] mul_ln34_fu_470_p1;
wire   [6:0] mul_ln49_fu_479_p0;
wire   [8:0] mul_ln49_fu_479_p1;
wire   [6:0] empty_50_fu_485_p2;
wire   [6:0] mul_ln62_fu_495_p0;
wire   [8:0] mul_ln62_fu_495_p1;
wire   [6:0] mul_ln75_fu_504_p0;
wire   [8:0] mul_ln75_fu_504_p1;
wire   [6:0] empty_57_fu_510_p2;
wire   [6:0] mul_ln88_fu_520_p0;
wire   [8:0] mul_ln88_fu_520_p1;
wire   [6:0] mul_ln101_fu_529_p0;
wire   [8:0] mul_ln101_fu_529_p1;
wire   [6:0] empty_64_fu_535_p2;
wire   [6:0] mul_ln114_fu_545_p0;
wire   [8:0] mul_ln114_fu_545_p1;
wire   [6:0] mul_ln127_fu_554_p0;
wire   [8:0] mul_ln127_fu_554_p1;
wire   [6:0] empty_71_fu_560_p2;
wire   [6:0] mul_ln140_fu_570_p0;
wire   [8:0] mul_ln140_fu_570_p1;
wire   [7:0] grp_fu_612_p0;
wire   [7:0] grp_fu_612_p1;
wire   [7:0] grp_fu_612_p2;
wire   [7:0] grp_fu_620_p0;
wire   [7:0] grp_fu_620_p1;
wire   [7:0] grp_fu_620_p2;
wire   [1:0] grp_fu_628_p1;
wire   [7:0] grp_fu_628_p2;
wire   [7:0] grp_fu_628_p3;
wire   [7:0] grp_fu_638_p0;
wire   [7:0] grp_fu_638_p1;
wire   [7:0] grp_fu_638_p2;
wire   [2:0] grp_fu_646_p1;
wire   [7:0] grp_fu_646_p2;
wire   [7:0] grp_fu_646_p3;
wire   [7:0] grp_fu_656_p0;
wire   [7:0] grp_fu_656_p1;
wire   [7:0] grp_fu_656_p2;
wire   [2:0] grp_fu_664_p1;
wire   [7:0] grp_fu_664_p2;
wire   [7:0] grp_fu_664_p3;
wire   [7:0] grp_fu_674_p0;
wire   [7:0] grp_fu_674_p1;
wire   [7:0] grp_fu_674_p2;
wire   [3:0] grp_fu_682_p1;
wire   [7:0] grp_fu_682_p2;
wire   [7:0] grp_fu_682_p3;
reg    grp_fu_978_ce;
reg    grp_fu_982_ce;
reg    grp_fu_986_ce;
reg   [12:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
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
reg    ap_ST_fsm_state13_blk;
wire   [15:0] grp_fu_612_p00;
wire   [15:0] grp_fu_620_p00;
wire   [15:0] grp_fu_638_p00;
wire   [15:0] grp_fu_656_p00;
wire   [15:0] grp_fu_674_p00;
wire   [14:0] mul_ln101_fu_529_p00;
wire   [14:0] mul_ln114_fu_545_p00;
wire   [14:0] mul_ln127_fu_554_p00;
wire   [14:0] mul_ln140_fu_570_p00;
wire   [14:0] mul_ln34_fu_470_p00;
wire   [12:0] mul_ln38_fu_304_p00;
wire   [14:0] mul_ln49_fu_479_p00;
wire   [14:0] mul_ln62_fu_495_p00;
wire   [14:0] mul_ln75_fu_504_p00;
wire   [14:0] mul_ln88_fu_520_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_start_reg = 1'b0;
#0 v5_fu_106 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_215(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_d1),.v229_1_q1(v229_1_q1),.mul_ln38(mul_ln38_reg_730),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_3_ce1),.v228_3_q1(v228_3_q1),.v228_4_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_4_address0),.v228_4_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_4_ce0),.v228_4_q0(v228_4_q0),.v228_4_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_4_address1),.v228_4_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_4_ce1),.v228_4_q1(v228_4_q1),.v228_5_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_5_address0),.v228_5_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_5_ce0),.v228_5_q0(v228_5_q0),.v228_5_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_5_address1),.v228_5_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_5_ce1),.v228_5_q1(v228_5_q1),.v228_6_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_6_address0),.v228_6_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_6_ce0),.v228_6_q0(v228_6_q0),.v228_6_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_6_address1),.v228_6_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_6_ce1),.v228_6_q1(v228_6_q1),.v228_7_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_7_address0),.v228_7_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_7_ce0),.v228_7_q0(v228_7_q0),.v228_7_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_7_address1),.v228_7_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_7_ce1),.v228_7_q1(v228_7_q1),.mul_ln34(mul_ln34_reg_878),.mul_ln62(mul_ln62_reg_888),.mul_ln88(mul_ln88_reg_898),.mul_ln114(mul_ln114_reg_908),.mul_ln140(mul_ln140_reg_923),.mul_ln49(mul_ln49_reg_883),.mul_ln75(mul_ln75_reg_893),.mul_ln101(mul_ln101_reg_903),.mul_ln127(mul_ln127_reg_913),.empty_15(trunc_ln32_reg_873),.v4(v4),.cmp11(cmp11_reg_735),.empty(trunc_ln31_reg_725),.v11(v11_reg_933),.v24(v24_reg_938),.v35(v35_reg_943),.v46(v46_reg_948),.v57(v57_reg_953),.v68(v68_reg_958),.v79(v79_reg_963),.v90(v90_reg_968),.v101(v101_reg_973),.grp_fu_978_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_978_p_din0),.grp_fu_978_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_978_p_din1),.grp_fu_978_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_978_p_opcode),.grp_fu_978_p_dout0(grp_fu_180_p_dout0),.grp_fu_978_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_978_p_ce),.grp_fu_982_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_982_p_din0),.grp_fu_982_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_982_p_din1),.grp_fu_982_p_dout0(grp_fu_184_p_dout0),.grp_fu_982_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_982_p_ce),.grp_fu_986_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_986_p_din0),.grp_fu_986_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_986_p_din1),.grp_fu_986_p_dout0(grp_fu_188_p_dout0),.grp_fu_986_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_986_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U118(.din0(mul_ln38_fu_304_p0),.din1(mul_ln38_fu_304_p1),.dout(mul_ln38_fu_304_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U119(.din0(mul_ln34_fu_470_p0),.din1(mul_ln34_fu_470_p1),.dout(mul_ln34_fu_470_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U120(.din0(mul_ln49_fu_479_p0),.din1(mul_ln49_fu_479_p1),.dout(mul_ln49_fu_479_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U121(.din0(mul_ln62_fu_495_p0),.din1(mul_ln62_fu_495_p1),.dout(mul_ln62_fu_495_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U122(.din0(mul_ln75_fu_504_p0),.din1(mul_ln75_fu_504_p1),.dout(mul_ln75_fu_504_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U123(.din0(mul_ln88_fu_520_p0),.din1(mul_ln88_fu_520_p1),.dout(mul_ln88_fu_520_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U124(.din0(mul_ln101_fu_529_p0),.din1(mul_ln101_fu_529_p1),.dout(mul_ln101_fu_529_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U125(.din0(mul_ln114_fu_545_p0),.din1(mul_ln114_fu_545_p1),.dout(mul_ln114_fu_545_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U126(.din0(mul_ln127_fu_554_p0),.din1(mul_ln127_fu_554_p1),.dout(mul_ln127_fu_554_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U127(.din0(mul_ln140_fu_570_p0),.din1(mul_ln140_fu_570_p1),.dout(mul_ln140_fu_570_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U128(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_612_p0),.din1(grp_fu_612_p1),.din2(grp_fu_612_p2),.ce(1'b1),.dout(grp_fu_612_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U129(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_620_p0),.din1(grp_fu_620_p1),.din2(grp_fu_620_p2),.ce(1'b1),.dout(grp_fu_620_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1_U130(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_203),.din1(grp_fu_628_p1),.din2(grp_fu_628_p2),.din3(grp_fu_628_p3),.ce(1'b1),.dout(grp_fu_628_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U131(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_638_p0),.din1(grp_fu_638_p1),.din2(grp_fu_638_p2),.ce(1'b1),.dout(grp_fu_638_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U132(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_203),.din1(grp_fu_646_p1),.din2(grp_fu_646_p2),.din3(grp_fu_646_p3),.ce(1'b1),.dout(grp_fu_646_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U133(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_656_p0),.din1(grp_fu_656_p1),.din2(grp_fu_656_p2),.ce(1'b1),.dout(grp_fu_656_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U134(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_203),.din1(grp_fu_664_p1),.din2(grp_fu_664_p2),.din3(grp_fu_664_p3),.ce(1'b1),.dout(grp_fu_664_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U135(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_674_p0),.din1(grp_fu_674_p1),.din2(grp_fu_674_p2),.ce(1'b1),.dout(grp_fu_674_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U136(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_203),.din1(grp_fu_682_p1),.din2(grp_fu_682_p2),.din3(grp_fu_682_p3),.ce(1'b1),.dout(grp_fu_682_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_106 <= 8'd0;
    end else if (((icmp_ln32_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_106 <= add_ln31_reg_707;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v6_reg_203 <= add_ln32_reg_748;
    end else if (((icmp_ln31_fu_270_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_203 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_707 <= add_ln31_fu_276_p2;
        cmp11_reg_735 <= cmp11_fu_310_p2;
        mul_ln38_reg_730 <= mul_ln38_fu_304_p2;
        trunc_ln31_reg_725 <= trunc_ln31_fu_286_p1;
        zext_ln31_reg_712[7 : 0] <= zext_ln31_fu_282_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_748 <= add_ln32_fu_326_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_903 <= mul_ln101_fu_529_p2;
        mul_ln114_reg_908 <= mul_ln114_fu_545_p2;
        mul_ln127_reg_913 <= mul_ln127_fu_554_p2;
        mul_ln140_reg_923 <= mul_ln140_fu_570_p2;
        mul_ln34_reg_878 <= mul_ln34_fu_470_p2;
        mul_ln49_reg_883 <= mul_ln49_fu_479_p2;
        mul_ln62_reg_888 <= mul_ln62_fu_495_p2;
        mul_ln75_reg_893 <= mul_ln75_fu_504_p2;
        mul_ln88_reg_898 <= mul_ln88_fu_520_p2;
        trunc_ln32_reg_873 <= trunc_ln32_fu_452_p1;
        v224_load_7_reg_918 <= v224_q0;
        v224_load_8_reg_928 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_1_reg_768 <= {{empty_51_fu_356_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_2_reg_783 <= {{empty_58_fu_380_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_3_reg_808 <= {{empty_65_fu_408_p2[7:1]}};
        v224_load_reg_788 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_758 <= {{empty_44_fu_336_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_973 <= v101_fu_608_p1;
        v11_reg_933 <= v11_fu_576_p1;
        v24_reg_938 <= v24_fu_580_p1;
        v35_reg_943 <= v35_fu_584_p1;
        v46_reg_948 <= v46_fu_588_p1;
        v57_reg_953 <= v57_fu_592_p1;
        v68_reg_958 <= v68_fu_596_p1;
        v79_reg_963 <= v79_fu_600_p1;
        v90_reg_968 <= v90_fu_604_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_load_1_reg_813 <= v224_q1;
        v224_load_2_reg_818 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_load_3_reg_833 <= v224_q0;
        v224_load_4_reg_838 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_load_5_reg_853 <= v224_q0;
        v224_load_6_reg_858 <= v224_q1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((icmp_ln31_fu_270_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_fu_270_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_978_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_978_p_ce;
    end else begin
        grp_fu_978_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_982_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_982_p_ce;
    end else begin
        grp_fu_982_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_986_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_986_p_ce;
    end else begin
        grp_fu_986_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast2579_fu_444_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast2577_fu_436_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast2575_fu_428_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast2574_fu_404_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast2573_fu_376_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast2580_fu_448_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast2578_fu_440_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast2576_fu_432_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast_fu_400_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v236_blk_n = v236_empty_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v236_read_local = 1'b1;
    end else begin
        v236_read_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln31_fu_270_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_276_p2 = (v5_fu_106 + 8'd1);
assign add_ln32_fu_326_p2 = (v6_reg_203 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((v236_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp11_fu_310_p2 = ((v5_fu_106 == 8'd0) ? 1'b1 : 1'b0);
assign empty_44_fu_336_p2 = (v6_reg_203 + 8'd1);
assign empty_50_fu_485_p2 = (lshr_ln1_fu_456_p4 + 7'd1);
assign empty_51_fu_356_p2 = (v6_reg_203 + 8'd3);
assign empty_57_fu_510_p2 = (lshr_ln1_fu_456_p4 + 7'd2);
assign empty_58_fu_380_p2 = (v6_reg_203 + 8'd5);
assign empty_64_fu_535_p2 = (lshr_ln1_fu_456_p4 + 7'd3);
assign empty_65_fu_408_p2 = (v6_reg_203 + 8'd7);
assign empty_71_fu_560_p2 = (lshr_ln1_fu_456_p4 + 7'd4);
assign grp_fu_180_p_ce = grp_fu_978_ce;
assign grp_fu_180_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_978_p_din0;
assign grp_fu_180_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_978_p_din1;
assign grp_fu_180_p_opcode = 2'd0;
assign grp_fu_184_p_ce = grp_fu_982_ce;
assign grp_fu_184_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_982_p_din0;
assign grp_fu_184_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_982_p_din1;
assign grp_fu_188_p_ce = grp_fu_986_ce;
assign grp_fu_188_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_986_p_din0;
assign grp_fu_188_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_grp_fu_986_p_din1;
assign grp_fu_612_p0 = grp_fu_612_p00;
assign grp_fu_612_p00 = v6_reg_203;
assign grp_fu_612_p1 = 16'd190;
assign grp_fu_612_p2 = zext_ln31_reg_712;
assign grp_fu_620_p0 = grp_fu_620_p00;
assign grp_fu_620_p00 = empty_44_fu_336_p2;
assign grp_fu_620_p1 = 16'd190;
assign grp_fu_620_p2 = zext_ln31_reg_712;
assign grp_fu_628_p1 = 8'd2;
assign grp_fu_628_p2 = 16'd190;
assign grp_fu_628_p3 = zext_ln31_reg_712;
assign grp_fu_638_p0 = grp_fu_638_p00;
assign grp_fu_638_p00 = empty_51_fu_356_p2;
assign grp_fu_638_p1 = 16'd190;
assign grp_fu_638_p2 = zext_ln31_reg_712;
assign grp_fu_646_p1 = 8'd4;
assign grp_fu_646_p2 = 16'd190;
assign grp_fu_646_p3 = zext_ln31_reg_712;
assign grp_fu_656_p0 = grp_fu_656_p00;
assign grp_fu_656_p00 = empty_58_fu_380_p2;
assign grp_fu_656_p1 = 16'd190;
assign grp_fu_656_p2 = zext_ln31_reg_712;
assign grp_fu_664_p1 = 8'd6;
assign grp_fu_664_p2 = 16'd190;
assign grp_fu_664_p3 = zext_ln31_reg_712;
assign grp_fu_674_p0 = grp_fu_674_p00;
assign grp_fu_674_p00 = empty_65_fu_408_p2;
assign grp_fu_674_p1 = 16'd190;
assign grp_fu_674_p2 = zext_ln31_reg_712;
assign grp_fu_682_p1 = 8'd8;
assign grp_fu_682_p2 = 16'd190;
assign grp_fu_682_p3 = zext_ln31_reg_712;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_ap_start_reg;
assign icmp_ln31_fu_270_p2 = ((v5_fu_106 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_316_p2 = ((v6_reg_203 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_456_p4 = {{v6_reg_203[7:1]}};
assign lshr_ln_fu_290_p4 = {{v5_fu_106[7:3]}};
assign mul_ln101_fu_529_p0 = mul_ln101_fu_529_p00;
assign mul_ln101_fu_529_p00 = tmp_2_reg_783;
assign mul_ln101_fu_529_p1 = 15'd220;
assign mul_ln114_fu_545_p0 = mul_ln114_fu_545_p00;
assign mul_ln114_fu_545_p00 = empty_64_fu_535_p2;
assign mul_ln114_fu_545_p1 = 15'd220;
assign mul_ln127_fu_554_p0 = mul_ln127_fu_554_p00;
assign mul_ln127_fu_554_p00 = tmp_3_reg_808;
assign mul_ln127_fu_554_p1 = 15'd220;
assign mul_ln140_fu_570_p0 = mul_ln140_fu_570_p00;
assign mul_ln140_fu_570_p00 = empty_71_fu_560_p2;
assign mul_ln140_fu_570_p1 = 15'd220;
assign mul_ln34_fu_470_p0 = mul_ln34_fu_470_p00;
assign mul_ln34_fu_470_p00 = lshr_ln1_fu_456_p4;
assign mul_ln34_fu_470_p1 = 15'd220;
assign mul_ln38_fu_304_p0 = mul_ln38_fu_304_p00;
assign mul_ln38_fu_304_p00 = lshr_ln_fu_290_p4;
assign mul_ln38_fu_304_p1 = 13'd220;
assign mul_ln49_fu_479_p0 = mul_ln49_fu_479_p00;
assign mul_ln49_fu_479_p00 = tmp_reg_758;
assign mul_ln49_fu_479_p1 = 15'd220;
assign mul_ln62_fu_495_p0 = mul_ln62_fu_495_p00;
assign mul_ln62_fu_495_p00 = empty_50_fu_485_p2;
assign mul_ln62_fu_495_p1 = 15'd220;
assign mul_ln75_fu_504_p0 = mul_ln75_fu_504_p00;
assign mul_ln75_fu_504_p00 = tmp_1_reg_768;
assign mul_ln75_fu_504_p1 = 15'd220;
assign mul_ln88_fu_520_p0 = mul_ln88_fu_520_p00;
assign mul_ln88_fu_520_p00 = empty_57_fu_510_p2;
assign mul_ln88_fu_520_p1 = 15'd220;
assign p_cast2573_fu_376_p1 = grp_fu_612_p3;
assign p_cast2574_fu_404_p1 = grp_fu_628_p4;
assign p_cast2575_fu_428_p1 = grp_fu_638_p3;
assign p_cast2576_fu_432_p1 = grp_fu_646_p4;
assign p_cast2577_fu_436_p1 = grp_fu_656_p3;
assign p_cast2578_fu_440_p1 = grp_fu_664_p4;
assign p_cast2579_fu_444_p1 = grp_fu_674_p3;
assign p_cast2580_fu_448_p1 = grp_fu_682_p4;
assign p_cast_fu_400_p1 = grp_fu_620_p3;
assign trunc_ln31_fu_286_p1 = v5_fu_106[2:0];
assign trunc_ln32_fu_452_p1 = v6_reg_203[0:0];
assign v101_fu_608_p1 = v224_load_8_reg_928;
assign v11_fu_576_p1 = v224_load_reg_788;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_3_ce1;
assign v228_4_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_4_address0;
assign v228_4_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_4_address1;
assign v228_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_4_ce0;
assign v228_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_4_ce1;
assign v228_5_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_5_address0;
assign v228_5_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_5_address1;
assign v228_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_5_ce0;
assign v228_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_5_ce1;
assign v228_6_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_6_address0;
assign v228_6_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_6_address1;
assign v228_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_6_ce0;
assign v228_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_6_ce1;
assign v228_7_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_7_address0;
assign v228_7_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_7_address1;
assign v228_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_7_ce0;
assign v228_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v228_7_ce1;
assign v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_address0;
assign v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_address1;
assign v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_ce0;
assign v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_ce1;
assign v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_d0;
assign v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_d1;
assign v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_we0;
assign v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_0_we1;
assign v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_address0;
assign v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_address1;
assign v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_ce0;
assign v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_ce1;
assign v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_d0;
assign v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_d1;
assign v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_we0;
assign v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_215_v229_1_we1;
assign v236_read = v236_read_local;
assign v24_fu_580_p1 = v224_load_1_reg_813;
assign v35_fu_584_p1 = v224_load_2_reg_818;
assign v46_fu_588_p1 = v224_load_3_reg_833;
assign v57_fu_592_p1 = v224_load_4_reg_838;
assign v68_fu_596_p1 = v224_load_5_reg_853;
assign v79_fu_600_p1 = v224_load_6_reg_858;
assign v90_fu_604_p1 = v224_load_7_reg_918;
assign zext_ln31_fu_282_p1 = v5_fu_106;
always @ (posedge ap_clk) begin
    zext_ln31_reg_712[15:8] <= 8'b00000000;
end
endmodule 