module forward_dataflow_in_loop_VITIS_LOOP_7283_1_Loop_VITIS_LOOP_7221_1_proc121_Pipeline_VITIS (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,p_udiv,zext_ln7221,select_ln7288,v4882_address0,v4882_ce0,v4882_we0,v4882_d0,v4882_1_address0,v4882_1_ce0,v4882_1_we0,v4882_1_d0,v4882_2_address0,v4882_2_ce0,v4882_2_we0,v4882_2_d0,v4882_3_address0,v4882_3_ce0,v4882_3_we0,v4882_3_d0,v4882_4_address0,v4882_4_ce0,v4882_4_we0,v4882_4_d0,v4882_5_address0,v4882_5_ce0,v4882_5_we0,v4882_5_d0,v4882_6_address0,v4882_6_ce0,v4882_6_we0,v4882_6_d0,v4882_7_address0,v4882_7_ce0,v4882_7_we0,v4882_7_d0,zext_ln7221_2_cast_cast,empty,v9235_0_0_0_address0,v9235_0_0_0_ce0,v9235_0_0_0_q0,v9235_0_0_0_address1,v9235_0_0_0_ce1,v9235_0_0_0_q1,v9235_0_0_1_address0,v9235_0_0_1_ce0,v9235_0_0_1_q0,v9235_0_0_1_address1,v9235_0_0_1_ce1,v9235_0_0_1_q1,v9235_0_1_0_address0,v9235_0_1_0_ce0,v9235_0_1_0_q0,v9235_0_1_0_address1,v9235_0_1_0_ce1,v9235_0_1_0_q1,v9235_0_1_1_address0,v9235_0_1_1_ce0,v9235_0_1_1_q0,v9235_0_1_1_address1,v9235_0_1_1_ce1,v9235_0_1_1_q1,v9235_1_0_0_address0,v9235_1_0_0_ce0,v9235_1_0_0_q0,v9235_1_0_0_address1,v9235_1_0_0_ce1,v9235_1_0_0_q1,v9235_1_0_1_address0,v9235_1_0_1_ce0,v9235_1_0_1_q0,v9235_1_0_1_address1,v9235_1_0_1_ce1,v9235_1_0_1_q1,v9235_1_1_0_address0,v9235_1_1_0_ce0,v9235_1_1_0_q0,v9235_1_1_0_address1,v9235_1_1_0_ce1,v9235_1_1_0_q1,v9235_1_1_1_address0,v9235_1_1_1_ce0,v9235_1_1_1_q0,v9235_1_1_1_address1,v9235_1_1_1_ce1,v9235_1_1_1_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] mul_i;
input  [5:0] p_udiv;
input  [1:0] zext_ln7221;
input  [1:0] select_ln7288;
output  [9:0] v4882_address0;
output   v4882_ce0;
output   v4882_we0;
output  [7:0] v4882_d0;
output  [9:0] v4882_1_address0;
output   v4882_1_ce0;
output   v4882_1_we0;
output  [7:0] v4882_1_d0;
output  [9:0] v4882_2_address0;
output   v4882_2_ce0;
output   v4882_2_we0;
output  [7:0] v4882_2_d0;
output  [9:0] v4882_3_address0;
output   v4882_3_ce0;
output   v4882_3_we0;
output  [7:0] v4882_3_d0;
output  [9:0] v4882_4_address0;
output   v4882_4_ce0;
output   v4882_4_we0;
output  [7:0] v4882_4_d0;
output  [9:0] v4882_5_address0;
output   v4882_5_ce0;
output   v4882_5_we0;
output  [7:0] v4882_5_d0;
output  [9:0] v4882_6_address0;
output   v4882_6_ce0;
output   v4882_6_we0;
output  [7:0] v4882_6_d0;
output  [9:0] v4882_7_address0;
output   v4882_7_ce0;
output   v4882_7_we0;
output  [7:0] v4882_7_d0;
input  [1:0] zext_ln7221_2_cast_cast;
input  [1:0] empty;
output  [13:0] v9235_0_0_0_address0;
output   v9235_0_0_0_ce0;
input  [7:0] v9235_0_0_0_q0;
output  [13:0] v9235_0_0_0_address1;
output   v9235_0_0_0_ce1;
input  [7:0] v9235_0_0_0_q1;
output  [13:0] v9235_0_0_1_address0;
output   v9235_0_0_1_ce0;
input  [7:0] v9235_0_0_1_q0;
output  [13:0] v9235_0_0_1_address1;
output   v9235_0_0_1_ce1;
input  [7:0] v9235_0_0_1_q1;
output  [13:0] v9235_0_1_0_address0;
output   v9235_0_1_0_ce0;
input  [7:0] v9235_0_1_0_q0;
output  [13:0] v9235_0_1_0_address1;
output   v9235_0_1_0_ce1;
input  [7:0] v9235_0_1_0_q1;
output  [13:0] v9235_0_1_1_address0;
output   v9235_0_1_1_ce0;
input  [7:0] v9235_0_1_1_q0;
output  [13:0] v9235_0_1_1_address1;
output   v9235_0_1_1_ce1;
input  [7:0] v9235_0_1_1_q1;
output  [13:0] v9235_1_0_0_address0;
output   v9235_1_0_0_ce0;
input  [7:0] v9235_1_0_0_q0;
output  [13:0] v9235_1_0_0_address1;
output   v9235_1_0_0_ce1;
input  [7:0] v9235_1_0_0_q1;
output  [13:0] v9235_1_0_1_address0;
output   v9235_1_0_1_ce0;
input  [7:0] v9235_1_0_1_q0;
output  [13:0] v9235_1_0_1_address1;
output   v9235_1_0_1_ce1;
input  [7:0] v9235_1_0_1_q1;
output  [13:0] v9235_1_1_0_address0;
output   v9235_1_1_0_ce0;
input  [7:0] v9235_1_1_0_q0;
output  [13:0] v9235_1_1_0_address1;
output   v9235_1_1_0_ce1;
input  [7:0] v9235_1_1_0_q1;
output  [13:0] v9235_1_1_1_address0;
output   v9235_1_1_1_ce0;
input  [7:0] v9235_1_1_1_q0;
output  [13:0] v9235_1_1_1_address1;
output   v9235_1_1_1_ce1;
input  [7:0] v9235_1_1_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln7221_fu_988_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [4:0] lshr_ln_fu_782_p4;
reg   [4:0] lshr_ln_reg_1596;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] sub_ln7226_fu_828_p2;
reg   [9:0] sub_ln7226_reg_1602;
reg   [9:0] sub_ln7226_reg_1602_pp0_iter1_reg;
wire   [9:0] sub_ln7234_fu_864_p2;
reg   [9:0] sub_ln7234_reg_1608;
reg   [9:0] sub_ln7234_reg_1608_pp0_iter1_reg;
reg   [2:0] lshr_ln35_reg_1614;
wire   [4:0] empty_228_fu_890_p2;
reg   [4:0] empty_228_reg_1619;
wire   [0:0] empty_229_fu_896_p1;
reg   [0:0] empty_229_reg_1624;
reg   [0:0] empty_229_reg_1624_pp0_iter1_reg;
reg   [0:0] empty_229_reg_1624_pp0_iter2_reg;
reg   [3:0] tmp_s_reg_1636;
reg   [2:0] lshr_ln36_reg_1641;
wire   [4:0] add_ln7225_1_fu_930_p2;
reg   [4:0] add_ln7225_1_reg_1646;
wire   [0:0] trunc_ln7225_fu_936_p1;
reg   [0:0] trunc_ln7225_reg_1651;
reg   [0:0] trunc_ln7225_reg_1651_pp0_iter1_reg;
reg   [0:0] trunc_ln7225_reg_1651_pp0_iter2_reg;
reg   [3:0] lshr_ln37_reg_1671;
wire   [0:0] icmp_ln7223_fu_976_p2;
reg   [0:0] icmp_ln7223_reg_1676;
wire   [0:0] icmp_ln7222_fu_982_p2;
reg   [0:0] icmp_ln7222_reg_1681;
reg   [0:0] icmp_ln7221_reg_1686;
reg   [4:0] p_cast_reg_1690;
wire   [9:0] add_ln7240_1_fu_1153_p2;
reg   [9:0] add_ln7240_1_reg_1695;
wire   [13:0] zext_ln7228_fu_1159_p1;
reg   [13:0] zext_ln7228_reg_1700;
wire  signed [13:0] sext_ln7226_1_fu_1209_p1;
reg  signed [13:0] sext_ln7226_1_reg_1746;
wire   [63:0] zext_ln7240_4_fu_1326_p1;
reg   [63:0] zext_ln7240_4_reg_1792;
reg   [0:0] ap_phi_mux_icmp_ln7222246_phi_fu_635_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln7223245_phi_fu_645_p4;
wire   [63:0] zext_ln7232_fu_1168_p1;
wire   [63:0] zext_ln7240_5_fu_1182_p1;
wire   [63:0] zext_ln7230_2_fu_1219_p1;
wire   [63:0] zext_ln7238_1_fu_1233_p1;
wire   [63:0] zext_ln7228_1_fu_1338_p1;
wire   [63:0] zext_ln7236_fu_1351_p1;
wire   [63:0] zext_ln7226_fu_1364_p1;
wire   [63:0] zext_ln7234_2_fu_1377_p1;
reg   [9:0] indvar_flatten12240_fu_144;
wire   [9:0] add_ln7221_1_fu_970_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten12240_load;
reg   [5:0] v4850241_fu_148;
wire   [5:0] v4850_fu_742_p3;
reg   [5:0] ap_sig_allocacmp_v4850241_load;
reg   [5:0] indvar_flatten242_fu_152;
wire   [5:0] select_ln7222_1_fu_962_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten242_load;
reg   [3:0] v4851243_fu_156;
wire   [3:0] v4851_fu_770_p3;
reg   [3:0] ap_sig_allocacmp_v4851243_load;
reg   [3:0] v4852244_fu_160;
wire   [3:0] v4852_fu_950_p2;
reg   [3:0] ap_sig_allocacmp_v4852244_load;
reg    v9235_0_0_0_ce1_local;
reg   [13:0] v9235_0_0_0_address1_local;
reg    v9235_0_0_0_ce0_local;
reg   [13:0] v9235_0_0_0_address0_local;
reg    v9235_0_0_1_ce1_local;
reg   [13:0] v9235_0_0_1_address1_local;
reg    v9235_0_0_1_ce0_local;
reg   [13:0] v9235_0_0_1_address0_local;
reg    v9235_0_1_0_ce1_local;
reg   [13:0] v9235_0_1_0_address1_local;
reg    v9235_0_1_0_ce0_local;
reg   [13:0] v9235_0_1_0_address0_local;
reg    v9235_0_1_1_ce1_local;
reg   [13:0] v9235_0_1_1_address1_local;
reg    v9235_0_1_1_ce0_local;
reg   [13:0] v9235_0_1_1_address0_local;
reg    v9235_1_0_0_ce1_local;
reg   [13:0] v9235_1_0_0_address1_local;
reg    v9235_1_0_0_ce0_local;
reg   [13:0] v9235_1_0_0_address0_local;
reg    v9235_1_0_1_ce1_local;
reg   [13:0] v9235_1_0_1_address1_local;
reg    v9235_1_0_1_ce0_local;
reg   [13:0] v9235_1_0_1_address0_local;
reg    v9235_1_1_0_ce1_local;
reg   [13:0] v9235_1_1_0_address1_local;
reg    v9235_1_1_0_ce0_local;
reg   [13:0] v9235_1_1_0_address0_local;
reg    v9235_1_1_1_ce1_local;
reg   [13:0] v9235_1_1_1_address1_local;
reg    v9235_1_1_1_ce0_local;
reg   [13:0] v9235_1_1_1_address0_local;
reg    v4882_5_we0_local;
wire   [7:0] select_ln7230_2_fu_1399_p3;
reg    v4882_5_ce0_local;
reg    v4882_4_we0_local;
wire   [7:0] select_ln7232_2_fu_1421_p3;
reg    v4882_4_ce0_local;
reg    v4882_1_we0_local;
wire   [7:0] select_ln7238_2_fu_1443_p3;
reg    v4882_1_ce0_local;
reg    v4882_we0_local;
wire   [7:0] select_ln7240_2_fu_1465_p3;
reg    v4882_ce0_local;
reg    v4882_7_we0_local;
wire   [7:0] select_ln7226_2_fu_1487_p3;
reg    v4882_7_ce0_local;
reg    v4882_6_we0_local;
wire   [7:0] select_ln7228_2_fu_1509_p3;
reg    v4882_6_ce0_local;
reg    v4882_3_we0_local;
wire   [7:0] select_ln7234_2_fu_1531_p3;
reg    v4882_3_ce0_local;
reg    v4882_2_we0_local;
wire   [7:0] select_ln7236_2_fu_1553_p3;
reg    v4882_2_ce0_local;
wire  signed [3:0] zext_ln7221_2_cast_cast_cast_fu_656_p1;
wire  signed [3:0] select_ln7288_cast_fu_664_p1;
wire   [0:0] xor_ln7221_fu_730_p2;
wire   [5:0] add_ln7221_fu_716_p2;
wire   [3:0] select_ln7221_fu_722_p3;
wire   [0:0] and_ln7221_fu_736_p2;
wire   [0:0] empty_225_fu_756_p2;
wire   [3:0] add_ln7222_fu_750_p2;
wire   [6:0] zext_ln7221_1_fu_778_p1;
wire   [5:0] zext_ln7221_2_fu_792_p1;
wire   [5:0] empty_227_fu_802_p2;
wire   [6:0] tmp_129_fu_816_p3;
wire   [9:0] p_shl51_fu_808_p3;
wire   [9:0] zext_ln7226_1_fu_824_p1;
wire   [6:0] empty_226_fu_796_p2;
wire   [5:0] tmp_130_fu_834_p4;
wire   [6:0] tmp_131_fu_852_p3;
wire   [9:0] p_shl49_fu_844_p3;
wire   [9:0] zext_ln7234_fu_860_p1;
wire   [4:0] zext_ln7221_cast_fu_672_p1;
wire   [4:0] zext_ln7222_1_fu_870_p1;
wire   [4:0] tmp_fu_884_p2;
wire   [4:0] select_ln7288_cast_cast_fu_668_p1;
wire   [3:0] v4852_mid2_fu_762_p3;
wire   [4:0] zext_ln7221_2_cast_cast_cast_cast_fu_660_p1;
wire   [4:0] zext_ln7223_fu_910_p1;
wire   [4:0] add_ln7225_fu_924_p2;
wire   [4:0] p_cast3_fu_652_p1;
wire   [5:0] add_ln7222_1_fu_956_p2;
wire   [7:0] p_shl53_fu_1022_p3;
wire   [7:0] zext_ln7240_fu_1019_p1;
wire   [7:0] sub_ln7240_fu_1029_p2;
wire   [7:0] zext_ln7240_1_fu_1035_p1;
wire   [7:0] add_ln7240_fu_1038_p2;
wire   [6:0] trunc_ln7240_fu_1044_p1;
wire   [9:0] tmp_132_fu_1048_p3;
wire   [9:0] zext_ln7240_2_fu_1056_p1;
wire   [9:0] zext_ln7230_fu_1066_p1;
wire   [9:0] add_ln7230_fu_1069_p2;
wire   [10:0] tmp_133_fu_1082_p3;
wire   [13:0] p_shl46_fu_1074_p3;
wire   [13:0] zext_ln7230_1_fu_1090_p1;
wire   [9:0] add_ln7238_fu_1100_p2;
wire   [10:0] tmp_134_fu_1113_p3;
wire   [13:0] p_shl44_fu_1105_p3;
wire   [13:0] zext_ln7238_fu_1121_p1;
wire   [5:0] p_cast6_i_fu_1131_p1;
wire   [5:0] empty_230_fu_1134_p2;
wire   [9:0] sub_ln7240_1_fu_1060_p2;
wire   [9:0] zext_ln7240_3_fu_1150_p1;
wire   [13:0] sub_ln7230_fu_1094_p2;
wire   [13:0] add_ln7232_fu_1162_p2;
wire   [13:0] sub_ln7238_fu_1125_p2;
wire   [13:0] add_ln7240_2_fu_1176_p2;
wire   [5:0] zext_ln7225_fu_1190_p1;
wire   [5:0] add_ln7225_2_fu_1193_p2;
wire   [4:0] trunc_ln_fu_1199_p4;
wire   [13:0] add_ln7230_1_fu_1213_p2;
wire   [13:0] add_ln7238_1_fu_1227_p2;
wire  signed [9:0] sext_ln7226_fu_1247_p1;
wire   [10:0] mul_ln7226_cast_fu_1241_p1;
wire   [10:0] zext_ln7226_2_fu_1250_p1;
wire   [10:0] add_ln7226_fu_1254_p2;
wire   [9:0] trunc_ln7226_fu_1260_p1;
wire   [11:0] tmp_135_fu_1264_p3;
wire   [13:0] tmp_136_fu_1272_p3;
wire   [13:0] zext_ln7226_3_fu_1280_p1;
wire   [10:0] zext_ln7222_fu_1244_p1;
wire   [10:0] add_ln7234_fu_1290_p2;
wire   [9:0] trunc_ln7234_fu_1296_p1;
wire   [11:0] tmp_137_fu_1300_p3;
wire   [13:0] tmp_138_fu_1308_p3;
wire   [13:0] zext_ln7234_1_fu_1316_p1;
wire   [13:0] sub_ln7234_1_fu_1284_p2;
wire   [13:0] add_ln7228_fu_1333_p2;
wire   [13:0] sub_ln7223_fu_1320_p2;
wire   [13:0] add_ln7236_fu_1346_p2;
wire   [13:0] add_ln7226_1_fu_1359_p2;
wire   [13:0] add_ln7234_1_fu_1372_p2;
wire   [7:0] select_ln7230_1_fu_1392_p3;
wire   [7:0] select_ln7230_fu_1385_p3;
wire   [7:0] select_ln7232_1_fu_1414_p3;
wire   [7:0] select_ln7232_fu_1407_p3;
wire   [7:0] select_ln7238_1_fu_1436_p3;
wire   [7:0] select_ln7238_fu_1429_p3;
wire   [7:0] select_ln7240_1_fu_1458_p3;
wire   [7:0] select_ln7240_fu_1451_p3;
wire   [7:0] select_ln7226_fu_1473_p3;
wire   [7:0] select_ln7226_1_fu_1480_p3;
wire   [7:0] select_ln7228_fu_1495_p3;
wire   [7:0] select_ln7228_1_fu_1502_p3;
wire   [7:0] select_ln7234_fu_1517_p3;
wire   [7:0] select_ln7234_1_fu_1524_p3;
wire   [7:0] select_ln7236_fu_1539_p3;
wire   [7:0] select_ln7236_1_fu_1546_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1055;
reg    ap_condition_1058;
reg    ap_condition_1061;
reg    ap_condition_1064;
reg    ap_condition_1067;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten12240_fu_144 = 10'd0;
#0 v4850241_fu_148 = 6'd0;
#0 indvar_flatten242_fu_152 = 6'd0;
#0 v4851243_fu_156 = 4'd0;
#0 v4852244_fu_160 = 4'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12240_fu_144 <= add_ln7221_1_fu_970_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12240_fu_144 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten242_fu_152 <= select_ln7222_1_fu_962_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten242_fu_152 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v4850241_fu_148 <= v4850_fu_742_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4850241_fu_148 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v4851243_fu_156 <= v4851_fu_770_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4851243_fu_156 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v4852244_fu_160 <= v4852_fu_950_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v4852244_fu_160 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln7225_1_reg_1646 <= add_ln7225_1_fu_930_p2;
        add_ln7240_1_reg_1695 <= add_ln7240_1_fu_1153_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_228_reg_1619 <= empty_228_fu_890_p2;
        empty_229_reg_1624 <= empty_229_fu_896_p1;
        empty_229_reg_1624_pp0_iter1_reg <= empty_229_reg_1624;
        icmp_ln7221_reg_1686 <= icmp_ln7221_fu_988_p2;
        lshr_ln35_reg_1614 <= {{v4851_fu_770_p3[3:1]}};
        lshr_ln36_reg_1641 <= {{v4852_mid2_fu_762_p3[3:1]}};
        lshr_ln37_reg_1671 <= {{add_ln7225_1_fu_930_p2[4:1]}};
        lshr_ln_reg_1596 <= {{v4850_fu_742_p3[5:1]}};
        p_cast_reg_1690 <= {{empty_230_fu_1134_p2[5:1]}};
        sext_ln7226_1_reg_1746 <= sext_ln7226_1_fu_1209_p1;
        sub_ln7226_reg_1602[9 : 1] <= sub_ln7226_fu_828_p2[9 : 1];
        sub_ln7226_reg_1602_pp0_iter1_reg[9 : 1] <= sub_ln7226_reg_1602[9 : 1];
        sub_ln7234_reg_1608[9 : 1] <= sub_ln7234_fu_864_p2[9 : 1];
        sub_ln7234_reg_1608_pp0_iter1_reg[9 : 1] <= sub_ln7234_reg_1608[9 : 1];
        tmp_s_reg_1636 <= {{empty_228_fu_890_p2[4:1]}};
        trunc_ln7225_reg_1651 <= trunc_ln7225_fu_936_p1;
        trunc_ln7225_reg_1651_pp0_iter1_reg <= trunc_ln7225_reg_1651;
        zext_ln7228_reg_1700[3 : 0] <= zext_ln7228_fu_1159_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        empty_229_reg_1624_pp0_iter2_reg <= empty_229_reg_1624_pp0_iter1_reg;
        trunc_ln7225_reg_1651_pp0_iter2_reg <= trunc_ln7225_reg_1651_pp0_iter1_reg;
        zext_ln7240_4_reg_1792[9 : 0] <= zext_ln7240_4_fu_1326_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln7222_reg_1681 <= icmp_ln7222_fu_982_p2;
        icmp_ln7223_reg_1676 <= icmp_ln7223_fu_976_p2;
    end
