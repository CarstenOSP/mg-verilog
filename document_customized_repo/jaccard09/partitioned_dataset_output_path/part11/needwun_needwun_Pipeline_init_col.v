
module needwun_needwun_Pipeline_init_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_address1,M_1_ce1,M_1_we1,M_1_d1,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_address1,M_0_ce1,M_0_we1,M_0_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
output  [13:0] M_1_address1;
output   M_1_ce1;
output   M_1_we1;
output  [31:0] M_1_d1;
output  [13:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
output  [13:0] M_0_address1;
output   M_0_ce1;
output   M_0_we1;
output  [31:0] M_0_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln23_fu_530_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [7:0] b_idx_26_reg_1680;
wire    ap_block_pp0_stage0_11001;
wire   [13:0] tmp_fu_498_p3;
reg   [13:0] tmp_reg_1695;
reg   [0:0] icmp_ln23_reg_1713;
wire   [14:0] add_ln24_44_fu_548_p2;
reg   [14:0] add_ln24_44_reg_1717;
wire  signed [7:0] sub_ln24_2_fu_613_p2;
reg  signed [7:0] sub_ln24_2_reg_1736;
wire   [3:0] tmp_8_fu_716_p4;
reg   [3:0] tmp_8_reg_1754;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] tmp_65_fu_725_p3;
reg   [0:0] tmp_65_reg_1759;
wire   [2:0] tmp_9_fu_861_p4;
reg   [2:0] tmp_9_reg_1766;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [1:0] tmp_10_fu_870_p4;
reg   [1:0] tmp_10_reg_1773;
wire   [0:0] tmp_66_fu_946_p3;
reg   [0:0] tmp_66_reg_1778;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [1:0] tmp_11_fu_1146_p4;
reg   [1:0] tmp_11_reg_1783;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] tmp_67_fu_1306_p3;
reg   [0:0] tmp_67_reg_1794;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [13:0] lshr_ln24_15_reg_1799;
wire    ap_block_pp0_stage7_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln24_fu_506_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln24_2_fu_564_p1;
wire   [63:0] zext_ln24_4_fu_608_p1;
wire   [63:0] zext_ln24_5_fu_639_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln24_7_fu_681_p1;
wire   [63:0] zext_ln24_8_fu_711_p1;
wire   [63:0] zext_ln24_10_fu_764_p1;
wire   [63:0] zext_ln24_11_fu_794_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln24_13_fu_826_p1;
wire   [63:0] zext_ln24_14_fu_856_p1;
wire   [63:0] zext_ln24_16_fu_911_p1;
wire   [63:0] zext_ln24_17_fu_941_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln24_19_fu_984_p1;
wire   [63:0] zext_ln24_20_fu_1014_p1;
wire   [63:0] zext_ln24_22_fu_1049_p1;
wire   [63:0] zext_ln24_23_fu_1079_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln24_25_fu_1111_p1;
wire   [63:0] zext_ln24_26_fu_1141_p1;
wire   [63:0] zext_ln24_28_fu_1196_p1;
wire   [63:0] zext_ln24_29_fu_1226_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln24_31_fu_1271_p1;
wire   [63:0] zext_ln24_32_fu_1301_p1;
wire   [63:0] zext_ln24_34_fu_1347_p1;
wire   [63:0] zext_ln24_35_fu_1377_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln24_37_fu_1412_p1;
wire   [63:0] zext_ln24_38_fu_1442_p1;
wire   [63:0] zext_ln24_40_fu_1477_p1;
wire   [63:0] zext_ln24_41_fu_1507_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln24_43_fu_1542_p1;
wire   [63:0] zext_ln24_44_fu_1572_p1;
wire   [63:0] zext_ln24_46_fu_1607_p1;
wire   [63:0] zext_ln24_47_fu_1647_p1;
reg   [7:0] b_idx_fu_202;
wire   [7:0] add_ln23_fu_1637_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_b_idx_26;
reg    M_0_we1_local;
reg   [31:0] M_0_d1_local;
wire  signed [31:0] sext_ln24_fu_517_p1;
reg    M_0_ce1_local;
reg   [13:0] M_0_address1_local;
reg    M_0_we0_local;
reg   [31:0] M_0_d0_local;
wire  signed [31:0] sext_ln24_2_fu_619_p1;
reg    M_0_ce0_local;
reg   [13:0] M_0_address0_local;
wire  signed [31:0] sext_ln24_4_fu_691_p1;
wire  signed [31:0] sext_ln24_6_fu_774_p1;
wire  signed [31:0] sext_ln24_8_fu_836_p1;
wire  signed [31:0] sext_ln24_10_fu_921_p1;
wire  signed [31:0] sext_ln24_12_fu_994_p1;
wire  signed [31:0] sext_ln24_14_fu_1059_p1;
wire  signed [31:0] sext_ln24_16_fu_1121_p1;
wire  signed [31:0] sext_ln24_18_fu_1206_p1;
wire  signed [31:0] sext_ln24_20_fu_1281_p1;
wire  signed [31:0] sext_ln24_22_fu_1357_p1;
wire    ap_block_pp0_stage6_11001;
wire  signed [31:0] sext_ln24_24_fu_1422_p1;
wire  signed [31:0] sext_ln24_26_fu_1487_p1;
wire  signed [31:0] sext_ln24_28_fu_1552_p1;
wire  signed [31:0] sext_ln24_30_fu_1617_p1;
reg    M_1_we1_local;
reg   [31:0] M_1_d1_local;
wire  signed [31:0] sext_ln24_1_fu_597_p1;
reg    M_1_ce1_local;
reg   [13:0] M_1_address1_local;
wire  signed [31:0] sext_ln24_3_fu_671_p1;
reg    M_1_we0_local;
reg   [31:0] M_1_d0_local;
wire  signed [31:0] sext_ln24_5_fu_754_p1;
reg    M_1_ce0_local;
reg   [13:0] M_1_address0_local;
wire  signed [31:0] sext_ln24_7_fu_816_p1;
wire  signed [31:0] sext_ln24_9_fu_901_p1;
wire  signed [31:0] sext_ln24_11_fu_974_p1;
wire  signed [31:0] sext_ln24_13_fu_1039_p1;
wire  signed [31:0] sext_ln24_15_fu_1101_p1;
wire  signed [31:0] sext_ln24_17_fu_1186_p1;
wire  signed [31:0] sext_ln24_19_fu_1261_p1;
wire  signed [31:0] sext_ln24_21_fu_1337_p1;
wire  signed [31:0] sext_ln24_23_fu_1402_p1;
wire  signed [31:0] sext_ln24_25_fu_1467_p1;
wire  signed [31:0] sext_ln24_27_fu_1532_p1;
wire  signed [31:0] sext_ln24_29_fu_1597_p1;
wire  signed [31:0] sext_ln24_31_fu_1668_p1;
wire   [6:0] lshr_ln1_fu_488_p4;
wire   [7:0] sub_ln24_fu_511_p2;
wire   [7:0] or_ln2_fu_522_p3;
wire   [14:0] p_shl_fu_540_p3;
wire   [14:0] zext_ln24_1_fu_536_p1;
wire   [13:0] lshr_ln24_1_fu_554_p4;
wire   [5:0] tmp_s_fu_569_p4;
wire   [6:0] or_ln24_s_fu_579_p3;
wire   [7:0] zext_ln24_3_fu_587_p1;
wire   [7:0] sub_ln24_1_fu_591_p2;
wire   [13:0] add_ln24_fu_602_p2;
wire   [14:0] add_ln24_1_fu_624_p2;
wire   [13:0] lshr_ln24_2_fu_629_p4;
wire   [4:0] tmp_7_fu_644_p4;
wire   [6:0] or_ln3_fu_653_p3;
wire   [7:0] zext_ln24_6_fu_661_p1;
wire   [7:0] sub_ln24_3_fu_665_p2;
wire   [13:0] add_ln24_2_fu_676_p2;
wire   [7:0] add_ln24_3_fu_686_p2;
wire   [14:0] add_ln24_4_fu_696_p2;
wire   [13:0] lshr_ln24_3_fu_701_p4;
wire   [6:0] or_ln24_1_fu_732_p5;
wire   [7:0] zext_ln24_9_fu_744_p1;
wire   [7:0] sub_ln24_4_fu_748_p2;
wire   [13:0] add_ln24_5_fu_759_p2;
wire   [7:0] add_ln24_6_fu_769_p2;
wire   [14:0] add_ln24_7_fu_779_p2;
wire   [13:0] lshr_ln24_4_fu_784_p4;
wire   [6:0] or_ln24_2_fu_799_p3;
wire   [7:0] zext_ln24_12_fu_806_p1;
wire   [7:0] sub_ln24_5_fu_810_p2;
wire   [13:0] add_ln24_8_fu_821_p2;
wire   [7:0] add_ln24_9_fu_831_p2;
wire   [14:0] add_ln24_10_fu_841_p2;
wire   [13:0] lshr_ln24_5_fu_846_p4;
wire   [6:0] or_ln24_3_fu_879_p5;
wire   [7:0] zext_ln24_15_fu_891_p1;
wire   [7:0] sub_ln24_6_fu_895_p2;
wire   [13:0] add_ln24_11_fu_906_p2;
wire   [7:0] add_ln24_12_fu_916_p2;
wire   [14:0] add_ln24_13_fu_926_p2;
wire   [13:0] lshr_ln24_6_fu_931_p4;
wire   [6:0] or_ln24_4_fu_953_p5;
wire   [7:0] zext_ln24_18_fu_964_p1;
wire   [7:0] sub_ln24_7_fu_968_p2;
wire   [13:0] add_ln24_14_fu_979_p2;
wire   [7:0] add_ln24_15_fu_989_p2;
wire   [14:0] add_ln24_16_fu_999_p2;
wire   [13:0] lshr_ln24_7_fu_1004_p4;
wire   [6:0] or_ln24_5_fu_1019_p5;
wire   [7:0] zext_ln24_21_fu_1029_p1;
wire   [7:0] sub_ln24_8_fu_1033_p2;
wire   [13:0] add_ln24_17_fu_1044_p2;
wire   [7:0] add_ln24_18_fu_1054_p2;
wire   [14:0] add_ln24_19_fu_1064_p2;
wire   [13:0] lshr_ln24_8_fu_1069_p4;
wire   [6:0] or_ln24_6_fu_1084_p3;
wire   [7:0] zext_ln24_24_fu_1091_p1;
wire   [7:0] sub_ln24_9_fu_1095_p2;
wire   [13:0] add_ln24_20_fu_1106_p2;
wire   [7:0] add_ln24_21_fu_1116_p2;
wire   [14:0] add_ln24_22_fu_1126_p2;
wire   [13:0] lshr_ln24_9_fu_1131_p4;
wire   [2:0] tmp_12_fu_1155_p4;
wire   [6:0] or_ln24_7_fu_1164_p5;
wire   [7:0] zext_ln24_27_fu_1176_p1;
wire   [7:0] sub_ln24_10_fu_1180_p2;
wire   [13:0] add_ln24_23_fu_1191_p2;
wire   [7:0] add_ln24_24_fu_1201_p2;
wire   [14:0] add_ln24_25_fu_1211_p2;
wire   [13:0] lshr_ln24_s_fu_1216_p4;
wire   [1:0] tmp_13_fu_1231_p4;
wire   [6:0] or_ln24_8_fu_1240_p5;
wire   [7:0] zext_ln24_30_fu_1251_p1;
wire   [7:0] sub_ln24_11_fu_1255_p2;
wire   [13:0] add_ln24_26_fu_1266_p2;
wire   [7:0] add_ln24_27_fu_1276_p2;
wire   [14:0] add_ln24_28_fu_1286_p2;
wire   [13:0] lshr_ln24_10_fu_1291_p4;
wire   [6:0] or_ln24_9_fu_1313_p7;
wire   [7:0] zext_ln24_33_fu_1327_p1;
wire   [7:0] sub_ln24_12_fu_1331_p2;
wire   [13:0] add_ln24_29_fu_1342_p2;
wire   [7:0] add_ln24_30_fu_1352_p2;
wire   [14:0] add_ln24_31_fu_1362_p2;
wire   [13:0] lshr_ln24_11_fu_1367_p4;
wire   [6:0] or_ln24_10_fu_1382_p5;
wire   [7:0] zext_ln24_36_fu_1392_p1;
wire   [7:0] sub_ln24_13_fu_1396_p2;
wire   [13:0] add_ln24_32_fu_1407_p2;
wire   [7:0] add_ln24_33_fu_1417_p2;
wire   [14:0] add_ln24_34_fu_1427_p2;
wire   [13:0] lshr_ln24_12_fu_1432_p4;
wire   [6:0] or_ln24_11_fu_1447_p5;
wire   [7:0] zext_ln24_39_fu_1457_p1;
wire   [7:0] sub_ln24_14_fu_1461_p2;
wire   [13:0] add_ln24_35_fu_1472_p2;
wire   [7:0] add_ln24_36_fu_1482_p2;
wire   [14:0] add_ln24_37_fu_1492_p2;
wire   [13:0] lshr_ln24_13_fu_1497_p4;
wire   [6:0] or_ln24_12_fu_1512_p5;
wire   [7:0] zext_ln24_42_fu_1522_p1;
wire   [7:0] sub_ln24_15_fu_1526_p2;
wire   [13:0] add_ln24_38_fu_1537_p2;
wire   [7:0] add_ln24_39_fu_1547_p2;
wire   [14:0] add_ln24_40_fu_1557_p2;
wire   [13:0] lshr_ln24_14_fu_1562_p4;
wire   [6:0] or_ln24_13_fu_1577_p5;
wire   [7:0] zext_ln24_45_fu_1587_p1;
wire   [7:0] sub_ln24_16_fu_1591_p2;
wire   [13:0] add_ln24_41_fu_1602_p2;
wire   [7:0] add_ln24_42_fu_1612_p2;
wire   [14:0] add_ln24_43_fu_1622_p2;
wire   [6:0] or_ln24_14_fu_1651_p3;
wire   [7:0] zext_ln24_48_fu_1658_p1;
wire   [7:0] sub_ln24_17_fu_1662_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 b_idx_fu_202 = 8'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_idx_fu_202 <= 8'd0;
    end else if (((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        b_idx_fu_202 <= add_ln23_fu_1637_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln24_44_reg_1717[14 : 1] <= add_ln24_44_fu_548_p2[14 : 1];
        b_idx_26_reg_1680 <= ap_sig_allocacmp_b_idx_26;
        icmp_ln23_reg_1713 <= icmp_ln23_fu_530_p2;
        sub_ln24_2_reg_1736 <= sub_ln24_2_fu_613_p2;
        tmp_reg_1695 <= tmp_fu_498_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        lshr_ln24_15_reg_1799 <= {{add_ln24_43_fu_1622_p2[14:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_10_reg_1773 <= {{b_idx_26_reg_1680[2:1]}};
        tmp_9_reg_1766 <= {{b_idx_26_reg_1680[6:4]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_11_reg_1783 <= {{b_idx_26_reg_1680[6:5]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_65_reg_1759 <= b_idx_26_reg_1680[32'd1];
        tmp_8_reg_1754 <= {{b_idx_26_reg_1680[6:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_66_reg_1778 <= b_idx_26_reg_1680[32'd2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_67_reg_1794 <= b_idx_26_reg_1680[32'd3];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_0_address0_local = zext_ln24_46_fu_1607_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_0_address0_local = zext_ln24_40_fu_1477_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_0_address0_local = zext_ln24_34_fu_1347_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_0_address0_local = zext_ln24_28_fu_1196_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_address0_local = zext_ln24_22_fu_1049_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_address0_local = zext_ln24_16_fu_911_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address0_local = zext_ln24_10_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address0_local = zext_ln24_4_fu_608_p1;
        end else begin
            M_0_address0_local = 'bx;
        end
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_0_address1_local = zext_ln24_43_fu_1542_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_0_address1_local = zext_ln24_37_fu_1412_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_0_address1_local = zext_ln24_31_fu_1271_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_0_address1_local = zext_ln24_25_fu_1111_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_address1_local = zext_ln24_19_fu_984_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_address1_local = zext_ln24_13_fu_826_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address1_local = zext_ln24_7_fu_681_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address1_local = zext_ln24_fu_506_p1;
        end else begin
            M_0_address1_local = 'bx;
        end
    end else begin
        M_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_0_d0_local = sext_ln24_30_fu_1617_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_0_d0_local = sext_ln24_26_fu_1487_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_0_d0_local = sext_ln24_22_fu_1357_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_0_d0_local = sext_ln24_18_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_d0_local = sext_ln24_14_fu_1059_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_d0_local = sext_ln24_10_fu_921_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d0_local = sext_ln24_6_fu_774_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d0_local = sext_ln24_2_fu_619_p1;
        end else begin
            M_0_d0_local = 'bx;
        end
    end else begin
        M_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_0_d1_local = sext_ln24_28_fu_1552_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_0_d1_local = sext_ln24_24_fu_1422_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_0_d1_local = sext_ln24_20_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_0_d1_local = sext_ln24_16_fu_1121_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_d1_local = sext_ln24_12_fu_994_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_d1_local = sext_ln24_8_fu_836_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d1_local = sext_ln24_4_fu_691_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d1_local = sext_ln24_fu_517_p1;
        end else begin
            M_0_d1_local = 'bx;
        end
    end else begin
        M_0_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln23_fu_530_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_we1_local = 1'b1;
    end else begin
        M_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_address0_local = zext_ln24_47_fu_1647_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        M_1_address0_local = zext_ln24_44_fu_1572_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        M_1_address0_local = zext_ln24_38_fu_1442_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_1_address0_local = zext_ln24_32_fu_1301_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        M_1_address0_local = zext_ln24_26_fu_1141_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_1_address0_local = zext_ln24_20_fu_1014_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln24_14_fu_856_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln24_8_fu_711_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_1_address1_local = zext_ln24_41_fu_1507_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_1_address1_local = zext_ln24_35_fu_1377_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_1_address1_local = zext_ln24_29_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_1_address1_local = zext_ln24_23_fu_1079_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_1_address1_local = zext_ln24_17_fu_941_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_1_address1_local = zext_ln24_11_fu_794_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_address1_local = zext_ln24_5_fu_639_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_address1_local = zext_ln24_2_fu_564_p1;
        end else begin
            M_1_address1_local = 'bx;
        end
    end else begin
        M_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_d0_local = sext_ln24_31_fu_1668_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        M_1_d0_local = sext_ln24_29_fu_1597_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        M_1_d0_local = sext_ln24_25_fu_1467_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_1_d0_local = sext_ln24_21_fu_1337_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        M_1_d0_local = sext_ln24_17_fu_1186_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_1_d0_local = sext_ln24_13_fu_1039_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_d0_local = sext_ln24_9_fu_901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_d0_local = sext_ln24_5_fu_754_p1;
    end else begin
        M_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_1_d1_local = sext_ln24_27_fu_1532_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_1_d1_local = sext_ln24_23_fu_1402_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_1_d1_local = sext_ln24_19_fu_1261_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_1_d1_local = sext_ln24_15_fu_1101_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_1_d1_local = sext_ln24_11_fu_974_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_1_d1_local = sext_ln24_7_fu_816_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_d1_local = sext_ln24_3_fu_671_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_d1_local = sext_ln24_1_fu_597_p1;
        end else begin
            M_1_d1_local = 'bx;
        end
    end else begin
        M_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln23_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln23_fu_530_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_we1_local = 1'b1;
    end else begin
        M_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_530_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_b_idx_26 = 8'd0;
    end else begin
        ap_sig_allocacmp_b_idx_26 = b_idx_fu_202;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign M_0_address0 = M_0_address0_local;
assign M_0_address1 = M_0_address1_local;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = M_0_d0_local;
assign M_0_d1 = M_0_d1_local;
assign M_0_we0 = M_0_we0_local;
assign M_0_we1 = M_0_we1_local;
assign M_1_address0 = M_1_address0_local;
assign M_1_address1 = M_1_address1_local;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = M_1_d0_local;
assign M_1_d1 = M_1_d1_local;
assign M_1_we0 = M_1_we0_local;
assign M_1_we1 = M_1_we1_local;
assign add_ln23_fu_1637_p2 = (b_idx_26_reg_1680 + 8'd32);
assign add_ln24_10_fu_841_p2 = (add_ln24_44_reg_1717 + 15'd1032);
assign add_ln24_11_fu_906_p2 = (tmp_reg_1695 + 14'd645);
assign add_ln24_12_fu_916_p2 = ($signed(sub_ln24_2_reg_1736) + $signed(8'd248));
assign add_ln24_13_fu_926_p2 = (add_ln24_44_reg_1717 + 15'd1290);
assign add_ln24_14_fu_979_p2 = (tmp_reg_1695 + 14'd774);
assign add_ln24_15_fu_989_p2 = ($signed(sub_ln24_2_reg_1736) + $signed(8'd246));
assign add_ln24_16_fu_999_p2 = (add_ln24_44_reg_1717 + 15'd1548);
assign add_ln24_17_fu_1044_p2 = (tmp_reg_1695 + 14'd903);
assign add_ln24_18_fu_1054_p2 = ($signed(sub_ln24_2_reg_1736) + $signed(8'd244));
assign add_ln24_19_fu_1064_p2 = (add_ln24_44_reg_1717 + 15'd1806);
assign add_ln24_1_fu_624_p2 = (add_ln24_44_reg_1717 + 15'd258);
assign add_ln24_20_fu_1106_p2 = (tmp_reg_1695 + 14'd1032);
assign add_ln24_21_fu_1116_p2 = ($signed(sub_ln24_2_reg_1736) + $signed(8'd242));
assign add_ln24_22_fu_1126_p2 = (add_ln24_44_reg_1717 + 15'd2064);
assign add_ln24_23_fu_1191_p2 = (tmp_reg_1695 + 14'd1161);
assign add_ln24_24_fu_1201_p2 = ($signed(sub_ln24_2_reg_1736) + $signed(8'd240));
assign add_ln24_25_fu_1211_p2 = (add_ln24_44_reg_1717 + 15'd2322);
assign add_ln24_26_fu_1266_p2 = (tmp_reg_1695 + 14'd1290);
assign add_ln24_27_fu_1276_p2 = ($signed(sub_ln24_2_reg_1736) + $signed(8'd238));
assign add_ln24_28_fu_1286_p2 = (add_ln24_44_reg_1717 + 15'd2580);
assign add_ln24_29_fu_1342_p2 = (tmp_reg_1695 + 14'd1419);
assign add_ln24_2_fu_676_p2 = (tmp_reg_1695 + 14'd258);
assign add_ln24_30_fu_1352_p2 = ($signed(sub_ln24_2_reg_1736) + $signed(8'd236));
assign add_ln24_31_fu_1362_p2 = (add_ln24_44_reg_1717 + 15'd2838);
assign add_ln24_32_fu_1407_p2 = (tmp_reg_1695 + 14'd1548);
assign add_ln24_33_fu_1417_p2 = ($signed(sub_ln24_2_reg_1736) + $signed(8'd234));
assign add_ln24_34_fu_1427_p2 = (add_ln24_44_reg_1717 + 15'd3096);
assign add_ln24_35_fu_1472_p2 = (tmp_reg_1695 + 14'd1677);
assign add_ln24_36_fu_1482_p2 = ($signed(sub_ln24_2_reg_1736) + $signed(8'd232));
assign add_ln24_37_fu_1492_p2 = (add_ln24_44_reg_1717 + 15'd3354);
assign add_ln24_38_fu_1537_p2 = (tmp_reg_1695 + 14'd1806);
assign add_ln24_39_fu_1547_p2 = ($signed(sub_ln24_2_reg_1736) + $signed(8'd230));
assign add_ln24_3_fu_686_p2 = ($signed(sub_ln24_2_reg_1736) + $signed(8'd254));
assign add_ln24_40_fu_1557_p2 = (add_ln24_44_reg_1717 + 15'd3612);
assign add_ln24_41_fu_1602_p2 = (tmp_reg_1695 + 14'd1935);
assign add_ln24_42_fu_1612_p2 = ($signed(sub_ln24_2_reg_1736) + $signed(8'd228));
assign add_ln24_43_fu_1622_p2 = (add_ln24_44_reg_1717 + 15'd3870);
assign add_ln24_44_fu_548_p2 = (p_shl_fu_540_p3 + zext_ln24_1_fu_536_p1);
assign add_ln24_4_fu_696_p2 = (add_ln24_44_reg_1717 + 15'd516);
assign add_ln24_5_fu_759_p2 = (tmp_reg_1695 + 14'd387);
assign add_ln24_6_fu_769_p2 = ($signed(sub_ln24_2_reg_1736) + $signed(8'd252));
assign add_ln24_7_fu_779_p2 = (add_ln24_44_reg_1717 + 15'd774);
assign add_ln24_8_fu_821_p2 = (tmp_reg_1695 + 14'd516);
assign add_ln24_9_fu_831_p2 = ($signed(sub_ln24_2_reg_1736) + $signed(8'd250));
assign add_ln24_fu_602_p2 = (tmp_fu_498_p3 + 14'd129);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln23_fu_530_p2 = ((or_ln2_fu_522_p3 < 8'd129) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_488_p4 = {{ap_sig_allocacmp_b_idx_26[7:1]}};
assign lshr_ln24_10_fu_1291_p4 = {{add_ln24_28_fu_1286_p2[14:1]}};
assign lshr_ln24_11_fu_1367_p4 = {{add_ln24_31_fu_1362_p2[14:1]}};
assign lshr_ln24_12_fu_1432_p4 = {{add_ln24_34_fu_1427_p2[14:1]}};
assign lshr_ln24_13_fu_1497_p4 = {{add_ln24_37_fu_1492_p2[14:1]}};
assign lshr_ln24_14_fu_1562_p4 = {{add_ln24_40_fu_1557_p2[14:1]}};
assign lshr_ln24_1_fu_554_p4 = {{add_ln24_44_fu_548_p2[14:1]}};
assign lshr_ln24_2_fu_629_p4 = {{add_ln24_1_fu_624_p2[14:1]}};
assign lshr_ln24_3_fu_701_p4 = {{add_ln24_4_fu_696_p2[14:1]}};
assign lshr_ln24_4_fu_784_p4 = {{add_ln24_7_fu_779_p2[14:1]}};
assign lshr_ln24_5_fu_846_p4 = {{add_ln24_10_fu_841_p2[14:1]}};
assign lshr_ln24_6_fu_931_p4 = {{add_ln24_13_fu_926_p2[14:1]}};
assign lshr_ln24_7_fu_1004_p4 = {{add_ln24_16_fu_999_p2[14:1]}};
assign lshr_ln24_8_fu_1069_p4 = {{add_ln24_19_fu_1064_p2[14:1]}};
assign lshr_ln24_9_fu_1131_p4 = {{add_ln24_22_fu_1126_p2[14:1]}};
assign lshr_ln24_s_fu_1216_p4 = {{add_ln24_25_fu_1211_p2[14:1]}};
assign or_ln24_10_fu_1382_p5 = {{{{tmp_11_reg_1783}, {1'd1}}, {tmp_67_reg_1794}}, {3'd7}};
assign or_ln24_11_fu_1447_p5 = {{{{tmp_11_reg_1783}, {2'd3}}, {tmp_10_reg_1773}}, {1'd1}};
assign or_ln24_12_fu_1512_p5 = {{{{tmp_11_reg_1783}, {2'd3}}, {tmp_66_reg_1778}}, {2'd3}};
assign or_ln24_13_fu_1577_p5 = {{{{tmp_11_reg_1783}, {3'd7}}, {tmp_65_reg_1759}}, {1'd1}};
assign or_ln24_14_fu_1651_p3 = {{tmp_11_reg_1783}, {5'd31}};
assign or_ln24_1_fu_732_p5 = {{{{tmp_8_fu_716_p4}, {1'd1}}, {tmp_65_fu_725_p3}}, {1'd1}};
assign or_ln24_2_fu_799_p3 = {{tmp_8_reg_1754}, {3'd7}};
assign or_ln24_3_fu_879_p5 = {{{{tmp_9_fu_861_p4}, {1'd1}}, {tmp_10_fu_870_p4}}, {1'd1}};
assign or_ln24_4_fu_953_p5 = {{{{tmp_9_reg_1766}, {1'd1}}, {tmp_66_fu_946_p3}}, {2'd3}};
assign or_ln24_5_fu_1019_p5 = {{{{tmp_9_reg_1766}, {2'd3}}, {tmp_65_reg_1759}}, {1'd1}};
assign or_ln24_6_fu_1084_p3 = {{tmp_9_reg_1766}, {4'd15}};
assign or_ln24_7_fu_1164_p5 = {{{{tmp_11_fu_1146_p4}, {1'd1}}, {tmp_12_fu_1155_p4}}, {1'd1}};
assign or_ln24_8_fu_1240_p5 = {{{{tmp_11_reg_1783}, {1'd1}}, {tmp_13_fu_1231_p4}}, {2'd3}};
assign or_ln24_9_fu_1313_p7 = {{{{{{tmp_11_reg_1783}, {1'd1}}, {tmp_67_fu_1306_p3}}, {1'd1}}, {tmp_65_reg_1759}}, {1'd1}};
assign or_ln24_s_fu_579_p3 = {{tmp_s_fu_569_p4}, {1'd1}};
assign or_ln2_fu_522_p3 = {{lshr_ln1_fu_488_p4}, {1'd1}};
assign or_ln3_fu_653_p3 = {{tmp_7_fu_644_p4}, {2'd3}};
assign p_shl_fu_540_p3 = {{lshr_ln1_fu_488_p4}, {8'd128}};
assign sext_ln24_10_fu_921_p1 = $signed(add_ln24_12_fu_916_p2);
assign sext_ln24_11_fu_974_p1 = $signed(sub_ln24_7_fu_968_p2);
assign sext_ln24_12_fu_994_p1 = $signed(add_ln24_15_fu_989_p2);
assign sext_ln24_13_fu_1039_p1 = $signed(sub_ln24_8_fu_1033_p2);
assign sext_ln24_14_fu_1059_p1 = $signed(add_ln24_18_fu_1054_p2);
assign sext_ln24_15_fu_1101_p1 = $signed(sub_ln24_9_fu_1095_p2);
assign sext_ln24_16_fu_1121_p1 = $signed(add_ln24_21_fu_1116_p2);
assign sext_ln24_17_fu_1186_p1 = $signed(sub_ln24_10_fu_1180_p2);
assign sext_ln24_18_fu_1206_p1 = $signed(add_ln24_24_fu_1201_p2);
assign sext_ln24_19_fu_1261_p1 = $signed(sub_ln24_11_fu_1255_p2);
assign sext_ln24_1_fu_597_p1 = $signed(sub_ln24_1_fu_591_p2);
assign sext_ln24_20_fu_1281_p1 = $signed(add_ln24_27_fu_1276_p2);
assign sext_ln24_21_fu_1337_p1 = $signed(sub_ln24_12_fu_1331_p2);
assign sext_ln24_22_fu_1357_p1 = $signed(add_ln24_30_fu_1352_p2);
assign sext_ln24_23_fu_1402_p1 = $signed(sub_ln24_13_fu_1396_p2);
assign sext_ln24_24_fu_1422_p1 = $signed(add_ln24_33_fu_1417_p2);
assign sext_ln24_25_fu_1467_p1 = $signed(sub_ln24_14_fu_1461_p2);
assign sext_ln24_26_fu_1487_p1 = $signed(add_ln24_36_fu_1482_p2);
assign sext_ln24_27_fu_1532_p1 = $signed(sub_ln24_15_fu_1526_p2);
assign sext_ln24_28_fu_1552_p1 = $signed(add_ln24_39_fu_1547_p2);
assign sext_ln24_29_fu_1597_p1 = $signed(sub_ln24_16_fu_1591_p2);
assign sext_ln24_2_fu_619_p1 = sub_ln24_2_fu_613_p2;
assign sext_ln24_30_fu_1617_p1 = $signed(add_ln24_42_fu_1612_p2);
assign sext_ln24_31_fu_1668_p1 = $signed(sub_ln24_17_fu_1662_p2);
assign sext_ln24_3_fu_671_p1 = $signed(sub_ln24_3_fu_665_p2);
assign sext_ln24_4_fu_691_p1 = $signed(add_ln24_3_fu_686_p2);
assign sext_ln24_5_fu_754_p1 = $signed(sub_ln24_4_fu_748_p2);
assign sext_ln24_6_fu_774_p1 = $signed(add_ln24_6_fu_769_p2);
assign sext_ln24_7_fu_816_p1 = $signed(sub_ln24_5_fu_810_p2);
assign sext_ln24_8_fu_836_p1 = $signed(add_ln24_9_fu_831_p2);
assign sext_ln24_9_fu_901_p1 = $signed(sub_ln24_6_fu_895_p2);
assign sext_ln24_fu_517_p1 = $signed(sub_ln24_fu_511_p2);
assign sub_ln24_10_fu_1180_p2 = (8'd0 - zext_ln24_27_fu_1176_p1);
assign sub_ln24_11_fu_1255_p2 = (8'd0 - zext_ln24_30_fu_1251_p1);
assign sub_ln24_12_fu_1331_p2 = (8'd0 - zext_ln24_33_fu_1327_p1);
assign sub_ln24_13_fu_1396_p2 = (8'd0 - zext_ln24_36_fu_1392_p1);
assign sub_ln24_14_fu_1461_p2 = (8'd0 - zext_ln24_39_fu_1457_p1);
assign sub_ln24_15_fu_1526_p2 = (8'd0 - zext_ln24_42_fu_1522_p1);
assign sub_ln24_16_fu_1591_p2 = (8'd0 - zext_ln24_45_fu_1587_p1);
assign sub_ln24_17_fu_1662_p2 = (8'd0 - zext_ln24_48_fu_1658_p1);
assign sub_ln24_1_fu_591_p2 = (8'd0 - zext_ln24_3_fu_587_p1);
assign sub_ln24_2_fu_613_p2 = ($signed(8'd254) - $signed(ap_sig_allocacmp_b_idx_26));
assign sub_ln24_3_fu_665_p2 = (8'd0 - zext_ln24_6_fu_661_p1);
assign sub_ln24_4_fu_748_p2 = (8'd0 - zext_ln24_9_fu_744_p1);
assign sub_ln24_5_fu_810_p2 = (8'd0 - zext_ln24_12_fu_806_p1);
assign sub_ln24_6_fu_895_p2 = (8'd0 - zext_ln24_15_fu_891_p1);
assign sub_ln24_7_fu_968_p2 = (8'd0 - zext_ln24_18_fu_964_p1);
assign sub_ln24_8_fu_1033_p2 = (8'd0 - zext_ln24_21_fu_1029_p1);
assign sub_ln24_9_fu_1095_p2 = (8'd0 - zext_ln24_24_fu_1091_p1);
assign sub_ln24_fu_511_p2 = (8'd0 - ap_sig_allocacmp_b_idx_26);
assign tmp_10_fu_870_p4 = {{b_idx_26_reg_1680[2:1]}};
assign tmp_11_fu_1146_p4 = {{b_idx_26_reg_1680[6:5]}};
assign tmp_12_fu_1155_p4 = {{b_idx_26_reg_1680[3:1]}};
assign tmp_13_fu_1231_p4 = {{b_idx_26_reg_1680[3:2]}};
assign tmp_65_fu_725_p3 = b_idx_26_reg_1680[32'd1];
assign tmp_66_fu_946_p3 = b_idx_26_reg_1680[32'd2];
assign tmp_67_fu_1306_p3 = b_idx_26_reg_1680[32'd3];
assign tmp_7_fu_644_p4 = {{b_idx_26_reg_1680[6:2]}};
assign tmp_8_fu_716_p4 = {{b_idx_26_reg_1680[6:3]}};
assign tmp_9_fu_861_p4 = {{b_idx_26_reg_1680[6:4]}};
assign tmp_fu_498_p3 = {{lshr_ln1_fu_488_p4}, {lshr_ln1_fu_488_p4}};
assign tmp_s_fu_569_p4 = {{ap_sig_allocacmp_b_idx_26[6:1]}};
assign zext_ln24_10_fu_764_p1 = add_ln24_5_fu_759_p2;
assign zext_ln24_11_fu_794_p1 = lshr_ln24_4_fu_784_p4;
assign zext_ln24_12_fu_806_p1 = or_ln24_2_fu_799_p3;
assign zext_ln24_13_fu_826_p1 = add_ln24_8_fu_821_p2;
assign zext_ln24_14_fu_856_p1 = lshr_ln24_5_fu_846_p4;
assign zext_ln24_15_fu_891_p1 = or_ln24_3_fu_879_p5;
assign zext_ln24_16_fu_911_p1 = add_ln24_11_fu_906_p2;
assign zext_ln24_17_fu_941_p1 = lshr_ln24_6_fu_931_p4;
assign zext_ln24_18_fu_964_p1 = or_ln24_4_fu_953_p5;
assign zext_ln24_19_fu_984_p1 = add_ln24_14_fu_979_p2;
assign zext_ln24_1_fu_536_p1 = or_ln2_fu_522_p3;
assign zext_ln24_20_fu_1014_p1 = lshr_ln24_7_fu_1004_p4;
assign zext_ln24_21_fu_1029_p1 = or_ln24_5_fu_1019_p5;
assign zext_ln24_22_fu_1049_p1 = add_ln24_17_fu_1044_p2;
assign zext_ln24_23_fu_1079_p1 = lshr_ln24_8_fu_1069_p4;
assign zext_ln24_24_fu_1091_p1 = or_ln24_6_fu_1084_p3;
assign zext_ln24_25_fu_1111_p1 = add_ln24_20_fu_1106_p2;
assign zext_ln24_26_fu_1141_p1 = lshr_ln24_9_fu_1131_p4;
assign zext_ln24_27_fu_1176_p1 = or_ln24_7_fu_1164_p5;
assign zext_ln24_28_fu_1196_p1 = add_ln24_23_fu_1191_p2;
assign zext_ln24_29_fu_1226_p1 = lshr_ln24_s_fu_1216_p4;
assign zext_ln24_2_fu_564_p1 = lshr_ln24_1_fu_554_p4;
assign zext_ln24_30_fu_1251_p1 = or_ln24_8_fu_1240_p5;
assign zext_ln24_31_fu_1271_p1 = add_ln24_26_fu_1266_p2;
assign zext_ln24_32_fu_1301_p1 = lshr_ln24_10_fu_1291_p4;
assign zext_ln24_33_fu_1327_p1 = or_ln24_9_fu_1313_p7;
assign zext_ln24_34_fu_1347_p1 = add_ln24_29_fu_1342_p2;
assign zext_ln24_35_fu_1377_p1 = lshr_ln24_11_fu_1367_p4;
assign zext_ln24_36_fu_1392_p1 = or_ln24_10_fu_1382_p5;
assign zext_ln24_37_fu_1412_p1 = add_ln24_32_fu_1407_p2;
assign zext_ln24_38_fu_1442_p1 = lshr_ln24_12_fu_1432_p4;
assign zext_ln24_39_fu_1457_p1 = or_ln24_11_fu_1447_p5;
assign zext_ln24_3_fu_587_p1 = or_ln24_s_fu_579_p3;
assign zext_ln24_40_fu_1477_p1 = add_ln24_35_fu_1472_p2;
assign zext_ln24_41_fu_1507_p1 = lshr_ln24_13_fu_1497_p4;
assign zext_ln24_42_fu_1522_p1 = or_ln24_12_fu_1512_p5;
assign zext_ln24_43_fu_1542_p1 = add_ln24_38_fu_1537_p2;
assign zext_ln24_44_fu_1572_p1 = lshr_ln24_14_fu_1562_p4;
assign zext_ln24_45_fu_1587_p1 = or_ln24_13_fu_1577_p5;
assign zext_ln24_46_fu_1607_p1 = add_ln24_41_fu_1602_p2;
assign zext_ln24_47_fu_1647_p1 = lshr_ln24_15_reg_1799;
assign zext_ln24_48_fu_1658_p1 = or_ln24_14_fu_1651_p3;
assign zext_ln24_4_fu_608_p1 = add_ln24_fu_602_p2;
assign zext_ln24_5_fu_639_p1 = lshr_ln24_2_fu_629_p4;
assign zext_ln24_6_fu_661_p1 = or_ln3_fu_653_p3;
assign zext_ln24_7_fu_681_p1 = add_ln24_2_fu_676_p2;
assign zext_ln24_8_fu_711_p1 = lshr_ln24_3_fu_701_p4;
assign zext_ln24_9_fu_744_p1 = or_ln24_1_fu_732_p5;
assign zext_ln24_fu_506_p1 = tmp_fu_498_p3;
always @ (posedge ap_clk) begin
    add_ln24_44_reg_1717[0] <= 1'b1;
end
endmodule 
