module needwun_needwun_Pipeline_pad_b (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_str_idx_7,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedB_0_address1,alignedB_0_ce1,alignedB_0_we1,alignedB_0_d1,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_1_address1,alignedB_1_ce1,alignedB_1_we1,alignedB_1_d1); 
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
input  [31:0] b_str_idx_7;
output  [6:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [6:0] alignedB_0_address1;
output   alignedB_0_ce1;
output   alignedB_0_we1;
output  [7:0] alignedB_0_d1;
output  [6:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [6:0] alignedB_1_address1;
output   alignedB_1_ce1;
output   alignedB_1_we1;
output  [7:0] alignedB_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
wire   [0:0] icmp_ln86_15_fu_931_p2;
wire   [0:0] icmp_ln86_14_fu_896_p2;
wire   [0:0] icmp_ln86_13_fu_861_p2;
wire   [0:0] icmp_ln86_12_fu_826_p2;
reg   [0:0] icmp_ln86_11_reg_1076;
reg   [0:0] icmp_ln86_10_reg_1067;
reg   [0:0] icmp_ln86_9_reg_1058;
reg   [0:0] icmp_ln86_8_reg_1049;
reg   [0:0] icmp_ln86_7_reg_1040;
reg   [0:0] icmp_ln86_6_reg_1031;
reg   [0:0] icmp_ln86_5_reg_1022;
reg   [0:0] icmp_ln86_4_reg_1013;
reg   [0:0] icmp_ln86_3_reg_1000;
reg   [0:0] icmp_ln86_2_reg_991;
reg   [0:0] icmp_ln86_1_reg_982;
reg   [0:0] icmp_ln86_reg_973;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] b_str_idx_2_reg_954;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln86_fu_374_p2;
reg   [6:0] lshr_ln_reg_977;
wire   [0:0] icmp_ln86_1_fu_406_p2;
reg   [6:0] lshr_ln86_1_reg_986;
wire   [0:0] icmp_ln86_2_fu_438_p2;
reg   [6:0] lshr_ln86_2_reg_995;
wire   [0:0] icmp_ln86_3_fu_470_p2;
wire   [0:0] trunc_ln86_fu_476_p1;
reg   [0:0] trunc_ln86_reg_1004;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [6:0] lshr_ln86_3_reg_1008;
wire   [0:0] icmp_ln86_4_fu_534_p2;
reg   [6:0] lshr_ln86_4_reg_1017;
wire   [0:0] icmp_ln86_5_fu_565_p2;
reg   [6:0] lshr_ln86_5_reg_1026;
wire   [0:0] icmp_ln86_6_fu_596_p2;
reg   [6:0] lshr_ln86_6_reg_1035;
wire   [0:0] icmp_ln86_7_fu_627_p2;
reg   [6:0] lshr_ln86_7_reg_1044;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln86_8_fu_678_p2;
reg   [6:0] lshr_ln86_8_reg_1053;
wire   [0:0] icmp_ln86_9_fu_709_p2;
reg   [6:0] lshr_ln86_9_reg_1062;
wire   [0:0] icmp_ln86_10_fu_740_p2;
reg   [6:0] lshr_ln86_s_reg_1071;
wire   [0:0] icmp_ln86_11_fu_771_p2;
wire   [63:0] zext_ln86_11_fu_812_p1;
reg   [63:0] zext_ln86_11_reg_1080;
wire    ap_block_pp0_stage3_11001;
reg   [0:0] icmp_ln86_12_reg_1086;
wire   [63:0] zext_ln86_12_fu_847_p1;
reg   [63:0] zext_ln86_12_reg_1090;
reg   [0:0] icmp_ln86_13_reg_1096;
wire   [63:0] zext_ln86_13_fu_882_p1;
reg   [63:0] zext_ln86_13_reg_1100;
reg   [0:0] icmp_ln86_14_reg_1106;
wire   [63:0] zext_ln86_14_fu_917_p1;
reg   [63:0] zext_ln86_14_reg_1110;
reg   [0:0] icmp_ln86_15_reg_1116;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln18_fu_488_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln86_fu_494_p1;
wire   [63:0] zext_ln86_1_fu_499_p1;
wire   [63:0] zext_ln86_2_fu_504_p1;
wire   [63:0] zext_ln86_3_fu_633_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln86_4_fu_638_p1;
wire   [63:0] zext_ln86_5_fu_643_p1;
wire   [63:0] zext_ln86_6_fu_648_p1;
wire   [63:0] zext_ln86_7_fu_777_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln86_8_fu_782_p1;
wire   [63:0] zext_ln86_9_fu_787_p1;
wire   [63:0] zext_ln86_10_fu_792_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] b_str_idx_fu_68;
wire   [31:0] add_ln86_15_fu_937_p2;
wire    ap_loop_init;
reg   [31:0] ap_sig_allocacmp_b_str_idx_2;
reg    alignedB_0_we1_local;
reg    alignedB_0_ce1_local;
reg   [6:0] alignedB_0_address1_local;
reg    alignedB_0_we0_local;
reg    alignedB_0_ce0_local;
reg   [6:0] alignedB_0_address0_local;
reg    alignedB_1_we1_local;
reg    alignedB_1_ce1_local;
reg   [6:0] alignedB_1_address1_local;
reg    alignedB_1_we0_local;
reg    alignedB_1_ce0_local;
reg   [6:0] alignedB_1_address0_local;
wire   [23:0] tmp_fu_364_p4;
wire   [31:0] add_ln86_fu_380_p2;
wire   [23:0] tmp_1_fu_396_p4;
wire   [31:0] add_ln86_1_fu_412_p2;
wire   [23:0] tmp_2_fu_428_p4;
wire   [31:0] add_ln86_2_fu_444_p2;
wire   [23:0] tmp_3_fu_460_p4;
wire   [6:0] lshr_ln18_2_fu_479_p4;
wire   [31:0] add_ln86_3_fu_509_p2;
wire   [23:0] tmp_4_fu_524_p4;
wire   [31:0] add_ln86_4_fu_540_p2;
wire   [23:0] tmp_5_fu_555_p4;
wire   [31:0] add_ln86_5_fu_571_p2;
wire   [23:0] tmp_6_fu_586_p4;
wire   [31:0] add_ln86_6_fu_602_p2;
wire   [23:0] tmp_7_fu_617_p4;
wire   [31:0] add_ln86_7_fu_653_p2;
wire   [23:0] tmp_8_fu_668_p4;
wire   [31:0] add_ln86_8_fu_684_p2;
wire   [23:0] tmp_9_fu_699_p4;
wire   [31:0] add_ln86_9_fu_715_p2;
wire   [23:0] tmp_10_fu_730_p4;
wire   [31:0] add_ln86_10_fu_746_p2;
wire   [23:0] tmp_11_fu_761_p4;
wire   [31:0] add_ln86_11_fu_797_p2;
wire   [6:0] lshr_ln86_10_fu_802_p4;
wire   [23:0] tmp_12_fu_816_p4;
wire   [31:0] add_ln86_12_fu_832_p2;
wire   [6:0] lshr_ln86_11_fu_837_p4;
wire   [23:0] tmp_13_fu_851_p4;
wire   [31:0] add_ln86_13_fu_867_p2;
wire   [6:0] lshr_ln86_12_fu_872_p4;
wire   [23:0] tmp_14_fu_886_p4;
wire   [31:0] add_ln86_14_fu_902_p2;
wire   [6:0] lshr_ln86_13_fu_907_p4;
wire   [23:0] tmp_15_fu_921_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_923;
reg    ap_condition_929;
reg    ap_condition_938;
reg    ap_condition_945;
reg    ap_condition_954;
reg    ap_condition_961;
reg    ap_condition_970;
reg    ap_condition_977;
reg    ap_condition_364;
reg    ap_condition_985;
reg    ap_condition_994;
reg    ap_condition_1001;
reg    ap_condition_1010;
reg    ap_condition_1017;
reg    ap_condition_1026;
reg    ap_condition_1031;
reg    ap_condition_1034;
reg    ap_condition_1037;
reg    ap_condition_1040;
reg    ap_condition_1043;
reg    ap_condition_1046;
reg    ap_condition_1049;
reg    ap_condition_1052;
reg    ap_condition_1055;
reg    ap_condition_1058;
reg    ap_condition_1061;
reg    ap_condition_1064;
reg    ap_condition_1067;
reg    ap_condition_1070;
reg    ap_condition_1073;
reg    ap_condition_1076;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 b_str_idx_fu_68 = 32'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_str_idx_fu_68 <= b_str_idx_7;
    end else if (((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (icmp_ln86_12_fu_826_p2 == 1'd1) & (icmp_ln86_13_fu_861_p2 == 1'd1) & (icmp_ln86_14_fu_896_p2 == 1'd1) & (icmp_ln86_15_fu_931_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        b_str_idx_fu_68 <= add_ln86_15_fu_937_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_str_idx_2_reg_954 <= ap_sig_allocacmp_b_str_idx_2;
        icmp_ln86_1_reg_982 <= icmp_ln86_1_fu_406_p2;
        icmp_ln86_2_reg_991 <= icmp_ln86_2_fu_438_p2;
        icmp_ln86_3_reg_1000 <= icmp_ln86_3_fu_470_p2;
        icmp_ln86_reg_973 <= icmp_ln86_fu_374_p2;
        lshr_ln86_1_reg_986 <= {{add_ln86_1_fu_412_p2[7:1]}};
        lshr_ln86_2_reg_995 <= {{add_ln86_2_fu_444_p2[7:1]}};
        lshr_ln_reg_977 <= {{add_ln86_fu_380_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln86_10_reg_1067 <= icmp_ln86_10_fu_740_p2;
        icmp_ln86_11_reg_1076 <= icmp_ln86_11_fu_771_p2;
        icmp_ln86_8_reg_1049 <= icmp_ln86_8_fu_678_p2;
        icmp_ln86_9_reg_1058 <= icmp_ln86_9_fu_709_p2;
        lshr_ln86_7_reg_1044 <= {{add_ln86_7_fu_653_p2[7:1]}};
        lshr_ln86_8_reg_1053 <= {{add_ln86_8_fu_684_p2[7:1]}};
        lshr_ln86_9_reg_1062 <= {{add_ln86_9_fu_715_p2[7:1]}};
        lshr_ln86_s_reg_1071 <= {{add_ln86_10_fu_746_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln86_12_reg_1086 <= icmp_ln86_12_fu_826_p2;
        icmp_ln86_13_reg_1096 <= icmp_ln86_13_fu_861_p2;
        icmp_ln86_14_reg_1106 <= icmp_ln86_14_fu_896_p2;
        icmp_ln86_15_reg_1116 <= icmp_ln86_15_fu_931_p2;
        zext_ln86_11_reg_1080[6 : 0] <= zext_ln86_11_fu_812_p1[6 : 0];
        zext_ln86_12_reg_1090[6 : 0] <= zext_ln86_12_fu_847_p1[6 : 0];
        zext_ln86_13_reg_1100[6 : 0] <= zext_ln86_13_fu_882_p1[6 : 0];
        zext_ln86_14_reg_1110[6 : 0] <= zext_ln86_14_fu_917_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln86_4_reg_1013 <= icmp_ln86_4_fu_534_p2;
        icmp_ln86_5_reg_1022 <= icmp_ln86_5_fu_565_p2;
        icmp_ln86_6_reg_1031 <= icmp_ln86_6_fu_596_p2;
        icmp_ln86_7_reg_1040 <= icmp_ln86_7_fu_627_p2;
        lshr_ln86_3_reg_1008 <= {{add_ln86_3_fu_509_p2[7:1]}};
        lshr_ln86_4_reg_1017 <= {{add_ln86_4_fu_540_p2[7:1]}};
        lshr_ln86_5_reg_1026 <= {{add_ln86_5_fu_571_p2[7:1]}};
        lshr_ln86_6_reg_1035 <= {{add_ln86_6_fu_602_p2[7:1]}};
        trunc_ln86_reg_1004 <= trunc_ln86_fu_476_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((1'b1 == ap_condition_977)) begin
            alignedB_0_address0_local = zext_ln86_14_reg_1110;
        end else if ((1'b1 == ap_condition_970)) begin
            alignedB_0_address0_local = zext_ln86_13_reg_1100;
        end else if ((1'b1 == ap_condition_961)) begin
            alignedB_0_address0_local = zext_ln86_10_fu_792_p1;
        end else if ((1'b1 == ap_condition_954)) begin
            alignedB_0_address0_local = zext_ln86_9_fu_787_p1;
        end else if ((1'b1 == ap_condition_945)) begin
            alignedB_0_address0_local = zext_ln86_6_fu_648_p1;
        end else if ((1'b1 == ap_condition_938)) begin
            alignedB_0_address0_local = zext_ln86_5_fu_643_p1;
        end else if ((1'b1 == ap_condition_929)) begin
            alignedB_0_address0_local = zext_ln86_2_fu_504_p1;
        end else if ((1'b1 == ap_condition_923)) begin
            alignedB_0_address0_local = zext_ln86_1_fu_499_p1;
        end else begin
            alignedB_0_address0_local = 'bx;
        end
    end else begin
        alignedB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((icmp_ln86_reg_973 == 1'd1)) begin
        if ((1'b1 == ap_condition_1031)) begin
            alignedB_0_address1_local = zext_ln86_12_reg_1090;
        end else if ((1'b1 == ap_condition_1026)) begin
            alignedB_0_address1_local = zext_ln86_11_reg_1080;
        end else if ((1'b1 == ap_condition_1017)) begin
            alignedB_0_address1_local = zext_ln86_8_fu_782_p1;
        end else if ((1'b1 == ap_condition_1010)) begin
            alignedB_0_address1_local = zext_ln86_7_fu_777_p1;
        end else if ((1'b1 == ap_condition_1001)) begin
            alignedB_0_address1_local = zext_ln86_4_fu_638_p1;
        end else if ((1'b1 == ap_condition_994)) begin
            alignedB_0_address1_local = zext_ln86_3_fu_633_p1;
        end else if ((1'b1 == ap_condition_985)) begin
            alignedB_0_address1_local = zext_ln86_fu_494_p1;
        end else if ((1'b1 == ap_condition_923)) begin
            alignedB_0_address1_local = zext_ln18_fu_488_p1;
        end else begin
            alignedB_0_address1_local = 'bx;
        end
    end else begin
        alignedB_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)& (icmp_ln86_15_reg_1116 == 1'd1) & (icmp_ln86_14_reg_1106 == 1'd1) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1106 == 1'd1) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 ==1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004== 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd0)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004== 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd0)))) begin
        alignedB_0_ce1_local = 1'b1;
    end else begin
        alignedB_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)& (icmp_ln86_15_reg_1116 == 1'd1) & (icmp_ln86_14_reg_1106 == 1'd1) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1106 == 1'd1) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 ==1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004== 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd0)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004== 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd0)))) begin
        alignedB_0_we1_local = 1'b1;
    end else begin
        alignedB_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((1'b1 == ap_condition_1055)) begin
            alignedB_1_address0_local = zext_ln86_14_reg_1110;
        end else if ((1'b1 == ap_condition_1052)) begin
            alignedB_1_address0_local = zext_ln86_13_reg_1100;
        end else if ((1'b1 == ap_condition_1049)) begin
            alignedB_1_address0_local = zext_ln86_10_fu_792_p1;
        end else if ((1'b1 == ap_condition_1046)) begin
            alignedB_1_address0_local = zext_ln86_9_fu_787_p1;
        end else if ((1'b1 == ap_condition_1043)) begin
            alignedB_1_address0_local = zext_ln86_6_fu_648_p1;
        end else if ((1'b1 == ap_condition_1040)) begin
            alignedB_1_address0_local = zext_ln86_5_fu_643_p1;
        end else if ((1'b1 == ap_condition_1037)) begin
            alignedB_1_address0_local = zext_ln86_2_fu_504_p1;
        end else if ((1'b1 == ap_condition_1034)) begin
            alignedB_1_address0_local = zext_ln86_1_fu_499_p1;
        end else begin
            alignedB_1_address0_local = 'bx;
        end
    end else begin
        alignedB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((icmp_ln86_reg_973 == 1'd1)) begin
        if ((1'b1 == ap_condition_1076)) begin
            alignedB_1_address1_local = zext_ln86_12_reg_1090;
        end else if ((1'b1 == ap_condition_1073)) begin
            alignedB_1_address1_local = zext_ln86_11_reg_1080;
        end else if ((1'b1 == ap_condition_1070)) begin
            alignedB_1_address1_local = zext_ln86_8_fu_782_p1;
        end else if ((1'b1 == ap_condition_1067)) begin
            alignedB_1_address1_local = zext_ln86_7_fu_777_p1;
        end else if ((1'b1 == ap_condition_1064)) begin
            alignedB_1_address1_local = zext_ln86_4_fu_638_p1;
        end else if ((1'b1 == ap_condition_1061)) begin
            alignedB_1_address1_local = zext_ln86_3_fu_633_p1;
        end else if ((1'b1 == ap_condition_1058)) begin
            alignedB_1_address1_local = zext_ln86_fu_494_p1;
        end else if ((1'b1 == ap_condition_1034)) begin
            alignedB_1_address1_local = zext_ln18_fu_488_p1;
        end else begin
            alignedB_1_address1_local = 'bx;
        end
    end else begin
        alignedB_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)& (icmp_ln86_15_reg_1116 == 1'd1) & (icmp_ln86_14_reg_1106 == 1'd1) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1106 == 1'd1) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 ==1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004== 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd1)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004== 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd1)))) begin
        alignedB_1_ce1_local = 1'b1;
    end else begin
        alignedB_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)& (icmp_ln86_15_reg_1116 == 1'd1) & (icmp_ln86_14_reg_1106 == 1'd1) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1106 == 1'd1) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 ==1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004== 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd1)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004== 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd1)) | ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd0)) | ((icmp_ln86_reg_973 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd1)))) begin
        alignedB_1_we1_local = 1'b1;
    end else begin
        alignedB_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((icmp_ln86_reg_973 == 1'd0) | ((icmp_ln86_1_reg_982 == 1'd0) | ((icmp_ln86_2_reg_991 == 1'd0) | ((icmp_ln86_3_reg_1000 == 1'd0) | ((icmp_ln86_4_reg_1013 == 1'd0) | ((icmp_ln86_5_reg_1022 == 1'd0) | ((icmp_ln86_6_reg_1031 == 1'd0) | ((icmp_ln86_7_reg_1040 == 1'd0) | ((icmp_ln86_8_reg_1049 == 1'd0) | ((icmp_ln86_9_reg_1058 == 1'd0) | ((icmp_ln86_10_reg_1067 == 1'd0) | ((icmp_ln86_11_reg_1076 == 1'd0) | ((icmp_ln86_12_fu_826_p2 == 1'd0) | ((icmp_ln86_13_fu_861_p2 == 1'd0) | ((icmp_ln86_14_fu_896_p2 == 1'd0) | (icmp_ln86_15_fu_931_p2 == 1'd0)))))))))))))))))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln86_reg_973 == 1'd0) | ((icmp_ln86_1_reg_982 == 1'd0) | ((icmp_ln86_2_reg_991 == 1'd0) | ((icmp_ln86_3_reg_1000 == 1'd0) | ((icmp_ln86_4_reg_1013 == 1'd0) | ((icmp_ln86_5_reg_1022 == 1'd0) | ((icmp_ln86_6_reg_1031 == 1'd0) | ((icmp_ln86_7_reg_1040 == 1'd0) | ((icmp_ln86_8_reg_1049 == 1'd0) | ((icmp_ln86_9_reg_1058 == 1'd0) | ((icmp_ln86_10_reg_1067 == 1'd0) | ((icmp_ln86_11_reg_1076 == 1'd0) | ((icmp_ln86_12_reg_1086 == 1'd0) | ((icmp_ln86_13_reg_1096 == 1'd0) | ((icmp_ln86_15_reg_1116 == 1'd0) | (icmp_ln86_14_reg_1106 == 1'd0)))))))))))))))))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
        ap_sig_allocacmp_b_str_idx_2 = b_str_idx_7;
    end else begin
        ap_sig_allocacmp_b_str_idx_2 = b_str_idx_fu_68;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln86_10_fu_746_p2 = (b_str_idx_2_reg_954 + 32'd11);
assign add_ln86_11_fu_797_p2 = (b_str_idx_2_reg_954 + 32'd12);
assign add_ln86_12_fu_832_p2 = (b_str_idx_2_reg_954 + 32'd13);
assign add_ln86_13_fu_867_p2 = (b_str_idx_2_reg_954 + 32'd14);
assign add_ln86_14_fu_902_p2 = (b_str_idx_2_reg_954 + 32'd15);
assign add_ln86_15_fu_937_p2 = (b_str_idx_2_reg_954 + 32'd16);
assign add_ln86_1_fu_412_p2 = (ap_sig_allocacmp_b_str_idx_2 + 32'd2);
assign add_ln86_2_fu_444_p2 = (ap_sig_allocacmp_b_str_idx_2 + 32'd3);
assign add_ln86_3_fu_509_p2 = (b_str_idx_2_reg_954 + 32'd4);
assign add_ln86_4_fu_540_p2 = (b_str_idx_2_reg_954 + 32'd5);
assign add_ln86_5_fu_571_p2 = (b_str_idx_2_reg_954 + 32'd6);
assign add_ln86_6_fu_602_p2 = (b_str_idx_2_reg_954 + 32'd7);
assign add_ln86_7_fu_653_p2 = (b_str_idx_2_reg_954 + 32'd8);
assign add_ln86_8_fu_684_p2 = (b_str_idx_2_reg_954 + 32'd9);
assign add_ln86_9_fu_715_p2 = (b_str_idx_2_reg_954 + 32'd10);
assign add_ln86_fu_380_p2 = (ap_sig_allocacmp_b_str_idx_2 + 32'd1);
assign alignedB_0_address0 = alignedB_0_address0_local;
assign alignedB_0_address1 = alignedB_0_address1_local;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_ce1 = alignedB_0_ce1_local;
assign alignedB_0_d0 = 8'd95;
assign alignedB_0_d1 = 8'd95;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_0_we1 = alignedB_0_we1_local;
assign alignedB_1_address0 = alignedB_1_address0_local;
assign alignedB_1_address1 = alignedB_1_address1_local;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_ce1 = alignedB_1_ce1_local;
assign alignedB_1_d0 = 8'd95;
assign alignedB_1_d1 = 8'd95;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign alignedB_1_we1 = alignedB_1_we1_local;
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
always @ (*) begin
    ap_condition_1001 = ((icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd1));
end
always @ (*) begin
    ap_condition_1010 = ((icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd0));
end
always @ (*) begin
    ap_condition_1017 = ((icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd1));
end
always @ (*) begin
    ap_condition_1026 = ((icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd0));
end
always @ (*) begin
    ap_condition_1031 = ((icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd1));
end
always @ (*) begin
    ap_condition_1034 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd1));
end
always @ (*) begin
    ap_condition_1037 = ((icmp_ln86_3_reg_1000 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd0));
end
always @ (*) begin
    ap_condition_1040 = ((icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd1));
end
always @ (*) begin
    ap_condition_1043 = ((icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd0));
end
always @ (*) begin
    ap_condition_1046 = ((icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd1));
end
always @ (*) begin
    ap_condition_1049 = ((icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd0));
end
always @ (*) begin
    ap_condition_1052 = ((icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1106 == 1'd1) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd1));
end
always @ (*) begin
    ap_condition_1055 = ((icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_1116 == 1'd1) & (icmp_ln86_14_reg_1106 == 1'd1) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd0));
end
always @ (*) begin
    ap_condition_1058 = ((icmp_ln86_1_reg_982 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd0));
end
always @ (*) begin
    ap_condition_1061 = ((icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd1));
end
always @ (*) begin
    ap_condition_1064 = ((icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd0));
end
always @ (*) begin
    ap_condition_1067 = ((icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd1));
end
always @ (*) begin
    ap_condition_1070 = ((icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd0));
end
always @ (*) begin
    ap_condition_1073 = ((icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd1));
end
always @ (*) begin
    ap_condition_1076 = ((icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd0));
end
always @ (*) begin
    ap_condition_364 = ((icmp_ln86_reg_973 == 1'd1) & (icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1));
end
always @ (*) begin
    ap_condition_923 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd0));
end
always @ (*) begin
    ap_condition_929 = ((icmp_ln86_3_reg_1000 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd1));
end
always @ (*) begin
    ap_condition_938 = ((icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd0));
end
always @ (*) begin
    ap_condition_945 = ((icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd1));
end
always @ (*) begin
    ap_condition_954 = ((icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd0));
end
always @ (*) begin
    ap_condition_961 = ((icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_1004 == 1'd1));
end
always @ (*) begin
    ap_condition_970 = ((icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_14_reg_1106 == 1'd1) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd0));
end
always @ (*) begin
    ap_condition_977 = ((icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1031 == 1'd1) & (icmp_ln86_7_reg_1040 == 1'd1) & (icmp_ln86_8_reg_1049 == 1'd1) & (icmp_ln86_9_reg_1058 == 1'd1) & (icmp_ln86_10_reg_1067 == 1'd1) & (icmp_ln86_11_reg_1076 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_1116 == 1'd1) & (icmp_ln86_14_reg_1106 == 1'd1) & (icmp_ln86_13_reg_1096 == 1'd1) & (icmp_ln86_12_reg_1086 == 1'd1) & (trunc_ln86_reg_1004 == 1'd1));
end
always @ (*) begin
    ap_condition_985 = ((icmp_ln86_1_reg_982 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_476_p1 == 1'd1));
end
always @ (*) begin
    ap_condition_994 = ((icmp_ln86_1_reg_982 == 1'd1) & (icmp_ln86_2_reg_991 == 1'd1) & (icmp_ln86_3_reg_1000 == 1'd1) & (icmp_ln86_4_reg_1013 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_1004 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign icmp_ln86_10_fu_740_p2 = (($signed(tmp_10_fu_730_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_11_fu_771_p2 = (($signed(tmp_11_fu_761_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_12_fu_826_p2 = (($signed(tmp_12_fu_816_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_13_fu_861_p2 = (($signed(tmp_13_fu_851_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_14_fu_896_p2 = (($signed(tmp_14_fu_886_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_15_fu_931_p2 = (($signed(tmp_15_fu_921_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_1_fu_406_p2 = (($signed(tmp_1_fu_396_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_2_fu_438_p2 = (($signed(tmp_2_fu_428_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_3_fu_470_p2 = (($signed(tmp_3_fu_460_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_4_fu_534_p2 = (($signed(tmp_4_fu_524_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_5_fu_565_p2 = (($signed(tmp_5_fu_555_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_6_fu_596_p2 = (($signed(tmp_6_fu_586_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_7_fu_627_p2 = (($signed(tmp_7_fu_617_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_8_fu_678_p2 = (($signed(tmp_8_fu_668_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_9_fu_709_p2 = (($signed(tmp_9_fu_699_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_fu_374_p2 = (($signed(tmp_fu_364_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign lshr_ln18_2_fu_479_p4 = {{b_str_idx_2_reg_954[7:1]}};
assign lshr_ln86_10_fu_802_p4 = {{add_ln86_11_fu_797_p2[7:1]}};
assign lshr_ln86_11_fu_837_p4 = {{add_ln86_12_fu_832_p2[7:1]}};
assign lshr_ln86_12_fu_872_p4 = {{add_ln86_13_fu_867_p2[7:1]}};
assign lshr_ln86_13_fu_907_p4 = {{add_ln86_14_fu_902_p2[7:1]}};
assign tmp_10_fu_730_p4 = {{add_ln86_9_fu_715_p2[31:8]}};
assign tmp_11_fu_761_p4 = {{add_ln86_10_fu_746_p2[31:8]}};
assign tmp_12_fu_816_p4 = {{add_ln86_11_fu_797_p2[31:8]}};
assign tmp_13_fu_851_p4 = {{add_ln86_12_fu_832_p2[31:8]}};
assign tmp_14_fu_886_p4 = {{add_ln86_13_fu_867_p2[31:8]}};
assign tmp_15_fu_921_p4 = {{add_ln86_14_fu_902_p2[31:8]}};
assign tmp_1_fu_396_p4 = {{add_ln86_fu_380_p2[31:8]}};
assign tmp_2_fu_428_p4 = {{add_ln86_1_fu_412_p2[31:8]}};
assign tmp_3_fu_460_p4 = {{add_ln86_2_fu_444_p2[31:8]}};
assign tmp_4_fu_524_p4 = {{add_ln86_3_fu_509_p2[31:8]}};
assign tmp_5_fu_555_p4 = {{add_ln86_4_fu_540_p2[31:8]}};
assign tmp_6_fu_586_p4 = {{add_ln86_5_fu_571_p2[31:8]}};
assign tmp_7_fu_617_p4 = {{add_ln86_6_fu_602_p2[31:8]}};
assign tmp_8_fu_668_p4 = {{add_ln86_7_fu_653_p2[31:8]}};
assign tmp_9_fu_699_p4 = {{add_ln86_8_fu_684_p2[31:8]}};
assign tmp_fu_364_p4 = {{ap_sig_allocacmp_b_str_idx_2[31:8]}};
assign trunc_ln86_fu_476_p1 = b_str_idx_2_reg_954[0:0];
assign zext_ln18_fu_488_p1 = lshr_ln18_2_fu_479_p4;
assign zext_ln86_10_fu_792_p1 = lshr_ln86_s_reg_1071;
assign zext_ln86_11_fu_812_p1 = lshr_ln86_10_fu_802_p4;
assign zext_ln86_12_fu_847_p1 = lshr_ln86_11_fu_837_p4;
assign zext_ln86_13_fu_882_p1 = lshr_ln86_12_fu_872_p4;
assign zext_ln86_14_fu_917_p1 = lshr_ln86_13_fu_907_p4;
assign zext_ln86_1_fu_499_p1 = lshr_ln86_1_reg_986;
assign zext_ln86_2_fu_504_p1 = lshr_ln86_2_reg_995;
assign zext_ln86_3_fu_633_p1 = lshr_ln86_3_reg_1008;
assign zext_ln86_4_fu_638_p1 = lshr_ln86_4_reg_1017;
assign zext_ln86_5_fu_643_p1 = lshr_ln86_5_reg_1026;
assign zext_ln86_6_fu_648_p1 = lshr_ln86_6_reg_1035;
assign zext_ln86_7_fu_777_p1 = lshr_ln86_7_reg_1044;
assign zext_ln86_8_fu_782_p1 = lshr_ln86_8_reg_1053;
assign zext_ln86_9_fu_787_p1 = lshr_ln86_9_reg_1062;
assign zext_ln86_fu_494_p1 = lshr_ln_reg_977;
always @ (posedge ap_clk) begin
    zext_ln86_11_reg_1080[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln86_12_reg_1090[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln86_13_reg_1100[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln86_14_reg_1110[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 