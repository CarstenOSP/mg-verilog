module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_q0,W_3_address1,W_3_ce1,W_3_we1,W_3_d1,W_3_q1,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_q0,W_2_address1,W_2_ce1,W_2_we1,W_2_d1,W_2_q1,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_q0,W_1_address1,W_1_ce1,W_1_we1,W_1_d1,W_1_q1,W_address0,W_ce0,W_we0,W_d0,W_q0,W_address1,W_ce1,W_we1,W_d1,W_q1); 
parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
input  [31:0] W_3_q0;
output  [4:0] W_3_address1;
output   W_3_ce1;
output   W_3_we1;
output  [31:0] W_3_d1;
input  [31:0] W_3_q1;
output  [4:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
input  [31:0] W_2_q0;
output  [4:0] W_2_address1;
output   W_2_ce1;
output   W_2_we1;
output  [31:0] W_2_d1;
input  [31:0] W_2_q1;
output  [4:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
input  [31:0] W_1_q0;
output  [4:0] W_1_address1;
output   W_1_ce1;
output   W_1_we1;
output  [31:0] W_1_d1;
input  [31:0] W_1_q1;
output  [4:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
input  [31:0] W_q0;
output  [4:0] W_address1;
output   W_ce1;
output   W_we1;
output  [31:0] W_d1;
input  [31:0] W_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state3;
reg   [0:0] icmp_ln106_reg_1310;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state5;
reg   [6:0] i_2_reg_1163;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [5:0] trunc_ln6_fu_422_p1;
reg   [5:0] trunc_ln6_reg_1173;
reg   [4:0] lshr_ln_reg_1181;
reg   [31:0] W_1_load_reg_1230;
wire    ap_CS_fsm_state2;
reg   [31:0] W_load_reg_1237;
reg   [31:0] W_2_load_reg_1244;
reg   [31:0] W_load_1_reg_1251;
reg   [31:0] W_2_load_1_reg_1282;
reg   [31:0] W_1_load_1_reg_1289;
reg   [31:0] W_3_load_reg_1296;
reg   [31:0] W_3_load_1_reg_1303;
wire   [0:0] icmp_ln106_fu_709_p2;
wire   [31:0] xor_ln108_fu_782_p2;
reg   [31:0] xor_ln108_reg_1329;
wire   [31:0] xor_ln108_2_fu_791_p2;
reg   [31:0] xor_ln108_2_reg_1334;
reg   [31:0] W_1_load_2_reg_1339;
wire   [31:0] xor_ln108_3_fu_797_p2;
reg   [31:0] xor_ln108_3_reg_1344;
wire   [31:0] xor_ln108_5_fu_807_p2;
reg   [31:0] xor_ln108_5_reg_1349;
reg   [31:0] W_2_load_2_reg_1354;
reg   [31:0] W_load_2_reg_1360;
wire   [31:0] xor_ln108_6_fu_813_p2;
reg   [31:0] xor_ln108_6_reg_1365;
wire   [31:0] xor_ln108_8_fu_823_p2;
reg   [31:0] xor_ln108_8_reg_1370;
reg   [31:0] W_3_load_2_reg_1375;
reg   [31:0] W_1_load_3_reg_1381;
wire   [31:0] xor_ln108_9_fu_830_p2;
reg   [31:0] xor_ln108_9_reg_1387;
wire   [31:0] xor_ln108_11_fu_841_p2;
reg   [31:0] xor_ln108_11_reg_1392;
wire   [63:0] zext_ln106_fu_853_p1;
reg   [63:0] zext_ln106_reg_1398;
reg   [31:0] W_load_3_reg_1405;
reg   [31:0] W_2_load_3_reg_1410;
wire   [31:0] xor_ln108_12_fu_858_p2;
reg   [31:0] xor_ln108_12_reg_1415;
wire   [31:0] xor_ln108_14_fu_870_p2;
reg   [31:0] xor_ln108_14_reg_1420;
reg   [31:0] W_3_load_3_reg_1426;
wire   [31:0] xor_ln108_24_fu_877_p2;
reg   [31:0] xor_ln108_24_reg_1432;
wire   [63:0] zext_ln108_17_fu_932_p1;
reg   [63:0] zext_ln108_17_reg_1438;
wire    ap_CS_fsm_state4;
wire   [31:0] xor_ln108_41_fu_1035_p2;
reg   [31:0] xor_ln108_41_reg_1445;
wire   [31:0] xor_ln108_43_fu_1046_p2;
reg   [31:0] xor_ln108_43_reg_1450;
wire   [31:0] xor_ln108_46_fu_1062_p2;
reg   [31:0] xor_ln108_46_reg_1455;
wire   [31:0] xor_ln108_49_fu_1078_p2;
reg   [31:0] xor_ln108_49_reg_1460;
wire   [31:0] xor_ln108_52_fu_1094_p2;
reg   [31:0] xor_ln108_52_reg_1465;
wire   [31:0] xor_ln108_55_fu_1110_p2;
reg   [31:0] xor_ln108_55_reg_1470;
wire   [31:0] xor_ln108_58_fu_1127_p2;
reg   [31:0] xor_ln108_58_reg_1475;
wire   [63:0] zext_ln108_fu_452_p1;
wire   [63:0] zext_ln108_1_fu_473_p1;
wire   [63:0] zext_ln108_2_fu_494_p1;
wire   [63:0] zext_ln108_3_fu_515_p1;
wire   [63:0] zext_ln108_4_fu_536_p1;
wire   [63:0] zext_ln108_5_fu_557_p1;
wire   [63:0] zext_ln108_6_fu_578_p1;
wire   [63:0] zext_ln108_8_fu_599_p1;
wire   [63:0] zext_ln108_7_fu_619_p1;
wire   [63:0] zext_ln108_9_fu_639_p1;
wire   [63:0] zext_ln108_10_fu_659_p1;
wire   [63:0] zext_ln108_11_fu_679_p1;
wire   [63:0] zext_ln108_12_fu_699_p1;
wire   [63:0] zext_ln108_13_fu_730_p1;
wire   [63:0] zext_ln108_14_fu_750_p1;
wire   [63:0] zext_ln108_15_fu_770_p1;
wire   [63:0] zext_ln99_fu_775_p1;
wire   [63:0] zext_ln108_16_fu_903_p1;
wire   [63:0] zext_ln108_18_fu_1138_p1;
reg   [6:0] i_fu_86;
wire   [6:0] add_ln106_2_fu_1146_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_2;
reg    W_1_ce1_local;
reg   [4:0] W_1_address1_local;
reg    W_1_ce0_local;
reg   [4:0] W_1_address0_local;
reg    W_1_we0_local;
reg   [31:0] W_1_d0_local;
wire   [31:0] xor_ln108_26_fu_957_p2;
reg    W_1_we1_local;
reg   [31:0] W_1_d1_local;
wire   [31:0] xor_ln108_20_fu_921_p2;
reg    W_ce1_local;
reg   [4:0] W_address1_local;
reg    W_ce0_local;
reg   [4:0] W_address0_local;
reg    W_we1_local;
reg   [31:0] W_d1_local;
reg    W_we0_local;
reg   [31:0] W_d0_local;
wire   [31:0] xor_ln108_32_fu_987_p2;
wire   [31:0] xor_ln108_23_fu_946_p2;
reg    W_2_ce1_local;
reg   [4:0] W_2_address1_local;
reg    W_2_ce0_local;
reg   [4:0] W_2_address0_local;
reg    W_2_we0_local;
reg   [31:0] W_2_d0_local;
wire   [31:0] xor_ln108_17_fu_892_p2;
reg    W_2_we1_local;
reg   [31:0] W_2_d1_local;
wire   [31:0] xor_ln108_35_fu_1004_p2;
reg    W_3_ce1_local;
reg   [4:0] W_3_address1_local;
reg    W_3_ce0_local;
reg   [4:0] W_3_address0_local;
reg    W_3_we0_local;
reg   [31:0] W_3_d0_local;
wire   [31:0] xor_ln108_29_fu_972_p2;
reg    W_3_we1_local;
reg   [31:0] W_3_d1_local;
wire   [31:0] xor_ln108_38_fu_1020_p2;
wire   [6:0] add_ln108_fu_436_p2;
wire   [4:0] lshr_ln1_fu_442_p4;
wire   [6:0] add_ln108_1_fu_457_p2;
wire   [4:0] lshr_ln108_1_fu_463_p4;
wire   [5:0] add_ln108_2_fu_478_p2;
wire   [3:0] lshr_ln108_2_fu_484_p4;
wire   [5:0] add_ln108_3_fu_499_p2;
wire   [3:0] lshr_ln108_3_fu_505_p4;
wire   [6:0] add_ln108_4_fu_520_p2;
wire   [4:0] lshr_ln108_4_fu_526_p4;
wire   [6:0] add_ln108_5_fu_541_p2;
wire   [4:0] lshr_ln108_5_fu_547_p4;
wire   [5:0] add_ln108_6_fu_562_p2;
wire   [3:0] lshr_ln108_6_fu_568_p4;
wire   [6:0] add_ln108_8_fu_583_p2;
wire   [4:0] lshr_ln108_8_fu_589_p4;
wire   [5:0] add_ln108_7_fu_604_p2;
wire   [3:0] lshr_ln108_7_fu_609_p4;
wire   [6:0] add_ln108_9_fu_624_p2;
wire   [4:0] lshr_ln108_9_fu_629_p4;
wire   [6:0] add_ln108_10_fu_644_p2;
wire   [4:0] lshr_ln108_s_fu_649_p4;
wire   [6:0] add_ln108_11_fu_664_p2;
wire   [4:0] lshr_ln108_10_fu_669_p4;
wire   [6:0] add_ln108_12_fu_684_p2;
wire   [4:0] lshr_ln108_11_fu_689_p4;
wire   [6:0] add_ln106_fu_704_p2;
wire   [5:0] add_ln108_13_fu_715_p2;
wire   [3:0] lshr_ln108_12_fu_720_p4;
wire   [5:0] add_ln108_14_fu_735_p2;
wire   [3:0] lshr_ln108_13_fu_740_p4;
wire   [5:0] add_ln108_15_fu_755_p2;
wire   [3:0] lshr_ln108_14_fu_760_p4;
wire   [31:0] xor_ln108_1_fu_786_p2;
wire   [31:0] xor_ln108_4_fu_801_p2;
wire   [31:0] xor_ln108_7_fu_818_p2;
wire   [31:0] xor_ln108_10_fu_836_p2;
wire   [4:0] add_ln106_1_fu_848_p2;
wire   [31:0] xor_ln108_13_fu_864_p2;
wire   [31:0] xor_ln108_15_fu_883_p2;
wire   [31:0] xor_ln108_16_fu_887_p2;
wire   [4:0] add_ln108_16_fu_898_p2;
wire   [31:0] xor_ln108_18_fu_911_p2;
wire   [31:0] xor_ln108_19_fu_916_p2;
wire   [4:0] add_ln108_17_fu_927_p2;
wire   [31:0] xor_ln108_22_fu_941_p2;
wire   [31:0] xor_ln108_21_fu_937_p2;
wire   [31:0] xor_ln108_25_fu_953_p2;
wire   [31:0] xor_ln108_27_fu_963_p2;
wire   [31:0] xor_ln108_28_fu_967_p2;
wire   [31:0] xor_ln108_31_fu_983_p2;
wire   [31:0] xor_ln108_30_fu_978_p2;
wire   [31:0] xor_ln108_33_fu_994_p2;
wire   [31:0] xor_ln108_34_fu_999_p2;
wire   [31:0] xor_ln108_36_fu_1010_p2;
wire   [31:0] xor_ln108_37_fu_1015_p2;
wire   [31:0] xor_ln108_40_fu_1030_p2;
wire   [31:0] xor_ln108_39_fu_1026_p2;
wire   [31:0] xor_ln108_42_fu_1041_p2;
wire   [31:0] xor_ln108_45_fu_1056_p2;
wire   [31:0] xor_ln108_44_fu_1052_p2;
wire   [31:0] xor_ln108_47_fu_1068_p2;
wire   [31:0] xor_ln108_48_fu_1072_p2;
wire   [31:0] xor_ln108_50_fu_1084_p2;
wire   [31:0] xor_ln108_51_fu_1088_p2;
wire   [31:0] xor_ln108_54_fu_1104_p2;
wire   [31:0] xor_ln108_53_fu_1100_p2;
wire   [31:0] xor_ln108_57_fu_1121_p2;
wire   [31:0] xor_ln108_56_fu_1116_p2;
wire   [4:0] add_ln108_18_fu_1133_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 i_fu_86 = 7'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_86 <= 7'd16;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_fu_86 <= add_ln106_2_fu_1146_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_load_1_reg_1289 <= W_1_q0;
        W_1_load_reg_1230 <= W_1_q1;
        W_2_load_1_reg_1282 <= W_2_q0;
        W_2_load_reg_1244 <= W_2_q1;
        W_3_load_1_reg_1303 <= W_3_q0;
        W_3_load_reg_1296 <= W_3_q1;
        W_load_1_reg_1251 <= W_q0;
        W_load_reg_1237 <= W_q1;
        icmp_ln106_reg_1310 <= icmp_ln106_fu_709_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_load_2_reg_1339 <= W_1_q1;
        W_1_load_3_reg_1381 <= W_1_q0;
        W_2_load_2_reg_1354 <= W_2_q1;
        W_2_load_3_reg_1410 <= W_2_q0;
        W_3_load_2_reg_1375 <= W_3_q1;
        W_3_load_3_reg_1426 <= W_3_q0;
        W_load_2_reg_1360 <= W_q1;
        W_load_3_reg_1405 <= W_q0;
        xor_ln108_11_reg_1392 <= xor_ln108_11_fu_841_p2;
        xor_ln108_12_reg_1415 <= xor_ln108_12_fu_858_p2;
        xor_ln108_14_reg_1420 <= xor_ln108_14_fu_870_p2;
        xor_ln108_24_reg_1432 <= xor_ln108_24_fu_877_p2;
        xor_ln108_2_reg_1334 <= xor_ln108_2_fu_791_p2;
        xor_ln108_3_reg_1344 <= xor_ln108_3_fu_797_p2;
        xor_ln108_5_reg_1349 <= xor_ln108_5_fu_807_p2;
        xor_ln108_6_reg_1365 <= xor_ln108_6_fu_813_p2;
        xor_ln108_8_reg_1370 <= xor_ln108_8_fu_823_p2;
        xor_ln108_9_reg_1387 <= xor_ln108_9_fu_830_p2;
        xor_ln108_reg_1329 <= xor_ln108_fu_782_p2;
        zext_ln106_reg_1398[4 : 0] <= zext_ln106_fu_853_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_2_reg_1163 <= ap_sig_allocacmp_i_2;
        lshr_ln_reg_1181 <= {{ap_sig_allocacmp_i_2[6:2]}};
        trunc_ln6_reg_1173 <= trunc_ln6_fu_422_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        xor_ln108_41_reg_1445 <= xor_ln108_41_fu_1035_p2;
        xor_ln108_43_reg_1450 <= xor_ln108_43_fu_1046_p2;
        xor_ln108_46_reg_1455 <= xor_ln108_46_fu_1062_p2;
        xor_ln108_49_reg_1460 <= xor_ln108_49_fu_1078_p2;
        xor_ln108_52_reg_1465 <= xor_ln108_52_fu_1094_p2;
        xor_ln108_55_reg_1470 <= xor_ln108_55_fu_1110_p2;
        xor_ln108_58_reg_1475 <= xor_ln108_58_fu_1127_p2;
        zext_ln108_17_reg_1438[4 : 0] <= zext_ln108_17_fu_932_p1[4 : 0];
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_1_address0_local = zext_ln108_17_reg_1438;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_1_address0_local = zext_ln106_reg_1398;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_address0_local = zext_ln99_fu_775_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address0_local = zext_ln108_12_fu_699_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        W_1_address0_local = zext_ln108_5_fu_557_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_1_address1_local = zext_ln108_18_fu_1138_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_1_address1_local = zext_ln108_16_fu_903_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address1_local = zext_ln108_7_fu_619_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        W_1_address1_local = zext_ln108_fu_452_p1;
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_1_d0_local = xor_ln108_41_reg_1445;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_1_d0_local = xor_ln108_26_fu_957_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_d0_local = xor_ln108_5_fu_807_p2;
    end else begin
        W_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_1_d1_local = xor_ln108_52_reg_1465;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_1_d1_local = xor_ln108_20_fu_921_p2;
    end else begin
        W_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        W_1_we1_local = 1'b1;
    end else begin
        W_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_2_address0_local = zext_ln108_17_reg_1438;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_2_address0_local = zext_ln106_reg_1398;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_2_address0_local = zext_ln99_fu_775_p1;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln106_fu_709_p2 == 1'd1))) begin
        W_2_address0_local = zext_ln108_14_fu_750_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        W_2_address0_local = zext_ln108_4_fu_536_p1;
    end else begin
        W_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_2_address1_local = zext_ln108_18_fu_1138_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_2_address1_local = zext_ln108_16_fu_903_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_2_address1_local = zext_ln108_9_fu_639_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        W_2_address1_local = zext_ln108_2_fu_494_p1;
    end else begin
        W_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln106_fu_709_p2 == 1'd1)))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_2_d0_local = xor_ln108_43_reg_1450;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_2_d0_local = xor_ln108_17_fu_892_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_2_d0_local = xor_ln108_8_fu_823_p2;
    end else begin
        W_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_2_d1_local = xor_ln108_55_reg_1470;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_2_d1_local = xor_ln108_35_fu_1004_p2;
    end else begin
        W_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        W_2_we1_local = 1'b1;
    end else begin
        W_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_3_address0_local = zext_ln108_17_reg_1438;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_3_address0_local = zext_ln106_reg_1398;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_3_address0_local = zext_ln99_fu_775_p1;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln106_fu_709_p2 == 1'd1))) begin
        W_3_address0_local = zext_ln108_15_fu_770_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        W_3_address0_local = zext_ln108_8_fu_599_p1;
    end else begin
        W_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_3_address1_local = zext_ln108_18_fu_1138_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_3_address1_local = zext_ln108_16_fu_903_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_3_address1_local = zext_ln108_11_fu_679_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        W_3_address1_local = zext_ln108_6_fu_578_p1;
    end else begin
        W_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln106_fu_709_p2 == 1'd1)))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_3_d0_local = xor_ln108_46_reg_1455;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_3_d0_local = xor_ln108_29_fu_972_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_3_d0_local = xor_ln108_11_fu_841_p2;
    end else begin
        W_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_3_d1_local = xor_ln108_58_reg_1475;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_3_d1_local = xor_ln108_38_fu_1020_p2;
    end else begin
        W_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        W_3_we1_local = 1'b1;
    end else begin
        W_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_address0_local = zext_ln108_18_fu_1138_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_address0_local = zext_ln108_17_fu_932_p1;
    end else if (((icmp_ln106_reg_1310 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        W_address0_local = zext_ln106_fu_853_p1;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln106_fu_709_p2 == 1'd1))) begin
        W_address0_local = zext_ln108_13_fu_730_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        W_address0_local = zext_ln108_3_fu_515_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        W_address1_local = zext_ln108_16_fu_903_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_address1_local = zext_ln99_fu_775_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_address1_local = zext_ln108_10_fu_659_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        W_address1_local = zext_ln108_1_fu_473_p1;
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln106_reg_1310 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln106_fu_709_p2 == 1'd1)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_d0_local = xor_ln108_49_reg_1460;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_d0_local = xor_ln108_23_fu_946_p2;
    end else if (((icmp_ln106_reg_1310 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        W_d0_local = xor_ln108_14_fu_870_p2;
    end else begin
        W_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        W_d1_local = xor_ln108_32_fu_987_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_d1_local = xor_ln108_2_fu_791_p2;
    end else begin
        W_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln106_reg_1310 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        W_we1_local = 1'b1;
    end else begin
        W_we1_local = 1'b0;
    end
end
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
always @ (*) begin
    if (((icmp_ln106_reg_1310 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_2 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_86;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln106_reg_1310 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign W_1_address0 = W_1_address0_local;
assign W_1_address1 = W_1_address1_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_d0 = W_1_d0_local;
assign W_1_d1 = W_1_d1_local;
assign W_1_we0 = W_1_we0_local;
assign W_1_we1 = W_1_we1_local;
assign W_2_address0 = W_2_address0_local;
assign W_2_address1 = W_2_address1_local;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_2_d0 = W_2_d0_local;
assign W_2_d1 = W_2_d1_local;
assign W_2_we0 = W_2_we0_local;
assign W_2_we1 = W_2_we1_local;
assign W_3_address0 = W_3_address0_local;
assign W_3_address1 = W_3_address1_local;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_d0 = W_3_d0_local;
assign W_3_d1 = W_3_d1_local;
assign W_3_we0 = W_3_we0_local;
assign W_3_we1 = W_3_we1_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_d0 = W_d0_local;
assign W_d1 = W_d1_local;
assign W_we0 = W_we0_local;
assign W_we1 = W_we1_local;
assign add_ln106_1_fu_848_p2 = (lshr_ln_reg_1181 + 5'd1);
assign add_ln106_2_fu_1146_p2 = (i_2_reg_1163 + 7'd20);
assign add_ln106_fu_704_p2 = (i_2_reg_1163 + 7'd4);
assign add_ln108_10_fu_644_p2 = ($signed(i_2_reg_1163) + $signed(7'd116));
assign add_ln108_11_fu_664_p2 = ($signed(i_2_reg_1163) + $signed(7'd123));
assign add_ln108_12_fu_684_p2 = ($signed(i_2_reg_1163) + $signed(7'd117));
assign add_ln108_13_fu_715_p2 = ($signed(trunc_ln6_reg_1173) + $signed(6'd60));
assign add_ln108_14_fu_735_p2 = ($signed(trunc_ln6_reg_1173) + $signed(6'd54));
assign add_ln108_15_fu_755_p2 = ($signed(trunc_ln6_reg_1173) + $signed(6'd55));
assign add_ln108_16_fu_898_p2 = (lshr_ln_reg_1181 + 5'd2);
assign add_ln108_17_fu_927_p2 = (lshr_ln_reg_1181 + 5'd3);
assign add_ln108_18_fu_1133_p2 = (lshr_ln_reg_1181 + 5'd4);
assign add_ln108_1_fu_457_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd120));
assign add_ln108_2_fu_478_p2 = ($signed(trunc_ln6_fu_422_p1) + $signed(6'd50));
assign add_ln108_3_fu_499_p2 = ($signed(trunc_ln6_fu_422_p1) + $signed(6'd48));
assign add_ln108_4_fu_520_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd126));
assign add_ln108_5_fu_541_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd121));
assign add_ln108_6_fu_562_p2 = ($signed(trunc_ln6_fu_422_p1) + $signed(6'd51));
assign add_ln108_7_fu_604_p2 = ($signed(trunc_ln6_reg_1173) + $signed(6'd49));
assign add_ln108_8_fu_583_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd127));
assign add_ln108_9_fu_624_p2 = ($signed(i_2_reg_1163) + $signed(7'd122));
assign add_ln108_fu_436_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd125));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_709_p2 = ((add_ln106_fu_704_p2 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_10_fu_669_p4 = {{add_ln108_11_fu_664_p2[6:2]}};
assign lshr_ln108_11_fu_689_p4 = {{add_ln108_12_fu_684_p2[6:2]}};
assign lshr_ln108_12_fu_720_p4 = {{add_ln108_13_fu_715_p2[5:2]}};
assign lshr_ln108_13_fu_740_p4 = {{add_ln108_14_fu_735_p2[5:2]}};
assign lshr_ln108_14_fu_760_p4 = {{add_ln108_15_fu_755_p2[5:2]}};
assign lshr_ln108_1_fu_463_p4 = {{add_ln108_1_fu_457_p2[6:2]}};
assign lshr_ln108_2_fu_484_p4 = {{add_ln108_2_fu_478_p2[5:2]}};
assign lshr_ln108_3_fu_505_p4 = {{add_ln108_3_fu_499_p2[5:2]}};
assign lshr_ln108_4_fu_526_p4 = {{add_ln108_4_fu_520_p2[6:2]}};
assign lshr_ln108_5_fu_547_p4 = {{add_ln108_5_fu_541_p2[6:2]}};
assign lshr_ln108_6_fu_568_p4 = {{add_ln108_6_fu_562_p2[5:2]}};
assign lshr_ln108_7_fu_609_p4 = {{add_ln108_7_fu_604_p2[5:2]}};
assign lshr_ln108_8_fu_589_p4 = {{add_ln108_8_fu_583_p2[6:2]}};
assign lshr_ln108_9_fu_629_p4 = {{add_ln108_9_fu_624_p2[6:2]}};
assign lshr_ln108_s_fu_649_p4 = {{add_ln108_10_fu_644_p2[6:2]}};
assign lshr_ln1_fu_442_p4 = {{add_ln108_fu_436_p2[6:2]}};
assign trunc_ln6_fu_422_p1 = ap_sig_allocacmp_i_2[5:0];
assign xor_ln108_10_fu_836_p2 = (xor_ln108_9_fu_830_p2 ^ W_3_load_reg_1296);
assign xor_ln108_11_fu_841_p2 = (xor_ln108_10_fu_836_p2 ^ W_3_q1);
assign xor_ln108_12_fu_858_p2 = (xor_ln108_5_fu_807_p2 ^ W_2_q0);
assign xor_ln108_13_fu_864_p2 = (xor_ln108_12_fu_858_p2 ^ W_q1);
assign xor_ln108_14_fu_870_p2 = (xor_ln108_13_fu_864_p2 ^ W_q0);
assign xor_ln108_15_fu_883_p2 = (xor_ln108_11_reg_1392 ^ W_load_reg_1237);
assign xor_ln108_16_fu_887_p2 = (xor_ln108_15_fu_883_p2 ^ W_2_load_3_reg_1410);
assign xor_ln108_17_fu_892_p2 = (xor_ln108_16_fu_887_p2 ^ W_2_load_1_reg_1282);
assign xor_ln108_18_fu_911_p2 = (xor_ln108_17_fu_892_p2 ^ W_3_load_2_reg_1375);
assign xor_ln108_19_fu_916_p2 = (xor_ln108_3_reg_1344 ^ xor_ln108_18_fu_911_p2);
assign xor_ln108_1_fu_786_p2 = (xor_ln108_fu_782_p2 ^ W_load_1_reg_1251);
assign xor_ln108_20_fu_921_p2 = (xor_ln108_19_fu_916_p2 ^ W_1_load_2_reg_1339);
assign xor_ln108_21_fu_937_p2 = (W_load_2_reg_1360 ^ W_2_load_1_reg_1282);
assign xor_ln108_22_fu_941_p2 = (xor_ln108_20_fu_921_p2 ^ xor_ln108_12_reg_1415);
assign xor_ln108_23_fu_946_p2 = (xor_ln108_22_fu_941_p2 ^ xor_ln108_21_fu_937_p2);
assign xor_ln108_24_fu_877_p2 = (xor_ln108_8_fu_823_p2 ^ W_3_q0);
assign xor_ln108_25_fu_953_p2 = (xor_ln108_24_reg_1432 ^ W_1_load_reg_1230);
assign xor_ln108_26_fu_957_p2 = (xor_ln108_25_fu_953_p2 ^ W_1_load_3_reg_1381);
assign xor_ln108_27_fu_963_p2 = (xor_ln108_14_reg_1420 ^ W_1_load_1_reg_1289);
assign xor_ln108_28_fu_967_p2 = (xor_ln108_27_fu_963_p2 ^ W_3_load_1_reg_1303);
assign xor_ln108_29_fu_972_p2 = (xor_ln108_28_fu_967_p2 ^ W_3_load_3_reg_1426);
assign xor_ln108_2_fu_791_p2 = (xor_ln108_1_fu_786_p2 ^ W_load_reg_1237);
assign xor_ln108_30_fu_978_p2 = (xor_ln108_26_fu_957_p2 ^ W_2_load_2_reg_1354);
assign xor_ln108_31_fu_983_p2 = (xor_ln108_reg_1329 ^ W_load_1_reg_1251);
assign xor_ln108_32_fu_987_p2 = (xor_ln108_31_fu_983_p2 ^ xor_ln108_30_fu_978_p2);
assign xor_ln108_33_fu_994_p2 = (xor_ln108_29_fu_972_p2 ^ W_load_3_reg_1405);
assign xor_ln108_34_fu_999_p2 = (xor_ln108_6_reg_1365 ^ xor_ln108_33_fu_994_p2);
assign xor_ln108_35_fu_1004_p2 = (xor_ln108_34_fu_999_p2 ^ W_2_load_reg_1244);
assign xor_ln108_36_fu_1010_p2 = (xor_ln108_32_fu_987_p2 ^ W_1_load_reg_1230);
assign xor_ln108_37_fu_1015_p2 = (xor_ln108_9_reg_1387 ^ xor_ln108_36_fu_1010_p2);
assign xor_ln108_38_fu_1020_p2 = (xor_ln108_37_fu_1015_p2 ^ W_3_load_reg_1296);
assign xor_ln108_39_fu_1026_p2 = (W_3_load_1_reg_1303 ^ W_1_load_3_reg_1381);
assign xor_ln108_3_fu_797_p2 = (W_3_load_reg_1296 ^ W_2_load_1_reg_1282);
assign xor_ln108_40_fu_1030_p2 = (xor_ln108_35_fu_1004_p2 ^ xor_ln108_24_reg_1432);
assign xor_ln108_41_fu_1035_p2 = (xor_ln108_40_fu_1030_p2 ^ xor_ln108_39_fu_1026_p2);
assign xor_ln108_42_fu_1041_p2 = (xor_ln108_38_fu_1020_p2 ^ xor_ln108_2_reg_1334);
assign xor_ln108_43_fu_1046_p2 = (xor_ln108_42_fu_1041_p2 ^ xor_ln108_16_fu_887_p2);
assign xor_ln108_44_fu_1052_p2 = (xor_ln108_5_reg_1349 ^ W_3_load_3_reg_1426);
assign xor_ln108_45_fu_1056_p2 = (xor_ln108_27_fu_963_p2 ^ xor_ln108_23_fu_946_p2);
assign xor_ln108_46_fu_1062_p2 = (xor_ln108_45_fu_1056_p2 ^ xor_ln108_44_fu_1052_p2);
assign xor_ln108_47_fu_1068_p2 = (xor_ln108_8_reg_1370 ^ W_load_reg_1237);
assign xor_ln108_48_fu_1072_p2 = (xor_ln108_47_fu_1068_p2 ^ xor_ln108_30_fu_978_p2);
assign xor_ln108_49_fu_1078_p2 = (xor_ln108_48_fu_1072_p2 ^ xor_ln108_41_fu_1035_p2);
assign xor_ln108_4_fu_801_p2 = (xor_ln108_3_fu_797_p2 ^ W_1_q1);
assign xor_ln108_50_fu_1084_p2 = (xor_ln108_11_reg_1392 ^ W_1_load_1_reg_1289);
assign xor_ln108_51_fu_1088_p2 = (xor_ln108_50_fu_1084_p2 ^ xor_ln108_18_fu_911_p2);
assign xor_ln108_52_fu_1094_p2 = (xor_ln108_51_fu_1088_p2 ^ xor_ln108_43_fu_1046_p2);
assign xor_ln108_53_fu_1100_p2 = (xor_ln108_14_reg_1420 ^ W_2_load_2_reg_1354);
assign xor_ln108_54_fu_1104_p2 = (xor_ln108_46_fu_1062_p2 ^ xor_ln108_33_fu_994_p2);
assign xor_ln108_55_fu_1110_p2 = (xor_ln108_54_fu_1104_p2 ^ xor_ln108_53_fu_1100_p2);
assign xor_ln108_56_fu_1116_p2 = (xor_ln108_26_fu_957_p2 ^ W_3_load_2_reg_1375);
assign xor_ln108_57_fu_1121_p2 = (xor_ln108_49_fu_1078_p2 ^ xor_ln108_36_fu_1010_p2);
assign xor_ln108_58_fu_1127_p2 = (xor_ln108_57_fu_1121_p2 ^ xor_ln108_56_fu_1116_p2);
assign xor_ln108_5_fu_807_p2 = (xor_ln108_4_fu_801_p2 ^ W_1_load_1_reg_1289);
assign xor_ln108_6_fu_813_p2 = (W_q1 ^ W_3_load_1_reg_1303);
assign xor_ln108_7_fu_818_p2 = (xor_ln108_6_fu_813_p2 ^ W_2_load_reg_1244);
assign xor_ln108_8_fu_823_p2 = (xor_ln108_7_fu_818_p2 ^ W_2_q1);
assign xor_ln108_9_fu_830_p2 = (xor_ln108_2_fu_791_p2 ^ W_1_q0);
assign xor_ln108_fu_782_p2 = (W_2_load_reg_1244 ^ W_1_load_reg_1230);
assign zext_ln106_fu_853_p1 = add_ln106_1_fu_848_p2;
assign zext_ln108_10_fu_659_p1 = lshr_ln108_s_fu_649_p4;
assign zext_ln108_11_fu_679_p1 = lshr_ln108_10_fu_669_p4;
assign zext_ln108_12_fu_699_p1 = lshr_ln108_11_fu_689_p4;
assign zext_ln108_13_fu_730_p1 = lshr_ln108_12_fu_720_p4;
assign zext_ln108_14_fu_750_p1 = lshr_ln108_13_fu_740_p4;
assign zext_ln108_15_fu_770_p1 = lshr_ln108_14_fu_760_p4;
assign zext_ln108_16_fu_903_p1 = add_ln108_16_fu_898_p2;
assign zext_ln108_17_fu_932_p1 = add_ln108_17_fu_927_p2;
assign zext_ln108_18_fu_1138_p1 = add_ln108_18_fu_1133_p2;
assign zext_ln108_1_fu_473_p1 = lshr_ln108_1_fu_463_p4;
assign zext_ln108_2_fu_494_p1 = lshr_ln108_2_fu_484_p4;
assign zext_ln108_3_fu_515_p1 = lshr_ln108_3_fu_505_p4;
assign zext_ln108_4_fu_536_p1 = lshr_ln108_4_fu_526_p4;
assign zext_ln108_5_fu_557_p1 = lshr_ln108_5_fu_547_p4;
assign zext_ln108_6_fu_578_p1 = lshr_ln108_6_fu_568_p4;
assign zext_ln108_7_fu_619_p1 = lshr_ln108_7_fu_609_p4;
assign zext_ln108_8_fu_599_p1 = lshr_ln108_8_fu_589_p4;
assign zext_ln108_9_fu_639_p1 = lshr_ln108_9_fu_629_p4;
assign zext_ln108_fu_452_p1 = lshr_ln1_fu_442_p4;
assign zext_ln99_fu_775_p1 = lshr_ln_reg_1181;
always @ (posedge ap_clk) begin
    zext_ln106_reg_1398[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln108_17_reg_1438[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 