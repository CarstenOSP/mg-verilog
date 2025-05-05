module SgdLR_sw_SgdLR_sw_Pipeline_label_314 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp_132,v0_address0,v0_ce0,v0_q0,v0_address1,v0_ce1,v0_q1,v22_5,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,tmp_102,empty,grp_fu_2650_p_din0,grp_fu_2650_p_din1,grp_fu_2650_p_dout0,grp_fu_2650_p_ce,grp_fu_2654_p_din0,grp_fu_2654_p_din1,grp_fu_2654_p_dout0,grp_fu_2654_p_ce); 
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
input  [22:0] tmp_132;
output  [22:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
output  [22:0] v0_address1;
output   v0_ce1;
input  [31:0] v0_q1;
input  [31:0] v22_5;
output  [9:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
output  [9:0] v3_address1;
output   v3_ce1;
output   v3_we1;
output  [31:0] v3_d1;
input  [9:0] tmp_102;
input  [0:0] empty;
output  [31:0] grp_fu_2650_p_din0;
output  [31:0] grp_fu_2650_p_din1;
input  [31:0] grp_fu_2650_p_dout0;
output   grp_fu_2650_p_ce;
output  [31:0] grp_fu_2654_p_din0;
output  [31:0] grp_fu_2654_p_din1;
input  [31:0] grp_fu_2654_p_dout0;
output   grp_fu_2654_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_26_reg_678;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_274;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_278;
reg   [31:0] reg_282;
reg   [31:0] reg_287;
reg   [10:0] v19_5_reg_669;
reg   [10:0] v19_5_reg_669_pp0_iter1_reg;
reg   [0:0] tmp_26_reg_678_pp0_iter1_reg;
wire   [8:0] tmp_s_fu_323_p4;
reg   [8:0] tmp_s_reg_687;
reg   [8:0] tmp_s_reg_687_pp0_iter1_reg;
wire   [7:0] tmp_25_fu_354_p4;
reg   [7:0] tmp_25_reg_697;
reg   [7:0] tmp_25_reg_697_pp0_iter1_reg;
wire   [31:0] v23_fu_401_p1;
wire   [31:0] v23_36_fu_406_p1;
wire   [6:0] tmp_27_fu_411_p4;
reg   [6:0] tmp_27_reg_723;
reg   [6:0] tmp_27_reg_723_pp0_iter1_reg;
wire   [0:0] tmp_28_fu_439_p3;
reg   [0:0] tmp_28_reg_738;
reg   [0:0] tmp_28_reg_738_pp0_iter1_reg;
wire   [31:0] v23_37_fu_469_p1;
wire   [31:0] v23_38_fu_474_p1;
wire   [31:0] v23_39_fu_525_p1;
wire   [31:0] v23_40_fu_530_p1;
wire   [31:0] v23_41_fu_535_p1;
wire   [31:0] v23_42_fu_540_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln51_fu_318_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_58_fu_349_p1;
wire   [63:0] zext_ln51_60_fu_377_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_62_fu_396_p1;
wire   [63:0] zext_ln51_64_fu_434_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln51_66_fu_464_p1;
wire   [63:0] zext_ln51_68_fu_492_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln51_70_fu_510_p1;
wire   [63:0] zext_ln47_fu_545_p1;
wire   [63:0] zext_ln51_57_fu_556_p1;
wire   [63:0] zext_ln51_59_fu_568_p1;
wire   [63:0] zext_ln51_61_fu_580_p1;
wire   [63:0] zext_ln51_63_fu_592_p1;
wire   [63:0] zext_ln51_65_fu_607_p1;
wire   [63:0] zext_ln51_67_fu_619_p1;
wire   [63:0] zext_ln51_69_fu_631_p1;
reg   [10:0] v19_fu_92;
wire   [10:0] add_ln47_fu_515_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_5;
reg    v0_ce1_local;
reg   [22:0] v0_address1_local;
reg    v0_ce0_local;
reg   [22:0] v0_address0_local;
reg    v3_we1_local;
reg    v3_ce1_local;
reg   [9:0] v3_address1_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg   [9:0] v3_address0_local;
reg   [31:0] grp_fu_266_p1;
reg   [31:0] grp_fu_270_p1;
wire   [22:0] zext_ln47_3_fu_308_p1;
wire   [22:0] add_ln51_fu_312_p2;
wire   [22:0] add_ln51_s_fu_333_p7;
wire   [22:0] add_ln51_27_fu_363_p7;
wire   [22:0] add_ln51_28_fu_382_p7;
wire   [22:0] add_ln51_29_fu_420_p7;
wire   [22:0] add_ln51_30_fu_446_p9;
wire   [22:0] add_ln51_31_fu_479_p7;
wire   [22:0] add_ln51_32_fu_497_p7;
wire   [9:0] or_ln47_s_fu_549_p3;
wire   [9:0] or_ln47_25_fu_561_p3;
wire   [9:0] or_ln47_26_fu_573_p3;
wire   [9:0] or_ln47_27_fu_585_p3;
wire   [9:0] or_ln47_28_fu_597_p5;
wire   [9:0] or_ln47_29_fu_612_p3;
wire   [9:0] or_ln47_30_fu_624_p3;
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
#0 v19_fu_92 = 11'd0;
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
        v19_fu_92 <= 11'd0;
    end else if (((tmp_26_reg_678 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v19_fu_92 <= add_ln47_fu_515_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_274 <= v0_q1;
        reg_278 <= v0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_282 <= grp_fu_2650_p_dout0;
        reg_287 <= grp_fu_2654_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_25_reg_697 <= {{v19_5_reg_669[9:2]}};
        tmp_25_reg_697_pp0_iter1_reg <= tmp_25_reg_697;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_26_reg_678 <= ap_sig_allocacmp_v19_5[32'd10];
        tmp_26_reg_678_pp0_iter1_reg <= tmp_26_reg_678;
        tmp_s_reg_687 <= {{ap_sig_allocacmp_v19_5[9:1]}};
        tmp_s_reg_687_pp0_iter1_reg <= tmp_s_reg_687;
        v19_5_reg_669 <= ap_sig_allocacmp_v19_5;
        v19_5_reg_669_pp0_iter1_reg <= v19_5_reg_669;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_27_reg_723 <= {{v19_5_reg_669[9:3]}};
        tmp_27_reg_723_pp0_iter1_reg <= tmp_27_reg_723;
        tmp_28_reg_738 <= v19_5_reg_669[32'd1];
        tmp_28_reg_738_pp0_iter1_reg <= tmp_28_reg_738;
    end
end
always @ (*) begin
    if (((tmp_26_reg_678 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_26_reg_678_pp0_iter1_reg == 1'd1))) begin
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
        ap_sig_allocacmp_v19_5 = v19_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_266_p1 = v23_41_fu_535_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_266_p1 = v23_39_fu_525_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_266_p1 = v23_37_fu_469_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_266_p1 = v23_fu_401_p1;
    end else begin
        grp_fu_266_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_270_p1 = v23_42_fu_540_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_270_p1 = v23_40_fu_530_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_270_p1 = v23_38_fu_474_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_270_p1 = v23_36_fu_406_p1;
    end else begin
        grp_fu_270_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v0_address0_local = zext_ln51_70_fu_510_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v0_address0_local = zext_ln51_66_fu_464_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address0_local = zext_ln51_62_fu_396_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address0_local = zext_ln51_58_fu_349_p1;
        end else begin
            v0_address0_local = 'bx;
        end
    end else begin
        v0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v0_address1_local = zext_ln51_68_fu_492_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v0_address1_local = zext_ln51_64_fu_434_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address1_local = zext_ln51_60_fu_377_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address1_local = zext_ln51_fu_318_p1;
        end else begin
            v0_address1_local = 'bx;
        end
    end else begin
        v0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v0_ce1_local = 1'b1;
    end else begin
        v0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_address0_local = zext_ln51_69_fu_631_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_address0_local = zext_ln51_65_fu_607_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_address0_local = zext_ln51_61_fu_580_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_address0_local = zext_ln51_57_fu_556_p1;
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_address1_local = zext_ln51_67_fu_619_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_address1_local = zext_ln51_63_fu_592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_address1_local = zext_ln51_59_fu_568_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_address1_local = zext_ln47_fu_545_p1;
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
assign add_ln47_fu_515_p2 = (v19_5_reg_669 + 11'd8);
assign add_ln51_27_fu_363_p7 = {{{{{{tmp_102}, {1'd1}}, {empty}}, {1'd1}}, {tmp_25_fu_354_p4}}, {2'd2}};
assign add_ln51_28_fu_382_p7 = {{{{{{tmp_102}, {1'd1}}, {empty}}, {1'd1}}, {tmp_25_fu_354_p4}}, {2'd3}};
assign add_ln51_29_fu_420_p7 = {{{{{{tmp_102}, {1'd1}}, {empty}}, {1'd1}}, {tmp_27_fu_411_p4}}, {3'd4}};
assign add_ln51_30_fu_446_p9 = {{{{{{{{tmp_102}, {1'd1}}, {empty}}, {1'd1}}, {tmp_27_fu_411_p4}}, {1'd1}}, {tmp_28_fu_439_p3}}, {1'd1}};
assign add_ln51_31_fu_479_p7 = {{{{{{tmp_102}, {1'd1}}, {empty}}, {1'd1}}, {tmp_27_reg_723}}, {3'd6}};
assign add_ln51_32_fu_497_p7 = {{{{{{tmp_102}, {1'd1}}, {empty}}, {1'd1}}, {tmp_27_reg_723}}, {3'd7}};
assign add_ln51_fu_312_p2 = (zext_ln47_3_fu_308_p1 + tmp_132);
assign add_ln51_s_fu_333_p7 = {{{{{{tmp_102}, {1'd1}}, {empty}}, {1'd1}}, {tmp_s_fu_323_p4}}, {1'd1}};
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
assign grp_fu_2650_p_ce = 1'b1;
assign grp_fu_2650_p_din0 = v22_5;
assign grp_fu_2650_p_din1 = grp_fu_266_p1;
assign grp_fu_2654_p_ce = 1'b1;
assign grp_fu_2654_p_din0 = v22_5;
assign grp_fu_2654_p_din1 = grp_fu_270_p1;
assign or_ln47_25_fu_561_p3 = {{tmp_25_reg_697_pp0_iter1_reg}, {2'd2}};
assign or_ln47_26_fu_573_p3 = {{tmp_25_reg_697_pp0_iter1_reg}, {2'd3}};
assign or_ln47_27_fu_585_p3 = {{tmp_27_reg_723_pp0_iter1_reg}, {3'd4}};
assign or_ln47_28_fu_597_p5 = {{{{tmp_27_reg_723_pp0_iter1_reg}, {1'd1}}, {tmp_28_reg_738_pp0_iter1_reg}}, {1'd1}};
assign or_ln47_29_fu_612_p3 = {{tmp_27_reg_723_pp0_iter1_reg}, {3'd6}};
assign or_ln47_30_fu_624_p3 = {{tmp_27_reg_723_pp0_iter1_reg}, {3'd7}};
assign or_ln47_s_fu_549_p3 = {{tmp_s_reg_687_pp0_iter1_reg}, {1'd1}};
assign tmp_25_fu_354_p4 = {{v19_5_reg_669[9:2]}};
assign tmp_27_fu_411_p4 = {{v19_5_reg_669[9:3]}};
assign tmp_28_fu_439_p3 = v19_5_reg_669[32'd1];
assign tmp_s_fu_323_p4 = {{ap_sig_allocacmp_v19_5[9:1]}};
assign v0_address0 = v0_address0_local;
assign v0_address1 = v0_address1_local;
assign v0_ce0 = v0_ce0_local;
assign v0_ce1 = v0_ce1_local;
assign v23_36_fu_406_p1 = reg_278;
assign v23_37_fu_469_p1 = reg_274;
assign v23_38_fu_474_p1 = reg_278;
assign v23_39_fu_525_p1 = reg_274;
assign v23_40_fu_530_p1 = reg_278;
assign v23_41_fu_535_p1 = reg_274;
assign v23_42_fu_540_p1 = reg_278;
assign v23_fu_401_p1 = reg_274;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = reg_287;
assign v3_d1 = reg_282;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign zext_ln47_3_fu_308_p1 = ap_sig_allocacmp_v19_5;
assign zext_ln47_fu_545_p1 = v19_5_reg_669_pp0_iter1_reg;
assign zext_ln51_57_fu_556_p1 = or_ln47_s_fu_549_p3;
assign zext_ln51_58_fu_349_p1 = add_ln51_s_fu_333_p7;
assign zext_ln51_59_fu_568_p1 = or_ln47_25_fu_561_p3;
assign zext_ln51_60_fu_377_p1 = add_ln51_27_fu_363_p7;
assign zext_ln51_61_fu_580_p1 = or_ln47_26_fu_573_p3;
assign zext_ln51_62_fu_396_p1 = add_ln51_28_fu_382_p7;
assign zext_ln51_63_fu_592_p1 = or_ln47_27_fu_585_p3;
assign zext_ln51_64_fu_434_p1 = add_ln51_29_fu_420_p7;
assign zext_ln51_65_fu_607_p1 = or_ln47_28_fu_597_p5;
assign zext_ln51_66_fu_464_p1 = add_ln51_30_fu_446_p9;
assign zext_ln51_67_fu_619_p1 = or_ln47_29_fu_612_p3;
assign zext_ln51_68_fu_492_p1 = add_ln51_31_fu_479_p7;
assign zext_ln51_69_fu_631_p1 = or_ln47_30_fu_624_p3;
assign zext_ln51_70_fu_510_p1 = add_ln51_32_fu_497_p7;
assign zext_ln51_fu_318_p1 = add_ln51_fu_312_p2;
endmodule 