
module fft1D_512_fft1D_512_Pipeline_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_we1,DATA_y_3_d1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_we1,DATA_y_2_d1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_we1,DATA_y_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_y_address1,DATA_y_ce1,DATA_y_we1,DATA_y_d1,smem_address0,smem_ce0,smem_q0,smem_13_address0,smem_13_ce0,smem_13_q0,smem_14_address0,smem_14_ce0,smem_14_q0,smem_15_address0,smem_15_ce0,smem_15_q0,smem_16_address0,smem_16_ce0,smem_16_q0,smem_17_address0,smem_17_ce0,smem_17_q0,smem_18_address0,smem_18_ce0,smem_18_q0,smem_19_address0,smem_19_ce0,smem_19_q0,smem_20_address0,smem_20_ce0,smem_20_q0,smem_21_address0,smem_21_ce0,smem_21_q0,smem_22_address0,smem_22_ce0,smem_22_q0,smem_23_address0,smem_23_ce0,smem_23_q0,smem_24_address0,smem_24_ce0,smem_24_q0,p_phi31_out,p_phi31_out_ap_vld,p_phi32_out,p_phi32_out_ap_vld,p_phi33_out,p_phi33_out_ap_vld,p_phi34_out,p_phi34_out_ap_vld,p_phi35_out,p_phi35_out_ap_vld,p_phi36_out,p_phi36_out_ap_vld,p_phi37_out,p_phi37_out_ap_vld,p_phi38_out,p_phi38_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
output   DATA_y_3_we0;
output  [63:0] DATA_y_3_d0;
output  [6:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
output   DATA_y_3_we1;
output  [63:0] DATA_y_3_d1;
output  [6:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
output   DATA_y_2_we0;
output  [63:0] DATA_y_2_d0;
output  [6:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
output   DATA_y_2_we1;
output  [63:0] DATA_y_2_d1;
output  [6:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [6:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
output   DATA_y_1_we1;
output  [63:0] DATA_y_1_d1;
output  [6:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [6:0] DATA_y_address1;
output   DATA_y_ce1;
output   DATA_y_we1;
output  [63:0] DATA_y_d1;
output  [5:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [5:0] smem_13_address0;
output   smem_13_ce0;
input  [63:0] smem_13_q0;
output  [5:0] smem_14_address0;
output   smem_14_ce0;
input  [63:0] smem_14_q0;
output  [5:0] smem_15_address0;
output   smem_15_ce0;
input  [63:0] smem_15_q0;
output  [5:0] smem_16_address0;
output   smem_16_ce0;
input  [63:0] smem_16_q0;
output  [5:0] smem_17_address0;
output   smem_17_ce0;
input  [63:0] smem_17_q0;
output  [5:0] smem_18_address0;
output   smem_18_ce0;
input  [63:0] smem_18_q0;
output  [5:0] smem_19_address0;
output   smem_19_ce0;
input  [63:0] smem_19_q0;
output  [5:0] smem_20_address0;
output   smem_20_ce0;
input  [63:0] smem_20_q0;
output  [5:0] smem_21_address0;
output   smem_21_ce0;
input  [63:0] smem_21_q0;
output  [5:0] smem_22_address0;
output   smem_22_ce0;
input  [63:0] smem_22_q0;
output  [5:0] smem_23_address0;
output   smem_23_ce0;
input  [63:0] smem_23_q0;
output  [5:0] smem_24_address0;
output   smem_24_ce0;
input  [63:0] smem_24_q0;
output  [63:0] p_phi31_out;
output   p_phi31_out_ap_vld;
output  [63:0] p_phi32_out;
output   p_phi32_out_ap_vld;
output  [63:0] p_phi33_out;
output   p_phi33_out_ap_vld;
output  [63:0] p_phi34_out;
output   p_phi34_out_ap_vld;
output  [63:0] p_phi35_out;
output   p_phi35_out_ap_vld;
output  [63:0] p_phi36_out;
output   p_phi36_out_ap_vld;
output  [63:0] p_phi37_out;
output   p_phi37_out_ap_vld;
output  [63:0] p_phi38_out;
output   p_phi38_out_ap_vld;
reg ap_idle;
reg p_phi31_out_ap_vld;
reg p_phi32_out_ap_vld;
reg p_phi33_out_ap_vld;
reg p_phi34_out_ap_vld;
reg p_phi35_out_ap_vld;
reg p_phi36_out_ap_vld;
reg p_phi37_out_ap_vld;
reg p_phi38_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln219_fu_1253_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_4_reg_2255;
reg   [6:0] tid_4_reg_2255_pp0_iter1_reg;
reg   [6:0] tid_4_reg_2255_pp0_iter2_reg;
reg   [6:0] tid_4_reg_2255_pp0_iter3_reg;
reg   [6:0] tid_4_reg_2255_pp0_iter4_reg;
reg   [6:0] tid_4_reg_2255_pp0_iter5_reg;
reg   [6:0] tid_4_reg_2255_pp0_iter6_reg;
reg   [6:0] tid_4_reg_2255_pp0_iter7_reg;
reg   [6:0] tid_4_reg_2255_pp0_iter8_reg;
reg   [6:0] tid_4_reg_2255_pp0_iter9_reg;
reg   [6:0] tid_4_reg_2255_pp0_iter10_reg;
reg   [6:0] tid_4_reg_2255_pp0_iter11_reg;
reg   [6:0] tid_4_reg_2255_pp0_iter12_reg;
reg   [6:0] tid_4_reg_2255_pp0_iter13_reg;
reg   [6:0] tid_4_reg_2255_pp0_iter14_reg;
reg   [0:0] icmp_ln219_reg_2261;
reg   [0:0] icmp_ln219_reg_2261_pp0_iter1_reg;
reg   [0:0] icmp_ln219_reg_2261_pp0_iter2_reg;
reg   [0:0] icmp_ln219_reg_2261_pp0_iter3_reg;
reg   [0:0] icmp_ln219_reg_2261_pp0_iter4_reg;
reg   [0:0] icmp_ln219_reg_2261_pp0_iter5_reg;
reg   [0:0] icmp_ln219_reg_2261_pp0_iter6_reg;
reg   [0:0] icmp_ln219_reg_2261_pp0_iter7_reg;
reg   [0:0] icmp_ln219_reg_2261_pp0_iter8_reg;
reg   [0:0] icmp_ln219_reg_2261_pp0_iter9_reg;
reg   [0:0] icmp_ln219_reg_2261_pp0_iter10_reg;
reg   [0:0] icmp_ln219_reg_2261_pp0_iter11_reg;
reg   [0:0] icmp_ln219_reg_2261_pp0_iter12_reg;
reg   [0:0] icmp_ln219_reg_2261_pp0_iter13_reg;
wire   [8:0] add_ln232_fu_1295_p2;
reg   [8:0] add_ln232_reg_2265;
reg   [8:0] add_ln232_reg_2265_pp0_iter1_reg;
reg   [8:0] add_ln232_reg_2265_pp0_iter2_reg;
reg   [8:0] add_ln232_reg_2265_pp0_iter3_reg;
reg   [8:0] add_ln232_reg_2265_pp0_iter4_reg;
reg   [8:0] add_ln232_reg_2265_pp0_iter5_reg;
reg   [8:0] add_ln232_reg_2265_pp0_iter6_reg;
reg   [8:0] add_ln232_reg_2265_pp0_iter7_reg;
reg   [8:0] add_ln232_reg_2265_pp0_iter8_reg;
reg   [8:0] add_ln232_reg_2265_pp0_iter9_reg;
reg   [8:0] add_ln232_reg_2265_pp0_iter10_reg;
reg   [5:0] tmp_reg_2277;
reg   [5:0] tmp_reg_2277_pp0_iter12_reg;
wire   [8:0] add_ln104_fu_1334_p2;
reg   [8:0] add_ln104_reg_2282;
wire   [8:0] add_ln105_fu_1339_p2;
reg   [8:0] add_ln105_reg_2287;
wire   [8:0] add_ln106_fu_1344_p2;
reg   [8:0] add_ln106_reg_2292;
wire   [8:0] add_ln107_fu_1349_p2;
reg   [8:0] add_ln107_reg_2297;
wire   [8:0] add_ln108_fu_1354_p2;
reg   [8:0] add_ln108_reg_2302;
wire   [3:0] trunc_ln102_fu_1359_p1;
reg   [3:0] trunc_ln102_reg_2307;
reg   [3:0] trunc_ln102_reg_2307_pp0_iter13_reg;
reg   [5:0] tmp_70_reg_2319;
reg   [5:0] tmp_71_reg_2324;
reg   [5:0] tmp_72_reg_2329;
reg   [5:0] tmp_73_reg_2334;
reg   [5:0] tmp_74_reg_2339;
wire   [63:0] tmp_22_fu_1606_p29;
reg   [63:0] tmp_22_reg_2864;
wire   [63:0] tmp_23_fu_1665_p29;
reg   [63:0] tmp_23_reg_2869;
wire   [63:0] tmp_24_fu_1724_p29;
reg   [63:0] tmp_24_reg_2874;
wire   [63:0] tmp_25_fu_1783_p29;
reg   [63:0] tmp_25_reg_2879;
wire   [63:0] tmp_26_fu_1842_p29;
reg   [63:0] tmp_26_reg_2884;
wire   [63:0] tmp_27_fu_1901_p29;
reg   [63:0] tmp_27_reg_2889;
wire   [63:0] tmp_28_fu_1960_p29;
reg   [63:0] tmp_28_reg_2894;
wire   [63:0] tmp_29_fu_2019_p29;
reg   [63:0] tmp_29_reg_2899;
wire   [63:0] zext_ln102_fu_1458_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln104_fu_1474_p1;
wire   [63:0] zext_ln105_fu_1490_p1;
wire   [63:0] zext_ln106_fu_1506_p1;
wire   [63:0] zext_ln107_fu_1522_p1;
wire   [63:0] zext_ln108_fu_1538_p1;
wire   [63:0] zext_ln109_fu_1563_p1;
wire   [63:0] zext_ln110_fu_1589_p1;
wire   [63:0] zext_ln220_fu_2126_p1;
wire   [63:0] zext_ln224_fu_2142_p1;
reg   [63:0] p_phi38_fu_156;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg   [63:0] p_phi37_fu_160;
reg   [63:0] p_phi36_fu_164;
reg   [63:0] p_phi35_fu_168;
reg   [63:0] p_phi34_fu_172;
reg   [63:0] p_phi33_fu_176;
reg   [63:0] p_phi32_fu_180;
reg   [63:0] p_phi31_fu_184;
reg   [6:0] tid_fu_188;
wire   [6:0] add_ln219_fu_1259_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_4;
wire    ap_block_pp0_stage0_01001;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_13_ce0_local;
reg   [5:0] smem_13_address0_local;
reg    smem_14_ce0_local;
reg   [5:0] smem_14_address0_local;
reg    smem_15_ce0_local;
reg   [5:0] smem_15_address0_local;
reg    smem_16_ce0_local;
reg   [5:0] smem_16_address0_local;
reg    smem_17_ce0_local;
reg   [5:0] smem_17_address0_local;
reg    smem_18_ce0_local;
reg   [5:0] smem_18_address0_local;
reg    smem_19_ce0_local;
reg   [5:0] smem_19_address0_local;
reg    smem_20_ce0_local;
reg   [5:0] smem_20_address0_local;
reg    smem_21_ce0_local;
reg   [5:0] smem_21_address0_local;
reg    smem_22_ce0_local;
reg   [5:0] smem_22_address0_local;
reg    smem_23_ce0_local;
reg   [5:0] smem_23_address0_local;
reg    smem_24_ce0_local;
reg   [5:0] smem_24_address0_local;
reg    DATA_y_we1_local;
reg    DATA_y_ce1_local;
reg    DATA_y_we0_local;
reg    DATA_y_ce0_local;
reg    DATA_y_1_we1_local;
reg    DATA_y_1_ce1_local;
reg    DATA_y_1_we0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_we1_local;
reg    DATA_y_2_ce1_local;
reg    DATA_y_2_we0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_we1_local;
reg    DATA_y_3_ce1_local;
reg    DATA_y_3_we0_local;
reg    DATA_y_3_ce0_local;
wire   [2:0] hi_1_fu_1265_p4;
wire   [2:0] trunc_ln232_fu_1279_p1;
wire   [8:0] mul_ln_fu_1283_p5;
wire   [8:0] zext_ln114_fu_1275_p1;
wire   [8:0] grp_fu_1301_p0;
wire   [4:0] grp_fu_1301_p1;
wire   [8:0] mul_ln102_fu_1318_p0;
wire   [10:0] mul_ln102_fu_1318_p1;
wire   [18:0] mul_ln102_fu_1318_p2;
wire   [3:0] grp_fu_1301_p2;
wire   [8:0] mul_ln104_fu_1366_p0;
wire   [10:0] mul_ln104_fu_1366_p1;
wire   [18:0] mul_ln104_fu_1366_p2;
wire   [8:0] mul_ln105_fu_1385_p0;
wire   [10:0] mul_ln105_fu_1385_p1;
wire   [18:0] mul_ln105_fu_1385_p2;
wire   [8:0] mul_ln106_fu_1404_p0;
wire   [10:0] mul_ln106_fu_1404_p1;
wire   [18:0] mul_ln106_fu_1404_p2;
wire   [8:0] mul_ln107_fu_1423_p0;
wire   [10:0] mul_ln107_fu_1423_p1;
wire   [18:0] mul_ln107_fu_1423_p2;
wire   [8:0] mul_ln108_fu_1442_p0;
wire   [10:0] mul_ln108_fu_1442_p1;
wire   [18:0] mul_ln108_fu_1442_p2;
wire   [20:0] tmp_75_fu_1554_p1;
wire  signed [20:0] grp_fu_2182_p3;
wire   [6:0] tmp_75_fu_1554_p4;
wire   [20:0] tmp_76_fu_1580_p1;
wire  signed [20:0] grp_fu_2191_p3;
wire   [6:0] tmp_76_fu_1580_p4;
wire   [63:0] tmp_22_fu_1606_p27;
wire   [63:0] tmp_23_fu_1665_p27;
wire   [63:0] tmp_24_fu_1724_p27;
wire   [63:0] tmp_25_fu_1783_p27;
wire   [63:0] tmp_26_fu_1842_p27;
wire   [63:0] tmp_27_fu_1901_p27;
wire   [63:0] tmp_28_fu_1960_p27;
wire   [63:0] tmp_29_fu_2019_p27;
wire   [6:0] shl_ln220_fu_2121_p2;
wire   [5:0] trunc_ln220_fu_2118_p1;
wire   [6:0] or_ln4_fu_2134_p3;
wire   [8:0] grp_fu_2182_p0;
wire   [9:0] zext_ln102_1_fu_1312_p1;
wire   [5:0] grp_fu_2182_p1;
wire   [10:0] grp_fu_2182_p2;
wire   [8:0] grp_fu_2191_p0;
wire   [5:0] grp_fu_2191_p1;
wire   [10:0] grp_fu_2191_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln102_fu_1318_p00;
wire   [18:0] mul_ln104_fu_1366_p00;
wire   [18:0] mul_ln105_fu_1385_p00;
wire   [18:0] mul_ln106_fu_1404_p00;
wire   [18:0] mul_ln107_fu_1423_p00;
wire   [18:0] mul_ln108_fu_1442_p00;
wire   [3:0] tmp_22_fu_1606_p1;
wire   [3:0] tmp_22_fu_1606_p3;
wire   [3:0] tmp_22_fu_1606_p5;
wire   [3:0] tmp_22_fu_1606_p7;
wire   [3:0] tmp_22_fu_1606_p9;
wire   [3:0] tmp_22_fu_1606_p11;
wire   [3:0] tmp_22_fu_1606_p13;
wire   [3:0] tmp_22_fu_1606_p15;
wire  signed [3:0] tmp_22_fu_1606_p17;
wire  signed [3:0] tmp_22_fu_1606_p19;
wire  signed [3:0] tmp_22_fu_1606_p21;
wire  signed [3:0] tmp_22_fu_1606_p23;
wire  signed [3:0] tmp_22_fu_1606_p25;
wire   [3:0] tmp_23_fu_1665_p1;
wire   [3:0] tmp_23_fu_1665_p3;
wire   [3:0] tmp_23_fu_1665_p5;
wire  signed [3:0] tmp_23_fu_1665_p7;
wire  signed [3:0] tmp_23_fu_1665_p9;
wire  signed [3:0] tmp_23_fu_1665_p11;
wire  signed [3:0] tmp_23_fu_1665_p13;
wire  signed [3:0] tmp_23_fu_1665_p15;
wire   [3:0] tmp_23_fu_1665_p17;
wire   [3:0] tmp_23_fu_1665_p19;
wire   [3:0] tmp_23_fu_1665_p21;
wire   [3:0] tmp_23_fu_1665_p23;
wire   [3:0] tmp_23_fu_1665_p25;
wire  signed [3:0] tmp_24_fu_1724_p1;
wire  signed [3:0] tmp_24_fu_1724_p3;
wire  signed [3:0] tmp_24_fu_1724_p5;
wire   [3:0] tmp_24_fu_1724_p7;
wire   [3:0] tmp_24_fu_1724_p9;
wire   [3:0] tmp_24_fu_1724_p11;
wire   [3:0] tmp_24_fu_1724_p13;
wire   [3:0] tmp_24_fu_1724_p15;
wire   [3:0] tmp_24_fu_1724_p17;
wire   [3:0] tmp_24_fu_1724_p19;
wire   [3:0] tmp_24_fu_1724_p21;
wire  signed [3:0] tmp_24_fu_1724_p23;
wire  signed [3:0] tmp_24_fu_1724_p25;
wire   [3:0] tmp_25_fu_1783_p1;
wire   [3:0] tmp_25_fu_1783_p3;
wire   [3:0] tmp_25_fu_1783_p5;
wire   [3:0] tmp_25_fu_1783_p7;
wire   [3:0] tmp_25_fu_1783_p9;
wire   [3:0] tmp_25_fu_1783_p11;
wire  signed [3:0] tmp_25_fu_1783_p13;
wire  signed [3:0] tmp_25_fu_1783_p15;
wire  signed [3:0] tmp_25_fu_1783_p17;
wire  signed [3:0] tmp_25_fu_1783_p19;
wire  signed [3:0] tmp_25_fu_1783_p21;
wire   [3:0] tmp_25_fu_1783_p23;
wire   [3:0] tmp_25_fu_1783_p25;
wire   [3:0] tmp_26_fu_1842_p1;
wire  signed [3:0] tmp_26_fu_1842_p3;
wire  signed [3:0] tmp_26_fu_1842_p5;
wire  signed [3:0] tmp_26_fu_1842_p7;
wire  signed [3:0] tmp_26_fu_1842_p9;
wire  signed [3:0] tmp_26_fu_1842_p11;
wire   [3:0] tmp_26_fu_1842_p13;
wire   [3:0] tmp_26_fu_1842_p15;
wire   [3:0] tmp_26_fu_1842_p17;
wire   [3:0] tmp_26_fu_1842_p19;
wire   [3:0] tmp_26_fu_1842_p21;
wire   [3:0] tmp_26_fu_1842_p23;
wire   [3:0] tmp_26_fu_1842_p25;
wire  signed [3:0] tmp_27_fu_1901_p1;
wire   [3:0] tmp_27_fu_1901_p3;
wire   [3:0] tmp_27_fu_1901_p5;
wire   [3:0] tmp_27_fu_1901_p7;
wire   [3:0] tmp_27_fu_1901_p9;
wire   [3:0] tmp_27_fu_1901_p11;
wire   [3:0] tmp_27_fu_1901_p13;
wire   [3:0] tmp_27_fu_1901_p15;
wire   [3:0] tmp_27_fu_1901_p17;
wire  signed [3:0] tmp_27_fu_1901_p19;
wire  signed [3:0] tmp_27_fu_1901_p21;
wire  signed [3:0] tmp_27_fu_1901_p23;
wire  signed [3:0] tmp_27_fu_1901_p25;
wire   [3:0] tmp_28_fu_1960_p1;
wire   [3:0] tmp_28_fu_1960_p3;
wire   [3:0] tmp_28_fu_1960_p5;
wire   [3:0] tmp_28_fu_1960_p7;
wire  signed [3:0] tmp_28_fu_1960_p9;
wire  signed [3:0] tmp_28_fu_1960_p11;
wire  signed [3:0] tmp_28_fu_1960_p13;
wire  signed [3:0] tmp_28_fu_1960_p15;
wire  signed [3:0] tmp_28_fu_1960_p17;
wire   [3:0] tmp_28_fu_1960_p19;
wire   [3:0] tmp_28_fu_1960_p21;
wire   [3:0] tmp_28_fu_1960_p23;
wire   [3:0] tmp_28_fu_1960_p25;
wire  signed [3:0] tmp_29_fu_2019_p1;
wire  signed [3:0] tmp_29_fu_2019_p3;
wire  signed [3:0] tmp_29_fu_2019_p5;
wire  signed [3:0] tmp_29_fu_2019_p7;
wire   [3:0] tmp_29_fu_2019_p9;
wire   [3:0] tmp_29_fu_2019_p11;
wire   [3:0] tmp_29_fu_2019_p13;
wire   [3:0] tmp_29_fu_2019_p15;
wire   [3:0] tmp_29_fu_2019_p17;
wire   [3:0] tmp_29_fu_2019_p19;
wire   [3:0] tmp_29_fu_2019_p21;
wire   [3:0] tmp_29_fu_2019_p23;
wire  signed [3:0] tmp_29_fu_2019_p25;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 p_phi38_fu_156 = 64'd0;
#0 p_phi37_fu_160 = 64'd0;
#0 p_phi36_fu_164 = 64'd0;
#0 p_phi35_fu_168 = 64'd0;
#0 p_phi34_fu_172 = 64'd0;
#0 p_phi33_fu_176 = 64'd0;
#0 p_phi32_fu_180 = 64'd0;
#0 p_phi31_fu_184 = 64'd0;
#0 tid_fu_188 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U169(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1301_p0),.din1(grp_fu_1301_p1),.ce(1'b1),.dout(grp_fu_1301_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U170(.din0(mul_ln102_fu_1318_p0),.din1(mul_ln102_fu_1318_p1),.dout(mul_ln102_fu_1318_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U171(.din0(mul_ln104_fu_1366_p0),.din1(mul_ln104_fu_1366_p1),.dout(mul_ln104_fu_1366_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U172(.din0(mul_ln105_fu_1385_p0),.din1(mul_ln105_fu_1385_p1),.dout(mul_ln105_fu_1385_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U173(.din0(mul_ln106_fu_1404_p0),.din1(mul_ln106_fu_1404_p1),.dout(mul_ln106_fu_1404_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U174(.din0(mul_ln107_fu_1423_p0),.din1(mul_ln107_fu_1423_p1),.dout(mul_ln107_fu_1423_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U175(.din0(mul_ln108_fu_1442_p0),.din1(mul_ln108_fu_1442_p1),.dout(mul_ln108_fu_1442_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U176(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_22_fu_1606_p27),.sel(trunc_ln102_reg_2307_pp0_iter13_reg),.dout(tmp_22_fu_1606_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U177(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_23_fu_1665_p27),.sel(trunc_ln102_reg_2307_pp0_iter13_reg),.dout(tmp_23_fu_1665_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U178(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_24_fu_1724_p27),.sel(trunc_ln102_reg_2307_pp0_iter13_reg),.dout(tmp_24_fu_1724_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U179(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_25_fu_1783_p27),.sel(trunc_ln102_reg_2307_pp0_iter13_reg),.dout(tmp_25_fu_1783_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U180(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_26_fu_1842_p27),.sel(trunc_ln102_reg_2307_pp0_iter13_reg),.dout(tmp_26_fu_1842_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U181(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_27_fu_1901_p27),.sel(trunc_ln102_reg_2307_pp0_iter13_reg),.dout(tmp_27_fu_1901_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U182(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_28_fu_1960_p27),.sel(trunc_ln102_reg_2307_pp0_iter13_reg),.dout(tmp_28_fu_1960_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U183(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_29_fu_2019_p27),.sel(trunc_ln102_reg_2307_pp0_iter13_reg),.dout(tmp_29_fu_2019_p29));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U184(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2182_p0),.din1(grp_fu_2182_p1),.din2(grp_fu_2182_p2),.ce(1'b1),.dout(grp_fu_2182_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U185(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2191_p0),.din1(grp_fu_2191_p1),.din2(grp_fu_2191_p2),.ce(1'b1),.dout(grp_fu_2191_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln219_fu_1253_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_fu_188 <= add_ln219_fu_1259_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_188 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln104_reg_2282 <= add_ln104_fu_1334_p2;
        add_ln105_reg_2287 <= add_ln105_fu_1339_p2;
        add_ln106_reg_2292 <= add_ln106_fu_1344_p2;
        add_ln107_reg_2297 <= add_ln107_fu_1349_p2;
        add_ln108_reg_2302 <= add_ln108_fu_1354_p2;
        add_ln232_reg_2265_pp0_iter10_reg <= add_ln232_reg_2265_pp0_iter9_reg;
        add_ln232_reg_2265_pp0_iter2_reg <= add_ln232_reg_2265_pp0_iter1_reg;
        add_ln232_reg_2265_pp0_iter3_reg <= add_ln232_reg_2265_pp0_iter2_reg;
        add_ln232_reg_2265_pp0_iter4_reg <= add_ln232_reg_2265_pp0_iter3_reg;
        add_ln232_reg_2265_pp0_iter5_reg <= add_ln232_reg_2265_pp0_iter4_reg;
        add_ln232_reg_2265_pp0_iter6_reg <= add_ln232_reg_2265_pp0_iter5_reg;
        add_ln232_reg_2265_pp0_iter7_reg <= add_ln232_reg_2265_pp0_iter6_reg;
        add_ln232_reg_2265_pp0_iter8_reg <= add_ln232_reg_2265_pp0_iter7_reg;
        add_ln232_reg_2265_pp0_iter9_reg <= add_ln232_reg_2265_pp0_iter8_reg;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln219_reg_2261_pp0_iter10_reg <= icmp_ln219_reg_2261_pp0_iter9_reg;
        icmp_ln219_reg_2261_pp0_iter11_reg <= icmp_ln219_reg_2261_pp0_iter10_reg;
        icmp_ln219_reg_2261_pp0_iter12_reg <= icmp_ln219_reg_2261_pp0_iter11_reg;
        icmp_ln219_reg_2261_pp0_iter13_reg <= icmp_ln219_reg_2261_pp0_iter12_reg;
        icmp_ln219_reg_2261_pp0_iter2_reg <= icmp_ln219_reg_2261_pp0_iter1_reg;
        icmp_ln219_reg_2261_pp0_iter3_reg <= icmp_ln219_reg_2261_pp0_iter2_reg;
        icmp_ln219_reg_2261_pp0_iter4_reg <= icmp_ln219_reg_2261_pp0_iter3_reg;
        icmp_ln219_reg_2261_pp0_iter5_reg <= icmp_ln219_reg_2261_pp0_iter4_reg;
        icmp_ln219_reg_2261_pp0_iter6_reg <= icmp_ln219_reg_2261_pp0_iter5_reg;
        icmp_ln219_reg_2261_pp0_iter7_reg <= icmp_ln219_reg_2261_pp0_iter6_reg;
        icmp_ln219_reg_2261_pp0_iter8_reg <= icmp_ln219_reg_2261_pp0_iter7_reg;
        icmp_ln219_reg_2261_pp0_iter9_reg <= icmp_ln219_reg_2261_pp0_iter8_reg;
        tid_4_reg_2255_pp0_iter10_reg <= tid_4_reg_2255_pp0_iter9_reg;
        tid_4_reg_2255_pp0_iter11_reg <= tid_4_reg_2255_pp0_iter10_reg;
        tid_4_reg_2255_pp0_iter12_reg <= tid_4_reg_2255_pp0_iter11_reg;
        tid_4_reg_2255_pp0_iter13_reg <= tid_4_reg_2255_pp0_iter12_reg;
        tid_4_reg_2255_pp0_iter14_reg <= tid_4_reg_2255_pp0_iter13_reg;
        tid_4_reg_2255_pp0_iter2_reg <= tid_4_reg_2255_pp0_iter1_reg;
        tid_4_reg_2255_pp0_iter3_reg <= tid_4_reg_2255_pp0_iter2_reg;
        tid_4_reg_2255_pp0_iter4_reg <= tid_4_reg_2255_pp0_iter3_reg;
        tid_4_reg_2255_pp0_iter5_reg <= tid_4_reg_2255_pp0_iter4_reg;
        tid_4_reg_2255_pp0_iter6_reg <= tid_4_reg_2255_pp0_iter5_reg;
        tid_4_reg_2255_pp0_iter7_reg <= tid_4_reg_2255_pp0_iter6_reg;
        tid_4_reg_2255_pp0_iter8_reg <= tid_4_reg_2255_pp0_iter7_reg;
        tid_4_reg_2255_pp0_iter9_reg <= tid_4_reg_2255_pp0_iter8_reg;
        tmp_22_reg_2864 <= tmp_22_fu_1606_p29;
        tmp_23_reg_2869 <= tmp_23_fu_1665_p29;
        tmp_24_reg_2874 <= tmp_24_fu_1724_p29;
        tmp_25_reg_2879 <= tmp_25_fu_1783_p29;
        tmp_26_reg_2884 <= tmp_26_fu_1842_p29;
        tmp_27_reg_2889 <= tmp_27_fu_1901_p29;
        tmp_28_reg_2894 <= tmp_28_fu_1960_p29;
        tmp_29_reg_2899 <= tmp_29_fu_2019_p29;
        tmp_70_reg_2319 <= {{mul_ln104_fu_1366_p2[18:13]}};
        tmp_71_reg_2324 <= {{mul_ln105_fu_1385_p2[18:13]}};
        tmp_72_reg_2329 <= {{mul_ln106_fu_1404_p2[18:13]}};
        tmp_73_reg_2334 <= {{mul_ln107_fu_1423_p2[18:13]}};
        tmp_74_reg_2339 <= {{mul_ln108_fu_1442_p2[18:13]}};
        tmp_reg_2277 <= {{mul_ln102_fu_1318_p2[18:13]}};
        tmp_reg_2277_pp0_iter12_reg <= tmp_reg_2277;
        trunc_ln102_reg_2307 <= trunc_ln102_fu_1359_p1;
        trunc_ln102_reg_2307_pp0_iter13_reg <= trunc_ln102_reg_2307;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln232_reg_2265 <= add_ln232_fu_1295_p2;
        add_ln232_reg_2265_pp0_iter1_reg <= add_ln232_reg_2265;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln219_reg_2261 <= icmp_ln219_fu_1253_p2;
        icmp_ln219_reg_2261_pp0_iter1_reg <= icmp_ln219_reg_2261;
        tid_4_reg_2255 <= ap_sig_allocacmp_tid_4;
        tid_4_reg_2255_pp0_iter1_reg <= tid_4_reg_2255;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        p_phi31_fu_184 <= tmp_22_fu_1606_p29;
        p_phi32_fu_180 <= tmp_23_fu_1665_p29;
        p_phi33_fu_176 <= tmp_24_fu_1724_p29;
        p_phi34_fu_172 <= tmp_25_fu_1783_p29;
        p_phi35_fu_168 <= tmp_26_fu_1842_p29;
        p_phi36_fu_164 <= tmp_27_fu_1901_p29;
        p_phi37_fu_160 <= tmp_28_fu_1960_p29;
        p_phi38_fu_156 <= tmp_29_fu_2019_p29;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_1_we1_local = 1'b1;
    end else begin
        DATA_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_2_we1_local = 1'b1;
    end else begin
        DATA_y_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_3_we1_local = 1'b1;
    end else begin
        DATA_y_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_we1_local = 1'b1;
    end else begin
        DATA_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln219_fu_1253_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_4 = tid_fu_188;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln219_reg_2261_pp0_iter13_reg == 1'd1))) begin
        p_phi31_out_ap_vld = 1'b1;
    end else begin
        p_phi31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln219_reg_2261_pp0_iter13_reg == 1'd1))) begin
        p_phi32_out_ap_vld = 1'b1;
    end else begin
        p_phi32_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln219_reg_2261_pp0_iter13_reg == 1'd1))) begin
        p_phi33_out_ap_vld = 1'b1;
    end else begin
        p_phi33_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln219_reg_2261_pp0_iter13_reg == 1'd1))) begin
        p_phi34_out_ap_vld = 1'b1;
    end else begin
        p_phi34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln219_reg_2261_pp0_iter13_reg == 1'd1))) begin
        p_phi35_out_ap_vld = 1'b1;
    end else begin
        p_phi35_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln219_reg_2261_pp0_iter13_reg == 1'd1))) begin
        p_phi36_out_ap_vld = 1'b1;
    end else begin
        p_phi36_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln219_reg_2261_pp0_iter13_reg == 1'd1))) begin
        p_phi37_out_ap_vld = 1'b1;
    end else begin
        p_phi37_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln219_reg_2261_pp0_iter13_reg == 1'd1))) begin
        p_phi38_out_ap_vld = 1'b1;
    end else begin
        p_phi38_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2307 == 4'd10)) begin
            smem_13_address0_local = zext_ln110_fu_1589_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd5)) begin
            smem_13_address0_local = zext_ln109_fu_1563_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd0)) begin
            smem_13_address0_local = zext_ln108_fu_1538_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd8)) begin
            smem_13_address0_local = zext_ln107_fu_1522_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd3)) begin
            smem_13_address0_local = zext_ln106_fu_1506_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd11)) begin
            smem_13_address0_local = zext_ln105_fu_1490_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd6)) begin
            smem_13_address0_local = zext_ln104_fu_1474_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd1)) begin
            smem_13_address0_local = zext_ln102_fu_1458_p1;
        end else begin
            smem_13_address0_local = 'bx;
        end
    end else begin
        smem_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd0)))) begin
        smem_13_ce0_local = 1'b1;
    end else begin
        smem_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2307 == 4'd11)) begin
            smem_14_address0_local = zext_ln110_fu_1589_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd6)) begin
            smem_14_address0_local = zext_ln109_fu_1563_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd1)) begin
            smem_14_address0_local = zext_ln108_fu_1538_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd9)) begin
            smem_14_address0_local = zext_ln107_fu_1522_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd4)) begin
            smem_14_address0_local = zext_ln106_fu_1506_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd12)) begin
            smem_14_address0_local = zext_ln105_fu_1490_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd7)) begin
            smem_14_address0_local = zext_ln104_fu_1474_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd2)) begin
            smem_14_address0_local = zext_ln102_fu_1458_p1;
        end else begin
            smem_14_address0_local = 'bx;
        end
    end else begin
        smem_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd1)))) begin
        smem_14_ce0_local = 1'b1;
    end else begin
        smem_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2307 == 4'd12)) begin
            smem_15_address0_local = zext_ln110_fu_1589_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd7)) begin
            smem_15_address0_local = zext_ln109_fu_1563_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd2)) begin
            smem_15_address0_local = zext_ln108_fu_1538_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd10)) begin
            smem_15_address0_local = zext_ln107_fu_1522_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd5)) begin
            smem_15_address0_local = zext_ln106_fu_1506_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd0)) begin
            smem_15_address0_local = zext_ln105_fu_1490_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd8)) begin
            smem_15_address0_local = zext_ln104_fu_1474_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd3)) begin
            smem_15_address0_local = zext_ln102_fu_1458_p1;
        end else begin
            smem_15_address0_local = 'bx;
        end
    end else begin
        smem_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd0)))) begin
        smem_15_ce0_local = 1'b1;
    end else begin
        smem_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2307 == 4'd0)) begin
            smem_16_address0_local = zext_ln110_fu_1589_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd8)) begin
            smem_16_address0_local = zext_ln109_fu_1563_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd3)) begin
            smem_16_address0_local = zext_ln108_fu_1538_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd11)) begin
            smem_16_address0_local = zext_ln107_fu_1522_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd6)) begin
            smem_16_address0_local = zext_ln106_fu_1506_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd1)) begin
            smem_16_address0_local = zext_ln105_fu_1490_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd9)) begin
            smem_16_address0_local = zext_ln104_fu_1474_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd4)) begin
            smem_16_address0_local = zext_ln102_fu_1458_p1;
        end else begin
            smem_16_address0_local = 'bx;
        end
    end else begin
        smem_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd0)))) begin
        smem_16_ce0_local = 1'b1;
    end else begin
        smem_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2307 == 4'd1)) begin
            smem_17_address0_local = zext_ln110_fu_1589_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd9)) begin
            smem_17_address0_local = zext_ln109_fu_1563_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd4)) begin
            smem_17_address0_local = zext_ln108_fu_1538_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd12)) begin
            smem_17_address0_local = zext_ln107_fu_1522_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd7)) begin
            smem_17_address0_local = zext_ln106_fu_1506_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd2)) begin
            smem_17_address0_local = zext_ln105_fu_1490_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd10)) begin
            smem_17_address0_local = zext_ln104_fu_1474_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd5)) begin
            smem_17_address0_local = zext_ln102_fu_1458_p1;
        end else begin
            smem_17_address0_local = 'bx;
        end
    end else begin
        smem_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd1)))) begin
        smem_17_ce0_local = 1'b1;
    end else begin
        smem_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2307 == 4'd2)) begin
            smem_18_address0_local = zext_ln110_fu_1589_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd10)) begin
            smem_18_address0_local = zext_ln109_fu_1563_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd5)) begin
            smem_18_address0_local = zext_ln108_fu_1538_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd0)) begin
            smem_18_address0_local = zext_ln107_fu_1522_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd8)) begin
            smem_18_address0_local = zext_ln106_fu_1506_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd3)) begin
            smem_18_address0_local = zext_ln105_fu_1490_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd11)) begin
            smem_18_address0_local = zext_ln104_fu_1474_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd6)) begin
            smem_18_address0_local = zext_ln102_fu_1458_p1;
        end else begin
            smem_18_address0_local = 'bx;
        end
    end else begin
        smem_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd0)))) begin
        smem_18_ce0_local = 1'b1;
    end else begin
        smem_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2307 == 4'd3)) begin
            smem_19_address0_local = zext_ln110_fu_1589_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd11)) begin
            smem_19_address0_local = zext_ln109_fu_1563_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd6)) begin
            smem_19_address0_local = zext_ln108_fu_1538_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd1)) begin
            smem_19_address0_local = zext_ln107_fu_1522_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd9)) begin
            smem_19_address0_local = zext_ln106_fu_1506_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd4)) begin
            smem_19_address0_local = zext_ln105_fu_1490_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd12)) begin
            smem_19_address0_local = zext_ln104_fu_1474_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd7)) begin
            smem_19_address0_local = zext_ln102_fu_1458_p1;
        end else begin
            smem_19_address0_local = 'bx;
        end
    end else begin
        smem_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd1)))) begin
        smem_19_ce0_local = 1'b1;
    end else begin
        smem_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2307 == 4'd4)) begin
            smem_20_address0_local = zext_ln110_fu_1589_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd12)) begin
            smem_20_address0_local = zext_ln109_fu_1563_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd7)) begin
            smem_20_address0_local = zext_ln108_fu_1538_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd2)) begin
            smem_20_address0_local = zext_ln107_fu_1522_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd10)) begin
            smem_20_address0_local = zext_ln106_fu_1506_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd5)) begin
            smem_20_address0_local = zext_ln105_fu_1490_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd0)) begin
            smem_20_address0_local = zext_ln104_fu_1474_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd8)) begin
            smem_20_address0_local = zext_ln102_fu_1458_p1;
        end else begin
            smem_20_address0_local = 'bx;
        end
    end else begin
        smem_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd0)))) begin
        smem_20_ce0_local = 1'b1;
    end else begin
        smem_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2307 == 4'd5)) begin
            smem_21_address0_local = zext_ln110_fu_1589_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd0)) begin
            smem_21_address0_local = zext_ln109_fu_1563_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd8)) begin
            smem_21_address0_local = zext_ln108_fu_1538_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd3)) begin
            smem_21_address0_local = zext_ln107_fu_1522_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd11)) begin
            smem_21_address0_local = zext_ln106_fu_1506_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd6)) begin
            smem_21_address0_local = zext_ln105_fu_1490_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd1)) begin
            smem_21_address0_local = zext_ln104_fu_1474_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd9)) begin
            smem_21_address0_local = zext_ln102_fu_1458_p1;
        end else begin
            smem_21_address0_local = 'bx;
        end
    end else begin
        smem_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd0)))) begin
        smem_21_ce0_local = 1'b1;
    end else begin
        smem_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2307 == 4'd6)) begin
            smem_22_address0_local = zext_ln110_fu_1589_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd1)) begin
            smem_22_address0_local = zext_ln109_fu_1563_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd9)) begin
            smem_22_address0_local = zext_ln108_fu_1538_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd4)) begin
            smem_22_address0_local = zext_ln107_fu_1522_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd12)) begin
            smem_22_address0_local = zext_ln106_fu_1506_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd7)) begin
            smem_22_address0_local = zext_ln105_fu_1490_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd2)) begin
            smem_22_address0_local = zext_ln104_fu_1474_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd10)) begin
            smem_22_address0_local = zext_ln102_fu_1458_p1;
        end else begin
            smem_22_address0_local = 'bx;
        end
    end else begin
        smem_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd1)))) begin
        smem_22_ce0_local = 1'b1;
    end else begin
        smem_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2307 == 4'd7)) begin
            smem_23_address0_local = zext_ln110_fu_1589_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd2)) begin
            smem_23_address0_local = zext_ln109_fu_1563_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd10)) begin
            smem_23_address0_local = zext_ln108_fu_1538_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd5)) begin
            smem_23_address0_local = zext_ln107_fu_1522_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd0)) begin
            smem_23_address0_local = zext_ln106_fu_1506_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd8)) begin
            smem_23_address0_local = zext_ln105_fu_1490_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd3)) begin
            smem_23_address0_local = zext_ln104_fu_1474_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd11)) begin
            smem_23_address0_local = zext_ln102_fu_1458_p1;
        end else begin
            smem_23_address0_local = 'bx;
        end
    end else begin
        smem_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd0)))) begin
        smem_23_ce0_local = 1'b1;
    end else begin
        smem_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2307 == 4'd8)) begin
            smem_24_address0_local = zext_ln110_fu_1589_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd3)) begin
            smem_24_address0_local = zext_ln109_fu_1563_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd11)) begin
            smem_24_address0_local = zext_ln108_fu_1538_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd6)) begin
            smem_24_address0_local = zext_ln107_fu_1522_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd1)) begin
            smem_24_address0_local = zext_ln106_fu_1506_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd9)) begin
            smem_24_address0_local = zext_ln105_fu_1490_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd4)) begin
            smem_24_address0_local = zext_ln104_fu_1474_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd12)) begin
            smem_24_address0_local = zext_ln102_fu_1458_p1;
        end else begin
            smem_24_address0_local = 'bx;
        end
    end else begin
        smem_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd1)))) begin
        smem_24_ce0_local = 1'b1;
    end else begin
        smem_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2307 == 4'd9)) begin
            smem_address0_local = zext_ln110_fu_1589_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd4)) begin
            smem_address0_local = zext_ln109_fu_1563_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd12)) begin
            smem_address0_local = zext_ln108_fu_1538_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd7)) begin
            smem_address0_local = zext_ln107_fu_1522_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd2)) begin
            smem_address0_local = zext_ln106_fu_1506_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd10)) begin
            smem_address0_local = zext_ln105_fu_1490_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd5)) begin
            smem_address0_local = zext_ln104_fu_1474_p1;
        end else if ((trunc_ln102_reg_2307 == 4'd0)) begin
            smem_address0_local = zext_ln102_fu_1458_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2307 == 4'd0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_y_1_address0 = zext_ln224_fu_2142_p1;
assign DATA_y_1_address1 = zext_ln220_fu_2126_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_1_d0 = tmp_27_reg_2889;
assign DATA_y_1_d1 = tmp_23_reg_2869;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_1_we1 = DATA_y_1_we1_local;
assign DATA_y_2_address0 = zext_ln224_fu_2142_p1;
assign DATA_y_2_address1 = zext_ln220_fu_2126_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_2_d0 = tmp_28_reg_2894;
assign DATA_y_2_d1 = tmp_24_reg_2874;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_2_we1 = DATA_y_2_we1_local;
assign DATA_y_3_address0 = zext_ln224_fu_2142_p1;
assign DATA_y_3_address1 = zext_ln220_fu_2126_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_3_d0 = tmp_29_reg_2899;
assign DATA_y_3_d1 = tmp_25_reg_2879;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_3_we1 = DATA_y_3_we1_local;
assign DATA_y_address0 = zext_ln224_fu_2142_p1;
assign DATA_y_address1 = zext_ln220_fu_2126_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign DATA_y_d0 = tmp_26_reg_2884;
assign DATA_y_d1 = tmp_22_reg_2864;
assign DATA_y_we0 = DATA_y_we0_local;
assign DATA_y_we1 = DATA_y_we1_local;
assign add_ln104_fu_1334_p2 = (add_ln232_reg_2265_pp0_iter10_reg + 9'd8);
assign add_ln105_fu_1339_p2 = (add_ln232_reg_2265_pp0_iter10_reg + 9'd16);
assign add_ln106_fu_1344_p2 = (add_ln232_reg_2265_pp0_iter10_reg + 9'd24);
assign add_ln107_fu_1349_p2 = (add_ln232_reg_2265_pp0_iter10_reg + 9'd32);
assign add_ln108_fu_1354_p2 = (add_ln232_reg_2265_pp0_iter10_reg + 9'd40);
assign add_ln219_fu_1259_p2 = (ap_sig_allocacmp_tid_4 + 7'd1);
assign add_ln232_fu_1295_p2 = (mul_ln_fu_1283_p5 + zext_ln114_fu_1275_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1301_p0 = (mul_ln_fu_1283_p5 + zext_ln114_fu_1275_p1);
assign grp_fu_1301_p1 = 9'd13;
assign grp_fu_2182_p0 = zext_ln102_1_fu_1312_p1;
assign grp_fu_2182_p1 = 10'd48;
assign grp_fu_2182_p2 = 21'd1261;
assign grp_fu_2191_p0 = zext_ln102_1_fu_1312_p1;
assign grp_fu_2191_p1 = 10'd56;
assign grp_fu_2191_p2 = 21'd1261;
assign hi_1_fu_1265_p4 = {{ap_sig_allocacmp_tid_4[5:3]}};
assign icmp_ln219_fu_1253_p2 = ((ap_sig_allocacmp_tid_4 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln102_fu_1318_p0 = mul_ln102_fu_1318_p00;
assign mul_ln102_fu_1318_p00 = add_ln232_reg_2265_pp0_iter10_reg;
assign mul_ln102_fu_1318_p1 = 19'd631;
assign mul_ln104_fu_1366_p0 = mul_ln104_fu_1366_p00;
assign mul_ln104_fu_1366_p00 = add_ln104_reg_2282;
assign mul_ln104_fu_1366_p1 = 19'd631;
assign mul_ln105_fu_1385_p0 = mul_ln105_fu_1385_p00;
assign mul_ln105_fu_1385_p00 = add_ln105_reg_2287;
assign mul_ln105_fu_1385_p1 = 19'd631;
assign mul_ln106_fu_1404_p0 = mul_ln106_fu_1404_p00;
assign mul_ln106_fu_1404_p00 = add_ln106_reg_2292;
assign mul_ln106_fu_1404_p1 = 19'd631;
assign mul_ln107_fu_1423_p0 = mul_ln107_fu_1423_p00;
assign mul_ln107_fu_1423_p00 = add_ln107_reg_2297;
assign mul_ln107_fu_1423_p1 = 19'd631;
assign mul_ln108_fu_1442_p0 = mul_ln108_fu_1442_p00;
assign mul_ln108_fu_1442_p00 = add_ln108_reg_2302;
assign mul_ln108_fu_1442_p1 = 19'd631;
assign mul_ln_fu_1283_p5 = {{{{trunc_ln232_fu_1279_p1}, {2'd0}}, {trunc_ln232_fu_1279_p1}}, {1'd0}};
assign or_ln4_fu_2134_p3 = {{trunc_ln220_fu_2118_p1}, {1'd1}};
assign p_phi31_out = p_phi31_fu_184;
assign p_phi32_out = p_phi32_fu_180;
assign p_phi33_out = p_phi33_fu_176;
assign p_phi34_out = p_phi34_fu_172;
assign p_phi35_out = p_phi35_fu_168;
assign p_phi36_out = p_phi36_fu_164;
assign p_phi37_out = p_phi37_fu_160;
assign p_phi38_out = p_phi38_fu_156;
assign shl_ln220_fu_2121_p2 = tid_4_reg_2255_pp0_iter14_reg << 7'd1;
assign smem_13_address0 = smem_13_address0_local;
assign smem_13_ce0 = smem_13_ce0_local;
assign smem_14_address0 = smem_14_address0_local;
assign smem_14_ce0 = smem_14_ce0_local;
assign smem_15_address0 = smem_15_address0_local;
assign smem_15_ce0 = smem_15_ce0_local;
assign smem_16_address0 = smem_16_address0_local;
assign smem_16_ce0 = smem_16_ce0_local;
assign smem_17_address0 = smem_17_address0_local;
assign smem_17_ce0 = smem_17_ce0_local;
assign smem_18_address0 = smem_18_address0_local;
assign smem_18_ce0 = smem_18_ce0_local;
assign smem_19_address0 = smem_19_address0_local;
assign smem_19_ce0 = smem_19_ce0_local;
assign smem_20_address0 = smem_20_address0_local;
assign smem_20_ce0 = smem_20_ce0_local;
assign smem_21_address0 = smem_21_address0_local;
assign smem_21_ce0 = smem_21_ce0_local;
assign smem_22_address0 = smem_22_address0_local;
assign smem_22_ce0 = smem_22_ce0_local;
assign smem_23_address0 = smem_23_address0_local;
assign smem_23_ce0 = smem_23_ce0_local;
assign smem_24_address0 = smem_24_address0_local;
assign smem_24_ce0 = smem_24_ce0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign tmp_22_fu_1606_p27 = 'bx;
assign tmp_23_fu_1665_p27 = 'bx;
assign tmp_24_fu_1724_p27 = 'bx;
assign tmp_25_fu_1783_p27 = 'bx;
assign tmp_26_fu_1842_p27 = 'bx;
assign tmp_27_fu_1901_p27 = 'bx;
assign tmp_28_fu_1960_p27 = 'bx;
assign tmp_29_fu_2019_p27 = 'bx;
assign tmp_75_fu_1554_p1 = grp_fu_2182_p3;
assign tmp_75_fu_1554_p4 = {{tmp_75_fu_1554_p1[20:14]}};
assign tmp_76_fu_1580_p1 = grp_fu_2191_p3;
assign tmp_76_fu_1580_p4 = {{tmp_76_fu_1580_p1[20:14]}};
assign trunc_ln102_fu_1359_p1 = grp_fu_1301_p2[3:0];
assign trunc_ln220_fu_2118_p1 = tid_4_reg_2255_pp0_iter14_reg[5:0];
assign trunc_ln232_fu_1279_p1 = ap_sig_allocacmp_tid_4[2:0];
assign zext_ln102_1_fu_1312_p1 = add_ln232_reg_2265_pp0_iter9_reg;
assign zext_ln102_fu_1458_p1 = tmp_reg_2277_pp0_iter12_reg;
assign zext_ln104_fu_1474_p1 = tmp_70_reg_2319;
assign zext_ln105_fu_1490_p1 = tmp_71_reg_2324;
assign zext_ln106_fu_1506_p1 = tmp_72_reg_2329;
assign zext_ln107_fu_1522_p1 = tmp_73_reg_2334;
assign zext_ln108_fu_1538_p1 = tmp_74_reg_2339;
assign zext_ln109_fu_1563_p1 = tmp_75_fu_1554_p4;
assign zext_ln110_fu_1589_p1 = tmp_76_fu_1580_p4;
assign zext_ln114_fu_1275_p1 = hi_1_fu_1265_p4;
assign zext_ln220_fu_2126_p1 = shl_ln220_fu_2121_p2;
assign zext_ln224_fu_2142_p1 = or_ln4_fu_2134_p3;
endmodule 
