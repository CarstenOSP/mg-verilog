module ss_sort_last_step_scan (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_0_address1,bucket_0_ce1,bucket_0_we1,bucket_0_d1,bucket_0_q1,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_1_address1,bucket_1_ce1,bucket_1_we1,bucket_1_d1,bucket_1_q1,sum_0_address0,sum_0_ce0,sum_0_q0,sum_1_address0,sum_1_ce0,sum_1_q0); 
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
output  [5:0] sum_0_address0;
output   sum_0_ce0;
input  [31:0] sum_0_q0;
output  [5:0] sum_1_address0;
output   sum_1_ce0;
input  [31:0] sum_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] tmp_fu_432_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state16;
wire   [5:0] lshr_ln_fu_440_p4;
reg   [5:0] lshr_ln_reg_715;
wire   [6:0] empty_fu_456_p1;
reg   [6:0] empty_reg_727;
reg   [9:0] bucket_0_addr_reg_742;
reg   [9:0] bucket_1_addr_reg_747;
reg   [9:0] bucket_0_addr_19_reg_752;
reg   [9:0] bucket_1_addr_20_reg_757;
reg   [31:0] sum_0_load_reg_767;
wire    ap_CS_fsm_state2;
wire   [31:0] add_ln37_fu_499_p2;
reg   [31:0] add_ln37_reg_775;
wire   [31:0] add_ln37_1_fu_505_p2;
reg   [31:0] add_ln37_1_reg_780;
wire   [31:0] add_ln37_2_fu_511_p2;
reg   [31:0] add_ln37_2_reg_785;
wire   [31:0] add_ln37_3_fu_517_p2;
reg   [31:0] add_ln37_3_reg_790;
reg   [9:0] bucket_0_addr_20_reg_795;
reg   [9:0] bucket_1_addr_21_reg_800;
reg   [9:0] bucket_0_addr_21_reg_805;
reg   [9:0] bucket_1_addr_22_reg_810;
reg   [31:0] sum_1_load_reg_815;
wire   [31:0] grp_fu_384_p2;
reg   [31:0] add_ln37_4_reg_823;
wire    ap_CS_fsm_state3;
wire   [31:0] grp_fu_389_p2;
reg   [31:0] add_ln37_5_reg_828;
wire   [31:0] grp_fu_394_p2;
reg   [31:0] add_ln37_6_reg_833;
wire   [31:0] grp_fu_399_p2;
reg   [31:0] add_ln37_7_reg_838;
reg   [9:0] bucket_0_addr_22_reg_843;
reg   [9:0] bucket_1_addr_23_reg_848;
reg   [9:0] bucket_0_addr_23_reg_853;
reg   [9:0] bucket_1_addr_24_reg_858;
reg   [31:0] add_ln37_8_reg_863;
wire    ap_CS_fsm_state4;
reg   [31:0] add_ln37_9_reg_868;
reg   [31:0] add_ln37_10_reg_873;
reg   [31:0] add_ln37_11_reg_878;
reg   [9:0] bucket_0_addr_24_reg_883;
reg   [9:0] bucket_1_addr_25_reg_888;
reg   [9:0] bucket_0_addr_25_reg_893;
reg   [9:0] bucket_1_addr_26_reg_898;
reg   [31:0] add_ln37_12_reg_903;
wire    ap_CS_fsm_state5;
reg   [31:0] add_ln37_13_reg_908;
reg   [31:0] add_ln37_14_reg_913;
reg   [31:0] add_ln37_15_reg_918;
reg   [9:0] bucket_0_addr_26_reg_923;
reg   [9:0] bucket_1_addr_27_reg_928;
reg   [9:0] bucket_0_addr_27_reg_933;
reg   [9:0] bucket_1_addr_28_reg_938;
wire   [31:0] grp_fu_404_p2;
reg   [31:0] add_ln37_16_reg_943;
wire    ap_CS_fsm_state6;
wire   [31:0] grp_fu_409_p2;
reg   [31:0] add_ln37_17_reg_948;
wire   [31:0] grp_fu_414_p2;
reg   [31:0] add_ln37_18_reg_953;
wire   [31:0] grp_fu_419_p2;
reg   [31:0] add_ln37_19_reg_958;
reg   [9:0] bucket_0_addr_28_reg_963;
reg   [9:0] bucket_1_addr_29_reg_968;
reg   [9:0] bucket_0_addr_29_reg_973;
reg   [9:0] bucket_1_addr_30_reg_978;
reg   [31:0] add_ln37_20_reg_983;
wire    ap_CS_fsm_state7;
reg   [31:0] add_ln37_21_reg_988;
reg   [31:0] add_ln37_22_reg_993;
reg   [31:0] add_ln37_23_reg_998;
reg   [9:0] bucket_0_addr_30_reg_1003;
reg   [9:0] bucket_1_addr_31_reg_1008;
reg   [9:0] bucket_0_addr_31_reg_1013;
reg   [9:0] bucket_1_addr_32_reg_1018;
reg   [31:0] add_ln37_24_reg_1023;
wire    ap_CS_fsm_state8;
reg   [31:0] add_ln37_25_reg_1028;
reg   [31:0] add_ln37_26_reg_1033;
reg   [31:0] add_ln37_27_reg_1038;
reg   [9:0] bucket_0_addr_32_reg_1043;
reg   [9:0] bucket_1_addr_33_reg_1048;
reg   [9:0] bucket_0_addr_33_reg_1053;
reg   [9:0] bucket_1_addr_34_reg_1058;
reg   [31:0] add_ln37_28_reg_1063;
wire    ap_CS_fsm_state9;
reg   [31:0] add_ln37_29_reg_1068;
reg   [31:0] add_ln37_30_reg_1073;
reg   [31:0] add_ln37_31_reg_1078;
wire   [63:0] zext_ln33_fu_450_p1;
wire   [63:0] p_cast_fu_468_p1;
wire   [63:0] zext_ln37_fu_482_p1;
wire   [63:0] zext_ln37_1_fu_530_p1;
wire   [63:0] zext_ln37_2_fu_543_p1;
wire   [63:0] zext_ln37_3_fu_556_p1;
wire   [63:0] zext_ln37_4_fu_569_p1;
wire   [63:0] zext_ln37_5_fu_582_p1;
wire   [63:0] zext_ln37_6_fu_595_p1;
wire   [63:0] p_cast3_fu_608_p1;
wire   [63:0] zext_ln37_7_fu_621_p1;
wire   [63:0] zext_ln37_8_fu_634_p1;
wire   [63:0] zext_ln37_9_fu_647_p1;
wire   [63:0] zext_ln37_10_fu_660_p1;
wire   [63:0] zext_ln37_11_fu_673_p1;
wire   [63:0] zext_ln37_12_fu_686_p1;
wire   [63:0] zext_ln37_13_fu_699_p1;
reg   [7:0] radixID_fu_80;
wire   [7:0] add_ln34_fu_488_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_radixID_3;
reg    sum_0_ce0_local;
reg    bucket_0_ce1_local;
reg   [9:0] bucket_0_address1_local;
reg    bucket_0_ce0_local;
reg   [9:0] bucket_0_address0_local;
reg    bucket_0_we1_local;
reg   [31:0] bucket_0_d1_local;
reg    bucket_0_we0_local;
reg   [31:0] bucket_0_d0_local;
wire    ap_CS_fsm_state10;
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
reg    sum_1_ce0_local;
wire   [9:0] tmp_s_fu_460_p3;
wire   [9:0] or_ln_fu_474_p3;
wire   [9:0] or_ln37_1_fu_523_p3;
wire   [9:0] or_ln37_2_fu_536_p3;
wire   [9:0] or_ln37_3_fu_549_p3;
wire   [9:0] or_ln37_4_fu_562_p3;
wire   [9:0] or_ln37_5_fu_575_p3;
wire   [9:0] or_ln37_6_fu_588_p3;
wire   [9:0] tmp_1_fu_601_p3;
wire   [9:0] or_ln37_7_fu_614_p3;
wire   [9:0] or_ln37_8_fu_627_p3;
wire   [9:0] or_ln37_9_fu_640_p3;
wire   [9:0] or_ln37_s_fu_653_p3;
wire   [9:0] or_ln37_10_fu_666_p3;
wire   [9:0] or_ln37_11_fu_679_p3;
wire   [9:0] or_ln37_12_fu_692_p3;
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
#0 radixID_fu_80 = 8'd0;
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
        if ((tmp_fu_432_p3 == 1'd0)) begin
            radixID_fu_80 <= add_ln34_fu_488_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            radixID_fu_80 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln37_10_reg_873 <= grp_fu_394_p2;
        add_ln37_11_reg_878 <= grp_fu_399_p2;
        add_ln37_8_reg_863 <= grp_fu_384_p2;
        add_ln37_9_reg_868 <= grp_fu_389_p2;
        bucket_0_addr_24_reg_883[9 : 3] <= zext_ln37_5_fu_582_p1[9 : 3];
        bucket_0_addr_25_reg_893[9 : 3] <= zext_ln37_6_fu_595_p1[9 : 3];
        bucket_1_addr_25_reg_888[9 : 3] <= zext_ln37_5_fu_582_p1[9 : 3];
        bucket_1_addr_26_reg_898[9 : 3] <= zext_ln37_6_fu_595_p1[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln37_12_reg_903 <= grp_fu_384_p2;
        add_ln37_13_reg_908 <= grp_fu_389_p2;
        add_ln37_14_reg_913 <= grp_fu_394_p2;
        add_ln37_15_reg_918 <= grp_fu_399_p2;
        bucket_0_addr_26_reg_923[9 : 4] <= p_cast3_fu_608_p1[9 : 4];
        bucket_0_addr_27_reg_933[9 : 4] <= zext_ln37_7_fu_621_p1[9 : 4];
        bucket_1_addr_27_reg_928[9 : 4] <= p_cast3_fu_608_p1[9 : 4];
        bucket_1_addr_28_reg_938[9 : 4] <= zext_ln37_7_fu_621_p1[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln37_16_reg_943 <= grp_fu_404_p2;
        add_ln37_17_reg_948 <= grp_fu_409_p2;
        add_ln37_18_reg_953 <= grp_fu_414_p2;
        add_ln37_19_reg_958 <= grp_fu_419_p2;
        bucket_0_addr_28_reg_963[9 : 4] <= zext_ln37_8_fu_634_p1[9 : 4];
        bucket_0_addr_29_reg_973[9 : 4] <= zext_ln37_9_fu_647_p1[9 : 4];
        bucket_1_addr_29_reg_968[9 : 4] <= zext_ln37_8_fu_634_p1[9 : 4];
        bucket_1_addr_30_reg_978[9 : 4] <= zext_ln37_9_fu_647_p1[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln37_1_reg_780 <= add_ln37_1_fu_505_p2;
        add_ln37_2_reg_785 <= add_ln37_2_fu_511_p2;
        add_ln37_3_reg_790 <= add_ln37_3_fu_517_p2;
        add_ln37_reg_775 <= add_ln37_fu_499_p2;
        bucket_0_addr_20_reg_795[9 : 3] <= zext_ln37_1_fu_530_p1[9 : 3];
        bucket_0_addr_21_reg_805[9 : 3] <= zext_ln37_2_fu_543_p1[9 : 3];
        bucket_1_addr_21_reg_800[9 : 3] <= zext_ln37_1_fu_530_p1[9 : 3];
        bucket_1_addr_22_reg_810[9 : 3] <= zext_ln37_2_fu_543_p1[9 : 3];
        sum_0_load_reg_767 <= sum_0_q0;
        sum_1_load_reg_815 <= sum_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln37_20_reg_983 <= grp_fu_404_p2;
        add_ln37_21_reg_988 <= grp_fu_409_p2;
        add_ln37_22_reg_993 <= grp_fu_414_p2;
        add_ln37_23_reg_998 <= grp_fu_419_p2;
        bucket_0_addr_30_reg_1003[9 : 4] <= zext_ln37_10_fu_660_p1[9 : 4];
        bucket_0_addr_31_reg_1013[9 : 4] <= zext_ln37_11_fu_673_p1[9 : 4];
        bucket_1_addr_31_reg_1008[9 : 4] <= zext_ln37_10_fu_660_p1[9 : 4];
        bucket_1_addr_32_reg_1018[9 : 4] <= zext_ln37_11_fu_673_p1[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln37_24_reg_1023 <= grp_fu_404_p2;
        add_ln37_25_reg_1028 <= grp_fu_409_p2;
        add_ln37_26_reg_1033 <= grp_fu_414_p2;
        add_ln37_27_reg_1038 <= grp_fu_419_p2;
        bucket_0_addr_32_reg_1043[9 : 4] <= zext_ln37_12_fu_686_p1[9 : 4];
        bucket_0_addr_33_reg_1053[9 : 4] <= zext_ln37_13_fu_699_p1[9 : 4];
        bucket_1_addr_33_reg_1048[9 : 4] <= zext_ln37_12_fu_686_p1[9 : 4];
        bucket_1_addr_34_reg_1058[9 : 4] <= zext_ln37_13_fu_699_p1[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln37_28_reg_1063 <= grp_fu_404_p2;
        add_ln37_29_reg_1068 <= grp_fu_409_p2;
        add_ln37_30_reg_1073 <= grp_fu_414_p2;
        add_ln37_31_reg_1078 <= grp_fu_419_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln37_4_reg_823 <= grp_fu_384_p2;
        add_ln37_5_reg_828 <= grp_fu_389_p2;
        add_ln37_6_reg_833 <= grp_fu_394_p2;
        add_ln37_7_reg_838 <= grp_fu_399_p2;
        bucket_0_addr_22_reg_843[9 : 3] <= zext_ln37_3_fu_556_p1[9 : 3];
        bucket_0_addr_23_reg_853[9 : 3] <= zext_ln37_4_fu_569_p1[9 : 3];
        bucket_1_addr_23_reg_848[9 : 3] <= zext_ln37_3_fu_556_p1[9 : 3];
        bucket_1_addr_24_reg_858[9 : 3] <= zext_ln37_4_fu_569_p1[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_0_addr_19_reg_752[9 : 3] <= zext_ln37_fu_482_p1[9 : 3];
        bucket_0_addr_reg_742[9 : 3] <= p_cast_fu_468_p1[9 : 3];
        bucket_1_addr_20_reg_757[9 : 3] <= zext_ln37_fu_482_p1[9 : 3];
        bucket_1_addr_reg_747[9 : 3] <= p_cast_fu_468_p1[9 : 3];
        empty_reg_727 <= empty_fu_456_p1;
        lshr_ln_reg_715 <= {{ap_sig_allocacmp_radixID_3[6:1]}};
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
    if (((tmp_fu_432_p3 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
        ap_sig_allocacmp_radixID_3 = 8'd0;
    end else begin
        ap_sig_allocacmp_radixID_3 = radixID_fu_80;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_0_address0_local = bucket_0_addr_33_reg_1053;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_0_address0_local = bucket_0_addr_31_reg_1013;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_0_address0_local = bucket_0_addr_29_reg_973;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_0_address0_local = bucket_0_addr_27_reg_933;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_address0_local = bucket_0_addr_25_reg_893;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_0_address0_local = bucket_0_addr_23_reg_853;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_0_address0_local = bucket_0_addr_21_reg_805;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_0_address0_local = bucket_0_addr_19_reg_752;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_address0_local = zext_ln37_13_fu_699_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_0_address0_local = zext_ln37_11_fu_673_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_0_address0_local = zext_ln37_9_fu_647_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_0_address0_local = zext_ln37_7_fu_621_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_0_address0_local = zext_ln37_6_fu_595_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_address0_local = zext_ln37_4_fu_569_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_0_address0_local = zext_ln37_2_fu_543_p1;
    end else if (((tmp_fu_432_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_0_address0_local = zext_ln37_fu_482_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_0_address1_local = bucket_0_addr_32_reg_1043;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_0_address1_local = bucket_0_addr_30_reg_1003;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_0_address1_local = bucket_0_addr_28_reg_963;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_0_address1_local = bucket_0_addr_26_reg_923;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_address1_local = bucket_0_addr_24_reg_883;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_0_address1_local = bucket_0_addr_22_reg_843;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_0_address1_local = bucket_0_addr_20_reg_795;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_0_address1_local = bucket_0_addr_reg_742;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_address1_local = zext_ln37_12_fu_686_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_0_address1_local = zext_ln37_10_fu_660_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_0_address1_local = zext_ln37_8_fu_634_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_0_address1_local = p_cast3_fu_608_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_0_address1_local = zext_ln37_5_fu_582_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_address1_local = zext_ln37_3_fu_556_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_0_address1_local = zext_ln37_1_fu_530_p1;
    end else if (((tmp_fu_432_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_0_address1_local = p_cast_fu_468_p1;
    end else begin
        bucket_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((tmp_fu_432_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((tmp_fu_432_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_0_ce1_local = 1'b1;
    end else begin
        bucket_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_0_d0_local = add_ln37_30_reg_1073;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_0_d0_local = add_ln37_26_reg_1033;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_0_d0_local = add_ln37_22_reg_993;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_0_d0_local = add_ln37_18_reg_953;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_d0_local = add_ln37_14_reg_913;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_0_d0_local = add_ln37_10_reg_873;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_0_d0_local = add_ln37_6_reg_833;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_0_d0_local = add_ln37_2_reg_785;
    end else begin
        bucket_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_0_d1_local = add_ln37_28_reg_1063;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_0_d1_local = add_ln37_24_reg_1023;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_0_d1_local = add_ln37_20_reg_983;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_0_d1_local = add_ln37_16_reg_943;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_0_d1_local = add_ln37_12_reg_903;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_0_d1_local = add_ln37_8_reg_863;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_0_d1_local = add_ln37_4_reg_823;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_0_d1_local = add_ln37_reg_775;
    end else begin
        bucket_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        bucket_0_we1_local = 1'b1;
    end else begin
        bucket_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_1_address0_local = bucket_1_addr_34_reg_1058;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_1_address0_local = bucket_1_addr_32_reg_1018;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_1_address0_local = bucket_1_addr_30_reg_978;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_1_address0_local = bucket_1_addr_28_reg_938;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_address0_local = bucket_1_addr_26_reg_898;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_1_address0_local = bucket_1_addr_24_reg_858;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_1_address0_local = bucket_1_addr_22_reg_810;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_1_address0_local = bucket_1_addr_20_reg_757;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_address0_local = zext_ln37_13_fu_699_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_1_address0_local = zext_ln37_11_fu_673_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_1_address0_local = zext_ln37_9_fu_647_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_1_address0_local = zext_ln37_7_fu_621_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_1_address0_local = zext_ln37_6_fu_595_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_address0_local = zext_ln37_4_fu_569_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_1_address0_local = zext_ln37_2_fu_543_p1;
    end else if (((tmp_fu_432_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_1_address0_local = zext_ln37_fu_482_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_1_address1_local = bucket_1_addr_33_reg_1048;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_1_address1_local = bucket_1_addr_31_reg_1008;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_1_address1_local = bucket_1_addr_29_reg_968;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_1_address1_local = bucket_1_addr_27_reg_928;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_address1_local = bucket_1_addr_25_reg_888;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_1_address1_local = bucket_1_addr_23_reg_848;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_1_address1_local = bucket_1_addr_21_reg_800;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_1_address1_local = bucket_1_addr_reg_747;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_address1_local = zext_ln37_12_fu_686_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_1_address1_local = zext_ln37_10_fu_660_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_1_address1_local = zext_ln37_8_fu_634_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_1_address1_local = p_cast3_fu_608_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_1_address1_local = zext_ln37_5_fu_582_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_address1_local = zext_ln37_3_fu_556_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_1_address1_local = zext_ln37_1_fu_530_p1;
    end else if (((tmp_fu_432_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_1_address1_local = p_cast_fu_468_p1;
    end else begin
        bucket_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((tmp_fu_432_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((tmp_fu_432_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_1_ce1_local = 1'b1;
    end else begin
        bucket_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_1_d0_local = add_ln37_31_reg_1078;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_1_d0_local = add_ln37_27_reg_1038;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_1_d0_local = add_ln37_23_reg_998;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_1_d0_local = add_ln37_19_reg_958;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_d0_local = add_ln37_15_reg_918;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_1_d0_local = add_ln37_11_reg_878;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_1_d0_local = add_ln37_7_reg_838;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_1_d0_local = add_ln37_3_reg_790;
    end else begin
        bucket_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_1_d1_local = add_ln37_29_reg_1068;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_1_d1_local = add_ln37_25_reg_1028;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_1_d1_local = add_ln37_21_reg_988;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_1_d1_local = add_ln37_17_reg_948;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_1_d1_local = add_ln37_13_reg_908;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_1_d1_local = add_ln37_9_reg_868;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_1_d1_local = add_ln37_5_reg_828;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_1_d1_local = add_ln37_1_reg_780;
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
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_1_ce0_local = 1'b1;
    end else begin
        sum_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((tmp_fu_432_p3 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
assign add_ln34_fu_488_p2 = (ap_sig_allocacmp_radixID_3 + 8'd2);
assign add_ln37_1_fu_505_p2 = (bucket_1_q1 + sum_0_q0);
assign add_ln37_2_fu_511_p2 = (bucket_0_q0 + sum_0_q0);
assign add_ln37_3_fu_517_p2 = (bucket_1_q0 + sum_0_q0);
assign add_ln37_fu_499_p2 = (bucket_0_q1 + sum_0_q0);
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
assign empty_fu_456_p1 = ap_sig_allocacmp_radixID_3[6:0];
assign grp_fu_384_p2 = (bucket_0_q1 + sum_0_load_reg_767);
assign grp_fu_389_p2 = (bucket_1_q1 + sum_0_load_reg_767);
assign grp_fu_394_p2 = (bucket_0_q0 + sum_0_load_reg_767);
assign grp_fu_399_p2 = (bucket_1_q0 + sum_0_load_reg_767);
assign grp_fu_404_p2 = (bucket_0_q1 + sum_1_load_reg_815);
assign grp_fu_409_p2 = (bucket_1_q1 + sum_1_load_reg_815);
assign grp_fu_414_p2 = (bucket_0_q0 + sum_1_load_reg_815);
assign grp_fu_419_p2 = (bucket_1_q0 + sum_1_load_reg_815);
assign lshr_ln_fu_440_p4 = {{ap_sig_allocacmp_radixID_3[6:1]}};
assign or_ln37_10_fu_666_p3 = {{lshr_ln_reg_715}, {4'd13}};
assign or_ln37_11_fu_679_p3 = {{lshr_ln_reg_715}, {4'd14}};
assign or_ln37_12_fu_692_p3 = {{lshr_ln_reg_715}, {4'd15}};
assign or_ln37_1_fu_523_p3 = {{empty_reg_727}, {3'd2}};
assign or_ln37_2_fu_536_p3 = {{empty_reg_727}, {3'd3}};
assign or_ln37_3_fu_549_p3 = {{empty_reg_727}, {3'd4}};
assign or_ln37_4_fu_562_p3 = {{empty_reg_727}, {3'd5}};
assign or_ln37_5_fu_575_p3 = {{empty_reg_727}, {3'd6}};
assign or_ln37_6_fu_588_p3 = {{empty_reg_727}, {3'd7}};
assign or_ln37_7_fu_614_p3 = {{lshr_ln_reg_715}, {4'd9}};
assign or_ln37_8_fu_627_p3 = {{lshr_ln_reg_715}, {4'd10}};
assign or_ln37_9_fu_640_p3 = {{lshr_ln_reg_715}, {4'd11}};
assign or_ln37_s_fu_653_p3 = {{lshr_ln_reg_715}, {4'd12}};
assign or_ln_fu_474_p3 = {{empty_fu_456_p1}, {3'd1}};
assign p_cast3_fu_608_p1 = tmp_1_fu_601_p3;
assign p_cast_fu_468_p1 = tmp_s_fu_460_p3;
assign sum_0_address0 = zext_ln33_fu_450_p1;
assign sum_0_ce0 = sum_0_ce0_local;
assign sum_1_address0 = zext_ln33_fu_450_p1;
assign sum_1_ce0 = sum_1_ce0_local;
assign tmp_1_fu_601_p3 = {{lshr_ln_reg_715}, {4'd8}};
assign tmp_fu_432_p3 = ap_sig_allocacmp_radixID_3[32'd7];
assign tmp_s_fu_460_p3 = {{empty_fu_456_p1}, {3'd0}};
assign zext_ln33_fu_450_p1 = lshr_ln_fu_440_p4;
assign zext_ln37_10_fu_660_p1 = or_ln37_s_fu_653_p3;
assign zext_ln37_11_fu_673_p1 = or_ln37_10_fu_666_p3;
assign zext_ln37_12_fu_686_p1 = or_ln37_11_fu_679_p3;
assign zext_ln37_13_fu_699_p1 = or_ln37_12_fu_692_p3;
assign zext_ln37_1_fu_530_p1 = or_ln37_1_fu_523_p3;
assign zext_ln37_2_fu_543_p1 = or_ln37_2_fu_536_p3;
assign zext_ln37_3_fu_556_p1 = or_ln37_3_fu_549_p3;
assign zext_ln37_4_fu_569_p1 = or_ln37_4_fu_562_p3;
assign zext_ln37_5_fu_582_p1 = or_ln37_5_fu_575_p3;
assign zext_ln37_6_fu_595_p1 = or_ln37_6_fu_588_p3;
assign zext_ln37_7_fu_621_p1 = or_ln37_7_fu_614_p3;
assign zext_ln37_8_fu_634_p1 = or_ln37_8_fu_627_p3;
assign zext_ln37_9_fu_647_p1 = or_ln37_9_fu_640_p3;
assign zext_ln37_fu_482_p1 = or_ln_fu_474_p3;
always @ (posedge ap_clk) begin
    bucket_0_addr_reg_742[2:0] <= 3'b000;
    bucket_1_addr_reg_747[2:0] <= 3'b000;
    bucket_0_addr_19_reg_752[2:0] <= 3'b001;
    bucket_1_addr_20_reg_757[2:0] <= 3'b001;
    bucket_0_addr_20_reg_795[2:0] <= 3'b010;
    bucket_1_addr_21_reg_800[2:0] <= 3'b010;
    bucket_0_addr_21_reg_805[2:0] <= 3'b011;
    bucket_1_addr_22_reg_810[2:0] <= 3'b011;
    bucket_0_addr_22_reg_843[2:0] <= 3'b100;
    bucket_1_addr_23_reg_848[2:0] <= 3'b100;
    bucket_0_addr_23_reg_853[2:0] <= 3'b101;
    bucket_1_addr_24_reg_858[2:0] <= 3'b101;
    bucket_0_addr_24_reg_883[2:0] <= 3'b110;
    bucket_1_addr_25_reg_888[2:0] <= 3'b110;
    bucket_0_addr_25_reg_893[2:0] <= 3'b111;
    bucket_1_addr_26_reg_898[2:0] <= 3'b111;
    bucket_0_addr_26_reg_923[3:0] <= 4'b1000;
    bucket_1_addr_27_reg_928[3:0] <= 4'b1000;
    bucket_0_addr_27_reg_933[3:0] <= 4'b1001;
    bucket_1_addr_28_reg_938[3:0] <= 4'b1001;
    bucket_0_addr_28_reg_963[3:0] <= 4'b1010;
    bucket_1_addr_29_reg_968[3:0] <= 4'b1010;
    bucket_0_addr_29_reg_973[3:0] <= 4'b1011;
    bucket_1_addr_30_reg_978[3:0] <= 4'b1011;
    bucket_0_addr_30_reg_1003[3:0] <= 4'b1100;
    bucket_1_addr_31_reg_1008[3:0] <= 4'b1100;
    bucket_0_addr_31_reg_1013[3:0] <= 4'b1101;
    bucket_1_addr_32_reg_1018[3:0] <= 4'b1101;
    bucket_0_addr_32_reg_1043[3:0] <= 4'b1110;
    bucket_1_addr_33_reg_1048[3:0] <= 4'b1110;
    bucket_0_addr_33_reg_1053[3:0] <= 4'b1111;
    bucket_1_addr_34_reg_1058[3:0] <= 4'b1111;
end
endmodule 