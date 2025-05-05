module fft1D_512_fft1D_512_Pipeline_loop4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1); 
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
wire   [0:0] tmp_fu_733_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_subdone;
reg   [63:0] reg_691;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_697;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_705;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_711;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_719;
reg   [6:0] tid_reg_1640;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_1647;
wire   [5:0] offset_fu_741_p1;
reg   [5:0] offset_reg_1651;
wire   [4:0] lshr_ln172_4_fu_745_p4;
reg   [4:0] lshr_ln172_4_reg_1662;
wire   [63:0] zext_ln213_4_fu_808_p1;
reg   [63:0] zext_ln213_4_reg_1701;
wire   [5:0] offset_4_fu_813_p3;
reg   [5:0] offset_4_reg_1711;
wire   [8:0] zext_ln172_10_fu_820_p1;
reg   [8:0] zext_ln172_10_reg_1717;
wire   [63:0] zext_ln211_4_fu_852_p1;
reg   [63:0] zext_ln211_4_reg_1723;
wire   [3:0] tmp_s_fu_857_p4;
reg   [3:0] tmp_s_reg_1733;
reg   [7:0] lshr_ln8_reg_1767;
reg   [7:0] lshr_ln215_1_reg_1787;
reg   [6:0] trunc_ln5_reg_1797;
reg   [63:0] DATA_y_1_load_13_reg_1862;
wire   [5:0] offset_5_fu_1264_p3;
reg   [5:0] offset_5_reg_1867;
wire   [8:0] zext_ln172_13_fu_1271_p1;
reg   [8:0] zext_ln172_13_reg_1873;
wire   [9:0] trunc_ln172_fu_1336_p1;
reg   [9:0] trunc_ln172_reg_1889;
reg   [63:0] DATA_y_load_10_reg_1904;
reg   [63:0] DATA_y_load_14_reg_1909;
wire   [7:0] zext_ln172_12_fu_1374_p1;
reg   [7:0] zext_ln172_12_reg_1919;
reg   [63:0] DATA_y_1_load_11_reg_1925;
reg   [63:0] DATA_y_1_load_15_reg_1930;
reg   [7:0] lshr_ln215_2_reg_1935;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [6:0] trunc_ln214_2_reg_1940;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [8:0] lshr_ln216_3_reg_1945;
wire    ap_block_pp0_stage12_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln209_fu_763_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln209_1_fu_777_p1;
wire   [63:0] zext_ln172_7_fu_783_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln211_1_fu_795_p1;
wire   [63:0] zext_ln210_1_fu_840_p1;
wire   [63:0] zext_ln211_fu_876_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln215_4_fu_889_p1;
wire   [63:0] zext_ln210_fu_914_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln212_fu_935_p1;
wire   [63:0] zext_ln212_1_fu_971_p1;
wire   [63:0] zext_ln213_5_fu_983_p1;
wire   [63:0] zext_ln215_5_fu_996_p1;
wire   [63:0] zext_ln213_fu_1036_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln215_fu_1057_p1;
wire   [63:0] zext_ln213_1_fu_1080_p1;
wire   [63:0] zext_ln214_1_fu_1105_p1;
wire   [63:0] zext_ln209_2_fu_1117_p1;
wire   [63:0] zext_ln209_3_fu_1130_p1;
wire   [63:0] zext_ln214_fu_1142_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln216_fu_1163_p1;
wire   [63:0] zext_ln215_1_fu_1171_p1;
wire   [63:0] zext_ln216_1_fu_1191_p1;
wire   [63:0] zext_ln211_5_fu_1203_p1;
wire   [63:0] zext_ln211_6_fu_1216_p1;
wire   [63:0] zext_ln172_8_fu_1229_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln213_6_fu_1242_p1;
wire   [63:0] zext_ln213_7_fu_1255_p1;
wire   [63:0] zext_ln210_2_fu_1291_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln215_6_fu_1303_p1;
wire   [63:0] zext_ln210_3_fu_1356_p1;
wire   [63:0] zext_ln215_7_fu_1368_p1;
wire   [63:0] zext_ln211_2_fu_1393_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln211_3_fu_1413_p1;
wire   [63:0] zext_ln212_2_fu_1433_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln212_3_fu_1468_p1;
wire   [63:0] zext_ln213_2_fu_1488_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln213_3_fu_1523_p1;
wire   [63:0] zext_ln214_2_fu_1531_p1;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln214_3_fu_1551_p1;
wire   [63:0] zext_ln215_2_fu_1556_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln215_3_fu_1575_p1;
wire   [63:0] zext_ln216_2_fu_1624_p1;
wire   [63:0] zext_ln216_3_fu_1629_p1;
reg   [6:0] tid_3_fu_134;
wire   [6:0] add_ln204_fu_1595_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
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
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [8:0] smem_1_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [8:0] smem_1_address0_local;
wire   [7:0] shl_ln3_fu_755_p3;
wire   [7:0] shl_ln209_1_fu_769_p3;
wire   [7:0] or_ln_fu_788_p3;
wire   [7:0] or_ln17_fu_801_p3;
wire   [8:0] add_ln210_1_fu_824_p2;
wire   [7:0] lshr_ln210_1_fu_830_p4;
wire   [7:0] or_ln211_1_fu_845_p3;
wire   [5:0] zext_ln_fu_866_p4;
wire   [7:0] or_ln18_fu_882_p3;
wire   [8:0] zext_ln207_2_fu_895_p1;
wire   [8:0] add_ln210_fu_898_p2;
wire   [7:0] lshr_ln_fu_904_p4;
wire   [8:0] add_ln212_fu_919_p2;
wire   [7:0] lshr_ln6_fu_925_p4;
wire   [8:0] add_ln215_fu_940_p2;
wire   [8:0] add_ln212_1_fu_956_p2;
wire   [7:0] lshr_ln212_1_fu_961_p4;
wire   [7:0] or_ln213_1_fu_976_p3;
wire   [7:0] or_ln215_1_fu_989_p3;
wire   [8:0] add_ln215_1_fu_1002_p2;
wire   [7:0] zext_ln207_1_fu_1017_p1;
wire   [7:0] add_ln213_fu_1020_p2;
wire   [6:0] lshr_ln7_fu_1026_p4;
wire   [7:0] add_ln214_fu_1041_p2;
wire   [7:0] zext_ln172_9_fu_1061_p1;
wire   [7:0] add_ln213_1_fu_1064_p2;
wire   [6:0] lshr_ln213_1_fu_1070_p4;
wire   [7:0] add_ln214_1_fu_1085_p2;
wire   [6:0] trunc_ln214_1_fu_1091_p4;
wire  signed [7:0] sext_ln214_1_fu_1101_p1;
wire   [7:0] or_ln19_fu_1110_p3;
wire   [7:0] shl_ln209_2_fu_1123_p3;
wire  signed [7:0] sext_ln214_fu_1139_p1;
wire   [9:0] zext_ln207_fu_1136_p1;
wire   [9:0] add_ln216_fu_1147_p2;
wire   [8:0] lshr_ln9_fu_1153_p4;
wire   [9:0] zext_ln172_fu_1168_p1;
wire   [9:0] add_ln216_1_fu_1175_p2;
wire   [8:0] lshr_ln216_1_fu_1181_p4;
wire   [7:0] or_ln211_2_fu_1196_p3;
wire   [7:0] or_ln211_3_fu_1209_p3;
wire   [4:0] or_ln172_2_fu_1222_p3;
wire   [7:0] or_ln213_2_fu_1235_p3;
wire   [7:0] or_ln213_3_fu_1248_p3;
wire   [8:0] add_ln210_2_fu_1275_p2;
wire   [7:0] lshr_ln210_2_fu_1281_p4;
wire   [7:0] or_ln215_2_fu_1296_p3;
wire   [0:0] tmp_28_fu_1309_p3;
wire   [31:0] zext_ln205_fu_1261_p1;
wire   [2:0] or_ln20_fu_1316_p3;
wire   [31:0] offset_6_fu_1324_p5;
wire   [9:0] add_ln210_3_fu_1340_p2;
wire   [8:0] lshr_ln210_3_fu_1346_p4;
wire   [7:0] or_ln215_3_fu_1361_p3;
wire   [7:0] add_ln211_fu_1377_p2;
wire   [6:0] lshr_ln211_2_fu_1383_p4;
wire   [9:0] add_ln211_1_fu_1398_p2;
wire   [8:0] lshr_ln211_3_fu_1403_p4;
wire   [8:0] add_ln212_2_fu_1418_p2;
wire   [7:0] lshr_ln212_2_fu_1423_p4;
wire   [8:0] add_ln215_2_fu_1438_p2;
wire   [9:0] add_ln212_3_fu_1453_p2;
wire   [8:0] lshr_ln212_3_fu_1458_p4;
wire   [7:0] add_ln213_2_fu_1473_p2;
wire   [6:0] lshr_ln213_2_fu_1478_p4;
wire   [7:0] add_ln214_2_fu_1493_p2;
wire   [9:0] add_ln213_3_fu_1508_p2;
wire   [8:0] lshr_ln213_3_fu_1513_p4;
wire  signed [7:0] sext_ln214_2_fu_1528_p1;
wire   [9:0] add_ln214_3_fu_1536_p2;
wire   [8:0] lshr_ln214_3_fu_1541_p4;
wire   [9:0] add_ln215_3_fu_1560_p2;
wire   [8:0] lshr_ln215_3_fu_1565_p4;
wire   [9:0] add_ln216_3_fu_1580_p2;
wire   [9:0] zext_ln172_11_fu_1605_p1;
wire   [9:0] add_ln216_2_fu_1608_p2;
wire   [8:0] lshr_ln216_2_fu_1614_p4;
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
#0 tid_3_fu_134 = 7'd0;
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
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_697 <= DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_697 <= DATA_y_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_705 <= DATA_y_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_705 <= DATA_y_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_711 <= DATA_y_q0;
    end else if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_711 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_3_fu_134 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        tid_3_fu_134 <= add_ln204_fu_1595_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        DATA_y_1_load_11_reg_1925 <= DATA_y_1_q1;
        DATA_y_1_load_15_reg_1930 <= DATA_y_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_1_load_13_reg_1862 <= DATA_y_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_load_10_reg_1904 <= DATA_y_q1;
        DATA_y_load_14_reg_1909 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln172_4_reg_1662 <= {{ap_sig_allocacmp_tid[5:1]}};
        offset_reg_1651 <= offset_fu_741_p1;
        tid_reg_1640 <= ap_sig_allocacmp_tid;
        tmp_reg_1647 <= ap_sig_allocacmp_tid[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln215_1_reg_1787 <= {{add_ln215_1_fu_1002_p2[8:1]}};
        lshr_ln8_reg_1767 <= {{add_ln215_fu_940_p2[8:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln215_2_reg_1935 <= {{add_ln215_2_fu_1438_p2[8:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        lshr_ln216_3_reg_1945 <= {{add_ln216_3_fu_1580_p2[9:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_4_reg_1711[5 : 1] <= offset_4_fu_813_p3[5 : 1];
        zext_ln172_10_reg_1717[5 : 1] <= zext_ln172_10_fu_820_p1[5 : 1];
        zext_ln211_4_reg_1723[7 : 3] <= zext_ln211_4_fu_852_p1[7 : 3];
        zext_ln213_4_reg_1701[7 : 2] <= zext_ln213_4_fu_808_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        offset_5_reg_1867[5 : 2] <= offset_5_fu_1264_p3[5 : 2];
        trunc_ln172_reg_1889 <= trunc_ln172_fu_1336_p1;
        zext_ln172_13_reg_1873[5 : 2] <= zext_ln172_13_fu_1271_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_691 <= DATA_y_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_719 <= DATA_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_s_reg_1733 <= {{tid_reg_1640[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        trunc_ln214_2_reg_1940 <= {{add_ln214_2_fu_1493_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        trunc_ln5_reg_1797 <= {{add_ln214_fu_1041_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        zext_ln172_12_reg_1919[5 : 2] <= zext_ln172_12_fu_1374_p1[5 : 2];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_1_address0_local = zext_ln215_7_fu_1368_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_1_address0_local = zext_ln213_7_fu_1255_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_1_address0_local = zext_ln211_6_fu_1216_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_1_address0_local = zext_ln209_3_fu_1130_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_address0_local = zext_ln215_5_fu_996_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_address0_local = zext_ln211_4_reg_1723;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address0_local = zext_ln213_4_fu_808_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address0_local = zext_ln209_1_fu_777_p1;
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
            DATA_y_1_address1_local = zext_ln215_6_fu_1303_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_1_address1_local = zext_ln213_6_fu_1242_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_1_address1_local = zext_ln211_5_fu_1203_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_1_address1_local = zext_ln209_2_fu_1117_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_address1_local = zext_ln213_5_fu_983_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_address1_local = zext_ln215_4_fu_889_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address1_local = zext_ln211_1_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address1_local = zext_ln209_fu_763_p1;
        end else begin
            DATA_y_1_address1_local = 'bx;
        end
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            DATA_y_address0_local = zext_ln215_7_fu_1368_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_address0_local = zext_ln213_7_fu_1255_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_address0_local = zext_ln211_6_fu_1216_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_address0_local = zext_ln209_3_fu_1130_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_address0_local = zext_ln215_5_fu_996_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_address0_local = zext_ln215_4_fu_889_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address0_local = zext_ln211_4_fu_852_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address0_local = zext_ln209_1_fu_777_p1;
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
            DATA_y_address1_local = zext_ln215_6_fu_1303_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            DATA_y_address1_local = zext_ln213_6_fu_1242_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            DATA_y_address1_local = zext_ln211_5_fu_1203_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            DATA_y_address1_local = zext_ln209_2_fu_1117_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_address1_local = zext_ln213_5_fu_983_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_address1_local = zext_ln213_4_reg_1701;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address1_local = zext_ln211_1_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address1_local = zext_ln209_fu_763_p1;
        end else begin
            DATA_y_address1_local = 'bx;
        end
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_733_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_3_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln216_3_fu_1629_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_1_address0_local = zext_ln214_3_fu_1551_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_address0_local = zext_ln212_3_fu_1468_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln210_3_fu_1356_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln215_1_fu_1171_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln213_1_fu_1080_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln212_1_fu_971_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln210_1_fu_840_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            smem_1_address1_local = zext_ln215_3_fu_1575_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            smem_1_address1_local = zext_ln213_3_fu_1523_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            smem_1_address1_local = zext_ln211_3_fu_1413_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_1_address1_local = zext_ln172_8_fu_1229_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_1_address1_local = zext_ln216_1_fu_1191_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_1_address1_local = zext_ln214_1_fu_1105_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_1_address1_local = zext_ln211_fu_876_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address1_local = zext_ln172_7_fu_783_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_1_load_15_reg_1930;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_1_d0_local = DATA_y_1_load_13_reg_1862;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        smem_1_d0_local = reg_697;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = reg_711;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d0_local = DATA_y_q1;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_d0_local = DATA_y_1_q0;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_1_d1_local = DATA_y_load_14_reg_1909;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_1_d1_local = reg_719;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d1_local = reg_697;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d1_local = DATA_y_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_d1_local = DATA_y_q0;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 ==ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln216_2_fu_1624_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_address0_local = zext_ln214_2_fu_1531_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        smem_address0_local = zext_ln212_2_fu_1433_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln214_fu_1142_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln213_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln212_fu_935_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln211_fu_876_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_7_fu_783_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            smem_address1_local = zext_ln215_2_fu_1556_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            smem_address1_local = zext_ln213_2_fu_1488_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            smem_address1_local = zext_ln211_2_fu_1393_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            smem_address1_local = zext_ln210_2_fu_1291_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            smem_address1_local = zext_ln172_8_fu_1229_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_address1_local = zext_ln216_fu_1163_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            smem_address1_local = zext_ln215_fu_1057_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address1_local = zext_ln210_fu_914_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_1_load_11_reg_1925;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        smem_d0_local = reg_691;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        smem_d0_local = reg_705;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d0_local = reg_711;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = reg_697;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_d0_local = DATA_y_q1;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        smem_d1_local = DATA_y_load_10_reg_1904;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        smem_d1_local = reg_711;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d1_local = reg_719;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_d1_local = reg_691;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 ==ap_CS_fsm_pp0_stage1)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_1647== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
assign add_ln204_fu_1595_p2 = (tid_reg_1640 + 7'd4);
assign add_ln210_1_fu_824_p2 = ($signed(zext_ln172_10_fu_820_p1) + $signed(9'd264));
assign add_ln210_2_fu_1275_p2 = ($signed(zext_ln172_13_fu_1271_p1) + $signed(9'd264));
assign add_ln210_3_fu_1340_p2 = (trunc_ln172_fu_1336_p1 + 10'd264);
assign add_ln210_fu_898_p2 = ($signed(zext_ln207_2_fu_895_p1) + $signed(9'd264));
assign add_ln211_1_fu_1398_p2 = (trunc_ln172_reg_1889 + 10'd66);
assign add_ln211_fu_1377_p2 = (zext_ln172_12_fu_1374_p1 + 8'd66);
assign add_ln212_1_fu_956_p2 = ($signed(zext_ln172_10_reg_1717) + $signed(9'd330));
assign add_ln212_2_fu_1418_p2 = ($signed(zext_ln172_13_reg_1873) + $signed(9'd330));
assign add_ln212_3_fu_1453_p2 = (trunc_ln172_reg_1889 + 10'd330);
assign add_ln212_fu_919_p2 = ($signed(zext_ln207_2_fu_895_p1) + $signed(9'd330));
assign add_ln213_1_fu_1064_p2 = ($signed(zext_ln172_9_fu_1061_p1) + $signed(8'd132));
assign add_ln213_2_fu_1473_p2 = ($signed(zext_ln172_12_reg_1919) + $signed(8'd132));
assign add_ln213_3_fu_1508_p2 = (trunc_ln172_reg_1889 + 10'd132);
assign add_ln213_fu_1020_p2 = ($signed(zext_ln207_1_fu_1017_p1) + $signed(8'd132));
assign add_ln214_1_fu_1085_p2 = ($signed(zext_ln172_9_fu_1061_p1) + $signed(8'd140));
assign add_ln214_2_fu_1493_p2 = ($signed(zext_ln172_12_reg_1919) + $signed(8'd140));
assign add_ln214_3_fu_1536_p2 = (trunc_ln172_reg_1889 + 10'd396);
assign add_ln214_fu_1041_p2 = ($signed(zext_ln207_1_fu_1017_p1) + $signed(8'd140));
assign add_ln215_1_fu_1002_p2 = (zext_ln172_10_reg_1717 + 9'd198);
assign add_ln215_2_fu_1438_p2 = (zext_ln172_13_reg_1873 + 9'd198);
assign add_ln215_3_fu_1560_p2 = (trunc_ln172_reg_1889 + 10'd198);
assign add_ln215_fu_940_p2 = (zext_ln207_2_fu_895_p1 + 9'd198);
assign add_ln216_1_fu_1175_p2 = (zext_ln172_fu_1168_p1 + 10'd462);
assign add_ln216_2_fu_1608_p2 = (zext_ln172_11_fu_1605_p1 + 10'd462);
assign add_ln216_3_fu_1580_p2 = (trunc_ln172_reg_1889 + 10'd462);
assign add_ln216_fu_1147_p2 = (zext_ln207_fu_1136_p1 + 10'd462);
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
assign lshr_ln172_4_fu_745_p4 = {{ap_sig_allocacmp_tid[5:1]}};
assign lshr_ln210_1_fu_830_p4 = {{add_ln210_1_fu_824_p2[8:1]}};
assign lshr_ln210_2_fu_1281_p4 = {{add_ln210_2_fu_1275_p2[8:1]}};
assign lshr_ln210_3_fu_1346_p4 = {{add_ln210_3_fu_1340_p2[9:1]}};
assign lshr_ln211_2_fu_1383_p4 = {{add_ln211_fu_1377_p2[7:1]}};
assign lshr_ln211_3_fu_1403_p4 = {{add_ln211_1_fu_1398_p2[9:1]}};
assign lshr_ln212_1_fu_961_p4 = {{add_ln212_1_fu_956_p2[8:1]}};
assign lshr_ln212_2_fu_1423_p4 = {{add_ln212_2_fu_1418_p2[8:1]}};
assign lshr_ln212_3_fu_1458_p4 = {{add_ln212_3_fu_1453_p2[9:1]}};
assign lshr_ln213_1_fu_1070_p4 = {{add_ln213_1_fu_1064_p2[7:1]}};
assign lshr_ln213_2_fu_1478_p4 = {{add_ln213_2_fu_1473_p2[7:1]}};
assign lshr_ln213_3_fu_1513_p4 = {{add_ln213_3_fu_1508_p2[9:1]}};
assign lshr_ln214_3_fu_1541_p4 = {{add_ln214_3_fu_1536_p2[9:1]}};
assign lshr_ln215_3_fu_1565_p4 = {{add_ln215_3_fu_1560_p2[9:1]}};
assign lshr_ln216_1_fu_1181_p4 = {{add_ln216_1_fu_1175_p2[9:1]}};
assign lshr_ln216_2_fu_1614_p4 = {{add_ln216_2_fu_1608_p2[9:1]}};
assign lshr_ln6_fu_925_p4 = {{add_ln212_fu_919_p2[8:1]}};
assign lshr_ln7_fu_1026_p4 = {{add_ln213_fu_1020_p2[7:1]}};
assign lshr_ln9_fu_1153_p4 = {{add_ln216_fu_1147_p2[9:1]}};
assign lshr_ln_fu_904_p4 = {{add_ln210_fu_898_p2[8:1]}};
assign offset_4_fu_813_p3 = {{lshr_ln172_4_reg_1662}, {1'd1}};
assign offset_5_fu_1264_p3 = {{tmp_s_reg_1733}, {2'd2}};
assign offset_6_fu_1324_p5 = {{zext_ln205_fu_1261_p1[31:3]}, {or_ln20_fu_1316_p3}};
assign offset_fu_741_p1 = ap_sig_allocacmp_tid[5:0];
assign or_ln172_2_fu_1222_p3 = {{tmp_s_reg_1733}, {1'd1}};
assign or_ln17_fu_801_p3 = {{offset_reg_1651}, {2'd1}};
assign or_ln18_fu_882_p3 = {{offset_reg_1651}, {2'd3}};
assign or_ln19_fu_1110_p3 = {{tmp_s_reg_1733}, {4'd8}};
assign or_ln20_fu_1316_p3 = {{tmp_28_fu_1309_p3}, {2'd3}};
assign or_ln211_1_fu_845_p3 = {{lshr_ln172_4_reg_1662}, {3'd6}};
assign or_ln211_2_fu_1196_p3 = {{tmp_s_reg_1733}, {4'd10}};
assign or_ln211_3_fu_1209_p3 = {{tmp_s_reg_1733}, {4'd14}};
assign or_ln213_1_fu_976_p3 = {{lshr_ln172_4_reg_1662}, {3'd5}};
assign or_ln213_2_fu_1235_p3 = {{tmp_s_reg_1733}, {4'd9}};
assign or_ln213_3_fu_1248_p3 = {{tmp_s_reg_1733}, {4'd13}};
assign or_ln215_1_fu_989_p3 = {{lshr_ln172_4_reg_1662}, {3'd7}};
assign or_ln215_2_fu_1296_p3 = {{tmp_s_reg_1733}, {4'd11}};
assign or_ln215_3_fu_1361_p3 = {{tmp_s_reg_1733}, {4'd15}};
assign or_ln_fu_788_p3 = {{offset_reg_1651}, {2'd2}};
assign sext_ln214_1_fu_1101_p1 = $signed(trunc_ln214_1_fu_1091_p4);
assign sext_ln214_2_fu_1528_p1 = $signed(trunc_ln214_2_reg_1940);
assign sext_ln214_fu_1139_p1 = $signed(trunc_ln5_reg_1797);
assign shl_ln209_1_fu_769_p3 = {{lshr_ln172_4_fu_745_p4}, {3'd4}};
assign shl_ln209_2_fu_1123_p3 = {{tmp_s_reg_1733}, {4'd12}};
assign shl_ln3_fu_755_p3 = {{offset_fu_741_p1}, {2'd0}};
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
assign tmp_28_fu_1309_p3 = tid_reg_1640[32'd2];
assign tmp_fu_733_p3 = ap_sig_allocacmp_tid[32'd6];
assign tmp_s_fu_857_p4 = {{tid_reg_1640[5:2]}};
assign trunc_ln172_fu_1336_p1 = offset_6_fu_1324_p5[9:0];
assign trunc_ln214_1_fu_1091_p4 = {{add_ln214_1_fu_1085_p2[7:1]}};
assign zext_ln172_10_fu_820_p1 = offset_4_fu_813_p3;
assign zext_ln172_11_fu_1605_p1 = offset_5_reg_1867;
assign zext_ln172_12_fu_1374_p1 = offset_5_reg_1867;
assign zext_ln172_13_fu_1271_p1 = offset_5_fu_1264_p3;
assign zext_ln172_7_fu_783_p1 = lshr_ln172_4_reg_1662;
assign zext_ln172_8_fu_1229_p1 = or_ln172_2_fu_1222_p3;
assign zext_ln172_9_fu_1061_p1 = offset_4_reg_1711;
assign zext_ln172_fu_1168_p1 = offset_4_reg_1711;
assign zext_ln205_fu_1261_p1 = offset_reg_1651;
assign zext_ln207_1_fu_1017_p1 = offset_reg_1651;
assign zext_ln207_2_fu_895_p1 = offset_reg_1651;
assign zext_ln207_fu_1136_p1 = offset_reg_1651;
assign zext_ln209_1_fu_777_p1 = shl_ln209_1_fu_769_p3;
assign zext_ln209_2_fu_1117_p1 = or_ln19_fu_1110_p3;
assign zext_ln209_3_fu_1130_p1 = shl_ln209_2_fu_1123_p3;
assign zext_ln209_fu_763_p1 = shl_ln3_fu_755_p3;
assign zext_ln210_1_fu_840_p1 = lshr_ln210_1_fu_830_p4;
assign zext_ln210_2_fu_1291_p1 = lshr_ln210_2_fu_1281_p4;
assign zext_ln210_3_fu_1356_p1 = lshr_ln210_3_fu_1346_p4;
assign zext_ln210_fu_914_p1 = lshr_ln_fu_904_p4;
assign zext_ln211_1_fu_795_p1 = or_ln_fu_788_p3;
assign zext_ln211_2_fu_1393_p1 = lshr_ln211_2_fu_1383_p4;
assign zext_ln211_3_fu_1413_p1 = lshr_ln211_3_fu_1403_p4;
assign zext_ln211_4_fu_852_p1 = or_ln211_1_fu_845_p3;
assign zext_ln211_5_fu_1203_p1 = or_ln211_2_fu_1196_p3;
assign zext_ln211_6_fu_1216_p1 = or_ln211_3_fu_1209_p3;
assign zext_ln211_fu_876_p1 = zext_ln_fu_866_p4;
assign zext_ln212_1_fu_971_p1 = lshr_ln212_1_fu_961_p4;
assign zext_ln212_2_fu_1433_p1 = lshr_ln212_2_fu_1423_p4;
assign zext_ln212_3_fu_1468_p1 = lshr_ln212_3_fu_1458_p4;
assign zext_ln212_fu_935_p1 = lshr_ln6_fu_925_p4;
assign zext_ln213_1_fu_1080_p1 = lshr_ln213_1_fu_1070_p4;
assign zext_ln213_2_fu_1488_p1 = lshr_ln213_2_fu_1478_p4;
assign zext_ln213_3_fu_1523_p1 = lshr_ln213_3_fu_1513_p4;
assign zext_ln213_4_fu_808_p1 = or_ln17_fu_801_p3;
assign zext_ln213_5_fu_983_p1 = or_ln213_1_fu_976_p3;
assign zext_ln213_6_fu_1242_p1 = or_ln213_2_fu_1235_p3;
assign zext_ln213_7_fu_1255_p1 = or_ln213_3_fu_1248_p3;
assign zext_ln213_fu_1036_p1 = lshr_ln7_fu_1026_p4;
assign zext_ln214_1_fu_1105_p1 = $unsigned(sext_ln214_1_fu_1101_p1);
assign zext_ln214_2_fu_1531_p1 = $unsigned(sext_ln214_2_fu_1528_p1);
assign zext_ln214_3_fu_1551_p1 = lshr_ln214_3_fu_1541_p4;
assign zext_ln214_fu_1142_p1 = $unsigned(sext_ln214_fu_1139_p1);
assign zext_ln215_1_fu_1171_p1 = lshr_ln215_1_reg_1787;
assign zext_ln215_2_fu_1556_p1 = lshr_ln215_2_reg_1935;
assign zext_ln215_3_fu_1575_p1 = lshr_ln215_3_fu_1565_p4;
assign zext_ln215_4_fu_889_p1 = or_ln18_fu_882_p3;
assign zext_ln215_5_fu_996_p1 = or_ln215_1_fu_989_p3;
assign zext_ln215_6_fu_1303_p1 = or_ln215_2_fu_1296_p3;
assign zext_ln215_7_fu_1368_p1 = or_ln215_3_fu_1361_p3;
assign zext_ln215_fu_1057_p1 = lshr_ln8_reg_1767;
assign zext_ln216_1_fu_1191_p1 = lshr_ln216_1_fu_1181_p4;
assign zext_ln216_2_fu_1624_p1 = lshr_ln216_2_fu_1614_p4;
assign zext_ln216_3_fu_1629_p1 = lshr_ln216_3_reg_1945;
assign zext_ln216_fu_1163_p1 = lshr_ln9_fu_1153_p4;
assign zext_ln_fu_866_p4 = {{{{1'd1}, {tmp_s_fu_857_p4}}}, {1'd1}};
always @ (posedge ap_clk) begin
    zext_ln213_4_reg_1701[1:0] <= 2'b01;
    zext_ln213_4_reg_1701[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    offset_4_reg_1711[0] <= 1'b1;
    zext_ln172_10_reg_1717[0] <= 1'b1;
    zext_ln172_10_reg_1717[8:6] <= 3'b000;
    zext_ln211_4_reg_1723[2:0] <= 3'b110;
    zext_ln211_4_reg_1723[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    offset_5_reg_1867[1:0] <= 2'b10;
    zext_ln172_13_reg_1873[1:0] <= 2'b10;
    zext_ln172_13_reg_1873[8:6] <= 3'b000;
    zext_ln172_12_reg_1919[1:0] <= 2'b10;
    zext_ln172_12_reg_1919[7:6] <= 2'b00;
end
endmodule 