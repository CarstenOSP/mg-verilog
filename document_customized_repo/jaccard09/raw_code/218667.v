module SgdLR_sw_SgdLR_sw_Pipeline_label_329 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,empty,v0_address0,v0_ce0,v0_q0,v0_address1,v0_ce1,v0_q1,v22_11,grp_fu_5423_p_din0,grp_fu_5423_p_din1,grp_fu_5423_p_dout0,grp_fu_5423_p_ce,grp_fu_5427_p_din0,grp_fu_5427_p_din1,grp_fu_5427_p_dout0,grp_fu_5427_p_ce); 
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
output  [9:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
output  [9:0] v3_address1;
output   v3_ce1;
output   v3_we1;
output  [31:0] v3_d1;
input  [22:0] empty;
output  [22:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
output  [22:0] v0_address1;
output   v0_ce1;
input  [31:0] v0_q1;
input  [31:0] v22_11;
output  [31:0] grp_fu_5423_p_din0;
output  [31:0] grp_fu_5423_p_din1;
input  [31:0] grp_fu_5423_p_dout0;
output   grp_fu_5423_p_ce;
output  [31:0] grp_fu_5427_p_din0;
output  [31:0] grp_fu_5427_p_din1;
input  [31:0] grp_fu_5427_p_dout0;
output   grp_fu_5427_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_21_reg_616;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_258;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_262;
reg   [31:0] reg_266;
reg   [31:0] reg_271;
reg   [10:0] v19_7_reg_607;
reg   [10:0] v19_7_reg_607_pp0_iter1_reg;
reg   [0:0] tmp_21_reg_616_pp0_iter1_reg;
wire   [8:0] tmp_s_fu_307_p4;
reg   [8:0] tmp_s_reg_625;
reg   [8:0] tmp_s_reg_625_pp0_iter1_reg;
wire   [12:0] tmp_20_fu_317_p4;
reg   [12:0] tmp_20_reg_630;
wire   [7:0] tmp_22_fu_342_p4;
reg   [7:0] tmp_22_reg_645;
reg   [7:0] tmp_22_reg_645_pp0_iter1_reg;
wire   [31:0] v23_fu_379_p1;
wire   [31:0] v23_54_fu_384_p1;
wire   [6:0] tmp_23_fu_389_p4;
reg   [6:0] tmp_23_reg_671;
reg   [6:0] tmp_23_reg_671_pp0_iter1_reg;
wire   [0:0] tmp_24_fu_412_p3;
reg   [0:0] tmp_24_reg_686;
reg   [0:0] tmp_24_reg_686_pp0_iter1_reg;
wire   [31:0] v23_55_fu_437_p1;
wire   [31:0] v23_56_fu_442_p1;
wire   [31:0] v23_57_fu_483_p1;
wire   [31:0] v23_58_fu_488_p1;
wire   [31:0] v23_59_fu_493_p1;
wire   [31:0] v23_60_fu_498_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln51_fu_302_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_89_fu_337_p1;
wire   [63:0] zext_ln51_91_fu_360_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_93_fu_374_p1;
wire   [63:0] zext_ln51_95_fu_407_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln51_97_fu_432_p1;
wire   [63:0] zext_ln51_99_fu_455_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln51_101_fu_468_p1;
wire   [63:0] zext_ln47_fu_503_p1;
wire   [63:0] zext_ln51_88_fu_514_p1;
wire   [63:0] zext_ln51_90_fu_526_p1;
wire   [63:0] zext_ln51_92_fu_538_p1;
wire   [63:0] zext_ln51_94_fu_550_p1;
wire   [63:0] zext_ln51_96_fu_565_p1;
wire   [63:0] zext_ln51_98_fu_577_p1;
wire   [63:0] zext_ln51_100_fu_589_p1;
reg   [10:0] v19_fu_88;
wire   [10:0] add_ln47_fu_473_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_7;
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
reg   [31:0] grp_fu_250_p1;
reg   [31:0] grp_fu_254_p1;
wire   [22:0] zext_ln47_7_fu_292_p1;
wire   [22:0] add_ln51_fu_296_p2;
wire   [22:0] add_ln51_s_fu_327_p4;
wire   [22:0] add_ln51_43_fu_351_p4;
wire   [22:0] add_ln51_44_fu_365_p4;
wire   [22:0] add_ln51_45_fu_398_p4;
wire   [22:0] add_ln51_46_fu_419_p6;
wire   [22:0] add_ln51_47_fu_447_p4;
wire   [22:0] add_ln51_48_fu_460_p4;
wire   [9:0] or_ln47_s_fu_507_p3;
wire   [9:0] or_ln47_39_fu_519_p3;
wire   [9:0] or_ln47_40_fu_531_p3;
wire   [9:0] or_ln47_41_fu_543_p3;
wire   [9:0] or_ln47_42_fu_555_p5;
wire   [9:0] or_ln47_43_fu_570_p3;
wire   [9:0] or_ln47_44_fu_582_p3;
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
#0 v19_fu_88 = 11'd0;
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
        v19_fu_88 <= 11'd0;
    end else if (((tmp_21_reg_616 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v19_fu_88 <= add_ln47_fu_473_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_258 <= v0_q1;
        reg_262 <= v0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_266 <= grp_fu_5423_p_dout0;
        reg_271 <= grp_fu_5427_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_20_reg_630 <= {{empty[22:10]}};
        tmp_21_reg_616 <= ap_sig_allocacmp_v19_7[32'd10];
        tmp_21_reg_616_pp0_iter1_reg <= tmp_21_reg_616;
        tmp_s_reg_625 <= {{ap_sig_allocacmp_v19_7[9:1]}};
        tmp_s_reg_625_pp0_iter1_reg <= tmp_s_reg_625;
        v19_7_reg_607 <= ap_sig_allocacmp_v19_7;
        v19_7_reg_607_pp0_iter1_reg <= v19_7_reg_607;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_22_reg_645 <= {{v19_7_reg_607[9:2]}};
        tmp_22_reg_645_pp0_iter1_reg <= tmp_22_reg_645;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_23_reg_671 <= {{v19_7_reg_607[9:3]}};
        tmp_23_reg_671_pp0_iter1_reg <= tmp_23_reg_671;
        tmp_24_reg_686 <= v19_7_reg_607[32'd1];
        tmp_24_reg_686_pp0_iter1_reg <= tmp_24_reg_686;
    end
end
always @ (*) begin
    if (((tmp_21_reg_616 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_21_reg_616_pp0_iter1_reg == 1'd1))) begin
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
        ap_sig_allocacmp_v19_7 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_7 = v19_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_250_p1 = v23_59_fu_493_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_250_p1 = v23_57_fu_483_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_250_p1 = v23_55_fu_437_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_250_p1 = v23_fu_379_p1;
    end else begin
        grp_fu_250_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_254_p1 = v23_60_fu_498_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_254_p1 = v23_58_fu_488_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_254_p1 = v23_56_fu_442_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_254_p1 = v23_54_fu_384_p1;
    end else begin
        grp_fu_254_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v0_address0_local = zext_ln51_101_fu_468_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v0_address0_local = zext_ln51_97_fu_432_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address0_local = zext_ln51_93_fu_374_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address0_local = zext_ln51_89_fu_337_p1;
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
            v0_address1_local = zext_ln51_99_fu_455_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v0_address1_local = zext_ln51_95_fu_407_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address1_local = zext_ln51_91_fu_360_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address1_local = zext_ln51_fu_302_p1;
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
        v3_address0_local = zext_ln51_100_fu_589_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_address0_local = zext_ln51_96_fu_565_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_address0_local = zext_ln51_92_fu_538_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_address0_local = zext_ln51_88_fu_514_p1;
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_address1_local = zext_ln51_98_fu_577_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_address1_local = zext_ln51_94_fu_550_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_address1_local = zext_ln51_90_fu_526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_address1_local = zext_ln47_fu_503_p1;
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
assign add_ln47_fu_473_p2 = (v19_7_reg_607 + 11'd8);
assign add_ln51_43_fu_351_p4 = {{{tmp_20_reg_630}, {tmp_22_fu_342_p4}}, {2'd2}};
assign add_ln51_44_fu_365_p4 = {{{tmp_20_reg_630}, {tmp_22_fu_342_p4}}, {2'd3}};
assign add_ln51_45_fu_398_p4 = {{{tmp_20_reg_630}, {tmp_23_fu_389_p4}}, {3'd4}};
assign add_ln51_46_fu_419_p6 = {{{{{tmp_20_reg_630}, {tmp_23_fu_389_p4}}, {1'd1}}, {tmp_24_fu_412_p3}}, {1'd1}};
assign add_ln51_47_fu_447_p4 = {{{tmp_20_reg_630}, {tmp_23_reg_671}}, {3'd6}};
assign add_ln51_48_fu_460_p4 = {{{tmp_20_reg_630}, {tmp_23_reg_671}}, {3'd7}};
assign add_ln51_fu_296_p2 = (zext_ln47_7_fu_292_p1 + empty);
assign add_ln51_s_fu_327_p4 = {{{tmp_20_fu_317_p4}, {tmp_s_fu_307_p4}}, {1'd1}};
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
assign grp_fu_5423_p_ce = 1'b1;
assign grp_fu_5423_p_din0 = v22_11;
assign grp_fu_5423_p_din1 = grp_fu_250_p1;
assign grp_fu_5427_p_ce = 1'b1;
assign grp_fu_5427_p_din0 = v22_11;
assign grp_fu_5427_p_din1 = grp_fu_254_p1;
assign or_ln47_39_fu_519_p3 = {{tmp_22_reg_645_pp0_iter1_reg}, {2'd2}};
assign or_ln47_40_fu_531_p3 = {{tmp_22_reg_645_pp0_iter1_reg}, {2'd3}};
assign or_ln47_41_fu_543_p3 = {{tmp_23_reg_671_pp0_iter1_reg}, {3'd4}};
assign or_ln47_42_fu_555_p5 = {{{{tmp_23_reg_671_pp0_iter1_reg}, {1'd1}}, {tmp_24_reg_686_pp0_iter1_reg}}, {1'd1}};
assign or_ln47_43_fu_570_p3 = {{tmp_23_reg_671_pp0_iter1_reg}, {3'd6}};
assign or_ln47_44_fu_582_p3 = {{tmp_23_reg_671_pp0_iter1_reg}, {3'd7}};
assign or_ln47_s_fu_507_p3 = {{tmp_s_reg_625_pp0_iter1_reg}, {1'd1}};
assign tmp_20_fu_317_p4 = {{empty[22:10]}};
assign tmp_22_fu_342_p4 = {{v19_7_reg_607[9:2]}};
assign tmp_23_fu_389_p4 = {{v19_7_reg_607[9:3]}};
assign tmp_24_fu_412_p3 = v19_7_reg_607[32'd1];
assign tmp_s_fu_307_p4 = {{ap_sig_allocacmp_v19_7[9:1]}};
assign v0_address0 = v0_address0_local;
assign v0_address1 = v0_address1_local;
assign v0_ce0 = v0_ce0_local;
assign v0_ce1 = v0_ce1_local;
assign v23_54_fu_384_p1 = reg_262;
assign v23_55_fu_437_p1 = reg_258;
assign v23_56_fu_442_p1 = reg_262;
assign v23_57_fu_483_p1 = reg_258;
assign v23_58_fu_488_p1 = reg_262;
assign v23_59_fu_493_p1 = reg_258;
assign v23_60_fu_498_p1 = reg_262;
assign v23_fu_379_p1 = reg_258;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = reg_271;
assign v3_d1 = reg_266;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign zext_ln47_7_fu_292_p1 = ap_sig_allocacmp_v19_7;
assign zext_ln47_fu_503_p1 = v19_7_reg_607_pp0_iter1_reg;
assign zext_ln51_100_fu_589_p1 = or_ln47_44_fu_582_p3;
assign zext_ln51_101_fu_468_p1 = add_ln51_48_fu_460_p4;
assign zext_ln51_88_fu_514_p1 = or_ln47_s_fu_507_p3;
assign zext_ln51_89_fu_337_p1 = add_ln51_s_fu_327_p4;
assign zext_ln51_90_fu_526_p1 = or_ln47_39_fu_519_p3;
assign zext_ln51_91_fu_360_p1 = add_ln51_43_fu_351_p4;
assign zext_ln51_92_fu_538_p1 = or_ln47_40_fu_531_p3;
assign zext_ln51_93_fu_374_p1 = add_ln51_44_fu_365_p4;
assign zext_ln51_94_fu_550_p1 = or_ln47_41_fu_543_p3;
assign zext_ln51_95_fu_407_p1 = add_ln51_45_fu_398_p4;
assign zext_ln51_96_fu_565_p1 = or_ln47_42_fu_555_p5;
assign zext_ln51_97_fu_432_p1 = add_ln51_46_fu_419_p6;
assign zext_ln51_98_fu_577_p1 = or_ln47_43_fu_570_p3;
assign zext_ln51_99_fu_455_p1 = add_ln51_47_fu_447_p4;
assign zext_ln51_fu_302_p1 = add_ln51_fu_296_p2;
endmodule 