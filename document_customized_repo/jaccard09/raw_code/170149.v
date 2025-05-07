module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_120_p_din0,grp_fu_120_p_din1,grp_fu_120_p_opcode,grp_fu_120_p_dout0,grp_fu_120_p_ce,grp_fu_124_p_din0,grp_fu_124_p_din1,grp_fu_124_p_dout0,grp_fu_124_p_ce,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_dout0,grp_fu_128_p_ce); 
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
output  [15:0] v229_address0;
output   v229_ce0;
output   v229_we0;
output  [31:0] v229_d0;
input  [31:0] v229_q0;
output  [15:0] v229_address1;
output   v229_ce1;
output   v229_we1;
output  [31:0] v229_d1;
input  [31:0] v229_q1;
input  [31:0] v4;
output  [31:0] grp_fu_120_p_din0;
output  [31:0] grp_fu_120_p_din1;
output  [1:0] grp_fu_120_p_opcode;
input  [31:0] grp_fu_120_p_dout0;
output   grp_fu_120_p_ce;
output  [31:0] grp_fu_124_p_din0;
output  [31:0] grp_fu_124_p_din1;
input  [31:0] grp_fu_124_p_dout0;
output   grp_fu_124_p_ce;
output  [31:0] grp_fu_128_p_din0;
output  [31:0] grp_fu_128_p_din1;
input  [31:0] grp_fu_128_p_dout0;
output   grp_fu_128_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [15:0] phi_mul_load_reg_572;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_232_p2;
reg   [15:0] add_ln31_1_reg_577;
wire   [7:0] add_ln31_fu_244_p2;
reg   [7:0] add_ln31_reg_585;
wire   [15:0] zext_ln31_fu_250_p1;
reg   [15:0] zext_ln31_reg_590;
wire   [0:0] cmp11_fu_254_p2;
reg   [0:0] cmp11_reg_603;
wire   [15:0] v6_cast_fu_266_p1;
reg   [15:0] v6_cast_reg_611;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_270_p2;
reg   [7:0] add_ln32_reg_617;
wire   [15:0] p_cast1011_fu_290_p1;
reg   [15:0] p_cast1011_reg_622;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast1012_fu_300_p1;
reg   [15:0] p_cast1012_reg_628;
wire   [15:0] p_cast1013_fu_310_p1;
reg   [15:0] p_cast1013_reg_634;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast1014_fu_320_p1;
reg   [15:0] p_cast1014_reg_640;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast1015_fu_334_p1;
reg   [15:0] p_cast1015_reg_651;
wire   [15:0] p_cast1016_fu_344_p1;
reg   [15:0] p_cast1016_reg_657;
reg   [31:0] v224_load_reg_663;
wire    ap_CS_fsm_state7;
wire   [15:0] p_cast1017_fu_362_p1;
reg   [15:0] p_cast1017_reg_678;
wire   [15:0] p_cast1018_fu_372_p1;
reg   [15:0] p_cast1018_reg_684;
reg   [31:0] v224_load_1_reg_690;
wire    ap_CS_fsm_state8;
reg   [31:0] v224_load_2_reg_695;
reg   [31:0] v224_load_3_reg_710;
wire    ap_CS_fsm_state9;
reg   [31:0] v224_load_4_reg_715;
reg   [31:0] v224_load_5_reg_730;
wire    ap_CS_fsm_state10;
reg   [31:0] v224_load_6_reg_735;
wire   [15:0] mul_ln34_fu_400_p2;
reg   [15:0] mul_ln34_reg_750;
wire    ap_CS_fsm_state11;
wire   [15:0] mul_ln49_fu_405_p2;
reg   [15:0] mul_ln49_reg_755;
wire   [15:0] mul_ln62_fu_410_p2;
reg   [15:0] mul_ln62_reg_760;
wire   [15:0] mul_ln75_fu_415_p2;
reg   [15:0] mul_ln75_reg_765;
wire   [15:0] mul_ln88_fu_420_p2;
reg   [15:0] mul_ln88_reg_770;
wire   [15:0] mul_ln101_fu_425_p2;
reg   [15:0] mul_ln101_reg_775;
wire   [15:0] mul_ln114_fu_430_p2;
reg   [15:0] mul_ln114_reg_780;
wire   [15:0] mul_ln127_fu_435_p2;
reg   [15:0] mul_ln127_reg_785;
reg   [31:0] v224_load_7_reg_790;
wire   [15:0] mul_ln140_fu_440_p2;
reg   [15:0] mul_ln140_reg_795;
reg   [31:0] v224_load_8_reg_800;
wire   [31:0] v11_fu_445_p1;
reg   [31:0] v11_reg_805;
wire    ap_CS_fsm_state12;
wire   [31:0] v24_fu_449_p1;
reg   [31:0] v24_reg_810;
wire   [31:0] v35_fu_453_p1;
reg   [31:0] v35_reg_815;
wire   [31:0] v46_fu_457_p1;
reg   [31:0] v46_reg_820;
wire   [31:0] v57_fu_461_p1;
reg   [31:0] v57_reg_825;
wire   [31:0] v68_fu_465_p1;
reg   [31:0] v68_reg_830;
wire   [31:0] v79_fu_469_p1;
reg   [31:0] v79_reg_835;
wire   [31:0] v90_fu_473_p1;
reg   [31:0] v90_reg_840;
wire   [31:0] v101_fu_477_p1;
reg   [31:0] v101_reg_845;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_850_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_850_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_850_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_850_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_854_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_854_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_854_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_858_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_858_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_858_p_ce;
reg   [7:0] v6_reg_175;
wire   [0:0] icmp_ln31_fu_238_p2;
wire    ap_CS_fsm_state13;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_start_reg;
wire   [63:0] p_cast1019_fu_324_p1;
wire   [63:0] p_cast_fu_348_p1;
wire   [63:0] p_cast1020_fu_352_p1;
wire   [63:0] p_cast1021_fu_376_p1;
wire   [63:0] p_cast1022_fu_380_p1;
wire   [63:0] p_cast1023_fu_384_p1;
wire   [63:0] p_cast1024_fu_388_p1;
wire   [63:0] p_cast1025_fu_392_p1;
wire   [63:0] p_cast1026_fu_396_p1;
reg   [15:0] phi_mul_fu_74;
wire   [0:0] icmp_ln32_fu_260_p2;
reg    ap_block_state1;
reg   [7:0] v5_fu_78;
reg    v236_read_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
wire   [7:0] empty_40_fu_284_p2;
wire   [7:0] empty_43_fu_294_p2;
wire   [7:0] empty_46_fu_304_p2;
wire   [7:0] empty_49_fu_314_p2;
wire   [15:0] grp_fu_481_p3;
wire   [7:0] empty_52_fu_328_p2;
wire   [7:0] empty_55_fu_338_p2;
wire   [15:0] grp_fu_489_p3;
wire   [15:0] grp_fu_497_p3;
wire   [7:0] empty_58_fu_356_p2;
wire   [7:0] empty_61_fu_366_p2;
wire   [15:0] grp_fu_505_p3;
wire   [15:0] grp_fu_513_p3;
wire   [15:0] grp_fu_521_p3;
wire   [15:0] grp_fu_529_p3;
wire   [15:0] grp_fu_537_p3;
wire   [15:0] grp_fu_545_p3;
wire   [7:0] mul_ln34_fu_400_p0;
wire   [8:0] mul_ln34_fu_400_p1;
wire   [7:0] mul_ln49_fu_405_p0;
wire   [8:0] mul_ln49_fu_405_p1;
wire   [7:0] mul_ln62_fu_410_p0;
wire   [8:0] mul_ln62_fu_410_p1;
wire   [7:0] mul_ln75_fu_415_p0;
wire   [8:0] mul_ln75_fu_415_p1;
wire   [7:0] mul_ln88_fu_420_p0;
wire   [8:0] mul_ln88_fu_420_p1;
wire   [7:0] mul_ln101_fu_425_p0;
wire   [8:0] mul_ln101_fu_425_p1;
wire   [7:0] mul_ln114_fu_430_p0;
wire   [8:0] mul_ln114_fu_430_p1;
wire   [7:0] mul_ln127_fu_435_p0;
wire   [8:0] mul_ln127_fu_435_p1;
wire   [7:0] mul_ln140_fu_440_p0;
wire   [8:0] mul_ln140_fu_440_p1;
wire   [7:0] grp_fu_481_p0;
wire   [7:0] grp_fu_481_p1;
wire   [7:0] grp_fu_481_p2;
wire   [7:0] grp_fu_489_p0;
wire   [7:0] grp_fu_489_p1;
wire   [7:0] grp_fu_489_p2;
wire   [7:0] grp_fu_497_p0;
wire   [7:0] grp_fu_497_p1;
wire   [7:0] grp_fu_497_p2;
wire   [7:0] grp_fu_505_p0;
wire   [7:0] grp_fu_505_p1;
wire   [7:0] grp_fu_505_p2;
wire   [7:0] grp_fu_513_p0;
wire   [7:0] grp_fu_513_p1;
wire   [7:0] grp_fu_513_p2;
wire   [7:0] grp_fu_521_p0;
wire   [7:0] grp_fu_521_p1;
wire   [7:0] grp_fu_521_p2;
wire   [7:0] grp_fu_529_p0;
wire   [7:0] grp_fu_529_p1;
wire   [7:0] grp_fu_529_p2;
wire   [7:0] grp_fu_537_p0;
wire   [7:0] grp_fu_537_p1;
wire   [7:0] grp_fu_537_p2;
wire   [7:0] grp_fu_545_p0;
wire   [7:0] grp_fu_545_p1;
wire   [7:0] grp_fu_545_p2;
reg    grp_fu_850_ce;
reg    grp_fu_854_ce;
reg    grp_fu_858_ce;
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
wire   [15:0] grp_fu_481_p00;
wire   [15:0] grp_fu_489_p00;
wire   [15:0] grp_fu_497_p00;
wire   [15:0] grp_fu_505_p00;
wire   [15:0] grp_fu_513_p00;
wire   [15:0] grp_fu_521_p00;
wire   [15:0] grp_fu_529_p00;
wire   [15:0] grp_fu_537_p00;
wire   [15:0] grp_fu_545_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_start_reg = 1'b0;
#0 phi_mul_fu_74 = 16'd0;
#0 v5_fu_78 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_187(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_ready),.phi_mul(phi_mul_load_reg_572),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_750),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_755),.mul_ln62(mul_ln62_reg_760),.mul_ln75(mul_ln75_reg_765),.mul_ln88(mul_ln88_reg_770),.mul_ln101(mul_ln101_reg_775),.mul_ln114(mul_ln114_reg_780),.mul_ln127(mul_ln127_reg_785),.mul_ln140(mul_ln140_reg_795),.v4(v4),.cmp11(cmp11_reg_603),.v11(v11_reg_805),.v24(v24_reg_810),.v35(v35_reg_815),.v46(v46_reg_820),.v57(v57_reg_825),.v68(v68_reg_830),.v79(v79_reg_835),.v90(v90_reg_840),.v101(v101_reg_845),.grp_fu_850_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_850_p_din0),.grp_fu_850_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_850_p_din1),.grp_fu_850_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_850_p_opcode),.grp_fu_850_p_dout0(grp_fu_120_p_dout0),.grp_fu_850_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_850_p_ce),.grp_fu_854_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_854_p_din0),.grp_fu_854_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_854_p_din1),.grp_fu_854_p_dout0(grp_fu_124_p_dout0),.grp_fu_854_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_854_p_ce),.grp_fu_858_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_858_p_din0),.grp_fu_858_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_858_p_din1),.grp_fu_858_p_dout0(grp_fu_128_p_dout0),.grp_fu_858_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_858_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U65(.din0(mul_ln34_fu_400_p0),.din1(mul_ln34_fu_400_p1),.dout(mul_ln34_fu_400_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U66(.din0(mul_ln49_fu_405_p0),.din1(mul_ln49_fu_405_p1),.dout(mul_ln49_fu_405_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U67(.din0(mul_ln62_fu_410_p0),.din1(mul_ln62_fu_410_p1),.dout(mul_ln62_fu_410_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U68(.din0(mul_ln75_fu_415_p0),.din1(mul_ln75_fu_415_p1),.dout(mul_ln75_fu_415_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U69(.din0(mul_ln88_fu_420_p0),.din1(mul_ln88_fu_420_p1),.dout(mul_ln88_fu_420_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U70(.din0(mul_ln101_fu_425_p0),.din1(mul_ln101_fu_425_p1),.dout(mul_ln101_fu_425_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U71(.din0(mul_ln114_fu_430_p0),.din1(mul_ln114_fu_430_p1),.dout(mul_ln114_fu_430_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U72(.din0(mul_ln127_fu_435_p0),.din1(mul_ln127_fu_435_p1),.dout(mul_ln127_fu_435_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U73(.din0(mul_ln140_fu_440_p0),.din1(mul_ln140_fu_440_p1),.dout(mul_ln140_fu_440_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U74(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_481_p0),.din1(grp_fu_481_p1),.din2(grp_fu_481_p2),.ce(1'b1),.dout(grp_fu_481_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U75(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_489_p0),.din1(grp_fu_489_p1),.din2(grp_fu_489_p2),.ce(1'b1),.dout(grp_fu_489_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_497_p0),.din1(grp_fu_497_p1),.din2(grp_fu_497_p2),.ce(1'b1),.dout(grp_fu_497_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_505_p0),.din1(grp_fu_505_p1),.din2(grp_fu_505_p2),.ce(1'b1),.dout(grp_fu_505_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_513_p0),.din1(grp_fu_513_p1),.din2(grp_fu_513_p2),.ce(1'b1),.dout(grp_fu_513_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_521_p0),.din1(grp_fu_521_p1),.din2(grp_fu_521_p2),.ce(1'b1),.dout(grp_fu_521_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_529_p0),.din1(grp_fu_529_p1),.din2(grp_fu_529_p2),.ce(1'b1),.dout(grp_fu_529_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_537_p0),.din1(grp_fu_537_p1),.din2(grp_fu_537_p2),.ce(1'b1),.dout(grp_fu_537_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_545_p0),.din1(grp_fu_545_p1),.din2(grp_fu_545_p2),.ce(1'b1),.dout(grp_fu_545_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_74 <= 16'd0;
    end else if (((icmp_ln32_fu_260_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_74 <= add_ln31_1_reg_577;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_78 <= 8'd0;
    end else if (((icmp_ln32_fu_260_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_78 <= add_ln31_reg_585;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v6_reg_175 <= add_ln32_reg_617;
    end else if (((icmp_ln31_fu_238_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_175 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_577 <= add_ln31_1_fu_232_p2;
        add_ln31_reg_585 <= add_ln31_fu_244_p2;
        cmp11_reg_603 <= cmp11_fu_254_p2;
        phi_mul_load_reg_572 <= phi_mul_fu_74;
        zext_ln31_reg_590[7 : 0] <= zext_ln31_fu_250_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_617 <= add_ln32_fu_270_p2;
        v6_cast_reg_611[7 : 0] <= v6_cast_fu_266_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_775 <= mul_ln101_fu_425_p2;
        mul_ln114_reg_780 <= mul_ln114_fu_430_p2;
        mul_ln127_reg_785 <= mul_ln127_fu_435_p2;
        mul_ln140_reg_795 <= mul_ln140_fu_440_p2;
        mul_ln34_reg_750 <= mul_ln34_fu_400_p2;
        mul_ln49_reg_755 <= mul_ln49_fu_405_p2;
        mul_ln62_reg_760 <= mul_ln62_fu_410_p2;
        mul_ln75_reg_765 <= mul_ln75_fu_415_p2;
        mul_ln88_reg_770 <= mul_ln88_fu_420_p2;
        v224_load_7_reg_790 <= v224_q0;
        v224_load_8_reg_800 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast1011_reg_622[7 : 0] <= p_cast1011_fu_290_p1[7 : 0];
        p_cast1012_reg_628[7 : 0] <= p_cast1012_fu_300_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast1013_reg_634[7 : 0] <= p_cast1013_fu_310_p1[7 : 0];
        p_cast1014_reg_640[7 : 0] <= p_cast1014_fu_320_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast1015_reg_651[7 : 0] <= p_cast1015_fu_334_p1[7 : 0];
        p_cast1016_reg_657[7 : 0] <= p_cast1016_fu_344_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        p_cast1017_reg_678[7 : 0] <= p_cast1017_fu_362_p1[7 : 0];
        p_cast1018_reg_684[7 : 0] <= p_cast1018_fu_372_p1[7 : 0];
        v224_load_reg_663 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_845 <= v101_fu_477_p1;
        v11_reg_805 <= v11_fu_445_p1;
        v24_reg_810 <= v24_fu_449_p1;
        v35_reg_815 <= v35_fu_453_p1;
        v46_reg_820 <= v46_fu_457_p1;
        v57_reg_825 <= v57_fu_461_p1;
        v68_reg_830 <= v68_fu_465_p1;
        v79_reg_835 <= v79_fu_469_p1;
        v90_reg_840 <= v90_fu_473_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_load_1_reg_690 <= v224_q1;
        v224_load_2_reg_695 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_load_3_reg_710 <= v224_q0;
        v224_load_4_reg_715 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_load_5_reg_730 <= v224_q0;
        v224_load_6_reg_735 <= v224_q1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_done == 1'b0)) begin
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
    if ((((icmp_ln31_fu_238_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_fu_238_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_850_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_850_p_ce;
    end else begin
        grp_fu_850_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_854_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_854_p_ce;
    end else begin
        grp_fu_854_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_858_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_858_p_ce;
    end else begin
        grp_fu_858_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast1025_fu_392_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast1023_fu_384_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast1021_fu_376_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast1020_fu_352_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast1019_fu_324_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast1026_fu_396_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast1024_fu_388_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast1022_fu_380_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast_fu_348_p1;
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
            if (((icmp_ln31_fu_238_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_260_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
assign add_ln31_1_fu_232_p2 = (phi_mul_fu_74 + 16'd220);
assign add_ln31_fu_244_p2 = (v5_fu_78 + 8'd1);
assign add_ln32_fu_270_p2 = (v6_reg_175 + 8'd9);
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
assign cmp11_fu_254_p2 = ((v5_fu_78 == 8'd0) ? 1'b1 : 1'b0);
assign empty_40_fu_284_p2 = (v6_reg_175 + 8'd1);
assign empty_43_fu_294_p2 = (v6_reg_175 + 8'd2);
assign empty_46_fu_304_p2 = (v6_reg_175 + 8'd3);
assign empty_49_fu_314_p2 = (v6_reg_175 + 8'd4);
assign empty_52_fu_328_p2 = (v6_reg_175 + 8'd5);
assign empty_55_fu_338_p2 = (v6_reg_175 + 8'd6);
assign empty_58_fu_356_p2 = (v6_reg_175 + 8'd7);
assign empty_61_fu_366_p2 = (v6_reg_175 + 8'd8);
assign grp_fu_120_p_ce = grp_fu_850_ce;
assign grp_fu_120_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_850_p_din0;
assign grp_fu_120_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_850_p_din1;
assign grp_fu_120_p_opcode = 2'd0;
assign grp_fu_124_p_ce = grp_fu_854_ce;
assign grp_fu_124_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_854_p_din0;
assign grp_fu_124_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_854_p_din1;
assign grp_fu_128_p_ce = grp_fu_858_ce;
assign grp_fu_128_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_858_p_din0;
assign grp_fu_128_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_grp_fu_858_p_din1;
assign grp_fu_481_p0 = grp_fu_481_p00;
assign grp_fu_481_p00 = v6_reg_175;
assign grp_fu_481_p1 = 16'd190;
assign grp_fu_481_p2 = zext_ln31_reg_590;
assign grp_fu_489_p0 = grp_fu_489_p00;
assign grp_fu_489_p00 = empty_40_fu_284_p2;
assign grp_fu_489_p1 = 16'd190;
assign grp_fu_489_p2 = zext_ln31_reg_590;
assign grp_fu_497_p0 = grp_fu_497_p00;
assign grp_fu_497_p00 = empty_43_fu_294_p2;
assign grp_fu_497_p1 = 16'd190;
assign grp_fu_497_p2 = zext_ln31_reg_590;
assign grp_fu_505_p0 = grp_fu_505_p00;
assign grp_fu_505_p00 = empty_46_fu_304_p2;
assign grp_fu_505_p1 = 16'd190;
assign grp_fu_505_p2 = zext_ln31_reg_590;
assign grp_fu_513_p0 = grp_fu_513_p00;
assign grp_fu_513_p00 = empty_49_fu_314_p2;
assign grp_fu_513_p1 = 16'd190;
assign grp_fu_513_p2 = zext_ln31_reg_590;
assign grp_fu_521_p0 = grp_fu_521_p00;
assign grp_fu_521_p00 = empty_52_fu_328_p2;
assign grp_fu_521_p1 = 16'd190;
assign grp_fu_521_p2 = zext_ln31_reg_590;
assign grp_fu_529_p0 = grp_fu_529_p00;
assign grp_fu_529_p00 = empty_55_fu_338_p2;
assign grp_fu_529_p1 = 16'd190;
assign grp_fu_529_p2 = zext_ln31_reg_590;
assign grp_fu_537_p0 = grp_fu_537_p00;
assign grp_fu_537_p00 = empty_58_fu_356_p2;
assign grp_fu_537_p1 = 16'd190;
assign grp_fu_537_p2 = zext_ln31_reg_590;
assign grp_fu_545_p0 = grp_fu_545_p00;
assign grp_fu_545_p00 = empty_61_fu_366_p2;
assign grp_fu_545_p1 = 16'd190;
assign grp_fu_545_p2 = zext_ln31_reg_590;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_ap_start_reg;
assign icmp_ln31_fu_238_p2 = ((v5_fu_78 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_260_p2 = ((v6_reg_175 < 8'd180) ? 1'b1 : 1'b0);
assign mul_ln101_fu_425_p0 = p_cast1015_reg_651;
assign mul_ln101_fu_425_p1 = 16'd220;
assign mul_ln114_fu_430_p0 = p_cast1016_reg_657;
assign mul_ln114_fu_430_p1 = 16'd220;
assign mul_ln127_fu_435_p0 = p_cast1017_reg_678;
assign mul_ln127_fu_435_p1 = 16'd220;
assign mul_ln140_fu_440_p0 = p_cast1018_reg_684;
assign mul_ln140_fu_440_p1 = 16'd220;
assign mul_ln34_fu_400_p0 = v6_cast_reg_611;
assign mul_ln34_fu_400_p1 = 16'd220;
assign mul_ln49_fu_405_p0 = p_cast1011_reg_622;
assign mul_ln49_fu_405_p1 = 16'd220;
assign mul_ln62_fu_410_p0 = p_cast1012_reg_628;
assign mul_ln62_fu_410_p1 = 16'd220;
assign mul_ln75_fu_415_p0 = p_cast1013_reg_634;
assign mul_ln75_fu_415_p1 = 16'd220;
assign mul_ln88_fu_420_p0 = p_cast1014_reg_640;
assign mul_ln88_fu_420_p1 = 16'd220;
assign p_cast1011_fu_290_p1 = empty_40_fu_284_p2;
assign p_cast1012_fu_300_p1 = empty_43_fu_294_p2;
assign p_cast1013_fu_310_p1 = empty_46_fu_304_p2;
assign p_cast1014_fu_320_p1 = empty_49_fu_314_p2;
assign p_cast1015_fu_334_p1 = empty_52_fu_328_p2;
assign p_cast1016_fu_344_p1 = empty_55_fu_338_p2;
assign p_cast1017_fu_362_p1 = empty_58_fu_356_p2;
assign p_cast1018_fu_372_p1 = empty_61_fu_366_p2;
assign p_cast1019_fu_324_p1 = grp_fu_481_p3;
assign p_cast1020_fu_352_p1 = grp_fu_497_p3;
assign p_cast1021_fu_376_p1 = grp_fu_505_p3;
assign p_cast1022_fu_380_p1 = grp_fu_513_p3;
assign p_cast1023_fu_384_p1 = grp_fu_521_p3;
assign p_cast1024_fu_388_p1 = grp_fu_529_p3;
assign p_cast1025_fu_392_p1 = grp_fu_537_p3;
assign p_cast1026_fu_396_p1 = grp_fu_545_p3;
assign p_cast_fu_348_p1 = grp_fu_489_p3;
assign v101_fu_477_p1 = v224_load_8_reg_800;
assign v11_fu_445_p1 = v224_load_reg_663;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v228_address0;
assign v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v228_address1;
assign v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v228_ce0;
assign v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v228_ce1;
assign v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_address0;
assign v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_address1;
assign v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_ce0;
assign v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_ce1;
assign v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_d0;
assign v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_d1;
assign v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_we0;
assign v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_187_v229_we1;
assign v236_read = v236_read_local;
assign v24_fu_449_p1 = v224_load_1_reg_690;
assign v35_fu_453_p1 = v224_load_2_reg_695;
assign v46_fu_457_p1 = v224_load_3_reg_710;
assign v57_fu_461_p1 = v224_load_4_reg_715;
assign v68_fu_465_p1 = v224_load_5_reg_730;
assign v6_cast_fu_266_p1 = v6_reg_175;
assign v79_fu_469_p1 = v224_load_6_reg_735;
assign v90_fu_473_p1 = v224_load_7_reg_790;
assign zext_ln31_fu_250_p1 = v5_fu_78;
always @ (posedge ap_clk) begin
    zext_ln31_reg_590[15:8] <= 8'b00000000;
    v6_cast_reg_611[15:8] <= 8'b00000000;
    p_cast1011_reg_622[15:8] <= 8'b00000000;
    p_cast1012_reg_628[15:8] <= 8'b00000000;
    p_cast1013_reg_634[15:8] <= 8'b00000000;
    p_cast1014_reg_640[15:8] <= 8'b00000000;
    p_cast1015_reg_651[15:8] <= 8'b00000000;
    p_cast1016_reg_657[15:8] <= 8'b00000000;
    p_cast1017_reg_678[15:8] <= 8'b00000000;
    p_cast1018_reg_684[15:8] <= 8'b00000000;
end
endmodule 