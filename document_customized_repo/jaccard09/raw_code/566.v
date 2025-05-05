module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_15_address0,W_15_ce0,W_15_we0,W_15_d0,W_15_q0,W_15_address1,W_15_ce1,W_15_q1,W_14_address0,W_14_ce0,W_14_we0,W_14_d0,W_14_q0,W_14_address1,W_14_ce1,W_14_q1,W_13_address0,W_13_ce0,W_13_we0,W_13_d0,W_13_q0,W_13_address1,W_13_ce1,W_13_q1,W_12_address0,W_12_ce0,W_12_we0,W_12_d0,W_12_q0,W_12_address1,W_12_ce1,W_12_q1,W_11_address0,W_11_ce0,W_11_we0,W_11_d0,W_11_q0,W_11_address1,W_11_ce1,W_11_q1,W_10_address0,W_10_ce0,W_10_we0,W_10_d0,W_10_q0,W_10_address1,W_10_ce1,W_10_q1,W_9_address0,W_9_ce0,W_9_we0,W_9_d0,W_9_q0,W_9_address1,W_9_ce1,W_9_q1,W_8_address0,W_8_ce0,W_8_we0,W_8_d0,W_8_q0,W_8_address1,W_8_ce1,W_8_q1,W_7_address0,W_7_ce0,W_7_we0,W_7_d0,W_7_q0,W_7_address1,W_7_ce1,W_7_q1,W_6_address0,W_6_ce0,W_6_we0,W_6_d0,W_6_q0,W_6_address1,W_6_ce1,W_6_q1,W_5_address0,W_5_ce0,W_5_we0,W_5_d0,W_5_q0,W_5_address1,W_5_ce1,W_5_q1,W_4_address0,W_4_ce0,W_4_we0,W_4_d0,W_4_q0,W_4_address1,W_4_ce1,W_4_q1,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_q0,W_3_address1,W_3_ce1,W_3_q1,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_q0,W_2_address1,W_2_ce1,W_2_q1,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,W_address0,W_ce0,W_we0,W_d0,W_q0,W_address1,W_ce1,W_q1); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] W_15_address0;
output   W_15_ce0;
output   W_15_we0;
output  [31:0] W_15_d0;
input  [31:0] W_15_q0;
output  [2:0] W_15_address1;
output   W_15_ce1;
input  [31:0] W_15_q1;
output  [2:0] W_14_address0;
output   W_14_ce0;
output   W_14_we0;
output  [31:0] W_14_d0;
input  [31:0] W_14_q0;
output  [2:0] W_14_address1;
output   W_14_ce1;
input  [31:0] W_14_q1;
output  [2:0] W_13_address0;
output   W_13_ce0;
output   W_13_we0;
output  [31:0] W_13_d0;
input  [31:0] W_13_q0;
output  [2:0] W_13_address1;
output   W_13_ce1;
input  [31:0] W_13_q1;
output  [2:0] W_12_address0;
output   W_12_ce0;
output   W_12_we0;
output  [31:0] W_12_d0;
input  [31:0] W_12_q0;
output  [2:0] W_12_address1;
output   W_12_ce1;
input  [31:0] W_12_q1;
output  [2:0] W_11_address0;
output   W_11_ce0;
output   W_11_we0;
output  [31:0] W_11_d0;
input  [31:0] W_11_q0;
output  [2:0] W_11_address1;
output   W_11_ce1;
input  [31:0] W_11_q1;
output  [2:0] W_10_address0;
output   W_10_ce0;
output   W_10_we0;
output  [31:0] W_10_d0;
input  [31:0] W_10_q0;
output  [2:0] W_10_address1;
output   W_10_ce1;
input  [31:0] W_10_q1;
output  [2:0] W_9_address0;
output   W_9_ce0;
output   W_9_we0;
output  [31:0] W_9_d0;
input  [31:0] W_9_q0;
output  [2:0] W_9_address1;
output   W_9_ce1;
input  [31:0] W_9_q1;
output  [2:0] W_8_address0;
output   W_8_ce0;
output   W_8_we0;
output  [31:0] W_8_d0;
input  [31:0] W_8_q0;
output  [2:0] W_8_address1;
output   W_8_ce1;
input  [31:0] W_8_q1;
output  [2:0] W_7_address0;
output   W_7_ce0;
output   W_7_we0;
output  [31:0] W_7_d0;
input  [31:0] W_7_q0;
output  [2:0] W_7_address1;
output   W_7_ce1;
input  [31:0] W_7_q1;
output  [2:0] W_6_address0;
output   W_6_ce0;
output   W_6_we0;
output  [31:0] W_6_d0;
input  [31:0] W_6_q0;
output  [2:0] W_6_address1;
output   W_6_ce1;
input  [31:0] W_6_q1;
output  [2:0] W_5_address0;
output   W_5_ce0;
output   W_5_we0;
output  [31:0] W_5_d0;
input  [31:0] W_5_q0;
output  [2:0] W_5_address1;
output   W_5_ce1;
input  [31:0] W_5_q1;
output  [2:0] W_4_address0;
output   W_4_ce0;
output   W_4_we0;
output  [31:0] W_4_d0;
input  [31:0] W_4_q0;
output  [2:0] W_4_address1;
output   W_4_ce1;
input  [31:0] W_4_q1;
output  [2:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
input  [31:0] W_3_q0;
output  [2:0] W_3_address1;
output   W_3_ce1;
input  [31:0] W_3_q1;
output  [2:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
input  [31:0] W_2_q0;
output  [2:0] W_2_address1;
output   W_2_ce1;
input  [31:0] W_2_q1;
output  [2:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
input  [31:0] W_1_q0;
output  [2:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [2:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
input  [31:0] W_q0;
output  [2:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln106_fu_638_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state3;
reg   [6:0] i_2_reg_1345;
reg   [0:0] icmp_ln106_reg_1352;
reg   [2:0] W_6_addr_2_reg_1516;
wire    ap_CS_fsm_state2;
reg   [2:0] W_14_addr_2_reg_1521;
reg   [2:0] W_7_addr_2_reg_1526;
reg   [2:0] W_15_addr_2_reg_1531;
wire   [31:0] xor_ln108_17_fu_1270_p2;
reg   [31:0] xor_ln108_17_reg_1536;
wire   [31:0] xor_ln108_23_fu_1316_p2;
reg   [31:0] xor_ln108_23_reg_1542;
wire   [0:0] icmp_ln108_fu_1322_p2;
reg   [0:0] icmp_ln108_reg_1548;
wire   [63:0] zext_ln108_fu_664_p1;
wire   [63:0] zext_ln108_1_fu_686_p1;
wire   [63:0] zext_ln108_2_fu_708_p1;
wire   [63:0] zext_ln108_3_fu_730_p1;
wire   [63:0] zext_ln108_4_fu_752_p1;
wire   [63:0] zext_ln108_5_fu_774_p1;
wire   [63:0] zext_ln108_6_fu_796_p1;
wire   [63:0] zext_ln108_7_fu_818_p1;
wire   [63:0] zext_ln108_8_fu_840_p1;
wire   [63:0] zext_ln108_9_fu_862_p1;
wire   [63:0] zext_ln108_10_fu_884_p1;
wire   [63:0] zext_ln108_11_fu_906_p1;
wire   [63:0] zext_ln108_12_fu_928_p1;
wire   [63:0] zext_ln108_13_fu_950_p1;
wire   [63:0] zext_ln108_14_fu_972_p1;
wire   [63:0] zext_ln108_15_fu_994_p1;
wire   [63:0] zext_ln99_fu_1012_p1;
reg   [6:0] i_fu_102;
wire   [6:0] add_ln106_fu_1328_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_2;
reg    W_5_ce1_local;
reg    W_5_ce0_local;
reg   [2:0] W_5_address0_local;
reg    W_5_we0_local;
wire   [31:0] xor_ln108_20_fu_1296_p2;
reg    W_13_ce1_local;
reg    W_13_ce0_local;
reg   [2:0] W_13_address0_local;
reg    W_13_we0_local;
reg    W_ce1_local;
reg    W_ce0_local;
reg   [2:0] W_address0_local;
reg    W_we0_local;
wire   [31:0] xor_ln108_2_fu_1082_p2;
reg    W_8_ce1_local;
reg    W_8_ce0_local;
reg   [2:0] W_8_address0_local;
reg    W_8_we0_local;
reg    W_2_ce1_local;
reg    W_2_ce0_local;
reg   [2:0] W_2_address0_local;
reg    W_2_we0_local;
wire   [31:0] xor_ln108_8_fu_1178_p2;
reg    W_10_ce1_local;
reg    W_10_ce0_local;
reg   [2:0] W_10_address0_local;
reg    W_10_we0_local;
reg    W_6_ce1_local;
reg    W_6_ce0_local;
reg   [2:0] W_6_address0_local;
reg    W_6_we0_local;
reg    W_14_ce1_local;
reg    W_14_ce0_local;
reg   [2:0] W_14_address0_local;
reg    W_14_we0_local;
reg    W_1_ce1_local;
reg    W_1_ce0_local;
reg   [2:0] W_1_address0_local;
reg    W_1_we0_local;
wire   [31:0] xor_ln108_5_fu_1134_p2;
reg    W_9_ce1_local;
reg    W_9_ce0_local;
reg   [2:0] W_9_address0_local;
reg    W_9_we0_local;
reg    W_3_ce1_local;
reg    W_3_ce0_local;
reg   [2:0] W_3_address0_local;
reg    W_3_we0_local;
wire   [31:0] xor_ln108_11_fu_1214_p2;
reg    W_11_ce1_local;
reg    W_11_ce0_local;
reg   [2:0] W_11_address0_local;
reg    W_11_we0_local;
reg    W_7_ce1_local;
reg    W_7_ce0_local;
reg   [2:0] W_7_address0_local;
reg    W_7_we0_local;
reg    W_15_ce1_local;
reg    W_15_ce0_local;
reg   [2:0] W_15_address0_local;
reg    W_15_we0_local;
reg    W_4_ce1_local;
reg    W_4_ce0_local;
reg   [2:0] W_4_address0_local;
reg    W_4_we0_local;
wire   [31:0] xor_ln108_14_fu_1250_p2;
reg    W_12_ce1_local;
reg    W_12_ce0_local;
reg   [2:0] W_12_address0_local;
reg    W_12_we0_local;
wire   [6:0] add_ln108_fu_648_p2;
wire   [2:0] lshr_ln1_fu_654_p4;
wire   [6:0] add_ln108_1_fu_670_p2;
wire   [2:0] lshr_ln108_1_fu_676_p4;
wire   [6:0] add_ln108_2_fu_692_p2;
wire   [2:0] lshr_ln108_2_fu_698_p4;
wire   [5:0] trunc_ln106_fu_644_p1;
wire   [5:0] add_ln108_3_fu_714_p2;
wire   [1:0] lshr_ln108_3_fu_720_p4;
wire   [6:0] add_ln108_4_fu_736_p2;
wire   [2:0] lshr_ln108_4_fu_742_p4;
wire   [6:0] add_ln108_5_fu_758_p2;
wire   [2:0] lshr_ln108_5_fu_764_p4;
wire   [6:0] add_ln108_6_fu_780_p2;
wire   [2:0] lshr_ln108_6_fu_786_p4;
wire   [6:0] add_ln108_7_fu_802_p2;
wire   [2:0] lshr_ln108_7_fu_808_p4;
wire   [6:0] add_ln108_8_fu_824_p2;
wire   [2:0] lshr_ln108_8_fu_830_p4;
wire   [6:0] add_ln108_9_fu_846_p2;
wire   [2:0] lshr_ln108_9_fu_852_p4;
wire   [6:0] add_ln108_10_fu_868_p2;
wire   [2:0] lshr_ln108_s_fu_874_p4;
wire   [6:0] add_ln108_11_fu_890_p2;
wire   [2:0] lshr_ln108_10_fu_896_p4;
wire   [6:0] add_ln108_12_fu_912_p2;
wire   [2:0] lshr_ln108_11_fu_918_p4;
wire   [6:0] add_ln108_13_fu_934_p2;
wire   [2:0] lshr_ln108_12_fu_940_p4;
wire   [6:0] add_ln108_14_fu_956_p2;
wire   [2:0] lshr_ln108_13_fu_962_p4;
wire   [6:0] add_ln108_15_fu_978_p2;
wire   [2:0] lshr_ln108_14_fu_984_p4;
wire   [2:0] lshr_ln_fu_1003_p4;
wire   [3:0] trunc_ln106_1_fu_1000_p1;
wire   [0:0] icmp_ln108_1_fu_1032_p2;
wire   [31:0] select_ln108_3_fu_1062_p3;
wire   [31:0] select_ln108_1_fu_1046_p3;
wire   [31:0] select_ln108_fu_1038_p3;
wire   [31:0] select_ln108_2_fu_1054_p3;
wire   [31:0] xor_ln108_fu_1076_p2;
wire   [31:0] xor_ln108_1_fu_1070_p2;
wire   [31:0] select_ln108_7_fu_1114_p3;
wire   [31:0] select_ln108_5_fu_1098_p3;
wire   [31:0] select_ln108_4_fu_1090_p3;
wire   [31:0] select_ln108_6_fu_1106_p3;
wire   [31:0] xor_ln108_3_fu_1128_p2;
wire   [31:0] xor_ln108_4_fu_1122_p2;
wire   [31:0] select_ln108_9_fu_1150_p3;
wire   [31:0] select_ln108_8_fu_1142_p3;
wire   [31:0] select_ln108_10_fu_1158_p3;
wire   [31:0] xor_ln108_7_fu_1172_p2;
wire   [31:0] xor_ln108_6_fu_1166_p2;
wire   [31:0] select_ln108_12_fu_1194_p3;
wire   [31:0] select_ln108_11_fu_1186_p3;
wire   [31:0] xor_ln108_9_fu_1208_p2;
wire   [31:0] xor_ln108_10_fu_1202_p2;
wire   [31:0] select_ln108_14_fu_1230_p3;
wire   [31:0] select_ln108_13_fu_1222_p3;
wire   [31:0] xor_ln108_12_fu_1244_p2;
wire   [31:0] xor_ln108_13_fu_1238_p2;
wire   [31:0] xor_ln108_15_fu_1264_p2;
wire   [31:0] xor_ln108_16_fu_1258_p2;
wire   [31:0] select_ln108_15_fu_1276_p3;
wire   [31:0] xor_ln108_19_fu_1290_p2;
wire   [31:0] xor_ln108_18_fu_1284_p2;
wire   [31:0] xor_ln108_21_fu_1310_p2;
wire   [31:0] xor_ln108_22_fu_1304_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 i_fu_102 = 7'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_102 <= 7'd16;
    end else if (((icmp_ln106_reg_1352 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_fu_102 <= add_ln106_fu_1328_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_14_addr_2_reg_1521 <= zext_ln99_fu_1012_p1;
        W_15_addr_2_reg_1531 <= zext_ln99_fu_1012_p1;
        W_6_addr_2_reg_1516 <= zext_ln99_fu_1012_p1;
        W_7_addr_2_reg_1526 <= zext_ln99_fu_1012_p1;
        icmp_ln108_reg_1548 <= icmp_ln108_fu_1322_p2;
        xor_ln108_17_reg_1536 <= xor_ln108_17_fu_1270_p2;
        xor_ln108_23_reg_1542 <= xor_ln108_23_fu_1316_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_2_reg_1345 <= ap_sig_allocacmp_i_2;
        icmp_ln106_reg_1352 <= icmp_ln106_fu_638_p2;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_10_address0_local = zext_ln99_fu_1012_p1;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_10_address0_local = zext_ln108_9_fu_862_p1;
    end else begin
        W_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_10_ce1_local = 1'b1;
    end else begin
        W_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_10_we0_local = 1'b1;
    end else begin
        W_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_11_address0_local = zext_ln99_fu_1012_p1;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_11_address0_local = zext_ln108_11_fu_906_p1;
    end else begin
        W_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_11_ce1_local = 1'b1;
    end else begin
        W_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_11_we0_local = 1'b1;
    end else begin
        W_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_12_address0_local = zext_ln99_fu_1012_p1;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_12_address0_local = zext_ln108_13_fu_950_p1;
    end else begin
        W_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_12_ce1_local = 1'b1;
    end else begin
        W_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_12_we0_local = 1'b1;
    end else begin
        W_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_13_address0_local = zext_ln99_fu_1012_p1;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_13_address0_local = zext_ln108_12_fu_928_p1;
    end else begin
        W_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_13_ce1_local = 1'b1;
    end else begin
        W_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_13_we0_local = 1'b1;
    end else begin
        W_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_reg_1548 == 1'd0) & (icmp_ln106_reg_1352 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        W_14_address0_local = W_14_addr_2_reg_1521;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_14_address0_local = zext_ln108_14_fu_972_p1;
    end else begin
        W_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_reg_1548 == 1'd0) & (icmp_ln106_reg_1352 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_14_ce1_local = 1'b1;
    end else begin
        W_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_reg_1548 == 1'd0) & (icmp_ln106_reg_1352 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        W_14_we0_local = 1'b1;
    end else begin
        W_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_reg_1548 == 1'd0) & (icmp_ln106_reg_1352 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        W_15_address0_local = W_15_addr_2_reg_1531;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_15_address0_local = zext_ln108_15_fu_994_p1;
    end else begin
        W_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_reg_1548 == 1'd0) & (icmp_ln106_reg_1352 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_15_ce1_local = 1'b1;
    end else begin
        W_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_reg_1548 == 1'd0) & (icmp_ln106_reg_1352 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        W_15_we0_local = 1'b1;
    end else begin
        W_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        W_1_address0_local = zext_ln99_fu_1012_p1;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_1_address0_local = zext_ln108_7_fu_818_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        W_2_address0_local = zext_ln99_fu_1012_p1;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_2_address0_local = zext_ln108_9_fu_862_p1;
    end else begin
        W_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        W_3_address0_local = zext_ln99_fu_1012_p1;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_3_address0_local = zext_ln108_11_fu_906_p1;
    end else begin
        W_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        W_4_address0_local = zext_ln99_fu_1012_p1;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_4_address0_local = zext_ln108_13_fu_950_p1;
    end else begin
        W_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_4_ce1_local = 1'b1;
    end else begin
        W_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        W_4_we0_local = 1'b1;
    end else begin
        W_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        W_5_address0_local = zext_ln99_fu_1012_p1;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_5_address0_local = zext_ln108_12_fu_928_p1;
    end else begin
        W_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_5_ce1_local = 1'b1;
    end else begin
        W_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        W_5_we0_local = 1'b1;
    end else begin
        W_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_reg_1548 == 1'd1) & (icmp_ln106_reg_1352 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        W_6_address0_local = W_6_addr_2_reg_1516;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_6_address0_local = zext_ln108_14_fu_972_p1;
    end else begin
        W_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_reg_1548 == 1'd1) & (icmp_ln106_reg_1352 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_6_ce1_local = 1'b1;
    end else begin
        W_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_reg_1548 == 1'd1) & (icmp_ln106_reg_1352 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        W_6_we0_local = 1'b1;
    end else begin
        W_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_reg_1548 == 1'd1) & (icmp_ln106_reg_1352 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        W_7_address0_local = W_7_addr_2_reg_1526;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_7_address0_local = zext_ln108_15_fu_994_p1;
    end else begin
        W_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_reg_1548 == 1'd1) & (icmp_ln106_reg_1352 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_7_ce1_local = 1'b1;
    end else begin
        W_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_reg_1548 == 1'd1) & (icmp_ln106_reg_1352 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        W_7_we0_local = 1'b1;
    end else begin
        W_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_8_address0_local = zext_ln99_fu_1012_p1;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_8_address0_local = zext_ln108_3_fu_730_p1;
    end else begin
        W_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_8_ce1_local = 1'b1;
    end else begin
        W_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_8_we0_local = 1'b1;
    end else begin
        W_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_9_address0_local = zext_ln99_fu_1012_p1;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_9_address0_local = zext_ln108_7_fu_818_p1;
    end else begin
        W_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_9_ce1_local = 1'b1;
    end else begin
        W_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        W_9_we0_local = 1'b1;
    end else begin
        W_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        W_address0_local = zext_ln99_fu_1012_p1;
    end else if (((icmp_ln106_fu_638_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_address0_local = zext_ln108_3_fu_730_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln106_fu_638_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln108_fu_1322_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
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
always @ (*) begin
    if (((icmp_ln106_fu_638_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_2 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_102;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln106_fu_638_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign W_10_address0 = W_10_address0_local;
assign W_10_address1 = zext_ln108_2_fu_708_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_10_ce1 = W_10_ce1_local;
assign W_10_d0 = xor_ln108_8_fu_1178_p2;
assign W_10_we0 = W_10_we0_local;
assign W_11_address0 = W_11_address0_local;
assign W_11_address1 = zext_ln108_6_fu_796_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_11_ce1 = W_11_ce1_local;
assign W_11_d0 = xor_ln108_11_fu_1214_p2;
assign W_11_we0 = W_11_we0_local;
assign W_12_address0 = W_12_address0_local;
assign W_12_address1 = zext_ln108_10_fu_884_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_12_ce1 = W_12_ce1_local;
assign W_12_d0 = xor_ln108_14_fu_1250_p2;
assign W_12_we0 = W_12_we0_local;
assign W_13_address0 = W_13_address0_local;
assign W_13_address1 = zext_ln108_fu_664_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_13_ce1 = W_13_ce1_local;
assign W_13_d0 = xor_ln108_20_fu_1296_p2;
assign W_13_we0 = W_13_we0_local;
assign W_14_address0 = W_14_address0_local;
assign W_14_address1 = zext_ln108_4_fu_752_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_14_ce1 = W_14_ce1_local;
assign W_14_d0 = xor_ln108_17_reg_1536;
assign W_14_we0 = W_14_we0_local;
assign W_15_address0 = W_15_address0_local;
assign W_15_address1 = zext_ln108_8_fu_840_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_15_ce1 = W_15_ce1_local;
assign W_15_d0 = xor_ln108_23_reg_1542;
assign W_15_we0 = W_15_we0_local;
assign W_1_address0 = W_1_address0_local;
assign W_1_address1 = zext_ln108_5_fu_774_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_d0 = xor_ln108_5_fu_1134_p2;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = W_2_address0_local;
assign W_2_address1 = zext_ln108_2_fu_708_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_2_d0 = xor_ln108_8_fu_1178_p2;
assign W_2_we0 = W_2_we0_local;
assign W_3_address0 = W_3_address0_local;
assign W_3_address1 = zext_ln108_6_fu_796_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_d0 = xor_ln108_11_fu_1214_p2;
assign W_3_we0 = W_3_we0_local;
assign W_4_address0 = W_4_address0_local;
assign W_4_address1 = zext_ln108_10_fu_884_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_ce1 = W_4_ce1_local;
assign W_4_d0 = xor_ln108_14_fu_1250_p2;
assign W_4_we0 = W_4_we0_local;
assign W_5_address0 = W_5_address0_local;
assign W_5_address1 = zext_ln108_fu_664_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_ce1 = W_5_ce1_local;
assign W_5_d0 = xor_ln108_20_fu_1296_p2;
assign W_5_we0 = W_5_we0_local;
assign W_6_address0 = W_6_address0_local;
assign W_6_address1 = zext_ln108_4_fu_752_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_ce1 = W_6_ce1_local;
assign W_6_d0 = xor_ln108_17_reg_1536;
assign W_6_we0 = W_6_we0_local;
assign W_7_address0 = W_7_address0_local;
assign W_7_address1 = zext_ln108_8_fu_840_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_ce1 = W_7_ce1_local;
assign W_7_d0 = xor_ln108_23_reg_1542;
assign W_7_we0 = W_7_we0_local;
assign W_8_address0 = W_8_address0_local;
assign W_8_address1 = zext_ln108_1_fu_686_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_8_ce1 = W_8_ce1_local;
assign W_8_d0 = xor_ln108_2_fu_1082_p2;
assign W_8_we0 = W_8_we0_local;
assign W_9_address0 = W_9_address0_local;
assign W_9_address1 = zext_ln108_5_fu_774_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_9_ce1 = W_9_ce1_local;
assign W_9_d0 = xor_ln108_5_fu_1134_p2;
assign W_9_we0 = W_9_we0_local;
assign W_address0 = W_address0_local;
assign W_address1 = zext_ln108_1_fu_686_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_d0 = xor_ln108_2_fu_1082_p2;
assign W_we0 = W_we0_local;
assign add_ln106_fu_1328_p2 = (i_2_reg_1345 + 7'd8);
assign add_ln108_10_fu_868_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd116));
assign add_ln108_11_fu_890_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd123));
assign add_ln108_12_fu_912_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd117));
assign add_ln108_13_fu_934_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd124));
assign add_ln108_14_fu_956_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd118));
assign add_ln108_15_fu_978_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd119));
assign add_ln108_1_fu_670_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd120));
assign add_ln108_2_fu_692_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd114));
assign add_ln108_3_fu_714_p2 = ($signed(trunc_ln106_fu_644_p1) + $signed(6'd48));
assign add_ln108_4_fu_736_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd126));
assign add_ln108_5_fu_758_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd121));
assign add_ln108_6_fu_780_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd115));
assign add_ln108_7_fu_802_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd113));
assign add_ln108_8_fu_824_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd127));
assign add_ln108_9_fu_846_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd122));
assign add_ln108_fu_648_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd125));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_638_p2 = ((ap_sig_allocacmp_i_2 < 7'd80) ? 1'b1 : 1'b0);
assign icmp_ln108_1_fu_1032_p2 = ((trunc_ln106_1_fu_1000_p1 != 4'd0) ? 1'b1 : 1'b0);
assign icmp_ln108_fu_1322_p2 = ((trunc_ln106_1_fu_1000_p1 == 4'd0) ? 1'b1 : 1'b0);
assign lshr_ln108_10_fu_896_p4 = {{add_ln108_11_fu_890_p2[6:4]}};
assign lshr_ln108_11_fu_918_p4 = {{add_ln108_12_fu_912_p2[6:4]}};
assign lshr_ln108_12_fu_940_p4 = {{add_ln108_13_fu_934_p2[6:4]}};
assign lshr_ln108_13_fu_962_p4 = {{add_ln108_14_fu_956_p2[6:4]}};
assign lshr_ln108_14_fu_984_p4 = {{add_ln108_15_fu_978_p2[6:4]}};
assign lshr_ln108_1_fu_676_p4 = {{add_ln108_1_fu_670_p2[6:4]}};
assign lshr_ln108_2_fu_698_p4 = {{add_ln108_2_fu_692_p2[6:4]}};
assign lshr_ln108_3_fu_720_p4 = {{add_ln108_3_fu_714_p2[5:4]}};
assign lshr_ln108_4_fu_742_p4 = {{add_ln108_4_fu_736_p2[6:4]}};
assign lshr_ln108_5_fu_764_p4 = {{add_ln108_5_fu_758_p2[6:4]}};
assign lshr_ln108_6_fu_786_p4 = {{add_ln108_6_fu_780_p2[6:4]}};
assign lshr_ln108_7_fu_808_p4 = {{add_ln108_7_fu_802_p2[6:4]}};
assign lshr_ln108_8_fu_830_p4 = {{add_ln108_8_fu_824_p2[6:4]}};
assign lshr_ln108_9_fu_852_p4 = {{add_ln108_9_fu_846_p2[6:4]}};
assign lshr_ln108_s_fu_874_p4 = {{add_ln108_10_fu_868_p2[6:4]}};
assign lshr_ln1_fu_654_p4 = {{add_ln108_fu_648_p2[6:4]}};
assign lshr_ln_fu_1003_p4 = {{i_2_reg_1345[6:4]}};
assign select_ln108_10_fu_1158_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_12_q1 : W_4_q1);
assign select_ln108_11_fu_1186_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_3_q0 : W_11_q0);
assign select_ln108_12_fu_1194_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_13_q0 : W_5_q0);
assign select_ln108_13_fu_1222_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_4_q0 : W_12_q0);
assign select_ln108_14_fu_1230_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_14_q0 : W_6_q0);
assign select_ln108_15_fu_1276_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_15_q0 : W_7_q0);
assign select_ln108_1_fu_1046_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_q1 : W_8_q1);
assign select_ln108_2_fu_1054_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_10_q1 : W_2_q1);
assign select_ln108_3_fu_1062_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_8_q0 : W_q0);
assign select_ln108_4_fu_1090_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_6_q1 : W_14_q1);
assign select_ln108_5_fu_1098_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_1_q1 : W_9_q1);
assign select_ln108_6_fu_1106_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_11_q1 : W_3_q1);
assign select_ln108_7_fu_1114_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_9_q0 : W_1_q0);
assign select_ln108_8_fu_1142_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_7_q1 : W_15_q1);
assign select_ln108_9_fu_1150_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_2_q0 : W_10_q0);
assign select_ln108_fu_1038_p3 = ((icmp_ln108_1_fu_1032_p2[0:0] == 1'b1) ? W_5_q1 : W_13_q1);
assign trunc_ln106_1_fu_1000_p1 = i_2_reg_1345[3:0];
assign trunc_ln106_fu_644_p1 = ap_sig_allocacmp_i_2[5:0];
assign xor_ln108_10_fu_1202_p2 = (select_ln108_6_fu_1106_p3 ^ select_ln108_12_fu_1194_p3);
assign xor_ln108_11_fu_1214_p2 = (xor_ln108_9_fu_1208_p2 ^ xor_ln108_10_fu_1202_p2);
assign xor_ln108_12_fu_1244_p2 = (xor_ln108_5_fu_1134_p2 ^ select_ln108_13_fu_1222_p3);
assign xor_ln108_13_fu_1238_p2 = (select_ln108_14_fu_1230_p3 ^ select_ln108_10_fu_1158_p3);
assign xor_ln108_14_fu_1250_p2 = (xor_ln108_13_fu_1238_p2 ^ xor_ln108_12_fu_1244_p2);
assign xor_ln108_15_fu_1264_p2 = (xor_ln108_11_fu_1214_p2 ^ select_ln108_1_fu_1046_p3);
assign xor_ln108_16_fu_1258_p2 = (select_ln108_4_fu_1090_p3 ^ select_ln108_14_fu_1230_p3);
assign xor_ln108_17_fu_1270_p2 = (xor_ln108_16_fu_1258_p2 ^ xor_ln108_15_fu_1264_p2);
assign xor_ln108_18_fu_1284_p2 = (select_ln108_fu_1038_p3 ^ select_ln108_12_fu_1194_p3);
assign xor_ln108_19_fu_1290_p2 = (xor_ln108_8_fu_1178_p2 ^ select_ln108_15_fu_1276_p3);
assign xor_ln108_1_fu_1070_p2 = (select_ln108_3_fu_1062_p3 ^ select_ln108_1_fu_1046_p3);
assign xor_ln108_20_fu_1296_p2 = (xor_ln108_19_fu_1290_p2 ^ xor_ln108_18_fu_1284_p2);
assign xor_ln108_21_fu_1310_p2 = (xor_ln108_14_fu_1250_p2 ^ select_ln108_5_fu_1098_p3);
assign xor_ln108_22_fu_1304_p2 = (select_ln108_8_fu_1142_p3 ^ select_ln108_15_fu_1276_p3);
assign xor_ln108_23_fu_1316_p2 = (xor_ln108_22_fu_1304_p2 ^ xor_ln108_21_fu_1310_p2);
assign xor_ln108_2_fu_1082_p2 = (xor_ln108_fu_1076_p2 ^ xor_ln108_1_fu_1070_p2);
assign xor_ln108_3_fu_1128_p2 = (select_ln108_6_fu_1106_p3 ^ select_ln108_4_fu_1090_p3);
assign xor_ln108_4_fu_1122_p2 = (select_ln108_7_fu_1114_p3 ^ select_ln108_5_fu_1098_p3);
assign xor_ln108_5_fu_1134_p2 = (xor_ln108_4_fu_1122_p2 ^ xor_ln108_3_fu_1128_p2);
assign xor_ln108_6_fu_1166_p2 = (select_ln108_9_fu_1150_p3 ^ select_ln108_2_fu_1054_p3);
assign xor_ln108_7_fu_1172_p2 = (select_ln108_8_fu_1142_p3 ^ select_ln108_10_fu_1158_p3);
assign xor_ln108_8_fu_1178_p2 = (xor_ln108_7_fu_1172_p2 ^ xor_ln108_6_fu_1166_p2);
assign xor_ln108_9_fu_1208_p2 = (xor_ln108_2_fu_1082_p2 ^ select_ln108_11_fu_1186_p3);
assign xor_ln108_fu_1076_p2 = (select_ln108_fu_1038_p3 ^ select_ln108_2_fu_1054_p3);
assign zext_ln108_10_fu_884_p1 = lshr_ln108_s_fu_874_p4;
assign zext_ln108_11_fu_906_p1 = lshr_ln108_10_fu_896_p4;
assign zext_ln108_12_fu_928_p1 = lshr_ln108_11_fu_918_p4;
assign zext_ln108_13_fu_950_p1 = lshr_ln108_12_fu_940_p4;
assign zext_ln108_14_fu_972_p1 = lshr_ln108_13_fu_962_p4;
assign zext_ln108_15_fu_994_p1 = lshr_ln108_14_fu_984_p4;
assign zext_ln108_1_fu_686_p1 = lshr_ln108_1_fu_676_p4;
assign zext_ln108_2_fu_708_p1 = lshr_ln108_2_fu_698_p4;
assign zext_ln108_3_fu_730_p1 = lshr_ln108_3_fu_720_p4;
assign zext_ln108_4_fu_752_p1 = lshr_ln108_4_fu_742_p4;
assign zext_ln108_5_fu_774_p1 = lshr_ln108_5_fu_764_p4;
assign zext_ln108_6_fu_796_p1 = lshr_ln108_6_fu_786_p4;
assign zext_ln108_7_fu_818_p1 = lshr_ln108_7_fu_808_p4;
assign zext_ln108_8_fu_840_p1 = lshr_ln108_8_fu_830_p4;
assign zext_ln108_9_fu_862_p1 = lshr_ln108_9_fu_852_p4;
assign zext_ln108_fu_664_p1 = lshr_ln1_fu_654_p4;
assign zext_ln99_fu_1012_p1 = lshr_ln_fu_1003_p4;
endmodule 