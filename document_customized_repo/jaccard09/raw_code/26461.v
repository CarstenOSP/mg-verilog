module needwun_needwun_Pipeline_init_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_3_address0,M_3_ce0,M_3_we0,M_3_d0,M_3_address1,M_3_ce1,M_3_we1,M_3_d1,M_2_address0,M_2_ce0,M_2_we0,M_2_d0,M_2_address1,M_2_ce1,M_2_we1,M_2_d1,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_address1,M_1_ce1,M_1_we1,M_1_d1,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_address1,M_0_ce1,M_0_we1,M_0_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] M_3_address0;
output   M_3_ce0;
output   M_3_we0;
output  [31:0] M_3_d0;
output  [12:0] M_3_address1;
output   M_3_ce1;
output   M_3_we1;
output  [31:0] M_3_d1;
output  [12:0] M_2_address0;
output   M_2_ce0;
output   M_2_we0;
output  [31:0] M_2_d0;
output  [12:0] M_2_address1;
output   M_2_ce1;
output   M_2_we1;
output  [31:0] M_2_d1;
output  [12:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
output  [12:0] M_1_address1;
output   M_1_ce1;
output   M_1_we1;
output  [31:0] M_1_d1;
output  [12:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
output  [12:0] M_0_address1;
output   M_0_ce1;
output   M_0_we1;
output  [31:0] M_0_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln23_fu_558_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [7:0] b_idx_8_reg_1904;
wire    ap_block_pp0_stage0_11001;
wire   [12:0] tmp_fu_514_p4;
reg   [12:0] tmp_reg_1919;
reg   [0:0] icmp_ln23_reg_1929;
wire   [14:0] add_ln24_36_fu_576_p2;
reg   [14:0] add_ln24_36_reg_1933;
wire  signed [7:0] sub_ln24_4_fu_641_p2;
reg  signed [7:0] sub_ln24_4_reg_1960;
wire   [0:0] tmp_65_fu_776_p3;
reg   [0:0] tmp_65_reg_1970;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [2:0] tmp_14_fu_936_p4;
reg   [2:0] tmp_14_reg_1977;
wire   [1:0] tmp_15_fu_945_p4;
reg   [1:0] tmp_15_reg_1986;
wire   [0:0] tmp_67_fu_1021_p3;
reg   [0:0] tmp_67_reg_1991;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [1:0] tmp_16_fu_1269_p4;
reg   [1:0] tmp_16_reg_1997;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln24_fu_524_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln24_2_fu_592_p1;
wire   [63:0] zext_ln24_8_fu_636_p1;
wire   [63:0] zext_ln24_4_fu_667_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln24_6_fu_719_p1;
wire   [63:0] zext_ln24_9_fu_762_p1;
wire   [63:0] zext_ln24_11_fu_825_p1;
wire   [63:0] zext_ln24_13_fu_868_p1;
wire   [63:0] zext_ln24_15_fu_901_p1;
wire   [63:0] zext_ln24_16_fu_931_p1;
wire   [63:0] zext_ln24_22_fu_986_p1;
wire   [63:0] zext_ln24_18_fu_1016_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln24_20_fu_1069_p1;
wire   [63:0] zext_ln24_23_fu_1115_p1;
wire   [63:0] zext_ln24_25_fu_1160_p1;
wire   [63:0] zext_ln24_27_fu_1202_p1;
wire   [63:0] zext_ln24_29_fu_1234_p1;
wire   [63:0] zext_ln24_30_fu_1264_p1;
wire   [63:0] zext_ln24_36_fu_1319_p1;
wire   [63:0] zext_ln24_32_fu_1349_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln24_34_fu_1404_p1;
wire   [63:0] zext_ln24_37_fu_1450_p1;
wire   [63:0] zext_ln24_39_fu_1506_p1;
wire   [63:0] zext_ln24_41_fu_1552_p1;
wire   [63:0] zext_ln24_43_fu_1588_p1;
wire   [63:0] zext_ln24_44_fu_1618_p1;
wire   [63:0] zext_ln24_50_fu_1653_p1;
wire   [63:0] zext_ln24_46_fu_1693_p1;
wire   [63:0] zext_ln24_48_fu_1738_p1;
wire   [63:0] zext_ln24_51_fu_1783_p1;
wire   [63:0] zext_ln24_53_fu_1828_p1;
wire   [63:0] zext_ln24_55_fu_1870_p1;
reg   [7:0] b_idx_fu_200;
wire   [7:0] add_ln23_fu_1668_p2;
wire    ap_block_pp0_stage3_11001;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_b_idx_8;
reg    M_0_we1_local;
reg   [31:0] M_0_d1_local;
wire  signed [31:0] sext_ln24_fu_535_p1;
reg    M_0_ce1_local;
reg   [12:0] M_0_address1_local;
reg    M_0_we0_local;
reg   [31:0] M_0_d0_local;
wire  signed [31:0] sext_ln24_4_fu_647_p1;
reg    M_0_ce0_local;
reg   [12:0] M_0_address0_local;
wire  signed [31:0] sext_ln24_8_fu_911_p1;
wire  signed [31:0] sext_ln24_12_fu_996_p1;
wire  signed [31:0] sext_ln24_16_fu_1244_p1;
wire  signed [31:0] sext_ln24_20_fu_1329_p1;
wire  signed [31:0] sext_ln24_24_fu_1598_p1;
wire  signed [31:0] sext_ln24_28_fu_1663_p1;
reg    M_1_we1_local;
reg   [31:0] M_1_d1_local;
wire  signed [31:0] sext_ln24_1_fu_625_p1;
reg    M_1_ce1_local;
reg   [12:0] M_1_address1_local;
wire  signed [31:0] sext_ln24_5_fu_805_p1;
reg    M_1_we0_local;
reg   [31:0] M_1_d0_local;
wire  signed [31:0] sext_ln24_9_fu_976_p1;
reg    M_1_ce0_local;
reg   [12:0] M_1_address0_local;
wire  signed [31:0] sext_ln24_13_fu_1140_p1;
wire  signed [31:0] sext_ln24_17_fu_1309_p1;
wire  signed [31:0] sext_ln24_21_fu_1486_p1;
wire  signed [31:0] sext_ln24_25_fu_1643_p1;
wire  signed [31:0] sext_ln24_29_fu_1808_p1;
reg    M_2_we1_local;
reg   [31:0] M_2_d1_local;
wire  signed [31:0] sext_ln24_2_fu_699_p1;
reg    M_2_ce1_local;
reg   [12:0] M_2_address1_local;
reg    M_2_we0_local;
reg   [31:0] M_2_d0_local;
wire  signed [31:0] sext_ln24_6_fu_848_p1;
reg    M_2_ce0_local;
reg   [12:0] M_2_address0_local;
wire  signed [31:0] sext_ln24_10_fu_1049_p1;
wire  signed [31:0] sext_ln24_14_fu_1182_p1;
wire  signed [31:0] sext_ln24_18_fu_1384_p1;
wire  signed [31:0] sext_ln24_22_fu_1532_p1;
wire  signed [31:0] sext_ln24_26_fu_1718_p1;
wire  signed [31:0] sext_ln24_30_fu_1850_p1;
reg    M_3_we1_local;
reg   [31:0] M_3_d1_local;
wire  signed [31:0] sext_ln24_3_fu_742_p1;
reg    M_3_ce1_local;
reg   [12:0] M_3_address1_local;
reg    M_3_we0_local;
reg   [31:0] M_3_d0_local;
wire  signed [31:0] sext_ln24_7_fu_891_p1;
reg    M_3_ce0_local;
reg   [12:0] M_3_address0_local;
wire  signed [31:0] sext_ln24_11_fu_1095_p1;
wire  signed [31:0] sext_ln24_15_fu_1224_p1;
wire  signed [31:0] sext_ln24_19_fu_1430_p1;
wire  signed [31:0] sext_ln24_23_fu_1578_p1;
wire  signed [31:0] sext_ln24_27_fu_1763_p1;
wire  signed [31:0] sext_ln24_31_fu_1892_p1;
wire   [5:0] lshr_ln1_fu_504_p4;
wire   [7:0] sub_ln24_fu_529_p2;
wire   [6:0] tmp_s_fu_540_p4;
wire   [7:0] or_ln2_fu_550_p3;
wire   [14:0] p_shl_fu_568_p3;
wire   [14:0] zext_ln24_1_fu_564_p1;
wire   [12:0] lshr_ln24_1_fu_582_p4;
wire   [5:0] tmp_11_fu_597_p4;
wire   [6:0] or_ln24_s_fu_607_p3;
wire   [7:0] zext_ln24_3_fu_615_p1;
wire   [7:0] sub_ln24_1_fu_619_p2;
wire   [12:0] add_ln24_2_fu_630_p2;
wire   [14:0] add_ln24_fu_652_p2;
wire   [12:0] lshr_ln24_2_fu_657_p4;
wire   [4:0] tmp_12_fu_672_p4;
wire   [6:0] or_ln3_fu_681_p3;
wire   [7:0] zext_ln24_5_fu_689_p1;
wire   [7:0] sub_ln24_2_fu_693_p2;
wire   [14:0] add_ln24_1_fu_704_p2;
wire   [12:0] lshr_ln24_3_fu_709_p4;
wire   [6:0] or_ln24_1_fu_724_p3;
wire   [7:0] zext_ln24_7_fu_732_p1;
wire   [7:0] sub_ln24_3_fu_736_p2;
wire   [14:0] add_ln24_3_fu_747_p2;
wire   [12:0] lshr_ln24_4_fu_752_p4;
wire   [3:0] tmp_13_fu_767_p4;
wire   [6:0] or_ln24_2_fu_783_p5;
wire   [7:0] zext_ln24_10_fu_795_p1;
wire   [7:0] sub_ln24_5_fu_799_p2;
wire   [14:0] add_ln24_4_fu_810_p2;
wire   [12:0] lshr_ln24_5_fu_815_p4;
wire   [6:0] or_ln24_3_fu_830_p3;
wire   [7:0] zext_ln24_12_fu_838_p1;
wire   [7:0] sub_ln24_6_fu_842_p2;
wire   [14:0] add_ln24_5_fu_853_p2;
wire   [12:0] lshr_ln24_6_fu_858_p4;
wire   [6:0] or_ln24_4_fu_873_p3;
wire   [7:0] zext_ln24_14_fu_881_p1;
wire   [7:0] sub_ln24_7_fu_885_p2;
wire   [12:0] add_ln24_6_fu_896_p2;
wire   [7:0] add_ln24_7_fu_906_p2;
wire   [14:0] add_ln24_8_fu_916_p2;
wire   [12:0] lshr_ln24_7_fu_921_p4;
wire   [6:0] or_ln24_5_fu_954_p5;
wire   [7:0] zext_ln24_17_fu_966_p1;
wire   [7:0] sub_ln24_8_fu_970_p2;
wire   [12:0] add_ln24_11_fu_981_p2;
wire   [7:0] add_ln24_12_fu_991_p2;
wire   [14:0] add_ln24_9_fu_1001_p2;
wire   [12:0] lshr_ln24_8_fu_1006_p4;
wire   [6:0] or_ln24_6_fu_1028_p5;
wire   [7:0] zext_ln24_19_fu_1039_p1;
wire   [7:0] sub_ln24_9_fu_1043_p2;
wire   [14:0] add_ln24_10_fu_1054_p2;
wire   [12:0] lshr_ln24_9_fu_1059_p4;
wire   [6:0] or_ln24_7_fu_1074_p5;
wire   [7:0] zext_ln24_21_fu_1085_p1;
wire   [7:0] sub_ln24_10_fu_1089_p2;
wire   [14:0] add_ln24_13_fu_1100_p2;
wire   [12:0] lshr_ln24_s_fu_1105_p4;
wire   [6:0] or_ln24_8_fu_1120_p5;
wire   [7:0] zext_ln24_24_fu_1130_p1;
wire   [7:0] sub_ln24_11_fu_1134_p2;
wire   [14:0] add_ln24_14_fu_1145_p2;
wire   [12:0] lshr_ln24_10_fu_1150_p4;
wire   [6:0] or_ln24_9_fu_1165_p3;
wire   [7:0] zext_ln24_26_fu_1172_p1;
wire   [7:0] sub_ln24_12_fu_1176_p2;
wire   [14:0] add_ln24_15_fu_1187_p2;
wire   [12:0] lshr_ln24_11_fu_1192_p4;
wire   [6:0] or_ln24_10_fu_1207_p3;
wire   [7:0] zext_ln24_28_fu_1214_p1;
wire   [7:0] sub_ln24_13_fu_1218_p2;
wire   [12:0] add_ln24_16_fu_1229_p2;
wire   [7:0] add_ln24_17_fu_1239_p2;
wire   [14:0] add_ln24_18_fu_1249_p2;
wire   [12:0] lshr_ln24_12_fu_1254_p4;
wire   [2:0] tmp_17_fu_1278_p4;
wire   [6:0] or_ln24_11_fu_1287_p5;
wire   [7:0] zext_ln24_31_fu_1299_p1;
wire   [7:0] sub_ln24_14_fu_1303_p2;
wire   [12:0] add_ln24_21_fu_1314_p2;
wire   [7:0] add_ln24_22_fu_1324_p2;
wire   [14:0] add_ln24_19_fu_1334_p2;
wire   [12:0] lshr_ln24_13_fu_1339_p4;
wire   [1:0] tmp_18_fu_1354_p4;
wire   [6:0] or_ln24_12_fu_1363_p5;
wire   [7:0] zext_ln24_33_fu_1374_p1;
wire   [7:0] sub_ln24_15_fu_1378_p2;
wire   [14:0] add_ln24_20_fu_1389_p2;
wire   [12:0] lshr_ln24_14_fu_1394_p4;
wire   [6:0] or_ln24_13_fu_1409_p5;
wire   [7:0] zext_ln24_35_fu_1420_p1;
wire   [7:0] sub_ln24_16_fu_1424_p2;
wire   [14:0] add_ln24_23_fu_1435_p2;
wire   [12:0] lshr_ln24_15_fu_1440_p4;
wire   [0:0] tmp_68_fu_1455_p3;
wire   [6:0] or_ln24_14_fu_1462_p7;
wire   [7:0] zext_ln24_38_fu_1476_p1;
wire   [7:0] sub_ln24_17_fu_1480_p2;
wire   [14:0] add_ln24_24_fu_1491_p2;
wire   [12:0] lshr_ln24_16_fu_1496_p4;
wire   [6:0] or_ln24_15_fu_1511_p5;
wire   [7:0] zext_ln24_40_fu_1522_p1;
wire   [7:0] sub_ln24_18_fu_1526_p2;
wire   [14:0] add_ln24_25_fu_1537_p2;
wire   [12:0] lshr_ln24_17_fu_1542_p4;
wire   [6:0] or_ln24_16_fu_1557_p5;
wire   [7:0] zext_ln24_42_fu_1568_p1;
wire   [7:0] sub_ln24_19_fu_1572_p2;
wire   [12:0] add_ln24_26_fu_1583_p2;
wire   [7:0] add_ln24_27_fu_1593_p2;
wire   [14:0] add_ln24_28_fu_1603_p2;
wire   [12:0] lshr_ln24_18_fu_1608_p4;
wire   [6:0] or_ln24_17_fu_1623_p5;
wire   [7:0] zext_ln24_45_fu_1633_p1;
wire   [7:0] sub_ln24_20_fu_1637_p2;
wire   [12:0] add_ln24_31_fu_1648_p2;
wire   [7:0] add_ln24_32_fu_1658_p2;
wire   [14:0] add_ln24_29_fu_1678_p2;
wire   [12:0] lshr_ln24_19_fu_1683_p4;
wire   [6:0] or_ln24_18_fu_1698_p5;
wire   [7:0] zext_ln24_47_fu_1708_p1;
wire   [7:0] sub_ln24_21_fu_1712_p2;
wire   [14:0] add_ln24_30_fu_1723_p2;
wire   [12:0] lshr_ln24_20_fu_1728_p4;
wire   [6:0] or_ln24_19_fu_1743_p5;
wire   [7:0] zext_ln24_49_fu_1753_p1;
wire   [7:0] sub_ln24_22_fu_1757_p2;
wire   [14:0] add_ln24_33_fu_1768_p2;
wire   [12:0] lshr_ln24_21_fu_1773_p4;
wire   [6:0] or_ln24_20_fu_1788_p5;
wire   [7:0] zext_ln24_52_fu_1798_p1;
wire   [7:0] sub_ln24_23_fu_1802_p2;
wire   [14:0] add_ln24_34_fu_1813_p2;
wire   [12:0] lshr_ln24_22_fu_1818_p4;
wire   [6:0] or_ln24_21_fu_1833_p3;
wire   [7:0] zext_ln24_54_fu_1840_p1;
wire   [7:0] sub_ln24_24_fu_1844_p2;
wire   [14:0] add_ln24_35_fu_1855_p2;
wire   [12:0] lshr_ln24_23_fu_1860_p4;
wire   [6:0] or_ln24_22_fu_1875_p3;
wire   [7:0] zext_ln24_56_fu_1882_p1;
wire   [7:0] sub_ln24_25_fu_1886_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 b_idx_fu_200 = 8'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_idx_fu_200 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln23_reg_1929 == 1'd1))) begin
        b_idx_fu_200 <= add_ln23_fu_1668_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln24_36_reg_1933[14 : 1] <= add_ln24_36_fu_576_p2[14 : 1];
        b_idx_8_reg_1904 <= ap_sig_allocacmp_b_idx_8;
        icmp_ln23_reg_1929 <= icmp_ln23_fu_558_p2;
        sub_ln24_4_reg_1960 <= sub_ln24_4_fu_641_p2;
        tmp_reg_1919[5 : 0] <= tmp_fu_514_p4[5 : 0];
