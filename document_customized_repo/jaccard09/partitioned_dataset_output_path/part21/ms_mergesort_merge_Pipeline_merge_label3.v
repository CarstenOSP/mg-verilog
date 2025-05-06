
module ms_mergesort_merge_Pipeline_merge_label3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,start_r,stop,temp_address0,temp_ce0,temp_q0,temp_address1,temp_ce1,temp_q1,a_address0,a_ce0,a_we0,a_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] start_r;
input  [31:0] stop;
output  [10:0] temp_address0;
output   temp_ce0;
input  [31:0] temp_q0;
output  [10:0] temp_address1;
output   temp_ce1;
input  [31:0] temp_q1;
output  [10:0] a_address0;
output   a_ce0;
output   a_we0;
output  [31:0] a_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln18_7_reg_967;
reg   [0:0] icmp_ln18_6_reg_958;
reg   [0:0] icmp_ln18_5_reg_949;
reg   [0:0] icmp_ln18_4_reg_940;
reg   [0:0] icmp_ln18_3_reg_931;
reg   [0:0] icmp_ln18_2_reg_912;
reg   [0:0] icmp_ln18_1_reg_879;
reg   [0:0] icmp_ln18_reg_851;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] i_4_reg_275;
reg   [31:0] j_3_reg_285;
reg   [31:0] i_6_reg_295;
reg   [31:0] j_5_reg_306;
reg   [31:0] i_8_reg_317;
reg   [31:0] j_7_reg_328;
reg   [31:0] i_10_reg_339;
reg   [31:0] j_9_reg_350;
reg   [31:0] i_12_reg_361;
reg   [31:0] j_11_reg_372;
reg   [31:0] i_14_reg_383;
reg   [31:0] j_13_reg_394;
reg   [31:0] i_16_reg_405;
reg   [31:0] j_15_reg_416;
reg   [31:0] reg_453;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_458;
reg   [31:0] k_1_reg_825;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] i_reg_839;
reg   [31:0] j_1_reg_845;
wire   [0:0] icmp_ln18_fu_487_p2;
wire   [0:0] grp_fu_447_p2;
reg   [0:0] icmp_ln21_reg_865;
wire   [31:0] i_3_fu_502_p2;
reg   [31:0] i_3_reg_869;
wire   [31:0] j_2_fu_507_p2;
reg   [31:0] j_2_reg_874;
wire   [0:0] icmp_ln18_1_fu_516_p2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [0:0] icmp_ln21_1_reg_893;
wire   [31:0] i_5_fu_530_p2;
reg   [31:0] i_5_reg_897;
wire   [31:0] j_4_fu_536_p2;
reg   [31:0] j_4_reg_902;
wire   [31:0] add_ln18_1_fu_556_p2;
reg   [31:0] add_ln18_1_reg_907;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [0:0] icmp_ln18_2_fu_561_p2;
wire   [31:0] add_ln18_2_fu_576_p2;
reg   [31:0] add_ln18_2_reg_926;
wire   [0:0] icmp_ln18_3_fu_581_p2;
wire   [31:0] add_ln18_3_fu_586_p2;
reg   [31:0] add_ln18_3_reg_935;
wire   [0:0] icmp_ln18_4_fu_591_p2;
wire   [31:0] add_ln18_4_fu_596_p2;
reg   [31:0] add_ln18_4_reg_944;
wire   [0:0] icmp_ln18_5_fu_601_p2;
wire   [31:0] add_ln18_5_fu_606_p2;
reg   [31:0] add_ln18_5_reg_953;
wire   [0:0] icmp_ln18_6_fu_611_p2;
wire   [31:0] add_ln18_6_fu_616_p2;
reg   [31:0] add_ln18_6_reg_962;
wire   [0:0] icmp_ln18_7_fu_621_p2;
reg   [0:0] icmp_ln21_2_reg_971;
wire   [31:0] i_7_fu_636_p2;
reg   [31:0] i_7_reg_975;
wire   [31:0] j_6_fu_642_p2;
reg   [31:0] j_6_reg_980;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [0:0] icmp_ln21_3_reg_995;
wire   [31:0] i_9_fu_662_p2;
reg   [31:0] i_9_reg_999;
wire   [31:0] j_8_fu_668_p2;
reg   [31:0] j_8_reg_1004;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [0:0] icmp_ln21_4_reg_1019;
wire   [31:0] i_11_fu_688_p2;
reg   [31:0] i_11_reg_1023;
wire   [31:0] j_10_fu_694_p2;
reg   [31:0] j_10_reg_1028;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [0:0] icmp_ln21_5_reg_1043;
wire   [31:0] i_13_fu_714_p2;
reg   [31:0] i_13_reg_1047;
wire   [31:0] j_12_fu_720_p2;
reg   [31:0] j_12_reg_1052;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [0:0] icmp_ln21_6_reg_1067;
wire   [31:0] i_15_fu_740_p2;
reg   [31:0] i_15_reg_1071;
wire   [31:0] j_14_fu_746_p2;
reg   [31:0] j_14_reg_1076;
wire    ap_block_pp0_stage15_11001;
reg   [0:0] icmp_ln21_7_reg_1091;
reg   [10:0] a_addr_7_reg_1095;
wire   [31:0] i_17_fu_770_p2;
reg   [31:0] i_17_reg_1100;
wire   [31:0] j_16_fu_776_p2;
reg   [31:0] j_16_reg_1105;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage1_subdone;
reg   [31:0] ap_phi_mux_i_4_phi_fu_278_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_4_reg_275;
reg   [31:0] ap_phi_mux_j_3_phi_fu_288_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_3_reg_285;
reg   [31:0] ap_phi_mux_i_6_phi_fu_298_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_6_reg_295;
reg   [31:0] ap_phi_mux_j_5_phi_fu_309_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_5_reg_306;
reg   [31:0] ap_phi_mux_i_8_phi_fu_320_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_8_reg_317;
reg   [31:0] ap_phi_mux_j_7_phi_fu_331_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_7_reg_328;
reg   [31:0] ap_phi_mux_i_10_phi_fu_342_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_10_reg_339;
reg   [31:0] ap_phi_mux_j_9_phi_fu_353_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_9_reg_350;
reg   [31:0] ap_phi_mux_i_12_phi_fu_364_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_12_reg_361;
reg   [31:0] ap_phi_mux_j_11_phi_fu_375_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_11_reg_372;
reg   [31:0] ap_phi_mux_i_14_phi_fu_386_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_14_reg_383;
reg   [31:0] ap_phi_mux_j_13_phi_fu_397_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_13_reg_394;
reg   [31:0] ap_phi_mux_i_16_phi_fu_408_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_16_reg_405;
reg   [31:0] ap_phi_mux_j_15_phi_fu_419_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_15_reg_416;
reg   [31:0] ap_phi_mux_i_18_phi_fu_430_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_i_18_reg_427;
reg   [31:0] ap_phi_mux_j_17_phi_fu_440_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_j_17_reg_437;
wire   [63:0] zext_ln19_fu_492_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln20_fu_497_p1;
wire   [63:0] zext_ln18_fu_512_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln19_1_fu_520_p1;
wire   [63:0] zext_ln20_1_fu_525_p1;
wire   [63:0] zext_ln5_fu_551_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln19_2_fu_566_p1;
wire   [63:0] zext_ln20_2_fu_571_p1;
wire   [63:0] zext_ln5_1_fu_648_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln19_3_fu_652_p1;
wire   [63:0] zext_ln20_3_fu_657_p1;
wire   [63:0] zext_ln5_2_fu_674_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln19_4_fu_678_p1;
wire   [63:0] zext_ln20_4_fu_683_p1;
wire   [63:0] zext_ln5_3_fu_700_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln19_5_fu_704_p1;
wire   [63:0] zext_ln20_5_fu_709_p1;
wire   [63:0] zext_ln5_4_fu_726_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln19_6_fu_730_p1;
wire   [63:0] zext_ln20_6_fu_735_p1;
wire   [63:0] zext_ln5_5_fu_752_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln19_7_fu_756_p1;
wire   [63:0] zext_ln20_7_fu_761_p1;
wire   [63:0] zext_ln5_6_fu_766_p1;
wire    ap_block_pp0_stage0;
reg    ap_predicate_pred550_state17;
reg   [31:0] k_fu_46;
wire   [31:0] add_ln18_7_fu_626_p2;
wire    ap_loop_init;
reg   [31:0] i_2_fu_50;
reg   [31:0] ap_sig_allocacmp_i;
reg   [31:0] j_fu_54;
reg   [31:0] ap_sig_allocacmp_j_1;
reg    temp_ce1_local;
reg   [10:0] temp_address1_local;
reg    temp_ce0_local;
reg   [10:0] temp_address0_local;
reg    a_we0_local;
reg   [31:0] a_d0_local;
reg    a_ce0_local;
reg   [10:0] a_address0_local;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage14;
wire   [10:0] trunc_ln18_fu_542_p1;
wire   [10:0] add_ln18_fu_545_p2;
reg    ap_predicate_pred505_state11;
reg    ap_predicate_pred520_state13;
reg    ap_predicate_pred535_state15;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [15:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_490;
reg    ap_condition_505;
reg    ap_condition_520;
reg    ap_condition_535;
reg    ap_condition_550;
reg    ap_condition_475;
reg    ap_condition_470;
reg    ap_condition_492;
reg    ap_condition_495;
reg    ap_condition_487;
reg    ap_condition_507;
reg    ap_condition_510;
reg    ap_condition_502;
reg    ap_condition_522;
reg    ap_condition_525;
reg    ap_condition_517;
reg    ap_condition_537;
reg    ap_condition_540;
reg    ap_condition_532;
reg    ap_condition_426;
reg    ap_condition_428;
reg    ap_condition_454;
reg    ap_condition_461;
reg    ap_condition_464;
reg    ap_condition_456;
reg    ap_condition_477;
reg    ap_condition_480;
reg    ap_condition_472;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_46 = 32'd0;
#0 i_2_fu_50 = 32'd0;
#0 j_fu_54 = 32'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_487)) begin
        if ((1'b1 == ap_condition_495)) begin
            i_10_reg_339 <= i_9_reg_999;
        end else if ((1'b1 == ap_condition_492)) begin
            i_10_reg_339 <= i_8_reg_317;
        end else if ((1'b1 == ap_condition_470)) begin
            i_10_reg_339 <= ap_phi_reg_pp0_iter0_i_10_reg_339;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_502)) begin
        if ((1'b1 == ap_condition_510)) begin
            i_12_reg_361 <= i_11_reg_1023;
        end else if ((1'b1 == ap_condition_507)) begin
            i_12_reg_361 <= i_10_reg_339;
        end else if ((1'b1 == ap_condition_470)) begin
            i_12_reg_361 <= ap_phi_reg_pp0_iter0_i_12_reg_361;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_517)) begin
        if ((1'b1 == ap_condition_525)) begin
            i_14_reg_383 <= i_13_reg_1047;
        end else if ((1'b1 == ap_condition_522)) begin
            i_14_reg_383 <= i_12_reg_361;
        end else if ((1'b1 == ap_condition_470)) begin
            i_14_reg_383 <= ap_phi_reg_pp0_iter0_i_14_reg_383;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_532)) begin
        if ((1'b1 == ap_condition_540)) begin
            i_16_reg_405 <= i_15_reg_1071;
        end else if ((1'b1 == ap_condition_537)) begin
            i_16_reg_405 <= i_14_reg_383;
        end else if ((1'b1 == ap_condition_470)) begin
            i_16_reg_405 <= ap_phi_reg_pp0_iter0_i_16_reg_405;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_50 <= start_r;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_fu_50 <= ap_phi_mux_i_18_phi_fu_430_p4;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_428)) begin
        if (((icmp_ln18_reg_851 == 1'd0) & (icmp_ln21_reg_865 == 1'd0))) begin
            i_4_reg_275 <= i_3_reg_869;
        end else if (((icmp_ln18_reg_851 == 1'd0) & (icmp_ln21_reg_865 == 1'd1))) begin
            i_4_reg_275 <= i_reg_839;
        end else if ((1'b1 == ap_condition_426)) begin
            i_4_reg_275 <= ap_phi_reg_pp0_iter0_i_4_reg_275;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_456)) begin
        if ((1'b1 == ap_condition_464)) begin
            i_6_reg_295 <= i_5_reg_897;
        end else if ((1'b1 == ap_condition_461)) begin
            i_6_reg_295 <= i_4_reg_275;
        end else if ((1'b1 == ap_condition_454)) begin
            i_6_reg_295 <= ap_phi_reg_pp0_iter0_i_6_reg_295;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_472)) begin
        if ((1'b1 == ap_condition_480)) begin
            i_8_reg_317 <= i_7_reg_975;
        end else if ((1'b1 == ap_condition_477)) begin
            i_8_reg_317 <= i_6_reg_295;
        end else if ((1'b1 == ap_condition_470)) begin
            i_8_reg_317 <= ap_phi_reg_pp0_iter0_i_8_reg_317;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_502)) begin
        if ((1'b1 == ap_condition_510)) begin
            j_11_reg_372 <= j_9_reg_350;
        end else if ((1'b1 == ap_condition_507)) begin
            j_11_reg_372 <= j_10_reg_1028;
        end else if ((1'b1 == ap_condition_470)) begin
            j_11_reg_372 <= ap_phi_reg_pp0_iter0_j_11_reg_372;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_517)) begin
        if ((1'b1 == ap_condition_525)) begin
            j_13_reg_394 <= j_11_reg_372;
        end else if ((1'b1 == ap_condition_522)) begin
            j_13_reg_394 <= j_12_reg_1052;
        end else if ((1'b1 == ap_condition_470)) begin
            j_13_reg_394 <= ap_phi_reg_pp0_iter0_j_13_reg_394;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_532)) begin
        if ((1'b1 == ap_condition_540)) begin
            j_15_reg_416 <= j_13_reg_394;
        end else if ((1'b1 == ap_condition_537)) begin
            j_15_reg_416 <= j_14_reg_1076;
        end else if ((1'b1 == ap_condition_470)) begin
            j_15_reg_416 <= ap_phi_reg_pp0_iter0_j_15_reg_416;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_428)) begin
        if (((icmp_ln18_reg_851 == 1'd0) & (icmp_ln21_reg_865 == 1'd0))) begin
            j_3_reg_285 <= j_1_reg_845;
        end else if (((icmp_ln18_reg_851 == 1'd0) & (icmp_ln21_reg_865 == 1'd1))) begin
            j_3_reg_285 <= j_2_reg_874;
        end else if ((1'b1 == ap_condition_426)) begin
            j_3_reg_285 <= ap_phi_reg_pp0_iter0_j_3_reg_285;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_456)) begin
        if ((1'b1 == ap_condition_464)) begin
            j_5_reg_306 <= j_3_reg_285;
        end else if ((1'b1 == ap_condition_461)) begin
            j_5_reg_306 <= j_4_reg_902;
        end else if ((1'b1 == ap_condition_454)) begin
            j_5_reg_306 <= ap_phi_reg_pp0_iter0_j_5_reg_306;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_472)) begin
        if ((1'b1 == ap_condition_480)) begin
            j_7_reg_328 <= j_5_reg_306;
        end else if ((1'b1 == ap_condition_477)) begin
            j_7_reg_328 <= j_6_reg_980;
        end else if ((1'b1 == ap_condition_470)) begin
            j_7_reg_328 <= ap_phi_reg_pp0_iter0_j_7_reg_328;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_487)) begin
        if ((1'b1 == ap_condition_495)) begin
            j_9_reg_350 <= j_7_reg_328;
        end else if ((1'b1 == ap_condition_492)) begin
            j_9_reg_350 <= j_8_reg_1004;
        end else if ((1'b1 == ap_condition_470)) begin
            j_9_reg_350 <= ap_phi_reg_pp0_iter0_j_9_reg_350;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_54 <= stop;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_54 <= ap_phi_mux_j_17_phi_fu_440_p4;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_46 <= start_r;
    end else if (((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln18_7_fu_621_p2 == 1'd0) & (icmp_ln18_6_fu_611_p2 == 1'd0) & (icmp_ln18_5_fu_601_p2 == 1'd0) & (icmp_ln18_4_fu_591_p2 == 1'd0) & (icmp_ln18_3_fu_581_p2 == 1'd0) & (icmp_ln18_2_fu_561_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        k_fu_46 <= add_ln18_7_fu_626_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_addr_7_reg_1095 <= zext_ln5_6_fu_766_p1;
        i_17_reg_1100 <= i_17_fu_770_p2;
        j_16_reg_1105 <= j_16_fu_776_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln18_1_reg_907 <= add_ln18_1_fu_556_p2;
        add_ln18_2_reg_926 <= add_ln18_2_fu_576_p2;
        add_ln18_3_reg_935 <= add_ln18_3_fu_586_p2;
        add_ln18_4_reg_944 <= add_ln18_4_fu_596_p2;
        add_ln18_5_reg_953 <= add_ln18_5_fu_606_p2;
        add_ln18_6_reg_962 <= add_ln18_6_fu_616_p2;
        icmp_ln18_2_reg_912 <= icmp_ln18_2_fu_561_p2;
        icmp_ln18_3_reg_931 <= icmp_ln18_3_fu_581_p2;
        icmp_ln18_4_reg_940 <= icmp_ln18_4_fu_591_p2;
        icmp_ln18_5_reg_949 <= icmp_ln18_5_fu_601_p2;
        icmp_ln18_6_reg_958 <= icmp_ln18_6_fu_611_p2;
        icmp_ln18_7_reg_967 <= icmp_ln18_7_fu_621_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_predicate_pred505_state11 <= ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_predicate_pred520_state13 <= ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ap_predicate_pred535_state15 <= ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_predicate_pred550_state17 <= ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (icmp_ln18_7_reg_967 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        i_11_reg_1023 <= i_11_fu_688_p2;
        j_10_reg_1028 <= j_10_fu_694_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        i_13_reg_1047 <= i_13_fu_714_p2;
        j_12_reg_1052 <= j_12_fu_720_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        i_15_reg_1071 <= i_15_fu_740_p2;
        j_14_reg_1076 <= j_14_fu_746_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_3_reg_869 <= i_3_fu_502_p2;
        j_2_reg_874 <= j_2_fu_507_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_5_reg_897 <= i_5_fu_530_p2;
        j_4_reg_902 <= j_4_fu_536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        i_7_reg_975 <= i_7_fu_636_p2;
        j_6_reg_980 <= j_6_fu_642_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        i_9_reg_999 <= i_9_fu_662_p2;
        j_8_reg_1004 <= j_8_fu_668_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_reg_839 <= ap_sig_allocacmp_i;
        icmp_ln18_reg_851 <= icmp_ln18_fu_487_p2;
        j_1_reg_845 <= ap_sig_allocacmp_j_1;
        k_1_reg_825 <= k_fu_46;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln18_1_reg_879 <= icmp_ln18_1_fu_516_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln21_1_reg_893 <= grp_fu_447_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        icmp_ln21_2_reg_971 <= grp_fu_447_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln21_3_reg_995 <= grp_fu_447_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        icmp_ln21_4_reg_1019 <= grp_fu_447_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        icmp_ln21_5_reg_1043 <= grp_fu_447_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        icmp_ln21_6_reg_1067 <= grp_fu_447_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln21_7_reg_1091 <= grp_fu_447_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln21_reg_865 <= grp_fu_447_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_453 <= temp_q1;
        reg_458 <= temp_q0;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (icmp_ln18_7_reg_967 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (icmp_ln21_7_reg_1091 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (icmp_ln18_7_reg_967 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (icmp_ln21_7_reg_1091 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_address0_local = a_addr_7_reg_1095;
    end else if ((((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (icmp_ln21_6_reg_1067 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (icmp_ln21_6_reg_1067 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        a_address0_local = zext_ln5_5_fu_752_p1;
    end else if ((((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (icmp_ln21_5_reg_1043 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (icmp_ln21_5_reg_1043 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        a_address0_local = zext_ln5_4_fu_726_p1;
    end else if ((((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_4_reg_1019 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_4_reg_1019 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        a_address0_local = zext_ln5_3_fu_700_p1;
    end else if ((((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_3_reg_995 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_3_reg_995 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        a_address0_local = zext_ln5_2_fu_674_p1;
    end else if ((((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_971 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_971 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        a_address0_local = zext_ln5_1_fu_648_p1;
    end else if ((((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_893 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_893 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        a_address0_local = zext_ln5_fu_551_p1;
    end else if ((((icmp_ln18_reg_851 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_reg_865 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_851 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_reg_865 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        a_address0_local = zext_ln18_fu_512_p1;
    end else begin
        a_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (icmp_ln18_7_reg_967 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_7_reg_1091 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (icmp_ln18_7_reg_967 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_7_reg_1091 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (1'b0 ==ap_block_pp0_stage15_11001) & (icmp_ln21_6_reg_1067 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (icmp_ln21_6_reg_1067 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (icmp_ln21_5_reg_1043 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) &(1'b0 == ap_block_pp0_stage13_11001) & (icmp_ln21_5_reg_1043 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_4_reg_1019 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_4_reg_1019 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_3_reg_995 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln18_reg_851== 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_3_reg_995 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_971 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_971 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_893 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (icmp_ln21_1_reg_893 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_851 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_reg_865 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_851 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_reg_865 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        a_ce0_local = 1'b1;
    end else begin
        a_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_851 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_reg_865 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_893 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_971 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_3_reg_995 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage11)& (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_4_reg_1019 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (icmp_ln21_5_reg_1043 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (icmp_ln21_6_reg_1067 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (icmp_ln18_7_reg_967== 1'd0) & (1'b0 == ap_block_pp0_stage1) & (icmp_ln21_7_reg_1091 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_d0_local = reg_453;
end else if ((((icmp_ln18_reg_851 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_reg_865 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_893 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_971 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_3_reg_995 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage11)& (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_4_reg_1019 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (1'b0 == ap_block_pp0_stage13) & (icmp_ln21_5_reg_1043 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (icmp_ln21_6_reg_1067 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (icmp_ln18_7_reg_967== 1'd0) & (1'b0 == ap_block_pp0_stage1) & (icmp_ln21_7_reg_1091 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_d0_local = reg_458;
    end else begin
        a_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (icmp_ln18_7_reg_967 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_7_reg_1091 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (icmp_ln18_7_reg_967 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_7_reg_1091 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (1'b0 ==ap_block_pp0_stage15_11001) & (icmp_ln21_6_reg_1067 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (icmp_ln21_6_reg_1067 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (icmp_ln21_5_reg_1043 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) &(1'b0 == ap_block_pp0_stage13_11001) & (icmp_ln21_5_reg_1043 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_4_reg_1019 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_4_reg_1019 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_3_reg_995 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln18_reg_851== 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_3_reg_995 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_971 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_971 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_893 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (icmp_ln21_1_reg_893 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_851 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_reg_865 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_851 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_reg_865 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        a_we0_local = 1'b1;
    end else begin
        a_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & ((icmp_ln18_reg_851 == 1'd1) | ((icmp_ln18_1_reg_879 == 1'd0) | ((icmp_ln18_2_reg_912 == 1'd1) | ((icmp_ln18_3_reg_931 == 1'd1) | ((icmp_ln18_4_reg_940 == 1'd1) | ((icmp_ln18_5_reg_949 == 1'd1) | ((icmp_ln18_6_reg_958 == 1'd1) | (icmp_ln18_7_reg_967 == 1'd1)))))))))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln18_reg_851 == 1'd1) | ((icmp_ln18_1_reg_879 == 1'd0) | ((icmp_ln18_2_reg_912 == 1'd1) | ((icmp_ln18_3_reg_931 == 1'd1) | ((icmp_ln18_4_reg_940 == 1'd1) | ((icmp_ln18_5_reg_949 == 1'd1) | ((icmp_ln18_6_reg_958 == 1'd1) | (icmp_ln18_7_reg_967 == 1'd1)))))))))) begin
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
    if (~((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (ap_loop_exit_ready == 1'b0))) begin
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
    if ((1'b1 == ap_condition_490)) begin
        if ((icmp_ln21_3_reg_995 == 1'd0)) begin
            ap_phi_mux_i_10_phi_fu_342_p4 = i_9_reg_999;
        end else if ((icmp_ln21_3_reg_995 == 1'd1)) begin
            ap_phi_mux_i_10_phi_fu_342_p4 = i_8_reg_317;
        end else begin
            ap_phi_mux_i_10_phi_fu_342_p4 = ap_phi_reg_pp0_iter0_i_10_reg_339;
        end
    end else begin
        ap_phi_mux_i_10_phi_fu_342_p4 = ap_phi_reg_pp0_iter0_i_10_reg_339;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_505)) begin
        if ((icmp_ln21_4_reg_1019 == 1'd0)) begin
            ap_phi_mux_i_12_phi_fu_364_p4 = i_11_reg_1023;
        end else if ((icmp_ln21_4_reg_1019 == 1'd1)) begin
            ap_phi_mux_i_12_phi_fu_364_p4 = i_10_reg_339;
        end else begin
            ap_phi_mux_i_12_phi_fu_364_p4 = ap_phi_reg_pp0_iter0_i_12_reg_361;
        end
    end else begin
        ap_phi_mux_i_12_phi_fu_364_p4 = ap_phi_reg_pp0_iter0_i_12_reg_361;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_520)) begin
        if ((icmp_ln21_5_reg_1043 == 1'd0)) begin
            ap_phi_mux_i_14_phi_fu_386_p4 = i_13_reg_1047;
        end else if ((icmp_ln21_5_reg_1043 == 1'd1)) begin
            ap_phi_mux_i_14_phi_fu_386_p4 = i_12_reg_361;
        end else begin
            ap_phi_mux_i_14_phi_fu_386_p4 = ap_phi_reg_pp0_iter0_i_14_reg_383;
        end
    end else begin
        ap_phi_mux_i_14_phi_fu_386_p4 = ap_phi_reg_pp0_iter0_i_14_reg_383;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_535)) begin
        if ((icmp_ln21_6_reg_1067 == 1'd0)) begin
            ap_phi_mux_i_16_phi_fu_408_p4 = i_15_reg_1071;
        end else if ((icmp_ln21_6_reg_1067 == 1'd1)) begin
            ap_phi_mux_i_16_phi_fu_408_p4 = i_14_reg_383;
        end else begin
            ap_phi_mux_i_16_phi_fu_408_p4 = ap_phi_reg_pp0_iter0_i_16_reg_405;
        end
    end else begin
        ap_phi_mux_i_16_phi_fu_408_p4 = ap_phi_reg_pp0_iter0_i_16_reg_405;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_550)) begin
        if ((icmp_ln21_7_reg_1091 == 1'd0)) begin
            ap_phi_mux_i_18_phi_fu_430_p4 = i_17_reg_1100;
        end else if ((icmp_ln21_7_reg_1091 == 1'd1)) begin
            ap_phi_mux_i_18_phi_fu_430_p4 = i_16_reg_405;
        end else begin
            ap_phi_mux_i_18_phi_fu_430_p4 = ap_phi_reg_pp0_iter1_i_18_reg_427;
        end
    end else begin
        ap_phi_mux_i_18_phi_fu_430_p4 = ap_phi_reg_pp0_iter1_i_18_reg_427;
    end
end
always @ (*) begin
    if ((icmp_ln18_reg_851 == 1'd0)) begin
        if ((icmp_ln21_reg_865 == 1'd0)) begin
            ap_phi_mux_i_4_phi_fu_278_p4 = i_3_reg_869;
        end else if ((icmp_ln21_reg_865 == 1'd1)) begin
            ap_phi_mux_i_4_phi_fu_278_p4 = i_reg_839;
        end else begin
            ap_phi_mux_i_4_phi_fu_278_p4 = ap_phi_reg_pp0_iter0_i_4_reg_275;
        end
    end else begin
        ap_phi_mux_i_4_phi_fu_278_p4 = ap_phi_reg_pp0_iter0_i_4_reg_275;
    end
end
always @ (*) begin
    if (((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1))) begin
        if ((icmp_ln21_1_reg_893 == 1'd0)) begin
            ap_phi_mux_i_6_phi_fu_298_p4 = i_5_reg_897;
        end else if ((icmp_ln21_1_reg_893 == 1'd1)) begin
            ap_phi_mux_i_6_phi_fu_298_p4 = i_4_reg_275;
        end else begin
            ap_phi_mux_i_6_phi_fu_298_p4 = ap_phi_reg_pp0_iter0_i_6_reg_295;
        end
    end else begin
        ap_phi_mux_i_6_phi_fu_298_p4 = ap_phi_reg_pp0_iter0_i_6_reg_295;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_475)) begin
        if ((icmp_ln21_2_reg_971 == 1'd0)) begin
            ap_phi_mux_i_8_phi_fu_320_p4 = i_7_reg_975;
        end else if ((icmp_ln21_2_reg_971 == 1'd1)) begin
            ap_phi_mux_i_8_phi_fu_320_p4 = i_6_reg_295;
        end else begin
            ap_phi_mux_i_8_phi_fu_320_p4 = ap_phi_reg_pp0_iter0_i_8_reg_317;
        end
    end else begin
        ap_phi_mux_i_8_phi_fu_320_p4 = ap_phi_reg_pp0_iter0_i_8_reg_317;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_505)) begin
        if ((icmp_ln21_4_reg_1019 == 1'd0)) begin
            ap_phi_mux_j_11_phi_fu_375_p4 = j_9_reg_350;
        end else if ((icmp_ln21_4_reg_1019 == 1'd1)) begin
            ap_phi_mux_j_11_phi_fu_375_p4 = j_10_reg_1028;
        end else begin
            ap_phi_mux_j_11_phi_fu_375_p4 = ap_phi_reg_pp0_iter0_j_11_reg_372;
        end
    end else begin
        ap_phi_mux_j_11_phi_fu_375_p4 = ap_phi_reg_pp0_iter0_j_11_reg_372;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_520)) begin
        if ((icmp_ln21_5_reg_1043 == 1'd0)) begin
            ap_phi_mux_j_13_phi_fu_397_p4 = j_11_reg_372;
        end else if ((icmp_ln21_5_reg_1043 == 1'd1)) begin
            ap_phi_mux_j_13_phi_fu_397_p4 = j_12_reg_1052;
        end else begin
            ap_phi_mux_j_13_phi_fu_397_p4 = ap_phi_reg_pp0_iter0_j_13_reg_394;
        end
    end else begin
        ap_phi_mux_j_13_phi_fu_397_p4 = ap_phi_reg_pp0_iter0_j_13_reg_394;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_535)) begin
        if ((icmp_ln21_6_reg_1067 == 1'd0)) begin
            ap_phi_mux_j_15_phi_fu_419_p4 = j_13_reg_394;
        end else if ((icmp_ln21_6_reg_1067 == 1'd1)) begin
            ap_phi_mux_j_15_phi_fu_419_p4 = j_14_reg_1076;
        end else begin
            ap_phi_mux_j_15_phi_fu_419_p4 = ap_phi_reg_pp0_iter0_j_15_reg_416;
        end
    end else begin
        ap_phi_mux_j_15_phi_fu_419_p4 = ap_phi_reg_pp0_iter0_j_15_reg_416;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_550)) begin
        if ((icmp_ln21_7_reg_1091 == 1'd0)) begin
            ap_phi_mux_j_17_phi_fu_440_p4 = j_15_reg_416;
        end else if ((icmp_ln21_7_reg_1091 == 1'd1)) begin
            ap_phi_mux_j_17_phi_fu_440_p4 = j_16_reg_1105;
        end else begin
            ap_phi_mux_j_17_phi_fu_440_p4 = ap_phi_reg_pp0_iter1_j_17_reg_437;
        end
    end else begin
        ap_phi_mux_j_17_phi_fu_440_p4 = ap_phi_reg_pp0_iter1_j_17_reg_437;
    end
end
always @ (*) begin
    if ((icmp_ln18_reg_851 == 1'd0)) begin
        if ((icmp_ln21_reg_865 == 1'd0)) begin
            ap_phi_mux_j_3_phi_fu_288_p4 = j_1_reg_845;
        end else if ((icmp_ln21_reg_865 == 1'd1)) begin
            ap_phi_mux_j_3_phi_fu_288_p4 = j_2_reg_874;
        end else begin
            ap_phi_mux_j_3_phi_fu_288_p4 = ap_phi_reg_pp0_iter0_j_3_reg_285;
        end
    end else begin
        ap_phi_mux_j_3_phi_fu_288_p4 = ap_phi_reg_pp0_iter0_j_3_reg_285;
    end
end
always @ (*) begin
    if (((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1))) begin
        if ((icmp_ln21_1_reg_893 == 1'd0)) begin
            ap_phi_mux_j_5_phi_fu_309_p4 = j_3_reg_285;
        end else if ((icmp_ln21_1_reg_893 == 1'd1)) begin
            ap_phi_mux_j_5_phi_fu_309_p4 = j_4_reg_902;
        end else begin
            ap_phi_mux_j_5_phi_fu_309_p4 = ap_phi_reg_pp0_iter0_j_5_reg_306;
        end
    end else begin
        ap_phi_mux_j_5_phi_fu_309_p4 = ap_phi_reg_pp0_iter0_j_5_reg_306;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_475)) begin
        if ((icmp_ln21_2_reg_971 == 1'd0)) begin
            ap_phi_mux_j_7_phi_fu_331_p4 = j_5_reg_306;
        end else if ((icmp_ln21_2_reg_971 == 1'd1)) begin
            ap_phi_mux_j_7_phi_fu_331_p4 = j_6_reg_980;
        end else begin
            ap_phi_mux_j_7_phi_fu_331_p4 = ap_phi_reg_pp0_iter0_j_7_reg_328;
        end
    end else begin
        ap_phi_mux_j_7_phi_fu_331_p4 = ap_phi_reg_pp0_iter0_j_7_reg_328;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_490)) begin
        if ((icmp_ln21_3_reg_995 == 1'd0)) begin
            ap_phi_mux_j_9_phi_fu_353_p4 = j_7_reg_328;
        end else if ((icmp_ln21_3_reg_995 == 1'd1)) begin
            ap_phi_mux_j_9_phi_fu_353_p4 = j_8_reg_1004;
        end else begin
            ap_phi_mux_j_9_phi_fu_353_p4 = ap_phi_reg_pp0_iter0_j_9_reg_350;
        end
    end else begin
        ap_phi_mux_j_9_phi_fu_353_p4 = ap_phi_reg_pp0_iter0_j_9_reg_350;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_i = ap_phi_mux_i_18_phi_fu_430_p4;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_50;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_j_1 = ap_phi_mux_j_17_phi_fu_440_p4;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_54;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            temp_address0_local = zext_ln20_7_fu_761_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            temp_address0_local = zext_ln20_6_fu_735_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            temp_address0_local = zext_ln20_5_fu_709_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            temp_address0_local = zext_ln20_4_fu_683_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_address0_local = zext_ln20_3_fu_657_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_address0_local = zext_ln20_2_fu_571_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_address0_local = zext_ln20_1_fu_525_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_address0_local = zext_ln20_fu_497_p1;
        end else begin
            temp_address0_local = 'bx;
        end
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            temp_address1_local = zext_ln19_7_fu_756_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            temp_address1_local = zext_ln19_6_fu_730_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            temp_address1_local = zext_ln19_5_fu_704_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            temp_address1_local = zext_ln19_4_fu_678_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_address1_local = zext_ln19_3_fu_652_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_address1_local = zext_ln19_2_fu_566_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_address1_local = zext_ln19_1_fu_520_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_address1_local = zext_ln19_fu_492_p1;
        end else begin
            temp_address1_local = 'bx;
        end
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_idle_pp0_1to1 == 1'b1) & (ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_address0 = a_address0_local;
assign a_ce0 = a_ce0_local;
assign a_d0 = a_d0_local;
assign a_we0 = a_we0_local;
assign add_ln18_1_fu_556_p2 = (k_1_reg_825 + 32'd2);
assign add_ln18_2_fu_576_p2 = (k_1_reg_825 + 32'd3);
assign add_ln18_3_fu_586_p2 = (k_1_reg_825 + 32'd4);
assign add_ln18_4_fu_596_p2 = (k_1_reg_825 + 32'd5);
assign add_ln18_5_fu_606_p2 = (k_1_reg_825 + 32'd6);
assign add_ln18_6_fu_616_p2 = (k_1_reg_825 + 32'd7);
assign add_ln18_7_fu_626_p2 = (k_1_reg_825 + 32'd8);
assign add_ln18_fu_545_p2 = (trunc_ln18_fu_542_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
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
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_426 = ~((icmp_ln18_reg_851 == 1'd1) | ((icmp_ln18_1_fu_516_p2 == 1'd0) | ((icmp_ln18_2_reg_912 == 1'd1) | ((icmp_ln18_3_reg_931 == 1'd1) | ((icmp_ln18_4_reg_940 == 1'd1) | ((icmp_ln18_5_reg_949 == 1'd1) | ((icmp_ln18_6_reg_958 == 1'd1) | (icmp_ln18_7_reg_967 == 1'd1))))))));
end
always @ (*) begin
    ap_condition_428 = ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_454 = ~((icmp_ln18_reg_851 == 1'd1) | ((icmp_ln18_1_reg_879 == 1'd0) | ((icmp_ln18_2_fu_561_p2 == 1'd1) | ((icmp_ln18_3_fu_581_p2 == 1'd1) | ((icmp_ln18_4_fu_591_p2 == 1'd1) | ((icmp_ln18_5_fu_601_p2 == 1'd1) | ((icmp_ln18_7_fu_621_p2 == 1'd1) | (icmp_ln18_6_fu_611_p2 == 1'd1))))))));
end
always @ (*) begin
    ap_condition_456 = ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_461 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln21_1_reg_893 == 1'd1));
end
always @ (*) begin
    ap_condition_464 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln21_1_reg_893 == 1'd0));
end
always @ (*) begin
    ap_condition_470 = ~((icmp_ln18_reg_851 == 1'd1) | ((icmp_ln18_1_reg_879 == 1'd0) | ((icmp_ln18_2_reg_912 == 1'd1) | ((icmp_ln18_3_reg_931 == 1'd1) | ((icmp_ln18_4_reg_940 == 1'd1) | ((icmp_ln18_5_reg_949 == 1'd1) | ((icmp_ln18_6_reg_958 == 1'd1) | (icmp_ln18_7_reg_967 == 1'd1))))))));
end
always @ (*) begin
    ap_condition_472 = ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_475 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0));
end
always @ (*) begin
    ap_condition_477 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln21_2_reg_971 == 1'd1));
end
always @ (*) begin
    ap_condition_480 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln21_2_reg_971 == 1'd0));
end
always @ (*) begin
    ap_condition_487 = ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9));
end
always @ (*) begin
    ap_condition_490 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0));
end
always @ (*) begin
    ap_condition_492 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln21_3_reg_995 == 1'd1));
end
always @ (*) begin
    ap_condition_495 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln21_3_reg_995 == 1'd0));
end
always @ (*) begin
    ap_condition_502 = ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11));
end
always @ (*) begin
    ap_condition_505 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0));
end
always @ (*) begin
    ap_condition_507 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln21_4_reg_1019 == 1'd1));
end
always @ (*) begin
    ap_condition_510 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln21_4_reg_1019 == 1'd0));
end
always @ (*) begin
    ap_condition_517 = ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13));
end
always @ (*) begin
    ap_condition_520 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0));
end
always @ (*) begin
    ap_condition_522 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln21_5_reg_1043 == 1'd1));
end
always @ (*) begin
    ap_condition_525 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln21_5_reg_1043 == 1'd0));
end
always @ (*) begin
    ap_condition_532 = ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15));
end
always @ (*) begin
    ap_condition_535 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0));
end
always @ (*) begin
    ap_condition_537 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (icmp_ln21_6_reg_1067 == 1'd1));
end
always @ (*) begin
    ap_condition_540 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (icmp_ln21_6_reg_1067 == 1'd0));
end
always @ (*) begin
    ap_condition_550 = ((icmp_ln18_reg_851 == 1'd0) & (icmp_ln18_1_reg_879 == 1'd1) & (icmp_ln18_2_reg_912 == 1'd0) & (icmp_ln18_3_reg_931 == 1'd0) & (icmp_ln18_4_reg_940 == 1'd0) & (icmp_ln18_5_reg_949 == 1'd0) & (icmp_ln18_6_reg_958 == 1'd0) & (icmp_ln18_7_reg_967 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_phi_reg_pp0_iter0_i_10_reg_339 = 'bx;
assign ap_phi_reg_pp0_iter0_i_12_reg_361 = 'bx;
assign ap_phi_reg_pp0_iter0_i_14_reg_383 = 'bx;
assign ap_phi_reg_pp0_iter0_i_16_reg_405 = 'bx;
assign ap_phi_reg_pp0_iter0_i_4_reg_275 = 'bx;
assign ap_phi_reg_pp0_iter0_i_6_reg_295 = 'bx;
assign ap_phi_reg_pp0_iter0_i_8_reg_317 = 'bx;
assign ap_phi_reg_pp0_iter0_j_11_reg_372 = 'bx;
assign ap_phi_reg_pp0_iter0_j_13_reg_394 = 'bx;
assign ap_phi_reg_pp0_iter0_j_15_reg_416 = 'bx;
assign ap_phi_reg_pp0_iter0_j_3_reg_285 = 'bx;
assign ap_phi_reg_pp0_iter0_j_5_reg_306 = 'bx;
assign ap_phi_reg_pp0_iter0_j_7_reg_328 = 'bx;
assign ap_phi_reg_pp0_iter0_j_9_reg_350 = 'bx;
assign ap_phi_reg_pp0_iter1_i_18_reg_427 = 'bx;
assign ap_phi_reg_pp0_iter1_j_17_reg_437 = 'bx;
assign ap_ready = ap_ready_sig;
assign grp_fu_447_p2 = (($signed(temp_q1) < $signed(temp_q0)) ? 1'b1 : 1'b0);
assign i_11_fu_688_p2 = (i_10_reg_339 + 32'd1);
assign i_13_fu_714_p2 = (i_12_reg_361 + 32'd1);
assign i_15_fu_740_p2 = (i_14_reg_383 + 32'd1);
assign i_17_fu_770_p2 = (i_16_reg_405 + 32'd1);
assign i_3_fu_502_p2 = (i_reg_839 + 32'd1);
assign i_5_fu_530_p2 = (i_4_reg_275 + 32'd1);
assign i_7_fu_636_p2 = (i_6_reg_295 + 32'd1);
assign i_9_fu_662_p2 = (i_8_reg_317 + 32'd1);
assign icmp_ln18_1_fu_516_p2 = (($signed(k_1_reg_825) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_2_fu_561_p2 = (($signed(add_ln18_1_fu_556_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_3_fu_581_p2 = (($signed(add_ln18_2_fu_576_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_4_fu_591_p2 = (($signed(add_ln18_3_fu_586_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_5_fu_601_p2 = (($signed(add_ln18_4_fu_596_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_6_fu_611_p2 = (($signed(add_ln18_5_fu_606_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_7_fu_621_p2 = (($signed(add_ln18_6_fu_616_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_487_p2 = (($signed(k_fu_46) > $signed(stop)) ? 1'b1 : 1'b0);
assign j_10_fu_694_p2 = ($signed(j_9_reg_350) + $signed(32'd4294967295));
assign j_12_fu_720_p2 = ($signed(j_11_reg_372) + $signed(32'd4294967295));
assign j_14_fu_746_p2 = ($signed(j_13_reg_394) + $signed(32'd4294967295));
assign j_16_fu_776_p2 = ($signed(j_15_reg_416) + $signed(32'd4294967295));
assign j_2_fu_507_p2 = ($signed(j_1_reg_845) + $signed(32'd4294967295));
assign j_4_fu_536_p2 = ($signed(j_3_reg_285) + $signed(32'd4294967295));
assign j_6_fu_642_p2 = ($signed(j_5_reg_306) + $signed(32'd4294967295));
assign j_8_fu_668_p2 = ($signed(j_7_reg_328) + $signed(32'd4294967295));
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign trunc_ln18_fu_542_p1 = k_1_reg_825[10:0];
assign zext_ln18_fu_512_p1 = k_1_reg_825;
assign zext_ln19_1_fu_520_p1 = ap_phi_mux_j_3_phi_fu_288_p4;
assign zext_ln19_2_fu_566_p1 = ap_phi_mux_j_5_phi_fu_309_p4;
assign zext_ln19_3_fu_652_p1 = ap_phi_mux_j_7_phi_fu_331_p4;
assign zext_ln19_4_fu_678_p1 = ap_phi_mux_j_9_phi_fu_353_p4;
assign zext_ln19_5_fu_704_p1 = ap_phi_mux_j_11_phi_fu_375_p4;
assign zext_ln19_6_fu_730_p1 = ap_phi_mux_j_13_phi_fu_397_p4;
assign zext_ln19_7_fu_756_p1 = ap_phi_mux_j_15_phi_fu_419_p4;
assign zext_ln19_fu_492_p1 = ap_sig_allocacmp_j_1;
assign zext_ln20_1_fu_525_p1 = ap_phi_mux_i_4_phi_fu_278_p4;
assign zext_ln20_2_fu_571_p1 = ap_phi_mux_i_6_phi_fu_298_p4;
assign zext_ln20_3_fu_657_p1 = ap_phi_mux_i_8_phi_fu_320_p4;
assign zext_ln20_4_fu_683_p1 = ap_phi_mux_i_10_phi_fu_342_p4;
assign zext_ln20_5_fu_709_p1 = ap_phi_mux_i_12_phi_fu_364_p4;
assign zext_ln20_6_fu_735_p1 = ap_phi_mux_i_14_phi_fu_386_p4;
assign zext_ln20_7_fu_761_p1 = ap_phi_mux_i_16_phi_fu_408_p4;
assign zext_ln20_fu_497_p1 = ap_sig_allocacmp_i;
assign zext_ln5_1_fu_648_p1 = add_ln18_1_reg_907;
assign zext_ln5_2_fu_674_p1 = add_ln18_2_reg_926;
assign zext_ln5_3_fu_700_p1 = add_ln18_3_reg_935;
assign zext_ln5_4_fu_726_p1 = add_ln18_4_reg_944;
assign zext_ln5_5_fu_752_p1 = add_ln18_5_reg_953;
assign zext_ln5_6_fu_766_p1 = add_ln18_6_reg_962;
assign zext_ln5_fu_551_p1 = add_ln18_fu_545_p2;
endmodule 
