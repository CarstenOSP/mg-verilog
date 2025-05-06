
module ss_sort_hist (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_address0,bucket_ce0,bucket_we0,bucket_d0,bucket_q0,b_address0,b_ce0,b_q0,b_address1,b_ce1,b_q1,exp);  
parameter    ap_ST_fsm_pp0_stage0 = 24'd1;
parameter    ap_ST_fsm_pp0_stage1 = 24'd2;
parameter    ap_ST_fsm_pp0_stage2 = 24'd4;
parameter    ap_ST_fsm_pp0_stage3 = 24'd8;
parameter    ap_ST_fsm_pp0_stage4 = 24'd16;
parameter    ap_ST_fsm_pp0_stage5 = 24'd32;
parameter    ap_ST_fsm_pp0_stage6 = 24'd64;
parameter    ap_ST_fsm_pp0_stage7 = 24'd128;
parameter    ap_ST_fsm_pp0_stage8 = 24'd256;
parameter    ap_ST_fsm_pp0_stage9 = 24'd512;
parameter    ap_ST_fsm_pp0_stage10 = 24'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 24'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 24'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 24'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 24'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 24'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 24'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 24'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 24'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 24'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 24'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 24'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 24'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 24'd8388608;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] bucket_address0;
output   bucket_ce0;
output   bucket_we0;
output  [31:0] bucket_d0;
input  [31:0] bucket_q0;
output  [10:0] b_address0;
output   b_ce0;
input  [31:0] b_q0;
output  [10:0] b_address1;
output   b_ce1;
input  [31:0] b_q1;
input  [4:0] exp;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_606;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [31:0] reg_228;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_232;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_237;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [31:0] exp_cast4_fu_258_p1;
reg   [31:0] exp_cast4_reg_591;
wire    ap_block_pp0_stage0_11001;
reg   [9:0] blockID_2_reg_600;
wire   [8:0] empty_fu_278_p1;
reg   [8:0] empty_reg_610;
wire   [7:0] tmp_43_fu_332_p4;
reg   [7:0] tmp_43_reg_636;
wire   [1:0] trunc_ln57_fu_341_p1;
reg   [1:0] trunc_ln57_reg_647;
reg   [31:0] b_load_18_reg_652;
reg   [10:0] bucket_addr_reg_667;
wire   [1:0] trunc_ln57_1_fu_384_p1;
reg   [1:0] trunc_ln57_1_reg_672;
reg   [31:0] b_load_20_reg_677;
wire   [1:0] trunc_ln57_2_fu_412_p1;
reg   [1:0] trunc_ln57_2_reg_692;
reg   [31:0] b_load_22_reg_697;
wire   [1:0] trunc_ln57_3_fu_420_p1;
reg   [1:0] trunc_ln57_3_reg_702;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [10:0] bucket_addr_541_reg_707;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [1:0] trunc_ln57_4_fu_437_p1;
reg   [1:0] trunc_ln57_4_reg_712;
wire   [1:0] trunc_ln57_5_fu_445_p1;
reg   [1:0] trunc_ln57_5_reg_717;
wire   [1:0] trunc_ln57_6_fu_449_p1;
reg   [1:0] trunc_ln57_6_reg_722;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [10:0] bucket_addr_542_reg_727;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [1:0] trunc_ln57_7_fu_470_p1;
reg   [1:0] trunc_ln57_7_reg_732;
reg   [10:0] bucket_addr_543_reg_737;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [9:0] add_ln57_fu_498_p2;
reg   [9:0] add_ln57_reg_742;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [10:0] zext_ln57_6_fu_504_p1;
reg   [10:0] zext_ln57_6_reg_747;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [10:0] bucket_addr_544_reg_754;
reg   [10:0] bucket_addr_545_reg_759;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [10:0] bucket_indx_6_fu_549_p2;
reg   [10:0] bucket_indx_6_reg_764;
wire   [10:0] bucket_indx_7_fu_561_p2;
reg   [10:0] bucket_indx_7_reg_769;
reg   [10:0] bucket_addr_546_reg_774;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [10:0] bucket_addr_547_reg_779;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln57_fu_290_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln57_2_fu_303_p1;
wire   [63:0] zext_ln57_3_fu_315_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln57_4_fu_327_p1;
wire   [63:0] zext_ln57_5_fu_353_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln57_7_fu_366_p1;
wire   [63:0] zext_ln58_fu_379_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln57_8_fu_395_p1;
wire   [63:0] zext_ln57_9_fu_407_p1;
wire   [63:0] zext_ln58_1_fu_432_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln58_2_fu_461_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln58_3_fu_482_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln58_4_fu_520_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln58_5_fu_537_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln58_6_fu_566_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln58_7_fu_580_p1;
reg   [9:0] blockID_fu_76;
wire   [9:0] add_ln54_fu_570_p2;
wire    ap_block_pp0_stage23_11001;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_blockID_2;
reg    b_ce1_local;
reg   [10:0] b_address1_local;
reg    b_ce0_local;
reg   [10:0] b_address0_local;
reg    bucket_ce0_local;
reg   [10:0] bucket_address0_local;
reg    bucket_we0_local;
wire   [31:0] grp_fu_251_p2;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage8;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage14;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_block_pp0_stage17;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage23;
wire    ap_block_pp0_stage4;
wire   [10:0] tmp_s_fu_282_p3;
wire   [10:0] or_ln2_fu_295_p3;
wire   [10:0] or_ln56_1_fu_308_p3;
wire   [10:0] or_ln56_2_fu_320_p3;
wire   [31:0] grp_fu_241_p2;
wire   [10:0] tmp_44_fu_345_p3;
wire   [10:0] or_ln56_3_fu_358_p3;
wire   [10:0] bucket_indx_fu_371_p4;
wire   [31:0] grp_fu_246_p2;
wire   [10:0] or_ln56_4_fu_388_p3;
wire   [10:0] or_ln56_5_fu_400_p3;
wire   [31:0] ashr_ln57_3_fu_416_p2;
wire   [10:0] bucket_indx_1_fu_424_p4;
wire    ap_block_pp0_stage7;
wire   [31:0] ashr_ln57_5_fu_441_p2;
wire   [10:0] bucket_indx_2_fu_453_p4;
wire   [31:0] ashr_ln57_7_fu_466_p2;
wire   [10:0] bucket_indx_3_fu_474_p4;
wire   [8:0] or_ln_fu_487_p3;
wire   [9:0] zext_ln57_1_fu_494_p1;
wire   [10:0] shl_ln_fu_507_p3;
wire   [10:0] bucket_indx_4_fu_514_p2;
wire   [10:0] shl_ln57_1_fu_525_p3;
wire   [10:0] bucket_indx_5_fu_532_p2;
wire   [10:0] shl_ln57_2_fu_542_p3;
wire   [10:0] shl_ln57_3_fu_554_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [23:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 blockID_fu_76 = 10'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_fu_76 <= 10'd0;
    end else if (((tmp_reg_606 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        blockID_fu_76 <= add_ln54_fu_570_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_232 <= b_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_232 <= b_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add_ln57_reg_742[9 : 1] <= add_ln57_fu_498_p2[9 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_load_18_reg_652 <= b_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        b_load_20_reg_677 <= b_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        b_load_22_reg_697 <= b_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_2_reg_600 <= ap_sig_allocacmp_blockID_2;
        bucket_addr_547_reg_779[10 : 1] <= zext_ln58_7_fu_580_p1[10 : 1];
        empty_reg_610 <= empty_fu_278_p1;
        exp_cast4_reg_591[4 : 0] <= exp_cast4_fu_258_p1[4 : 0];
        tmp_reg_606 <= ap_sig_allocacmp_blockID_2[32'd9];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_addr_541_reg_707[10 : 1] <= zext_ln58_1_fu_432_p1[10 : 1];
        trunc_ln57_4_reg_712 <= trunc_ln57_4_fu_437_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_addr_542_reg_727[10 : 1] <= zext_ln58_2_fu_461_p1[10 : 1];
        trunc_ln57_7_reg_732 <= trunc_ln57_7_fu_470_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        bucket_addr_543_reg_737[10 : 1] <= zext_ln58_3_fu_482_p1[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        bucket_addr_544_reg_754[10 : 1] <= zext_ln58_4_fu_520_p1[10 : 1];
        zext_ln57_6_reg_747[9 : 1] <= zext_ln57_6_fu_504_p1[9 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        bucket_addr_545_reg_759[10 : 1] <= zext_ln58_5_fu_537_p1[10 : 1];
        bucket_indx_6_reg_764[10 : 1] <= bucket_indx_6_fu_549_p2[10 : 1];
        bucket_indx_7_reg_769[10 : 1] <= bucket_indx_7_fu_561_p2[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        bucket_addr_546_reg_774[10 : 1] <= zext_ln58_6_fu_566_p1[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_addr_reg_667[10 : 1] <= zext_ln58_fu_379_p1[10 : 1];
        trunc_ln57_1_reg_672 <= trunc_ln57_1_fu_384_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_228 <= b_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_237 <= bucket_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_43_reg_636 <= {{blockID_2_reg_600[8:1]}};
        trunc_ln57_reg_647 <= trunc_ln57_fu_341_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        trunc_ln57_2_reg_692 <= trunc_ln57_2_fu_412_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        trunc_ln57_3_reg_702 <= trunc_ln57_3_fu_420_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        trunc_ln57_5_reg_717 <= trunc_ln57_5_fu_445_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln57_6_reg_722 <= trunc_ln57_6_fu_449_p1;
    end
end
always @ (*) begin
    if (((tmp_reg_606 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_blockID_2 = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_2 = blockID_fu_76;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            b_address0_local = zext_ln57_9_fu_407_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            b_address0_local = zext_ln57_7_fu_366_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_address0_local = zext_ln57_4_fu_327_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_address0_local = zext_ln57_2_fu_303_p1;
        end else begin
            b_address0_local = 'bx;
        end
    end else begin
        b_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            b_address1_local = zext_ln57_8_fu_395_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            b_address1_local = zext_ln57_5_fu_353_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_address1_local = zext_ln57_3_fu_315_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_address1_local = zext_ln57_fu_290_p1;
        end else begin
            b_address1_local = 'bx;
        end
    end else begin
        b_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_ce0_local = 1'b1;
    end else begin
        b_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_ce1_local = 1'b1;
    end else begin
        b_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_address0_local = bucket_addr_547_reg_779;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_address0_local = zext_ln58_7_fu_580_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        bucket_address0_local = bucket_addr_546_reg_774;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        bucket_address0_local = zext_ln58_6_fu_566_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        bucket_address0_local = bucket_addr_545_reg_759;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        bucket_address0_local = zext_ln58_5_fu_537_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        bucket_address0_local = bucket_addr_544_reg_754;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        bucket_address0_local = zext_ln58_4_fu_520_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        bucket_address0_local = bucket_addr_543_reg_737;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        bucket_address0_local = zext_ln58_3_fu_482_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_address0_local = bucket_addr_542_reg_727;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_address0_local = zext_ln58_2_fu_461_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_address0_local = bucket_addr_541_reg_707;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_address0_local = zext_ln58_1_fu_432_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_address0_local = bucket_addr_reg_667;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_address0_local = zext_ln58_fu_379_p1;
    end else begin
        bucket_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_ce0_local = 1'b1;
    end else begin
        bucket_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_606 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((tmp_reg_606 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_606 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_606 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((tmp_reg_606 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_606 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_606 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 ==ap_CS_fsm_pp0_stage2)))) begin
        bucket_we0_local = 1'b1;
    end else begin
        bucket_we0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln54_fu_570_p2 = (blockID_2_reg_600 + 10'd2);
assign add_ln57_fu_498_p2 = (zext_ln57_1_fu_494_p1 + 10'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
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
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign ashr_ln57_3_fu_416_p2 = $signed(b_load_18_reg_652) >>> exp_cast4_reg_591;
assign ashr_ln57_5_fu_441_p2 = $signed(b_load_20_reg_677) >>> exp_cast4_reg_591;
assign ashr_ln57_7_fu_466_p2 = $signed(b_load_22_reg_697) >>> exp_cast4_reg_591;
assign b_address0 = b_address0_local;
assign b_address1 = b_address1_local;
assign b_ce0 = b_ce0_local;
assign b_ce1 = b_ce1_local;
assign bucket_address0 = bucket_address0_local;
assign bucket_ce0 = bucket_ce0_local;
assign bucket_d0 = grp_fu_251_p2;
assign bucket_indx_1_fu_424_p4 = {{{trunc_ln57_1_reg_672}, {tmp_43_reg_636}}, {1'd1}};
assign bucket_indx_2_fu_453_p4 = {{{trunc_ln57_2_reg_692}, {tmp_43_reg_636}}, {1'd1}};
assign bucket_indx_3_fu_474_p4 = {{{trunc_ln57_3_reg_702}, {tmp_43_reg_636}}, {1'd1}};
assign bucket_indx_4_fu_514_p2 = (shl_ln_fu_507_p3 + zext_ln57_6_fu_504_p1);
assign bucket_indx_5_fu_532_p2 = (shl_ln57_1_fu_525_p3 + zext_ln57_6_reg_747);
assign bucket_indx_6_fu_549_p2 = (shl_ln57_2_fu_542_p3 + zext_ln57_6_reg_747);
assign bucket_indx_7_fu_561_p2 = (shl_ln57_3_fu_554_p3 + zext_ln57_6_reg_747);
assign bucket_indx_fu_371_p4 = {{{trunc_ln57_reg_647}, {tmp_43_reg_636}}, {1'd1}};
assign bucket_we0 = bucket_we0_local;
assign empty_fu_278_p1 = ap_sig_allocacmp_blockID_2[8:0];
assign exp_cast4_fu_258_p1 = exp;
assign grp_fu_241_p2 = $signed(reg_228) >>> exp_cast4_reg_591;
assign grp_fu_246_p2 = $signed(reg_232) >>> exp_cast4_reg_591;
assign grp_fu_251_p2 = (reg_237 + 32'd1);
assign or_ln2_fu_295_p3 = {{empty_fu_278_p1}, {2'd1}};
assign or_ln56_1_fu_308_p3 = {{empty_reg_610}, {2'd2}};
assign or_ln56_2_fu_320_p3 = {{empty_reg_610}, {2'd3}};
assign or_ln56_3_fu_358_p3 = {{tmp_43_fu_332_p4}, {3'd5}};
assign or_ln56_4_fu_388_p3 = {{tmp_43_reg_636}, {3'd6}};
assign or_ln56_5_fu_400_p3 = {{tmp_43_reg_636}, {3'd7}};
assign or_ln_fu_487_p3 = {{tmp_43_reg_636}, {1'd1}};
assign shl_ln57_1_fu_525_p3 = {{trunc_ln57_5_reg_717}, {9'd0}};
assign shl_ln57_2_fu_542_p3 = {{trunc_ln57_6_reg_722}, {9'd0}};
assign shl_ln57_3_fu_554_p3 = {{trunc_ln57_7_reg_732}, {9'd0}};
assign shl_ln_fu_507_p3 = {{trunc_ln57_4_reg_712}, {9'd0}};
assign tmp_43_fu_332_p4 = {{blockID_2_reg_600[8:1]}};
assign tmp_44_fu_345_p3 = {{tmp_43_fu_332_p4}, {3'd4}};
assign tmp_s_fu_282_p3 = {{empty_fu_278_p1}, {2'd0}};
assign trunc_ln57_1_fu_384_p1 = grp_fu_246_p2[1:0];
assign trunc_ln57_2_fu_412_p1 = grp_fu_241_p2[1:0];
assign trunc_ln57_3_fu_420_p1 = ashr_ln57_3_fu_416_p2[1:0];
assign trunc_ln57_4_fu_437_p1 = grp_fu_246_p2[1:0];
assign trunc_ln57_5_fu_445_p1 = ashr_ln57_5_fu_441_p2[1:0];
assign trunc_ln57_6_fu_449_p1 = grp_fu_241_p2[1:0];
assign trunc_ln57_7_fu_470_p1 = ashr_ln57_7_fu_466_p2[1:0];
assign trunc_ln57_fu_341_p1 = grp_fu_241_p2[1:0];
assign zext_ln57_1_fu_494_p1 = or_ln_fu_487_p3;
assign zext_ln57_2_fu_303_p1 = or_ln2_fu_295_p3;
assign zext_ln57_3_fu_315_p1 = or_ln56_1_fu_308_p3;
assign zext_ln57_4_fu_327_p1 = or_ln56_2_fu_320_p3;
assign zext_ln57_5_fu_353_p1 = tmp_44_fu_345_p3;
assign zext_ln57_6_fu_504_p1 = add_ln57_reg_742;
assign zext_ln57_7_fu_366_p1 = or_ln56_3_fu_358_p3;
assign zext_ln57_8_fu_395_p1 = or_ln56_4_fu_388_p3;
assign zext_ln57_9_fu_407_p1 = or_ln56_5_fu_400_p3;
assign zext_ln57_fu_290_p1 = tmp_s_fu_282_p3;
assign zext_ln58_1_fu_432_p1 = bucket_indx_1_fu_424_p4;
assign zext_ln58_2_fu_461_p1 = bucket_indx_2_fu_453_p4;
assign zext_ln58_3_fu_482_p1 = bucket_indx_3_fu_474_p4;
assign zext_ln58_4_fu_520_p1 = bucket_indx_4_fu_514_p2;
assign zext_ln58_5_fu_537_p1 = bucket_indx_5_fu_532_p2;
assign zext_ln58_6_fu_566_p1 = bucket_indx_6_reg_764;
assign zext_ln58_7_fu_580_p1 = bucket_indx_7_reg_769;
assign zext_ln58_fu_379_p1 = bucket_indx_fu_371_p4;
always @ (posedge ap_clk) begin
    exp_cast4_reg_591[31:5] <= 27'b000000000000000000000000000;
    bucket_addr_reg_667[0] <= 1'b1;
    bucket_addr_541_reg_707[0] <= 1'b1;
    bucket_addr_542_reg_727[0] <= 1'b1;
    bucket_addr_543_reg_737[0] <= 1'b1;
    add_ln57_reg_742[0] <= 1'b0;
    zext_ln57_6_reg_747[0] <= 1'b0;
    zext_ln57_6_reg_747[10] <= 1'b0;
    bucket_addr_544_reg_754[0] <= 1'b0;
    bucket_addr_545_reg_759[0] <= 1'b0;
    bucket_indx_6_reg_764[0] <= 1'b0;
    bucket_indx_7_reg_769[0] <= 1'b0;
    bucket_addr_546_reg_774[0] <= 1'b0;
    bucket_addr_547_reg_779[0] <= 1'b0;
end
endmodule 
