module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sha_info_data_load,sha_info_data_load_1,sha_info_data_load_2,sha_info_data_load_3,sha_info_data_load_4,sha_info_data_load_5,sha_info_data_load_6,sha_info_data_load_7,sha_info_data_load_8,sha_info_data_load_9,sha_info_data_load_10,sha_info_data_load_11,sha_info_data_load_12,sha_info_data_load_13,sha_info_data_load_14,sha_info_data_load_15,W_15_address0,W_15_ce0,W_15_we0,W_15_d0,W_14_address0,W_14_ce0,W_14_we0,W_14_d0,W_13_address0,W_13_ce0,W_13_we0,W_13_d0,W_12_address0,W_12_ce0,W_12_we0,W_12_d0,W_11_address0,W_11_ce0,W_11_we0,W_11_d0,W_10_address0,W_10_ce0,W_10_we0,W_10_d0,W_9_address0,W_9_ce0,W_9_we0,W_9_d0,W_8_address0,W_8_ce0,W_8_we0,W_8_d0,W_7_address0,W_7_ce0,W_7_we0,W_7_d0,W_6_address0,W_6_ce0,W_6_we0,W_6_d0,W_5_address0,W_5_ce0,W_5_we0,W_5_d0,W_4_address0,W_4_ce0,W_4_we0,W_4_d0,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_address0,W_ce0,W_we0,W_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sha_info_data_load;
input  [31:0] sha_info_data_load_1;
input  [31:0] sha_info_data_load_2;
input  [31:0] sha_info_data_load_3;
input  [31:0] sha_info_data_load_4;
input  [31:0] sha_info_data_load_5;
input  [31:0] sha_info_data_load_6;
input  [31:0] sha_info_data_load_7;
input  [31:0] sha_info_data_load_8;
input  [31:0] sha_info_data_load_9;
input  [31:0] sha_info_data_load_10;
input  [31:0] sha_info_data_load_11;
input  [31:0] sha_info_data_load_12;
input  [31:0] sha_info_data_load_13;
input  [31:0] sha_info_data_load_14;
input  [31:0] sha_info_data_load_15;
output  [2:0] W_15_address0;
output   W_15_ce0;
output   W_15_we0;
output  [31:0] W_15_d0;
output  [2:0] W_14_address0;
output   W_14_ce0;
output   W_14_we0;
output  [31:0] W_14_d0;
output  [2:0] W_13_address0;
output   W_13_ce0;
output   W_13_we0;
output  [31:0] W_13_d0;
output  [2:0] W_12_address0;
output   W_12_ce0;
output   W_12_we0;
output  [31:0] W_12_d0;
output  [2:0] W_11_address0;
output   W_11_ce0;
output   W_11_we0;
output  [31:0] W_11_d0;
output  [2:0] W_10_address0;
output   W_10_ce0;
output   W_10_we0;
output  [31:0] W_10_d0;
output  [2:0] W_9_address0;
output   W_9_ce0;
output   W_9_we0;
output  [31:0] W_9_d0;
output  [2:0] W_8_address0;
output   W_8_ce0;
output   W_8_we0;
output  [31:0] W_8_d0;
output  [2:0] W_7_address0;
output   W_7_ce0;
output   W_7_we0;
output  [31:0] W_7_d0;
output  [2:0] W_6_address0;
output   W_6_ce0;
output   W_6_we0;
output  [31:0] W_6_d0;
output  [2:0] W_5_address0;
output   W_5_ce0;
output   W_5_we0;
output  [31:0] W_5_d0;
output  [2:0] W_4_address0;
output   W_4_ce0;
output   W_4_we0;
output  [31:0] W_4_d0;
output  [2:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
output  [2:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
output  [2:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
output  [2:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln106_fu_559_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] store_forwarded201_reg_456;
reg   [31:0] store_forwarded198_reg_466;
reg   [31:0] store_forwarded_reg_476;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] store_forwarded207_load_reg_1092;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] store_forwarded210_load_reg_1097;
reg   [31:0] store_forwarded213_load_reg_1102;
reg   [31:0] store_forwarded216_load_reg_1107;
reg   [31:0] store_forwarded222_load_reg_1112;
reg   [31:0] store_forwarded225_load_reg_1118;
reg   [31:0] store_forwarded228_load_reg_1124;
reg   [31:0] store_forwarded231_load_reg_1130;
reg   [31:0] store_forwarded234_load_reg_1135;
reg   [31:0] store_forwarded237_load_reg_1140;
reg   [31:0] store_forwarded240_load_reg_1145;
wire   [63:0] zext_ln99_fu_608_p1;
reg   [63:0] zext_ln99_reg_1150;
wire   [31:0] xor_ln108_fu_615_p2;
reg   [31:0] xor_ln108_reg_1167;
wire   [31:0] xor_ln108_2_fu_627_p2;
reg   [31:0] xor_ln108_2_reg_1172;
wire   [31:0] xor_ln108_3_fu_634_p2;
reg   [31:0] xor_ln108_3_reg_1177;
wire   [31:0] xor_ln108_5_fu_646_p2;
reg   [31:0] xor_ln108_5_reg_1182;
wire   [31:0] xor_ln108_6_fu_653_p2;
reg   [31:0] xor_ln108_6_reg_1187;
wire   [31:0] xor_ln108_8_fu_665_p2;
reg   [31:0] xor_ln108_8_reg_1192;
wire   [31:0] xor_ln108_9_fu_672_p2;
reg   [31:0] xor_ln108_9_reg_1197;
wire   [31:0] xor_ln108_11_fu_684_p2;
reg   [31:0] xor_ln108_11_reg_1202;
wire   [31:0] xor_ln108_12_fu_690_p2;
reg   [31:0] xor_ln108_12_reg_1208;
wire   [31:0] xor_ln108_41_fu_889_p2;
wire   [31:0] xor_ln108_44_fu_906_p2;
wire   [31:0] xor_ln108_47_fu_924_p2;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_96;
wire   [6:0] add_ln106_fu_696_p2;
reg   [31:0] store_forwarded204_fu_100;
wire   [31:0] xor_ln108_23_fu_786_p2;
reg   [31:0] store_forwarded207_fu_104;
wire   [31:0] xor_ln108_38_fu_871_p2;
reg   [31:0] store_forwarded210_fu_108;
wire   [31:0] xor_ln108_35_fu_854_p2;
reg   [31:0] store_forwarded213_fu_112;
wire   [31:0] xor_ln108_20_fu_769_p2;
reg   [31:0] store_forwarded216_fu_116;
wire   [31:0] xor_ln108_32_fu_837_p2;
reg   [31:0] store_forwarded219_fu_120;
wire   [31:0] xor_ln108_29_fu_821_p2;
reg   [31:0] store_forwarded222_fu_124;
wire   [31:0] xor_ln108_17_fu_754_p2;
reg   [31:0] store_forwarded225_fu_128;
wire   [31:0] xor_ln108_26_fu_804_p2;
reg   [31:0] store_forwarded228_fu_132;
wire   [31:0] xor_ln108_14_fu_738_p2;
reg   [31:0] store_forwarded231_fu_136;
reg   [31:0] store_forwarded234_fu_140;
reg   [31:0] store_forwarded237_fu_144;
reg   [31:0] store_forwarded240_fu_148;
reg    W_we0_local;
reg    W_ce0_local;
reg    W_1_we0_local;
reg    W_1_ce0_local;
reg    W_2_we0_local;
reg    W_2_ce0_local;
reg    W_3_we0_local;
reg    W_3_ce0_local;
reg    W_4_we0_local;
reg    W_4_ce0_local;
reg    W_5_we0_local;
reg    W_5_ce0_local;
reg    W_6_we0_local;
reg    W_6_ce0_local;
reg    W_7_we0_local;
reg    W_7_ce0_local;
reg    W_8_we0_local;
reg    W_8_ce0_local;
reg    W_9_we0_local;
reg    W_9_ce0_local;
reg    W_10_we0_local;
reg    W_10_ce0_local;
reg    W_11_we0_local;
reg    W_11_ce0_local;
reg    W_12_we0_local;
reg    W_12_ce0_local;
reg    W_13_we0_local;
reg    W_13_ce0_local;
reg    W_14_we0_local;
reg    W_14_ce0_local;
reg    W_15_we0_local;
reg    W_15_ce0_local;
wire   [2:0] lshr_ln_fu_598_p4;
wire   [31:0] xor_ln108_1_fu_621_p2;
wire   [31:0] xor_ln108_4_fu_640_p2;
wire   [31:0] xor_ln108_7_fu_659_p2;
wire   [31:0] xor_ln108_10_fu_678_p2;
wire   [31:0] xor_ln108_13_fu_733_p2;
wire   [31:0] xor_ln108_15_fu_744_p2;
wire   [31:0] xor_ln108_16_fu_748_p2;
wire   [31:0] xor_ln108_18_fu_760_p2;
wire   [31:0] xor_ln108_19_fu_764_p2;
wire   [31:0] xor_ln108_21_fu_776_p2;
wire   [31:0] xor_ln108_22_fu_780_p2;
wire   [31:0] xor_ln108_24_fu_793_p2;
wire   [31:0] xor_ln108_25_fu_798_p2;
wire   [31:0] xor_ln108_27_fu_810_p2;
wire   [31:0] xor_ln108_28_fu_815_p2;
wire   [31:0] xor_ln108_31_fu_832_p2;
wire   [31:0] xor_ln108_30_fu_828_p2;
wire   [31:0] xor_ln108_33_fu_844_p2;
wire   [31:0] xor_ln108_34_fu_848_p2;
wire   [31:0] xor_ln108_37_fu_865_p2;
wire   [31:0] xor_ln108_36_fu_861_p2;
wire   [31:0] xor_ln108_40_fu_883_p2;
wire   [31:0] xor_ln108_39_fu_878_p2;
wire   [31:0] xor_ln108_43_fu_901_p2;
wire   [31:0] xor_ln108_42_fu_896_p2;
wire   [31:0] xor_ln108_46_fu_919_p2;
wire   [31:0] xor_ln108_45_fu_913_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_96 = 7'd0;
#0 store_forwarded204_fu_100 = 32'd0;
#0 store_forwarded207_fu_104 = 32'd0;
#0 store_forwarded210_fu_108 = 32'd0;
#0 store_forwarded213_fu_112 = 32'd0;
#0 store_forwarded216_fu_116 = 32'd0;
#0 store_forwarded219_fu_120 = 32'd0;
#0 store_forwarded222_fu_124 = 32'd0;
#0 store_forwarded225_fu_128 = 32'd0;
#0 store_forwarded228_fu_132 = 32'd0;
#0 store_forwarded231_fu_136 = 32'd0;
#0 store_forwarded234_fu_140 = 32'd0;
#0 store_forwarded237_fu_144 = 32'd0;
#0 store_forwarded240_fu_148 = 32'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter0_stage1) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_96 <= 7'd16;
    end else if (((icmp_ln106_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_96 <= add_ln106_fu_696_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            store_forwarded198_reg_466 <= xor_ln108_44_fu_906_p2;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            store_forwarded198_reg_466 <= sha_info_data_load_14;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            store_forwarded201_reg_456 <= xor_ln108_41_fu_889_p2;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            store_forwarded201_reg_456 <= sha_info_data_load_13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded204_fu_100 <= sha_info_data_load_12;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded204_fu_100 <= xor_ln108_23_fu_786_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded207_fu_104 <= sha_info_data_load_11;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded207_fu_104 <= xor_ln108_38_fu_871_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded210_fu_108 <= sha_info_data_load_10;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded210_fu_108 <= xor_ln108_35_fu_854_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded213_fu_112 <= sha_info_data_load_9;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded213_fu_112 <= xor_ln108_20_fu_769_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded216_fu_116 <= sha_info_data_load_8;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded216_fu_116 <= xor_ln108_32_fu_837_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded219_fu_120 <= sha_info_data_load_7;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded219_fu_120 <= xor_ln108_29_fu_821_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded222_fu_124 <= sha_info_data_load_6;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded222_fu_124 <= xor_ln108_17_fu_754_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded225_fu_128 <= sha_info_data_load_5;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded225_fu_128 <= xor_ln108_26_fu_804_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded228_fu_132 <= sha_info_data_load_4;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded228_fu_132 <= xor_ln108_14_fu_738_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded231_fu_136 <= sha_info_data_load_3;
    end else if (((icmp_ln106_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded231_fu_136 <= xor_ln108_11_fu_684_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded234_fu_140 <= sha_info_data_load_2;
    end else if (((icmp_ln106_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded234_fu_140 <= xor_ln108_8_fu_665_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded237_fu_144 <= sha_info_data_load_1;
    end else if (((icmp_ln106_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded237_fu_144 <= xor_ln108_5_fu_646_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded240_fu_148 <= sha_info_data_load;
    end else if (((icmp_ln106_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded240_fu_148 <= xor_ln108_2_fu_627_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            store_forwarded_reg_476 <= xor_ln108_47_fu_924_p2;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            store_forwarded_reg_476 <= sha_info_data_load_15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded207_load_reg_1092 <= store_forwarded207_fu_104;
        store_forwarded210_load_reg_1097 <= store_forwarded210_fu_108;
        store_forwarded213_load_reg_1102 <= store_forwarded213_fu_112;
        store_forwarded216_load_reg_1107 <= store_forwarded216_fu_116;
        store_forwarded222_load_reg_1112 <= store_forwarded222_fu_124;
        store_forwarded225_load_reg_1118 <= store_forwarded225_fu_128;
        store_forwarded228_load_reg_1124 <= store_forwarded228_fu_132;
        store_forwarded231_load_reg_1130 <= store_forwarded231_fu_136;
        store_forwarded234_load_reg_1135 <= store_forwarded234_fu_140;
        store_forwarded237_load_reg_1140 <= store_forwarded237_fu_144;
        store_forwarded240_load_reg_1145 <= store_forwarded240_fu_148;
        xor_ln108_11_reg_1202 <= xor_ln108_11_fu_684_p2;
        xor_ln108_12_reg_1208 <= xor_ln108_12_fu_690_p2;
        xor_ln108_2_reg_1172 <= xor_ln108_2_fu_627_p2;
        xor_ln108_3_reg_1177 <= xor_ln108_3_fu_634_p2;
        xor_ln108_5_reg_1182 <= xor_ln108_5_fu_646_p2;
        xor_ln108_6_reg_1187 <= xor_ln108_6_fu_653_p2;
        xor_ln108_8_reg_1192 <= xor_ln108_8_fu_665_p2;
        xor_ln108_9_reg_1197 <= xor_ln108_9_fu_672_p2;
        xor_ln108_reg_1167 <= xor_ln108_fu_615_p2;
        zext_ln99_reg_1150[2 : 0] <= zext_ln99_fu_608_p1[2 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_we0_local = 1'b1;
    end else begin
        W_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_we0_local = 1'b1;
    end else begin
        W_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_we0_local = 1'b1;
    end else begin
        W_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_we0_local = 1'b1;
    end else begin
        W_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_we0_local = 1'b1;
    end else begin
        W_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_we0_local = 1'b1;
    end else begin
        W_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_we0_local = 1'b1;
    end else begin
        W_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_we0_local = 1'b1;
    end else begin
        W_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_we0_local = 1'b1;
    end else begin
        W_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_we0_local = 1'b1;
    end else begin
        W_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_8_we0_local = 1'b1;
    end else begin
        W_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_we0_local = 1'b1;
    end else begin
        W_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_559_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign W_10_address0 = zext_ln99_reg_1150;
assign W_10_ce0 = W_10_ce0_local;
assign W_10_d0 = xor_ln108_35_fu_854_p2;
assign W_10_we0 = W_10_we0_local;
assign W_11_address0 = zext_ln99_reg_1150;
assign W_11_ce0 = W_11_ce0_local;
assign W_11_d0 = xor_ln108_38_fu_871_p2;
assign W_11_we0 = W_11_we0_local;
assign W_12_address0 = zext_ln99_reg_1150;
assign W_12_ce0 = W_12_ce0_local;
assign W_12_d0 = xor_ln108_23_fu_786_p2;
assign W_12_we0 = W_12_we0_local;
assign W_13_address0 = zext_ln99_reg_1150;
assign W_13_ce0 = W_13_ce0_local;
assign W_13_d0 = xor_ln108_41_fu_889_p2;
assign W_13_we0 = W_13_we0_local;
assign W_14_address0 = zext_ln99_reg_1150;
assign W_14_ce0 = W_14_ce0_local;
assign W_14_d0 = xor_ln108_44_fu_906_p2;
assign W_14_we0 = W_14_we0_local;
assign W_15_address0 = zext_ln99_reg_1150;
assign W_15_ce0 = W_15_ce0_local;
assign W_15_d0 = xor_ln108_47_fu_924_p2;
assign W_15_we0 = W_15_we0_local;
assign W_1_address0 = zext_ln99_fu_608_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_d0 = xor_ln108_5_fu_646_p2;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = zext_ln99_fu_608_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_d0 = xor_ln108_8_fu_665_p2;
assign W_2_we0 = W_2_we0_local;
assign W_3_address0 = zext_ln99_reg_1150;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_d0 = xor_ln108_11_reg_1202;
assign W_3_we0 = W_3_we0_local;
assign W_4_address0 = zext_ln99_reg_1150;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_d0 = xor_ln108_14_fu_738_p2;
assign W_4_we0 = W_4_we0_local;
assign W_5_address0 = zext_ln99_reg_1150;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_d0 = xor_ln108_26_fu_804_p2;
assign W_5_we0 = W_5_we0_local;
assign W_6_address0 = zext_ln99_reg_1150;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_d0 = xor_ln108_17_fu_754_p2;
assign W_6_we0 = W_6_we0_local;
assign W_7_address0 = zext_ln99_reg_1150;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_d0 = xor_ln108_29_fu_821_p2;
assign W_7_we0 = W_7_we0_local;
assign W_8_address0 = zext_ln99_reg_1150;
assign W_8_ce0 = W_8_ce0_local;
assign W_8_d0 = xor_ln108_32_fu_837_p2;
assign W_8_we0 = W_8_we0_local;
assign W_9_address0 = zext_ln99_reg_1150;
assign W_9_ce0 = W_9_ce0_local;
assign W_9_d0 = xor_ln108_20_fu_769_p2;
assign W_9_we0 = W_9_we0_local;
assign W_address0 = zext_ln99_fu_608_p1;
assign W_ce0 = W_ce0_local;
assign W_d0 = xor_ln108_2_fu_627_p2;
assign W_we0 = W_we0_local;
assign add_ln106_fu_696_p2 = (i_fu_96 + 7'd16);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_559_p2 = ((i_fu_96 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln_fu_598_p4 = {{i_fu_96[6:4]}};
assign xor_ln108_10_fu_678_p2 = (xor_ln108_9_fu_672_p2 ^ store_forwarded207_fu_104);
assign xor_ln108_11_fu_684_p2 = (xor_ln108_10_fu_678_p2 ^ store_forwarded231_fu_136);
assign xor_ln108_12_fu_690_p2 = (xor_ln108_5_fu_646_p2 ^ store_forwarded222_fu_124);
assign xor_ln108_13_fu_733_p2 = (xor_ln108_12_reg_1208 ^ store_forwarded204_fu_100);
assign xor_ln108_14_fu_738_p2 = (xor_ln108_13_fu_733_p2 ^ store_forwarded228_load_reg_1124);
assign xor_ln108_15_fu_744_p2 = (xor_ln108_11_reg_1202 ^ store_forwarded216_load_reg_1107);
assign xor_ln108_16_fu_748_p2 = (xor_ln108_15_fu_744_p2 ^ store_forwarded198_reg_466);
assign xor_ln108_17_fu_754_p2 = (xor_ln108_16_fu_748_p2 ^ store_forwarded222_load_reg_1112);
assign xor_ln108_18_fu_760_p2 = (xor_ln108_3_reg_1177 ^ store_forwarded237_load_reg_1140);
assign xor_ln108_19_fu_764_p2 = (xor_ln108_18_fu_760_p2 ^ store_forwarded207_load_reg_1092);
assign xor_ln108_1_fu_621_p2 = (xor_ln108_fu_615_p2 ^ store_forwarded216_fu_116);
assign xor_ln108_20_fu_769_p2 = (xor_ln108_19_fu_764_p2 ^ xor_ln108_17_fu_754_p2);
assign xor_ln108_21_fu_776_p2 = (xor_ln108_12_reg_1208 ^ store_forwarded228_load_reg_1124);
assign xor_ln108_22_fu_780_p2 = (xor_ln108_21_fu_776_p2 ^ store_forwarded198_reg_466);
assign xor_ln108_23_fu_786_p2 = (xor_ln108_22_fu_780_p2 ^ xor_ln108_20_fu_769_p2);
assign xor_ln108_24_fu_793_p2 = (xor_ln108_8_reg_1192 ^ store_forwarded219_fu_120);
assign xor_ln108_25_fu_798_p2 = (xor_ln108_24_fu_793_p2 ^ store_forwarded201_reg_456);
assign xor_ln108_26_fu_804_p2 = (xor_ln108_25_fu_798_p2 ^ store_forwarded225_load_reg_1118);
assign xor_ln108_27_fu_810_p2 = (xor_ln108_14_fu_738_p2 ^ store_forwarded213_load_reg_1102);
assign xor_ln108_28_fu_815_p2 = (xor_ln108_27_fu_810_p2 ^ store_forwarded_reg_476);
assign xor_ln108_29_fu_821_p2 = (xor_ln108_28_fu_815_p2 ^ store_forwarded219_fu_120);
assign xor_ln108_2_fu_627_p2 = (xor_ln108_1_fu_621_p2 ^ store_forwarded240_fu_148);
assign xor_ln108_30_fu_828_p2 = (xor_ln108_reg_1167 ^ store_forwarded240_load_reg_1145);
assign xor_ln108_31_fu_832_p2 = (xor_ln108_26_fu_804_p2 ^ store_forwarded210_load_reg_1097);
assign xor_ln108_32_fu_837_p2 = (xor_ln108_31_fu_832_p2 ^ xor_ln108_30_fu_828_p2);
assign xor_ln108_33_fu_844_p2 = (xor_ln108_6_reg_1187 ^ store_forwarded234_load_reg_1135);
assign xor_ln108_34_fu_848_p2 = (xor_ln108_33_fu_844_p2 ^ store_forwarded204_fu_100);
assign xor_ln108_35_fu_854_p2 = (xor_ln108_34_fu_848_p2 ^ xor_ln108_29_fu_821_p2);
assign xor_ln108_36_fu_861_p2 = (xor_ln108_9_reg_1197 ^ store_forwarded231_load_reg_1130);
assign xor_ln108_37_fu_865_p2 = (xor_ln108_32_fu_837_p2 ^ store_forwarded201_reg_456);
assign xor_ln108_38_fu_871_p2 = (xor_ln108_37_fu_865_p2 ^ xor_ln108_36_fu_861_p2);
assign xor_ln108_39_fu_878_p2 = (xor_ln108_24_fu_793_p2 ^ store_forwarded225_load_reg_1118);
assign xor_ln108_3_fu_634_p2 = (store_forwarded231_fu_136 ^ store_forwarded198_reg_466);
assign xor_ln108_40_fu_883_p2 = (xor_ln108_35_fu_854_p2 ^ store_forwarded_reg_476);
assign xor_ln108_41_fu_889_p2 = (xor_ln108_40_fu_883_p2 ^ xor_ln108_39_fu_878_p2);
assign xor_ln108_42_fu_896_p2 = (xor_ln108_15_fu_744_p2 ^ store_forwarded222_load_reg_1112);
assign xor_ln108_43_fu_901_p2 = (xor_ln108_38_fu_871_p2 ^ xor_ln108_2_reg_1172);
assign xor_ln108_44_fu_906_p2 = (xor_ln108_43_fu_901_p2 ^ xor_ln108_42_fu_896_p2);
assign xor_ln108_45_fu_913_p2 = (xor_ln108_27_fu_810_p2 ^ store_forwarded219_fu_120);
assign xor_ln108_46_fu_919_p2 = (xor_ln108_5_reg_1182 ^ xor_ln108_23_fu_786_p2);
assign xor_ln108_47_fu_924_p2 = (xor_ln108_46_fu_919_p2 ^ xor_ln108_45_fu_913_p2);
assign xor_ln108_4_fu_640_p2 = (xor_ln108_3_fu_634_p2 ^ store_forwarded213_fu_112);
assign xor_ln108_5_fu_646_p2 = (xor_ln108_4_fu_640_p2 ^ store_forwarded237_fu_144);
assign xor_ln108_6_fu_653_p2 = (store_forwarded_reg_476 ^ store_forwarded228_fu_132);
assign xor_ln108_7_fu_659_p2 = (xor_ln108_6_fu_653_p2 ^ store_forwarded210_fu_108);
assign xor_ln108_8_fu_665_p2 = (xor_ln108_7_fu_659_p2 ^ store_forwarded234_fu_140);
assign xor_ln108_9_fu_672_p2 = (xor_ln108_2_fu_627_p2 ^ store_forwarded225_fu_128);
assign xor_ln108_fu_615_p2 = (store_forwarded234_fu_140 ^ store_forwarded201_reg_456);
assign zext_ln99_fu_608_p1 = lshr_ln_fu_598_p4;
always @ (posedge ap_clk) begin
    zext_ln99_reg_1150[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 