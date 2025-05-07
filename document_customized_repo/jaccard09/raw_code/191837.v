module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_opcode,grp_fu_132_p_dout0,grp_fu_132_p_ce,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce); 
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
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [13:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [13:0] v224_0_address1;
output   v224_0_ce1;
input  [31:0] v224_0_q1;
output  [13:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
output  [13:0] v224_1_address1;
output   v224_1_ce1;
input  [31:0] v224_1_q1;
output  [13:0] v224_2_address0;
output   v224_2_ce0;
input  [31:0] v224_2_q0;
output  [13:0] v224_2_address1;
output   v224_2_ce1;
input  [31:0] v224_2_q1;
output  [13:0] v224_3_address0;
output   v224_3_ce0;
input  [31:0] v224_3_q0;
output  [13:0] v224_3_address1;
output   v224_3_ce1;
input  [31:0] v224_3_q1;
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
output  [31:0] grp_fu_132_p_din0;
output  [31:0] grp_fu_132_p_din1;
output  [1:0] grp_fu_132_p_opcode;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [15:0] phi_mul_load_reg_1402;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_505_p2;
reg   [15:0] add_ln31_1_reg_1407;
wire   [7:0] add_ln31_fu_517_p2;
reg   [7:0] add_ln31_reg_1415;
wire   [1:0] trunc_ln31_fu_523_p1;
reg   [1:0] trunc_ln31_reg_1420;
wire   [13:0] zext_ln31_fu_537_p1;
reg   [13:0] zext_ln31_reg_1433;
wire   [0:0] cmp11_fu_541_p2;
reg   [0:0] cmp11_reg_1446;
wire    ap_CS_fsm_state3;
wire   [7:0] empty_121_fu_592_p2;
reg   [7:0] empty_121_reg_1474;
wire   [7:0] empty_128_fu_598_p2;
reg   [7:0] empty_128_reg_1481;
wire   [7:0] add_ln32_fu_604_p2;
reg   [7:0] add_ln32_reg_1488;
wire   [31:0] v11_1_fu_634_p11;
reg   [31:0] v11_1_reg_1493;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_135_fu_731_p2;
reg   [7:0] empty_135_reg_1538;
wire   [7:0] empty_142_fu_737_p2;
reg   [7:0] empty_142_reg_1545;
wire   [31:0] v24_1_fu_759_p11;
reg   [31:0] v24_1_reg_1552;
wire    ap_CS_fsm_state5;
wire   [31:0] v35_1_fu_798_p11;
reg   [31:0] v35_1_reg_1557;
wire   [7:0] empty_149_fu_895_p2;
reg   [7:0] empty_149_reg_1602;
wire   [7:0] empty_156_fu_901_p2;
reg   [7:0] empty_156_reg_1609;
wire   [31:0] v46_1_fu_923_p11;
reg   [31:0] v46_1_reg_1616;
wire    ap_CS_fsm_state6;
wire   [31:0] v57_1_fu_962_p11;
reg   [31:0] v57_1_reg_1621;
wire   [7:0] empty_163_fu_1059_p2;
reg   [7:0] empty_163_reg_1666;
wire   [7:0] empty_170_fu_1065_p2;
reg   [7:0] empty_170_reg_1673;
wire   [31:0] v68_1_fu_1087_p11;
reg   [31:0] v68_1_reg_1680;
wire    ap_CS_fsm_state7;
wire   [31:0] v79_1_fu_1126_p11;
reg   [31:0] v79_1_reg_1685;
wire   [15:0] mul_ln34_fu_1227_p2;
reg   [15:0] mul_ln34_reg_1730;
wire    ap_CS_fsm_state8;
wire   [15:0] mul_ln49_fu_1236_p2;
reg   [15:0] mul_ln49_reg_1735;
wire   [15:0] mul_ln62_fu_1245_p2;
reg   [15:0] mul_ln62_reg_1740;
wire   [15:0] mul_ln75_fu_1254_p2;
reg   [15:0] mul_ln75_reg_1745;
wire   [15:0] mul_ln88_fu_1263_p2;
reg   [15:0] mul_ln88_reg_1750;
wire   [15:0] mul_ln101_fu_1272_p2;
reg   [15:0] mul_ln101_reg_1755;
wire   [15:0] mul_ln114_fu_1281_p2;
reg   [15:0] mul_ln114_reg_1760;
wire   [15:0] mul_ln127_fu_1290_p2;
reg   [15:0] mul_ln127_reg_1765;
wire   [31:0] v90_1_fu_1312_p11;
reg   [31:0] v90_1_reg_1770;
wire   [15:0] mul_ln140_fu_1338_p2;
reg   [15:0] mul_ln140_reg_1775;
wire   [31:0] v101_1_fu_1360_p11;
reg   [31:0] v101_1_reg_1780;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1785_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1785_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1785_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1785_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1789_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1789_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1789_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1793_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1793_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1793_p_ce;
reg   [7:0] v6_reg_448;
wire   [0:0] icmp_ln31_fu_511_p2;
wire    ap_CS_fsm_state10;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [63:0] p_cast710_fu_584_p1;
wire   [0:0] icmp_ln32_fu_547_p2;
wire   [63:0] p_cast_fu_686_p1;
wire   [63:0] p_cast711_fu_723_p1;
wire   [63:0] p_cast712_fu_850_p1;
wire   [63:0] p_cast713_fu_887_p1;
wire   [63:0] p_cast714_fu_1014_p1;
wire   [63:0] p_cast715_fu_1051_p1;
wire   [63:0] p_cast716_fu_1178_p1;
wire   [63:0] p_cast717_fu_1215_p1;
reg   [15:0] phi_mul_fu_104;
reg    ap_block_state1;
reg   [7:0] v5_fu_108;
reg    v236_read_local;
reg    v224_0_ce0_local;
reg   [13:0] v224_0_address0_local;
reg    v224_0_ce1_local;
reg   [13:0] v224_0_address1_local;
reg    v224_1_ce0_local;
reg   [13:0] v224_1_address0_local;
reg    v224_1_ce1_local;
reg   [13:0] v224_1_address1_local;
reg    v224_2_ce0_local;
reg   [13:0] v224_2_address0_local;
reg    v224_2_ce1_local;
reg   [13:0] v224_2_address1_local;
reg    v224_3_ce0_local;
reg   [13:0] v224_3_address0_local;
reg    v224_3_ce1_local;
reg   [13:0] v224_3_address1_local;
wire   [5:0] lshr_ln_fu_527_p4;
wire   [11:0] tmp_fu_561_p3;
wire   [13:0] p_shl1_fu_553_p3;
wire   [13:0] p_shl764_fu_569_p1;
wire   [13:0] empty_fu_573_p2;
wire   [13:0] empty_116_fu_579_p2;
wire   [31:0] v11_1_fu_634_p2;
wire   [31:0] v11_1_fu_634_p4;
wire   [31:0] v11_1_fu_634_p6;
wire   [31:0] v11_1_fu_634_p8;
wire   [31:0] v11_1_fu_634_p9;
wire   [11:0] tmp_3_fu_664_p3;
wire   [13:0] p_shl2_fu_657_p3;
wire   [13:0] p_shl762_fu_671_p1;
wire   [13:0] empty_122_fu_675_p2;
wire   [13:0] empty_123_fu_681_p2;
wire   [11:0] tmp_4_fu_701_p3;
wire   [13:0] p_shl3_fu_694_p3;
wire   [13:0] p_shl760_fu_708_p1;
wire   [13:0] empty_129_fu_712_p2;
wire   [13:0] empty_130_fu_718_p2;
wire   [31:0] v24_1_fu_759_p2;
wire   [31:0] v24_1_fu_759_p4;
wire   [31:0] v24_1_fu_759_p6;
wire   [31:0] v24_1_fu_759_p8;
wire   [31:0] v24_1_fu_759_p9;
wire   [31:0] v35_1_fu_798_p2;
wire   [31:0] v35_1_fu_798_p4;
wire   [31:0] v35_1_fu_798_p6;
wire   [31:0] v35_1_fu_798_p8;
wire   [31:0] v35_1_fu_798_p9;
wire   [11:0] tmp_5_fu_828_p3;
wire   [13:0] p_shl4_fu_821_p3;
wire   [13:0] p_shl758_fu_835_p1;
wire   [13:0] empty_136_fu_839_p2;
wire   [13:0] empty_137_fu_845_p2;
wire   [11:0] tmp_6_fu_865_p3;
wire   [13:0] p_shl5_fu_858_p3;
wire   [13:0] p_shl756_fu_872_p1;
wire   [13:0] empty_143_fu_876_p2;
wire   [13:0] empty_144_fu_882_p2;
wire   [31:0] v46_1_fu_923_p2;
wire   [31:0] v46_1_fu_923_p4;
wire   [31:0] v46_1_fu_923_p6;
wire   [31:0] v46_1_fu_923_p8;
wire   [31:0] v46_1_fu_923_p9;
wire   [31:0] v57_1_fu_962_p2;
wire   [31:0] v57_1_fu_962_p4;
wire   [31:0] v57_1_fu_962_p6;
wire   [31:0] v57_1_fu_962_p8;
wire   [31:0] v57_1_fu_962_p9;
wire   [11:0] tmp_7_fu_992_p3;
wire   [13:0] p_shl6_fu_985_p3;
wire   [13:0] p_shl754_fu_999_p1;
wire   [13:0] empty_150_fu_1003_p2;
wire   [13:0] empty_151_fu_1009_p2;
wire   [11:0] tmp_8_fu_1029_p3;
wire   [13:0] p_shl7_fu_1022_p3;
wire   [13:0] p_shl752_fu_1036_p1;
wire   [13:0] empty_157_fu_1040_p2;
wire   [13:0] empty_158_fu_1046_p2;
wire   [31:0] v68_1_fu_1087_p2;
wire   [31:0] v68_1_fu_1087_p4;
wire   [31:0] v68_1_fu_1087_p6;
wire   [31:0] v68_1_fu_1087_p8;
wire   [31:0] v68_1_fu_1087_p9;
wire   [31:0] v79_1_fu_1126_p2;
wire   [31:0] v79_1_fu_1126_p4;
wire   [31:0] v79_1_fu_1126_p6;
wire   [31:0] v79_1_fu_1126_p8;
wire   [31:0] v79_1_fu_1126_p9;
wire   [11:0] tmp_9_fu_1156_p3;
wire   [13:0] p_shl8_fu_1149_p3;
wire   [13:0] p_shl750_fu_1163_p1;
wire   [13:0] empty_164_fu_1167_p2;
wire   [13:0] empty_165_fu_1173_p2;
wire   [11:0] tmp_10_fu_1193_p3;
wire   [13:0] p_shl_fu_1186_p3;
wire   [13:0] p_shl748_fu_1200_p1;
wire   [13:0] empty_171_fu_1204_p2;
wire   [13:0] empty_172_fu_1210_p2;
wire   [7:0] mul_ln34_fu_1227_p0;
wire   [8:0] mul_ln34_fu_1227_p1;
wire   [7:0] mul_ln49_fu_1236_p0;
wire   [8:0] mul_ln49_fu_1236_p1;
wire   [7:0] mul_ln62_fu_1245_p0;
wire   [8:0] mul_ln62_fu_1245_p1;
wire   [7:0] mul_ln75_fu_1254_p0;
wire   [8:0] mul_ln75_fu_1254_p1;
wire   [7:0] mul_ln88_fu_1263_p0;
wire   [8:0] mul_ln88_fu_1263_p1;
wire   [7:0] mul_ln101_fu_1272_p0;
wire   [8:0] mul_ln101_fu_1272_p1;
wire   [7:0] mul_ln114_fu_1281_p0;
wire   [8:0] mul_ln114_fu_1281_p1;
wire   [7:0] mul_ln127_fu_1290_p0;
wire   [8:0] mul_ln127_fu_1290_p1;
wire   [31:0] v90_1_fu_1312_p2;
wire   [31:0] v90_1_fu_1312_p4;
wire   [31:0] v90_1_fu_1312_p6;
wire   [31:0] v90_1_fu_1312_p8;
wire   [31:0] v90_1_fu_1312_p9;
wire   [7:0] mul_ln140_fu_1338_p0;
wire   [8:0] mul_ln140_fu_1338_p1;
wire   [31:0] v101_1_fu_1360_p2;
wire   [31:0] v101_1_fu_1360_p4;
wire   [31:0] v101_1_fu_1360_p6;
wire   [31:0] v101_1_fu_1360_p8;
wire   [31:0] v101_1_fu_1360_p9;
reg    grp_fu_1785_ce;
reg    grp_fu_1789_ce;
reg    grp_fu_1793_ce;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire   [15:0] mul_ln101_fu_1272_p00;
wire   [15:0] mul_ln114_fu_1281_p00;
wire   [15:0] mul_ln127_fu_1290_p00;
wire   [15:0] mul_ln140_fu_1338_p00;
wire   [15:0] mul_ln34_fu_1227_p00;
wire   [15:0] mul_ln49_fu_1236_p00;
wire   [15:0] mul_ln62_fu_1245_p00;
wire   [15:0] mul_ln75_fu_1254_p00;
wire   [15:0] mul_ln88_fu_1263_p00;
wire   [1:0] v11_1_fu_634_p1;
wire   [1:0] v11_1_fu_634_p3;
wire  signed [1:0] v11_1_fu_634_p5;
wire  signed [1:0] v11_1_fu_634_p7;
wire   [1:0] v24_1_fu_759_p1;
wire   [1:0] v24_1_fu_759_p3;
wire  signed [1:0] v24_1_fu_759_p5;
wire  signed [1:0] v24_1_fu_759_p7;
wire   [1:0] v35_1_fu_798_p1;
wire   [1:0] v35_1_fu_798_p3;
wire  signed [1:0] v35_1_fu_798_p5;
wire  signed [1:0] v35_1_fu_798_p7;
wire   [1:0] v46_1_fu_923_p1;
wire   [1:0] v46_1_fu_923_p3;
wire  signed [1:0] v46_1_fu_923_p5;
wire  signed [1:0] v46_1_fu_923_p7;
wire   [1:0] v57_1_fu_962_p1;
wire   [1:0] v57_1_fu_962_p3;
wire  signed [1:0] v57_1_fu_962_p5;
wire  signed [1:0] v57_1_fu_962_p7;
wire   [1:0] v68_1_fu_1087_p1;
wire   [1:0] v68_1_fu_1087_p3;
wire  signed [1:0] v68_1_fu_1087_p5;
wire  signed [1:0] v68_1_fu_1087_p7;
wire   [1:0] v79_1_fu_1126_p1;
wire   [1:0] v79_1_fu_1126_p3;
wire  signed [1:0] v79_1_fu_1126_p5;
wire  signed [1:0] v79_1_fu_1126_p7;
wire   [1:0] v90_1_fu_1312_p1;
wire   [1:0] v90_1_fu_1312_p3;
wire  signed [1:0] v90_1_fu_1312_p5;
wire  signed [1:0] v90_1_fu_1312_p7;
wire   [1:0] v101_1_fu_1360_p1;
wire   [1:0] v101_1_fu_1360_p3;
wire  signed [1:0] v101_1_fu_1360_p5;
wire  signed [1:0] v101_1_fu_1360_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_start_reg = 1'b0;
#0 phi_mul_fu_104 = 16'd0;
#0 v5_fu_108 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_460(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_ready),.phi_mul(phi_mul_load_reg_1402),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_1730),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_1735),.mul_ln62(mul_ln62_reg_1740),.mul_ln75(mul_ln75_reg_1745),.mul_ln88(mul_ln88_reg_1750),.mul_ln101(mul_ln101_reg_1755),.mul_ln114(mul_ln114_reg_1760),.mul_ln127(mul_ln127_reg_1765),.mul_ln140(mul_ln140_reg_1775),.v4(v4),.cmp11(cmp11_reg_1446),.v11_1(v11_1_reg_1493),.v24_1(v24_1_reg_1552),.v35_1(v35_1_reg_1557),.v46_1(v46_1_reg_1616),.v57_1(v57_1_reg_1621),.v68_1(v68_1_reg_1680),.v79_1(v79_1_reg_1685),.v90_1(v90_1_reg_1770),.v101_1(v101_1_reg_1780),.grp_fu_1785_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1785_p_din0),.grp_fu_1785_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1785_p_din1),.grp_fu_1785_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1785_p_opcode),.grp_fu_1785_p_dout0(grp_fu_132_p_dout0),.grp_fu_1785_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1785_p_ce),.grp_fu_1789_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1789_p_din0),.grp_fu_1789_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1789_p_din1),.grp_fu_1789_p_dout0(grp_fu_136_p_dout0),.grp_fu_1789_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1789_p_ce),.grp_fu_1793_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1793_p_din0),.grp_fu_1793_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1793_p_din1),.grp_fu_1793_p_dout0(grp_fu_140_p_dout0),.grp_fu_1793_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1793_p_ce));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U214(.din0(v11_1_fu_634_p2),.din1(v11_1_fu_634_p4),.din2(v11_1_fu_634_p6),.din3(v11_1_fu_634_p8),.def(v11_1_fu_634_p9),.sel(trunc_ln31_reg_1420),.dout(v11_1_fu_634_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U215(.din0(v24_1_fu_759_p2),.din1(v24_1_fu_759_p4),.din2(v24_1_fu_759_p6),.din3(v24_1_fu_759_p8),.def(v24_1_fu_759_p9),.sel(trunc_ln31_reg_1420),.dout(v24_1_fu_759_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U216(.din0(v35_1_fu_798_p2),.din1(v35_1_fu_798_p4),.din2(v35_1_fu_798_p6),.din3(v35_1_fu_798_p8),.def(v35_1_fu_798_p9),.sel(trunc_ln31_reg_1420),.dout(v35_1_fu_798_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U217(.din0(v46_1_fu_923_p2),.din1(v46_1_fu_923_p4),.din2(v46_1_fu_923_p6),.din3(v46_1_fu_923_p8),.def(v46_1_fu_923_p9),.sel(trunc_ln31_reg_1420),.dout(v46_1_fu_923_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U218(.din0(v57_1_fu_962_p2),.din1(v57_1_fu_962_p4),.din2(v57_1_fu_962_p6),.din3(v57_1_fu_962_p8),.def(v57_1_fu_962_p9),.sel(trunc_ln31_reg_1420),.dout(v57_1_fu_962_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U219(.din0(v68_1_fu_1087_p2),.din1(v68_1_fu_1087_p4),.din2(v68_1_fu_1087_p6),.din3(v68_1_fu_1087_p8),.def(v68_1_fu_1087_p9),.sel(trunc_ln31_reg_1420),.dout(v68_1_fu_1087_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U220(.din0(v79_1_fu_1126_p2),.din1(v79_1_fu_1126_p4),.din2(v79_1_fu_1126_p6),.din3(v79_1_fu_1126_p8),.def(v79_1_fu_1126_p9),.sel(trunc_ln31_reg_1420),.dout(v79_1_fu_1126_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U221(.din0(mul_ln34_fu_1227_p0),.din1(mul_ln34_fu_1227_p1),.dout(mul_ln34_fu_1227_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U222(.din0(mul_ln49_fu_1236_p0),.din1(mul_ln49_fu_1236_p1),.dout(mul_ln49_fu_1236_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U223(.din0(mul_ln62_fu_1245_p0),.din1(mul_ln62_fu_1245_p1),.dout(mul_ln62_fu_1245_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U224(.din0(mul_ln75_fu_1254_p0),.din1(mul_ln75_fu_1254_p1),.dout(mul_ln75_fu_1254_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U225(.din0(mul_ln88_fu_1263_p0),.din1(mul_ln88_fu_1263_p1),.dout(mul_ln88_fu_1263_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U226(.din0(mul_ln101_fu_1272_p0),.din1(mul_ln101_fu_1272_p1),.dout(mul_ln101_fu_1272_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U227(.din0(mul_ln114_fu_1281_p0),.din1(mul_ln114_fu_1281_p1),.dout(mul_ln114_fu_1281_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U228(.din0(mul_ln127_fu_1290_p0),.din1(mul_ln127_fu_1290_p1),.dout(mul_ln127_fu_1290_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U229(.din0(v90_1_fu_1312_p2),.din1(v90_1_fu_1312_p4),.din2(v90_1_fu_1312_p6),.din3(v90_1_fu_1312_p8),.def(v90_1_fu_1312_p9),.sel(trunc_ln31_reg_1420),.dout(v90_1_fu_1312_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U230(.din0(mul_ln140_fu_1338_p0),.din1(mul_ln140_fu_1338_p1),.dout(mul_ln140_fu_1338_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U231(.din0(v101_1_fu_1360_p2),.din1(v101_1_fu_1360_p4),.din2(v101_1_fu_1360_p6),.din3(v101_1_fu_1360_p8),.def(v101_1_fu_1360_p9),.sel(trunc_ln31_reg_1420),.dout(v101_1_fu_1360_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_104 <= 16'd0;
    end else if (((icmp_ln32_fu_547_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_104 <= add_ln31_1_reg_1407;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_108 <= 8'd0;
    end else if (((icmp_ln32_fu_547_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_108 <= add_ln31_reg_1415;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v6_reg_448 <= add_ln32_reg_1488;
    end else if (((icmp_ln31_fu_511_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_448 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_1407 <= add_ln31_1_fu_505_p2;
        add_ln31_reg_1415 <= add_ln31_fu_517_p2;
        cmp11_reg_1446 <= cmp11_fu_541_p2;
        phi_mul_load_reg_1402 <= phi_mul_fu_104;
        trunc_ln31_reg_1420 <= trunc_ln31_fu_523_p1;
        zext_ln31_reg_1433[5 : 0] <= zext_ln31_fu_537_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_1488 <= add_ln32_fu_604_p2;
        empty_121_reg_1474 <= empty_121_fu_592_p2;
        empty_128_reg_1481 <= empty_128_fu_598_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_135_reg_1538 <= empty_135_fu_731_p2;
        empty_142_reg_1545 <= empty_142_fu_737_p2;
        v11_1_reg_1493 <= v11_1_fu_634_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_149_reg_1602 <= empty_149_fu_895_p2;
        empty_156_reg_1609 <= empty_156_fu_901_p2;
        v24_1_reg_1552 <= v24_1_fu_759_p11;
        v35_1_reg_1557 <= v35_1_fu_798_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_163_reg_1666 <= empty_163_fu_1059_p2;
        empty_170_reg_1673 <= empty_170_fu_1065_p2;
        v46_1_reg_1616 <= v46_1_fu_923_p11;
        v57_1_reg_1621 <= v57_1_fu_962_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln101_reg_1755 <= mul_ln101_fu_1272_p2;
        mul_ln114_reg_1760 <= mul_ln114_fu_1281_p2;
        mul_ln127_reg_1765 <= mul_ln127_fu_1290_p2;
        mul_ln140_reg_1775 <= mul_ln140_fu_1338_p2;
        mul_ln34_reg_1730 <= mul_ln34_fu_1227_p2;
        mul_ln49_reg_1735 <= mul_ln49_fu_1236_p2;
        mul_ln62_reg_1740 <= mul_ln62_fu_1245_p2;
        mul_ln75_reg_1745 <= mul_ln75_fu_1254_p2;
        mul_ln88_reg_1750 <= mul_ln88_fu_1263_p2;
        v101_1_reg_1780 <= v101_1_fu_1360_p11;
        v90_1_reg_1770 <= v90_1_fu_1312_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v68_1_reg_1680 <= v68_1_fu_1087_p11;
        v79_1_reg_1685 <= v79_1_fu_1126_p11;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
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
    if ((((icmp_ln31_fu_511_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_fu_511_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1785_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1785_p_ce;
    end else begin
        grp_fu_1785_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1789_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1789_p_ce;
    end else begin
        grp_fu_1789_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1793_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1793_p_ce;
    end else begin
        grp_fu_1793_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast716_fu_1178_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast714_fu_1014_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address0_local = p_cast712_fu_850_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0_local = p_cast711_fu_723_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address0_local = p_cast710_fu_584_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast717_fu_1215_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast715_fu_1051_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address1_local = p_cast713_fu_887_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1_local = p_cast_fu_686_p1;
    end else begin
        v224_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_0_ce0_local = 1'b1;
    end else begin
        v224_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_0_ce1_local = 1'b1;
    end else begin
        v224_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address0_local = p_cast716_fu_1178_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast714_fu_1014_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address0_local = p_cast712_fu_850_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address0_local = p_cast711_fu_723_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address0_local = p_cast710_fu_584_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = p_cast717_fu_1215_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1_local = p_cast715_fu_1051_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address1_local = p_cast713_fu_887_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address1_local = p_cast_fu_686_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address0_local = p_cast716_fu_1178_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address0_local = p_cast714_fu_1014_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address0_local = p_cast712_fu_850_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address0_local = p_cast711_fu_723_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address0_local = p_cast710_fu_584_p1;
    end else begin
        v224_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address1_local = p_cast717_fu_1215_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address1_local = p_cast715_fu_1051_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address1_local = p_cast713_fu_887_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address1_local = p_cast_fu_686_p1;
    end else begin
        v224_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_2_ce0_local = 1'b1;
    end else begin
        v224_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_2_ce1_local = 1'b1;
    end else begin
        v224_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address0_local = p_cast716_fu_1178_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address0_local = p_cast714_fu_1014_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address0_local = p_cast712_fu_850_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address0_local = p_cast711_fu_723_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address0_local = p_cast710_fu_584_p1;
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address1_local = p_cast717_fu_1215_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address1_local = p_cast715_fu_1051_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address1_local = p_cast713_fu_887_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address1_local = p_cast_fu_686_p1;
    end else begin
        v224_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_3_ce0_local = 1'b1;
    end else begin
        v224_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_3_ce1_local = 1'b1;
    end else begin
        v224_3_ce1_local = 1'b0;
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
            if (((icmp_ln31_fu_511_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_547_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_1_fu_505_p2 = (phi_mul_fu_104 + 16'd220);
assign add_ln31_fu_517_p2 = (v5_fu_108 + 8'd1);
assign add_ln32_fu_604_p2 = (v6_reg_448 + 8'd9);
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
    ap_block_state1 = ((v236_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp11_fu_541_p2 = ((v5_fu_108 == 8'd0) ? 1'b1 : 1'b0);
assign empty_116_fu_579_p2 = (empty_fu_573_p2 + zext_ln31_reg_1433);
assign empty_121_fu_592_p2 = (v6_reg_448 + 8'd1);
assign empty_122_fu_675_p2 = (p_shl2_fu_657_p3 - p_shl762_fu_671_p1);
assign empty_123_fu_681_p2 = (empty_122_fu_675_p2 + zext_ln31_reg_1433);
assign empty_128_fu_598_p2 = (v6_reg_448 + 8'd2);
assign empty_129_fu_712_p2 = (p_shl3_fu_694_p3 - p_shl760_fu_708_p1);
assign empty_130_fu_718_p2 = (empty_129_fu_712_p2 + zext_ln31_reg_1433);
assign empty_135_fu_731_p2 = (v6_reg_448 + 8'd3);
assign empty_136_fu_839_p2 = (p_shl4_fu_821_p3 - p_shl758_fu_835_p1);
assign empty_137_fu_845_p2 = (empty_136_fu_839_p2 + zext_ln31_reg_1433);
assign empty_142_fu_737_p2 = (v6_reg_448 + 8'd4);
assign empty_143_fu_876_p2 = (p_shl5_fu_858_p3 - p_shl756_fu_872_p1);
assign empty_144_fu_882_p2 = (empty_143_fu_876_p2 + zext_ln31_reg_1433);
assign empty_149_fu_895_p2 = (v6_reg_448 + 8'd5);
assign empty_150_fu_1003_p2 = (p_shl6_fu_985_p3 - p_shl754_fu_999_p1);
assign empty_151_fu_1009_p2 = (empty_150_fu_1003_p2 + zext_ln31_reg_1433);
assign empty_156_fu_901_p2 = (v6_reg_448 + 8'd6);
assign empty_157_fu_1040_p2 = (p_shl7_fu_1022_p3 - p_shl752_fu_1036_p1);
assign empty_158_fu_1046_p2 = (empty_157_fu_1040_p2 + zext_ln31_reg_1433);
assign empty_163_fu_1059_p2 = (v6_reg_448 + 8'd7);
assign empty_164_fu_1167_p2 = (p_shl8_fu_1149_p3 - p_shl750_fu_1163_p1);
assign empty_165_fu_1173_p2 = (empty_164_fu_1167_p2 + zext_ln31_reg_1433);
assign empty_170_fu_1065_p2 = (v6_reg_448 + 8'd8);
assign empty_171_fu_1204_p2 = (p_shl_fu_1186_p3 - p_shl748_fu_1200_p1);
assign empty_172_fu_1210_p2 = (empty_171_fu_1204_p2 + zext_ln31_reg_1433);
assign empty_fu_573_p2 = (p_shl1_fu_553_p3 - p_shl764_fu_569_p1);
assign grp_fu_132_p_ce = grp_fu_1785_ce;
assign grp_fu_132_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1785_p_din0;
assign grp_fu_132_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1785_p_din1;
assign grp_fu_132_p_opcode = 2'd0;
assign grp_fu_136_p_ce = grp_fu_1789_ce;
assign grp_fu_136_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1789_p_din0;
assign grp_fu_136_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1789_p_din1;
assign grp_fu_140_p_ce = grp_fu_1793_ce;
assign grp_fu_140_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1793_p_din0;
assign grp_fu_140_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_grp_fu_1793_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_ap_start_reg;
assign icmp_ln31_fu_511_p2 = ((v5_fu_108 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_547_p2 = ((v6_reg_448 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_527_p4 = {{v5_fu_108[7:2]}};
assign mul_ln101_fu_1272_p0 = mul_ln101_fu_1272_p00;
assign mul_ln101_fu_1272_p00 = empty_149_reg_1602;
assign mul_ln101_fu_1272_p1 = 16'd220;
assign mul_ln114_fu_1281_p0 = mul_ln114_fu_1281_p00;
assign mul_ln114_fu_1281_p00 = empty_156_reg_1609;
assign mul_ln114_fu_1281_p1 = 16'd220;
assign mul_ln127_fu_1290_p0 = mul_ln127_fu_1290_p00;
assign mul_ln127_fu_1290_p00 = empty_163_reg_1666;
assign mul_ln127_fu_1290_p1 = 16'd220;
assign mul_ln140_fu_1338_p0 = mul_ln140_fu_1338_p00;
assign mul_ln140_fu_1338_p00 = empty_170_reg_1673;
assign mul_ln140_fu_1338_p1 = 16'd220;
assign mul_ln34_fu_1227_p0 = mul_ln34_fu_1227_p00;
assign mul_ln34_fu_1227_p00 = v6_reg_448;
assign mul_ln34_fu_1227_p1 = 16'd220;
assign mul_ln49_fu_1236_p0 = mul_ln49_fu_1236_p00;
assign mul_ln49_fu_1236_p00 = empty_121_reg_1474;
assign mul_ln49_fu_1236_p1 = 16'd220;
assign mul_ln62_fu_1245_p0 = mul_ln62_fu_1245_p00;
assign mul_ln62_fu_1245_p00 = empty_128_reg_1481;
assign mul_ln62_fu_1245_p1 = 16'd220;
assign mul_ln75_fu_1254_p0 = mul_ln75_fu_1254_p00;
assign mul_ln75_fu_1254_p00 = empty_135_reg_1538;
assign mul_ln75_fu_1254_p1 = 16'd220;
assign mul_ln88_fu_1263_p0 = mul_ln88_fu_1263_p00;
assign mul_ln88_fu_1263_p00 = empty_142_reg_1545;
assign mul_ln88_fu_1263_p1 = 16'd220;
assign p_cast710_fu_584_p1 = empty_116_fu_579_p2;
assign p_cast711_fu_723_p1 = empty_130_fu_718_p2;
assign p_cast712_fu_850_p1 = empty_137_fu_845_p2;
assign p_cast713_fu_887_p1 = empty_144_fu_882_p2;
assign p_cast714_fu_1014_p1 = empty_151_fu_1009_p2;
assign p_cast715_fu_1051_p1 = empty_158_fu_1046_p2;
assign p_cast716_fu_1178_p1 = empty_165_fu_1173_p2;
assign p_cast717_fu_1215_p1 = empty_172_fu_1210_p2;
assign p_cast_fu_686_p1 = empty_123_fu_681_p2;
assign p_shl1_fu_553_p3 = {{v6_reg_448}, {6'd0}};
assign p_shl2_fu_657_p3 = {{empty_121_reg_1474}, {6'd0}};
assign p_shl3_fu_694_p3 = {{empty_128_reg_1481}, {6'd0}};
assign p_shl4_fu_821_p3 = {{empty_135_reg_1538}, {6'd0}};
assign p_shl5_fu_858_p3 = {{empty_142_reg_1545}, {6'd0}};
assign p_shl6_fu_985_p3 = {{empty_149_reg_1602}, {6'd0}};
assign p_shl748_fu_1200_p1 = tmp_10_fu_1193_p3;
assign p_shl750_fu_1163_p1 = tmp_9_fu_1156_p3;
assign p_shl752_fu_1036_p1 = tmp_8_fu_1029_p3;
assign p_shl754_fu_999_p1 = tmp_7_fu_992_p3;
assign p_shl756_fu_872_p1 = tmp_6_fu_865_p3;
assign p_shl758_fu_835_p1 = tmp_5_fu_828_p3;
assign p_shl760_fu_708_p1 = tmp_4_fu_701_p3;
assign p_shl762_fu_671_p1 = tmp_3_fu_664_p3;
assign p_shl764_fu_569_p1 = tmp_fu_561_p3;
assign p_shl7_fu_1022_p3 = {{empty_156_reg_1609}, {6'd0}};
assign p_shl8_fu_1149_p3 = {{empty_163_reg_1666}, {6'd0}};
assign p_shl_fu_1186_p3 = {{empty_170_reg_1673}, {6'd0}};
assign tmp_10_fu_1193_p3 = {{empty_170_reg_1673}, {4'd0}};
assign tmp_3_fu_664_p3 = {{empty_121_reg_1474}, {4'd0}};
assign tmp_4_fu_701_p3 = {{empty_128_reg_1481}, {4'd0}};
assign tmp_5_fu_828_p3 = {{empty_135_reg_1538}, {4'd0}};
assign tmp_6_fu_865_p3 = {{empty_142_reg_1545}, {4'd0}};
assign tmp_7_fu_992_p3 = {{empty_149_reg_1602}, {4'd0}};
assign tmp_8_fu_1029_p3 = {{empty_156_reg_1609}, {4'd0}};
assign tmp_9_fu_1156_p3 = {{empty_163_reg_1666}, {4'd0}};
assign tmp_fu_561_p3 = {{v6_reg_448}, {4'd0}};
assign trunc_ln31_fu_523_p1 = v5_fu_108[1:0];
assign v101_1_fu_1360_p2 = v224_0_q1;
assign v101_1_fu_1360_p4 = v224_1_q1;
assign v101_1_fu_1360_p6 = v224_2_q1;
assign v101_1_fu_1360_p8 = v224_3_q1;
assign v101_1_fu_1360_p9 = 'bx;
assign v11_1_fu_634_p2 = v224_0_q0;
assign v11_1_fu_634_p4 = v224_1_q0;
assign v11_1_fu_634_p6 = v224_2_q0;
assign v11_1_fu_634_p8 = v224_3_q0;
assign v11_1_fu_634_p9 = 'bx;
assign v224_0_address0 = v224_0_address0_local;
assign v224_0_address1 = v224_0_address1_local;
assign v224_0_ce0 = v224_0_ce0_local;
assign v224_0_ce1 = v224_0_ce1_local;
assign v224_1_address0 = v224_1_address0_local;
assign v224_1_address1 = v224_1_address1_local;
assign v224_1_ce0 = v224_1_ce0_local;
assign v224_1_ce1 = v224_1_ce1_local;
assign v224_2_address0 = v224_2_address0_local;
assign v224_2_address1 = v224_2_address1_local;
assign v224_2_ce0 = v224_2_ce0_local;
assign v224_2_ce1 = v224_2_ce1_local;
assign v224_3_address0 = v224_3_address0_local;
assign v224_3_address1 = v224_3_address1_local;
assign v224_3_ce0 = v224_3_ce0_local;
assign v224_3_ce1 = v224_3_ce1_local;
assign v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v228_address0;
assign v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v228_address1;
assign v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v228_ce0;
assign v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v228_ce1;
assign v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_address0;
assign v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_address1;
assign v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_ce0;
assign v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_ce1;
assign v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_d0;
assign v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_d1;
assign v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_we0;
assign v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_460_v229_we1;
assign v236_read = v236_read_local;
assign v24_1_fu_759_p2 = v224_0_q1;
assign v24_1_fu_759_p4 = v224_1_q1;
assign v24_1_fu_759_p6 = v224_2_q1;
assign v24_1_fu_759_p8 = v224_3_q1;
assign v24_1_fu_759_p9 = 'bx;
assign v35_1_fu_798_p2 = v224_0_q0;
assign v35_1_fu_798_p4 = v224_1_q0;
assign v35_1_fu_798_p6 = v224_2_q0;
assign v35_1_fu_798_p8 = v224_3_q0;
assign v35_1_fu_798_p9 = 'bx;
assign v46_1_fu_923_p2 = v224_0_q0;
assign v46_1_fu_923_p4 = v224_1_q0;
assign v46_1_fu_923_p6 = v224_2_q0;
assign v46_1_fu_923_p8 = v224_3_q0;
assign v46_1_fu_923_p9 = 'bx;
assign v57_1_fu_962_p2 = v224_0_q1;
assign v57_1_fu_962_p4 = v224_1_q1;
assign v57_1_fu_962_p6 = v224_2_q1;
assign v57_1_fu_962_p8 = v224_3_q1;
assign v57_1_fu_962_p9 = 'bx;
assign v68_1_fu_1087_p2 = v224_0_q0;
assign v68_1_fu_1087_p4 = v224_1_q0;
assign v68_1_fu_1087_p6 = v224_2_q0;
assign v68_1_fu_1087_p8 = v224_3_q0;
assign v68_1_fu_1087_p9 = 'bx;
assign v79_1_fu_1126_p2 = v224_0_q1;
assign v79_1_fu_1126_p4 = v224_1_q1;
assign v79_1_fu_1126_p6 = v224_2_q1;
assign v79_1_fu_1126_p8 = v224_3_q1;
assign v79_1_fu_1126_p9 = 'bx;
assign v90_1_fu_1312_p2 = v224_0_q0;
assign v90_1_fu_1312_p4 = v224_1_q0;
assign v90_1_fu_1312_p6 = v224_2_q0;
assign v90_1_fu_1312_p8 = v224_3_q0;
assign v90_1_fu_1312_p9 = 'bx;
assign zext_ln31_fu_537_p1 = lshr_ln_fu_527_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1433[13:6] <= 8'b00000000;
end
endmodule 