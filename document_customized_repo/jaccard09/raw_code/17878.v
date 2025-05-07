module needwun_needwun_Pipeline_init_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_address0,M_ce0,M_we0,M_d0,M_address1,M_ce1,M_we1,M_d1); 
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
wire   [0:0] icmp_ln23_fu_515_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state16;
reg   [7:0] b_idx_4_reg_1694;
wire   [14:0] tmp_68_fu_473_p3;
reg   [14:0] tmp_68_reg_1709;
wire   [3:0] tmp_10_fu_650_p4;
reg   [3:0] tmp_10_reg_1746;
wire    ap_CS_fsm_state3;
wire   [0:0] tmp_69_fu_692_p3;
reg   [0:0] tmp_69_reg_1752;
wire   [2:0] tmp_11_fu_800_p4;
reg   [2:0] tmp_11_reg_1759;
wire    ap_CS_fsm_state5;
wire   [1:0] tmp_12_fu_842_p4;
reg   [1:0] tmp_12_reg_1769;
wire   [0:0] tmp_70_fu_888_p3;
reg   [0:0] tmp_70_reg_1774;
wire    ap_CS_fsm_state6;
wire   [1:0] tmp_13_fu_1098_p4;
reg   [1:0] tmp_13_reg_1780;
wire    ap_CS_fsm_state9;
wire   [0:0] tmp_71_fu_1267_p3;
reg   [0:0] tmp_71_reg_1798;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln24_fu_481_p1;
wire   [63:0] zext_ln24_1_fu_527_p1;
wire   [63:0] zext_ln24_3_fu_570_p1;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln24_5_fu_612_p1;
wire   [63:0] zext_ln24_7_fu_645_p1;
wire   [63:0] zext_ln24_9_fu_687_p1;
wire   [63:0] zext_ln24_11_fu_731_p1;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln24_13_fu_763_p1;
wire   [63:0] zext_ln24_15_fu_795_p1;
wire   [63:0] zext_ln24_17_fu_837_p1;
wire   [63:0] zext_ln24_19_fu_883_p1;
wire   [63:0] zext_ln24_21_fu_926_p1;
wire   [63:0] zext_ln24_23_fu_962_p1;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln24_25_fu_994_p1;
wire   [63:0] zext_ln24_27_fu_1029_p1;
wire    ap_CS_fsm_state8;
wire   [63:0] zext_ln24_29_fu_1061_p1;
wire   [63:0] zext_ln24_31_fu_1093_p1;
wire   [63:0] zext_ln24_33_fu_1135_p1;
wire   [63:0] zext_ln24_35_fu_1181_p1;
wire    ap_CS_fsm_state10;
wire   [63:0] zext_ln24_37_fu_1226_p1;
wire   [63:0] zext_ln24_39_fu_1262_p1;
wire   [63:0] zext_ln24_41_fu_1305_p1;
wire   [63:0] zext_ln24_43_fu_1344_p1;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln24_45_fu_1379_p1;
wire   [63:0] zext_ln24_47_fu_1414_p1;
wire    ap_CS_fsm_state13;
wire   [63:0] zext_ln24_49_fu_1446_p1;
wire   [63:0] zext_ln24_51_fu_1481_p1;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln24_53_fu_1516_p1;
wire   [63:0] zext_ln24_55_fu_1551_p1;
wire    ap_CS_fsm_state15;
wire   [63:0] zext_ln24_57_fu_1583_p1;
wire   [63:0] zext_ln24_59_fu_1618_p1;
wire   [63:0] zext_ln24_61_fu_1650_p1;
reg   [7:0] b_idx_fu_186;
wire   [7:0] add_ln23_fu_1677_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_b_idx_4;
reg    M_we1_local;
reg   [31:0] M_d1_local;
wire  signed [31:0] sext_ln24_fu_492_p1;
reg    M_ce1_local;
reg   [14:0] M_address1_local;
reg    M_we0_local;
reg   [31:0] M_d0_local;
wire  signed [31:0] sext_ln24_1_fu_560_p1;
reg    M_ce0_local;
reg   [14:0] M_address0_local;
wire  signed [31:0] sext_ln24_2_fu_602_p1;
wire  signed [31:0] sext_ln24_3_fu_635_p1;
wire  signed [31:0] sext_ln24_4_fu_677_p1;
wire  signed [31:0] sext_ln24_5_fu_721_p1;
wire  signed [31:0] sext_ln24_6_fu_753_p1;
wire  signed [31:0] sext_ln24_7_fu_785_p1;
wire  signed [31:0] sext_ln24_8_fu_827_p1;
wire  signed [31:0] sext_ln24_9_fu_873_p1;
wire  signed [31:0] sext_ln24_10_fu_916_p1;
wire  signed [31:0] sext_ln24_11_fu_952_p1;
wire  signed [31:0] sext_ln24_12_fu_984_p1;
wire  signed [31:0] sext_ln24_13_fu_1019_p1;
wire  signed [31:0] sext_ln24_14_fu_1051_p1;
wire  signed [31:0] sext_ln24_15_fu_1083_p1;
wire  signed [31:0] sext_ln24_16_fu_1125_p1;
wire  signed [31:0] sext_ln24_17_fu_1171_p1;
wire  signed [31:0] sext_ln24_18_fu_1216_p1;
wire  signed [31:0] sext_ln24_19_fu_1252_p1;
wire  signed [31:0] sext_ln24_20_fu_1295_p1;
wire  signed [31:0] sext_ln24_21_fu_1334_p1;
wire  signed [31:0] sext_ln24_22_fu_1369_p1;
wire  signed [31:0] sext_ln24_23_fu_1404_p1;
wire  signed [31:0] sext_ln24_24_fu_1436_p1;
wire  signed [31:0] sext_ln24_25_fu_1471_p1;
wire  signed [31:0] sext_ln24_26_fu_1506_p1;
wire  signed [31:0] sext_ln24_27_fu_1541_p1;
wire  signed [31:0] sext_ln24_28_fu_1573_p1;
wire  signed [31:0] sext_ln24_29_fu_1608_p1;
wire  signed [31:0] sext_ln24_30_fu_1640_p1;
wire  signed [31:0] sext_ln24_31_fu_1672_p1;
wire   [6:0] tmp_fu_463_p4;
wire   [7:0] sub_ln24_fu_486_p2;
wire   [6:0] tmp_s_fu_497_p4;
wire   [7:0] or_ln2_fu_507_p3;
wire   [14:0] add_ln24_fu_521_p2;
wire   [5:0] tmp_8_fu_532_p4;
wire   [6:0] or_ln24_s_fu_542_p3;
wire   [7:0] zext_ln24_2_fu_550_p1;
wire   [7:0] sub_ln24_1_fu_554_p2;
wire   [14:0] add_ln24_1_fu_565_p2;
wire   [4:0] tmp_9_fu_575_p4;
wire   [6:0] or_ln3_fu_584_p3;
wire   [7:0] zext_ln24_4_fu_592_p1;
wire   [7:0] sub_ln24_2_fu_596_p2;
wire   [14:0] add_ln24_2_fu_607_p2;
wire   [6:0] or_ln24_1_fu_617_p3;
wire   [7:0] zext_ln24_6_fu_625_p1;
wire   [7:0] sub_ln24_3_fu_629_p2;
wire   [14:0] add_ln24_3_fu_640_p2;
wire   [6:0] or_ln24_2_fu_659_p3;
wire   [7:0] zext_ln24_8_fu_667_p1;
wire   [7:0] sub_ln24_4_fu_671_p2;
wire   [14:0] add_ln24_4_fu_682_p2;
wire   [6:0] or_ln24_3_fu_699_p5;
wire   [7:0] zext_ln24_10_fu_711_p1;
wire   [7:0] sub_ln24_5_fu_715_p2;
wire   [14:0] add_ln24_5_fu_726_p2;
wire   [6:0] or_ln24_4_fu_736_p3;
wire   [7:0] zext_ln24_12_fu_743_p1;
wire   [7:0] sub_ln24_6_fu_747_p2;
wire   [14:0] add_ln24_6_fu_758_p2;
wire   [6:0] or_ln24_5_fu_768_p3;
wire   [7:0] zext_ln24_14_fu_775_p1;
wire   [7:0] sub_ln24_7_fu_779_p2;
wire   [14:0] add_ln24_7_fu_790_p2;
wire   [6:0] or_ln24_6_fu_809_p3;
wire   [7:0] zext_ln24_16_fu_817_p1;
wire   [7:0] sub_ln24_8_fu_821_p2;
wire   [14:0] add_ln24_8_fu_832_p2;
wire   [6:0] or_ln24_7_fu_851_p5;
wire   [7:0] zext_ln24_18_fu_863_p1;
wire   [7:0] sub_ln24_9_fu_867_p2;
wire   [14:0] add_ln24_9_fu_878_p2;
wire   [6:0] or_ln24_8_fu_895_p5;
wire   [7:0] zext_ln24_20_fu_906_p1;
wire   [7:0] sub_ln24_10_fu_910_p2;
wire   [14:0] add_ln24_10_fu_921_p2;
wire   [6:0] or_ln24_9_fu_931_p5;
wire   [7:0] zext_ln24_22_fu_942_p1;
wire   [7:0] sub_ln24_11_fu_946_p2;
wire   [14:0] add_ln24_11_fu_957_p2;
wire   [6:0] or_ln24_10_fu_967_p3;
wire   [7:0] zext_ln24_24_fu_974_p1;
wire   [7:0] sub_ln24_12_fu_978_p2;
wire   [14:0] add_ln24_12_fu_989_p2;
wire   [6:0] or_ln24_11_fu_999_p5;
wire   [7:0] zext_ln24_26_fu_1009_p1;
wire   [7:0] sub_ln24_13_fu_1013_p2;
wire   [14:0] add_ln24_13_fu_1024_p2;
wire   [6:0] or_ln24_12_fu_1034_p3;
wire   [7:0] zext_ln24_28_fu_1041_p1;
wire   [7:0] sub_ln24_14_fu_1045_p2;
wire   [14:0] add_ln24_14_fu_1056_p2;
wire   [6:0] or_ln24_13_fu_1066_p3;
wire   [7:0] zext_ln24_30_fu_1073_p1;
wire   [7:0] sub_ln24_15_fu_1077_p2;
wire   [14:0] add_ln24_15_fu_1088_p2;
wire   [6:0] or_ln24_14_fu_1107_p3;
wire   [7:0] zext_ln24_32_fu_1115_p1;
wire   [7:0] sub_ln24_16_fu_1119_p2;
wire   [14:0] add_ln24_16_fu_1130_p2;
wire   [2:0] tmp_14_fu_1140_p4;
wire   [6:0] or_ln24_15_fu_1149_p5;
wire   [7:0] zext_ln24_34_fu_1161_p1;
wire   [7:0] sub_ln24_17_fu_1165_p2;
wire   [14:0] add_ln24_17_fu_1176_p2;
wire   [1:0] tmp_15_fu_1186_p4;
wire   [6:0] or_ln24_16_fu_1195_p5;
wire   [7:0] zext_ln24_36_fu_1206_p1;
wire   [7:0] sub_ln24_18_fu_1210_p2;
wire   [14:0] add_ln24_18_fu_1221_p2;
wire   [6:0] or_ln24_17_fu_1231_p5;
wire   [7:0] zext_ln24_38_fu_1242_p1;
wire   [7:0] sub_ln24_19_fu_1246_p2;
wire   [14:0] add_ln24_19_fu_1257_p2;
wire   [6:0] or_ln24_18_fu_1274_p5;
wire   [7:0] zext_ln24_40_fu_1285_p1;
wire   [7:0] sub_ln24_20_fu_1289_p2;
wire   [14:0] add_ln24_20_fu_1300_p2;
wire   [6:0] or_ln24_19_fu_1310_p7;
wire   [7:0] zext_ln24_42_fu_1324_p1;
wire   [7:0] sub_ln24_21_fu_1328_p2;
wire   [14:0] add_ln24_21_fu_1339_p2;
wire   [6:0] or_ln24_20_fu_1349_p5;
wire   [7:0] zext_ln24_44_fu_1359_p1;
wire   [7:0] sub_ln24_22_fu_1363_p2;
wire   [14:0] add_ln24_22_fu_1374_p2;
wire   [6:0] or_ln24_21_fu_1384_p5;
wire   [7:0] zext_ln24_46_fu_1394_p1;
wire   [7:0] sub_ln24_23_fu_1398_p2;
wire   [14:0] add_ln24_23_fu_1409_p2;
wire   [6:0] or_ln24_22_fu_1419_p3;
wire   [7:0] zext_ln24_48_fu_1426_p1;
wire   [7:0] sub_ln24_24_fu_1430_p2;
wire   [14:0] add_ln24_24_fu_1441_p2;
wire   [6:0] or_ln24_23_fu_1451_p5;
wire   [7:0] zext_ln24_50_fu_1461_p1;
wire   [7:0] sub_ln24_25_fu_1465_p2;
wire   [14:0] add_ln24_25_fu_1476_p2;
wire   [6:0] or_ln24_24_fu_1486_p5;
wire   [7:0] zext_ln24_52_fu_1496_p1;
wire   [7:0] sub_ln24_26_fu_1500_p2;
wire   [14:0] add_ln24_26_fu_1511_p2;
wire   [6:0] or_ln24_25_fu_1521_p5;
wire   [7:0] zext_ln24_54_fu_1531_p1;
wire   [7:0] sub_ln24_27_fu_1535_p2;
wire   [14:0] add_ln24_27_fu_1546_p2;
wire   [6:0] or_ln24_26_fu_1556_p3;
wire   [7:0] zext_ln24_56_fu_1563_p1;
wire   [7:0] sub_ln24_28_fu_1567_p2;
wire   [14:0] add_ln24_28_fu_1578_p2;
wire   [6:0] or_ln24_27_fu_1588_p5;
wire   [7:0] zext_ln24_58_fu_1598_p1;
wire   [7:0] sub_ln24_29_fu_1602_p2;
wire   [14:0] add_ln24_29_fu_1613_p2;
wire   [6:0] or_ln24_28_fu_1623_p3;
wire   [7:0] zext_ln24_60_fu_1630_p1;
wire   [7:0] sub_ln24_30_fu_1634_p2;
wire   [14:0] add_ln24_30_fu_1645_p2;
wire   [6:0] or_ln24_29_fu_1655_p3;
wire   [7:0] zext_ln24_62_fu_1662_p1;
wire   [7:0] sub_ln24_31_fu_1666_p2;
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
#0 b_idx_fu_186 = 8'd0;
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
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        b_idx_fu_186 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        b_idx_fu_186 <= add_ln23_fu_1677_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        b_idx_4_reg_1694 <= ap_sig_allocacmp_b_idx_4;
        tmp_68_reg_1709 <= tmp_68_fu_473_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_10_reg_1746 <= {{b_idx_4_reg_1694[6:3]}};
        tmp_69_reg_1752 <= b_idx_4_reg_1694[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_11_reg_1759 <= {{b_idx_4_reg_1694[6:4]}};
        tmp_12_reg_1769 <= {{b_idx_4_reg_1694[2:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_13_reg_1780 <= {{b_idx_4_reg_1694[6:5]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_70_reg_1774 <= b_idx_4_reg_1694[32'd2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        tmp_71_reg_1798 <= b_idx_4_reg_1694[32'd3];
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        M_address0_local = zext_ln24_61_fu_1650_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        M_address0_local = zext_ln24_57_fu_1583_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        M_address0_local = zext_ln24_53_fu_1516_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        M_address0_local = zext_ln24_49_fu_1446_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        M_address0_local = zext_ln24_45_fu_1379_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        M_address0_local = zext_ln24_41_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        M_address0_local = zext_ln24_37_fu_1226_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        M_address0_local = zext_ln24_33_fu_1135_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        M_address0_local = zext_ln24_29_fu_1061_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_address0_local = zext_ln24_25_fu_994_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_address0_local = zext_ln24_21_fu_926_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_address0_local = zext_ln24_17_fu_837_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_address0_local = zext_ln24_13_fu_763_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_address0_local = zext_ln24_9_fu_687_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address0_local = zext_ln24_5_fu_612_p1;
    end else if (((icmp_ln23_fu_515_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        M_address0_local = zext_ln24_1_fu_527_p1;
    end else begin
        M_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        M_address1_local = zext_ln24_59_fu_1618_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        M_address1_local = zext_ln24_55_fu_1551_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        M_address1_local = zext_ln24_51_fu_1481_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        M_address1_local = zext_ln24_47_fu_1414_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        M_address1_local = zext_ln24_43_fu_1344_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        M_address1_local = zext_ln24_39_fu_1262_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        M_address1_local = zext_ln24_35_fu_1181_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        M_address1_local = zext_ln24_31_fu_1093_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        M_address1_local = zext_ln24_27_fu_1029_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_address1_local = zext_ln24_23_fu_962_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_address1_local = zext_ln24_19_fu_883_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_address1_local = zext_ln24_15_fu_795_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_address1_local = zext_ln24_11_fu_731_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_address1_local = zext_ln24_7_fu_645_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address1_local = zext_ln24_3_fu_570_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        M_address1_local = zext_ln24_fu_481_p1;
    end else begin
        M_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | ((icmp_ln23_fu_515_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_ce0_local = 1'b1;
    end else begin
        M_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_ce1_local = 1'b1;
    end else begin
        M_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        M_d0_local = sext_ln24_31_fu_1672_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        M_d0_local = sext_ln24_29_fu_1608_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        M_d0_local = sext_ln24_27_fu_1541_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        M_d0_local = sext_ln24_25_fu_1471_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        M_d0_local = sext_ln24_23_fu_1404_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        M_d0_local = sext_ln24_21_fu_1334_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        M_d0_local = sext_ln24_19_fu_1252_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        M_d0_local = sext_ln24_17_fu_1171_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        M_d0_local = sext_ln24_15_fu_1083_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_d0_local = sext_ln24_13_fu_1019_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_d0_local = sext_ln24_11_fu_952_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_d0_local = sext_ln24_9_fu_873_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_d0_local = sext_ln24_7_fu_785_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_d0_local = sext_ln24_5_fu_721_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d0_local = sext_ln24_3_fu_635_p1;
    end else if (((icmp_ln23_fu_515_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        M_d0_local = sext_ln24_1_fu_560_p1;
    end else begin
        M_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        M_d1_local = sext_ln24_30_fu_1640_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        M_d1_local = sext_ln24_28_fu_1573_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        M_d1_local = sext_ln24_26_fu_1506_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        M_d1_local = sext_ln24_24_fu_1436_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        M_d1_local = sext_ln24_22_fu_1369_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        M_d1_local = sext_ln24_20_fu_1295_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        M_d1_local = sext_ln24_18_fu_1216_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        M_d1_local = sext_ln24_16_fu_1125_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        M_d1_local = sext_ln24_14_fu_1051_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_d1_local = sext_ln24_12_fu_984_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_d1_local = sext_ln24_10_fu_916_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_d1_local = sext_ln24_8_fu_827_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_d1_local = sext_ln24_6_fu_753_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_d1_local = sext_ln24_4_fu_677_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d1_local = sext_ln24_2_fu_602_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        M_d1_local = sext_ln24_fu_492_p1;
    end else begin
        M_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | ((icmp_ln23_fu_515_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_we0_local = 1'b1;
    end else begin
        M_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln23_fu_515_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
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
        ap_sig_allocacmp_b_idx_4 = 8'd0;
    end else begin
        ap_sig_allocacmp_b_idx_4 = b_idx_fu_186;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln23_fu_515_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
assign add_ln23_fu_1677_p2 = (b_idx_4_reg_1694 + 8'd32);
assign add_ln24_10_fu_921_p2 = (tmp_68_reg_1709 + 15'd1419);
assign add_ln24_11_fu_957_p2 = (tmp_68_reg_1709 + 15'd1548);
assign add_ln24_12_fu_989_p2 = (tmp_68_reg_1709 + 15'd1677);
assign add_ln24_13_fu_1024_p2 = (tmp_68_reg_1709 + 15'd1806);
assign add_ln24_14_fu_1056_p2 = (tmp_68_reg_1709 + 15'd1935);
assign add_ln24_15_fu_1088_p2 = (tmp_68_reg_1709 + 15'd2064);
assign add_ln24_16_fu_1130_p2 = (tmp_68_reg_1709 + 15'd2193);
assign add_ln24_17_fu_1176_p2 = (tmp_68_reg_1709 + 15'd2322);
assign add_ln24_18_fu_1221_p2 = (tmp_68_reg_1709 + 15'd2451);
assign add_ln24_19_fu_1257_p2 = (tmp_68_reg_1709 + 15'd2580);
assign add_ln24_1_fu_565_p2 = (tmp_68_reg_1709 + 15'd258);
assign add_ln24_20_fu_1300_p2 = (tmp_68_reg_1709 + 15'd2709);
assign add_ln24_21_fu_1339_p2 = (tmp_68_reg_1709 + 15'd2838);
assign add_ln24_22_fu_1374_p2 = (tmp_68_reg_1709 + 15'd2967);
assign add_ln24_23_fu_1409_p2 = (tmp_68_reg_1709 + 15'd3096);
assign add_ln24_24_fu_1441_p2 = (tmp_68_reg_1709 + 15'd3225);
assign add_ln24_25_fu_1476_p2 = (tmp_68_reg_1709 + 15'd3354);
assign add_ln24_26_fu_1511_p2 = (tmp_68_reg_1709 + 15'd3483);
assign add_ln24_27_fu_1546_p2 = (tmp_68_reg_1709 + 15'd3612);
assign add_ln24_28_fu_1578_p2 = (tmp_68_reg_1709 + 15'd3741);
assign add_ln24_29_fu_1613_p2 = (tmp_68_reg_1709 + 15'd3870);
assign add_ln24_2_fu_607_p2 = (tmp_68_reg_1709 + 15'd387);
assign add_ln24_30_fu_1645_p2 = (tmp_68_reg_1709 + 15'd3999);
assign add_ln24_3_fu_640_p2 = (tmp_68_reg_1709 + 15'd516);
assign add_ln24_4_fu_682_p2 = (tmp_68_reg_1709 + 15'd645);
assign add_ln24_5_fu_726_p2 = (tmp_68_reg_1709 + 15'd774);
assign add_ln24_6_fu_758_p2 = (tmp_68_reg_1709 + 15'd903);
assign add_ln24_7_fu_790_p2 = (tmp_68_reg_1709 + 15'd1032);
assign add_ln24_8_fu_832_p2 = (tmp_68_reg_1709 + 15'd1161);
assign add_ln24_9_fu_878_p2 = (tmp_68_reg_1709 + 15'd1290);
assign add_ln24_fu_521_p2 = (tmp_68_fu_473_p3 + 15'd129);
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
assign icmp_ln23_fu_515_p2 = ((or_ln2_fu_507_p3 < 8'd129) ? 1'b1 : 1'b0);
assign or_ln24_10_fu_967_p3 = {{tmp_11_reg_1759}, {4'd12}};
assign or_ln24_11_fu_999_p5 = {{{{tmp_11_reg_1759}, {2'd3}}, {tmp_69_reg_1752}}, {1'd1}};
assign or_ln24_12_fu_1034_p3 = {{tmp_11_reg_1759}, {4'd14}};
assign or_ln24_13_fu_1066_p3 = {{tmp_11_reg_1759}, {4'd15}};
assign or_ln24_14_fu_1107_p3 = {{tmp_13_fu_1098_p4}, {5'd16}};
assign or_ln24_15_fu_1149_p5 = {{{{tmp_13_fu_1098_p4}, {1'd1}}, {tmp_14_fu_1140_p4}}, {1'd1}};
assign or_ln24_16_fu_1195_p5 = {{{{tmp_13_reg_1780}, {1'd1}}, {tmp_15_fu_1186_p4}}, {2'd2}};
assign or_ln24_17_fu_1231_p5 = {{{{tmp_13_reg_1780}, {1'd1}}, {tmp_15_fu_1186_p4}}, {2'd3}};
assign or_ln24_18_fu_1274_p5 = {{{{tmp_13_reg_1780}, {1'd1}}, {tmp_71_fu_1267_p3}}, {3'd4}};
assign or_ln24_19_fu_1310_p7 = {{{{{{tmp_13_reg_1780}, {1'd1}}, {tmp_71_fu_1267_p3}}, {1'd1}}, {tmp_69_reg_1752}}, {1'd1}};
assign or_ln24_1_fu_617_p3 = {{tmp_9_fu_575_p4}, {2'd3}};
assign or_ln24_20_fu_1349_p5 = {{{{tmp_13_reg_1780}, {1'd1}}, {tmp_71_reg_1798}}, {3'd6}};
assign or_ln24_21_fu_1384_p5 = {{{{tmp_13_reg_1780}, {1'd1}}, {tmp_71_reg_1798}}, {3'd7}};
assign or_ln24_22_fu_1419_p3 = {{tmp_13_reg_1780}, {5'd24}};
assign or_ln24_23_fu_1451_p5 = {{{{tmp_13_reg_1780}, {2'd3}}, {tmp_12_reg_1769}}, {1'd1}};
assign or_ln24_24_fu_1486_p5 = {{{{tmp_13_reg_1780}, {2'd3}}, {tmp_70_reg_1774}}, {2'd2}};
assign or_ln24_25_fu_1521_p5 = {{{{tmp_13_reg_1780}, {2'd3}}, {tmp_70_reg_1774}}, {2'd3}};
assign or_ln24_26_fu_1556_p3 = {{tmp_13_reg_1780}, {5'd28}};
assign or_ln24_27_fu_1588_p5 = {{{{tmp_13_reg_1780}, {3'd7}}, {tmp_69_reg_1752}}, {1'd1}};
assign or_ln24_28_fu_1623_p3 = {{tmp_13_reg_1780}, {5'd30}};
assign or_ln24_29_fu_1655_p3 = {{tmp_13_reg_1780}, {5'd31}};
assign or_ln24_2_fu_659_p3 = {{tmp_10_fu_650_p4}, {3'd4}};
assign or_ln24_3_fu_699_p5 = {{{{tmp_10_fu_650_p4}, {1'd1}}, {tmp_69_fu_692_p3}}, {1'd1}};
assign or_ln24_4_fu_736_p3 = {{tmp_10_reg_1746}, {3'd6}};
assign or_ln24_5_fu_768_p3 = {{tmp_10_reg_1746}, {3'd7}};
assign or_ln24_6_fu_809_p3 = {{tmp_11_fu_800_p4}, {4'd8}};
assign or_ln24_7_fu_851_p5 = {{{{tmp_11_fu_800_p4}, {1'd1}}, {tmp_12_fu_842_p4}}, {1'd1}};
assign or_ln24_8_fu_895_p5 = {{{{tmp_11_reg_1759}, {1'd1}}, {tmp_70_fu_888_p3}}, {2'd2}};
assign or_ln24_9_fu_931_p5 = {{{{tmp_11_reg_1759}, {1'd1}}, {tmp_70_fu_888_p3}}, {2'd3}};
assign or_ln24_s_fu_542_p3 = {{tmp_8_fu_532_p4}, {1'd1}};
assign or_ln2_fu_507_p3 = {{tmp_s_fu_497_p4}, {1'd1}};
assign or_ln3_fu_584_p3 = {{tmp_9_fu_575_p4}, {2'd2}};
assign sext_ln24_10_fu_916_p1 = $signed(sub_ln24_10_fu_910_p2);
assign sext_ln24_11_fu_952_p1 = $signed(sub_ln24_11_fu_946_p2);
assign sext_ln24_12_fu_984_p1 = $signed(sub_ln24_12_fu_978_p2);
assign sext_ln24_13_fu_1019_p1 = $signed(sub_ln24_13_fu_1013_p2);
assign sext_ln24_14_fu_1051_p1 = $signed(sub_ln24_14_fu_1045_p2);
assign sext_ln24_15_fu_1083_p1 = $signed(sub_ln24_15_fu_1077_p2);
assign sext_ln24_16_fu_1125_p1 = $signed(sub_ln24_16_fu_1119_p2);
assign sext_ln24_17_fu_1171_p1 = $signed(sub_ln24_17_fu_1165_p2);
assign sext_ln24_18_fu_1216_p1 = $signed(sub_ln24_18_fu_1210_p2);
assign sext_ln24_19_fu_1252_p1 = $signed(sub_ln24_19_fu_1246_p2);
assign sext_ln24_1_fu_560_p1 = $signed(sub_ln24_1_fu_554_p2);
assign sext_ln24_20_fu_1295_p1 = $signed(sub_ln24_20_fu_1289_p2);
assign sext_ln24_21_fu_1334_p1 = $signed(sub_ln24_21_fu_1328_p2);
assign sext_ln24_22_fu_1369_p1 = $signed(sub_ln24_22_fu_1363_p2);
assign sext_ln24_23_fu_1404_p1 = $signed(sub_ln24_23_fu_1398_p2);
assign sext_ln24_24_fu_1436_p1 = $signed(sub_ln24_24_fu_1430_p2);
assign sext_ln24_25_fu_1471_p1 = $signed(sub_ln24_25_fu_1465_p2);
assign sext_ln24_26_fu_1506_p1 = $signed(sub_ln24_26_fu_1500_p2);
assign sext_ln24_27_fu_1541_p1 = $signed(sub_ln24_27_fu_1535_p2);
assign sext_ln24_28_fu_1573_p1 = $signed(sub_ln24_28_fu_1567_p2);
assign sext_ln24_29_fu_1608_p1 = $signed(sub_ln24_29_fu_1602_p2);
assign sext_ln24_2_fu_602_p1 = $signed(sub_ln24_2_fu_596_p2);
assign sext_ln24_30_fu_1640_p1 = $signed(sub_ln24_30_fu_1634_p2);
assign sext_ln24_31_fu_1672_p1 = $signed(sub_ln24_31_fu_1666_p2);
assign sext_ln24_3_fu_635_p1 = $signed(sub_ln24_3_fu_629_p2);
assign sext_ln24_4_fu_677_p1 = $signed(sub_ln24_4_fu_671_p2);
assign sext_ln24_5_fu_721_p1 = $signed(sub_ln24_5_fu_715_p2);
assign sext_ln24_6_fu_753_p1 = $signed(sub_ln24_6_fu_747_p2);
assign sext_ln24_7_fu_785_p1 = $signed(sub_ln24_7_fu_779_p2);
assign sext_ln24_8_fu_827_p1 = $signed(sub_ln24_8_fu_821_p2);
assign sext_ln24_9_fu_873_p1 = $signed(sub_ln24_9_fu_867_p2);
assign sext_ln24_fu_492_p1 = $signed(sub_ln24_fu_486_p2);
assign sub_ln24_10_fu_910_p2 = (8'd0 - zext_ln24_20_fu_906_p1);
assign sub_ln24_11_fu_946_p2 = (8'd0 - zext_ln24_22_fu_942_p1);
assign sub_ln24_12_fu_978_p2 = (8'd0 - zext_ln24_24_fu_974_p1);
assign sub_ln24_13_fu_1013_p2 = (8'd0 - zext_ln24_26_fu_1009_p1);
assign sub_ln24_14_fu_1045_p2 = (8'd0 - zext_ln24_28_fu_1041_p1);
assign sub_ln24_15_fu_1077_p2 = (8'd0 - zext_ln24_30_fu_1073_p1);
assign sub_ln24_16_fu_1119_p2 = (8'd0 - zext_ln24_32_fu_1115_p1);
assign sub_ln24_17_fu_1165_p2 = (8'd0 - zext_ln24_34_fu_1161_p1);
assign sub_ln24_18_fu_1210_p2 = (8'd0 - zext_ln24_36_fu_1206_p1);
assign sub_ln24_19_fu_1246_p2 = (8'd0 - zext_ln24_38_fu_1242_p1);
assign sub_ln24_1_fu_554_p2 = (8'd0 - zext_ln24_2_fu_550_p1);
assign sub_ln24_20_fu_1289_p2 = (8'd0 - zext_ln24_40_fu_1285_p1);
assign sub_ln24_21_fu_1328_p2 = (8'd0 - zext_ln24_42_fu_1324_p1);
assign sub_ln24_22_fu_1363_p2 = (8'd0 - zext_ln24_44_fu_1359_p1);
assign sub_ln24_23_fu_1398_p2 = (8'd0 - zext_ln24_46_fu_1394_p1);
assign sub_ln24_24_fu_1430_p2 = (8'd0 - zext_ln24_48_fu_1426_p1);
assign sub_ln24_25_fu_1465_p2 = (8'd0 - zext_ln24_50_fu_1461_p1);
assign sub_ln24_26_fu_1500_p2 = (8'd0 - zext_ln24_52_fu_1496_p1);
assign sub_ln24_27_fu_1535_p2 = (8'd0 - zext_ln24_54_fu_1531_p1);
assign sub_ln24_28_fu_1567_p2 = (8'd0 - zext_ln24_56_fu_1563_p1);
assign sub_ln24_29_fu_1602_p2 = (8'd0 - zext_ln24_58_fu_1598_p1);
assign sub_ln24_2_fu_596_p2 = (8'd0 - zext_ln24_4_fu_592_p1);
assign sub_ln24_30_fu_1634_p2 = (8'd0 - zext_ln24_60_fu_1630_p1);
assign sub_ln24_31_fu_1666_p2 = (8'd0 - zext_ln24_62_fu_1662_p1);
assign sub_ln24_3_fu_629_p2 = (8'd0 - zext_ln24_6_fu_625_p1);
assign sub_ln24_4_fu_671_p2 = (8'd0 - zext_ln24_8_fu_667_p1);
assign sub_ln24_5_fu_715_p2 = (8'd0 - zext_ln24_10_fu_711_p1);
assign sub_ln24_6_fu_747_p2 = (8'd0 - zext_ln24_12_fu_743_p1);
assign sub_ln24_7_fu_779_p2 = (8'd0 - zext_ln24_14_fu_775_p1);
assign sub_ln24_8_fu_821_p2 = (8'd0 - zext_ln24_16_fu_817_p1);
assign sub_ln24_9_fu_867_p2 = (8'd0 - zext_ln24_18_fu_863_p1);
assign sub_ln24_fu_486_p2 = (8'd0 - ap_sig_allocacmp_b_idx_4);
assign tmp_10_fu_650_p4 = {{b_idx_4_reg_1694[6:3]}};
assign tmp_11_fu_800_p4 = {{b_idx_4_reg_1694[6:4]}};
assign tmp_12_fu_842_p4 = {{b_idx_4_reg_1694[2:1]}};
assign tmp_13_fu_1098_p4 = {{b_idx_4_reg_1694[6:5]}};
assign tmp_14_fu_1140_p4 = {{b_idx_4_reg_1694[3:1]}};
assign tmp_15_fu_1186_p4 = {{b_idx_4_reg_1694[3:2]}};
assign tmp_68_fu_473_p3 = {{tmp_fu_463_p4}, {ap_sig_allocacmp_b_idx_4}};
assign tmp_69_fu_692_p3 = b_idx_4_reg_1694[32'd1];
assign tmp_70_fu_888_p3 = b_idx_4_reg_1694[32'd2];
assign tmp_71_fu_1267_p3 = b_idx_4_reg_1694[32'd3];
assign tmp_8_fu_532_p4 = {{ap_sig_allocacmp_b_idx_4[6:1]}};
assign tmp_9_fu_575_p4 = {{b_idx_4_reg_1694[6:2]}};
assign tmp_fu_463_p4 = {{ap_sig_allocacmp_b_idx_4[7:1]}};
assign tmp_s_fu_497_p4 = {{ap_sig_allocacmp_b_idx_4[7:1]}};
assign zext_ln24_10_fu_711_p1 = or_ln24_3_fu_699_p5;
assign zext_ln24_11_fu_731_p1 = add_ln24_5_fu_726_p2;
assign zext_ln24_12_fu_743_p1 = or_ln24_4_fu_736_p3;
assign zext_ln24_13_fu_763_p1 = add_ln24_6_fu_758_p2;
assign zext_ln24_14_fu_775_p1 = or_ln24_5_fu_768_p3;
assign zext_ln24_15_fu_795_p1 = add_ln24_7_fu_790_p2;
assign zext_ln24_16_fu_817_p1 = or_ln24_6_fu_809_p3;
assign zext_ln24_17_fu_837_p1 = add_ln24_8_fu_832_p2;
assign zext_ln24_18_fu_863_p1 = or_ln24_7_fu_851_p5;
assign zext_ln24_19_fu_883_p1 = add_ln24_9_fu_878_p2;
assign zext_ln24_1_fu_527_p1 = add_ln24_fu_521_p2;
assign zext_ln24_20_fu_906_p1 = or_ln24_8_fu_895_p5;
assign zext_ln24_21_fu_926_p1 = add_ln24_10_fu_921_p2;
assign zext_ln24_22_fu_942_p1 = or_ln24_9_fu_931_p5;
assign zext_ln24_23_fu_962_p1 = add_ln24_11_fu_957_p2;
assign zext_ln24_24_fu_974_p1 = or_ln24_10_fu_967_p3;
assign zext_ln24_25_fu_994_p1 = add_ln24_12_fu_989_p2;
assign zext_ln24_26_fu_1009_p1 = or_ln24_11_fu_999_p5;
assign zext_ln24_27_fu_1029_p1 = add_ln24_13_fu_1024_p2;
assign zext_ln24_28_fu_1041_p1 = or_ln24_12_fu_1034_p3;
assign zext_ln24_29_fu_1061_p1 = add_ln24_14_fu_1056_p2;
assign zext_ln24_2_fu_550_p1 = or_ln24_s_fu_542_p3;
assign zext_ln24_30_fu_1073_p1 = or_ln24_13_fu_1066_p3;
assign zext_ln24_31_fu_1093_p1 = add_ln24_15_fu_1088_p2;
assign zext_ln24_32_fu_1115_p1 = or_ln24_14_fu_1107_p3;
assign zext_ln24_33_fu_1135_p1 = add_ln24_16_fu_1130_p2;
assign zext_ln24_34_fu_1161_p1 = or_ln24_15_fu_1149_p5;
assign zext_ln24_35_fu_1181_p1 = add_ln24_17_fu_1176_p2;
assign zext_ln24_36_fu_1206_p1 = or_ln24_16_fu_1195_p5;
assign zext_ln24_37_fu_1226_p1 = add_ln24_18_fu_1221_p2;
assign zext_ln24_38_fu_1242_p1 = or_ln24_17_fu_1231_p5;
assign zext_ln24_39_fu_1262_p1 = add_ln24_19_fu_1257_p2;
assign zext_ln24_3_fu_570_p1 = add_ln24_1_fu_565_p2;
assign zext_ln24_40_fu_1285_p1 = or_ln24_18_fu_1274_p5;
assign zext_ln24_41_fu_1305_p1 = add_ln24_20_fu_1300_p2;
assign zext_ln24_42_fu_1324_p1 = or_ln24_19_fu_1310_p7;
assign zext_ln24_43_fu_1344_p1 = add_ln24_21_fu_1339_p2;
assign zext_ln24_44_fu_1359_p1 = or_ln24_20_fu_1349_p5;
assign zext_ln24_45_fu_1379_p1 = add_ln24_22_fu_1374_p2;
assign zext_ln24_46_fu_1394_p1 = or_ln24_21_fu_1384_p5;
assign zext_ln24_47_fu_1414_p1 = add_ln24_23_fu_1409_p2;
assign zext_ln24_48_fu_1426_p1 = or_ln24_22_fu_1419_p3;
assign zext_ln24_49_fu_1446_p1 = add_ln24_24_fu_1441_p2;
assign zext_ln24_4_fu_592_p1 = or_ln3_fu_584_p3;
assign zext_ln24_50_fu_1461_p1 = or_ln24_23_fu_1451_p5;
assign zext_ln24_51_fu_1481_p1 = add_ln24_25_fu_1476_p2;
assign zext_ln24_52_fu_1496_p1 = or_ln24_24_fu_1486_p5;
assign zext_ln24_53_fu_1516_p1 = add_ln24_26_fu_1511_p2;
assign zext_ln24_54_fu_1531_p1 = or_ln24_25_fu_1521_p5;
assign zext_ln24_55_fu_1551_p1 = add_ln24_27_fu_1546_p2;
assign zext_ln24_56_fu_1563_p1 = or_ln24_26_fu_1556_p3;
assign zext_ln24_57_fu_1583_p1 = add_ln24_28_fu_1578_p2;
assign zext_ln24_58_fu_1598_p1 = or_ln24_27_fu_1588_p5;
assign zext_ln24_59_fu_1618_p1 = add_ln24_29_fu_1613_p2;
assign zext_ln24_5_fu_612_p1 = add_ln24_2_fu_607_p2;
assign zext_ln24_60_fu_1630_p1 = or_ln24_28_fu_1623_p3;
assign zext_ln24_61_fu_1650_p1 = add_ln24_30_fu_1645_p2;
assign zext_ln24_62_fu_1662_p1 = or_ln24_29_fu_1655_p3;
assign zext_ln24_6_fu_625_p1 = or_ln24_1_fu_617_p3;
assign zext_ln24_7_fu_645_p1 = add_ln24_3_fu_640_p2;
assign zext_ln24_8_fu_667_p1 = or_ln24_2_fu_659_p3;
assign zext_ln24_9_fu_687_p1 = add_ln24_4_fu_682_p2;
assign zext_ln24_fu_481_p1 = tmp_68_fu_473_p3;
endmodule 