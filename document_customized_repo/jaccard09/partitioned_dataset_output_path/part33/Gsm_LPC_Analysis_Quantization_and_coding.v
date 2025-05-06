
module Gsm_LPC_Analysis_Quantization_and_coding (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,LARc_address0,LARc_ce0,LARc_we0,LARc_d0,LARc_q0,LARc_address1,LARc_ce1,LARc_we1,LARc_d1,LARc_q1);  
parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] LARc_address0;
output   LARc_ce0;
output   LARc_we0;
output  [15:0] LARc_d0;
input  [15:0] LARc_q0;
output  [2:0] LARc_address1;
output   LARc_ce1;
output   LARc_we1;
output  [15:0] LARc_d1;
input  [15:0] LARc_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg  signed [15:0] reg_217;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire   [2:0] LARc_addr_reg_1319;
wire   [2:0] LARc_addr_1_reg_1324;
reg   [1:0] tmp_13_reg_1329;
wire    ap_CS_fsm_state2;
reg   [6:0] tmp_reg_1334;
reg   [1:0] tmp_17_reg_1339;
reg   [6:0] tmp_4_reg_1344;
wire   [2:0] LARc_addr_2_reg_1349;
wire   [2:0] LARc_addr_3_reg_1354;
wire   [6:0] cond13_fu_415_p3;
reg   [6:0] cond13_reg_1359;
wire    ap_CS_fsm_state3;
wire   [6:0] cond36_fu_477_p3;
reg   [6:0] cond36_reg_1364;
reg   [15:0] temp_9_reg_1369;
reg   [15:0] temp_12_reg_1374;
wire   [2:0] LARc_addr_5_reg_1385;
reg   [1:0] tmp_22_reg_1390;
reg   [6:0] tmp_5_reg_1395;
wire   [0:0] icmp_ln40_8_fu_641_p2;
reg   [0:0] icmp_ln40_8_reg_1400;
reg   [6:0] tmp_6_reg_1405;
reg   [15:0] temp_17_reg_1410;
wire   [2:0] LARc_addr_6_reg_1415;
wire   [6:0] cond60_fu_769_p3;
reg   [6:0] cond60_reg_1426;
wire   [6:0] cond84_fu_825_p3;
reg   [6:0] cond84_reg_1431;
reg   [15:0] temp_14_reg_1436;
wire   [0:0] icmp_ln40_11_fu_862_p2;
reg   [0:0] icmp_ln40_11_reg_1441;
reg   [6:0] tmp_8_reg_1446;
reg  signed [15:0] LARc_load_7_reg_1451;
reg   [1:0] tmp_28_reg_1456;
wire    ap_CS_fsm_state6;
reg   [6:0] tmp_7_reg_1461;
wire   [6:0] cond132_fu_1011_p3;
reg   [6:0] cond132_reg_1466;
reg   [15:0] temp_19_reg_1471;
reg   [15:0] temp_21_reg_1476;
wire   [6:0] cond108_fu_1112_p3;
reg   [6:0] cond108_reg_1481;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln40_12_fu_1133_p2;
reg   [0:0] icmp_ln40_12_reg_1486;
reg   [6:0] tmp_9_reg_1491;
wire   [0:0] icmp_ln40_13_fu_1168_p2;
reg   [0:0] icmp_ln40_13_reg_1496;
reg   [6:0] tmp_s_reg_1501;
wire   [6:0] cond156_fu_1246_p3;
reg   [6:0] cond156_reg_1506;
wire    ap_CS_fsm_state8;
reg    LARc_ce1_local;
reg   [2:0] LARc_address1_local;
reg    LARc_ce0_local;
reg   [2:0] LARc_address0_local;
reg    LARc_we1_local;
reg   [15:0] LARc_d1_local;
wire   [15:0] zext_ln298_fu_707_p1;
reg    LARc_we0_local;
reg   [15:0] LARc_d0_local;
wire   [15:0] zext_ln299_fu_711_p1;
wire   [15:0] zext_ln300_fu_888_p1;
wire   [15:0] zext_ln301_fu_892_p1;
wire   [15:0] zext_ln304_fu_1120_p1;
wire   [15:0] zext_ln303_fu_1194_p1;
wire   [15:0] zext_ln306_fu_1310_p1;
wire    ap_CS_fsm_state9;
wire   [15:0] zext_ln305_fu_1315_p1;
wire   [29:0] tmp_11_fu_221_p3;
wire   [27:0] tmp_12_fu_233_p3;
wire  signed [30:0] sext_ln49_fu_229_p1;
wire  signed [30:0] sext_ln49_1_fu_241_p1;
wire   [30:0] add_ln49_fu_245_p2;
wire   [15:0] temp_fu_251_p4;
wire  signed [16:0] sext_ln39_fu_261_p1;
wire   [16:0] sum_fu_265_p2;
wire   [29:0] tmp_15_fu_291_p3;
wire   [27:0] tmp_16_fu_303_p3;
wire  signed [30:0] sext_ln49_2_fu_299_p1;
wire  signed [30:0] sext_ln49_3_fu_311_p1;
wire   [30:0] add_ln49_1_fu_315_p2;
wire   [15:0] temp_7_fu_321_p4;
wire  signed [16:0] sext_ln39_3_fu_331_p1;
wire   [16:0] sum_2_fu_335_p2;
wire   [0:0] icmp_ln40_fu_361_p2;
wire   [6:0] temp_6_fu_366_p3;
wire   [1:0] tmp_14_fu_373_p4;
wire   [0:0] icmp_ln298_fu_383_p2;
wire   [0:0] icmp_ln298_1_fu_389_p2;
wire   [0:0] empty_fu_409_p2;
wire   [6:0] select_ln298_cast_cast_fu_401_p3;
wire   [6:0] add_ln298_fu_395_p2;
wire   [0:0] icmp_ln40_5_fu_423_p2;
wire   [6:0] temp_8_fu_428_p3;
wire   [1:0] tmp_18_fu_435_p4;
wire   [0:0] icmp_ln299_fu_445_p2;
wire   [0:0] icmp_ln299_1_fu_451_p2;
wire   [0:0] empty_503_fu_471_p2;
wire   [6:0] select_ln299_cast_cast_fu_463_p3;
wire   [6:0] add_ln299_fu_457_p2;
wire   [29:0] tmp_19_fu_485_p3;
wire   [27:0] tmp_20_fu_497_p3;
wire  signed [30:0] sext_ln49_5_fu_493_p1;
wire  signed [30:0] sext_ln49_8_fu_505_p1;
wire   [30:0] add_ln49_2_fu_509_p2;
wire   [29:0] tmp_24_fu_525_p3;
wire   [27:0] tmp_25_fu_537_p3;
wire  signed [30:0] sext_ln49_9_fu_533_p1;
wire  signed [30:0] sext_ln49_10_fu_545_p1;
wire   [30:0] add_ln49_3_fu_549_p2;
wire  signed [16:0] sext_ln39_4_fu_565_p1;
wire   [16:0] sum_3_fu_568_p2;
wire   [1:0] tmp_21_fu_574_p4;
wire   [0:0] icmp_ln40_6_fu_584_p2;
wire   [15:0] trunc_ln40_fu_590_p1;
wire   [15:0] temp_10_fu_594_p3;
wire  signed [16:0] sext_ln39_5_fu_602_p1;
wire   [16:0] sum_4_fu_606_p2;
wire  signed [16:0] sext_ln39_6_fu_632_p1;
wire   [16:0] sum_5_fu_635_p2;
wire   [15:0] trunc_ln40_1_fu_647_p1;
wire   [15:0] add_ln40_fu_651_p2;
wire   [29:0] tmp_30_fu_667_p3;
wire   [25:0] tmp_31_fu_679_p3;
wire  signed [30:0] sext_ln49_11_fu_675_p1;
wire  signed [30:0] sext_ln49_12_fu_687_p1;
wire   [30:0] sub_ln49_fu_691_p2;
wire   [0:0] icmp_ln40_7_fu_715_p2;
wire   [6:0] temp_11_fu_720_p3;
wire   [2:0] tmp_23_fu_727_p4;
wire   [0:0] icmp_ln300_fu_737_p2;
wire   [0:0] icmp_ln300_1_fu_743_p2;
wire   [0:0] empty_504_fu_763_p2;
wire   [6:0] select_ln300_cast_cast_fu_755_p3;
wire   [6:0] add_ln300_fu_749_p2;
wire   [6:0] temp_13_fu_777_p3;
wire   [2:0] tmp_26_fu_783_p4;
wire   [0:0] icmp_ln301_fu_793_p2;
wire   [0:0] icmp_ln301_1_fu_799_p2;
wire   [0:0] empty_505_fu_819_p2;
wire   [6:0] select_ln301_cast_cast_fu_811_p3;
wire   [6:0] add_ln301_fu_805_p2;
wire   [14:0] mul_ln49_fu_837_p1;
wire   [30:0] mul_ln49_fu_837_p2;
wire  signed [16:0] sext_ln39_9_fu_853_p1;
wire   [16:0] sum_8_fu_856_p2;
wire   [15:0] trunc_ln40_3_fu_868_p1;
wire   [15:0] add_ln40_1_fu_872_p2;
wire  signed [16:0] sext_ln39_7_fu_896_p1;
wire   [16:0] sum_6_fu_899_p2;
wire   [1:0] tmp_27_fu_905_p4;
wire   [0:0] icmp_ln40_9_fu_915_p2;
wire   [15:0] trunc_ln40_2_fu_921_p1;
wire   [15:0] temp_15_fu_925_p3;
wire  signed [16:0] sext_ln39_8_fu_933_p1;
wire   [16:0] sum_7_fu_937_p2;
wire   [6:0] temp_18_fu_963_p3;
wire   [3:0] tmp_32_fu_969_p4;
wire   [0:0] icmp_ln304_fu_979_p2;
wire   [0:0] icmp_ln304_1_fu_985_p2;
wire   [0:0] empty_507_fu_1005_p2;
wire   [6:0] select_ln304_cast_cast_fu_997_p3;
wire   [6:0] add_ln304_fu_991_p2;
wire   [14:0] mul_ln49_1_fu_1023_p1;
wire   [30:0] mul_ln49_1_fu_1023_p2;
wire   [14:0] mul_ln49_2_fu_1042_p1;
wire   [30:0] mul_ln49_2_fu_1042_p2;
wire   [0:0] icmp_ln40_10_fu_1058_p2;
wire   [6:0] temp_16_fu_1063_p3;
wire   [3:0] tmp_29_fu_1070_p4;
wire   [0:0] icmp_ln303_fu_1080_p2;
wire   [0:0] icmp_ln303_1_fu_1086_p2;
wire   [0:0] empty_506_fu_1106_p2;
wire   [6:0] select_ln303_cast_cast_fu_1098_p3;
wire   [6:0] add_ln303_fu_1092_p2;
wire  signed [16:0] sext_ln39_10_fu_1124_p1;
wire   [16:0] sum_9_fu_1127_p2;
wire   [15:0] trunc_ln40_4_fu_1139_p1;
wire   [15:0] add_ln40_2_fu_1143_p2;
wire  signed [16:0] sext_ln39_11_fu_1159_p1;
wire   [16:0] sum_10_fu_1162_p2;
wire   [15:0] trunc_ln40_5_fu_1174_p1;
wire   [15:0] add_ln40_3_fu_1178_p2;
wire   [6:0] temp_20_fu_1198_p3;
wire   [4:0] tmp_33_fu_1204_p4;
wire   [0:0] icmp_ln305_fu_1214_p2;
wire   [0:0] icmp_ln305_1_fu_1220_p2;
wire   [0:0] empty_508_fu_1240_p2;
wire   [6:0] select_ln305_cast_cast_fu_1232_p3;
wire   [6:0] add_ln305_fu_1226_p2;
wire   [6:0] temp_22_fu_1254_p3;
wire   [4:0] tmp_34_fu_1260_p4;
wire   [0:0] icmp_ln306_fu_1270_p2;
wire   [0:0] icmp_ln306_1_fu_1276_p2;
wire   [0:0] empty_509_fu_1296_p2;
wire   [6:0] select_ln306_cast_cast_fu_1288_p3;
wire   [6:0] add_ln306_fu_1282_p2;
wire   [6:0] cond180_fu_1302_p3;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
end
Gsm_LPC_Analysis_mul_16s_15ns_31_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 15 ),.dout_WIDTH( 31 ))
mul_16s_15ns_31_1_1_U985(.din0(reg_217),.din1(mul_ln49_fu_837_p1),.dout(mul_ln49_fu_837_p2));
Gsm_LPC_Analysis_mul_16s_15ns_31_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 15 ),.dout_WIDTH( 31 ))
mul_16s_15ns_31_1_1_U986(.din0(reg_217),.din1(mul_ln49_1_fu_1023_p1),.dout(mul_ln49_1_fu_1023_p2));
Gsm_LPC_Analysis_mul_16s_15ns_31_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 15 ),.dout_WIDTH( 31 ))
mul_16s_15ns_31_1_1_U987(.din0(LARc_load_7_reg_1451),.din1(mul_ln49_2_fu_1042_p1),.dout(mul_ln49_2_fu_1042_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        LARc_load_7_reg_1451 <= LARc_q0;
        cond60_reg_1426 <= cond60_fu_769_p3;
        cond84_reg_1431 <= cond84_fu_825_p3;
        icmp_ln40_11_reg_1441 <= icmp_ln40_11_fu_862_p2;
        temp_14_reg_1436 <= {{mul_ln49_fu_837_p2[30:15]}};
        tmp_8_reg_1446 <= {{add_ln40_1_fu_872_p2[15:9]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        cond108_reg_1481 <= cond108_fu_1112_p3;
        icmp_ln40_12_reg_1486 <= icmp_ln40_12_fu_1133_p2;
        icmp_ln40_13_reg_1496 <= icmp_ln40_13_fu_1168_p2;
        tmp_9_reg_1491 <= {{add_ln40_2_fu_1143_p2[15:9]}};
        tmp_s_reg_1501 <= {{add_ln40_3_fu_1178_p2[15:9]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cond132_reg_1466 <= cond132_fu_1011_p3;
        temp_19_reg_1471 <= {{mul_ln49_1_fu_1023_p2[30:15]}};
        temp_21_reg_1476 <= {{mul_ln49_2_fu_1042_p2[30:15]}};
        tmp_28_reg_1456 <= {{sum_7_fu_937_p2[16:15]}};
        tmp_7_reg_1461 <= {{sum_7_fu_937_p2[15:9]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cond13_reg_1359 <= cond13_fu_415_p3;
        cond36_reg_1364 <= cond36_fu_477_p3;
        temp_12_reg_1374 <= {{add_ln49_3_fu_549_p2[30:15]}};
        temp_9_reg_1369 <= {{add_ln49_2_fu_509_p2[30:15]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cond156_reg_1506 <= cond156_fu_1246_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln40_8_reg_1400 <= icmp_ln40_8_fu_641_p2;
        temp_17_reg_1410 <= {{sub_ln49_fu_691_p2[30:15]}};
        tmp_22_reg_1390 <= {{sum_4_fu_606_p2[16:15]}};
        tmp_5_reg_1395 <= {{sum_4_fu_606_p2[15:9]}};
        tmp_6_reg_1405 <= {{add_ln40_fu_651_p2[15:9]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_217 <= LARc_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_13_reg_1329 <= {{sum_fu_265_p2[16:15]}};
        tmp_17_reg_1339 <= {{sum_2_fu_335_p2[16:15]}};
        tmp_4_reg_1344 <= {{sum_2_fu_335_p2[15:9]}};
        tmp_reg_1334 <= {{sum_fu_265_p2[15:9]}};
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        LARc_address0_local = LARc_addr_5_reg_1385;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_address0_local = LARc_addr_3_reg_1354;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        LARc_address0_local = LARc_addr_1_reg_1324;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        LARc_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        LARc_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        LARc_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        LARc_address0_local = 64'd1;
    end else begin
        LARc_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        LARc_address1_local = LARc_addr_6_reg_1415;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_address1_local = LARc_addr_2_reg_1349;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        LARc_address1_local = LARc_addr_reg_1319;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        LARc_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        LARc_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        LARc_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        LARc_address1_local = 64'd0;
    end else begin
        LARc_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        LARc_ce0_local = 1'b1;
    end else begin
        LARc_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        LARc_ce1_local = 1'b1;
    end else begin
        LARc_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_d0_local = zext_ln303_fu_1194_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        LARc_d0_local = zext_ln304_fu_1120_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_d0_local = zext_ln301_fu_892_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        LARc_d0_local = zext_ln299_fu_711_p1;
    end else begin
        LARc_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        LARc_d1_local = zext_ln305_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_d1_local = zext_ln306_fu_1310_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_d1_local = zext_ln300_fu_888_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        LARc_d1_local = zext_ln298_fu_707_p1;
    end else begin
        LARc_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        LARc_we0_local = 1'b1;
    end else begin
        LARc_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6))) begin
        LARc_we1_local = 1'b1;
    end else begin
        LARc_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if ((1'b1 == ap_CS_fsm_state9)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign LARc_addr_1_reg_1324 = 64'd1;
assign LARc_addr_2_reg_1349 = 64'd2;
assign LARc_addr_3_reg_1354 = 64'd3;
assign LARc_addr_5_reg_1385 = 64'd5;
assign LARc_addr_6_reg_1415 = 64'd6;
assign LARc_addr_reg_1319 = 64'd0;
assign LARc_address0 = LARc_address0_local;
assign LARc_address1 = LARc_address1_local;
assign LARc_ce0 = LARc_ce0_local;
assign LARc_ce1 = LARc_ce1_local;
assign LARc_d0 = LARc_d0_local;
assign LARc_d1 = LARc_d1_local;
assign LARc_we0 = LARc_we0_local;
assign LARc_we1 = LARc_we1_local;
assign add_ln298_fu_395_p2 = (temp_6_fu_366_p3 + 7'd32);
assign add_ln299_fu_457_p2 = (temp_8_fu_428_p3 + 7'd32);
assign add_ln300_fu_749_p2 = (temp_11_fu_720_p3 + 7'd16);
assign add_ln301_fu_805_p2 = (temp_13_fu_777_p3 + 7'd16);
assign add_ln303_fu_1092_p2 = (temp_16_fu_1063_p3 + 7'd8);
assign add_ln304_fu_991_p2 = (temp_18_fu_963_p3 + 7'd8);
assign add_ln305_fu_1226_p2 = (temp_20_fu_1198_p3 + 7'd4);
assign add_ln306_fu_1282_p2 = (temp_22_fu_1254_p3 + 7'd4);
assign add_ln40_1_fu_872_p2 = (trunc_ln40_3_fu_868_p1 + 16'd256);
assign add_ln40_2_fu_1143_p2 = (trunc_ln40_4_fu_1139_p1 + 16'd256);
assign add_ln40_3_fu_1178_p2 = (trunc_ln40_5_fu_1174_p1 + 16'd256);
assign add_ln40_fu_651_p2 = (trunc_ln40_1_fu_647_p1 + 16'd256);
assign add_ln49_1_fu_315_p2 = ($signed(sext_ln49_2_fu_299_p1) + $signed(sext_ln49_3_fu_311_p1));
assign add_ln49_2_fu_509_p2 = ($signed(sext_ln49_5_fu_493_p1) + $signed(sext_ln49_8_fu_505_p1));
assign add_ln49_3_fu_549_p2 = ($signed(sext_ln49_9_fu_533_p1) + $signed(sext_ln49_10_fu_545_p1));
assign add_ln49_fu_245_p2 = ($signed(sext_ln49_fu_229_p1) + $signed(sext_ln49_1_fu_241_p1));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign cond108_fu_1112_p3 = ((empty_506_fu_1106_p2[0:0] == 1'b1) ? select_ln303_cast_cast_fu_1098_p3 : add_ln303_fu_1092_p2);
assign cond132_fu_1011_p3 = ((empty_507_fu_1005_p2[0:0] == 1'b1) ? select_ln304_cast_cast_fu_997_p3 : add_ln304_fu_991_p2);
assign cond13_fu_415_p3 = ((empty_fu_409_p2[0:0] == 1'b1) ? select_ln298_cast_cast_fu_401_p3 : add_ln298_fu_395_p2);
assign cond156_fu_1246_p3 = ((empty_508_fu_1240_p2[0:0] == 1'b1) ? select_ln305_cast_cast_fu_1232_p3 : add_ln305_fu_1226_p2);
assign cond180_fu_1302_p3 = ((empty_509_fu_1296_p2[0:0] == 1'b1) ? select_ln306_cast_cast_fu_1288_p3 : add_ln306_fu_1282_p2);
assign cond36_fu_477_p3 = ((empty_503_fu_471_p2[0:0] == 1'b1) ? select_ln299_cast_cast_fu_463_p3 : add_ln299_fu_457_p2);
assign cond60_fu_769_p3 = ((empty_504_fu_763_p2[0:0] == 1'b1) ? select_ln300_cast_cast_fu_755_p3 : add_ln300_fu_749_p2);
assign cond84_fu_825_p3 = ((empty_505_fu_819_p2[0:0] == 1'b1) ? select_ln301_cast_cast_fu_811_p3 : add_ln301_fu_805_p2);
assign empty_503_fu_471_p2 = (icmp_ln299_fu_445_p2 | icmp_ln299_1_fu_451_p2);
assign empty_504_fu_763_p2 = (icmp_ln300_fu_737_p2 | icmp_ln300_1_fu_743_p2);
assign empty_505_fu_819_p2 = (icmp_ln301_fu_793_p2 | icmp_ln301_1_fu_799_p2);
assign empty_506_fu_1106_p2 = (icmp_ln303_fu_1080_p2 | icmp_ln303_1_fu_1086_p2);
assign empty_507_fu_1005_p2 = (icmp_ln304_fu_979_p2 | icmp_ln304_1_fu_985_p2);
assign empty_508_fu_1240_p2 = (icmp_ln305_fu_1214_p2 | icmp_ln305_1_fu_1220_p2);
assign empty_509_fu_1296_p2 = (icmp_ln306_fu_1270_p2 | icmp_ln306_1_fu_1276_p2);
assign empty_fu_409_p2 = (icmp_ln298_fu_383_p2 | icmp_ln298_1_fu_389_p2);
assign icmp_ln298_1_fu_389_p2 = (($signed(temp_6_fu_366_p3) < $signed(7'd96)) ? 1'b1 : 1'b0);
assign icmp_ln298_fu_383_p2 = ((tmp_14_fu_373_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln299_1_fu_451_p2 = (($signed(temp_8_fu_428_p3) < $signed(7'd96)) ? 1'b1 : 1'b0);
assign icmp_ln299_fu_445_p2 = ((tmp_18_fu_435_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln300_1_fu_743_p2 = (($signed(temp_11_fu_720_p3) < $signed(7'd112)) ? 1'b1 : 1'b0);
assign icmp_ln300_fu_737_p2 = (($signed(tmp_23_fu_727_p4) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign icmp_ln301_1_fu_799_p2 = (($signed(temp_13_fu_777_p3) < $signed(7'd112)) ? 1'b1 : 1'b0);
assign icmp_ln301_fu_793_p2 = (($signed(tmp_26_fu_783_p4) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign icmp_ln303_1_fu_1086_p2 = (($signed(temp_16_fu_1063_p3) < $signed(7'd120)) ? 1'b1 : 1'b0);
assign icmp_ln303_fu_1080_p2 = (($signed(tmp_29_fu_1070_p4) > $signed(4'd0)) ? 1'b1 : 1'b0);
assign icmp_ln304_1_fu_985_p2 = (($signed(temp_18_fu_963_p3) < $signed(7'd120)) ? 1'b1 : 1'b0);
assign icmp_ln304_fu_979_p2 = (($signed(tmp_32_fu_969_p4) > $signed(4'd0)) ? 1'b1 : 1'b0);
assign icmp_ln305_1_fu_1220_p2 = (($signed(temp_20_fu_1198_p3) < $signed(7'd124)) ? 1'b1 : 1'b0);
assign icmp_ln305_fu_1214_p2 = (($signed(tmp_33_fu_1204_p4) > $signed(5'd0)) ? 1'b1 : 1'b0);
assign icmp_ln306_1_fu_1276_p2 = (($signed(temp_22_fu_1254_p3) < $signed(7'd124)) ? 1'b1 : 1'b0);
assign icmp_ln306_fu_1270_p2 = (($signed(tmp_34_fu_1260_p4) > $signed(5'd0)) ? 1'b1 : 1'b0);
assign icmp_ln40_10_fu_1058_p2 = ((tmp_28_reg_1456 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln40_11_fu_862_p2 = (($signed(sum_8_fu_856_p2) < $signed(17'd98304)) ? 1'b1 : 1'b0);
assign icmp_ln40_12_fu_1133_p2 = (($signed(sum_9_fu_1127_p2) < $signed(17'd98304)) ? 1'b1 : 1'b0);
assign icmp_ln40_13_fu_1168_p2 = (($signed(sum_10_fu_1162_p2) < $signed(17'd98304)) ? 1'b1 : 1'b0);
assign icmp_ln40_5_fu_423_p2 = ((tmp_17_reg_1339 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln40_6_fu_584_p2 = ((tmp_21_fu_574_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln40_7_fu_715_p2 = ((tmp_22_reg_1390 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln40_8_fu_641_p2 = (($signed(sum_5_fu_635_p2) < $signed(17'd98304)) ? 1'b1 : 1'b0);
assign icmp_ln40_9_fu_915_p2 = ((tmp_27_fu_905_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_361_p2 = ((tmp_13_reg_1329 == 2'd1) ? 1'b1 : 1'b0);
assign mul_ln49_1_fu_1023_p1 = 31'd8534;
assign mul_ln49_2_fu_1042_p1 = 31'd9036;
assign mul_ln49_fu_837_p1 = 31'd13964;
assign select_ln298_cast_cast_fu_401_p3 = ((icmp_ln298_fu_383_p2[0:0] == 1'b1) ? 7'd63 : 7'd0);
assign select_ln299_cast_cast_fu_463_p3 = ((icmp_ln299_fu_445_p2[0:0] == 1'b1) ? 7'd63 : 7'd0);
assign select_ln300_cast_cast_fu_755_p3 = ((icmp_ln300_fu_737_p2[0:0] == 1'b1) ? 7'd31 : 7'd0);
assign select_ln301_cast_cast_fu_811_p3 = ((icmp_ln301_fu_793_p2[0:0] == 1'b1) ? 7'd31 : 7'd0);
assign select_ln303_cast_cast_fu_1098_p3 = ((icmp_ln303_fu_1080_p2[0:0] == 1'b1) ? 7'd15 : 7'd0);
assign select_ln304_cast_cast_fu_997_p3 = ((icmp_ln304_fu_979_p2[0:0] == 1'b1) ? 7'd15 : 7'd0);
assign select_ln305_cast_cast_fu_1232_p3 = ((icmp_ln305_fu_1214_p2[0:0] == 1'b1) ? 7'd7 : 7'd0);
assign select_ln306_cast_cast_fu_1288_p3 = ((icmp_ln306_fu_1270_p2[0:0] == 1'b1) ? 7'd7 : 7'd0);
assign sext_ln39_10_fu_1124_p1 = $signed(temp_19_reg_1471);
assign sext_ln39_11_fu_1159_p1 = $signed(temp_21_reg_1476);
assign sext_ln39_3_fu_331_p1 = $signed(temp_7_fu_321_p4);
assign sext_ln39_4_fu_565_p1 = $signed(temp_9_reg_1369);
assign sext_ln39_5_fu_602_p1 = $signed(temp_10_fu_594_p3);
assign sext_ln39_6_fu_632_p1 = $signed(temp_12_reg_1374);
assign sext_ln39_7_fu_896_p1 = $signed(temp_14_reg_1436);
assign sext_ln39_8_fu_933_p1 = $signed(temp_15_fu_925_p3);
assign sext_ln39_9_fu_853_p1 = $signed(temp_17_reg_1410);
assign sext_ln39_fu_261_p1 = $signed(temp_fu_251_p4);
assign sext_ln49_10_fu_545_p1 = $signed(tmp_25_fu_537_p3);
assign sext_ln49_11_fu_675_p1 = $signed(tmp_30_fu_667_p3);
assign sext_ln49_12_fu_687_p1 = $signed(tmp_31_fu_679_p3);
assign sext_ln49_1_fu_241_p1 = $signed(tmp_12_fu_233_p3);
assign sext_ln49_2_fu_299_p1 = $signed(tmp_15_fu_291_p3);
assign sext_ln49_3_fu_311_p1 = $signed(tmp_16_fu_303_p3);
assign sext_ln49_5_fu_493_p1 = $signed(tmp_19_fu_485_p3);
assign sext_ln49_8_fu_505_p1 = $signed(tmp_20_fu_497_p3);
assign sext_ln49_9_fu_533_p1 = $signed(tmp_24_fu_525_p3);
assign sext_ln49_fu_229_p1 = $signed(tmp_11_fu_221_p3);
assign sub_ln49_fu_691_p2 = ($signed(sext_ln49_11_fu_675_p1) - $signed(sext_ln49_12_fu_687_p1));
assign sum_10_fu_1162_p2 = ($signed(sext_ln39_11_fu_1159_p1) + $signed(17'd129928));
assign sum_2_fu_335_p2 = ($signed(sext_ln39_3_fu_331_p1) + $signed(17'd256));
assign sum_3_fu_568_p2 = ($signed(sext_ln39_4_fu_565_p1) + $signed(17'd2048));
assign sum_4_fu_606_p2 = ($signed(sext_ln39_5_fu_602_p1) + $signed(17'd256));
assign sum_5_fu_635_p2 = ($signed(sext_ln39_6_fu_632_p1) + $signed(17'd128512));
assign sum_6_fu_899_p2 = ($signed(sext_ln39_7_fu_896_p1) + $signed(17'd94));
assign sum_7_fu_937_p2 = ($signed(sext_ln39_8_fu_933_p1) + $signed(17'd256));
assign sum_8_fu_856_p2 = ($signed(sext_ln39_9_fu_853_p1) + $signed(17'd129280));
assign sum_9_fu_1127_p2 = ($signed(sext_ln39_10_fu_1124_p1) + $signed(17'd130731));
assign sum_fu_265_p2 = ($signed(sext_ln39_fu_261_p1) + $signed(17'd256));
assign temp_10_fu_594_p3 = ((icmp_ln40_6_fu_584_p2[0:0] == 1'b1) ? 16'd32767 : trunc_ln40_fu_590_p1);
assign temp_11_fu_720_p3 = ((icmp_ln40_7_fu_715_p2[0:0] == 1'b1) ? 7'd63 : tmp_5_reg_1395);
assign temp_13_fu_777_p3 = ((icmp_ln40_8_reg_1400[0:0] == 1'b1) ? 7'd64 : tmp_6_reg_1405);
assign temp_15_fu_925_p3 = ((icmp_ln40_9_fu_915_p2[0:0] == 1'b1) ? 16'd32767 : trunc_ln40_2_fu_921_p1);
assign temp_16_fu_1063_p3 = ((icmp_ln40_10_fu_1058_p2[0:0] == 1'b1) ? 7'd63 : tmp_7_reg_1461);
assign temp_18_fu_963_p3 = ((icmp_ln40_11_reg_1441[0:0] == 1'b1) ? 7'd64 : tmp_8_reg_1446);
assign temp_20_fu_1198_p3 = ((icmp_ln40_12_reg_1486[0:0] == 1'b1) ? 7'd64 : tmp_9_reg_1491);
assign temp_22_fu_1254_p3 = ((icmp_ln40_13_reg_1496[0:0] == 1'b1) ? 7'd64 : tmp_s_reg_1501);
assign temp_6_fu_366_p3 = ((icmp_ln40_fu_361_p2[0:0] == 1'b1) ? 7'd63 : tmp_reg_1334);
assign temp_7_fu_321_p4 = {{add_ln49_1_fu_315_p2[30:15]}};
assign temp_8_fu_428_p3 = ((icmp_ln40_5_fu_423_p2[0:0] == 1'b1) ? 7'd63 : tmp_4_reg_1344);
assign temp_fu_251_p4 = {{add_ln49_fu_245_p2[30:15]}};
assign tmp_11_fu_221_p3 = {{LARc_q1}, {14'd0}};
assign tmp_12_fu_233_p3 = {{LARc_q1}, {12'd0}};
assign tmp_14_fu_373_p4 = {{temp_6_fu_366_p3[6:5]}};
assign tmp_15_fu_291_p3 = {{LARc_q0}, {14'd0}};
assign tmp_16_fu_303_p3 = {{LARc_q0}, {12'd0}};
assign tmp_18_fu_435_p4 = {{temp_8_fu_428_p3[6:5]}};
assign tmp_19_fu_485_p3 = {{LARc_q1}, {14'd0}};
assign tmp_20_fu_497_p3 = {{LARc_q1}, {12'd0}};
assign tmp_21_fu_574_p4 = {{sum_3_fu_568_p2[16:15]}};
assign tmp_23_fu_727_p4 = {{temp_11_fu_720_p3[6:4]}};
assign tmp_24_fu_525_p3 = {{LARc_q0}, {14'd0}};
assign tmp_25_fu_537_p3 = {{LARc_q0}, {12'd0}};
assign tmp_26_fu_783_p4 = {{temp_13_fu_777_p3[6:4]}};
assign tmp_27_fu_905_p4 = {{sum_6_fu_899_p2[16:15]}};
assign tmp_29_fu_1070_p4 = {{temp_16_fu_1063_p3[6:3]}};
assign tmp_30_fu_667_p3 = {{LARc_q0}, {14'd0}};
assign tmp_31_fu_679_p3 = {{LARc_q0}, {10'd0}};
assign tmp_32_fu_969_p4 = {{temp_18_fu_963_p3[6:3]}};
assign tmp_33_fu_1204_p4 = {{temp_20_fu_1198_p3[6:2]}};
assign tmp_34_fu_1260_p4 = {{temp_22_fu_1254_p3[6:2]}};
assign trunc_ln40_1_fu_647_p1 = sum_5_fu_635_p2[15:0];
assign trunc_ln40_2_fu_921_p1 = sum_6_fu_899_p2[15:0];
assign trunc_ln40_3_fu_868_p1 = sum_8_fu_856_p2[15:0];
assign trunc_ln40_4_fu_1139_p1 = sum_9_fu_1127_p2[15:0];
assign trunc_ln40_5_fu_1174_p1 = sum_10_fu_1162_p2[15:0];
assign trunc_ln40_fu_590_p1 = sum_3_fu_568_p2[15:0];
assign zext_ln298_fu_707_p1 = cond13_reg_1359;
assign zext_ln299_fu_711_p1 = cond36_reg_1364;
assign zext_ln300_fu_888_p1 = cond60_reg_1426;
assign zext_ln301_fu_892_p1 = cond84_reg_1431;
assign zext_ln303_fu_1194_p1 = cond108_reg_1481;
assign zext_ln304_fu_1120_p1 = cond132_reg_1466;
assign zext_ln305_fu_1315_p1 = cond156_reg_1506;
assign zext_ln306_fu_1310_p1 = cond180_fu_1302_p3;
endmodule 
