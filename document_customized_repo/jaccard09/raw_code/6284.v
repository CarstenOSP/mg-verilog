module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,W_1_address0,W_1_ce0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,E_59_out,E_59_out_ap_vld,B_59_out,B_59_out_ap_vld,D_63_out,D_63_out_ap_vld,A_62_out,A_62_out_ap_vld,C_104_out,C_104_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 14'd1;
parameter    ap_ST_fsm_pp0_stage1 = 14'd2;
parameter    ap_ST_fsm_pp0_stage2 = 14'd4;
parameter    ap_ST_fsm_pp0_stage3 = 14'd8;
parameter    ap_ST_fsm_pp0_stage4 = 14'd16;
parameter    ap_ST_fsm_pp0_stage5 = 14'd32;
parameter    ap_ST_fsm_pp0_stage6 = 14'd64;
parameter    ap_ST_fsm_pp0_stage7 = 14'd128;
parameter    ap_ST_fsm_pp0_stage8 = 14'd256;
parameter    ap_ST_fsm_pp0_stage9 = 14'd512;
parameter    ap_ST_fsm_pp0_stage10 = 14'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 14'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 14'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 14'd8192;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A;
input  [31:0] B;
input  [31:0] C;
input  [31:0] D;
input  [31:0] E;
output  [5:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [5:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [5:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [5:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [31:0] E_59_out;
output   E_59_out_ap_vld;
output  [31:0] B_59_out;
output   B_59_out_ap_vld;
output  [31:0] D_63_out;
output   D_63_out_ap_vld;
output  [31:0] A_62_out;
output   A_62_out_ap_vld;
output  [31:0] C_104_out;
output   C_104_out_ap_vld;
reg ap_idle;
reg E_59_out_ap_vld;
reg B_59_out_ap_vld;
reg D_63_out_ap_vld;
reg A_62_out_ap_vld;
reg C_104_out_ap_vld;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln116_reg_1197;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_subdone;
reg   [31:0] reg_267;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] tmp_s_fu_344_p4;
reg   [1:0] tmp_s_reg_1191;
wire   [0:0] icmp_ln116_fu_362_p2;
reg   [0:0] tmp_reg_1201;
reg   [31:0] W_1_load_reg_1206;
reg   [31:0] W_load_4_reg_1211;
reg   [31:0] W_1_load_4_reg_1216;
reg   [31:0] D_12_reg_1241;
reg   [31:0] C_17_reg_1246;
wire   [31:0] temp_fu_493_p2;
reg   [31:0] temp_reg_1251;
wire   [31:0] C_18_fu_513_p3;
reg   [31:0] C_18_reg_1257;
wire   [26:0] trunc_ln118_2_fu_521_p1;
reg   [26:0] trunc_ln118_2_reg_1263;
reg   [4:0] lshr_ln118_2_reg_1268;
wire   [31:0] or_ln118_2_fu_553_p2;
reg   [31:0] or_ln118_2_reg_1273;
wire   [31:0] E_23_fu_573_p3;
reg   [31:0] E_23_reg_1278;
wire   [1:0] trunc_ln118_5_fu_581_p1;
reg   [1:0] trunc_ln118_5_reg_1286;
reg   [29:0] lshr_ln118_5_reg_1291;
reg   [31:0] W_1_load_5_reg_1296;
reg   [31:0] W_load_6_reg_1301;
reg   [31:0] W_1_load_6_reg_1306;
wire   [31:0] add_ln118_6_fu_607_p2;
reg   [31:0] add_ln118_6_reg_1311;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] or_ln118_3_fu_626_p2;
reg   [31:0] or_ln118_3_reg_1316;
wire   [26:0] trunc_ln118_4_fu_641_p1;
reg   [26:0] trunc_ln118_4_reg_1321;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln118_4_reg_1326;
wire   [31:0] D_13_fu_655_p3;
reg   [31:0] D_13_reg_1331;
wire   [31:0] or_ln118_5_fu_678_p2;
reg   [31:0] or_ln118_5_reg_1338;
wire   [1:0] trunc_ln118_7_fu_684_p1;
reg   [1:0] trunc_ln118_7_reg_1343;
reg   [29:0] lshr_ln118_7_reg_1348;
wire   [31:0] add_ln118_10_fu_710_p2;
reg   [31:0] add_ln118_10_reg_1353;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] B_21_fu_719_p2;
reg   [31:0] B_21_reg_1358;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln118_6_fu_724_p1;
reg   [26:0] trunc_ln118_6_reg_1367;
reg   [4:0] lshr_ln118_6_reg_1372;
wire   [31:0] add_ln118_14_fu_750_p2;
reg   [31:0] add_ln118_14_reg_1377;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] A_13_fu_759_p2;
reg   [31:0] A_13_reg_1382;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] C_19_fu_765_p3;
reg   [31:0] C_19_reg_1390;
wire   [31:0] add_ln118_16_fu_794_p2;
reg   [31:0] add_ln118_16_reg_1397;
wire   [31:0] temp_10_fu_831_p2;
reg   [31:0] temp_10_reg_1402;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [26:0] trunc_ln118_10_fu_836_p1;
reg   [26:0] trunc_ln118_10_reg_1408;
reg   [4:0] lshr_ln118_s_reg_1413;
wire   [1:0] trunc_ln118_13_fu_850_p1;
reg   [1:0] trunc_ln118_13_reg_1418;
reg   [29:0] lshr_ln118_12_reg_1423;
wire   [31:0] add_ln118_22_fu_876_p2;
reg   [31:0] add_ln118_22_reg_1428;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [31:0] C_20_fu_893_p3;
reg   [31:0] C_20_reg_1433;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] temp_11_fu_927_p2;
reg   [31:0] temp_11_reg_1439;
wire   [26:0] trunc_ln118_12_fu_932_p1;
reg   [26:0] trunc_ln118_12_reg_1445;
reg   [4:0] lshr_ln118_11_reg_1450;
wire   [31:0] add_ln118_26_fu_985_p2;
reg   [31:0] add_ln118_26_reg_1455;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [26:0] trunc_ln118_14_fu_1047_p1;
reg   [26:0] trunc_ln118_14_reg_1460;
wire    ap_block_pp0_stage13_11001;
reg   [4:0] lshr_ln118_13_reg_1465;
wire   [31:0] or_ln118_13_fu_1077_p2;
reg   [31:0] or_ln118_13_reg_1470;
wire   [31:0] add_ln118_30_fu_1110_p2;
reg   [31:0] add_ln118_30_reg_1475;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln100_fu_314_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln100_1_fu_338_p1;
wire   [63:0] zext_ln116_fu_395_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln100_2_fu_408_p1;
reg   [31:0] E_1_fu_96;
wire   [31:0] C_21_fu_1002_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [31:0] E_12_fu_100;
wire   [31:0] C_22_fu_1041_p3;
reg   [31:0] E_13_fu_104;
wire   [31:0] C_9_fu_960_p3;
reg   [31:0] B_1_fu_108;
wire   [31:0] temp_12_fu_1036_p2;
reg   [31:0] B_11_fu_112;
wire   [31:0] temp_13_fu_1119_p2;
reg   [4:0] i_1_fu_116;
wire   [4:0] add_ln116_fu_376_p2;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage8_01001;
reg    W_ce1_local;
reg   [5:0] W_address1_local;
reg    W_ce0_local;
reg   [5:0] W_address0_local;
reg    W_1_ce1_local;
reg   [5:0] W_1_address1_local;
reg    W_1_ce0_local;
reg   [5:0] W_1_address0_local;
wire   [3:0] lshr_ln2_fu_304_p4;
wire   [2:0] tmp_8_fu_320_p4;
wire   [3:0] or_ln1_fu_330_p3;
wire   [4:0] or_ln2_fu_354_p3;
wire   [3:0] or_ln100_1_fu_387_p4;
wire   [3:0] or_ln100_2_fu_401_p3;
wire   [31:0] xor_ln118_fu_443_p2;
wire   [31:0] and_ln118_1_fu_455_p2;
wire   [31:0] and_ln118_fu_449_p2;
wire   [26:0] trunc_ln118_fu_429_p1;
wire   [4:0] lshr_ln3_fu_433_p4;
wire   [31:0] or_ln118_1_fu_467_p3;
wire   [31:0] add_ln118_1_fu_475_p2;
wire   [31:0] or_ln118_fu_461_p2;
wire   [31:0] add_ln118_fu_487_p2;
wire   [31:0] add_ln118_2_fu_481_p2;
wire   [1:0] trunc_ln118_1_fu_499_p1;
wire   [29:0] lshr_ln118_1_fu_503_p4;
wire   [31:0] xor_ln118_1_fu_535_p2;
wire   [31:0] and_ln118_2_fu_541_p2;
wire   [31:0] and_ln118_3_fu_547_p2;
wire   [1:0] trunc_ln118_3_fu_559_p1;
wire   [29:0] lshr_ln118_3_fu_563_p4;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln118_4_fu_595_p3;
wire   [31:0] add_ln118_5_fu_601_p2;
wire   [31:0] xor_ln118_2_fu_612_p2;
wire   [31:0] and_ln118_4_fu_617_p2;
wire   [31:0] and_ln118_5_fu_621_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln118_4_fu_632_p2;
wire   [31:0] temp_9_fu_636_p2;
wire   [31:0] xor_ln118_3_fu_661_p2;
wire   [31:0] and_ln118_6_fu_667_p2;
wire   [31:0] and_ln118_7_fu_673_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln118_7_fu_698_p3;
wire   [31:0] add_ln118_9_fu_704_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln118_8_fu_715_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln118_s_fu_738_p3;
wire   [31:0] add_ln118_13_fu_744_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln118_12_fu_755_p2;
wire   [26:0] trunc_ln118_8_fu_772_p1;
wire   [4:0] lshr_ln118_8_fu_776_p4;
wire   [31:0] or_ln118_8_fu_786_p3;
wire    ap_block_pp0_stage9;
wire   [31:0] xor_ln118_4_fu_800_p2;
wire   [31:0] and_ln118_8_fu_805_p2;
wire   [31:0] and_ln118_9_fu_809_p2;
wire   [31:0] add_ln118_17_fu_820_p2;
wire   [31:0] or_ln118_6_fu_814_p2;
wire   [31:0] add_ln118_18_fu_825_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln118_10_fu_864_p3;
wire   [31:0] add_ln118_21_fu_870_p2;
wire    ap_block_pp0_stage11;
wire   [1:0] trunc_ln118_9_fu_881_p1;
wire   [29:0] lshr_ln118_9_fu_884_p4;
wire   [31:0] xor_ln118_5_fu_901_p2;
wire   [31:0] and_ln118_10_fu_906_p2;
wire   [31:0] and_ln118_11_fu_911_p2;
wire   [31:0] or_ln118_9_fu_916_p2;
wire   [31:0] add_ln118_20_fu_922_p2;
wire   [1:0] trunc_ln118_15_fu_946_p1;
wire   [29:0] lshr_ln118_14_fu_950_p4;
wire    ap_block_pp0_stage12;
wire   [31:0] or_ln118_12_fu_973_p3;
wire   [31:0] add_ln118_25_fu_979_p2;
wire    ap_block_pp0_stage13;
wire   [1:0] trunc_ln118_11_fu_990_p1;
wire   [29:0] lshr_ln118_10_fu_993_p4;
wire   [31:0] xor_ln118_6_fu_1010_p2;
wire   [31:0] and_ln118_12_fu_1015_p2;
wire   [31:0] and_ln118_13_fu_1020_p2;
wire   [31:0] or_ln118_11_fu_1025_p2;
wire   [31:0] add_ln118_24_fu_1031_p2;
wire   [31:0] xor_ln118_7_fu_1061_p2;
wire   [31:0] and_ln118_14_fu_1066_p2;
wire   [31:0] and_ln118_15_fu_1071_p2;
wire   [31:0] or_ln118_14_fu_1098_p3;
wire   [31:0] add_ln118_29_fu_1104_p2;
wire   [31:0] add_ln118_28_fu_1115_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [13:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_1_fu_96 = 32'd0;
#0 E_12_fu_100 = 32'd0;
#0 E_13_fu_104 = 32'd0;
#0 B_1_fu_108 = 32'd0;
#0 B_11_fu_112 = 32'd0;
#0 i_1_fu_116 = 5'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
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
        end else if (((1'b0 == ap_block_pp0_stage13_subdone) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_11_fu_112 <= A;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_11_fu_112 <= temp_13_fu_1119_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_108 <= B;
    end else if (((icmp_ln116_reg_1197 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        B_1_fu_108 <= temp_12_fu_1036_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_12_fu_100 <= D;
    end else if (((icmp_ln116_reg_1197 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        E_12_fu_100 <= C_22_fu_1041_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_13_fu_104 <= C;
    end else if (((icmp_ln116_reg_1197 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        E_13_fu_104 <= C_9_fu_960_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_96 <= E;
    end else if (((icmp_ln116_reg_1197 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        E_1_fu_96 <= C_21_fu_1002_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln116_fu_362_p2 == 1'd1))) begin
            i_1_fu_116 <= add_ln116_fu_376_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_116 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_13_reg_1382 <= A_13_fu_759_p2;
        C_19_reg_1390 <= C_19_fu_765_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        B_21_reg_1358 <= B_21_fu_719_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_17_reg_1246 <= E_13_fu_104;
        C_18_reg_1257 <= C_18_fu_513_p3;
        D_12_reg_1241 <= E_12_fu_100;
        lshr_ln118_2_reg_1268 <= {{temp_fu_493_p2[31:27]}};
        lshr_ln118_5_reg_1291 <= {{temp_fu_493_p2[31:2]}};
        or_ln118_2_reg_1273 <= or_ln118_2_fu_553_p2;
        temp_reg_1251 <= temp_fu_493_p2;
        trunc_ln118_2_reg_1263 <= trunc_ln118_2_fu_521_p1;
        trunc_ln118_5_reg_1286 <= trunc_ln118_5_fu_581_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        C_20_reg_1433 <= C_20_fu_893_p3;
        lshr_ln118_11_reg_1450 <= {{temp_11_fu_927_p2[31:27]}};
        temp_11_reg_1439 <= temp_11_fu_927_p2;
        trunc_ln118_12_reg_1445 <= trunc_ln118_12_fu_932_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        D_13_reg_1331 <= D_13_fu_655_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_23_reg_1278 <= E_23_fu_573_p3;
        W_1_load_5_reg_1296 <= W_1_q1;
        W_1_load_6_reg_1306 <= W_1_q0;
        W_load_6_reg_1301 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_load_4_reg_1216 <= W_1_q0;
        W_1_load_reg_1206 <= W_1_q1;
        W_load_4_reg_1211 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln118_10_reg_1353 <= add_ln118_10_fu_710_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln118_14_reg_1377 <= add_ln118_14_fu_750_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln118_16_reg_1397 <= add_ln118_16_fu_794_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln118_22_reg_1428 <= add_ln118_22_fu_876_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln118_26_reg_1455 <= add_ln118_26_fu_985_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_30_reg_1475 <= add_ln118_30_fu_1110_p2;
        icmp_ln116_reg_1197 <= icmp_ln116_fu_362_p2;
        tmp_reg_1201 <= ap_sig_allocacmp_i[32'd1];
        tmp_s_reg_1191 <= {{ap_sig_allocacmp_i[4:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln118_6_reg_1311 <= add_ln118_6_fu_607_p2;
        or_ln118_3_reg_1316 <= or_ln118_3_fu_626_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln118_12_reg_1423 <= {{temp_10_fu_831_p2[31:2]}};
        lshr_ln118_s_reg_1413 <= {{temp_10_fu_831_p2[31:27]}};
        temp_10_reg_1402 <= temp_10_fu_831_p2;
        trunc_ln118_10_reg_1408 <= trunc_ln118_10_fu_836_p1;
        trunc_ln118_13_reg_1418 <= trunc_ln118_13_fu_850_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        lshr_ln118_13_reg_1465 <= {{temp_12_fu_1036_p2[31:27]}};
        or_ln118_13_reg_1470 <= or_ln118_13_fu_1077_p2;
        trunc_ln118_14_reg_1460 <= trunc_ln118_14_fu_1047_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln118_4_reg_1326 <= {{temp_9_fu_636_p2[31:27]}};
        lshr_ln118_7_reg_1348 <= {{temp_9_fu_636_p2[31:2]}};
        or_ln118_5_reg_1338 <= or_ln118_5_fu_678_p2;
        trunc_ln118_4_reg_1321 <= trunc_ln118_4_fu_641_p1;
        trunc_ln118_7_reg_1343 <= trunc_ln118_7_fu_684_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln118_6_reg_1372 <= {{B_21_fu_719_p2[31:27]}};
        trunc_ln118_6_reg_1367 <= trunc_ln118_6_fu_724_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_267 <= W_q1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1197 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        A_62_out_ap_vld = 1'b1;
    end else begin
        A_62_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1197 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        B_59_out_ap_vld = 1'b1;
    end else begin
        B_59_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1197 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_104_out_ap_vld = 1'b1;
    end else begin
        C_104_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1197 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        D_63_out_ap_vld = 1'b1;
    end else begin
        D_63_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1197 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_59_out_ap_vld = 1'b1;
    end else begin
        E_59_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_1_address0_local = zext_ln100_2_fu_408_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_1_address0_local = zext_ln100_1_fu_338_p1;
        end else begin
            W_1_address0_local = 'bx;
        end
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_1_address1_local = zext_ln116_fu_395_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_1_address1_local = zext_ln100_fu_314_p1;
        end else begin
            W_1_address1_local = 'bx;
        end
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_address0_local = zext_ln100_2_fu_408_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_address0_local = zext_ln100_1_fu_338_p1;
        end else begin
            W_address0_local = 'bx;
        end
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_address1_local = zext_ln116_fu_395_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_address1_local = zext_ln100_fu_314_p1;
        end else begin
            W_address1_local = 'bx;
        end
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_1197 == 1'd0) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((1'b0 == ap_block_pp0_stage13_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 5'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_116;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to1 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_13_fu_759_p2 = (add_ln118_14_reg_1377 + add_ln118_12_fu_755_p2);
assign A_62_out = A_13_fu_759_p2;
assign B_21_fu_719_p2 = (add_ln118_10_reg_1353 + add_ln118_8_fu_715_p2);
assign B_59_out = B_21_reg_1358;
assign C_104_out = {{trunc_ln118_7_reg_1343}, {lshr_ln118_7_reg_1348}};
assign C_18_fu_513_p3 = {{trunc_ln118_1_fu_499_p1}, {lshr_ln118_1_fu_503_p4}};
assign C_19_fu_765_p3 = {{trunc_ln118_7_reg_1343}, {lshr_ln118_7_reg_1348}};
assign C_20_fu_893_p3 = {{trunc_ln118_9_fu_881_p1}, {lshr_ln118_9_fu_884_p4}};
assign C_21_fu_1002_p3 = {{trunc_ln118_11_fu_990_p1}, {lshr_ln118_10_fu_993_p4}};
assign C_22_fu_1041_p3 = {{trunc_ln118_13_reg_1418}, {lshr_ln118_12_reg_1423}};
assign C_9_fu_960_p3 = {{trunc_ln118_15_fu_946_p1}, {lshr_ln118_14_fu_950_p4}};
assign D_13_fu_655_p3 = {{trunc_ln118_5_reg_1286}, {lshr_ln118_5_reg_1291}};
assign D_63_out = D_13_reg_1331;
assign E_23_fu_573_p3 = {{trunc_ln118_3_fu_559_p1}, {lshr_ln118_3_fu_563_p4}};
assign E_59_out = E_23_reg_1278;
assign W_1_address0 = W_1_address0_local;
assign W_1_address1 = W_1_address1_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln116_fu_376_p2 = (ap_sig_allocacmp_i + 5'd8);
assign add_ln118_10_fu_710_p2 = (add_ln118_9_fu_704_p2 + C_17_reg_1246);
assign add_ln118_12_fu_755_p2 = (W_1_load_4_reg_1216 + or_ln118_5_reg_1338);
assign add_ln118_13_fu_744_p2 = (or_ln118_s_fu_738_p3 + 32'd1518500249);
assign add_ln118_14_fu_750_p2 = (add_ln118_13_fu_744_p2 + C_18_reg_1257);
assign add_ln118_16_fu_794_p2 = (or_ln118_8_fu_786_p3 + reg_267);
assign add_ln118_17_fu_820_p2 = (E_23_reg_1278 + 32'd1518500249);
assign add_ln118_18_fu_825_p2 = (add_ln118_17_fu_820_p2 + or_ln118_6_fu_814_p2);
assign add_ln118_1_fu_475_p2 = (or_ln118_1_fu_467_p3 + 32'd1518500249);
assign add_ln118_20_fu_922_p2 = (W_1_load_5_reg_1296 + or_ln118_9_fu_916_p2);
assign add_ln118_21_fu_870_p2 = (or_ln118_10_fu_864_p3 + 32'd1518500249);
assign add_ln118_22_fu_876_p2 = (add_ln118_21_fu_870_p2 + D_13_reg_1331);
assign add_ln118_24_fu_1031_p2 = (W_load_6_reg_1301 + or_ln118_11_fu_1025_p2);
assign add_ln118_25_fu_979_p2 = (or_ln118_12_fu_973_p3 + 32'd1518500249);
assign add_ln118_26_fu_985_p2 = (add_ln118_25_fu_979_p2 + C_19_reg_1390);
assign add_ln118_28_fu_1115_p2 = (W_1_load_6_reg_1306 + C_20_reg_1433);
assign add_ln118_29_fu_1104_p2 = (or_ln118_14_fu_1098_p3 + 32'd1518500249);
assign add_ln118_2_fu_481_p2 = (add_ln118_1_fu_475_p2 + E_1_fu_96);
assign add_ln118_30_fu_1110_p2 = (add_ln118_29_fu_1104_p2 + or_ln118_13_reg_1470);
assign add_ln118_4_fu_632_p2 = (W_1_load_reg_1206 + or_ln118_2_reg_1273);
assign add_ln118_5_fu_601_p2 = (or_ln118_4_fu_595_p3 + 32'd1518500249);
assign add_ln118_6_fu_607_p2 = (add_ln118_5_fu_601_p2 + D_12_reg_1241);
assign add_ln118_8_fu_715_p2 = (W_load_4_reg_1211 + or_ln118_3_reg_1316);
assign add_ln118_9_fu_704_p2 = (or_ln118_7_fu_698_p3 + 32'd1518500249);
assign add_ln118_fu_487_p2 = (or_ln118_fu_461_p2 + reg_267);
assign and_ln118_10_fu_906_p2 = (C_20_fu_893_p3 & A_13_reg_1382);
assign and_ln118_11_fu_911_p2 = (xor_ln118_5_fu_901_p2 & C_19_reg_1390);
assign and_ln118_12_fu_1015_p2 = (temp_10_reg_1402 & C_21_fu_1002_p3);
assign and_ln118_13_fu_1020_p2 = (xor_ln118_6_fu_1010_p2 & C_20_reg_1433);
assign and_ln118_14_fu_1066_p2 = (temp_11_reg_1439 & C_22_fu_1041_p3);
assign and_ln118_15_fu_1071_p2 = (xor_ln118_7_fu_1061_p2 & C_21_fu_1002_p3);
assign and_ln118_1_fu_455_p2 = (xor_ln118_fu_443_p2 & E_12_fu_100);
assign and_ln118_2_fu_541_p2 = (C_18_fu_513_p3 & B_11_fu_112);
assign and_ln118_3_fu_547_p2 = (xor_ln118_1_fu_535_p2 & E_13_fu_104);
assign and_ln118_4_fu_617_p2 = (temp_reg_1251 & E_23_reg_1278);
assign and_ln118_5_fu_621_p2 = (xor_ln118_2_fu_612_p2 & C_18_reg_1257);
assign and_ln118_6_fu_667_p2 = (temp_9_fu_636_p2 & D_13_fu_655_p3);
assign and_ln118_7_fu_673_p2 = (xor_ln118_3_fu_661_p2 & E_23_reg_1278);
assign and_ln118_8_fu_805_p2 = (C_19_reg_1390 & B_21_reg_1358);
assign and_ln118_9_fu_809_p2 = (xor_ln118_4_fu_800_p2 & D_13_reg_1331);
assign and_ln118_fu_449_p2 = (E_13_fu_104 & B_1_fu_108);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
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
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign icmp_ln116_fu_362_p2 = ((or_ln2_fu_354_p3 < 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_10_fu_993_p4 = {{A_13_reg_1382[31:2]}};
assign lshr_ln118_14_fu_950_p4 = {{temp_11_fu_927_p2[31:2]}};
assign lshr_ln118_1_fu_503_p4 = {{B_1_fu_108[31:2]}};
assign lshr_ln118_3_fu_563_p4 = {{B_11_fu_112[31:2]}};
assign lshr_ln118_8_fu_776_p4 = {{A_13_fu_759_p2[31:27]}};
assign lshr_ln118_9_fu_884_p4 = {{B_21_reg_1358[31:2]}};
assign lshr_ln2_fu_304_p4 = {{ap_sig_allocacmp_i[4:1]}};
assign lshr_ln3_fu_433_p4 = {{B_11_fu_112[31:27]}};
assign or_ln100_1_fu_387_p4 = {{{tmp_s_reg_1191}, {1'd1}}, {tmp_reg_1201}};
assign or_ln100_2_fu_401_p3 = {{tmp_s_reg_1191}, {2'd3}};
assign or_ln118_10_fu_864_p3 = {{trunc_ln118_10_reg_1408}, {lshr_ln118_s_reg_1413}};
assign or_ln118_11_fu_1025_p2 = (and_ln118_13_fu_1020_p2 | and_ln118_12_fu_1015_p2);
assign or_ln118_12_fu_973_p3 = {{trunc_ln118_12_reg_1445}, {lshr_ln118_11_reg_1450}};
assign or_ln118_13_fu_1077_p2 = (and_ln118_15_fu_1071_p2 | and_ln118_14_fu_1066_p2);
assign or_ln118_14_fu_1098_p3 = {{trunc_ln118_14_reg_1460}, {lshr_ln118_13_reg_1465}};
assign or_ln118_1_fu_467_p3 = {{trunc_ln118_fu_429_p1}, {lshr_ln3_fu_433_p4}};
assign or_ln118_2_fu_553_p2 = (and_ln118_3_fu_547_p2 | and_ln118_2_fu_541_p2);
assign or_ln118_3_fu_626_p2 = (and_ln118_5_fu_621_p2 | and_ln118_4_fu_617_p2);
assign or_ln118_4_fu_595_p3 = {{trunc_ln118_2_reg_1263}, {lshr_ln118_2_reg_1268}};
assign or_ln118_5_fu_678_p2 = (and_ln118_7_fu_673_p2 | and_ln118_6_fu_667_p2);
assign or_ln118_6_fu_814_p2 = (and_ln118_9_fu_809_p2 | and_ln118_8_fu_805_p2);
assign or_ln118_7_fu_698_p3 = {{trunc_ln118_4_reg_1321}, {lshr_ln118_4_reg_1326}};
assign or_ln118_8_fu_786_p3 = {{trunc_ln118_8_fu_772_p1}, {lshr_ln118_8_fu_776_p4}};
assign or_ln118_9_fu_916_p2 = (and_ln118_11_fu_911_p2 | and_ln118_10_fu_906_p2);
assign or_ln118_fu_461_p2 = (and_ln118_fu_449_p2 | and_ln118_1_fu_455_p2);
assign or_ln118_s_fu_738_p3 = {{trunc_ln118_6_reg_1367}, {lshr_ln118_6_reg_1372}};
assign or_ln1_fu_330_p3 = {{tmp_8_fu_320_p4}, {1'd1}};
assign or_ln2_fu_354_p3 = {{tmp_s_fu_344_p4}, {3'd4}};
assign temp_10_fu_831_p2 = (add_ln118_16_reg_1397 + add_ln118_18_fu_825_p2);
assign temp_11_fu_927_p2 = (add_ln118_22_reg_1428 + add_ln118_20_fu_922_p2);
assign temp_12_fu_1036_p2 = (add_ln118_26_reg_1455 + add_ln118_24_fu_1031_p2);
assign temp_13_fu_1119_p2 = (add_ln118_30_reg_1475 + add_ln118_28_fu_1115_p2);
assign temp_9_fu_636_p2 = (add_ln118_6_reg_1311 + add_ln118_4_fu_632_p2);
assign temp_fu_493_p2 = (add_ln118_fu_487_p2 + add_ln118_2_fu_481_p2);
assign tmp_8_fu_320_p4 = {{ap_sig_allocacmp_i[4:2]}};
assign tmp_s_fu_344_p4 = {{ap_sig_allocacmp_i[4:3]}};
assign trunc_ln118_10_fu_836_p1 = temp_10_fu_831_p2[26:0];
assign trunc_ln118_11_fu_990_p1 = A_13_reg_1382[1:0];
assign trunc_ln118_12_fu_932_p1 = temp_11_fu_927_p2[26:0];
assign trunc_ln118_13_fu_850_p1 = temp_10_fu_831_p2[1:0];
assign trunc_ln118_14_fu_1047_p1 = temp_12_fu_1036_p2[26:0];
assign trunc_ln118_15_fu_946_p1 = temp_11_fu_927_p2[1:0];
assign trunc_ln118_1_fu_499_p1 = B_1_fu_108[1:0];
assign trunc_ln118_2_fu_521_p1 = temp_fu_493_p2[26:0];
assign trunc_ln118_3_fu_559_p1 = B_11_fu_112[1:0];
assign trunc_ln118_4_fu_641_p1 = temp_9_fu_636_p2[26:0];
assign trunc_ln118_5_fu_581_p1 = temp_fu_493_p2[1:0];
assign trunc_ln118_6_fu_724_p1 = B_21_fu_719_p2[26:0];
assign trunc_ln118_7_fu_684_p1 = temp_9_fu_636_p2[1:0];
assign trunc_ln118_8_fu_772_p1 = A_13_fu_759_p2[26:0];
assign trunc_ln118_9_fu_881_p1 = B_21_reg_1358[1:0];
assign trunc_ln118_fu_429_p1 = B_11_fu_112[26:0];
assign xor_ln118_1_fu_535_p2 = (32'd4294967295 ^ B_11_fu_112);
assign xor_ln118_2_fu_612_p2 = (temp_reg_1251 ^ 32'd4294967295);
assign xor_ln118_3_fu_661_p2 = (temp_9_fu_636_p2 ^ 32'd4294967295);
assign xor_ln118_4_fu_800_p2 = (32'd4294967295 ^ B_21_reg_1358);
assign xor_ln118_5_fu_901_p2 = (32'd4294967295 ^ A_13_reg_1382);
assign xor_ln118_6_fu_1010_p2 = (temp_10_reg_1402 ^ 32'd4294967295);
assign xor_ln118_7_fu_1061_p2 = (temp_11_reg_1439 ^ 32'd4294967295);
assign xor_ln118_fu_443_p2 = (32'd4294967295 ^ B_1_fu_108);
assign zext_ln100_1_fu_338_p1 = or_ln1_fu_330_p3;
assign zext_ln100_2_fu_408_p1 = or_ln100_2_fu_401_p3;
assign zext_ln100_fu_314_p1 = lshr_ln2_fu_304_p4;
assign zext_ln116_fu_395_p1 = or_ln100_1_fu_387_p4;
endmodule 