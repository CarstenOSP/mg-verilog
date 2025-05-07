module ss_sort_ss_sort_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_7_address0,sum_7_ce0,sum_7_we0,sum_7_d0,sum_7_q0,sum_6_address0,sum_6_ce0,sum_6_we0,sum_6_d0,sum_6_q0,sum_5_address0,sum_5_ce0,sum_5_we0,sum_5_d0,sum_5_q0,sum_4_address0,sum_4_ce0,sum_4_we0,sum_4_d0,sum_4_q0,sum_3_address0,sum_3_ce0,sum_3_we0,sum_3_d0,sum_3_q0,sum_2_address0,sum_2_ce0,sum_2_we0,sum_2_d0,sum_2_q0,sum_1_address0,sum_1_ce0,sum_1_we0,sum_1_d0,sum_1_q0,sum_0_address0,sum_0_ce0,sum_0_we0,sum_0_d0,sum_0_q0,bucket_7_address0,bucket_7_ce0,bucket_7_q0,bucket_7_address1,bucket_7_ce1,bucket_7_q1); 
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
reg   [0:0] icmp_ln25_reg_667;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_315;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] radixID_1_reg_566;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [2:0] trunc_ln15_fu_327_p1;
reg   [2:0] trunc_ln15_reg_572;
wire   [6:0] trunc_ln26_fu_353_p1;
reg   [6:0] trunc_ln26_reg_577;
wire   [10:0] shl_ln_fu_357_p3;
reg   [10:0] shl_ln_reg_582;
reg   [3:0] sum_0_addr_reg_587;
reg   [3:0] sum_1_addr_reg_592;
reg   [3:0] sum_2_addr_reg_597;
reg   [3:0] sum_3_addr_reg_602;
reg   [3:0] sum_4_addr_reg_607;
reg   [3:0] sum_5_addr_reg_612;
reg   [3:0] sum_6_addr_reg_617;
reg   [3:0] sum_7_addr_reg_622;
wire   [31:0] add_ln27_fu_438_p2;
reg   [31:0] add_ln27_reg_637;
wire   [63:0] zext_ln25_fu_477_p1;
reg   [63:0] zext_ln25_reg_655;
wire   [0:0] icmp_ln25_fu_491_p2;
wire   [31:0] add_ln27_3_fu_530_p2;
reg   [31:0] add_ln27_3_reg_676;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln23_fu_341_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_fu_381_p1;
wire   [63:0] zext_ln27_1_fu_394_p1;
wire   [63:0] zext_ln27_2_fu_457_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_3_fu_512_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] radixID_fu_102;
wire   [63:0] add_ln25_1_fu_549_p2;
wire    ap_block_pp0_stage0_11001;
wire    ap_loop_init;
reg    sum_0_ce0_local;
reg   [3:0] sum_0_address0_local;
reg    sum_0_we0_local;
reg   [31:0] sum_0_d0_local;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln27_1_fu_517_p2;
wire   [31:0] add_ln27_4_fu_536_p2;
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
reg    bucket_7_ce1_local;
reg   [7:0] bucket_7_address1_local;
reg    bucket_7_ce0_local;
reg   [7:0] bucket_7_address0_local;
wire   [3:0] lshr_ln2_fu_331_p4;
wire   [10:0] add_ln26_fu_365_p2;
wire   [7:0] lshr_ln3_fu_371_p4;
wire   [7:0] or_ln_fu_386_p3;
wire   [31:0] tmp_fu_399_p17;
wire   [31:0] tmp_fu_399_p19;
wire   [7:0] shl_ln1_fu_444_p3;
wire   [7:0] add_ln27_2_fu_451_p2;
wire   [63:0] add_ln25_fu_462_p2;
wire   [3:0] lshr_ln4_fu_467_p4;
wire   [56:0] tmp_4_fu_481_p4;
wire   [10:0] add_ln26_1_fu_497_p2;
wire   [7:0] lshr_ln27_1_fu_502_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_fu_399_p1;
wire   [2:0] tmp_fu_399_p3;
wire   [2:0] tmp_fu_399_p5;
wire  signed [2:0] tmp_fu_399_p7;
wire  signed [2:0] tmp_fu_399_p9;
wire  signed [2:0] tmp_fu_399_p11;
wire  signed [2:0] tmp_fu_399_p13;
wire   [2:0] tmp_fu_399_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 radixID_fu_102 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h3 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.CASE4( 3'h5 ),.din4_WIDTH( 32 ),.CASE5( 3'h6 ),.din5_WIDTH( 32 ),.CASE6( 3'h7 ),.din6_WIDTH( 32 ),.CASE7( 3'h0 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U34(.din0(sum_0_q0),.din1(sum_1_q0),.din2(sum_2_q0),.din3(sum_3_q0),.din4(sum_4_q0),.din5(sum_5_q0),.din6(sum_6_q0),.din7(sum_7_q0),.def(tmp_fu_399_p17),.sel(trunc_ln15_reg_572),.dout(tmp_fu_399_p19));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            radixID_fu_102 <= 64'd1;
        end else if (((icmp_ln25_reg_667 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            radixID_fu_102 <= add_ln25_1_fu_549_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln27_3_reg_676 <= add_ln27_3_fu_530_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln27_reg_637 <= add_ln27_fu_438_p2;
        icmp_ln25_reg_667 <= icmp_ln25_fu_491_p2;
        zext_ln25_reg_655[3 : 0] <= zext_ln25_fu_477_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        radixID_1_reg_566 <= radixID_fu_102;
        shl_ln_reg_582[10 : 4] <= shl_ln_fu_357_p3[10 : 4];
        sum_0_addr_reg_587 <= zext_ln23_fu_341_p1;
        sum_1_addr_reg_592 <= zext_ln23_fu_341_p1;
        sum_2_addr_reg_597 <= zext_ln23_fu_341_p1;
        sum_3_addr_reg_602 <= zext_ln23_fu_341_p1;
        sum_4_addr_reg_607 <= zext_ln23_fu_341_p1;
        sum_5_addr_reg_612 <= zext_ln23_fu_341_p1;
        sum_6_addr_reg_617 <= zext_ln23_fu_341_p1;
        sum_7_addr_reg_622 <= zext_ln23_fu_341_p1;
        trunc_ln15_reg_572 <= trunc_ln15_fu_327_p1;
        trunc_ln26_reg_577 <= trunc_ln26_fu_353_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_315 <= bucket_7_q0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            bucket_7_address0_local = zext_ln27_3_fu_512_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            bucket_7_address0_local = zext_ln27_1_fu_394_p1;
        end else begin
            bucket_7_address0_local = 'bx;
        end
    end else begin
        bucket_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            bucket_7_address1_local = zext_ln27_2_fu_457_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            bucket_7_address1_local = zext_ln27_fu_381_p1;
        end else begin
            bucket_7_address1_local = 'bx;
        end
    end else begin
        bucket_7_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_7_ce1_local = 1'b1;
    end else begin
        bucket_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd5))) begin
        sum_0_address0_local = zext_ln25_reg_655;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd7)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd6)))) begin
        sum_0_address0_local = sum_0_addr_reg_587;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_0_address0_local = zext_ln23_fu_341_p1;
    end else begin
        sum_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd6)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd0)))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd5))) begin
        sum_0_d0_local = add_ln27_4_fu_536_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd6))) begin
        sum_0_d0_local = add_ln27_3_reg_676;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd7))) begin
        sum_0_d0_local = add_ln27_1_fu_517_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd0))) begin
        sum_0_d0_local = add_ln27_reg_637;
    end else begin
        sum_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd6)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd0)))) begin
        sum_0_we0_local = 1'b1;
    end else begin
        sum_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd6))) begin
        sum_1_address0_local = zext_ln25_reg_655;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd7)))) begin
        sum_1_address0_local = sum_1_addr_reg_592;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_1_address0_local = zext_ln23_fu_341_p1;
    end else begin
        sum_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd7)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd1)))) begin
        sum_1_ce0_local = 1'b1;
    end else begin
        sum_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd6))) begin
        sum_1_d0_local = add_ln27_4_fu_536_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd7))) begin
        sum_1_d0_local = add_ln27_3_reg_676;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd0))) begin
        sum_1_d0_local = add_ln27_1_fu_517_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd1))) begin
        sum_1_d0_local = add_ln27_reg_637;
    end else begin
        sum_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd7)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd1)))) begin
        sum_1_we0_local = 1'b1;
    end else begin
        sum_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd7))) begin
        sum_2_address0_local = zext_ln25_reg_655;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd0)))) begin
        sum_2_address0_local = sum_2_addr_reg_597;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_2_address0_local = zext_ln23_fu_341_p1;
    end else begin
        sum_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd0)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd2)))) begin
        sum_2_ce0_local = 1'b1;
    end else begin
        sum_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd7))) begin
        sum_2_d0_local = add_ln27_4_fu_536_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd0))) begin
        sum_2_d0_local = add_ln27_3_reg_676;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd1))) begin
        sum_2_d0_local = add_ln27_1_fu_517_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd2))) begin
        sum_2_d0_local = add_ln27_reg_637;
    end else begin
        sum_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd0)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd2)))) begin
        sum_2_we0_local = 1'b1;
    end else begin
        sum_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd0))) begin
        sum_3_address0_local = zext_ln25_reg_655;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd1)))) begin
        sum_3_address0_local = sum_3_addr_reg_602;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_3_address0_local = zext_ln23_fu_341_p1;
    end else begin
        sum_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd1)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd3)))) begin
        sum_3_ce0_local = 1'b1;
    end else begin
        sum_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd0))) begin
        sum_3_d0_local = add_ln27_4_fu_536_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd1))) begin
        sum_3_d0_local = add_ln27_3_reg_676;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd2))) begin
        sum_3_d0_local = add_ln27_1_fu_517_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd3))) begin
        sum_3_d0_local = add_ln27_reg_637;
    end else begin
        sum_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd1)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd3)))) begin
        sum_3_we0_local = 1'b1;
    end else begin
        sum_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd1))) begin
        sum_4_address0_local = zext_ln25_reg_655;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd2)))) begin
        sum_4_address0_local = sum_4_addr_reg_607;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_4_address0_local = zext_ln23_fu_341_p1;
    end else begin
        sum_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd2)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd3)))) begin
        sum_4_ce0_local = 1'b1;
    end else begin
        sum_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd1))) begin
        sum_4_d0_local = add_ln27_4_fu_536_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd2))) begin
        sum_4_d0_local = add_ln27_3_reg_676;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd3))) begin
        sum_4_d0_local = add_ln27_1_fu_517_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd4))) begin
        sum_4_d0_local = add_ln27_reg_637;
    end else begin
        sum_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd2)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd3)))) begin
        sum_4_we0_local = 1'b1;
    end else begin
        sum_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd2))) begin
        sum_5_address0_local = zext_ln25_reg_655;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd3)))) begin
        sum_5_address0_local = sum_5_addr_reg_612;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_5_address0_local = zext_ln23_fu_341_p1;
    end else begin
        sum_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd3)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd4)))) begin
        sum_5_ce0_local = 1'b1;
    end else begin
        sum_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd2))) begin
        sum_5_d0_local = add_ln27_4_fu_536_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd3))) begin
        sum_5_d0_local = add_ln27_3_reg_676;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd4))) begin
        sum_5_d0_local = add_ln27_1_fu_517_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd5))) begin
        sum_5_d0_local = add_ln27_reg_637;
    end else begin
        sum_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd3)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd4)))) begin
        sum_5_we0_local = 1'b1;
    end else begin
        sum_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd3))) begin
        sum_6_address0_local = zext_ln25_reg_655;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd6)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd4)))) begin
        sum_6_address0_local = sum_6_addr_reg_617;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_6_address0_local = zext_ln23_fu_341_p1;
    end else begin
        sum_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd4)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd6)))) begin
        sum_6_ce0_local = 1'b1;
    end else begin
        sum_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd3))) begin
        sum_6_d0_local = add_ln27_4_fu_536_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd4))) begin
        sum_6_d0_local = add_ln27_3_reg_676;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd5))) begin
        sum_6_d0_local = add_ln27_1_fu_517_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd6))) begin
        sum_6_d0_local = add_ln27_reg_637;
    end else begin
        sum_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd4)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd6)))) begin
        sum_6_we0_local = 1'b1;
    end else begin
        sum_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd4))) begin
        sum_7_address0_local = zext_ln25_reg_655;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd7)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd6)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd5)))) begin
        sum_7_address0_local = sum_7_addr_reg_622;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_7_address0_local = zext_ln23_fu_341_p1;
    end else begin
        sum_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd5)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd6)))) begin
        sum_7_ce0_local = 1'b1;
    end else begin
        sum_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd4))) begin
        sum_7_d0_local = add_ln27_4_fu_536_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd5))) begin
        sum_7_d0_local = add_ln27_3_reg_676;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd7))) begin
        sum_7_d0_local = add_ln27_reg_637;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd6))) begin
        sum_7_d0_local = add_ln27_1_fu_517_p2;
    end else begin
        sum_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd5)) | ((icmp_ln25_reg_667 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln15_reg_572 == 3'd4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln15_reg_572 == 3'd6)))) begin
        sum_7_we0_local = 1'b1;
    end else begin
        sum_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
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
assign add_ln25_1_fu_549_p2 = (radixID_1_reg_566 + 64'd4);
assign add_ln25_fu_462_p2 = (radixID_1_reg_566 + 64'd3);
assign add_ln26_1_fu_497_p2 = (shl_ln_reg_582 + 11'd47);
assign add_ln26_fu_365_p2 = ($signed(shl_ln_fu_357_p3) + $signed(11'd2047));
assign add_ln27_1_fu_517_p2 = (reg_315 + add_ln27_reg_637);
assign add_ln27_2_fu_451_p2 = (shl_ln1_fu_444_p3 + 8'd3);
assign add_ln27_3_fu_530_p2 = (bucket_7_q1 + add_ln27_1_fu_517_p2);
assign add_ln27_4_fu_536_p2 = (reg_315 + add_ln27_3_reg_676);
assign add_ln27_fu_438_p2 = (bucket_7_q1 + tmp_fu_399_p19);
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
assign icmp_ln25_fu_491_p2 = (($signed(tmp_4_fu_481_p4) < $signed(57'd1)) ? 1'b1 : 1'b0);
assign lshr_ln27_1_fu_502_p4 = {{add_ln26_1_fu_497_p2[10:3]}};
assign lshr_ln2_fu_331_p4 = {{radixID_fu_102[6:3]}};
assign lshr_ln3_fu_371_p4 = {{add_ln26_fu_365_p2[10:3]}};
assign lshr_ln4_fu_467_p4 = {{add_ln25_fu_462_p2[6:3]}};
assign or_ln_fu_386_p3 = {{trunc_ln26_fu_353_p1}, {1'd1}};
assign shl_ln1_fu_444_p3 = {{trunc_ln26_reg_577}, {1'd0}};
assign shl_ln_fu_357_p3 = {{trunc_ln26_fu_353_p1}, {4'd0}};
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
assign tmp_4_fu_481_p4 = {{add_ln25_fu_462_p2[63:7]}};
assign tmp_fu_399_p17 = 'bx;
assign trunc_ln15_fu_327_p1 = radixID_fu_102[2:0];
assign trunc_ln26_fu_353_p1 = radixID_fu_102[6:0];
assign zext_ln23_fu_341_p1 = lshr_ln2_fu_331_p4;
assign zext_ln25_fu_477_p1 = lshr_ln4_fu_467_p4;
assign zext_ln27_1_fu_394_p1 = or_ln_fu_386_p3;
assign zext_ln27_2_fu_457_p1 = add_ln27_2_fu_451_p2;
assign zext_ln27_3_fu_512_p1 = lshr_ln27_1_fu_502_p4;
assign zext_ln27_fu_381_p1 = lshr_ln3_fu_371_p4;
always @ (posedge ap_clk) begin
    shl_ln_reg_582[3:0] <= 4'b0000;
    zext_ln25_reg_655[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 