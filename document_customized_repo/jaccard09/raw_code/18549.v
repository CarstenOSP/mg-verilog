module ss_sort_ss_sort_Pipeline_last_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_3_q0,bucket_3_address1,bucket_3_ce1,bucket_3_we1,bucket_3_d1,bucket_3_q1,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_2_q0,bucket_2_address1,bucket_2_ce1,bucket_2_we1,bucket_2_d1,bucket_2_q1,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_1_address1,bucket_1_ce1,bucket_1_we1,bucket_1_d1,bucket_1_q1,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_0_address1,bucket_0_ce1,bucket_0_we1,bucket_0_d1,bucket_0_q1,sum_0_address0,sum_0_ce0,sum_0_q0,sum_1_address0,sum_1_ce0,sum_1_q0,sum_2_address0,sum_2_ce0,sum_2_q0,sum_3_address0,sum_3_ce0,sum_3_q0); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] bucket_3_address0;
output   bucket_3_ce0;
output   bucket_3_we0;
output  [31:0] bucket_3_d0;
input  [31:0] bucket_3_q0;
output  [8:0] bucket_3_address1;
output   bucket_3_ce1;
output   bucket_3_we1;
output  [31:0] bucket_3_d1;
input  [31:0] bucket_3_q1;
output  [8:0] bucket_2_address0;
output   bucket_2_ce0;
output   bucket_2_we0;
output  [31:0] bucket_2_d0;
input  [31:0] bucket_2_q0;
output  [8:0] bucket_2_address1;
output   bucket_2_ce1;
output   bucket_2_we1;
output  [31:0] bucket_2_d1;
input  [31:0] bucket_2_q1;
output  [8:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [8:0] bucket_1_address1;
output   bucket_1_ce1;
output   bucket_1_we1;
output  [31:0] bucket_1_d1;
input  [31:0] bucket_1_q1;
output  [8:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [8:0] bucket_0_address1;
output   bucket_0_ce1;
output   bucket_0_we1;
output  [31:0] bucket_0_d1;
input  [31:0] bucket_0_q1;
output  [4:0] sum_0_address0;
output   sum_0_ce0;
input  [31:0] sum_0_q0;
output  [4:0] sum_1_address0;
output   sum_1_ce0;
input  [31:0] sum_1_q0;
output  [4:0] sum_2_address0;
output   sum_2_ce0;
input  [31:0] sum_2_q0;
output  [4:0] sum_3_address0;
output   sum_3_ce0;
input  [31:0] sum_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln34_fu_294_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state4;
wire   [1:0] trunc_ln34_fu_306_p1;
reg   [1:0] trunc_ln34_reg_512;
wire   [6:0] empty_fu_328_p1;
reg   [6:0] empty_reg_537;
reg   [8:0] bucket_0_addr_reg_543;
reg   [8:0] bucket_1_addr_reg_548;
reg   [8:0] bucket_2_addr_reg_553;
reg   [8:0] bucket_3_addr_reg_558;
reg   [8:0] bucket_0_addr_7_reg_563;
reg   [8:0] bucket_1_addr_7_reg_568;
reg   [8:0] bucket_2_addr_7_reg_573;
reg   [8:0] bucket_3_addr_7_reg_578;
wire   [31:0] tmp_9_fu_369_p11;
reg   [31:0] tmp_9_reg_583;
wire    ap_CS_fsm_state2;
reg   [31:0] bucket_0_load_6_reg_603;
reg   [31:0] bucket_1_load_6_reg_608;
reg   [31:0] bucket_2_load_6_reg_613;
reg   [31:0] bucket_3_load_reg_618;
reg   [31:0] bucket_0_load_reg_623;
reg   [31:0] bucket_1_load_reg_628;
reg   [31:0] bucket_2_load_reg_633;
reg   [31:0] bucket_3_load_7_reg_638;
reg   [8:0] bucket_0_addr_8_reg_643;
reg   [8:0] bucket_1_addr_8_reg_648;
reg   [8:0] bucket_2_addr_8_reg_653;
reg   [8:0] bucket_3_addr_8_reg_658;
reg   [8:0] bucket_0_addr_9_reg_663;
reg   [8:0] bucket_1_addr_9_reg_668;
reg   [8:0] bucket_2_addr_9_reg_673;
reg   [8:0] bucket_3_addr_9_reg_678;
wire   [31:0] add_ln37_8_fu_462_p2;
reg   [31:0] add_ln37_8_reg_683;
wire    ap_CS_fsm_state3;
wire   [31:0] add_ln37_9_fu_467_p2;
reg   [31:0] add_ln37_9_reg_688;
wire   [31:0] add_ln37_10_fu_472_p2;
reg   [31:0] add_ln37_10_reg_693;
wire   [31:0] add_ln37_11_fu_477_p2;
reg   [31:0] add_ln37_11_reg_698;
wire   [31:0] add_ln37_12_fu_482_p2;
reg   [31:0] add_ln37_12_reg_703;
wire   [31:0] add_ln37_13_fu_487_p2;
reg   [31:0] add_ln37_13_reg_708;
wire   [31:0] add_ln37_14_fu_492_p2;
reg   [31:0] add_ln37_14_reg_713;
wire   [31:0] add_ln37_15_fu_497_p2;
reg   [31:0] add_ln37_15_reg_718;
wire   [63:0] zext_ln33_fu_320_p1;
wire   [63:0] zext_ln37_fu_340_p1;
wire   [63:0] zext_ln37_1_fu_356_p1;
wire   [63:0] zext_ln37_2_fu_399_p1;
wire   [63:0] zext_ln37_3_fu_414_p1;
reg   [7:0] radixID_fu_66;
wire   [7:0] add_ln34_fu_300_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_radixID_2;
reg    sum_0_ce0_local;
reg    sum_1_ce0_local;
reg    sum_2_ce0_local;
reg    sum_3_ce0_local;
reg    bucket_0_ce1_local;
reg   [8:0] bucket_0_address1_local;
reg    bucket_0_ce0_local;
reg   [8:0] bucket_0_address0_local;
reg    bucket_0_we1_local;
reg   [31:0] bucket_0_d1_local;
wire   [31:0] add_ln37_fu_422_p2;
reg    bucket_0_we0_local;
reg   [31:0] bucket_0_d0_local;
wire   [31:0] add_ln37_4_fu_442_p2;
reg    bucket_1_ce1_local;
reg   [8:0] bucket_1_address1_local;
reg    bucket_1_ce0_local;
reg   [8:0] bucket_1_address0_local;
reg    bucket_1_we1_local;
reg   [31:0] bucket_1_d1_local;
wire   [31:0] add_ln37_1_fu_427_p2;
reg    bucket_1_we0_local;
reg   [31:0] bucket_1_d0_local;
wire   [31:0] add_ln37_5_fu_447_p2;
reg    bucket_2_ce1_local;
reg   [8:0] bucket_2_address1_local;
reg    bucket_2_ce0_local;
reg   [8:0] bucket_2_address0_local;
reg    bucket_2_we1_local;
reg   [31:0] bucket_2_d1_local;
wire   [31:0] add_ln37_2_fu_432_p2;
reg    bucket_2_we0_local;
reg   [31:0] bucket_2_d0_local;
wire   [31:0] add_ln37_6_fu_452_p2;
reg    bucket_3_ce1_local;
reg   [8:0] bucket_3_address1_local;
reg    bucket_3_ce0_local;
reg   [8:0] bucket_3_address0_local;
reg    bucket_3_we1_local;
reg   [31:0] bucket_3_d1_local;
wire   [31:0] add_ln37_3_fu_437_p2;
reg    bucket_3_we0_local;
reg   [31:0] bucket_3_d0_local;
wire   [31:0] add_ln37_7_fu_457_p2;
wire   [4:0] lshr_ln5_fu_310_p4;
wire   [8:0] p_udiv4_fu_332_p3;
wire   [8:0] or_ln_fu_348_p3;
wire   [31:0] tmp_9_fu_369_p9;
wire   [8:0] or_ln37_1_fu_392_p3;
wire   [8:0] or_ln37_2_fu_407_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_9_fu_369_p1;
wire   [1:0] tmp_9_fu_369_p3;
wire  signed [1:0] tmp_9_fu_369_p5;
wire  signed [1:0] tmp_9_fu_369_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 radixID_fu_66 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_9_2_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_x_U40(.din0(sum_0_q0),.din1(sum_1_q0),.din2(sum_2_q0),.din3(sum_3_q0),.def(tmp_9_fu_369_p9),.sel(trunc_ln34_reg_512),.dout(tmp_9_fu_369_p11));
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
        if ((icmp_ln34_fu_294_p2 == 1'd0)) begin
            radixID_fu_66 <= add_ln34_fu_300_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            radixID_fu_66 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln37_10_reg_693 <= add_ln37_10_fu_472_p2;
        add_ln37_11_reg_698 <= add_ln37_11_fu_477_p2;
        add_ln37_12_reg_703 <= add_ln37_12_fu_482_p2;
        add_ln37_13_reg_708 <= add_ln37_13_fu_487_p2;
        add_ln37_14_reg_713 <= add_ln37_14_fu_492_p2;
        add_ln37_15_reg_718 <= add_ln37_15_fu_497_p2;
        add_ln37_8_reg_683 <= add_ln37_8_fu_462_p2;
        add_ln37_9_reg_688 <= add_ln37_9_fu_467_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_0_addr_7_reg_563[8 : 2] <= zext_ln37_1_fu_356_p1[8 : 2];
        bucket_0_addr_reg_543[8 : 2] <= zext_ln37_fu_340_p1[8 : 2];
        bucket_1_addr_7_reg_568[8 : 2] <= zext_ln37_1_fu_356_p1[8 : 2];
        bucket_1_addr_reg_548[8 : 2] <= zext_ln37_fu_340_p1[8 : 2];
        bucket_2_addr_7_reg_573[8 : 2] <= zext_ln37_1_fu_356_p1[8 : 2];
        bucket_2_addr_reg_553[8 : 2] <= zext_ln37_fu_340_p1[8 : 2];
        bucket_3_addr_7_reg_578[8 : 2] <= zext_ln37_1_fu_356_p1[8 : 2];
        bucket_3_addr_reg_558[8 : 2] <= zext_ln37_fu_340_p1[8 : 2];
        empty_reg_537 <= empty_fu_328_p1;
        trunc_ln34_reg_512 <= trunc_ln34_fu_306_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_0_addr_8_reg_643[8 : 2] <= zext_ln37_2_fu_399_p1[8 : 2];
        bucket_0_addr_9_reg_663[8 : 2] <= zext_ln37_3_fu_414_p1[8 : 2];
        bucket_0_load_6_reg_603 <= bucket_0_q1;
        bucket_0_load_reg_623 <= bucket_0_q0;
        bucket_1_addr_8_reg_648[8 : 2] <= zext_ln37_2_fu_399_p1[8 : 2];
        bucket_1_addr_9_reg_668[8 : 2] <= zext_ln37_3_fu_414_p1[8 : 2];
        bucket_1_load_6_reg_608 <= bucket_1_q1;
        bucket_1_load_reg_628 <= bucket_1_q0;
        bucket_2_addr_8_reg_653[8 : 2] <= zext_ln37_2_fu_399_p1[8 : 2];
        bucket_2_addr_9_reg_673[8 : 2] <= zext_ln37_3_fu_414_p1[8 : 2];
        bucket_2_load_6_reg_613 <= bucket_2_q1;
        bucket_2_load_reg_633 <= bucket_2_q0;
        bucket_3_addr_8_reg_658[8 : 2] <= zext_ln37_2_fu_399_p1[8 : 2];
        bucket_3_addr_9_reg_678[8 : 2] <= zext_ln37_3_fu_414_p1[8 : 2];
        bucket_3_load_7_reg_638 <= bucket_3_q0;
        bucket_3_load_reg_618 <= bucket_3_q1;
        tmp_9_reg_583 <= tmp_9_fu_369_p11;
    end
end
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
always @ (*) begin
    if (((icmp_ln34_fu_294_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_radixID_2 = 8'd0;
    end else begin
        ap_sig_allocacmp_radixID_2 = radixID_fu_66;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_0_address0_local = bucket_0_addr_9_reg_663;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_address0_local = bucket_0_addr_7_reg_563;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_0_address0_local = zext_ln37_3_fu_414_p1;
    end else if (((icmp_ln34_fu_294_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_0_address0_local = zext_ln37_1_fu_356_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_0_address1_local = bucket_0_addr_8_reg_643;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_address1_local = bucket_0_addr_reg_543;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_0_address1_local = zext_ln37_2_fu_399_p1;
    end else if (((icmp_ln34_fu_294_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_0_address1_local = zext_ln37_fu_340_p1;
    end else begin
        bucket_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln34_fu_294_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln34_fu_294_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_0_ce1_local = 1'b1;
    end else begin
        bucket_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_0_d0_local = add_ln37_12_reg_703;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_d0_local = add_ln37_4_fu_442_p2;
    end else begin
        bucket_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_0_d1_local = add_ln37_8_reg_683;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_d1_local = add_ln37_fu_422_p2;
    end else begin
        bucket_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        bucket_0_we1_local = 1'b1;
    end else begin
        bucket_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_1_address0_local = bucket_1_addr_9_reg_668;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_address0_local = bucket_1_addr_7_reg_568;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_1_address0_local = zext_ln37_3_fu_414_p1;
    end else if (((icmp_ln34_fu_294_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_1_address0_local = zext_ln37_1_fu_356_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_1_address1_local = bucket_1_addr_8_reg_648;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_address1_local = bucket_1_addr_reg_548;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_1_address1_local = zext_ln37_2_fu_399_p1;
    end else if (((icmp_ln34_fu_294_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_1_address1_local = zext_ln37_fu_340_p1;
    end else begin
        bucket_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln34_fu_294_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln34_fu_294_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_1_ce1_local = 1'b1;
    end else begin
        bucket_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_1_d0_local = add_ln37_13_reg_708;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_d0_local = add_ln37_5_fu_447_p2;
    end else begin
        bucket_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_1_d1_local = add_ln37_9_reg_688;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_d1_local = add_ln37_1_fu_427_p2;
    end else begin
        bucket_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        bucket_1_we1_local = 1'b1;
    end else begin
        bucket_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_2_address0_local = bucket_2_addr_9_reg_673;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_2_address0_local = bucket_2_addr_7_reg_573;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_2_address0_local = zext_ln37_3_fu_414_p1;
    end else if (((icmp_ln34_fu_294_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_2_address0_local = zext_ln37_1_fu_356_p1;
    end else begin
        bucket_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_2_address1_local = bucket_2_addr_8_reg_653;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_2_address1_local = bucket_2_addr_reg_553;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_2_address1_local = zext_ln37_2_fu_399_p1;
    end else if (((icmp_ln34_fu_294_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_2_address1_local = zext_ln37_fu_340_p1;
    end else begin
        bucket_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln34_fu_294_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_2_ce0_local = 1'b1;
    end else begin
        bucket_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln34_fu_294_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_2_ce1_local = 1'b1;
    end else begin
        bucket_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_2_d0_local = add_ln37_14_reg_713;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_2_d0_local = add_ln37_6_fu_452_p2;
    end else begin
        bucket_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_2_d1_local = add_ln37_10_reg_693;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_2_d1_local = add_ln37_2_fu_432_p2;
    end else begin
        bucket_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        bucket_2_we0_local = 1'b1;
    end else begin
        bucket_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        bucket_2_we1_local = 1'b1;
    end else begin
        bucket_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_3_address0_local = bucket_3_addr_9_reg_678;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_address0_local = bucket_3_addr_7_reg_578;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_3_address0_local = zext_ln37_3_fu_414_p1;
    end else if (((icmp_ln34_fu_294_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_3_address0_local = zext_ln37_1_fu_356_p1;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_3_address1_local = bucket_3_addr_8_reg_658;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_address1_local = bucket_3_addr_reg_558;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_3_address1_local = zext_ln37_2_fu_399_p1;
    end else if (((icmp_ln34_fu_294_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_3_address1_local = zext_ln37_fu_340_p1;
    end else begin
        bucket_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln34_fu_294_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln34_fu_294_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_3_ce1_local = 1'b1;
    end else begin
        bucket_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_3_d0_local = add_ln37_15_reg_718;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_d0_local = add_ln37_7_fu_457_p2;
    end else begin
        bucket_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_3_d1_local = add_ln37_11_reg_698;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_d1_local = add_ln37_3_fu_437_p2;
    end else begin
        bucket_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        bucket_3_we0_local = 1'b1;
    end else begin
        bucket_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        bucket_3_we1_local = 1'b1;
    end else begin
        bucket_3_we1_local = 1'b0;
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
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_2_ce0_local = 1'b1;
    end else begin
        sum_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_3_ce0_local = 1'b1;
    end else begin
        sum_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln34_fu_294_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln34_fu_300_p2 = (ap_sig_allocacmp_radixID_2 + 8'd1);
assign add_ln37_10_fu_472_p2 = (bucket_2_q1 + tmp_9_reg_583);
assign add_ln37_11_fu_477_p2 = (bucket_3_q1 + tmp_9_reg_583);
assign add_ln37_12_fu_482_p2 = (bucket_0_q0 + tmp_9_reg_583);
assign add_ln37_13_fu_487_p2 = (bucket_1_q0 + tmp_9_reg_583);
assign add_ln37_14_fu_492_p2 = (bucket_2_q0 + tmp_9_reg_583);
assign add_ln37_15_fu_497_p2 = (bucket_3_q0 + tmp_9_reg_583);
assign add_ln37_1_fu_427_p2 = (bucket_1_load_6_reg_608 + tmp_9_reg_583);
assign add_ln37_2_fu_432_p2 = (bucket_2_load_6_reg_613 + tmp_9_reg_583);
assign add_ln37_3_fu_437_p2 = (bucket_3_load_reg_618 + tmp_9_reg_583);
assign add_ln37_4_fu_442_p2 = (bucket_0_load_reg_623 + tmp_9_reg_583);
assign add_ln37_5_fu_447_p2 = (bucket_1_load_reg_628 + tmp_9_reg_583);
assign add_ln37_6_fu_452_p2 = (bucket_2_load_reg_633 + tmp_9_reg_583);
assign add_ln37_7_fu_457_p2 = (bucket_3_load_7_reg_638 + tmp_9_reg_583);
assign add_ln37_8_fu_462_p2 = (bucket_0_q1 + tmp_9_reg_583);
assign add_ln37_9_fu_467_p2 = (bucket_1_q1 + tmp_9_reg_583);
assign add_ln37_fu_422_p2 = (bucket_0_load_6_reg_603 + tmp_9_reg_583);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
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
assign bucket_2_address0 = bucket_2_address0_local;
assign bucket_2_address1 = bucket_2_address1_local;
assign bucket_2_ce0 = bucket_2_ce0_local;
assign bucket_2_ce1 = bucket_2_ce1_local;
assign bucket_2_d0 = bucket_2_d0_local;
assign bucket_2_d1 = bucket_2_d1_local;
assign bucket_2_we0 = bucket_2_we0_local;
assign bucket_2_we1 = bucket_2_we1_local;
assign bucket_3_address0 = bucket_3_address0_local;
assign bucket_3_address1 = bucket_3_address1_local;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_ce1 = bucket_3_ce1_local;
assign bucket_3_d0 = bucket_3_d0_local;
assign bucket_3_d1 = bucket_3_d1_local;
assign bucket_3_we0 = bucket_3_we0_local;
assign bucket_3_we1 = bucket_3_we1_local;
assign empty_fu_328_p1 = ap_sig_allocacmp_radixID_2[6:0];
assign icmp_ln34_fu_294_p2 = ((ap_sig_allocacmp_radixID_2 == 8'd128) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_310_p4 = {{ap_sig_allocacmp_radixID_2[6:2]}};
assign or_ln37_1_fu_392_p3 = {{empty_reg_537}, {2'd2}};
assign or_ln37_2_fu_407_p3 = {{empty_reg_537}, {2'd3}};
assign or_ln_fu_348_p3 = {{empty_fu_328_p1}, {2'd1}};
assign p_udiv4_fu_332_p3 = {{empty_fu_328_p1}, {2'd0}};
assign sum_0_address0 = zext_ln33_fu_320_p1;
assign sum_0_ce0 = sum_0_ce0_local;
assign sum_1_address0 = zext_ln33_fu_320_p1;
assign sum_1_ce0 = sum_1_ce0_local;
assign sum_2_address0 = zext_ln33_fu_320_p1;
assign sum_2_ce0 = sum_2_ce0_local;
assign sum_3_address0 = zext_ln33_fu_320_p1;
assign sum_3_ce0 = sum_3_ce0_local;
assign tmp_9_fu_369_p9 = 'bx;
assign trunc_ln34_fu_306_p1 = ap_sig_allocacmp_radixID_2[1:0];
assign zext_ln33_fu_320_p1 = lshr_ln5_fu_310_p4;
assign zext_ln37_1_fu_356_p1 = or_ln_fu_348_p3;
assign zext_ln37_2_fu_399_p1 = or_ln37_1_fu_392_p3;
assign zext_ln37_3_fu_414_p1 = or_ln37_2_fu_407_p3;
assign zext_ln37_fu_340_p1 = p_udiv4_fu_332_p3;
always @ (posedge ap_clk) begin
    bucket_0_addr_reg_543[1:0] <= 2'b00;
    bucket_1_addr_reg_548[1:0] <= 2'b00;
    bucket_2_addr_reg_553[1:0] <= 2'b00;
    bucket_3_addr_reg_558[1:0] <= 2'b00;
    bucket_0_addr_7_reg_563[1:0] <= 2'b01;
    bucket_1_addr_7_reg_568[1:0] <= 2'b01;
    bucket_2_addr_7_reg_573[1:0] <= 2'b01;
    bucket_3_addr_7_reg_578[1:0] <= 2'b01;
    bucket_0_addr_8_reg_643[1:0] <= 2'b10;
    bucket_1_addr_8_reg_648[1:0] <= 2'b10;
    bucket_2_addr_8_reg_653[1:0] <= 2'b10;
    bucket_3_addr_8_reg_658[1:0] <= 2'b10;
    bucket_0_addr_9_reg_663[1:0] <= 2'b11;
    bucket_1_addr_9_reg_668[1:0] <= 2'b11;
    bucket_2_addr_9_reg_673[1:0] <= 2'b11;
    bucket_3_addr_9_reg_678[1:0] <= 2'b11;
end
endmodule 