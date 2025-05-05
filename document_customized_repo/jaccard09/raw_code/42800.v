module ss_sort_local_scan (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_0_address1,bucket_0_ce1,bucket_0_we1,bucket_0_d1,bucket_0_q1,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_1_address1,bucket_1_ce1,bucket_1_we1,bucket_1_d1,bucket_1_q1); 
parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [9:0] bucket_0_address1;
output   bucket_0_ce1;
output   bucket_0_we1;
output  [31:0] bucket_0_d1;
input  [31:0] bucket_0_q1;
output  [9:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [9:0] bucket_1_address1;
output   bucket_1_ce1;
output   bucket_1_we1;
output  [31:0] bucket_1_d1;
input  [31:0] bucket_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] tmp_fu_370_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state16;
reg   [31:0] reg_354;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg   [31:0] reg_358;
wire   [6:0] trunc_ln15_fu_378_p1;
reg   [6:0] trunc_ln15_reg_787;
reg   [9:0] bucket_1_addr_reg_803;
wire   [5:0] tmp_s_fu_396_p4;
reg   [5:0] tmp_s_reg_808;
reg   [9:0] bucket_1_addr_16_reg_824;
wire   [31:0] add_ln16_fu_431_p2;
reg   [31:0] add_ln16_reg_829;
wire    ap_CS_fsm_state2;
reg   [9:0] bucket_0_addr_8_reg_835;
reg   [9:0] bucket_1_addr_9_reg_840;
wire   [31:0] add_ln16_15_fu_450_p2;
reg   [31:0] add_ln16_15_reg_845;
reg   [9:0] bucket_0_addr_16_reg_851;
reg   [9:0] bucket_1_addr_17_reg_856;
wire   [31:0] add_ln16_1_fu_469_p2;
reg   [31:0] add_ln16_1_reg_861;
reg   [9:0] bucket_0_addr_9_reg_867;
reg   [9:0] bucket_1_addr_10_reg_872;
wire   [31:0] add_ln16_16_fu_487_p2;
reg   [31:0] add_ln16_16_reg_877;
reg   [9:0] bucket_0_addr_17_reg_883;
reg   [9:0] bucket_1_addr_18_reg_888;
wire   [31:0] add_ln16_2_fu_505_p2;
reg   [31:0] add_ln16_2_reg_893;
wire   [31:0] add_ln16_3_fu_510_p2;
reg   [31:0] add_ln16_3_reg_898;
reg   [9:0] bucket_0_addr_10_reg_904;
reg   [9:0] bucket_1_addr_11_reg_909;
wire   [31:0] add_ln16_17_fu_529_p2;
reg   [31:0] add_ln16_17_reg_914;
wire   [31:0] add_ln16_18_fu_534_p2;
reg   [31:0] add_ln16_18_reg_919;
reg   [9:0] bucket_0_addr_18_reg_925;
reg   [9:0] bucket_1_addr_19_reg_930;
wire   [31:0] add_ln16_4_fu_553_p2;
reg   [31:0] add_ln16_4_reg_935;
wire   [31:0] add_ln16_5_fu_558_p2;
reg   [31:0] add_ln16_5_reg_940;
reg   [9:0] bucket_0_addr_11_reg_946;
reg   [9:0] bucket_1_addr_12_reg_951;
wire   [31:0] add_ln16_19_fu_577_p2;
reg   [31:0] add_ln16_19_reg_956;
wire   [31:0] add_ln16_20_fu_582_p2;
reg   [31:0] add_ln16_20_reg_961;
reg   [9:0] bucket_0_addr_19_reg_967;
reg   [9:0] bucket_1_addr_20_reg_972;
wire   [31:0] add_ln16_6_fu_601_p2;
reg   [31:0] add_ln16_6_reg_977;
wire   [31:0] add_ln16_7_fu_606_p2;
reg   [31:0] add_ln16_7_reg_982;
reg   [9:0] bucket_0_addr_12_reg_988;
reg   [9:0] bucket_1_addr_13_reg_993;
wire   [31:0] add_ln16_21_fu_625_p2;
reg   [31:0] add_ln16_21_reg_998;
wire   [31:0] add_ln16_22_fu_630_p2;
reg   [31:0] add_ln16_22_reg_1003;
reg   [9:0] bucket_0_addr_20_reg_1009;
reg   [9:0] bucket_1_addr_21_reg_1014;
wire   [31:0] add_ln16_8_fu_649_p2;
reg   [31:0] add_ln16_8_reg_1019;
wire   [31:0] add_ln16_9_fu_654_p2;
reg   [31:0] add_ln16_9_reg_1024;
reg   [9:0] bucket_0_addr_13_reg_1030;
reg   [9:0] bucket_1_addr_14_reg_1035;
wire   [31:0] add_ln16_23_fu_673_p2;
reg   [31:0] add_ln16_23_reg_1040;
wire   [31:0] add_ln16_24_fu_678_p2;
reg   [31:0] add_ln16_24_reg_1045;
reg   [9:0] bucket_0_addr_21_reg_1051;
reg   [9:0] bucket_1_addr_22_reg_1056;
wire   [31:0] add_ln16_10_fu_697_p2;
reg   [31:0] add_ln16_10_reg_1061;
wire   [31:0] add_ln16_11_fu_702_p2;
reg   [31:0] add_ln16_11_reg_1066;
reg   [9:0] bucket_0_addr_14_reg_1072;
reg   [9:0] bucket_1_addr_15_reg_1077;
wire   [31:0] add_ln16_25_fu_721_p2;
reg   [31:0] add_ln16_25_reg_1082;
wire   [31:0] add_ln16_26_fu_726_p2;
reg   [31:0] add_ln16_26_reg_1087;
reg   [9:0] bucket_0_addr_22_reg_1093;
reg   [9:0] bucket_1_addr_23_reg_1098;
wire   [31:0] add_ln16_12_fu_745_p2;
reg   [31:0] add_ln16_12_reg_1103;
wire   [31:0] add_ln16_13_fu_750_p2;
reg   [31:0] add_ln16_13_reg_1108;
wire   [31:0] add_ln16_27_fu_756_p2;
reg   [31:0] add_ln16_27_reg_1114;
wire   [31:0] add_ln16_28_fu_761_p2;
reg   [31:0] add_ln16_28_reg_1119;
wire   [31:0] add_ln16_14_fu_767_p2;
reg   [31:0] add_ln16_14_reg_1125;
wire    ap_CS_fsm_state10;
wire   [31:0] add_ln16_29_fu_772_p2;
reg   [31:0] add_ln16_29_reg_1130;
wire   [63:0] zext_ln16_fu_390_p1;
wire   [63:0] zext_ln16_8_fu_414_p1;
wire   [63:0] zext_ln16_1_fu_444_p1;
wire   [63:0] zext_ln16_9_fu_463_p1;
wire   [63:0] zext_ln16_2_fu_481_p1;
wire   [63:0] zext_ln16_10_fu_499_p1;
wire   [63:0] zext_ln16_3_fu_523_p1;
wire   [63:0] zext_ln16_11_fu_547_p1;
wire   [63:0] zext_ln16_4_fu_571_p1;
wire   [63:0] zext_ln16_12_fu_595_p1;
wire   [63:0] zext_ln16_5_fu_619_p1;
wire   [63:0] zext_ln16_13_fu_643_p1;
wire   [63:0] zext_ln16_6_fu_667_p1;
wire   [63:0] zext_ln16_14_fu_691_p1;
wire   [63:0] zext_ln16_7_fu_715_p1;
wire   [63:0] zext_ln16_15_fu_739_p1;
reg   [7:0] radixID_fu_76;
wire   [7:0] add_ln13_fu_420_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_radixID_2;
reg    bucket_0_ce1_local;
reg   [9:0] bucket_0_address1_local;
reg    bucket_0_ce0_local;
reg   [9:0] bucket_0_address0_local;
reg    bucket_0_we1_local;
reg   [31:0] bucket_0_d1_local;
reg    bucket_0_we0_local;
reg   [31:0] bucket_0_d0_local;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
reg    bucket_1_ce1_local;
reg   [9:0] bucket_1_address1_local;
reg    bucket_1_ce0_local;
reg   [9:0] bucket_1_address0_local;
reg    bucket_1_we1_local;
reg   [31:0] bucket_1_d1_local;
reg    bucket_1_we0_local;
reg   [31:0] bucket_1_d0_local;
wire   [9:0] shl_ln_fu_382_p3;
wire   [9:0] or_ln1_fu_406_p3;
wire   [9:0] or_ln_fu_437_p3;
wire   [9:0] or_ln16_7_fu_456_p3;
wire   [9:0] or_ln16_1_fu_474_p3;
wire   [9:0] or_ln16_8_fu_492_p3;
wire   [9:0] or_ln16_2_fu_516_p3;
wire   [9:0] or_ln16_9_fu_540_p3;
wire   [9:0] or_ln16_3_fu_564_p3;
wire   [9:0] or_ln16_s_fu_588_p3;
wire   [9:0] or_ln16_4_fu_612_p3;
wire   [9:0] or_ln16_10_fu_636_p3;
wire   [9:0] or_ln16_5_fu_660_p3;
wire   [9:0] or_ln16_11_fu_684_p3;
wire   [9:0] or_ln16_6_fu_708_p3;
wire   [9:0] or_ln16_12_fu_732_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 radixID_fu_76 = 8'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((tmp_fu_370_p3 == 1'd0)) begin
            radixID_fu_76 <= add_ln13_fu_420_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            radixID_fu_76 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln16_10_reg_1061 <= add_ln16_10_fu_697_p2;
        add_ln16_11_reg_1066 <= add_ln16_11_fu_702_p2;
        add_ln16_25_reg_1082 <= add_ln16_25_fu_721_p2;
        add_ln16_26_reg_1087 <= add_ln16_26_fu_726_p2;
        bucket_0_addr_14_reg_1072[9 : 3] <= zext_ln16_7_fu_715_p1[9 : 3];
        bucket_0_addr_22_reg_1093[9 : 4] <= zext_ln16_15_fu_739_p1[9 : 4];
        bucket_1_addr_15_reg_1077[9 : 3] <= zext_ln16_7_fu_715_p1[9 : 3];
        bucket_1_addr_23_reg_1098[9 : 4] <= zext_ln16_15_fu_739_p1[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln16_12_reg_1103 <= add_ln16_12_fu_745_p2;
        add_ln16_13_reg_1108 <= add_ln16_13_fu_750_p2;
        add_ln16_27_reg_1114 <= add_ln16_27_fu_756_p2;
        add_ln16_28_reg_1119 <= add_ln16_28_fu_761_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln16_14_reg_1125 <= add_ln16_14_fu_767_p2;
        add_ln16_29_reg_1130 <= add_ln16_29_fu_772_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln16_15_reg_845 <= add_ln16_15_fu_450_p2;
        add_ln16_reg_829 <= add_ln16_fu_431_p2;
        bucket_0_addr_16_reg_851[9 : 4] <= zext_ln16_9_fu_463_p1[9 : 4];
        bucket_0_addr_8_reg_835[9 : 3] <= zext_ln16_1_fu_444_p1[9 : 3];
        bucket_1_addr_17_reg_856[9 : 4] <= zext_ln16_9_fu_463_p1[9 : 4];
        bucket_1_addr_9_reg_840[9 : 3] <= zext_ln16_1_fu_444_p1[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln16_16_reg_877 <= add_ln16_16_fu_487_p2;
        add_ln16_1_reg_861 <= add_ln16_1_fu_469_p2;
        bucket_0_addr_17_reg_883[9 : 4] <= zext_ln16_10_fu_499_p1[9 : 4];
        bucket_0_addr_9_reg_867[9 : 3] <= zext_ln16_2_fu_481_p1[9 : 3];
        bucket_1_addr_10_reg_872[9 : 3] <= zext_ln16_2_fu_481_p1[9 : 3];
        bucket_1_addr_18_reg_888[9 : 4] <= zext_ln16_10_fu_499_p1[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln16_17_reg_914 <= add_ln16_17_fu_529_p2;
        add_ln16_18_reg_919 <= add_ln16_18_fu_534_p2;
        add_ln16_2_reg_893 <= add_ln16_2_fu_505_p2;
        add_ln16_3_reg_898 <= add_ln16_3_fu_510_p2;
        bucket_0_addr_10_reg_904[9 : 3] <= zext_ln16_3_fu_523_p1[9 : 3];
        bucket_0_addr_18_reg_925[9 : 4] <= zext_ln16_11_fu_547_p1[9 : 4];
        bucket_1_addr_11_reg_909[9 : 3] <= zext_ln16_3_fu_523_p1[9 : 3];
        bucket_1_addr_19_reg_930[9 : 4] <= zext_ln16_11_fu_547_p1[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln16_19_reg_956 <= add_ln16_19_fu_577_p2;
        add_ln16_20_reg_961 <= add_ln16_20_fu_582_p2;
        add_ln16_4_reg_935 <= add_ln16_4_fu_553_p2;
        add_ln16_5_reg_940 <= add_ln16_5_fu_558_p2;
        bucket_0_addr_11_reg_946[9 : 3] <= zext_ln16_4_fu_571_p1[9 : 3];
        bucket_0_addr_19_reg_967[9 : 4] <= zext_ln16_12_fu_595_p1[9 : 4];
        bucket_1_addr_12_reg_951[9 : 3] <= zext_ln16_4_fu_571_p1[9 : 3];
        bucket_1_addr_20_reg_972[9 : 4] <= zext_ln16_12_fu_595_p1[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln16_21_reg_998 <= add_ln16_21_fu_625_p2;
        add_ln16_22_reg_1003 <= add_ln16_22_fu_630_p2;
        add_ln16_6_reg_977 <= add_ln16_6_fu_601_p2;
        add_ln16_7_reg_982 <= add_ln16_7_fu_606_p2;
        bucket_0_addr_12_reg_988[9 : 3] <= zext_ln16_5_fu_619_p1[9 : 3];
        bucket_0_addr_20_reg_1009[9 : 4] <= zext_ln16_13_fu_643_p1[9 : 4];
        bucket_1_addr_13_reg_993[9 : 3] <= zext_ln16_5_fu_619_p1[9 : 3];
        bucket_1_addr_21_reg_1014[9 : 4] <= zext_ln16_13_fu_643_p1[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln16_23_reg_1040 <= add_ln16_23_fu_673_p2;
        add_ln16_24_reg_1045 <= add_ln16_24_fu_678_p2;
        add_ln16_8_reg_1019 <= add_ln16_8_fu_649_p2;
        add_ln16_9_reg_1024 <= add_ln16_9_fu_654_p2;
        bucket_0_addr_13_reg_1030[9 : 3] <= zext_ln16_6_fu_667_p1[9 : 3];
        bucket_0_addr_21_reg_1051[9 : 4] <= zext_ln16_14_fu_691_p1[9 : 4];
        bucket_1_addr_14_reg_1035[9 : 3] <= zext_ln16_6_fu_667_p1[9 : 3];
        bucket_1_addr_22_reg_1056[9 : 4] <= zext_ln16_14_fu_691_p1[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_1_addr_16_reg_824[9 : 4] <= zext_ln16_8_fu_414_p1[9 : 4];
        bucket_1_addr_reg_803[9 : 3] <= zext_ln16_fu_390_p1[9 : 3];
        tmp_s_reg_808 <= {{ap_sig_allocacmp_radixID_2[6:1]}};
        trunc_ln15_reg_787 <= trunc_ln15_fu_378_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        reg_354 <= bucket_1_q1;
        reg_358 <= bucket_1_q0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
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
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((tmp_fu_370_p3 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_radixID_2 = 8'd0;
    end else begin
        ap_sig_allocacmp_radixID_2 = radixID_fu_76;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_0_address0_local = bucket_0_addr_22_reg_1093;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_0_address0_local = bucket_0_addr_21_reg_1051;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_0_address0_local = bucket_0_addr_20_reg_1009;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_address0_local = bucket_0_addr_19_reg_967;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_0_address0_local = bucket_0_addr_18_reg_925;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_0_address0_local = bucket_0_addr_17_reg_883;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_0_address0_local = bucket_0_addr_16_reg_851;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_address0_local = zext_ln16_15_fu_739_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_0_address0_local = zext_ln16_14_fu_691_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_0_address0_local = zext_ln16_13_fu_643_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_0_address0_local = zext_ln16_12_fu_595_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_0_address0_local = zext_ln16_11_fu_547_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_address0_local = zext_ln16_10_fu_499_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_0_address0_local = zext_ln16_9_fu_463_p1;
    end else if (((tmp_fu_370_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_0_address0_local = zext_ln16_8_fu_414_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_0_address1_local = bucket_0_addr_14_reg_1072;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_0_address1_local = bucket_0_addr_13_reg_1030;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_0_address1_local = bucket_0_addr_12_reg_988;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_address1_local = bucket_0_addr_11_reg_946;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_0_address1_local = bucket_0_addr_10_reg_904;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_0_address1_local = bucket_0_addr_9_reg_867;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_0_address1_local = bucket_0_addr_8_reg_835;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_address1_local = zext_ln16_7_fu_715_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_0_address1_local = zext_ln16_6_fu_667_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_0_address1_local = zext_ln16_5_fu_619_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_0_address1_local = zext_ln16_4_fu_571_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_0_address1_local = zext_ln16_3_fu_523_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_address1_local = zext_ln16_2_fu_481_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_0_address1_local = zext_ln16_1_fu_444_p1;
    end else if (((tmp_fu_370_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_0_address1_local = zext_ln16_fu_390_p1;
    end else begin
        bucket_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((tmp_fu_370_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((tmp_fu_370_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_0_ce1_local = 1'b1;
    end else begin
        bucket_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_0_d0_local = add_ln16_28_reg_1119;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_0_d0_local = add_ln16_26_reg_1087;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_0_d0_local = add_ln16_24_reg_1045;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_d0_local = add_ln16_22_reg_1003;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_0_d0_local = add_ln16_20_reg_961;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_0_d0_local = add_ln16_18_reg_919;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_0_d0_local = add_ln16_16_reg_877;
    end else begin
        bucket_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_0_d1_local = add_ln16_13_reg_1108;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_0_d1_local = add_ln16_11_reg_1066;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_0_d1_local = add_ln16_9_reg_1024;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_d1_local = add_ln16_7_reg_982;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_0_d1_local = add_ln16_5_reg_940;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_0_d1_local = add_ln16_3_reg_898;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_0_d1_local = add_ln16_1_reg_861;
    end else begin
        bucket_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        bucket_0_we1_local = 1'b1;
    end else begin
        bucket_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_1_address0_local = bucket_1_addr_23_reg_1098;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_1_address0_local = bucket_1_addr_22_reg_1056;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_1_address0_local = bucket_1_addr_21_reg_1014;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_1_address0_local = bucket_1_addr_20_reg_972;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_address0_local = bucket_1_addr_19_reg_930;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_1_address0_local = bucket_1_addr_18_reg_888;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_1_address0_local = bucket_1_addr_17_reg_856;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_1_address0_local = bucket_1_addr_16_reg_824;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_address0_local = zext_ln16_15_fu_739_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_1_address0_local = zext_ln16_14_fu_691_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_1_address0_local = zext_ln16_13_fu_643_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_1_address0_local = zext_ln16_12_fu_595_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_1_address0_local = zext_ln16_11_fu_547_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_address0_local = zext_ln16_10_fu_499_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_1_address0_local = zext_ln16_9_fu_463_p1;
    end else if (((tmp_fu_370_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_1_address0_local = zext_ln16_8_fu_414_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_1_address1_local = bucket_1_addr_15_reg_1077;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_1_address1_local = bucket_1_addr_14_reg_1035;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_1_address1_local = bucket_1_addr_13_reg_993;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_1_address1_local = bucket_1_addr_12_reg_951;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_address1_local = bucket_1_addr_11_reg_909;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_1_address1_local = bucket_1_addr_10_reg_872;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_1_address1_local = bucket_1_addr_9_reg_840;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_1_address1_local = bucket_1_addr_reg_803;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_address1_local = zext_ln16_7_fu_715_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_1_address1_local = zext_ln16_6_fu_667_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_1_address1_local = zext_ln16_5_fu_619_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_1_address1_local = zext_ln16_4_fu_571_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_1_address1_local = zext_ln16_3_fu_523_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_address1_local = zext_ln16_2_fu_481_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_1_address1_local = zext_ln16_1_fu_444_p1;
    end else if (((tmp_fu_370_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_1_address1_local = zext_ln16_fu_390_p1;
    end else begin
        bucket_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((tmp_fu_370_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((tmp_fu_370_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_1_ce1_local = 1'b1;
    end else begin
        bucket_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_1_d0_local = add_ln16_29_reg_1130;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_1_d0_local = add_ln16_27_reg_1114;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_1_d0_local = add_ln16_25_reg_1082;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_1_d0_local = add_ln16_23_reg_1040;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_d0_local = add_ln16_21_reg_998;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_1_d0_local = add_ln16_19_reg_956;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_1_d0_local = add_ln16_17_reg_914;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_1_d0_local = add_ln16_15_reg_845;
    end else begin
        bucket_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_1_d1_local = add_ln16_14_reg_1125;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_1_d1_local = add_ln16_12_reg_1103;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_1_d1_local = add_ln16_10_reg_1061;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_1_d1_local = add_ln16_8_reg_1019;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_d1_local = add_ln16_6_reg_977;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_1_d1_local = add_ln16_4_reg_935;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_1_d1_local = add_ln16_2_reg_893;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_1_d1_local = add_ln16_reg_829;
    end else begin
        bucket_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        bucket_1_we1_local = 1'b1;
    end else begin
        bucket_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((tmp_fu_370_p3 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_420_p2 = (ap_sig_allocacmp_radixID_2 + 8'd2);
assign add_ln16_10_fu_697_p2 = (reg_354 + add_ln16_9_reg_1024);
assign add_ln16_11_fu_702_p2 = (bucket_0_q1 + add_ln16_10_fu_697_p2);
assign add_ln16_12_fu_745_p2 = (reg_354 + add_ln16_11_reg_1066);
assign add_ln16_13_fu_750_p2 = (bucket_0_q1 + add_ln16_12_fu_745_p2);
assign add_ln16_14_fu_767_p2 = (reg_354 + add_ln16_13_reg_1108);
assign add_ln16_15_fu_450_p2 = (bucket_1_q0 + bucket_0_q0);
assign add_ln16_16_fu_487_p2 = (bucket_0_q0 + add_ln16_15_reg_845);
assign add_ln16_17_fu_529_p2 = (reg_358 + add_ln16_16_reg_877);
assign add_ln16_18_fu_534_p2 = (bucket_0_q0 + add_ln16_17_fu_529_p2);
assign add_ln16_19_fu_577_p2 = (reg_358 + add_ln16_18_reg_919);
assign add_ln16_1_fu_469_p2 = (bucket_0_q1 + add_ln16_reg_829);
assign add_ln16_20_fu_582_p2 = (bucket_0_q0 + add_ln16_19_fu_577_p2);
assign add_ln16_21_fu_625_p2 = (reg_358 + add_ln16_20_reg_961);
assign add_ln16_22_fu_630_p2 = (bucket_0_q0 + add_ln16_21_fu_625_p2);
assign add_ln16_23_fu_673_p2 = (reg_358 + add_ln16_22_reg_1003);
assign add_ln16_24_fu_678_p2 = (bucket_0_q0 + add_ln16_23_fu_673_p2);
assign add_ln16_25_fu_721_p2 = (reg_358 + add_ln16_24_reg_1045);
assign add_ln16_26_fu_726_p2 = (bucket_0_q0 + add_ln16_25_fu_721_p2);
assign add_ln16_27_fu_756_p2 = (reg_358 + add_ln16_26_reg_1087);
assign add_ln16_28_fu_761_p2 = (bucket_0_q0 + add_ln16_27_fu_756_p2);
assign add_ln16_29_fu_772_p2 = (reg_358 + add_ln16_28_reg_1119);
assign add_ln16_2_fu_505_p2 = (reg_354 + add_ln16_1_reg_861);
assign add_ln16_3_fu_510_p2 = (bucket_0_q1 + add_ln16_2_fu_505_p2);
assign add_ln16_4_fu_553_p2 = (reg_354 + add_ln16_3_reg_898);
assign add_ln16_5_fu_558_p2 = (bucket_0_q1 + add_ln16_4_fu_553_p2);
assign add_ln16_6_fu_601_p2 = (reg_354 + add_ln16_5_reg_940);
assign add_ln16_7_fu_606_p2 = (bucket_0_q1 + add_ln16_6_fu_601_p2);
assign add_ln16_8_fu_649_p2 = (reg_354 + add_ln16_7_reg_982);
assign add_ln16_9_fu_654_p2 = (bucket_0_q1 + add_ln16_8_fu_649_p2);
assign add_ln16_fu_431_p2 = (bucket_1_q1 + bucket_0_q1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_address1 = bucket_0_address1_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_ce1 = bucket_0_ce1_local;
assign bucket_0_d0 = bucket_0_d0_local;
assign bucket_0_d1 = bucket_0_d1_local;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_0_we1 = bucket_0_we1_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_address1 = bucket_1_address1_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_ce1 = bucket_1_ce1_local;
assign bucket_1_d0 = bucket_1_d0_local;
assign bucket_1_d1 = bucket_1_d1_local;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_1_we1 = bucket_1_we1_local;
assign or_ln16_10_fu_636_p3 = {{tmp_s_reg_808}, {4'd13}};
assign or_ln16_11_fu_684_p3 = {{tmp_s_reg_808}, {4'd14}};
assign or_ln16_12_fu_732_p3 = {{tmp_s_reg_808}, {4'd15}};
assign or_ln16_1_fu_474_p3 = {{trunc_ln15_reg_787}, {3'd2}};
assign or_ln16_2_fu_516_p3 = {{trunc_ln15_reg_787}, {3'd3}};
assign or_ln16_3_fu_564_p3 = {{trunc_ln15_reg_787}, {3'd4}};
assign or_ln16_4_fu_612_p3 = {{trunc_ln15_reg_787}, {3'd5}};
assign or_ln16_5_fu_660_p3 = {{trunc_ln15_reg_787}, {3'd6}};
assign or_ln16_6_fu_708_p3 = {{trunc_ln15_reg_787}, {3'd7}};
assign or_ln16_7_fu_456_p3 = {{tmp_s_reg_808}, {4'd9}};
assign or_ln16_8_fu_492_p3 = {{tmp_s_reg_808}, {4'd10}};
assign or_ln16_9_fu_540_p3 = {{tmp_s_reg_808}, {4'd11}};
assign or_ln16_s_fu_588_p3 = {{tmp_s_reg_808}, {4'd12}};
assign or_ln1_fu_406_p3 = {{tmp_s_fu_396_p4}, {4'd8}};
assign or_ln_fu_437_p3 = {{trunc_ln15_reg_787}, {3'd1}};
assign shl_ln_fu_382_p3 = {{trunc_ln15_fu_378_p1}, {3'd0}};
assign tmp_fu_370_p3 = ap_sig_allocacmp_radixID_2[32'd7];
assign tmp_s_fu_396_p4 = {{ap_sig_allocacmp_radixID_2[6:1]}};
assign trunc_ln15_fu_378_p1 = ap_sig_allocacmp_radixID_2[6:0];
assign zext_ln16_10_fu_499_p1 = or_ln16_8_fu_492_p3;
assign zext_ln16_11_fu_547_p1 = or_ln16_9_fu_540_p3;
assign zext_ln16_12_fu_595_p1 = or_ln16_s_fu_588_p3;
assign zext_ln16_13_fu_643_p1 = or_ln16_10_fu_636_p3;
assign zext_ln16_14_fu_691_p1 = or_ln16_11_fu_684_p3;
assign zext_ln16_15_fu_739_p1 = or_ln16_12_fu_732_p3;
assign zext_ln16_1_fu_444_p1 = or_ln_fu_437_p3;
assign zext_ln16_2_fu_481_p1 = or_ln16_1_fu_474_p3;
assign zext_ln16_3_fu_523_p1 = or_ln16_2_fu_516_p3;
assign zext_ln16_4_fu_571_p1 = or_ln16_3_fu_564_p3;
assign zext_ln16_5_fu_619_p1 = or_ln16_4_fu_612_p3;
assign zext_ln16_6_fu_667_p1 = or_ln16_5_fu_660_p3;
assign zext_ln16_7_fu_715_p1 = or_ln16_6_fu_708_p3;
assign zext_ln16_8_fu_414_p1 = or_ln1_fu_406_p3;
assign zext_ln16_9_fu_463_p1 = or_ln16_7_fu_456_p3;
assign zext_ln16_fu_390_p1 = shl_ln_fu_382_p3;
always @ (posedge ap_clk) begin
    bucket_1_addr_reg_803[2:0] <= 3'b000;
    bucket_1_addr_16_reg_824[3:0] <= 4'b1000;
    bucket_0_addr_8_reg_835[2:0] <= 3'b001;
    bucket_1_addr_9_reg_840[2:0] <= 3'b001;
    bucket_0_addr_16_reg_851[3:0] <= 4'b1001;
    bucket_1_addr_17_reg_856[3:0] <= 4'b1001;
    bucket_0_addr_9_reg_867[2:0] <= 3'b010;
    bucket_1_addr_10_reg_872[2:0] <= 3'b010;
    bucket_0_addr_17_reg_883[3:0] <= 4'b1010;
    bucket_1_addr_18_reg_888[3:0] <= 4'b1010;
    bucket_0_addr_10_reg_904[2:0] <= 3'b011;
    bucket_1_addr_11_reg_909[2:0] <= 3'b011;
    bucket_0_addr_18_reg_925[3:0] <= 4'b1011;
    bucket_1_addr_19_reg_930[3:0] <= 4'b1011;
    bucket_0_addr_11_reg_946[2:0] <= 3'b100;
    bucket_1_addr_12_reg_951[2:0] <= 3'b100;
    bucket_0_addr_19_reg_967[3:0] <= 4'b1100;
    bucket_1_addr_20_reg_972[3:0] <= 4'b1100;
    bucket_0_addr_12_reg_988[2:0] <= 3'b101;
    bucket_1_addr_13_reg_993[2:0] <= 3'b101;
    bucket_0_addr_20_reg_1009[3:0] <= 4'b1101;
    bucket_1_addr_21_reg_1014[3:0] <= 4'b1101;
    bucket_0_addr_13_reg_1030[2:0] <= 3'b110;
    bucket_1_addr_14_reg_1035[2:0] <= 3'b110;
    bucket_0_addr_21_reg_1051[3:0] <= 4'b1110;
    bucket_1_addr_22_reg_1056[3:0] <= 4'b1110;
    bucket_0_addr_14_reg_1072[2:0] <= 3'b111;
    bucket_1_addr_15_reg_1077[2:0] <= 3'b111;
    bucket_0_addr_22_reg_1093[3:0] <= 4'b1111;
    bucket_1_addr_23_reg_1098[3:0] <= 4'b1111;
end
endmodule 