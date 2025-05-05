module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sha_info_data_load_7,sha_info_data_load_6,sha_info_data_load_12,sha_info_data_load_5,sha_info_data_load_11,sha_info_data_load_4,sha_info_data_load_10,sha_info_data_load_15,sha_info_data_load_1,sha_info_data_load_3,sha_info_data_load_9,sha_info_data_load_14,sha_info_data_load,sha_info_data_load_2,sha_info_data_load_8,sha_info_data_load_13,W_7_address0,W_7_ce0,W_7_we0,W_7_d0,W_7_address1,W_7_ce1,W_7_we1,W_7_d1,W_6_address0,W_6_ce0,W_6_we0,W_6_d0,W_6_address1,W_6_ce1,W_6_we1,W_6_d1,W_5_address0,W_5_ce0,W_5_we0,W_5_d0,W_5_address1,W_5_ce1,W_5_we1,W_5_d1,W_4_address0,W_4_ce0,W_4_we0,W_4_d0,W_4_address1,W_4_ce1,W_4_we1,W_4_d1,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_address1,W_3_ce1,W_3_we1,W_3_d1,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_address0,W_ce0,W_we0,W_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sha_info_data_load_7;
input  [31:0] sha_info_data_load_6;
input  [31:0] sha_info_data_load_12;
input  [31:0] sha_info_data_load_5;
input  [31:0] sha_info_data_load_11;
input  [31:0] sha_info_data_load_4;
input  [31:0] sha_info_data_load_10;
input  [31:0] sha_info_data_load_15;
input  [31:0] sha_info_data_load_1;
input  [31:0] sha_info_data_load_3;
input  [31:0] sha_info_data_load_9;
input  [31:0] sha_info_data_load_14;
input  [31:0] sha_info_data_load;
input  [31:0] sha_info_data_load_2;
input  [31:0] sha_info_data_load_8;
input  [31:0] sha_info_data_load_13;
output  [3:0] W_7_address0;
output   W_7_ce0;
output   W_7_we0;
output  [31:0] W_7_d0;
output  [3:0] W_7_address1;
output   W_7_ce1;
output   W_7_we1;
output  [31:0] W_7_d1;
output  [3:0] W_6_address0;
output   W_6_ce0;
output   W_6_we0;
output  [31:0] W_6_d0;
output  [3:0] W_6_address1;
output   W_6_ce1;
output   W_6_we1;
output  [31:0] W_6_d1;
output  [3:0] W_5_address0;
output   W_5_ce0;
output   W_5_we0;
output  [31:0] W_5_d0;
output  [3:0] W_5_address1;
output   W_5_ce1;
output   W_5_we1;
output  [31:0] W_5_d1;
output  [3:0] W_4_address0;
output   W_4_ce0;
output   W_4_we0;
output  [31:0] W_4_d0;
output  [3:0] W_4_address1;
output   W_4_ce1;
output   W_4_we1;
output  [31:0] W_4_d1;
output  [3:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
output  [3:0] W_3_address1;
output   W_3_ce1;
output   W_3_we1;
output  [31:0] W_3_d1;
output  [3:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
output  [3:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
output  [3:0] W_address0;
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
wire   [0:0] icmp_ln106_fu_528_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] store_forwarded_load_reg_1114;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] store_forwarded105_load_reg_1120;
reg   [31:0] store_forwarded108_load_reg_1125;
reg   [31:0] store_forwarded111_load_reg_1130;
reg   [31:0] store_forwarded114_load_reg_1135;
reg   [31:0] store_forwarded117_load_reg_1141;
reg   [31:0] store_forwarded120_load_reg_1146;
reg   [31:0] store_forwarded123_load_reg_1151;
reg   [31:0] store_forwarded126_load_reg_1156;
reg   [31:0] store_forwarded129_load_reg_1162;
reg   [31:0] store_forwarded135_load_reg_1167;
reg   [31:0] store_forwarded132_load_reg_1172;
reg   [31:0] store_forwarded138_load_reg_1178;
reg   [31:0] store_forwarded144_load_reg_1184;
wire   [63:0] zext_ln99_fu_586_p1;
reg   [63:0] zext_ln99_reg_1190;
wire   [31:0] xor_ln108_fu_593_p2;
reg   [31:0] xor_ln108_reg_1199;
wire   [31:0] xor_ln108_2_fu_605_p2;
reg   [31:0] xor_ln108_2_reg_1204;
wire   [31:0] xor_ln108_3_fu_612_p2;
reg   [31:0] xor_ln108_3_reg_1209;
wire   [31:0] xor_ln108_5_fu_624_p2;
reg   [31:0] xor_ln108_5_reg_1214;
wire   [31:0] xor_ln108_6_fu_631_p2;
reg   [31:0] xor_ln108_6_reg_1219;
wire   [31:0] xor_ln108_8_fu_643_p2;
reg   [31:0] xor_ln108_8_reg_1224;
wire   [31:0] xor_ln108_9_fu_650_p2;
reg   [31:0] xor_ln108_9_reg_1229;
wire   [31:0] xor_ln108_11_fu_662_p2;
reg   [31:0] xor_ln108_11_reg_1234;
wire   [31:0] xor_ln108_12_fu_668_p2;
reg   [31:0] xor_ln108_12_reg_1240;
reg   [2:0] tmp_reg_1246;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln108_fu_787_p1;
reg   [6:0] i_fu_88;
wire   [6:0] add_ln106_fu_684_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] store_forwarded_fu_92;
wire   [31:0] xor_ln108_41_fu_890_p2;
reg   [31:0] store_forwarded105_fu_96;
wire   [31:0] xor_ln108_26_fu_808_p2;
reg   [31:0] store_forwarded108_fu_100;
reg   [31:0] store_forwarded111_fu_104;
reg   [31:0] store_forwarded114_fu_108;
wire   [31:0] xor_ln108_44_fu_907_p2;
reg   [31:0] store_forwarded117_fu_112;
wire   [31:0] xor_ln108_29_fu_824_p2;
reg   [31:0] store_forwarded120_fu_116;
reg   [31:0] store_forwarded123_fu_120;
reg   [31:0] store_forwarded126_fu_124;
wire   [31:0] xor_ln108_47_fu_925_p2;
reg   [31:0] store_forwarded129_fu_128;
wire   [31:0] xor_ln108_32_fu_841_p2;
reg   [31:0] store_forwarded135_fu_132;
wire   [31:0] xor_ln108_35_fu_857_p2;
reg   [31:0] store_forwarded132_fu_136;
wire   [31:0] xor_ln108_14_fu_726_p2;
reg   [31:0] store_forwarded141_fu_140;
wire   [31:0] xor_ln108_38_fu_873_p2;
reg   [31:0] store_forwarded138_fu_144;
wire   [31:0] xor_ln108_17_fu_742_p2;
reg   [31:0] store_forwarded144_fu_148;
wire   [31:0] xor_ln108_20_fu_757_p2;
reg   [31:0] store_forwarded147_fu_152;
wire   [31:0] xor_ln108_23_fu_773_p2;
reg    W_we0_local;
reg   [31:0] W_d0_local;
reg    W_ce0_local;
reg   [3:0] W_address0_local;
reg    W_1_we0_local;
reg   [31:0] W_1_d0_local;
reg    W_1_ce0_local;
reg   [3:0] W_1_address0_local;
reg    W_2_we0_local;
reg   [31:0] W_2_d0_local;
reg    W_2_ce0_local;
reg   [3:0] W_2_address0_local;
reg    W_3_we1_local;
reg    W_3_ce1_local;
reg    W_3_we0_local;
reg    W_3_ce0_local;
reg    W_4_we1_local;
reg    W_4_ce1_local;
reg    W_4_we0_local;
reg    W_4_ce0_local;
reg    W_5_we1_local;
reg    W_5_ce1_local;
reg    W_5_we0_local;
reg    W_5_ce0_local;
reg    W_6_we1_local;
reg    W_6_ce1_local;
reg    W_6_we0_local;
reg    W_6_ce0_local;
reg    W_7_we1_local;
reg    W_7_ce1_local;
reg    W_7_we0_local;
reg    W_7_ce0_local;
wire   [3:0] lshr_ln_fu_576_p4;
wire   [31:0] xor_ln108_1_fu_599_p2;
wire   [31:0] xor_ln108_4_fu_618_p2;
wire   [31:0] xor_ln108_7_fu_637_p2;
wire   [31:0] xor_ln108_10_fu_656_p2;
wire   [31:0] xor_ln108_13_fu_721_p2;
wire   [31:0] xor_ln108_15_fu_732_p2;
wire   [31:0] xor_ln108_16_fu_737_p2;
wire   [31:0] xor_ln108_18_fu_748_p2;
wire   [31:0] xor_ln108_19_fu_752_p2;
wire   [31:0] xor_ln108_21_fu_763_p2;
wire   [31:0] xor_ln108_22_fu_768_p2;
wire   [3:0] or_ln_fu_780_p3;
wire   [31:0] xor_ln108_25_fu_803_p2;
wire   [31:0] xor_ln108_24_fu_799_p2;
wire   [31:0] xor_ln108_28_fu_819_p2;
wire   [31:0] xor_ln108_27_fu_815_p2;
wire   [31:0] xor_ln108_31_fu_836_p2;
wire   [31:0] xor_ln108_30_fu_831_p2;
wire   [31:0] xor_ln108_34_fu_852_p2;
wire   [31:0] xor_ln108_33_fu_848_p2;
wire   [31:0] xor_ln108_37_fu_868_p2;
wire   [31:0] xor_ln108_36_fu_864_p2;
wire   [31:0] xor_ln108_40_fu_885_p2;
wire   [31:0] xor_ln108_39_fu_880_p2;
wire   [31:0] xor_ln108_43_fu_902_p2;
wire   [31:0] xor_ln108_42_fu_897_p2;
wire   [31:0] xor_ln108_46_fu_920_p2;
wire   [31:0] xor_ln108_45_fu_914_p2;
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
#0 i_fu_88 = 7'd0;
#0 store_forwarded_fu_92 = 32'd0;
#0 store_forwarded105_fu_96 = 32'd0;
#0 store_forwarded108_fu_100 = 32'd0;
#0 store_forwarded111_fu_104 = 32'd0;
#0 store_forwarded114_fu_108 = 32'd0;
#0 store_forwarded117_fu_112 = 32'd0;
#0 store_forwarded120_fu_116 = 32'd0;
#0 store_forwarded123_fu_120 = 32'd0;
#0 store_forwarded126_fu_124 = 32'd0;
#0 store_forwarded129_fu_128 = 32'd0;
#0 store_forwarded135_fu_132 = 32'd0;
#0 store_forwarded132_fu_136 = 32'd0;
#0 store_forwarded141_fu_140 = 32'd0;
#0 store_forwarded138_fu_144 = 32'd0;
#0 store_forwarded144_fu_148 = 32'd0;
#0 store_forwarded147_fu_152 = 32'd0;
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
        i_fu_88 <= 7'd16;
    end else if (((icmp_ln106_fu_528_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_88 <= add_ln106_fu_684_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded105_fu_96 <= sha_info_data_load_8;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded105_fu_96 <= xor_ln108_26_fu_808_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded108_fu_100 <= sha_info_data_load_2;
    end else if (((icmp_ln106_fu_528_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded108_fu_100 <= xor_ln108_8_fu_643_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded111_fu_104 <= sha_info_data_load;
    end else if (((icmp_ln106_fu_528_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded111_fu_104 <= xor_ln108_2_fu_605_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded114_fu_108 <= sha_info_data_load_14;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded114_fu_108 <= xor_ln108_44_fu_907_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded117_fu_112 <= sha_info_data_load_9;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded117_fu_112 <= xor_ln108_29_fu_824_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded120_fu_116 <= sha_info_data_load_3;
    end else if (((icmp_ln106_fu_528_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded120_fu_116 <= xor_ln108_11_fu_662_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded123_fu_120 <= sha_info_data_load_1;
    end else if (((icmp_ln106_fu_528_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded123_fu_120 <= xor_ln108_5_fu_624_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded126_fu_124 <= sha_info_data_load_15;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded126_fu_124 <= xor_ln108_47_fu_925_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded129_fu_128 <= sha_info_data_load_10;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded129_fu_128 <= xor_ln108_32_fu_841_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded132_fu_136 <= sha_info_data_load_4;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded132_fu_136 <= xor_ln108_14_fu_726_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded135_fu_132 <= sha_info_data_load_11;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded135_fu_132 <= xor_ln108_35_fu_857_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded138_fu_144 <= sha_info_data_load_5;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded138_fu_144 <= xor_ln108_17_fu_742_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded141_fu_140 <= sha_info_data_load_12;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded141_fu_140 <= xor_ln108_38_fu_873_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded144_fu_148 <= sha_info_data_load_6;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded144_fu_148 <= xor_ln108_20_fu_757_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded147_fu_152 <= sha_info_data_load_7;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded147_fu_152 <= xor_ln108_23_fu_773_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded_fu_92 <= sha_info_data_load_13;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded_fu_92 <= xor_ln108_41_fu_890_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded105_load_reg_1120 <= store_forwarded105_fu_96;
        store_forwarded108_load_reg_1125 <= store_forwarded108_fu_100;
        store_forwarded111_load_reg_1130 <= store_forwarded111_fu_104;
        store_forwarded114_load_reg_1135 <= store_forwarded114_fu_108;
        store_forwarded117_load_reg_1141 <= store_forwarded117_fu_112;
        store_forwarded120_load_reg_1146 <= store_forwarded120_fu_116;
        store_forwarded123_load_reg_1151 <= store_forwarded123_fu_120;
        store_forwarded126_load_reg_1156 <= store_forwarded126_fu_124;
        store_forwarded129_load_reg_1162 <= store_forwarded129_fu_128;
        store_forwarded132_load_reg_1172 <= store_forwarded132_fu_136;
        store_forwarded135_load_reg_1167 <= store_forwarded135_fu_132;
        store_forwarded138_load_reg_1178 <= store_forwarded138_fu_144;
        store_forwarded144_load_reg_1184 <= store_forwarded144_fu_148;
        store_forwarded_load_reg_1114 <= store_forwarded_fu_92;
        tmp_reg_1246 <= {{i_fu_88[6:4]}};
        xor_ln108_11_reg_1234 <= xor_ln108_11_fu_662_p2;
        xor_ln108_12_reg_1240 <= xor_ln108_12_fu_668_p2;
        xor_ln108_2_reg_1204 <= xor_ln108_2_fu_605_p2;
        xor_ln108_3_reg_1209 <= xor_ln108_3_fu_612_p2;
        xor_ln108_5_reg_1214 <= xor_ln108_5_fu_624_p2;
        xor_ln108_6_reg_1219 <= xor_ln108_6_fu_631_p2;
        xor_ln108_8_reg_1224 <= xor_ln108_8_fu_643_p2;
        xor_ln108_9_reg_1229 <= xor_ln108_9_fu_650_p2;
        xor_ln108_reg_1199 <= xor_ln108_fu_593_p2;
        zext_ln99_reg_1190[3 : 0] <= zext_ln99_fu_586_p1[3 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_address0_local = zext_ln108_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_address0_local = zext_ln99_fu_586_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_d0_local = xor_ln108_29_fu_824_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_d0_local = xor_ln108_5_fu_624_p2;
    end else begin
        W_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln106_fu_528_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_address0_local = zext_ln108_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_address0_local = zext_ln99_fu_586_p1;
    end else begin
        W_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_d0_local = xor_ln108_32_fu_841_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_d0_local = xor_ln108_8_fu_643_p2;
    end else begin
        W_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln106_fu_528_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
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
        W_3_we1_local = 1'b1;
    end else begin
        W_3_we1_local = 1'b0;
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
        W_4_ce1_local = 1'b1;
    end else begin
        W_4_ce1_local = 1'b0;
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
        W_4_we1_local = 1'b1;
    end else begin
        W_4_we1_local = 1'b0;
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
        W_5_ce1_local = 1'b1;
    end else begin
        W_5_ce1_local = 1'b0;
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
        W_5_we1_local = 1'b1;
    end else begin
        W_5_we1_local = 1'b0;
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
        W_6_ce1_local = 1'b1;
    end else begin
        W_6_ce1_local = 1'b0;
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
        W_6_we1_local = 1'b1;
    end else begin
        W_6_we1_local = 1'b0;
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
        W_7_ce1_local = 1'b1;
    end else begin
        W_7_ce1_local = 1'b0;
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
        W_7_we1_local = 1'b1;
    end else begin
        W_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_address0_local = zext_ln108_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_address0_local = zext_ln99_fu_586_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_d0_local = xor_ln108_26_fu_808_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_d0_local = xor_ln108_2_fu_605_p2;
    end else begin
        W_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln106_fu_528_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_528_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
assign W_1_address0 = W_1_address0_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_d0 = W_1_d0_local;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = W_2_address0_local;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_d0 = W_2_d0_local;
assign W_2_we0 = W_2_we0_local;
assign W_3_address0 = zext_ln108_fu_787_p1;
assign W_3_address1 = zext_ln99_reg_1190;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_d0 = xor_ln108_35_fu_857_p2;
assign W_3_d1 = xor_ln108_11_reg_1234;
assign W_3_we0 = W_3_we0_local;
assign W_3_we1 = W_3_we1_local;
assign W_4_address0 = zext_ln108_fu_787_p1;
assign W_4_address1 = zext_ln99_reg_1190;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_ce1 = W_4_ce1_local;
assign W_4_d0 = xor_ln108_38_fu_873_p2;
assign W_4_d1 = xor_ln108_14_fu_726_p2;
assign W_4_we0 = W_4_we0_local;
assign W_4_we1 = W_4_we1_local;
assign W_5_address0 = zext_ln108_fu_787_p1;
assign W_5_address1 = zext_ln99_reg_1190;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_ce1 = W_5_ce1_local;
assign W_5_d0 = xor_ln108_41_fu_890_p2;
assign W_5_d1 = xor_ln108_17_fu_742_p2;
assign W_5_we0 = W_5_we0_local;
assign W_5_we1 = W_5_we1_local;
assign W_6_address0 = zext_ln108_fu_787_p1;
assign W_6_address1 = zext_ln99_reg_1190;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_ce1 = W_6_ce1_local;
assign W_6_d0 = xor_ln108_44_fu_907_p2;
assign W_6_d1 = xor_ln108_20_fu_757_p2;
assign W_6_we0 = W_6_we0_local;
assign W_6_we1 = W_6_we1_local;
assign W_7_address0 = zext_ln108_fu_787_p1;
assign W_7_address1 = zext_ln99_reg_1190;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_ce1 = W_7_ce1_local;
assign W_7_d0 = xor_ln108_47_fu_925_p2;
assign W_7_d1 = xor_ln108_23_fu_773_p2;
assign W_7_we0 = W_7_we0_local;
assign W_7_we1 = W_7_we1_local;
assign W_address0 = W_address0_local;
assign W_ce0 = W_ce0_local;
assign W_d0 = W_d0_local;
assign W_we0 = W_we0_local;
assign add_ln106_fu_684_p2 = (i_fu_88 + 7'd16);
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
assign icmp_ln106_fu_528_p2 = ((i_fu_88 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln_fu_576_p4 = {{i_fu_88[6:3]}};
assign or_ln_fu_780_p3 = {{tmp_reg_1246}, {1'd1}};
assign xor_ln108_10_fu_656_p2 = (xor_ln108_9_fu_650_p2 ^ store_forwarded135_fu_132);
assign xor_ln108_11_fu_662_p2 = (xor_ln108_10_fu_656_p2 ^ store_forwarded120_fu_116);
assign xor_ln108_12_fu_668_p2 = (xor_ln108_5_fu_624_p2 ^ store_forwarded144_fu_148);
assign xor_ln108_13_fu_721_p2 = (xor_ln108_12_reg_1240 ^ store_forwarded141_fu_140);
assign xor_ln108_14_fu_726_p2 = (xor_ln108_13_fu_721_p2 ^ store_forwarded132_load_reg_1172);
assign xor_ln108_15_fu_732_p2 = (xor_ln108_8_reg_1224 ^ store_forwarded147_fu_152);
assign xor_ln108_16_fu_737_p2 = (xor_ln108_15_fu_732_p2 ^ store_forwarded_load_reg_1114);
assign xor_ln108_17_fu_742_p2 = (xor_ln108_16_fu_737_p2 ^ store_forwarded138_load_reg_1178);
assign xor_ln108_18_fu_748_p2 = (xor_ln108_11_reg_1234 ^ store_forwarded105_load_reg_1120);
assign xor_ln108_19_fu_752_p2 = (xor_ln108_18_fu_748_p2 ^ store_forwarded114_load_reg_1135);
assign xor_ln108_1_fu_599_p2 = (xor_ln108_fu_593_p2 ^ store_forwarded105_fu_96);
assign xor_ln108_20_fu_757_p2 = (xor_ln108_19_fu_752_p2 ^ store_forwarded144_load_reg_1184);
assign xor_ln108_21_fu_763_p2 = (xor_ln108_14_fu_726_p2 ^ store_forwarded117_load_reg_1141);
assign xor_ln108_22_fu_768_p2 = (xor_ln108_21_fu_763_p2 ^ store_forwarded126_load_reg_1156);
assign xor_ln108_23_fu_773_p2 = (xor_ln108_22_fu_768_p2 ^ store_forwarded147_fu_152);
assign xor_ln108_24_fu_799_p2 = (xor_ln108_reg_1199 ^ store_forwarded129_load_reg_1162);
assign xor_ln108_25_fu_803_p2 = (xor_ln108_17_fu_742_p2 ^ store_forwarded111_load_reg_1130);
assign xor_ln108_26_fu_808_p2 = (xor_ln108_25_fu_803_p2 ^ xor_ln108_24_fu_799_p2);
assign xor_ln108_27_fu_815_p2 = (xor_ln108_3_reg_1209 ^ store_forwarded135_load_reg_1167);
assign xor_ln108_28_fu_819_p2 = (xor_ln108_20_fu_757_p2 ^ store_forwarded123_load_reg_1151);
assign xor_ln108_29_fu_824_p2 = (xor_ln108_28_fu_819_p2 ^ xor_ln108_27_fu_815_p2);
assign xor_ln108_2_fu_605_p2 = (xor_ln108_1_fu_599_p2 ^ store_forwarded111_fu_104);
assign xor_ln108_30_fu_831_p2 = (store_forwarded141_fu_140 ^ store_forwarded108_load_reg_1125);
assign xor_ln108_31_fu_836_p2 = (xor_ln108_6_reg_1219 ^ xor_ln108_23_fu_773_p2);
assign xor_ln108_32_fu_841_p2 = (xor_ln108_31_fu_836_p2 ^ xor_ln108_30_fu_831_p2);
assign xor_ln108_33_fu_848_p2 = (xor_ln108_9_reg_1229 ^ store_forwarded120_load_reg_1146);
assign xor_ln108_34_fu_852_p2 = (xor_ln108_26_fu_808_p2 ^ store_forwarded_load_reg_1114);
assign xor_ln108_35_fu_857_p2 = (xor_ln108_34_fu_852_p2 ^ xor_ln108_33_fu_848_p2);
assign xor_ln108_36_fu_864_p2 = (xor_ln108_12_reg_1240 ^ store_forwarded132_load_reg_1172);
assign xor_ln108_37_fu_868_p2 = (xor_ln108_29_fu_824_p2 ^ store_forwarded114_load_reg_1135);
assign xor_ln108_38_fu_873_p2 = (xor_ln108_37_fu_868_p2 ^ xor_ln108_36_fu_864_p2);
assign xor_ln108_39_fu_880_p2 = (xor_ln108_15_fu_732_p2 ^ store_forwarded138_load_reg_1178);
assign xor_ln108_3_fu_612_p2 = (store_forwarded120_fu_116 ^ store_forwarded114_fu_108);
assign xor_ln108_40_fu_885_p2 = (xor_ln108_32_fu_841_p2 ^ store_forwarded126_load_reg_1156);
assign xor_ln108_41_fu_890_p2 = (xor_ln108_40_fu_885_p2 ^ xor_ln108_39_fu_880_p2);
assign xor_ln108_42_fu_897_p2 = (xor_ln108_18_fu_748_p2 ^ store_forwarded144_load_reg_1184);
assign xor_ln108_43_fu_902_p2 = (xor_ln108_35_fu_857_p2 ^ xor_ln108_2_reg_1204);
assign xor_ln108_44_fu_907_p2 = (xor_ln108_43_fu_902_p2 ^ xor_ln108_42_fu_897_p2);
assign xor_ln108_45_fu_914_p2 = (xor_ln108_21_fu_763_p2 ^ store_forwarded147_fu_152);
assign xor_ln108_46_fu_920_p2 = (xor_ln108_5_reg_1214 ^ xor_ln108_38_fu_873_p2);
assign xor_ln108_47_fu_925_p2 = (xor_ln108_46_fu_920_p2 ^ xor_ln108_45_fu_914_p2);
assign xor_ln108_4_fu_618_p2 = (xor_ln108_3_fu_612_p2 ^ store_forwarded117_fu_112);
assign xor_ln108_5_fu_624_p2 = (xor_ln108_4_fu_618_p2 ^ store_forwarded123_fu_120);
assign xor_ln108_6_fu_631_p2 = (store_forwarded132_fu_136 ^ store_forwarded126_fu_124);
assign xor_ln108_7_fu_637_p2 = (xor_ln108_6_fu_631_p2 ^ store_forwarded129_fu_128);
assign xor_ln108_8_fu_643_p2 = (xor_ln108_7_fu_637_p2 ^ store_forwarded108_fu_100);
assign xor_ln108_9_fu_650_p2 = (xor_ln108_2_fu_605_p2 ^ store_forwarded138_fu_144);
assign xor_ln108_fu_593_p2 = (store_forwarded_fu_92 ^ store_forwarded108_fu_100);
assign zext_ln108_fu_787_p1 = or_ln_fu_780_p3;
assign zext_ln99_fu_586_p1 = lshr_ln_fu_576_p4;
always @ (posedge ap_clk) begin
    zext_ln99_reg_1190[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 