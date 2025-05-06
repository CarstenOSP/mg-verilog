
module needwun_needwun_Pipeline_pad_a (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,alignedA_0_address1,alignedA_0_ce1,alignedA_0_we1,alignedA_0_d1,alignedA_3_address0,alignedA_3_ce0,alignedA_3_we0,alignedA_3_d0,alignedA_3_address1,alignedA_3_ce1,alignedA_3_we1,alignedA_3_d1,alignedA_2_address0,alignedA_2_ce0,alignedA_2_we0,alignedA_2_d0,alignedA_2_address1,alignedA_2_ce1,alignedA_2_we1,alignedA_2_d1,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_1_address1,alignedA_1_ce1,alignedA_1_we1,alignedA_1_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] empty;
output  [5:0] alignedA_0_address0;
output   alignedA_0_ce0;
output   alignedA_0_we0;
output  [7:0] alignedA_0_d0;
output  [5:0] alignedA_0_address1;
output   alignedA_0_ce1;
output   alignedA_0_we1;
output  [7:0] alignedA_0_d1;
output  [5:0] alignedA_3_address0;
output   alignedA_3_ce0;
output   alignedA_3_we0;
output  [7:0] alignedA_3_d0;
output  [5:0] alignedA_3_address1;
output   alignedA_3_ce1;
output   alignedA_3_we1;
output  [7:0] alignedA_3_d1;
output  [5:0] alignedA_2_address0;
output   alignedA_2_ce0;
output   alignedA_2_we0;
output  [7:0] alignedA_2_d0;
output  [5:0] alignedA_2_address1;
output   alignedA_2_ce1;
output   alignedA_2_we1;
output  [7:0] alignedA_2_d1;
output  [5:0] alignedA_1_address0;
output   alignedA_1_ce0;
output   alignedA_1_we0;
output  [7:0] alignedA_1_d0;
output  [5:0] alignedA_1_address1;
output   alignedA_1_ce1;
output   alignedA_1_we1;
output  [7:0] alignedA_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln83_7_fu_610_p2;
wire   [0:0] icmp_ln83_6_fu_578_p2;
wire   [0:0] icmp_ln83_5_fu_546_p2;
wire   [0:0] icmp_ln83_4_fu_514_p2;
wire   [0:0] icmp_ln83_3_fu_492_p2;
wire   [0:0] icmp_ln83_2_fu_460_p2;
wire   [0:0] icmp_ln83_1_fu_428_p2;
wire   [0:0] icmp_ln83_fu_392_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] a_str_idx_reg_690;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln83_reg_696;
wire   [1:0] trunc_ln83_fu_398_p1;
reg   [1:0] trunc_ln83_reg_700;
reg   [5:0] lshr_ln_reg_704;
reg   [0:0] icmp_ln83_1_reg_709;
reg   [5:0] lshr_ln83_1_reg_713;
reg   [0:0] icmp_ln83_2_reg_718;
reg   [5:0] lshr_ln83_2_reg_722;
reg   [0:0] icmp_ln83_3_reg_727;
reg   [0:0] icmp_ln83_4_reg_731;
reg   [5:0] lshr_ln83_3_reg_735;
reg   [0:0] icmp_ln83_5_reg_740;
reg   [5:0] lshr_ln83_4_reg_744;
reg   [0:0] icmp_ln83_6_reg_749;
reg   [5:0] lshr_ln83_5_reg_753;
reg   [0:0] icmp_ln83_7_reg_758;
wire   [63:0] zext_ln83_3_fu_660_p1;
reg   [63:0] zext_ln83_3_reg_762;
wire   [63:0] zext_ln83_4_fu_664_p1;
reg   [63:0] zext_ln83_4_reg_770;
wire   [63:0] zext_ln83_5_fu_667_p1;
reg   [63:0] zext_ln83_5_reg_778;
wire   [63:0] zext_ln83_6_fu_670_p1;
reg   [63:0] zext_ln83_6_reg_786;
wire   [63:0] zext_ln18_fu_625_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln83_fu_633_p1;
wire   [63:0] zext_ln83_1_fu_640_p1;
wire   [63:0] zext_ln83_2_fu_647_p1;
reg    ap_predicate_pred241_state3;
reg    ap_predicate_pred246_state3;
reg    ap_predicate_pred251_state3;
reg    ap_predicate_pred256_state3;
reg    ap_predicate_pred262_state3;
reg    ap_predicate_pred267_state3;
reg    ap_predicate_pred272_state3;
reg    ap_predicate_pred277_state3;
reg    ap_predicate_pred283_state3;
reg    ap_predicate_pred288_state3;
reg    ap_predicate_pred293_state3;
reg    ap_predicate_pred298_state3;
reg    ap_predicate_pred304_state3;
reg    ap_predicate_pred309_state3;
reg    ap_predicate_pred314_state3;
reg    ap_predicate_pred319_state3;
reg   [31:0] a_str_idx_1_fu_64;
wire   [31:0] add_ln83_8_fu_673_p2;
reg   [31:0] ap_sig_allocacmp_a_str_idx;
wire    ap_loop_init;
reg    alignedA_2_we1_local;
reg    alignedA_2_ce1_local;
reg   [5:0] alignedA_2_address1_local;
reg    alignedA_2_we0_local;
reg    alignedA_2_ce0_local;
reg   [5:0] alignedA_2_address0_local;
reg    alignedA_1_we1_local;
reg    alignedA_1_ce1_local;
reg   [5:0] alignedA_1_address1_local;
reg    alignedA_1_we0_local;
reg    alignedA_1_ce0_local;
reg   [5:0] alignedA_1_address0_local;
reg    alignedA_0_we1_local;
reg    alignedA_0_ce1_local;
reg   [5:0] alignedA_0_address1_local;
reg    alignedA_0_we0_local;
reg    alignedA_0_ce0_local;
reg   [5:0] alignedA_0_address0_local;
reg    alignedA_3_we1_local;
reg    alignedA_3_ce1_local;
reg   [5:0] alignedA_3_address1_local;
reg    alignedA_3_we0_local;
reg    alignedA_3_ce0_local;
reg   [5:0] alignedA_3_address0_local;
wire   [23:0] tmp_9_fu_382_p4;
wire   [31:0] add_ln83_fu_402_p2;
wire   [23:0] tmp_10_fu_418_p4;
wire   [31:0] add_ln83_1_fu_434_p2;
wire   [23:0] tmp_11_fu_450_p4;
wire   [31:0] add_ln83_2_fu_466_p2;
wire   [23:0] tmp_12_fu_482_p4;
wire   [31:0] add_ln83_3_fu_498_p2;
wire   [23:0] tmp_13_fu_504_p4;
wire   [31:0] add_ln83_5_fu_520_p2;
wire   [23:0] tmp_14_fu_536_p4;
wire   [31:0] add_ln83_6_fu_552_p2;
wire   [23:0] tmp_15_fu_568_p4;
wire   [31:0] add_ln83_7_fu_584_p2;
wire   [23:0] tmp_16_fu_600_p4;
wire   [5:0] lshr_ln18_1_fu_616_p4;
wire   [5:0] add_ln83_4_fu_654_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_682;
reg    ap_condition_688;
reg    ap_condition_693;
reg    ap_condition_685;
reg    ap_condition_699;
reg    ap_condition_702;
reg    ap_condition_706;
reg    ap_condition_709;
reg    ap_condition_713;
reg    ap_condition_716;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 a_str_idx_1_fu_64 = 32'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            a_str_idx_1_fu_64 <= empty;
        end else if ((1'b1 == ap_condition_682)) begin
            a_str_idx_1_fu_64 <= add_ln83_8_fu_673_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_str_idx_reg_690 <= ap_sig_allocacmp_a_str_idx;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_predicate_pred241_state3 <= ((icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd2) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred246_state3 <= ((icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd1) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred251_state3 <= ((icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd0) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred256_state3 <= ((icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd3) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred262_state3 <= ((icmp_ln83_5_reg_740 == 1'd1) & (icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd1) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred267_state3 <= ((icmp_ln83_5_reg_740 == 1'd1) & (icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd0) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred272_state3 <= ((icmp_ln83_5_reg_740 == 1'd1) & (icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd2) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred277_state3 <= ((icmp_ln83_5_reg_740 == 1'd1) & (icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd3) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred283_state3 <= ((icmp_ln83_6_reg_749 == 1'd1) & (icmp_ln83_5_reg_740 == 1'd1) & (icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd0) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred288_state3 <= ((icmp_ln83_6_reg_749 == 1'd1) & (icmp_ln83_5_reg_740 == 1'd1) & (icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd1) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred293_state3 <= ((icmp_ln83_6_reg_749 == 1'd1) & (icmp_ln83_5_reg_740 == 1'd1) & (icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd2) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred298_state3 <= ((icmp_ln83_6_reg_749 == 1'd1) & (icmp_ln83_5_reg_740 == 1'd1) & (icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd3) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred304_state3 <= ((icmp_ln83_7_reg_758 == 1'd1) & (icmp_ln83_6_reg_749 == 1'd1) & (icmp_ln83_5_reg_740 == 1'd1) & (icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd0) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred309_state3 <= ((icmp_ln83_7_reg_758 == 1'd1) & (icmp_ln83_6_reg_749 == 1'd1) & (icmp_ln83_5_reg_740 == 1'd1) & (icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd2) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred314_state3 <= ((icmp_ln83_7_reg_758 == 1'd1) & (icmp_ln83_6_reg_749 == 1'd1) & (icmp_ln83_5_reg_740 == 1'd1) & (icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd1) & (icmp_ln83_reg_696 == 1'd1));
        ap_predicate_pred319_state3 <= ((icmp_ln83_7_reg_758 == 1'd1) & (icmp_ln83_6_reg_749 == 1'd1) & (icmp_ln83_5_reg_740 == 1'd1) & (icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd3) & (icmp_ln83_reg_696 == 1'd1));
        icmp_ln83_1_reg_709 <= icmp_ln83_1_fu_428_p2;
        icmp_ln83_2_reg_718 <= icmp_ln83_2_fu_460_p2;
        icmp_ln83_3_reg_727 <= icmp_ln83_3_fu_492_p2;
        icmp_ln83_4_reg_731 <= icmp_ln83_4_fu_514_p2;
        icmp_ln83_5_reg_740 <= icmp_ln83_5_fu_546_p2;
        icmp_ln83_6_reg_749 <= icmp_ln83_6_fu_578_p2;
        icmp_ln83_7_reg_758 <= icmp_ln83_7_fu_610_p2;
        icmp_ln83_reg_696 <= icmp_ln83_fu_392_p2;
        lshr_ln83_1_reg_713 <= {{add_ln83_1_fu_434_p2[7:2]}};
        lshr_ln83_2_reg_722 <= {{add_ln83_2_fu_466_p2[7:2]}};
        lshr_ln83_3_reg_735 <= {{add_ln83_5_fu_520_p2[7:2]}};
        lshr_ln83_4_reg_744 <= {{add_ln83_6_fu_552_p2[7:2]}};
        lshr_ln83_5_reg_753 <= {{add_ln83_7_fu_584_p2[7:2]}};
        lshr_ln_reg_704 <= {{add_ln83_fu_402_p2[7:2]}};
        trunc_ln83_reg_700 <= trunc_ln83_fu_398_p1;
        zext_ln83_3_reg_762[5 : 0] <= zext_ln83_3_fu_660_p1[5 : 0];
        zext_ln83_4_reg_770[5 : 0] <= zext_ln83_4_fu_664_p1[5 : 0];
        zext_ln83_5_reg_778[5 : 0] <= zext_ln83_5_fu_667_p1[5 : 0];
        zext_ln83_6_reg_786[5 : 0] <= zext_ln83_6_fu_670_p1[5 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((ap_predicate_pred314_state3 == 1'b1)) begin
            alignedA_0_address0_local = zext_ln83_6_reg_786;
        end else if ((ap_predicate_pred293_state3 == 1'b1)) begin
            alignedA_0_address0_local = zext_ln83_5_reg_778;
        end else if ((ap_predicate_pred277_state3 == 1'b1)) begin
            alignedA_0_address0_local = zext_ln83_4_reg_770;
        end else if ((ap_predicate_pred251_state3 == 1'b1)) begin
            alignedA_0_address0_local = zext_ln83_3_reg_762;
        end else begin
            alignedA_0_address0_local = 'bx;
        end
    end else begin
        alignedA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_685)) begin
        if ((1'b1 == ap_condition_693)) begin
            alignedA_0_address1_local = zext_ln83_2_fu_647_p1;
        end else if ((1'b1 == ap_condition_688)) begin
            alignedA_0_address1_local = zext_ln83_1_fu_640_p1;
        end else if (((icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd3))) begin
            alignedA_0_address1_local = zext_ln83_fu_633_p1;
        end else if ((trunc_ln83_reg_700 == 2'd0)) begin
            alignedA_0_address1_local = zext_ln18_fu_625_p1;
        end else begin
            alignedA_0_address1_local = 'bx;
        end
    end else begin
        alignedA_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred314_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred293_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred277_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred251_state3 == 1'b1)))) begin
        alignedA_0_ce0_local = 1'b1;
    end else begin
        alignedA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd1) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd2) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd3) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_700 == 2'd0) & (icmp_ln83_reg_696 == 1'd1)))) begin
        alignedA_0_ce1_local = 1'b1;
    end else begin
        alignedA_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred314_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred293_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred277_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred251_state3 == 1'b1)))) begin
        alignedA_0_we0_local = 1'b1;
    end else begin
        alignedA_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd1) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd2) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd3) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_700 == 2'd0) & (icmp_ln83_reg_696 == 1'd1)))) begin
        alignedA_0_we1_local = 1'b1;
    end else begin
        alignedA_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((ap_predicate_pred309_state3 == 1'b1)) begin
            alignedA_1_address0_local = zext_ln83_6_reg_786;
        end else if ((ap_predicate_pred298_state3 == 1'b1)) begin
            alignedA_1_address0_local = zext_ln83_5_reg_778;
        end else if ((ap_predicate_pred267_state3 == 1'b1)) begin
            alignedA_1_address0_local = zext_ln83_4_reg_770;
        end else if ((ap_predicate_pred246_state3 == 1'b1)) begin
            alignedA_1_address0_local = zext_ln83_3_reg_762;
        end else begin
            alignedA_1_address0_local = 'bx;
        end
    end else begin
        alignedA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_685)) begin
        if ((1'b1 == ap_condition_702)) begin
            alignedA_1_address1_local = zext_ln83_2_fu_647_p1;
        end else if ((1'b1 == ap_condition_699)) begin
            alignedA_1_address1_local = zext_ln83_1_fu_640_p1;
        end else if (((icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd0))) begin
            alignedA_1_address1_local = zext_ln83_fu_633_p1;
        end else if ((trunc_ln83_reg_700 == 2'd1)) begin
            alignedA_1_address1_local = zext_ln18_fu_625_p1;
        end else begin
            alignedA_1_address1_local = 'bx;
        end
    end else begin
        alignedA_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred309_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred298_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred267_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred246_state3 == 1'b1)))) begin
        alignedA_1_ce0_local = 1'b1;
    end else begin
        alignedA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd2) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd3) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd0) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_700 == 2'd1) & (icmp_ln83_reg_696 == 1'd1)))) begin
        alignedA_1_ce1_local = 1'b1;
    end else begin
        alignedA_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred309_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred298_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred267_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred246_state3 == 1'b1)))) begin
        alignedA_1_we0_local = 1'b1;
    end else begin
        alignedA_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd2) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd3) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd0) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_700 == 2'd1) & (icmp_ln83_reg_696 == 1'd1)))) begin
        alignedA_1_we1_local = 1'b1;
    end else begin
        alignedA_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((ap_predicate_pred319_state3 == 1'b1)) begin
            alignedA_2_address0_local = zext_ln83_6_reg_786;
        end else if ((ap_predicate_pred283_state3 == 1'b1)) begin
            alignedA_2_address0_local = zext_ln83_5_reg_778;
        end else if ((ap_predicate_pred262_state3 == 1'b1)) begin
            alignedA_2_address0_local = zext_ln83_4_reg_770;
        end else if ((ap_predicate_pred241_state3 == 1'b1)) begin
            alignedA_2_address0_local = zext_ln83_3_reg_762;
        end else begin
            alignedA_2_address0_local = 'bx;
        end
    end else begin
        alignedA_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_685)) begin
        if ((1'b1 == ap_condition_709)) begin
            alignedA_2_address1_local = zext_ln83_2_fu_647_p1;
        end else if ((1'b1 == ap_condition_706)) begin
            alignedA_2_address1_local = zext_ln83_1_fu_640_p1;
        end else if (((icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd1))) begin
            alignedA_2_address1_local = zext_ln83_fu_633_p1;
        end else if ((trunc_ln83_reg_700 == 2'd2)) begin
            alignedA_2_address1_local = zext_ln18_fu_625_p1;
        end else begin
            alignedA_2_address1_local = 'bx;
        end
    end else begin
        alignedA_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred319_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred283_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred262_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred241_state3 == 1'b1)))) begin
        alignedA_2_ce0_local = 1'b1;
    end else begin
        alignedA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd3) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd0) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd1) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_700 == 2'd2) & (icmp_ln83_reg_696 == 1'd1)))) begin
        alignedA_2_ce1_local = 1'b1;
    end else begin
        alignedA_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred319_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred283_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred262_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred241_state3 == 1'b1)))) begin
        alignedA_2_we0_local = 1'b1;
    end else begin
        alignedA_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd3) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd0) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd1) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_700 == 2'd2) & (icmp_ln83_reg_696 == 1'd1)))) begin
        alignedA_2_we1_local = 1'b1;
    end else begin
        alignedA_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((ap_predicate_pred304_state3 == 1'b1)) begin
            alignedA_3_address0_local = zext_ln83_6_reg_786;
        end else if ((ap_predicate_pred288_state3 == 1'b1)) begin
            alignedA_3_address0_local = zext_ln83_5_reg_778;
        end else if ((ap_predicate_pred272_state3 == 1'b1)) begin
            alignedA_3_address0_local = zext_ln83_4_reg_770;
        end else if ((ap_predicate_pred256_state3 == 1'b1)) begin
            alignedA_3_address0_local = zext_ln83_3_reg_762;
        end else begin
            alignedA_3_address0_local = 'bx;
        end
    end else begin
        alignedA_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_685)) begin
        if ((1'b1 == ap_condition_716)) begin
            alignedA_3_address1_local = zext_ln83_2_fu_647_p1;
        end else if ((1'b1 == ap_condition_713)) begin
            alignedA_3_address1_local = zext_ln83_1_fu_640_p1;
        end else if (((icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd2))) begin
            alignedA_3_address1_local = zext_ln83_fu_633_p1;
        end else if ((trunc_ln83_reg_700 == 2'd3)) begin
            alignedA_3_address1_local = zext_ln18_fu_625_p1;
        end else begin
            alignedA_3_address1_local = 'bx;
        end
    end else begin
        alignedA_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred304_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred288_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred272_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred256_state3 == 1'b1)))) begin
        alignedA_3_ce0_local = 1'b1;
    end else begin
        alignedA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd0) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd1) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd2) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_700 == 2'd3) & (icmp_ln83_reg_696 == 1'd1)))) begin
        alignedA_3_ce1_local = 1'b1;
    end else begin
        alignedA_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred304_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred288_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred272_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred256_state3 == 1'b1)))) begin
        alignedA_3_we0_local = 1'b1;
    end else begin
        alignedA_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd0) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd1) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd2) & (icmp_ln83_reg_696 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_700 == 2'd3) & (icmp_ln83_reg_696 == 1'd1)))) begin
        alignedA_3_we1_local = 1'b1;
    end else begin
        alignedA_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln83_fu_392_p2 == 1'd0) | ((icmp_ln83_1_fu_428_p2 == 1'd0) | ((icmp_ln83_2_fu_460_p2 == 1'd0) | ((icmp_ln83_3_fu_492_p2 == 1'd0) | ((icmp_ln83_4_fu_514_p2 == 1'd0) | ((icmp_ln83_5_fu_546_p2 == 1'd0) | ((icmp_ln83_6_fu_578_p2 == 1'd0) | (icmp_ln83_7_fu_610_p2 == 1'd0)))))))))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
            ap_sig_allocacmp_a_str_idx = empty;
        end else if ((1'b1 == ap_condition_682)) begin
            ap_sig_allocacmp_a_str_idx = add_ln83_8_fu_673_p2;
        end else begin
            ap_sig_allocacmp_a_str_idx = a_str_idx_1_fu_64;
        end
    end else begin
        ap_sig_allocacmp_a_str_idx = a_str_idx_1_fu_64;
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
assign add_ln83_1_fu_434_p2 = (ap_sig_allocacmp_a_str_idx + 32'd2);
assign add_ln83_2_fu_466_p2 = (ap_sig_allocacmp_a_str_idx + 32'd3);
assign add_ln83_3_fu_498_p2 = (ap_sig_allocacmp_a_str_idx + 32'd4);
assign add_ln83_4_fu_654_p2 = (lshr_ln18_1_fu_616_p4 + 6'd1);
assign add_ln83_5_fu_520_p2 = (ap_sig_allocacmp_a_str_idx + 32'd5);
assign add_ln83_6_fu_552_p2 = (ap_sig_allocacmp_a_str_idx + 32'd6);
assign add_ln83_7_fu_584_p2 = (ap_sig_allocacmp_a_str_idx + 32'd7);
assign add_ln83_8_fu_673_p2 = (a_str_idx_reg_690 + 32'd8);
assign add_ln83_fu_402_p2 = (ap_sig_allocacmp_a_str_idx + 32'd1);
assign alignedA_0_address0 = alignedA_0_address0_local;
assign alignedA_0_address1 = alignedA_0_address1_local;
assign alignedA_0_ce0 = alignedA_0_ce0_local;
assign alignedA_0_ce1 = alignedA_0_ce1_local;
assign alignedA_0_d0 = 8'd95;
assign alignedA_0_d1 = 8'd95;
assign alignedA_0_we0 = alignedA_0_we0_local;
assign alignedA_0_we1 = alignedA_0_we1_local;
assign alignedA_1_address0 = alignedA_1_address0_local;
assign alignedA_1_address1 = alignedA_1_address1_local;
assign alignedA_1_ce0 = alignedA_1_ce0_local;
assign alignedA_1_ce1 = alignedA_1_ce1_local;
assign alignedA_1_d0 = 8'd95;
assign alignedA_1_d1 = 8'd95;
assign alignedA_1_we0 = alignedA_1_we0_local;
assign alignedA_1_we1 = alignedA_1_we1_local;
assign alignedA_2_address0 = alignedA_2_address0_local;
assign alignedA_2_address1 = alignedA_2_address1_local;
assign alignedA_2_ce0 = alignedA_2_ce0_local;
assign alignedA_2_ce1 = alignedA_2_ce1_local;
assign alignedA_2_d0 = 8'd95;
assign alignedA_2_d1 = 8'd95;
assign alignedA_2_we0 = alignedA_2_we0_local;
assign alignedA_2_we1 = alignedA_2_we1_local;
assign alignedA_3_address0 = alignedA_3_address0_local;
assign alignedA_3_address1 = alignedA_3_address1_local;
assign alignedA_3_ce0 = alignedA_3_ce0_local;
assign alignedA_3_ce1 = alignedA_3_ce1_local;
assign alignedA_3_d0 = 8'd95;
assign alignedA_3_d1 = 8'd95;
assign alignedA_3_we0 = alignedA_3_we0_local;
assign alignedA_3_we1 = alignedA_3_we1_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_682 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln83_7_reg_758 == 1'd1) & (icmp_ln83_6_reg_749 == 1'd1) & (icmp_ln83_5_reg_740 == 1'd1) & (icmp_ln83_4_reg_731 == 1'd1) & (icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (icmp_ln83_reg_696 == 1'd1));
end
always @ (*) begin
    ap_condition_685 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_reg_696 == 1'd1));
end
always @ (*) begin
    ap_condition_688 = ((icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd2));
end
always @ (*) begin
    ap_condition_693 = ((icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd1));
end
always @ (*) begin
    ap_condition_699 = ((icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd3));
end
always @ (*) begin
    ap_condition_702 = ((icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd2));
end
always @ (*) begin
    ap_condition_706 = ((icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd0));
end
always @ (*) begin
    ap_condition_709 = ((icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd3));
end
always @ (*) begin
    ap_condition_713 = ((icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd1));
end
always @ (*) begin
    ap_condition_716 = ((icmp_ln83_3_reg_727 == 1'd1) & (icmp_ln83_2_reg_718 == 1'd1) & (icmp_ln83_1_reg_709 == 1'd1) & (trunc_ln83_reg_700 == 2'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln83_1_fu_428_p2 = (($signed(tmp_10_fu_418_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_2_fu_460_p2 = (($signed(tmp_11_fu_450_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_3_fu_492_p2 = (($signed(tmp_12_fu_482_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_4_fu_514_p2 = (($signed(tmp_13_fu_504_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_5_fu_546_p2 = (($signed(tmp_14_fu_536_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_6_fu_578_p2 = (($signed(tmp_15_fu_568_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_7_fu_610_p2 = (($signed(tmp_16_fu_600_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_fu_392_p2 = (($signed(tmp_9_fu_382_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign lshr_ln18_1_fu_616_p4 = {{a_str_idx_reg_690[7:2]}};
assign tmp_10_fu_418_p4 = {{add_ln83_fu_402_p2[31:8]}};
assign tmp_11_fu_450_p4 = {{add_ln83_1_fu_434_p2[31:8]}};
assign tmp_12_fu_482_p4 = {{add_ln83_2_fu_466_p2[31:8]}};
assign tmp_13_fu_504_p4 = {{add_ln83_3_fu_498_p2[31:8]}};
assign tmp_14_fu_536_p4 = {{add_ln83_5_fu_520_p2[31:8]}};
assign tmp_15_fu_568_p4 = {{add_ln83_6_fu_552_p2[31:8]}};
assign tmp_16_fu_600_p4 = {{add_ln83_7_fu_584_p2[31:8]}};
assign tmp_9_fu_382_p4 = {{ap_sig_allocacmp_a_str_idx[31:8]}};
assign trunc_ln83_fu_398_p1 = ap_sig_allocacmp_a_str_idx[1:0];
assign zext_ln18_fu_625_p1 = lshr_ln18_1_fu_616_p4;
assign zext_ln83_1_fu_640_p1 = lshr_ln83_1_reg_713;
assign zext_ln83_2_fu_647_p1 = lshr_ln83_2_reg_722;
assign zext_ln83_3_fu_660_p1 = add_ln83_4_fu_654_p2;
assign zext_ln83_4_fu_664_p1 = lshr_ln83_3_reg_735;
assign zext_ln83_5_fu_667_p1 = lshr_ln83_4_reg_744;
assign zext_ln83_6_fu_670_p1 = lshr_ln83_5_reg_753;
assign zext_ln83_fu_633_p1 = lshr_ln_reg_704;
always @ (posedge ap_clk) begin
    zext_ln83_3_reg_762[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_4_reg_770[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_5_reg_778[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_6_reg_786[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 
