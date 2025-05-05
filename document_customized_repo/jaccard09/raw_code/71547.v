module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1); 
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
output  [7:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [7:0] smem_3_address1;
output   smem_3_ce1;
output   smem_3_we1;
output  [63:0] smem_3_d1;
output  [7:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [7:0] smem_2_address1;
output   smem_2_ce1;
output   smem_2_we1;
output  [63:0] smem_2_d1;
output  [7:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [7:0] smem_1_address1;
output   smem_1_ce1;
output   smem_1_we1;
output  [63:0] smem_1_d1;
output  [7:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [7:0] smem_address1;
output   smem_ce1;
output   smem_we1;
output  [63:0] smem_d1;
output  [6:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [6:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [6:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [6:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [6:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [6:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [6:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [6:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_1569;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_700;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_708;
reg   [63:0] reg_716;
reg   [63:0] reg_722;
reg   [63:0] reg_728;
reg   [63:0] reg_734;
reg   [6:0] tid_3_reg_1562;
wire   [5:0] offset_fu_756_p1;
reg   [5:0] offset_reg_1573;
wire   [8:0] zext_ln172_7_fu_790_p1;
reg   [8:0] zext_ln172_7_reg_1620;
wire   [3:0] lshr_ln172_6_fu_793_p4;
reg   [3:0] lshr_ln172_6_reg_1626;
wire   [63:0] zext_ln172_6_fu_802_p1;
reg   [63:0] zext_ln172_6_reg_1634;
wire   [4:0] tmp_s_fu_828_p4;
reg   [4:0] tmp_s_reg_1641;
wire   [6:0] shl_ln298_1_fu_837_p3;
reg   [6:0] shl_ln298_1_reg_1646;
reg   [63:0] DATA_x_2_load_1_reg_1692;
reg   [63:0] DATA_x_3_load_1_reg_1697;
wire   [7:0] zext_ln172_5_fu_869_p1;
reg   [7:0] zext_ln172_5_reg_1702;
reg   [6:0] lshr_ln10_reg_1708;
wire   [5:0] offset_4_fu_928_p3;
reg   [5:0] offset_4_reg_1713;
wire   [8:0] zext_ln172_10_fu_935_p1;
reg   [8:0] zext_ln172_10_reg_1719;
reg   [63:0] DATA_x_2_load_3_reg_1765;
reg   [63:0] DATA_x_3_load_3_reg_1770;
wire   [7:0] zext_ln172_9_fu_1030_p1;
reg   [7:0] zext_ln172_9_reg_1775;
reg   [6:0] lshr_ln304_1_reg_1781;
wire   [5:0] offset_5_fu_1089_p3;
reg   [5:0] offset_5_reg_1786;
wire   [8:0] zext_ln172_13_fu_1096_p1;
reg   [8:0] zext_ln172_13_reg_1792;
reg   [63:0] DATA_x_2_load_5_reg_1833;
reg   [63:0] DATA_x_3_load_5_reg_1843;
wire   [7:0] zext_ln172_12_fu_1233_p1;
reg   [7:0] zext_ln172_12_reg_1848;
reg   [6:0] lshr_ln304_2_reg_1854;
wire   [5:0] offset_6_fu_1292_p3;
reg   [5:0] offset_6_reg_1859;
wire   [8:0] zext_ln172_16_fu_1299_p1;
reg   [8:0] zext_ln172_16_reg_1865;
reg   [63:0] DATA_x_2_load_7_reg_1871;
reg   [63:0] DATA_x_3_load_7_reg_1876;
wire   [7:0] zext_ln172_15_fu_1396_p1;
reg   [7:0] zext_ln172_15_reg_1881;
reg   [6:0] lshr_ln304_3_reg_1887;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln298_fu_766_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln300_4_fu_782_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln299_fu_823_p1;
wire   [63:0] zext_ln298_1_fu_845_p1;
wire   [63:0] zext_ln300_5_fu_861_p1;
wire   [63:0] zext_ln300_fu_888_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln301_fu_908_p1;
wire   [63:0] zext_ln299_1_fu_955_p1;
wire   [63:0] zext_ln298_2_fu_965_p1;
wire   [63:0] zext_ln300_6_fu_978_p1;
wire   [63:0] zext_ln302_fu_1001_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln303_fu_1025_p1;
wire   [63:0] zext_ln300_1_fu_1049_p1;
wire   [63:0] zext_ln301_1_fu_1069_p1;
wire   [63:0] zext_ln299_2_fu_1116_p1;
wire   [63:0] zext_ln298_3_fu_1128_p1;
wire   [63:0] zext_ln300_7_fu_1143_p1;
wire   [63:0] zext_ln304_fu_1164_p1;
wire   [63:0] zext_ln305_fu_1184_p1;
wire   [63:0] zext_ln302_1_fu_1204_p1;
wire   [63:0] zext_ln303_1_fu_1228_p1;
wire   [63:0] zext_ln300_2_fu_1252_p1;
wire   [63:0] zext_ln301_2_fu_1272_p1;
wire   [63:0] zext_ln299_3_fu_1319_p1;
wire   [63:0] zext_ln304_1_fu_1327_p1;
wire   [63:0] zext_ln305_1_fu_1347_p1;
wire   [63:0] zext_ln302_2_fu_1367_p1;
wire   [63:0] zext_ln303_2_fu_1391_p1;
wire   [63:0] zext_ln300_3_fu_1415_p1;
wire   [63:0] zext_ln301_3_fu_1435_p1;
wire   [63:0] zext_ln304_2_fu_1458_p1;
wire   [63:0] zext_ln305_2_fu_1478_p1;
wire   [63:0] zext_ln302_3_fu_1498_p1;
wire   [63:0] zext_ln303_3_fu_1522_p1;
wire   [63:0] zext_ln304_3_fu_1530_p1;
wire   [63:0] zext_ln305_3_fu_1550_p1;
reg   [6:0] tid_fu_104;
wire   [6:0] add_ln294_fu_1151_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce1_local;
reg   [6:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [6:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [6:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [6:0] DATA_x_1_address0_local;
reg    DATA_x_2_ce1_local;
reg   [6:0] DATA_x_2_address1_local;
reg    DATA_x_2_ce0_local;
reg   [6:0] DATA_x_2_address0_local;
reg    DATA_x_3_ce1_local;
reg   [6:0] DATA_x_3_address1_local;
reg    DATA_x_3_ce0_local;
reg   [6:0] DATA_x_3_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [7:0] smem_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [7:0] smem_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [7:0] smem_1_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [7:0] smem_1_address0_local;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [7:0] smem_2_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [7:0] smem_2_address0_local;
reg    smem_3_we1_local;
reg   [63:0] smem_3_d1_local;
reg    smem_3_ce1_local;
reg   [7:0] smem_3_address1_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [7:0] smem_3_address0_local;
wire   [6:0] shl_ln298_fu_760_p2;
wire   [6:0] or_ln_fu_774_p3;
wire   [8:0] add_ln299_fu_807_p2;
wire   [6:0] lshr_ln_fu_813_p4;
wire   [6:0] or_ln300_1_fu_853_p3;
wire   [7:0] add_ln300_fu_872_p2;
wire   [5:0] lshr_ln7_fu_878_p4;
wire   [8:0] add_ln301_fu_893_p2;
wire   [6:0] lshr_ln8_fu_898_p4;
wire   [8:0] add_ln304_fu_913_p2;
wire   [8:0] add_ln299_1_fu_939_p2;
wire   [6:0] lshr_ln299_1_fu_945_p4;
wire   [6:0] add_ln298_fu_960_p2;
wire   [6:0] add_ln300_2_fu_973_p2;
wire   [7:0] add_ln302_fu_986_p2;
wire   [5:0] lshr_ln9_fu_991_p4;
wire   [7:0] add_ln303_fu_1006_p2;
wire   [5:0] trunc_ln6_fu_1011_p4;
wire  signed [6:0] sext_ln303_fu_1021_p1;
wire   [7:0] add_ln300_1_fu_1033_p2;
wire   [5:0] lshr_ln300_1_fu_1039_p4;
wire   [8:0] add_ln301_1_fu_1054_p2;
wire   [6:0] lshr_ln301_1_fu_1059_p4;
wire   [8:0] add_ln304_1_fu_1074_p2;
wire   [8:0] add_ln299_2_fu_1100_p2;
wire   [6:0] lshr_ln299_2_fu_1106_p4;
wire   [6:0] or_ln3_fu_1121_p3;
wire   [6:0] or_ln300_2_fu_1136_p3;
wire   [9:0] zext_ln172_fu_1161_p1;
wire   [9:0] add_ln305_fu_1168_p2;
wire   [7:0] lshr_ln11_fu_1174_p4;
wire   [7:0] add_ln302_1_fu_1189_p2;
wire   [5:0] lshr_ln302_1_fu_1194_p4;
wire   [7:0] add_ln303_1_fu_1209_p2;
wire   [5:0] trunc_ln303_1_fu_1214_p4;
wire  signed [6:0] sext_ln303_1_fu_1224_p1;
wire   [7:0] add_ln300_3_fu_1236_p2;
wire   [5:0] lshr_ln300_2_fu_1242_p4;
wire   [8:0] add_ln301_2_fu_1257_p2;
wire   [6:0] lshr_ln301_2_fu_1262_p4;
wire   [8:0] add_ln304_2_fu_1277_p2;
wire   [8:0] add_ln299_3_fu_1303_p2;
wire   [6:0] lshr_ln299_3_fu_1309_p4;
wire   [9:0] zext_ln172_8_fu_1324_p1;
wire   [9:0] add_ln305_1_fu_1331_p2;
wire   [7:0] lshr_ln305_1_fu_1337_p4;
wire   [7:0] add_ln302_2_fu_1352_p2;
wire   [5:0] lshr_ln302_2_fu_1357_p4;
wire   [7:0] add_ln303_2_fu_1372_p2;
wire   [5:0] trunc_ln303_2_fu_1377_p4;
wire  signed [6:0] sext_ln303_2_fu_1387_p1;
wire   [7:0] add_ln300_4_fu_1399_p2;
wire   [5:0] lshr_ln300_3_fu_1405_p4;
wire   [8:0] add_ln301_3_fu_1420_p2;
wire   [6:0] lshr_ln301_3_fu_1425_p4;
wire   [8:0] add_ln304_3_fu_1440_p2;
wire   [9:0] zext_ln172_11_fu_1455_p1;
wire   [9:0] add_ln305_2_fu_1462_p2;
wire   [7:0] lshr_ln305_2_fu_1468_p4;
wire   [7:0] add_ln302_3_fu_1483_p2;
wire   [5:0] lshr_ln302_3_fu_1488_p4;
wire   [7:0] add_ln303_3_fu_1503_p2;
wire   [5:0] trunc_ln303_3_fu_1508_p4;
wire  signed [6:0] sext_ln303_3_fu_1518_p1;
wire   [9:0] zext_ln172_14_fu_1527_p1;
wire   [9:0] add_ln305_3_fu_1534_p2;
wire   [7:0] lshr_ln305_3_fu_1540_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
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
#0 tid_fu_104 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_104 <= 7'd0;
    end else if (((tmp_reg_1569 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_104 <= add_ln294_fu_1151_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_load_1_reg_1692 <= DATA_x_2_q0;
        DATA_x_3_load_1_reg_1697 <= DATA_x_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_2_load_3_reg_1765 <= DATA_x_2_q0;
        DATA_x_3_load_3_reg_1770 <= DATA_x_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_2_load_5_reg_1833 <= DATA_x_2_q0;
        DATA_x_3_load_5_reg_1843 <= DATA_x_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_load_7_reg_1871 <= DATA_x_2_q0;
        DATA_x_3_load_7_reg_1876 <= DATA_x_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        lshr_ln10_reg_1708 <= {{add_ln304_fu_913_p2[8:2]}};
        offset_4_reg_1713[5 : 1] <= offset_4_fu_928_p3[5 : 1];
        zext_ln172_10_reg_1719[5 : 1] <= zext_ln172_10_fu_935_p1[5 : 1];
        zext_ln172_5_reg_1702[5 : 0] <= zext_ln172_5_fu_869_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln172_6_reg_1626 <= {{tid_3_reg_1562[5:2]}};
        lshr_ln304_3_reg_1887 <= {{add_ln304_3_fu_1440_p2[8:2]}};
        shl_ln298_1_reg_1646[6 : 2] <= shl_ln298_1_fu_837_p3[6 : 2];
        tmp_s_reg_1641 <= {{tid_3_reg_1562[5:1]}};
        zext_ln172_15_reg_1881[5 : 2] <= zext_ln172_15_fu_1396_p1[5 : 2];
        zext_ln172_6_reg_1634[3 : 0] <= zext_ln172_6_fu_802_p1[3 : 0];
        zext_ln172_7_reg_1620[5 : 0] <= zext_ln172_7_fu_790_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln304_1_reg_1781 <= {{add_ln304_1_fu_1074_p2[8:2]}};
        offset_5_reg_1786[5 : 2] <= offset_5_fu_1089_p3[5 : 2];
        zext_ln172_13_reg_1792[5 : 2] <= zext_ln172_13_fu_1096_p1[5 : 2];
        zext_ln172_9_reg_1775[5 : 1] <= zext_ln172_9_fu_1030_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln304_2_reg_1854 <= {{add_ln304_2_fu_1277_p2[8:2]}};
        offset_6_reg_1859[5 : 2] <= offset_6_fu_1292_p3[5 : 2];
        offset_reg_1573 <= offset_fu_756_p1;
        tid_3_reg_1562 <= ap_sig_allocacmp_tid_3;
        tmp_reg_1569 <= ap_sig_allocacmp_tid_3[32'd6];
        zext_ln172_12_reg_1848[5 : 2] <= zext_ln172_12_fu_1233_p1[5 : 2];
        zext_ln172_16_reg_1865[5 : 2] <= zext_ln172_16_fu_1299_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_700 <= DATA_x_q0;
        reg_708 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_716 <= DATA_x_2_q1;
        reg_722 <= DATA_x_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_728 <= DATA_x_2_q1;
        reg_734 <= DATA_x_3_q1;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address0_local = zext_ln300_7_fu_1143_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address0_local = zext_ln300_6_fu_978_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln300_5_fu_861_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln300_4_fu_782_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address1_local = zext_ln298_3_fu_1128_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address1_local = zext_ln298_2_fu_965_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln298_1_fu_845_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln298_fu_766_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_2_address0_local = zext_ln300_7_fu_1143_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_2_address0_local = zext_ln300_6_fu_978_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address0_local = zext_ln300_5_fu_861_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address0_local = zext_ln300_4_fu_782_p1;
        end else begin
            DATA_x_2_address0_local = 'bx;
        end
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_2_address1_local = zext_ln298_3_fu_1128_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_2_address1_local = zext_ln298_2_fu_965_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address1_local = zext_ln298_1_fu_845_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address1_local = zext_ln298_fu_766_p1;
        end else begin
            DATA_x_2_address1_local = 'bx;
        end
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_3_address0_local = zext_ln300_7_fu_1143_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_3_address0_local = zext_ln300_6_fu_978_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address0_local = zext_ln300_5_fu_861_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address0_local = zext_ln300_4_fu_782_p1;
        end else begin
            DATA_x_3_address0_local = 'bx;
        end
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_3_address1_local = zext_ln298_3_fu_1128_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_3_address1_local = zext_ln298_2_fu_965_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address1_local = zext_ln298_1_fu_845_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address1_local = zext_ln298_fu_766_p1;
        end else begin
            DATA_x_3_address1_local = 'bx;
        end
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address0_local = zext_ln300_7_fu_1143_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address0_local = zext_ln300_6_fu_978_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln300_5_fu_861_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln300_4_fu_782_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address1_local = zext_ln298_3_fu_1128_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address1_local = zext_ln298_2_fu_965_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln298_1_fu_845_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln298_fu_766_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1569 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln305_1_fu_1347_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln303_1_fu_1228_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln301_1_fu_1069_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln299_1_fu_955_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln304_1_fu_1327_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln302_1_fu_1204_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address1_local = zext_ln300_1_fu_1049_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address1_local = zext_ln172_6_reg_1634;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_3_load_3_reg_1770;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = reg_734;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = reg_708;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_1_q1;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_x_2_load_3_reg_1765;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = reg_728;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d1_local = reg_700;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d1_local = DATA_x_q1;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1569 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1569 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1569 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1569 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln305_2_fu_1478_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln303_2_fu_1391_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln301_2_fu_1272_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln299_2_fu_1116_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address1_local = zext_ln304_2_fu_1458_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln302_2_fu_1367_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln300_2_fu_1252_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address1_local = zext_ln172_6_reg_1634;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_3_load_5_reg_1843;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = reg_722;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = reg_708;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_x_1_q1;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d1_local = DATA_x_2_load_5_reg_1833;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = reg_716;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = reg_700;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d1_local = DATA_x_q1;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1569 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1569 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_3_address0_local = zext_ln305_3_fu_1550_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_3_address0_local = zext_ln303_3_fu_1522_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_3_address0_local = zext_ln301_3_fu_1435_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_3_address0_local = zext_ln299_3_fu_1319_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_3_address1_local = zext_ln304_3_fu_1530_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_3_address1_local = zext_ln302_3_fu_1498_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_3_address1_local = zext_ln300_3_fu_1415_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_3_address1_local = zext_ln172_6_reg_1634;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_3_d0_local = DATA_x_3_load_7_reg_1876;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_3_d0_local = reg_734;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_3_d0_local = reg_708;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_3_d0_local = DATA_x_1_q1;
        end else begin
            smem_3_d0_local = 'bx;
        end
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_3_d1_local = DATA_x_2_load_7_reg_1871;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_3_d1_local = reg_728;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_3_d1_local = reg_700;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_3_d1_local = DATA_x_q1;
        end else begin
            smem_3_d1_local = 'bx;
        end
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln305_fu_1184_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln303_fu_1025_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln301_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln299_fu_823_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln304_fu_1164_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address1_local = zext_ln302_fu_1001_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address1_local = zext_ln300_fu_888_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln172_6_fu_802_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_3_load_1_reg_1697;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = reg_722;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = reg_708;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_1_q1;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d1_local = DATA_x_2_load_1_reg_1692;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d1_local = reg_716;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d1_local = reg_700;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_x_q1;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1569 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1569 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_1569 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1569 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1569 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_1569 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
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
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln294_fu_1151_p2 = (tid_3_reg_1562 + 7'd4);
assign add_ln298_fu_960_p2 = (shl_ln298_1_reg_1646 + 7'd2);
assign add_ln299_1_fu_939_p2 = ($signed(zext_ln172_10_fu_935_p1) + $signed(9'd288));
assign add_ln299_2_fu_1100_p2 = ($signed(zext_ln172_13_fu_1096_p1) + $signed(9'd288));
assign add_ln299_3_fu_1303_p2 = ($signed(zext_ln172_16_fu_1299_p1) + $signed(9'd288));
assign add_ln299_fu_807_p2 = ($signed(zext_ln172_7_fu_790_p1) + $signed(9'd288));
assign add_ln300_1_fu_1033_p2 = (zext_ln172_9_fu_1030_p1 + 8'd72);
assign add_ln300_2_fu_973_p2 = (shl_ln298_1_reg_1646 + 7'd3);
assign add_ln300_3_fu_1236_p2 = (zext_ln172_12_fu_1233_p1 + 8'd72);
assign add_ln300_4_fu_1399_p2 = (zext_ln172_15_fu_1396_p1 + 8'd72);
assign add_ln300_fu_872_p2 = (zext_ln172_5_fu_869_p1 + 8'd72);
assign add_ln301_1_fu_1054_p2 = ($signed(zext_ln172_10_reg_1719) + $signed(9'd360));
assign add_ln301_2_fu_1257_p2 = ($signed(zext_ln172_13_reg_1792) + $signed(9'd360));
assign add_ln301_3_fu_1420_p2 = ($signed(zext_ln172_16_reg_1865) + $signed(9'd360));
assign add_ln301_fu_893_p2 = ($signed(zext_ln172_7_reg_1620) + $signed(9'd360));
assign add_ln302_1_fu_1189_p2 = ($signed(zext_ln172_9_reg_1775) + $signed(8'd144));
assign add_ln302_2_fu_1352_p2 = ($signed(zext_ln172_12_reg_1848) + $signed(8'd144));
assign add_ln302_3_fu_1483_p2 = ($signed(zext_ln172_15_reg_1881) + $signed(8'd144));
assign add_ln302_fu_986_p2 = ($signed(zext_ln172_5_reg_1702) + $signed(8'd144));
assign add_ln303_1_fu_1209_p2 = ($signed(zext_ln172_9_reg_1775) + $signed(8'd176));
assign add_ln303_2_fu_1372_p2 = ($signed(zext_ln172_12_reg_1848) + $signed(8'd176));
assign add_ln303_3_fu_1503_p2 = ($signed(zext_ln172_15_reg_1881) + $signed(8'd176));
assign add_ln303_fu_1006_p2 = ($signed(zext_ln172_5_reg_1702) + $signed(8'd176));
assign add_ln304_1_fu_1074_p2 = (zext_ln172_10_reg_1719 + 9'd216);
assign add_ln304_2_fu_1277_p2 = (zext_ln172_13_reg_1792 + 9'd216);
assign add_ln304_3_fu_1440_p2 = (zext_ln172_16_reg_1865 + 9'd216);
assign add_ln304_fu_913_p2 = (zext_ln172_7_reg_1620 + 9'd216);
assign add_ln305_1_fu_1331_p2 = (zext_ln172_8_fu_1324_p1 + 10'd504);
assign add_ln305_2_fu_1462_p2 = (zext_ln172_11_fu_1455_p1 + 10'd504);
assign add_ln305_3_fu_1534_p2 = (zext_ln172_14_fu_1527_p1 + 10'd504);
assign add_ln305_fu_1168_p2 = (zext_ln172_fu_1161_p1 + 10'd504);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign lshr_ln11_fu_1174_p4 = {{add_ln305_fu_1168_p2[9:2]}};
assign lshr_ln172_6_fu_793_p4 = {{tid_3_reg_1562[5:2]}};
assign lshr_ln299_1_fu_945_p4 = {{add_ln299_1_fu_939_p2[8:2]}};
assign lshr_ln299_2_fu_1106_p4 = {{add_ln299_2_fu_1100_p2[8:2]}};
assign lshr_ln299_3_fu_1309_p4 = {{add_ln299_3_fu_1303_p2[8:2]}};
assign lshr_ln300_1_fu_1039_p4 = {{add_ln300_1_fu_1033_p2[7:2]}};
assign lshr_ln300_2_fu_1242_p4 = {{add_ln300_3_fu_1236_p2[7:2]}};
assign lshr_ln300_3_fu_1405_p4 = {{add_ln300_4_fu_1399_p2[7:2]}};
assign lshr_ln301_1_fu_1059_p4 = {{add_ln301_1_fu_1054_p2[8:2]}};
assign lshr_ln301_2_fu_1262_p4 = {{add_ln301_2_fu_1257_p2[8:2]}};
assign lshr_ln301_3_fu_1425_p4 = {{add_ln301_3_fu_1420_p2[8:2]}};
assign lshr_ln302_1_fu_1194_p4 = {{add_ln302_1_fu_1189_p2[7:2]}};
assign lshr_ln302_2_fu_1357_p4 = {{add_ln302_2_fu_1352_p2[7:2]}};
assign lshr_ln302_3_fu_1488_p4 = {{add_ln302_3_fu_1483_p2[7:2]}};
assign lshr_ln305_1_fu_1337_p4 = {{add_ln305_1_fu_1331_p2[9:2]}};
assign lshr_ln305_2_fu_1468_p4 = {{add_ln305_2_fu_1462_p2[9:2]}};
assign lshr_ln305_3_fu_1540_p4 = {{add_ln305_3_fu_1534_p2[9:2]}};
assign lshr_ln7_fu_878_p4 = {{add_ln300_fu_872_p2[7:2]}};
assign lshr_ln8_fu_898_p4 = {{add_ln301_fu_893_p2[8:2]}};
assign lshr_ln9_fu_991_p4 = {{add_ln302_fu_986_p2[7:2]}};
assign lshr_ln_fu_813_p4 = {{add_ln299_fu_807_p2[8:2]}};
assign offset_4_fu_928_p3 = {{tmp_s_reg_1641}, {1'd1}};
assign offset_5_fu_1089_p3 = {{lshr_ln172_6_reg_1626}, {2'd2}};
assign offset_6_fu_1292_p3 = {{lshr_ln172_6_reg_1626}, {2'd3}};
assign offset_fu_756_p1 = ap_sig_allocacmp_tid_3[5:0];
assign or_ln300_1_fu_853_p3 = {{tmp_s_fu_828_p4}, {2'd3}};
assign or_ln300_2_fu_1136_p3 = {{lshr_ln172_6_reg_1626}, {3'd7}};
assign or_ln3_fu_1121_p3 = {{lshr_ln172_6_reg_1626}, {3'd6}};
assign or_ln_fu_774_p3 = {{offset_fu_756_p1}, {1'd1}};
assign sext_ln303_1_fu_1224_p1 = $signed(trunc_ln303_1_fu_1214_p4);
assign sext_ln303_2_fu_1387_p1 = $signed(trunc_ln303_2_fu_1377_p4);
assign sext_ln303_3_fu_1518_p1 = $signed(trunc_ln303_3_fu_1508_p4);
assign sext_ln303_fu_1021_p1 = $signed(trunc_ln6_fu_1011_p4);
assign shl_ln298_1_fu_837_p3 = {{tmp_s_fu_828_p4}, {2'd2}};
assign shl_ln298_fu_760_p2 = ap_sig_allocacmp_tid_3 << 7'd1;
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_d1 = smem_1_d1_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_1_we1 = smem_1_we1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_d1 = smem_2_d1_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_2_we1 = smem_2_we1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_d1 = smem_3_d1_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_3_we1 = smem_3_we1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_s_fu_828_p4 = {{tid_3_reg_1562[5:1]}};
assign trunc_ln303_1_fu_1214_p4 = {{add_ln303_1_fu_1209_p2[7:2]}};
assign trunc_ln303_2_fu_1377_p4 = {{add_ln303_2_fu_1372_p2[7:2]}};
assign trunc_ln303_3_fu_1508_p4 = {{add_ln303_3_fu_1503_p2[7:2]}};
assign trunc_ln6_fu_1011_p4 = {{add_ln303_fu_1006_p2[7:2]}};
assign zext_ln172_10_fu_935_p1 = offset_4_fu_928_p3;
assign zext_ln172_11_fu_1455_p1 = offset_5_reg_1786;
assign zext_ln172_12_fu_1233_p1 = offset_5_reg_1786;
assign zext_ln172_13_fu_1096_p1 = offset_5_fu_1089_p3;
assign zext_ln172_14_fu_1527_p1 = offset_6_reg_1859;
assign zext_ln172_15_fu_1396_p1 = offset_6_reg_1859;
assign zext_ln172_16_fu_1299_p1 = offset_6_fu_1292_p3;
assign zext_ln172_5_fu_869_p1 = offset_reg_1573;
assign zext_ln172_6_fu_802_p1 = lshr_ln172_6_fu_793_p4;
assign zext_ln172_7_fu_790_p1 = offset_reg_1573;
assign zext_ln172_8_fu_1324_p1 = offset_4_reg_1713;
assign zext_ln172_9_fu_1030_p1 = offset_4_reg_1713;
assign zext_ln172_fu_1161_p1 = offset_reg_1573;
assign zext_ln298_1_fu_845_p1 = shl_ln298_1_fu_837_p3;
assign zext_ln298_2_fu_965_p1 = add_ln298_fu_960_p2;
assign zext_ln298_3_fu_1128_p1 = or_ln3_fu_1121_p3;
assign zext_ln298_fu_766_p1 = shl_ln298_fu_760_p2;
assign zext_ln299_1_fu_955_p1 = lshr_ln299_1_fu_945_p4;
assign zext_ln299_2_fu_1116_p1 = lshr_ln299_2_fu_1106_p4;
assign zext_ln299_3_fu_1319_p1 = lshr_ln299_3_fu_1309_p4;
assign zext_ln299_fu_823_p1 = lshr_ln_fu_813_p4;
assign zext_ln300_1_fu_1049_p1 = lshr_ln300_1_fu_1039_p4;
assign zext_ln300_2_fu_1252_p1 = lshr_ln300_2_fu_1242_p4;
assign zext_ln300_3_fu_1415_p1 = lshr_ln300_3_fu_1405_p4;
assign zext_ln300_4_fu_782_p1 = or_ln_fu_774_p3;
assign zext_ln300_5_fu_861_p1 = or_ln300_1_fu_853_p3;
assign zext_ln300_6_fu_978_p1 = add_ln300_2_fu_973_p2;
assign zext_ln300_7_fu_1143_p1 = or_ln300_2_fu_1136_p3;
assign zext_ln300_fu_888_p1 = lshr_ln7_fu_878_p4;
assign zext_ln301_1_fu_1069_p1 = lshr_ln301_1_fu_1059_p4;
assign zext_ln301_2_fu_1272_p1 = lshr_ln301_2_fu_1262_p4;
assign zext_ln301_3_fu_1435_p1 = lshr_ln301_3_fu_1425_p4;
assign zext_ln301_fu_908_p1 = lshr_ln8_fu_898_p4;
assign zext_ln302_1_fu_1204_p1 = lshr_ln302_1_fu_1194_p4;
assign zext_ln302_2_fu_1367_p1 = lshr_ln302_2_fu_1357_p4;
assign zext_ln302_3_fu_1498_p1 = lshr_ln302_3_fu_1488_p4;
assign zext_ln302_fu_1001_p1 = lshr_ln9_fu_991_p4;
assign zext_ln303_1_fu_1228_p1 = $unsigned(sext_ln303_1_fu_1224_p1);
assign zext_ln303_2_fu_1391_p1 = $unsigned(sext_ln303_2_fu_1387_p1);
assign zext_ln303_3_fu_1522_p1 = $unsigned(sext_ln303_3_fu_1518_p1);
assign zext_ln303_fu_1025_p1 = $unsigned(sext_ln303_fu_1021_p1);
assign zext_ln304_1_fu_1327_p1 = lshr_ln304_1_reg_1781;
assign zext_ln304_2_fu_1458_p1 = lshr_ln304_2_reg_1854;
assign zext_ln304_3_fu_1530_p1 = lshr_ln304_3_reg_1887;
assign zext_ln304_fu_1164_p1 = lshr_ln10_reg_1708;
assign zext_ln305_1_fu_1347_p1 = lshr_ln305_1_fu_1337_p4;
assign zext_ln305_2_fu_1478_p1 = lshr_ln305_2_fu_1468_p4;
assign zext_ln305_3_fu_1550_p1 = lshr_ln305_3_fu_1540_p4;
assign zext_ln305_fu_1184_p1 = lshr_ln11_fu_1174_p4;
always @ (posedge ap_clk) begin
    zext_ln172_7_reg_1620[8:6] <= 3'b000;
    zext_ln172_6_reg_1634[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    shl_ln298_1_reg_1646[1:0] <= 2'b10;
    zext_ln172_5_reg_1702[7:6] <= 2'b00;
    offset_4_reg_1713[0] <= 1'b1;
    zext_ln172_10_reg_1719[0] <= 1'b1;
    zext_ln172_10_reg_1719[8:6] <= 3'b000;
    zext_ln172_9_reg_1775[0] <= 1'b1;
    zext_ln172_9_reg_1775[7:6] <= 2'b00;
    offset_5_reg_1786[1:0] <= 2'b10;
    zext_ln172_13_reg_1792[1:0] <= 2'b10;
    zext_ln172_13_reg_1792[8:6] <= 3'b000;
    zext_ln172_12_reg_1848[1:0] <= 2'b10;
    zext_ln172_12_reg_1848[7:6] <= 2'b00;
    offset_6_reg_1859[1:0] <= 2'b11;
    zext_ln172_16_reg_1865[1:0] <= 2'b11;
    zext_ln172_16_reg_1865[8:6] <= 3'b000;
    zext_ln172_15_reg_1881[1:0] <= 2'b11;
    zext_ln172_15_reg_1881[7:6] <= 2'b00;
end
endmodule 