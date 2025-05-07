module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_opcode,grp_fu_152_p_dout0,grp_fu_152_p_ce); 
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
output  [1:0] grp_fu_152_p_opcode;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_277_p2;
reg   [15:0] phi_mul_load_reg_619;
wire   [15:0] add_ln168_1_fu_271_p2;
reg   [15:0] add_ln168_1_reg_624;
wire   [7:0] add_ln168_fu_283_p2;
reg   [7:0] add_ln168_reg_632;
wire   [15:0] zext_ln168_fu_289_p1;
reg   [15:0] zext_ln168_reg_637;
wire   [0:0] cmp11_fu_293_p2;
reg   [0:0] cmp11_reg_650;
wire   [15:0] v115_cast_fu_305_p1;
reg   [15:0] v115_cast_reg_658;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_309_p2;
reg   [7:0] add_ln169_reg_664;
wire   [15:0] p_cast1011_fu_329_p1;
reg   [15:0] p_cast1011_reg_669;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast1012_fu_339_p1;
reg   [15:0] p_cast1012_reg_675;
wire   [15:0] p_cast1013_fu_349_p1;
reg   [15:0] p_cast1013_reg_681;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast1014_fu_359_p1;
reg   [15:0] p_cast1014_reg_687;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast1015_fu_373_p1;
reg   [15:0] p_cast1015_reg_698;
wire   [15:0] p_cast1016_fu_383_p1;
reg   [15:0] p_cast1016_reg_704;
reg   [31:0] v226_load_reg_710;
wire    ap_CS_fsm_state7;
wire   [15:0] p_cast1017_fu_401_p1;
reg   [15:0] p_cast1017_reg_725;
wire   [15:0] p_cast1018_fu_411_p1;
reg   [15:0] p_cast1018_reg_731;
reg   [31:0] v226_load_1_reg_737;
wire    ap_CS_fsm_state8;
reg   [31:0] v226_load_2_reg_742;
reg   [31:0] v226_load_3_reg_757;
wire    ap_CS_fsm_state9;
reg   [31:0] v226_load_4_reg_762;
reg   [31:0] v226_load_5_reg_777;
wire    ap_CS_fsm_state10;
reg   [31:0] v226_load_6_reg_782;
reg   [31:0] v226_load_7_reg_797;
wire    ap_CS_fsm_state11;
reg   [31:0] v226_load_8_reg_802;
wire   [31:0] v119_fu_439_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_443_p1;
wire   [15:0] mul_ln171_fu_475_p2;
reg   [15:0] mul_ln171_reg_852;
wire    ap_CS_fsm_state15;
reg   [31:0] v_reg_857;
wire   [15:0] mul_ln186_fu_480_p2;
reg   [15:0] mul_ln186_reg_862;
reg   [31:0] v36_reg_867;
wire   [15:0] mul_ln199_fu_485_p2;
reg   [15:0] mul_ln199_reg_872;
wire   [31:0] grp_fu_227_p2;
reg   [31:0] v37_reg_877;
wire   [15:0] mul_ln212_fu_490_p2;
reg   [15:0] mul_ln212_reg_882;
wire   [31:0] grp_fu_231_p2;
reg   [31:0] v38_reg_887;
wire   [15:0] mul_ln225_fu_495_p2;
reg   [15:0] mul_ln225_reg_892;
wire   [31:0] grp_fu_235_p2;
reg   [31:0] v39_reg_897;
wire   [15:0] mul_ln238_fu_500_p2;
reg   [15:0] mul_ln238_reg_902;
wire   [31:0] grp_fu_239_p2;
reg   [31:0] v40_reg_907;
wire   [15:0] mul_ln251_fu_505_p2;
reg   [15:0] mul_ln251_reg_912;
wire   [31:0] grp_fu_243_p2;
reg   [31:0] v41_reg_917;
wire   [15:0] mul_ln264_fu_510_p2;
reg   [15:0] mul_ln264_reg_922;
wire   [31:0] grp_fu_247_p2;
reg   [31:0] v42_reg_927;
wire   [15:0] mul_ln277_fu_515_p2;
reg   [15:0] mul_ln277_reg_932;
wire   [31:0] grp_fu_251_p2;
reg   [31:0] v43_reg_937;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_942_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_942_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_942_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_942_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_219_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_219_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_219_p_ce;
reg   [7:0] v115_reg_179;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_start_reg;
wire    ap_CS_fsm_state16;
wire   [63:0] p_cast1019_fu_363_p1;
wire   [63:0] p_cast_fu_387_p1;
wire   [63:0] p_cast1020_fu_391_p1;
wire   [63:0] p_cast1021_fu_415_p1;
wire   [63:0] p_cast1022_fu_419_p1;
wire   [63:0] p_cast1023_fu_423_p1;
wire   [63:0] p_cast1024_fu_427_p1;
wire   [63:0] p_cast1025_fu_431_p1;
wire   [63:0] p_cast1026_fu_435_p1;
reg   [15:0] phi_mul_fu_76;
wire   [0:0] icmp_ln169_fu_299_p2;
reg   [7:0] v114_fu_80;
reg    v236_write_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg   [31:0] grp_fu_219_p0;
reg   [31:0] grp_fu_219_p1;
wire   [31:0] grp_fu_227_p0;
wire   [31:0] grp_fu_231_p0;
wire   [31:0] grp_fu_235_p0;
wire   [31:0] grp_fu_239_p0;
wire   [31:0] grp_fu_243_p0;
wire   [31:0] grp_fu_247_p0;
wire   [31:0] grp_fu_251_p0;
wire   [7:0] empty_19_fu_323_p2;
wire   [7:0] empty_22_fu_333_p2;
wire   [7:0] empty_25_fu_343_p2;
wire   [7:0] empty_28_fu_353_p2;
wire   [15:0] grp_fu_520_p3;
wire   [7:0] empty_31_fu_367_p2;
wire   [7:0] empty_34_fu_377_p2;
wire   [15:0] grp_fu_528_p3;
wire   [15:0] grp_fu_536_p3;
wire   [7:0] empty_37_fu_395_p2;
wire   [7:0] empty_40_fu_405_p2;
wire   [15:0] grp_fu_544_p3;
wire   [15:0] grp_fu_552_p3;
wire   [15:0] grp_fu_560_p3;
wire   [15:0] grp_fu_568_p3;
wire   [15:0] grp_fu_576_p3;
wire   [15:0] grp_fu_584_p3;
wire   [7:0] mul_ln171_fu_475_p0;
wire   [8:0] mul_ln171_fu_475_p1;
wire   [7:0] mul_ln186_fu_480_p0;
wire   [8:0] mul_ln186_fu_480_p1;
wire   [7:0] mul_ln199_fu_485_p0;
wire   [8:0] mul_ln199_fu_485_p1;
wire   [7:0] mul_ln212_fu_490_p0;
wire   [8:0] mul_ln212_fu_490_p1;
wire   [7:0] mul_ln225_fu_495_p0;
wire   [8:0] mul_ln225_fu_495_p1;
wire   [7:0] mul_ln238_fu_500_p0;
wire   [8:0] mul_ln238_fu_500_p1;
wire   [7:0] mul_ln251_fu_505_p0;
wire   [8:0] mul_ln251_fu_505_p1;
wire   [7:0] mul_ln264_fu_510_p0;
wire   [8:0] mul_ln264_fu_510_p1;
wire   [7:0] mul_ln277_fu_515_p0;
wire   [8:0] mul_ln277_fu_515_p1;
wire   [7:0] grp_fu_520_p0;
wire   [7:0] grp_fu_520_p1;
wire   [7:0] grp_fu_520_p2;
wire   [7:0] grp_fu_528_p0;
wire   [7:0] grp_fu_528_p1;
wire   [7:0] grp_fu_528_p2;
wire   [7:0] grp_fu_536_p0;
wire   [7:0] grp_fu_536_p1;
wire   [7:0] grp_fu_536_p2;
wire   [7:0] grp_fu_544_p0;
wire   [7:0] grp_fu_544_p1;
wire   [7:0] grp_fu_544_p2;
wire   [7:0] grp_fu_552_p0;
wire   [7:0] grp_fu_552_p1;
wire   [7:0] grp_fu_552_p2;
wire   [7:0] grp_fu_560_p0;
wire   [7:0] grp_fu_560_p1;
wire   [7:0] grp_fu_560_p2;
wire   [7:0] grp_fu_568_p0;
wire   [7:0] grp_fu_568_p1;
wire   [7:0] grp_fu_568_p2;
wire   [7:0] grp_fu_576_p0;
wire   [7:0] grp_fu_576_p1;
wire   [7:0] grp_fu_576_p2;
wire   [7:0] grp_fu_584_p0;
wire   [7:0] grp_fu_584_p1;
wire   [7:0] grp_fu_584_p2;
reg    grp_fu_219_ce;
reg    grp_fu_942_ce;
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
wire   [15:0] grp_fu_520_p00;
wire   [15:0] grp_fu_528_p00;
wire   [15:0] grp_fu_536_p00;
wire   [15:0] grp_fu_544_p00;
wire   [15:0] grp_fu_552_p00;
wire   [15:0] grp_fu_560_p00;
wire   [15:0] grp_fu_568_p00;
wire   [15:0] grp_fu_576_p00;
wire   [15:0] grp_fu_584_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_start_reg = 1'b0;
#0 phi_mul_fu_76 = 16'd0;
#0 v114_fu_80 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_191(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_ready),.phi_mul(phi_mul_load_reg_619),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_852),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_d1),.v225_q1(v225_q1),.mul_ln186(mul_ln186_reg_862),.mul_ln199(mul_ln199_reg_872),.mul_ln212(mul_ln212_reg_882),.mul_ln225(mul_ln225_reg_892),.mul_ln238(mul_ln238_reg_902),.mul_ln251(mul_ln251_reg_912),.mul_ln264(mul_ln264_reg_922),.mul_ln277(mul_ln277_reg_932),.cmp11(cmp11_reg_650),.v120(v_reg_857),.v133(v36_reg_867),.v144(v37_reg_877),.v155(v38_reg_887),.v166(v39_reg_897),.v177(v40_reg_907),.v188(v41_reg_917),.v199(v42_reg_927),.v210(v43_reg_937),.grp_fu_942_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_942_p_din0),.grp_fu_942_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_942_p_din1),.grp_fu_942_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_942_p_opcode),.grp_fu_942_p_dout0(grp_fu_152_p_dout0),.grp_fu_942_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_942_p_ce),.grp_fu_219_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_219_p_din0),.grp_fu_219_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_219_p_din1),.grp_fu_219_p_dout0(grp_fu_144_p_dout0),.grp_fu_219_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_219_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_227_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_227_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_231_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_231_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U29(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_235_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_235_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U30(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_239_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_239_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U31(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_243_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_243_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U32(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_247_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_247_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U33(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_251_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_251_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U34(.din0(mul_ln171_fu_475_p0),.din1(mul_ln171_fu_475_p1),.dout(mul_ln171_fu_475_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U35(.din0(mul_ln186_fu_480_p0),.din1(mul_ln186_fu_480_p1),.dout(mul_ln186_fu_480_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U36(.din0(mul_ln199_fu_485_p0),.din1(mul_ln199_fu_485_p1),.dout(mul_ln199_fu_485_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U37(.din0(mul_ln212_fu_490_p0),.din1(mul_ln212_fu_490_p1),.dout(mul_ln212_fu_490_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U38(.din0(mul_ln225_fu_495_p0),.din1(mul_ln225_fu_495_p1),.dout(mul_ln225_fu_495_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U39(.din0(mul_ln238_fu_500_p0),.din1(mul_ln238_fu_500_p1),.dout(mul_ln238_fu_500_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U40(.din0(mul_ln251_fu_505_p0),.din1(mul_ln251_fu_505_p1),.dout(mul_ln251_fu_505_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U41(.din0(mul_ln264_fu_510_p0),.din1(mul_ln264_fu_510_p1),.dout(mul_ln264_fu_510_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U42(.din0(mul_ln277_fu_515_p0),.din1(mul_ln277_fu_515_p1),.dout(mul_ln277_fu_515_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U43(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_520_p0),.din1(grp_fu_520_p1),.din2(grp_fu_520_p2),.ce(1'b1),.dout(grp_fu_520_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U44(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_528_p0),.din1(grp_fu_528_p1),.din2(grp_fu_528_p2),.ce(1'b1),.dout(grp_fu_528_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U45(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_536_p0),.din1(grp_fu_536_p1),.din2(grp_fu_536_p2),.ce(1'b1),.dout(grp_fu_536_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U46(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_544_p0),.din1(grp_fu_544_p1),.din2(grp_fu_544_p2),.ce(1'b1),.dout(grp_fu_544_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U47(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_552_p0),.din1(grp_fu_552_p1),.din2(grp_fu_552_p2),.ce(1'b1),.dout(grp_fu_552_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U48(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_560_p0),.din1(grp_fu_560_p1),.din2(grp_fu_560_p2),.ce(1'b1),.dout(grp_fu_560_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U49(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_568_p0),.din1(grp_fu_568_p1),.din2(grp_fu_568_p2),.ce(1'b1),.dout(grp_fu_568_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U50(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_576_p0),.din1(grp_fu_576_p1),.din2(grp_fu_576_p2),.ce(1'b1),.dout(grp_fu_576_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U51(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_584_p0),.din1(grp_fu_584_p1),.din2(grp_fu_584_p2),.ce(1'b1),.dout(grp_fu_584_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_76 <= 16'd0;
    end else if (((icmp_ln169_fu_299_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_76 <= add_ln168_1_reg_624;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_80 <= 8'd0;
    end else if (((icmp_ln169_fu_299_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_80 <= add_ln168_reg_632;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_179 <= add_ln169_reg_664;
    end else if (((icmp_ln168_fu_277_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        v115_reg_179 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_624 <= add_ln168_1_fu_271_p2;
        add_ln168_reg_632 <= add_ln168_fu_283_p2;
        cmp11_reg_650 <= cmp11_fu_293_p2;
        phi_mul_load_reg_619 <= phi_mul_fu_76;
        zext_ln168_reg_637[7 : 0] <= zext_ln168_fu_289_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_664 <= add_ln169_fu_309_p2;
        v115_cast_reg_658[7 : 0] <= v115_cast_fu_305_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_852 <= mul_ln171_fu_475_p2;
        mul_ln186_reg_862 <= mul_ln186_fu_480_p2;
        mul_ln199_reg_872 <= mul_ln199_fu_485_p2;
        mul_ln212_reg_882 <= mul_ln212_fu_490_p2;
        mul_ln225_reg_892 <= mul_ln225_fu_495_p2;
        mul_ln238_reg_902 <= mul_ln238_fu_500_p2;
        mul_ln251_reg_912 <= mul_ln251_fu_505_p2;
        mul_ln264_reg_922 <= mul_ln264_fu_510_p2;
        mul_ln277_reg_932 <= mul_ln277_fu_515_p2;
        v36_reg_867 <= grp_fu_148_p_dout0;
        v37_reg_877 <= grp_fu_227_p2;
        v38_reg_887 <= grp_fu_231_p2;
        v39_reg_897 <= grp_fu_235_p2;
        v40_reg_907 <= grp_fu_239_p2;
        v41_reg_917 <= grp_fu_243_p2;
        v42_reg_927 <= grp_fu_247_p2;
        v43_reg_937 <= grp_fu_251_p2;
        v_reg_857 <= grp_fu_144_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast1011_reg_669[7 : 0] <= p_cast1011_fu_329_p1[7 : 0];
        p_cast1012_reg_675[7 : 0] <= p_cast1012_fu_339_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast1013_reg_681[7 : 0] <= p_cast1013_fu_349_p1[7 : 0];
        p_cast1014_reg_687[7 : 0] <= p_cast1014_fu_359_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast1015_reg_698[7 : 0] <= p_cast1015_fu_373_p1[7 : 0];
        p_cast1016_reg_704[7 : 0] <= p_cast1016_fu_383_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        p_cast1017_reg_725[7 : 0] <= p_cast1017_fu_401_p1[7 : 0];
        p_cast1018_reg_731[7 : 0] <= p_cast1018_fu_411_p1[7 : 0];
        v226_load_reg_710 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_load_1_reg_737 <= v226_q1;
        v226_load_2_reg_742 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_load_3_reg_757 <= v226_q0;
        v226_load_4_reg_762 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_load_5_reg_777 <= v226_q0;
        v226_load_6_reg_782 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_load_7_reg_797 <= v226_q0;
        v226_load_8_reg_802 <= v226_q1;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_done == 1'b0)) begin
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
    if ((((icmp_ln168_fu_277_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln168_fu_277_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_219_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_219_p_ce;
    end else begin
        grp_fu_219_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_219_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_219_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_219_p0 = v119_fu_439_p1;
    end else begin
        grp_fu_219_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_219_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_219_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_219_p1 = v113;
    end else begin
        grp_fu_219_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_942_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_942_p_ce;
    end else begin
        grp_fu_942_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast1025_fu_431_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast1023_fu_423_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast1021_fu_415_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast1020_fu_391_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast1019_fu_363_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast1026_fu_435_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast1024_fu_427_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast1022_fu_419_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast_fu_387_p1;
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
    if (((icmp_ln168_fu_277_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_277_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((icmp_ln168_fu_277_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln168_fu_277_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_299_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_1_fu_271_p2 = (phi_mul_fu_76 + 16'd190);
assign add_ln168_fu_283_p2 = (v114_fu_80 + 8'd1);
assign add_ln169_fu_309_p2 = (v115_reg_179 + 8'd9);
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
    ap_block_state2 = ((icmp_ln168_fu_277_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_293_p2 = ((v114_fu_80 == 8'd0) ? 1'b1 : 1'b0);
assign empty_19_fu_323_p2 = (v115_reg_179 + 8'd1);
assign empty_22_fu_333_p2 = (v115_reg_179 + 8'd2);
assign empty_25_fu_343_p2 = (v115_reg_179 + 8'd3);
assign empty_28_fu_353_p2 = (v115_reg_179 + 8'd4);
assign empty_31_fu_367_p2 = (v115_reg_179 + 8'd5);
assign empty_34_fu_377_p2 = (v115_reg_179 + 8'd6);
assign empty_37_fu_395_p2 = (v115_reg_179 + 8'd7);
assign empty_40_fu_405_p2 = (v115_reg_179 + 8'd8);
assign grp_fu_144_p_ce = grp_fu_219_ce;
assign grp_fu_144_p_din0 = grp_fu_219_p0;
assign grp_fu_144_p_din1 = grp_fu_219_p1;
assign grp_fu_148_p_ce = 1'b1;
assign grp_fu_148_p_din0 = v132_fu_443_p1;
assign grp_fu_148_p_din1 = v113;
assign grp_fu_152_p_ce = grp_fu_942_ce;
assign grp_fu_152_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_942_p_din0;
assign grp_fu_152_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_grp_fu_942_p_din1;
assign grp_fu_152_p_opcode = 2'd0;
assign grp_fu_227_p0 = v226_load_2_reg_742;
assign grp_fu_231_p0 = v226_load_3_reg_757;
assign grp_fu_235_p0 = v226_load_4_reg_762;
assign grp_fu_239_p0 = v226_load_5_reg_777;
assign grp_fu_243_p0 = v226_load_6_reg_782;
assign grp_fu_247_p0 = v226_load_7_reg_797;
assign grp_fu_251_p0 = v226_load_8_reg_802;
assign grp_fu_520_p0 = grp_fu_520_p00;
assign grp_fu_520_p00 = v115_reg_179;
assign grp_fu_520_p1 = 16'd210;
assign grp_fu_520_p2 = zext_ln168_reg_637;
assign grp_fu_528_p0 = grp_fu_528_p00;
assign grp_fu_528_p00 = empty_19_fu_323_p2;
assign grp_fu_528_p1 = 16'd210;
assign grp_fu_528_p2 = zext_ln168_reg_637;
assign grp_fu_536_p0 = grp_fu_536_p00;
assign grp_fu_536_p00 = empty_22_fu_333_p2;
assign grp_fu_536_p1 = 16'd210;
assign grp_fu_536_p2 = zext_ln168_reg_637;
assign grp_fu_544_p0 = grp_fu_544_p00;
assign grp_fu_544_p00 = empty_25_fu_343_p2;
assign grp_fu_544_p1 = 16'd210;
assign grp_fu_544_p2 = zext_ln168_reg_637;
assign grp_fu_552_p0 = grp_fu_552_p00;
assign grp_fu_552_p00 = empty_28_fu_353_p2;
assign grp_fu_552_p1 = 16'd210;
assign grp_fu_552_p2 = zext_ln168_reg_637;
assign grp_fu_560_p0 = grp_fu_560_p00;
assign grp_fu_560_p00 = empty_31_fu_367_p2;
assign grp_fu_560_p1 = 16'd210;
assign grp_fu_560_p2 = zext_ln168_reg_637;
assign grp_fu_568_p0 = grp_fu_568_p00;
assign grp_fu_568_p00 = empty_34_fu_377_p2;
assign grp_fu_568_p1 = 16'd210;
assign grp_fu_568_p2 = zext_ln168_reg_637;
assign grp_fu_576_p0 = grp_fu_576_p00;
assign grp_fu_576_p00 = empty_37_fu_395_p2;
assign grp_fu_576_p1 = 16'd210;
assign grp_fu_576_p2 = zext_ln168_reg_637;
assign grp_fu_584_p0 = grp_fu_584_p00;
assign grp_fu_584_p00 = empty_40_fu_405_p2;
assign grp_fu_584_p1 = 16'd210;
assign grp_fu_584_p2 = zext_ln168_reg_637;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_ap_start_reg;
assign icmp_ln168_fu_277_p2 = ((v114_fu_80 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_299_p2 = ((v115_reg_179 < 8'd180) ? 1'b1 : 1'b0);
assign mul_ln171_fu_475_p0 = v115_cast_reg_658;
assign mul_ln171_fu_475_p1 = 16'd190;
assign mul_ln186_fu_480_p0 = p_cast1011_reg_669;
assign mul_ln186_fu_480_p1 = 16'd190;
assign mul_ln199_fu_485_p0 = p_cast1012_reg_675;
assign mul_ln199_fu_485_p1 = 16'd190;
assign mul_ln212_fu_490_p0 = p_cast1013_reg_681;
assign mul_ln212_fu_490_p1 = 16'd190;
assign mul_ln225_fu_495_p0 = p_cast1014_reg_687;
assign mul_ln225_fu_495_p1 = 16'd190;
assign mul_ln238_fu_500_p0 = p_cast1015_reg_698;
assign mul_ln238_fu_500_p1 = 16'd190;
assign mul_ln251_fu_505_p0 = p_cast1016_reg_704;
assign mul_ln251_fu_505_p1 = 16'd190;
assign mul_ln264_fu_510_p0 = p_cast1017_reg_725;
assign mul_ln264_fu_510_p1 = 16'd190;
assign mul_ln277_fu_515_p0 = p_cast1018_reg_731;
assign mul_ln277_fu_515_p1 = 16'd190;
assign p_cast1011_fu_329_p1 = empty_19_fu_323_p2;
assign p_cast1012_fu_339_p1 = empty_22_fu_333_p2;
assign p_cast1013_fu_349_p1 = empty_25_fu_343_p2;
assign p_cast1014_fu_359_p1 = empty_28_fu_353_p2;
assign p_cast1015_fu_373_p1 = empty_31_fu_367_p2;
assign p_cast1016_fu_383_p1 = empty_34_fu_377_p2;
assign p_cast1017_fu_401_p1 = empty_37_fu_395_p2;
assign p_cast1018_fu_411_p1 = empty_40_fu_405_p2;
assign p_cast1019_fu_363_p1 = grp_fu_520_p3;
assign p_cast1020_fu_391_p1 = grp_fu_536_p3;
assign p_cast1021_fu_415_p1 = grp_fu_544_p3;
assign p_cast1022_fu_419_p1 = grp_fu_552_p3;
assign p_cast1023_fu_423_p1 = grp_fu_560_p3;
assign p_cast1024_fu_427_p1 = grp_fu_568_p3;
assign p_cast1025_fu_431_p1 = grp_fu_576_p3;
assign p_cast1026_fu_435_p1 = grp_fu_584_p3;
assign p_cast_fu_387_p1 = grp_fu_528_p3;
assign v115_cast_fu_305_p1 = v115_reg_179;
assign v119_fu_439_p1 = v226_load_reg_710;
assign v132_fu_443_p1 = v226_load_1_reg_737;
assign v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_address0;
assign v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_address1;
assign v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_ce0;
assign v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_ce1;
assign v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_d0;
assign v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_d1;
assign v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_we0;
assign v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v225_we1;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v227_address0;
assign v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v227_address1;
assign v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v227_ce0;
assign v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_191_v227_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_289_p1 = v114_fu_80;
always @ (posedge ap_clk) begin
    zext_ln168_reg_637[15:8] <= 8'b00000000;
    v115_cast_reg_658[15:8] <= 8'b00000000;
    p_cast1011_reg_669[15:8] <= 8'b00000000;
    p_cast1012_reg_675[15:8] <= 8'b00000000;
    p_cast1013_reg_681[15:8] <= 8'b00000000;
    p_cast1014_reg_687[15:8] <= 8'b00000000;
    p_cast1015_reg_698[15:8] <= 8'b00000000;
    p_cast1016_reg_704[15:8] <= 8'b00000000;
    p_cast1017_reg_725[15:8] <= 8'b00000000;
    p_cast1018_reg_731[15:8] <= 8'b00000000;
end
endmodule 