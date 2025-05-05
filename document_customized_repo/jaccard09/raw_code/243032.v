module atax_atax_node1_Pipeline_label_34 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp_54,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v65_2,grp_fu_564_p_din0,grp_fu_564_p_din1,grp_fu_564_p_opcode,grp_fu_564_p_dout0,grp_fu_564_p_ce,grp_fu_568_p_din0,grp_fu_568_p_din1,grp_fu_568_p_opcode,grp_fu_568_p_dout0,grp_fu_568_p_ce,grp_fu_572_p_din0,grp_fu_572_p_din1,grp_fu_572_p_dout0,grp_fu_572_p_ce,grp_fu_576_p_din0,grp_fu_576_p_din1,grp_fu_576_p_dout0,grp_fu_576_p_ce); 
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
input  [3:0] tmp_54;
output  [11:0] v114_address0;
output   v114_ce0;
input  [31:0] v114_q0;
output  [11:0] v114_address1;
output   v114_ce1;
input  [31:0] v114_q1;
output  [4:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [4:0] v58_1_address1;
output   v58_1_ce1;
output   v58_1_we1;
output  [31:0] v58_1_d1;
input  [31:0] v58_1_q1;
output  [4:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [4:0] v58_0_address1;
output   v58_0_ce1;
output   v58_0_we1;
output  [31:0] v58_0_d1;
input  [31:0] v58_0_q1;
input  [31:0] v65_2;
output  [31:0] grp_fu_564_p_din0;
output  [31:0] grp_fu_564_p_din1;
output  [1:0] grp_fu_564_p_opcode;
input  [31:0] grp_fu_564_p_dout0;
output   grp_fu_564_p_ce;
output  [31:0] grp_fu_568_p_din0;
output  [31:0] grp_fu_568_p_din1;
output  [1:0] grp_fu_568_p_opcode;
input  [31:0] grp_fu_568_p_dout0;
output   grp_fu_568_p_ce;
output  [31:0] grp_fu_572_p_din0;
output  [31:0] grp_fu_572_p_din1;
input  [31:0] grp_fu_572_p_dout0;
output   grp_fu_572_p_ce;
output  [31:0] grp_fu_576_p_din0;
output  [31:0] grp_fu_576_p_din1;
input  [31:0] grp_fu_576_p_dout0;
output   grp_fu_576_p_ce;
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
reg   [0:0] tmp_reg_599;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_273;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_277;
reg   [31:0] reg_281;
reg   [31:0] reg_286;
reg   [6:0] v60_reg_592;
wire   [0:0] tmp_fu_299_p3;
wire   [4:0] lshr_ln98_2_fu_326_p4;
reg   [4:0] lshr_ln98_2_reg_608;
wire   [3:0] tmp_48_fu_364_p4;
reg   [3:0] tmp_48_reg_618;
reg   [2:0] tmp_51_reg_633;
reg   [0:0] tmp_13_reg_643;
wire   [31:0] v64_fu_421_p1;
wire   [31:0] v71_fu_426_p1;
wire   [31:0] v77_fu_464_p1;
wire   [31:0] v83_fu_469_p1;
reg   [4:0] v58_0_addr_8_reg_689;
reg   [4:0] v58_0_addr_8_reg_689_pp0_iter2_reg;
reg   [4:0] v58_0_addr_8_reg_689_pp0_iter3_reg;
reg   [4:0] v58_1_addr_8_reg_694;
reg   [4:0] v58_1_addr_8_reg_694_pp0_iter2_reg;
reg   [4:0] v58_1_addr_8_reg_694_pp0_iter3_reg;
reg   [4:0] v58_0_addr_9_reg_699;
reg   [4:0] v58_0_addr_9_reg_699_pp0_iter2_reg;
reg   [4:0] v58_0_addr_9_reg_699_pp0_iter3_reg;
reg   [4:0] v58_1_addr_9_reg_704;
reg   [4:0] v58_1_addr_9_reg_704_pp0_iter2_reg;
reg   [4:0] v58_1_addr_9_reg_704_pp0_iter3_reg;
wire   [31:0] v89_fu_522_p1;
wire   [31:0] v95_fu_527_p1;
reg   [31:0] v62_reg_719;
reg   [31:0] v66_reg_724;
reg   [31:0] v72_reg_729;
reg   [4:0] v58_0_addr_10_reg_734;
reg   [4:0] v58_0_addr_10_reg_734_pp0_iter2_reg;
reg   [4:0] v58_0_addr_10_reg_734_pp0_iter3_reg;
reg   [4:0] v58_1_addr_10_reg_739;
reg   [4:0] v58_1_addr_10_reg_739_pp0_iter2_reg;
reg   [4:0] v58_1_addr_10_reg_739_pp0_iter3_reg;
reg   [4:0] v58_0_addr_11_reg_744;
reg   [4:0] v58_0_addr_11_reg_744_pp0_iter2_reg;
reg   [4:0] v58_0_addr_11_reg_744_pp0_iter3_reg;
reg   [4:0] v58_0_addr_11_reg_744_pp0_iter4_reg;
wire   [31:0] v101_fu_559_p1;
reg   [4:0] v58_1_addr_11_reg_754;
reg   [4:0] v58_1_addr_11_reg_754_pp0_iter2_reg;
reg   [4:0] v58_1_addr_11_reg_754_pp0_iter3_reg;
reg   [4:0] v58_1_addr_11_reg_754_pp0_iter4_reg;
wire   [31:0] v107_fu_564_p1;
reg   [31:0] v69_reg_764;
reg   [31:0] v75_reg_769;
reg   [31:0] v81_reg_774;
reg   [31:0] v78_reg_779;
reg   [31:0] v84_reg_784;
reg   [31:0] v87_reg_789;
reg   [31:0] v93_reg_794;
reg   [31:0] v99_reg_799;
reg   [31:0] v105_reg_804;
reg   [31:0] v90_reg_809;
reg   [31:0] v96_reg_814;
reg   [31:0] v102_reg_819;
reg   [31:0] v108_reg_824;
reg   [31:0] v79_reg_829;
reg   [31:0] v85_reg_834;
reg   [31:0] v103_reg_839;
reg   [31:0] v109_reg_844;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln102_fu_321_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln110_fu_348_p1;
wire   [63:0] zext_ln117_fu_384_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln124_fu_400_p1;
wire   [63:0] zext_ln131_fu_441_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln138_fu_459_p1;
wire   [63:0] zext_ln145_fu_484_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln152_fu_499_p1;
wire   [63:0] zext_ln98_fu_504_p1;
wire   [63:0] zext_ln115_fu_516_p1;
wire   [63:0] zext_ln129_fu_540_p1;
wire   [63:0] zext_ln143_fu_553_p1;
reg   [6:0] v60_2_fu_86;
wire   [6:0] add_ln98_fu_353_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
reg    v58_0_ce1_local;
reg   [4:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [4:0] v58_0_address0_local;
reg    v58_0_we1_local;
reg    v58_0_we0_local;
reg   [31:0] v58_0_d0_local;
reg    v58_1_ce1_local;
reg   [4:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [4:0] v58_1_address0_local;
reg    v58_1_we1_local;
reg    v58_1_we0_local;
reg   [31:0] v58_1_d0_local;
reg   [31:0] grp_fu_257_p0;
reg   [31:0] grp_fu_257_p1;
reg   [31:0] grp_fu_261_p0;
reg   [31:0] grp_fu_261_p1;
reg   [31:0] grp_fu_265_p0;
reg   [31:0] grp_fu_269_p0;
wire   [5:0] trunc_ln98_fu_307_p1;
wire   [11:0] tmp_s_fu_311_p4;
wire   [11:0] tmp_47_fu_336_p5;
wire   [11:0] tmp_49_fu_373_p5;
wire   [11:0] tmp_50_fu_389_p5;
wire   [11:0] tmp_52_fu_431_p5;
wire   [11:0] tmp_53_fu_446_p7;
wire   [11:0] tmp_55_fu_474_p5;
wire   [11:0] tmp_56_fu_489_p5;
wire   [4:0] or_ln115_3_fu_509_p3;
wire   [4:0] or_ln129_3_fu_532_p4;
wire   [4:0] or_ln143_3_fu_546_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
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
#0 v60_2_fu_86 = 7'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_299_p3 == 1'd0))) begin
            v60_2_fu_86 <= add_ln98_fu_353_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v60_2_fu_86 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln98_2_reg_608 <= {{ap_sig_allocacmp_v60[5:1]}};
        tmp_reg_599 <= ap_sig_allocacmp_v60[32'd6];
        v58_0_addr_8_reg_689 <= zext_ln98_fu_504_p1;
        v58_0_addr_8_reg_689_pp0_iter2_reg <= v58_0_addr_8_reg_689;
        v58_0_addr_8_reg_689_pp0_iter3_reg <= v58_0_addr_8_reg_689_pp0_iter2_reg;
        v58_0_addr_9_reg_699[4 : 1] <= zext_ln115_fu_516_p1[4 : 1];
        v58_0_addr_9_reg_699_pp0_iter2_reg[4 : 1] <= v58_0_addr_9_reg_699[4 : 1];
        v58_0_addr_9_reg_699_pp0_iter3_reg[4 : 1] <= v58_0_addr_9_reg_699_pp0_iter2_reg[4 : 1];
        v58_1_addr_8_reg_694 <= zext_ln98_fu_504_p1;
        v58_1_addr_8_reg_694_pp0_iter2_reg <= v58_1_addr_8_reg_694;
        v58_1_addr_8_reg_694_pp0_iter3_reg <= v58_1_addr_8_reg_694_pp0_iter2_reg;
        v58_1_addr_9_reg_704[4 : 1] <= zext_ln115_fu_516_p1[4 : 1];
        v58_1_addr_9_reg_704_pp0_iter2_reg[4 : 1] <= v58_1_addr_9_reg_704[4 : 1];
        v58_1_addr_9_reg_704_pp0_iter3_reg[4 : 1] <= v58_1_addr_9_reg_704_pp0_iter2_reg[4 : 1];
        v60_reg_592 <= ap_sig_allocacmp_v60;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_273 <= v114_q1;
        reg_277 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_281 <= grp_fu_564_p_dout0;
        reg_286 <= grp_fu_568_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_13_reg_643 <= v60_reg_592[32'd1];
        tmp_48_reg_618 <= {{v60_reg_592[5:2]}};
        tmp_51_reg_633 <= {{v60_reg_592[5:3]}};
        v58_0_addr_10_reg_734[0] <= zext_ln129_fu_540_p1[0];
v58_0_addr_10_reg_734[4 : 2] <= zext_ln129_fu_540_p1[4 : 2];
        v58_0_addr_10_reg_734_pp0_iter2_reg[0] <= v58_0_addr_10_reg_734[0];
v58_0_addr_10_reg_734_pp0_iter2_reg[4 : 2] <= v58_0_addr_10_reg_734[4 : 2];
        v58_0_addr_10_reg_734_pp0_iter3_reg[0] <= v58_0_addr_10_reg_734_pp0_iter2_reg[0];
v58_0_addr_10_reg_734_pp0_iter3_reg[4 : 2] <= v58_0_addr_10_reg_734_pp0_iter2_reg[4 : 2];
        v58_0_addr_11_reg_744[4 : 2] <= zext_ln143_fu_553_p1[4 : 2];
        v58_0_addr_11_reg_744_pp0_iter2_reg[4 : 2] <= v58_0_addr_11_reg_744[4 : 2];
        v58_0_addr_11_reg_744_pp0_iter3_reg[4 : 2] <= v58_0_addr_11_reg_744_pp0_iter2_reg[4 : 2];
        v58_0_addr_11_reg_744_pp0_iter4_reg[4 : 2] <= v58_0_addr_11_reg_744_pp0_iter3_reg[4 : 2];
        v58_1_addr_10_reg_739[0] <= zext_ln129_fu_540_p1[0];
v58_1_addr_10_reg_739[4 : 2] <= zext_ln129_fu_540_p1[4 : 2];
        v58_1_addr_10_reg_739_pp0_iter2_reg[0] <= v58_1_addr_10_reg_739[0];
v58_1_addr_10_reg_739_pp0_iter2_reg[4 : 2] <= v58_1_addr_10_reg_739[4 : 2];
        v58_1_addr_10_reg_739_pp0_iter3_reg[0] <= v58_1_addr_10_reg_739_pp0_iter2_reg[0];
v58_1_addr_10_reg_739_pp0_iter3_reg[4 : 2] <= v58_1_addr_10_reg_739_pp0_iter2_reg[4 : 2];
        v58_1_addr_11_reg_754[4 : 2] <= zext_ln143_fu_553_p1[4 : 2];
        v58_1_addr_11_reg_754_pp0_iter2_reg[4 : 2] <= v58_1_addr_11_reg_754[4 : 2];
        v58_1_addr_11_reg_754_pp0_iter3_reg[4 : 2] <= v58_1_addr_11_reg_754_pp0_iter2_reg[4 : 2];
        v58_1_addr_11_reg_754_pp0_iter4_reg[4 : 2] <= v58_1_addr_11_reg_754_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_819 <= grp_fu_572_p_dout0;
        v108_reg_824 <= grp_fu_576_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v103_reg_839 <= grp_fu_564_p_dout0;
        v109_reg_844 <= grp_fu_568_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v105_reg_804 <= v58_1_q0;
        v78_reg_779 <= grp_fu_572_p_dout0;
        v84_reg_784 <= grp_fu_576_p_dout0;
        v87_reg_789 <= v58_0_q1;
        v93_reg_794 <= v58_1_q1;
        v99_reg_799 <= v58_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v62_reg_719 <= v58_0_q1;
        v66_reg_724 <= grp_fu_572_p_dout0;
        v69_reg_764 <= v58_1_q1;
        v72_reg_729 <= grp_fu_576_p_dout0;
        v75_reg_769 <= v58_0_q0;
        v81_reg_774 <= v58_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v79_reg_829 <= grp_fu_564_p_dout0;
        v85_reg_834 <= grp_fu_568_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v90_reg_809 <= grp_fu_572_p_dout0;
        v96_reg_814 <= grp_fu_576_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_599 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v60 = v60_2_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_257_p0 = v99_reg_799;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_257_p0 = v87_reg_789;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_257_p0 = v75_reg_769;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_257_p0 = v62_reg_719;
    end else begin
        grp_fu_257_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_257_p1 = v102_reg_819;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_257_p1 = v90_reg_809;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_257_p1 = v78_reg_779;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_257_p1 = v66_reg_724;
    end else begin
        grp_fu_257_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_261_p0 = v105_reg_804;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_261_p0 = v93_reg_794;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_261_p0 = v81_reg_774;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_261_p0 = v69_reg_764;
    end else begin
        grp_fu_261_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_261_p1 = v108_reg_824;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_261_p1 = v96_reg_814;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_261_p1 = v84_reg_784;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_261_p1 = v72_reg_729;
    end else begin
        grp_fu_261_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_265_p0 = v101_fu_559_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_265_p0 = v89_fu_522_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_265_p0 = v77_fu_464_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_265_p0 = v64_fu_421_p1;
    end else begin
        grp_fu_265_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_269_p0 = v107_fu_564_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_269_p0 = v95_fu_527_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_269_p0 = v83_fu_469_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_269_p0 = v71_fu_426_p1;
    end else begin
        grp_fu_269_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_address0_local = zext_ln152_fu_499_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_address0_local = zext_ln138_fu_459_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_address0_local = zext_ln124_fu_400_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_address0_local = zext_ln110_fu_348_p1;
        end else begin
            v114_address0_local = 'bx;
        end
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_address1_local = zext_ln145_fu_484_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_address1_local = zext_ln131_fu_441_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_address1_local = zext_ln117_fu_384_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_address1_local = zext_ln102_fu_321_p1;
        end else begin
            v114_address1_local = 'bx;
        end
    end else begin
        v114_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_ce0_local = 1'b1;
    end else begin
        v114_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_ce1_local = 1'b1;
    end else begin
        v114_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address0_local = v58_0_addr_11_reg_744_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_9_reg_699_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = zext_ln143_fu_553_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln115_fu_516_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_10_reg_734_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address1_local = v58_0_addr_8_reg_689_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address1_local = zext_ln129_fu_540_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_fu_504_p1;
    end else begin
        v58_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_0_ce1_local = 1'b1;
    end else begin
        v58_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_d0_local = v103_reg_839;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_d0_local = v79_reg_829;
    end else begin
        v58_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_we1_local = 1'b1;
    end else begin
        v58_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address0_local = v58_1_addr_11_reg_754_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_9_reg_704_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = zext_ln143_fu_553_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln115_fu_516_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_10_reg_739_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address1_local = v58_1_addr_8_reg_694_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address1_local = zext_ln129_fu_540_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_fu_504_p1;
    end else begin
        v58_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_1_ce1_local = 1'b1;
    end else begin
        v58_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_d0_local = v109_reg_844;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_d0_local = v85_reg_834;
    end else begin
        v58_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_we1_local = 1'b1;
    end else begin
        v58_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln98_fu_353_p2 = (ap_sig_allocacmp_v60 + 7'd8);
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
assign grp_fu_564_p_ce = 1'b1;
assign grp_fu_564_p_din0 = grp_fu_257_p0;
assign grp_fu_564_p_din1 = grp_fu_257_p1;
assign grp_fu_564_p_opcode = 2'd0;
assign grp_fu_568_p_ce = 1'b1;
assign grp_fu_568_p_din0 = grp_fu_261_p0;
assign grp_fu_568_p_din1 = grp_fu_261_p1;
assign grp_fu_568_p_opcode = 2'd0;
assign grp_fu_572_p_ce = 1'b1;
assign grp_fu_572_p_din0 = grp_fu_265_p0;
assign grp_fu_572_p_din1 = v65_2;
assign grp_fu_576_p_ce = 1'b1;
assign grp_fu_576_p_din0 = grp_fu_269_p0;
assign grp_fu_576_p_din1 = v65_2;
assign lshr_ln98_2_fu_326_p4 = {{ap_sig_allocacmp_v60[5:1]}};
assign or_ln115_3_fu_509_p3 = {{tmp_48_reg_618}, {1'd1}};
assign or_ln129_3_fu_532_p4 = {{{tmp_51_reg_633}, {1'd1}}, {tmp_13_reg_643}};
assign or_ln143_3_fu_546_p3 = {{tmp_51_reg_633}, {2'd3}};
assign tmp_47_fu_336_p5 = {{{{lshr_ln98_2_fu_326_p4}, {1'd1}}, {tmp_54}}, {2'd2}};
assign tmp_48_fu_364_p4 = {{v60_reg_592[5:2]}};
assign tmp_49_fu_373_p5 = {{{{tmp_48_fu_364_p4}, {2'd2}}, {tmp_54}}, {2'd2}};
assign tmp_50_fu_389_p5 = {{{{tmp_48_fu_364_p4}, {2'd3}}, {tmp_54}}, {2'd2}};
assign tmp_52_fu_431_p5 = {{{{tmp_51_reg_633}, {3'd4}}, {tmp_54}}, {2'd2}};
assign tmp_53_fu_446_p7 = {{{{{{tmp_51_reg_633}, {1'd1}}, {tmp_13_reg_643}}, {1'd1}}, {tmp_54}}, {2'd2}};
assign tmp_55_fu_474_p5 = {{{{tmp_51_reg_633}, {3'd6}}, {tmp_54}}, {2'd2}};
assign tmp_56_fu_489_p5 = {{{{tmp_51_reg_633}, {3'd7}}, {tmp_54}}, {2'd2}};
assign tmp_fu_299_p3 = ap_sig_allocacmp_v60[32'd6];
assign tmp_s_fu_311_p4 = {{{trunc_ln98_fu_307_p1}, {tmp_54}}, {2'd2}};
assign trunc_ln98_fu_307_p1 = ap_sig_allocacmp_v60[5:0];
assign v101_fu_559_p1 = reg_273;
assign v107_fu_564_p1 = reg_277;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = v58_0_d0_local;
assign v58_0_d1 = reg_281;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = v58_1_d0_local;
assign v58_1_d1 = reg_286;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v64_fu_421_p1 = reg_273;
assign v71_fu_426_p1 = reg_277;
assign v77_fu_464_p1 = reg_273;
assign v83_fu_469_p1 = reg_277;
assign v89_fu_522_p1 = reg_273;
assign v95_fu_527_p1 = reg_277;
assign zext_ln102_fu_321_p1 = tmp_s_fu_311_p4;
assign zext_ln110_fu_348_p1 = tmp_47_fu_336_p5;
assign zext_ln115_fu_516_p1 = or_ln115_3_fu_509_p3;
assign zext_ln117_fu_384_p1 = tmp_49_fu_373_p5;
assign zext_ln124_fu_400_p1 = tmp_50_fu_389_p5;
assign zext_ln129_fu_540_p1 = or_ln129_3_fu_532_p4;
assign zext_ln131_fu_441_p1 = tmp_52_fu_431_p5;
assign zext_ln138_fu_459_p1 = tmp_53_fu_446_p7;
assign zext_ln143_fu_553_p1 = or_ln143_3_fu_546_p3;
assign zext_ln145_fu_484_p1 = tmp_55_fu_474_p5;
assign zext_ln152_fu_499_p1 = tmp_56_fu_489_p5;
assign zext_ln98_fu_504_p1 = lshr_ln98_2_reg_608;
always @ (posedge ap_clk) begin
    v58_0_addr_9_reg_699[0] <= 1'b1;
    v58_0_addr_9_reg_699_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_9_reg_699_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_9_reg_704[0] <= 1'b1;
    v58_1_addr_9_reg_704_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_9_reg_704_pp0_iter3_reg[0] <= 1'b1;
    v58_0_addr_10_reg_734[1] <= 1'b1;
    v58_0_addr_10_reg_734_pp0_iter2_reg[1] <= 1'b1;
    v58_0_addr_10_reg_734_pp0_iter3_reg[1] <= 1'b1;
    v58_1_addr_10_reg_739[1] <= 1'b1;
    v58_1_addr_10_reg_739_pp0_iter2_reg[1] <= 1'b1;
    v58_1_addr_10_reg_739_pp0_iter3_reg[1] <= 1'b1;
    v58_0_addr_11_reg_744[1:0] <= 2'b11;
    v58_0_addr_11_reg_744_pp0_iter2_reg[1:0] <= 2'b11;
    v58_0_addr_11_reg_744_pp0_iter3_reg[1:0] <= 2'b11;
    v58_0_addr_11_reg_744_pp0_iter4_reg[1:0] <= 2'b11;
    v58_1_addr_11_reg_754[1:0] <= 2'b11;
    v58_1_addr_11_reg_754_pp0_iter2_reg[1:0] <= 2'b11;
    v58_1_addr_11_reg_754_pp0_iter3_reg[1:0] <= 2'b11;
    v58_1_addr_11_reg_754_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 