
module fft1D_512_sin_or_cos_double_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,t_in,do_cos,ap_return);  
parameter    ap_ST_fsm_state1 = 36'd1;
parameter    ap_ST_fsm_state2 = 36'd2;
parameter    ap_ST_fsm_state3 = 36'd4;
parameter    ap_ST_fsm_state4 = 36'd8;
parameter    ap_ST_fsm_state5 = 36'd16;
parameter    ap_ST_fsm_state6 = 36'd32;
parameter    ap_ST_fsm_state7 = 36'd64;
parameter    ap_ST_fsm_state8 = 36'd128;
parameter    ap_ST_fsm_state9 = 36'd256;
parameter    ap_ST_fsm_state10 = 36'd512;
parameter    ap_ST_fsm_state11 = 36'd1024;
parameter    ap_ST_fsm_state12 = 36'd2048;
parameter    ap_ST_fsm_state13 = 36'd4096;
parameter    ap_ST_fsm_state14 = 36'd8192;
parameter    ap_ST_fsm_state15 = 36'd16384;
parameter    ap_ST_fsm_state16 = 36'd32768;
parameter    ap_ST_fsm_state17 = 36'd65536;
parameter    ap_ST_fsm_state18 = 36'd131072;
parameter    ap_ST_fsm_state19 = 36'd262144;
parameter    ap_ST_fsm_state20 = 36'd524288;
parameter    ap_ST_fsm_state21 = 36'd1048576;
parameter    ap_ST_fsm_state22 = 36'd2097152;
parameter    ap_ST_fsm_state23 = 36'd4194304;
parameter    ap_ST_fsm_state24 = 36'd8388608;
parameter    ap_ST_fsm_state25 = 36'd16777216;
parameter    ap_ST_fsm_state26 = 36'd33554432;
parameter    ap_ST_fsm_state27 = 36'd67108864;
parameter    ap_ST_fsm_state28 = 36'd134217728;
parameter    ap_ST_fsm_state29 = 36'd268435456;
parameter    ap_ST_fsm_state30 = 36'd536870912;
parameter    ap_ST_fsm_state31 = 36'd1073741824;
parameter    ap_ST_fsm_state32 = 36'd2147483648;
parameter    ap_ST_fsm_state33 = 36'd4294967296;
parameter    ap_ST_fsm_state34 = 36'd8589934592;
parameter    ap_ST_fsm_state35 = 36'd17179869184;
parameter    ap_ST_fsm_state36 = 36'd34359738368;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] t_in;
input  [0:0] do_cos;
output  [63:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [35:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] ref_4oPi_table_256_address0;
wire   [255:0] ref_4oPi_table_256_q0;
wire   [7:0] fourth_order_double_sin_cos_K0_address0;
wire   [58:0] fourth_order_double_sin_cos_K0_q0;
wire   [7:0] fourth_order_double_sin_cos_K1_address0;
wire   [51:0] fourth_order_double_sin_cos_K1_q0;
wire   [7:0] fourth_order_double_sin_cos_K2_address0;
wire   [43:0] fourth_order_double_sin_cos_K2_q0;
wire   [7:0] fourth_order_double_sin_cos_K3_address0;
wire   [32:0] fourth_order_double_sin_cos_K3_q0;
wire   [7:0] fourth_order_double_sin_cos_K4_address0;
wire   [24:0] fourth_order_double_sin_cos_K4_q0;
reg   [0:0] din_sign_reg_1476;
wire   [10:0] din_exp_fu_467_p4;
reg   [10:0] din_exp_reg_1482;
wire   [51:0] din_sig_fu_477_p1;
reg   [51:0] din_sig_reg_1489;
wire   [0:0] closepath_fu_481_p2;
reg   [0:0] closepath_reg_1495;
wire   [6:0] trunc_ln398_fu_516_p1;
reg   [6:0] trunc_ln398_reg_1506;
reg   [255:0] table_256_reg_1511;
wire    ap_CS_fsm_state2;
reg  signed [169:0] Med_reg_1516;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln271_1_fu_550_p2;
reg   [0:0] icmp_ln271_1_reg_1526;
reg   [123:0] Mx_bits_reg_1531;
wire    ap_CS_fsm_state8;
reg   [2:0] k_reg_1537;
wire   [2:0] k_1_fu_575_p3;
reg   [2:0] k_1_reg_1542;
wire    ap_CS_fsm_state9;
wire   [123:0] Mx_bits_2_fu_590_p3;
reg   [123:0] Mx_bits_2_reg_1548;
reg   [60:0] tmp_s_reg_1553;
wire    ap_CS_fsm_state10;
reg   [62:0] Mx_reg_1563;
wire   [10:0] Ex_1_fu_683_p2;
reg   [10:0] Ex_1_reg_1570;
reg   [0:0] tmp_reg_1576;
wire   [10:0] sub_ln506_fu_697_p2;
reg   [10:0] sub_ln506_reg_1582;
wire   [0:0] sin_basis_fu_748_p3;
reg   [0:0] sin_basis_reg_1587;
wire   [0:0] cos_basis_fu_756_p3;
reg   [0:0] cos_basis_reg_1592;
wire   [0:0] and_ln271_fu_927_p2;
reg   [0:0] and_ln271_reg_1598;
wire   [0:0] icmp_ln282_fu_943_p2;
reg   [0:0] icmp_ln282_reg_1604;
wire   [0:0] results_sign_3_fu_960_p3;
reg   [0:0] results_sign_3_reg_1611;
reg   [6:0] tmp_1_reg_1616;
wire    ap_CS_fsm_state11;
wire   [55:0] B_fu_1004_p1;
reg   [55:0] B_reg_1621;
reg   [48:0] B_trunc_reg_1626;
wire   [97:0] zext_ln25_fu_1018_p1;
reg   [97:0] zext_ln25_reg_1631;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln32_fu_1029_p1;
reg   [63:0] zext_ln32_reg_1637;
wire    ap_CS_fsm_state15;
reg   [48:0] B_squared_reg_1654;
wire    ap_CS_fsm_state16;
reg  signed [51:0] fourth_order_double_sin_cos_K1_load_reg_1660;
reg  signed [43:0] fourth_order_double_sin_cos_K2_load_reg_1665;
wire   [97:0] zext_ln25_1_fu_1045_p1;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state20;
reg   [58:0] t1_reg_1712;
wire    ap_CS_fsm_state21;
reg   [55:0] trunc_ln_reg_1717;
reg   [47:0] trunc_ln1_reg_1722;
reg   [41:0] tmp_3_reg_1727;
reg   [32:0] fourth_order_double_sin_cos_K3_load_reg_1732;
reg   [34:0] tmp_4_reg_1737;
reg   [24:0] fourth_order_double_sin_cos_K4_load_reg_1742;
wire    ap_CS_fsm_state22;
wire   [63:0] add_ln37_1_fu_1146_p2;
reg   [63:0] add_ln37_1_reg_1767;
reg   [28:0] lshr_ln_reg_1772;
wire    ap_CS_fsm_state23;
reg   [36:0] tmp_10_reg_1777;
wire   [63:0] add_ln37_3_fu_1183_p2;
reg  signed [63:0] add_ln37_3_reg_1782;
wire    ap_CS_fsm_state24;
wire   [62:0] Mx_2_fu_1189_p3;
reg   [62:0] Mx_2_reg_1787;
wire    ap_CS_fsm_state25;
reg   [62:0] result_reg_1802;
wire    ap_CS_fsm_state29;
reg   [14:0] tmp_2_reg_1809;
wire   [31:0] out_bits_6_fu_1247_p3;
reg   [31:0] out_bits_6_reg_1832;
wire    ap_CS_fsm_state32;
wire   [0:0] icmp_ln433_fu_1271_p2;
reg   [0:0] icmp_ln433_reg_1849;
wire    ap_CS_fsm_state34;
wire    grp_sin_or_cos_double_Pipeline_1_fu_382_ap_start;
wire    grp_sin_or_cos_double_Pipeline_1_fu_382_ap_done;
wire    grp_sin_or_cos_double_Pipeline_1_fu_382_ap_idle;
wire    grp_sin_or_cos_double_Pipeline_1_fu_382_ap_ready;
wire   [31:0] grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_5_out;
wire    grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_5_out_ap_vld;
wire   [31:0] grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_4_out;
wire    grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_4_out_ap_vld;
wire   [31:0] grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_3_out;
wire    grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_3_out_ap_vld;
wire    grp_sin_or_cos_double_Pipeline_2_fu_389_ap_start;
wire    grp_sin_or_cos_double_Pipeline_2_fu_389_ap_done;
wire    grp_sin_or_cos_double_Pipeline_2_fu_389_ap_idle;
wire    grp_sin_or_cos_double_Pipeline_2_fu_389_ap_ready;
wire   [31:0] grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_9_out;
wire    grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_9_out_ap_vld;
wire   [31:0] grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_8_out;
wire    grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_8_out_ap_vld;
wire   [31:0] grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_7_out;
wire    grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_7_out_ap_vld;
wire    grp_sin_or_cos_double_Pipeline_3_fu_400_ap_start;
wire    grp_sin_or_cos_double_Pipeline_3_fu_400_ap_done;
wire    grp_sin_or_cos_double_Pipeline_3_fu_400_ap_idle;
wire    grp_sin_or_cos_double_Pipeline_3_fu_400_ap_ready;
wire   [31:0] grp_sin_or_cos_double_Pipeline_3_fu_400_c_3_out;
wire    grp_sin_or_cos_double_Pipeline_3_fu_400_c_3_out_ap_vld;
wire   [31:0] grp_sin_or_cos_double_Pipeline_3_fu_400_c_2_out;
wire    grp_sin_or_cos_double_Pipeline_3_fu_400_c_2_out_ap_vld;
wire   [31:0] grp_sin_or_cos_double_Pipeline_3_fu_400_c_1_out;
wire    grp_sin_or_cos_double_Pipeline_3_fu_400_c_1_out_ap_vld;
wire   [31:0] grp_sin_or_cos_double_Pipeline_3_fu_400_c_out;
wire    grp_sin_or_cos_double_Pipeline_3_fu_400_c_out_ap_vld;
wire    grp_sin_or_cos_double_Pipeline_4_fu_412_ap_start;
wire    grp_sin_or_cos_double_Pipeline_4_fu_412_ap_done;
wire    grp_sin_or_cos_double_Pipeline_4_fu_412_ap_idle;
wire    grp_sin_or_cos_double_Pipeline_4_fu_412_ap_ready;
wire   [31:0] grp_sin_or_cos_double_Pipeline_4_fu_412_shift_1_out;
wire    grp_sin_or_cos_double_Pipeline_4_fu_412_shift_1_out_ap_vld;
wire   [61:0] grp_sin_or_cos_double_Pipeline_4_fu_412_in_shift_out;
wire    grp_sin_or_cos_double_Pipeline_4_fu_412_in_shift_out_ap_vld;
reg    grp_sin_or_cos_double_Pipeline_1_fu_382_ap_start_reg;
reg   [31:0] out_bits_5_loc_fu_288;
reg   [31:0] out_bits_4_loc_fu_284;
reg   [31:0] out_bits_3_loc_fu_280;
reg    grp_sin_or_cos_double_Pipeline_2_fu_389_ap_start_reg;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_state31;
reg    grp_sin_or_cos_double_Pipeline_3_fu_400_ap_start_reg;
wire    ap_CS_fsm_state33;
reg    grp_sin_or_cos_double_Pipeline_4_fu_412_ap_start_reg;
wire    ap_CS_fsm_state35;
reg   [31:0] shift_1_loc_fu_248;
reg   [61:0] in_shift_loc_fu_244;
wire   [63:0] zext_ln397_fu_511_p1;
wire    ap_CS_fsm_state36;
reg    ref_4oPi_table_256_ce0_local;
reg    fourth_order_double_sin_cos_K1_ce0_local;
reg    fourth_order_double_sin_cos_K2_ce0_local;
reg    fourth_order_double_sin_cos_K0_ce0_local;
reg    fourth_order_double_sin_cos_K3_ce0_local;
reg    fourth_order_double_sin_cos_K4_ce0_local;
wire   [34:0] grp_fu_423_p0;
wire   [24:0] grp_fu_423_p1;
wire   [41:0] grp_fu_427_p0;
wire   [32:0] grp_fu_427_p1;
wire   [48:0] grp_fu_431_p0;
reg   [48:0] grp_fu_435_p0;
reg   [48:0] grp_fu_435_p1;
wire   [48:0] grp_fu_439_p0;
wire   [48:0] grp_fu_439_p1;
wire   [55:0] grp_fu_443_p0;
wire   [62:0] grp_fu_447_p1;
wire   [52:0] grp_fu_451_p1;
wire   [63:0] data_fu_455_p1;
wire   [10:0] add_ln396_fu_487_p2;
wire   [10:0] addr_fu_493_p3;
wire   [3:0] tmp_9_fu_501_p4;
wire   [255:0] zext_ln398_fu_520_p1;
wire   [255:0] shl_ln398_fu_523_p2;
wire   [52:0] X_fu_538_p3;
wire   [169:0] grp_fu_451_p2;
wire   [0:0] trunc_ln491_fu_581_p1;
wire   [123:0] Mx_bits_1_fu_585_p2;
wire   [10:0] Ex_fu_607_p2;
wire   [61:0] t_fu_619_p3;
reg   [61:0] tmp_5_fu_626_p4;
wire   [62:0] tmp_6_fu_636_p3;
wire  signed [63:0] sext_ln75_fu_644_p1;
reg   [63:0] tmp_7_fu_648_p3;
wire   [6:0] Mx_zeros_fu_656_p1;
wire   [123:0] zext_ln504_fu_664_p1;
wire   [123:0] shl_ln504_fu_668_p2;
wire   [10:0] select_ln453_fu_612_p3;
wire   [10:0] zext_ln505_fu_660_p1;
wire   [0:0] tmp_8_fu_703_p17;
wire   [0:0] tmp_8_fu_703_p19;
wire   [0:0] xor_ln242_fu_742_p2;
wire   [0:0] tmp_12_fu_770_p33;
wire   [3:0] index_fu_764_p3;
wire   [0:0] tmp_13_fu_842_p33;
wire   [0:0] tmp_12_fu_770_p35;
wire   [0:0] tmp_13_fu_842_p35;
wire   [0:0] icmp_ln271_fu_922_p2;
wire   [0:0] xor_ln278_fu_932_p2;
wire   [0:0] results_sign_fu_914_p3;
wire   [0:0] xor_ln282_fu_948_p2;
wire   [0:0] results_sign_2_fu_938_p2;
wire   [0:0] results_sign_4_fu_954_p2;
wire   [10:0] select_ln506_fu_968_p3;
wire   [62:0] zext_ln506_fu_973_p1;
wire   [62:0] lshr_ln506_fu_977_p2;
wire   [62:0] shl_ln506_fu_982_p2;
wire   [62:0] x_fu_987_p3;
wire   [7:0] A_fu_1023_p3;
wire   [97:0] grp_fu_435_p2;
wire   [107:0] grp_fu_443_p2;
wire   [92:0] grp_fu_431_p2;
wire   [97:0] grp_fu_439_p2;
wire   [62:0] t1_1_fu_1107_p3;
wire  signed [63:0] sext_ln37_fu_1130_p1;
wire  signed [63:0] sext_ln37_1_fu_1134_p1;
wire   [63:0] add_ln37_fu_1137_p2;
wire  signed [63:0] sext_ln37_2_fu_1143_p1;
wire   [59:0] grp_fu_423_p2;
wire   [74:0] grp_fu_427_p2;
wire   [63:0] zext_ln37_1_fu_1172_p1;
wire   [63:0] add_ln37_2_fu_1175_p2;
wire   [63:0] zext_ln242_fu_1180_p1;
wire   [125:0] grp_fu_447_p2;
wire   [10:0] Ex_3_fu_1276_p3;
wire  signed [11:0] sext_ln252_fu_1282_p1;
wire   [11:0] add_ln432_fu_1292_p2;
wire  signed [31:0] sext_ln432_fu_1298_p1;
wire   [31:0] newexp_fu_1302_p2;
wire   [0:0] tmp_11_fu_1308_p3;
wire   [0:0] or_ln433_fu_1316_p2;
wire   [0:0] or_ln282_fu_1349_p2;
wire   [10:0] select_ln282_fu_1342_p3;
wire   [10:0] empty_fu_1321_p1;
wire   [51:0] select_ln282_2_fu_1362_p3;
wire   [51:0] phitmp_fu_1325_p4;
wire   [10:0] select_ln259_fu_1335_p3;
wire   [10:0] results_exp_fu_1354_p3;
wire   [51:0] results_sig_fu_1369_p3;
wire   [10:0] results_exp_1_fu_1377_p3;
wire   [51:0] results_sig_1_fu_1384_p3;
wire   [63:0] t_2_fu_1391_p4;
reg   [35:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
reg    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
reg    ap_ST_fsm_state33_blk;
wire    ap_ST_fsm_state34_blk;
reg    ap_ST_fsm_state35_blk;
wire    ap_ST_fsm_state36_blk;
wire   [59:0] grp_fu_423_p00;
wire   [59:0] grp_fu_423_p10;
wire   [74:0] grp_fu_427_p00;
wire   [74:0] grp_fu_427_p10;
wire   [92:0] grp_fu_431_p00;
wire   [107:0] grp_fu_443_p00;
wire   [125:0] grp_fu_447_p10;
wire   [169:0] grp_fu_451_p10;
wire   [2:0] tmp_8_fu_703_p1;
wire   [2:0] tmp_8_fu_703_p3;
wire   [2:0] tmp_8_fu_703_p5;
wire   [2:0] tmp_8_fu_703_p7;
wire  signed [2:0] tmp_8_fu_703_p9;
wire  signed [2:0] tmp_8_fu_703_p11;
wire  signed [2:0] tmp_8_fu_703_p13;
wire  signed [2:0] tmp_8_fu_703_p15;
wire   [3:0] tmp_12_fu_770_p1;
wire   [3:0] tmp_12_fu_770_p3;
wire   [3:0] tmp_12_fu_770_p5;
wire   [3:0] tmp_12_fu_770_p7;
wire   [3:0] tmp_12_fu_770_p9;
wire   [3:0] tmp_12_fu_770_p11;
wire   [3:0] tmp_12_fu_770_p13;
wire   [3:0] tmp_12_fu_770_p15;
wire  signed [3:0] tmp_12_fu_770_p17;
wire  signed [3:0] tmp_12_fu_770_p19;
wire  signed [3:0] tmp_12_fu_770_p21;
wire  signed [3:0] tmp_12_fu_770_p23;
wire  signed [3:0] tmp_12_fu_770_p25;
wire  signed [3:0] tmp_12_fu_770_p27;
wire  signed [3:0] tmp_12_fu_770_p29;
wire  signed [3:0] tmp_12_fu_770_p31;
wire   [3:0] tmp_13_fu_842_p1;
wire   [3:0] tmp_13_fu_842_p3;
wire   [3:0] tmp_13_fu_842_p5;
wire   [3:0] tmp_13_fu_842_p7;
wire   [3:0] tmp_13_fu_842_p9;
wire   [3:0] tmp_13_fu_842_p11;
wire   [3:0] tmp_13_fu_842_p13;
wire   [3:0] tmp_13_fu_842_p15;
wire  signed [3:0] tmp_13_fu_842_p17;
wire  signed [3:0] tmp_13_fu_842_p19;
wire  signed [3:0] tmp_13_fu_842_p21;
wire  signed [3:0] tmp_13_fu_842_p23;
wire  signed [3:0] tmp_13_fu_842_p25;
wire  signed [3:0] tmp_13_fu_842_p27;
wire  signed [3:0] tmp_13_fu_842_p29;
wire  signed [3:0] tmp_13_fu_842_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 36'd1;
#0 grp_sin_or_cos_double_Pipeline_1_fu_382_ap_start_reg = 1'b0;
#0 grp_sin_or_cos_double_Pipeline_2_fu_389_ap_start_reg = 1'b0;
#0 grp_sin_or_cos_double_Pipeline_3_fu_400_ap_start_reg = 1'b0;
#0 grp_sin_or_cos_double_Pipeline_4_fu_412_ap_start_reg = 1'b0;
end
fft1D_512_sin_or_cos_double_s_ref_4oPi_table_256_ROM_AUTO_1R #(.DataWidth( 256 ),.AddressRange( 10 ),.AddressWidth( 4 ))
ref_4oPi_table_256_U(.clk(ap_clk),.reset(ap_rst),.address0(ref_4oPi_table_256_address0),.ce0(ref_4oPi_table_256_ce0_local),.q0(ref_4oPi_table_256_q0));
fft1D_512_sin_or_cos_double_s_fourth_order_double_sin_cos_K0_ROM_1P_LUTRAM_1R #(.DataWidth( 59 ),.AddressRange( 256 ),.AddressWidth( 8 ))
fourth_order_double_sin_cos_K0_U(.clk(ap_clk),.reset(ap_rst),.address0(fourth_order_double_sin_cos_K0_address0),.ce0(fourth_order_double_sin_cos_K0_ce0_local),.q0(fourth_order_double_sin_cos_K0_q0));
fft1D_512_sin_or_cos_double_s_fourth_order_double_sin_cos_K1_ROM_1P_LUTRAM_1R #(.DataWidth( 52 ),.AddressRange( 256 ),.AddressWidth( 8 ))
fourth_order_double_sin_cos_K1_U(.clk(ap_clk),.reset(ap_rst),.address0(fourth_order_double_sin_cos_K1_address0),.ce0(fourth_order_double_sin_cos_K1_ce0_local),.q0(fourth_order_double_sin_cos_K1_q0));
fft1D_512_sin_or_cos_double_s_fourth_order_double_sin_cos_K2_ROM_1P_LUTRAM_1R #(.DataWidth( 44 ),.AddressRange( 256 ),.AddressWidth( 8 ))
fourth_order_double_sin_cos_K2_U(.clk(ap_clk),.reset(ap_rst),.address0(fourth_order_double_sin_cos_K2_address0),.ce0(fourth_order_double_sin_cos_K2_ce0_local),.q0(fourth_order_double_sin_cos_K2_q0));
fft1D_512_sin_or_cos_double_s_fourth_order_double_sin_cos_K3_ROM_1P_LUTRAM_1R #(.DataWidth( 33 ),.AddressRange( 256 ),.AddressWidth( 8 ))
fourth_order_double_sin_cos_K3_U(.clk(ap_clk),.reset(ap_rst),.address0(fourth_order_double_sin_cos_K3_address0),.ce0(fourth_order_double_sin_cos_K3_ce0_local),.q0(fourth_order_double_sin_cos_K3_q0));
fft1D_512_sin_or_cos_double_s_fourth_order_double_sin_cos_K4_ROM_1P_LUTRAM_1R #(.DataWidth( 25 ),.AddressRange( 256 ),.AddressWidth( 8 ))
fourth_order_double_sin_cos_K4_U(.clk(ap_clk),.reset(ap_rst),.address0(fourth_order_double_sin_cos_K4_address0),.ce0(fourth_order_double_sin_cos_K4_ce0_local),.q0(fourth_order_double_sin_cos_K4_q0));
fft1D_512_sin_or_cos_double_Pipeline_1 grp_sin_or_cos_double_Pipeline_1_fu_382(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sin_or_cos_double_Pipeline_1_fu_382_ap_start),.ap_done(grp_sin_or_cos_double_Pipeline_1_fu_382_ap_done),.ap_idle(grp_sin_or_cos_double_Pipeline_1_fu_382_ap_idle),.ap_ready(grp_sin_or_cos_double_Pipeline_1_fu_382_ap_ready),.out_bits_5_out(grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_5_out),.out_bits_5_out_ap_vld(grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_5_out_ap_vld),.out_bits_4_out(grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_4_out),.out_bits_4_out_ap_vld(grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_4_out_ap_vld),.out_bits_3_out(grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_3_out),.out_bits_3_out_ap_vld(grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_3_out_ap_vld));
fft1D_512_sin_or_cos_double_Pipeline_2 grp_sin_or_cos_double_Pipeline_2_fu_389(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sin_or_cos_double_Pipeline_2_fu_389_ap_start),.ap_done(grp_sin_or_cos_double_Pipeline_2_fu_389_ap_done),.ap_idle(grp_sin_or_cos_double_Pipeline_2_fu_389_ap_idle),.ap_ready(grp_sin_or_cos_double_Pipeline_2_fu_389_ap_ready),.out_bits_5_reload(out_bits_5_loc_fu_288),.out_bits_4_reload(out_bits_4_loc_fu_284),.out_bits_3_reload(out_bits_3_loc_fu_280),.result(result_reg_1802),.out_bits_9_out(grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_9_out),.out_bits_9_out_ap_vld(grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_9_out_ap_vld),.out_bits_8_out(grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_8_out),.out_bits_8_out_ap_vld(grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_8_out_ap_vld),.out_bits_7_out(grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_7_out),.out_bits_7_out_ap_vld(grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_7_out_ap_vld));
fft1D_512_sin_or_cos_double_Pipeline_3 grp_sin_or_cos_double_Pipeline_3_fu_400(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sin_or_cos_double_Pipeline_3_fu_400_ap_start),.ap_done(grp_sin_or_cos_double_Pipeline_3_fu_400_ap_done),.ap_idle(grp_sin_or_cos_double_Pipeline_3_fu_400_ap_idle),.ap_ready(grp_sin_or_cos_double_Pipeline_3_fu_400_ap_ready),.out_bits_7_reload(grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_7_out),.out_bits_8_reload(grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_8_out),.out_bits_9_reload(grp_sin_or_cos_double_Pipeline_2_fu_389_out_bits_9_out),.out_bits_6(out_bits_6_reg_1832),.c_3_out(grp_sin_or_cos_double_Pipeline_3_fu_400_c_3_out),.c_3_out_ap_vld(grp_sin_or_cos_double_Pipeline_3_fu_400_c_3_out_ap_vld),.c_2_out(grp_sin_or_cos_double_Pipeline_3_fu_400_c_2_out),.c_2_out_ap_vld(grp_sin_or_cos_double_Pipeline_3_fu_400_c_2_out_ap_vld),.c_1_out(grp_sin_or_cos_double_Pipeline_3_fu_400_c_1_out),.c_1_out_ap_vld(grp_sin_or_cos_double_Pipeline_3_fu_400_c_1_out_ap_vld),.c_out(grp_sin_or_cos_double_Pipeline_3_fu_400_c_out),.c_out_ap_vld(grp_sin_or_cos_double_Pipeline_3_fu_400_c_out_ap_vld));
fft1D_512_sin_or_cos_double_Pipeline_4 grp_sin_or_cos_double_Pipeline_4_fu_412(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sin_or_cos_double_Pipeline_4_fu_412_ap_start),.ap_done(grp_sin_or_cos_double_Pipeline_4_fu_412_ap_done),.ap_idle(grp_sin_or_cos_double_Pipeline_4_fu_412_ap_idle),.ap_ready(grp_sin_or_cos_double_Pipeline_4_fu_412_ap_ready),.result(result_reg_1802),.c_reload(grp_sin_or_cos_double_Pipeline_3_fu_400_c_out),.c_1_reload(grp_sin_or_cos_double_Pipeline_3_fu_400_c_1_out),.c_2_reload(grp_sin_or_cos_double_Pipeline_3_fu_400_c_2_out),.c_3_reload(grp_sin_or_cos_double_Pipeline_3_fu_400_c_3_out),.shift_1_out(grp_sin_or_cos_double_Pipeline_4_fu_412_shift_1_out),.shift_1_out_ap_vld(grp_sin_or_cos_double_Pipeline_4_fu_412_shift_1_out_ap_vld),.in_shift_out(grp_sin_or_cos_double_Pipeline_4_fu_412_in_shift_out),.in_shift_out_ap_vld(grp_sin_or_cos_double_Pipeline_4_fu_412_in_shift_out_ap_vld));
fft1D_512_mul_35ns_25ns_60_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 35 ),.din1_WIDTH( 25 ),.dout_WIDTH( 60 ))
mul_35ns_25ns_60_2_1_U29(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_423_p0),.din1(grp_fu_423_p1),.ce(1'b1),.dout(grp_fu_423_p2));
fft1D_512_mul_42ns_33ns_75_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 42 ),.din1_WIDTH( 33 ),.dout_WIDTH( 75 ))
mul_42ns_33ns_75_2_1_U30(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_427_p0),.din1(grp_fu_427_p1),.ce(1'b1),.dout(grp_fu_427_p2));
fft1D_512_mul_49ns_44s_93_5_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 49 ),.din1_WIDTH( 44 ),.dout_WIDTH( 93 ))
mul_49ns_44s_93_5_1_U31(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_431_p0),.din1(fourth_order_double_sin_cos_K2_load_reg_1665),.ce(1'b1),.dout(grp_fu_431_p2));
fft1D_512_mul_49ns_49ns_98_5_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 49 ),.din1_WIDTH( 49 ),.dout_WIDTH( 98 ))
mul_49ns_49ns_98_5_1_U32(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_435_p0),.din1(grp_fu_435_p1),.ce(1'b1),.dout(grp_fu_435_p2));
fft1D_512_mul_49ns_49ns_98_5_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 49 ),.din1_WIDTH( 49 ),.dout_WIDTH( 98 ))
mul_49ns_49ns_98_5_1_U33(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_439_p0),.din1(grp_fu_439_p1),.ce(1'b1),.dout(grp_fu_439_p2));
fft1D_512_mul_56ns_52s_108_5_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 56 ),.din1_WIDTH( 52 ),.dout_WIDTH( 108 ))
mul_56ns_52s_108_5_1_U34(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_443_p0),.din1(fourth_order_double_sin_cos_K1_load_reg_1660),.ce(1'b1),.dout(grp_fu_443_p2));
fft1D_512_mul_64s_63ns_126_5_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 64 ),.din1_WIDTH( 63 ),.dout_WIDTH( 126 ))
mul_64s_63ns_126_5_1_U35(.clk(ap_clk),.reset(ap_rst),.din0(add_ln37_3_reg_1782),.din1(grp_fu_447_p1),.ce(1'b1),.dout(grp_fu_447_p2));
fft1D_512_mul_170s_53ns_170_5_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 170 ),.din1_WIDTH( 53 ),.dout_WIDTH( 170 ))
mul_170s_53ns_170_5_1_U36(.clk(ap_clk),.reset(ap_rst),.din0(Med_reg_1516),.din1(grp_fu_451_p1),.ce(1'b1),.dout(grp_fu_451_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_1_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 1 ),.CASE1( 3'h1 ),.din1_WIDTH( 1 ),.CASE2( 3'h2 ),.din2_WIDTH( 1 ),.CASE3( 3'h3 ),.din3_WIDTH( 1 ),.CASE4( 3'h4 ),.din4_WIDTH( 1 ),.CASE5( 3'h5 ),.din5_WIDTH( 1 ),.CASE6( 3'h6 ),.din6_WIDTH( 1 ),.CASE7( 3'h7 ),.din7_WIDTH( 1 ),.def_WIDTH( 1 ),.sel_WIDTH( 3 ),.dout_WIDTH( 1 ))
sparsemux_17_3_1_1_1_U37(.din0(1'd0),.din1(1'd1),.din2(1'd1),.din3(1'd0),.din4(1'd0),.din5(1'd1),.din6(1'd1),.din7(1'd0),.def(tmp_8_fu_703_p17),.sel(k_1_reg_1542),.dout(tmp_8_fu_703_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_33_4_1_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 1 ),.CASE1( 4'h1 ),.din1_WIDTH( 1 ),.CASE2( 4'h2 ),.din2_WIDTH( 1 ),.CASE3( 4'h3 ),.din3_WIDTH( 1 ),.CASE4( 4'h4 ),.din4_WIDTH( 1 ),.CASE5( 4'h5 ),.din5_WIDTH( 1 ),.CASE6( 4'h6 ),.din6_WIDTH( 1 ),.CASE7( 4'h7 ),.din7_WIDTH( 1 ),.CASE8( 4'h8 ),.din8_WIDTH( 1 ),.CASE9( 4'h9 ),.din9_WIDTH( 1 ),.CASE10( 4'hA ),.din10_WIDTH( 1 ),.CASE11( 4'hB ),.din11_WIDTH( 1 ),.CASE12( 4'hC ),.din12_WIDTH( 1 ),.CASE13( 4'hD ),.din13_WIDTH( 1 ),.CASE14( 4'hE ),.din14_WIDTH( 1 ),.CASE15( 4'hF ),.din15_WIDTH( 1 ),.def_WIDTH( 1 ),.sel_WIDTH( 4 ),.dout_WIDTH( 1 ))
sparsemux_33_4_1_1_1_U38(.din0(1'd0),.din1(1'd0),.din2(1'd0),.din3(1'd1),.din4(1'd1),.din5(1'd1),.din6(1'd1),.din7(1'd0),.din8(1'd0),.din9(1'd1),.din10(1'd1),.din11(1'd1),.din12(1'd1),.din13(1'd0),.din14(1'd0),.din15(1'd0),.def(tmp_12_fu_770_p33),.sel(index_fu_764_p3),.dout(tmp_12_fu_770_p35));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_33_4_1_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 1 ),.CASE1( 4'h1 ),.din1_WIDTH( 1 ),.CASE2( 4'h2 ),.din2_WIDTH( 1 ),.CASE3( 4'h3 ),.din3_WIDTH( 1 ),.CASE4( 4'h4 ),.din4_WIDTH( 1 ),.CASE5( 4'h5 ),.din5_WIDTH( 1 ),.CASE6( 4'h6 ),.din6_WIDTH( 1 ),.CASE7( 4'h7 ),.din7_WIDTH( 1 ),.CASE8( 4'h8 ),.din8_WIDTH( 1 ),.CASE9( 4'h9 ),.din9_WIDTH( 1 ),.CASE10( 4'hA ),.din10_WIDTH( 1 ),.CASE11( 4'hB ),.din11_WIDTH( 1 ),.CASE12( 4'hC ),.din12_WIDTH( 1 ),.CASE13( 4'hD ),.din13_WIDTH( 1 ),.CASE14( 4'hE ),.din14_WIDTH( 1 ),.CASE15( 4'hF ),.din15_WIDTH( 1 ),.def_WIDTH( 1 ),.sel_WIDTH( 4 ),.dout_WIDTH( 1 ))
sparsemux_33_4_1_1_1_U39(.din0(1'd0),.din1(1'd0),.din2(1'd1),.din3(1'd0),.din4(1'd1),.din5(1'd1),.din6(1'd0),.din7(1'd1),.din8(1'd1),.din9(1'd0),.din10(1'd1),.din11(1'd1),.din12(1'd0),.din13(1'd1),.din14(1'd0),.din15(1'd0),.def(tmp_13_fu_842_p33),.sel(index_fu_764_p3),.dout(tmp_13_fu_842_p35));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sin_or_cos_double_Pipeline_1_fu_382_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_sin_or_cos_double_Pipeline_1_fu_382_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_Pipeline_1_fu_382_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_Pipeline_1_fu_382_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sin_or_cos_double_Pipeline_2_fu_389_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state30)) begin
            grp_sin_or_cos_double_Pipeline_2_fu_389_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_Pipeline_2_fu_389_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_Pipeline_2_fu_389_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sin_or_cos_double_Pipeline_3_fu_400_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state32)) begin
            grp_sin_or_cos_double_Pipeline_3_fu_400_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_Pipeline_3_fu_400_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_Pipeline_3_fu_400_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sin_or_cos_double_Pipeline_4_fu_412_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state34)) begin
            grp_sin_or_cos_double_Pipeline_4_fu_412_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_Pipeline_4_fu_412_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_Pipeline_4_fu_412_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        B_reg_1621 <= B_fu_1004_p1;
        B_trunc_reg_1626 <= {{x_fu_987_p3[55:7]}};
        tmp_1_reg_1616 <= {{x_fu_987_p3[62:56]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        B_squared_reg_1654 <= {{grp_fu_435_p2[97:49]}};
        fourth_order_double_sin_cos_K1_load_reg_1660 <= fourth_order_double_sin_cos_K1_q0;
        fourth_order_double_sin_cos_K2_load_reg_1665 <= fourth_order_double_sin_cos_K2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        Ex_1_reg_1570 <= Ex_1_fu_683_p2;
        Mx_reg_1563 <= {{shl_ln504_fu_668_p2[123:61]}};
        and_ln271_reg_1598 <= and_ln271_fu_927_p2;
        cos_basis_reg_1592 <= cos_basis_fu_756_p3;
        icmp_ln282_reg_1604 <= icmp_ln282_fu_943_p2;
        results_sign_3_reg_1611 <= results_sign_3_fu_960_p3;
        sin_basis_reg_1587 <= sin_basis_fu_748_p3;
        sub_ln506_reg_1582 <= sub_ln506_fu_697_p2;
        tmp_reg_1576 <= Ex_1_fu_683_p2[32'd10];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        Med_reg_1516 <= {{shl_ln398_fu_523_p2[255:86]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        Mx_2_reg_1787 <= Mx_2_fu_1189_p3;
        add_ln37_3_reg_1782 <= add_ln37_3_fu_1183_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        Mx_bits_2_reg_1548 <= Mx_bits_2_fu_590_p3;
        k_1_reg_1542 <= k_1_fu_575_p3;
        tmp_s_reg_1553 <= {{Mx_bits_2_fu_590_p3[123:63]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        Mx_bits_reg_1531 <= {{grp_fu_451_p2[166:43]}};
        k_reg_1537 <= {{grp_fu_451_p2[169:167]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        add_ln37_1_reg_1767 <= add_ln37_1_fu_1146_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        closepath_reg_1495 <= closepath_fu_481_p2;
        din_exp_reg_1482 <= {{data_fu_455_p1[62:52]}};
        din_sig_reg_1489 <= din_sig_fu_477_p1;
        din_sign_reg_1476 <= data_fu_455_p1[32'd63];
        trunc_ln398_reg_1506 <= trunc_ln398_fu_516_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        fourth_order_double_sin_cos_K3_load_reg_1732 <= fourth_order_double_sin_cos_K3_q0;
        fourth_order_double_sin_cos_K4_load_reg_1742 <= fourth_order_double_sin_cos_K4_q0;
        t1_reg_1712 <= fourth_order_double_sin_cos_K0_q0;
        tmp_3_reg_1727 <= {{grp_fu_435_p2[97:56]}};
        tmp_4_reg_1737 <= {{grp_fu_439_p2[97:63]}};
        trunc_ln1_reg_1722 <= {{grp_fu_431_p2[92:45]}};
        trunc_ln_reg_1717 <= {{grp_fu_443_p2[107:52]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln271_1_reg_1526 <= icmp_ln271_1_fu_550_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        icmp_ln433_reg_1849 <= icmp_ln433_fu_1271_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sin_or_cos_double_Pipeline_4_fu_412_in_shift_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state35))) begin
        in_shift_loc_fu_244 <= grp_sin_or_cos_double_Pipeline_4_fu_412_in_shift_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        lshr_ln_reg_1772 <= {{grp_fu_423_p2[59:31]}};
        tmp_10_reg_1777 <= {{grp_fu_427_p2[74:38]}};
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        out_bits_3_loc_fu_280 <= grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_4_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        out_bits_4_loc_fu_284 <= grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_4_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        out_bits_5_loc_fu_288 <= grp_sin_or_cos_double_Pipeline_1_fu_382_out_bits_5_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        out_bits_6_reg_1832[31 : 17] <= out_bits_6_fu_1247_p3[31 : 17];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        result_reg_1802 <= {{grp_fu_447_p2[125:63]}};
        tmp_2_reg_1809 <= {{grp_fu_447_p2[77:63]}};
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sin_or_cos_double_Pipeline_4_fu_412_shift_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state35))) begin
        shift_1_loc_fu_248 <= grp_sin_or_cos_double_Pipeline_4_fu_412_shift_1_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        table_256_reg_1511 <= ref_4oPi_table_256_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        zext_ln25_reg_1631[48 : 0] <= zext_ln25_fu_1018_p1[48 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        zext_ln32_reg_1637[7 : 0] <= zext_ln32_fu_1029_p1[7 : 0];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
always @ (*) begin
    if ((grp_sin_or_cos_double_Pipeline_1_fu_382_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state30_blk = 1'b0;
always @ (*) begin
    if ((grp_sin_or_cos_double_Pipeline_2_fu_389_ap_done == 1'b0)) begin
        ap_ST_fsm_state31_blk = 1'b1;
    end else begin
        ap_ST_fsm_state31_blk = 1'b0;
    end
end
assign ap_ST_fsm_state32_blk = 1'b0;
always @ (*) begin
    if ((grp_sin_or_cos_double_Pipeline_3_fu_400_ap_done == 1'b0)) begin
        ap_ST_fsm_state33_blk = 1'b1;
    end else begin
        ap_ST_fsm_state33_blk = 1'b0;
    end
end
assign ap_ST_fsm_state34_blk = 1'b0;
always @ (*) begin
    if ((grp_sin_or_cos_double_Pipeline_4_fu_412_ap_done == 1'b0)) begin
        ap_ST_fsm_state35_blk = 1'b1;
    end else begin
        ap_ST_fsm_state35_blk = 1'b0;
    end
end
assign ap_ST_fsm_state36_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state36) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state36)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        fourth_order_double_sin_cos_K0_ce0_local = 1'b1;
    end else begin
        fourth_order_double_sin_cos_K0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        fourth_order_double_sin_cos_K1_ce0_local = 1'b1;
    end else begin
        fourth_order_double_sin_cos_K1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        fourth_order_double_sin_cos_K2_ce0_local = 1'b1;
    end else begin
        fourth_order_double_sin_cos_K2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        fourth_order_double_sin_cos_K3_ce0_local = 1'b1;
    end else begin
        fourth_order_double_sin_cos_K3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        fourth_order_double_sin_cos_K4_ce0_local = 1'b1;
    end else begin
        fourth_order_double_sin_cos_K4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_435_p0 = zext_ln25_1_fu_1045_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_435_p0 = zext_ln25_fu_1018_p1;
    end else begin
        grp_fu_435_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_435_p1 = zext_ln25_reg_1631;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_435_p1 = zext_ln25_fu_1018_p1;
    end else begin
        grp_fu_435_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ref_4oPi_table_256_ce0_local = 1'b1;
    end else begin
        ref_4oPi_table_256_ce0_local = 1'b0;
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
            if (((grp_sin_or_cos_double_Pipeline_1_fu_382_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
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
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            if (((grp_sin_or_cos_double_Pipeline_2_fu_389_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state31))) begin
                ap_NS_fsm = ap_ST_fsm_state32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            if (((grp_sin_or_cos_double_Pipeline_3_fu_400_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
                ap_NS_fsm = ap_ST_fsm_state34;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            if (((grp_sin_or_cos_double_Pipeline_4_fu_412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state35))) begin
                ap_NS_fsm = ap_ST_fsm_state36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state35;
            end
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_fu_1023_p3 = {{sin_basis_reg_1587}, {tmp_1_reg_1616}};
assign B_fu_1004_p1 = x_fu_987_p3[55:0];
assign Ex_1_fu_683_p2 = (select_ln453_fu_612_p3 - zext_ln505_fu_660_p1);
assign Ex_3_fu_1276_p3 = ((cos_basis_reg_1592[0:0] == 1'b1) ? 11'd0 : Ex_1_reg_1570);
assign Ex_fu_607_p2 = ($signed(din_exp_reg_1482) + $signed(11'd1027));
assign Mx_2_fu_1189_p3 = ((cos_basis_reg_1592[0:0] == 1'b1) ? 63'd9223372036854775807 : Mx_reg_1563);
assign Mx_bits_1_fu_585_p2 = (124'd0 - Mx_bits_reg_1531);
assign Mx_bits_2_fu_590_p3 = ((trunc_ln491_fu_581_p1[0:0] == 1'b1) ? Mx_bits_1_fu_585_p2 : Mx_bits_reg_1531);
assign Mx_zeros_fu_656_p1 = tmp_7_fu_648_p3[6:0];
assign X_fu_538_p3 = {{1'd1}, {din_sig_reg_1489}};
assign add_ln37_1_fu_1146_p2 = ($signed(add_ln37_fu_1137_p2) + $signed(sext_ln37_2_fu_1143_p1));
assign add_ln37_2_fu_1175_p2 = (add_ln37_1_reg_1767 + zext_ln37_1_fu_1172_p1);
assign add_ln37_3_fu_1183_p2 = (add_ln37_2_fu_1175_p2 + zext_ln242_fu_1180_p1);
assign add_ln37_fu_1137_p2 = ($signed(sext_ln37_fu_1130_p1) + $signed(sext_ln37_1_fu_1134_p1));
assign add_ln396_fu_487_p2 = ($signed(din_exp_fu_467_p4) + $signed(11'd1101));
assign add_ln432_fu_1292_p2 = ($signed(sext_ln252_fu_1282_p1) + $signed(12'd1023));
assign addr_fu_493_p3 = ((closepath_fu_481_p2[0:0] == 1'b1) ? 11'd74 : add_ln396_fu_487_p2);
assign and_ln271_fu_927_p2 = (icmp_ln271_fu_922_p2 & icmp_ln271_1_reg_1526);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = t_2_fu_1391_p4;
assign closepath_fu_481_p2 = ((din_exp_fu_467_p4 < 11'd1022) ? 1'b1 : 1'b0);
assign cos_basis_fu_756_p3 = ((do_cos[0:0] == 1'b1) ? xor_ln242_fu_742_p2 : tmp_8_fu_703_p19);
assign data_fu_455_p1 = t_in;
assign din_exp_fu_467_p4 = {{data_fu_455_p1[62:52]}};
assign din_sig_fu_477_p1 = data_fu_455_p1[51:0];
assign empty_fu_1321_p1 = newexp_fu_1302_p2[10:0];
assign fourth_order_double_sin_cos_K0_address0 = zext_ln32_reg_1637;
assign fourth_order_double_sin_cos_K1_address0 = zext_ln32_fu_1029_p1;
assign fourth_order_double_sin_cos_K2_address0 = zext_ln32_fu_1029_p1;
assign fourth_order_double_sin_cos_K3_address0 = zext_ln32_reg_1637;
assign fourth_order_double_sin_cos_K4_address0 = zext_ln32_reg_1637;
assign grp_fu_423_p0 = grp_fu_423_p00;
assign grp_fu_423_p00 = tmp_4_reg_1737;
assign grp_fu_423_p1 = grp_fu_423_p10;
assign grp_fu_423_p10 = fourth_order_double_sin_cos_K4_load_reg_1742;
assign grp_fu_427_p0 = grp_fu_427_p00;
assign grp_fu_427_p00 = tmp_3_reg_1727;
assign grp_fu_427_p1 = grp_fu_427_p10;
assign grp_fu_427_p10 = fourth_order_double_sin_cos_K3_load_reg_1732;
assign grp_fu_431_p0 = grp_fu_431_p00;
assign grp_fu_431_p00 = B_squared_reg_1654;
assign grp_fu_439_p0 = zext_ln25_1_fu_1045_p1;
assign grp_fu_439_p1 = zext_ln25_1_fu_1045_p1;
assign grp_fu_443_p0 = grp_fu_443_p00;
assign grp_fu_443_p00 = B_reg_1621;
assign grp_fu_447_p1 = grp_fu_447_p10;
assign grp_fu_447_p10 = Mx_2_reg_1787;
assign grp_fu_451_p1 = grp_fu_451_p10;
assign grp_fu_451_p10 = X_fu_538_p3;
assign grp_sin_or_cos_double_Pipeline_1_fu_382_ap_start = grp_sin_or_cos_double_Pipeline_1_fu_382_ap_start_reg;
assign grp_sin_or_cos_double_Pipeline_2_fu_389_ap_start = grp_sin_or_cos_double_Pipeline_2_fu_389_ap_start_reg;
assign grp_sin_or_cos_double_Pipeline_3_fu_400_ap_start = grp_sin_or_cos_double_Pipeline_3_fu_400_ap_start_reg;
assign grp_sin_or_cos_double_Pipeline_4_fu_412_ap_start = grp_sin_or_cos_double_Pipeline_4_fu_412_ap_start_reg;
assign icmp_ln271_1_fu_550_p2 = ((din_sig_reg_1489 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln271_fu_922_p2 = ((din_exp_reg_1482 == 11'd0) ? 1'b1 : 1'b0);
assign icmp_ln282_fu_943_p2 = ((din_exp_reg_1482 == 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln433_fu_1271_p2 = ((result_reg_1802 == 63'd0) ? 1'b1 : 1'b0);
assign index_fu_764_p3 = {{din_sign_reg_1476}, {k_1_reg_1542}};
assign k_1_fu_575_p3 = ((closepath_reg_1495[0:0] == 1'b1) ? 3'd0 : k_reg_1537);
assign lshr_ln506_fu_977_p2 = Mx_reg_1563 >> zext_ln506_fu_973_p1;
assign newexp_fu_1302_p2 = ($signed(sext_ln432_fu_1298_p1) - $signed(shift_1_loc_fu_248));
assign or_ln282_fu_1349_p2 = (or_ln433_fu_1316_p2 | icmp_ln282_reg_1604);
assign or_ln433_fu_1316_p2 = (tmp_11_fu_1308_p3 | icmp_ln433_reg_1849);
assign out_bits_6_fu_1247_p3 = {{tmp_2_reg_1809}, {17'd65536}};
assign phitmp_fu_1325_p4 = {{in_shift_loc_fu_244[61:10]}};
assign ref_4oPi_table_256_address0 = zext_ln397_fu_511_p1;
assign results_exp_1_fu_1377_p3 = ((and_ln271_reg_1598[0:0] == 1'b1) ? select_ln259_fu_1335_p3 : results_exp_fu_1354_p3);
assign results_exp_fu_1354_p3 = ((or_ln282_fu_1349_p2[0:0] == 1'b1) ? select_ln282_fu_1342_p3 : empty_fu_1321_p1);
assign results_sig_1_fu_1384_p3 = ((and_ln271_reg_1598[0:0] == 1'b1) ? 52'd0 : results_sig_fu_1369_p3);
assign results_sig_fu_1369_p3 = ((or_ln282_fu_1349_p2[0:0] == 1'b1) ? select_ln282_2_fu_1362_p3 : phitmp_fu_1325_p4);
assign results_sign_2_fu_938_p2 = (xor_ln278_fu_932_p2 & din_sign_reg_1476);
assign results_sign_3_fu_960_p3 = ((and_ln271_fu_927_p2[0:0] == 1'b1) ? results_sign_2_fu_938_p2 : results_sign_4_fu_954_p2);
assign results_sign_4_fu_954_p2 = (xor_ln282_fu_948_p2 & results_sign_fu_914_p3);
assign results_sign_fu_914_p3 = ((cos_basis_fu_756_p3[0:0] == 1'b1) ? tmp_12_fu_770_p35 : tmp_13_fu_842_p35);
assign select_ln259_fu_1335_p3 = ((do_cos[0:0] == 1'b1) ? 11'd1023 : 11'd0);
assign select_ln282_2_fu_1362_p3 = ((icmp_ln282_reg_1604[0:0] == 1'b1) ? 52'd4503599627370495 : 52'd0);
assign select_ln282_fu_1342_p3 = ((icmp_ln282_reg_1604[0:0] == 1'b1) ? 11'd2047 : 11'd0);
assign select_ln453_fu_612_p3 = ((closepath_reg_1495[0:0] == 1'b1) ? Ex_fu_607_p2 : 11'd0);
assign select_ln506_fu_968_p3 = ((tmp_reg_1576[0:0] == 1'b1) ? sub_ln506_reg_1582 : Ex_1_reg_1570);
assign sext_ln252_fu_1282_p1 = $signed(Ex_3_fu_1276_p3);
assign sext_ln37_1_fu_1134_p1 = $signed(trunc_ln_reg_1717);
assign sext_ln37_2_fu_1143_p1 = $signed(trunc_ln1_reg_1722);
assign sext_ln37_fu_1130_p1 = $signed(t1_1_fu_1107_p3);
assign sext_ln432_fu_1298_p1 = $signed(add_ln432_fu_1292_p2);
assign sext_ln75_fu_644_p1 = $signed(tmp_6_fu_636_p3);
assign shl_ln398_fu_523_p2 = table_256_reg_1511 << zext_ln398_fu_520_p1;
assign shl_ln504_fu_668_p2 = Mx_bits_2_reg_1548 << zext_ln504_fu_664_p1;
assign shl_ln506_fu_982_p2 = Mx_reg_1563 << zext_ln506_fu_973_p1;
assign sin_basis_fu_748_p3 = ((do_cos[0:0] == 1'b1) ? tmp_8_fu_703_p19 : xor_ln242_fu_742_p2);
assign sub_ln506_fu_697_p2 = (11'd0 - Ex_1_fu_683_p2);
assign t1_1_fu_1107_p3 = {{t1_reg_1712}, {4'd0}};
assign t_2_fu_1391_p4 = {{{results_sign_3_reg_1611}, {results_exp_1_fu_1377_p3}}, {results_sig_1_fu_1384_p3}};
assign t_fu_619_p3 = {{tmp_s_reg_1553}, {1'd1}};
assign tmp_11_fu_1308_p3 = newexp_fu_1302_p2[32'd31];
assign tmp_12_fu_770_p33 = 'bx;
assign tmp_13_fu_842_p33 = 'bx;
integer ap_tvar_int_0;
always @ (t_fu_619_p3) begin
    for (ap_tvar_int_0 = 62 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 61 - 0) begin
            tmp_5_fu_626_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_5_fu_626_p4[ap_tvar_int_0] = t_fu_619_p3[61 - ap_tvar_int_0];
        end
    end
end
assign tmp_6_fu_636_p3 = {{1'd1}, {tmp_5_fu_626_p4}};
always @ (sext_ln75_fu_644_p1) begin
    if (sext_ln75_fu_644_p1[0] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd0;
    end else if (sext_ln75_fu_644_p1[1] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd1;
    end else if (sext_ln75_fu_644_p1[2] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd2;
    end else if (sext_ln75_fu_644_p1[3] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd3;
    end else if (sext_ln75_fu_644_p1[4] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd4;
    end else if (sext_ln75_fu_644_p1[5] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd5;
    end else if (sext_ln75_fu_644_p1[6] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd6;
    end else if (sext_ln75_fu_644_p1[7] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd7;
    end else if (sext_ln75_fu_644_p1[8] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd8;
    end else if (sext_ln75_fu_644_p1[9] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd9;
    end else if (sext_ln75_fu_644_p1[10] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd10;
    end else if (sext_ln75_fu_644_p1[11] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd11;
    end else if (sext_ln75_fu_644_p1[12] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd12;
    end else if (sext_ln75_fu_644_p1[13] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd13;
    end else if (sext_ln75_fu_644_p1[14] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd14;
    end else if (sext_ln75_fu_644_p1[15] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd15;
    end else if (sext_ln75_fu_644_p1[16] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd16;
    end else if (sext_ln75_fu_644_p1[17] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd17;
    end else if (sext_ln75_fu_644_p1[18] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd18;
    end else if (sext_ln75_fu_644_p1[19] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd19;
    end else if (sext_ln75_fu_644_p1[20] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd20;
    end else if (sext_ln75_fu_644_p1[21] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd21;
    end else if (sext_ln75_fu_644_p1[22] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd22;
    end else if (sext_ln75_fu_644_p1[23] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd23;
    end else if (sext_ln75_fu_644_p1[24] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd24;
    end else if (sext_ln75_fu_644_p1[25] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd25;
    end else if (sext_ln75_fu_644_p1[26] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd26;
    end else if (sext_ln75_fu_644_p1[27] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd27;
    end else if (sext_ln75_fu_644_p1[28] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd28;
    end else if (sext_ln75_fu_644_p1[29] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd29;
    end else if (sext_ln75_fu_644_p1[30] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd30;
    end else if (sext_ln75_fu_644_p1[31] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd31;
    end else if (sext_ln75_fu_644_p1[32] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd32;
    end else if (sext_ln75_fu_644_p1[33] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd33;
    end else if (sext_ln75_fu_644_p1[34] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd34;
    end else if (sext_ln75_fu_644_p1[35] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd35;
    end else if (sext_ln75_fu_644_p1[36] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd36;
    end else if (sext_ln75_fu_644_p1[37] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd37;
    end else if (sext_ln75_fu_644_p1[38] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd38;
    end else if (sext_ln75_fu_644_p1[39] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd39;
    end else if (sext_ln75_fu_644_p1[40] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd40;
    end else if (sext_ln75_fu_644_p1[41] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd41;
    end else if (sext_ln75_fu_644_p1[42] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd42;
    end else if (sext_ln75_fu_644_p1[43] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd43;
    end else if (sext_ln75_fu_644_p1[44] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd44;
    end else if (sext_ln75_fu_644_p1[45] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd45;
    end else if (sext_ln75_fu_644_p1[46] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd46;
    end else if (sext_ln75_fu_644_p1[47] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd47;
    end else if (sext_ln75_fu_644_p1[48] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd48;
    end else if (sext_ln75_fu_644_p1[49] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd49;
    end else if (sext_ln75_fu_644_p1[50] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd50;
    end else if (sext_ln75_fu_644_p1[51] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd51;
    end else if (sext_ln75_fu_644_p1[52] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd52;
    end else if (sext_ln75_fu_644_p1[53] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd53;
    end else if (sext_ln75_fu_644_p1[54] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd54;
    end else if (sext_ln75_fu_644_p1[55] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd55;
    end else if (sext_ln75_fu_644_p1[56] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd56;
    end else if (sext_ln75_fu_644_p1[57] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd57;
    end else if (sext_ln75_fu_644_p1[58] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd58;
    end else if (sext_ln75_fu_644_p1[59] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd59;
    end else if (sext_ln75_fu_644_p1[60] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd60;
    end else if (sext_ln75_fu_644_p1[61] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd61;
    end else if (sext_ln75_fu_644_p1[62] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd62;
    end else if (sext_ln75_fu_644_p1[63] == 1'b1) begin
        tmp_7_fu_648_p3 = 64'd63;
    end else begin
        tmp_7_fu_648_p3 = 64'd64;
    end
end
assign tmp_8_fu_703_p17 = 'bx;
assign tmp_9_fu_501_p4 = {{addr_fu_493_p3[10:7]}};
assign trunc_ln398_fu_516_p1 = addr_fu_493_p3[6:0];
assign trunc_ln491_fu_581_p1 = k_1_fu_575_p3[0:0];
assign x_fu_987_p3 = ((tmp_reg_1576[0:0] == 1'b1) ? lshr_ln506_fu_977_p2 : shl_ln506_fu_982_p2);
assign xor_ln242_fu_742_p2 = (tmp_8_fu_703_p19 ^ 1'd1);
assign xor_ln278_fu_932_p2 = (do_cos ^ 1'd1);
assign xor_ln282_fu_948_p2 = (icmp_ln282_fu_943_p2 ^ 1'd1);
assign zext_ln242_fu_1180_p1 = lshr_ln_reg_1772;
assign zext_ln25_1_fu_1045_p1 = B_squared_reg_1654;
assign zext_ln25_fu_1018_p1 = B_trunc_reg_1626;
assign zext_ln32_fu_1029_p1 = A_fu_1023_p3;
assign zext_ln37_1_fu_1172_p1 = tmp_10_reg_1777;
assign zext_ln397_fu_511_p1 = tmp_9_fu_501_p4;
assign zext_ln398_fu_520_p1 = trunc_ln398_reg_1506;
assign zext_ln504_fu_664_p1 = Mx_zeros_fu_656_p1;
assign zext_ln505_fu_660_p1 = Mx_zeros_fu_656_p1;
assign zext_ln506_fu_973_p1 = select_ln506_fu_968_p3;
always @ (posedge ap_clk) begin
    zext_ln25_reg_1631[97:49] <= 49'b0000000000000000000000000000000000000000000000000;
    zext_ln32_reg_1637[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    out_bits_6_reg_1832[16:0] <= 17'b10000000000000000;
end
endmodule 