end
always @ (*) begin
    if (((icmp_ln7221_fu_988_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1055)) begin
            ap_phi_mux_icmp_ln7222246_phi_fu_635_p4 = icmp_ln7222_reg_1681;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln7222246_phi_fu_635_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln7222246_phi_fu_635_p4 = icmp_ln7222_reg_1681;
        end
    end else begin
        ap_phi_mux_icmp_ln7222246_phi_fu_635_p4 = icmp_ln7222_reg_1681;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1055)) begin
            ap_phi_mux_icmp_ln7223245_phi_fu_645_p4 = icmp_ln7223_reg_1676;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln7223245_phi_fu_645_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln7223245_phi_fu_645_p4 = icmp_ln7223_reg_1676;
        end
    end else begin
        ap_phi_mux_icmp_ln7223245_phi_fu_645_p4 = icmp_ln7223_reg_1676;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12240_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12240_load = indvar_flatten12240_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten242_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten242_load = indvar_flatten242_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4850241_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v4850241_load = v4850241_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4851243_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v4851243_load = v4851243_fu_156;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4852244_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v4852244_load = v4852244_fu_160;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4882_1_ce0_local = 1'b1;
    end else begin
        v4882_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4882_1_we0_local = 1'b1;
    end else begin
        v4882_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4882_2_ce0_local = 1'b1;
    end else begin
        v4882_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4882_2_we0_local = 1'b1;
    end else begin
        v4882_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4882_3_ce0_local = 1'b1;
    end else begin
        v4882_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4882_3_we0_local = 1'b1;
    end else begin
        v4882_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4882_4_ce0_local = 1'b1;
    end else begin
        v4882_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4882_4_we0_local = 1'b1;
    end else begin
        v4882_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4882_5_ce0_local = 1'b1;
    end else begin
        v4882_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4882_5_we0_local = 1'b1;
    end else begin
        v4882_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4882_6_ce0_local = 1'b1;
    end else begin
        v4882_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4882_6_we0_local = 1'b1;
    end else begin
        v4882_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4882_7_ce0_local = 1'b1;
    end else begin
        v4882_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4882_7_we0_local = 1'b1;
    end else begin
        v4882_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4882_ce0_local = 1'b1;
    end else begin
        v4882_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4882_we0_local = 1'b1;
    end else begin
        v4882_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1058)) begin
        if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0)) begin
            v9235_0_0_0_address0_local = zext_ln7228_1_fu_1338_p1;
        end else if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1)) begin
            v9235_0_0_0_address0_local = zext_ln7226_fu_1364_p1;
        end else begin
            v9235_0_0_0_address0_local = 'bx;
        end
    end else begin
        v9235_0_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1061)) begin
        if ((trunc_ln7225_reg_1651 == 1'd0)) begin
            v9235_0_0_0_address1_local = zext_ln7232_fu_1168_p1;
        end else if ((trunc_ln7225_reg_1651 == 1'd1)) begin
            v9235_0_0_0_address1_local = zext_ln7230_2_fu_1219_p1;
        end else begin
            v9235_0_0_0_address1_local = 'bx;
        end
    end else begin
        v9235_0_0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1) & (empty_229_reg_1624_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0) & (empty_229_reg_1624_pp0_iter1_reg == 1'd1)))) begin
        v9235_0_0_0_ce0_local = 1'b1;
    end else begin
        v9235_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd1) & (empty_229_reg_1624 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd0) & (empty_229_reg_1624 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v9235_0_0_0_ce1_local = 1'b1;
    end else begin
        v9235_0_0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1058)) begin
        if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1)) begin
            v9235_0_0_1_address0_local = zext_ln7228_1_fu_1338_p1;
        end else if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0)) begin
            v9235_0_0_1_address0_local = zext_ln7226_fu_1364_p1;
        end else begin
            v9235_0_0_1_address0_local = 'bx;
        end
    end else begin
        v9235_0_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1061)) begin
        if ((trunc_ln7225_reg_1651 == 1'd1)) begin
            v9235_0_0_1_address1_local = zext_ln7232_fu_1168_p1;
        end else if ((trunc_ln7225_reg_1651 == 1'd0)) begin
            v9235_0_0_1_address1_local = zext_ln7230_2_fu_1219_p1;
        end else begin
            v9235_0_0_1_address1_local = 'bx;
        end
    end else begin
        v9235_0_0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1) & (empty_229_reg_1624_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0) & (empty_229_reg_1624_pp0_iter1_reg == 1'd1)))) begin
        v9235_0_0_1_ce0_local = 1'b1;
    end else begin
        v9235_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd1) & (empty_229_reg_1624 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd0) & (empty_229_reg_1624 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v9235_0_0_1_ce1_local = 1'b1;
    end else begin
        v9235_0_0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1064)) begin
        if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0)) begin
            v9235_0_1_0_address0_local = zext_ln7228_1_fu_1338_p1;
        end else if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1)) begin
            v9235_0_1_0_address0_local = zext_ln7226_fu_1364_p1;
        end else begin
            v9235_0_1_0_address0_local = 'bx;
        end
    end else begin
        v9235_0_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1067)) begin
        if ((trunc_ln7225_reg_1651 == 1'd0)) begin
            v9235_0_1_0_address1_local = zext_ln7232_fu_1168_p1;
        end else if ((trunc_ln7225_reg_1651 == 1'd1)) begin
            v9235_0_1_0_address1_local = zext_ln7230_2_fu_1219_p1;
        end else begin
            v9235_0_1_0_address1_local = 'bx;
        end
    end else begin
        v9235_0_1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1) & (empty_229_reg_1624_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0) & (empty_229_reg_1624_pp0_iter1_reg == 1'd0)))) begin
        v9235_0_1_0_ce0_local = 1'b1;
    end else begin
        v9235_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd1) & (empty_229_reg_1624 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd0) & (empty_229_reg_1624 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v9235_0_1_0_ce1_local = 1'b1;
    end else begin
        v9235_0_1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1064)) begin
        if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1)) begin
            v9235_0_1_1_address0_local = zext_ln7228_1_fu_1338_p1;
        end else if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0)) begin
            v9235_0_1_1_address0_local = zext_ln7226_fu_1364_p1;
        end else begin
            v9235_0_1_1_address0_local = 'bx;
        end
    end else begin
        v9235_0_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1067)) begin
        if ((trunc_ln7225_reg_1651 == 1'd1)) begin
            v9235_0_1_1_address1_local = zext_ln7232_fu_1168_p1;
        end else if ((trunc_ln7225_reg_1651 == 1'd0)) begin
            v9235_0_1_1_address1_local = zext_ln7230_2_fu_1219_p1;
        end else begin
            v9235_0_1_1_address1_local = 'bx;
        end
    end else begin
        v9235_0_1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1) & (empty_229_reg_1624_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0) & (empty_229_reg_1624_pp0_iter1_reg == 1'd0)))) begin
        v9235_0_1_1_ce0_local = 1'b1;
    end else begin
        v9235_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd1) & (empty_229_reg_1624 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd0) & (empty_229_reg_1624 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v9235_0_1_1_ce1_local = 1'b1;
    end else begin
        v9235_0_1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1058)) begin
        if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0)) begin
            v9235_1_0_0_address0_local = zext_ln7236_fu_1351_p1;
        end else if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1)) begin
            v9235_1_0_0_address0_local = zext_ln7234_2_fu_1377_p1;
        end else begin
            v9235_1_0_0_address0_local = 'bx;
        end
    end else begin
        v9235_1_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1061)) begin
        if ((trunc_ln7225_reg_1651 == 1'd0)) begin
            v9235_1_0_0_address1_local = zext_ln7240_5_fu_1182_p1;
        end else if ((trunc_ln7225_reg_1651 == 1'd1)) begin
            v9235_1_0_0_address1_local = zext_ln7238_1_fu_1233_p1;
        end else begin
            v9235_1_0_0_address1_local = 'bx;
        end
    end else begin
        v9235_1_0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1) & (empty_229_reg_1624_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0) & (empty_229_reg_1624_pp0_iter1_reg == 1'd1)))) begin
        v9235_1_0_0_ce0_local = 1'b1;
    end else begin
        v9235_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd1) & (empty_229_reg_1624 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd0) & (empty_229_reg_1624 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v9235_1_0_0_ce1_local = 1'b1;
    end else begin
        v9235_1_0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1058)) begin
        if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1)) begin
            v9235_1_0_1_address0_local = zext_ln7236_fu_1351_p1;
        end else if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0)) begin
            v9235_1_0_1_address0_local = zext_ln7234_2_fu_1377_p1;
        end else begin
            v9235_1_0_1_address0_local = 'bx;
        end
    end else begin
        v9235_1_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1061)) begin
        if ((trunc_ln7225_reg_1651 == 1'd1)) begin
            v9235_1_0_1_address1_local = zext_ln7240_5_fu_1182_p1;
        end else if ((trunc_ln7225_reg_1651 == 1'd0)) begin
            v9235_1_0_1_address1_local = zext_ln7238_1_fu_1233_p1;
        end else begin
            v9235_1_0_1_address1_local = 'bx;
        end
    end else begin
        v9235_1_0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1) & (empty_229_reg_1624_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0) & (empty_229_reg_1624_pp0_iter1_reg == 1'd1)))) begin
        v9235_1_0_1_ce0_local = 1'b1;
    end else begin
        v9235_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd1) & (empty_229_reg_1624 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd0) & (empty_229_reg_1624 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v9235_1_0_1_ce1_local = 1'b1;
    end else begin
        v9235_1_0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1064)) begin
        if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0)) begin
            v9235_1_1_0_address0_local = zext_ln7236_fu_1351_p1;
        end else if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1)) begin
            v9235_1_1_0_address0_local = zext_ln7234_2_fu_1377_p1;
        end else begin
            v9235_1_1_0_address0_local = 'bx;
        end
    end else begin
        v9235_1_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1067)) begin
        if ((trunc_ln7225_reg_1651 == 1'd0)) begin
            v9235_1_1_0_address1_local = zext_ln7240_5_fu_1182_p1;
        end else if ((trunc_ln7225_reg_1651 == 1'd1)) begin
            v9235_1_1_0_address1_local = zext_ln7238_1_fu_1233_p1;
        end else begin
            v9235_1_1_0_address1_local = 'bx;
        end
    end else begin
        v9235_1_1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1) & (empty_229_reg_1624_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0) & (empty_229_reg_1624_pp0_iter1_reg == 1'd0)))) begin
        v9235_1_1_0_ce0_local = 1'b1;
    end else begin
        v9235_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd1) & (empty_229_reg_1624 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd0) & (empty_229_reg_1624 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v9235_1_1_0_ce1_local = 1'b1;
    end else begin
        v9235_1_1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1064)) begin
        if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1)) begin
            v9235_1_1_1_address0_local = zext_ln7236_fu_1351_p1;
        end else if ((trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0)) begin
            v9235_1_1_1_address0_local = zext_ln7234_2_fu_1377_p1;
        end else begin
            v9235_1_1_1_address0_local = 'bx;
        end
    end else begin
        v9235_1_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1067)) begin
        if ((trunc_ln7225_reg_1651 == 1'd1)) begin
            v9235_1_1_1_address1_local = zext_ln7240_5_fu_1182_p1;
        end else if ((trunc_ln7225_reg_1651 == 1'd0)) begin
            v9235_1_1_1_address1_local = zext_ln7238_1_fu_1233_p1;
        end else begin
            v9235_1_1_1_address1_local = 'bx;
        end
    end else begin
        v9235_1_1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd1) & (empty_229_reg_1624_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7225_reg_1651_pp0_iter1_reg == 1'd0) & (empty_229_reg_1624_pp0_iter1_reg == 1'd0)))) begin
        v9235_1_1_1_ce0_local = 1'b1;
    end else begin
        v9235_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd1) & (empty_229_reg_1624 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln7225_reg_1651 == 1'd0) & (empty_229_reg_1624 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v9235_1_1_1_ce1_local = 1'b1;
    end else begin
        v9235_1_1_1_ce1_local = 1'b0;
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
assign add_ln7221_1_fu_970_p2 = (ap_sig_allocacmp_indvar_flatten12240_load + 10'd1);
assign add_ln7221_fu_716_p2 = (ap_sig_allocacmp_v4850241_load + 6'd2);
assign add_ln7222_1_fu_956_p2 = (ap_sig_allocacmp_indvar_flatten242_load + 6'd1);
assign add_ln7222_fu_750_p2 = (select_ln7221_fu_722_p3 + 4'd2);
assign add_ln7225_1_fu_930_p2 = (add_ln7225_fu_924_p2 + p_cast3_fu_652_p1);
assign add_ln7225_2_fu_1193_p2 = ($signed(zext_ln7225_fu_1190_p1) + $signed(6'd63));
assign add_ln7225_fu_924_p2 = (zext_ln7221_2_cast_cast_cast_cast_fu_660_p1 + zext_ln7223_fu_910_p1);
assign add_ln7226_1_fu_1359_p2 = ($signed(sub_ln7234_1_fu_1284_p2) + $signed(sext_ln7226_1_reg_1746));
assign add_ln7226_fu_1254_p2 = (mul_ln7226_cast_fu_1241_p1 + zext_ln7226_2_fu_1250_p1);
assign add_ln7228_fu_1333_p2 = (sub_ln7234_1_fu_1284_p2 + zext_ln7228_reg_1700);
assign add_ln7230_1_fu_1213_p2 = ($signed(sub_ln7230_fu_1094_p2) + $signed(sext_ln7226_1_fu_1209_p1));
assign add_ln7230_fu_1069_p2 = (sub_ln7226_reg_1602 + zext_ln7230_fu_1066_p1);
assign add_ln7232_fu_1162_p2 = (sub_ln7230_fu_1094_p2 + zext_ln7228_fu_1159_p1);
assign add_ln7234_1_fu_1372_p2 = ($signed(sub_ln7223_fu_1320_p2) + $signed(sext_ln7226_1_reg_1746));
assign add_ln7234_fu_1290_p2 = (zext_ln7222_fu_1244_p1 + zext_ln7226_2_fu_1250_p1);
assign add_ln7236_fu_1346_p2 = (sub_ln7223_fu_1320_p2 + zext_ln7228_reg_1700);
assign add_ln7238_1_fu_1227_p2 = ($signed(sub_ln7238_fu_1125_p2) + $signed(sext_ln7226_1_fu_1209_p1));
assign add_ln7238_fu_1100_p2 = (sub_ln7234_reg_1608 + zext_ln7230_fu_1066_p1);
assign add_ln7240_1_fu_1153_p2 = (sub_ln7240_1_fu_1060_p2 + zext_ln7240_3_fu_1150_p1);
assign add_ln7240_2_fu_1176_p2 = (sub_ln7238_fu_1125_p2 + zext_ln7228_fu_1159_p1);
assign add_ln7240_fu_1038_p2 = (sub_ln7240_fu_1029_p2 + zext_ln7240_1_fu_1035_p1);
assign and_ln7221_fu_736_p2 = (xor_ln7221_fu_730_p2 & ap_phi_mux_icmp_ln7223245_phi_fu_645_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1055 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln7221_reg_1686 == 1'd0));
end
always @ (*) begin
    ap_condition_1058 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_229_reg_1624_pp0_iter1_reg == 1'd1));
end
always @ (*) begin
    ap_condition_1061 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (empty_229_reg_1624 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1064 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_229_reg_1624_pp0_iter1_reg == 1'd0));
end
always @ (*) begin
    ap_condition_1067 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (empty_229_reg_1624 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_225_fu_756_p2 = (ap_phi_mux_icmp_ln7222246_phi_fu_635_p4 | and_ln7221_fu_736_p2);
assign empty_226_fu_796_p2 = (mul_i + zext_ln7221_1_fu_778_p1);
assign empty_227_fu_802_p2 = (zext_ln7221_2_fu_792_p1 + p_udiv);
assign empty_228_fu_890_p2 = (tmp_fu_884_p2 + select_ln7288_cast_cast_fu_668_p1);
assign empty_229_fu_896_p1 = empty_228_fu_890_p2[0:0];
assign empty_230_fu_1134_p2 = ($signed(p_cast6_i_fu_1131_p1) + $signed(6'd63));
assign icmp_ln7221_fu_988_p2 = ((ap_sig_allocacmp_indvar_flatten12240_load == 10'd783) ? 1'b1 : 1'b0);
assign icmp_ln7222_fu_982_p2 = ((select_ln7222_1_fu_962_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln7223_fu_976_p2 = ((v4852_fu_950_p2 == 4'd14) ? 1'b1 : 1'b0);
assign lshr_ln_fu_782_p4 = {{v4850_fu_742_p3[5:1]}};
assign mul_ln7226_cast_fu_1241_p1 = sub_ln7226_reg_1602_pp0_iter1_reg;
assign p_cast3_fu_652_p1 = empty;
assign p_cast6_i_fu_1131_p1 = empty_228_reg_1619;
assign p_shl44_fu_1105_p3 = {{add_ln7238_fu_1100_p2}, {4'd0}};
assign p_shl46_fu_1074_p3 = {{add_ln7230_fu_1069_p2}, {4'd0}};
assign p_shl49_fu_844_p3 = {{tmp_130_fu_834_p4}, {4'd0}};
assign p_shl51_fu_808_p3 = {{empty_227_fu_802_p2}, {4'd0}};
assign p_shl53_fu_1022_p3 = {{lshr_ln_reg_1596}, {3'd0}};
assign select_ln7221_fu_722_p3 = ((ap_phi_mux_icmp_ln7222246_phi_fu_635_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v4851243_load);
assign select_ln7222_1_fu_962_p3 = ((ap_phi_mux_icmp_ln7222246_phi_fu_635_p4[0:0] == 1'b1) ? 6'd1 : add_ln7222_1_fu_956_p2);
assign select_ln7226_1_fu_1480_p3 = ((trunc_ln7225_reg_1651_pp0_iter2_reg[0:0] == 1'b1) ? v9235_0_1_0_q0 : v9235_0_1_1_q0);
assign select_ln7226_2_fu_1487_p3 = ((empty_229_reg_1624_pp0_iter2_reg[0:0] == 1'b1) ? select_ln7226_fu_1473_p3 : select_ln7226_1_fu_1480_p3);
assign select_ln7226_fu_1473_p3 = ((trunc_ln7225_reg_1651_pp0_iter2_reg[0:0] == 1'b1) ? v9235_0_0_0_q0 : v9235_0_0_1_q0);
assign select_ln7228_1_fu_1502_p3 = ((trunc_ln7225_reg_1651_pp0_iter2_reg[0:0] == 1'b1) ? v9235_0_1_1_q0 : v9235_0_1_0_q0);
assign select_ln7228_2_fu_1509_p3 = ((empty_229_reg_1624_pp0_iter2_reg[0:0] == 1'b1) ? select_ln7228_fu_1495_p3 : select_ln7228_1_fu_1502_p3);
assign select_ln7228_fu_1495_p3 = ((trunc_ln7225_reg_1651_pp0_iter2_reg[0:0] == 1'b1) ? v9235_0_0_1_q0 : v9235_0_0_0_q0);
assign select_ln7230_1_fu_1392_p3 = ((trunc_ln7225_reg_1651_pp0_iter1_reg[0:0] == 1'b1) ? v9235_0_1_0_q1 : v9235_0_1_1_q1);
assign select_ln7230_2_fu_1399_p3 = ((empty_229_reg_1624_pp0_iter1_reg[0:0] == 1'b1) ? select_ln7230_1_fu_1392_p3 : select_ln7230_fu_1385_p3);
assign select_ln7230_fu_1385_p3 = ((trunc_ln7225_reg_1651_pp0_iter1_reg[0:0] == 1'b1) ? v9235_0_0_0_q1 : v9235_0_0_1_q1);
assign select_ln7232_1_fu_1414_p3 = ((trunc_ln7225_reg_1651_pp0_iter1_reg[0:0] == 1'b1) ? v9235_0_1_1_q1 : v9235_0_1_0_q1);
assign select_ln7232_2_fu_1421_p3 = ((empty_229_reg_1624_pp0_iter1_reg[0:0] == 1'b1) ? select_ln7232_1_fu_1414_p3 : select_ln7232_fu_1407_p3);
assign select_ln7232_fu_1407_p3 = ((trunc_ln7225_reg_1651_pp0_iter1_reg[0:0] == 1'b1) ? v9235_0_0_1_q1 : v9235_0_0_0_q1);
assign select_ln7234_1_fu_1524_p3 = ((trunc_ln7225_reg_1651_pp0_iter2_reg[0:0] == 1'b1) ? v9235_1_1_0_q0 : v9235_1_1_1_q0);
assign select_ln7234_2_fu_1531_p3 = ((empty_229_reg_1624_pp0_iter2_reg[0:0] == 1'b1) ? select_ln7234_fu_1517_p3 : select_ln7234_1_fu_1524_p3);
assign select_ln7234_fu_1517_p3 = ((trunc_ln7225_reg_1651_pp0_iter2_reg[0:0] == 1'b1) ? v9235_1_0_0_q0 : v9235_1_0_1_q0);
assign select_ln7236_1_fu_1546_p3 = ((trunc_ln7225_reg_1651_pp0_iter2_reg[0:0] == 1'b1) ? v9235_1_1_1_q0 : v9235_1_1_0_q0);
assign select_ln7236_2_fu_1553_p3 = ((empty_229_reg_1624_pp0_iter2_reg[0:0] == 1'b1) ? select_ln7236_fu_1539_p3 : select_ln7236_1_fu_1546_p3);
assign select_ln7236_fu_1539_p3 = ((trunc_ln7225_reg_1651_pp0_iter2_reg[0:0] == 1'b1) ? v9235_1_0_1_q0 : v9235_1_0_0_q0);
assign select_ln7238_1_fu_1436_p3 = ((trunc_ln7225_reg_1651_pp0_iter1_reg[0:0] == 1'b1) ? v9235_1_1_0_q1 : v9235_1_1_1_q1);
assign select_ln7238_2_fu_1443_p3 = ((empty_229_reg_1624_pp0_iter1_reg[0:0] == 1'b1) ? select_ln7238_1_fu_1436_p3 : select_ln7238_fu_1429_p3);
assign select_ln7238_fu_1429_p3 = ((trunc_ln7225_reg_1651_pp0_iter1_reg[0:0] == 1'b1) ? v9235_1_0_0_q1 : v9235_1_0_1_q1);
assign select_ln7240_1_fu_1458_p3 = ((trunc_ln7225_reg_1651_pp0_iter1_reg[0:0] == 1'b1) ? v9235_1_1_1_q1 : v9235_1_1_0_q1);
assign select_ln7240_2_fu_1465_p3 = ((empty_229_reg_1624_pp0_iter1_reg[0:0] == 1'b1) ? select_ln7240_1_fu_1458_p3 : select_ln7240_fu_1451_p3);
assign select_ln7240_fu_1451_p3 = ((trunc_ln7225_reg_1651_pp0_iter1_reg[0:0] == 1'b1) ? v9235_1_0_1_q1 : v9235_1_0_0_q1);
assign select_ln7288_cast_cast_fu_668_p1 = $unsigned(select_ln7288_cast_fu_664_p1);
assign select_ln7288_cast_fu_664_p1 = $signed(select_ln7288);
assign sext_ln7226_1_fu_1209_p1 = $signed(trunc_ln_fu_1199_p4);
assign sext_ln7226_fu_1247_p1 = $signed(p_cast_reg_1690);
assign sub_ln7223_fu_1320_p2 = (tmp_138_fu_1308_p3 - zext_ln7234_1_fu_1316_p1);
assign sub_ln7226_fu_828_p2 = (p_shl51_fu_808_p3 - zext_ln7226_1_fu_824_p1);
assign sub_ln7230_fu_1094_p2 = (p_shl46_fu_1074_p3 - zext_ln7230_1_fu_1090_p1);
assign sub_ln7234_1_fu_1284_p2 = (tmp_136_fu_1272_p3 - zext_ln7226_3_fu_1280_p1);
assign sub_ln7234_fu_864_p2 = (p_shl49_fu_844_p3 - zext_ln7234_fu_860_p1);
assign sub_ln7238_fu_1125_p2 = (p_shl44_fu_1105_p3 - zext_ln7238_fu_1121_p1);
assign sub_ln7240_1_fu_1060_p2 = (tmp_132_fu_1048_p3 - zext_ln7240_2_fu_1056_p1);
assign sub_ln7240_fu_1029_p2 = (p_shl53_fu_1022_p3 - zext_ln7240_fu_1019_p1);
assign tmp_129_fu_816_p3 = {{empty_227_fu_802_p2}, {1'd0}};
assign tmp_130_fu_834_p4 = {{empty_226_fu_796_p2[6:1]}};
assign tmp_131_fu_852_p3 = {{tmp_130_fu_834_p4}, {1'd0}};
assign tmp_132_fu_1048_p3 = {{trunc_ln7240_fu_1044_p1}, {3'd0}};
assign tmp_133_fu_1082_p3 = {{add_ln7230_fu_1069_p2}, {1'd0}};
assign tmp_134_fu_1113_p3 = {{add_ln7238_fu_1100_p2}, {1'd0}};
assign tmp_135_fu_1264_p3 = {{add_ln7226_fu_1254_p2}, {1'd0}};
assign tmp_136_fu_1272_p3 = {{trunc_ln7226_fu_1260_p1}, {4'd0}};
assign tmp_137_fu_1300_p3 = {{add_ln7234_fu_1290_p2}, {1'd0}};
assign tmp_138_fu_1308_p3 = {{trunc_ln7234_fu_1296_p1}, {4'd0}};
assign tmp_fu_884_p2 = (zext_ln7221_cast_fu_672_p1 + zext_ln7222_1_fu_870_p1);
assign trunc_ln7225_fu_936_p1 = add_ln7225_1_fu_930_p2[0:0];
assign trunc_ln7226_fu_1260_p1 = add_ln7226_fu_1254_p2[9:0];
assign trunc_ln7234_fu_1296_p1 = add_ln7234_fu_1290_p2[9:0];
assign trunc_ln7240_fu_1044_p1 = add_ln7240_fu_1038_p2[6:0];
assign trunc_ln_fu_1199_p4 = {{add_ln7225_2_fu_1193_p2[5:1]}};
assign v4850_fu_742_p3 = ((ap_phi_mux_icmp_ln7222246_phi_fu_635_p4[0:0] == 1'b1) ? add_ln7221_fu_716_p2 : ap_sig_allocacmp_v4850241_load);
assign v4851_fu_770_p3 = ((and_ln7221_fu_736_p2[0:0] == 1'b1) ? add_ln7222_fu_750_p2 : select_ln7221_fu_722_p3);
assign v4852_fu_950_p2 = (v4852_mid2_fu_762_p3 + 4'd2);
assign v4852_mid2_fu_762_p3 = ((empty_225_fu_756_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v4852244_load);
assign v4882_1_address0 = zext_ln7240_4_fu_1326_p1;
assign v4882_1_ce0 = v4882_1_ce0_local;
assign v4882_1_d0 = select_ln7238_2_fu_1443_p3;
assign v4882_1_we0 = v4882_1_we0_local;
assign v4882_2_address0 = zext_ln7240_4_reg_1792;
assign v4882_2_ce0 = v4882_2_ce0_local;
assign v4882_2_d0 = select_ln7236_2_fu_1553_p3;
assign v4882_2_we0 = v4882_2_we0_local;
assign v4882_3_address0 = zext_ln7240_4_reg_1792;
assign v4882_3_ce0 = v4882_3_ce0_local;
assign v4882_3_d0 = select_ln7234_2_fu_1531_p3;
assign v4882_3_we0 = v4882_3_we0_local;
assign v4882_4_address0 = zext_ln7240_4_fu_1326_p1;
assign v4882_4_ce0 = v4882_4_ce0_local;
assign v4882_4_d0 = select_ln7232_2_fu_1421_p3;
assign v4882_4_we0 = v4882_4_we0_local;
assign v4882_5_address0 = zext_ln7240_4_fu_1326_p1;
assign v4882_5_ce0 = v4882_5_ce0_local;
assign v4882_5_d0 = select_ln7230_2_fu_1399_p3;
assign v4882_5_we0 = v4882_5_we0_local;
assign v4882_6_address0 = zext_ln7240_4_reg_1792;
assign v4882_6_ce0 = v4882_6_ce0_local;
assign v4882_6_d0 = select_ln7228_2_fu_1509_p3;
assign v4882_6_we0 = v4882_6_we0_local;
assign v4882_7_address0 = zext_ln7240_4_reg_1792;
assign v4882_7_ce0 = v4882_7_ce0_local;
assign v4882_7_d0 = select_ln7226_2_fu_1487_p3;
assign v4882_7_we0 = v4882_7_we0_local;
assign v4882_address0 = zext_ln7240_4_fu_1326_p1;
assign v4882_ce0 = v4882_ce0_local;
assign v4882_d0 = select_ln7240_2_fu_1465_p3;
assign v4882_we0 = v4882_we0_local;
assign v9235_0_0_0_address0 = v9235_0_0_0_address0_local;
assign v9235_0_0_0_address1 = v9235_0_0_0_address1_local;
assign v9235_0_0_0_ce0 = v9235_0_0_0_ce0_local;
assign v9235_0_0_0_ce1 = v9235_0_0_0_ce1_local;
assign v9235_0_0_1_address0 = v9235_0_0_1_address0_local;
assign v9235_0_0_1_address1 = v9235_0_0_1_address1_local;
assign v9235_0_0_1_ce0 = v9235_0_0_1_ce0_local;
assign v9235_0_0_1_ce1 = v9235_0_0_1_ce1_local;
assign v9235_0_1_0_address0 = v9235_0_1_0_address0_local;
assign v9235_0_1_0_address1 = v9235_0_1_0_address1_local;
assign v9235_0_1_0_ce0 = v9235_0_1_0_ce0_local;
assign v9235_0_1_0_ce1 = v9235_0_1_0_ce1_local;
assign v9235_0_1_1_address0 = v9235_0_1_1_address0_local;
assign v9235_0_1_1_address1 = v9235_0_1_1_address1_local;
assign v9235_0_1_1_ce0 = v9235_0_1_1_ce0_local;
assign v9235_0_1_1_ce1 = v9235_0_1_1_ce1_local;
assign v9235_1_0_0_address0 = v9235_1_0_0_address0_local;
assign v9235_1_0_0_address1 = v9235_1_0_0_address1_local;
assign v9235_1_0_0_ce0 = v9235_1_0_0_ce0_local;
assign v9235_1_0_0_ce1 = v9235_1_0_0_ce1_local;
assign v9235_1_0_1_address0 = v9235_1_0_1_address0_local;
assign v9235_1_0_1_address1 = v9235_1_0_1_address1_local;
assign v9235_1_0_1_ce0 = v9235_1_0_1_ce0_local;
assign v9235_1_0_1_ce1 = v9235_1_0_1_ce1_local;
assign v9235_1_1_0_address0 = v9235_1_1_0_address0_local;
assign v9235_1_1_0_address1 = v9235_1_1_0_address1_local;
assign v9235_1_1_0_ce0 = v9235_1_1_0_ce0_local;
assign v9235_1_1_0_ce1 = v9235_1_1_0_ce1_local;
assign v9235_1_1_1_address0 = v9235_1_1_1_address0_local;
assign v9235_1_1_1_address1 = v9235_1_1_1_address1_local;
assign v9235_1_1_1_ce0 = v9235_1_1_1_ce0_local;
assign v9235_1_1_1_ce1 = v9235_1_1_1_ce1_local;
assign xor_ln7221_fu_730_p2 = (ap_phi_mux_icmp_ln7222246_phi_fu_635_p4 ^ 1'd1);
assign zext_ln7221_1_fu_778_p1 = v4850_fu_742_p3;
assign zext_ln7221_2_cast_cast_cast_cast_fu_660_p1 = $unsigned(zext_ln7221_2_cast_cast_cast_fu_656_p1);
assign zext_ln7221_2_cast_cast_cast_fu_656_p1 = $signed(zext_ln7221_2_cast_cast);
assign zext_ln7221_2_fu_792_p1 = lshr_ln_fu_782_p4;
assign zext_ln7221_cast_fu_672_p1 = zext_ln7221;
assign zext_ln7222_1_fu_870_p1 = v4851_fu_770_p3;
assign zext_ln7222_fu_1244_p1 = sub_ln7234_reg_1608_pp0_iter1_reg;
assign zext_ln7223_fu_910_p1 = v4852_mid2_fu_762_p3;
assign zext_ln7225_fu_1190_p1 = add_ln7225_1_reg_1646;
assign zext_ln7226_1_fu_824_p1 = tmp_129_fu_816_p3;
assign zext_ln7226_2_fu_1250_p1 = $unsigned(sext_ln7226_fu_1247_p1);
assign zext_ln7226_3_fu_1280_p1 = tmp_135_fu_1264_p3;
assign zext_ln7226_fu_1364_p1 = add_ln7226_1_fu_1359_p2;
assign zext_ln7228_1_fu_1338_p1 = add_ln7228_fu_1333_p2;
assign zext_ln7228_fu_1159_p1 = lshr_ln37_reg_1671;
assign zext_ln7230_1_fu_1090_p1 = tmp_133_fu_1082_p3;
assign zext_ln7230_2_fu_1219_p1 = add_ln7230_1_fu_1213_p2;
assign zext_ln7230_fu_1066_p1 = tmp_s_reg_1636;
assign zext_ln7232_fu_1168_p1 = add_ln7232_fu_1162_p2;
assign zext_ln7234_1_fu_1316_p1 = tmp_137_fu_1300_p3;
assign zext_ln7234_2_fu_1377_p1 = add_ln7234_1_fu_1372_p2;
assign zext_ln7234_fu_860_p1 = tmp_131_fu_852_p3;
assign zext_ln7236_fu_1351_p1 = add_ln7236_fu_1346_p2;
assign zext_ln7238_1_fu_1233_p1 = add_ln7238_1_fu_1227_p2;
assign zext_ln7238_fu_1121_p1 = tmp_134_fu_1113_p3;
assign zext_ln7240_1_fu_1035_p1 = lshr_ln35_reg_1614;
assign zext_ln7240_2_fu_1056_p1 = add_ln7240_fu_1038_p2;
assign zext_ln7240_3_fu_1150_p1 = lshr_ln36_reg_1641;
assign zext_ln7240_4_fu_1326_p1 = add_ln7240_1_reg_1695;
assign zext_ln7240_5_fu_1182_p1 = add_ln7240_2_fu_1176_p2;
assign zext_ln7240_fu_1019_p1 = lshr_ln_reg_1596;
always @ (posedge ap_clk) begin
    sub_ln7226_reg_1602[0] <= 1'b0;
    sub_ln7226_reg_1602_pp0_iter1_reg[0] <= 1'b0;
    sub_ln7234_reg_1608[0] <= 1'b0;
    sub_ln7234_reg_1608_pp0_iter1_reg[0] <= 1'b0;
    zext_ln7228_reg_1700[13:4] <= 10'b0000000000;
    zext_ln7240_4_reg_1792[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 