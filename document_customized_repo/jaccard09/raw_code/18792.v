module ss_sort_ss_sort_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_7_address0,sum_7_ce0,sum_7_we0,sum_7_d0,sum_7_q0,sum_6_address0,sum_6_ce0,sum_6_we0,sum_6_d0,sum_6_q0,sum_5_address0,sum_5_ce0,sum_5_we0,sum_5_d0,sum_5_q0,sum_4_address0,sum_4_ce0,sum_4_we0,sum_4_d0,sum_4_q0,sum_3_address0,sum_3_ce0,sum_3_we0,sum_3_d0,sum_3_q0,sum_2_address0,sum_2_ce0,sum_2_we0,sum_2_d0,sum_2_q0,sum_1_address0,sum_1_ce0,sum_1_we0,sum_1_d0,sum_1_q0,sum_0_address0,sum_0_ce0,sum_0_we0,sum_0_d0,sum_0_q0,bucket_7_address0,bucket_7_ce0,bucket_7_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
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
input  [31:0] sum_7_q0;
output  [3:0] sum_6_address0;
output   sum_6_ce0;
output   sum_6_we0;
output  [31:0] sum_6_d0;
input  [31:0] sum_6_q0;
output  [3:0] sum_5_address0;
output   sum_5_ce0;
output   sum_5_we0;
output  [31:0] sum_5_d0;
input  [31:0] sum_5_q0;
output  [3:0] sum_4_address0;
output   sum_4_ce0;
output   sum_4_we0;
output  [31:0] sum_4_d0;
input  [31:0] sum_4_q0;
output  [3:0] sum_3_address0;
output   sum_3_ce0;
output   sum_3_we0;
output  [31:0] sum_3_d0;
input  [31:0] sum_3_q0;
output  [3:0] sum_2_address0;
output   sum_2_ce0;
output   sum_2_we0;
output  [31:0] sum_2_d0;
input  [31:0] sum_2_q0;
output  [3:0] sum_1_address0;
output   sum_1_ce0;
output   sum_1_we0;
output  [31:0] sum_1_d0;
input  [31:0] sum_1_q0;
output  [3:0] sum_0_address0;
output   sum_0_ce0;
output   sum_0_we0;
output  [31:0] sum_0_d0;
input  [31:0] sum_0_q0;
output  [7:0] bucket_7_address0;
output   bucket_7_ce0;
input  [31:0] bucket_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire   [0:0] icmp_ln25_fu_382_p2;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_287;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] radixID_1_reg_478;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [2:0] trunc_ln15_fu_299_p1;
reg   [2:0] trunc_ln15_reg_484;
reg   [3:0] lshr_ln1_reg_489;
wire   [6:0] trunc_ln26_fu_313_p1;
reg   [6:0] trunc_ln26_reg_494;
reg   [3:0] sum_0_addr_reg_504;
reg   [3:0] sum_1_addr_reg_509;
reg   [3:0] sum_2_addr_reg_514;
reg   [3:0] sum_3_addr_reg_519;
reg   [3:0] sum_4_addr_reg_524;
reg   [3:0] sum_5_addr_reg_529;
reg   [3:0] sum_6_addr_reg_534;
reg   [3:0] sum_7_addr_reg_539;
reg   [3:0] lshr_ln3_reg_544;
reg   [0:0] icmp_ln25_reg_549;
wire   [31:0] add_ln27_fu_439_p2;
reg   [31:0] add_ln27_reg_558;
wire   [63:0] zext_ln25_fu_445_p1;
reg   [63:0] zext_ln25_reg_571;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln27_fu_341_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln23_fu_346_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_1_fu_395_p1;
reg   [63:0] radixID_fu_94;
wire   [63:0] add_ln25_1_fu_448_p2;
wire    ap_loop_init;
reg    bucket_7_ce0_local;
reg   [7:0] bucket_7_address0_local;
reg    sum_0_ce0_local;
reg   [3:0] sum_0_address0_local;
reg    sum_0_we0_local;
reg   [31:0] sum_0_d0_local;
wire   [31:0] add_ln27_1_fu_458_p2;
reg    sum_1_ce0_local;
reg   [3:0] sum_1_address0_local;
reg    sum_1_we0_local;
reg   [31:0] sum_1_d0_local;
reg    sum_2_ce0_local;
reg   [3:0] sum_2_address0_local;
reg    sum_2_we0_local;
reg   [31:0] sum_2_d0_local;
reg    sum_3_ce0_local;
reg   [3:0] sum_3_address0_local;
reg    sum_3_we0_local;
reg   [31:0] sum_3_d0_local;
reg    sum_4_ce0_local;
reg   [3:0] sum_4_address0_local;
reg    sum_4_we0_local;
reg   [31:0] sum_4_d0_local;
reg    sum_5_ce0_local;
reg   [3:0] sum_5_address0_local;
reg    sum_5_we0_local;
reg   [31:0] sum_5_d0_local;
reg    sum_6_ce0_local;
reg   [3:0] sum_6_address0_local;
reg    sum_6_we0_local;
reg   [31:0] sum_6_d0_local;
reg    sum_7_ce0_local;
reg   [3:0] sum_7_address0_local;
reg    sum_7_we0_local;
reg   [31:0] sum_7_d0_local;
wire    ap_block_pp0_stage0;
wire   [10:0] shl_ln_fu_317_p3;
wire   [10:0] add_ln26_fu_325_p2;
wire   [7:0] lshr_ln2_fu_331_p4;
wire   [63:0] add_ln25_fu_357_p2;
wire   [56:0] tmp_1_fu_372_p4;
wire   [7:0] or_ln_fu_388_p3;
wire   [31:0] tmp_fu_400_p17;
wire   [31:0] tmp_fu_400_p19;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage1;
reg    ap_idle_pp0_0to0;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_203;
wire   [2:0] tmp_fu_400_p1;
wire   [2:0] tmp_fu_400_p3;
wire   [2:0] tmp_fu_400_p5;
wire  signed [2:0] tmp_fu_400_p7;
wire  signed [2:0] tmp_fu_400_p9;
wire  signed [2:0] tmp_fu_400_p11;
wire  signed [2:0] tmp_fu_400_p13;
wire   [2:0] tmp_fu_400_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 radixID_fu_94 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h3 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.CASE4( 3'h5 ),.din4_WIDTH( 32 ),.CASE5( 3'h6 ),.din5_WIDTH( 32 ),.CASE6( 3'h7 ),.din6_WIDTH( 32 ),.CASE7( 3'h0 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U34(.din0(sum_0_q0),.din1(sum_1_q0),.din2(sum_2_q0),.din3(sum_3_q0),.din4(sum_4_q0),.din5(sum_5_q0),.din6(sum_6_q0),.din7(sum_7_q0),.def(tmp_fu_400_p17),.sel(trunc_ln15_reg_484),.dout(tmp_fu_400_p19));
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            radixID_fu_94 <= 64'd1;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln25_reg_549 == 1'd1))) begin
            radixID_fu_94 <= add_ln25_1_fu_448_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln27_reg_558 <= add_ln27_fu_439_p2;
        zext_ln25_reg_571[3 : 0] <= zext_ln25_fu_445_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln25_reg_549 <= icmp_ln25_fu_382_p2;
        lshr_ln3_reg_544 <= {{add_ln25_fu_357_p2[6:3]}};
        sum_0_addr_reg_504 <= zext_ln23_fu_346_p1;
        sum_1_addr_reg_509 <= zext_ln23_fu_346_p1;
        sum_2_addr_reg_514 <= zext_ln23_fu_346_p1;
        sum_3_addr_reg_519 <= zext_ln23_fu_346_p1;
        sum_4_addr_reg_524 <= zext_ln23_fu_346_p1;
        sum_5_addr_reg_529 <= zext_ln23_fu_346_p1;
        sum_6_addr_reg_534 <= zext_ln23_fu_346_p1;
        sum_7_addr_reg_539 <= zext_ln23_fu_346_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln1_reg_489 <= {{radixID_fu_94[6:3]}};
        radixID_1_reg_478 <= radixID_fu_94;
        trunc_ln15_reg_484 <= trunc_ln15_fu_299_p1;
        trunc_ln26_reg_494 <= trunc_ln26_fu_313_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_287 <= bucket_7_q0;
    end
