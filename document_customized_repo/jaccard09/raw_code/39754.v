module fft1D_512_fft1D_512_Pipeline_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [8:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [8:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [8:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [8:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_2088;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire   [63:0] grp_fu_934_p3;
reg   [63:0] reg_948;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage15_11001;
wire   [63:0] grp_fu_941_p3;
reg   [63:0] reg_955;
reg   [6:0] tid_reg_2074;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln189_fu_978_p1;
reg   [2:0] trunc_ln189_reg_2092;
wire   [0:0] tmp_30_fu_982_p3;
reg   [0:0] tmp_30_reg_2099;
wire   [1:0] lshr_ln172_3_fu_990_p4;
reg   [1:0] lshr_ln172_3_reg_2106;
wire   [2:0] hi_fu_1054_p4;
reg   [2:0] hi_reg_2131;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] tmp_29_fu_1063_p3;
reg   [0:0] tmp_29_reg_2136;
wire   [8:0] offset_4_fu_1070_p5;
reg   [8:0] offset_4_reg_2144;
wire   [63:0] select_ln193_fu_1080_p3;
reg   [63:0] select_ln193_reg_2150;
wire   [63:0] select_ln194_fu_1088_p3;
reg   [63:0] select_ln194_reg_2155;
wire   [5:0] trunc_ln193_fu_1140_p1;
reg   [5:0] trunc_ln193_reg_2180;
wire   [63:0] zext_ln193_fu_1151_p1;
reg   [63:0] zext_ln193_reg_2186;
wire   [63:0] zext_ln194_4_fu_1164_p1;
reg   [63:0] zext_ln194_4_reg_2191;
wire   [8:0] zext_ln114_fu_1265_p1;
reg   [8:0] zext_ln114_reg_2236;
wire   [7:0] zext_ln172_14_fu_1268_p1;
reg   [7:0] zext_ln172_14_reg_2242;
wire   [63:0] zext_ln197_4_fu_1278_p1;
reg   [63:0] zext_ln197_4_reg_2247;
wire   [63:0] zext_ln198_4_fu_1290_p1;
reg   [63:0] zext_ln198_4_reg_2252;
wire   [8:0] offset_fu_1316_p2;
reg   [8:0] offset_reg_2257;
wire   [0:0] tmp_36_fu_1346_p3;
reg   [0:0] tmp_36_reg_2277;
wire   [4:0] tmp_27_fu_1419_p4;
reg   [4:0] tmp_27_reg_2317;
wire   [63:0] zext_ln193_1_fu_1436_p1;
reg   [63:0] zext_ln193_1_reg_2324;
wire   [3:0] tmp_28_fu_1483_p4;
reg   [3:0] tmp_28_reg_2349;
wire   [63:0] zext_ln193_2_fu_1500_p1;
reg   [63:0] zext_ln193_2_reg_2360;
wire   [63:0] zext_ln194_5_fu_1515_p1;
reg   [63:0] zext_ln194_5_reg_2365;
reg   [7:0] lshr_ln199_1_reg_2390;
reg   [8:0] lshr_ln200_1_reg_2395;
wire   [63:0] zext_ln193_3_fu_1601_p1;
reg   [63:0] zext_ln193_3_reg_2400;
wire   [8:0] offset_8_fu_1626_p2;
reg   [8:0] offset_8_reg_2425;
wire   [8:0] offset_9_fu_1641_p2;
reg   [8:0] offset_9_reg_2435;
wire   [63:0] zext_ln197_5_fu_1653_p1;
reg   [63:0] zext_ln197_5_reg_2445;
wire   [63:0] zext_ln198_5_fu_1665_p1;
reg   [63:0] zext_ln198_5_reg_2450;
wire   [63:0] zext_ln194_6_fu_1764_p1;
reg   [63:0] zext_ln194_6_reg_2495;
reg   [8:0] lshr_ln200_2_reg_2520;
wire   [63:0] zext_ln197_6_fu_1835_p1;
reg   [63:0] zext_ln197_6_reg_2525;
wire   [63:0] zext_ln198_6_fu_1873_p1;
reg   [63:0] zext_ln198_6_reg_2550;
wire   [63:0] zext_ln194_7_fu_1930_p1;
reg   [63:0] zext_ln194_7_reg_2575;
reg   [7:0] lshr_ln199_3_reg_2600;
reg   [8:0] lshr_ln200_3_reg_2605;
wire   [63:0] zext_ln197_7_fu_2036_p1;
reg   [63:0] zext_ln197_7_reg_2630;
wire   [63:0] zext_ln198_7_fu_2048_p1;
reg   [63:0] zext_ln198_7_reg_2635;
wire   [63:0] select_ln199_3_fu_2053_p3;
reg   [63:0] select_ln199_3_reg_2640;
wire   [63:0] select_ln200_3_fu_2060_p3;
reg   [63:0] select_ln200_3_reg_2645;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln172_3_fu_1020_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_fu_1048_p1;
wire   [63:0] zext_ln195_fu_1112_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln196_fu_1134_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln197_fu_1188_p1;
wire   [63:0] zext_ln198_fu_1213_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln199_fu_1237_p1;
wire   [63:0] zext_ln200_fu_1259_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln172_4_fu_1340_p1;
wire   [63:0] zext_ln172_5_fu_1371_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln194_1_fu_1392_p1;
wire   [63:0] zext_ln172_6_fu_1413_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln195_1_fu_1456_p1;
wire   [63:0] zext_ln196_1_fu_1477_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln197_1_fu_1535_p1;
wire   [63:0] zext_ln198_1_fu_1557_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln199_1_fu_1606_p1;
wire   [63:0] zext_ln200_1_fu_1611_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln194_2_fu_1685_p1;
wire   [63:0] zext_ln195_2_fu_1706_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln196_2_fu_1727_p1;
wire   [63:0] zext_ln197_2_fu_1748_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln198_2_fu_1785_p1;
wire   [63:0] zext_ln199_2_fu_1806_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln200_2_fu_1840_p1;
wire   [63:0] zext_ln194_3_fu_1860_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln195_3_fu_1893_p1;
wire   [63:0] zext_ln196_3_fu_1914_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln197_3_fu_1950_p1;
wire   [63:0] zext_ln198_3_fu_1972_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln199_3_fu_2009_p1;
wire   [63:0] zext_ln200_3_fu_2014_p1;
reg   [6:0] tid_2_fu_126;
wire   [6:0] add_ln188_fu_2019_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    smem_ce1_local;
reg   [8:0] smem_address1_local;
reg    smem_ce0_local;
reg   [8:0] smem_address0_local;
reg    smem_1_ce1_local;
reg   [8:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [8:0] smem_1_address0_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
wire   [0:0] tmp_31_fu_1000_p3;
wire   [7:0] add_ln_fu_1008_p5;
wire   [1:0] tmp_32_fu_1026_p4;
wire   [7:0] lshr_ln_fu_1036_p5;
wire   [8:0] add_ln195_fu_1096_p2;
wire   [7:0] lshr_ln10_fu_1102_p4;
wire   [8:0] add_ln196_fu_1118_p2;
wire   [7:0] lshr_ln11_fu_1124_p4;
wire   [7:0] shl_ln2_fu_1143_p3;
wire   [7:0] or_ln15_fu_1156_p3;
wire   [1:0] tmp_33_fu_1169_p4;
wire   [7:0] lshr_ln12_fu_1178_p5;
wire   [1:0] tmp_34_fu_1194_p4;
wire   [7:0] tmp_35_fu_1203_p5;
wire   [8:0] add_ln199_fu_1222_p2;
wire   [7:0] lshr_ln13_fu_1227_p4;
wire   [9:0] zext_ln172_fu_1219_p1;
wire   [9:0] add_ln200_fu_1243_p2;
wire   [8:0] lshr_ln14_fu_1249_p4;
wire   [7:0] or_ln16_fu_1271_p3;
wire   [7:0] or_ln17_fu_1283_p3;
wire   [1:0] tmp_s_fu_1295_p4;
wire   [8:0] mul_ln191_1_fu_1304_p5;
wire   [7:0] mul_ln172_1_fu_1322_p5;
wire   [7:0] add_ln172_fu_1334_p2;
wire   [7:0] mul_ln172_2_fu_1353_p5;
wire   [7:0] add_ln172_1_fu_1365_p2;
wire   [8:0] add_ln194_fu_1377_p2;
wire   [7:0] lshr_ln194_1_fu_1382_p4;
wire   [7:0] mul_ln172_3_fu_1398_p5;
wire   [7:0] add_ln172_2_fu_1408_p2;
wire   [7:0] shl_ln193_1_fu_1428_p3;
wire   [8:0] add_ln195_1_fu_1441_p2;
wire   [7:0] lshr_ln195_1_fu_1446_p4;
wire   [8:0] add_ln196_1_fu_1462_p2;
wire   [7:0] lshr_ln196_1_fu_1467_p4;
wire   [7:0] or_ln19_fu_1492_p3;
wire   [7:0] or_ln194_1_fu_1508_p3;
wire   [8:0] add_ln197_fu_1520_p2;
wire   [7:0] lshr_ln197_1_fu_1525_p4;
wire   [9:0] zext_ln172_15_fu_1505_p1;
wire   [9:0] add_ln198_fu_1541_p2;
wire   [8:0] lshr_ln198_1_fu_1547_p4;
wire   [8:0] add_ln199_1_fu_1563_p2;
wire   [9:0] add_ln200_1_fu_1578_p2;
wire   [7:0] shl_ln193_2_fu_1594_p3;
wire   [8:0] mul_ln191_2_fu_1616_p5;
wire   [8:0] mul_ln191_3_fu_1631_p5;
wire   [7:0] or_ln197_1_fu_1646_p3;
wire   [7:0] or_ln198_1_fu_1658_p3;
wire   [8:0] add_ln194_1_fu_1670_p2;
wire   [7:0] lshr_ln194_2_fu_1675_p4;
wire   [8:0] add_ln195_2_fu_1691_p2;
wire   [7:0] lshr_ln195_2_fu_1696_p4;
wire   [8:0] add_ln196_2_fu_1712_p2;
wire   [7:0] lshr_ln196_2_fu_1717_p4;
wire   [8:0] add_ln197_1_fu_1733_p2;
wire   [7:0] lshr_ln197_2_fu_1738_p4;
wire   [7:0] or_ln194_2_fu_1757_p3;
wire   [9:0] zext_ln172_16_fu_1754_p1;
wire   [9:0] add_ln198_1_fu_1769_p2;
wire   [8:0] lshr_ln198_2_fu_1775_p4;
wire   [8:0] add_ln199_2_fu_1791_p2;
wire   [7:0] lshr_ln199_2_fu_1796_p4;
wire   [9:0] add_ln200_2_fu_1812_p2;
wire   [7:0] or_ln197_2_fu_1828_p3;
wire   [8:0] add_ln194_2_fu_1845_p2;
wire   [7:0] lshr_ln194_3_fu_1850_p4;
wire   [7:0] or_ln198_2_fu_1866_p3;
wire   [8:0] add_ln195_3_fu_1878_p2;
wire   [7:0] lshr_ln195_3_fu_1883_p4;
wire   [8:0] add_ln196_3_fu_1899_p2;
wire   [7:0] lshr_ln196_3_fu_1904_p4;
wire   [7:0] or_ln194_3_fu_1923_p3;
wire   [8:0] add_ln197_2_fu_1935_p2;
wire   [7:0] lshr_ln197_3_fu_1940_p4;
wire   [9:0] zext_ln172_17_fu_1920_p1;
wire   [9:0] add_ln198_2_fu_1956_p2;
wire   [8:0] lshr_ln198_3_fu_1962_p4;
wire   [8:0] add_ln199_3_fu_1978_p2;
wire   [9:0] add_ln200_3_fu_1993_p2;
wire   [7:0] or_ln197_3_fu_2029_p3;
wire   [7:0] or_ln198_3_fu_2041_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_2_fu_126 = 7'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_2_fu_126 <= 7'd0;
    end else if (((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        tid_2_fu_126 <= add_ln188_fu_2019_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        hi_reg_2131 <= {{tid_reg_2074[5:3]}};
        offset_4_reg_2144[3 : 0] <= offset_4_fu_1070_p5[3 : 0];
offset_4_reg_2144[8 : 6] <= offset_4_fu_1070_p5[8 : 6];
        select_ln193_reg_2150 <= select_ln193_fu_1080_p3;
        select_ln194_reg_2155 <= select_ln194_fu_1088_p3;
        tmp_29_reg_2136 <= tid_reg_2074[32'd3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln172_3_reg_2106 <= {{ap_sig_allocacmp_tid[5:4]}};
        select_ln199_3_reg_2640 <= select_ln199_3_fu_2053_p3;
        select_ln200_3_reg_2645 <= select_ln200_3_fu_2060_p3;
        tid_reg_2074 <= ap_sig_allocacmp_tid;
        tmp_30_reg_2099 <= ap_sig_allocacmp_tid[32'd2];
        tmp_reg_2088 <= ap_sig_allocacmp_tid[32'd6];
        trunc_ln189_reg_2092 <= trunc_ln189_fu_978_p1;
        zext_ln197_7_reg_2630[7 : 4] <= zext_ln197_7_fu_2036_p1[7 : 4];
        zext_ln198_7_reg_2635[7 : 4] <= zext_ln198_7_fu_2048_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        lshr_ln199_1_reg_2390 <= {{add_ln199_1_fu_1563_p2[8:1]}};
        lshr_ln200_1_reg_2395 <= {{add_ln200_1_fu_1578_p2[9:1]}};
        zext_ln193_3_reg_2400[7 : 4] <= zext_ln193_3_fu_1601_p1[7 : 4];
        zext_ln194_5_reg_2365[7 : 3] <= zext_ln194_5_fu_1515_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        lshr_ln199_3_reg_2600 <= {{add_ln199_3_fu_1978_p2[8:1]}};
        lshr_ln200_3_reg_2605 <= {{add_ln200_3_fu_1993_p2[9:1]}};
        zext_ln194_7_reg_2575[7 : 4] <= zext_ln194_7_fu_1930_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        lshr_ln200_2_reg_2520 <= {{add_ln200_2_fu_1812_p2[9:1]}};
        zext_ln194_6_reg_2495[7 : 4] <= zext_ln194_6_fu_1764_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        offset_8_reg_2425 <= offset_8_fu_1626_p2;
        offset_9_reg_2435 <= offset_9_fu_1641_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        offset_reg_2257 <= offset_fu_1316_p2;
        tmp_36_reg_2277 <= tid_reg_2074[32'd2];
        zext_ln114_reg_2236[2 : 0] <= zext_ln114_fu_1265_p1[2 : 0];
        zext_ln172_14_reg_2242[1 : 0] <= zext_ln172_14_fu_1268_p1[1 : 0];
        zext_ln197_4_reg_2247[7 : 2] <= zext_ln197_4_fu_1278_p1[7 : 2];
        zext_ln198_4_reg_2252[7 : 2] <= zext_ln198_4_fu_1290_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_948 <= grp_fu_934_p3;
        reg_955 <= grp_fu_941_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_27_reg_2317 <= {{tid_reg_2074[5:1]}};
        tmp_28_reg_2349 <= {{tid_reg_2074[5:2]}};
        zext_ln193_1_reg_2324[7 : 3] <= zext_ln193_1_fu_1436_p1[7 : 3];
        zext_ln193_2_reg_2360[7 : 4] <= zext_ln193_2_fu_1500_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln193_reg_2180 <= trunc_ln193_fu_1140_p1;
        zext_ln193_reg_2186[7 : 2] <= zext_ln193_fu_1151_p1[7 : 2];
        zext_ln194_4_reg_2191[7 : 2] <= zext_ln194_4_fu_1164_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        zext_ln197_5_reg_2445[7 : 3] <= zext_ln197_5_fu_1653_p1[7 : 3];
        zext_ln198_5_reg_2450[7 : 3] <= zext_ln198_5_fu_1665_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        zext_ln197_6_reg_2525[7 : 4] <= zext_ln197_6_fu_1835_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        zext_ln198_6_reg_2550[7 : 4] <= zext_ln198_6_fu_1873_p1[7 : 4];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln198_7_reg_2635;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        DATA_x_1_address0_local = zext_ln194_7_reg_2575;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        DATA_x_1_address0_local = zext_ln197_6_reg_2525;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        DATA_x_1_address0_local = zext_ln193_2_reg_2360;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_x_1_address0_local = zext_ln198_5_reg_2450;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        DATA_x_1_address0_local = zext_ln194_5_reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address0_local = zext_ln198_4_reg_2252;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln194_4_reg_2191;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln197_7_reg_2630;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        DATA_x_1_address1_local = zext_ln193_3_reg_2400;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        DATA_x_1_address1_local = zext_ln198_6_reg_2550;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        DATA_x_1_address1_local = zext_ln194_6_reg_2495;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        DATA_x_1_address1_local = zext_ln197_5_reg_2445;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        DATA_x_1_address1_local = zext_ln193_1_reg_2324;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address1_local = zext_ln197_4_reg_2247;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln193_reg_2186;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = select_ln200_3_reg_2645;
    end else if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_1_d0_local = reg_955;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = select_ln199_3_reg_2640;
    end else if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_1_d1_local = reg_948;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln198_7_fu_2048_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        DATA_x_address0_local = zext_ln198_6_fu_1873_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        DATA_x_address0_local = zext_ln194_6_fu_1764_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        DATA_x_address0_local = zext_ln198_5_fu_1665_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address0_local = zext_ln193_3_fu_1601_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address0_local = zext_ln193_2_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address0_local = zext_ln198_4_fu_1290_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln194_4_fu_1164_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln197_7_fu_2036_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        DATA_x_address1_local = zext_ln194_7_fu_1930_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        DATA_x_address1_local = zext_ln197_6_fu_1835_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        DATA_x_address1_local = zext_ln197_5_fu_1653_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address1_local = zext_ln194_5_fu_1515_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address1_local = zext_ln193_1_fu_1436_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address1_local = zext_ln197_4_fu_1278_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln193_fu_1151_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        DATA_x_d0_local = reg_948;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_d0_local = reg_955;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d0_local = select_ln194_reg_2155;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        DATA_x_d1_local = reg_955;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_d1_local = reg_948;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = select_ln193_reg_2150;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 ==ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_2088 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 ==ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2088 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_2_fu_126;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            smem_1_address0_local = zext_ln200_3_fu_2014_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            smem_1_address0_local = zext_ln198_3_fu_1972_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            smem_1_address0_local = zext_ln196_3_fu_1914_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            smem_1_address0_local = zext_ln194_3_fu_1860_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            smem_1_address0_local = zext_ln199_2_fu_1806_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            smem_1_address0_local = zext_ln197_2_fu_1748_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            smem_1_address0_local = zext_ln195_2_fu_1706_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            smem_1_address0_local = zext_ln200_1_fu_1611_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_1_address0_local = zext_ln198_1_fu_1557_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_1_address0_local = zext_ln196_1_fu_1477_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_1_address0_local = zext_ln172_6_fu_1413_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_1_address0_local = zext_ln172_5_fu_1371_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_address0_local = zext_ln200_fu_1259_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_1_address0_local = zext_ln198_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address0_local = zext_ln196_fu_1134_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_1_address0_local = zext_ln194_fu_1048_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            smem_1_address1_local = zext_ln199_3_fu_2009_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            smem_1_address1_local = zext_ln197_3_fu_1950_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            smem_1_address1_local = zext_ln195_3_fu_1893_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            smem_1_address1_local = zext_ln200_2_fu_1840_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            smem_1_address1_local = zext_ln198_2_fu_1785_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            smem_1_address1_local = zext_ln196_2_fu_1727_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            smem_1_address1_local = zext_ln194_2_fu_1685_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            smem_1_address1_local = zext_ln199_1_fu_1606_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_1_address1_local = zext_ln197_1_fu_1535_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_1_address1_local = zext_ln195_1_fu_1456_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_1_address1_local = zext_ln194_1_fu_1392_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_1_address1_local = zext_ln172_4_fu_1340_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_address1_local = zext_ln199_fu_1237_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_1_address1_local = zext_ln197_fu_1188_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address1_local = zext_ln195_fu_1112_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_1_address1_local = zext_ln172_3_fu_1020_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            smem_address0_local = zext_ln200_3_fu_2014_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            smem_address0_local = zext_ln198_3_fu_1972_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            smem_address0_local = zext_ln196_3_fu_1914_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            smem_address0_local = zext_ln194_3_fu_1860_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            smem_address0_local = zext_ln199_2_fu_1806_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            smem_address0_local = zext_ln197_2_fu_1748_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            smem_address0_local = zext_ln195_2_fu_1706_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            smem_address0_local = zext_ln200_1_fu_1611_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_address0_local = zext_ln198_1_fu_1557_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_address0_local = zext_ln196_1_fu_1477_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_address0_local = zext_ln172_6_fu_1413_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_address0_local = zext_ln172_5_fu_1371_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address0_local = zext_ln200_fu_1259_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address0_local = zext_ln198_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address0_local = zext_ln196_fu_1134_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_address0_local = zext_ln194_fu_1048_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            smem_address1_local = zext_ln199_3_fu_2009_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            smem_address1_local = zext_ln197_3_fu_1950_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            smem_address1_local = zext_ln195_3_fu_1893_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            smem_address1_local = zext_ln200_2_fu_1840_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            smem_address1_local = zext_ln198_2_fu_1785_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            smem_address1_local = zext_ln196_2_fu_1727_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            smem_address1_local = zext_ln194_2_fu_1685_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            smem_address1_local = zext_ln199_1_fu_1606_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_address1_local = zext_ln197_1_fu_1535_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_address1_local = zext_ln195_1_fu_1456_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_address1_local = zext_ln194_1_fu_1392_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_address1_local = zext_ln172_4_fu_1340_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address1_local = zext_ln199_fu_1237_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address1_local = zext_ln197_fu_1188_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address1_local = zext_ln195_fu_1112_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_address1_local = zext_ln172_3_fu_1020_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = DATA_x_1_d0_local;
assign DATA_x_1_d1 = DATA_x_1_d1_local;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_d1 = DATA_x_d1_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln172_1_fu_1365_p2 = (mul_ln172_2_fu_1353_p5 + zext_ln172_14_fu_1268_p1);
assign add_ln172_2_fu_1408_p2 = (mul_ln172_3_fu_1398_p5 + zext_ln172_14_reg_2242);
assign add_ln172_fu_1334_p2 = (mul_ln172_1_fu_1322_p5 + zext_ln172_14_fu_1268_p1);
assign add_ln188_fu_2019_p2 = (tid_reg_2074 + 7'd4);
assign add_ln194_1_fu_1670_p2 = (offset_8_reg_2425 + 9'd32);
assign add_ln194_2_fu_1845_p2 = (offset_9_reg_2435 + 9'd32);
assign add_ln194_fu_1377_p2 = (offset_reg_2257 + 9'd32);
assign add_ln195_1_fu_1441_p2 = (offset_reg_2257 + 9'd8);
assign add_ln195_2_fu_1691_p2 = (offset_8_reg_2425 + 9'd8);
assign add_ln195_3_fu_1878_p2 = (offset_9_reg_2435 + 9'd8);
assign add_ln195_fu_1096_p2 = (offset_4_fu_1070_p5 + 9'd8);
assign add_ln196_1_fu_1462_p2 = (offset_reg_2257 + 9'd40);
assign add_ln196_2_fu_1712_p2 = (offset_8_reg_2425 + 9'd40);
assign add_ln196_3_fu_1899_p2 = (offset_9_reg_2435 + 9'd40);
assign add_ln196_fu_1118_p2 = (offset_4_fu_1070_p5 + 9'd40);
assign add_ln197_1_fu_1733_p2 = (offset_8_reg_2425 + 9'd16);
assign add_ln197_2_fu_1935_p2 = (offset_9_reg_2435 + 9'd16);
assign add_ln197_fu_1520_p2 = (offset_reg_2257 + 9'd16);
assign add_ln198_1_fu_1769_p2 = (zext_ln172_16_fu_1754_p1 + 10'd48);
assign add_ln198_2_fu_1956_p2 = (zext_ln172_17_fu_1920_p1 + 10'd48);
assign add_ln198_fu_1541_p2 = (zext_ln172_15_fu_1505_p1 + 10'd48);
assign add_ln199_1_fu_1563_p2 = (offset_reg_2257 + 9'd24);
assign add_ln199_2_fu_1791_p2 = (offset_8_reg_2425 + 9'd24);
assign add_ln199_3_fu_1978_p2 = (offset_9_reg_2435 + 9'd24);
assign add_ln199_fu_1222_p2 = (offset_4_reg_2144 + 9'd24);
assign add_ln200_1_fu_1578_p2 = (zext_ln172_15_fu_1505_p1 + 10'd56);
assign add_ln200_2_fu_1812_p2 = (zext_ln172_16_fu_1754_p1 + 10'd56);
assign add_ln200_3_fu_1993_p2 = (zext_ln172_17_fu_1920_p1 + 10'd56);
assign add_ln200_fu_1243_p2 = (zext_ln172_fu_1219_p1 + 10'd56);
assign add_ln_fu_1008_p5 = {{{{trunc_ln189_fu_978_p1}, {2'd0}}, {tmp_31_fu_1000_p3}}, {lshr_ln172_3_fu_990_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_934_p3 = ((tmp_29_reg_2136[0:0] == 1'b1) ? smem_1_q1 : smem_q1);
assign grp_fu_941_p3 = ((tmp_29_reg_2136[0:0] == 1'b1) ? smem_1_q0 : smem_q0);
assign hi_fu_1054_p4 = {{tid_reg_2074[5:3]}};
assign lshr_ln10_fu_1102_p4 = {{add_ln195_fu_1096_p2[8:1]}};
assign lshr_ln11_fu_1124_p4 = {{add_ln196_fu_1118_p2[8:1]}};
assign lshr_ln12_fu_1178_p5 = {{{{trunc_ln189_reg_2092}, {2'd1}}, {tmp_30_reg_2099}}, {tmp_33_fu_1169_p4}};
assign lshr_ln13_fu_1227_p4 = {{add_ln199_fu_1222_p2[8:1]}};
assign lshr_ln14_fu_1249_p4 = {{add_ln200_fu_1243_p2[9:1]}};
assign lshr_ln172_3_fu_990_p4 = {{ap_sig_allocacmp_tid[5:4]}};
assign lshr_ln194_1_fu_1382_p4 = {{add_ln194_fu_1377_p2[8:1]}};
assign lshr_ln194_2_fu_1675_p4 = {{add_ln194_1_fu_1670_p2[8:1]}};
assign lshr_ln194_3_fu_1850_p4 = {{add_ln194_2_fu_1845_p2[8:1]}};
assign lshr_ln195_1_fu_1446_p4 = {{add_ln195_1_fu_1441_p2[8:1]}};
assign lshr_ln195_2_fu_1696_p4 = {{add_ln195_2_fu_1691_p2[8:1]}};
assign lshr_ln195_3_fu_1883_p4 = {{add_ln195_3_fu_1878_p2[8:1]}};
assign lshr_ln196_1_fu_1467_p4 = {{add_ln196_1_fu_1462_p2[8:1]}};
assign lshr_ln196_2_fu_1717_p4 = {{add_ln196_2_fu_1712_p2[8:1]}};
assign lshr_ln196_3_fu_1904_p4 = {{add_ln196_3_fu_1899_p2[8:1]}};
assign lshr_ln197_1_fu_1525_p4 = {{add_ln197_fu_1520_p2[8:1]}};
assign lshr_ln197_2_fu_1738_p4 = {{add_ln197_1_fu_1733_p2[8:1]}};
assign lshr_ln197_3_fu_1940_p4 = {{add_ln197_2_fu_1935_p2[8:1]}};
assign lshr_ln198_1_fu_1547_p4 = {{add_ln198_fu_1541_p2[9:1]}};
assign lshr_ln198_2_fu_1775_p4 = {{add_ln198_1_fu_1769_p2[9:1]}};
assign lshr_ln198_3_fu_1962_p4 = {{add_ln198_2_fu_1956_p2[9:1]}};
assign lshr_ln199_2_fu_1796_p4 = {{add_ln199_2_fu_1791_p2[8:1]}};
assign lshr_ln_fu_1036_p5 = {{{{trunc_ln189_fu_978_p1}, {2'd2}}, {tmp_30_fu_982_p3}}, {tmp_32_fu_1026_p4}};
assign mul_ln172_1_fu_1322_p5 = {{{{tmp_s_fu_1295_p4}, {3'd4}}, {tmp_s_fu_1295_p4}}, {1'd1}};
assign mul_ln172_2_fu_1353_p5 = {{{{tmp_36_fu_1346_p3}, {4'd8}}, {tmp_36_fu_1346_p3}}, {2'd2}};
assign mul_ln172_3_fu_1398_p5 = {{{{tmp_36_reg_2277}, {4'd12}}, {tmp_36_reg_2277}}, {2'd3}};
assign mul_ln191_1_fu_1304_p5 = {{{{tmp_s_fu_1295_p4}, {3'd4}}, {tmp_s_fu_1295_p4}}, {2'd2}};
assign mul_ln191_2_fu_1616_p5 = {{{{tmp_36_reg_2277}, {4'd8}}, {tmp_36_reg_2277}}, {3'd4}};
assign mul_ln191_3_fu_1631_p5 = {{{{tmp_36_reg_2277}, {4'd12}}, {tmp_36_reg_2277}}, {3'd6}};
assign offset_4_fu_1070_p5 = {{{{trunc_ln189_reg_2092}, {2'd0}}, {tmp_30_reg_2099}}, {hi_fu_1054_p4}};
assign offset_8_fu_1626_p2 = (mul_ln191_2_fu_1616_p5 + zext_ln114_reg_2236);
assign offset_9_fu_1641_p2 = (mul_ln191_3_fu_1631_p5 + zext_ln114_reg_2236);
assign offset_fu_1316_p2 = (mul_ln191_1_fu_1304_p5 + zext_ln114_fu_1265_p1);
assign or_ln15_fu_1156_p3 = {{trunc_ln193_fu_1140_p1}, {2'd2}};
assign or_ln16_fu_1271_p3 = {{trunc_ln193_reg_2180}, {2'd1}};
assign or_ln17_fu_1283_p3 = {{trunc_ln193_reg_2180}, {2'd3}};
assign or_ln194_1_fu_1508_p3 = {{tmp_27_reg_2317}, {3'd6}};
assign or_ln194_2_fu_1757_p3 = {{tmp_28_reg_2349}, {4'd10}};
assign or_ln194_3_fu_1923_p3 = {{tmp_28_reg_2349}, {4'd14}};
assign or_ln197_1_fu_1646_p3 = {{tmp_27_reg_2317}, {3'd5}};
assign or_ln197_2_fu_1828_p3 = {{tmp_28_reg_2349}, {4'd9}};
assign or_ln197_3_fu_2029_p3 = {{tmp_28_reg_2349}, {4'd13}};
assign or_ln198_1_fu_1658_p3 = {{tmp_27_reg_2317}, {3'd7}};
assign or_ln198_2_fu_1866_p3 = {{tmp_28_reg_2349}, {4'd11}};
assign or_ln198_3_fu_2041_p3 = {{tmp_28_reg_2349}, {4'd15}};
assign or_ln19_fu_1492_p3 = {{tmp_28_fu_1483_p4}, {4'd8}};
assign select_ln193_fu_1080_p3 = ((tmp_29_fu_1063_p3[0:0] == 1'b1) ? smem_1_q1 : smem_q1);
assign select_ln194_fu_1088_p3 = ((tmp_29_fu_1063_p3[0:0] == 1'b1) ? smem_1_q0 : smem_q0);
assign select_ln199_3_fu_2053_p3 = ((tmp_29_reg_2136[0:0] == 1'b1) ? smem_1_q1 : smem_q1);
assign select_ln200_3_fu_2060_p3 = ((tmp_29_reg_2136[0:0] == 1'b1) ? smem_1_q0 : smem_q0);
assign shl_ln193_1_fu_1428_p3 = {{tmp_27_fu_1419_p4}, {3'd4}};
assign shl_ln193_2_fu_1594_p3 = {{tmp_28_reg_2349}, {4'd12}};
assign shl_ln2_fu_1143_p3 = {{trunc_ln193_fu_1140_p1}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_27_fu_1419_p4 = {{tid_reg_2074[5:1]}};
assign tmp_28_fu_1483_p4 = {{tid_reg_2074[5:2]}};
assign tmp_29_fu_1063_p3 = tid_reg_2074[32'd3];
assign tmp_30_fu_982_p3 = ap_sig_allocacmp_tid[32'd2];
assign tmp_31_fu_1000_p3 = ap_sig_allocacmp_tid[32'd2];
assign tmp_32_fu_1026_p4 = {{ap_sig_allocacmp_tid[5:4]}};
assign tmp_33_fu_1169_p4 = {{tid_reg_2074[5:4]}};
assign tmp_34_fu_1194_p4 = {{tid_reg_2074[5:4]}};
assign tmp_35_fu_1203_p5 = {{{{trunc_ln189_reg_2092}, {2'd3}}, {tmp_30_reg_2099}}, {tmp_34_fu_1194_p4}};
assign tmp_36_fu_1346_p3 = tid_reg_2074[32'd2];
assign tmp_s_fu_1295_p4 = {{tid_reg_2074[2:1]}};
assign trunc_ln189_fu_978_p1 = ap_sig_allocacmp_tid[2:0];
assign trunc_ln193_fu_1140_p1 = tid_reg_2074[5:0];
assign zext_ln114_fu_1265_p1 = hi_reg_2131;
assign zext_ln172_14_fu_1268_p1 = lshr_ln172_3_reg_2106;
assign zext_ln172_15_fu_1505_p1 = offset_reg_2257;
assign zext_ln172_16_fu_1754_p1 = offset_8_reg_2425;
assign zext_ln172_17_fu_1920_p1 = offset_9_reg_2435;
assign zext_ln172_3_fu_1020_p1 = add_ln_fu_1008_p5;
assign zext_ln172_4_fu_1340_p1 = add_ln172_fu_1334_p2;
assign zext_ln172_5_fu_1371_p1 = add_ln172_1_fu_1365_p2;
assign zext_ln172_6_fu_1413_p1 = add_ln172_2_fu_1408_p2;
assign zext_ln172_fu_1219_p1 = offset_4_reg_2144;
assign zext_ln193_1_fu_1436_p1 = shl_ln193_1_fu_1428_p3;
assign zext_ln193_2_fu_1500_p1 = or_ln19_fu_1492_p3;
assign zext_ln193_3_fu_1601_p1 = shl_ln193_2_fu_1594_p3;
assign zext_ln193_fu_1151_p1 = shl_ln2_fu_1143_p3;
assign zext_ln194_1_fu_1392_p1 = lshr_ln194_1_fu_1382_p4;
assign zext_ln194_2_fu_1685_p1 = lshr_ln194_2_fu_1675_p4;
assign zext_ln194_3_fu_1860_p1 = lshr_ln194_3_fu_1850_p4;
assign zext_ln194_4_fu_1164_p1 = or_ln15_fu_1156_p3;
assign zext_ln194_5_fu_1515_p1 = or_ln194_1_fu_1508_p3;
assign zext_ln194_6_fu_1764_p1 = or_ln194_2_fu_1757_p3;
assign zext_ln194_7_fu_1930_p1 = or_ln194_3_fu_1923_p3;
assign zext_ln194_fu_1048_p1 = lshr_ln_fu_1036_p5;
assign zext_ln195_1_fu_1456_p1 = lshr_ln195_1_fu_1446_p4;
assign zext_ln195_2_fu_1706_p1 = lshr_ln195_2_fu_1696_p4;
assign zext_ln195_3_fu_1893_p1 = lshr_ln195_3_fu_1883_p4;
assign zext_ln195_fu_1112_p1 = lshr_ln10_fu_1102_p4;
assign zext_ln196_1_fu_1477_p1 = lshr_ln196_1_fu_1467_p4;
assign zext_ln196_2_fu_1727_p1 = lshr_ln196_2_fu_1717_p4;
assign zext_ln196_3_fu_1914_p1 = lshr_ln196_3_fu_1904_p4;
assign zext_ln196_fu_1134_p1 = lshr_ln11_fu_1124_p4;
assign zext_ln197_1_fu_1535_p1 = lshr_ln197_1_fu_1525_p4;
assign zext_ln197_2_fu_1748_p1 = lshr_ln197_2_fu_1738_p4;
assign zext_ln197_3_fu_1950_p1 = lshr_ln197_3_fu_1940_p4;
assign zext_ln197_4_fu_1278_p1 = or_ln16_fu_1271_p3;
assign zext_ln197_5_fu_1653_p1 = or_ln197_1_fu_1646_p3;
assign zext_ln197_6_fu_1835_p1 = or_ln197_2_fu_1828_p3;
assign zext_ln197_7_fu_2036_p1 = or_ln197_3_fu_2029_p3;
assign zext_ln197_fu_1188_p1 = lshr_ln12_fu_1178_p5;
assign zext_ln198_1_fu_1557_p1 = lshr_ln198_1_fu_1547_p4;
assign zext_ln198_2_fu_1785_p1 = lshr_ln198_2_fu_1775_p4;
assign zext_ln198_3_fu_1972_p1 = lshr_ln198_3_fu_1962_p4;
assign zext_ln198_4_fu_1290_p1 = or_ln17_fu_1283_p3;
assign zext_ln198_5_fu_1665_p1 = or_ln198_1_fu_1658_p3;
assign zext_ln198_6_fu_1873_p1 = or_ln198_2_fu_1866_p3;
assign zext_ln198_7_fu_2048_p1 = or_ln198_3_fu_2041_p3;
assign zext_ln198_fu_1213_p1 = tmp_35_fu_1203_p5;
assign zext_ln199_1_fu_1606_p1 = lshr_ln199_1_reg_2390;
assign zext_ln199_2_fu_1806_p1 = lshr_ln199_2_fu_1796_p4;
assign zext_ln199_3_fu_2009_p1 = lshr_ln199_3_reg_2600;
assign zext_ln199_fu_1237_p1 = lshr_ln13_fu_1227_p4;
assign zext_ln200_1_fu_1611_p1 = lshr_ln200_1_reg_2395;
assign zext_ln200_2_fu_1840_p1 = lshr_ln200_2_reg_2520;
assign zext_ln200_3_fu_2014_p1 = lshr_ln200_3_reg_2605;
assign zext_ln200_fu_1259_p1 = lshr_ln14_fu_1249_p4;
always @ (posedge ap_clk) begin
    offset_4_reg_2144[5:4] <= 2'b00;
    zext_ln193_reg_2186[1:0] <= 2'b00;
    zext_ln193_reg_2186[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln194_4_reg_2191[1:0] <= 2'b10;
    zext_ln194_4_reg_2191[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln114_reg_2236[8:3] <= 6'b000000;
    zext_ln172_14_reg_2242[7:2] <= 6'b000000;
    zext_ln197_4_reg_2247[1:0] <= 2'b01;
    zext_ln197_4_reg_2247[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln198_4_reg_2252[1:0] <= 2'b11;
    zext_ln198_4_reg_2252[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln193_1_reg_2324[2:0] <= 3'b100;
    zext_ln193_1_reg_2324[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln193_2_reg_2360[3:0] <= 4'b1000;
    zext_ln193_2_reg_2360[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln194_5_reg_2365[2:0] <= 3'b110;
    zext_ln194_5_reg_2365[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln193_3_reg_2400[3:0] <= 4'b1100;
    zext_ln193_3_reg_2400[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln197_5_reg_2445[2:0] <= 3'b101;
    zext_ln197_5_reg_2445[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln198_5_reg_2450[2:0] <= 3'b111;
    zext_ln198_5_reg_2450[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln194_6_reg_2495[3:0] <= 4'b1010;
    zext_ln194_6_reg_2495[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln197_6_reg_2525[3:0] <= 4'b1001;
    zext_ln197_6_reg_2525[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln198_6_reg_2550[3:0] <= 4'b1011;
    zext_ln198_6_reg_2550[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln194_7_reg_2575[3:0] <= 4'b1110;
    zext_ln194_7_reg_2575[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln197_7_reg_2630[3:0] <= 4'b1101;
    zext_ln197_7_reg_2630[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln198_7_reg_2635[3:0] <= 4'b1111;
    zext_ln198_7_reg_2635[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 