module ss_sort_sum_scan_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_address0,sum_ce0,sum_we0,sum_d0,sum_q0,sum_address1,sum_ce1,sum_we1,sum_d1,bucket_address0,bucket_ce0,bucket_q0,bucket_address1,bucket_ce1,bucket_q1); 
parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_state9 = 18'd256;
parameter    ap_ST_fsm_state10 = 18'd512;
parameter    ap_ST_fsm_state11 = 18'd1024;
parameter    ap_ST_fsm_state12 = 18'd2048;
parameter    ap_ST_fsm_state13 = 18'd4096;
parameter    ap_ST_fsm_state14 = 18'd8192;
parameter    ap_ST_fsm_state15 = 18'd16384;
parameter    ap_ST_fsm_state16 = 18'd32768;
parameter    ap_ST_fsm_state17 = 18'd65536;
parameter    ap_ST_fsm_state18 = 18'd131072;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] sum_address0;
output   sum_ce0;
output   sum_we0;
output  [31:0] sum_d0;
input  [31:0] sum_q0;
output  [6:0] sum_address1;
output   sum_ce1;
output   sum_we1;
output  [31:0] sum_d1;
output  [10:0] bucket_address0;
output   bucket_ce0;
input  [31:0] bucket_q0;
output  [10:0] bucket_address1;
output   bucket_ce1;
input  [31:0] bucket_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state18;
reg   [0:0] tmp_reg_1923;
reg    ap_condition_exit_pp0_iter0_stage17;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_708;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
reg   [6:0] radixID_1_reg_1597;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [10:0] shl_ln_fu_720_p3;
reg   [10:0] shl_ln_reg_1634;
wire   [31:0] add_ln27_1_fu_763_p2;
reg   [31:0] add_ln27_1_reg_1683;
wire   [31:0] add_ln27_3_fu_809_p2;
reg   [31:0] add_ln27_3_reg_1699;
wire   [31:0] add_ln27_5_fu_861_p2;
reg   [31:0] add_ln27_5_reg_1715;
wire   [31:0] add_ln27_7_fu_913_p2;
reg   [31:0] add_ln27_7_reg_1731;
wire   [31:0] add_ln27_9_fu_965_p2;
reg   [31:0] add_ln27_9_reg_1747;
wire   [31:0] add_ln27_11_fu_1017_p2;
reg   [31:0] add_ln27_11_reg_1763;
wire   [31:0] add_ln27_13_fu_1069_p2;
reg   [31:0] add_ln27_13_reg_1779;
wire   [31:0] add_ln27_15_fu_1121_p2;
reg   [31:0] add_ln27_15_reg_1795;
wire   [31:0] add_ln27_17_fu_1173_p2;
reg   [31:0] add_ln27_17_reg_1811;
wire   [31:0] add_ln27_19_fu_1225_p2;
reg   [31:0] add_ln27_19_reg_1827;
wire   [31:0] add_ln27_21_fu_1277_p2;
reg   [31:0] add_ln27_21_reg_1843;
wire   [31:0] add_ln27_23_fu_1329_p2;
reg   [31:0] add_ln27_23_reg_1859;
wire   [31:0] add_ln27_25_fu_1381_p2;
reg   [31:0] add_ln27_25_reg_1875;
wire   [31:0] add_ln27_27_fu_1433_p2;
reg   [31:0] add_ln27_27_reg_1891;
wire   [31:0] add_ln27_29_fu_1488_p2;
reg   [31:0] add_ln27_29_reg_1907;
wire   [7:0] add_ln25_30_fu_1504_p2;
reg   [7:0] add_ln25_30_reg_1918;
wire   [0:0] tmp_fu_1510_p3;
wire   [31:0] add_ln27_31_fu_1554_p2;
reg   [31:0] add_ln27_31_reg_1932;
wire   [63:0] zext_ln27_1_fu_745_p1;
wire   [63:0] zext_ln27_fu_734_p1;
wire   [63:0] zext_ln27_2_fu_758_p1;
wire   [63:0] zext_ln27_3_fu_774_p1;
wire   [63:0] zext_ln27_4_fu_784_p1;
wire   [63:0] zext_ln11_fu_789_p1;
wire   [63:0] zext_ln26_fu_798_p1;
wire   [63:0] zext_ln27_5_fu_820_p1;
wire   [63:0] zext_ln27_6_fu_830_p1;
wire   [63:0] zext_ln26_1_fu_840_p1;
wire   [63:0] zext_ln26_2_fu_850_p1;
wire   [63:0] zext_ln27_7_fu_872_p1;
wire   [63:0] zext_ln27_8_fu_882_p1;
wire   [63:0] zext_ln26_3_fu_892_p1;
wire   [63:0] zext_ln26_4_fu_902_p1;
wire   [63:0] zext_ln27_9_fu_924_p1;
wire   [63:0] zext_ln27_10_fu_934_p1;
wire   [63:0] zext_ln26_5_fu_944_p1;
wire   [63:0] zext_ln26_6_fu_954_p1;
wire   [63:0] zext_ln27_11_fu_976_p1;
wire   [63:0] zext_ln27_12_fu_986_p1;
wire   [63:0] zext_ln26_7_fu_996_p1;
wire   [63:0] zext_ln26_8_fu_1006_p1;
wire   [63:0] zext_ln27_13_fu_1028_p1;
wire   [63:0] zext_ln27_14_fu_1038_p1;
wire   [63:0] zext_ln26_9_fu_1048_p1;
wire   [63:0] zext_ln26_10_fu_1058_p1;
wire   [63:0] zext_ln27_15_fu_1080_p1;
wire   [63:0] zext_ln27_16_fu_1090_p1;
wire   [63:0] zext_ln26_11_fu_1100_p1;
wire   [63:0] zext_ln26_12_fu_1110_p1;
wire   [63:0] zext_ln27_17_fu_1132_p1;
wire   [63:0] zext_ln27_18_fu_1142_p1;
wire   [63:0] zext_ln26_13_fu_1152_p1;
wire   [63:0] zext_ln26_14_fu_1162_p1;
wire   [63:0] zext_ln27_19_fu_1184_p1;
wire   [63:0] zext_ln27_20_fu_1194_p1;
wire   [63:0] zext_ln26_15_fu_1204_p1;
wire   [63:0] zext_ln26_16_fu_1214_p1;
wire   [63:0] zext_ln27_21_fu_1236_p1;
wire   [63:0] zext_ln27_22_fu_1246_p1;
wire   [63:0] zext_ln26_17_fu_1256_p1;
wire   [63:0] zext_ln26_18_fu_1266_p1;
wire   [63:0] zext_ln27_23_fu_1288_p1;
wire   [63:0] zext_ln27_24_fu_1298_p1;
wire   [63:0] zext_ln26_19_fu_1308_p1;
wire   [63:0] zext_ln26_20_fu_1318_p1;
wire   [63:0] zext_ln27_25_fu_1340_p1;
wire   [63:0] zext_ln27_26_fu_1350_p1;
wire   [63:0] zext_ln26_21_fu_1360_p1;
wire   [63:0] zext_ln26_22_fu_1370_p1;
wire   [63:0] zext_ln27_27_fu_1392_p1;
wire   [63:0] zext_ln27_28_fu_1402_p1;
wire   [63:0] zext_ln26_23_fu_1412_p1;
wire   [63:0] zext_ln26_24_fu_1422_p1;
wire   [63:0] zext_ln27_29_fu_1444_p1;
wire   [63:0] zext_ln27_30_fu_1454_p1;
wire   [63:0] zext_ln26_25_fu_1467_p1;
wire   [63:0] zext_ln26_26_fu_1477_p1;
wire   [63:0] zext_ln27_31_fu_1499_p1;
wire   [63:0] zext_ln27_32_fu_1523_p1;
wire   [63:0] zext_ln26_27_fu_1533_p1;
wire   [63:0] zext_ln26_28_fu_1543_p1;
wire   [63:0] zext_ln26_29_fu_1565_p1;
wire   [63:0] zext_ln25_fu_1570_p1;
reg   [6:0] radixID_fu_166;
wire   [6:0] add_ln25_31_fu_1580_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_radixID_1;
reg    sum_ce0_local;
reg   [6:0] sum_address0_local;
reg    sum_we1_local;
reg   [31:0] sum_d1_local;
reg    sum_ce1_local;
reg   [6:0] sum_address1_local;
reg    sum_we0_local;
reg   [31:0] sum_d0_local;
wire   [31:0] add_ln27_2_fu_803_p2;
wire   [31:0] add_ln27_4_fu_855_p2;
wire   [31:0] add_ln27_6_fu_907_p2;
wire   [31:0] add_ln27_8_fu_959_p2;
wire   [31:0] add_ln27_10_fu_1011_p2;
wire   [31:0] add_ln27_12_fu_1063_p2;
wire   [31:0] add_ln27_14_fu_1115_p2;
wire   [31:0] add_ln27_16_fu_1167_p2;
wire   [31:0] add_ln27_18_fu_1219_p2;
wire   [31:0] add_ln27_20_fu_1271_p2;
wire   [31:0] add_ln27_22_fu_1323_p2;
wire   [31:0] add_ln27_24_fu_1375_p2;
wire   [31:0] add_ln27_26_fu_1427_p2;
wire   [31:0] add_ln27_28_fu_1482_p2;
wire   [31:0] add_ln27_30_fu_1548_p2;
wire   [31:0] add_ln27_32_fu_1574_p2;
reg    bucket_ce1_local;
reg   [10:0] bucket_address1_local;
reg    bucket_ce0_local;
reg   [10:0] bucket_address0_local;
wire   [10:0] add_ln26_fu_728_p2;
wire   [6:0] add_ln27_fu_739_p2;
wire   [10:0] or_ln_fu_750_p3;
wire   [10:0] add_ln26_1_fu_769_p2;
wire   [10:0] add_ln26_2_fu_779_p2;
wire   [6:0] add_ln25_fu_793_p2;
wire   [10:0] add_ln26_3_fu_815_p2;
wire   [10:0] add_ln26_4_fu_825_p2;
wire   [6:0] add_ln25_1_fu_835_p2;
wire   [6:0] add_ln25_2_fu_845_p2;
wire   [10:0] add_ln26_5_fu_867_p2;
wire   [10:0] add_ln26_6_fu_877_p2;
wire   [6:0] add_ln25_3_fu_887_p2;
wire   [6:0] add_ln25_4_fu_897_p2;
wire   [10:0] add_ln26_7_fu_919_p2;
wire   [10:0] add_ln26_8_fu_929_p2;
wire   [6:0] add_ln25_5_fu_939_p2;
wire   [6:0] add_ln25_6_fu_949_p2;
wire   [10:0] add_ln26_9_fu_971_p2;
wire   [10:0] add_ln26_10_fu_981_p2;
wire   [6:0] add_ln25_7_fu_991_p2;
wire   [6:0] add_ln25_8_fu_1001_p2;
wire   [10:0] add_ln26_11_fu_1023_p2;
wire   [10:0] add_ln26_12_fu_1033_p2;
wire   [6:0] add_ln25_9_fu_1043_p2;
wire   [6:0] add_ln25_10_fu_1053_p2;
wire   [10:0] add_ln26_13_fu_1075_p2;
wire   [10:0] add_ln26_14_fu_1085_p2;
wire   [6:0] add_ln25_11_fu_1095_p2;
wire   [6:0] add_ln25_12_fu_1105_p2;
wire   [10:0] add_ln26_15_fu_1127_p2;
wire   [10:0] add_ln26_16_fu_1137_p2;
wire   [6:0] add_ln25_13_fu_1147_p2;
wire   [6:0] add_ln25_14_fu_1157_p2;
wire   [10:0] add_ln26_17_fu_1179_p2;
wire   [10:0] add_ln26_18_fu_1189_p2;
wire   [6:0] add_ln25_15_fu_1199_p2;
wire   [6:0] add_ln25_16_fu_1209_p2;
wire   [10:0] add_ln26_19_fu_1231_p2;
wire   [10:0] add_ln26_20_fu_1241_p2;
wire   [6:0] add_ln25_17_fu_1251_p2;
wire   [6:0] add_ln25_18_fu_1261_p2;
wire   [10:0] add_ln26_21_fu_1283_p2;
wire   [10:0] add_ln26_22_fu_1293_p2;
wire   [6:0] add_ln25_19_fu_1303_p2;
wire   [6:0] add_ln25_20_fu_1313_p2;
wire   [10:0] add_ln26_23_fu_1335_p2;
wire   [10:0] add_ln26_24_fu_1345_p2;
wire   [6:0] add_ln25_21_fu_1355_p2;
wire   [6:0] add_ln25_22_fu_1365_p2;
wire   [10:0] add_ln26_25_fu_1387_p2;
wire   [10:0] add_ln26_26_fu_1397_p2;
wire   [6:0] add_ln25_23_fu_1407_p2;
wire   [6:0] add_ln25_24_fu_1417_p2;
wire   [10:0] add_ln26_27_fu_1439_p2;
wire   [10:0] add_ln26_28_fu_1449_p2;
wire   [6:0] add_ln25_25_fu_1462_p2;
wire   [6:0] add_ln25_26_fu_1472_p2;
wire   [10:0] add_ln26_29_fu_1494_p2;
wire   [7:0] zext_ln11_1_fu_1459_p1;
wire   [10:0] add_ln26_30_fu_1518_p2;
wire   [6:0] add_ln25_27_fu_1528_p2;
wire   [6:0] add_ln25_28_fu_1538_p2;
wire   [6:0] add_ln25_29_fu_1560_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [17:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 radixID_fu_166 = 7'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage17),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0))) begin
        radixID_fu_166 <= 7'd1;
    end else if (((tmp_reg_1923 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        radixID_fu_166 <= add_ln25_31_fu_1580_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        add_ln25_30_reg_1918 <= add_ln25_30_fu_1504_p2;
        add_ln27_29_reg_1907 <= add_ln27_29_fu_1488_p2;
        tmp_reg_1923 <= add_ln25_30_fu_1504_p2[32'd7];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln27_11_reg_1763 <= add_ln27_11_fu_1017_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln27_13_reg_1779 <= add_ln27_13_fu_1069_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln27_15_reg_1795 <= add_ln27_15_fu_1121_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln27_17_reg_1811 <= add_ln27_17_fu_1173_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        add_ln27_19_reg_1827 <= add_ln27_19_fu_1225_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln27_1_reg_1683 <= add_ln27_1_fu_763_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        add_ln27_21_reg_1843 <= add_ln27_21_fu_1277_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        add_ln27_23_reg_1859 <= add_ln27_23_fu_1329_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        add_ln27_25_reg_1875 <= add_ln27_25_fu_1381_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        add_ln27_27_reg_1891 <= add_ln27_27_fu_1433_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        add_ln27_31_reg_1932 <= add_ln27_31_fu_1554_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln27_3_reg_1699 <= add_ln27_3_fu_809_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln27_5_reg_1715 <= add_ln27_5_fu_861_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln27_7_reg_1731 <= add_ln27_7_fu_913_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln27_9_reg_1747 <= add_ln27_9_fu_965_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0))) begin
        radixID_1_reg_1597 <= ap_sig_allocacmp_radixID_1;
        shl_ln_reg_1634[10 : 4] <= shl_ln_fu_720_p3[10 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_708 <= bucket_q0;
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
    if (((tmp_reg_1923 == 1'd1) & (1'b1 == ap_CS_fsm_state18))) begin
        ap_condition_exit_pp0_iter0_stage17 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage17 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
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
    if ((1'b1 == ap_CS_fsm_state18)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_radixID_1 = 7'd1;
    end else begin
        ap_sig_allocacmp_radixID_1 = radixID_fu_166;
    end
end
always @ (*) begin
    if (((tmp_fu_1510_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        bucket_address0_local = zext_ln27_32_fu_1523_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_address0_local = zext_ln27_30_fu_1454_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_address0_local = zext_ln27_28_fu_1402_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_address0_local = zext_ln27_26_fu_1350_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_address0_local = zext_ln27_24_fu_1298_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_address0_local = zext_ln27_22_fu_1246_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_address0_local = zext_ln27_20_fu_1194_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_address0_local = zext_ln27_18_fu_1142_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_address0_local = zext_ln27_16_fu_1090_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_address0_local = zext_ln27_14_fu_1038_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_address0_local = zext_ln27_12_fu_986_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_address0_local = zext_ln27_10_fu_934_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_address0_local = zext_ln27_8_fu_882_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_address0_local = zext_ln27_6_fu_830_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_address0_local = zext_ln27_4_fu_784_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bucket_address0_local = zext_ln27_2_fu_758_p1;
    end else begin
        bucket_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_address1_local = zext_ln27_31_fu_1499_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_address1_local = zext_ln27_29_fu_1444_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_address1_local = zext_ln27_27_fu_1392_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_address1_local = zext_ln27_25_fu_1340_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_address1_local = zext_ln27_23_fu_1288_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_address1_local = zext_ln27_21_fu_1236_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_address1_local = zext_ln27_19_fu_1184_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_address1_local = zext_ln27_17_fu_1132_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_address1_local = zext_ln27_15_fu_1080_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_address1_local = zext_ln27_13_fu_1028_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_address1_local = zext_ln27_11_fu_976_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_address1_local = zext_ln27_9_fu_924_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_address1_local = zext_ln27_7_fu_872_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_address1_local = zext_ln27_5_fu_820_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_address1_local = zext_ln27_3_fu_774_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bucket_address1_local = zext_ln27_fu_734_p1;
    end else begin
        bucket_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | ((tmp_fu_1510_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state16)) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)))) begin
        bucket_ce0_local = 1'b1;
    end else begin
        bucket_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)))) begin
        bucket_ce1_local = 1'b1;
    end else begin
        bucket_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        sum_address0_local = zext_ln26_29_fu_1565_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        sum_address0_local = zext_ln26_27_fu_1533_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        sum_address0_local = zext_ln26_25_fu_1467_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        sum_address0_local = zext_ln26_23_fu_1412_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        sum_address0_local = zext_ln26_21_fu_1360_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        sum_address0_local = zext_ln26_19_fu_1308_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_address0_local = zext_ln26_17_fu_1256_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        sum_address0_local = zext_ln26_15_fu_1204_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_address0_local = zext_ln26_13_fu_1152_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_address0_local = zext_ln26_11_fu_1100_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_address0_local = zext_ln26_9_fu_1048_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_address0_local = zext_ln26_7_fu_996_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_address0_local = zext_ln26_5_fu_944_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_address0_local = zext_ln26_3_fu_892_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_address0_local = zext_ln26_1_fu_840_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_address0_local = zext_ln26_fu_798_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        sum_address0_local = zext_ln27_1_fu_745_p1;
    end else begin
        sum_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_1923 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        sum_address1_local = zext_ln25_fu_1570_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        sum_address1_local = zext_ln26_28_fu_1543_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        sum_address1_local = zext_ln26_26_fu_1477_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        sum_address1_local = zext_ln26_24_fu_1422_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        sum_address1_local = zext_ln26_22_fu_1370_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        sum_address1_local = zext_ln26_20_fu_1318_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_address1_local = zext_ln26_18_fu_1266_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        sum_address1_local = zext_ln26_16_fu_1214_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_address1_local = zext_ln26_14_fu_1162_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_address1_local = zext_ln26_12_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_address1_local = zext_ln26_10_fu_1058_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_address1_local = zext_ln26_8_fu_1006_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_address1_local = zext_ln26_6_fu_954_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_address1_local = zext_ln26_4_fu_902_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_address1_local = zext_ln26_2_fu_850_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_address1_local = zext_ln11_fu_789_p1;
    end else begin
        sum_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)))) begin
        sum_ce0_local = 1'b1;
    end else begin
        sum_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | ((tmp_reg_1923 == 1'd0) & (1'b1 == ap_CS_fsm_state18)))) begin
        sum_ce1_local = 1'b1;
    end else begin
        sum_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        sum_d0_local = add_ln27_31_reg_1932;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        sum_d0_local = add_ln27_29_reg_1907;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        sum_d0_local = add_ln27_27_reg_1891;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        sum_d0_local = add_ln27_25_reg_1875;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        sum_d0_local = add_ln27_23_reg_1859;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        sum_d0_local = add_ln27_21_reg_1843;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_d0_local = add_ln27_19_reg_1827;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        sum_d0_local = add_ln27_17_reg_1811;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_d0_local = add_ln27_15_reg_1795;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_d0_local = add_ln27_13_reg_1779;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_d0_local = add_ln27_11_reg_1763;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_d0_local = add_ln27_9_reg_1747;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_d0_local = add_ln27_7_reg_1731;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_d0_local = add_ln27_5_reg_1715;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_d0_local = add_ln27_3_reg_1699;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_d0_local = add_ln27_2_fu_803_p2;
    end else begin
        sum_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_1923 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        sum_d1_local = add_ln27_32_fu_1574_p2;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        sum_d1_local = add_ln27_30_fu_1548_p2;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        sum_d1_local = add_ln27_28_fu_1482_p2;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        sum_d1_local = add_ln27_26_fu_1427_p2;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        sum_d1_local = add_ln27_24_fu_1375_p2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        sum_d1_local = add_ln27_22_fu_1323_p2;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_d1_local = add_ln27_20_fu_1271_p2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        sum_d1_local = add_ln27_18_fu_1219_p2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_d1_local = add_ln27_16_fu_1167_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_d1_local = add_ln27_14_fu_1115_p2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_d1_local = add_ln27_12_fu_1063_p2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_d1_local = add_ln27_10_fu_1011_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_d1_local = add_ln27_8_fu_959_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_d1_local = add_ln27_6_fu_907_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_d1_local = add_ln27_4_fu_855_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_d1_local = add_ln27_1_reg_1683;
    end else begin
        sum_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        sum_we0_local = 1'b1;
    end else begin
        sum_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | ((tmp_reg_1923 == 1'd0) & (1'b1 == ap_CS_fsm_state18)))) begin
        sum_we1_local = 1'b1;
    end else begin
        sum_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0))) begin
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
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_10_fu_1053_p2 = (radixID_1_reg_1597 + 7'd11);
assign add_ln25_11_fu_1095_p2 = (radixID_1_reg_1597 + 7'd12);
assign add_ln25_12_fu_1105_p2 = (radixID_1_reg_1597 + 7'd13);
assign add_ln25_13_fu_1147_p2 = (radixID_1_reg_1597 + 7'd14);
assign add_ln25_14_fu_1157_p2 = (radixID_1_reg_1597 + 7'd15);
assign add_ln25_15_fu_1199_p2 = (radixID_1_reg_1597 + 7'd16);
assign add_ln25_16_fu_1209_p2 = (radixID_1_reg_1597 + 7'd17);
assign add_ln25_17_fu_1251_p2 = (radixID_1_reg_1597 + 7'd18);
assign add_ln25_18_fu_1261_p2 = (radixID_1_reg_1597 + 7'd19);
assign add_ln25_19_fu_1303_p2 = (radixID_1_reg_1597 + 7'd20);
assign add_ln25_1_fu_835_p2 = (radixID_1_reg_1597 + 7'd2);
assign add_ln25_20_fu_1313_p2 = (radixID_1_reg_1597 + 7'd21);
assign add_ln25_21_fu_1355_p2 = (radixID_1_reg_1597 + 7'd22);
assign add_ln25_22_fu_1365_p2 = (radixID_1_reg_1597 + 7'd23);
assign add_ln25_23_fu_1407_p2 = (radixID_1_reg_1597 + 7'd24);
assign add_ln25_24_fu_1417_p2 = (radixID_1_reg_1597 + 7'd25);
assign add_ln25_25_fu_1462_p2 = (radixID_1_reg_1597 + 7'd26);
assign add_ln25_26_fu_1472_p2 = (radixID_1_reg_1597 + 7'd27);
assign add_ln25_27_fu_1528_p2 = (radixID_1_reg_1597 + 7'd28);
assign add_ln25_28_fu_1538_p2 = (radixID_1_reg_1597 + 7'd29);
assign add_ln25_29_fu_1560_p2 = (radixID_1_reg_1597 + 7'd30);
assign add_ln25_2_fu_845_p2 = (radixID_1_reg_1597 + 7'd3);
assign add_ln25_30_fu_1504_p2 = (zext_ln11_1_fu_1459_p1 + 8'd31);
assign add_ln25_31_fu_1580_p2 = (radixID_1_reg_1597 + 7'd32);
assign add_ln25_3_fu_887_p2 = (radixID_1_reg_1597 + 7'd4);
assign add_ln25_4_fu_897_p2 = (radixID_1_reg_1597 + 7'd5);
assign add_ln25_5_fu_939_p2 = (radixID_1_reg_1597 + 7'd6);
assign add_ln25_6_fu_949_p2 = (radixID_1_reg_1597 + 7'd7);
assign add_ln25_7_fu_991_p2 = (radixID_1_reg_1597 + 7'd8);
assign add_ln25_8_fu_1001_p2 = (radixID_1_reg_1597 + 7'd9);
assign add_ln25_9_fu_1043_p2 = (radixID_1_reg_1597 + 7'd10);
assign add_ln25_fu_793_p2 = (radixID_1_reg_1597 + 7'd1);
assign add_ln26_10_fu_981_p2 = (shl_ln_reg_1634 + 11'd175);
assign add_ln26_11_fu_1023_p2 = (shl_ln_reg_1634 + 11'd191);
assign add_ln26_12_fu_1033_p2 = (shl_ln_reg_1634 + 11'd207);
assign add_ln26_13_fu_1075_p2 = (shl_ln_reg_1634 + 11'd223);
assign add_ln26_14_fu_1085_p2 = (shl_ln_reg_1634 + 11'd239);
assign add_ln26_15_fu_1127_p2 = (shl_ln_reg_1634 + 11'd255);
assign add_ln26_16_fu_1137_p2 = (shl_ln_reg_1634 + 11'd271);
assign add_ln26_17_fu_1179_p2 = (shl_ln_reg_1634 + 11'd287);
assign add_ln26_18_fu_1189_p2 = (shl_ln_reg_1634 + 11'd303);
assign add_ln26_19_fu_1231_p2 = (shl_ln_reg_1634 + 11'd319);
assign add_ln26_1_fu_769_p2 = (shl_ln_reg_1634 + 11'd31);
assign add_ln26_20_fu_1241_p2 = (shl_ln_reg_1634 + 11'd335);
assign add_ln26_21_fu_1283_p2 = (shl_ln_reg_1634 + 11'd351);
assign add_ln26_22_fu_1293_p2 = (shl_ln_reg_1634 + 11'd367);
assign add_ln26_23_fu_1335_p2 = (shl_ln_reg_1634 + 11'd383);
assign add_ln26_24_fu_1345_p2 = (shl_ln_reg_1634 + 11'd399);
assign add_ln26_25_fu_1387_p2 = (shl_ln_reg_1634 + 11'd415);
assign add_ln26_26_fu_1397_p2 = (shl_ln_reg_1634 + 11'd431);
assign add_ln26_27_fu_1439_p2 = (shl_ln_reg_1634 + 11'd447);
assign add_ln26_28_fu_1449_p2 = (shl_ln_reg_1634 + 11'd463);
assign add_ln26_29_fu_1494_p2 = (shl_ln_reg_1634 + 11'd479);
assign add_ln26_2_fu_779_p2 = (shl_ln_reg_1634 + 11'd47);
assign add_ln26_30_fu_1518_p2 = (shl_ln_reg_1634 + 11'd495);
assign add_ln26_3_fu_815_p2 = (shl_ln_reg_1634 + 11'd63);
assign add_ln26_4_fu_825_p2 = (shl_ln_reg_1634 + 11'd79);
assign add_ln26_5_fu_867_p2 = (shl_ln_reg_1634 + 11'd95);
assign add_ln26_6_fu_877_p2 = (shl_ln_reg_1634 + 11'd111);
assign add_ln26_7_fu_919_p2 = (shl_ln_reg_1634 + 11'd127);
assign add_ln26_8_fu_929_p2 = (shl_ln_reg_1634 + 11'd143);
assign add_ln26_9_fu_971_p2 = (shl_ln_reg_1634 + 11'd159);
assign add_ln26_fu_728_p2 = ($signed(shl_ln_fu_720_p3) + $signed(11'd2047));
assign add_ln27_10_fu_1011_p2 = (reg_708 + add_ln27_9_reg_1747);
assign add_ln27_11_fu_1017_p2 = (bucket_q1 + add_ln27_10_fu_1011_p2);
assign add_ln27_12_fu_1063_p2 = (reg_708 + add_ln27_11_reg_1763);
assign add_ln27_13_fu_1069_p2 = (bucket_q1 + add_ln27_12_fu_1063_p2);
assign add_ln27_14_fu_1115_p2 = (reg_708 + add_ln27_13_reg_1779);
assign add_ln27_15_fu_1121_p2 = (bucket_q1 + add_ln27_14_fu_1115_p2);
assign add_ln27_16_fu_1167_p2 = (reg_708 + add_ln27_15_reg_1795);
assign add_ln27_17_fu_1173_p2 = (bucket_q1 + add_ln27_16_fu_1167_p2);
assign add_ln27_18_fu_1219_p2 = (reg_708 + add_ln27_17_reg_1811);
assign add_ln27_19_fu_1225_p2 = (bucket_q1 + add_ln27_18_fu_1219_p2);
assign add_ln27_1_fu_763_p2 = (bucket_q1 + sum_q0);
assign add_ln27_20_fu_1271_p2 = (reg_708 + add_ln27_19_reg_1827);
assign add_ln27_21_fu_1277_p2 = (bucket_q1 + add_ln27_20_fu_1271_p2);
assign add_ln27_22_fu_1323_p2 = (reg_708 + add_ln27_21_reg_1843);
assign add_ln27_23_fu_1329_p2 = (bucket_q1 + add_ln27_22_fu_1323_p2);
assign add_ln27_24_fu_1375_p2 = (reg_708 + add_ln27_23_reg_1859);
assign add_ln27_25_fu_1381_p2 = (bucket_q1 + add_ln27_24_fu_1375_p2);
assign add_ln27_26_fu_1427_p2 = (reg_708 + add_ln27_25_reg_1875);
assign add_ln27_27_fu_1433_p2 = (bucket_q1 + add_ln27_26_fu_1427_p2);
assign add_ln27_28_fu_1482_p2 = (reg_708 + add_ln27_27_reg_1891);
assign add_ln27_29_fu_1488_p2 = (bucket_q1 + add_ln27_28_fu_1482_p2);
assign add_ln27_2_fu_803_p2 = (reg_708 + add_ln27_1_reg_1683);
assign add_ln27_30_fu_1548_p2 = (reg_708 + add_ln27_29_reg_1907);
assign add_ln27_31_fu_1554_p2 = (bucket_q1 + add_ln27_30_fu_1548_p2);
assign add_ln27_32_fu_1574_p2 = (reg_708 + add_ln27_31_reg_1932);
assign add_ln27_3_fu_809_p2 = (bucket_q1 + add_ln27_2_fu_803_p2);
assign add_ln27_4_fu_855_p2 = (reg_708 + add_ln27_3_reg_1699);
assign add_ln27_5_fu_861_p2 = (bucket_q1 + add_ln27_4_fu_855_p2);
assign add_ln27_6_fu_907_p2 = (reg_708 + add_ln27_5_reg_1715);
assign add_ln27_7_fu_913_p2 = (bucket_q1 + add_ln27_6_fu_907_p2);
assign add_ln27_8_fu_959_p2 = (reg_708 + add_ln27_7_reg_1731);
assign add_ln27_9_fu_965_p2 = (bucket_q1 + add_ln27_8_fu_959_p2);
assign add_ln27_fu_739_p2 = ($signed(ap_sig_allocacmp_radixID_1) + $signed(7'd127));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage17;
assign ap_ready = ap_ready_sig;
assign bucket_address0 = bucket_address0_local;
assign bucket_address1 = bucket_address1_local;
assign bucket_ce0 = bucket_ce0_local;
assign bucket_ce1 = bucket_ce1_local;
assign or_ln_fu_750_p3 = {{ap_sig_allocacmp_radixID_1}, {4'd15}};
assign shl_ln_fu_720_p3 = {{ap_sig_allocacmp_radixID_1}, {4'd0}};
assign sum_address0 = sum_address0_local;
assign sum_address1 = sum_address1_local;
assign sum_ce0 = sum_ce0_local;
assign sum_ce1 = sum_ce1_local;
assign sum_d0 = sum_d0_local;
assign sum_d1 = sum_d1_local;
assign sum_we0 = sum_we0_local;
assign sum_we1 = sum_we1_local;
assign tmp_fu_1510_p3 = add_ln25_30_fu_1504_p2[32'd7];
assign zext_ln11_1_fu_1459_p1 = radixID_1_reg_1597;
assign zext_ln11_fu_789_p1 = radixID_1_reg_1597;
assign zext_ln25_fu_1570_p1 = add_ln25_30_reg_1918;
assign zext_ln26_10_fu_1058_p1 = add_ln25_10_fu_1053_p2;
assign zext_ln26_11_fu_1100_p1 = add_ln25_11_fu_1095_p2;
assign zext_ln26_12_fu_1110_p1 = add_ln25_12_fu_1105_p2;
assign zext_ln26_13_fu_1152_p1 = add_ln25_13_fu_1147_p2;
assign zext_ln26_14_fu_1162_p1 = add_ln25_14_fu_1157_p2;
assign zext_ln26_15_fu_1204_p1 = add_ln25_15_fu_1199_p2;
assign zext_ln26_16_fu_1214_p1 = add_ln25_16_fu_1209_p2;
assign zext_ln26_17_fu_1256_p1 = add_ln25_17_fu_1251_p2;
assign zext_ln26_18_fu_1266_p1 = add_ln25_18_fu_1261_p2;
assign zext_ln26_19_fu_1308_p1 = add_ln25_19_fu_1303_p2;
assign zext_ln26_1_fu_840_p1 = add_ln25_1_fu_835_p2;
assign zext_ln26_20_fu_1318_p1 = add_ln25_20_fu_1313_p2;
assign zext_ln26_21_fu_1360_p1 = add_ln25_21_fu_1355_p2;
assign zext_ln26_22_fu_1370_p1 = add_ln25_22_fu_1365_p2;
assign zext_ln26_23_fu_1412_p1 = add_ln25_23_fu_1407_p2;
assign zext_ln26_24_fu_1422_p1 = add_ln25_24_fu_1417_p2;
assign zext_ln26_25_fu_1467_p1 = add_ln25_25_fu_1462_p2;
assign zext_ln26_26_fu_1477_p1 = add_ln25_26_fu_1472_p2;
assign zext_ln26_27_fu_1533_p1 = add_ln25_27_fu_1528_p2;
assign zext_ln26_28_fu_1543_p1 = add_ln25_28_fu_1538_p2;
assign zext_ln26_29_fu_1565_p1 = add_ln25_29_fu_1560_p2;
assign zext_ln26_2_fu_850_p1 = add_ln25_2_fu_845_p2;
assign zext_ln26_3_fu_892_p1 = add_ln25_3_fu_887_p2;
assign zext_ln26_4_fu_902_p1 = add_ln25_4_fu_897_p2;
assign zext_ln26_5_fu_944_p1 = add_ln25_5_fu_939_p2;
assign zext_ln26_6_fu_954_p1 = add_ln25_6_fu_949_p2;
assign zext_ln26_7_fu_996_p1 = add_ln25_7_fu_991_p2;
assign zext_ln26_8_fu_1006_p1 = add_ln25_8_fu_1001_p2;
assign zext_ln26_9_fu_1048_p1 = add_ln25_9_fu_1043_p2;
assign zext_ln26_fu_798_p1 = add_ln25_fu_793_p2;
assign zext_ln27_10_fu_934_p1 = add_ln26_8_fu_929_p2;
assign zext_ln27_11_fu_976_p1 = add_ln26_9_fu_971_p2;
assign zext_ln27_12_fu_986_p1 = add_ln26_10_fu_981_p2;
assign zext_ln27_13_fu_1028_p1 = add_ln26_11_fu_1023_p2;
assign zext_ln27_14_fu_1038_p1 = add_ln26_12_fu_1033_p2;
assign zext_ln27_15_fu_1080_p1 = add_ln26_13_fu_1075_p2;
assign zext_ln27_16_fu_1090_p1 = add_ln26_14_fu_1085_p2;
assign zext_ln27_17_fu_1132_p1 = add_ln26_15_fu_1127_p2;
assign zext_ln27_18_fu_1142_p1 = add_ln26_16_fu_1137_p2;
assign zext_ln27_19_fu_1184_p1 = add_ln26_17_fu_1179_p2;
assign zext_ln27_1_fu_745_p1 = add_ln27_fu_739_p2;
assign zext_ln27_20_fu_1194_p1 = add_ln26_18_fu_1189_p2;
assign zext_ln27_21_fu_1236_p1 = add_ln26_19_fu_1231_p2;
assign zext_ln27_22_fu_1246_p1 = add_ln26_20_fu_1241_p2;
assign zext_ln27_23_fu_1288_p1 = add_ln26_21_fu_1283_p2;
assign zext_ln27_24_fu_1298_p1 = add_ln26_22_fu_1293_p2;
assign zext_ln27_25_fu_1340_p1 = add_ln26_23_fu_1335_p2;
assign zext_ln27_26_fu_1350_p1 = add_ln26_24_fu_1345_p2;
assign zext_ln27_27_fu_1392_p1 = add_ln26_25_fu_1387_p2;
assign zext_ln27_28_fu_1402_p1 = add_ln26_26_fu_1397_p2;
assign zext_ln27_29_fu_1444_p1 = add_ln26_27_fu_1439_p2;
assign zext_ln27_2_fu_758_p1 = or_ln_fu_750_p3;
assign zext_ln27_30_fu_1454_p1 = add_ln26_28_fu_1449_p2;
assign zext_ln27_31_fu_1499_p1 = add_ln26_29_fu_1494_p2;
assign zext_ln27_32_fu_1523_p1 = add_ln26_30_fu_1518_p2;
assign zext_ln27_3_fu_774_p1 = add_ln26_1_fu_769_p2;
assign zext_ln27_4_fu_784_p1 = add_ln26_2_fu_779_p2;
assign zext_ln27_5_fu_820_p1 = add_ln26_3_fu_815_p2;
assign zext_ln27_6_fu_830_p1 = add_ln26_4_fu_825_p2;
assign zext_ln27_7_fu_872_p1 = add_ln26_5_fu_867_p2;
assign zext_ln27_8_fu_882_p1 = add_ln26_6_fu_877_p2;
assign zext_ln27_9_fu_924_p1 = add_ln26_7_fu_919_p2;
assign zext_ln27_fu_734_p1 = add_ln26_fu_728_p2;
always @ (posedge ap_clk) begin
    shl_ln_reg_1634[3:0] <= 4'b0000;
end
endmodule 