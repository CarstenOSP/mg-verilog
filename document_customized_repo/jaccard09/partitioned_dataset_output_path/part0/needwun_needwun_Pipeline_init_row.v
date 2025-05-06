
module needwun_needwun_Pipeline_init_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_address0,M_ce0,M_we0,M_d0,M_address1,M_ce1,M_we1,M_d1);  
parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] M_address0;
output   M_ce0;
output   M_we0;
output  [31:0] M_d0;
output  [14:0] M_address1;
output   M_ce1;
output   M_we1;
output  [31:0] M_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln20_fu_433_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state16;
reg   [7:0] a_idx_4_reg_1453;
wire   [3:0] tmp_5_fu_553_p4;
reg   [3:0] tmp_5_reg_1470;
wire    ap_CS_fsm_state3;
wire   [0:0] tmp_65_fu_590_p3;
reg   [0:0] tmp_65_reg_1476;
wire   [2:0] tmp_s_fu_683_p4;
reg   [2:0] tmp_s_reg_1483;
wire    ap_CS_fsm_state5;
wire   [1:0] tmp_3_fu_720_p4;
reg   [1:0] tmp_3_reg_1493;
wire   [0:0] tmp_66_fu_761_p3;
reg   [0:0] tmp_66_reg_1498;
wire    ap_CS_fsm_state6;
wire   [1:0] tmp_4_fu_941_p4;
reg   [1:0] tmp_4_reg_1504;
wire    ap_CS_fsm_state9;
reg   [1:0] tmp_7_reg_1522;
reg   [0:0] tmp_67_reg_1528;
wire   [63:0] zext_ln9_fu_399_p1;
wire   [63:0] zext_ln20_fu_439_p1;
wire   [63:0] zext_ln21_1_fu_505_p1;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln21_3_fu_533_p1;
wire   [63:0] zext_ln21_5_fu_570_p1;
wire   [63:0] zext_ln21_7_fu_609_p1;
wire   [63:0] zext_ln21_9_fu_636_p1;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln21_11_fu_663_p1;
wire   [63:0] zext_ln21_13_fu_700_p1;
wire   [63:0] zext_ln21_15_fu_741_p1;
wire   [63:0] zext_ln21_17_fu_779_p1;
wire   [63:0] zext_ln21_19_fu_810_p1;
wire   [63:0] zext_ln21_21_fu_837_p1;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln21_23_fu_867_p1;
wire   [63:0] zext_ln21_25_fu_894_p1;
wire    ap_CS_fsm_state8;
wire   [63:0] zext_ln21_27_fu_921_p1;
wire   [63:0] zext_ln21_29_fu_958_p1;
wire   [63:0] zext_ln21_31_fu_999_p1;
wire   [63:0] zext_ln21_33_fu_1045_p1;
wire    ap_CS_fsm_state10;
wire   [63:0] zext_ln21_35_fu_1075_p1;
wire   [63:0] zext_ln21_37_fu_1105_p1;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln21_39_fu_1138_p1;
wire   [63:0] zext_ln21_41_fu_1168_p1;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln21_43_fu_1198_p1;
wire   [63:0] zext_ln21_45_fu_1225_p1;
wire    ap_CS_fsm_state13;
wire   [63:0] zext_ln21_47_fu_1255_p1;
wire   [63:0] zext_ln21_49_fu_1285_p1;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln21_51_fu_1315_p1;
wire   [63:0] zext_ln21_53_fu_1342_p1;
wire    ap_CS_fsm_state15;
wire   [63:0] zext_ln21_55_fu_1372_p1;
wire   [63:0] zext_ln21_57_fu_1399_p1;
wire   [63:0] zext_ln21_59_fu_1426_p1;
reg   [7:0] a_idx_fu_122;
wire   [7:0] add_ln20_fu_477_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_4;
reg    M_we1_local;
reg   [31:0] M_d1_local;
wire  signed [31:0] sext_ln21_fu_410_p1;
reg    M_ce1_local;
reg   [14:0] M_address1_local;
reg    M_we0_local;
reg   [31:0] M_d0_local;
wire  signed [31:0] sext_ln21_1_fu_472_p1;
reg    M_ce0_local;
reg   [14:0] M_address0_local;
wire  signed [31:0] sext_ln21_2_fu_520_p1;
wire  signed [31:0] sext_ln21_3_fu_548_p1;
wire  signed [31:0] sext_ln21_4_fu_585_p1;
wire  signed [31:0] sext_ln21_5_fu_624_p1;
wire  signed [31:0] sext_ln21_6_fu_651_p1;
wire  signed [31:0] sext_ln21_7_fu_678_p1;
wire  signed [31:0] sext_ln21_8_fu_715_p1;
wire  signed [31:0] sext_ln21_9_fu_756_p1;
wire  signed [31:0] sext_ln21_10_fu_794_p1;
wire  signed [31:0] sext_ln21_11_fu_825_p1;
wire  signed [31:0] sext_ln21_12_fu_852_p1;
wire  signed [31:0] sext_ln21_13_fu_882_p1;
wire  signed [31:0] sext_ln21_14_fu_909_p1;
wire  signed [31:0] sext_ln21_15_fu_936_p1;
wire  signed [31:0] sext_ln21_16_fu_973_p1;
wire  signed [31:0] sext_ln21_17_fu_1014_p1;
wire  signed [31:0] sext_ln21_18_fu_1060_p1;
wire  signed [31:0] sext_ln21_19_fu_1090_p1;
wire  signed [31:0] sext_ln21_20_fu_1120_p1;
wire  signed [31:0] sext_ln21_21_fu_1153_p1;
wire  signed [31:0] sext_ln21_22_fu_1183_p1;
wire  signed [31:0] sext_ln21_23_fu_1213_p1;
wire  signed [31:0] sext_ln21_24_fu_1240_p1;
wire  signed [31:0] sext_ln21_25_fu_1270_p1;
wire  signed [31:0] sext_ln21_26_fu_1300_p1;
wire  signed [31:0] sext_ln21_27_fu_1330_p1;
wire  signed [31:0] sext_ln21_28_fu_1357_p1;
wire  signed [31:0] sext_ln21_29_fu_1387_p1;
wire  signed [31:0] sext_ln21_30_fu_1414_p1;
wire  signed [31:0] sext_ln21_31_fu_1441_p1;
wire   [7:0] sub_ln21_fu_404_p2;
wire   [6:0] tmp_fu_415_p4;
wire   [7:0] or_ln_fu_425_p3;
wire   [5:0] tmp_1_fu_444_p4;
wire   [6:0] or_ln1_fu_454_p3;
wire   [7:0] zext_ln21_fu_462_p1;
wire   [7:0] sub_ln21_1_fu_466_p2;
wire   [4:0] tmp_2_fu_488_p4;
wire   [6:0] or_ln20_1_fu_497_p3;
wire   [7:0] zext_ln21_2_fu_510_p1;
wire   [7:0] sub_ln21_2_fu_514_p2;
wire   [6:0] or_ln20_2_fu_525_p3;
wire   [7:0] zext_ln21_4_fu_538_p1;
wire   [7:0] sub_ln21_3_fu_542_p2;
wire   [6:0] or_ln20_3_fu_562_p3;
wire   [7:0] zext_ln21_6_fu_575_p1;
wire   [7:0] sub_ln21_4_fu_579_p2;
wire   [6:0] or_ln20_4_fu_597_p5;
wire   [7:0] zext_ln21_8_fu_614_p1;
wire   [7:0] sub_ln21_5_fu_618_p2;
wire   [6:0] or_ln20_5_fu_629_p3;
wire   [7:0] zext_ln21_10_fu_641_p1;
wire   [7:0] sub_ln21_6_fu_645_p2;
wire   [6:0] or_ln20_6_fu_656_p3;
wire   [7:0] zext_ln21_12_fu_668_p1;
wire   [7:0] sub_ln21_7_fu_672_p2;
wire   [6:0] or_ln20_7_fu_692_p3;
wire   [7:0] zext_ln21_14_fu_705_p1;
wire   [7:0] sub_ln21_8_fu_709_p2;
wire   [6:0] or_ln20_8_fu_729_p5;
wire   [7:0] zext_ln21_16_fu_746_p1;
wire   [7:0] sub_ln21_9_fu_750_p2;
wire   [6:0] or_ln20_9_fu_768_p5;
wire   [7:0] zext_ln21_18_fu_784_p1;
wire   [7:0] sub_ln21_10_fu_788_p2;
wire   [6:0] or_ln20_s_fu_799_p5;
wire   [7:0] zext_ln21_20_fu_815_p1;
wire   [7:0] sub_ln21_11_fu_819_p2;
wire   [6:0] or_ln20_10_fu_830_p3;
wire   [7:0] zext_ln21_22_fu_842_p1;
wire   [7:0] sub_ln21_12_fu_846_p2;
wire   [6:0] or_ln20_11_fu_857_p5;
wire   [7:0] zext_ln21_24_fu_872_p1;
wire   [7:0] sub_ln21_13_fu_876_p2;
wire   [6:0] or_ln20_12_fu_887_p3;
wire   [7:0] zext_ln21_26_fu_899_p1;
wire   [7:0] sub_ln21_14_fu_903_p2;
wire   [6:0] or_ln20_13_fu_914_p3;
wire   [7:0] zext_ln21_28_fu_926_p1;
wire   [7:0] sub_ln21_15_fu_930_p2;
wire   [6:0] or_ln20_14_fu_950_p3;
wire   [7:0] zext_ln21_30_fu_963_p1;
wire   [7:0] sub_ln21_16_fu_967_p2;
wire   [2:0] tmp_6_fu_978_p4;
wire   [6:0] or_ln20_15_fu_987_p5;
wire   [7:0] zext_ln21_32_fu_1004_p1;
wire   [7:0] sub_ln21_17_fu_1008_p2;
wire   [6:0] or_ln20_16_fu_1035_p5;
wire   [7:0] zext_ln21_34_fu_1050_p1;
wire   [7:0] sub_ln21_18_fu_1054_p2;
wire   [6:0] or_ln20_17_fu_1065_p5;
wire   [7:0] zext_ln21_36_fu_1080_p1;
wire   [7:0] sub_ln21_19_fu_1084_p2;
wire   [6:0] or_ln20_18_fu_1095_p5;
wire   [7:0] zext_ln21_38_fu_1110_p1;
wire   [7:0] sub_ln21_20_fu_1114_p2;
wire   [6:0] or_ln20_19_fu_1125_p7;
wire   [7:0] zext_ln21_40_fu_1143_p1;
wire   [7:0] sub_ln21_21_fu_1147_p2;
wire   [6:0] or_ln20_20_fu_1158_p5;
wire   [7:0] zext_ln21_42_fu_1173_p1;
wire   [7:0] sub_ln21_22_fu_1177_p2;
wire   [6:0] or_ln20_21_fu_1188_p5;
wire   [7:0] zext_ln21_44_fu_1203_p1;
wire   [7:0] sub_ln21_23_fu_1207_p2;
wire   [6:0] or_ln20_22_fu_1218_p3;
wire   [7:0] zext_ln21_46_fu_1230_p1;
wire   [7:0] sub_ln21_24_fu_1234_p2;
wire   [6:0] or_ln20_23_fu_1245_p5;
wire   [7:0] zext_ln21_48_fu_1260_p1;
wire   [7:0] sub_ln21_25_fu_1264_p2;
wire   [6:0] or_ln20_24_fu_1275_p5;
wire   [7:0] zext_ln21_50_fu_1290_p1;
wire   [7:0] sub_ln21_26_fu_1294_p2;
wire   [6:0] or_ln20_25_fu_1305_p5;
wire   [7:0] zext_ln21_52_fu_1320_p1;
wire   [7:0] sub_ln21_27_fu_1324_p2;
wire   [6:0] or_ln20_26_fu_1335_p3;
wire   [7:0] zext_ln21_54_fu_1347_p1;
wire   [7:0] sub_ln21_28_fu_1351_p2;
wire   [6:0] or_ln20_27_fu_1362_p5;
wire   [7:0] zext_ln21_56_fu_1377_p1;
wire   [7:0] sub_ln21_29_fu_1381_p2;
wire   [6:0] or_ln20_28_fu_1392_p3;
wire   [7:0] zext_ln21_58_fu_1404_p1;
wire   [7:0] sub_ln21_30_fu_1408_p2;
wire   [6:0] or_ln20_29_fu_1419_p3;
wire   [7:0] zext_ln21_60_fu_1431_p1;
wire   [7:0] sub_ln21_31_fu_1435_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 a_idx_fu_122 = 8'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln20_fu_433_p2 == 1'd1)) begin
            a_idx_fu_122 <= add_ln20_fu_477_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            a_idx_fu_122 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        a_idx_4_reg_1453 <= ap_sig_allocacmp_a_idx_4;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_3_reg_1493 <= {{a_idx_4_reg_1453[2:1]}};
        tmp_s_reg_1483 <= {{a_idx_4_reg_1453[6:4]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_4_reg_1504 <= {{a_idx_4_reg_1453[6:5]}};
        tmp_67_reg_1528 <= a_idx_4_reg_1453[32'd3];
        tmp_7_reg_1522 <= {{a_idx_4_reg_1453[3:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_5_reg_1470 <= {{a_idx_4_reg_1453[6:3]}};
        tmp_65_reg_1476 <= a_idx_4_reg_1453[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_66_reg_1498 <= a_idx_4_reg_1453[32'd2];
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        M_address0_local = zext_ln21_59_fu_1426_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        M_address0_local = zext_ln21_55_fu_1372_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        M_address0_local = zext_ln21_51_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        M_address0_local = zext_ln21_47_fu_1255_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        M_address0_local = zext_ln21_43_fu_1198_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        M_address0_local = zext_ln21_39_fu_1138_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        M_address0_local = zext_ln21_35_fu_1075_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        M_address0_local = zext_ln21_31_fu_999_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        M_address0_local = zext_ln21_27_fu_921_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_address0_local = zext_ln21_23_fu_867_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_address0_local = zext_ln21_19_fu_810_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_address0_local = zext_ln21_15_fu_741_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_address0_local = zext_ln21_11_fu_663_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_address0_local = zext_ln21_7_fu_609_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address0_local = zext_ln21_3_fu_533_p1;
    end else if (((icmp_ln20_fu_433_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        M_address0_local = zext_ln20_fu_439_p1;
    end else begin
        M_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        M_address1_local = zext_ln21_57_fu_1399_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        M_address1_local = zext_ln21_53_fu_1342_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        M_address1_local = zext_ln21_49_fu_1285_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        M_address1_local = zext_ln21_45_fu_1225_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        M_address1_local = zext_ln21_41_fu_1168_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        M_address1_local = zext_ln21_37_fu_1105_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        M_address1_local = zext_ln21_33_fu_1045_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        M_address1_local = zext_ln21_29_fu_958_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        M_address1_local = zext_ln21_25_fu_894_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_address1_local = zext_ln21_21_fu_837_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_address1_local = zext_ln21_17_fu_779_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_address1_local = zext_ln21_13_fu_700_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_address1_local = zext_ln21_9_fu_636_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_address1_local = zext_ln21_5_fu_570_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address1_local = zext_ln21_1_fu_505_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        M_address1_local = zext_ln9_fu_399_p1;
    end else begin
        M_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln20_fu_433_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_ce0_local = 1'b1;
    end else begin
        M_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_ce1_local = 1'b1;
    end else begin
        M_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        M_d0_local = sext_ln21_31_fu_1441_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        M_d0_local = sext_ln21_29_fu_1387_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        M_d0_local = sext_ln21_27_fu_1330_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        M_d0_local = sext_ln21_25_fu_1270_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        M_d0_local = sext_ln21_23_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        M_d0_local = sext_ln21_21_fu_1153_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        M_d0_local = sext_ln21_19_fu_1090_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        M_d0_local = sext_ln21_17_fu_1014_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        M_d0_local = sext_ln21_15_fu_936_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_d0_local = sext_ln21_13_fu_882_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_d0_local = sext_ln21_11_fu_825_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_d0_local = sext_ln21_9_fu_756_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_d0_local = sext_ln21_7_fu_678_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_d0_local = sext_ln21_5_fu_624_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d0_local = sext_ln21_3_fu_548_p1;
    end else if (((icmp_ln20_fu_433_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        M_d0_local = sext_ln21_1_fu_472_p1;
    end else begin
        M_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        M_d1_local = sext_ln21_30_fu_1414_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        M_d1_local = sext_ln21_28_fu_1357_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        M_d1_local = sext_ln21_26_fu_1300_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        M_d1_local = sext_ln21_24_fu_1240_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        M_d1_local = sext_ln21_22_fu_1183_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        M_d1_local = sext_ln21_20_fu_1120_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        M_d1_local = sext_ln21_18_fu_1060_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        M_d1_local = sext_ln21_16_fu_973_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        M_d1_local = sext_ln21_14_fu_909_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_d1_local = sext_ln21_12_fu_852_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_d1_local = sext_ln21_10_fu_794_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_d1_local = sext_ln21_8_fu_715_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_d1_local = sext_ln21_6_fu_651_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_d1_local = sext_ln21_4_fu_585_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d1_local = sext_ln21_2_fu_520_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        M_d1_local = sext_ln21_fu_410_p1;
    end else begin
        M_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln20_fu_433_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_we0_local = 1'b1;
    end else begin
        M_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_we1_local = 1'b1;
    end else begin
        M_we1_local = 1'b0;
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
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
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
    if (((icmp_ln20_fu_433_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_a_idx_4 = 8'd0;
    end else begin
        ap_sig_allocacmp_a_idx_4 = a_idx_fu_122;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln20_fu_433_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign M_address0 = M_address0_local;
assign M_address1 = M_address1_local;
assign M_ce0 = M_ce0_local;
assign M_ce1 = M_ce1_local;
assign M_d0 = M_d0_local;
assign M_d1 = M_d1_local;
assign M_we0 = M_we0_local;
assign M_we1 = M_we1_local;
assign add_ln20_fu_477_p2 = (ap_sig_allocacmp_a_idx_4 + 8'd32);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln20_fu_433_p2 = ((or_ln_fu_425_p3 < 8'd129) ? 1'b1 : 1'b0);
assign or_ln1_fu_454_p3 = {{tmp_1_fu_444_p4}, {1'd1}};
assign or_ln20_10_fu_830_p3 = {{tmp_s_reg_1483}, {4'd12}};
assign or_ln20_11_fu_857_p5 = {{{{tmp_s_reg_1483}, {2'd3}}, {tmp_65_reg_1476}}, {1'd1}};
assign or_ln20_12_fu_887_p3 = {{tmp_s_reg_1483}, {4'd14}};
assign or_ln20_13_fu_914_p3 = {{tmp_s_reg_1483}, {4'd15}};
assign or_ln20_14_fu_950_p3 = {{tmp_4_fu_941_p4}, {5'd16}};
assign or_ln20_15_fu_987_p5 = {{{{tmp_4_fu_941_p4}, {1'd1}}, {tmp_6_fu_978_p4}}, {1'd1}};
assign or_ln20_16_fu_1035_p5 = {{{{tmp_4_reg_1504}, {1'd1}}, {tmp_7_reg_1522}}, {2'd2}};
assign or_ln20_17_fu_1065_p5 = {{{{tmp_4_reg_1504}, {1'd1}}, {tmp_7_reg_1522}}, {2'd3}};
assign or_ln20_18_fu_1095_p5 = {{{{tmp_4_reg_1504}, {1'd1}}, {tmp_67_reg_1528}}, {3'd4}};
assign or_ln20_19_fu_1125_p7 = {{{{{{tmp_4_reg_1504}, {1'd1}}, {tmp_67_reg_1528}}, {1'd1}}, {tmp_65_reg_1476}}, {1'd1}};
assign or_ln20_1_fu_497_p3 = {{tmp_2_fu_488_p4}, {2'd2}};
assign or_ln20_20_fu_1158_p5 = {{{{tmp_4_reg_1504}, {1'd1}}, {tmp_67_reg_1528}}, {3'd6}};
assign or_ln20_21_fu_1188_p5 = {{{{tmp_4_reg_1504}, {1'd1}}, {tmp_67_reg_1528}}, {3'd7}};
assign or_ln20_22_fu_1218_p3 = {{tmp_4_reg_1504}, {5'd24}};
assign or_ln20_23_fu_1245_p5 = {{{{tmp_4_reg_1504}, {2'd3}}, {tmp_3_reg_1493}}, {1'd1}};
assign or_ln20_24_fu_1275_p5 = {{{{tmp_4_reg_1504}, {2'd3}}, {tmp_66_reg_1498}}, {2'd2}};
assign or_ln20_25_fu_1305_p5 = {{{{tmp_4_reg_1504}, {2'd3}}, {tmp_66_reg_1498}}, {2'd3}};
assign or_ln20_26_fu_1335_p3 = {{tmp_4_reg_1504}, {5'd28}};
assign or_ln20_27_fu_1362_p5 = {{{{tmp_4_reg_1504}, {3'd7}}, {tmp_65_reg_1476}}, {1'd1}};
assign or_ln20_28_fu_1392_p3 = {{tmp_4_reg_1504}, {5'd30}};
assign or_ln20_29_fu_1419_p3 = {{tmp_4_reg_1504}, {5'd31}};
assign or_ln20_2_fu_525_p3 = {{tmp_2_fu_488_p4}, {2'd3}};
assign or_ln20_3_fu_562_p3 = {{tmp_5_fu_553_p4}, {3'd4}};
assign or_ln20_4_fu_597_p5 = {{{{tmp_5_fu_553_p4}, {1'd1}}, {tmp_65_fu_590_p3}}, {1'd1}};
assign or_ln20_5_fu_629_p3 = {{tmp_5_reg_1470}, {3'd6}};
assign or_ln20_6_fu_656_p3 = {{tmp_5_reg_1470}, {3'd7}};
assign or_ln20_7_fu_692_p3 = {{tmp_s_fu_683_p4}, {4'd8}};
assign or_ln20_8_fu_729_p5 = {{{{tmp_s_fu_683_p4}, {1'd1}}, {tmp_3_fu_720_p4}}, {1'd1}};
assign or_ln20_9_fu_768_p5 = {{{{tmp_s_reg_1483}, {1'd1}}, {tmp_66_fu_761_p3}}, {2'd2}};
assign or_ln20_s_fu_799_p5 = {{{{tmp_s_reg_1483}, {1'd1}}, {tmp_66_fu_761_p3}}, {2'd3}};
assign or_ln_fu_425_p3 = {{tmp_fu_415_p4}, {1'd1}};
assign sext_ln21_10_fu_794_p1 = $signed(sub_ln21_10_fu_788_p2);
assign sext_ln21_11_fu_825_p1 = $signed(sub_ln21_11_fu_819_p2);
assign sext_ln21_12_fu_852_p1 = $signed(sub_ln21_12_fu_846_p2);
assign sext_ln21_13_fu_882_p1 = $signed(sub_ln21_13_fu_876_p2);
assign sext_ln21_14_fu_909_p1 = $signed(sub_ln21_14_fu_903_p2);
assign sext_ln21_15_fu_936_p1 = $signed(sub_ln21_15_fu_930_p2);
assign sext_ln21_16_fu_973_p1 = $signed(sub_ln21_16_fu_967_p2);
assign sext_ln21_17_fu_1014_p1 = $signed(sub_ln21_17_fu_1008_p2);
assign sext_ln21_18_fu_1060_p1 = $signed(sub_ln21_18_fu_1054_p2);
assign sext_ln21_19_fu_1090_p1 = $signed(sub_ln21_19_fu_1084_p2);
assign sext_ln21_1_fu_472_p1 = $signed(sub_ln21_1_fu_466_p2);
assign sext_ln21_20_fu_1120_p1 = $signed(sub_ln21_20_fu_1114_p2);
assign sext_ln21_21_fu_1153_p1 = $signed(sub_ln21_21_fu_1147_p2);
assign sext_ln21_22_fu_1183_p1 = $signed(sub_ln21_22_fu_1177_p2);
assign sext_ln21_23_fu_1213_p1 = $signed(sub_ln21_23_fu_1207_p2);
assign sext_ln21_24_fu_1240_p1 = $signed(sub_ln21_24_fu_1234_p2);
assign sext_ln21_25_fu_1270_p1 = $signed(sub_ln21_25_fu_1264_p2);
assign sext_ln21_26_fu_1300_p1 = $signed(sub_ln21_26_fu_1294_p2);
assign sext_ln21_27_fu_1330_p1 = $signed(sub_ln21_27_fu_1324_p2);
assign sext_ln21_28_fu_1357_p1 = $signed(sub_ln21_28_fu_1351_p2);
assign sext_ln21_29_fu_1387_p1 = $signed(sub_ln21_29_fu_1381_p2);
assign sext_ln21_2_fu_520_p1 = $signed(sub_ln21_2_fu_514_p2);
assign sext_ln21_30_fu_1414_p1 = $signed(sub_ln21_30_fu_1408_p2);
assign sext_ln21_31_fu_1441_p1 = $signed(sub_ln21_31_fu_1435_p2);
assign sext_ln21_3_fu_548_p1 = $signed(sub_ln21_3_fu_542_p2);
assign sext_ln21_4_fu_585_p1 = $signed(sub_ln21_4_fu_579_p2);
assign sext_ln21_5_fu_624_p1 = $signed(sub_ln21_5_fu_618_p2);
assign sext_ln21_6_fu_651_p1 = $signed(sub_ln21_6_fu_645_p2);
assign sext_ln21_7_fu_678_p1 = $signed(sub_ln21_7_fu_672_p2);
assign sext_ln21_8_fu_715_p1 = $signed(sub_ln21_8_fu_709_p2);
assign sext_ln21_9_fu_756_p1 = $signed(sub_ln21_9_fu_750_p2);
assign sext_ln21_fu_410_p1 = $signed(sub_ln21_fu_404_p2);
assign sub_ln21_10_fu_788_p2 = (8'd0 - zext_ln21_18_fu_784_p1);
assign sub_ln21_11_fu_819_p2 = (8'd0 - zext_ln21_20_fu_815_p1);
assign sub_ln21_12_fu_846_p2 = (8'd0 - zext_ln21_22_fu_842_p1);
assign sub_ln21_13_fu_876_p2 = (8'd0 - zext_ln21_24_fu_872_p1);
assign sub_ln21_14_fu_903_p2 = (8'd0 - zext_ln21_26_fu_899_p1);
assign sub_ln21_15_fu_930_p2 = (8'd0 - zext_ln21_28_fu_926_p1);
assign sub_ln21_16_fu_967_p2 = (8'd0 - zext_ln21_30_fu_963_p1);
assign sub_ln21_17_fu_1008_p2 = (8'd0 - zext_ln21_32_fu_1004_p1);
assign sub_ln21_18_fu_1054_p2 = (8'd0 - zext_ln21_34_fu_1050_p1);
assign sub_ln21_19_fu_1084_p2 = (8'd0 - zext_ln21_36_fu_1080_p1);
assign sub_ln21_1_fu_466_p2 = (8'd0 - zext_ln21_fu_462_p1);
assign sub_ln21_20_fu_1114_p2 = (8'd0 - zext_ln21_38_fu_1110_p1);
assign sub_ln21_21_fu_1147_p2 = (8'd0 - zext_ln21_40_fu_1143_p1);
assign sub_ln21_22_fu_1177_p2 = (8'd0 - zext_ln21_42_fu_1173_p1);
assign sub_ln21_23_fu_1207_p2 = (8'd0 - zext_ln21_44_fu_1203_p1);
assign sub_ln21_24_fu_1234_p2 = (8'd0 - zext_ln21_46_fu_1230_p1);
assign sub_ln21_25_fu_1264_p2 = (8'd0 - zext_ln21_48_fu_1260_p1);
assign sub_ln21_26_fu_1294_p2 = (8'd0 - zext_ln21_50_fu_1290_p1);
assign sub_ln21_27_fu_1324_p2 = (8'd0 - zext_ln21_52_fu_1320_p1);
assign sub_ln21_28_fu_1351_p2 = (8'd0 - zext_ln21_54_fu_1347_p1);
assign sub_ln21_29_fu_1381_p2 = (8'd0 - zext_ln21_56_fu_1377_p1);
assign sub_ln21_2_fu_514_p2 = (8'd0 - zext_ln21_2_fu_510_p1);
assign sub_ln21_30_fu_1408_p2 = (8'd0 - zext_ln21_58_fu_1404_p1);
assign sub_ln21_31_fu_1435_p2 = (8'd0 - zext_ln21_60_fu_1431_p1);
assign sub_ln21_3_fu_542_p2 = (8'd0 - zext_ln21_4_fu_538_p1);
assign sub_ln21_4_fu_579_p2 = (8'd0 - zext_ln21_6_fu_575_p1);
assign sub_ln21_5_fu_618_p2 = (8'd0 - zext_ln21_8_fu_614_p1);
assign sub_ln21_6_fu_645_p2 = (8'd0 - zext_ln21_10_fu_641_p1);
assign sub_ln21_7_fu_672_p2 = (8'd0 - zext_ln21_12_fu_668_p1);
assign sub_ln21_8_fu_709_p2 = (8'd0 - zext_ln21_14_fu_705_p1);
assign sub_ln21_9_fu_750_p2 = (8'd0 - zext_ln21_16_fu_746_p1);
assign sub_ln21_fu_404_p2 = (8'd0 - ap_sig_allocacmp_a_idx_4);
assign tmp_1_fu_444_p4 = {{ap_sig_allocacmp_a_idx_4[6:1]}};
assign tmp_2_fu_488_p4 = {{a_idx_4_reg_1453[6:2]}};
assign tmp_3_fu_720_p4 = {{a_idx_4_reg_1453[2:1]}};
assign tmp_4_fu_941_p4 = {{a_idx_4_reg_1453[6:5]}};
assign tmp_5_fu_553_p4 = {{a_idx_4_reg_1453[6:3]}};
assign tmp_65_fu_590_p3 = a_idx_4_reg_1453[32'd1];
assign tmp_66_fu_761_p3 = a_idx_4_reg_1453[32'd2];
assign tmp_6_fu_978_p4 = {{a_idx_4_reg_1453[3:1]}};
assign tmp_fu_415_p4 = {{ap_sig_allocacmp_a_idx_4[7:1]}};
assign tmp_s_fu_683_p4 = {{a_idx_4_reg_1453[6:4]}};
assign zext_ln20_fu_439_p1 = or_ln_fu_425_p3;
assign zext_ln21_10_fu_641_p1 = or_ln20_5_fu_629_p3;
assign zext_ln21_11_fu_663_p1 = or_ln20_6_fu_656_p3;
assign zext_ln21_12_fu_668_p1 = or_ln20_6_fu_656_p3;
assign zext_ln21_13_fu_700_p1 = or_ln20_7_fu_692_p3;
assign zext_ln21_14_fu_705_p1 = or_ln20_7_fu_692_p3;
assign zext_ln21_15_fu_741_p1 = or_ln20_8_fu_729_p5;
assign zext_ln21_16_fu_746_p1 = or_ln20_8_fu_729_p5;
assign zext_ln21_17_fu_779_p1 = or_ln20_9_fu_768_p5;
assign zext_ln21_18_fu_784_p1 = or_ln20_9_fu_768_p5;
assign zext_ln21_19_fu_810_p1 = or_ln20_s_fu_799_p5;
assign zext_ln21_1_fu_505_p1 = or_ln20_1_fu_497_p3;
assign zext_ln21_20_fu_815_p1 = or_ln20_s_fu_799_p5;
assign zext_ln21_21_fu_837_p1 = or_ln20_10_fu_830_p3;
assign zext_ln21_22_fu_842_p1 = or_ln20_10_fu_830_p3;
assign zext_ln21_23_fu_867_p1 = or_ln20_11_fu_857_p5;
assign zext_ln21_24_fu_872_p1 = or_ln20_11_fu_857_p5;
assign zext_ln21_25_fu_894_p1 = or_ln20_12_fu_887_p3;
assign zext_ln21_26_fu_899_p1 = or_ln20_12_fu_887_p3;
assign zext_ln21_27_fu_921_p1 = or_ln20_13_fu_914_p3;
assign zext_ln21_28_fu_926_p1 = or_ln20_13_fu_914_p3;
assign zext_ln21_29_fu_958_p1 = or_ln20_14_fu_950_p3;
assign zext_ln21_2_fu_510_p1 = or_ln20_1_fu_497_p3;
assign zext_ln21_30_fu_963_p1 = or_ln20_14_fu_950_p3;
assign zext_ln21_31_fu_999_p1 = or_ln20_15_fu_987_p5;
assign zext_ln21_32_fu_1004_p1 = or_ln20_15_fu_987_p5;
assign zext_ln21_33_fu_1045_p1 = or_ln20_16_fu_1035_p5;
assign zext_ln21_34_fu_1050_p1 = or_ln20_16_fu_1035_p5;
assign zext_ln21_35_fu_1075_p1 = or_ln20_17_fu_1065_p5;
assign zext_ln21_36_fu_1080_p1 = or_ln20_17_fu_1065_p5;
assign zext_ln21_37_fu_1105_p1 = or_ln20_18_fu_1095_p5;
assign zext_ln21_38_fu_1110_p1 = or_ln20_18_fu_1095_p5;
assign zext_ln21_39_fu_1138_p1 = or_ln20_19_fu_1125_p7;
assign zext_ln21_3_fu_533_p1 = or_ln20_2_fu_525_p3;
assign zext_ln21_40_fu_1143_p1 = or_ln20_19_fu_1125_p7;
assign zext_ln21_41_fu_1168_p1 = or_ln20_20_fu_1158_p5;
assign zext_ln21_42_fu_1173_p1 = or_ln20_20_fu_1158_p5;
assign zext_ln21_43_fu_1198_p1 = or_ln20_21_fu_1188_p5;
assign zext_ln21_44_fu_1203_p1 = or_ln20_21_fu_1188_p5;
assign zext_ln21_45_fu_1225_p1 = or_ln20_22_fu_1218_p3;
assign zext_ln21_46_fu_1230_p1 = or_ln20_22_fu_1218_p3;
assign zext_ln21_47_fu_1255_p1 = or_ln20_23_fu_1245_p5;
assign zext_ln21_48_fu_1260_p1 = or_ln20_23_fu_1245_p5;
assign zext_ln21_49_fu_1285_p1 = or_ln20_24_fu_1275_p5;
assign zext_ln21_4_fu_538_p1 = or_ln20_2_fu_525_p3;
assign zext_ln21_50_fu_1290_p1 = or_ln20_24_fu_1275_p5;
assign zext_ln21_51_fu_1315_p1 = or_ln20_25_fu_1305_p5;
assign zext_ln21_52_fu_1320_p1 = or_ln20_25_fu_1305_p5;
assign zext_ln21_53_fu_1342_p1 = or_ln20_26_fu_1335_p3;
assign zext_ln21_54_fu_1347_p1 = or_ln20_26_fu_1335_p3;
assign zext_ln21_55_fu_1372_p1 = or_ln20_27_fu_1362_p5;
assign zext_ln21_56_fu_1377_p1 = or_ln20_27_fu_1362_p5;
assign zext_ln21_57_fu_1399_p1 = or_ln20_28_fu_1392_p3;
assign zext_ln21_58_fu_1404_p1 = or_ln20_28_fu_1392_p3;
assign zext_ln21_59_fu_1426_p1 = or_ln20_29_fu_1419_p3;
assign zext_ln21_5_fu_570_p1 = or_ln20_3_fu_562_p3;
assign zext_ln21_60_fu_1431_p1 = or_ln20_29_fu_1419_p3;
assign zext_ln21_6_fu_575_p1 = or_ln20_3_fu_562_p3;
assign zext_ln21_7_fu_609_p1 = or_ln20_4_fu_597_p5;
assign zext_ln21_8_fu_614_p1 = or_ln20_4_fu_597_p5;
assign zext_ln21_9_fu_636_p1 = or_ln20_5_fu_629_p3;
assign zext_ln21_fu_462_p1 = or_ln1_fu_454_p3;
assign zext_ln9_fu_399_p1 = ap_sig_allocacmp_a_idx_4;
endmodule 
