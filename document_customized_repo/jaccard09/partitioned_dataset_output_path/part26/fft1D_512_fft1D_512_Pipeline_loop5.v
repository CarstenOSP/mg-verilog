
module fft1D_512_fft1D_512_Pipeline_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_we1,DATA_y_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_y_address1,DATA_y_ce1,DATA_y_we1,DATA_y_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1,smem_8_address0,smem_8_ce0,smem_8_q0,smem_8_address1,smem_8_ce1,smem_8_q1,smem_9_address0,smem_9_ce0,smem_9_q0,smem_9_address1,smem_9_ce1,smem_9_q1,smem_10_address0,smem_10_ce0,smem_10_q0,smem_10_address1,smem_10_ce1,smem_10_q1,smem_11_address0,smem_11_ce0,smem_11_q0,smem_11_address1,smem_11_ce1,smem_11_q1,smem_12_address0,smem_12_ce0,smem_12_q0,smem_12_address1,smem_12_ce1,smem_12_q1,p_phi31_out,p_phi31_out_ap_vld,p_phi32_out,p_phi32_out_ap_vld,p_phi33_out,p_phi33_out_ap_vld,p_phi34_out,p_phi34_out_ap_vld,p_phi35_out,p_phi35_out_ap_vld,p_phi36_out,p_phi36_out_ap_vld,p_phi37_out,p_phi37_out_ap_vld,p_phi38_out,p_phi38_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [7:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
output   DATA_y_1_we1;
output  [63:0] DATA_y_1_d1;
output  [7:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [7:0] DATA_y_address1;
output   DATA_y_ce1;
output   DATA_y_we1;
output  [63:0] DATA_y_d1;
output  [6:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [6:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [6:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [6:0] smem_7_address1;
output   smem_7_ce1;
input  [63:0] smem_7_q1;
output  [6:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [6:0] smem_8_address1;
output   smem_8_ce1;
input  [63:0] smem_8_q1;
output  [6:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [6:0] smem_9_address1;
output   smem_9_ce1;
input  [63:0] smem_9_q1;
output  [6:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [6:0] smem_10_address1;
output   smem_10_ce1;
input  [63:0] smem_10_q1;
output  [6:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [6:0] smem_11_address1;
output   smem_11_ce1;
input  [63:0] smem_11_q1;
output  [6:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
output  [6:0] smem_12_address1;
output   smem_12_ce1;
input  [63:0] smem_12_q1;
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
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln219_reg_1613;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_4_reg_1607;
wire   [0:0] icmp_ln219_fu_825_p2;
reg   [0:0] icmp_ln219_reg_1613_pp0_iter1_reg;
reg   [0:0] icmp_ln219_reg_1613_pp0_iter2_reg;
reg   [0:0] icmp_ln219_reg_1613_pp0_iter3_reg;
reg   [0:0] icmp_ln219_reg_1613_pp0_iter4_reg;
reg   [0:0] icmp_ln219_reg_1613_pp0_iter5_reg;
reg   [0:0] icmp_ln219_reg_1613_pp0_iter6_reg;
wire   [8:0] add_ln232_fu_861_p2;
reg   [8:0] add_ln232_reg_1617;
reg   [8:0] add_ln232_reg_1617_pp0_iter1_reg;
reg   [8:0] add_ln232_reg_1617_pp0_iter2_reg;
reg   [8:0] add_ln232_reg_1617_pp0_iter3_reg;
reg   [8:0] add_ln232_reg_1617_pp0_iter4_reg;
reg   [8:0] add_ln232_reg_1617_pp0_iter5_reg;
wire   [5:0] trunc_ln220_fu_878_p1;
reg   [5:0] trunc_ln220_reg_1629;
wire    ap_block_pp0_stage1_11001;
reg   [5:0] trunc_ln220_reg_1629_pp0_iter1_reg;
reg   [5:0] trunc_ln220_reg_1629_pp0_iter2_reg;
reg   [5:0] trunc_ln220_reg_1629_pp0_iter3_reg;
reg   [5:0] trunc_ln220_reg_1629_pp0_iter4_reg;
reg   [5:0] trunc_ln220_reg_1629_pp0_iter5_reg;
reg   [5:0] trunc_ln220_reg_1629_pp0_iter6_reg;
reg   [5:0] trunc_ln220_reg_1629_pp0_iter7_reg;
wire   [9:0] zext_ln102_1_fu_886_p1;
reg   [9:0] zext_ln102_1_reg_1637;
wire   [8:0] add_ln104_fu_889_p2;
reg   [8:0] add_ln104_reg_1642;
wire   [8:0] add_ln105_fu_894_p2;
reg   [8:0] add_ln105_reg_1647;
wire   [8:0] add_ln106_fu_899_p2;
reg   [8:0] add_ln106_reg_1652;
wire   [8:0] add_ln107_fu_904_p2;
reg   [8:0] add_ln107_reg_1657;
reg   [6:0] tmp_reg_1662;
reg   [6:0] tmp_191_reg_1667;
reg   [6:0] tmp_192_reg_1672;
reg   [6:0] tmp_193_reg_1677;
reg   [6:0] tmp_194_reg_1682;
wire   [8:0] add_ln108_fu_1004_p2;
reg   [8:0] add_ln108_reg_1687;
wire   [2:0] trunc_ln102_fu_1009_p1;
reg   [2:0] trunc_ln102_reg_1692;
reg   [6:0] tmp_195_reg_1704;
reg   [7:0] tmp_196_reg_1709;
wire   [63:0] tmp_22_fu_1131_p17;
reg   [63:0] tmp_22_reg_1994;
wire   [63:0] tmp_23_fu_1166_p17;
reg   [63:0] tmp_23_reg_1999;
wire   [63:0] tmp_24_fu_1201_p17;
reg   [63:0] tmp_24_reg_2004;
wire   [63:0] tmp_25_fu_1236_p17;
reg   [63:0] tmp_25_reg_2009;
wire   [63:0] tmp_26_fu_1271_p17;
reg   [63:0] tmp_26_reg_2014;
wire   [63:0] tmp_27_fu_1306_p17;
reg   [63:0] tmp_27_reg_2019;
wire   [63:0] tmp_28_fu_1341_p17;
reg   [63:0] tmp_28_reg_2024;
wire   [63:0] tmp_29_fu_1376_p17;
reg   [63:0] tmp_29_reg_2029;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln102_fu_1041_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln104_fu_1051_p1;
wire   [63:0] zext_ln105_fu_1061_p1;
wire   [63:0] zext_ln106_fu_1071_p1;
wire   [63:0] zext_ln107_fu_1081_p1;
wire   [63:0] zext_ln108_fu_1091_p1;
wire   [63:0] zext_ln109_fu_1101_p1;
wire   [63:0] zext_ln110_fu_1120_p1;
wire   [63:0] zext_ln220_fu_1458_p1;
wire   [63:0] zext_ln222_fu_1471_p1;
wire   [63:0] zext_ln224_fu_1484_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln226_fu_1497_p1;
reg   [63:0] p_phi38_fu_132;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter7_stage0;
reg    ap_idle_pp0_0to6;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [63:0] p_phi37_fu_136;
reg   [63:0] p_phi36_fu_140;
reg   [63:0] p_phi35_fu_144;
reg   [63:0] p_phi34_fu_148;
reg   [63:0] p_phi33_fu_152;
reg   [63:0] p_phi32_fu_156;
reg   [63:0] p_phi31_fu_160;
reg   [6:0] tid_fu_164;
wire   [6:0] add_ln219_fu_873_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_4;
wire    ap_block_pp0_stage0_01001;
reg    smem_ce1_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_7_ce1_local;
reg    smem_7_ce0_local;
reg   [6:0] smem_7_address0_local;
reg    smem_8_ce1_local;
reg    smem_8_ce0_local;
reg   [6:0] smem_8_address0_local;
reg    smem_9_ce1_local;
reg    smem_9_ce0_local;
reg   [6:0] smem_9_address0_local;
reg    smem_10_ce1_local;
reg    smem_10_ce0_local;
reg   [6:0] smem_10_address0_local;
reg    smem_11_ce1_local;
reg    smem_11_ce0_local;
reg   [6:0] smem_11_address0_local;
reg    smem_12_ce1_local;
reg    smem_12_ce0_local;
reg   [6:0] smem_12_address0_local;
reg    DATA_y_we1_local;
reg   [63:0] DATA_y_d1_local;
reg    DATA_y_ce1_local;
reg   [7:0] DATA_y_address1_local;
reg    DATA_y_we0_local;
reg   [63:0] DATA_y_d0_local;
reg    DATA_y_ce0_local;
reg   [7:0] DATA_y_address0_local;
reg    DATA_y_1_we1_local;
reg   [63:0] DATA_y_1_d1_local;
reg    DATA_y_1_ce1_local;
reg   [7:0] DATA_y_1_address1_local;
reg    DATA_y_1_we0_local;
reg   [63:0] DATA_y_1_d0_local;
reg    DATA_y_1_ce0_local;
reg   [7:0] DATA_y_1_address0_local;
wire   [2:0] hi_1_fu_831_p4;
wire   [2:0] trunc_ln232_fu_845_p1;
wire   [8:0] mul_ln_fu_849_p5;
wire   [8:0] zext_ln114_fu_841_p1;
wire   [8:0] grp_fu_867_p0;
wire   [3:0] grp_fu_867_p1;
wire   [8:0] mul_ln102_fu_912_p0;
wire   [10:0] mul_ln102_fu_912_p1;
wire   [18:0] mul_ln102_fu_912_p2;
wire   [8:0] mul_ln104_fu_931_p0;
wire   [10:0] mul_ln104_fu_931_p1;
wire   [18:0] mul_ln104_fu_931_p2;
wire   [8:0] mul_ln105_fu_950_p0;
wire   [10:0] mul_ln105_fu_950_p1;
wire   [18:0] mul_ln105_fu_950_p2;
wire   [8:0] mul_ln106_fu_969_p0;
wire   [10:0] mul_ln106_fu_969_p1;
wire   [18:0] mul_ln106_fu_969_p2;
wire   [8:0] mul_ln107_fu_988_p0;
wire   [10:0] mul_ln107_fu_988_p1;
wire   [18:0] mul_ln107_fu_988_p2;
wire   [2:0] grp_fu_867_p2;
wire   [8:0] mul_ln108_fu_1016_p0;
wire   [10:0] mul_ln108_fu_1016_p1;
wire   [18:0] mul_ln108_fu_1016_p2;
wire   [20:0] tmp_196_fu_1032_p1;
wire  signed [20:0] grp_fu_1535_p3;
wire   [20:0] tmp_197_fu_1111_p1;
wire  signed [20:0] grp_fu_1544_p3;
wire   [7:0] tmp_197_fu_1111_p4;
wire   [63:0] tmp_22_fu_1131_p15;
wire   [63:0] tmp_23_fu_1166_p15;
wire   [63:0] tmp_24_fu_1201_p15;
wire   [63:0] tmp_25_fu_1236_p15;
wire   [63:0] tmp_26_fu_1271_p15;
wire   [63:0] tmp_27_fu_1306_p15;
wire   [63:0] tmp_28_fu_1341_p15;
wire   [63:0] tmp_29_fu_1376_p15;
wire   [7:0] shl_ln4_fu_1451_p3;
wire   [7:0] or_ln_fu_1464_p3;
wire   [7:0] or_ln11_fu_1477_p3;
wire   [7:0] or_ln12_fu_1490_p3;
wire   [8:0] grp_fu_1535_p0;
wire   [5:0] grp_fu_1535_p1;
wire   [10:0] grp_fu_1535_p2;
wire   [8:0] grp_fu_1544_p0;
wire   [5:0] grp_fu_1544_p1;
wire   [10:0] grp_fu_1544_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to8;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] grp_fu_1535_p00;
wire   [18:0] mul_ln102_fu_912_p00;
wire   [18:0] mul_ln104_fu_931_p00;
wire   [18:0] mul_ln105_fu_950_p00;
wire   [18:0] mul_ln106_fu_969_p00;
wire   [18:0] mul_ln107_fu_988_p00;
wire   [18:0] mul_ln108_fu_1016_p00;
reg    ap_condition_441;
wire   [2:0] tmp_22_fu_1131_p1;
wire   [2:0] tmp_22_fu_1131_p3;
wire   [2:0] tmp_22_fu_1131_p5;
wire   [2:0] tmp_22_fu_1131_p7;
wire  signed [2:0] tmp_22_fu_1131_p9;
wire  signed [2:0] tmp_22_fu_1131_p11;
wire  signed [2:0] tmp_22_fu_1131_p13;
wire  signed [2:0] tmp_23_fu_1166_p1;
wire   [2:0] tmp_23_fu_1166_p3;
wire   [2:0] tmp_23_fu_1166_p5;
wire   [2:0] tmp_23_fu_1166_p7;
wire   [2:0] tmp_23_fu_1166_p9;
wire  signed [2:0] tmp_23_fu_1166_p11;
wire  signed [2:0] tmp_23_fu_1166_p13;
wire  signed [2:0] tmp_24_fu_1201_p1;
wire  signed [2:0] tmp_24_fu_1201_p3;
wire   [2:0] tmp_24_fu_1201_p5;
wire   [2:0] tmp_24_fu_1201_p7;
wire   [2:0] tmp_24_fu_1201_p9;
wire   [2:0] tmp_24_fu_1201_p11;
wire  signed [2:0] tmp_24_fu_1201_p13;
wire  signed [2:0] tmp_25_fu_1236_p1;
wire  signed [2:0] tmp_25_fu_1236_p3;
wire  signed [2:0] tmp_25_fu_1236_p5;
wire   [2:0] tmp_25_fu_1236_p7;
wire   [2:0] tmp_25_fu_1236_p9;
wire   [2:0] tmp_25_fu_1236_p11;
wire   [2:0] tmp_25_fu_1236_p13;
wire   [2:0] tmp_26_fu_1271_p1;
wire  signed [2:0] tmp_26_fu_1271_p3;
wire  signed [2:0] tmp_26_fu_1271_p5;
wire  signed [2:0] tmp_26_fu_1271_p7;
wire   [2:0] tmp_26_fu_1271_p9;
wire   [2:0] tmp_26_fu_1271_p11;
wire   [2:0] tmp_26_fu_1271_p13;
wire   [2:0] tmp_27_fu_1306_p1;
wire   [2:0] tmp_27_fu_1306_p3;
wire  signed [2:0] tmp_27_fu_1306_p5;
wire  signed [2:0] tmp_27_fu_1306_p7;
wire  signed [2:0] tmp_27_fu_1306_p9;
wire   [2:0] tmp_27_fu_1306_p11;
wire   [2:0] tmp_27_fu_1306_p13;
wire   [2:0] tmp_28_fu_1341_p1;
wire   [2:0] tmp_28_fu_1341_p3;
wire   [2:0] tmp_28_fu_1341_p5;
wire  signed [2:0] tmp_28_fu_1341_p7;
wire  signed [2:0] tmp_28_fu_1341_p9;
wire  signed [2:0] tmp_28_fu_1341_p11;
wire   [2:0] tmp_28_fu_1341_p13;
wire   [2:0] tmp_29_fu_1376_p1;
wire   [2:0] tmp_29_fu_1376_p3;
wire   [2:0] tmp_29_fu_1376_p5;
wire   [2:0] tmp_29_fu_1376_p7;
wire  signed [2:0] tmp_29_fu_1376_p9;
wire  signed [2:0] tmp_29_fu_1376_p11;
wire  signed [2:0] tmp_29_fu_1376_p13;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 p_phi38_fu_132 = 64'd0;
#0 p_phi37_fu_136 = 64'd0;
#0 p_phi36_fu_140 = 64'd0;
#0 p_phi35_fu_144 = 64'd0;
#0 p_phi34_fu_148 = 64'd0;
#0 p_phi33_fu_152 = 64'd0;
#0 p_phi32_fu_156 = 64'd0;
#0 p_phi31_fu_160 = 64'd0;
#0 tid_fu_164 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U136(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_867_p0),.din1(grp_fu_867_p1),.ce(1'b1),.dout(grp_fu_867_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U137(.din0(mul_ln102_fu_912_p0),.din1(mul_ln102_fu_912_p1),.dout(mul_ln102_fu_912_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U138(.din0(mul_ln104_fu_931_p0),.din1(mul_ln104_fu_931_p1),.dout(mul_ln104_fu_931_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U139(.din0(mul_ln105_fu_950_p0),.din1(mul_ln105_fu_950_p1),.dout(mul_ln105_fu_950_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U140(.din0(mul_ln106_fu_969_p0),.din1(mul_ln106_fu_969_p1),.dout(mul_ln106_fu_969_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U141(.din0(mul_ln107_fu_988_p0),.din1(mul_ln107_fu_988_p1),.dout(mul_ln107_fu_988_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U142(.din0(mul_ln108_fu_1016_p0),.din1(mul_ln108_fu_1016_p1),.dout(mul_ln108_fu_1016_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U143(.din0(smem_q1),.din1(smem_7_q1),.din2(smem_8_q1),.din3(smem_9_q1),.din4(smem_10_q1),.din5(smem_11_q1),.din6(smem_12_q1),.def(tmp_22_fu_1131_p15),.sel(trunc_ln102_reg_1692),.dout(tmp_22_fu_1131_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U144(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_23_fu_1166_p15),.sel(trunc_ln102_reg_1692),.dout(tmp_23_fu_1166_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U145(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_24_fu_1201_p15),.sel(trunc_ln102_reg_1692),.dout(tmp_24_fu_1201_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h5 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U146(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_25_fu_1236_p15),.sel(trunc_ln102_reg_1692),.dout(tmp_25_fu_1236_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h5 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.CASE5( 3'h1 ),.din5_WIDTH( 64 ),.CASE6( 3'h2 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U147(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_26_fu_1271_p15),.sel(trunc_ln102_reg_1692),.dout(tmp_26_fu_1271_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h5 ),.din3_WIDTH( 64 ),.CASE4( 3'h6 ),.din4_WIDTH( 64 ),.CASE5( 3'h0 ),.din5_WIDTH( 64 ),.CASE6( 3'h1 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U148(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_27_fu_1306_p15),.sel(trunc_ln102_reg_1692),.dout(tmp_27_fu_1306_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h5 ),.din4_WIDTH( 64 ),.CASE5( 3'h6 ),.din5_WIDTH( 64 ),.CASE6( 3'h0 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U149(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_28_fu_1341_p15),.sel(trunc_ln102_reg_1692),.dout(tmp_28_fu_1341_p17));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_15_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_15_3_64_1_1_U150(.din0(smem_q0),.din1(smem_7_q0),.din2(smem_8_q0),.din3(smem_9_q0),.din4(smem_10_q0),.din5(smem_11_q0),.din6(smem_12_q0),.def(tmp_29_fu_1376_p15),.sel(trunc_ln102_reg_1692),.dout(tmp_29_fu_1376_p17));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U151(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1535_p0),.din1(grp_fu_1535_p1),.din2(grp_fu_1535_p2),.ce(1'b1),.dout(grp_fu_1535_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U152(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1544_p0),.din1(grp_fu_1544_p1),.din2(grp_fu_1544_p2),.ce(1'b1),.dout(grp_fu_1544_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter8 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_164 <= 7'd0;
    end else if (((icmp_ln219_reg_1613 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_fu_164 <= add_ln219_fu_873_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln104_reg_1642 <= add_ln104_fu_889_p2;
        add_ln105_reg_1647 <= add_ln105_fu_894_p2;
        add_ln106_reg_1652 <= add_ln106_fu_899_p2;
        add_ln107_reg_1657 <= add_ln107_fu_904_p2;
        add_ln232_reg_1617 <= add_ln232_fu_861_p2;
        add_ln232_reg_1617_pp0_iter1_reg <= add_ln232_reg_1617;
        add_ln232_reg_1617_pp0_iter2_reg <= add_ln232_reg_1617_pp0_iter1_reg;
        add_ln232_reg_1617_pp0_iter3_reg <= add_ln232_reg_1617_pp0_iter2_reg;
        add_ln232_reg_1617_pp0_iter4_reg <= add_ln232_reg_1617_pp0_iter3_reg;
        add_ln232_reg_1617_pp0_iter5_reg <= add_ln232_reg_1617_pp0_iter4_reg;
        icmp_ln219_reg_1613 <= icmp_ln219_fu_825_p2;
        icmp_ln219_reg_1613_pp0_iter1_reg <= icmp_ln219_reg_1613;
        icmp_ln219_reg_1613_pp0_iter2_reg <= icmp_ln219_reg_1613_pp0_iter1_reg;
        icmp_ln219_reg_1613_pp0_iter3_reg <= icmp_ln219_reg_1613_pp0_iter2_reg;
        icmp_ln219_reg_1613_pp0_iter4_reg <= icmp_ln219_reg_1613_pp0_iter3_reg;
        icmp_ln219_reg_1613_pp0_iter5_reg <= icmp_ln219_reg_1613_pp0_iter4_reg;
        icmp_ln219_reg_1613_pp0_iter6_reg <= icmp_ln219_reg_1613_pp0_iter5_reg;
        tid_4_reg_1607 <= ap_sig_allocacmp_tid_4;
        tmp_195_reg_1704 <= {{mul_ln108_fu_1016_p2[18:12]}};
        tmp_196_reg_1709 <= {{tmp_196_fu_1032_p1[20:13]}};
        tmp_22_reg_1994 <= tmp_22_fu_1131_p17;
        tmp_23_reg_1999 <= tmp_23_fu_1166_p17;
        tmp_24_reg_2004 <= tmp_24_fu_1201_p17;
        tmp_25_reg_2009 <= tmp_25_fu_1236_p17;
        tmp_26_reg_2014 <= tmp_26_fu_1271_p17;
        tmp_27_reg_2019 <= tmp_27_fu_1306_p17;
        tmp_28_reg_2024 <= tmp_28_fu_1341_p17;
        tmp_29_reg_2029 <= tmp_29_fu_1376_p17;
        trunc_ln102_reg_1692 <= trunc_ln102_fu_1009_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln108_reg_1687 <= add_ln108_fu_1004_p2;
        tmp_191_reg_1667 <= {{mul_ln104_fu_931_p2[18:12]}};
        tmp_192_reg_1672 <= {{mul_ln105_fu_950_p2[18:12]}};
        tmp_193_reg_1677 <= {{mul_ln106_fu_969_p2[18:12]}};
        tmp_194_reg_1682 <= {{mul_ln107_fu_988_p2[18:12]}};
        tmp_reg_1662 <= {{mul_ln102_fu_912_p2[18:12]}};
        trunc_ln220_reg_1629 <= trunc_ln220_fu_878_p1;
        trunc_ln220_reg_1629_pp0_iter1_reg <= trunc_ln220_reg_1629;
        trunc_ln220_reg_1629_pp0_iter2_reg <= trunc_ln220_reg_1629_pp0_iter1_reg;
        trunc_ln220_reg_1629_pp0_iter3_reg <= trunc_ln220_reg_1629_pp0_iter2_reg;
        trunc_ln220_reg_1629_pp0_iter4_reg <= trunc_ln220_reg_1629_pp0_iter3_reg;
        trunc_ln220_reg_1629_pp0_iter5_reg <= trunc_ln220_reg_1629_pp0_iter4_reg;
        trunc_ln220_reg_1629_pp0_iter6_reg <= trunc_ln220_reg_1629_pp0_iter5_reg;
        trunc_ln220_reg_1629_pp0_iter7_reg <= trunc_ln220_reg_1629_pp0_iter6_reg;
        zext_ln102_1_reg_1637[8 : 0] <= zext_ln102_1_fu_886_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi31_fu_160 <= tmp_22_fu_1131_p17;
        p_phi32_fu_156 <= tmp_23_fu_1166_p17;
        p_phi33_fu_152 <= tmp_24_fu_1201_p17;
        p_phi34_fu_148 <= tmp_25_fu_1236_p17;
        p_phi35_fu_144 <= tmp_26_fu_1271_p17;
        p_phi36_fu_140 <= tmp_27_fu_1306_p17;
        p_phi37_fu_136 <= tmp_28_fu_1341_p17;
        p_phi38_fu_132 <= tmp_29_fu_1376_p17;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_address0_local = zext_ln226_fu_1497_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address0_local = zext_ln222_fu_1471_p1;
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_address1_local = zext_ln224_fu_1484_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address1_local = zext_ln220_fu_1458_p1;
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_d0_local = tmp_29_reg_2029;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_d0_local = tmp_25_reg_2009;
    end else begin
        DATA_y_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_d1_local = tmp_27_reg_2019;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_d1_local = tmp_23_reg_1999;
    end else begin
        DATA_y_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_1_we1_local = 1'b1;
    end else begin
        DATA_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_address0_local = zext_ln226_fu_1497_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address0_local = zext_ln222_fu_1471_p1;
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_address1_local = zext_ln224_fu_1484_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address1_local = zext_ln220_fu_1458_p1;
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_d0_local = tmp_28_reg_2024;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_d0_local = tmp_24_reg_2004;
    end else begin
        DATA_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_d1_local = tmp_26_reg_2014;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_d1_local = tmp_22_reg_1994;
    end else begin
        DATA_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_we1_local = 1'b1;
    end else begin
        DATA_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln219_reg_1613 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln219_reg_1613_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to6 = 1'b1;
    end else begin
        ap_idle_pp0_0to6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_4 = tid_fu_164;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln219_reg_1613_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi31_out_ap_vld = 1'b1;
    end else begin
        p_phi31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln219_reg_1613_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi32_out_ap_vld = 1'b1;
    end else begin
        p_phi32_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln219_reg_1613_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi33_out_ap_vld = 1'b1;
    end else begin
        p_phi33_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln219_reg_1613_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi34_out_ap_vld = 1'b1;
    end else begin
        p_phi34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln219_reg_1613_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi35_out_ap_vld = 1'b1;
    end else begin
        p_phi35_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln219_reg_1613_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi36_out_ap_vld = 1'b1;
    end else begin
        p_phi36_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln219_reg_1613_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi37_out_ap_vld = 1'b1;
    end else begin
        p_phi37_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln219_reg_1613_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_phi38_out_ap_vld = 1'b1;
    end else begin
        p_phi38_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_441)) begin
        if ((trunc_ln102_reg_1692 == 3'd4)) begin
            smem_10_address0_local = zext_ln110_fu_1120_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd5)) begin
            smem_10_address0_local = zext_ln109_fu_1101_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd6)) begin
            smem_10_address0_local = zext_ln108_fu_1091_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd0)) begin
            smem_10_address0_local = zext_ln107_fu_1081_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd1)) begin
            smem_10_address0_local = zext_ln106_fu_1071_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd2)) begin
            smem_10_address0_local = zext_ln105_fu_1061_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd3)) begin
            smem_10_address0_local = zext_ln104_fu_1051_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_441)) begin
        if ((trunc_ln102_reg_1692 == 3'd5)) begin
            smem_11_address0_local = zext_ln110_fu_1120_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd6)) begin
            smem_11_address0_local = zext_ln109_fu_1101_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd0)) begin
            smem_11_address0_local = zext_ln108_fu_1091_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd1)) begin
            smem_11_address0_local = zext_ln107_fu_1081_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd2)) begin
            smem_11_address0_local = zext_ln106_fu_1071_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd3)) begin
            smem_11_address0_local = zext_ln105_fu_1061_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd4)) begin
            smem_11_address0_local = zext_ln104_fu_1051_p1;
        end else begin
            smem_11_address0_local = 'bx;
        end
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_441)) begin
        if ((trunc_ln102_reg_1692 == 3'd6)) begin
            smem_12_address0_local = zext_ln110_fu_1120_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd0)) begin
            smem_12_address0_local = zext_ln109_fu_1101_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd1)) begin
            smem_12_address0_local = zext_ln108_fu_1091_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd2)) begin
            smem_12_address0_local = zext_ln107_fu_1081_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd3)) begin
            smem_12_address0_local = zext_ln106_fu_1071_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd4)) begin
            smem_12_address0_local = zext_ln105_fu_1061_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd5)) begin
            smem_12_address0_local = zext_ln104_fu_1051_p1;
        end else begin
            smem_12_address0_local = 'bx;
        end
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_ce1_local = 1'b1;
    end else begin
        smem_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_441)) begin
        if ((trunc_ln102_reg_1692 == 3'd1)) begin
            smem_7_address0_local = zext_ln110_fu_1120_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd2)) begin
            smem_7_address0_local = zext_ln109_fu_1101_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd3)) begin
            smem_7_address0_local = zext_ln108_fu_1091_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd4)) begin
            smem_7_address0_local = zext_ln107_fu_1081_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd5)) begin
            smem_7_address0_local = zext_ln106_fu_1071_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd6)) begin
            smem_7_address0_local = zext_ln105_fu_1061_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd0)) begin
            smem_7_address0_local = zext_ln104_fu_1051_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_441)) begin
        if ((trunc_ln102_reg_1692 == 3'd2)) begin
            smem_8_address0_local = zext_ln110_fu_1120_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd3)) begin
            smem_8_address0_local = zext_ln109_fu_1101_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd4)) begin
            smem_8_address0_local = zext_ln108_fu_1091_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd5)) begin
            smem_8_address0_local = zext_ln107_fu_1081_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd6)) begin
            smem_8_address0_local = zext_ln106_fu_1071_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd0)) begin
            smem_8_address0_local = zext_ln105_fu_1061_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd1)) begin
            smem_8_address0_local = zext_ln104_fu_1051_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_441)) begin
        if ((trunc_ln102_reg_1692 == 3'd3)) begin
            smem_9_address0_local = zext_ln110_fu_1120_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd4)) begin
            smem_9_address0_local = zext_ln109_fu_1101_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd5)) begin
            smem_9_address0_local = zext_ln108_fu_1091_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd6)) begin
            smem_9_address0_local = zext_ln107_fu_1081_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd0)) begin
            smem_9_address0_local = zext_ln106_fu_1071_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd1)) begin
            smem_9_address0_local = zext_ln105_fu_1061_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd2)) begin
            smem_9_address0_local = zext_ln104_fu_1051_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_441)) begin
        if ((trunc_ln102_reg_1692 == 3'd0)) begin
            smem_address0_local = zext_ln110_fu_1120_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd1)) begin
            smem_address0_local = zext_ln109_fu_1101_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd2)) begin
            smem_address0_local = zext_ln108_fu_1091_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd3)) begin
            smem_address0_local = zext_ln107_fu_1081_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd4)) begin
            smem_address0_local = zext_ln106_fu_1071_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd5)) begin
            smem_address0_local = zext_ln105_fu_1061_p1;
        end else if ((trunc_ln102_reg_1692 == 3'd6)) begin
            smem_address0_local = zext_ln104_fu_1051_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln102_reg_1692 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to8 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_address1 = DATA_y_1_address1_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_1_d0 = DATA_y_1_d0_local;
assign DATA_y_1_d1 = DATA_y_1_d1_local;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_1_we1 = DATA_y_1_we1_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_address1 = DATA_y_address1_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign DATA_y_d0 = DATA_y_d0_local;
assign DATA_y_d1 = DATA_y_d1_local;
assign DATA_y_we0 = DATA_y_we0_local;
assign DATA_y_we1 = DATA_y_we1_local;
assign add_ln104_fu_889_p2 = (add_ln232_reg_1617_pp0_iter4_reg + 9'd8);
assign add_ln105_fu_894_p2 = (add_ln232_reg_1617_pp0_iter4_reg + 9'd16);
assign add_ln106_fu_899_p2 = (add_ln232_reg_1617_pp0_iter4_reg + 9'd24);
assign add_ln107_fu_904_p2 = (add_ln232_reg_1617_pp0_iter4_reg + 9'd32);
assign add_ln108_fu_1004_p2 = (add_ln232_reg_1617_pp0_iter5_reg + 9'd40);
assign add_ln219_fu_873_p2 = (tid_4_reg_1607 + 7'd1);
assign add_ln232_fu_861_p2 = (mul_ln_fu_849_p5 + zext_ln114_fu_841_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_441 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_1535_p0 = grp_fu_1535_p00;
assign grp_fu_1535_p00 = add_ln232_reg_1617_pp0_iter4_reg;
assign grp_fu_1535_p1 = 10'd48;
assign grp_fu_1535_p2 = 21'd1171;
assign grp_fu_1544_p0 = zext_ln102_1_reg_1637;
assign grp_fu_1544_p1 = 10'd56;
assign grp_fu_1544_p2 = 21'd1171;
assign grp_fu_867_p0 = (mul_ln_fu_849_p5 + zext_ln114_fu_841_p1);
assign grp_fu_867_p1 = 9'd7;
assign hi_1_fu_831_p4 = {{ap_sig_allocacmp_tid_4[5:3]}};
assign icmp_ln219_fu_825_p2 = ((ap_sig_allocacmp_tid_4 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln102_fu_912_p0 = mul_ln102_fu_912_p00;
assign mul_ln102_fu_912_p00 = add_ln232_reg_1617_pp0_iter5_reg;
assign mul_ln102_fu_912_p1 = 19'd586;
assign mul_ln104_fu_931_p0 = mul_ln104_fu_931_p00;
assign mul_ln104_fu_931_p00 = add_ln104_reg_1642;
assign mul_ln104_fu_931_p1 = 19'd586;
assign mul_ln105_fu_950_p0 = mul_ln105_fu_950_p00;
assign mul_ln105_fu_950_p00 = add_ln105_reg_1647;
assign mul_ln105_fu_950_p1 = 19'd586;
assign mul_ln106_fu_969_p0 = mul_ln106_fu_969_p00;
assign mul_ln106_fu_969_p00 = add_ln106_reg_1652;
assign mul_ln106_fu_969_p1 = 19'd586;
assign mul_ln107_fu_988_p0 = mul_ln107_fu_988_p00;
assign mul_ln107_fu_988_p00 = add_ln107_reg_1657;
assign mul_ln107_fu_988_p1 = 19'd586;
assign mul_ln108_fu_1016_p0 = mul_ln108_fu_1016_p00;
assign mul_ln108_fu_1016_p00 = add_ln108_reg_1687;
assign mul_ln108_fu_1016_p1 = 19'd586;
assign mul_ln_fu_849_p5 = {{{{trunc_ln232_fu_845_p1}, {2'd0}}, {trunc_ln232_fu_845_p1}}, {1'd0}};
assign or_ln11_fu_1477_p3 = {{trunc_ln220_reg_1629_pp0_iter7_reg}, {2'd2}};
assign or_ln12_fu_1490_p3 = {{trunc_ln220_reg_1629_pp0_iter7_reg}, {2'd3}};
assign or_ln_fu_1464_p3 = {{trunc_ln220_reg_1629_pp0_iter6_reg}, {2'd1}};
assign p_phi31_out = p_phi31_fu_160;
assign p_phi32_out = p_phi32_fu_156;
assign p_phi33_out = p_phi33_fu_152;
assign p_phi34_out = p_phi34_fu_148;
assign p_phi35_out = p_phi35_fu_144;
assign p_phi36_out = p_phi36_fu_140;
assign p_phi37_out = p_phi37_fu_136;
assign p_phi38_out = p_phi38_fu_132;
assign shl_ln4_fu_1451_p3 = {{trunc_ln220_reg_1629_pp0_iter6_reg}, {2'd0}};
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_address1 = zext_ln102_fu_1041_p1;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_ce1 = smem_10_ce1_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_address1 = zext_ln102_fu_1041_p1;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_11_ce1 = smem_11_ce1_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_address1 = zext_ln102_fu_1041_p1;
assign smem_12_ce0 = smem_12_ce0_local;
assign smem_12_ce1 = smem_12_ce1_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_address1 = zext_ln102_fu_1041_p1;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_ce1 = smem_7_ce1_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_address1 = zext_ln102_fu_1041_p1;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_ce1 = smem_8_ce1_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_address1 = zext_ln102_fu_1041_p1;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_ce1 = smem_9_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = zext_ln102_fu_1041_p1;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_196_fu_1032_p1 = grp_fu_1535_p3;
assign tmp_197_fu_1111_p1 = grp_fu_1544_p3;
assign tmp_197_fu_1111_p4 = {{tmp_197_fu_1111_p1[20:13]}};
assign tmp_22_fu_1131_p15 = 'bx;
assign tmp_23_fu_1166_p15 = 'bx;
assign tmp_24_fu_1201_p15 = 'bx;
assign tmp_25_fu_1236_p15 = 'bx;
assign tmp_26_fu_1271_p15 = 'bx;
assign tmp_27_fu_1306_p15 = 'bx;
assign tmp_28_fu_1341_p15 = 'bx;
assign tmp_29_fu_1376_p15 = 'bx;
assign trunc_ln102_fu_1009_p1 = grp_fu_867_p2[2:0];
assign trunc_ln220_fu_878_p1 = tid_4_reg_1607[5:0];
assign trunc_ln232_fu_845_p1 = ap_sig_allocacmp_tid_4[2:0];
assign zext_ln102_1_fu_886_p1 = add_ln232_reg_1617_pp0_iter4_reg;
assign zext_ln102_fu_1041_p1 = tmp_reg_1662;
assign zext_ln104_fu_1051_p1 = tmp_191_reg_1667;
assign zext_ln105_fu_1061_p1 = tmp_192_reg_1672;
assign zext_ln106_fu_1071_p1 = tmp_193_reg_1677;
assign zext_ln107_fu_1081_p1 = tmp_194_reg_1682;
assign zext_ln108_fu_1091_p1 = tmp_195_reg_1704;
assign zext_ln109_fu_1101_p1 = tmp_196_reg_1709;
assign zext_ln110_fu_1120_p1 = tmp_197_fu_1111_p4;
assign zext_ln114_fu_841_p1 = hi_1_fu_831_p4;
assign zext_ln220_fu_1458_p1 = shl_ln4_fu_1451_p3;
assign zext_ln222_fu_1471_p1 = or_ln_fu_1464_p3;
assign zext_ln224_fu_1484_p1 = or_ln11_fu_1477_p3;
assign zext_ln226_fu_1497_p1 = or_ln12_fu_1490_p3;
always @ (posedge ap_clk) begin
    zext_ln102_1_reg_1637[9] <= 1'b0;
end
endmodule 
