module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1); 
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
output  [7:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [7:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [7:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [7:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [7:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [7:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [7:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [7:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_1652;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [63:0] reg_692;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_698;
reg   [6:0] tid_2_reg_1644;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] zext_ln172_fu_742_p1;
reg   [9:0] zext_ln172_reg_1656;
wire   [9:0] zext_ln172_10_fu_813_p1;
reg   [9:0] zext_ln172_10_reg_1676;
wire   [9:0] zext_ln172_11_fu_858_p1;
reg   [9:0] zext_ln172_11_reg_1696;
wire   [9:0] zext_ln172_12_fu_903_p1;
reg   [9:0] zext_ln172_12_reg_1716;
wire   [5:0] trunc_ln314_fu_928_p1;
reg   [5:0] trunc_ln314_reg_1736;
wire   [63:0] zext_ln314_fu_939_p1;
reg   [63:0] zext_ln314_reg_1742;
wire   [63:0] zext_ln315_4_fu_952_p1;
reg   [63:0] zext_ln315_4_reg_1747;
reg   [63:0] smem_2_load_reg_1772;
reg   [63:0] smem_2_load_1_reg_1777;
reg   [63:0] smem_3_load_reg_1792;
reg   [63:0] smem_3_load_1_reg_1797;
wire   [4:0] tmp_s_fu_1157_p4;
reg   [4:0] tmp_s_reg_1822;
wire   [63:0] zext_ln314_1_fu_1174_p1;
reg   [63:0] zext_ln314_1_reg_1828;
wire   [63:0] zext_ln315_5_fu_1187_p1;
reg   [63:0] zext_ln315_5_reg_1833;
reg   [63:0] smem_2_load_2_reg_1848;
reg   [63:0] smem_2_load_3_reg_1853;
reg   [63:0] smem_3_load_2_reg_1868;
reg   [63:0] smem_3_load_3_reg_1873;
wire   [63:0] zext_ln318_4_fu_1319_p1;
reg   [63:0] zext_ln318_4_reg_1888;
wire   [63:0] zext_ln319_4_fu_1331_p1;
reg   [63:0] zext_ln319_4_reg_1893;
reg   [63:0] smem_2_load_4_reg_1918;
reg   [63:0] smem_2_load_5_reg_1923;
reg   [63:0] smem_3_load_4_reg_1938;
reg   [63:0] smem_3_load_5_reg_1943;
wire   [63:0] zext_ln318_5_fu_1503_p1;
reg   [63:0] zext_ln318_5_reg_1958;
wire   [63:0] zext_ln319_5_fu_1515_p1;
reg   [63:0] zext_ln319_5_reg_1963;
reg   [63:0] smem_2_load_6_reg_1968;
reg   [63:0] smem_2_load_7_reg_1973;
reg   [63:0] smem_3_load_6_reg_1978;
reg   [63:0] smem_3_load_7_reg_1983;
wire   [3:0] tmp_20_fu_1520_p4;
reg   [3:0] tmp_20_reg_1988;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] zext_ln314_2_fu_1537_p1;
reg   [63:0] zext_ln314_2_reg_1998;
wire   [63:0] zext_ln315_6_fu_1550_p1;
reg   [63:0] zext_ln315_6_reg_2003;
wire   [63:0] zext_ln318_6_fu_1562_p1;
reg   [63:0] zext_ln318_6_reg_2008;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] zext_ln319_6_fu_1574_p1;
reg   [63:0] zext_ln319_6_reg_2013;
wire   [63:0] zext_ln314_3_fu_1586_p1;
reg   [63:0] zext_ln314_3_reg_2018;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] zext_ln315_7_fu_1598_p1;
reg   [63:0] zext_ln315_7_reg_2023;
wire   [63:0] zext_ln318_7_fu_1620_p1;
reg   [63:0] zext_ln318_7_reg_2028;
wire   [63:0] zext_ln319_7_fu_1632_p1;
reg   [63:0] zext_ln319_7_reg_2033;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln172_5_fu_764_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_fu_788_p1;
wire   [63:0] zext_ln315_1_fu_833_p1;
wire   [63:0] zext_ln315_2_fu_878_p1;
wire   [63:0] zext_ln315_3_fu_923_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln316_fu_972_p1;
wire   [63:0] zext_ln317_fu_992_p1;
wire   [63:0] zext_ln316_1_fu_1012_p1;
wire   [63:0] zext_ln317_1_fu_1032_p1;
wire   [63:0] zext_ln316_2_fu_1052_p1;
wire   [63:0] zext_ln317_2_fu_1072_p1;
wire   [63:0] zext_ln316_3_fu_1092_p1;
wire   [63:0] zext_ln317_3_fu_1112_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln318_fu_1132_p1;
wire   [63:0] zext_ln319_fu_1152_p1;
wire   [63:0] zext_ln318_1_fu_1207_p1;
wire   [63:0] zext_ln319_1_fu_1227_p1;
wire   [63:0] zext_ln318_2_fu_1247_p1;
wire   [63:0] zext_ln319_2_fu_1267_p1;
wire   [63:0] zext_ln318_3_fu_1287_p1;
wire   [63:0] zext_ln319_3_fu_1307_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln320_fu_1351_p1;
wire   [63:0] zext_ln321_fu_1371_p1;
wire   [63:0] zext_ln320_1_fu_1391_p1;
wire   [63:0] zext_ln321_1_fu_1411_p1;
wire   [63:0] zext_ln320_2_fu_1431_p1;
wire   [63:0] zext_ln321_2_fu_1451_p1;
wire   [63:0] zext_ln320_3_fu_1471_p1;
wire   [63:0] zext_ln321_3_fu_1491_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
reg   [6:0] tid_fu_118;
wire   [6:0] add_ln309_fu_1603_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce1_local;
reg   [7:0] smem_address1_local;
reg    smem_ce0_local;
reg   [7:0] smem_address0_local;
reg    smem_1_ce1_local;
reg   [7:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [7:0] smem_1_address0_local;
reg    smem_2_ce1_local;
reg   [7:0] smem_2_address1_local;
reg    smem_2_ce0_local;
reg   [7:0] smem_2_address0_local;
reg    smem_3_ce1_local;
reg   [7:0] smem_3_address1_local;
reg    smem_3_ce0_local;
reg   [7:0] smem_3_address0_local;
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
wire   [2:0] tmp_22_fu_720_p4;
wire   [5:0] trunc_ln312_fu_730_p1;
wire   [8:0] offset_fu_734_p3;
wire   [3:0] tmp_23_fu_746_p4;
wire   [6:0] lshr_ln172_5_fu_756_p3;
wire   [9:0] add_ln315_fu_772_p2;
wire   [7:0] lshr_ln_fu_778_p4;
wire   [4:0] tmp_24_fu_793_p4;
wire   [8:0] offset_4_fu_803_p4;
wire   [9:0] add_ln315_1_fu_817_p2;
wire   [7:0] lshr_ln315_1_fu_823_p4;
wire   [3:0] tmp_25_fu_838_p4;
wire   [8:0] offset_5_fu_848_p4;
wire   [9:0] add_ln315_2_fu_862_p2;
wire   [7:0] lshr_ln315_2_fu_868_p4;
wire   [3:0] tmp_26_fu_883_p4;
wire   [8:0] offset_6_fu_893_p4;
wire   [9:0] add_ln315_3_fu_907_p2;
wire   [7:0] lshr_ln315_3_fu_913_p4;
wire   [7:0] shl_ln7_fu_931_p3;
wire   [7:0] or_ln_fu_944_p3;
wire   [9:0] add_ln316_fu_957_p2;
wire   [7:0] lshr_ln6_fu_962_p4;
wire   [9:0] add_ln317_fu_977_p2;
wire   [7:0] lshr_ln7_fu_982_p4;
wire   [9:0] add_ln316_1_fu_997_p2;
wire   [7:0] lshr_ln316_1_fu_1002_p4;
wire   [9:0] add_ln317_1_fu_1017_p2;
wire   [7:0] lshr_ln317_1_fu_1022_p4;
wire   [9:0] add_ln316_2_fu_1037_p2;
wire   [7:0] lshr_ln316_2_fu_1042_p4;
wire   [9:0] add_ln317_2_fu_1057_p2;
wire   [7:0] lshr_ln317_2_fu_1062_p4;
wire   [9:0] add_ln316_3_fu_1077_p2;
wire   [7:0] lshr_ln316_3_fu_1082_p4;
wire   [9:0] add_ln317_3_fu_1097_p2;
wire   [7:0] lshr_ln317_3_fu_1102_p4;
wire   [9:0] add_ln318_fu_1117_p2;
wire   [7:0] lshr_ln8_fu_1122_p4;
wire   [9:0] add_ln319_fu_1137_p2;
wire   [7:0] lshr_ln9_fu_1142_p4;
wire   [7:0] shl_ln314_1_fu_1166_p3;
wire   [7:0] or_ln315_1_fu_1179_p3;
wire   [9:0] add_ln318_1_fu_1192_p2;
wire   [7:0] lshr_ln318_1_fu_1197_p4;
wire   [9:0] add_ln319_1_fu_1212_p2;
wire   [7:0] lshr_ln319_1_fu_1217_p4;
wire   [9:0] add_ln318_2_fu_1232_p2;
wire   [7:0] lshr_ln318_2_fu_1237_p4;
wire   [9:0] add_ln319_2_fu_1252_p2;
wire   [7:0] lshr_ln319_2_fu_1257_p4;
wire   [9:0] add_ln318_3_fu_1272_p2;
wire   [7:0] lshr_ln318_3_fu_1277_p4;
wire   [9:0] add_ln319_3_fu_1292_p2;
wire   [7:0] lshr_ln319_3_fu_1297_p4;
wire   [7:0] or_ln5_fu_1312_p3;
wire   [7:0] or_ln6_fu_1324_p3;
wire   [9:0] add_ln320_fu_1336_p2;
wire   [7:0] lshr_ln10_fu_1341_p4;
wire   [9:0] add_ln321_fu_1356_p2;
wire   [7:0] lshr_ln11_fu_1361_p4;
wire   [9:0] add_ln320_1_fu_1376_p2;
wire   [7:0] lshr_ln320_1_fu_1381_p4;
wire   [9:0] add_ln321_1_fu_1396_p2;
wire   [7:0] lshr_ln321_1_fu_1401_p4;
wire   [9:0] add_ln320_2_fu_1416_p2;
wire   [7:0] lshr_ln320_2_fu_1421_p4;
wire   [9:0] add_ln321_2_fu_1436_p2;
wire   [7:0] lshr_ln321_2_fu_1441_p4;
wire   [9:0] add_ln320_3_fu_1456_p2;
wire   [7:0] lshr_ln320_3_fu_1461_p4;
wire   [9:0] add_ln321_3_fu_1476_p2;
wire   [7:0] lshr_ln321_3_fu_1481_p4;
wire   [7:0] or_ln318_1_fu_1496_p3;
wire   [7:0] or_ln319_1_fu_1508_p3;
wire   [7:0] or_ln7_fu_1529_p3;
wire   [7:0] or_ln315_2_fu_1542_p3;
wire   [7:0] or_ln318_2_fu_1555_p3;
wire   [7:0] or_ln319_2_fu_1567_p3;
wire   [7:0] shl_ln314_2_fu_1579_p3;
wire   [7:0] or_ln315_3_fu_1591_p3;
wire   [7:0] or_ln318_3_fu_1613_p3;
wire   [7:0] or_ln319_3_fu_1625_p3;
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
#0 tid_fu_118 = 7'd0;
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
        tid_fu_118 <= 7'd0;
    end else if (((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tid_fu_118 <= add_ln309_fu_1603_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_692 <= smem_1_q1;
        reg_698 <= smem_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_load_1_reg_1777 <= smem_2_q0;
        smem_2_load_reg_1772 <= smem_2_q1;
        smem_3_load_1_reg_1797 <= smem_3_q0;
        smem_3_load_reg_1792 <= smem_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_load_2_reg_1848 <= smem_2_q1;
        smem_2_load_3_reg_1853 <= smem_2_q0;
        smem_3_load_2_reg_1868 <= smem_3_q1;
        smem_3_load_3_reg_1873 <= smem_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_load_4_reg_1918 <= smem_2_q1;
        smem_2_load_5_reg_1923 <= smem_2_q0;
        smem_3_load_4_reg_1938 <= smem_3_q1;
        smem_3_load_5_reg_1943 <= smem_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_load_6_reg_1968 <= smem_2_q1;
        smem_2_load_7_reg_1973 <= smem_2_q0;
        smem_3_load_6_reg_1978 <= smem_3_q1;
        smem_3_load_7_reg_1983 <= smem_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_2_reg_1644 <= ap_sig_allocacmp_tid_2;
        tmp_reg_1652 <= ap_sig_allocacmp_tid_2[32'd6];
        zext_ln172_10_reg_1676[8 : 1] <= zext_ln172_10_fu_813_p1[8 : 1];
        zext_ln172_11_reg_1696[8 : 2] <= zext_ln172_11_fu_858_p1[8 : 2];
        zext_ln172_12_reg_1716[8 : 2] <= zext_ln172_12_fu_903_p1[8 : 2];
        zext_ln172_reg_1656[8 : 0] <= zext_ln172_fu_742_p1[8 : 0];
        zext_ln318_7_reg_2028[7 : 4] <= zext_ln318_7_fu_1620_p1[7 : 4];
        zext_ln319_7_reg_2033[7 : 4] <= zext_ln319_7_fu_1632_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_20_reg_1988 <= {{tid_2_reg_1644[5:2]}};
        zext_ln314_2_reg_1998[7 : 4] <= zext_ln314_2_fu_1537_p1[7 : 4];
        zext_ln315_6_reg_2003[7 : 4] <= zext_ln315_6_fu_1550_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_s_reg_1822 <= {{tid_2_reg_1644[5:1]}};
        zext_ln314_1_reg_1828[7 : 3] <= zext_ln314_1_fu_1174_p1[7 : 3];
        zext_ln315_5_reg_1833[7 : 3] <= zext_ln315_5_fu_1187_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln314_reg_1736 <= trunc_ln314_fu_928_p1;
        zext_ln314_reg_1742[7 : 2] <= zext_ln314_fu_939_p1[7 : 2];
        zext_ln315_4_reg_1747[7 : 2] <= zext_ln315_4_fu_952_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        zext_ln314_3_reg_2018[7 : 4] <= zext_ln314_3_fu_1586_p1[7 : 4];
        zext_ln315_7_reg_2023[7 : 4] <= zext_ln315_7_fu_1598_p1[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln318_4_reg_1888[7 : 2] <= zext_ln318_4_fu_1319_p1[7 : 2];
        zext_ln319_4_reg_1893[7 : 2] <= zext_ln319_4_fu_1331_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        zext_ln318_5_reg_1958[7 : 3] <= zext_ln318_5_fu_1503_p1[7 : 3];
        zext_ln319_5_reg_1963[7 : 3] <= zext_ln319_5_fu_1515_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        zext_ln318_6_reg_2008[7 : 4] <= zext_ln318_6_fu_1562_p1[7 : 4];
        zext_ln319_6_reg_2013[7 : 4] <= zext_ln319_6_fu_1574_p1[7 : 4];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln319_7_reg_2033;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln315_7_reg_2023;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address0_local = zext_ln319_6_reg_2013;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address0_local = zext_ln315_6_reg_2003;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address0_local = zext_ln319_5_reg_1963;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address0_local = zext_ln319_4_reg_1893;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln315_5_reg_1833;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln315_4_reg_1747;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln318_7_reg_2028;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln314_3_reg_2018;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_address1_local = zext_ln318_6_reg_2008;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_address1_local = zext_ln314_2_reg_1998;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_1_address1_local = zext_ln318_5_reg_1958;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_1_address1_local = zext_ln318_4_reg_1888;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln314_1_reg_1828;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln314_reg_1742;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = smem_3_load_7_reg_1983;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = smem_3_load_3_reg_1873;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_d0_local = smem_2_load_7_reg_1973;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_d0_local = smem_2_load_3_reg_1853;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_1_d0_local = reg_698;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_d0_local = smem_q0;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = smem_3_load_6_reg_1978;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = smem_3_load_2_reg_1868;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_1_d1_local = smem_2_load_6_reg_1968;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_1_d1_local = smem_2_load_2_reg_1848;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_x_1_d1_local = reg_692;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_d1_local = smem_q1;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln319_7_fu_1632_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address0_local = zext_ln315_7_fu_1598_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address0_local = zext_ln319_6_fu_1574_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address0_local = zext_ln315_6_fu_1550_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address0_local = zext_ln319_5_fu_1515_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln319_4_fu_1331_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln315_5_fu_1187_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_4_fu_952_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln318_7_fu_1620_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_address1_local = zext_ln314_3_fu_1586_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_address1_local = zext_ln318_6_fu_1562_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_address1_local = zext_ln314_2_fu_1537_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_address1_local = zext_ln318_5_fu_1503_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln318_4_fu_1319_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln314_1_fu_1174_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_fu_939_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = smem_3_load_5_reg_1943;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_d0_local = smem_3_load_1_reg_1797;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_d0_local = smem_2_load_5_reg_1923;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_d0_local = smem_2_load_1_reg_1777;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_d0_local = reg_698;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_d0_local = smem_q0;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = smem_3_load_4_reg_1938;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_x_d1_local = smem_3_load_reg_1792;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_x_d1_local = smem_2_load_4_reg_1918;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        DATA_x_d1_local = smem_2_load_reg_1772;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_d1_local = reg_692;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_d1_local = smem_q1;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_1652 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1652 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_118;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_address0_local = zext_ln321_1_fu_1411_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_1_address0_local = zext_ln319_1_fu_1227_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address0_local = zext_ln317_1_fu_1032_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_1_address0_local = zext_ln315_1_fu_833_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_address1_local = zext_ln320_1_fu_1391_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_1_address1_local = zext_ln318_1_fu_1207_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address1_local = zext_ln316_1_fu_1012_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_1_address1_local = zext_ln172_5_fu_764_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_2_address0_local = zext_ln321_2_fu_1451_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_2_address0_local = zext_ln319_2_fu_1267_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_2_address0_local = zext_ln317_2_fu_1072_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_2_address0_local = zext_ln315_2_fu_878_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_2_address1_local = zext_ln320_2_fu_1431_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_2_address1_local = zext_ln318_2_fu_1247_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_2_address1_local = zext_ln316_2_fu_1052_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_2_address1_local = zext_ln172_5_fu_764_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_3_address0_local = zext_ln321_3_fu_1491_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_3_address0_local = zext_ln319_3_fu_1307_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_3_address0_local = zext_ln317_3_fu_1112_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_3_address0_local = zext_ln315_3_fu_923_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_3_address1_local = zext_ln320_3_fu_1471_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_3_address1_local = zext_ln318_3_fu_1287_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_3_address1_local = zext_ln316_3_fu_1092_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_3_address1_local = zext_ln172_5_fu_764_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address0_local = zext_ln321_fu_1371_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address0_local = zext_ln319_fu_1152_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address0_local = zext_ln317_fu_992_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_address0_local = zext_ln315_fu_788_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address1_local = zext_ln320_fu_1351_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address1_local = zext_ln318_fu_1132_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address1_local = zext_ln316_fu_972_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_address1_local = zext_ln172_5_fu_764_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign add_ln309_fu_1603_p2 = (tid_2_reg_1644 + 7'd4);
assign add_ln315_1_fu_817_p2 = (zext_ln172_10_fu_813_p1 + 10'd32);
assign add_ln315_2_fu_862_p2 = (zext_ln172_11_fu_858_p1 + 10'd32);
assign add_ln315_3_fu_907_p2 = (zext_ln172_12_fu_903_p1 + 10'd32);
assign add_ln315_fu_772_p2 = (zext_ln172_fu_742_p1 + 10'd32);
assign add_ln316_1_fu_997_p2 = (zext_ln172_10_reg_1676 + 10'd8);
assign add_ln316_2_fu_1037_p2 = (zext_ln172_11_reg_1696 + 10'd8);
assign add_ln316_3_fu_1077_p2 = (zext_ln172_12_reg_1716 + 10'd8);
assign add_ln316_fu_957_p2 = (zext_ln172_reg_1656 + 10'd8);
assign add_ln317_1_fu_1017_p2 = (zext_ln172_10_reg_1676 + 10'd40);
assign add_ln317_2_fu_1057_p2 = (zext_ln172_11_reg_1696 + 10'd40);
assign add_ln317_3_fu_1097_p2 = (zext_ln172_12_reg_1716 + 10'd40);
assign add_ln317_fu_977_p2 = (zext_ln172_reg_1656 + 10'd40);
assign add_ln318_1_fu_1192_p2 = (zext_ln172_10_reg_1676 + 10'd16);
assign add_ln318_2_fu_1232_p2 = (zext_ln172_11_reg_1696 + 10'd16);
assign add_ln318_3_fu_1272_p2 = (zext_ln172_12_reg_1716 + 10'd16);
assign add_ln318_fu_1117_p2 = (zext_ln172_reg_1656 + 10'd16);
assign add_ln319_1_fu_1212_p2 = (zext_ln172_10_reg_1676 + 10'd48);
assign add_ln319_2_fu_1252_p2 = (zext_ln172_11_reg_1696 + 10'd48);
assign add_ln319_3_fu_1292_p2 = (zext_ln172_12_reg_1716 + 10'd48);
assign add_ln319_fu_1137_p2 = (zext_ln172_reg_1656 + 10'd48);
assign add_ln320_1_fu_1376_p2 = (zext_ln172_10_reg_1676 + 10'd24);
assign add_ln320_2_fu_1416_p2 = (zext_ln172_11_reg_1696 + 10'd24);
assign add_ln320_3_fu_1456_p2 = (zext_ln172_12_reg_1716 + 10'd24);
assign add_ln320_fu_1336_p2 = (zext_ln172_reg_1656 + 10'd24);
assign add_ln321_1_fu_1396_p2 = (zext_ln172_10_reg_1676 + 10'd56);
assign add_ln321_2_fu_1436_p2 = (zext_ln172_11_reg_1696 + 10'd56);
assign add_ln321_3_fu_1476_p2 = (zext_ln172_12_reg_1716 + 10'd56);
assign add_ln321_fu_1356_p2 = (zext_ln172_reg_1656 + 10'd56);
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
assign lshr_ln10_fu_1341_p4 = {{add_ln320_fu_1336_p2[9:2]}};
assign lshr_ln11_fu_1361_p4 = {{add_ln321_fu_1356_p2[9:2]}};
assign lshr_ln172_5_fu_756_p3 = {{tmp_22_fu_720_p4}, {tmp_23_fu_746_p4}};
assign lshr_ln315_1_fu_823_p4 = {{add_ln315_1_fu_817_p2[9:2]}};
assign lshr_ln315_2_fu_868_p4 = {{add_ln315_2_fu_862_p2[9:2]}};
assign lshr_ln315_3_fu_913_p4 = {{add_ln315_3_fu_907_p2[9:2]}};
assign lshr_ln316_1_fu_1002_p4 = {{add_ln316_1_fu_997_p2[9:2]}};
assign lshr_ln316_2_fu_1042_p4 = {{add_ln316_2_fu_1037_p2[9:2]}};
assign lshr_ln316_3_fu_1082_p4 = {{add_ln316_3_fu_1077_p2[9:2]}};
assign lshr_ln317_1_fu_1022_p4 = {{add_ln317_1_fu_1017_p2[9:2]}};
assign lshr_ln317_2_fu_1062_p4 = {{add_ln317_2_fu_1057_p2[9:2]}};
assign lshr_ln317_3_fu_1102_p4 = {{add_ln317_3_fu_1097_p2[9:2]}};
assign lshr_ln318_1_fu_1197_p4 = {{add_ln318_1_fu_1192_p2[9:2]}};
assign lshr_ln318_2_fu_1237_p4 = {{add_ln318_2_fu_1232_p2[9:2]}};
assign lshr_ln318_3_fu_1277_p4 = {{add_ln318_3_fu_1272_p2[9:2]}};
assign lshr_ln319_1_fu_1217_p4 = {{add_ln319_1_fu_1212_p2[9:2]}};
assign lshr_ln319_2_fu_1257_p4 = {{add_ln319_2_fu_1252_p2[9:2]}};
assign lshr_ln319_3_fu_1297_p4 = {{add_ln319_3_fu_1292_p2[9:2]}};
assign lshr_ln320_1_fu_1381_p4 = {{add_ln320_1_fu_1376_p2[9:2]}};
assign lshr_ln320_2_fu_1421_p4 = {{add_ln320_2_fu_1416_p2[9:2]}};
assign lshr_ln320_3_fu_1461_p4 = {{add_ln320_3_fu_1456_p2[9:2]}};
assign lshr_ln321_1_fu_1401_p4 = {{add_ln321_1_fu_1396_p2[9:2]}};
assign lshr_ln321_2_fu_1441_p4 = {{add_ln321_2_fu_1436_p2[9:2]}};
assign lshr_ln321_3_fu_1481_p4 = {{add_ln321_3_fu_1476_p2[9:2]}};
assign lshr_ln6_fu_962_p4 = {{add_ln316_fu_957_p2[9:2]}};
assign lshr_ln7_fu_982_p4 = {{add_ln317_fu_977_p2[9:2]}};
assign lshr_ln8_fu_1122_p4 = {{add_ln318_fu_1117_p2[9:2]}};
assign lshr_ln9_fu_1142_p4 = {{add_ln319_fu_1137_p2[9:2]}};
assign lshr_ln_fu_778_p4 = {{add_ln315_fu_772_p2[9:2]}};
assign offset_4_fu_803_p4 = {{{tmp_22_fu_720_p4}, {tmp_24_fu_793_p4}}, {1'd1}};
assign offset_5_fu_848_p4 = {{{tmp_22_fu_720_p4}, {tmp_25_fu_838_p4}}, {2'd2}};
assign offset_6_fu_893_p4 = {{{tmp_22_fu_720_p4}, {tmp_26_fu_883_p4}}, {2'd3}};
assign offset_fu_734_p3 = {{tmp_22_fu_720_p4}, {trunc_ln312_fu_730_p1}};
assign or_ln315_1_fu_1179_p3 = {{tmp_s_fu_1157_p4}, {3'd6}};
assign or_ln315_2_fu_1542_p3 = {{tmp_20_fu_1520_p4}, {4'd10}};
assign or_ln315_3_fu_1591_p3 = {{tmp_20_reg_1988}, {4'd14}};
assign or_ln318_1_fu_1496_p3 = {{tmp_s_reg_1822}, {3'd5}};
assign or_ln318_2_fu_1555_p3 = {{tmp_20_reg_1988}, {4'd9}};
assign or_ln318_3_fu_1613_p3 = {{tmp_20_reg_1988}, {4'd13}};
assign or_ln319_1_fu_1508_p3 = {{tmp_s_reg_1822}, {3'd7}};
assign or_ln319_2_fu_1567_p3 = {{tmp_20_reg_1988}, {4'd11}};
assign or_ln319_3_fu_1625_p3 = {{tmp_20_reg_1988}, {4'd15}};
assign or_ln5_fu_1312_p3 = {{trunc_ln314_reg_1736}, {2'd1}};
assign or_ln6_fu_1324_p3 = {{trunc_ln314_reg_1736}, {2'd3}};
assign or_ln7_fu_1529_p3 = {{tmp_20_fu_1520_p4}, {4'd8}};
assign or_ln_fu_944_p3 = {{trunc_ln314_fu_928_p1}, {2'd2}};
assign shl_ln314_1_fu_1166_p3 = {{tmp_s_fu_1157_p4}, {3'd4}};
assign shl_ln314_2_fu_1579_p3 = {{tmp_20_reg_1988}, {4'd12}};
assign shl_ln7_fu_931_p3 = {{trunc_ln314_fu_928_p1}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_20_fu_1520_p4 = {{tid_2_reg_1644[5:2]}};
assign tmp_22_fu_720_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_23_fu_746_p4 = {{ap_sig_allocacmp_tid_2[5:2]}};
assign tmp_24_fu_793_p4 = {{ap_sig_allocacmp_tid_2[5:1]}};
assign tmp_25_fu_838_p4 = {{ap_sig_allocacmp_tid_2[5:2]}};
assign tmp_26_fu_883_p4 = {{ap_sig_allocacmp_tid_2[5:2]}};
assign tmp_s_fu_1157_p4 = {{tid_2_reg_1644[5:1]}};
assign trunc_ln312_fu_730_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_928_p1 = tid_2_reg_1644[5:0];
assign zext_ln172_10_fu_813_p1 = offset_4_fu_803_p4;
assign zext_ln172_11_fu_858_p1 = offset_5_fu_848_p4;
assign zext_ln172_12_fu_903_p1 = offset_6_fu_893_p4;
assign zext_ln172_5_fu_764_p1 = lshr_ln172_5_fu_756_p3;
assign zext_ln172_fu_742_p1 = offset_fu_734_p3;
assign zext_ln314_1_fu_1174_p1 = shl_ln314_1_fu_1166_p3;
assign zext_ln314_2_fu_1537_p1 = or_ln7_fu_1529_p3;
assign zext_ln314_3_fu_1586_p1 = shl_ln314_2_fu_1579_p3;
assign zext_ln314_fu_939_p1 = shl_ln7_fu_931_p3;
assign zext_ln315_1_fu_833_p1 = lshr_ln315_1_fu_823_p4;
assign zext_ln315_2_fu_878_p1 = lshr_ln315_2_fu_868_p4;
assign zext_ln315_3_fu_923_p1 = lshr_ln315_3_fu_913_p4;
assign zext_ln315_4_fu_952_p1 = or_ln_fu_944_p3;
assign zext_ln315_5_fu_1187_p1 = or_ln315_1_fu_1179_p3;
assign zext_ln315_6_fu_1550_p1 = or_ln315_2_fu_1542_p3;
assign zext_ln315_7_fu_1598_p1 = or_ln315_3_fu_1591_p3;
assign zext_ln315_fu_788_p1 = lshr_ln_fu_778_p4;
assign zext_ln316_1_fu_1012_p1 = lshr_ln316_1_fu_1002_p4;
assign zext_ln316_2_fu_1052_p1 = lshr_ln316_2_fu_1042_p4;
assign zext_ln316_3_fu_1092_p1 = lshr_ln316_3_fu_1082_p4;
assign zext_ln316_fu_972_p1 = lshr_ln6_fu_962_p4;
assign zext_ln317_1_fu_1032_p1 = lshr_ln317_1_fu_1022_p4;
assign zext_ln317_2_fu_1072_p1 = lshr_ln317_2_fu_1062_p4;
assign zext_ln317_3_fu_1112_p1 = lshr_ln317_3_fu_1102_p4;
assign zext_ln317_fu_992_p1 = lshr_ln7_fu_982_p4;
assign zext_ln318_1_fu_1207_p1 = lshr_ln318_1_fu_1197_p4;
assign zext_ln318_2_fu_1247_p1 = lshr_ln318_2_fu_1237_p4;
assign zext_ln318_3_fu_1287_p1 = lshr_ln318_3_fu_1277_p4;
assign zext_ln318_4_fu_1319_p1 = or_ln5_fu_1312_p3;
assign zext_ln318_5_fu_1503_p1 = or_ln318_1_fu_1496_p3;
assign zext_ln318_6_fu_1562_p1 = or_ln318_2_fu_1555_p3;
assign zext_ln318_7_fu_1620_p1 = or_ln318_3_fu_1613_p3;
assign zext_ln318_fu_1132_p1 = lshr_ln8_fu_1122_p4;
assign zext_ln319_1_fu_1227_p1 = lshr_ln319_1_fu_1217_p4;
assign zext_ln319_2_fu_1267_p1 = lshr_ln319_2_fu_1257_p4;
assign zext_ln319_3_fu_1307_p1 = lshr_ln319_3_fu_1297_p4;
assign zext_ln319_4_fu_1331_p1 = or_ln6_fu_1324_p3;
assign zext_ln319_5_fu_1515_p1 = or_ln319_1_fu_1508_p3;
assign zext_ln319_6_fu_1574_p1 = or_ln319_2_fu_1567_p3;
assign zext_ln319_7_fu_1632_p1 = or_ln319_3_fu_1625_p3;
assign zext_ln319_fu_1152_p1 = lshr_ln9_fu_1142_p4;
assign zext_ln320_1_fu_1391_p1 = lshr_ln320_1_fu_1381_p4;
assign zext_ln320_2_fu_1431_p1 = lshr_ln320_2_fu_1421_p4;
assign zext_ln320_3_fu_1471_p1 = lshr_ln320_3_fu_1461_p4;
assign zext_ln320_fu_1351_p1 = lshr_ln10_fu_1341_p4;
assign zext_ln321_1_fu_1411_p1 = lshr_ln321_1_fu_1401_p4;
assign zext_ln321_2_fu_1451_p1 = lshr_ln321_2_fu_1441_p4;
assign zext_ln321_3_fu_1491_p1 = lshr_ln321_3_fu_1481_p4;
assign zext_ln321_fu_1371_p1 = lshr_ln11_fu_1361_p4;
always @ (posedge ap_clk) begin
    zext_ln172_reg_1656[9] <= 1'b0;
    zext_ln172_10_reg_1676[0] <= 1'b1;
    zext_ln172_10_reg_1676[9] <= 1'b0;
    zext_ln172_11_reg_1696[1:0] <= 2'b10;
    zext_ln172_11_reg_1696[9] <= 1'b0;
    zext_ln172_12_reg_1716[1:0] <= 2'b11;
    zext_ln172_12_reg_1716[9] <= 1'b0;
    zext_ln314_reg_1742[1:0] <= 2'b00;
    zext_ln314_reg_1742[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln315_4_reg_1747[1:0] <= 2'b10;
    zext_ln315_4_reg_1747[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln314_1_reg_1828[2:0] <= 3'b100;
    zext_ln314_1_reg_1828[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln315_5_reg_1833[2:0] <= 3'b110;
    zext_ln315_5_reg_1833[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln318_4_reg_1888[1:0] <= 2'b01;
    zext_ln318_4_reg_1888[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln319_4_reg_1893[1:0] <= 2'b11;
    zext_ln319_4_reg_1893[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln318_5_reg_1958[2:0] <= 3'b101;
    zext_ln318_5_reg_1958[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln319_5_reg_1963[2:0] <= 3'b111;
    zext_ln319_5_reg_1963[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln314_2_reg_1998[3:0] <= 4'b1000;
    zext_ln314_2_reg_1998[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln315_6_reg_2003[3:0] <= 4'b1010;
    zext_ln315_6_reg_2003[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln318_6_reg_2008[3:0] <= 4'b1001;
    zext_ln318_6_reg_2008[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln319_6_reg_2013[3:0] <= 4'b1011;
    zext_ln319_6_reg_2013[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln314_3_reg_2018[3:0] <= 4'b1100;
    zext_ln314_3_reg_2018[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln315_7_reg_2023[3:0] <= 4'b1110;
    zext_ln315_7_reg_2023[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln318_7_reg_2028[3:0] <= 4'b1101;
    zext_ln318_7_reg_2028[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln319_7_reg_2033[3:0] <= 4'b1111;
    zext_ln319_7_reg_2033[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 