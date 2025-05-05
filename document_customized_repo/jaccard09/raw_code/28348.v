module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_4_address1,DATA_x_4_ce1,DATA_x_4_q1,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_5_address1,DATA_x_5_ce1,DATA_x_5_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_6_address1,DATA_x_6_ce1,DATA_x_6_q1,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_7_address1,DATA_x_7_ce1,DATA_x_7_q1); 
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
output  [6:0] smem_7_address0;
output   smem_7_ce0;
output   smem_7_we0;
output  [63:0] smem_7_d0;
output  [6:0] smem_6_address0;
output   smem_6_ce0;
output   smem_6_we0;
output  [63:0] smem_6_d0;
output  [6:0] smem_5_address0;
output   smem_5_ce0;
output   smem_5_we0;
output  [63:0] smem_5_d0;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [6:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [5:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [5:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [5:0] DATA_x_4_address1;
output   DATA_x_4_ce1;
input  [63:0] DATA_x_4_q1;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [5:0] DATA_x_5_address1;
output   DATA_x_5_ce1;
input  [63:0] DATA_x_5_q1;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [5:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [5:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [5:0] DATA_x_6_address1;
output   DATA_x_6_ce1;
input  [63:0] DATA_x_6_q1;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [5:0] DATA_x_7_address1;
output   DATA_x_7_ce1;
input  [63:0] DATA_x_7_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_1915;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [63:0] reg_1024;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_1032;
reg   [6:0] tid_3_reg_1906;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_1048_p3;
wire   [5:0] offset_4_fu_1082_p3;
reg   [5:0] offset_4_reg_1959;
wire   [0:0] icmp_ln298_fu_1120_p2;
reg   [0:0] icmp_ln298_reg_2006;
wire   [0:0] icmp_ln298_1_fu_1126_p2;
reg   [0:0] icmp_ln298_1_reg_2010;
wire   [5:0] offset_5_fu_1162_p3;
reg   [5:0] offset_5_reg_2014;
reg   [6:0] smem_2_addr_reg_2026;
reg   [6:0] smem_6_addr_reg_2031;
reg   [6:0] smem_3_addr_reg_2076;
reg   [6:0] smem_7_addr_reg_2081;
reg   [63:0] DATA_x_4_load_reg_2096;
reg   [63:0] DATA_x_4_load_1_reg_2102;
reg   [63:0] DATA_x_5_load_reg_2113;
reg   [63:0] DATA_x_5_load_1_reg_2119;
reg   [63:0] DATA_x_2_load_reg_2130;
reg   [63:0] DATA_x_2_load_1_reg_2136;
reg   [63:0] DATA_x_3_load_reg_2147;
reg   [63:0] DATA_x_3_load_1_reg_2153;
reg   [63:0] DATA_x_6_load_reg_2164;
reg   [63:0] DATA_x_6_load_1_reg_2170;
reg   [63:0] DATA_x_7_load_reg_2181;
reg   [63:0] DATA_x_7_load_1_reg_2187;
wire   [5:0] offset_fu_1202_p1;
reg   [5:0] offset_reg_2193;
wire   [8:0] zext_ln295_3_fu_1205_p1;
reg   [8:0] zext_ln295_3_reg_2200;
wire   [8:0] zext_ln172_7_fu_1231_p1;
reg   [8:0] zext_ln172_7_reg_2206;
wire   [2:0] lo_6_fu_1271_p3;
reg   [2:0] lo_6_reg_2212;
reg   [63:0] DATA_x_4_load_2_reg_2217;
reg   [63:0] DATA_x_4_load_3_reg_2223;
reg   [63:0] DATA_x_5_load_2_reg_2229;
reg   [63:0] DATA_x_5_load_3_reg_2235;
reg   [63:0] DATA_x_2_load_2_reg_2241;
reg   [63:0] DATA_x_2_load_3_reg_2247;
reg   [63:0] DATA_x_3_load_2_reg_2253;
reg   [63:0] DATA_x_3_load_3_reg_2259;
reg   [63:0] DATA_x_6_load_2_reg_2265;
reg   [63:0] DATA_x_6_load_3_reg_2271;
reg   [63:0] DATA_x_7_load_2_reg_2277;
reg   [63:0] DATA_x_7_load_3_reg_2283;
wire   [0:0] icmp_ln298_3_fu_1279_p2;
reg   [0:0] icmp_ln298_3_reg_2289;
wire   [0:0] icmp_ln298_5_fu_1285_p2;
reg   [0:0] icmp_ln298_5_reg_2293;
wire   [7:0] zext_ln295_2_fu_1304_p1;
reg   [7:0] zext_ln295_2_reg_2297;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [7:0] zext_ln172_6_fu_1329_p1;
reg   [7:0] zext_ln172_6_reg_2303;
wire   [8:0] zext_ln172_10_fu_1354_p1;
reg   [8:0] zext_ln172_10_reg_2309;
wire   [9:0] trunc_ln172_fu_1390_p1;
reg   [9:0] trunc_ln172_reg_2315;
reg   [5:0] lshr_ln10_reg_2325;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [5:0] lshr_ln304_1_reg_2330;
wire   [7:0] zext_ln172_9_fu_1488_p1;
reg   [7:0] zext_ln172_9_reg_2335;
reg   [4:0] trunc_ln_reg_2341;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [4:0] trunc_ln303_1_reg_2346;
reg   [5:0] lshr_ln304_2_reg_2351;
reg   [4:0] trunc_ln303_2_reg_2356;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [6:0] lshr_ln305_3_reg_2361;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln294_fu_1056_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln296_fu_1090_p1;
wire   [63:0] zext_ln172_fu_1141_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln296_1_fu_1170_p1;
wire   [63:0] zext_ln296_2_fu_1190_p1;
wire   [63:0] zext_ln299_fu_1225_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln299_1_fu_1250_p1;
wire   [63:0] zext_ln300_fu_1323_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln300_1_fu_1348_p1;
wire   [63:0] zext_ln299_2_fu_1373_p1;
wire   [63:0] zext_ln299_3_fu_1410_p1;
wire   [63:0] zext_ln301_fu_1431_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln301_1_fu_1467_p1;
wire   [63:0] zext_ln300_2_fu_1507_p1;
wire   [63:0] zext_ln300_3_fu_1528_p1;
wire   [63:0] zext_ln302_fu_1549_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln302_1_fu_1585_p1;
wire   [63:0] zext_ln301_2_fu_1621_p1;
wire   [63:0] zext_ln301_3_fu_1657_p1;
wire   [63:0] zext_ln303_fu_1666_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln303_1_fu_1675_p1;
wire   [63:0] zext_ln302_2_fu_1696_p1;
wire   [63:0] zext_ln302_3_fu_1732_p1;
wire   [63:0] zext_ln304_fu_1738_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln304_1_fu_1743_p1;
wire   [63:0] zext_ln303_2_fu_1751_p1;
wire   [63:0] zext_ln303_3_fu_1772_p1;
wire   [63:0] zext_ln305_fu_1797_p1;
wire   [63:0] zext_ln305_1_fu_1822_p1;
wire   [63:0] zext_ln304_2_fu_1828_p1;
wire   [63:0] zext_ln304_3_fu_1848_p1;
wire   [63:0] zext_ln305_2_fu_1888_p1;
wire   [63:0] zext_ln305_3_fu_1894_p1;
reg   [6:0] tid_fu_136;
wire   [6:0] add_ln294_fu_1291_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce1_local;
reg   [5:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [5:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [5:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [5:0] DATA_x_1_address0_local;
reg    DATA_x_4_ce1_local;
reg   [5:0] DATA_x_4_address1_local;
reg    DATA_x_4_ce0_local;
reg   [5:0] DATA_x_4_address0_local;
reg    DATA_x_5_ce1_local;
reg   [5:0] DATA_x_5_address1_local;
reg    DATA_x_5_ce0_local;
reg   [5:0] DATA_x_5_address0_local;
reg    DATA_x_2_ce1_local;
reg   [5:0] DATA_x_2_address1_local;
reg    DATA_x_2_ce0_local;
reg   [5:0] DATA_x_2_address0_local;
reg    DATA_x_3_ce1_local;
reg   [5:0] DATA_x_3_address1_local;
reg    DATA_x_3_ce0_local;
reg   [5:0] DATA_x_3_address0_local;
reg    DATA_x_6_ce1_local;
reg   [5:0] DATA_x_6_address1_local;
reg    DATA_x_6_ce0_local;
reg   [5:0] DATA_x_6_address0_local;
reg    DATA_x_7_ce1_local;
reg   [5:0] DATA_x_7_address1_local;
reg    DATA_x_7_ce0_local;
reg   [5:0] DATA_x_7_address0_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
wire    ap_block_pp0_stage7_11001;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [6:0] smem_5_address0_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [6:0] smem_6_address0_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_7_we0_local;
reg   [63:0] smem_7_d0_local;
reg    smem_7_ce0_local;
reg   [6:0] smem_7_address0_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
wire   [4:0] tmp_s_fu_1072_p4;
wire   [1:0] tmp_27_fu_1102_p4;
wire   [2:0] lo_fu_1068_p1;
wire   [2:0] lo_4_fu_1112_p3;
wire   [2:0] hi_5_fu_1132_p4;
wire   [3:0] tmp_28_fu_1153_p4;
wire   [5:0] or_ln294_2_fu_1182_p3;
wire   [8:0] add_ln299_fu_1209_p2;
wire   [5:0] lshr_ln_fu_1215_p4;
wire   [8:0] add_ln299_1_fu_1234_p2;
wire   [5:0] lshr_ln299_1_fu_1240_p4;
wire   [0:0] tmp_30_fu_1256_p3;
wire   [2:0] lo_5_fu_1263_p3;
wire   [7:0] add_ln300_fu_1307_p2;
wire   [4:0] lshr_ln7_fu_1313_p4;
wire   [7:0] add_ln300_1_fu_1332_p2;
wire   [4:0] lshr_ln300_1_fu_1338_p4;
wire   [8:0] add_ln299_2_fu_1357_p2;
wire   [5:0] lshr_ln299_2_fu_1363_p4;
wire   [31:0] zext_ln295_fu_1301_p1;
wire   [31:0] offset_6_fu_1379_p5;
wire   [9:0] add_ln299_3_fu_1394_p2;
wire   [6:0] lshr_ln299_3_fu_1400_p4;
wire   [8:0] add_ln301_fu_1416_p2;
wire   [5:0] lshr_ln8_fu_1421_p4;
wire   [8:0] add_ln304_fu_1437_p2;
wire   [8:0] add_ln301_1_fu_1452_p2;
wire   [5:0] lshr_ln301_1_fu_1457_p4;
wire   [8:0] add_ln304_1_fu_1473_p2;
wire   [7:0] add_ln300_2_fu_1491_p2;
wire   [4:0] lshr_ln300_2_fu_1497_p4;
wire   [9:0] add_ln300_3_fu_1513_p2;
wire   [6:0] lshr_ln300_3_fu_1518_p4;
wire   [7:0] add_ln302_fu_1534_p2;
wire   [4:0] lshr_ln9_fu_1539_p4;
wire   [7:0] add_ln303_fu_1555_p2;
wire   [7:0] add_ln302_1_fu_1570_p2;
wire   [4:0] lshr_ln302_1_fu_1575_p4;
wire   [7:0] add_ln303_1_fu_1591_p2;
wire   [8:0] add_ln301_2_fu_1606_p2;
wire   [5:0] lshr_ln301_2_fu_1611_p4;
wire   [8:0] add_ln304_2_fu_1627_p2;
wire   [9:0] add_ln301_3_fu_1642_p2;
wire   [6:0] lshr_ln301_3_fu_1647_p4;
wire  signed [5:0] sext_ln303_fu_1663_p1;
wire  signed [5:0] sext_ln303_1_fu_1672_p1;
wire   [7:0] add_ln302_2_fu_1681_p2;
wire   [4:0] lshr_ln302_2_fu_1686_p4;
wire   [7:0] add_ln303_2_fu_1702_p2;
wire   [9:0] add_ln302_3_fu_1717_p2;
wire   [6:0] lshr_ln302_3_fu_1722_p4;
wire  signed [5:0] sext_ln303_2_fu_1748_p1;
wire   [9:0] add_ln303_3_fu_1757_p2;
wire   [6:0] lshr_ln303_3_fu_1762_p4;
wire   [9:0] zext_ln295_1_fu_1778_p1;
wire   [9:0] add_ln305_fu_1781_p2;
wire   [6:0] lshr_ln11_fu_1787_p4;
wire   [9:0] zext_ln172_5_fu_1803_p1;
wire   [9:0] add_ln305_1_fu_1806_p2;
wire   [6:0] lshr_ln305_1_fu_1812_p4;
wire   [9:0] add_ln304_3_fu_1833_p2;
wire   [6:0] lshr_ln304_3_fu_1838_p4;
wire   [9:0] add_ln305_3_fu_1854_p2;
wire   [9:0] zext_ln172_8_fu_1869_p1;
wire   [9:0] add_ln305_2_fu_1872_p2;
wire   [6:0] lshr_ln305_2_fu_1878_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
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
#0 tid_fu_136 = 7'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_136 <= 7'd0;
    end else if (((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tid_fu_136 <= add_ln294_fu_1291_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_load_1_reg_2136 <= DATA_x_2_q0;
        DATA_x_2_load_reg_2130 <= DATA_x_2_q1;
        DATA_x_3_load_1_reg_2153 <= DATA_x_3_q0;
        DATA_x_3_load_reg_2147 <= DATA_x_3_q1;
        DATA_x_4_load_1_reg_2102 <= DATA_x_4_q0;
        DATA_x_4_load_reg_2096 <= DATA_x_4_q1;
        DATA_x_5_load_1_reg_2119 <= DATA_x_5_q0;
        DATA_x_5_load_reg_2113 <= DATA_x_5_q1;
        DATA_x_6_load_1_reg_2170 <= DATA_x_6_q0;
        DATA_x_6_load_reg_2164 <= DATA_x_6_q1;
        DATA_x_7_load_1_reg_2187 <= DATA_x_7_q0;
        DATA_x_7_load_reg_2181 <= DATA_x_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_load_2_reg_2241 <= DATA_x_2_q1;
        DATA_x_2_load_3_reg_2247 <= DATA_x_2_q0;
        DATA_x_3_load_2_reg_2253 <= DATA_x_3_q1;
        DATA_x_3_load_3_reg_2259 <= DATA_x_3_q0;
        DATA_x_4_load_2_reg_2217 <= DATA_x_4_q1;
        DATA_x_4_load_3_reg_2223 <= DATA_x_4_q0;
        DATA_x_5_load_2_reg_2229 <= DATA_x_5_q1;
        DATA_x_5_load_3_reg_2235 <= DATA_x_5_q0;
        DATA_x_6_load_2_reg_2265 <= DATA_x_6_q1;
        DATA_x_6_load_3_reg_2271 <= DATA_x_6_q0;
        DATA_x_7_load_2_reg_2277 <= DATA_x_7_q1;
        DATA_x_7_load_3_reg_2283 <= DATA_x_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln298_1_reg_2010 <= icmp_ln298_1_fu_1126_p2;
        icmp_ln298_reg_2006 <= icmp_ln298_fu_1120_p2;
        lshr_ln305_3_reg_2361 <= {{add_ln305_3_fu_1854_p2[9:3]}};
        offset_4_reg_1959[5 : 1] <= offset_4_fu_1082_p3[5 : 1];
        tid_3_reg_1906 <= ap_sig_allocacmp_tid_3;
        tmp_reg_1915 <= ap_sig_allocacmp_tid_3[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln298_3_reg_2289 <= icmp_ln298_3_fu_1279_p2;
        icmp_ln298_5_reg_2293 <= icmp_ln298_5_fu_1285_p2;
        lo_6_reg_2212[2] <= lo_6_fu_1271_p3[2];
        offset_reg_2193 <= offset_fu_1202_p1;
        zext_ln172_7_reg_2206[5 : 1] <= zext_ln172_7_fu_1231_p1[5 : 1];
        zext_ln295_3_reg_2200[5 : 0] <= zext_ln295_3_fu_1205_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln10_reg_2325 <= {{add_ln304_fu_1437_p2[8:3]}};
        lshr_ln304_1_reg_2330 <= {{add_ln304_1_fu_1473_p2[8:3]}};
        zext_ln172_9_reg_2335[5 : 2] <= zext_ln172_9_fu_1488_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln304_2_reg_2351 <= {{add_ln304_2_fu_1627_p2[8:3]}};
        trunc_ln303_1_reg_2346 <= {{add_ln303_1_fu_1591_p2[7:3]}};
        trunc_ln_reg_2341 <= {{add_ln303_fu_1555_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_5_reg_2014[5 : 2] <= offset_5_fu_1162_p3[5 : 2];
        smem_2_addr_reg_2026[2 : 0] <= zext_ln172_fu_1141_p1[2 : 0];
        smem_3_addr_reg_2076[2 : 0] <= zext_ln172_fu_1141_p1[2 : 0];
        smem_6_addr_reg_2031[2 : 0] <= zext_ln172_fu_1141_p1[2 : 0];
        smem_7_addr_reg_2081[2 : 0] <= zext_ln172_fu_1141_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1024 <= DATA_x_1_q1;
        reg_1032 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        trunc_ln172_reg_2315 <= trunc_ln172_fu_1390_p1;
        zext_ln172_10_reg_2309[5 : 2] <= zext_ln172_10_fu_1354_p1[5 : 2];
        zext_ln172_6_reg_2303[5 : 1] <= zext_ln172_6_fu_1329_p1[5 : 1];
        zext_ln295_2_reg_2297[5 : 0] <= zext_ln295_2_fu_1304_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        trunc_ln303_2_reg_2356 <= {{add_ln303_2_fu_1702_p2[7:3]}};
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln296_2_fu_1190_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln296_fu_1090_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln296_1_fu_1170_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln294_fu_1056_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address0_local = zext_ln296_2_fu_1190_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address0_local = zext_ln296_fu_1090_p1;
        end else begin
            DATA_x_2_address0_local = 'bx;
        end
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address1_local = zext_ln296_1_fu_1170_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address1_local = zext_ln294_fu_1056_p1;
        end else begin
            DATA_x_2_address1_local = 'bx;
        end
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address0_local = zext_ln296_2_fu_1190_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address0_local = zext_ln296_fu_1090_p1;
        end else begin
            DATA_x_3_address0_local = 'bx;
        end
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address1_local = zext_ln296_1_fu_1170_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address1_local = zext_ln294_fu_1056_p1;
        end else begin
            DATA_x_3_address1_local = 'bx;
        end
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_4_address0_local = zext_ln296_2_fu_1190_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_4_address0_local = zext_ln296_fu_1090_p1;
        end else begin
            DATA_x_4_address0_local = 'bx;
        end
    end else begin
        DATA_x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_4_address1_local = zext_ln296_1_fu_1170_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_4_address1_local = zext_ln294_fu_1056_p1;
        end else begin
            DATA_x_4_address1_local = 'bx;
        end
    end else begin
        DATA_x_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_4_ce1_local = 1'b1;
    end else begin
        DATA_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_5_address0_local = zext_ln296_2_fu_1190_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_5_address0_local = zext_ln296_fu_1090_p1;
        end else begin
            DATA_x_5_address0_local = 'bx;
        end
    end else begin
        DATA_x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_5_address1_local = zext_ln296_1_fu_1170_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_5_address1_local = zext_ln294_fu_1056_p1;
        end else begin
            DATA_x_5_address1_local = 'bx;
        end
    end else begin
        DATA_x_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_5_ce1_local = 1'b1;
    end else begin
        DATA_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_6_address0_local = zext_ln296_2_fu_1190_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_6_address0_local = zext_ln296_fu_1090_p1;
        end else begin
            DATA_x_6_address0_local = 'bx;
        end
    end else begin
        DATA_x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_6_address1_local = zext_ln296_1_fu_1170_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_6_address1_local = zext_ln294_fu_1056_p1;
        end else begin
            DATA_x_6_address1_local = 'bx;
        end
    end else begin
        DATA_x_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_6_ce1_local = 1'b1;
    end else begin
        DATA_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_7_address0_local = zext_ln296_2_fu_1190_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_7_address0_local = zext_ln296_fu_1090_p1;
        end else begin
            DATA_x_7_address0_local = 'bx;
        end
    end else begin
        DATA_x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_7_address1_local = zext_ln296_1_fu_1170_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_7_address1_local = zext_ln294_fu_1056_p1;
        end else begin
            DATA_x_7_address1_local = 'bx;
        end
    end else begin
        DATA_x_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_7_ce1_local = 1'b1;
    end else begin
        DATA_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln296_2_fu_1190_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln296_fu_1090_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln296_1_fu_1170_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln294_fu_1056_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1915 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln305_1_fu_1822_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln304_1_fu_1743_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln303_1_fu_1675_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln302_1_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln301_1_fu_1467_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln300_1_fu_1348_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln299_1_fu_1250_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_fu_1141_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_7_load_1_reg_2187;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d0_local = DATA_x_6_load_1_reg_2170;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_d0_local = DATA_x_3_load_1_reg_2153;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_x_2_load_1_reg_2136;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d0_local = DATA_x_5_load_1_reg_2119;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_x_4_load_1_reg_2102;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = reg_1032;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_q0;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_1915 ==1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln305_2_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln304_2_fu_1828_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln303_2_fu_1751_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln302_2_fu_1696_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln301_2_fu_1621_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln300_2_fu_1507_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln299_2_fu_1373_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = smem_2_addr_reg_2026;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_7_load_2_reg_2277;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_6_load_2_reg_2265;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d0_local = DATA_x_3_load_2_reg_2253;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_d0_local = DATA_x_2_load_2_reg_2241;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_x_5_load_2_reg_2229;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d0_local = DATA_x_4_load_2_reg_2217;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = reg_1024;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_q1;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln298_3_reg_2289 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln298_3_reg_2289 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln298_3_reg_2289 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln298_3_reg_2289 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln298_3_reg_2289 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln298_3_fu_1279_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001)& (icmp_ln298_3_reg_2289 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln298_3_reg_2289 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln305_3_fu_1894_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln304_3_fu_1848_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address0_local = zext_ln303_3_fu_1772_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln302_3_fu_1732_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln301_3_fu_1657_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln300_3_fu_1528_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln299_3_fu_1410_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = smem_3_addr_reg_2076;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_7_load_3_reg_2283;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_6_load_3_reg_2271;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d0_local = DATA_x_3_load_3_reg_2259;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_d0_local = DATA_x_2_load_3_reg_2247;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d0_local = DATA_x_5_load_3_reg_2235;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_d0_local = DATA_x_4_load_3_reg_2223;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = reg_1032;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_q0;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln298_5_reg_2293 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln298_5_reg_2293 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln298_5_reg_2293 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln298_5_reg_2293 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln298_5_reg_2293 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln298_5_fu_1285_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001)& (icmp_ln298_5_reg_2293 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln298_5_reg_2293 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln305_fu_1797_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_address0_local = zext_ln304_fu_1738_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln303_fu_1666_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln302_fu_1549_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln301_fu_1431_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln300_fu_1323_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln299_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_fu_1141_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_7_load_reg_2181;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_4_d0_local = DATA_x_6_load_reg_2164;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_d0_local = DATA_x_3_load_reg_2147;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d0_local = DATA_x_2_load_reg_2130;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_d0_local = DATA_x_5_load_reg_2113;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_x_4_load_reg_2096;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = reg_1024;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_q1;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_reg_2006 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_reg_2006 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_reg_2006 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_reg_2006 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_reg_2006 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_reg_2006 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_1915 == 1'd0) & (1'b0== ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_reg_2006 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln298_reg_2006 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln305_1_fu_1822_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_address0_local = zext_ln304_1_fu_1743_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address0_local = zext_ln303_1_fu_1675_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln302_1_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln301_1_fu_1467_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln300_1_fu_1348_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln299_1_fu_1250_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_fu_1141_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_7_load_1_reg_2187;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_5_d0_local = DATA_x_6_load_1_reg_2170;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_d0_local = DATA_x_3_load_1_reg_2153;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d0_local = DATA_x_2_load_1_reg_2136;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_d0_local = DATA_x_5_load_1_reg_2119;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_x_4_load_1_reg_2102;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = reg_1032;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_q0;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_1915 ==1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln298_1_reg_2010 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln305_2_fu_1888_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln304_2_fu_1828_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_6_address0_local = zext_ln303_2_fu_1751_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_address0_local = zext_ln302_2_fu_1696_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address0_local = zext_ln301_2_fu_1621_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_6_address0_local = zext_ln300_2_fu_1507_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln299_2_fu_1373_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = smem_6_addr_reg_2031;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_7_load_2_reg_2277;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_6_load_2_reg_2265;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_6_d0_local = DATA_x_3_load_2_reg_2253;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_d0_local = DATA_x_2_load_2_reg_2241;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_d0_local = DATA_x_5_load_2_reg_2229;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_6_d0_local = DATA_x_4_load_2_reg_2217;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = reg_1024;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_q1;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln298_3_reg_2289 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln298_3_reg_2289 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln298_3_reg_2289 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln298_3_reg_2289 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln298_3_reg_2289 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln298_3_fu_1279_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001)& (icmp_ln298_3_reg_2289 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln298_3_reg_2289 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln305_3_fu_1894_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln304_3_fu_1848_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_7_address0_local = zext_ln303_3_fu_1772_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_address0_local = zext_ln302_3_fu_1732_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_7_address0_local = zext_ln301_3_fu_1657_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_7_address0_local = zext_ln300_3_fu_1528_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln299_3_fu_1410_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = smem_7_addr_reg_2081;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_7_load_3_reg_2283;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_x_6_load_3_reg_2271;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_7_d0_local = DATA_x_3_load_3_reg_2259;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_7_d0_local = DATA_x_2_load_3_reg_2247;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_7_d0_local = DATA_x_5_load_3_reg_2235;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_7_d0_local = DATA_x_4_load_3_reg_2223;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_d0_local = reg_1032;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = DATA_x_q0;
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln298_5_reg_2293 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln298_5_reg_2293 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln298_5_reg_2293 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln298_5_reg_2293 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln298_5_reg_2293 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln298_5_fu_1285_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001)& (icmp_ln298_5_reg_2293 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln298_5_reg_2293 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln305_fu_1797_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln304_fu_1738_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln303_fu_1666_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln302_fu_1549_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln301_fu_1431_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln300_fu_1323_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln299_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_fu_1141_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_7_load_reg_2181;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d0_local = DATA_x_6_load_reg_2164;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d0_local = DATA_x_3_load_reg_2147;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_x_2_load_reg_2130;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d0_local = DATA_x_5_load_reg_2113;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_x_4_load_reg_2096;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = reg_1024;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_q1;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1915 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_1915 == 1'd0) & (1'b0== ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln298_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln298_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
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
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_2_address0 = DATA_x_2_address0_local;
assign DATA_x_2_address1 = DATA_x_2_address1_local;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = DATA_x_3_address0_local;
assign DATA_x_3_address1 = DATA_x_3_address1_local;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_4_address0 = DATA_x_4_address0_local;
assign DATA_x_4_address1 = DATA_x_4_address1_local;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_ce1 = DATA_x_4_ce1_local;
assign DATA_x_5_address0 = DATA_x_5_address0_local;
assign DATA_x_5_address1 = DATA_x_5_address1_local;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_ce1 = DATA_x_5_ce1_local;
assign DATA_x_6_address0 = DATA_x_6_address0_local;
assign DATA_x_6_address1 = DATA_x_6_address1_local;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_ce1 = DATA_x_6_ce1_local;
assign DATA_x_7_address0 = DATA_x_7_address0_local;
assign DATA_x_7_address1 = DATA_x_7_address1_local;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_ce1 = DATA_x_7_ce1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln294_fu_1291_p2 = (tid_3_reg_1906 + 7'd4);
assign add_ln299_1_fu_1234_p2 = ($signed(zext_ln172_7_fu_1231_p1) + $signed(9'd288));
assign add_ln299_2_fu_1357_p2 = ($signed(zext_ln172_10_fu_1354_p1) + $signed(9'd288));
assign add_ln299_3_fu_1394_p2 = (trunc_ln172_fu_1390_p1 + 10'd288);
assign add_ln299_fu_1209_p2 = ($signed(zext_ln295_3_fu_1205_p1) + $signed(9'd288));
assign add_ln300_1_fu_1332_p2 = (zext_ln172_6_fu_1329_p1 + 8'd72);
assign add_ln300_2_fu_1491_p2 = (zext_ln172_9_fu_1488_p1 + 8'd72);
assign add_ln300_3_fu_1513_p2 = (trunc_ln172_reg_2315 + 10'd72);
assign add_ln300_fu_1307_p2 = (zext_ln295_2_fu_1304_p1 + 8'd72);
assign add_ln301_1_fu_1452_p2 = ($signed(zext_ln172_7_reg_2206) + $signed(9'd360));
assign add_ln301_2_fu_1606_p2 = ($signed(zext_ln172_10_reg_2309) + $signed(9'd360));
assign add_ln301_3_fu_1642_p2 = (trunc_ln172_reg_2315 + 10'd360);
assign add_ln301_fu_1416_p2 = ($signed(zext_ln295_3_reg_2200) + $signed(9'd360));
assign add_ln302_1_fu_1570_p2 = ($signed(zext_ln172_6_reg_2303) + $signed(8'd144));
assign add_ln302_2_fu_1681_p2 = ($signed(zext_ln172_9_reg_2335) + $signed(8'd144));
assign add_ln302_3_fu_1717_p2 = (trunc_ln172_reg_2315 + 10'd144);
assign add_ln302_fu_1534_p2 = ($signed(zext_ln295_2_reg_2297) + $signed(8'd144));
assign add_ln303_1_fu_1591_p2 = ($signed(zext_ln172_6_reg_2303) + $signed(8'd176));
assign add_ln303_2_fu_1702_p2 = ($signed(zext_ln172_9_reg_2335) + $signed(8'd176));
assign add_ln303_3_fu_1757_p2 = (trunc_ln172_reg_2315 + 10'd432);
assign add_ln303_fu_1555_p2 = ($signed(zext_ln295_2_reg_2297) + $signed(8'd176));
assign add_ln304_1_fu_1473_p2 = (zext_ln172_7_reg_2206 + 9'd216);
assign add_ln304_2_fu_1627_p2 = (zext_ln172_10_reg_2309 + 9'd216);
assign add_ln304_3_fu_1833_p2 = (trunc_ln172_reg_2315 + 10'd216);
assign add_ln304_fu_1437_p2 = (zext_ln295_3_reg_2200 + 9'd216);
assign add_ln305_1_fu_1806_p2 = (zext_ln172_5_fu_1803_p1 + 10'd504);
assign add_ln305_2_fu_1872_p2 = (zext_ln172_8_fu_1869_p1 + 10'd504);
assign add_ln305_3_fu_1854_p2 = (trunc_ln172_reg_2315 + 10'd504);
assign add_ln305_fu_1781_p2 = (zext_ln295_1_fu_1778_p1 + 10'd504);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign hi_5_fu_1132_p4 = {{tid_3_reg_1906[5:3]}};
assign icmp_ln298_1_fu_1126_p2 = ((lo_4_fu_1112_p3 == 3'd1) ? 1'b1 : 1'b0);
assign icmp_ln298_3_fu_1279_p2 = ((lo_5_fu_1263_p3 == 3'd2) ? 1'b1 : 1'b0);
assign icmp_ln298_5_fu_1285_p2 = ((lo_6_fu_1271_p3 == 3'd3) ? 1'b1 : 1'b0);
assign icmp_ln298_fu_1120_p2 = ((lo_fu_1068_p1 == 3'd0) ? 1'b1 : 1'b0);
assign lo_4_fu_1112_p3 = {{tmp_27_fu_1102_p4}, {1'd1}};
assign lo_5_fu_1263_p3 = {{tmp_30_fu_1256_p3}, {2'd2}};
assign lo_6_fu_1271_p3 = {{tmp_30_fu_1256_p3}, {2'd3}};
assign lo_fu_1068_p1 = ap_sig_allocacmp_tid_3[2:0];
assign lshr_ln11_fu_1787_p4 = {{add_ln305_fu_1781_p2[9:3]}};
assign lshr_ln299_1_fu_1240_p4 = {{add_ln299_1_fu_1234_p2[8:3]}};
assign lshr_ln299_2_fu_1363_p4 = {{add_ln299_2_fu_1357_p2[8:3]}};
assign lshr_ln299_3_fu_1400_p4 = {{add_ln299_3_fu_1394_p2[9:3]}};
assign lshr_ln300_1_fu_1338_p4 = {{add_ln300_1_fu_1332_p2[7:3]}};
assign lshr_ln300_2_fu_1497_p4 = {{add_ln300_2_fu_1491_p2[7:3]}};
assign lshr_ln300_3_fu_1518_p4 = {{add_ln300_3_fu_1513_p2[9:3]}};
assign lshr_ln301_1_fu_1457_p4 = {{add_ln301_1_fu_1452_p2[8:3]}};
assign lshr_ln301_2_fu_1611_p4 = {{add_ln301_2_fu_1606_p2[8:3]}};
assign lshr_ln301_3_fu_1647_p4 = {{add_ln301_3_fu_1642_p2[9:3]}};
assign lshr_ln302_1_fu_1575_p4 = {{add_ln302_1_fu_1570_p2[7:3]}};
assign lshr_ln302_2_fu_1686_p4 = {{add_ln302_2_fu_1681_p2[7:3]}};
assign lshr_ln302_3_fu_1722_p4 = {{add_ln302_3_fu_1717_p2[9:3]}};
assign lshr_ln303_3_fu_1762_p4 = {{add_ln303_3_fu_1757_p2[9:3]}};
assign lshr_ln304_3_fu_1838_p4 = {{add_ln304_3_fu_1833_p2[9:3]}};
assign lshr_ln305_1_fu_1812_p4 = {{add_ln305_1_fu_1806_p2[9:3]}};
assign lshr_ln305_2_fu_1878_p4 = {{add_ln305_2_fu_1872_p2[9:3]}};
assign lshr_ln7_fu_1313_p4 = {{add_ln300_fu_1307_p2[7:3]}};
assign lshr_ln8_fu_1421_p4 = {{add_ln301_fu_1416_p2[8:3]}};
assign lshr_ln9_fu_1539_p4 = {{add_ln302_fu_1534_p2[7:3]}};
assign lshr_ln_fu_1215_p4 = {{add_ln299_fu_1209_p2[8:3]}};
assign offset_4_fu_1082_p3 = {{tmp_s_fu_1072_p4}, {1'd1}};
assign offset_5_fu_1162_p3 = {{tmp_28_fu_1153_p4}, {2'd2}};
assign offset_6_fu_1379_p5 = {{zext_ln295_fu_1301_p1[31:3]}, {lo_6_reg_2212}};
assign offset_fu_1202_p1 = tid_3_reg_1906[5:0];
assign or_ln294_2_fu_1182_p3 = {{tmp_28_fu_1153_p4}, {2'd3}};
assign sext_ln303_1_fu_1672_p1 = $signed(trunc_ln303_1_reg_2346);
assign sext_ln303_2_fu_1748_p1 = $signed(trunc_ln303_2_reg_2356);
assign sext_ln303_fu_1663_p1 = $signed(trunc_ln_reg_2341);
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_d0 = smem_4_d0_local;
assign smem_4_we0 = smem_4_we0_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_d0 = smem_5_d0_local;
assign smem_5_we0 = smem_5_we0_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_d0 = smem_6_d0_local;
assign smem_6_we0 = smem_6_we0_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_d0 = smem_7_d0_local;
assign smem_7_we0 = smem_7_we0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign tmp_27_fu_1102_p4 = {{ap_sig_allocacmp_tid_3[2:1]}};
assign tmp_28_fu_1153_p4 = {{tid_3_reg_1906[5:2]}};
assign tmp_30_fu_1256_p3 = tid_3_reg_1906[32'd2];
assign tmp_fu_1048_p3 = ap_sig_allocacmp_tid_3[32'd6];
assign tmp_s_fu_1072_p4 = {{ap_sig_allocacmp_tid_3[5:1]}};
assign trunc_ln172_fu_1390_p1 = offset_6_fu_1379_p5[9:0];
assign zext_ln172_10_fu_1354_p1 = offset_5_reg_2014;
assign zext_ln172_5_fu_1803_p1 = offset_4_reg_1959;
assign zext_ln172_6_fu_1329_p1 = offset_4_reg_1959;
assign zext_ln172_7_fu_1231_p1 = offset_4_reg_1959;
assign zext_ln172_8_fu_1869_p1 = offset_5_reg_2014;
assign zext_ln172_9_fu_1488_p1 = offset_5_reg_2014;
assign zext_ln172_fu_1141_p1 = hi_5_fu_1132_p4;
assign zext_ln294_fu_1056_p1 = ap_sig_allocacmp_tid_3;
assign zext_ln295_1_fu_1778_p1 = offset_reg_2193;
assign zext_ln295_2_fu_1304_p1 = offset_reg_2193;
assign zext_ln295_3_fu_1205_p1 = offset_fu_1202_p1;
assign zext_ln295_fu_1301_p1 = offset_reg_2193;
assign zext_ln296_1_fu_1170_p1 = offset_5_fu_1162_p3;
assign zext_ln296_2_fu_1190_p1 = or_ln294_2_fu_1182_p3;
assign zext_ln296_fu_1090_p1 = offset_4_fu_1082_p3;
assign zext_ln299_1_fu_1250_p1 = lshr_ln299_1_fu_1240_p4;
assign zext_ln299_2_fu_1373_p1 = lshr_ln299_2_fu_1363_p4;
assign zext_ln299_3_fu_1410_p1 = lshr_ln299_3_fu_1400_p4;
assign zext_ln299_fu_1225_p1 = lshr_ln_fu_1215_p4;
assign zext_ln300_1_fu_1348_p1 = lshr_ln300_1_fu_1338_p4;
assign zext_ln300_2_fu_1507_p1 = lshr_ln300_2_fu_1497_p4;
assign zext_ln300_3_fu_1528_p1 = lshr_ln300_3_fu_1518_p4;
assign zext_ln300_fu_1323_p1 = lshr_ln7_fu_1313_p4;
assign zext_ln301_1_fu_1467_p1 = lshr_ln301_1_fu_1457_p4;
assign zext_ln301_2_fu_1621_p1 = lshr_ln301_2_fu_1611_p4;
assign zext_ln301_3_fu_1657_p1 = lshr_ln301_3_fu_1647_p4;
assign zext_ln301_fu_1431_p1 = lshr_ln8_fu_1421_p4;
assign zext_ln302_1_fu_1585_p1 = lshr_ln302_1_fu_1575_p4;
assign zext_ln302_2_fu_1696_p1 = lshr_ln302_2_fu_1686_p4;
assign zext_ln302_3_fu_1732_p1 = lshr_ln302_3_fu_1722_p4;
assign zext_ln302_fu_1549_p1 = lshr_ln9_fu_1539_p4;
assign zext_ln303_1_fu_1675_p1 = $unsigned(sext_ln303_1_fu_1672_p1);
assign zext_ln303_2_fu_1751_p1 = $unsigned(sext_ln303_2_fu_1748_p1);
assign zext_ln303_3_fu_1772_p1 = lshr_ln303_3_fu_1762_p4;
assign zext_ln303_fu_1666_p1 = $unsigned(sext_ln303_fu_1663_p1);
assign zext_ln304_1_fu_1743_p1 = lshr_ln304_1_reg_2330;
assign zext_ln304_2_fu_1828_p1 = lshr_ln304_2_reg_2351;
assign zext_ln304_3_fu_1848_p1 = lshr_ln304_3_fu_1838_p4;
assign zext_ln304_fu_1738_p1 = lshr_ln10_reg_2325;
assign zext_ln305_1_fu_1822_p1 = lshr_ln305_1_fu_1812_p4;
assign zext_ln305_2_fu_1888_p1 = lshr_ln305_2_fu_1878_p4;
assign zext_ln305_3_fu_1894_p1 = lshr_ln305_3_reg_2361;
assign zext_ln305_fu_1797_p1 = lshr_ln11_fu_1787_p4;
always @ (posedge ap_clk) begin
    offset_4_reg_1959[0] <= 1'b1;
    offset_5_reg_2014[1:0] <= 2'b10;
    smem_2_addr_reg_2026[6:3] <= 4'b0000;
    smem_6_addr_reg_2031[6:3] <= 4'b0000;
    smem_3_addr_reg_2076[6:3] <= 4'b0000;
    smem_7_addr_reg_2081[6:3] <= 4'b0000;
    zext_ln295_3_reg_2200[8:6] <= 3'b000;
    zext_ln172_7_reg_2206[0] <= 1'b1;
    zext_ln172_7_reg_2206[8:6] <= 3'b000;
    lo_6_reg_2212[1:0] <= 2'b11;
    zext_ln295_2_reg_2297[7:6] <= 2'b00;
    zext_ln172_6_reg_2303[0] <= 1'b1;
    zext_ln172_6_reg_2303[7:6] <= 2'b00;
    zext_ln172_10_reg_2309[1:0] <= 2'b10;
    zext_ln172_10_reg_2309[8:6] <= 3'b000;
    zext_ln172_9_reg_2335[1:0] <= 2'b10;
    zext_ln172_9_reg_2335[7:6] <= 2'b00;
end
endmodule 