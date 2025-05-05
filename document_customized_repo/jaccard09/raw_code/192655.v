module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v4,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_opcode,grp_fu_128_p_dout0,grp_fu_128_p_ce,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_dout0,grp_fu_132_p_ce,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce); 
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
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
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
output  [31:0] grp_fu_128_p_din0;
output  [31:0] grp_fu_128_p_din1;
output  [1:0] grp_fu_128_p_opcode;
input  [31:0] grp_fu_128_p_dout0;
output   grp_fu_128_p_ce;
output  [31:0] grp_fu_132_p_din0;
output  [31:0] grp_fu_132_p_din1;
input  [31:0] grp_fu_132_p_dout0;
output   grp_fu_132_p_ce;
output  [31:0] grp_fu_136_p_din0;
output  [31:0] grp_fu_136_p_din1;
input  [31:0] grp_fu_136_p_dout0;
output   grp_fu_136_p_ce;
output  [31:0] grp_fu_140_p_din0;
output  [31:0] grp_fu_140_p_din1;
input  [31:0] grp_fu_140_p_dout0;
output   grp_fu_140_p_ce;
output  [31:0] grp_fu_144_p_din0;
output  [31:0] grp_fu_144_p_din1;
input  [31:0] grp_fu_144_p_dout0;
output   grp_fu_144_p_ce;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [15:0] phi_mul_load_reg_678;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_251_p2;
reg   [15:0] add_ln31_1_reg_683;
wire   [7:0] add_ln31_fu_263_p2;
reg   [7:0] add_ln31_reg_691;
wire   [15:0] zext_ln31_fu_269_p1;
reg   [15:0] zext_ln31_reg_696;
wire   [0:0] cmp11_fu_273_p2;
reg   [0:0] cmp11_reg_709;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_289_p2;
reg   [7:0] add_ln32_reg_722;
wire    ap_CS_fsm_state4;
reg   [6:0] tmp_reg_732;
wire    ap_CS_fsm_state5;
reg   [6:0] tmp_s_reg_742;
wire    ap_CS_fsm_state6;
reg   [6:0] tmp_3_reg_757;
reg   [31:0] v224_load_reg_762;
wire    ap_CS_fsm_state7;
reg   [6:0] tmp_4_reg_782;
reg   [31:0] v224_load_1_reg_787;
wire    ap_CS_fsm_state8;
reg   [31:0] v224_load_2_reg_792;
reg   [31:0] v224_load_3_reg_807;
wire    ap_CS_fsm_state9;
reg   [31:0] v224_load_4_reg_812;
reg   [31:0] v224_load_5_reg_827;
wire    ap_CS_fsm_state10;
reg   [31:0] v224_load_6_reg_832;
wire   [0:0] trunc_ln32_fu_419_p1;
reg   [0:0] trunc_ln32_reg_847;
wire    ap_CS_fsm_state11;
wire   [14:0] mul_ln34_fu_437_p2;
reg   [14:0] mul_ln34_reg_852;
wire   [14:0] mul_ln49_fu_446_p2;
reg   [14:0] mul_ln49_reg_857;
wire   [14:0] mul_ln62_fu_462_p2;
reg   [14:0] mul_ln62_reg_862;
wire   [14:0] mul_ln75_fu_471_p2;
reg   [14:0] mul_ln75_reg_867;
wire   [14:0] mul_ln88_fu_487_p2;
reg   [14:0] mul_ln88_reg_872;
wire   [14:0] mul_ln101_fu_496_p2;
reg   [14:0] mul_ln101_reg_877;
wire   [14:0] mul_ln114_fu_512_p2;
reg   [14:0] mul_ln114_reg_882;
wire   [14:0] mul_ln127_fu_521_p2;
reg   [14:0] mul_ln127_reg_887;
reg   [31:0] v224_load_7_reg_892;
wire   [14:0] mul_ln140_fu_537_p2;
reg   [14:0] mul_ln140_reg_897;
reg   [31:0] v224_load_8_reg_902;
wire   [31:0] v11_fu_543_p1;
reg   [31:0] v11_reg_907;
wire    ap_CS_fsm_state12;
wire   [31:0] v24_fu_547_p1;
reg   [31:0] v24_reg_912;
wire   [31:0] v35_fu_551_p1;
reg   [31:0] v35_reg_917;
wire   [31:0] v46_fu_555_p1;
reg   [31:0] v46_reg_922;
wire   [31:0] v57_fu_559_p1;
reg   [31:0] v57_reg_927;
wire   [31:0] v68_fu_563_p1;
reg   [31:0] v68_reg_932;
wire   [31:0] v79_fu_567_p1;
reg   [31:0] v79_reg_937;
wire   [31:0] v90_fu_571_p1;
reg   [31:0] v90_reg_942;
wire   [31:0] v101_fu_575_p1;
reg   [31:0] v101_reg_947;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_952_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_952_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_952_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_952_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_956_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_956_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_956_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_960_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_960_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_960_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_964_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_964_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_964_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_968_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_968_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_968_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_972_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_972_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_972_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_976_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_976_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_976_p_ce;
reg   [7:0] v6_reg_191;
wire   [0:0] icmp_ln31_fu_257_p2;
wire    ap_CS_fsm_state13;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start_reg;
wire   [63:0] p_cast988_fu_343_p1;
wire   [63:0] p_cast_fu_367_p1;
wire   [63:0] p_cast989_fu_371_p1;
wire   [63:0] p_cast990_fu_395_p1;
wire   [63:0] p_cast991_fu_399_p1;
wire   [63:0] p_cast992_fu_403_p1;
wire   [63:0] p_cast993_fu_407_p1;
wire   [63:0] p_cast994_fu_411_p1;
wire   [63:0] p_cast995_fu_415_p1;
reg   [15:0] phi_mul_fu_90;
wire   [0:0] icmp_ln32_fu_279_p2;
reg    ap_block_state1;
reg   [7:0] v5_fu_94;
reg    v236_read_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
wire   [7:0] empty_44_fu_303_p2;
wire   [7:0] empty_51_fu_323_p2;
wire   [15:0] grp_fu_579_p3;
wire   [7:0] empty_58_fu_347_p2;
wire   [15:0] grp_fu_587_p3;
wire   [15:0] grp_fu_595_p4;
wire   [7:0] empty_65_fu_375_p2;
wire   [15:0] grp_fu_605_p3;
wire   [15:0] grp_fu_613_p4;
wire   [15:0] grp_fu_623_p3;
wire   [15:0] grp_fu_631_p4;
wire   [15:0] grp_fu_641_p3;
wire   [15:0] grp_fu_649_p4;
wire   [6:0] lshr_ln_fu_423_p4;
wire   [6:0] mul_ln34_fu_437_p0;
wire   [8:0] mul_ln34_fu_437_p1;
wire   [6:0] mul_ln49_fu_446_p0;
wire   [8:0] mul_ln49_fu_446_p1;
wire   [6:0] empty_50_fu_452_p2;
wire   [6:0] mul_ln62_fu_462_p0;
wire   [8:0] mul_ln62_fu_462_p1;
wire   [6:0] mul_ln75_fu_471_p0;
wire   [8:0] mul_ln75_fu_471_p1;
wire   [6:0] empty_57_fu_477_p2;
wire   [6:0] mul_ln88_fu_487_p0;
wire   [8:0] mul_ln88_fu_487_p1;
wire   [6:0] mul_ln101_fu_496_p0;
wire   [8:0] mul_ln101_fu_496_p1;
wire   [6:0] empty_64_fu_502_p2;
wire   [6:0] mul_ln114_fu_512_p0;
wire   [8:0] mul_ln114_fu_512_p1;
wire   [6:0] mul_ln127_fu_521_p0;
wire   [8:0] mul_ln127_fu_521_p1;
wire   [6:0] empty_71_fu_527_p2;
wire   [6:0] mul_ln140_fu_537_p0;
wire   [8:0] mul_ln140_fu_537_p1;
wire   [7:0] grp_fu_579_p0;
wire   [7:0] grp_fu_579_p1;
wire   [7:0] grp_fu_579_p2;
wire   [7:0] grp_fu_587_p0;
wire   [7:0] grp_fu_587_p1;
wire   [7:0] grp_fu_587_p2;
wire   [1:0] grp_fu_595_p1;
wire   [7:0] grp_fu_595_p2;
wire   [7:0] grp_fu_595_p3;
wire   [7:0] grp_fu_605_p0;
wire   [7:0] grp_fu_605_p1;
wire   [7:0] grp_fu_605_p2;
wire   [2:0] grp_fu_613_p1;
wire   [7:0] grp_fu_613_p2;
wire   [7:0] grp_fu_613_p3;
wire   [7:0] grp_fu_623_p0;
wire   [7:0] grp_fu_623_p1;
wire   [7:0] grp_fu_623_p2;
wire   [2:0] grp_fu_631_p1;
wire   [7:0] grp_fu_631_p2;
wire   [7:0] grp_fu_631_p3;
wire   [7:0] grp_fu_641_p0;
wire   [7:0] grp_fu_641_p1;
wire   [7:0] grp_fu_641_p2;
wire   [3:0] grp_fu_649_p1;
wire   [7:0] grp_fu_649_p2;
wire   [7:0] grp_fu_649_p3;
reg    grp_fu_952_ce;
reg    grp_fu_956_ce;
reg    grp_fu_960_ce;
reg    grp_fu_964_ce;
reg    grp_fu_968_ce;
reg    grp_fu_972_ce;
reg    grp_fu_976_ce;
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
wire   [15:0] grp_fu_579_p00;
wire   [15:0] grp_fu_587_p00;
wire   [15:0] grp_fu_605_p00;
wire   [15:0] grp_fu_623_p00;
wire   [15:0] grp_fu_641_p00;
wire   [14:0] mul_ln101_fu_496_p00;
wire   [14:0] mul_ln114_fu_512_p00;
wire   [14:0] mul_ln127_fu_521_p00;
wire   [14:0] mul_ln140_fu_537_p00;
wire   [14:0] mul_ln34_fu_437_p00;
wire   [14:0] mul_ln49_fu_446_p00;
wire   [14:0] mul_ln62_fu_462_p00;
wire   [14:0] mul_ln75_fu_471_p00;
wire   [14:0] mul_ln88_fu_487_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start_reg = 1'b0;
#0 phi_mul_fu_90 = 16'd0;
#0 v5_fu_94 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_203(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_d1),.v229_1_q1(v229_1_q1),.phi_mul(phi_mul_load_reg_678),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_852),.mul_ln62(mul_ln62_reg_862),.mul_ln88(mul_ln88_reg_872),.mul_ln114(mul_ln114_reg_882),.mul_ln140(mul_ln140_reg_897),.mul_ln49(mul_ln49_reg_857),.mul_ln75(mul_ln75_reg_867),.mul_ln101(mul_ln101_reg_877),.mul_ln127(mul_ln127_reg_887),.empty(trunc_ln32_reg_847),.v4(v4),.cmp11(cmp11_reg_709),.v11(v11_reg_907),.v24(v24_reg_912),.v35(v35_reg_917),.v46(v46_reg_922),.v57(v57_reg_927),.v68(v68_reg_932),.v79(v79_reg_937),.v90(v90_reg_942),.v101(v101_reg_947),.grp_fu_952_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_952_p_din0),.grp_fu_952_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_952_p_din1),.grp_fu_952_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_952_p_opcode),.grp_fu_952_p_dout0(grp_fu_128_p_dout0),.grp_fu_952_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_952_p_ce),.grp_fu_956_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_956_p_din0),.grp_fu_956_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_956_p_din1),.grp_fu_956_p_dout0(grp_fu_132_p_dout0),.grp_fu_956_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_956_p_ce),.grp_fu_960_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_960_p_din0),.grp_fu_960_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_960_p_din1),.grp_fu_960_p_dout0(grp_fu_136_p_dout0),.grp_fu_960_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_960_p_ce),.grp_fu_964_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_964_p_din0),.grp_fu_964_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_964_p_din1),.grp_fu_964_p_dout0(grp_fu_140_p_dout0),.grp_fu_964_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_964_p_ce),.grp_fu_968_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_968_p_din0),.grp_fu_968_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_968_p_din1),.grp_fu_968_p_dout0(grp_fu_144_p_dout0),.grp_fu_968_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_968_p_ce),.grp_fu_972_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_972_p_din0),.grp_fu_972_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_972_p_din1),.grp_fu_972_p_dout0(grp_fu_148_p_dout0),.grp_fu_972_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_972_p_ce),.grp_fu_976_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_976_p_din0),.grp_fu_976_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_976_p_din1),.grp_fu_976_p_dout0(grp_fu_152_p_dout0),.grp_fu_976_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_976_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U97(.din0(mul_ln34_fu_437_p0),.din1(mul_ln34_fu_437_p1),.dout(mul_ln34_fu_437_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U98(.din0(mul_ln49_fu_446_p0),.din1(mul_ln49_fu_446_p1),.dout(mul_ln49_fu_446_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U99(.din0(mul_ln62_fu_462_p0),.din1(mul_ln62_fu_462_p1),.dout(mul_ln62_fu_462_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U100(.din0(mul_ln75_fu_471_p0),.din1(mul_ln75_fu_471_p1),.dout(mul_ln75_fu_471_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U101(.din0(mul_ln88_fu_487_p0),.din1(mul_ln88_fu_487_p1),.dout(mul_ln88_fu_487_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U102(.din0(mul_ln101_fu_496_p0),.din1(mul_ln101_fu_496_p1),.dout(mul_ln101_fu_496_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U103(.din0(mul_ln114_fu_512_p0),.din1(mul_ln114_fu_512_p1),.dout(mul_ln114_fu_512_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U104(.din0(mul_ln127_fu_521_p0),.din1(mul_ln127_fu_521_p1),.dout(mul_ln127_fu_521_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U105(.din0(mul_ln140_fu_537_p0),.din1(mul_ln140_fu_537_p1),.dout(mul_ln140_fu_537_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U106(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_579_p0),.din1(grp_fu_579_p1),.din2(grp_fu_579_p2),.ce(1'b1),.dout(grp_fu_579_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U107(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_587_p0),.din1(grp_fu_587_p1),.din2(grp_fu_587_p2),.ce(1'b1),.dout(grp_fu_587_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1_U108(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_191),.din1(grp_fu_595_p1),.din2(grp_fu_595_p2),.din3(grp_fu_595_p3),.ce(1'b1),.dout(grp_fu_595_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U109(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_605_p0),.din1(grp_fu_605_p1),.din2(grp_fu_605_p2),.ce(1'b1),.dout(grp_fu_605_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U110(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_191),.din1(grp_fu_613_p1),.din2(grp_fu_613_p2),.din3(grp_fu_613_p3),.ce(1'b1),.dout(grp_fu_613_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U111(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_623_p0),.din1(grp_fu_623_p1),.din2(grp_fu_623_p2),.ce(1'b1),.dout(grp_fu_623_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U112(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_191),.din1(grp_fu_631_p1),.din2(grp_fu_631_p2),.din3(grp_fu_631_p3),.ce(1'b1),.dout(grp_fu_631_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U113(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_641_p0),.din1(grp_fu_641_p1),.din2(grp_fu_641_p2),.ce(1'b1),.dout(grp_fu_641_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U114(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_191),.din1(grp_fu_649_p1),.din2(grp_fu_649_p2),.din3(grp_fu_649_p3),.ce(1'b1),.dout(grp_fu_649_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_90 <= 16'd0;
    end else if (((icmp_ln32_fu_279_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_90 <= add_ln31_1_reg_683;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_94 <= 8'd0;
    end else if (((icmp_ln32_fu_279_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_94 <= add_ln31_reg_691;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v6_reg_191 <= add_ln32_reg_722;
    end else if (((icmp_ln31_fu_257_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_191 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_683 <= add_ln31_1_fu_251_p2;
        add_ln31_reg_691 <= add_ln31_fu_263_p2;
        cmp11_reg_709 <= cmp11_fu_273_p2;
        phi_mul_load_reg_678 <= phi_mul_fu_90;
        zext_ln31_reg_696[7 : 0] <= zext_ln31_fu_269_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_722 <= add_ln32_fu_289_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_877 <= mul_ln101_fu_496_p2;
        mul_ln114_reg_882 <= mul_ln114_fu_512_p2;
        mul_ln127_reg_887 <= mul_ln127_fu_521_p2;
        mul_ln140_reg_897 <= mul_ln140_fu_537_p2;
        mul_ln34_reg_852 <= mul_ln34_fu_437_p2;
        mul_ln49_reg_857 <= mul_ln49_fu_446_p2;
        mul_ln62_reg_862 <= mul_ln62_fu_462_p2;
        mul_ln75_reg_867 <= mul_ln75_fu_471_p2;
        mul_ln88_reg_872 <= mul_ln88_fu_487_p2;
        trunc_ln32_reg_847 <= trunc_ln32_fu_419_p1;
        v224_load_7_reg_892 <= v224_q0;
        v224_load_8_reg_902 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_3_reg_757 <= {{empty_58_fu_347_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_4_reg_782 <= {{empty_65_fu_375_p2[7:1]}};
        v224_load_reg_762 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_732 <= {{empty_44_fu_303_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_s_reg_742 <= {{empty_51_fu_323_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_947 <= v101_fu_575_p1;
        v11_reg_907 <= v11_fu_543_p1;
        v24_reg_912 <= v24_fu_547_p1;
        v35_reg_917 <= v35_fu_551_p1;
        v46_reg_922 <= v46_fu_555_p1;
        v57_reg_927 <= v57_fu_559_p1;
        v68_reg_932 <= v68_fu_563_p1;
        v79_reg_937 <= v79_fu_567_p1;
        v90_reg_942 <= v90_fu_571_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_load_1_reg_787 <= v224_q1;
        v224_load_2_reg_792 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_load_3_reg_807 <= v224_q0;
        v224_load_4_reg_812 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_load_5_reg_827 <= v224_q0;
        v224_load_6_reg_832 <= v224_q1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_done == 1'b0)) begin
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
    if ((((icmp_ln31_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_952_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_952_p_ce;
    end else begin
        grp_fu_952_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_956_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_956_p_ce;
    end else begin
        grp_fu_956_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_960_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_960_p_ce;
    end else begin
        grp_fu_960_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_964_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_964_p_ce;
    end else begin
        grp_fu_964_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_968_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_968_p_ce;
    end else begin
        grp_fu_968_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_972_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_972_p_ce;
    end else begin
        grp_fu_972_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_976_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_976_p_ce;
    end else begin
        grp_fu_976_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast994_fu_411_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast992_fu_403_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast990_fu_395_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast989_fu_371_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast988_fu_343_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast995_fu_415_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast993_fu_407_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast991_fu_399_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast_fu_367_p1;
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
            if (((icmp_ln31_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_279_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
assign add_ln31_1_fu_251_p2 = (phi_mul_fu_90 + 16'd220);
assign add_ln31_fu_263_p2 = (v5_fu_94 + 8'd1);
assign add_ln32_fu_289_p2 = (v6_reg_191 + 8'd9);
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
assign cmp11_fu_273_p2 = ((v5_fu_94 == 8'd0) ? 1'b1 : 1'b0);
assign empty_44_fu_303_p2 = (v6_reg_191 + 8'd1);
assign empty_50_fu_452_p2 = (lshr_ln_fu_423_p4 + 7'd1);
assign empty_51_fu_323_p2 = (v6_reg_191 + 8'd3);
assign empty_57_fu_477_p2 = (lshr_ln_fu_423_p4 + 7'd2);
assign empty_58_fu_347_p2 = (v6_reg_191 + 8'd5);
assign empty_64_fu_502_p2 = (lshr_ln_fu_423_p4 + 7'd3);
assign empty_65_fu_375_p2 = (v6_reg_191 + 8'd7);
assign empty_71_fu_527_p2 = (lshr_ln_fu_423_p4 + 7'd4);
assign grp_fu_128_p_ce = grp_fu_952_ce;
assign grp_fu_128_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_952_p_din0;
assign grp_fu_128_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_952_p_din1;
assign grp_fu_128_p_opcode = 2'd0;
assign grp_fu_132_p_ce = grp_fu_956_ce;
assign grp_fu_132_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_956_p_din0;
assign grp_fu_132_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_956_p_din1;
assign grp_fu_136_p_ce = grp_fu_960_ce;
assign grp_fu_136_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_960_p_din0;
assign grp_fu_136_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_960_p_din1;
assign grp_fu_140_p_ce = grp_fu_964_ce;
assign grp_fu_140_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_964_p_din0;
assign grp_fu_140_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_964_p_din1;
assign grp_fu_144_p_ce = grp_fu_968_ce;
assign grp_fu_144_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_968_p_din0;
assign grp_fu_144_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_968_p_din1;
assign grp_fu_148_p_ce = grp_fu_972_ce;
assign grp_fu_148_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_972_p_din0;
assign grp_fu_148_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_972_p_din1;
assign grp_fu_152_p_ce = grp_fu_976_ce;
assign grp_fu_152_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_976_p_din0;
assign grp_fu_152_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_976_p_din1;
assign grp_fu_579_p0 = grp_fu_579_p00;
assign grp_fu_579_p00 = v6_reg_191;
assign grp_fu_579_p1 = 16'd190;
assign grp_fu_579_p2 = zext_ln31_reg_696;
assign grp_fu_587_p0 = grp_fu_587_p00;
assign grp_fu_587_p00 = empty_44_fu_303_p2;
assign grp_fu_587_p1 = 16'd190;
assign grp_fu_587_p2 = zext_ln31_reg_696;
assign grp_fu_595_p1 = 8'd2;
assign grp_fu_595_p2 = 16'd190;
assign grp_fu_595_p3 = zext_ln31_reg_696;
assign grp_fu_605_p0 = grp_fu_605_p00;
assign grp_fu_605_p00 = empty_51_fu_323_p2;
assign grp_fu_605_p1 = 16'd190;
assign grp_fu_605_p2 = zext_ln31_reg_696;
assign grp_fu_613_p1 = 8'd4;
assign grp_fu_613_p2 = 16'd190;
assign grp_fu_613_p3 = zext_ln31_reg_696;
assign grp_fu_623_p0 = grp_fu_623_p00;
assign grp_fu_623_p00 = empty_58_fu_347_p2;
assign grp_fu_623_p1 = 16'd190;
assign grp_fu_623_p2 = zext_ln31_reg_696;
assign grp_fu_631_p1 = 8'd6;
assign grp_fu_631_p2 = 16'd190;
assign grp_fu_631_p3 = zext_ln31_reg_696;
assign grp_fu_641_p0 = grp_fu_641_p00;
assign grp_fu_641_p00 = empty_65_fu_375_p2;
assign grp_fu_641_p1 = 16'd190;
assign grp_fu_641_p2 = zext_ln31_reg_696;
assign grp_fu_649_p1 = 8'd8;
assign grp_fu_649_p2 = 16'd190;
assign grp_fu_649_p3 = zext_ln31_reg_696;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start_reg;
assign icmp_ln31_fu_257_p2 = ((v5_fu_94 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_279_p2 = ((v6_reg_191 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_423_p4 = {{v6_reg_191[7:1]}};
assign mul_ln101_fu_496_p0 = mul_ln101_fu_496_p00;
assign mul_ln101_fu_496_p00 = tmp_3_reg_757;
assign mul_ln101_fu_496_p1 = 15'd220;
assign mul_ln114_fu_512_p0 = mul_ln114_fu_512_p00;
assign mul_ln114_fu_512_p00 = empty_64_fu_502_p2;
assign mul_ln114_fu_512_p1 = 15'd220;
assign mul_ln127_fu_521_p0 = mul_ln127_fu_521_p00;
assign mul_ln127_fu_521_p00 = tmp_4_reg_782;
assign mul_ln127_fu_521_p1 = 15'd220;
assign mul_ln140_fu_537_p0 = mul_ln140_fu_537_p00;
assign mul_ln140_fu_537_p00 = empty_71_fu_527_p2;
assign mul_ln140_fu_537_p1 = 15'd220;
assign mul_ln34_fu_437_p0 = mul_ln34_fu_437_p00;
assign mul_ln34_fu_437_p00 = lshr_ln_fu_423_p4;
assign mul_ln34_fu_437_p1 = 15'd220;
assign mul_ln49_fu_446_p0 = mul_ln49_fu_446_p00;
assign mul_ln49_fu_446_p00 = tmp_reg_732;
assign mul_ln49_fu_446_p1 = 15'd220;
assign mul_ln62_fu_462_p0 = mul_ln62_fu_462_p00;
assign mul_ln62_fu_462_p00 = empty_50_fu_452_p2;
assign mul_ln62_fu_462_p1 = 15'd220;
assign mul_ln75_fu_471_p0 = mul_ln75_fu_471_p00;
assign mul_ln75_fu_471_p00 = tmp_s_reg_742;
assign mul_ln75_fu_471_p1 = 15'd220;
assign mul_ln88_fu_487_p0 = mul_ln88_fu_487_p00;
assign mul_ln88_fu_487_p00 = empty_57_fu_477_p2;
assign mul_ln88_fu_487_p1 = 15'd220;
assign p_cast988_fu_343_p1 = grp_fu_579_p3;
assign p_cast989_fu_371_p1 = grp_fu_595_p4;
assign p_cast990_fu_395_p1 = grp_fu_605_p3;
assign p_cast991_fu_399_p1 = grp_fu_613_p4;
assign p_cast992_fu_403_p1 = grp_fu_623_p3;
assign p_cast993_fu_407_p1 = grp_fu_631_p4;
assign p_cast994_fu_411_p1 = grp_fu_641_p3;
assign p_cast995_fu_415_p1 = grp_fu_649_p4;
assign p_cast_fu_367_p1 = grp_fu_587_p3;
assign trunc_ln32_fu_419_p1 = v6_reg_191[0:0];
assign v101_fu_575_p1 = v224_load_8_reg_902;
assign v11_fu_543_p1 = v224_load_reg_762;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_address0;
assign v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_address1;
assign v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_ce0;
assign v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_ce1;
assign v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_address0;
assign v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_address1;
assign v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_ce0;
assign v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_ce1;
assign v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_d0;
assign v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_d1;
assign v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_we0;
assign v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_0_we1;
assign v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_address0;
assign v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_address1;
assign v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_ce0;
assign v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_ce1;
assign v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_d0;
assign v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_d1;
assign v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_we0;
assign v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_1_we1;
assign v236_read = v236_read_local;
assign v24_fu_547_p1 = v224_load_1_reg_787;
assign v35_fu_551_p1 = v224_load_2_reg_792;
assign v46_fu_555_p1 = v224_load_3_reg_807;
assign v57_fu_559_p1 = v224_load_4_reg_812;
assign v68_fu_563_p1 = v224_load_5_reg_827;
assign v79_fu_567_p1 = v224_load_6_reg_832;
assign v90_fu_571_p1 = v224_load_7_reg_892;
assign zext_ln31_fu_269_p1 = v5_fu_94;
always @ (posedge ap_clk) begin
    zext_ln31_reg_696[15:8] <= 8'b00000000;
end
endmodule 