module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_address0,W_ce0,W_q0,W_8_address0,W_8_ce0,W_8_q0,W_1_address0,W_1_ce0,W_1_q0,W_9_address0,W_9_ce0,W_9_q0,W_2_address0,W_2_ce0,W_2_q0,W_10_address0,W_10_ce0,W_10_q0,W_3_address0,W_3_ce0,W_3_q0,W_11_address0,W_11_ce0,W_11_q0,W_4_address0,W_4_ce0,W_4_q0,W_12_address0,W_12_ce0,W_12_q0,W_5_address0,W_5_ce0,W_5_q0,W_13_address0,W_13_ce0,W_13_q0,W_6_address0,W_6_ce0,W_6_q0,W_14_address0,W_14_ce0,W_14_q0,W_7_address0,W_7_ce0,W_7_q0,W_15_address0,W_15_ce0,W_15_q0,E_59_out,E_59_out_ap_vld,B_59_out,B_59_out_ap_vld,D_63_out,D_63_out_ap_vld,A_62_out,A_62_out_ap_vld,C_104_out,C_104_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
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
output  [2:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [2:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [2:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [2:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [2:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [2:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [2:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [2:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [2:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [2:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [2:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [2:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [2:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [2:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [2:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [2:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
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
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln116_reg_1392;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] i_reg_1335;
wire   [0:0] icmp_ln118_fu_474_p2;
reg   [0:0] icmp_ln118_reg_1350;
wire   [0:0] icmp_ln116_fu_498_p2;
reg   [31:0] D_12_reg_1436;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_17_reg_1441;
wire   [31:0] add_ln118_1_fu_547_p2;
reg   [31:0] add_ln118_1_reg_1447;
wire   [31:0] add_ln118_fu_553_p2;
reg   [31:0] add_ln118_reg_1452;
wire   [1:0] trunc_ln118_1_fu_559_p1;
reg   [1:0] trunc_ln118_1_reg_1457;
reg   [29:0] lshr_ln118_1_reg_1462;
wire   [31:0] add_ln118_5_fu_580_p2;
reg   [31:0] add_ln118_5_reg_1467;
wire   [31:0] add_ln118_9_fu_593_p2;
reg   [31:0] add_ln118_9_reg_1472;
wire   [31:0] add_ln118_13_fu_606_p2;
reg   [31:0] add_ln118_13_reg_1477;
wire   [31:0] add_ln118_17_fu_619_p2;
reg   [31:0] add_ln118_17_reg_1482;
wire   [31:0] add_ln118_21_fu_632_p2;
reg   [31:0] add_ln118_21_reg_1487;
wire   [31:0] add_ln118_25_fu_645_p2;
reg   [31:0] add_ln118_25_reg_1492;
wire   [31:0] select_ln118_7_fu_651_p3;
reg   [31:0] select_ln118_7_reg_1497;
wire   [31:0] temp_fu_688_p2;
reg   [31:0] temp_reg_1502;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_18_fu_693_p3;
reg   [31:0] C_18_reg_1508;
wire   [31:0] add_ln118_4_fu_744_p2;
reg   [31:0] add_ln118_4_reg_1514;
wire   [1:0] trunc_ln118_3_fu_750_p1;
reg   [1:0] trunc_ln118_3_reg_1519;
reg   [29:0] lshr_ln118_3_reg_1524;
wire   [1:0] trunc_ln118_5_fu_764_p1;
reg   [1:0] trunc_ln118_5_reg_1529;
reg   [29:0] lshr_ln118_5_reg_1534;
wire   [31:0] temp_9_fu_782_p2;
reg   [31:0] temp_9_reg_1539;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] E_23_fu_787_p3;
reg   [31:0] E_23_reg_1545;
wire   [31:0] add_ln118_8_fu_836_p2;
reg   [31:0] add_ln118_8_reg_1552;
wire   [1:0] trunc_ln118_7_fu_842_p1;
reg   [1:0] trunc_ln118_7_reg_1557;
reg   [29:0] lshr_ln118_7_reg_1562;
wire   [31:0] B_21_fu_860_p2;
reg   [31:0] B_21_reg_1567;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] D_13_fu_865_p3;
reg   [31:0] D_13_reg_1576;
wire   [31:0] add_ln118_12_fu_914_p2;
reg   [31:0] add_ln118_12_reg_1583;
wire   [31:0] A_13_fu_924_p2;
reg   [31:0] A_13_reg_1588;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] C_19_fu_930_p3;
reg   [31:0] C_19_reg_1594;
wire   [31:0] add_ln118_16_fu_980_p2;
reg   [31:0] add_ln118_16_reg_1600;
wire   [31:0] C_21_fu_1000_p3;
reg   [31:0] C_21_reg_1605;
wire   [31:0] temp_10_fu_1017_p2;
reg   [31:0] temp_10_reg_1611;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] C_20_fu_1034_p3;
reg   [31:0] C_20_reg_1617;
wire   [31:0] add_ln118_20_fu_1085_p2;
reg   [31:0] add_ln118_20_reg_1623;
wire   [31:0] C_22_fu_1105_p3;
reg   [31:0] C_22_reg_1628;
wire   [31:0] add_ln118_24_fu_1169_p2;
reg   [31:0] add_ln118_24_reg_1633;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] or_ln118_13_fu_1191_p2;
reg   [31:0] or_ln118_13_reg_1638;
wire   [26:0] trunc_ln118_14_fu_1233_p1;
reg   [26:0] trunc_ln118_14_reg_1643;
wire    ap_block_pp0_stage8_11001;
reg   [4:0] lshr_ln118_13_reg_1648;
wire   [31:0] add_ln118_30_fu_1273_p2;
reg   [31:0] add_ln118_30_reg_1653;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln100_fu_454_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_1_fu_112;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_12_fu_116;
reg   [31:0] E_13_fu_120;
wire   [31:0] C_9_fu_1211_p3;
reg   [31:0] B_1_fu_124;
wire   [31:0] temp_12_fu_1228_p2;
reg   [31:0] B_11_fu_128;
wire   [31:0] temp_13_fu_1283_p2;
wire    ap_block_pp0_stage2;
reg   [4:0] i_1_fu_132;
wire   [4:0] add_ln116_fu_1247_p2;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage5_01001;
reg    W_ce0_local;
reg    W_8_ce0_local;
reg    W_1_ce0_local;
reg    W_9_ce0_local;
reg    W_2_ce0_local;
reg    W_10_ce0_local;
reg    W_3_ce0_local;
reg    W_11_ce0_local;
reg    W_4_ce0_local;
reg    W_12_ce0_local;
reg    W_5_ce0_local;
reg    W_13_ce0_local;
reg    W_6_ce0_local;
reg    W_14_ce0_local;
reg    W_7_ce0_local;
reg    W_15_ce0_local;
wire   [0:0] tmp_fu_446_p3;
wire   [3:0] trunc_ln8_fu_442_p1;
wire   [1:0] tmp_s_fu_480_p4;
wire   [4:0] or_ln_fu_490_p3;
wire   [31:0] xor_ln118_fu_523_p2;
wire   [31:0] and_ln118_1_fu_535_p2;
wire   [31:0] and_ln118_fu_529_p2;
wire   [31:0] select_ln118_fu_516_p3;
wire   [31:0] or_ln118_fu_541_p2;
wire   [31:0] select_ln118_1_fu_573_p3;
wire   [31:0] select_ln118_2_fu_586_p3;
wire   [31:0] select_ln118_3_fu_599_p3;
wire   [31:0] select_ln118_4_fu_612_p3;
wire   [31:0] select_ln118_5_fu_625_p3;
wire   [31:0] select_ln118_6_fu_638_p3;
wire   [26:0] trunc_ln118_fu_661_p1;
wire   [4:0] lshr_ln3_fu_665_p4;
wire   [31:0] or_ln118_1_fu_675_p3;
wire   [31:0] add_ln118_2_fu_683_p2;
wire   [31:0] xor_ln118_1_fu_713_p2;
wire   [31:0] and_ln118_2_fu_719_p2;
wire   [31:0] and_ln118_3_fu_725_p2;
wire   [26:0] trunc_ln118_2_fu_699_p1;
wire   [4:0] lshr_ln118_2_fu_703_p4;
wire   [31:0] or_ln118_4_fu_736_p3;
wire   [31:0] or_ln118_2_fu_730_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln118_6_fu_778_p2;
wire   [31:0] xor_ln118_2_fu_807_p2;
wire   [31:0] and_ln118_4_fu_812_p2;
wire   [31:0] and_ln118_5_fu_817_p2;
wire   [26:0] trunc_ln118_4_fu_793_p1;
wire   [4:0] lshr_ln118_4_fu_797_p4;
wire   [31:0] or_ln118_7_fu_828_p3;
wire   [31:0] or_ln118_3_fu_822_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln118_10_fu_856_p2;
wire   [31:0] xor_ln118_3_fu_885_p2;
wire   [31:0] and_ln118_6_fu_890_p2;
wire   [31:0] and_ln118_7_fu_895_p2;
wire   [26:0] trunc_ln118_6_fu_871_p1;
wire   [4:0] lshr_ln118_6_fu_875_p4;
wire   [31:0] or_ln118_s_fu_906_p3;
wire   [31:0] or_ln118_5_fu_900_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] add_ln118_14_fu_920_p2;
wire   [31:0] xor_ln118_4_fu_951_p2;
wire   [31:0] and_ln118_8_fu_956_p2;
wire   [31:0] and_ln118_9_fu_961_p2;
wire   [26:0] trunc_ln118_8_fu_937_p1;
wire   [4:0] lshr_ln118_8_fu_941_p4;
wire   [31:0] or_ln118_8_fu_972_p3;
wire   [31:0] or_ln118_6_fu_966_p2;
wire   [1:0] trunc_ln118_11_fu_986_p1;
wire   [29:0] lshr_ln118_10_fu_990_p4;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln118_18_fu_1013_p2;
wire   [1:0] trunc_ln118_9_fu_1022_p1;
wire   [29:0] lshr_ln118_9_fu_1025_p4;
wire   [31:0] xor_ln118_5_fu_1056_p2;
wire   [31:0] and_ln118_10_fu_1061_p2;
wire   [31:0] and_ln118_11_fu_1066_p2;
wire   [26:0] trunc_ln118_10_fu_1042_p1;
wire   [4:0] lshr_ln118_s_fu_1046_p4;
wire   [31:0] or_ln118_10_fu_1077_p3;
wire   [31:0] or_ln118_9_fu_1071_p2;
wire   [1:0] trunc_ln118_13_fu_1091_p1;
wire   [29:0] lshr_ln118_12_fu_1095_p4;
wire    ap_block_pp0_stage7;
wire   [31:0] add_ln118_22_fu_1118_p2;
wire   [31:0] temp_11_fu_1122_p2;
wire   [31:0] xor_ln118_6_fu_1141_p2;
wire   [31:0] and_ln118_12_fu_1146_p2;
wire   [31:0] and_ln118_13_fu_1150_p2;
wire   [26:0] trunc_ln118_12_fu_1127_p1;
wire   [4:0] lshr_ln118_11_fu_1131_p4;
wire   [31:0] or_ln118_12_fu_1161_p3;
wire   [31:0] or_ln118_11_fu_1155_p2;
wire   [31:0] xor_ln118_7_fu_1175_p2;
wire   [31:0] and_ln118_14_fu_1181_p2;
wire   [31:0] and_ln118_15_fu_1186_p2;
wire   [1:0] trunc_ln118_15_fu_1197_p1;
wire   [29:0] lshr_ln118_14_fu_1201_p4;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln118_26_fu_1224_p2;
wire   [31:0] or_ln118_14_fu_1262_p3;
wire   [31:0] add_ln118_29_fu_1268_p2;
wire   [31:0] add_ln118_28_fu_1279_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_1_fu_112 = 32'd0;
#0 E_12_fu_116 = 32'd0;
#0 E_13_fu_120 = 32'd0;
#0 B_1_fu_124 = 32'd0;
#0 B_11_fu_128 = 32'd0;
#0 i_1_fu_132 = 5'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
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
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_11_fu_128 <= A;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_11_fu_128 <= temp_13_fu_1283_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_124 <= B;
    end else if (((icmp_ln116_reg_1392 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        B_1_fu_124 <= temp_12_fu_1228_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_12_fu_116 <= D;
    end else if (((icmp_ln116_reg_1392 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        E_12_fu_116 <= C_22_fu_1105_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_13_fu_120 <= C;
    end else if (((icmp_ln116_reg_1392 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        E_13_fu_120 <= C_9_fu_1211_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_112 <= E;
    end else if (((icmp_ln116_reg_1392 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_1_fu_112 <= C_21_fu_1000_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_132 <= 5'd0;
    end else if (((icmp_ln116_reg_1392 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        i_1_fu_132 <= add_ln116_fu_1247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_13_reg_1588 <= A_13_fu_924_p2;
        C_19_reg_1594 <= C_19_fu_930_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_21_reg_1567 <= B_21_fu_860_p2;
        D_13_reg_1576 <= D_13_fu_865_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_17_reg_1441 <= E_13_fu_120;
        D_12_reg_1436 <= E_12_fu_116;
        add_ln118_13_reg_1477 <= add_ln118_13_fu_606_p2;
        add_ln118_17_reg_1482 <= add_ln118_17_fu_619_p2;
        add_ln118_1_reg_1447 <= add_ln118_1_fu_547_p2;
        add_ln118_21_reg_1487 <= add_ln118_21_fu_632_p2;
        add_ln118_25_reg_1492 <= add_ln118_25_fu_645_p2;
        add_ln118_5_reg_1467 <= add_ln118_5_fu_580_p2;
        add_ln118_9_reg_1472 <= add_ln118_9_fu_593_p2;
        add_ln118_reg_1452 <= add_ln118_fu_553_p2;
        lshr_ln118_1_reg_1462 <= {{B_1_fu_124[31:2]}};
        select_ln118_7_reg_1497 <= select_ln118_7_fu_651_p3;
        trunc_ln118_1_reg_1457 <= trunc_ln118_1_fu_559_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_18_reg_1508 <= C_18_fu_693_p3;
        add_ln118_4_reg_1514 <= add_ln118_4_fu_744_p2;
        lshr_ln118_3_reg_1524 <= {{B_11_fu_128[31:2]}};
        lshr_ln118_5_reg_1534 <= {{temp_fu_688_p2[31:2]}};
        temp_reg_1502 <= temp_fu_688_p2;
        trunc_ln118_3_reg_1519 <= trunc_ln118_3_fu_750_p1;
        trunc_ln118_5_reg_1529 <= trunc_ln118_5_fu_764_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        C_20_reg_1617 <= C_20_fu_1034_p3;
        C_22_reg_1628 <= C_22_fu_1105_p3;
        add_ln118_20_reg_1623 <= add_ln118_20_fu_1085_p2;
        temp_10_reg_1611 <= temp_10_fu_1017_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_21_reg_1605 <= C_21_fu_1000_p3;
        add_ln118_16_reg_1600 <= add_ln118_16_fu_980_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_23_reg_1545 <= E_23_fu_787_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln118_12_reg_1583 <= add_ln118_12_fu_914_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln118_24_reg_1633 <= add_ln118_24_fu_1169_p2;
        or_ln118_13_reg_1638 <= or_ln118_13_fu_1191_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_30_reg_1653 <= add_ln118_30_fu_1273_p2;
        i_reg_1335 <= ap_sig_allocacmp_i;
        icmp_ln116_reg_1392 <= icmp_ln116_fu_498_p2;
        icmp_ln118_reg_1350 <= icmp_ln118_fu_474_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln118_8_reg_1552 <= add_ln118_8_fu_836_p2;
        lshr_ln118_7_reg_1562 <= {{temp_9_fu_782_p2[31:2]}};
        temp_9_reg_1539 <= temp_9_fu_782_p2;
        trunc_ln118_7_reg_1557 <= trunc_ln118_7_fu_842_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        lshr_ln118_13_reg_1648 <= {{temp_12_fu_1228_p2[31:27]}};
        trunc_ln118_14_reg_1643 <= trunc_ln118_14_fu_1233_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1392 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_62_out_ap_vld = 1'b1;
    end else begin
        A_62_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1392 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_59_out_ap_vld = 1'b1;
    end else begin
        B_59_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1392 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_104_out_ap_vld = 1'b1;
    end else begin
        C_104_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1392 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        D_63_out_ap_vld = 1'b1;
    end else begin
        D_63_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1392 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_59_out_ap_vld = 1'b1;
    end else begin
        E_59_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_1392 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 5'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_132;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_13_fu_924_p2 = (add_ln118_12_reg_1583 + add_ln118_14_fu_920_p2);
assign A_62_out = A_13_fu_924_p2;
assign B_21_fu_860_p2 = (add_ln118_8_reg_1552 + add_ln118_10_fu_856_p2);
assign B_59_out = B_21_reg_1567;
assign C_104_out = C_19_fu_930_p3;
assign C_18_fu_693_p3 = {{trunc_ln118_1_reg_1457}, {lshr_ln118_1_reg_1462}};
assign C_19_fu_930_p3 = {{trunc_ln118_7_reg_1557}, {lshr_ln118_7_reg_1562}};
assign C_20_fu_1034_p3 = {{trunc_ln118_9_fu_1022_p1}, {lshr_ln118_9_fu_1025_p4}};
assign C_21_fu_1000_p3 = {{trunc_ln118_11_fu_986_p1}, {lshr_ln118_10_fu_990_p4}};
assign C_22_fu_1105_p3 = {{trunc_ln118_13_fu_1091_p1}, {lshr_ln118_12_fu_1095_p4}};
assign C_9_fu_1211_p3 = {{trunc_ln118_15_fu_1197_p1}, {lshr_ln118_14_fu_1201_p4}};
assign D_13_fu_865_p3 = {{trunc_ln118_5_reg_1529}, {lshr_ln118_5_reg_1534}};
assign D_63_out = D_13_reg_1576;
assign E_23_fu_787_p3 = {{trunc_ln118_3_reg_1519}, {lshr_ln118_3_reg_1524}};
assign E_59_out = E_23_reg_1545;
assign W_10_address0 = zext_ln100_fu_454_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_454_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_454_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_454_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_454_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_454_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_1_address0 = zext_ln100_fu_454_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_454_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_454_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_454_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_454_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_454_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_454_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_454_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_454_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_fu_454_p1;
assign W_ce0 = W_ce0_local;
assign add_ln116_fu_1247_p2 = (i_reg_1335 + 5'd8);
assign add_ln118_10_fu_856_p2 = (add_ln118_9_reg_1472 + C_17_reg_1441);
assign add_ln118_12_fu_914_p2 = (or_ln118_s_fu_906_p3 + or_ln118_5_fu_900_p2);
assign add_ln118_13_fu_606_p2 = (select_ln118_3_fu_599_p3 + 32'd1518500249);
assign add_ln118_14_fu_920_p2 = (add_ln118_13_reg_1477 + C_18_reg_1508);
assign add_ln118_16_fu_980_p2 = (or_ln118_8_fu_972_p3 + or_ln118_6_fu_966_p2);
assign add_ln118_17_fu_619_p2 = (select_ln118_4_fu_612_p3 + 32'd1518500249);
assign add_ln118_18_fu_1013_p2 = (add_ln118_17_reg_1482 + E_23_reg_1545);
assign add_ln118_1_fu_547_p2 = (select_ln118_fu_516_p3 + 32'd1518500249);
assign add_ln118_20_fu_1085_p2 = (or_ln118_10_fu_1077_p3 + or_ln118_9_fu_1071_p2);
assign add_ln118_21_fu_632_p2 = (select_ln118_5_fu_625_p3 + 32'd1518500249);
assign add_ln118_22_fu_1118_p2 = (add_ln118_21_reg_1487 + D_13_reg_1576);
assign add_ln118_24_fu_1169_p2 = (or_ln118_12_fu_1161_p3 + or_ln118_11_fu_1155_p2);
assign add_ln118_25_fu_645_p2 = (select_ln118_6_fu_638_p3 + 32'd1518500249);
assign add_ln118_26_fu_1224_p2 = (add_ln118_25_reg_1492 + C_19_reg_1594);
assign add_ln118_28_fu_1279_p2 = (C_20_reg_1617 + or_ln118_13_reg_1638);
assign add_ln118_29_fu_1268_p2 = (select_ln118_7_reg_1497 + 32'd1518500249);
assign add_ln118_2_fu_683_p2 = (add_ln118_1_reg_1447 + or_ln118_1_fu_675_p3);
assign add_ln118_30_fu_1273_p2 = (or_ln118_14_fu_1262_p3 + add_ln118_29_fu_1268_p2);
assign add_ln118_4_fu_744_p2 = (or_ln118_4_fu_736_p3 + or_ln118_2_fu_730_p2);
assign add_ln118_5_fu_580_p2 = (select_ln118_1_fu_573_p3 + 32'd1518500249);
assign add_ln118_6_fu_778_p2 = (add_ln118_5_reg_1467 + D_12_reg_1436);
assign add_ln118_8_fu_836_p2 = (or_ln118_7_fu_828_p3 + or_ln118_3_fu_822_p2);
assign add_ln118_9_fu_593_p2 = (select_ln118_2_fu_586_p3 + 32'd1518500249);
assign add_ln118_fu_553_p2 = (or_ln118_fu_541_p2 + E_1_fu_112);
assign and_ln118_10_fu_1061_p2 = (C_20_fu_1034_p3 & A_13_reg_1588);
assign and_ln118_11_fu_1066_p2 = (xor_ln118_5_fu_1056_p2 & C_19_reg_1594);
assign and_ln118_12_fu_1146_p2 = (temp_10_reg_1611 & C_21_reg_1605);
assign and_ln118_13_fu_1150_p2 = (xor_ln118_6_fu_1141_p2 & C_20_reg_1617);
assign and_ln118_14_fu_1181_p2 = (temp_11_fu_1122_p2 & C_22_reg_1628);
assign and_ln118_15_fu_1186_p2 = (xor_ln118_7_fu_1175_p2 & C_21_reg_1605);
assign and_ln118_1_fu_535_p2 = (xor_ln118_fu_523_p2 & E_12_fu_116);
assign and_ln118_2_fu_719_p2 = (C_18_fu_693_p3 & B_11_fu_128);
assign and_ln118_3_fu_725_p2 = (xor_ln118_1_fu_713_p2 & C_17_reg_1441);
assign and_ln118_4_fu_812_p2 = (temp_reg_1502 & E_23_fu_787_p3);
assign and_ln118_5_fu_817_p2 = (xor_ln118_2_fu_807_p2 & C_18_reg_1508);
assign and_ln118_6_fu_890_p2 = (temp_9_reg_1539 & D_13_fu_865_p3);
assign and_ln118_7_fu_895_p2 = (xor_ln118_3_fu_885_p2 & E_23_reg_1545);
assign and_ln118_8_fu_956_p2 = (C_19_fu_930_p3 & B_21_reg_1567);
assign and_ln118_9_fu_961_p2 = (xor_ln118_4_fu_951_p2 & D_13_reg_1576);
assign and_ln118_fu_529_p2 = (E_13_fu_120 & B_1_fu_124);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
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
assign ap_block_pp0_stage5_01001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign icmp_ln116_fu_498_p2 = ((or_ln_fu_490_p3 < 5'd20) ? 1'b1 : 1'b0);
assign icmp_ln118_fu_474_p2 = ((trunc_ln8_fu_442_p1 != 4'd0) ? 1'b1 : 1'b0);
assign lshr_ln118_10_fu_990_p4 = {{A_13_fu_924_p2[31:2]}};
assign lshr_ln118_11_fu_1131_p4 = {{temp_11_fu_1122_p2[31:27]}};
assign lshr_ln118_12_fu_1095_p4 = {{temp_10_fu_1017_p2[31:2]}};
assign lshr_ln118_14_fu_1201_p4 = {{temp_11_fu_1122_p2[31:2]}};
assign lshr_ln118_2_fu_703_p4 = {{temp_fu_688_p2[31:27]}};
assign lshr_ln118_4_fu_797_p4 = {{temp_9_fu_782_p2[31:27]}};
assign lshr_ln118_6_fu_875_p4 = {{B_21_fu_860_p2[31:27]}};
assign lshr_ln118_8_fu_941_p4 = {{A_13_fu_924_p2[31:27]}};
assign lshr_ln118_9_fu_1025_p4 = {{B_21_reg_1567[31:2]}};
assign lshr_ln118_s_fu_1046_p4 = {{temp_10_fu_1017_p2[31:27]}};
assign lshr_ln3_fu_665_p4 = {{B_11_fu_128[31:27]}};
assign or_ln118_10_fu_1077_p3 = {{trunc_ln118_10_fu_1042_p1}, {lshr_ln118_s_fu_1046_p4}};
assign or_ln118_11_fu_1155_p2 = (and_ln118_13_fu_1150_p2 | and_ln118_12_fu_1146_p2);
assign or_ln118_12_fu_1161_p3 = {{trunc_ln118_12_fu_1127_p1}, {lshr_ln118_11_fu_1131_p4}};
assign or_ln118_13_fu_1191_p2 = (and_ln118_15_fu_1186_p2 | and_ln118_14_fu_1181_p2);
assign or_ln118_14_fu_1262_p3 = {{trunc_ln118_14_reg_1643}, {lshr_ln118_13_reg_1648}};
assign or_ln118_1_fu_675_p3 = {{trunc_ln118_fu_661_p1}, {lshr_ln3_fu_665_p4}};
assign or_ln118_2_fu_730_p2 = (and_ln118_3_fu_725_p2 | and_ln118_2_fu_719_p2);
assign or_ln118_3_fu_822_p2 = (and_ln118_5_fu_817_p2 | and_ln118_4_fu_812_p2);
assign or_ln118_4_fu_736_p3 = {{trunc_ln118_2_fu_699_p1}, {lshr_ln118_2_fu_703_p4}};
assign or_ln118_5_fu_900_p2 = (and_ln118_7_fu_895_p2 | and_ln118_6_fu_890_p2);
assign or_ln118_6_fu_966_p2 = (and_ln118_9_fu_961_p2 | and_ln118_8_fu_956_p2);
assign or_ln118_7_fu_828_p3 = {{trunc_ln118_4_fu_793_p1}, {lshr_ln118_4_fu_797_p4}};
assign or_ln118_8_fu_972_p3 = {{trunc_ln118_8_fu_937_p1}, {lshr_ln118_8_fu_941_p4}};
assign or_ln118_9_fu_1071_p2 = (and_ln118_11_fu_1066_p2 | and_ln118_10_fu_1061_p2);
assign or_ln118_fu_541_p2 = (and_ln118_fu_529_p2 | and_ln118_1_fu_535_p2);
assign or_ln118_s_fu_906_p3 = {{trunc_ln118_6_fu_871_p1}, {lshr_ln118_6_fu_875_p4}};
assign or_ln_fu_490_p3 = {{tmp_s_fu_480_p4}, {3'd4}};
assign select_ln118_1_fu_573_p3 = ((icmp_ln118_reg_1350[0:0] == 1'b1) ? W_9_q0 : W_1_q0);
assign select_ln118_2_fu_586_p3 = ((icmp_ln118_reg_1350[0:0] == 1'b1) ? W_10_q0 : W_2_q0);
assign select_ln118_3_fu_599_p3 = ((icmp_ln118_reg_1350[0:0] == 1'b1) ? W_11_q0 : W_3_q0);
assign select_ln118_4_fu_612_p3 = ((icmp_ln118_reg_1350[0:0] == 1'b1) ? W_12_q0 : W_4_q0);
assign select_ln118_5_fu_625_p3 = ((icmp_ln118_reg_1350[0:0] == 1'b1) ? W_13_q0 : W_5_q0);
assign select_ln118_6_fu_638_p3 = ((icmp_ln118_reg_1350[0:0] == 1'b1) ? W_14_q0 : W_6_q0);
assign select_ln118_7_fu_651_p3 = ((icmp_ln118_reg_1350[0:0] == 1'b1) ? W_15_q0 : W_7_q0);
assign select_ln118_fu_516_p3 = ((icmp_ln118_reg_1350[0:0] == 1'b1) ? W_8_q0 : W_q0);
assign temp_10_fu_1017_p2 = (add_ln118_16_reg_1600 + add_ln118_18_fu_1013_p2);
assign temp_11_fu_1122_p2 = (add_ln118_20_reg_1623 + add_ln118_22_fu_1118_p2);
assign temp_12_fu_1228_p2 = (add_ln118_24_reg_1633 + add_ln118_26_fu_1224_p2);
assign temp_13_fu_1283_p2 = (add_ln118_30_reg_1653 + add_ln118_28_fu_1279_p2);
assign temp_9_fu_782_p2 = (add_ln118_4_reg_1514 + add_ln118_6_fu_778_p2);
assign temp_fu_688_p2 = (add_ln118_reg_1452 + add_ln118_2_fu_683_p2);
assign tmp_fu_446_p3 = ap_sig_allocacmp_i[32'd4];
assign tmp_s_fu_480_p4 = {{ap_sig_allocacmp_i[4:3]}};
assign trunc_ln118_10_fu_1042_p1 = temp_10_fu_1017_p2[26:0];
assign trunc_ln118_11_fu_986_p1 = A_13_fu_924_p2[1:0];
assign trunc_ln118_12_fu_1127_p1 = temp_11_fu_1122_p2[26:0];
assign trunc_ln118_13_fu_1091_p1 = temp_10_fu_1017_p2[1:0];
assign trunc_ln118_14_fu_1233_p1 = temp_12_fu_1228_p2[26:0];
assign trunc_ln118_15_fu_1197_p1 = temp_11_fu_1122_p2[1:0];
assign trunc_ln118_1_fu_559_p1 = B_1_fu_124[1:0];
assign trunc_ln118_2_fu_699_p1 = temp_fu_688_p2[26:0];
assign trunc_ln118_3_fu_750_p1 = B_11_fu_128[1:0];
assign trunc_ln118_4_fu_793_p1 = temp_9_fu_782_p2[26:0];
assign trunc_ln118_5_fu_764_p1 = temp_fu_688_p2[1:0];
assign trunc_ln118_6_fu_871_p1 = B_21_fu_860_p2[26:0];
assign trunc_ln118_7_fu_842_p1 = temp_9_fu_782_p2[1:0];
assign trunc_ln118_8_fu_937_p1 = A_13_fu_924_p2[26:0];
assign trunc_ln118_9_fu_1022_p1 = B_21_reg_1567[1:0];
assign trunc_ln118_fu_661_p1 = B_11_fu_128[26:0];
assign trunc_ln8_fu_442_p1 = ap_sig_allocacmp_i[3:0];
assign xor_ln118_1_fu_713_p2 = (32'd4294967295 ^ B_11_fu_128);
assign xor_ln118_2_fu_807_p2 = (temp_reg_1502 ^ 32'd4294967295);
assign xor_ln118_3_fu_885_p2 = (temp_9_reg_1539 ^ 32'd4294967295);
assign xor_ln118_4_fu_951_p2 = (32'd4294967295 ^ B_21_reg_1567);
assign xor_ln118_5_fu_1056_p2 = (32'd4294967295 ^ A_13_reg_1588);
assign xor_ln118_6_fu_1141_p2 = (temp_10_reg_1611 ^ 32'd4294967295);
assign xor_ln118_7_fu_1175_p2 = (temp_11_fu_1122_p2 ^ 32'd4294967295);
assign xor_ln118_fu_523_p2 = (32'd4294967295 ^ B_1_fu_124);
assign zext_ln100_fu_454_p1 = tmp_fu_446_p3;
endmodule 