module atax_atax_node1_Pipeline_label_32 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,lshr_ln,v114_1_address0,v114_1_ce0,v114_1_q0,v114_1_address1,v114_1_ce1,v114_1_q1,v58_7_address0,v58_7_ce0,v58_7_we0,v58_7_d0,v58_7_address1,v58_7_ce1,v58_7_q1,v58_6_address0,v58_6_ce0,v58_6_we0,v58_6_d0,v58_6_address1,v58_6_ce1,v58_6_q1,v58_5_address0,v58_5_ce0,v58_5_we0,v58_5_d0,v58_5_q0,v58_4_address0,v58_4_ce0,v58_4_we0,v58_4_d0,v58_4_q0,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v65_1,grp_fu_645_p_din0,grp_fu_645_p_din1,grp_fu_645_p_opcode,grp_fu_645_p_dout0,grp_fu_645_p_ce,grp_fu_649_p_din0,grp_fu_649_p_din1,grp_fu_649_p_opcode,grp_fu_649_p_dout0,grp_fu_649_p_ce,grp_fu_653_p_din0,grp_fu_653_p_din1,grp_fu_653_p_dout0,grp_fu_653_p_ce,grp_fu_657_p_din0,grp_fu_657_p_din1,grp_fu_657_p_dout0,grp_fu_657_p_ce); 
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
input  [3:0] lshr_ln;
output  [9:0] v114_1_address0;
output   v114_1_ce0;
input  [31:0] v114_1_q0;
output  [9:0] v114_1_address1;
output   v114_1_ce1;
input  [31:0] v114_1_q1;
output  [2:0] v58_7_address0;
output   v58_7_ce0;
output   v58_7_we0;
output  [31:0] v58_7_d0;
output  [2:0] v58_7_address1;
output   v58_7_ce1;
input  [31:0] v58_7_q1;
output  [2:0] v58_6_address0;
output   v58_6_ce0;
output   v58_6_we0;
output  [31:0] v58_6_d0;
output  [2:0] v58_6_address1;
output   v58_6_ce1;
input  [31:0] v58_6_q1;
output  [2:0] v58_5_address0;
output   v58_5_ce0;
output   v58_5_we0;
output  [31:0] v58_5_d0;
input  [31:0] v58_5_q0;
output  [2:0] v58_4_address0;
output   v58_4_ce0;
output   v58_4_we0;
output  [31:0] v58_4_d0;
input  [31:0] v58_4_q0;
output  [2:0] v58_3_address0;
output   v58_3_ce0;
output   v58_3_we0;
output  [31:0] v58_3_d0;
input  [31:0] v58_3_q0;
output  [2:0] v58_2_address0;
output   v58_2_ce0;
output   v58_2_we0;
output  [31:0] v58_2_d0;
input  [31:0] v58_2_q0;
output  [2:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [2:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
input  [31:0] v65_1;
output  [31:0] grp_fu_645_p_din0;
output  [31:0] grp_fu_645_p_din1;
output  [1:0] grp_fu_645_p_opcode;
input  [31:0] grp_fu_645_p_dout0;
output   grp_fu_645_p_ce;
output  [31:0] grp_fu_649_p_din0;
output  [31:0] grp_fu_649_p_din1;
output  [1:0] grp_fu_649_p_opcode;
input  [31:0] grp_fu_649_p_dout0;
output   grp_fu_649_p_ce;
output  [31:0] grp_fu_653_p_din0;
output  [31:0] grp_fu_653_p_din1;
input  [31:0] grp_fu_653_p_dout0;
output   grp_fu_653_p_ce;
output  [31:0] grp_fu_657_p_din0;
output  [31:0] grp_fu_657_p_din1;
input  [31:0] grp_fu_657_p_dout0;
output   grp_fu_657_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_591;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_309;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_313;
reg   [31:0] reg_317;
reg   [31:0] reg_325;
reg   [6:0] v60_reg_584;
wire   [0:0] tmp_fu_341_p3;
reg   [0:0] tmp_reg_591_pp0_iter1_reg;
reg   [0:0] tmp_reg_591_pp0_iter2_reg;
reg   [2:0] lshr_ln98_1_reg_605;
reg   [0:0] tmp_13_reg_624;
wire   [31:0] v64_fu_455_p1;
wire   [31:0] v71_fu_460_p1;
wire   [31:0] v77_fu_494_p1;
wire   [31:0] v83_fu_499_p1;
reg   [2:0] v58_0_addr_reg_669;
reg   [2:0] v58_0_addr_reg_669_pp0_iter2_reg;
reg   [2:0] v58_0_addr_reg_669_pp0_iter3_reg;
reg   [2:0] v58_1_addr_reg_674;
reg   [2:0] v58_1_addr_reg_674_pp0_iter2_reg;
reg   [2:0] v58_1_addr_reg_674_pp0_iter3_reg;
reg   [2:0] v58_2_addr_reg_679;
reg   [2:0] v58_2_addr_reg_679_pp0_iter2_reg;
reg   [2:0] v58_2_addr_reg_679_pp0_iter3_reg;
reg   [2:0] v58_3_addr_reg_684;
reg   [2:0] v58_3_addr_reg_684_pp0_iter2_reg;
reg   [2:0] v58_3_addr_reg_684_pp0_iter3_reg;
reg   [2:0] v58_4_addr_reg_689;
reg   [2:0] v58_4_addr_reg_689_pp0_iter2_reg;
reg   [2:0] v58_4_addr_reg_689_pp0_iter3_reg;
wire   [31:0] v89_fu_541_p1;
reg   [2:0] v58_5_addr_reg_699;
reg   [2:0] v58_5_addr_reg_699_pp0_iter2_reg;
reg   [2:0] v58_5_addr_reg_699_pp0_iter3_reg;
wire   [31:0] v95_fu_546_p1;
reg   [2:0] v58_6_addr_reg_709;
reg   [2:0] v58_6_addr_reg_709_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_709_pp0_iter3_reg;
reg   [2:0] v58_7_addr_reg_715;
reg   [2:0] v58_7_addr_reg_715_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_715_pp0_iter3_reg;
reg   [31:0] v62_reg_721;
reg   [31:0] v66_reg_726;
reg   [31:0] v72_reg_731;
wire   [31:0] v101_fu_551_p1;
wire   [31:0] v107_fu_556_p1;
reg   [31:0] v69_reg_746;
reg   [31:0] v75_reg_751;
reg   [31:0] v81_reg_756;
reg   [31:0] v87_reg_761;
reg   [31:0] v93_reg_766;
reg   [31:0] v99_reg_771;
reg   [31:0] v105_reg_776;
reg   [31:0] v78_reg_781;
reg   [31:0] v84_reg_786;
reg   [31:0] v90_reg_791;
reg   [31:0] v96_reg_796;
reg   [31:0] v102_reg_801;
reg   [31:0] v108_reg_806;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln102_fu_361_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln110_fu_386_p1;
wire   [63:0] zext_ln117_fu_429_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln124_fu_443_p1;
wire   [63:0] zext_ln131_fu_473_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln138_fu_489_p1;
wire   [63:0] zext_ln145_fu_512_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln152_fu_525_p1;
wire   [63:0] zext_ln98_fu_530_p1;
reg   [6:0] v60_1_fu_92;
wire   [6:0] add_ln98_fu_391_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60;
reg    v114_1_ce1_local;
reg   [9:0] v114_1_address1_local;
reg    v114_1_ce0_local;
reg   [9:0] v114_1_address0_local;
reg    v58_0_ce0_local;
reg   [2:0] v58_0_address0_local;
reg    v58_0_we0_local;
reg    v58_1_ce0_local;
reg   [2:0] v58_1_address0_local;
reg    v58_1_we0_local;
reg    v58_2_ce0_local;
reg   [2:0] v58_2_address0_local;
reg    v58_2_we0_local;
reg    v58_3_ce0_local;
reg   [2:0] v58_3_address0_local;
reg    v58_3_we0_local;
reg    v58_4_ce0_local;
reg   [2:0] v58_4_address0_local;
reg    v58_4_we0_local;
reg    v58_5_ce0_local;
reg   [2:0] v58_5_address0_local;
reg    v58_5_we0_local;
reg    v58_6_ce1_local;
reg    v58_6_we0_local;
reg    v58_6_ce0_local;
reg    v58_7_ce1_local;
reg    v58_7_we0_local;
reg    v58_7_ce0_local;
reg   [31:0] grp_fu_293_p0;
reg   [31:0] grp_fu_293_p1;
reg   [31:0] grp_fu_297_p0;
reg   [31:0] grp_fu_297_p1;
reg   [31:0] grp_fu_301_p0;
reg   [31:0] grp_fu_305_p0;
wire   [5:0] trunc_ln98_fu_349_p1;
wire   [9:0] tmp_19_fu_353_p3;
wire   [4:0] tmp_20_fu_366_p4;
wire   [9:0] tmp_21_fu_376_p4;
wire   [3:0] tmp_22_fu_411_p4;
wire   [9:0] tmp_24_fu_420_p4;
wire   [9:0] tmp_26_fu_434_p4;
wire   [9:0] tmp_29_fu_465_p4;
wire   [9:0] tmp_32_fu_478_p6;
wire   [9:0] tmp_35_fu_504_p4;
wire   [9:0] tmp_37_fu_517_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v60_1_fu_92 = 7'd0;
#0 ap_done_reg = 1'b0;
end
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_341_p3 == 1'd0))) begin
            v60_1_fu_92 <= add_ln98_fu_391_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v60_1_fu_92 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln98_1_reg_605 <= {{v60_reg_584[5:3]}};
        tmp_13_reg_624 <= v60_reg_584[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_309 <= v114_1_q1;
        reg_313 <= v114_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_317 <= grp_fu_645_p_dout0;
        reg_325 <= grp_fu_649_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_591 <= ap_sig_allocacmp_v60[32'd6];
        tmp_reg_591_pp0_iter1_reg <= tmp_reg_591;
        tmp_reg_591_pp0_iter2_reg <= tmp_reg_591_pp0_iter1_reg;
        v58_0_addr_reg_669 <= zext_ln98_fu_530_p1;
        v58_0_addr_reg_669_pp0_iter2_reg <= v58_0_addr_reg_669;
        v58_0_addr_reg_669_pp0_iter3_reg <= v58_0_addr_reg_669_pp0_iter2_reg;
        v58_1_addr_reg_674 <= zext_ln98_fu_530_p1;
        v58_1_addr_reg_674_pp0_iter2_reg <= v58_1_addr_reg_674;
        v58_1_addr_reg_674_pp0_iter3_reg <= v58_1_addr_reg_674_pp0_iter2_reg;
        v58_2_addr_reg_679 <= zext_ln98_fu_530_p1;
        v58_2_addr_reg_679_pp0_iter2_reg <= v58_2_addr_reg_679;
        v58_2_addr_reg_679_pp0_iter3_reg <= v58_2_addr_reg_679_pp0_iter2_reg;
        v58_3_addr_reg_684 <= zext_ln98_fu_530_p1;
        v58_3_addr_reg_684_pp0_iter2_reg <= v58_3_addr_reg_684;
        v58_3_addr_reg_684_pp0_iter3_reg <= v58_3_addr_reg_684_pp0_iter2_reg;
        v58_4_addr_reg_689 <= zext_ln98_fu_530_p1;
        v58_4_addr_reg_689_pp0_iter2_reg <= v58_4_addr_reg_689;
        v58_4_addr_reg_689_pp0_iter3_reg <= v58_4_addr_reg_689_pp0_iter2_reg;
        v58_5_addr_reg_699 <= zext_ln98_fu_530_p1;
        v58_5_addr_reg_699_pp0_iter2_reg <= v58_5_addr_reg_699;
        v58_5_addr_reg_699_pp0_iter3_reg <= v58_5_addr_reg_699_pp0_iter2_reg;
        v58_6_addr_reg_709 <= zext_ln98_fu_530_p1;
        v58_6_addr_reg_709_pp0_iter2_reg <= v58_6_addr_reg_709;
        v58_6_addr_reg_709_pp0_iter3_reg <= v58_6_addr_reg_709_pp0_iter2_reg;
        v58_7_addr_reg_715 <= zext_ln98_fu_530_p1;
        v58_7_addr_reg_715_pp0_iter2_reg <= v58_7_addr_reg_715;
        v58_7_addr_reg_715_pp0_iter3_reg <= v58_7_addr_reg_715_pp0_iter2_reg;
        v60_reg_584 <= ap_sig_allocacmp_v60;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_801 <= grp_fu_653_p_dout0;
        v108_reg_806 <= grp_fu_657_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v105_reg_776 <= v58_7_q1;
        v62_reg_721 <= v58_0_q0;
        v66_reg_726 <= grp_fu_653_p_dout0;
        v69_reg_746 <= v58_1_q0;
        v72_reg_731 <= grp_fu_657_p_dout0;
        v75_reg_751 <= v58_2_q0;
        v81_reg_756 <= v58_3_q0;
        v87_reg_761 <= v58_4_q0;
        v93_reg_766 <= v58_5_q0;
        v99_reg_771 <= v58_6_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v78_reg_781 <= grp_fu_653_p_dout0;
        v84_reg_786 <= grp_fu_657_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v90_reg_791 <= grp_fu_653_p_dout0;
        v96_reg_796 <= grp_fu_657_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_591 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_reg_591_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
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
        ap_sig_allocacmp_v60 = 7'd0;
    end else begin
        ap_sig_allocacmp_v60 = v60_1_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_293_p0 = v99_reg_771;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_293_p0 = v87_reg_761;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_293_p0 = v75_reg_751;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_293_p0 = v62_reg_721;
    end else begin
        grp_fu_293_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_293_p1 = v102_reg_801;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_293_p1 = v90_reg_791;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_293_p1 = v78_reg_781;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_293_p1 = v66_reg_726;
    end else begin
        grp_fu_293_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_297_p0 = v105_reg_776;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_297_p0 = v93_reg_766;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_297_p0 = v81_reg_756;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_297_p0 = v69_reg_746;
    end else begin
        grp_fu_297_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_297_p1 = v108_reg_806;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_297_p1 = v96_reg_796;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_297_p1 = v84_reg_786;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_297_p1 = v72_reg_731;
    end else begin
        grp_fu_297_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_301_p0 = v101_fu_551_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_301_p0 = v89_fu_541_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_301_p0 = v77_fu_494_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_301_p0 = v64_fu_455_p1;
    end else begin
        grp_fu_301_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_305_p0 = v107_fu_556_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_305_p0 = v95_fu_546_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_305_p0 = v83_fu_499_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_305_p0 = v71_fu_460_p1;
    end else begin
        grp_fu_305_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_1_address0_local = zext_ln152_fu_525_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_1_address0_local = zext_ln138_fu_489_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_1_address0_local = zext_ln124_fu_443_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_1_address0_local = zext_ln110_fu_386_p1;
        end else begin
            v114_1_address0_local = 'bx;
        end
    end else begin
        v114_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_1_address1_local = zext_ln145_fu_512_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_1_address1_local = zext_ln131_fu_473_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_1_address1_local = zext_ln117_fu_429_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_1_address1_local = zext_ln102_fu_361_p1;
        end else begin
            v114_1_address1_local = 'bx;
        end
    end else begin
        v114_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_1_ce0_local = 1'b1;
    end else begin
        v114_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_1_ce1_local = 1'b1;
    end else begin
        v114_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = v58_0_addr_reg_669_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln98_fu_530_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = v58_1_addr_reg_674_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln98_fu_530_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_2_address0_local = v58_2_addr_reg_679_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln98_fu_530_p1;
    end else begin
        v58_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_2_ce0_local = 1'b1;
    end else begin
        v58_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_2_we0_local = 1'b1;
    end else begin
        v58_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_3_address0_local = v58_3_addr_reg_684_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln98_fu_530_p1;
    end else begin
        v58_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_3_ce0_local = 1'b1;
    end else begin
        v58_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_3_we0_local = 1'b1;
    end else begin
        v58_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_4_address0_local = v58_4_addr_reg_689_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_4_address0_local = zext_ln98_fu_530_p1;
    end else begin
        v58_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_4_ce0_local = 1'b1;
    end else begin
        v58_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_4_we0_local = 1'b1;
    end else begin
        v58_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_5_address0_local = v58_5_addr_reg_699_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_5_address0_local = zext_ln98_fu_530_p1;
    end else begin
        v58_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_5_ce0_local = 1'b1;
    end else begin
        v58_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_5_we0_local = 1'b1;
    end else begin
        v58_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_ce0_local = 1'b1;
    end else begin
        v58_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_ce1_local = 1'b1;
    end else begin
        v58_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_we0_local = 1'b1;
    end else begin
        v58_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_ce0_local = 1'b1;
    end else begin
        v58_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_ce1_local = 1'b1;
    end else begin
        v58_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_we0_local = 1'b1;
    end else begin
        v58_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln98_fu_391_p2 = (ap_sig_allocacmp_v60 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_645_p_ce = 1'b1;
assign grp_fu_645_p_din0 = grp_fu_293_p0;
assign grp_fu_645_p_din1 = grp_fu_293_p1;
assign grp_fu_645_p_opcode = 2'd0;
assign grp_fu_649_p_ce = 1'b1;
assign grp_fu_649_p_din0 = grp_fu_297_p0;
assign grp_fu_649_p_din1 = grp_fu_297_p1;
assign grp_fu_649_p_opcode = 2'd0;
assign grp_fu_653_p_ce = 1'b1;
assign grp_fu_653_p_din0 = grp_fu_301_p0;
assign grp_fu_653_p_din1 = v65_1;
assign grp_fu_657_p_ce = 1'b1;
assign grp_fu_657_p_din0 = grp_fu_305_p0;
assign grp_fu_657_p_din1 = v65_1;
assign tmp_19_fu_353_p3 = {{trunc_ln98_fu_349_p1}, {lshr_ln}};
assign tmp_20_fu_366_p4 = {{ap_sig_allocacmp_v60[5:1]}};
assign tmp_21_fu_376_p4 = {{{tmp_20_fu_366_p4}, {1'd1}}, {lshr_ln}};
assign tmp_22_fu_411_p4 = {{v60_reg_584[5:2]}};
assign tmp_24_fu_420_p4 = {{{tmp_22_fu_411_p4}, {2'd2}}, {lshr_ln}};
assign tmp_26_fu_434_p4 = {{{tmp_22_fu_411_p4}, {2'd3}}, {lshr_ln}};
assign tmp_29_fu_465_p4 = {{{lshr_ln98_1_reg_605}, {3'd4}}, {lshr_ln}};
assign tmp_32_fu_478_p6 = {{{{{lshr_ln98_1_reg_605}, {1'd1}}, {tmp_13_reg_624}}, {1'd1}}, {lshr_ln}};
assign tmp_35_fu_504_p4 = {{{lshr_ln98_1_reg_605}, {3'd6}}, {lshr_ln}};
assign tmp_37_fu_517_p4 = {{{lshr_ln98_1_reg_605}, {3'd7}}, {lshr_ln}};
assign tmp_fu_341_p3 = ap_sig_allocacmp_v60[32'd6];
assign trunc_ln98_fu_349_p1 = ap_sig_allocacmp_v60[5:0];
assign v101_fu_551_p1 = reg_309;
assign v107_fu_556_p1 = reg_313;
assign v114_1_address0 = v114_1_address0_local;
assign v114_1_address1 = v114_1_address1_local;
assign v114_1_ce0 = v114_1_ce0_local;
assign v114_1_ce1 = v114_1_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_d0 = reg_317;
assign v58_0_we0 = v58_0_we0_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_d0 = reg_325;
assign v58_1_we0 = v58_1_we0_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_d0 = reg_317;
assign v58_2_we0 = v58_2_we0_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_d0 = reg_325;
assign v58_3_we0 = v58_3_we0_local;
assign v58_4_address0 = v58_4_address0_local;
assign v58_4_ce0 = v58_4_ce0_local;
assign v58_4_d0 = reg_317;
assign v58_4_we0 = v58_4_we0_local;
assign v58_5_address0 = v58_5_address0_local;
assign v58_5_ce0 = v58_5_ce0_local;
assign v58_5_d0 = reg_325;
assign v58_5_we0 = v58_5_we0_local;
assign v58_6_address0 = v58_6_addr_reg_709_pp0_iter3_reg;
assign v58_6_address1 = zext_ln98_fu_530_p1;
assign v58_6_ce0 = v58_6_ce0_local;
assign v58_6_ce1 = v58_6_ce1_local;
assign v58_6_d0 = reg_317;
assign v58_6_we0 = v58_6_we0_local;
assign v58_7_address0 = v58_7_addr_reg_715_pp0_iter3_reg;
assign v58_7_address1 = zext_ln98_fu_530_p1;
assign v58_7_ce0 = v58_7_ce0_local;
assign v58_7_ce1 = v58_7_ce1_local;
assign v58_7_d0 = reg_325;
assign v58_7_we0 = v58_7_we0_local;
assign v64_fu_455_p1 = reg_309;
assign v71_fu_460_p1 = reg_313;
assign v77_fu_494_p1 = reg_309;
assign v83_fu_499_p1 = reg_313;
assign v89_fu_541_p1 = reg_309;
assign v95_fu_546_p1 = reg_313;
assign zext_ln102_fu_361_p1 = tmp_19_fu_353_p3;
assign zext_ln110_fu_386_p1 = tmp_21_fu_376_p4;
assign zext_ln117_fu_429_p1 = tmp_24_fu_420_p4;
assign zext_ln124_fu_443_p1 = tmp_26_fu_434_p4;
assign zext_ln131_fu_473_p1 = tmp_29_fu_465_p4;
assign zext_ln138_fu_489_p1 = tmp_32_fu_478_p6;
assign zext_ln145_fu_512_p1 = tmp_35_fu_504_p4;
assign zext_ln152_fu_525_p1 = tmp_37_fu_517_p4;
assign zext_ln98_fu_530_p1 = lshr_ln98_1_reg_605;
endmodule 