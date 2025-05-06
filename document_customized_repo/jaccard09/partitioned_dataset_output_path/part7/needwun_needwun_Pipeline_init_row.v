
module needwun_needwun_Pipeline_init_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_address1,M_1_ce1,M_1_we1,M_1_d1,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_address1,M_0_ce1,M_0_we1,M_0_d1);  
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
output  [13:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
output  [13:0] M_1_address1;
output   M_1_ce1;
output   M_1_we1;
output  [31:0] M_1_d1;
output  [13:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
output  [13:0] M_0_address1;
output   M_0_ce1;
output   M_0_we1;
output  [31:0] M_0_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln20_fu_479_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [7:0] a_idx_14_reg_1143;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln20_reg_1157;
wire   [63:0] zext_ln21_1_fu_536_p1;
reg   [63:0] zext_ln21_1_reg_1161;
wire  signed [7:0] sub_ln21_2_fu_541_p2;
reg  signed [7:0] sub_ln21_2_reg_1166;
wire   [0:0] tmp_fu_571_p3;
reg   [0:0] tmp_reg_1199;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] zext_ln21_3_fu_622_p1;
reg   [63:0] zext_ln21_3_reg_1206;
wire   [3:0] tmp_7_fu_647_p4;
reg   [3:0] tmp_7_reg_1211;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [1:0] tmp_8_fu_656_p4;
reg   [1:0] tmp_8_reg_1217;
wire   [0:0] tmp_63_fu_701_p3;
reg   [0:0] tmp_63_reg_1222;
wire   [63:0] zext_ln21_5_fu_720_p1;
reg   [63:0] zext_ln21_5_reg_1227;
wire   [63:0] zext_ln21_7_fu_786_p1;
reg   [63:0] zext_ln21_7_reg_1232;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [2:0] tmp_s_fu_811_p4;
reg   [2:0] tmp_s_reg_1237;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] zext_ln21_9_fu_886_p1;
reg   [63:0] zext_ln21_9_reg_1247;
wire   [63:0] zext_ln21_11_fu_967_p1;
reg   [63:0] zext_ln21_11_reg_1252;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] zext_ln21_13_fu_1036_p1;
reg   [63:0] zext_ln21_13_reg_1257;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] zext_ln21_15_fu_1102_p1;
reg   [63:0] zext_ln21_15_reg_1262;
wire    ap_block_pp0_stage7_11001;
wire   [7:0] add_ln21_28_fu_1117_p2;
reg   [7:0] add_ln21_28_reg_1267;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln17_fu_454_p1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln21_2_fu_588_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln21_4_fu_675_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln21_6_fu_753_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln21_8_fu_839_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln21_10_fu_930_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln21_12_fu_1000_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln21_14_fu_1069_p1;
reg   [7:0] a_idx_fu_158;
wire   [7:0] add_ln20_fu_1122_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_14;
reg    M_0_we1_local;
reg   [31:0] M_0_d1_local;
wire  signed [31:0] sext_ln21_fu_466_p1;
reg    M_0_ce1_local;
reg   [13:0] M_0_address1_local;
reg    M_0_we0_local;
reg   [31:0] M_0_d0_local;
wire  signed [31:0] sext_ln21_2_fu_547_p1;
reg    M_0_ce0_local;
reg   [13:0] M_0_address0_local;
wire  signed [31:0] sext_ln21_4_fu_599_p1;
wire  signed [31:0] sext_ln21_6_fu_632_p1;
wire  signed [31:0] sext_ln21_8_fu_686_p1;
wire  signed [31:0] sext_ln21_10_fu_730_p1;
wire  signed [31:0] sext_ln21_12_fu_764_p1;
wire  signed [31:0] sext_ln21_14_fu_796_p1;
wire  signed [31:0] sext_ln21_16_fu_850_p1;
wire  signed [31:0] sext_ln21_18_fu_896_p1;
wire  signed [31:0] sext_ln21_20_fu_941_p1;
wire  signed [31:0] sext_ln21_22_fu_977_p1;
wire  signed [31:0] sext_ln21_24_fu_1011_p1;
wire  signed [31:0] sext_ln21_26_fu_1046_p1;
wire  signed [31:0] sext_ln21_28_fu_1080_p1;
wire  signed [31:0] sext_ln21_30_fu_1112_p1;
reg    M_1_we1_local;
reg   [31:0] M_1_d1_local;
wire  signed [31:0] sext_ln21_1_fu_513_p1;
reg    M_1_ce1_local;
reg   [13:0] M_1_address1_local;
wire  signed [31:0] sext_ln21_3_fu_557_p1;
reg    M_1_we0_local;
reg   [31:0] M_1_d0_local;
wire  signed [31:0] sext_ln21_5_fu_609_p1;
reg    M_1_ce0_local;
reg   [13:0] M_1_address0_local;
wire  signed [31:0] sext_ln21_7_fu_642_p1;
wire  signed [31:0] sext_ln21_9_fu_696_p1;
wire  signed [31:0] sext_ln21_11_fu_740_p1;
wire  signed [31:0] sext_ln21_13_fu_774_p1;
wire  signed [31:0] sext_ln21_15_fu_806_p1;
wire  signed [31:0] sext_ln21_17_fu_860_p1;
wire  signed [31:0] sext_ln21_19_fu_906_p1;
wire  signed [31:0] sext_ln21_21_fu_951_p1;
wire  signed [31:0] sext_ln21_23_fu_987_p1;
wire  signed [31:0] sext_ln21_25_fu_1021_p1;
wire  signed [31:0] sext_ln21_27_fu_1056_p1;
wire  signed [31:0] sext_ln21_29_fu_1090_p1;
wire  signed [31:0] sext_ln21_31_fu_1132_p1;
wire   [6:0] lshr_ln_fu_444_p4;
wire   [7:0] sub_ln21_fu_460_p2;
wire   [7:0] or_ln_fu_471_p3;
wire   [5:0] tmp_2_fu_485_p4;
wire   [6:0] or_ln21_s_fu_495_p3;
wire   [7:0] zext_ln21_fu_503_p1;
wire   [7:0] sub_ln21_1_fu_507_p2;
wire   [5:0] tmp_3_fu_518_p4;
wire   [6:0] or_ln1_fu_528_p3;
wire   [7:0] add_ln21_fu_552_p2;
wire   [4:0] tmp_4_fu_562_p4;
wire   [6:0] or_ln21_1_fu_578_p4;
wire   [7:0] add_ln21_1_fu_594_p2;
wire   [7:0] add_ln21_2_fu_604_p2;
wire   [6:0] or_ln21_2_fu_614_p3;
wire   [7:0] add_ln21_3_fu_627_p2;
wire   [7:0] add_ln21_4_fu_637_p2;
wire   [6:0] or_ln21_3_fu_665_p4;
wire   [7:0] add_ln21_5_fu_681_p2;
wire   [7:0] add_ln21_6_fu_691_p2;
wire   [6:0] or_ln21_4_fu_708_p5;
wire   [7:0] add_ln21_7_fu_725_p2;
wire   [7:0] add_ln21_8_fu_735_p2;
wire   [6:0] or_ln21_5_fu_745_p4;
wire   [7:0] add_ln21_9_fu_759_p2;
wire   [7:0] add_ln21_10_fu_769_p2;
wire   [6:0] or_ln21_6_fu_779_p3;
wire   [7:0] add_ln21_11_fu_791_p2;
wire   [7:0] add_ln21_12_fu_801_p2;
wire   [2:0] tmp_1_fu_820_p4;
wire   [6:0] or_ln21_7_fu_829_p4;
wire   [7:0] add_ln21_13_fu_845_p2;
wire   [7:0] add_ln21_14_fu_855_p2;
wire   [1:0] tmp_5_fu_865_p4;
wire   [6:0] or_ln21_8_fu_874_p5;
wire   [7:0] add_ln21_15_fu_891_p2;
wire   [7:0] add_ln21_16_fu_901_p2;
wire   [0:0] tmp_64_fu_911_p3;
wire   [6:0] or_ln21_9_fu_918_p6;
wire   [7:0] add_ln21_17_fu_936_p2;
wire   [7:0] add_ln21_18_fu_946_p2;
wire   [6:0] or_ln21_10_fu_956_p5;
wire   [7:0] add_ln21_19_fu_972_p2;
wire   [7:0] add_ln21_20_fu_982_p2;
wire   [6:0] or_ln21_11_fu_992_p4;
wire   [7:0] add_ln21_21_fu_1006_p2;
wire   [7:0] add_ln21_22_fu_1016_p2;
wire   [6:0] or_ln21_12_fu_1026_p5;
wire   [7:0] add_ln21_23_fu_1041_p2;
wire   [7:0] add_ln21_24_fu_1051_p2;
wire   [6:0] or_ln21_13_fu_1061_p4;
wire   [7:0] add_ln21_25_fu_1075_p2;
wire   [7:0] add_ln21_26_fu_1085_p2;
wire   [6:0] or_ln21_14_fu_1095_p3;
wire   [7:0] add_ln21_27_fu_1107_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
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
#0 a_idx_fu_158 = 8'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_fu_158 <= 8'd0;
    end else if (((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_idx_fu_158 <= add_ln20_fu_1122_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_14_reg_1143 <= ap_sig_allocacmp_a_idx_14;
        icmp_ln20_reg_1157 <= icmp_ln20_fu_479_p2;
        sub_ln21_2_reg_1166 <= sub_ln21_2_fu_541_p2;
        zext_ln21_1_reg_1161[6 : 1] <= zext_ln21_1_fu_536_p1[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln21_28_reg_1267 <= add_ln21_28_fu_1117_p2;
        zext_ln21_15_reg_1262[6 : 4] <= zext_ln21_15_fu_1102_p1[6 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_63_reg_1222 <= a_idx_14_reg_1143[32'd2];
        tmp_7_reg_1211 <= {{a_idx_14_reg_1143[7:4]}};
        tmp_8_reg_1217 <= {{a_idx_14_reg_1143[2:1]}};
        zext_ln21_5_reg_1227[1] <= zext_ln21_5_fu_720_p1[1];
zext_ln21_5_reg_1227[6 : 3] <= zext_ln21_5_fu_720_p1[6 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_reg_1199 <= a_idx_14_reg_1143[32'd1];
        zext_ln21_3_reg_1206[6 : 2] <= zext_ln21_3_fu_622_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_s_reg_1237 <= {{a_idx_14_reg_1143[7:5]}};
        zext_ln21_9_reg_1247[2 : 1] <= zext_ln21_9_fu_886_p1[2 : 1];
zext_ln21_9_reg_1247[6 : 4] <= zext_ln21_9_fu_886_p1[6 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        zext_ln21_11_reg_1252[2] <= zext_ln21_11_fu_967_p1[2];
zext_ln21_11_reg_1252[6 : 4] <= zext_ln21_11_fu_967_p1[6 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        zext_ln21_13_reg_1257[1] <= zext_ln21_13_fu_1036_p1[1];
zext_ln21_13_reg_1257[6 : 4] <= zext_ln21_13_fu_1036_p1[6 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln21_7_reg_1232[6 : 3] <= zext_ln21_7_fu_786_p1[6 : 3];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_0_address0_local = zext_ln21_15_fu_1102_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_0_address0_local = zext_ln21_13_fu_1036_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_0_address0_local = zext_ln21_11_fu_967_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_0_address0_local = zext_ln21_9_fu_886_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_address0_local = zext_ln21_7_fu_786_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_address0_local = zext_ln21_5_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address0_local = zext_ln21_3_fu_622_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address0_local = zext_ln21_1_fu_536_p1;
        end else begin
            M_0_address0_local = 'bx;
        end
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_0_address1_local = zext_ln21_14_fu_1069_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_0_address1_local = zext_ln21_12_fu_1000_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_0_address1_local = zext_ln21_10_fu_930_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_0_address1_local = zext_ln21_8_fu_839_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_address1_local = zext_ln21_6_fu_753_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_address1_local = zext_ln21_4_fu_675_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address1_local = zext_ln21_2_fu_588_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address1_local = zext_ln17_fu_454_p1;
        end else begin
            M_0_address1_local = 'bx;
        end
    end else begin
        M_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_0_d0_local = sext_ln21_30_fu_1112_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_0_d0_local = sext_ln21_26_fu_1046_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_0_d0_local = sext_ln21_22_fu_977_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_0_d0_local = sext_ln21_18_fu_896_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_d0_local = sext_ln21_14_fu_796_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_d0_local = sext_ln21_10_fu_730_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d0_local = sext_ln21_6_fu_632_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d0_local = sext_ln21_2_fu_547_p1;
        end else begin
            M_0_d0_local = 'bx;
        end
    end else begin
        M_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_0_d1_local = sext_ln21_28_fu_1080_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_0_d1_local = sext_ln21_24_fu_1011_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_0_d1_local = sext_ln21_20_fu_941_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_0_d1_local = sext_ln21_16_fu_850_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_d1_local = sext_ln21_12_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_d1_local = sext_ln21_8_fu_686_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d1_local = sext_ln21_4_fu_599_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d1_local = sext_ln21_fu_466_p1;
        end else begin
            M_0_d1_local = 'bx;
        end
    end else begin
        M_0_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln20_fu_479_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_we1_local = 1'b1;
    end else begin
        M_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_address0_local = zext_ln21_15_reg_1262;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        M_1_address0_local = zext_ln21_14_fu_1069_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        M_1_address0_local = zext_ln21_12_fu_1000_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_1_address0_local = zext_ln21_10_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        M_1_address0_local = zext_ln21_8_fu_839_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_1_address0_local = zext_ln21_6_fu_753_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln21_4_fu_675_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln21_2_fu_588_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_1_address1_local = zext_ln21_13_reg_1257;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_1_address1_local = zext_ln21_11_reg_1252;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_1_address1_local = zext_ln21_9_reg_1247;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_1_address1_local = zext_ln21_7_reg_1232;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_1_address1_local = zext_ln21_5_reg_1227;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_1_address1_local = zext_ln21_3_reg_1206;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_address1_local = zext_ln21_1_reg_1161;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_address1_local = zext_ln17_fu_454_p1;
        end else begin
            M_1_address1_local = 'bx;
        end
    end else begin
        M_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_d0_local = sext_ln21_31_fu_1132_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        M_1_d0_local = sext_ln21_29_fu_1090_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        M_1_d0_local = sext_ln21_25_fu_1021_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_1_d0_local = sext_ln21_21_fu_951_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        M_1_d0_local = sext_ln21_17_fu_860_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_1_d0_local = sext_ln21_13_fu_774_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_d0_local = sext_ln21_9_fu_696_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_d0_local = sext_ln21_5_fu_609_p1;
    end else begin
        M_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_1_d1_local = sext_ln21_27_fu_1056_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_1_d1_local = sext_ln21_23_fu_987_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_1_d1_local = sext_ln21_19_fu_906_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_1_d1_local = sext_ln21_15_fu_806_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_1_d1_local = sext_ln21_11_fu_740_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_1_d1_local = sext_ln21_7_fu_642_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_d1_local = sext_ln21_3_fu_557_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_d1_local = sext_ln21_1_fu_513_p1;
        end else begin
            M_1_d1_local = 'bx;
        end
    end else begin
        M_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln20_reg_1157 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln20_fu_479_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_we1_local = 1'b1;
    end else begin
        M_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln20_fu_479_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_a_idx_14 = 8'd0;
    end else begin
        ap_sig_allocacmp_a_idx_14 = a_idx_fu_158;
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
assign M_0_address0 = M_0_address0_local;
assign M_0_address1 = M_0_address1_local;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = M_0_d0_local;
assign M_0_d1 = M_0_d1_local;
assign M_0_we0 = M_0_we0_local;
assign M_0_we1 = M_0_we1_local;
assign M_1_address0 = M_1_address0_local;
assign M_1_address1 = M_1_address1_local;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = M_1_d0_local;
assign M_1_d1 = M_1_d1_local;
assign M_1_we0 = M_1_we0_local;
assign M_1_we1 = M_1_we1_local;
assign add_ln20_fu_1122_p2 = (a_idx_14_reg_1143 + 8'd32);
assign add_ln21_10_fu_769_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd245));
assign add_ln21_11_fu_791_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd244));
assign add_ln21_12_fu_801_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd243));
assign add_ln21_13_fu_845_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd242));
assign add_ln21_14_fu_855_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd241));
assign add_ln21_15_fu_891_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd240));
assign add_ln21_16_fu_901_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd239));
assign add_ln21_17_fu_936_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd238));
assign add_ln21_18_fu_946_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd237));
assign add_ln21_19_fu_972_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd236));
assign add_ln21_1_fu_594_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd254));
assign add_ln21_20_fu_982_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd235));
assign add_ln21_21_fu_1006_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd234));
assign add_ln21_22_fu_1016_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd233));
assign add_ln21_23_fu_1041_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd232));
assign add_ln21_24_fu_1051_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd231));
assign add_ln21_25_fu_1075_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd230));
assign add_ln21_26_fu_1085_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd229));
assign add_ln21_27_fu_1107_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd228));
assign add_ln21_28_fu_1117_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd227));
assign add_ln21_2_fu_604_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd253));
assign add_ln21_3_fu_627_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd252));
assign add_ln21_4_fu_637_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd251));
assign add_ln21_5_fu_681_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd250));
assign add_ln21_6_fu_691_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd249));
assign add_ln21_7_fu_725_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd248));
assign add_ln21_8_fu_735_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd247));
assign add_ln21_9_fu_759_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd246));
assign add_ln21_fu_552_p2 = ($signed(sub_ln21_2_reg_1166) + $signed(8'd255));
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln20_fu_479_p2 = ((or_ln_fu_471_p3 < 8'd129) ? 1'b1 : 1'b0);
assign lshr_ln_fu_444_p4 = {{ap_sig_allocacmp_a_idx_14[7:1]}};
assign or_ln1_fu_528_p3 = {{tmp_3_fu_518_p4}, {1'd1}};
assign or_ln21_10_fu_956_p5 = {{{{tmp_s_reg_1237}, {1'd1}}, {tmp_64_fu_911_p3}}, {2'd3}};
assign or_ln21_11_fu_992_p4 = {{{tmp_s_reg_1237}, {2'd3}}, {tmp_8_reg_1217}};
assign or_ln21_12_fu_1026_p5 = {{{{tmp_s_reg_1237}, {2'd3}}, {tmp_63_reg_1222}}, {1'd1}};
assign or_ln21_13_fu_1061_p4 = {{{tmp_s_reg_1237}, {3'd7}}, {tmp_reg_1199}};
assign or_ln21_14_fu_1095_p3 = {{tmp_s_reg_1237}, {4'd15}};
assign or_ln21_1_fu_578_p4 = {{{tmp_4_fu_562_p4}, {1'd1}}, {tmp_fu_571_p3}};
assign or_ln21_2_fu_614_p3 = {{tmp_4_fu_562_p4}, {2'd3}};
assign or_ln21_3_fu_665_p4 = {{{tmp_7_fu_647_p4}, {1'd1}}, {tmp_8_fu_656_p4}};
assign or_ln21_4_fu_708_p5 = {{{{tmp_7_fu_647_p4}, {1'd1}}, {tmp_63_fu_701_p3}}, {1'd1}};
assign or_ln21_5_fu_745_p4 = {{{tmp_7_reg_1211}, {2'd3}}, {tmp_reg_1199}};
assign or_ln21_6_fu_779_p3 = {{tmp_7_reg_1211}, {3'd7}};
assign or_ln21_7_fu_829_p4 = {{{tmp_s_fu_811_p4}, {1'd1}}, {tmp_1_fu_820_p4}};
assign or_ln21_8_fu_874_p5 = {{{{tmp_s_fu_811_p4}, {1'd1}}, {tmp_5_fu_865_p4}}, {1'd1}};
assign or_ln21_9_fu_918_p6 = {{{{{tmp_s_reg_1237}, {1'd1}}, {tmp_64_fu_911_p3}}, {1'd1}}, {tmp_reg_1199}};
assign or_ln21_s_fu_495_p3 = {{tmp_2_fu_485_p4}, {1'd1}};
assign or_ln_fu_471_p3 = {{lshr_ln_fu_444_p4}, {1'd1}};
assign sext_ln21_10_fu_730_p1 = $signed(add_ln21_7_fu_725_p2);
assign sext_ln21_11_fu_740_p1 = $signed(add_ln21_8_fu_735_p2);
assign sext_ln21_12_fu_764_p1 = $signed(add_ln21_9_fu_759_p2);
assign sext_ln21_13_fu_774_p1 = $signed(add_ln21_10_fu_769_p2);
assign sext_ln21_14_fu_796_p1 = $signed(add_ln21_11_fu_791_p2);
assign sext_ln21_15_fu_806_p1 = $signed(add_ln21_12_fu_801_p2);
assign sext_ln21_16_fu_850_p1 = $signed(add_ln21_13_fu_845_p2);
assign sext_ln21_17_fu_860_p1 = $signed(add_ln21_14_fu_855_p2);
assign sext_ln21_18_fu_896_p1 = $signed(add_ln21_15_fu_891_p2);
assign sext_ln21_19_fu_906_p1 = $signed(add_ln21_16_fu_901_p2);
assign sext_ln21_1_fu_513_p1 = $signed(sub_ln21_1_fu_507_p2);
assign sext_ln21_20_fu_941_p1 = $signed(add_ln21_17_fu_936_p2);
assign sext_ln21_21_fu_951_p1 = $signed(add_ln21_18_fu_946_p2);
assign sext_ln21_22_fu_977_p1 = $signed(add_ln21_19_fu_972_p2);
assign sext_ln21_23_fu_987_p1 = $signed(add_ln21_20_fu_982_p2);
assign sext_ln21_24_fu_1011_p1 = $signed(add_ln21_21_fu_1006_p2);
assign sext_ln21_25_fu_1021_p1 = $signed(add_ln21_22_fu_1016_p2);
assign sext_ln21_26_fu_1046_p1 = $signed(add_ln21_23_fu_1041_p2);
assign sext_ln21_27_fu_1056_p1 = $signed(add_ln21_24_fu_1051_p2);
assign sext_ln21_28_fu_1080_p1 = $signed(add_ln21_25_fu_1075_p2);
assign sext_ln21_29_fu_1090_p1 = $signed(add_ln21_26_fu_1085_p2);
assign sext_ln21_2_fu_547_p1 = sub_ln21_2_fu_541_p2;
assign sext_ln21_30_fu_1112_p1 = $signed(add_ln21_27_fu_1107_p2);
assign sext_ln21_31_fu_1132_p1 = $signed(add_ln21_28_reg_1267);
assign sext_ln21_3_fu_557_p1 = $signed(add_ln21_fu_552_p2);
assign sext_ln21_4_fu_599_p1 = $signed(add_ln21_1_fu_594_p2);
assign sext_ln21_5_fu_609_p1 = $signed(add_ln21_2_fu_604_p2);
assign sext_ln21_6_fu_632_p1 = $signed(add_ln21_3_fu_627_p2);
assign sext_ln21_7_fu_642_p1 = $signed(add_ln21_4_fu_637_p2);
assign sext_ln21_8_fu_686_p1 = $signed(add_ln21_5_fu_681_p2);
assign sext_ln21_9_fu_696_p1 = $signed(add_ln21_6_fu_691_p2);
assign sext_ln21_fu_466_p1 = $signed(sub_ln21_fu_460_p2);
assign sub_ln21_1_fu_507_p2 = (8'd0 - zext_ln21_fu_503_p1);
assign sub_ln21_2_fu_541_p2 = ($signed(8'd254) - $signed(ap_sig_allocacmp_a_idx_14));
assign sub_ln21_fu_460_p2 = (8'd0 - ap_sig_allocacmp_a_idx_14);
assign tmp_1_fu_820_p4 = {{a_idx_14_reg_1143[3:1]}};
assign tmp_2_fu_485_p4 = {{ap_sig_allocacmp_a_idx_14[6:1]}};
assign tmp_3_fu_518_p4 = {{ap_sig_allocacmp_a_idx_14[7:2]}};
assign tmp_4_fu_562_p4 = {{a_idx_14_reg_1143[7:3]}};
assign tmp_5_fu_865_p4 = {{a_idx_14_reg_1143[3:2]}};
assign tmp_63_fu_701_p3 = a_idx_14_reg_1143[32'd2];
assign tmp_64_fu_911_p3 = a_idx_14_reg_1143[32'd3];
assign tmp_7_fu_647_p4 = {{a_idx_14_reg_1143[7:4]}};
assign tmp_8_fu_656_p4 = {{a_idx_14_reg_1143[2:1]}};
assign tmp_fu_571_p3 = a_idx_14_reg_1143[32'd1];
assign tmp_s_fu_811_p4 = {{a_idx_14_reg_1143[7:5]}};
assign zext_ln17_fu_454_p1 = lshr_ln_fu_444_p4;
assign zext_ln21_10_fu_930_p1 = or_ln21_9_fu_918_p6;
assign zext_ln21_11_fu_967_p1 = or_ln21_10_fu_956_p5;
assign zext_ln21_12_fu_1000_p1 = or_ln21_11_fu_992_p4;
assign zext_ln21_13_fu_1036_p1 = or_ln21_12_fu_1026_p5;
assign zext_ln21_14_fu_1069_p1 = or_ln21_13_fu_1061_p4;
assign zext_ln21_15_fu_1102_p1 = or_ln21_14_fu_1095_p3;
assign zext_ln21_1_fu_536_p1 = or_ln1_fu_528_p3;
assign zext_ln21_2_fu_588_p1 = or_ln21_1_fu_578_p4;
assign zext_ln21_3_fu_622_p1 = or_ln21_2_fu_614_p3;
assign zext_ln21_4_fu_675_p1 = or_ln21_3_fu_665_p4;
assign zext_ln21_5_fu_720_p1 = or_ln21_4_fu_708_p5;
assign zext_ln21_6_fu_753_p1 = or_ln21_5_fu_745_p4;
assign zext_ln21_7_fu_786_p1 = or_ln21_6_fu_779_p3;
assign zext_ln21_8_fu_839_p1 = or_ln21_7_fu_829_p4;
assign zext_ln21_9_fu_886_p1 = or_ln21_8_fu_874_p5;
assign zext_ln21_fu_503_p1 = or_ln21_s_fu_495_p3;
always @ (posedge ap_clk) begin
    zext_ln21_1_reg_1161[0] <= 1'b1;
    zext_ln21_1_reg_1161[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln21_3_reg_1206[1:0] <= 2'b11;
    zext_ln21_3_reg_1206[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln21_5_reg_1227[0] <= 1'b1;
    zext_ln21_5_reg_1227[2:2] <= 1'b1;
    zext_ln21_5_reg_1227[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln21_7_reg_1232[2:0] <= 3'b111;
    zext_ln21_7_reg_1232[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln21_9_reg_1247[0] <= 1'b1;
    zext_ln21_9_reg_1247[3:3] <= 1'b1;
    zext_ln21_9_reg_1247[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln21_11_reg_1252[1:0] <= 2'b11;
    zext_ln21_11_reg_1252[3:3] <= 1'b1;
    zext_ln21_11_reg_1252[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln21_13_reg_1257[0] <= 1'b1;
    zext_ln21_13_reg_1257[3:2] <= 2'b11;
    zext_ln21_13_reg_1257[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln21_15_reg_1262[3:0] <= 4'b1111;
    zext_ln21_15_reg_1262[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 