tmp_reg_1919[12 : 7] <= tmp_fu_514_p4[12 : 7];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_14_reg_1977 <= {{b_idx_8_reg_1904[6:4]}};
        tmp_15_reg_1986 <= {{b_idx_8_reg_1904[2:1]}};
        tmp_65_reg_1970 <= b_idx_8_reg_1904[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_16_reg_1997 <= {{b_idx_8_reg_1904[6:5]}};
        tmp_67_reg_1991 <= b_idx_8_reg_1904[32'd2];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_address0_local = zext_ln24_50_fu_1653_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_address0_local = zext_ln24_36_fu_1319_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address0_local = zext_ln24_22_fu_986_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address0_local = zext_ln24_8_fu_636_p1;
        end else begin
            M_0_address0_local = 'bx;
        end
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_address1_local = zext_ln24_43_fu_1588_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_address1_local = zext_ln24_29_fu_1234_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address1_local = zext_ln24_15_fu_901_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address1_local = zext_ln24_fu_524_p1;
        end else begin
            M_0_address1_local = 'bx;
        end
    end else begin
        M_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_d0_local = sext_ln24_28_fu_1663_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_d0_local = sext_ln24_20_fu_1329_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d0_local = sext_ln24_12_fu_996_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d0_local = sext_ln24_4_fu_647_p1;
        end else begin
            M_0_d0_local = 'bx;
        end
    end else begin
        M_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_d1_local = sext_ln24_24_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_d1_local = sext_ln24_16_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d1_local = sext_ln24_8_fu_911_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d1_local = sext_ln24_fu_535_p1;
        end else begin
            M_0_d1_local = 'bx;
        end
    end else begin
        M_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln23_reg_1929 == 1'd1)) | ((icmp_ln23_fu_558_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1929 == 1'd1)))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_we1_local = 1'b1;
    end else begin
        M_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_address0_local = zext_ln24_51_fu_1783_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_1_address0_local = zext_ln24_44_fu_1618_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln24_30_fu_1264_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln24_16_fu_931_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_1_address1_local = zext_ln24_37_fu_1450_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_1_address1_local = zext_ln24_23_fu_1115_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_address1_local = zext_ln24_9_fu_762_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_address1_local = zext_ln24_2_fu_592_p1;
        end else begin
            M_1_address1_local = 'bx;
        end
    end else begin
        M_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_d0_local = sext_ln24_29_fu_1808_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_1_d0_local = sext_ln24_25_fu_1643_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_d0_local = sext_ln24_17_fu_1309_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_d0_local = sext_ln24_9_fu_976_p1;
    end else begin
        M_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_1_d1_local = sext_ln24_21_fu_1486_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_1_d1_local = sext_ln24_13_fu_1140_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_d1_local = sext_ln24_5_fu_805_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_d1_local = sext_ln24_1_fu_625_p1;
        end else begin
            M_1_d1_local = 'bx;
        end
    end else begin
        M_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln23_reg_1929 == 1'd1)) | ((icmp_ln23_fu_558_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1929 == 1'd1)))) begin
        M_1_we1_local = 1'b1;
    end else begin
        M_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_address0_local = zext_ln24_53_fu_1828_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_2_address0_local = zext_ln24_39_fu_1506_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_2_address0_local = zext_ln24_25_fu_1160_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_address0_local = zext_ln24_11_fu_825_p1;
    end else begin
        M_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_address1_local = zext_ln24_46_fu_1693_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_2_address1_local = zext_ln24_32_fu_1349_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_2_address1_local = zext_ln24_18_fu_1016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_address1_local = zext_ln24_4_fu_667_p1;
    end else begin
        M_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_ce0_local = 1'b1;
    end else begin
        M_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_ce1_local = 1'b1;
    end else begin
        M_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_d0_local = sext_ln24_30_fu_1850_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_2_d0_local = sext_ln24_22_fu_1532_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_2_d0_local = sext_ln24_14_fu_1182_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_d0_local = sext_ln24_6_fu_848_p1;
    end else begin
        M_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_d1_local = sext_ln24_26_fu_1718_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_2_d1_local = sext_ln24_18_fu_1384_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_2_d1_local = sext_ln24_10_fu_1049_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_d1_local = sext_ln24_2_fu_699_p1;
    end else begin
        M_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_we0_local = 1'b1;
    end else begin
        M_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_we1_local = 1'b1;
    end else begin
        M_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_address0_local = zext_ln24_55_fu_1870_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_3_address0_local = zext_ln24_41_fu_1552_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_3_address0_local = zext_ln24_27_fu_1202_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_address0_local = zext_ln24_13_fu_868_p1;
    end else begin
        M_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_address1_local = zext_ln24_48_fu_1738_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_3_address1_local = zext_ln24_34_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_3_address1_local = zext_ln24_20_fu_1069_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_address1_local = zext_ln24_6_fu_719_p1;
    end else begin
        M_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_ce0_local = 1'b1;
    end else begin
        M_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_ce1_local = 1'b1;
    end else begin
        M_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_d0_local = sext_ln24_31_fu_1892_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_3_d0_local = sext_ln24_23_fu_1578_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_3_d0_local = sext_ln24_15_fu_1224_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_d0_local = sext_ln24_7_fu_891_p1;
    end else begin
        M_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_d1_local = sext_ln24_27_fu_1763_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_3_d1_local = sext_ln24_19_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_3_d1_local = sext_ln24_11_fu_1095_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_d1_local = sext_ln24_3_fu_742_p1;
    end else begin
        M_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_we0_local = 1'b1;
    end else begin
        M_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1929 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_we1_local = 1'b1;
    end else begin
        M_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_558_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_b_idx_8 = 8'd0;
    end else begin
        ap_sig_allocacmp_b_idx_8 = b_idx_fu_200;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
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
assign M_2_address0 = M_2_address0_local;
assign M_2_address1 = M_2_address1_local;
assign M_2_ce0 = M_2_ce0_local;
assign M_2_ce1 = M_2_ce1_local;
assign M_2_d0 = M_2_d0_local;
assign M_2_d1 = M_2_d1_local;
assign M_2_we0 = M_2_we0_local;
assign M_2_we1 = M_2_we1_local;
assign M_3_address0 = M_3_address0_local;
assign M_3_address1 = M_3_address1_local;
assign M_3_ce0 = M_3_ce0_local;
assign M_3_ce1 = M_3_ce1_local;
assign M_3_d0 = M_3_d0_local;
assign M_3_d1 = M_3_d1_local;
assign M_3_we0 = M_3_we0_local;
assign M_3_we1 = M_3_we1_local;
assign add_ln23_fu_1668_p2 = (b_idx_8_reg_1904 + 8'd32);
assign add_ln24_10_fu_1054_p2 = (add_ln24_36_reg_1933 + 15'd1290);
assign add_ln24_11_fu_981_p2 = (tmp_reg_1919 + 13'd387);
assign add_ln24_12_fu_991_p2 = ($signed(sub_ln24_4_reg_1960) + $signed(8'd248));
assign add_ln24_13_fu_1100_p2 = (add_ln24_36_reg_1933 + 15'd1548);
assign add_ln24_14_fu_1145_p2 = (add_ln24_36_reg_1933 + 15'd1677);
assign add_ln24_15_fu_1187_p2 = (add_ln24_36_reg_1933 + 15'd1806);
assign add_ln24_16_fu_1229_p2 = (tmp_reg_1919 + 13'd516);
assign add_ln24_17_fu_1239_p2 = ($signed(sub_ln24_4_reg_1960) + $signed(8'd244));
assign add_ln24_18_fu_1249_p2 = (add_ln24_36_reg_1933 + 15'd2064);
assign add_ln24_19_fu_1334_p2 = (add_ln24_36_reg_1933 + 15'd2193);
assign add_ln24_1_fu_704_p2 = (add_ln24_36_reg_1933 + 15'd258);
assign add_ln24_20_fu_1389_p2 = (add_ln24_36_reg_1933 + 15'd2322);
assign add_ln24_21_fu_1314_p2 = (tmp_reg_1919 + 13'd645);
assign add_ln24_22_fu_1324_p2 = ($signed(sub_ln24_4_reg_1960) + $signed(8'd240));
assign add_ln24_23_fu_1435_p2 = (add_ln24_36_reg_1933 + 15'd2580);
assign add_ln24_24_fu_1491_p2 = (add_ln24_36_reg_1933 + 15'd2709);
assign add_ln24_25_fu_1537_p2 = (add_ln24_36_reg_1933 + 15'd2838);
assign add_ln24_26_fu_1583_p2 = (tmp_reg_1919 + 13'd774);
assign add_ln24_27_fu_1593_p2 = ($signed(sub_ln24_4_reg_1960) + $signed(8'd236));
assign add_ln24_28_fu_1603_p2 = (add_ln24_36_reg_1933 + 15'd3096);
assign add_ln24_29_fu_1678_p2 = (add_ln24_36_reg_1933 + 15'd3225);
assign add_ln24_2_fu_630_p2 = (tmp_fu_514_p4 + 13'd129);
assign add_ln24_30_fu_1723_p2 = (add_ln24_36_reg_1933 + 15'd3354);
assign add_ln24_31_fu_1648_p2 = (tmp_reg_1919 + 13'd903);
assign add_ln24_32_fu_1658_p2 = ($signed(sub_ln24_4_reg_1960) + $signed(8'd232));
assign add_ln24_33_fu_1768_p2 = (add_ln24_36_reg_1933 + 15'd3612);
assign add_ln24_34_fu_1813_p2 = (add_ln24_36_reg_1933 + 15'd3741);
assign add_ln24_35_fu_1855_p2 = (add_ln24_36_reg_1933 + 15'd3870);
assign add_ln24_36_fu_576_p2 = (p_shl_fu_568_p3 + zext_ln24_1_fu_564_p1);
assign add_ln24_3_fu_747_p2 = (add_ln24_36_reg_1933 + 15'd516);
assign add_ln24_4_fu_810_p2 = (add_ln24_36_reg_1933 + 15'd645);
assign add_ln24_5_fu_853_p2 = (add_ln24_36_reg_1933 + 15'd774);
assign add_ln24_6_fu_896_p2 = (tmp_reg_1919 + 13'd258);
assign add_ln24_7_fu_906_p2 = ($signed(sub_ln24_4_reg_1960) + $signed(8'd252));
assign add_ln24_8_fu_916_p2 = (add_ln24_36_reg_1933 + 15'd1032);
assign add_ln24_9_fu_1001_p2 = (add_ln24_36_reg_1933 + 15'd1161);
assign add_ln24_fu_652_p2 = (add_ln24_36_reg_1933 + 15'd129);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln23_fu_558_p2 = ((or_ln2_fu_550_p3 < 8'd129) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_504_p4 = {{ap_sig_allocacmp_b_idx_8[7:2]}};
assign lshr_ln24_10_fu_1150_p4 = {{add_ln24_14_fu_1145_p2[14:2]}};
assign lshr_ln24_11_fu_1192_p4 = {{add_ln24_15_fu_1187_p2[14:2]}};
assign lshr_ln24_12_fu_1254_p4 = {{add_ln24_18_fu_1249_p2[14:2]}};
assign lshr_ln24_13_fu_1339_p4 = {{add_ln24_19_fu_1334_p2[14:2]}};
assign lshr_ln24_14_fu_1394_p4 = {{add_ln24_20_fu_1389_p2[14:2]}};
assign lshr_ln24_15_fu_1440_p4 = {{add_ln24_23_fu_1435_p2[14:2]}};
assign lshr_ln24_16_fu_1496_p4 = {{add_ln24_24_fu_1491_p2[14:2]}};
assign lshr_ln24_17_fu_1542_p4 = {{add_ln24_25_fu_1537_p2[14:2]}};
assign lshr_ln24_18_fu_1608_p4 = {{add_ln24_28_fu_1603_p2[14:2]}};
assign lshr_ln24_19_fu_1683_p4 = {{add_ln24_29_fu_1678_p2[14:2]}};
assign lshr_ln24_1_fu_582_p4 = {{add_ln24_36_fu_576_p2[14:2]}};
assign lshr_ln24_20_fu_1728_p4 = {{add_ln24_30_fu_1723_p2[14:2]}};
assign lshr_ln24_21_fu_1773_p4 = {{add_ln24_33_fu_1768_p2[14:2]}};
assign lshr_ln24_22_fu_1818_p4 = {{add_ln24_34_fu_1813_p2[14:2]}};
assign lshr_ln24_23_fu_1860_p4 = {{add_ln24_35_fu_1855_p2[14:2]}};
assign lshr_ln24_2_fu_657_p4 = {{add_ln24_fu_652_p2[14:2]}};
assign lshr_ln24_3_fu_709_p4 = {{add_ln24_1_fu_704_p2[14:2]}};
assign lshr_ln24_4_fu_752_p4 = {{add_ln24_3_fu_747_p2[14:2]}};
assign lshr_ln24_5_fu_815_p4 = {{add_ln24_4_fu_810_p2[14:2]}};
assign lshr_ln24_6_fu_858_p4 = {{add_ln24_5_fu_853_p2[14:2]}};
assign lshr_ln24_7_fu_921_p4 = {{add_ln24_8_fu_916_p2[14:2]}};
assign lshr_ln24_8_fu_1006_p4 = {{add_ln24_9_fu_1001_p2[14:2]}};
assign lshr_ln24_9_fu_1059_p4 = {{add_ln24_10_fu_1054_p2[14:2]}};
assign lshr_ln24_s_fu_1105_p4 = {{add_ln24_13_fu_1100_p2[14:2]}};
assign or_ln24_10_fu_1207_p3 = {{tmp_14_reg_1977}, {4'd15}};
assign or_ln24_11_fu_1287_p5 = {{{{tmp_16_fu_1269_p4}, {1'd1}}, {tmp_17_fu_1278_p4}}, {1'd1}};
assign or_ln24_12_fu_1363_p5 = {{{{tmp_16_reg_1997}, {1'd1}}, {tmp_18_fu_1354_p4}}, {2'd2}};
assign or_ln24_13_fu_1409_p5 = {{{{tmp_16_reg_1997}, {1'd1}}, {tmp_18_fu_1354_p4}}, {2'd3}};
assign or_ln24_14_fu_1462_p7 = {{{{{{tmp_16_reg_1997}, {1'd1}}, {tmp_68_fu_1455_p3}}, {1'd1}}, {tmp_65_reg_1970}}, {1'd1}};
assign or_ln24_15_fu_1511_p5 = {{{{tmp_16_reg_1997}, {1'd1}}, {tmp_68_fu_1455_p3}}, {3'd6}};
assign or_ln24_16_fu_1557_p5 = {{{{tmp_16_reg_1997}, {1'd1}}, {tmp_68_fu_1455_p3}}, {3'd7}};
assign or_ln24_17_fu_1623_p5 = {{{{tmp_16_reg_1997}, {2'd3}}, {tmp_15_reg_1986}}, {1'd1}};
assign or_ln24_18_fu_1698_p5 = {{{{tmp_16_reg_1997}, {2'd3}}, {tmp_67_reg_1991}}, {2'd2}};
assign or_ln24_19_fu_1743_p5 = {{{{tmp_16_reg_1997}, {2'd3}}, {tmp_67_reg_1991}}, {2'd3}};
assign or_ln24_1_fu_724_p3 = {{tmp_12_fu_672_p4}, {2'd3}};
assign or_ln24_20_fu_1788_p5 = {{{{tmp_16_reg_1997}, {3'd7}}, {tmp_65_reg_1970}}, {1'd1}};
assign or_ln24_21_fu_1833_p3 = {{tmp_16_reg_1997}, {5'd30}};
assign or_ln24_22_fu_1875_p3 = {{tmp_16_reg_1997}, {5'd31}};
assign or_ln24_2_fu_783_p5 = {{{{tmp_13_fu_767_p4}, {1'd1}}, {tmp_65_fu_776_p3}}, {1'd1}};
assign or_ln24_3_fu_830_p3 = {{tmp_13_fu_767_p4}, {3'd6}};
assign or_ln24_4_fu_873_p3 = {{tmp_13_fu_767_p4}, {3'd7}};
assign or_ln24_5_fu_954_p5 = {{{{tmp_14_fu_936_p4}, {1'd1}}, {tmp_15_fu_945_p4}}, {1'd1}};
assign or_ln24_6_fu_1028_p5 = {{{{tmp_14_reg_1977}, {1'd1}}, {tmp_67_fu_1021_p3}}, {2'd2}};
assign or_ln24_7_fu_1074_p5 = {{{{tmp_14_reg_1977}, {1'd1}}, {tmp_67_fu_1021_p3}}, {2'd3}};
assign or_ln24_8_fu_1120_p5 = {{{{tmp_14_reg_1977}, {2'd3}}, {tmp_65_reg_1970}}, {1'd1}};
assign or_ln24_9_fu_1165_p3 = {{tmp_14_reg_1977}, {4'd14}};
assign or_ln24_s_fu_607_p3 = {{tmp_11_fu_597_p4}, {1'd1}};
assign or_ln2_fu_550_p3 = {{tmp_s_fu_540_p4}, {1'd1}};
assign or_ln3_fu_681_p3 = {{tmp_12_fu_672_p4}, {2'd2}};
assign p_shl_fu_568_p3 = {{tmp_s_fu_540_p4}, {8'd128}};
assign sext_ln24_10_fu_1049_p1 = $signed(sub_ln24_9_fu_1043_p2);
assign sext_ln24_11_fu_1095_p1 = $signed(sub_ln24_10_fu_1089_p2);
assign sext_ln24_12_fu_996_p1 = $signed(add_ln24_12_fu_991_p2);
assign sext_ln24_13_fu_1140_p1 = $signed(sub_ln24_11_fu_1134_p2);
assign sext_ln24_14_fu_1182_p1 = $signed(sub_ln24_12_fu_1176_p2);
assign sext_ln24_15_fu_1224_p1 = $signed(sub_ln24_13_fu_1218_p2);
assign sext_ln24_16_fu_1244_p1 = $signed(add_ln24_17_fu_1239_p2);
assign sext_ln24_17_fu_1309_p1 = $signed(sub_ln24_14_fu_1303_p2);
assign sext_ln24_18_fu_1384_p1 = $signed(sub_ln24_15_fu_1378_p2);
assign sext_ln24_19_fu_1430_p1 = $signed(sub_ln24_16_fu_1424_p2);
assign sext_ln24_1_fu_625_p1 = $signed(sub_ln24_1_fu_619_p2);
assign sext_ln24_20_fu_1329_p1 = $signed(add_ln24_22_fu_1324_p2);
assign sext_ln24_21_fu_1486_p1 = $signed(sub_ln24_17_fu_1480_p2);
assign sext_ln24_22_fu_1532_p1 = $signed(sub_ln24_18_fu_1526_p2);
assign sext_ln24_23_fu_1578_p1 = $signed(sub_ln24_19_fu_1572_p2);
assign sext_ln24_24_fu_1598_p1 = $signed(add_ln24_27_fu_1593_p2);
assign sext_ln24_25_fu_1643_p1 = $signed(sub_ln24_20_fu_1637_p2);
assign sext_ln24_26_fu_1718_p1 = $signed(sub_ln24_21_fu_1712_p2);
assign sext_ln24_27_fu_1763_p1 = $signed(sub_ln24_22_fu_1757_p2);
assign sext_ln24_28_fu_1663_p1 = $signed(add_ln24_32_fu_1658_p2);
assign sext_ln24_29_fu_1808_p1 = $signed(sub_ln24_23_fu_1802_p2);
assign sext_ln24_2_fu_699_p1 = $signed(sub_ln24_2_fu_693_p2);
assign sext_ln24_30_fu_1850_p1 = $signed(sub_ln24_24_fu_1844_p2);
assign sext_ln24_31_fu_1892_p1 = $signed(sub_ln24_25_fu_1886_p2);
assign sext_ln24_3_fu_742_p1 = $signed(sub_ln24_3_fu_736_p2);
assign sext_ln24_4_fu_647_p1 = sub_ln24_4_fu_641_p2;
assign sext_ln24_5_fu_805_p1 = $signed(sub_ln24_5_fu_799_p2);
assign sext_ln24_6_fu_848_p1 = $signed(sub_ln24_6_fu_842_p2);
assign sext_ln24_7_fu_891_p1 = $signed(sub_ln24_7_fu_885_p2);
assign sext_ln24_8_fu_911_p1 = $signed(add_ln24_7_fu_906_p2);
assign sext_ln24_9_fu_976_p1 = $signed(sub_ln24_8_fu_970_p2);
assign sext_ln24_fu_535_p1 = $signed(sub_ln24_fu_529_p2);
assign sub_ln24_10_fu_1089_p2 = (8'd0 - zext_ln24_21_fu_1085_p1);
assign sub_ln24_11_fu_1134_p2 = (8'd0 - zext_ln24_24_fu_1130_p1);
assign sub_ln24_12_fu_1176_p2 = (8'd0 - zext_ln24_26_fu_1172_p1);
assign sub_ln24_13_fu_1218_p2 = (8'd0 - zext_ln24_28_fu_1214_p1);
assign sub_ln24_14_fu_1303_p2 = (8'd0 - zext_ln24_31_fu_1299_p1);
assign sub_ln24_15_fu_1378_p2 = (8'd0 - zext_ln24_33_fu_1374_p1);
assign sub_ln24_16_fu_1424_p2 = (8'd0 - zext_ln24_35_fu_1420_p1);
assign sub_ln24_17_fu_1480_p2 = (8'd0 - zext_ln24_38_fu_1476_p1);
assign sub_ln24_18_fu_1526_p2 = (8'd0 - zext_ln24_40_fu_1522_p1);
assign sub_ln24_19_fu_1572_p2 = (8'd0 - zext_ln24_42_fu_1568_p1);
assign sub_ln24_1_fu_619_p2 = (8'd0 - zext_ln24_3_fu_615_p1);
assign sub_ln24_20_fu_1637_p2 = (8'd0 - zext_ln24_45_fu_1633_p1);
assign sub_ln24_21_fu_1712_p2 = (8'd0 - zext_ln24_47_fu_1708_p1);
assign sub_ln24_22_fu_1757_p2 = (8'd0 - zext_ln24_49_fu_1753_p1);
assign sub_ln24_23_fu_1802_p2 = (8'd0 - zext_ln24_52_fu_1798_p1);
assign sub_ln24_24_fu_1844_p2 = (8'd0 - zext_ln24_54_fu_1840_p1);
assign sub_ln24_25_fu_1886_p2 = (8'd0 - zext_ln24_56_fu_1882_p1);
assign sub_ln24_2_fu_693_p2 = (8'd0 - zext_ln24_5_fu_689_p1);
assign sub_ln24_3_fu_736_p2 = (8'd0 - zext_ln24_7_fu_732_p1);
assign sub_ln24_4_fu_641_p2 = ($signed(8'd252) - $signed(ap_sig_allocacmp_b_idx_8));
assign sub_ln24_5_fu_799_p2 = (8'd0 - zext_ln24_10_fu_795_p1);
assign sub_ln24_6_fu_842_p2 = (8'd0 - zext_ln24_12_fu_838_p1);
assign sub_ln24_7_fu_885_p2 = (8'd0 - zext_ln24_14_fu_881_p1);
assign sub_ln24_8_fu_970_p2 = (8'd0 - zext_ln24_17_fu_966_p1);
assign sub_ln24_9_fu_1043_p2 = (8'd0 - zext_ln24_19_fu_1039_p1);
assign sub_ln24_fu_529_p2 = (8'd0 - ap_sig_allocacmp_b_idx_8);
assign tmp_11_fu_597_p4 = {{ap_sig_allocacmp_b_idx_8[6:1]}};
assign tmp_12_fu_672_p4 = {{b_idx_8_reg_1904[6:2]}};
assign tmp_13_fu_767_p4 = {{b_idx_8_reg_1904[6:3]}};
assign tmp_14_fu_936_p4 = {{b_idx_8_reg_1904[6:4]}};
assign tmp_15_fu_945_p4 = {{b_idx_8_reg_1904[2:1]}};
assign tmp_16_fu_1269_p4 = {{b_idx_8_reg_1904[6:5]}};
assign tmp_17_fu_1278_p4 = {{b_idx_8_reg_1904[3:1]}};
assign tmp_18_fu_1354_p4 = {{b_idx_8_reg_1904[3:2]}};
assign tmp_65_fu_776_p3 = b_idx_8_reg_1904[32'd1];
assign tmp_67_fu_1021_p3 = b_idx_8_reg_1904[32'd2];
assign tmp_68_fu_1455_p3 = b_idx_8_reg_1904[32'd3];
assign tmp_fu_514_p4 = {{{lshr_ln1_fu_504_p4}, {1'd0}}, {lshr_ln1_fu_504_p4}};
assign tmp_s_fu_540_p4 = {{ap_sig_allocacmp_b_idx_8[7:1]}};
assign zext_ln24_10_fu_795_p1 = or_ln24_2_fu_783_p5;
assign zext_ln24_11_fu_825_p1 = lshr_ln24_5_fu_815_p4;
assign zext_ln24_12_fu_838_p1 = or_ln24_3_fu_830_p3;
assign zext_ln24_13_fu_868_p1 = lshr_ln24_6_fu_858_p4;
assign zext_ln24_14_fu_881_p1 = or_ln24_4_fu_873_p3;
assign zext_ln24_15_fu_901_p1 = add_ln24_6_fu_896_p2;
assign zext_ln24_16_fu_931_p1 = lshr_ln24_7_fu_921_p4;
assign zext_ln24_17_fu_966_p1 = or_ln24_5_fu_954_p5;
assign zext_ln24_18_fu_1016_p1 = lshr_ln24_8_fu_1006_p4;
assign zext_ln24_19_fu_1039_p1 = or_ln24_6_fu_1028_p5;
assign zext_ln24_1_fu_564_p1 = or_ln2_fu_550_p3;
assign zext_ln24_20_fu_1069_p1 = lshr_ln24_9_fu_1059_p4;
assign zext_ln24_21_fu_1085_p1 = or_ln24_7_fu_1074_p5;
assign zext_ln24_22_fu_986_p1 = add_ln24_11_fu_981_p2;
assign zext_ln24_23_fu_1115_p1 = lshr_ln24_s_fu_1105_p4;
assign zext_ln24_24_fu_1130_p1 = or_ln24_8_fu_1120_p5;
assign zext_ln24_25_fu_1160_p1 = lshr_ln24_10_fu_1150_p4;
assign zext_ln24_26_fu_1172_p1 = or_ln24_9_fu_1165_p3;
assign zext_ln24_27_fu_1202_p1 = lshr_ln24_11_fu_1192_p4;
assign zext_ln24_28_fu_1214_p1 = or_ln24_10_fu_1207_p3;
assign zext_ln24_29_fu_1234_p1 = add_ln24_16_fu_1229_p2;
assign zext_ln24_2_fu_592_p1 = lshr_ln24_1_fu_582_p4;
assign zext_ln24_30_fu_1264_p1 = lshr_ln24_12_fu_1254_p4;
assign zext_ln24_31_fu_1299_p1 = or_ln24_11_fu_1287_p5;
assign zext_ln24_32_fu_1349_p1 = lshr_ln24_13_fu_1339_p4;
assign zext_ln24_33_fu_1374_p1 = or_ln24_12_fu_1363_p5;
assign zext_ln24_34_fu_1404_p1 = lshr_ln24_14_fu_1394_p4;
assign zext_ln24_35_fu_1420_p1 = or_ln24_13_fu_1409_p5;
assign zext_ln24_36_fu_1319_p1 = add_ln24_21_fu_1314_p2;
assign zext_ln24_37_fu_1450_p1 = lshr_ln24_15_fu_1440_p4;
assign zext_ln24_38_fu_1476_p1 = or_ln24_14_fu_1462_p7;
assign zext_ln24_39_fu_1506_p1 = lshr_ln24_16_fu_1496_p4;
assign zext_ln24_3_fu_615_p1 = or_ln24_s_fu_607_p3;
assign zext_ln24_40_fu_1522_p1 = or_ln24_15_fu_1511_p5;
assign zext_ln24_41_fu_1552_p1 = lshr_ln24_17_fu_1542_p4;
assign zext_ln24_42_fu_1568_p1 = or_ln24_16_fu_1557_p5;
assign zext_ln24_43_fu_1588_p1 = add_ln24_26_fu_1583_p2;
assign zext_ln24_44_fu_1618_p1 = lshr_ln24_18_fu_1608_p4;
assign zext_ln24_45_fu_1633_p1 = or_ln24_17_fu_1623_p5;
assign zext_ln24_46_fu_1693_p1 = lshr_ln24_19_fu_1683_p4;
assign zext_ln24_47_fu_1708_p1 = or_ln24_18_fu_1698_p5;
assign zext_ln24_48_fu_1738_p1 = lshr_ln24_20_fu_1728_p4;
assign zext_ln24_49_fu_1753_p1 = or_ln24_19_fu_1743_p5;
assign zext_ln24_4_fu_667_p1 = lshr_ln24_2_fu_657_p4;
assign zext_ln24_50_fu_1653_p1 = add_ln24_31_fu_1648_p2;
assign zext_ln24_51_fu_1783_p1 = lshr_ln24_21_fu_1773_p4;
assign zext_ln24_52_fu_1798_p1 = or_ln24_20_fu_1788_p5;
assign zext_ln24_53_fu_1828_p1 = lshr_ln24_22_fu_1818_p4;
assign zext_ln24_54_fu_1840_p1 = or_ln24_21_fu_1833_p3;
assign zext_ln24_55_fu_1870_p1 = lshr_ln24_23_fu_1860_p4;
assign zext_ln24_56_fu_1882_p1 = or_ln24_22_fu_1875_p3;
assign zext_ln24_5_fu_689_p1 = or_ln3_fu_681_p3;
assign zext_ln24_6_fu_719_p1 = lshr_ln24_3_fu_709_p4;
assign zext_ln24_7_fu_732_p1 = or_ln24_1_fu_724_p3;
assign zext_ln24_8_fu_636_p1 = add_ln24_2_fu_630_p2;
assign zext_ln24_9_fu_762_p1 = lshr_ln24_4_fu_752_p4;
assign zext_ln24_fu_524_p1 = tmp_fu_514_p4;
always @ (posedge ap_clk) begin
    tmp_reg_1919[6] <= 1'b0;
    add_ln24_36_reg_1933[0] <= 1'b1;
end
endmodule 