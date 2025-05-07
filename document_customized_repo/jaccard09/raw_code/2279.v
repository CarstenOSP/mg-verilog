module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln104,zext_ln104_1,zext_ln104_2,zext_ln104_3,zext_ln104_4,zext_ln104_5,zext_ln104_6,zext_ln104_7,zext_ln104_8,zext_ln104_9,zext_ln104_10,zext_ln104_11,zext_ln104_12,zext_ln104_13,zext_ln104_14,zext_ln104_15,W_15_address0,W_15_ce0,W_15_we0,W_15_d0,W_14_address0,W_14_ce0,W_14_we0,W_14_d0,W_13_address0,W_13_ce0,W_13_we0,W_13_d0,W_12_address0,W_12_ce0,W_12_we0,W_12_d0,W_11_address0,W_11_ce0,W_11_we0,W_11_d0,W_10_address0,W_10_ce0,W_10_we0,W_10_d0,W_9_address0,W_9_ce0,W_9_we0,W_9_d0,W_8_address0,W_8_ce0,W_8_we0,W_8_d0,W_7_address0,W_7_ce0,W_7_we0,W_7_d0,W_6_address0,W_6_ce0,W_6_we0,W_6_d0,W_5_address0,W_5_ce0,W_5_we0,W_5_d0,W_4_address0,W_4_ce0,W_4_we0,W_4_d0,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_address0,W_ce0,W_we0,W_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [30:0] zext_ln104;
input  [30:0] zext_ln104_1;
input  [30:0] zext_ln104_2;
input  [30:0] zext_ln104_3;
input  [30:0] zext_ln104_4;
input  [30:0] zext_ln104_5;
input  [30:0] zext_ln104_6;
input  [30:0] zext_ln104_7;
input  [30:0] zext_ln104_8;
input  [30:0] zext_ln104_9;
input  [30:0] zext_ln104_10;
input  [30:0] zext_ln104_11;
input  [30:0] zext_ln104_12;
input  [30:0] zext_ln104_13;
input  [30:0] zext_ln104_14;
input  [30:0] zext_ln104_15;
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
wire   [0:0] icmp_ln106_fu_623_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] store_forwarded197_reg_456;
reg   [31:0] store_forwarded194_reg_466;
reg   [31:0] store_forwarded_reg_476;
wire   [31:0] zext_ln104_15_cast_fu_486_p1;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] zext_ln104_14_cast_fu_490_p1;
wire   [31:0] zext_ln104_13_cast_fu_494_p1;
reg   [31:0] store_forwarded203_load_reg_1156;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] store_forwarded206_load_reg_1161;
reg   [31:0] store_forwarded209_load_reg_1166;
reg   [31:0] store_forwarded212_load_reg_1171;
reg   [31:0] store_forwarded218_load_reg_1176;
reg   [31:0] store_forwarded221_load_reg_1182;
reg   [31:0] store_forwarded224_load_reg_1188;
reg   [31:0] store_forwarded227_load_reg_1194;
reg   [31:0] store_forwarded230_load_reg_1199;
reg   [31:0] store_forwarded233_load_reg_1204;
reg   [31:0] store_forwarded236_load_reg_1209;
wire   [63:0] zext_ln99_fu_672_p1;
reg   [63:0] zext_ln99_reg_1214;
wire   [31:0] xor_ln108_fu_679_p2;
reg   [31:0] xor_ln108_reg_1231;
wire   [31:0] xor_ln108_2_fu_691_p2;
reg   [31:0] xor_ln108_2_reg_1236;
wire   [31:0] xor_ln108_3_fu_698_p2;
reg   [31:0] xor_ln108_3_reg_1241;
wire   [31:0] xor_ln108_5_fu_710_p2;
reg   [31:0] xor_ln108_5_reg_1246;
wire   [31:0] xor_ln108_6_fu_717_p2;
reg   [31:0] xor_ln108_6_reg_1251;
wire   [31:0] xor_ln108_8_fu_729_p2;
reg   [31:0] xor_ln108_8_reg_1256;
wire   [31:0] xor_ln108_9_fu_736_p2;
reg   [31:0] xor_ln108_9_reg_1261;
wire   [31:0] xor_ln108_11_fu_748_p2;
reg   [31:0] xor_ln108_11_reg_1266;
wire   [31:0] xor_ln108_12_fu_754_p2;
reg   [31:0] xor_ln108_12_reg_1272;
wire   [31:0] xor_ln108_41_fu_953_p2;
wire   [31:0] xor_ln108_44_fu_970_p2;
wire   [31:0] xor_ln108_47_fu_988_p2;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_96;
wire   [6:0] add_ln106_fu_760_p2;
reg   [31:0] store_forwarded200_fu_100;
wire   [31:0] xor_ln108_23_fu_850_p2;
wire   [31:0] zext_ln104_12_cast_fu_498_p1;
reg   [31:0] store_forwarded203_fu_104;
wire   [31:0] xor_ln108_38_fu_935_p2;
wire   [31:0] zext_ln104_11_cast_fu_502_p1;
reg   [31:0] store_forwarded206_fu_108;
wire   [31:0] xor_ln108_35_fu_918_p2;
wire   [31:0] zext_ln104_10_cast_fu_506_p1;
reg   [31:0] store_forwarded209_fu_112;
wire   [31:0] xor_ln108_20_fu_833_p2;
wire   [31:0] zext_ln104_9_cast_fu_510_p1;
reg   [31:0] store_forwarded212_fu_116;
wire   [31:0] xor_ln108_32_fu_901_p2;
wire   [31:0] zext_ln104_8_cast_fu_514_p1;
reg   [31:0] store_forwarded215_fu_120;
wire   [31:0] xor_ln108_29_fu_885_p2;
wire   [31:0] zext_ln104_7_cast_fu_518_p1;
reg   [31:0] store_forwarded218_fu_124;
wire   [31:0] xor_ln108_17_fu_818_p2;
wire   [31:0] zext_ln104_6_cast_fu_522_p1;
reg   [31:0] store_forwarded221_fu_128;
wire   [31:0] xor_ln108_26_fu_868_p2;
wire   [31:0] zext_ln104_5_cast_fu_526_p1;
reg   [31:0] store_forwarded224_fu_132;
wire   [31:0] xor_ln108_14_fu_802_p2;
wire   [31:0] zext_ln104_4_cast_fu_530_p1;
reg   [31:0] store_forwarded227_fu_136;
wire   [31:0] zext_ln104_3_cast_fu_534_p1;
reg   [31:0] store_forwarded230_fu_140;
wire   [31:0] zext_ln104_2_cast_fu_538_p1;
reg   [31:0] store_forwarded233_fu_144;
wire   [31:0] zext_ln104_1_cast_fu_542_p1;
reg   [31:0] store_forwarded236_fu_148;
wire   [31:0] zext_ln104_cast_fu_546_p1;
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
wire   [2:0] lshr_ln_fu_662_p4;
wire   [31:0] xor_ln108_1_fu_685_p2;
wire   [31:0] xor_ln108_4_fu_704_p2;
wire   [31:0] xor_ln108_7_fu_723_p2;
wire   [31:0] xor_ln108_10_fu_742_p2;
wire   [31:0] xor_ln108_13_fu_797_p2;
wire   [31:0] xor_ln108_15_fu_808_p2;
wire   [31:0] xor_ln108_16_fu_812_p2;
wire   [31:0] xor_ln108_18_fu_824_p2;
wire   [31:0] xor_ln108_19_fu_828_p2;
wire   [31:0] xor_ln108_21_fu_840_p2;
wire   [31:0] xor_ln108_22_fu_844_p2;
wire   [31:0] xor_ln108_24_fu_857_p2;
wire   [31:0] xor_ln108_25_fu_862_p2;
wire   [31:0] xor_ln108_27_fu_874_p2;
wire   [31:0] xor_ln108_28_fu_879_p2;
wire   [31:0] xor_ln108_31_fu_896_p2;
wire   [31:0] xor_ln108_30_fu_892_p2;
wire   [31:0] xor_ln108_33_fu_908_p2;
wire   [31:0] xor_ln108_34_fu_912_p2;
wire   [31:0] xor_ln108_37_fu_929_p2;
wire   [31:0] xor_ln108_36_fu_925_p2;
wire   [31:0] xor_ln108_40_fu_947_p2;
wire   [31:0] xor_ln108_39_fu_942_p2;
wire   [31:0] xor_ln108_43_fu_965_p2;
wire   [31:0] xor_ln108_42_fu_960_p2;
wire   [31:0] xor_ln108_46_fu_983_p2;
wire   [31:0] xor_ln108_45_fu_977_p2;
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
#0 store_forwarded200_fu_100 = 32'd0;
#0 store_forwarded203_fu_104 = 32'd0;
#0 store_forwarded206_fu_108 = 32'd0;
#0 store_forwarded209_fu_112 = 32'd0;
#0 store_forwarded212_fu_116 = 32'd0;
#0 store_forwarded215_fu_120 = 32'd0;
#0 store_forwarded218_fu_124 = 32'd0;
#0 store_forwarded221_fu_128 = 32'd0;
#0 store_forwarded224_fu_132 = 32'd0;
#0 store_forwarded227_fu_136 = 32'd0;
#0 store_forwarded230_fu_140 = 32'd0;
#0 store_forwarded233_fu_144 = 32'd0;
#0 store_forwarded236_fu_148 = 32'd0;
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
    end else if (((icmp_ln106_fu_623_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_96 <= add_ln106_fu_760_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            store_forwarded194_reg_466 <= xor_ln108_44_fu_970_p2;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            store_forwarded194_reg_466 <= zext_ln104_14_cast_fu_490_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            store_forwarded197_reg_456 <= xor_ln108_41_fu_953_p2;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            store_forwarded197_reg_456 <= zext_ln104_13_cast_fu_494_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded200_fu_100 <= zext_ln104_12_cast_fu_498_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded200_fu_100 <= xor_ln108_23_fu_850_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded203_fu_104 <= zext_ln104_11_cast_fu_502_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded203_fu_104 <= xor_ln108_38_fu_935_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded206_fu_108 <= zext_ln104_10_cast_fu_506_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded206_fu_108 <= xor_ln108_35_fu_918_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded209_fu_112 <= zext_ln104_9_cast_fu_510_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded209_fu_112 <= xor_ln108_20_fu_833_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded212_fu_116 <= zext_ln104_8_cast_fu_514_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded212_fu_116 <= xor_ln108_32_fu_901_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded215_fu_120 <= zext_ln104_7_cast_fu_518_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded215_fu_120 <= xor_ln108_29_fu_885_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded218_fu_124 <= zext_ln104_6_cast_fu_522_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded218_fu_124 <= xor_ln108_17_fu_818_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded221_fu_128 <= zext_ln104_5_cast_fu_526_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded221_fu_128 <= xor_ln108_26_fu_868_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded224_fu_132 <= zext_ln104_4_cast_fu_530_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded224_fu_132 <= xor_ln108_14_fu_802_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded227_fu_136 <= zext_ln104_3_cast_fu_534_p1;
    end else if (((icmp_ln106_fu_623_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded227_fu_136 <= xor_ln108_11_fu_748_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded230_fu_140 <= zext_ln104_2_cast_fu_538_p1;
    end else if (((icmp_ln106_fu_623_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded230_fu_140 <= xor_ln108_8_fu_729_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded233_fu_144 <= zext_ln104_1_cast_fu_542_p1;
    end else if (((icmp_ln106_fu_623_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded233_fu_144 <= xor_ln108_5_fu_710_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded236_fu_148 <= zext_ln104_cast_fu_546_p1;
    end else if (((icmp_ln106_fu_623_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded236_fu_148 <= xor_ln108_2_fu_691_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            store_forwarded_reg_476 <= xor_ln108_47_fu_988_p2;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            store_forwarded_reg_476 <= zext_ln104_15_cast_fu_486_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        store_forwarded203_load_reg_1156 <= store_forwarded203_fu_104;
        store_forwarded206_load_reg_1161 <= store_forwarded206_fu_108;
        store_forwarded209_load_reg_1166 <= store_forwarded209_fu_112;
        store_forwarded212_load_reg_1171 <= store_forwarded212_fu_116;
        store_forwarded218_load_reg_1176 <= store_forwarded218_fu_124;
        store_forwarded221_load_reg_1182 <= store_forwarded221_fu_128;
        store_forwarded224_load_reg_1188 <= store_forwarded224_fu_132;
        store_forwarded227_load_reg_1194 <= store_forwarded227_fu_136;
        store_forwarded230_load_reg_1199 <= store_forwarded230_fu_140;
        store_forwarded233_load_reg_1204 <= store_forwarded233_fu_144;
        store_forwarded236_load_reg_1209 <= store_forwarded236_fu_148;
        xor_ln108_11_reg_1266 <= xor_ln108_11_fu_748_p2;
        xor_ln108_12_reg_1272 <= xor_ln108_12_fu_754_p2;
        xor_ln108_2_reg_1236 <= xor_ln108_2_fu_691_p2;
        xor_ln108_3_reg_1241 <= xor_ln108_3_fu_698_p2;
        xor_ln108_5_reg_1246 <= xor_ln108_5_fu_710_p2;
        xor_ln108_6_reg_1251 <= xor_ln108_6_fu_717_p2;
        xor_ln108_8_reg_1256 <= xor_ln108_8_fu_729_p2;
        xor_ln108_9_reg_1261 <= xor_ln108_9_fu_736_p2;
        xor_ln108_reg_1231 <= xor_ln108_fu_679_p2;
        zext_ln99_reg_1214[2 : 0] <= zext_ln99_fu_672_p1[2 : 0];
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
    if (((icmp_ln106_fu_623_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((icmp_ln106_fu_623_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((icmp_ln106_fu_623_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_623_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
assign W_10_address0 = zext_ln99_reg_1214;
assign W_10_ce0 = W_10_ce0_local;
assign W_10_d0 = xor_ln108_35_fu_918_p2;
assign W_10_we0 = W_10_we0_local;
assign W_11_address0 = zext_ln99_reg_1214;
assign W_11_ce0 = W_11_ce0_local;
assign W_11_d0 = xor_ln108_38_fu_935_p2;
assign W_11_we0 = W_11_we0_local;
assign W_12_address0 = zext_ln99_reg_1214;
assign W_12_ce0 = W_12_ce0_local;
assign W_12_d0 = xor_ln108_23_fu_850_p2;
assign W_12_we0 = W_12_we0_local;
assign W_13_address0 = zext_ln99_reg_1214;
assign W_13_ce0 = W_13_ce0_local;
assign W_13_d0 = xor_ln108_41_fu_953_p2;
assign W_13_we0 = W_13_we0_local;
assign W_14_address0 = zext_ln99_reg_1214;
assign W_14_ce0 = W_14_ce0_local;
assign W_14_d0 = xor_ln108_44_fu_970_p2;
assign W_14_we0 = W_14_we0_local;
assign W_15_address0 = zext_ln99_reg_1214;
assign W_15_ce0 = W_15_ce0_local;
assign W_15_d0 = xor_ln108_47_fu_988_p2;
assign W_15_we0 = W_15_we0_local;
assign W_1_address0 = zext_ln99_fu_672_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_d0 = xor_ln108_5_fu_710_p2;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = zext_ln99_fu_672_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_d0 = xor_ln108_8_fu_729_p2;
assign W_2_we0 = W_2_we0_local;
assign W_3_address0 = zext_ln99_reg_1214;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_d0 = xor_ln108_11_reg_1266;
assign W_3_we0 = W_3_we0_local;
assign W_4_address0 = zext_ln99_reg_1214;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_d0 = xor_ln108_14_fu_802_p2;
assign W_4_we0 = W_4_we0_local;
assign W_5_address0 = zext_ln99_reg_1214;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_d0 = xor_ln108_26_fu_868_p2;
assign W_5_we0 = W_5_we0_local;
assign W_6_address0 = zext_ln99_reg_1214;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_d0 = xor_ln108_17_fu_818_p2;
assign W_6_we0 = W_6_we0_local;
assign W_7_address0 = zext_ln99_reg_1214;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_d0 = xor_ln108_29_fu_885_p2;
assign W_7_we0 = W_7_we0_local;
assign W_8_address0 = zext_ln99_reg_1214;
assign W_8_ce0 = W_8_ce0_local;
assign W_8_d0 = xor_ln108_32_fu_901_p2;
assign W_8_we0 = W_8_we0_local;
assign W_9_address0 = zext_ln99_reg_1214;
assign W_9_ce0 = W_9_ce0_local;
assign W_9_d0 = xor_ln108_20_fu_833_p2;
assign W_9_we0 = W_9_we0_local;
assign W_address0 = zext_ln99_fu_672_p1;
assign W_ce0 = W_ce0_local;
assign W_d0 = xor_ln108_2_fu_691_p2;
assign W_we0 = W_we0_local;
assign add_ln106_fu_760_p2 = (i_fu_96 + 7'd16);
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
assign icmp_ln106_fu_623_p2 = ((i_fu_96 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln_fu_662_p4 = {{i_fu_96[6:4]}};
assign xor_ln108_10_fu_742_p2 = (xor_ln108_9_fu_736_p2 ^ store_forwarded203_fu_104);
assign xor_ln108_11_fu_748_p2 = (xor_ln108_10_fu_742_p2 ^ store_forwarded227_fu_136);
assign xor_ln108_12_fu_754_p2 = (xor_ln108_5_fu_710_p2 ^ store_forwarded218_fu_124);
assign xor_ln108_13_fu_797_p2 = (xor_ln108_12_reg_1272 ^ store_forwarded200_fu_100);
assign xor_ln108_14_fu_802_p2 = (xor_ln108_13_fu_797_p2 ^ store_forwarded224_load_reg_1188);
assign xor_ln108_15_fu_808_p2 = (xor_ln108_11_reg_1266 ^ store_forwarded212_load_reg_1171);
assign xor_ln108_16_fu_812_p2 = (xor_ln108_15_fu_808_p2 ^ store_forwarded194_reg_466);
assign xor_ln108_17_fu_818_p2 = (xor_ln108_16_fu_812_p2 ^ store_forwarded218_load_reg_1176);
assign xor_ln108_18_fu_824_p2 = (xor_ln108_3_reg_1241 ^ store_forwarded233_load_reg_1204);
assign xor_ln108_19_fu_828_p2 = (xor_ln108_18_fu_824_p2 ^ store_forwarded203_load_reg_1156);
assign xor_ln108_1_fu_685_p2 = (xor_ln108_fu_679_p2 ^ store_forwarded212_fu_116);
assign xor_ln108_20_fu_833_p2 = (xor_ln108_19_fu_828_p2 ^ xor_ln108_17_fu_818_p2);
assign xor_ln108_21_fu_840_p2 = (xor_ln108_12_reg_1272 ^ store_forwarded224_load_reg_1188);
assign xor_ln108_22_fu_844_p2 = (xor_ln108_21_fu_840_p2 ^ store_forwarded194_reg_466);
assign xor_ln108_23_fu_850_p2 = (xor_ln108_22_fu_844_p2 ^ xor_ln108_20_fu_833_p2);
assign xor_ln108_24_fu_857_p2 = (xor_ln108_8_reg_1256 ^ store_forwarded215_fu_120);
assign xor_ln108_25_fu_862_p2 = (xor_ln108_24_fu_857_p2 ^ store_forwarded197_reg_456);
assign xor_ln108_26_fu_868_p2 = (xor_ln108_25_fu_862_p2 ^ store_forwarded221_load_reg_1182);
assign xor_ln108_27_fu_874_p2 = (xor_ln108_14_fu_802_p2 ^ store_forwarded209_load_reg_1166);
assign xor_ln108_28_fu_879_p2 = (xor_ln108_27_fu_874_p2 ^ store_forwarded_reg_476);
assign xor_ln108_29_fu_885_p2 = (xor_ln108_28_fu_879_p2 ^ store_forwarded215_fu_120);
assign xor_ln108_2_fu_691_p2 = (xor_ln108_1_fu_685_p2 ^ store_forwarded236_fu_148);
assign xor_ln108_30_fu_892_p2 = (xor_ln108_reg_1231 ^ store_forwarded236_load_reg_1209);
assign xor_ln108_31_fu_896_p2 = (xor_ln108_26_fu_868_p2 ^ store_forwarded206_load_reg_1161);
assign xor_ln108_32_fu_901_p2 = (xor_ln108_31_fu_896_p2 ^ xor_ln108_30_fu_892_p2);
assign xor_ln108_33_fu_908_p2 = (xor_ln108_6_reg_1251 ^ store_forwarded230_load_reg_1199);
assign xor_ln108_34_fu_912_p2 = (xor_ln108_33_fu_908_p2 ^ store_forwarded200_fu_100);
assign xor_ln108_35_fu_918_p2 = (xor_ln108_34_fu_912_p2 ^ xor_ln108_29_fu_885_p2);
assign xor_ln108_36_fu_925_p2 = (xor_ln108_9_reg_1261 ^ store_forwarded227_load_reg_1194);
assign xor_ln108_37_fu_929_p2 = (xor_ln108_32_fu_901_p2 ^ store_forwarded197_reg_456);
assign xor_ln108_38_fu_935_p2 = (xor_ln108_37_fu_929_p2 ^ xor_ln108_36_fu_925_p2);
assign xor_ln108_39_fu_942_p2 = (xor_ln108_24_fu_857_p2 ^ store_forwarded221_load_reg_1182);
assign xor_ln108_3_fu_698_p2 = (store_forwarded227_fu_136 ^ store_forwarded194_reg_466);
assign xor_ln108_40_fu_947_p2 = (xor_ln108_35_fu_918_p2 ^ store_forwarded_reg_476);
assign xor_ln108_41_fu_953_p2 = (xor_ln108_40_fu_947_p2 ^ xor_ln108_39_fu_942_p2);
assign xor_ln108_42_fu_960_p2 = (xor_ln108_15_fu_808_p2 ^ store_forwarded218_load_reg_1176);
assign xor_ln108_43_fu_965_p2 = (xor_ln108_38_fu_935_p2 ^ xor_ln108_2_reg_1236);
assign xor_ln108_44_fu_970_p2 = (xor_ln108_43_fu_965_p2 ^ xor_ln108_42_fu_960_p2);
assign xor_ln108_45_fu_977_p2 = (xor_ln108_27_fu_874_p2 ^ store_forwarded215_fu_120);
assign xor_ln108_46_fu_983_p2 = (xor_ln108_5_reg_1246 ^ xor_ln108_23_fu_850_p2);
assign xor_ln108_47_fu_988_p2 = (xor_ln108_46_fu_983_p2 ^ xor_ln108_45_fu_977_p2);
assign xor_ln108_4_fu_704_p2 = (xor_ln108_3_fu_698_p2 ^ store_forwarded209_fu_112);
assign xor_ln108_5_fu_710_p2 = (xor_ln108_4_fu_704_p2 ^ store_forwarded233_fu_144);
assign xor_ln108_6_fu_717_p2 = (store_forwarded_reg_476 ^ store_forwarded224_fu_132);
assign xor_ln108_7_fu_723_p2 = (xor_ln108_6_fu_717_p2 ^ store_forwarded206_fu_108);
assign xor_ln108_8_fu_729_p2 = (xor_ln108_7_fu_723_p2 ^ store_forwarded230_fu_140);
assign xor_ln108_9_fu_736_p2 = (xor_ln108_2_fu_691_p2 ^ store_forwarded221_fu_128);
assign xor_ln108_fu_679_p2 = (store_forwarded230_fu_140 ^ store_forwarded197_reg_456);
assign zext_ln104_10_cast_fu_506_p1 = zext_ln104_10;
assign zext_ln104_11_cast_fu_502_p1 = zext_ln104_11;
assign zext_ln104_12_cast_fu_498_p1 = zext_ln104_12;
assign zext_ln104_13_cast_fu_494_p1 = zext_ln104_13;
assign zext_ln104_14_cast_fu_490_p1 = zext_ln104_14;
assign zext_ln104_15_cast_fu_486_p1 = zext_ln104_15;
assign zext_ln104_1_cast_fu_542_p1 = zext_ln104_1;
assign zext_ln104_2_cast_fu_538_p1 = zext_ln104_2;
assign zext_ln104_3_cast_fu_534_p1 = zext_ln104_3;
assign zext_ln104_4_cast_fu_530_p1 = zext_ln104_4;
assign zext_ln104_5_cast_fu_526_p1 = zext_ln104_5;
assign zext_ln104_6_cast_fu_522_p1 = zext_ln104_6;
assign zext_ln104_7_cast_fu_518_p1 = zext_ln104_7;
assign zext_ln104_8_cast_fu_514_p1 = zext_ln104_8;
assign zext_ln104_9_cast_fu_510_p1 = zext_ln104_9;
assign zext_ln104_cast_fu_546_p1 = zext_ln104;
assign zext_ln99_fu_672_p1 = lshr_ln_fu_662_p4;
always @ (posedge ap_clk) begin
    zext_ln99_reg_1214[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 