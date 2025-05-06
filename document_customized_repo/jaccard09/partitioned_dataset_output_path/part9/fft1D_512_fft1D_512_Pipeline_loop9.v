
module fft1D_512_fft1D_512_Pipeline_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 13'd1;
parameter    ap_ST_fsm_pp0_stage1 = 13'd2;
parameter    ap_ST_fsm_pp0_stage2 = 13'd4;
parameter    ap_ST_fsm_pp0_stage3 = 13'd8;
parameter    ap_ST_fsm_pp0_stage4 = 13'd16;
parameter    ap_ST_fsm_pp0_stage5 = 13'd32;
parameter    ap_ST_fsm_pp0_stage6 = 13'd64;
parameter    ap_ST_fsm_pp0_stage7 = 13'd128;
parameter    ap_ST_fsm_pp0_stage8 = 13'd256;
parameter    ap_ST_fsm_pp0_stage9 = 13'd512;
parameter    ap_ST_fsm_pp0_stage10 = 13'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 13'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 13'd4096;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [8:0] smem_1_address1;
output   smem_1_ce1;
output   smem_1_we1;
output  [63:0] smem_1_d1;
output  [8:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [8:0] smem_address1;
output   smem_ce1;
output   smem_we1;
output  [63:0] smem_d1;
output  [7:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [7:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [7:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [7:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_738_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_subdone;
reg   [63:0] reg_690;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_698;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_705;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_713;
reg   [63:0] reg_719;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_725;
reg   [6:0] tid_1_reg_1664;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_1671;
wire   [5:0] offset_fu_746_p1;
reg   [5:0] offset_reg_1675;
wire   [4:0] lshr_ln172_7_fu_750_p4;
reg   [4:0] lshr_ln172_7_reg_1685;
wire   [63:0] zext_ln332_4_fu_782_p1;
reg   [63:0] zext_ln332_4_reg_1704;
wire   [63:0] zext_ln330_1_fu_795_p1;
reg   [63:0] zext_ln330_1_reg_1714;
wire   [63:0] zext_ln334_4_fu_812_p1;
reg   [63:0] zext_ln334_4_reg_1724;
wire   [63:0] zext_ln336_4_fu_824_p1;
reg   [63:0] zext_ln336_4_reg_1734;
wire   [3:0] tmp_s_fu_829_p4;
reg   [3:0] tmp_s_reg_1744;
wire   [63:0] zext_ln330_2_fu_846_p1;
reg   [63:0] zext_ln330_2_reg_1756;
wire   [63:0] zext_ln330_3_fu_859_p1;
reg   [63:0] zext_ln330_3_reg_1766;
wire   [63:0] zext_ln332_5_fu_871_p1;
reg   [63:0] zext_ln332_5_reg_1791;
wire   [7:0] zext_ln328_1_fu_889_p1;
reg   [7:0] zext_ln328_1_reg_1801;
wire   [8:0] zext_ln328_2_fu_892_p1;
reg   [8:0] zext_ln328_2_reg_1807;
wire   [5:0] offset_1_fu_937_p3;
reg   [5:0] offset_1_reg_1818;
wire   [63:0] zext_ln334_5_fu_997_p1;
reg   [63:0] zext_ln334_5_reg_1829;
wire   [63:0] zext_ln336_5_fu_1009_p1;
reg   [63:0] zext_ln336_5_reg_1839;
reg   [7:0] lshr_ln336_1_reg_1844;
reg   [6:0] trunc_ln6_reg_1854;
reg   [7:0] lshr_ln4_reg_1859;
reg   [6:0] lshr_ln334_1_reg_1869;
wire   [5:0] offset_2_fu_1288_p3;
reg   [5:0] offset_2_reg_1929;
wire   [8:0] zext_ln172_6_fu_1295_p1;
reg   [8:0] zext_ln172_6_reg_1935;
wire   [9:0] trunc_ln172_fu_1360_p1;
reg   [9:0] trunc_ln172_reg_1951;
reg   [63:0] DATA_y_load_10_reg_1966;
reg   [63:0] DATA_y_load_14_reg_1971;
wire   [7:0] zext_ln172_5_fu_1398_p1;
reg   [7:0] zext_ln172_5_reg_1981;
reg   [63:0] DATA_y_1_load_11_reg_1987;
reg   [63:0] DATA_y_1_load_15_reg_1992;
reg   [7:0] lshr_ln336_2_reg_1997;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [6:0] trunc_ln335_2_reg_2002;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [8:0] lshr_ln337_3_reg_2007;
wire    ap_block_pp0_stage12_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln330_fu_768_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_fu_800_p1;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln172_7_fu_883_p1;
wire   [63:0] zext_ln331_fu_911_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln332_fu_932_p1;
wire   [63:0] zext_ln331_1_fu_964_p1;
wire   [63:0] zext_ln333_1_fu_985_p1;
wire   [63:0] zext_ln333_fu_1045_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln334_fu_1065_p1;
wire   [63:0] zext_ln332_1_fu_1119_p1;
wire   [63:0] zext_ln335_1_fu_1160_p1;
wire   [63:0] zext_ln335_fu_1168_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln336_fu_1173_p1;
wire   [63:0] zext_ln334_1_fu_1177_p1;
wire   [63:0] zext_ln336_1_fu_1181_p1;
wire   [63:0] zext_ln332_6_fu_1192_p1;
wire   [63:0] zext_ln332_7_fu_1205_p1;
wire   [63:0] zext_ln337_fu_1230_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln337_1_fu_1254_p1;
wire   [63:0] zext_ln334_6_fu_1266_p1;
wire   [63:0] zext_ln334_7_fu_1279_p1;
wire   [63:0] zext_ln331_2_fu_1315_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln336_6_fu_1327_p1;
wire   [63:0] zext_ln331_3_fu_1380_p1;
wire   [63:0] zext_ln336_7_fu_1392_p1;
wire   [63:0] zext_ln332_2_fu_1417_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln332_3_fu_1437_p1;
wire   [63:0] zext_ln333_2_fu_1457_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln333_3_fu_1492_p1;
wire   [63:0] zext_ln334_2_fu_1512_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln334_3_fu_1547_p1;
wire   [63:0] zext_ln335_2_fu_1555_p1;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln335_3_fu_1575_p1;
wire   [63:0] zext_ln336_2_fu_1580_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln336_3_fu_1599_p1;
wire   [63:0] zext_ln337_2_fu_1648_p1;
wire   [63:0] zext_ln337_3_fu_1653_p1;
reg   [6:0] tid_fu_132;
wire   [6:0] add_ln325_fu_1619_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_1;
reg    DATA_y_ce1_local;
reg   [7:0] DATA_y_address1_local;
reg    DATA_y_ce0_local;
reg   [7:0] DATA_y_address0_local;
reg    DATA_y_1_ce1_local;
reg   [7:0] DATA_y_1_address1_local;
reg    DATA_y_1_ce0_local;
reg   [7:0] DATA_y_1_address0_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [8:0] smem_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [8:0] smem_address1_local;
wire    ap_block_pp0_stage11_11001;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [8:0] smem_1_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [8:0] smem_1_address1_local;
wire   [7:0] shl_ln8_fu_760_p3;
wire   [7:0] or_ln_fu_774_p3;
wire   [7:0] shl_ln330_1_fu_787_p3;
wire   [7:0] or_ln1_fu_805_p3;
wire   [7:0] or_ln2_fu_817_p3;
wire   [7:0] or_ln3_fu_838_p3;
wire   [7:0] shl_ln330_2_fu_851_p3;
wire   [7:0] or_ln332_1_fu_864_p3;
wire   [4:0] or_ln172_4_fu_876_p3;
wire   [8:0] add_ln331_fu_895_p2;
wire   [7:0] lshr_ln_fu_901_p4;
wire   [7:0] add_ln332_fu_916_p2;
wire   [6:0] lshr_ln1_fu_922_p4;
wire   [8:0] zext_ln172_3_fu_944_p1;
wire   [8:0] add_ln331_1_fu_948_p2;
wire   [7:0] lshr_ln331_1_fu_954_p4;
wire   [8:0] add_ln333_1_fu_969_p2;
wire   [7:0] lshr_ln333_1_fu_975_p4;
wire   [7:0] or_ln334_1_fu_990_p3;
wire   [7:0] or_ln336_1_fu_1002_p3;
wire   [8:0] add_ln336_1_fu_1014_p2;
wire   [8:0] add_ln333_fu_1030_p2;
wire   [7:0] lshr_ln2_fu_1035_p4;
wire   [7:0] add_ln334_fu_1050_p2;
wire   [6:0] lshr_ln3_fu_1055_p4;
wire   [7:0] add_ln335_fu_1070_p2;
wire   [8:0] add_ln336_fu_1085_p2;
wire   [7:0] zext_ln172_2_fu_1100_p1;
wire   [7:0] add_ln332_1_fu_1103_p2;
wire   [6:0] lshr_ln332_1_fu_1109_p4;
wire   [7:0] add_ln334_1_fu_1124_p2;
wire   [7:0] add_ln335_1_fu_1140_p2;
wire   [6:0] trunc_ln335_1_fu_1146_p4;
wire  signed [7:0] sext_ln335_1_fu_1156_p1;
wire  signed [7:0] sext_ln335_fu_1165_p1;
wire   [7:0] or_ln332_2_fu_1185_p3;
wire   [7:0] or_ln332_3_fu_1198_p3;
wire   [9:0] zext_ln328_fu_1211_p1;
wire   [9:0] add_ln337_fu_1214_p2;
wire   [8:0] lshr_ln5_fu_1220_p4;
wire   [9:0] zext_ln172_1_fu_1235_p1;
wire   [9:0] add_ln337_1_fu_1238_p2;
wire   [8:0] lshr_ln337_1_fu_1244_p4;
wire   [7:0] or_ln334_2_fu_1259_p3;
wire   [7:0] or_ln334_3_fu_1272_p3;
wire   [8:0] add_ln331_2_fu_1299_p2;
wire   [7:0] lshr_ln331_2_fu_1305_p4;
wire   [7:0] or_ln336_2_fu_1320_p3;
wire   [0:0] tmp_21_fu_1333_p3;
wire   [31:0] zext_ln326_fu_1285_p1;
wire   [2:0] or_ln4_fu_1340_p3;
wire   [31:0] offset_3_fu_1348_p5;
wire   [9:0] add_ln331_3_fu_1364_p2;
wire   [8:0] lshr_ln331_3_fu_1370_p4;
wire   [7:0] or_ln336_3_fu_1385_p3;
wire   [7:0] add_ln332_2_fu_1401_p2;
wire   [6:0] lshr_ln332_2_fu_1407_p4;
wire   [9:0] add_ln332_3_fu_1422_p2;
wire   [8:0] lshr_ln332_3_fu_1427_p4;
wire   [8:0] add_ln333_2_fu_1442_p2;
wire   [7:0] lshr_ln333_2_fu_1447_p4;
wire   [8:0] add_ln336_2_fu_1462_p2;
wire   [9:0] add_ln333_3_fu_1477_p2;
wire   [8:0] lshr_ln333_3_fu_1482_p4;
wire   [7:0] add_ln334_2_fu_1497_p2;
wire   [6:0] lshr_ln334_2_fu_1502_p4;
wire   [7:0] add_ln335_2_fu_1517_p2;
wire   [9:0] add_ln334_3_fu_1532_p2;
wire   [8:0] lshr_ln334_3_fu_1537_p4;
wire  signed [7:0] sext_ln335_2_fu_1552_p1;
wire   [9:0] add_ln335_3_fu_1560_p2;
wire   [8:0] lshr_ln335_3_fu_1565_p4;
wire   [9:0] add_ln336_3_fu_1584_p2;
wire   [8:0] lshr_ln336_3_fu_1589_p4;
wire   [9:0] add_ln337_3_fu_1604_p2;
wire   [9:0] zext_ln172_4_fu_1629_p1;
wire   [9:0] add_ln337_2_fu_1632_p2;
wire   [8:0] lshr_ln337_2_fu_1638_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [12:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_132 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_690 <= DATA_y_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_690 <= DATA_y_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_698 <= DATA_y_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_698 <= DATA_y_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_705 <= DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_705 <= DATA_y_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_719 <= DATA_y_q1;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_719 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_132 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        tid_fu_132 <= add_ln325_fu_1619_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        DATA_y_1_load_11_reg_1987 <= DATA_y_1_q1;
        DATA_y_1_load_15_reg_1992 <= DATA_y_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_load_10_reg_1966 <= DATA_y_q1;
        DATA_y_load_14_reg_1971 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln172_7_reg_1685 <= {{ap_sig_allocacmp_tid_1[5:1]}};
        offset_reg_1675 <= offset_fu_746_p1;
        tid_1_reg_1664 <= ap_sig_allocacmp_tid_1;
        tmp_reg_1671 <= ap_sig_allocacmp_tid_1[32'd6];
        zext_ln330_1_reg_1714[7 : 3] <= zext_ln330_1_fu_795_p1[7 : 3];
        zext_ln332_4_reg_1704[7 : 2] <= zext_ln332_4_fu_782_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln334_1_reg_1869 <= {{add_ln334_1_fu_1124_p2[7:1]}};
        lshr_ln4_reg_1859 <= {{add_ln336_fu_1085_p2[8:1]}};
        trunc_ln6_reg_1854 <= {{add_ln335_fu_1070_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln336_1_reg_1844 <= {{add_ln336_1_fu_1014_p2[8:1]}};
        offset_1_reg_1818[5 : 1] <= offset_1_fu_937_p3[5 : 1];
        zext_ln328_1_reg_1801[5 : 0] <= zext_ln328_1_fu_889_p1[5 : 0];
        zext_ln328_2_reg_1807[5 : 0] <= zext_ln328_2_fu_892_p1[5 : 0];
        zext_ln334_5_reg_1829[7 : 3] <= zext_ln334_5_fu_997_p1[7 : 3];
        zext_ln336_5_reg_1839[7 : 3] <= zext_ln336_5_fu_1009_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln336_2_reg_1997 <= {{add_ln336_2_fu_1462_p2[8:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        lshr_ln337_3_reg_2007 <= {{add_ln337_3_fu_1604_p2[9:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        offset_2_reg_1929[5 : 2] <= offset_2_fu_1288_p3[5 : 2];
        trunc_ln172_reg_1951 <= trunc_ln172_fu_1360_p1;
        zext_ln172_6_reg_1935[5 : 2] <= zext_ln172_6_fu_1295_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_713 <= DATA_y_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_725 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_s_reg_1744 <= {{tid_1_reg_1664[5:2]}};
        zext_ln330_2_reg_1756[7 : 4] <= zext_ln330_2_fu_846_p1[7 : 4];
        zext_ln330_3_reg_1766[7 : 4] <= zext_ln330_3_fu_859_p1[7 : 4];
        zext_ln334_4_reg_1724[7 : 2] <= zext_ln334_4_fu_812_p1[7 : 2];
        zext_ln336_4_reg_1734[7 : 2] <= zext_ln336_4_fu_824_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        trunc_ln335_2_reg_2002 <= {{add_ln335_2_fu_1517_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        zext_ln172_5_reg_1981[5 : 2] <= zext_ln172_5_fu_1398_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        zext_ln332_5_reg_1791[7 : 3] <= zext_ln332_5_fu_871_p1[7 : 3];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_1_address0_local = zext_ln336_7_fu_1392_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_1_address0_local = zext_ln334_7_fu_1279_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_1_address0_local = zext_ln332_7_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_1_address0_local = zext_ln330_3_reg_1766;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_address0_local = zext_ln336_5_fu_1009_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_address0_local = zext_ln332_5_fu_871_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address0_local = zext_ln336_4_fu_824_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address0_local = zext_ln332_4_fu_782_p1;
        end else begin
            DATA_y_1_address0_local = 'bx;
        end
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_1_address1_local = zext_ln336_6_fu_1327_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_1_address1_local = zext_ln334_6_fu_1266_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_1_address1_local = zext_ln332_6_fu_1192_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_1_address1_local = zext_ln330_2_reg_1756;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_address1_local = zext_ln334_5_fu_997_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_address1_local = zext_ln330_1_reg_1714;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address1_local = zext_ln334_4_fu_812_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address1_local = zext_ln330_fu_768_p1;
        end else begin
            DATA_y_1_address1_local = 'bx;
        end
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_address0_local = zext_ln336_7_fu_1392_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_address0_local = zext_ln334_7_fu_1279_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_address0_local = zext_ln332_7_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_address0_local = zext_ln336_5_reg_1839;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_address0_local = zext_ln332_5_reg_1791;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_address0_local = zext_ln334_4_reg_1724;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address0_local = zext_ln330_3_fu_859_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address0_local = zext_ln330_1_fu_795_p1;
        end else begin
            DATA_y_address0_local = 'bx;
        end
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_address1_local = zext_ln336_6_fu_1327_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_address1_local = zext_ln334_6_fu_1266_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_address1_local = zext_ln332_6_fu_1192_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_address1_local = zext_ln334_5_reg_1829;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_address1_local = zext_ln336_4_reg_1734;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_address1_local = zext_ln332_4_reg_1704;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address1_local = zext_ln330_2_fu_846_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address1_local = zext_ln330_fu_768_p1;
        end else begin
            DATA_y_address1_local = 'bx;
        end
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_738_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_1 = tid_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln337_3_fu_1653_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_address0_local = zext_ln335_3_fu_1575_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln333_3_fu_1492_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln334_1_fu_1177_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln332_1_fu_1119_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln333_1_fu_985_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln172_7_fu_883_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_fu_800_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            smem_1_address1_local = zext_ln336_3_fu_1599_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            smem_1_address1_local = zext_ln334_3_fu_1547_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            smem_1_address1_local = zext_ln332_3_fu_1437_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_1_address1_local = zext_ln331_3_fu_1380_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_1_address1_local = zext_ln337_1_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_1_address1_local = zext_ln336_1_fu_1181_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_1_address1_local = zext_ln335_1_fu_1160_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_address1_local = zext_ln331_1_fu_964_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_1_load_15_reg_1992;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_d0_local = reg_705;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d0_local = reg_713;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_y_q1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_y_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_d0_local = DATA_y_q0;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_d1_local = DATA_y_load_14_reg_1971;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        smem_1_d1_local = reg_725;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d1_local = reg_705;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_d1_local = reg_690;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d1_local = DATA_y_q0;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_1_d1_local = DATA_y_1_q1;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 ==ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln337_2_fu_1648_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_address0_local = zext_ln335_2_fu_1555_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln333_2_fu_1457_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln335_fu_1168_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln333_fu_1045_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln332_fu_932_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln172_7_fu_883_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_fu_800_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            smem_address1_local = zext_ln336_2_fu_1580_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            smem_address1_local = zext_ln334_2_fu_1512_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            smem_address1_local = zext_ln332_2_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_address1_local = zext_ln331_2_fu_1315_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_address1_local = zext_ln337_fu_1230_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_address1_local = zext_ln336_fu_1173_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_address1_local = zext_ln334_fu_1065_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address1_local = zext_ln331_fu_911_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_1_load_11_reg_1987;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_d0_local = reg_690;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = reg_705;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_d0_local = reg_698;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d0_local = DATA_y_q1;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_d1_local = DATA_y_load_10_reg_1966;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d1_local = reg_698;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d1_local = reg_713;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_d1_local = reg_719;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d1_local = reg_690;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 ==ap_CS_fsm_pp0_stage1)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1671== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_address1 = DATA_y_1_address1_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_address1 = DATA_y_address1_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln325_fu_1619_p2 = (tid_1_reg_1664 + 7'd4);
assign add_ln331_1_fu_948_p2 = ($signed(zext_ln172_3_fu_944_p1) + $signed(9'd288));
assign add_ln331_2_fu_1299_p2 = ($signed(zext_ln172_6_fu_1295_p1) + $signed(9'd288));
assign add_ln331_3_fu_1364_p2 = (trunc_ln172_fu_1360_p1 + 10'd288);
assign add_ln331_fu_895_p2 = ($signed(zext_ln328_2_fu_892_p1) + $signed(9'd288));
assign add_ln332_1_fu_1103_p2 = (zext_ln172_2_fu_1100_p1 + 8'd72);
assign add_ln332_2_fu_1401_p2 = (zext_ln172_5_fu_1398_p1 + 8'd72);
assign add_ln332_3_fu_1422_p2 = (trunc_ln172_reg_1951 + 10'd72);
assign add_ln332_fu_916_p2 = (zext_ln328_1_fu_889_p1 + 8'd72);
assign add_ln333_1_fu_969_p2 = ($signed(zext_ln172_3_fu_944_p1) + $signed(9'd360));
assign add_ln333_2_fu_1442_p2 = ($signed(zext_ln172_6_reg_1935) + $signed(9'd360));
assign add_ln333_3_fu_1477_p2 = (trunc_ln172_reg_1951 + 10'd360);
assign add_ln333_fu_1030_p2 = ($signed(zext_ln328_2_reg_1807) + $signed(9'd360));
assign add_ln334_1_fu_1124_p2 = ($signed(zext_ln172_2_fu_1100_p1) + $signed(8'd144));
assign add_ln334_2_fu_1497_p2 = ($signed(zext_ln172_5_reg_1981) + $signed(8'd144));
assign add_ln334_3_fu_1532_p2 = (trunc_ln172_reg_1951 + 10'd144);
assign add_ln334_fu_1050_p2 = ($signed(zext_ln328_1_reg_1801) + $signed(8'd144));
assign add_ln335_1_fu_1140_p2 = ($signed(zext_ln172_2_fu_1100_p1) + $signed(8'd176));
assign add_ln335_2_fu_1517_p2 = ($signed(zext_ln172_5_reg_1981) + $signed(8'd176));
assign add_ln335_3_fu_1560_p2 = (trunc_ln172_reg_1951 + 10'd432);
assign add_ln335_fu_1070_p2 = ($signed(zext_ln328_1_reg_1801) + $signed(8'd176));
assign add_ln336_1_fu_1014_p2 = (zext_ln172_3_fu_944_p1 + 9'd216);
assign add_ln336_2_fu_1462_p2 = (zext_ln172_6_reg_1935 + 9'd216);
assign add_ln336_3_fu_1584_p2 = (trunc_ln172_reg_1951 + 10'd216);
assign add_ln336_fu_1085_p2 = (zext_ln328_2_reg_1807 + 9'd216);
assign add_ln337_1_fu_1238_p2 = (zext_ln172_1_fu_1235_p1 + 10'd504);
assign add_ln337_2_fu_1632_p2 = (zext_ln172_4_fu_1629_p1 + 10'd504);
assign add_ln337_3_fu_1604_p2 = (trunc_ln172_reg_1951 + 10'd504);
assign add_ln337_fu_1214_p2 = (zext_ln328_fu_1211_p1 + 10'd504);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign lshr_ln172_7_fu_750_p4 = {{ap_sig_allocacmp_tid_1[5:1]}};
assign lshr_ln1_fu_922_p4 = {{add_ln332_fu_916_p2[7:1]}};
assign lshr_ln2_fu_1035_p4 = {{add_ln333_fu_1030_p2[8:1]}};
assign lshr_ln331_1_fu_954_p4 = {{add_ln331_1_fu_948_p2[8:1]}};
assign lshr_ln331_2_fu_1305_p4 = {{add_ln331_2_fu_1299_p2[8:1]}};
assign lshr_ln331_3_fu_1370_p4 = {{add_ln331_3_fu_1364_p2[9:1]}};
assign lshr_ln332_1_fu_1109_p4 = {{add_ln332_1_fu_1103_p2[7:1]}};
assign lshr_ln332_2_fu_1407_p4 = {{add_ln332_2_fu_1401_p2[7:1]}};
assign lshr_ln332_3_fu_1427_p4 = {{add_ln332_3_fu_1422_p2[9:1]}};
assign lshr_ln333_1_fu_975_p4 = {{add_ln333_1_fu_969_p2[8:1]}};
assign lshr_ln333_2_fu_1447_p4 = {{add_ln333_2_fu_1442_p2[8:1]}};
assign lshr_ln333_3_fu_1482_p4 = {{add_ln333_3_fu_1477_p2[9:1]}};
assign lshr_ln334_2_fu_1502_p4 = {{add_ln334_2_fu_1497_p2[7:1]}};
assign lshr_ln334_3_fu_1537_p4 = {{add_ln334_3_fu_1532_p2[9:1]}};
assign lshr_ln335_3_fu_1565_p4 = {{add_ln335_3_fu_1560_p2[9:1]}};
assign lshr_ln336_3_fu_1589_p4 = {{add_ln336_3_fu_1584_p2[9:1]}};
assign lshr_ln337_1_fu_1244_p4 = {{add_ln337_1_fu_1238_p2[9:1]}};
assign lshr_ln337_2_fu_1638_p4 = {{add_ln337_2_fu_1632_p2[9:1]}};
assign lshr_ln3_fu_1055_p4 = {{add_ln334_fu_1050_p2[7:1]}};
assign lshr_ln5_fu_1220_p4 = {{add_ln337_fu_1214_p2[9:1]}};
assign lshr_ln_fu_901_p4 = {{add_ln331_fu_895_p2[8:1]}};
assign offset_1_fu_937_p3 = {{lshr_ln172_7_reg_1685}, {1'd1}};
assign offset_2_fu_1288_p3 = {{tmp_s_reg_1744}, {2'd2}};
assign offset_3_fu_1348_p5 = {{zext_ln326_fu_1285_p1[31:3]}, {or_ln4_fu_1340_p3}};
assign offset_fu_746_p1 = ap_sig_allocacmp_tid_1[5:0];
assign or_ln172_4_fu_876_p3 = {{tmp_s_reg_1744}, {1'd1}};
assign or_ln1_fu_805_p3 = {{offset_reg_1675}, {2'd1}};
assign or_ln2_fu_817_p3 = {{offset_reg_1675}, {2'd3}};
assign or_ln332_1_fu_864_p3 = {{lshr_ln172_7_reg_1685}, {3'd6}};
assign or_ln332_2_fu_1185_p3 = {{tmp_s_reg_1744}, {4'd10}};
assign or_ln332_3_fu_1198_p3 = {{tmp_s_reg_1744}, {4'd14}};
assign or_ln334_1_fu_990_p3 = {{lshr_ln172_7_reg_1685}, {3'd5}};
assign or_ln334_2_fu_1259_p3 = {{tmp_s_reg_1744}, {4'd9}};
assign or_ln334_3_fu_1272_p3 = {{tmp_s_reg_1744}, {4'd13}};
assign or_ln336_1_fu_1002_p3 = {{lshr_ln172_7_reg_1685}, {3'd7}};
assign or_ln336_2_fu_1320_p3 = {{tmp_s_reg_1744}, {4'd11}};
assign or_ln336_3_fu_1385_p3 = {{tmp_s_reg_1744}, {4'd15}};
assign or_ln3_fu_838_p3 = {{tmp_s_fu_829_p4}, {4'd8}};
assign or_ln4_fu_1340_p3 = {{tmp_21_fu_1333_p3}, {2'd3}};
assign or_ln_fu_774_p3 = {{offset_fu_746_p1}, {2'd2}};
assign sext_ln335_1_fu_1156_p1 = $signed(trunc_ln335_1_fu_1146_p4);
assign sext_ln335_2_fu_1552_p1 = $signed(trunc_ln335_2_reg_2002);
assign sext_ln335_fu_1165_p1 = $signed(trunc_ln6_reg_1854);
assign shl_ln330_1_fu_787_p3 = {{lshr_ln172_7_fu_750_p4}, {3'd4}};
assign shl_ln330_2_fu_851_p3 = {{tmp_s_fu_829_p4}, {4'd12}};
assign shl_ln8_fu_760_p3 = {{offset_fu_746_p1}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_d1 = smem_1_d1_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_1_we1 = smem_1_we1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_21_fu_1333_p3 = tid_1_reg_1664[32'd2];
assign tmp_fu_738_p3 = ap_sig_allocacmp_tid_1[32'd6];
assign tmp_s_fu_829_p4 = {{tid_1_reg_1664[5:2]}};
assign trunc_ln172_fu_1360_p1 = offset_3_fu_1348_p5[9:0];
assign trunc_ln335_1_fu_1146_p4 = {{add_ln335_1_fu_1140_p2[7:1]}};
assign zext_ln172_1_fu_1235_p1 = offset_1_reg_1818;
assign zext_ln172_2_fu_1100_p1 = offset_1_reg_1818;
assign zext_ln172_3_fu_944_p1 = offset_1_fu_937_p3;
assign zext_ln172_4_fu_1629_p1 = offset_2_reg_1929;
assign zext_ln172_5_fu_1398_p1 = offset_2_reg_1929;
assign zext_ln172_6_fu_1295_p1 = offset_2_fu_1288_p3;
assign zext_ln172_7_fu_883_p1 = or_ln172_4_fu_876_p3;
assign zext_ln172_fu_800_p1 = lshr_ln172_7_reg_1685;
assign zext_ln326_fu_1285_p1 = offset_reg_1675;
assign zext_ln328_1_fu_889_p1 = offset_reg_1675;
assign zext_ln328_2_fu_892_p1 = offset_reg_1675;
assign zext_ln328_fu_1211_p1 = offset_reg_1675;
assign zext_ln330_1_fu_795_p1 = shl_ln330_1_fu_787_p3;
assign zext_ln330_2_fu_846_p1 = or_ln3_fu_838_p3;
assign zext_ln330_3_fu_859_p1 = shl_ln330_2_fu_851_p3;
assign zext_ln330_fu_768_p1 = shl_ln8_fu_760_p3;
assign zext_ln331_1_fu_964_p1 = lshr_ln331_1_fu_954_p4;
assign zext_ln331_2_fu_1315_p1 = lshr_ln331_2_fu_1305_p4;
assign zext_ln331_3_fu_1380_p1 = lshr_ln331_3_fu_1370_p4;
assign zext_ln331_fu_911_p1 = lshr_ln_fu_901_p4;
assign zext_ln332_1_fu_1119_p1 = lshr_ln332_1_fu_1109_p4;
assign zext_ln332_2_fu_1417_p1 = lshr_ln332_2_fu_1407_p4;
assign zext_ln332_3_fu_1437_p1 = lshr_ln332_3_fu_1427_p4;
assign zext_ln332_4_fu_782_p1 = or_ln_fu_774_p3;
assign zext_ln332_5_fu_871_p1 = or_ln332_1_fu_864_p3;
assign zext_ln332_6_fu_1192_p1 = or_ln332_2_fu_1185_p3;
assign zext_ln332_7_fu_1205_p1 = or_ln332_3_fu_1198_p3;
assign zext_ln332_fu_932_p1 = lshr_ln1_fu_922_p4;
assign zext_ln333_1_fu_985_p1 = lshr_ln333_1_fu_975_p4;
assign zext_ln333_2_fu_1457_p1 = lshr_ln333_2_fu_1447_p4;
assign zext_ln333_3_fu_1492_p1 = lshr_ln333_3_fu_1482_p4;
assign zext_ln333_fu_1045_p1 = lshr_ln2_fu_1035_p4;
assign zext_ln334_1_fu_1177_p1 = lshr_ln334_1_reg_1869;
assign zext_ln334_2_fu_1512_p1 = lshr_ln334_2_fu_1502_p4;
assign zext_ln334_3_fu_1547_p1 = lshr_ln334_3_fu_1537_p4;
assign zext_ln334_4_fu_812_p1 = or_ln1_fu_805_p3;
assign zext_ln334_5_fu_997_p1 = or_ln334_1_fu_990_p3;
assign zext_ln334_6_fu_1266_p1 = or_ln334_2_fu_1259_p3;
assign zext_ln334_7_fu_1279_p1 = or_ln334_3_fu_1272_p3;
assign zext_ln334_fu_1065_p1 = lshr_ln3_fu_1055_p4;
assign zext_ln335_1_fu_1160_p1 = $unsigned(sext_ln335_1_fu_1156_p1);
assign zext_ln335_2_fu_1555_p1 = $unsigned(sext_ln335_2_fu_1552_p1);
assign zext_ln335_3_fu_1575_p1 = lshr_ln335_3_fu_1565_p4;
assign zext_ln335_fu_1168_p1 = $unsigned(sext_ln335_fu_1165_p1);
assign zext_ln336_1_fu_1181_p1 = lshr_ln336_1_reg_1844;
assign zext_ln336_2_fu_1580_p1 = lshr_ln336_2_reg_1997;
assign zext_ln336_3_fu_1599_p1 = lshr_ln336_3_fu_1589_p4;
assign zext_ln336_4_fu_824_p1 = or_ln2_fu_817_p3;
assign zext_ln336_5_fu_1009_p1 = or_ln336_1_fu_1002_p3;
assign zext_ln336_6_fu_1327_p1 = or_ln336_2_fu_1320_p3;
assign zext_ln336_7_fu_1392_p1 = or_ln336_3_fu_1385_p3;
assign zext_ln336_fu_1173_p1 = lshr_ln4_reg_1859;
assign zext_ln337_1_fu_1254_p1 = lshr_ln337_1_fu_1244_p4;
assign zext_ln337_2_fu_1648_p1 = lshr_ln337_2_fu_1638_p4;
assign zext_ln337_3_fu_1653_p1 = lshr_ln337_3_reg_2007;
assign zext_ln337_fu_1230_p1 = lshr_ln5_fu_1220_p4;
always @ (posedge ap_clk) begin
    zext_ln332_4_reg_1704[1:0] <= 2'b10;
    zext_ln332_4_reg_1704[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln330_1_reg_1714[2:0] <= 3'b100;
    zext_ln330_1_reg_1714[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln334_4_reg_1724[1:0] <= 2'b01;
    zext_ln334_4_reg_1724[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln336_4_reg_1734[1:0] <= 2'b11;
    zext_ln336_4_reg_1734[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln330_2_reg_1756[3:0] <= 4'b1000;
    zext_ln330_2_reg_1756[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln330_3_reg_1766[3:0] <= 4'b1100;
    zext_ln330_3_reg_1766[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln332_5_reg_1791[2:0] <= 3'b110;
    zext_ln332_5_reg_1791[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln328_1_reg_1801[7:6] <= 2'b00;
    zext_ln328_2_reg_1807[8:6] <= 3'b000;
    offset_1_reg_1818[0] <= 1'b1;
    zext_ln334_5_reg_1829[2:0] <= 3'b101;
    zext_ln334_5_reg_1829[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln336_5_reg_1839[2:0] <= 3'b111;
    zext_ln336_5_reg_1839[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    offset_2_reg_1929[1:0] <= 2'b10;
    zext_ln172_6_reg_1935[1:0] <= 2'b10;
    zext_ln172_6_reg_1935[8:6] <= 3'b000;
    zext_ln172_5_reg_1981[1:0] <= 2'b10;
    zext_ln172_5_reg_1981[7:6] <= 2'b00;
end
endmodule 
