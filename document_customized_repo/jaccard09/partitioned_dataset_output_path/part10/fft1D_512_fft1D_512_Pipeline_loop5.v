
module fft1D_512_fft1D_512_Pipeline_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_we1,DATA_y_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_y_address1,DATA_y_ce1,DATA_y_we1,DATA_y_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 64'd1;
parameter    ap_ST_fsm_pp0_stage1 = 64'd2;
parameter    ap_ST_fsm_pp0_stage2 = 64'd4;
parameter    ap_ST_fsm_pp0_stage3 = 64'd8;
parameter    ap_ST_fsm_pp0_stage4 = 64'd16;
parameter    ap_ST_fsm_pp0_stage5 = 64'd32;
parameter    ap_ST_fsm_pp0_stage6 = 64'd64;
parameter    ap_ST_fsm_pp0_stage7 = 64'd128;
parameter    ap_ST_fsm_pp0_stage8 = 64'd256;
parameter    ap_ST_fsm_pp0_stage9 = 64'd512;
parameter    ap_ST_fsm_pp0_stage10 = 64'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 64'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 64'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 64'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 64'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 64'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 64'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 64'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 64'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 64'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 64'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 64'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 64'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 64'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 64'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 64'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 64'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 64'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 64'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 64'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 64'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 64'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 64'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 64'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 64'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 64'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 64'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 64'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 64'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 64'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 64'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 64'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 64'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 64'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 64'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 64'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 64'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 64'd140737488355328;
parameter    ap_ST_fsm_pp0_stage48 = 64'd281474976710656;
parameter    ap_ST_fsm_pp0_stage49 = 64'd562949953421312;
parameter    ap_ST_fsm_pp0_stage50 = 64'd1125899906842624;
parameter    ap_ST_fsm_pp0_stage51 = 64'd2251799813685248;
parameter    ap_ST_fsm_pp0_stage52 = 64'd4503599627370496;
parameter    ap_ST_fsm_pp0_stage53 = 64'd9007199254740992;
parameter    ap_ST_fsm_pp0_stage54 = 64'd18014398509481984;
parameter    ap_ST_fsm_pp0_stage55 = 64'd36028797018963968;
parameter    ap_ST_fsm_pp0_stage56 = 64'd72057594037927936;
parameter    ap_ST_fsm_pp0_stage57 = 64'd144115188075855872;
parameter    ap_ST_fsm_pp0_stage58 = 64'd288230376151711744;
parameter    ap_ST_fsm_pp0_stage59 = 64'd576460752303423488;
parameter    ap_ST_fsm_pp0_stage60 = 64'd1152921504606846976;
parameter    ap_ST_fsm_pp0_stage61 = 64'd2305843009213693952;
parameter    ap_ST_fsm_pp0_stage62 = 64'd4611686018427387904;
parameter    ap_ST_fsm_pp0_stage63 = 64'd9223372036854775808;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [7:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
output   DATA_y_1_we1;
output  [63:0] DATA_y_1_d1;
output  [7:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [7:0] DATA_y_address1;
output   DATA_y_ce1;
output   DATA_y_we1;
output  [63:0] DATA_y_d1;
output  [7:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [7:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [7:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [7:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [7:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [7:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
reg ap_idle;
reg smem_ce0;
reg smem_ce1;
reg smem_1_ce0;
reg smem_1_ce1;
reg smem_2_ce0;
reg smem_2_ce1;
(* fsm_encoding = "none" *) reg   [63:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_837;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63_subdone;
reg   [63:0] reg_426;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_11001;
wire    ap_CS_fsm_pp0_stage48;
wire    ap_block_pp0_stage48_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_431;
reg   [63:0] reg_436;
reg   [63:0] reg_441;
reg   [63:0] reg_446;
reg   [63:0] reg_451;
reg   [63:0] reg_456;
reg   [63:0] reg_461;
reg   [6:0] tid_reg_825;
wire   [0:0] tmp_fu_474_p3;
wire   [2:0] hi_1_fu_482_p4;
reg   [2:0] hi_1_reg_841;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [5:0] trunc_ln220_fu_507_p1;
reg   [5:0] trunc_ln220_reg_846;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [8:0] zext_ln114_fu_538_p1;
reg   [8:0] zext_ln114_reg_852;
wire   [4:0] tmp_s_fu_595_p4;
reg   [4:0] tmp_s_reg_858;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33_11001;
wire   [8:0] add_ln232_2_fu_662_p2;
reg   [8:0] add_ln232_2_reg_864;
wire   [3:0] tmp_28_fu_693_p4;
reg   [3:0] tmp_28_reg_869;
wire    ap_CS_fsm_pp0_stage49;
wire    ap_block_pp0_stage49_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_loady8_fu_376_ap_start;
wire    grp_loady8_fu_376_ap_done;
wire    grp_loady8_fu_376_ap_idle;
wire    grp_loady8_fu_376_ap_ready;
wire   [7:0] grp_loady8_fu_376_x_0_address0;
wire    grp_loady8_fu_376_x_0_ce0;
wire   [7:0] grp_loady8_fu_376_x_0_address1;
wire    grp_loady8_fu_376_x_0_ce1;
wire   [7:0] grp_loady8_fu_376_x_1_address0;
wire    grp_loady8_fu_376_x_1_ce0;
wire   [7:0] grp_loady8_fu_376_x_1_address1;
wire    grp_loady8_fu_376_x_1_ce1;
wire   [7:0] grp_loady8_fu_376_x_2_address0;
wire    grp_loady8_fu_376_x_2_ce0;
wire   [7:0] grp_loady8_fu_376_x_2_address1;
wire    grp_loady8_fu_376_x_2_ce1;
reg   [8:0] grp_loady8_fu_376_offset;
wire   [63:0] grp_loady8_fu_376_ap_return_0;
wire   [63:0] grp_loady8_fu_376_ap_return_1;
wire   [63:0] grp_loady8_fu_376_ap_return_2;
wire   [63:0] grp_loady8_fu_376_ap_return_3;
wire   [63:0] grp_loady8_fu_376_ap_return_4;
wire   [63:0] grp_loady8_fu_376_ap_return_5;
wire   [63:0] grp_loady8_fu_376_ap_return_6;
wire   [63:0] grp_loady8_fu_376_ap_return_7;
reg    grp_loady8_fu_376_ap_start_reg;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_ignoreCallOp93;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_ignoreCallOp94;
wire    ap_block_pp0_stage16_ignoreCallOp95;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_ignoreCallOp146;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_ignoreCallOp147;
wire    ap_block_pp0_stage32_ignoreCallOp148;
wire    ap_CS_fsm_pp0_stage46;
wire    ap_block_pp0_stage46_ignoreCallOp200;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47_ignoreCallOp201;
wire    ap_block_pp0_stage48_ignoreCallOp202;
wire    ap_CS_fsm_pp0_stage62;
wire    ap_block_pp0_stage62_ignoreCallOp249;
wire    ap_block_pp0_stage63_ignoreCallOp250;
wire    ap_block_pp0_stage0_ignoreCallOp253;
wire   [8:0] add_ln1_fu_494_p5;
wire    ap_block_pp0_stage1_ignoreCallOp80;
wire   [8:0] add_ln232_fu_562_p2;
wire    ap_block_pp0_stage17_ignoreCallOp117;
wire   [8:0] add_ln232_1_fu_644_p2;
wire    ap_block_pp0_stage33_ignoreCallOp171;
wire    ap_block_pp0_stage49_ignoreCallOp220;
wire   [63:0] zext_ln220_fu_518_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln222_fu_532_p1;
wire   [63:0] zext_ln224_fu_576_p1;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln226_fu_589_p1;
wire   [63:0] zext_ln220_1_fu_612_p1;
wire    ap_block_pp0_stage33;
wire   [63:0] zext_ln222_1_fu_626_p1;
wire   [63:0] zext_ln224_1_fu_674_p1;
wire    ap_CS_fsm_pp0_stage34;
wire    ap_block_pp0_stage34;
wire   [63:0] zext_ln226_1_fu_687_p1;
wire   [63:0] zext_ln220_2_fu_710_p1;
wire    ap_block_pp0_stage49;
wire   [63:0] zext_ln222_2_fu_724_p1;
wire   [63:0] zext_ln224_2_fu_737_p1;
wire    ap_CS_fsm_pp0_stage50;
wire    ap_block_pp0_stage50;
wire   [63:0] zext_ln226_2_fu_750_p1;
wire   [63:0] zext_ln220_3_fu_773_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln222_3_fu_786_p1;
wire   [63:0] zext_ln224_3_fu_799_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln226_3_fu_812_p1;
reg   [6:0] tid_4_fu_98;
wire   [6:0] add_ln219_fu_756_p2;
wire    ap_block_pp0_stage63_11001;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
wire    ap_block_pp0_stage0;
reg    DATA_y_we1_local;
reg   [63:0] DATA_y_d1_local;
reg    DATA_y_ce1_local;
reg   [7:0] DATA_y_address1_local;
reg    DATA_y_we0_local;
reg   [63:0] DATA_y_d0_local;
reg    DATA_y_ce0_local;
reg   [7:0] DATA_y_address0_local;
wire    ap_block_pp0_stage18_11001;
wire    ap_block_pp0_stage34_11001;
wire    ap_block_pp0_stage50_11001;
wire    ap_block_pp0_stage2_11001;
reg    DATA_y_1_we1_local;
reg   [63:0] DATA_y_1_d1_local;
reg    DATA_y_1_ce1_local;
reg   [7:0] DATA_y_1_address1_local;
reg    DATA_y_1_we0_local;
reg   [63:0] DATA_y_1_d0_local;
reg    DATA_y_1_ce0_local;
reg   [7:0] DATA_y_1_address0_local;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage32;
wire    ap_block_pp0_stage48;
wire   [2:0] trunc_ln232_fu_491_p1;
wire   [0:0] grp_fu_387_p3;
wire   [7:0] shl_ln4_fu_510_p3;
wire   [7:0] or_ln_fu_524_p3;
wire   [1:0] tmp_27_fu_541_p4;
wire   [8:0] mul_ln232_1_fu_550_p5;
wire   [7:0] or_ln15_fu_569_p3;
wire   [7:0] or_ln16_fu_582_p3;
wire   [7:0] shl_ln220_1_fu_604_p3;
wire   [7:0] or_ln222_1_fu_618_p3;
wire   [8:0] mul_ln232_2_fu_632_p5;
wire   [8:0] mul_ln232_3_fu_650_p5;
wire   [7:0] or_ln224_1_fu_667_p3;
wire   [7:0] or_ln226_1_fu_680_p3;
wire   [7:0] or_ln17_fu_702_p3;
wire   [7:0] or_ln222_2_fu_716_p3;
wire   [7:0] or_ln224_2_fu_730_p3;
wire   [7:0] or_ln226_2_fu_743_p3;
wire    ap_block_pp0_stage63;
wire   [7:0] or_ln220_1_fu_766_p3;
wire   [7:0] or_ln222_3_fu_779_p3;
wire   [7:0] or_ln224_3_fu_792_p3;
wire   [7:0] or_ln226_3_fu_805_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [63:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
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
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_block_pp0_stage31_subdone;
wire    ap_block_pp0_stage32_subdone;
wire    ap_block_pp0_stage33_subdone;
wire    ap_block_pp0_stage34_subdone;
wire    ap_block_pp0_stage35_subdone;
wire    ap_block_pp0_stage36_subdone;
wire    ap_block_pp0_stage37_subdone;
wire    ap_block_pp0_stage38_subdone;
wire    ap_block_pp0_stage39_subdone;
wire    ap_block_pp0_stage40_subdone;
wire    ap_block_pp0_stage41_subdone;
wire    ap_block_pp0_stage42_subdone;
wire    ap_block_pp0_stage43_subdone;
wire    ap_block_pp0_stage44_subdone;
wire    ap_block_pp0_stage45_subdone;
wire    ap_block_pp0_stage46_subdone;
wire    ap_block_pp0_stage47_subdone;
wire    ap_block_pp0_stage48_subdone;
wire    ap_block_pp0_stage49_subdone;
wire    ap_block_pp0_stage50_subdone;
wire    ap_block_pp0_stage51_subdone;
wire    ap_block_pp0_stage52_subdone;
wire    ap_block_pp0_stage53_subdone;
wire    ap_block_pp0_stage54_subdone;
wire    ap_block_pp0_stage55_subdone;
wire    ap_block_pp0_stage56_subdone;
wire    ap_block_pp0_stage57_subdone;
wire    ap_block_pp0_stage58_subdone;
wire    ap_block_pp0_stage59_subdone;
wire    ap_block_pp0_stage60_subdone;
wire    ap_block_pp0_stage61_subdone;
wire    ap_block_pp0_stage62_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 64'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_loady8_fu_376_ap_start_reg = 1'b0;
#0 tid_4_fu_98 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_376(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_376_ap_start),.ap_done(grp_loady8_fu_376_ap_done),.ap_idle(grp_loady8_fu_376_ap_idle),.ap_ready(grp_loady8_fu_376_ap_ready),.ap_ce(1'b1),.x_0_address0(grp_loady8_fu_376_x_0_address0),.x_0_ce0(grp_loady8_fu_376_x_0_ce0),.x_0_q0(smem_q0),.x_0_address1(grp_loady8_fu_376_x_0_address1),.x_0_ce1(grp_loady8_fu_376_x_0_ce1),.x_0_q1(smem_q1),.x_1_address0(grp_loady8_fu_376_x_1_address0),.x_1_ce0(grp_loady8_fu_376_x_1_ce0),.x_1_q0(smem_1_q0),.x_1_address1(grp_loady8_fu_376_x_1_address1),.x_1_ce1(grp_loady8_fu_376_x_1_ce1),.x_1_q1(smem_1_q1),.x_2_address0(grp_loady8_fu_376_x_2_address0),.x_2_ce0(grp_loady8_fu_376_x_2_ce0),.x_2_q0(smem_2_q0),.x_2_address1(grp_loady8_fu_376_x_2_address1),.x_2_ce1(grp_loady8_fu_376_x_2_ce1),.x_2_q1(smem_2_q1),.offset(grp_loady8_fu_376_offset),.ap_return_0(grp_loady8_fu_376_ap_return_0),.ap_return_1(grp_loady8_fu_376_ap_return_1),.ap_return_2(grp_loady8_fu_376_ap_return_2),.ap_return_3(grp_loady8_fu_376_ap_return_3),.ap_return_4(grp_loady8_fu_376_ap_return_4),.ap_return_5(grp_loady8_fu_376_ap_return_5),.ap_return_6(grp_loady8_fu_376_ap_return_6),.ap_return_7(grp_loady8_fu_376_ap_return_7));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage63_subdone) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_loady8_fu_376_ap_start_reg <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_474_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage48_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_837 == 1'd0)))) begin
            grp_loady8_fu_376_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_376_ap_ready == 1'b1)) begin
            grp_loady8_fu_376_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_4_fu_98 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage63_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (tmp_reg_837 == 1'd0))) begin
        tid_4_fu_98 <= add_ln219_fu_756_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage33_11001) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        add_ln232_2_reg_864 <= add_ln232_2_fu_662_p2;
        tmp_s_reg_858 <= {{tid_reg_825[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        hi_1_reg_841 <= {{tid_reg_825[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage48_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_426 <= grp_loady8_fu_376_ap_return_0;
        reg_431 <= grp_loady8_fu_376_ap_return_1;
        reg_436 <= grp_loady8_fu_376_ap_return_2;
        reg_441 <= grp_loady8_fu_376_ap_return_3;
        reg_446 <= grp_loady8_fu_376_ap_return_4;
        reg_451 <= grp_loady8_fu_376_ap_return_5;
        reg_456 <= grp_loady8_fu_376_ap_return_6;
        reg_461 <= grp_loady8_fu_376_ap_return_7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_reg_825 <= ap_sig_allocacmp_tid;
        tmp_reg_837 <= ap_sig_allocacmp_tid[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage49_11001) & (1'b1 == ap_CS_fsm_pp0_stage49))) begin
        tmp_28_reg_869 <= {{tid_reg_825[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        trunc_ln220_reg_846 <= trunc_ln220_fu_507_p1;
        zext_ln114_reg_852[2 : 0] <= zext_ln114_fu_538_p1[2 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_address0_local = zext_ln226_3_fu_812_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address0_local = zext_ln222_3_fu_786_p1;
    end else if (((1'b0 == ap_block_pp0_stage50) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50))) begin
        DATA_y_1_address0_local = zext_ln226_2_fu_750_p1;
    end else if (((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49))) begin
        DATA_y_1_address0_local = zext_ln222_2_fu_724_p1;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        DATA_y_1_address0_local = zext_ln226_1_fu_687_p1;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        DATA_y_1_address0_local = zext_ln222_1_fu_626_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        DATA_y_1_address0_local = zext_ln226_fu_589_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        DATA_y_1_address0_local = zext_ln222_fu_532_p1;
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_address1_local = zext_ln224_3_fu_799_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address1_local = zext_ln220_3_fu_773_p1;
    end else if (((1'b0 == ap_block_pp0_stage50) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50))) begin
        DATA_y_1_address1_local = zext_ln224_2_fu_737_p1;
    end else if (((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49))) begin
        DATA_y_1_address1_local = zext_ln220_2_fu_710_p1;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        DATA_y_1_address1_local = zext_ln224_1_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        DATA_y_1_address1_local = zext_ln220_1_fu_612_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        DATA_y_1_address1_local = zext_ln224_fu_576_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        DATA_y_1_address1_local = zext_ln220_fu_518_p1;
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage50_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage49_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage50_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage49_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage50) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50)) | ((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        DATA_y_1_d0_local = reg_461;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        DATA_y_1_d0_local = reg_441;
    end else begin
        DATA_y_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage50) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50)) | ((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        DATA_y_1_d1_local = reg_451;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        DATA_y_1_d1_local = reg_431;
    end else begin
        DATA_y_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage50_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage49_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage50_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage49_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_we1_local = 1'b1;
    end else begin
        DATA_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_address0_local = zext_ln226_3_fu_812_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address0_local = zext_ln222_3_fu_786_p1;
    end else if (((1'b0 == ap_block_pp0_stage50) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50))) begin
        DATA_y_address0_local = zext_ln226_2_fu_750_p1;
    end else if (((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49))) begin
        DATA_y_address0_local = zext_ln222_2_fu_724_p1;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        DATA_y_address0_local = zext_ln226_1_fu_687_p1;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        DATA_y_address0_local = zext_ln222_1_fu_626_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        DATA_y_address0_local = zext_ln226_fu_589_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        DATA_y_address0_local = zext_ln222_fu_532_p1;
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_address1_local = zext_ln224_3_fu_799_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address1_local = zext_ln220_3_fu_773_p1;
    end else if (((1'b0 == ap_block_pp0_stage50) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50))) begin
        DATA_y_address1_local = zext_ln224_2_fu_737_p1;
    end else if (((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49))) begin
        DATA_y_address1_local = zext_ln220_2_fu_710_p1;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        DATA_y_address1_local = zext_ln224_1_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        DATA_y_address1_local = zext_ln220_1_fu_612_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        DATA_y_address1_local = zext_ln224_fu_576_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        DATA_y_address1_local = zext_ln220_fu_518_p1;
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage50_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage49_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage50_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage49_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage50) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50)) | ((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        DATA_y_d0_local = reg_456;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        DATA_y_d0_local = reg_436;
    end else begin
        DATA_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage50) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50)) | ((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        DATA_y_d1_local = reg_446;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        DATA_y_d1_local = reg_426;
    end else begin
        DATA_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage50_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage49_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage50_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage49_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_we1_local = 1'b1;
    end else begin
        DATA_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_837 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage63_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_4_fu_98;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_837 == 1'd0))) begin
        if (((1'b0 == ap_block_pp0_stage49_ignoreCallOp220) & (1'b1 == ap_CS_fsm_pp0_stage49))) begin
            grp_loady8_fu_376_offset = add_ln232_2_reg_864;
        end else if (((1'b0 == ap_block_pp0_stage33_ignoreCallOp171) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
            grp_loady8_fu_376_offset = add_ln232_1_fu_644_p2;
        end else if (((1'b0 == ap_block_pp0_stage17_ignoreCallOp117) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_loady8_fu_376_offset = add_ln232_fu_562_p2;
        end else if (((1'b0 == ap_block_pp0_stage1_ignoreCallOp80) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_loady8_fu_376_offset = add_ln1_fu_494_p5;
        end else begin
            grp_loady8_fu_376_offset = 'bx;
        end
    end else begin
        grp_loady8_fu_376_offset = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp253) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage63_ignoreCallOp250) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage62_ignoreCallOp249) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage62) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage48_ignoreCallOp202) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage47_ignoreCallOp201) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_ignoreCallOp200) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage32_ignoreCallOp148) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage31_ignoreCallOp147)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp146) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp94) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp93) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_837 == 1'd0)))) begin
        smem_1_ce0 = grp_loady8_fu_376_x_1_ce0;
    end else begin
        smem_1_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp253) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage63_ignoreCallOp250) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage62_ignoreCallOp249) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage62) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage48_ignoreCallOp202) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage47_ignoreCallOp201) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_ignoreCallOp200) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage32_ignoreCallOp148) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage31_ignoreCallOp147)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp146) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp94) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp93) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_837 == 1'd0)))) begin
        smem_1_ce1 = grp_loady8_fu_376_x_1_ce1;
    end else begin
        smem_1_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp253) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage63_ignoreCallOp250) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage62_ignoreCallOp249) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage62) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage48_ignoreCallOp202) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage47_ignoreCallOp201) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_ignoreCallOp200) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage32_ignoreCallOp148) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage31_ignoreCallOp147)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp146) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp94) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp93) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_837 == 1'd0)))) begin
        smem_2_ce0 = grp_loady8_fu_376_x_2_ce0;
    end else begin
        smem_2_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp253) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage63_ignoreCallOp250) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage62_ignoreCallOp249) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage62) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage48_ignoreCallOp202) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage47_ignoreCallOp201) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_ignoreCallOp200) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage32_ignoreCallOp148) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage31_ignoreCallOp147)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp146) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp94) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp93) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_837 == 1'd0)))) begin
        smem_2_ce1 = grp_loady8_fu_376_x_2_ce1;
    end else begin
        smem_2_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp253) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage63_ignoreCallOp250) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage62_ignoreCallOp249) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage62) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage48_ignoreCallOp202) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage47_ignoreCallOp201) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_ignoreCallOp200) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage32_ignoreCallOp148) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage31_ignoreCallOp147)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp146) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp94) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp93) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_837 == 1'd0)))) begin
        smem_ce0 = grp_loady8_fu_376_x_0_ce0;
    end else begin
        smem_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp253) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage63_ignoreCallOp250) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage62_ignoreCallOp249) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage62) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage48_ignoreCallOp202) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage47_ignoreCallOp201) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_ignoreCallOp200) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage32_ignoreCallOp148) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage31_ignoreCallOp147)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp146) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_ignoreCallOp95) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp94) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_837 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp93) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_837 == 1'd0)))) begin
        smem_ce1 = grp_loady8_fu_376_x_0_ce1;
    end else begin
        smem_ce1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to1 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        ap_ST_fsm_pp0_stage32 : begin
            if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end
        end
        ap_ST_fsm_pp0_stage33 : begin
            if ((1'b0 == ap_block_pp0_stage33_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end
        end
        ap_ST_fsm_pp0_stage34 : begin
            if ((1'b0 == ap_block_pp0_stage34_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end
        end
        ap_ST_fsm_pp0_stage35 : begin
            if ((1'b0 == ap_block_pp0_stage35_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end
        end
        ap_ST_fsm_pp0_stage36 : begin
            if ((1'b0 == ap_block_pp0_stage36_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end
        end
        ap_ST_fsm_pp0_stage37 : begin
            if ((1'b0 == ap_block_pp0_stage37_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end
        end
        ap_ST_fsm_pp0_stage38 : begin
            if ((1'b0 == ap_block_pp0_stage38_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end
        end
        ap_ST_fsm_pp0_stage39 : begin
            if ((1'b0 == ap_block_pp0_stage39_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end
        end
        ap_ST_fsm_pp0_stage40 : begin
            if ((1'b0 == ap_block_pp0_stage40_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end
        end
        ap_ST_fsm_pp0_stage41 : begin
            if ((1'b0 == ap_block_pp0_stage41_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end
        end
        ap_ST_fsm_pp0_stage42 : begin
            if ((1'b0 == ap_block_pp0_stage42_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end
        end
        ap_ST_fsm_pp0_stage43 : begin
            if ((1'b0 == ap_block_pp0_stage43_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end
        end
        ap_ST_fsm_pp0_stage44 : begin
            if ((1'b0 == ap_block_pp0_stage44_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end
        end
        ap_ST_fsm_pp0_stage45 : begin
            if ((1'b0 == ap_block_pp0_stage45_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end
        end
        ap_ST_fsm_pp0_stage46 : begin
            if ((1'b0 == ap_block_pp0_stage46_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end
        end
        ap_ST_fsm_pp0_stage47 : begin
            if ((1'b0 == ap_block_pp0_stage47_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end
        end
        ap_ST_fsm_pp0_stage48 : begin
            if ((1'b0 == ap_block_pp0_stage48_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage49;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage48;
            end
        end
        ap_ST_fsm_pp0_stage49 : begin
            if ((1'b0 == ap_block_pp0_stage49_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage50;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage49;
            end
        end
        ap_ST_fsm_pp0_stage50 : begin
            if ((1'b0 == ap_block_pp0_stage50_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage51;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage50;
            end
        end
        ap_ST_fsm_pp0_stage51 : begin
            if ((1'b0 == ap_block_pp0_stage51_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage52;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage51;
            end
        end
        ap_ST_fsm_pp0_stage52 : begin
            if ((1'b0 == ap_block_pp0_stage52_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage53;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage52;
            end
        end
        ap_ST_fsm_pp0_stage53 : begin
            if ((1'b0 == ap_block_pp0_stage53_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage54;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage53;
            end
        end
        ap_ST_fsm_pp0_stage54 : begin
            if ((1'b0 == ap_block_pp0_stage54_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage55;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage54;
            end
        end
        ap_ST_fsm_pp0_stage55 : begin
            if ((1'b0 == ap_block_pp0_stage55_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage55;
            end
        end
        ap_ST_fsm_pp0_stage56 : begin
            if ((1'b0 == ap_block_pp0_stage56_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage57;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end
        end
        ap_ST_fsm_pp0_stage57 : begin
            if ((1'b0 == ap_block_pp0_stage57_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage58;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage57;
            end
        end
        ap_ST_fsm_pp0_stage58 : begin
            if ((1'b0 == ap_block_pp0_stage58_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage59;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage58;
            end
        end
        ap_ST_fsm_pp0_stage59 : begin
            if ((1'b0 == ap_block_pp0_stage59_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage60;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage59;
            end
        end
        ap_ST_fsm_pp0_stage60 : begin
            if ((1'b0 == ap_block_pp0_stage60_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage61;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage60;
            end
        end
        ap_ST_fsm_pp0_stage61 : begin
            if ((1'b0 == ap_block_pp0_stage61_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage62;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage61;
            end
        end
        ap_ST_fsm_pp0_stage62 : begin
            if ((1'b0 == ap_block_pp0_stage62_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage63;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage62;
            end
        end
        ap_ST_fsm_pp0_stage63 : begin
            if ((1'b0 == ap_block_pp0_stage63_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage63;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_address1 = DATA_y_1_address1_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_1_d0 = DATA_y_1_d0_local;
assign DATA_y_1_d1 = DATA_y_1_d1_local;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_1_we1 = DATA_y_1_we1_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_address1 = DATA_y_address1_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign DATA_y_d0 = DATA_y_d0_local;
assign DATA_y_d1 = DATA_y_d1_local;
assign DATA_y_we0 = DATA_y_we0_local;
assign DATA_y_we1 = DATA_y_we1_local;
assign add_ln1_fu_494_p5 = {{{{trunc_ln232_fu_491_p1}, {2'd0}}, {grp_fu_387_p3}}, {hi_1_fu_482_p4}};
assign add_ln219_fu_756_p2 = (tid_reg_825 + 7'd4);
assign add_ln232_1_fu_644_p2 = (mul_ln232_2_fu_632_p5 + zext_ln114_reg_852);
assign add_ln232_2_fu_662_p2 = (mul_ln232_3_fu_650_p5 + zext_ln114_reg_852);
assign add_ln232_fu_562_p2 = (mul_ln232_1_fu_550_p5 + zext_ln114_fu_538_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage32 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage33 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_pp0_stage34 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_pp0_stage46 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_pp0_stage47 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_pp0_stage48 = ap_CS_fsm[32'd48];
assign ap_CS_fsm_pp0_stage49 = ap_CS_fsm[32'd49];
assign ap_CS_fsm_pp0_stage50 = ap_CS_fsm[32'd50];
assign ap_CS_fsm_pp0_stage62 = ap_CS_fsm[32'd62];
assign ap_CS_fsm_pp0_stage63 = ap_CS_fsm[32'd63];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp253 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_ignoreCallOp93 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_ignoreCallOp94 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_ignoreCallOp95 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_ignoreCallOp117 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp80 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_ignoreCallOp146 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_ignoreCallOp147 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_ignoreCallOp148 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_ignoreCallOp171 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_ignoreCallOp200 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_ignoreCallOp201 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_ignoreCallOp202 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_ignoreCallOp220 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage60_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_ignoreCallOp249 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_ignoreCallOp250 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign grp_fu_387_p3 = tid_reg_825[32'd2];
assign grp_loady8_fu_376_ap_start = grp_loady8_fu_376_ap_start_reg;
assign hi_1_fu_482_p4 = {{tid_reg_825[5:3]}};
assign mul_ln232_1_fu_550_p5 = {{{{tmp_27_fu_541_p4}, {3'd4}}, {tmp_27_fu_541_p4}}, {2'd2}};
assign mul_ln232_2_fu_632_p5 = {{{{grp_fu_387_p3}, {4'd8}}, {grp_fu_387_p3}}, {3'd4}};
assign mul_ln232_3_fu_650_p5 = {{{{grp_fu_387_p3}, {4'd12}}, {grp_fu_387_p3}}, {3'd6}};
assign or_ln15_fu_569_p3 = {{trunc_ln220_reg_846}, {2'd2}};
assign or_ln16_fu_582_p3 = {{trunc_ln220_reg_846}, {2'd3}};
assign or_ln17_fu_702_p3 = {{tmp_28_fu_693_p4}, {4'd8}};
assign or_ln220_1_fu_766_p3 = {{tmp_28_reg_869}, {4'd12}};
assign or_ln222_1_fu_618_p3 = {{tmp_s_fu_595_p4}, {3'd5}};
assign or_ln222_2_fu_716_p3 = {{tmp_28_fu_693_p4}, {4'd9}};
assign or_ln222_3_fu_779_p3 = {{tmp_28_reg_869}, {4'd13}};
assign or_ln224_1_fu_667_p3 = {{tmp_s_reg_858}, {3'd6}};
assign or_ln224_2_fu_730_p3 = {{tmp_28_reg_869}, {4'd10}};
assign or_ln224_3_fu_792_p3 = {{tmp_28_reg_869}, {4'd14}};
assign or_ln226_1_fu_680_p3 = {{tmp_s_reg_858}, {3'd7}};
assign or_ln226_2_fu_743_p3 = {{tmp_28_reg_869}, {4'd11}};
assign or_ln226_3_fu_805_p3 = {{tmp_28_reg_869}, {4'd15}};
assign or_ln_fu_524_p3 = {{trunc_ln220_fu_507_p1}, {2'd1}};
assign shl_ln220_1_fu_604_p3 = {{tmp_s_fu_595_p4}, {3'd4}};
assign shl_ln4_fu_510_p3 = {{trunc_ln220_fu_507_p1}, {2'd0}};
assign smem_1_address0 = grp_loady8_fu_376_x_1_address0;
assign smem_1_address1 = grp_loady8_fu_376_x_1_address1;
assign smem_2_address0 = grp_loady8_fu_376_x_2_address0;
assign smem_2_address1 = grp_loady8_fu_376_x_2_address1;
assign smem_address0 = grp_loady8_fu_376_x_0_address0;
assign smem_address1 = grp_loady8_fu_376_x_0_address1;
assign tmp_27_fu_541_p4 = {{tid_reg_825[2:1]}};
assign tmp_28_fu_693_p4 = {{tid_reg_825[5:2]}};
assign tmp_fu_474_p3 = ap_sig_allocacmp_tid[32'd6];
assign tmp_s_fu_595_p4 = {{tid_reg_825[5:1]}};
assign trunc_ln220_fu_507_p1 = tid_reg_825[5:0];
assign trunc_ln232_fu_491_p1 = tid_reg_825[2:0];
assign zext_ln114_fu_538_p1 = hi_1_reg_841;
assign zext_ln220_1_fu_612_p1 = shl_ln220_1_fu_604_p3;
assign zext_ln220_2_fu_710_p1 = or_ln17_fu_702_p3;
assign zext_ln220_3_fu_773_p1 = or_ln220_1_fu_766_p3;
assign zext_ln220_fu_518_p1 = shl_ln4_fu_510_p3;
assign zext_ln222_1_fu_626_p1 = or_ln222_1_fu_618_p3;
assign zext_ln222_2_fu_724_p1 = or_ln222_2_fu_716_p3;
assign zext_ln222_3_fu_786_p1 = or_ln222_3_fu_779_p3;
assign zext_ln222_fu_532_p1 = or_ln_fu_524_p3;
assign zext_ln224_1_fu_674_p1 = or_ln224_1_fu_667_p3;
assign zext_ln224_2_fu_737_p1 = or_ln224_2_fu_730_p3;
assign zext_ln224_3_fu_799_p1 = or_ln224_3_fu_792_p3;
assign zext_ln224_fu_576_p1 = or_ln15_fu_569_p3;
assign zext_ln226_1_fu_687_p1 = or_ln226_1_fu_680_p3;
assign zext_ln226_2_fu_750_p1 = or_ln226_2_fu_743_p3;
assign zext_ln226_3_fu_812_p1 = or_ln226_3_fu_805_p3;
assign zext_ln226_fu_589_p1 = or_ln16_fu_582_p3;
always @ (posedge ap_clk) begin
    zext_ln114_reg_852[8:3] <= 6'b000000;
end
endmodule 
