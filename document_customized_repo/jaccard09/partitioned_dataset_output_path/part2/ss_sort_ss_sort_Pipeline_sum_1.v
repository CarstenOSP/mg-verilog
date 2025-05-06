
module ss_sort_ss_sort_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_7_address0,sum_7_ce0,sum_7_we0,sum_7_d0,sum_6_address0,sum_6_ce0,sum_6_we0,sum_6_d0,sum_5_address0,sum_5_ce0,sum_5_we0,sum_5_d0,sum_4_address0,sum_4_ce0,sum_4_we0,sum_4_d0,sum_3_address0,sum_3_ce0,sum_3_we0,sum_3_d0,sum_2_address0,sum_2_ce0,sum_2_we0,sum_2_d0,sum_1_address0,sum_1_ce0,sum_1_we0,sum_1_d0,sum_0_address0,sum_0_ce0,sum_0_we0,sum_0_d0,sum_0_q0,bucket_7_address0,bucket_7_ce0,bucket_7_q0,bucket_7_address1,bucket_7_ce1,bucket_7_q1);  
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
output  [3:0] sum_7_address0;
output   sum_7_ce0;
output   sum_7_we0;
output  [31:0] sum_7_d0;
output  [3:0] sum_6_address0;
output   sum_6_ce0;
output   sum_6_we0;
output  [31:0] sum_6_d0;
output  [3:0] sum_5_address0;
output   sum_5_ce0;
output   sum_5_we0;
output  [31:0] sum_5_d0;
output  [3:0] sum_4_address0;
output   sum_4_ce0;
output   sum_4_we0;
output  [31:0] sum_4_d0;
output  [3:0] sum_3_address0;
output   sum_3_ce0;
output   sum_3_we0;
output  [31:0] sum_3_d0;
output  [3:0] sum_2_address0;
output   sum_2_ce0;
output   sum_2_we0;
output  [31:0] sum_2_d0;
output  [3:0] sum_1_address0;
output   sum_1_ce0;
output   sum_1_we0;
output  [31:0] sum_1_d0;
output  [3:0] sum_0_address0;
output   sum_0_ce0;
output   sum_0_we0;
output  [31:0] sum_0_d0;
input  [31:0] sum_0_q0;
output  [7:0] bucket_7_address0;
output   bucket_7_ce0;
input  [31:0] bucket_7_q0;
output  [7:0] bucket_7_address1;
output   bucket_7_ce1;
input  [31:0] bucket_7_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
wire   [0:0] tmp_fu_478_p3;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_285;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_289;
reg   [6:0] radixID_1_reg_584;
wire   [63:0] zext_ln23_fu_321_p1;
reg   [63:0] zext_ln23_reg_591;
reg   [63:0] zext_ln23_reg_591_pp0_iter1_reg;
wire   [10:0] shl_ln_fu_326_p3;
reg   [10:0] shl_ln_reg_603;
reg   [31:0] sum_0_load_reg_623;
wire   [0:0] addr_cmp_fu_371_p2;
reg   [0:0] addr_cmp_reg_628;
wire   [7:0] shl_ln1_fu_376_p3;
reg   [7:0] shl_ln1_reg_633;
wire   [31:0] add_ln27_1_fu_421_p2;
reg   [31:0] add_ln27_1_reg_650;
wire   [31:0] add_ln27_5_fu_456_p2;
reg   [31:0] add_ln27_5_reg_666;
wire   [7:0] add_ln25_fu_472_p2;
reg   [7:0] add_ln25_reg_677;
reg   [0:0] tmp_reg_682;
wire   [31:0] add_ln27_9_fu_522_p2;
reg   [31:0] add_ln27_9_reg_691;
wire   [63:0] zext_ln25_fu_537_p1;
reg   [63:0] zext_ln25_reg_697;
wire   [31:0] add_ln27_12_fu_552_p2;
reg   [31:0] add_ln27_12_reg_702;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
reg    ap_condition_exit_pp0_iter1_stage1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_350_p1;
wire   [63:0] zext_ln27_1_fu_363_p1;
wire   [63:0] zext_ln27_2_fu_389_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_400_p1;
wire   [63:0] zext_ln27_4_fu_432_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_442_p1;
wire   [63:0] zext_ln27_6_fu_467_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_501_p1;
reg   [63:0] reuse_addr_reg_fu_88;
wire    ap_loop_init;
reg   [31:0] reuse_reg_fu_92;
reg   [6:0] radixID_fu_96;
wire   [6:0] add_ln25_1_fu_506_p2;
reg   [6:0] ap_sig_allocacmp_radixID_1;
reg    sum_0_ce0_local;
reg   [3:0] sum_0_address0_local;
reg    sum_0_we0_local;
reg    bucket_7_ce1_local;
reg   [7:0] bucket_7_address1_local;
reg    bucket_7_ce0_local;
reg   [7:0] bucket_7_address0_local;
reg    sum_1_we0_local;
wire   [31:0] add_ln27_fu_414_p2;
reg    sum_1_ce0_local;
reg    sum_2_we0_local;
reg    sum_2_ce0_local;
reg    sum_3_we0_local;
wire   [31:0] add_ln27_3_fu_450_p2;
reg    sum_3_ce0_local;
reg    sum_4_we0_local;
reg    sum_4_ce0_local;
reg    sum_5_we0_local;
wire   [31:0] add_ln27_7_fu_516_p2;
reg    sum_5_ce0_local;
reg    sum_6_we0_local;
reg    sum_6_ce0_local;
reg    sum_7_we0_local;
wire   [31:0] add_ln27_11_fu_546_p2;
reg    sum_7_ce0_local;
wire   [3:0] lshr_ln2_fu_311_p4;
wire   [10:0] add_ln26_fu_334_p2;
wire   [7:0] lshr_ln3_fu_340_p4;
wire   [7:0] or_ln_fu_355_p3;
wire   [7:0] add_ln27_2_fu_383_p2;
wire   [7:0] add_ln27_4_fu_394_p2;
wire   [31:0] reuse_select_fu_408_p3;
wire   [7:0] add_ln27_6_fu_427_p2;
wire   [7:0] add_ln27_8_fu_437_p2;
wire   [7:0] add_ln27_10_fu_462_p2;
wire   [7:0] zext_ln15_fu_447_p1;
wire   [10:0] add_ln26_1_fu_486_p2;
wire   [7:0] lshr_ln27_1_fu_491_p4;
wire   [3:0] lshr_ln4_fu_528_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 reuse_addr_reg_fu_88 = 64'd0;
#0 reuse_reg_fu_92 = 32'd0;
#0 radixID_fu_96 = 7'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage1) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        radixID_fu_96 <= 7'd1;
    end else if (((tmp_fu_478_p3 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        radixID_fu_96 <= add_ln25_1_fu_506_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            reuse_addr_reg_fu_88 <= 64'd18446744073709551615;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_682 == 1'd0))) begin
            reuse_addr_reg_fu_88 <= zext_ln25_fu_537_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reuse_reg_fu_92 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_682 == 1'd0))) begin
        reuse_reg_fu_92 <= add_ln27_12_fu_552_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln25_reg_677 <= add_ln25_fu_472_p2;
        add_ln27_5_reg_666 <= add_ln27_5_fu_456_p2;
        tmp_reg_682 <= add_ln25_fu_472_p2[32'd7];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln27_12_reg_702 <= add_ln27_12_fu_552_p2;
        addr_cmp_reg_628 <= addr_cmp_fu_371_p2;
        shl_ln1_reg_633[7 : 1] <= shl_ln1_fu_376_p3[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln27_1_reg_650 <= add_ln27_1_fu_421_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln27_9_reg_691 <= add_ln27_9_fu_522_p2;
        radixID_1_reg_584 <= ap_sig_allocacmp_radixID_1;
        shl_ln_reg_603[10 : 4] <= shl_ln_fu_326_p3[10 : 4];
        zext_ln23_reg_591[3 : 0] <= zext_ln23_fu_321_p1[3 : 0];
        zext_ln23_reg_591_pp0_iter1_reg[3 : 0] <= zext_ln23_reg_591[3 : 0];
        zext_ln25_reg_697[3 : 0] <= zext_ln25_fu_537_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_285 <= bucket_7_q1;
        reg_289 <= bucket_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_0_load_reg_623 <= sum_0_q0;
    end
end
always @ (*) begin
    if (((tmp_fu_478_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_682 == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_radixID_1 = 7'd1;
    end else begin
        ap_sig_allocacmp_radixID_1 = radixID_fu_96;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            bucket_7_address0_local = zext_ln27_7_fu_501_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            bucket_7_address0_local = zext_ln27_5_fu_442_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            bucket_7_address0_local = zext_ln27_3_fu_400_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_7_address0_local = zext_ln27_1_fu_363_p1;
        end else begin
            bucket_7_address0_local = 'bx;
        end
    end else begin
        bucket_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            bucket_7_address1_local = zext_ln27_6_fu_467_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            bucket_7_address1_local = zext_ln27_4_fu_432_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            bucket_7_address1_local = zext_ln27_2_fu_389_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_7_address1_local = zext_ln27_fu_350_p1;
        end else begin
            bucket_7_address1_local = 'bx;
        end
    end else begin
        bucket_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        bucket_7_ce0_local = 1'b1;
    end else begin
        bucket_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        bucket_7_ce1_local = 1'b1;
    end else begin
        bucket_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_0_address0_local = zext_ln25_reg_697;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_0_address0_local = zext_ln23_fu_321_p1;
    end else begin
        sum_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_682 == 1'd0))) begin
        sum_0_we0_local = 1'b1;
    end else begin
        sum_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_1_ce0_local = 1'b1;
    end else begin
        sum_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_1_we0_local = 1'b1;
    end else begin
        sum_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sum_2_ce0_local = 1'b1;
    end else begin
        sum_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sum_2_we0_local = 1'b1;
    end else begin
        sum_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sum_3_ce0_local = 1'b1;
    end else begin
        sum_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sum_3_we0_local = 1'b1;
    end else begin
        sum_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_4_ce0_local = 1'b1;
    end else begin
        sum_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_4_we0_local = 1'b1;
    end else begin
        sum_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_5_ce0_local = 1'b1;
    end else begin
        sum_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_5_we0_local = 1'b1;
    end else begin
        sum_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_6_ce0_local = 1'b1;
    end else begin
        sum_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_6_we0_local = 1'b1;
    end else begin
        sum_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_7_ce0_local = 1'b1;
    end else begin
        sum_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_7_we0_local = 1'b1;
    end else begin
        sum_7_we0_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign add_ln25_1_fu_506_p2 = (radixID_1_reg_584 + 7'd8);
assign add_ln25_fu_472_p2 = (zext_ln15_fu_447_p1 + 8'd7);
assign add_ln26_1_fu_486_p2 = (shl_ln_reg_603 + 11'd111);
assign add_ln26_fu_334_p2 = ($signed(shl_ln_fu_326_p3) + $signed(11'd2047));
assign add_ln27_10_fu_462_p2 = (shl_ln1_reg_633 + 8'd11);
assign add_ln27_11_fu_546_p2 = (reg_285 + add_ln27_9_reg_691);
assign add_ln27_12_fu_552_p2 = (reg_289 + add_ln27_11_fu_546_p2);
assign add_ln27_1_fu_421_p2 = (reg_289 + add_ln27_fu_414_p2);
assign add_ln27_2_fu_383_p2 = (shl_ln1_fu_376_p3 + 8'd3);
assign add_ln27_3_fu_450_p2 = (reg_285 + add_ln27_1_reg_650);
assign add_ln27_4_fu_394_p2 = (shl_ln1_fu_376_p3 + 8'd5);
assign add_ln27_5_fu_456_p2 = (reg_289 + add_ln27_3_fu_450_p2);
assign add_ln27_6_fu_427_p2 = (shl_ln1_reg_633 + 8'd7);
assign add_ln27_7_fu_516_p2 = (reg_285 + add_ln27_5_reg_666);
assign add_ln27_8_fu_437_p2 = (shl_ln1_reg_633 + 8'd9);
assign add_ln27_9_fu_522_p2 = (reg_289 + add_ln27_7_fu_516_p2);
assign add_ln27_fu_414_p2 = (reg_285 + reuse_select_fu_408_p3);
assign addr_cmp_fu_371_p2 = ((reuse_addr_reg_fu_88 == zext_ln23_reg_591) ? 1'b1 : 1'b0);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bucket_7_address0 = bucket_7_address0_local;
assign bucket_7_address1 = bucket_7_address1_local;
assign bucket_7_ce0 = bucket_7_ce0_local;
assign bucket_7_ce1 = bucket_7_ce1_local;
assign lshr_ln27_1_fu_491_p4 = {{add_ln26_1_fu_486_p2[10:3]}};
assign lshr_ln2_fu_311_p4 = {{ap_sig_allocacmp_radixID_1[6:3]}};
assign lshr_ln3_fu_340_p4 = {{add_ln26_fu_334_p2[10:3]}};
assign lshr_ln4_fu_528_p4 = {{add_ln25_reg_677[6:3]}};
assign or_ln_fu_355_p3 = {{ap_sig_allocacmp_radixID_1}, {1'd1}};
assign reuse_select_fu_408_p3 = ((addr_cmp_reg_628[0:0] == 1'b1) ? reuse_reg_fu_92 : sum_0_load_reg_623);
assign shl_ln1_fu_376_p3 = {{radixID_1_reg_584}, {1'd0}};
assign shl_ln_fu_326_p3 = {{ap_sig_allocacmp_radixID_1}, {4'd0}};
assign sum_0_address0 = sum_0_address0_local;
assign sum_0_ce0 = sum_0_ce0_local;
assign sum_0_d0 = add_ln27_12_reg_702;
assign sum_0_we0 = sum_0_we0_local;
assign sum_1_address0 = zext_ln23_reg_591;
assign sum_1_ce0 = sum_1_ce0_local;
assign sum_1_d0 = add_ln27_fu_414_p2;
assign sum_1_we0 = sum_1_we0_local;
assign sum_2_address0 = zext_ln23_reg_591;
assign sum_2_ce0 = sum_2_ce0_local;
assign sum_2_d0 = add_ln27_1_reg_650;
assign sum_2_we0 = sum_2_we0_local;
assign sum_3_address0 = zext_ln23_reg_591;
assign sum_3_ce0 = sum_3_ce0_local;
assign sum_3_d0 = add_ln27_3_fu_450_p2;
assign sum_3_we0 = sum_3_we0_local;
assign sum_4_address0 = zext_ln23_reg_591;
assign sum_4_ce0 = sum_4_ce0_local;
assign sum_4_d0 = add_ln27_5_reg_666;
assign sum_4_we0 = sum_4_we0_local;
assign sum_5_address0 = zext_ln23_reg_591;
assign sum_5_ce0 = sum_5_ce0_local;
assign sum_5_d0 = add_ln27_7_fu_516_p2;
assign sum_5_we0 = sum_5_we0_local;
assign sum_6_address0 = zext_ln23_reg_591_pp0_iter1_reg;
assign sum_6_ce0 = sum_6_ce0_local;
assign sum_6_d0 = add_ln27_9_reg_691;
assign sum_6_we0 = sum_6_we0_local;
assign sum_7_address0 = zext_ln23_reg_591_pp0_iter1_reg;
assign sum_7_ce0 = sum_7_ce0_local;
assign sum_7_d0 = add_ln27_11_fu_546_p2;
assign sum_7_we0 = sum_7_we0_local;
assign tmp_fu_478_p3 = add_ln25_fu_472_p2[32'd7];
assign zext_ln15_fu_447_p1 = radixID_1_reg_584;
assign zext_ln23_fu_321_p1 = lshr_ln2_fu_311_p4;
assign zext_ln25_fu_537_p1 = lshr_ln4_fu_528_p4;
assign zext_ln27_1_fu_363_p1 = or_ln_fu_355_p3;
assign zext_ln27_2_fu_389_p1 = add_ln27_2_fu_383_p2;
assign zext_ln27_3_fu_400_p1 = add_ln27_4_fu_394_p2;
assign zext_ln27_4_fu_432_p1 = add_ln27_6_fu_427_p2;
assign zext_ln27_5_fu_442_p1 = add_ln27_8_fu_437_p2;
assign zext_ln27_6_fu_467_p1 = add_ln27_10_fu_462_p2;
assign zext_ln27_7_fu_501_p1 = lshr_ln27_1_fu_491_p4;
assign zext_ln27_fu_350_p1 = lshr_ln3_fu_340_p4;
always @ (posedge ap_clk) begin
    zext_ln23_reg_591[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln23_reg_591_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    shl_ln_reg_603[3:0] <= 4'b0000;
    shl_ln1_reg_633[0] <= 1'b0;
    zext_ln25_reg_697[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
