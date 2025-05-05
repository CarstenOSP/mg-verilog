module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1); 
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
output  [7:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [7:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [7:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [7:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [7:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [7:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_1198;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] grp_fu_542_p3;
reg   [63:0] reg_570;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_549_p3;
reg   [63:0] reg_576;
reg   [6:0] tid_2_reg_1189;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] zext_ln172_fu_620_p1;
reg   [9:0] zext_ln172_reg_1202;
wire   [9:0] zext_ln172_2_fu_692_p1;
reg   [9:0] zext_ln172_2_reg_1232;
wire   [0:0] icmp_ln314_fu_721_p2;
reg   [0:0] icmp_ln314_reg_1262;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] select_ln314_fu_727_p3;
reg   [63:0] select_ln314_reg_1270;
wire   [63:0] select_ln315_fu_735_p3;
reg   [63:0] select_ln315_reg_1275;
wire   [0:0] icmp_ln314_1_fu_800_p2;
reg   [0:0] icmp_ln314_1_reg_1300;
wire   [63:0] select_ln314_1_fu_806_p3;
reg   [63:0] select_ln314_1_reg_1308;
wire   [63:0] select_ln315_1_fu_814_p3;
reg   [63:0] select_ln315_1_reg_1313;
wire   [5:0] trunc_ln314_fu_864_p1;
reg   [5:0] trunc_ln314_reg_1338;
wire   [63:0] zext_ln314_fu_875_p1;
reg   [63:0] zext_ln314_reg_1344;
wire   [63:0] zext_ln315_2_fu_888_p1;
reg   [63:0] zext_ln315_2_reg_1349;
wire   [63:0] grp_fu_556_p3;
reg   [63:0] select_ln316_1_reg_1374;
wire   [63:0] grp_fu_563_p3;
reg   [63:0] select_ln317_1_reg_1379;
wire   [4:0] tmp_s_fu_1019_p4;
reg   [4:0] tmp_s_reg_1424;
wire   [63:0] zext_ln314_1_fu_1036_p1;
reg   [63:0] zext_ln314_1_reg_1430;
wire   [63:0] zext_ln315_3_fu_1049_p1;
reg   [63:0] zext_ln315_3_reg_1435;
reg   [63:0] select_ln318_1_reg_1440;
reg   [63:0] select_ln319_1_reg_1445;
wire   [63:0] zext_ln318_2_fu_1113_p1;
reg   [63:0] zext_ln318_2_reg_1470;
wire   [63:0] zext_ln319_2_fu_1125_p1;
reg   [63:0] zext_ln319_2_reg_1475;
wire   [63:0] select_ln320_fu_1130_p3;
reg   [63:0] select_ln320_reg_1480;
wire   [63:0] select_ln321_fu_1137_p3;
reg   [63:0] select_ln321_reg_1485;
wire   [63:0] select_ln320_1_fu_1144_p3;
reg   [63:0] select_ln320_1_reg_1490;
wire   [63:0] select_ln321_1_fu_1151_p3;
reg   [63:0] select_ln321_1_reg_1495;
wire   [63:0] zext_ln318_3_fu_1165_p1;
reg   [63:0] zext_ln318_3_reg_1500;
wire   [63:0] zext_ln319_3_fu_1177_p1;
reg   [63:0] zext_ln319_3_reg_1505;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln172_1_fu_642_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_fu_666_p1;
wire   [63:0] zext_ln315_1_fu_712_p1;
wire   [63:0] zext_ln316_fu_758_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln317_fu_779_p1;
wire   [63:0] zext_ln316_1_fu_837_p1;
wire   [63:0] zext_ln317_1_fu_858_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln318_fu_908_p1;
wire   [63:0] zext_ln319_fu_929_p1;
wire   [63:0] zext_ln318_1_fu_950_p1;
wire   [63:0] zext_ln319_1_fu_971_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln320_fu_992_p1;
wire   [63:0] zext_ln321_fu_1013_p1;
wire   [63:0] zext_ln320_1_fu_1069_p1;
wire   [63:0] zext_ln321_1_fu_1090_p1;
reg   [6:0] tid_fu_100;
wire   [6:0] add_ln309_fu_1096_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce1_local;
reg   [7:0] smem_address1_local;
reg    smem_ce0_local;
reg   [7:0] smem_address0_local;
reg    smem_2_ce1_local;
reg   [7:0] smem_2_address1_local;
reg    smem_2_ce0_local;
reg   [7:0] smem_2_address0_local;
reg    smem_1_ce1_local;
reg   [7:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [7:0] smem_1_address0_local;
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
wire   [2:0] tmp_23_fu_598_p4;
wire   [5:0] trunc_ln312_fu_608_p1;
wire   [8:0] offset_fu_612_p3;
wire   [3:0] tmp_24_fu_624_p4;
wire   [6:0] lshr_ln172_5_fu_634_p3;
wire   [9:0] add_ln315_fu_650_p2;
wire   [7:0] lshr_ln_fu_656_p4;
wire   [4:0] tmp_26_fu_672_p4;
wire   [8:0] offset_1_fu_682_p4;
wire   [9:0] add_ln315_1_fu_696_p2;
wire   [7:0] lshr_ln315_1_fu_702_p4;
wire   [1:0] trunc_ln310_fu_718_p1;
wire   [9:0] add_ln316_fu_743_p2;
wire   [7:0] lshr_ln1_fu_748_p4;
wire   [9:0] add_ln317_fu_764_p2;
wire   [7:0] lshr_ln2_fu_769_p4;
wire   [0:0] tmp_25_fu_785_p3;
wire   [1:0] or_ln6_fu_792_p3;
wire   [9:0] add_ln316_1_fu_822_p2;
wire   [7:0] lshr_ln316_1_fu_827_p4;
wire   [9:0] add_ln317_1_fu_843_p2;
wire   [7:0] lshr_ln317_1_fu_848_p4;
wire   [7:0] shl_ln7_fu_867_p3;
wire   [7:0] or_ln_fu_880_p3;
wire   [9:0] add_ln318_fu_893_p2;
wire   [7:0] lshr_ln3_fu_898_p4;
wire   [9:0] add_ln319_fu_914_p2;
wire   [7:0] lshr_ln4_fu_919_p4;
wire   [9:0] add_ln318_1_fu_935_p2;
wire   [7:0] lshr_ln318_1_fu_940_p4;
wire   [9:0] add_ln319_1_fu_956_p2;
wire   [7:0] lshr_ln319_1_fu_961_p4;
wire   [9:0] add_ln320_fu_977_p2;
wire   [7:0] lshr_ln5_fu_982_p4;
wire   [9:0] add_ln321_fu_998_p2;
wire   [7:0] lshr_ln6_fu_1003_p4;
wire   [7:0] shl_ln314_1_fu_1028_p3;
wire   [7:0] or_ln315_1_fu_1041_p3;
wire   [9:0] add_ln320_1_fu_1054_p2;
wire   [7:0] lshr_ln320_1_fu_1059_p4;
wire   [9:0] add_ln321_1_fu_1075_p2;
wire   [7:0] lshr_ln321_1_fu_1080_p4;
wire   [7:0] or_ln4_fu_1106_p3;
wire   [7:0] or_ln5_fu_1118_p3;
wire   [7:0] or_ln318_1_fu_1158_p3;
wire   [7:0] or_ln319_1_fu_1170_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_100 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_100 <= 7'd0;
    end else if (((tmp_reg_1198 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_100 <= add_ln309_fu_1096_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln314_1_reg_1300 <= icmp_ln314_1_fu_800_p2;
        icmp_ln314_reg_1262 <= icmp_ln314_fu_721_p2;
        select_ln314_1_reg_1308 <= select_ln314_1_fu_806_p3;
        select_ln314_reg_1270 <= select_ln314_fu_727_p3;
        select_ln315_1_reg_1313 <= select_ln315_1_fu_814_p3;
        select_ln315_reg_1275 <= select_ln315_fu_735_p3;
        zext_ln318_3_reg_1500[7 : 3] <= zext_ln318_3_fu_1165_p1[7 : 3];
        zext_ln319_3_reg_1505[7 : 3] <= zext_ln319_3_fu_1177_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_570 <= grp_fu_542_p3;
        reg_576 <= grp_fu_549_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln316_1_reg_1374 <= grp_fu_556_p3;
        select_ln317_1_reg_1379 <= grp_fu_563_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln318_1_reg_1440 <= grp_fu_556_p3;
        select_ln319_1_reg_1445 <= grp_fu_563_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln320_1_reg_1490 <= select_ln320_1_fu_1144_p3;
        select_ln320_reg_1480 <= select_ln320_fu_1130_p3;
        select_ln321_1_reg_1495 <= select_ln321_1_fu_1151_p3;
        select_ln321_reg_1485 <= select_ln321_fu_1137_p3;
        tid_2_reg_1189 <= ap_sig_allocacmp_tid_2;
        tmp_reg_1198 <= ap_sig_allocacmp_tid_2[32'd6];
        zext_ln172_2_reg_1232[8 : 1] <= zext_ln172_2_fu_692_p1[8 : 1];
        zext_ln172_reg_1202[8 : 0] <= zext_ln172_fu_620_p1[8 : 0];
        zext_ln318_2_reg_1470[7 : 2] <= zext_ln318_2_fu_1113_p1[7 : 2];
        zext_ln319_2_reg_1475[7 : 2] <= zext_ln319_2_fu_1125_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_s_reg_1424 <= {{tid_2_reg_1189[5:1]}};
        zext_ln314_1_reg_1430[7 : 3] <= zext_ln314_1_fu_1036_p1[7 : 3];
        zext_ln315_3_reg_1435[7 : 3] <= zext_ln315_3_fu_1049_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln314_reg_1338 <= trunc_ln314_fu_864_p1;
        zext_ln314_reg_1344[7 : 2] <= zext_ln314_fu_875_p1[7 : 2];
        zext_ln315_2_reg_1349[7 : 2] <= zext_ln315_2_fu_888_p1[7 : 2];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln319_3_reg_1505;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln319_2_reg_1475;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln315_3_reg_1435;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln315_2_reg_1349;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln318_3_reg_1500;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln318_2_reg_1470;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln314_1_reg_1430;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln314_reg_1344;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d0_local = select_ln321_1_reg_1495;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = select_ln321_reg_1485;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = select_ln317_1_reg_1379;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = reg_576;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d1_local = select_ln320_1_reg_1490;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = select_ln320_reg_1480;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = select_ln316_1_reg_1374;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d1_local = reg_570;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1198 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1198 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln319_3_fu_1177_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln319_2_fu_1125_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln315_3_fu_1049_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln315_2_fu_888_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln318_3_fu_1165_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln318_2_fu_1113_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln314_1_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln314_fu_875_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = select_ln319_1_reg_1445;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = reg_576;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = select_ln315_1_reg_1313;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d0_local = select_ln315_reg_1275;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = select_ln318_1_reg_1440;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = reg_570;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d1_local = select_ln314_1_reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = select_ln314_reg_1270;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1198 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1198 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1198 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_1198 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1198 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_100;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_address0_local = zext_ln321_1_fu_1090_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_1_address0_local = zext_ln319_1_fu_971_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address0_local = zext_ln317_1_fu_858_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_1_address0_local = zext_ln315_1_fu_712_p1;
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
            smem_1_address1_local = zext_ln320_1_fu_1069_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_1_address1_local = zext_ln318_1_fu_950_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_1_address1_local = zext_ln316_1_fu_837_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_1_address1_local = zext_ln172_1_fu_642_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_2_address0_local = zext_ln321_fu_1013_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_2_address0_local = zext_ln319_fu_929_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_2_address0_local = zext_ln317_fu_779_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_2_address0_local = zext_ln315_fu_666_p1;
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
            smem_2_address1_local = zext_ln320_fu_992_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_2_address1_local = zext_ln318_fu_908_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_2_address1_local = zext_ln316_fu_758_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_2_address1_local = zext_ln172_1_fu_642_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_3_address0_local = zext_ln321_1_fu_1090_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_3_address0_local = zext_ln319_1_fu_971_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_3_address0_local = zext_ln317_1_fu_858_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_3_address0_local = zext_ln315_1_fu_712_p1;
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
            smem_3_address1_local = zext_ln320_1_fu_1069_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_3_address1_local = zext_ln318_1_fu_950_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_3_address1_local = zext_ln316_1_fu_837_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_3_address1_local = zext_ln172_1_fu_642_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address0_local = zext_ln321_fu_1013_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address0_local = zext_ln319_fu_929_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address0_local = zext_ln317_fu_779_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_address0_local = zext_ln315_fu_666_p1;
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
            smem_address1_local = zext_ln320_fu_992_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            smem_address1_local = zext_ln318_fu_908_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address1_local = zext_ln316_fu_758_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            smem_address1_local = zext_ln172_1_fu_642_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign add_ln309_fu_1096_p2 = (tid_2_reg_1189 + 7'd2);
assign add_ln315_1_fu_696_p2 = (zext_ln172_2_fu_692_p1 + 10'd32);
assign add_ln315_fu_650_p2 = (zext_ln172_fu_620_p1 + 10'd32);
assign add_ln316_1_fu_822_p2 = (zext_ln172_2_reg_1232 + 10'd8);
assign add_ln316_fu_743_p2 = (zext_ln172_reg_1202 + 10'd8);
assign add_ln317_1_fu_843_p2 = (zext_ln172_2_reg_1232 + 10'd40);
assign add_ln317_fu_764_p2 = (zext_ln172_reg_1202 + 10'd40);
assign add_ln318_1_fu_935_p2 = (zext_ln172_2_reg_1232 + 10'd16);
assign add_ln318_fu_893_p2 = (zext_ln172_reg_1202 + 10'd16);
assign add_ln319_1_fu_956_p2 = (zext_ln172_2_reg_1232 + 10'd48);
assign add_ln319_fu_914_p2 = (zext_ln172_reg_1202 + 10'd48);
assign add_ln320_1_fu_1054_p2 = (zext_ln172_2_reg_1232 + 10'd24);
assign add_ln320_fu_977_p2 = (zext_ln172_reg_1202 + 10'd24);
assign add_ln321_1_fu_1075_p2 = (zext_ln172_2_reg_1232 + 10'd56);
assign add_ln321_fu_998_p2 = (zext_ln172_reg_1202 + 10'd56);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign grp_fu_542_p3 = ((icmp_ln314_reg_1262[0:0] == 1'b1) ? smem_2_q1 : smem_q1);
assign grp_fu_549_p3 = ((icmp_ln314_reg_1262[0:0] == 1'b1) ? smem_2_q0 : smem_q0);
assign grp_fu_556_p3 = ((icmp_ln314_1_reg_1300[0:0] == 1'b1) ? smem_3_q1 : smem_1_q1);
assign grp_fu_563_p3 = ((icmp_ln314_1_reg_1300[0:0] == 1'b1) ? smem_3_q0 : smem_1_q0);
assign icmp_ln314_1_fu_800_p2 = ((or_ln6_fu_792_p3 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln314_fu_721_p2 = ((trunc_ln310_fu_718_p1 != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln172_5_fu_634_p3 = {{tmp_23_fu_598_p4}, {tmp_24_fu_624_p4}};
assign lshr_ln1_fu_748_p4 = {{add_ln316_fu_743_p2[9:2]}};
assign lshr_ln2_fu_769_p4 = {{add_ln317_fu_764_p2[9:2]}};
assign lshr_ln315_1_fu_702_p4 = {{add_ln315_1_fu_696_p2[9:2]}};
assign lshr_ln316_1_fu_827_p4 = {{add_ln316_1_fu_822_p2[9:2]}};
assign lshr_ln317_1_fu_848_p4 = {{add_ln317_1_fu_843_p2[9:2]}};
assign lshr_ln318_1_fu_940_p4 = {{add_ln318_1_fu_935_p2[9:2]}};
assign lshr_ln319_1_fu_961_p4 = {{add_ln319_1_fu_956_p2[9:2]}};
assign lshr_ln320_1_fu_1059_p4 = {{add_ln320_1_fu_1054_p2[9:2]}};
assign lshr_ln321_1_fu_1080_p4 = {{add_ln321_1_fu_1075_p2[9:2]}};
assign lshr_ln3_fu_898_p4 = {{add_ln318_fu_893_p2[9:2]}};
assign lshr_ln4_fu_919_p4 = {{add_ln319_fu_914_p2[9:2]}};
assign lshr_ln5_fu_982_p4 = {{add_ln320_fu_977_p2[9:2]}};
assign lshr_ln6_fu_1003_p4 = {{add_ln321_fu_998_p2[9:2]}};
assign lshr_ln_fu_656_p4 = {{add_ln315_fu_650_p2[9:2]}};
assign offset_1_fu_682_p4 = {{{tmp_23_fu_598_p4}, {tmp_26_fu_672_p4}}, {1'd1}};
assign offset_fu_612_p3 = {{tmp_23_fu_598_p4}, {trunc_ln312_fu_608_p1}};
assign or_ln315_1_fu_1041_p3 = {{tmp_s_fu_1019_p4}, {3'd6}};
assign or_ln318_1_fu_1158_p3 = {{tmp_s_reg_1424}, {3'd5}};
assign or_ln319_1_fu_1170_p3 = {{tmp_s_reg_1424}, {3'd7}};
assign or_ln4_fu_1106_p3 = {{trunc_ln314_reg_1338}, {2'd1}};
assign or_ln5_fu_1118_p3 = {{trunc_ln314_reg_1338}, {2'd3}};
assign or_ln6_fu_792_p3 = {{tmp_25_fu_785_p3}, {1'd1}};
assign or_ln_fu_880_p3 = {{trunc_ln314_fu_864_p1}, {2'd2}};
assign select_ln314_1_fu_806_p3 = ((icmp_ln314_1_fu_800_p2[0:0] == 1'b1) ? smem_3_q1 : smem_1_q1);
assign select_ln314_fu_727_p3 = ((icmp_ln314_fu_721_p2[0:0] == 1'b1) ? smem_2_q1 : smem_q1);
assign select_ln315_1_fu_814_p3 = ((icmp_ln314_1_fu_800_p2[0:0] == 1'b1) ? smem_3_q0 : smem_1_q0);
assign select_ln315_fu_735_p3 = ((icmp_ln314_fu_721_p2[0:0] == 1'b1) ? smem_2_q0 : smem_q0);
assign select_ln320_1_fu_1144_p3 = ((icmp_ln314_1_reg_1300[0:0] == 1'b1) ? smem_3_q1 : smem_1_q1);
assign select_ln320_fu_1130_p3 = ((icmp_ln314_reg_1262[0:0] == 1'b1) ? smem_2_q1 : smem_q1);
assign select_ln321_1_fu_1151_p3 = ((icmp_ln314_1_reg_1300[0:0] == 1'b1) ? smem_3_q0 : smem_1_q0);
assign select_ln321_fu_1137_p3 = ((icmp_ln314_reg_1262[0:0] == 1'b1) ? smem_2_q0 : smem_q0);
assign shl_ln314_1_fu_1028_p3 = {{tmp_s_fu_1019_p4}, {3'd4}};
assign shl_ln7_fu_867_p3 = {{trunc_ln314_fu_864_p1}, {2'd0}};
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
assign tmp_23_fu_598_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_24_fu_624_p4 = {{ap_sig_allocacmp_tid_2[5:2]}};
assign tmp_25_fu_785_p3 = tid_2_reg_1189[32'd1];
assign tmp_26_fu_672_p4 = {{ap_sig_allocacmp_tid_2[5:1]}};
assign tmp_s_fu_1019_p4 = {{tid_2_reg_1189[5:1]}};
assign trunc_ln310_fu_718_p1 = tid_2_reg_1189[1:0];
assign trunc_ln312_fu_608_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_864_p1 = tid_2_reg_1189[5:0];
assign zext_ln172_1_fu_642_p1 = lshr_ln172_5_fu_634_p3;
assign zext_ln172_2_fu_692_p1 = offset_1_fu_682_p4;
assign zext_ln172_fu_620_p1 = offset_fu_612_p3;
assign zext_ln314_1_fu_1036_p1 = shl_ln314_1_fu_1028_p3;
assign zext_ln314_fu_875_p1 = shl_ln7_fu_867_p3;
assign zext_ln315_1_fu_712_p1 = lshr_ln315_1_fu_702_p4;
assign zext_ln315_2_fu_888_p1 = or_ln_fu_880_p3;
assign zext_ln315_3_fu_1049_p1 = or_ln315_1_fu_1041_p3;
assign zext_ln315_fu_666_p1 = lshr_ln_fu_656_p4;
assign zext_ln316_1_fu_837_p1 = lshr_ln316_1_fu_827_p4;
assign zext_ln316_fu_758_p1 = lshr_ln1_fu_748_p4;
assign zext_ln317_1_fu_858_p1 = lshr_ln317_1_fu_848_p4;
assign zext_ln317_fu_779_p1 = lshr_ln2_fu_769_p4;
assign zext_ln318_1_fu_950_p1 = lshr_ln318_1_fu_940_p4;
assign zext_ln318_2_fu_1113_p1 = or_ln4_fu_1106_p3;
assign zext_ln318_3_fu_1165_p1 = or_ln318_1_fu_1158_p3;
assign zext_ln318_fu_908_p1 = lshr_ln3_fu_898_p4;
assign zext_ln319_1_fu_971_p1 = lshr_ln319_1_fu_961_p4;
assign zext_ln319_2_fu_1125_p1 = or_ln5_fu_1118_p3;
assign zext_ln319_3_fu_1177_p1 = or_ln319_1_fu_1170_p3;
assign zext_ln319_fu_929_p1 = lshr_ln4_fu_919_p4;
assign zext_ln320_1_fu_1069_p1 = lshr_ln320_1_fu_1059_p4;
assign zext_ln320_fu_992_p1 = lshr_ln5_fu_982_p4;
assign zext_ln321_1_fu_1090_p1 = lshr_ln321_1_fu_1080_p4;
assign zext_ln321_fu_1013_p1 = lshr_ln6_fu_1003_p4;
always @ (posedge ap_clk) begin
    zext_ln172_reg_1202[9] <= 1'b0;
    zext_ln172_2_reg_1232[0] <= 1'b1;
    zext_ln172_2_reg_1232[9] <= 1'b0;
    zext_ln314_reg_1344[1:0] <= 2'b00;
    zext_ln314_reg_1344[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln315_2_reg_1349[1:0] <= 2'b10;
    zext_ln315_2_reg_1349[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln314_1_reg_1430[2:0] <= 3'b100;
    zext_ln314_1_reg_1430[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln315_3_reg_1435[2:0] <= 3'b110;
    zext_ln315_3_reg_1435[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln318_2_reg_1470[1:0] <= 2'b01;
    zext_ln318_2_reg_1470[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln319_2_reg_1475[1:0] <= 2'b11;
    zext_ln319_2_reg_1475[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln318_3_reg_1500[2:0] <= 3'b101;
    zext_ln318_3_reg_1500[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln319_3_reg_1505[2:0] <= 3'b111;
    zext_ln319_3_reg_1505[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 