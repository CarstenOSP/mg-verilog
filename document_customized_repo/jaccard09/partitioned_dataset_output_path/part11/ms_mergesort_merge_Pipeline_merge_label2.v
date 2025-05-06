
module ms_mergesort_merge_Pipeline_merge_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,j,stop,a_0_address0,a_0_ce0,a_0_q0,a_1_address0,a_1_ce0,a_1_q0,a_2_address0,a_2_ce0,a_2_q0,a_3_address0,a_3_ce0,a_3_q0,add9,temp_address0,temp_ce0,temp_we0,temp_d0,temp_address1,temp_ce1,temp_we1,temp_d1,temp_1_address0,temp_1_ce0,temp_1_we0,temp_1_d0,temp_1_address1,temp_1_ce1,temp_1_we1,temp_1_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] j;
input  [31:0] stop;
output  [8:0] a_0_address0;
output   a_0_ce0;
input  [31:0] a_0_q0;
output  [8:0] a_1_address0;
output   a_1_ce0;
input  [31:0] a_1_q0;
output  [8:0] a_2_address0;
output   a_2_ce0;
input  [31:0] a_2_q0;
output  [8:0] a_3_address0;
output   a_3_ce0;
input  [31:0] a_3_q0;
input  [10:0] add9;
output  [9:0] temp_address0;
output   temp_ce0;
output   temp_we0;
output  [31:0] temp_d0;
output  [9:0] temp_address1;
output   temp_ce1;
output   temp_we1;
output  [31:0] temp_d1;
output  [9:0] temp_1_address0;
output   temp_1_ce0;
output   temp_1_we0;
output  [31:0] temp_1_d0;
output  [9:0] temp_1_address1;
output   temp_1_ce1;
output   temp_1_we1;
output  [31:0] temp_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln11_3_fu_408_p2;
wire   [0:0] icmp_ln11_2_fu_366_p2;
wire   [0:0] icmp_ln11_1_fu_340_p2;
wire   [0:0] icmp_ln11_fu_330_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] j_10_reg_657;
reg   [0:0] icmp_ln11_reg_664;
reg   [0:0] icmp_ln11_reg_664_pp0_iter1_reg;
reg   [0:0] icmp_ln11_reg_664_pp0_iter2_reg;
wire   [1:0] trunc_ln11_fu_336_p1;
reg   [1:0] trunc_ln11_reg_668;
reg   [1:0] trunc_ln11_reg_668_pp0_iter1_reg;
reg   [0:0] icmp_ln11_1_reg_676;
reg   [0:0] icmp_ln11_1_reg_676_pp0_iter1_reg;
reg   [0:0] icmp_ln11_1_reg_676_pp0_iter2_reg;
reg   [8:0] lshr_ln11_1_reg_680;
reg   [0:0] icmp_ln11_2_reg_685;
reg   [0:0] icmp_ln11_2_reg_685_pp0_iter1_reg;
reg   [0:0] icmp_ln11_2_reg_685_pp0_iter2_reg;
reg   [9:0] lshr_ln12_2_reg_689;
reg   [9:0] lshr_ln12_2_reg_689_pp0_iter1_reg;
reg   [9:0] lshr_ln12_2_reg_689_pp0_iter2_reg;
reg   [8:0] lshr_ln11_2_reg_694;
reg   [0:0] icmp_ln11_3_reg_699;
reg   [0:0] icmp_ln11_3_reg_699_pp0_iter1_reg;
reg   [9:0] lshr_ln12_3_reg_703;
reg   [9:0] lshr_ln12_3_reg_703_pp0_iter1_reg;
reg   [9:0] lshr_ln12_3_reg_703_pp0_iter2_reg;
wire   [0:0] trunc_ln12_fu_455_p1;
reg   [0:0] trunc_ln12_reg_728;
reg   [0:0] trunc_ln12_reg_728_pp0_iter2_reg;
reg   [9:0] lshr_ln_reg_732;
reg   [9:0] lshr_ln_reg_732_pp0_iter2_reg;
reg   [9:0] lshr_ln12_1_reg_757;
reg   [9:0] lshr_ln12_1_reg_757_pp0_iter2_reg;
wire   [31:0] tmp_4_fu_532_p11;
reg   [31:0] tmp_4_reg_802;
wire   [31:0] tmp_5_fu_555_p11;
reg   [31:0] tmp_5_reg_808;
wire   [31:0] tmp_6_fu_578_p11;
reg   [31:0] tmp_6_reg_814;
wire   [31:0] tmp_7_fu_601_p11;
reg   [31:0] tmp_7_reg_820;
wire   [63:0] zext_ln5_4_fu_442_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln11_fu_485_p1;
wire   [63:0] zext_ln11_1_fu_508_p1;
wire   [63:0] zext_ln11_2_fu_515_p1;
wire   [63:0] zext_ln12_fu_624_p1;
wire   [63:0] zext_ln12_1_fu_629_p1;
wire   [63:0] zext_ln12_2_fu_634_p1;
wire   [63:0] zext_ln12_3_fu_639_p1;
reg   [31:0] j_1_fu_70;
wire   [31:0] add_ln11_3_fu_522_p2;
reg   [31:0] ap_sig_allocacmp_j_10;
wire    ap_loop_init;
reg    a_0_ce0_local;
reg   [8:0] a_0_address0_local;
reg    a_1_ce0_local;
reg   [8:0] a_1_address0_local;
reg    a_2_ce0_local;
reg   [8:0] a_2_address0_local;
reg    a_3_ce0_local;
reg   [8:0] a_3_address0_local;
reg    temp_we1_local;
reg   [31:0] temp_d1_local;
reg    temp_ce1_local;
reg   [9:0] temp_address1_local;
reg    temp_we0_local;
reg   [31:0] temp_d0_local;
reg    temp_ce0_local;
reg   [9:0] temp_address0_local;
reg    ap_predicate_pred373_state4;
reg    temp_1_we1_local;
reg   [31:0] temp_1_d1_local;
reg    temp_1_ce1_local;
reg   [9:0] temp_1_address1_local;
reg    temp_1_we0_local;
reg   [31:0] temp_1_d0_local;
reg    temp_1_ce0_local;
reg   [9:0] temp_1_address0_local;
reg    ap_predicate_pred399_state4;
wire   [31:0] add_ln11_1_fu_346_p2;
wire   [10:0] trunc_ln11_2_fu_352_p1;
wire   [10:0] sub_ln12_2_fu_372_p2;
wire   [31:0] add_ln11_2_fu_388_p2;
wire   [10:0] trunc_ln11_3_fu_394_p1;
wire   [10:0] sub_ln12_3_fu_414_p2;
wire   [8:0] lshr_ln5_2_fu_433_p4;
wire   [10:0] trunc_ln11_1_fu_430_p1;
wire   [10:0] sub_ln12_fu_450_p2;
wire   [10:0] add_ln11_fu_469_p2;
wire   [8:0] lshr_ln1_fu_475_p4;
wire   [10:0] sub_ln12_1_fu_493_p2;
wire   [31:0] tmp_4_fu_532_p9;
wire   [31:0] tmp_5_fu_555_p9;
wire   [31:0] tmp_6_fu_578_p9;
wire   [31:0] tmp_7_fu_601_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_614;
reg    ap_condition_619;
reg    ap_condition_611;
reg    ap_condition_625;
reg    ap_condition_628;
reg    ap_condition_632;
reg    ap_condition_635;
reg    ap_condition_639;
reg    ap_condition_642;
reg    ap_condition_648;
reg    ap_condition_389;
reg    ap_condition_264;
reg    ap_condition_359;
wire   [1:0] tmp_4_fu_532_p1;
wire   [1:0] tmp_4_fu_532_p3;
wire  signed [1:0] tmp_4_fu_532_p5;
wire  signed [1:0] tmp_4_fu_532_p7;
wire  signed [1:0] tmp_5_fu_555_p1;
wire   [1:0] tmp_5_fu_555_p3;
wire   [1:0] tmp_5_fu_555_p5;
wire  signed [1:0] tmp_5_fu_555_p7;
wire  signed [1:0] tmp_6_fu_578_p1;
wire  signed [1:0] tmp_6_fu_578_p3;
wire   [1:0] tmp_6_fu_578_p5;
wire   [1:0] tmp_6_fu_578_p7;
wire   [1:0] tmp_7_fu_601_p1;
wire  signed [1:0] tmp_7_fu_601_p3;
wire  signed [1:0] tmp_7_fu_601_p5;
wire   [1:0] tmp_7_fu_601_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 j_1_fu_70 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U17(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_4_fu_532_p9),.sel(trunc_ln11_reg_668_pp0_iter1_reg),.dout(tmp_4_fu_532_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U18(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_5_fu_555_p9),.sel(trunc_ln11_reg_668_pp0_iter1_reg),.dout(tmp_5_fu_555_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U19(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_6_fu_578_p9),.sel(trunc_ln11_reg_668_pp0_iter1_reg),.dout(tmp_6_fu_578_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U20(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_7_fu_601_p9),.sel(trunc_ln11_reg_668_pp0_iter1_reg),.dout(tmp_7_fu_601_p11));
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_1_fu_70 <= j;
        end else if ((1'b1 == ap_condition_648)) begin
            j_1_fu_70 <= add_ln11_3_fu_522_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln11_1_reg_676 <= icmp_ln11_1_fu_340_p2;
        icmp_ln11_1_reg_676_pp0_iter1_reg <= icmp_ln11_1_reg_676;
        icmp_ln11_2_reg_685 <= icmp_ln11_2_fu_366_p2;
        icmp_ln11_2_reg_685_pp0_iter1_reg <= icmp_ln11_2_reg_685;
        icmp_ln11_3_reg_699 <= icmp_ln11_3_fu_408_p2;
        icmp_ln11_3_reg_699_pp0_iter1_reg <= icmp_ln11_3_reg_699;
        icmp_ln11_reg_664 <= icmp_ln11_fu_330_p2;
        icmp_ln11_reg_664_pp0_iter1_reg <= icmp_ln11_reg_664;
        j_10_reg_657 <= ap_sig_allocacmp_j_10;
        lshr_ln11_1_reg_680 <= {{add_ln11_1_fu_346_p2[10:2]}};
        lshr_ln11_2_reg_694 <= {{add_ln11_2_fu_388_p2[10:2]}};
        lshr_ln12_1_reg_757 <= {{sub_ln12_1_fu_493_p2[10:1]}};
        lshr_ln12_2_reg_689 <= {{sub_ln12_2_fu_372_p2[10:1]}};
        lshr_ln12_2_reg_689_pp0_iter1_reg <= lshr_ln12_2_reg_689;
        lshr_ln12_3_reg_703 <= {{sub_ln12_3_fu_414_p2[10:1]}};
        lshr_ln12_3_reg_703_pp0_iter1_reg <= lshr_ln12_3_reg_703;
        lshr_ln_reg_732 <= {{sub_ln12_fu_450_p2[10:1]}};
        trunc_ln11_reg_668 <= trunc_ln11_fu_336_p1;
        trunc_ln11_reg_668_pp0_iter1_reg <= trunc_ln11_reg_668;
        trunc_ln12_reg_728 <= trunc_ln12_fu_455_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_predicate_pred373_state4 <= ((trunc_ln12_reg_728 == 1'd1) & (icmp_ln11_3_reg_699_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_685_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_676_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_664_pp0_iter1_reg == 1'd0));
        ap_predicate_pred399_state4 <= ((trunc_ln12_reg_728 == 1'd0) & (icmp_ln11_3_reg_699_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_685_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_676_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_664_pp0_iter1_reg == 1'd0));
        icmp_ln11_1_reg_676_pp0_iter2_reg <= icmp_ln11_1_reg_676_pp0_iter1_reg;
        icmp_ln11_2_reg_685_pp0_iter2_reg <= icmp_ln11_2_reg_685_pp0_iter1_reg;
        icmp_ln11_reg_664_pp0_iter2_reg <= icmp_ln11_reg_664_pp0_iter1_reg;
        lshr_ln12_1_reg_757_pp0_iter2_reg <= lshr_ln12_1_reg_757;
        lshr_ln12_2_reg_689_pp0_iter2_reg <= lshr_ln12_2_reg_689_pp0_iter1_reg;
        lshr_ln12_3_reg_703_pp0_iter2_reg <= lshr_ln12_3_reg_703_pp0_iter1_reg;
        lshr_ln_reg_732_pp0_iter2_reg <= lshr_ln_reg_732;
        tmp_4_reg_802 <= tmp_4_fu_532_p11;
        tmp_5_reg_808 <= tmp_5_fu_555_p11;
        tmp_6_reg_814 <= tmp_6_fu_578_p11;
        tmp_7_reg_820 <= tmp_7_fu_601_p11;
        trunc_ln12_reg_728_pp0_iter2_reg <= trunc_ln12_reg_728;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_611)) begin
        if ((1'b1 == ap_condition_619)) begin
            a_0_address0_local = zext_ln11_2_fu_515_p1;
        end else if ((1'b1 == ap_condition_614)) begin
            a_0_address0_local = zext_ln11_1_fu_508_p1;
        end else if (((icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd3))) begin
            a_0_address0_local = zext_ln11_fu_485_p1;
        end else if ((trunc_ln11_reg_668 == 2'd0)) begin
            a_0_address0_local = zext_ln5_4_fu_442_p1;
        end else begin
            a_0_address0_local = 'bx;
        end
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_699 == 1'd0) & (icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd1) & (icmp_ln11_reg_664 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd2) & (icmp_ln11_reg_664 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd3) & (icmp_ln11_reg_664 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_668 == 2'd0) & (icmp_ln11_reg_664 == 1'd0)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_611)) begin
        if ((1'b1 == ap_condition_628)) begin
            a_1_address0_local = zext_ln11_2_fu_515_p1;
        end else if ((1'b1 == ap_condition_625)) begin
            a_1_address0_local = zext_ln11_1_fu_508_p1;
        end else if (((icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd0))) begin
            a_1_address0_local = zext_ln11_fu_485_p1;
        end else if ((trunc_ln11_reg_668 == 2'd1)) begin
            a_1_address0_local = zext_ln5_4_fu_442_p1;
        end else begin
            a_1_address0_local = 'bx;
        end
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_699 == 1'd0) & (icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd2) & (icmp_ln11_reg_664 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd3) & (icmp_ln11_reg_664 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd0) & (icmp_ln11_reg_664 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_668 == 2'd1) & (icmp_ln11_reg_664 == 1'd0)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_611)) begin
        if ((1'b1 == ap_condition_635)) begin
            a_2_address0_local = zext_ln11_2_fu_515_p1;
        end else if ((1'b1 == ap_condition_632)) begin
            a_2_address0_local = zext_ln11_1_fu_508_p1;
        end else if (((icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd1))) begin
            a_2_address0_local = zext_ln11_fu_485_p1;
        end else if ((trunc_ln11_reg_668 == 2'd2)) begin
            a_2_address0_local = zext_ln5_4_fu_442_p1;
        end else begin
            a_2_address0_local = 'bx;
        end
    end else begin
        a_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_699 == 1'd0) & (icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd3) & (icmp_ln11_reg_664 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd0) & (icmp_ln11_reg_664 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd1) & (icmp_ln11_reg_664 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_668 == 2'd2) & (icmp_ln11_reg_664 == 1'd0)))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_611)) begin
        if ((1'b1 == ap_condition_642)) begin
            a_3_address0_local = zext_ln11_2_fu_515_p1;
        end else if ((1'b1 == ap_condition_639)) begin
            a_3_address0_local = zext_ln11_1_fu_508_p1;
        end else if (((icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd2))) begin
            a_3_address0_local = zext_ln11_fu_485_p1;
        end else if ((trunc_ln11_reg_668 == 2'd3)) begin
            a_3_address0_local = zext_ln5_4_fu_442_p1;
        end else begin
            a_3_address0_local = 'bx;
        end
    end else begin
        a_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_699 == 1'd0) & (icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd0) & (icmp_ln11_reg_664 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd1) & (icmp_ln11_reg_664 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd2) & (icmp_ln11_reg_664 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_668 == 2'd3) & (icmp_ln11_reg_664 == 1'd0)))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln11_fu_330_p2 == 1'd1) | ((icmp_ln11_1_fu_340_p2 == 1'd0) | ((icmp_ln11_2_fu_366_p2 == 1'd1) | (icmp_ln11_3_fu_408_p2 == 1'd1)))))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            ap_sig_allocacmp_j_10 = j;
        end else if ((1'b1 == ap_condition_648)) begin
            ap_sig_allocacmp_j_10 = add_ln11_3_fu_522_p2;
        end else begin
            ap_sig_allocacmp_j_10 = j_1_fu_70;
        end
    end else begin
        ap_sig_allocacmp_j_10 = j_1_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred399_state4 == 1'b1)) begin
            temp_1_address0_local = zext_ln12_3_fu_639_p1;
        end else if ((1'b1 == ap_condition_389)) begin
            temp_1_address0_local = zext_ln12_2_fu_634_p1;
        end else begin
            temp_1_address0_local = 'bx;
        end
    end else begin
        temp_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_264)) begin
        if (((trunc_ln12_reg_728_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_676_pp0_iter2_reg == 1'd1))) begin
            temp_1_address1_local = zext_ln12_1_fu_629_p1;
        end else if ((trunc_ln12_reg_728_pp0_iter2_reg == 1'd1)) begin
            temp_1_address1_local = zext_ln12_fu_624_p1;
        end else begin
            temp_1_address1_local = 'bx;
        end
    end else begin
        temp_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred399_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_728_pp0_iter2_reg == 1'd1) & (icmp_ln11_2_reg_685_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_676_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0)))) begin
        temp_1_ce0_local = 1'b1;
    end else begin
        temp_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_728_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_728_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_676_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0)))) begin
        temp_1_ce1_local = 1'b1;
    end else begin
        temp_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred399_state4 == 1'b1)) begin
            temp_1_d0_local = tmp_7_reg_820;
        end else if ((1'b1 == ap_condition_389)) begin
            temp_1_d0_local = tmp_6_reg_814;
        end else begin
            temp_1_d0_local = 'bx;
        end
    end else begin
        temp_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_264)) begin
        if (((trunc_ln12_reg_728_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_676_pp0_iter2_reg == 1'd1))) begin
            temp_1_d1_local = tmp_5_reg_808;
        end else if ((trunc_ln12_reg_728_pp0_iter2_reg == 1'd1)) begin
            temp_1_d1_local = tmp_4_reg_802;
        end else begin
            temp_1_d1_local = 'bx;
        end
    end else begin
        temp_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred399_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_728_pp0_iter2_reg == 1'd1) & (icmp_ln11_2_reg_685_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_676_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0)))) begin
        temp_1_we0_local = 1'b1;
    end else begin
        temp_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_728_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_728_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_676_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0)))) begin
        temp_1_we1_local = 1'b1;
    end else begin
        temp_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred373_state4 == 1'b1)) begin
            temp_address0_local = zext_ln12_3_fu_639_p1;
        end else if ((1'b1 == ap_condition_359)) begin
            temp_address0_local = zext_ln12_2_fu_634_p1;
        end else begin
            temp_address0_local = 'bx;
        end
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_264)) begin
        if (((trunc_ln12_reg_728_pp0_iter2_reg == 1'd1) & (icmp_ln11_1_reg_676_pp0_iter2_reg == 1'd1))) begin
            temp_address1_local = zext_ln12_1_fu_629_p1;
        end else if ((trunc_ln12_reg_728_pp0_iter2_reg == 1'd0)) begin
            temp_address1_local = zext_ln12_fu_624_p1;
        end else begin
            temp_address1_local = 'bx;
        end
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred373_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_728_pp0_iter2_reg == 1'd0) & (icmp_ln11_2_reg_685_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_676_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_728_pp0_iter2_reg == 1'd1) & (icmp_ln11_1_reg_676_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_728_pp0_iter2_reg == 1'd0) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred373_state4 == 1'b1)) begin
            temp_d0_local = tmp_7_reg_820;
        end else if ((1'b1 == ap_condition_359)) begin
            temp_d0_local = tmp_6_reg_814;
        end else begin
            temp_d0_local = 'bx;
        end
    end else begin
        temp_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_264)) begin
        if (((trunc_ln12_reg_728_pp0_iter2_reg == 1'd1) & (icmp_ln11_1_reg_676_pp0_iter2_reg == 1'd1))) begin
            temp_d1_local = tmp_5_reg_808;
        end else if ((trunc_ln12_reg_728_pp0_iter2_reg == 1'd0)) begin
            temp_d1_local = tmp_4_reg_802;
        end else begin
            temp_d1_local = 'bx;
        end
    end else begin
        temp_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred373_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_728_pp0_iter2_reg == 1'd0) & (icmp_ln11_2_reg_685_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_676_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0)))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_728_pp0_iter2_reg == 1'd1) & (icmp_ln11_1_reg_676_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_728_pp0_iter2_reg == 1'd0) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0)))) begin
        temp_we1_local = 1'b1;
    end else begin
        temp_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_2_address0 = a_2_address0_local;
assign a_2_ce0 = a_2_ce0_local;
assign a_3_address0 = a_3_address0_local;
assign a_3_ce0 = a_3_ce0_local;
assign add_ln11_1_fu_346_p2 = (ap_sig_allocacmp_j_10 + 32'd2);
assign add_ln11_2_fu_388_p2 = (ap_sig_allocacmp_j_10 + 32'd3);
assign add_ln11_3_fu_522_p2 = (j_10_reg_657 + 32'd4);
assign add_ln11_fu_469_p2 = (trunc_ln11_1_fu_430_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_264 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0));
end
always @ (*) begin
    ap_condition_359 = ((trunc_ln12_reg_728_pp0_iter2_reg == 1'd0) & (icmp_ln11_2_reg_685_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_676_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0));
end
always @ (*) begin
    ap_condition_389 = ((trunc_ln12_reg_728_pp0_iter2_reg == 1'd1) & (icmp_ln11_2_reg_685_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_676_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_664_pp0_iter2_reg == 1'd0));
end
always @ (*) begin
    ap_condition_611 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_reg_664 == 1'd0));
end
always @ (*) begin
    ap_condition_614 = ((icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd2));
end
always @ (*) begin
    ap_condition_619 = ((icmp_ln11_3_reg_699 == 1'd0) & (icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd1));
end
always @ (*) begin
    ap_condition_625 = ((icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd3));
end
always @ (*) begin
    ap_condition_628 = ((icmp_ln11_3_reg_699 == 1'd0) & (icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd2));
end
always @ (*) begin
    ap_condition_632 = ((icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd0));
end
always @ (*) begin
    ap_condition_635 = ((icmp_ln11_3_reg_699 == 1'd0) & (icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd3));
end
always @ (*) begin
    ap_condition_639 = ((icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd1));
end
always @ (*) begin
    ap_condition_642 = ((icmp_ln11_3_reg_699 == 1'd0) & (icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (trunc_ln11_reg_668 == 2'd0));
end
always @ (*) begin
    ap_condition_648 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_3_reg_699 == 1'd0) & (icmp_ln11_2_reg_685 == 1'd0) & (icmp_ln11_1_reg_676 == 1'd1) & (icmp_ln11_reg_664 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln11_1_fu_340_p2 = (($signed(ap_sig_allocacmp_j_10) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_2_fu_366_p2 = (($signed(add_ln11_1_fu_346_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_3_fu_408_p2 = (($signed(add_ln11_2_fu_388_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_330_p2 = (($signed(ap_sig_allocacmp_j_10) > $signed(stop)) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_475_p4 = {{add_ln11_fu_469_p2[10:2]}};
assign lshr_ln5_2_fu_433_p4 = {{j_10_reg_657[10:2]}};
assign sub_ln12_1_fu_493_p2 = (add9 - add_ln11_fu_469_p2);
assign sub_ln12_2_fu_372_p2 = (add9 - trunc_ln11_2_fu_352_p1);
assign sub_ln12_3_fu_414_p2 = (add9 - trunc_ln11_3_fu_394_p1);
assign sub_ln12_fu_450_p2 = (add9 - trunc_ln11_1_fu_430_p1);
assign temp_1_address0 = temp_1_address0_local;
assign temp_1_address1 = temp_1_address1_local;
assign temp_1_ce0 = temp_1_ce0_local;
assign temp_1_ce1 = temp_1_ce1_local;
assign temp_1_d0 = temp_1_d0_local;
assign temp_1_d1 = temp_1_d1_local;
assign temp_1_we0 = temp_1_we0_local;
assign temp_1_we1 = temp_1_we1_local;
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign temp_d0 = temp_d0_local;
assign temp_d1 = temp_d1_local;
assign temp_we0 = temp_we0_local;
assign temp_we1 = temp_we1_local;
assign tmp_4_fu_532_p9 = 'bx;
assign tmp_5_fu_555_p9 = 'bx;
assign tmp_6_fu_578_p9 = 'bx;
assign tmp_7_fu_601_p9 = 'bx;
assign trunc_ln11_1_fu_430_p1 = j_10_reg_657[10:0];
assign trunc_ln11_2_fu_352_p1 = add_ln11_1_fu_346_p2[10:0];
assign trunc_ln11_3_fu_394_p1 = add_ln11_2_fu_388_p2[10:0];
assign trunc_ln11_fu_336_p1 = ap_sig_allocacmp_j_10[1:0];
assign trunc_ln12_fu_455_p1 = sub_ln12_fu_450_p2[0:0];
assign zext_ln11_1_fu_508_p1 = lshr_ln11_1_reg_680;
assign zext_ln11_2_fu_515_p1 = lshr_ln11_2_reg_694;
assign zext_ln11_fu_485_p1 = lshr_ln1_fu_475_p4;
assign zext_ln12_1_fu_629_p1 = lshr_ln12_1_reg_757_pp0_iter2_reg;
assign zext_ln12_2_fu_634_p1 = lshr_ln12_2_reg_689_pp0_iter2_reg;
assign zext_ln12_3_fu_639_p1 = lshr_ln12_3_reg_703_pp0_iter2_reg;
assign zext_ln12_fu_624_p1 = lshr_ln_reg_732_pp0_iter2_reg;
assign zext_ln5_4_fu_442_p1 = lshr_ln5_2_fu_433_p4;
endmodule 