end
always @ (*) begin
    if (((icmp_ln25_fu_382_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            bucket_7_address0_local = zext_ln27_1_fu_395_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            bucket_7_address0_local = zext_ln27_fu_341_p1;
        end else begin
            bucket_7_address0_local = 'bx;
        end
    end else begin
        bucket_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_7_ce0_local = 1'b1;
    end else begin
        bucket_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd7))) begin
        sum_0_address0_local = zext_ln25_reg_571;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd0))) begin
        sum_0_address0_local = sum_0_addr_reg_504;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_0_address0_local = zext_ln23_fu_346_p1;
    end else begin
        sum_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_203)) begin
        if (((icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd7))) begin
            sum_0_d0_local = add_ln27_1_fu_458_p2;
        end else if ((trunc_ln15_reg_484 == 3'd0)) begin
            sum_0_d0_local = add_ln27_reg_558;
        end else begin
            sum_0_d0_local = 'bx;
        end
    end else begin
        sum_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd7)))) begin
        sum_0_we0_local = 1'b1;
    end else begin
        sum_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd0))) begin
        sum_1_address0_local = zext_ln25_reg_571;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd1))) begin
        sum_1_address0_local = sum_1_addr_reg_509;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_1_address0_local = zext_ln23_fu_346_p1;
    end else begin
        sum_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sum_1_ce0_local = 1'b1;
    end else begin
        sum_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_203)) begin
        if (((icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd0))) begin
            sum_1_d0_local = add_ln27_1_fu_458_p2;
        end else if ((trunc_ln15_reg_484 == 3'd1)) begin
            sum_1_d0_local = add_ln27_reg_558;
        end else begin
            sum_1_d0_local = 'bx;
        end
    end else begin
        sum_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd0)))) begin
        sum_1_we0_local = 1'b1;
    end else begin
        sum_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd1))) begin
        sum_2_address0_local = zext_ln25_reg_571;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd2))) begin
        sum_2_address0_local = sum_2_addr_reg_514;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_2_address0_local = zext_ln23_fu_346_p1;
    end else begin
        sum_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sum_2_ce0_local = 1'b1;
    end else begin
        sum_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_203)) begin
        if (((icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd1))) begin
            sum_2_d0_local = add_ln27_1_fu_458_p2;
        end else if ((trunc_ln15_reg_484 == 3'd2)) begin
            sum_2_d0_local = add_ln27_reg_558;
        end else begin
            sum_2_d0_local = 'bx;
        end
    end else begin
        sum_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd1)))) begin
        sum_2_we0_local = 1'b1;
    end else begin
        sum_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd2))) begin
        sum_3_address0_local = zext_ln25_reg_571;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd3))) begin
        sum_3_address0_local = sum_3_addr_reg_519;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_3_address0_local = zext_ln23_fu_346_p1;
    end else begin
        sum_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sum_3_ce0_local = 1'b1;
    end else begin
        sum_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_203)) begin
        if (((icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd2))) begin
            sum_3_d0_local = add_ln27_1_fu_458_p2;
        end else if ((trunc_ln15_reg_484 == 3'd3)) begin
            sum_3_d0_local = add_ln27_reg_558;
        end else begin
            sum_3_d0_local = 'bx;
        end
    end else begin
        sum_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd2)))) begin
        sum_3_we0_local = 1'b1;
    end else begin
        sum_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd3))) begin
        sum_4_address0_local = zext_ln25_reg_571;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd4))) begin
        sum_4_address0_local = sum_4_addr_reg_524;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_4_address0_local = zext_ln23_fu_346_p1;
    end else begin
        sum_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sum_4_ce0_local = 1'b1;
    end else begin
        sum_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_203)) begin
        if (((icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd3))) begin
            sum_4_d0_local = add_ln27_1_fu_458_p2;
        end else if ((trunc_ln15_reg_484 == 3'd4)) begin
            sum_4_d0_local = add_ln27_reg_558;
        end else begin
            sum_4_d0_local = 'bx;
        end
    end else begin
        sum_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd3)))) begin
        sum_4_we0_local = 1'b1;
    end else begin
        sum_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd4))) begin
        sum_5_address0_local = zext_ln25_reg_571;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd5))) begin
        sum_5_address0_local = sum_5_addr_reg_529;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_5_address0_local = zext_ln23_fu_346_p1;
    end else begin
        sum_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sum_5_ce0_local = 1'b1;
    end else begin
        sum_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_203)) begin
        if (((icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd4))) begin
            sum_5_d0_local = add_ln27_1_fu_458_p2;
        end else if ((trunc_ln15_reg_484 == 3'd5)) begin
            sum_5_d0_local = add_ln27_reg_558;
        end else begin
            sum_5_d0_local = 'bx;
        end
    end else begin
        sum_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd5)))) begin
        sum_5_we0_local = 1'b1;
    end else begin
        sum_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd5))) begin
        sum_6_address0_local = zext_ln25_reg_571;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd6))) begin
        sum_6_address0_local = sum_6_addr_reg_534;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_6_address0_local = zext_ln23_fu_346_p1;
    end else begin
        sum_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sum_6_ce0_local = 1'b1;
    end else begin
        sum_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_203)) begin
        if (((icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd5))) begin
            sum_6_d0_local = add_ln27_1_fu_458_p2;
        end else if ((trunc_ln15_reg_484 == 3'd6)) begin
            sum_6_d0_local = add_ln27_reg_558;
        end else begin
            sum_6_d0_local = 'bx;
        end
    end else begin
        sum_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd5)))) begin
        sum_6_we0_local = 1'b1;
    end else begin
        sum_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd6))) begin
        sum_7_address0_local = zext_ln25_reg_571;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd7))) begin
        sum_7_address0_local = sum_7_addr_reg_539;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_7_address0_local = zext_ln23_fu_346_p1;
    end else begin
        sum_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sum_7_ce0_local = 1'b1;
    end else begin
        sum_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_203)) begin
        if (((icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd6))) begin
            sum_7_d0_local = add_ln27_1_fu_458_p2;
        end else if ((trunc_ln15_reg_484 == 3'd7)) begin
            sum_7_d0_local = add_ln27_reg_558;
        end else begin
            sum_7_d0_local = 'bx;
        end
    end else begin
        sum_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln15_reg_484 == 3'd7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln25_reg_549 == 1'd1) & (trunc_ln15_reg_484 == 3'd6)))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_1_fu_448_p2 = (radixID_1_reg_478 + 64'd2);
assign add_ln25_fu_357_p2 = (radixID_1_reg_478 + 64'd1);
assign add_ln26_fu_325_p2 = ($signed(shl_ln_fu_317_p3) + $signed(11'd2047));
assign add_ln27_1_fu_458_p2 = (reg_287 + add_ln27_reg_558);
assign add_ln27_fu_439_p2 = (reg_287 + tmp_fu_400_p19);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_203 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign bucket_7_address0 = bucket_7_address0_local;
assign bucket_7_ce0 = bucket_7_ce0_local;
assign icmp_ln25_fu_382_p2 = (($signed(tmp_1_fu_372_p4) < $signed(57'd1)) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_331_p4 = {{add_ln26_fu_325_p2[10:3]}};
assign or_ln_fu_388_p3 = {{trunc_ln26_reg_494}, {1'd1}};
assign shl_ln_fu_317_p3 = {{trunc_ln26_fu_313_p1}, {4'd0}};
assign sum_0_address0 = sum_0_address0_local;
assign sum_0_ce0 = sum_0_ce0_local;
assign sum_0_d0 = sum_0_d0_local;
assign sum_0_we0 = sum_0_we0_local;
assign sum_1_address0 = sum_1_address0_local;
assign sum_1_ce0 = sum_1_ce0_local;
assign sum_1_d0 = sum_1_d0_local;
assign sum_1_we0 = sum_1_we0_local;
assign sum_2_address0 = sum_2_address0_local;
assign sum_2_ce0 = sum_2_ce0_local;
assign sum_2_d0 = sum_2_d0_local;
assign sum_2_we0 = sum_2_we0_local;
assign sum_3_address0 = sum_3_address0_local;
assign sum_3_ce0 = sum_3_ce0_local;
assign sum_3_d0 = sum_3_d0_local;
assign sum_3_we0 = sum_3_we0_local;
assign sum_4_address0 = sum_4_address0_local;
assign sum_4_ce0 = sum_4_ce0_local;
assign sum_4_d0 = sum_4_d0_local;
assign sum_4_we0 = sum_4_we0_local;
assign sum_5_address0 = sum_5_address0_local;
assign sum_5_ce0 = sum_5_ce0_local;
assign sum_5_d0 = sum_5_d0_local;
assign sum_5_we0 = sum_5_we0_local;
assign sum_6_address0 = sum_6_address0_local;
assign sum_6_ce0 = sum_6_ce0_local;
assign sum_6_d0 = sum_6_d0_local;
assign sum_6_we0 = sum_6_we0_local;
assign sum_7_address0 = sum_7_address0_local;
assign sum_7_ce0 = sum_7_ce0_local;
assign sum_7_d0 = sum_7_d0_local;
assign sum_7_we0 = sum_7_we0_local;
assign tmp_1_fu_372_p4 = {{add_ln25_fu_357_p2[63:7]}};
assign tmp_fu_400_p17 = 'bx;
assign trunc_ln15_fu_299_p1 = radixID_fu_94[2:0];
assign trunc_ln26_fu_313_p1 = radixID_fu_94[6:0];
assign zext_ln23_fu_346_p1 = lshr_ln1_reg_489;
assign zext_ln25_fu_445_p1 = lshr_ln3_reg_544;
assign zext_ln27_1_fu_395_p1 = or_ln_fu_388_p3;
assign zext_ln27_fu_341_p1 = lshr_ln2_fu_331_p4;
always @ (posedge ap_clk) begin
    zext_ln25_reg_571[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 