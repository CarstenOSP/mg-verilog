
module SgdLR_sw_SgdLR_sw_Pipeline_label_314 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_1_address1,v3_1_ce1,v3_1_we1,v3_1_d1,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,tmp_88,empty,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v22_5,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,grp_fu_2072_p_din0,grp_fu_2072_p_din1,grp_fu_2072_p_dout0,grp_fu_2072_p_ce,grp_fu_2076_p_din0,grp_fu_2076_p_din1,grp_fu_2076_p_dout0,grp_fu_2076_p_ce);  
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
output  [8:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [8:0] v3_1_address1;
output   v3_1_ce1;
output   v3_1_we1;
output  [31:0] v3_1_d1;
output  [8:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
output  [8:0] v3_address1;
output   v3_ce1;
output   v3_we1;
output  [31:0] v3_d1;
input  [9:0] tmp_88;
input  [0:0] empty;
output  [21:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [21:0] v0_0_address1;
output   v0_0_ce1;
input  [31:0] v0_0_q1;
input  [31:0] v22_5;
output  [21:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [21:0] v0_1_address1;
output   v0_1_ce1;
input  [31:0] v0_1_q1;
output  [31:0] grp_fu_2072_p_din0;
output  [31:0] grp_fu_2072_p_din1;
input  [31:0] grp_fu_2072_p_dout0;
output   grp_fu_2072_p_ce;
output  [31:0] grp_fu_2076_p_din0;
output  [31:0] grp_fu_2076_p_din1;
input  [31:0] grp_fu_2076_p_dout0;
output   grp_fu_2076_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_36_reg_745;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_358;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_362;
reg   [31:0] reg_366;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_372;
reg   [10:0] v19_5_reg_734;
reg   [10:0] v19_5_reg_734_pp0_iter1_reg;
wire   [0:0] tmp_36_fu_386_p3;
reg   [0:0] tmp_36_reg_745_pp0_iter1_reg;
wire   [0:0] icmp_ln53_fu_466_p2;
reg   [0:0] icmp_ln53_reg_769;
reg   [0:0] icmp_ln53_reg_769_pp0_iter1_reg;
reg   [0:0] icmp_ln53_reg_769_pp0_iter2_reg;
reg   [31:0] v0_0_load_13_reg_773;
reg   [31:0] v0_1_load_13_reg_778;
wire   [0:0] tmp_39_fu_481_p3;
reg   [0:0] tmp_39_reg_783;
reg   [0:0] tmp_39_reg_783_pp0_iter1_reg;
wire   [31:0] v23_fu_530_p1;
wire   [31:0] v23_36_fu_535_p1;
reg   [31:0] v0_0_load_15_reg_818;
reg   [31:0] v0_1_load_15_reg_823;
wire   [31:0] v23_37_fu_540_p1;
wire   [31:0] v23_38_fu_544_p1;
wire   [31:0] v23_39_fu_558_p1;
wire   [31:0] v23_40_fu_563_p1;
wire   [31:0] v23_41_fu_568_p1;
wire   [31:0] v23_42_fu_572_p1;
reg   [5:0] tmp_37_reg_858;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln51_fu_418_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_45_fu_450_p1;
wire   [63:0] zext_ln51_48_fu_504_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_51_fu_524_p1;
wire   [63:0] zext_ln48_fu_579_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln51_43_fu_602_p1;
wire   [63:0] zext_ln51_44_fu_625_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln51_46_fu_639_p1;
wire   [63:0] zext_ln51_47_fu_661_p1;
wire   [63:0] zext_ln51_49_fu_677_p1;
wire   [63:0] zext_ln51_50_fu_690_p1;
wire   [63:0] zext_ln51_52_fu_703_p1;
reg   [10:0] v19_fu_100;
wire   [10:0] add_ln47_fu_548_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_5;
reg    v0_0_ce1_local;
reg   [21:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [21:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [21:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [21:0] v0_1_address0_local;
reg    v3_1_we1_local;
reg    v3_1_ce1_local;
reg   [8:0] v3_1_address1_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg   [8:0] v3_1_address0_local;
reg    v3_we1_local;
reg    v3_ce1_local;
reg   [8:0] v3_address1_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg   [8:0] v3_address0_local;
reg   [31:0] grp_fu_350_p1;
reg   [31:0] grp_fu_354_p1;
wire   [8:0] tmp_s_fu_394_p4;
wire   [21:0] add_ln51_s_fu_404_p6;
wire   [7:0] tmp_35_fu_424_p4;
wire   [21:0] add_ln51_11_fu_434_p7;
wire   [1:0] tmp_40_fu_456_p4;
wire   [6:0] tmp_38_fu_472_p4;
wire   [21:0] add_ln51_12_fu_488_p8;
wire   [21:0] add_ln51_13_fu_510_p7;
wire   [8:0] trunc_ln47_fu_576_p1;
wire   [7:0] tmp_33_fu_585_p4;
wire   [8:0] or_ln48_s_fu_594_p3;
wire   [6:0] tmp_34_fu_608_p4;
wire   [8:0] or_ln48_25_fu_617_p3;
wire   [8:0] or_ln48_26_fu_631_p3;
wire   [8:0] or_ln48_27_fu_654_p3;
wire   [8:0] or_ln48_28_fu_667_p5;
wire   [8:0] or_ln48_29_fu_683_p3;
wire   [8:0] or_ln48_30_fu_696_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage1;
reg    ap_idle_pp0_0to0;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v19_fu_100 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_fu_100 <= 11'd0;
    end else if (((tmp_36_reg_745 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v19_fu_100 <= add_ln47_fu_548_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln53_reg_769 <= icmp_ln53_fu_466_p2;
        icmp_ln53_reg_769_pp0_iter1_reg <= icmp_ln53_reg_769;
        icmp_ln53_reg_769_pp0_iter2_reg <= icmp_ln53_reg_769_pp0_iter1_reg;
        tmp_36_reg_745 <= ap_sig_allocacmp_v19_5[32'd10];
        tmp_36_reg_745_pp0_iter1_reg <= tmp_36_reg_745;
        v19_5_reg_734 <= ap_sig_allocacmp_v19_5;
        v19_5_reg_734_pp0_iter1_reg <= v19_5_reg_734;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_358 <= v0_0_q1;
        reg_362 <= v0_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_366 <= grp_fu_2072_p_dout0;
        reg_372 <= grp_fu_2076_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_37_reg_858 <= {{v19_5_reg_734_pp0_iter1_reg[8:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_39_reg_783 <= v19_5_reg_734[32'd1];
        tmp_39_reg_783_pp0_iter1_reg <= tmp_39_reg_783;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_load_13_reg_773 <= v0_0_q0;
        v0_1_load_13_reg_778 <= v0_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_load_15_reg_818 <= v0_0_q0;
        v0_1_load_15_reg_823 <= v0_1_q0;
    end
end
always @ (*) begin
    if (((tmp_36_reg_745 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_36_reg_745_pp0_iter1_reg == 1'd1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
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
        ap_sig_allocacmp_v19_5 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_5 = v19_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_350_p1 = v23_41_fu_568_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_350_p1 = v23_39_fu_558_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_350_p1 = v23_37_fu_540_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_350_p1 = v23_fu_530_p1;
    end else begin
        grp_fu_350_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_354_p1 = v23_42_fu_572_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_354_p1 = v23_40_fu_563_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_354_p1 = v23_38_fu_544_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_354_p1 = v23_36_fu_535_p1;
    end else begin
        grp_fu_354_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address0_local = zext_ln51_51_fu_524_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address0_local = zext_ln51_45_fu_450_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address1_local = zext_ln51_48_fu_504_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address1_local = zext_ln51_fu_418_p1;
        end else begin
            v0_0_address1_local = 'bx;
        end
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_1_address0_local = zext_ln51_51_fu_524_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address0_local = zext_ln51_45_fu_450_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_1_address1_local = zext_ln51_48_fu_504_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address1_local = zext_ln51_fu_418_p1;
        end else begin
            v0_1_address1_local = 'bx;
        end
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_1_address0_local = zext_ln51_52_fu_703_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_address0_local = zext_ln51_49_fu_677_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_1_address0_local = zext_ln51_46_fu_639_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_address0_local = zext_ln51_43_fu_602_p1;
    end else begin
        v3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_1_address1_local = zext_ln51_50_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_address1_local = zext_ln51_47_fu_661_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_1_address1_local = zext_ln51_44_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_address1_local = zext_ln48_fu_579_p1;
    end else begin
        v3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln53_reg_769_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln53_reg_769_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln53_reg_769_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln53_reg_769_pp0_iter2_reg == 1'd0)))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln53_reg_769_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln53_reg_769_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln53_reg_769_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln53_reg_769_pp0_iter2_reg == 1'd0)))) begin
        v3_1_we1_local = 1'b1;
    end else begin
        v3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_address0_local = zext_ln51_52_fu_703_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_address0_local = zext_ln51_49_fu_677_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_address0_local = zext_ln51_46_fu_639_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_address0_local = zext_ln51_43_fu_602_p1;
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_address1_local = zext_ln51_50_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_address1_local = zext_ln51_47_fu_661_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_address1_local = zext_ln51_44_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_address1_local = zext_ln48_fu_579_p1;
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln53_reg_769_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln53_reg_769_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln53_reg_769_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln53_reg_769_pp0_iter2_reg == 1'd1)))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln53_reg_769_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln53_reg_769_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln53_reg_769_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln53_reg_769_pp0_iter2_reg == 1'd1)))) begin
        v3_we1_local = 1'b1;
    end else begin
        v3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln47_fu_548_p2 = (v19_5_reg_734 + 11'd8);
assign add_ln51_11_fu_434_p7 = {{{{{{tmp_88}, {1'd1}}, {empty}}, {1'd1}}, {tmp_35_fu_424_p4}}, {1'd1}};
assign add_ln51_12_fu_488_p8 = {{{{{{{tmp_88}, {1'd1}}, {empty}}, {1'd1}}, {tmp_38_fu_472_p4}}, {1'd1}}, {tmp_39_fu_481_p3}};
assign add_ln51_13_fu_510_p7 = {{{{{{tmp_88}, {1'd1}}, {empty}}, {1'd1}}, {tmp_38_fu_472_p4}}, {2'd3}};
assign add_ln51_s_fu_404_p6 = {{{{{tmp_88}, {1'd1}}, {empty}}, {1'd1}}, {tmp_s_fu_394_p4}};
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
assign grp_fu_2072_p_ce = 1'b1;
assign grp_fu_2072_p_din0 = v22_5;
assign grp_fu_2072_p_din1 = grp_fu_350_p1;
assign grp_fu_2076_p_ce = 1'b1;
assign grp_fu_2076_p_din0 = v22_5;
assign grp_fu_2076_p_din1 = grp_fu_354_p1;
assign icmp_ln53_fu_466_p2 = ((tmp_40_fu_456_p4 == 2'd0) ? 1'b1 : 1'b0);
assign or_ln48_25_fu_617_p3 = {{tmp_34_fu_608_p4}, {2'd2}};
assign or_ln48_26_fu_631_p3 = {{tmp_34_fu_608_p4}, {2'd3}};
assign or_ln48_27_fu_654_p3 = {{tmp_37_reg_858}, {3'd4}};
assign or_ln48_28_fu_667_p5 = {{{{tmp_37_reg_858}, {1'd1}}, {tmp_39_reg_783_pp0_iter1_reg}}, {1'd1}};
assign or_ln48_29_fu_683_p3 = {{tmp_37_reg_858}, {3'd6}};
assign or_ln48_30_fu_696_p3 = {{tmp_37_reg_858}, {3'd7}};
assign or_ln48_s_fu_594_p3 = {{tmp_33_fu_585_p4}, {1'd1}};
assign tmp_33_fu_585_p4 = {{v19_5_reg_734_pp0_iter1_reg[8:1]}};
assign tmp_34_fu_608_p4 = {{v19_5_reg_734_pp0_iter1_reg[8:2]}};
assign tmp_35_fu_424_p4 = {{ap_sig_allocacmp_v19_5[9:2]}};
assign tmp_36_fu_386_p3 = ap_sig_allocacmp_v19_5[32'd10];
assign tmp_38_fu_472_p4 = {{v19_5_reg_734[9:3]}};
assign tmp_39_fu_481_p3 = v19_5_reg_734[32'd1];
assign tmp_40_fu_456_p4 = {{ap_sig_allocacmp_v19_5[10:9]}};
assign tmp_s_fu_394_p4 = {{ap_sig_allocacmp_v19_5[9:1]}};
assign trunc_ln47_fu_576_p1 = v19_5_reg_734_pp0_iter1_reg[8:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v23_36_fu_535_p1 = reg_362;
assign v23_37_fu_540_p1 = v0_0_load_13_reg_773;
assign v23_38_fu_544_p1 = v0_1_load_13_reg_778;
assign v23_39_fu_558_p1 = reg_358;
assign v23_40_fu_563_p1 = reg_362;
assign v23_41_fu_568_p1 = v0_0_load_15_reg_818;
assign v23_42_fu_572_p1 = v0_1_load_15_reg_823;
assign v23_fu_530_p1 = reg_358;
assign v3_1_address0 = v3_1_address0_local;
assign v3_1_address1 = v3_1_address1_local;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_1_d0 = reg_372;
assign v3_1_d1 = reg_366;
assign v3_1_we0 = v3_1_we0_local;
assign v3_1_we1 = v3_1_we1_local;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = reg_372;
assign v3_d1 = reg_366;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign zext_ln48_fu_579_p1 = trunc_ln47_fu_576_p1;
assign zext_ln51_43_fu_602_p1 = or_ln48_s_fu_594_p3;
assign zext_ln51_44_fu_625_p1 = or_ln48_25_fu_617_p3;
assign zext_ln51_45_fu_450_p1 = add_ln51_11_fu_434_p7;
assign zext_ln51_46_fu_639_p1 = or_ln48_26_fu_631_p3;
assign zext_ln51_47_fu_661_p1 = or_ln48_27_fu_654_p3;
assign zext_ln51_48_fu_504_p1 = add_ln51_12_fu_488_p8;
assign zext_ln51_49_fu_677_p1 = or_ln48_28_fu_667_p5;
assign zext_ln51_50_fu_690_p1 = or_ln48_29_fu_683_p3;
assign zext_ln51_51_fu_524_p1 = add_ln51_13_fu_510_p7;
assign zext_ln51_52_fu_703_p1 = or_ln48_30_fu_696_p3;
assign zext_ln51_fu_418_p1 = add_ln51_s_fu_404_p6;
endmodule 
