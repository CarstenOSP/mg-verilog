module atax_atax_node1_Pipeline_label_35 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,lshr_ln,v114_3_address0,v114_3_ce0,v114_3_q0,v114_3_address1,v114_3_ce1,v114_3_q1,v114_7_address0,v114_7_ce0,v114_7_q0,v114_7_address1,v114_7_ce1,v114_7_q1,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_3_address1,v58_3_ce1,v58_3_we1,v58_3_d1,v58_3_q1,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_2_address1,v58_2_ce1,v58_2_we1,v58_2_d1,v58_2_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,empty,v65_3,grp_fu_503_p_din0,grp_fu_503_p_din1,grp_fu_503_p_opcode,grp_fu_503_p_dout0,grp_fu_503_p_ce,grp_fu_507_p_din0,grp_fu_507_p_din1,grp_fu_507_p_opcode,grp_fu_507_p_dout0,grp_fu_507_p_ce,grp_fu_511_p_din0,grp_fu_511_p_din1,grp_fu_511_p_dout0,grp_fu_511_p_ce,grp_fu_515_p_din0,grp_fu_515_p_din1,grp_fu_515_p_dout0,grp_fu_515_p_ce); 
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
input  [2:0] lshr_ln;
output  [8:0] v114_3_address0;
output   v114_3_ce0;
input  [31:0] v114_3_q0;
output  [8:0] v114_3_address1;
output   v114_3_ce1;
input  [31:0] v114_3_q1;
output  [8:0] v114_7_address0;
output   v114_7_ce0;
input  [31:0] v114_7_q0;
output  [8:0] v114_7_address1;
output   v114_7_ce1;
input  [31:0] v114_7_q1;
output  [3:0] v58_3_address0;
output   v58_3_ce0;
output   v58_3_we0;
output  [31:0] v58_3_d0;
input  [31:0] v58_3_q0;
output  [3:0] v58_3_address1;
output   v58_3_ce1;
output   v58_3_we1;
output  [31:0] v58_3_d1;
input  [31:0] v58_3_q1;
output  [3:0] v58_2_address0;
output   v58_2_ce0;
output   v58_2_we0;
output  [31:0] v58_2_d0;
input  [31:0] v58_2_q0;
output  [3:0] v58_2_address1;
output   v58_2_ce1;
output   v58_2_we1;
output  [31:0] v58_2_d1;
input  [31:0] v58_2_q1;
output  [3:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [3:0] v58_1_address1;
output   v58_1_ce1;
output   v58_1_we1;
output  [31:0] v58_1_d1;
input  [31:0] v58_1_q1;
output  [3:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [3:0] v58_0_address1;
output   v58_0_ce1;
output   v58_0_we1;
output  [31:0] v58_0_d1;
input  [31:0] v58_0_q1;
input  [0:0] empty;
input  [31:0] v65_3;
output  [31:0] grp_fu_503_p_din0;
output  [31:0] grp_fu_503_p_din1;
output  [1:0] grp_fu_503_p_opcode;
input  [31:0] grp_fu_503_p_dout0;
output   grp_fu_503_p_ce;
output  [31:0] grp_fu_507_p_din0;
output  [31:0] grp_fu_507_p_din1;
output  [1:0] grp_fu_507_p_opcode;
input  [31:0] grp_fu_507_p_dout0;
output   grp_fu_507_p_ce;
output  [31:0] grp_fu_511_p_din0;
output  [31:0] grp_fu_511_p_din1;
input  [31:0] grp_fu_511_p_dout0;
output   grp_fu_511_p_ce;
output  [31:0] grp_fu_515_p_din0;
output  [31:0] grp_fu_515_p_din1;
input  [31:0] grp_fu_515_p_dout0;
output   grp_fu_515_p_ce;
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
reg   [0:0] tmp_1_reg_709;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_376_p3;
reg   [31:0] reg_390;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_383_p3;
reg   [31:0] reg_394;
reg   [31:0] reg_398;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_405;
reg   [6:0] v60_1_reg_702;
wire   [0:0] tmp_1_fu_420_p3;
reg   [0:0] tmp_1_reg_709_pp0_iter1_reg;
reg   [0:0] tmp_1_reg_709_pp0_iter2_reg;
reg   [0:0] tmp_1_reg_709_pp0_iter3_reg;
wire   [3:0] lshr_ln98_3_fu_483_p4;
reg   [3:0] lshr_ln98_3_reg_733;
reg   [2:0] tmp_6_reg_758;
reg   [0:0] tmp_8_reg_767;
wire   [31:0] v64_fu_538_p1;
wire   [31:0] v71_fu_543_p1;
wire   [31:0] v77_fu_579_p1;
wire   [31:0] v83_fu_584_p1;
reg   [3:0] v58_0_addr_reg_832;
reg   [3:0] v58_0_addr_reg_832_pp0_iter2_reg;
reg   [3:0] v58_0_addr_reg_832_pp0_iter3_reg;
reg   [3:0] v58_1_addr_reg_838;
reg   [3:0] v58_1_addr_reg_838_pp0_iter2_reg;
reg   [3:0] v58_1_addr_reg_838_pp0_iter3_reg;
reg   [3:0] v58_2_addr_reg_844;
reg   [3:0] v58_2_addr_reg_844_pp0_iter2_reg;
reg   [3:0] v58_2_addr_reg_844_pp0_iter3_reg;
reg   [3:0] v58_3_addr_reg_849;
reg   [3:0] v58_3_addr_reg_849_pp0_iter2_reg;
reg   [3:0] v58_3_addr_reg_849_pp0_iter3_reg;
reg   [3:0] v58_0_addr_1_reg_854;
reg   [3:0] v58_0_addr_1_reg_854_pp0_iter2_reg;
reg   [3:0] v58_0_addr_1_reg_854_pp0_iter3_reg;
wire   [31:0] v89_fu_639_p1;
reg   [3:0] v58_1_addr_1_reg_865;
reg   [3:0] v58_1_addr_1_reg_865_pp0_iter2_reg;
reg   [3:0] v58_1_addr_1_reg_865_pp0_iter3_reg;
wire   [31:0] v95_fu_644_p1;
reg   [3:0] v58_2_addr_1_reg_876;
reg   [3:0] v58_2_addr_1_reg_876_pp0_iter2_reg;
reg   [3:0] v58_2_addr_1_reg_876_pp0_iter3_reg;
reg   [3:0] v58_2_addr_1_reg_876_pp0_iter4_reg;
wire   [31:0] select_ln145_fu_649_p3;
reg   [31:0] select_ln145_reg_881;
reg   [3:0] v58_3_addr_1_reg_886;
reg   [3:0] v58_3_addr_1_reg_886_pp0_iter2_reg;
reg   [3:0] v58_3_addr_1_reg_886_pp0_iter3_reg;
reg   [3:0] v58_3_addr_1_reg_886_pp0_iter4_reg;
wire   [31:0] select_ln152_fu_656_p3;
reg   [31:0] select_ln152_reg_891;
reg   [31:0] v62_reg_896;
reg   [31:0] v66_reg_901;
reg   [31:0] v72_reg_906;
wire   [31:0] v101_fu_663_p1;
wire   [31:0] v107_fu_667_p1;
reg   [31:0] v69_reg_921;
reg   [31:0] v75_reg_926;
reg   [31:0] v81_reg_931;
reg   [31:0] v87_reg_936;
reg   [31:0] v93_reg_941;
reg   [31:0] v99_reg_946;
reg   [31:0] v105_reg_951;
reg   [31:0] v78_reg_956;
reg   [31:0] v84_reg_961;
reg   [31:0] v90_reg_966;
reg   [31:0] v96_reg_971;
reg   [31:0] v102_reg_976;
reg   [31:0] v108_reg_981;
reg   [31:0] v103_reg_986;
reg   [31:0] v109_reg_991;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln102_fu_440_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln110_fu_466_p1;
wire   [63:0] zext_ln117_fu_501_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln124_fu_516_p1;
wire   [63:0] zext_ln131_fu_556_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln138_fu_573_p1;
wire   [63:0] zext_ln145_fu_597_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln152_fu_611_p1;
wire   [63:0] zext_ln98_fu_617_p1;
wire   [63:0] zext_ln129_fu_631_p1;
reg   [6:0] v60_fu_92;
wire   [6:0] add_ln98_fu_472_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_1;
reg    v114_3_ce1_local;
reg   [8:0] v114_3_address1_local;
reg    v114_3_ce0_local;
reg   [8:0] v114_3_address0_local;
reg    v114_7_ce1_local;
reg   [8:0] v114_7_address1_local;
reg    v114_7_ce0_local;
reg   [8:0] v114_7_address0_local;
reg    v58_0_ce1_local;
reg   [3:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [3:0] v58_0_address0_local;
reg    v58_0_we0_local;
reg    v58_0_we1_local;
reg    v58_1_ce1_local;
reg   [3:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [3:0] v58_1_address0_local;
reg    v58_1_we0_local;
reg    v58_1_we1_local;
reg    v58_2_ce1_local;
reg   [3:0] v58_2_address1_local;
reg    v58_2_ce0_local;
reg   [3:0] v58_2_address0_local;
reg    v58_2_we1_local;
reg    v58_2_we0_local;
reg    v58_3_ce1_local;
reg   [3:0] v58_3_address1_local;
reg    v58_3_ce0_local;
reg   [3:0] v58_3_address0_local;
reg    v58_3_we1_local;
reg    v58_3_we0_local;
reg   [31:0] grp_fu_360_p0;
reg   [31:0] grp_fu_360_p1;
reg   [31:0] grp_fu_364_p0;
reg   [31:0] grp_fu_364_p1;
reg   [31:0] grp_fu_368_p0;
reg   [31:0] grp_fu_372_p0;
wire   [5:0] trunc_ln98_fu_428_p1;
wire   [8:0] tmp_s_fu_432_p3;
wire   [4:0] tmp_2_fu_446_p4;
wire   [8:0] tmp_3_fu_456_p4;
wire   [8:0] tmp_4_fu_492_p4;
wire   [8:0] tmp_5_fu_507_p4;
wire   [8:0] tmp_7_fu_548_p4;
wire   [8:0] tmp_9_fu_562_p6;
wire   [8:0] tmp_10_fu_589_p4;
wire   [8:0] tmp_11_fu_603_p4;
wire   [3:0] or_ln129_5_fu_624_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage1;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
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
#0 v60_fu_92 = 7'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_1_fu_420_p3 == 1'd0))) begin
            v60_fu_92 <= add_ln98_fu_472_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v60_fu_92 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln98_3_reg_733 <= {{v60_1_reg_702[5:2]}};
        tmp_6_reg_758 <= {{v60_1_reg_702[5:3]}};
        tmp_8_reg_767 <= v60_1_reg_702[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_390 <= grp_fu_376_p3;
        reg_394 <= grp_fu_383_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_398 <= grp_fu_503_p_dout0;
        reg_405 <= grp_fu_507_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln145_reg_881 <= select_ln145_fu_649_p3;
        select_ln152_reg_891 <= select_ln152_fu_656_p3;
        tmp_1_reg_709 <= ap_sig_allocacmp_v60_1[32'd6];
        tmp_1_reg_709_pp0_iter1_reg <= tmp_1_reg_709;
        tmp_1_reg_709_pp0_iter2_reg <= tmp_1_reg_709_pp0_iter1_reg;
        tmp_1_reg_709_pp0_iter3_reg <= tmp_1_reg_709_pp0_iter2_reg;
        v58_0_addr_1_reg_854[3 : 1] <= zext_ln129_fu_631_p1[3 : 1];
        v58_0_addr_1_reg_854_pp0_iter2_reg[3 : 1] <= v58_0_addr_1_reg_854[3 : 1];
        v58_0_addr_1_reg_854_pp0_iter3_reg[3 : 1] <= v58_0_addr_1_reg_854_pp0_iter2_reg[3 : 1];
        v58_0_addr_reg_832 <= zext_ln98_fu_617_p1;
        v58_0_addr_reg_832_pp0_iter2_reg <= v58_0_addr_reg_832;
        v58_0_addr_reg_832_pp0_iter3_reg <= v58_0_addr_reg_832_pp0_iter2_reg;
        v58_1_addr_1_reg_865[3 : 1] <= zext_ln129_fu_631_p1[3 : 1];
        v58_1_addr_1_reg_865_pp0_iter2_reg[3 : 1] <= v58_1_addr_1_reg_865[3 : 1];
        v58_1_addr_1_reg_865_pp0_iter3_reg[3 : 1] <= v58_1_addr_1_reg_865_pp0_iter2_reg[3 : 1];
        v58_1_addr_reg_838 <= zext_ln98_fu_617_p1;
        v58_1_addr_reg_838_pp0_iter2_reg <= v58_1_addr_reg_838;
        v58_1_addr_reg_838_pp0_iter3_reg <= v58_1_addr_reg_838_pp0_iter2_reg;
        v58_2_addr_1_reg_876[3 : 1] <= zext_ln129_fu_631_p1[3 : 1];
        v58_2_addr_1_reg_876_pp0_iter2_reg[3 : 1] <= v58_2_addr_1_reg_876[3 : 1];
        v58_2_addr_1_reg_876_pp0_iter3_reg[3 : 1] <= v58_2_addr_1_reg_876_pp0_iter2_reg[3 : 1];
        v58_2_addr_1_reg_876_pp0_iter4_reg[3 : 1] <= v58_2_addr_1_reg_876_pp0_iter3_reg[3 : 1];
        v58_2_addr_reg_844 <= zext_ln98_fu_617_p1;
        v58_2_addr_reg_844_pp0_iter2_reg <= v58_2_addr_reg_844;
        v58_2_addr_reg_844_pp0_iter3_reg <= v58_2_addr_reg_844_pp0_iter2_reg;
        v58_3_addr_1_reg_886[3 : 1] <= zext_ln129_fu_631_p1[3 : 1];
        v58_3_addr_1_reg_886_pp0_iter2_reg[3 : 1] <= v58_3_addr_1_reg_886[3 : 1];
        v58_3_addr_1_reg_886_pp0_iter3_reg[3 : 1] <= v58_3_addr_1_reg_886_pp0_iter2_reg[3 : 1];
        v58_3_addr_1_reg_886_pp0_iter4_reg[3 : 1] <= v58_3_addr_1_reg_886_pp0_iter3_reg[3 : 1];
        v58_3_addr_reg_849 <= zext_ln98_fu_617_p1;
        v58_3_addr_reg_849_pp0_iter2_reg <= v58_3_addr_reg_849;
        v58_3_addr_reg_849_pp0_iter3_reg <= v58_3_addr_reg_849_pp0_iter2_reg;
        v60_1_reg_702 <= ap_sig_allocacmp_v60_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_976 <= grp_fu_511_p_dout0;
        v108_reg_981 <= grp_fu_515_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v103_reg_986 <= grp_fu_503_p_dout0;
        v109_reg_991 <= grp_fu_507_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v105_reg_951 <= v58_3_q0;
        v62_reg_896 <= v58_0_q1;
        v66_reg_901 <= grp_fu_511_p_dout0;
        v69_reg_921 <= v58_1_q1;
        v72_reg_906 <= grp_fu_515_p_dout0;
        v75_reg_926 <= v58_2_q1;
        v81_reg_931 <= v58_3_q1;
        v87_reg_936 <= v58_0_q0;
        v93_reg_941 <= v58_1_q0;
        v99_reg_946 <= v58_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v78_reg_956 <= grp_fu_511_p_dout0;
        v84_reg_961 <= grp_fu_515_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v90_reg_966 <= grp_fu_511_p_dout0;
        v96_reg_971 <= grp_fu_515_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_709 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_1_reg_709_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_v60_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_1 = v60_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_360_p0 = v99_reg_946;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_360_p0 = v87_reg_936;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_360_p0 = v75_reg_926;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_360_p0 = v62_reg_896;
    end else begin
        grp_fu_360_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_360_p1 = v102_reg_976;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_360_p1 = v90_reg_966;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_360_p1 = v78_reg_956;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_360_p1 = v66_reg_901;
    end else begin
        grp_fu_360_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_364_p0 = v105_reg_951;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_364_p0 = v93_reg_941;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_364_p0 = v81_reg_931;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_364_p0 = v69_reg_921;
    end else begin
        grp_fu_364_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_364_p1 = v108_reg_981;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_364_p1 = v96_reg_971;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_364_p1 = v84_reg_961;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_364_p1 = v72_reg_906;
    end else begin
        grp_fu_364_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_368_p0 = v101_fu_663_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_368_p0 = v89_fu_639_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_368_p0 = v77_fu_579_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_368_p0 = v64_fu_538_p1;
    end else begin
        grp_fu_368_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_372_p0 = v107_fu_667_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_372_p0 = v95_fu_644_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_372_p0 = v83_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_372_p0 = v71_fu_543_p1;
    end else begin
        grp_fu_372_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_3_address0_local = zext_ln152_fu_611_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_3_address0_local = zext_ln138_fu_573_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_3_address0_local = zext_ln124_fu_516_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_3_address0_local = zext_ln110_fu_466_p1;
        end else begin
            v114_3_address0_local = 'bx;
        end
    end else begin
        v114_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_3_address1_local = zext_ln145_fu_597_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_3_address1_local = zext_ln131_fu_556_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_3_address1_local = zext_ln117_fu_501_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_3_address1_local = zext_ln102_fu_440_p1;
        end else begin
            v114_3_address1_local = 'bx;
        end
    end else begin
        v114_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_3_ce0_local = 1'b1;
    end else begin
        v114_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_3_ce1_local = 1'b1;
    end else begin
        v114_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_7_address0_local = zext_ln152_fu_611_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_7_address0_local = zext_ln138_fu_573_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_7_address0_local = zext_ln124_fu_516_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_7_address0_local = zext_ln110_fu_466_p1;
        end else begin
            v114_7_address0_local = 'bx;
        end
    end else begin
        v114_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_7_address1_local = zext_ln145_fu_597_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_7_address1_local = zext_ln131_fu_556_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_7_address1_local = zext_ln117_fu_501_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_7_address1_local = zext_ln102_fu_440_p1;
        end else begin
            v114_7_address1_local = 'bx;
        end
    end else begin
        v114_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_7_ce0_local = 1'b1;
    end else begin
        v114_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_7_ce1_local = 1'b1;
    end else begin
        v114_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = v58_0_addr_reg_832_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln129_fu_631_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_1_reg_854_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_fu_617_p1;
    end else begin
        v58_0_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_0_ce1_local = 1'b1;
    end else begin
        v58_0_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_we1_local = 1'b1;
    end else begin
        v58_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = v58_1_addr_reg_838_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln129_fu_631_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_1_reg_865_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_fu_617_p1;
    end else begin
        v58_1_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_1_ce1_local = 1'b1;
    end else begin
        v58_1_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_we1_local = 1'b1;
    end else begin
        v58_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_2_address0_local = v58_2_addr_1_reg_876_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln129_fu_631_p1;
    end else begin
        v58_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_2_address1_local = v58_2_addr_reg_844_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address1_local = zext_ln98_fu_617_p1;
    end else begin
        v58_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_2_ce0_local = 1'b1;
    end else begin
        v58_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_2_ce1_local = 1'b1;
    end else begin
        v58_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_2_we0_local = 1'b1;
    end else begin
        v58_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_2_we1_local = 1'b1;
    end else begin
        v58_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_3_address0_local = v58_3_addr_1_reg_886_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln129_fu_631_p1;
    end else begin
        v58_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_3_address1_local = v58_3_addr_reg_849_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address1_local = zext_ln98_fu_617_p1;
    end else begin
        v58_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_3_ce0_local = 1'b1;
    end else begin
        v58_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_3_ce1_local = 1'b1;
    end else begin
        v58_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_3_we0_local = 1'b1;
    end else begin
        v58_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_3_we1_local = 1'b1;
    end else begin
        v58_3_we1_local = 1'b0;
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
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
assign add_ln98_fu_472_p2 = (ap_sig_allocacmp_v60_1 + 7'd8);
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
assign grp_fu_376_p3 = ((empty[0:0] == 1'b1) ? v114_7_q1 : v114_3_q1);
assign grp_fu_383_p3 = ((empty[0:0] == 1'b1) ? v114_7_q0 : v114_3_q0);
assign grp_fu_503_p_ce = 1'b1;
assign grp_fu_503_p_din0 = grp_fu_360_p0;
assign grp_fu_503_p_din1 = grp_fu_360_p1;
assign grp_fu_503_p_opcode = 2'd0;
assign grp_fu_507_p_ce = 1'b1;
assign grp_fu_507_p_din0 = grp_fu_364_p0;
assign grp_fu_507_p_din1 = grp_fu_364_p1;
assign grp_fu_507_p_opcode = 2'd0;
assign grp_fu_511_p_ce = 1'b1;
assign grp_fu_511_p_din0 = grp_fu_368_p0;
assign grp_fu_511_p_din1 = v65_3;
assign grp_fu_515_p_ce = 1'b1;
assign grp_fu_515_p_din0 = grp_fu_372_p0;
assign grp_fu_515_p_din1 = v65_3;
assign lshr_ln98_3_fu_483_p4 = {{v60_1_reg_702[5:2]}};
assign or_ln129_5_fu_624_p3 = {{tmp_6_reg_758}, {1'd1}};
assign select_ln145_fu_649_p3 = ((empty[0:0] == 1'b1) ? v114_7_q1 : v114_3_q1);
assign select_ln152_fu_656_p3 = ((empty[0:0] == 1'b1) ? v114_7_q0 : v114_3_q0);
assign tmp_10_fu_589_p4 = {{{tmp_6_reg_758}, {3'd6}}, {lshr_ln}};
assign tmp_11_fu_603_p4 = {{{tmp_6_reg_758}, {3'd7}}, {lshr_ln}};
assign tmp_1_fu_420_p3 = ap_sig_allocacmp_v60_1[32'd6];
assign tmp_2_fu_446_p4 = {{ap_sig_allocacmp_v60_1[5:1]}};
assign tmp_3_fu_456_p4 = {{{tmp_2_fu_446_p4}, {1'd1}}, {lshr_ln}};
assign tmp_4_fu_492_p4 = {{{lshr_ln98_3_fu_483_p4}, {2'd2}}, {lshr_ln}};
assign tmp_5_fu_507_p4 = {{{lshr_ln98_3_fu_483_p4}, {2'd3}}, {lshr_ln}};
assign tmp_7_fu_548_p4 = {{{tmp_6_reg_758}, {3'd4}}, {lshr_ln}};
assign tmp_9_fu_562_p6 = {{{{{tmp_6_reg_758}, {1'd1}}, {tmp_8_reg_767}}, {1'd1}}, {lshr_ln}};
assign tmp_s_fu_432_p3 = {{trunc_ln98_fu_428_p1}, {lshr_ln}};
assign trunc_ln98_fu_428_p1 = ap_sig_allocacmp_v60_1[5:0];
assign v101_fu_663_p1 = select_ln145_reg_881;
assign v107_fu_667_p1 = select_ln152_reg_891;
assign v114_3_address0 = v114_3_address0_local;
assign v114_3_address1 = v114_3_address1_local;
assign v114_3_ce0 = v114_3_ce0_local;
assign v114_3_ce1 = v114_3_ce1_local;
assign v114_7_address0 = v114_7_address0_local;
assign v114_7_address1 = v114_7_address1_local;
assign v114_7_ce0 = v114_7_ce0_local;
assign v114_7_ce1 = v114_7_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = reg_398;
assign v58_0_d1 = reg_398;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = reg_405;
assign v58_1_d1 = reg_405;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_address1 = v58_2_address1_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_ce1 = v58_2_ce1_local;
assign v58_2_d0 = v103_reg_986;
assign v58_2_d1 = reg_398;
assign v58_2_we0 = v58_2_we0_local;
assign v58_2_we1 = v58_2_we1_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_address1 = v58_3_address1_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_ce1 = v58_3_ce1_local;
assign v58_3_d0 = v109_reg_991;
assign v58_3_d1 = reg_405;
assign v58_3_we0 = v58_3_we0_local;
assign v58_3_we1 = v58_3_we1_local;
assign v64_fu_538_p1 = reg_390;
assign v71_fu_543_p1 = reg_394;
assign v77_fu_579_p1 = reg_390;
assign v83_fu_584_p1 = reg_394;
assign v89_fu_639_p1 = reg_390;
assign v95_fu_644_p1 = reg_394;
assign zext_ln102_fu_440_p1 = tmp_s_fu_432_p3;
assign zext_ln110_fu_466_p1 = tmp_3_fu_456_p4;
assign zext_ln117_fu_501_p1 = tmp_4_fu_492_p4;
assign zext_ln124_fu_516_p1 = tmp_5_fu_507_p4;
assign zext_ln129_fu_631_p1 = or_ln129_5_fu_624_p3;
assign zext_ln131_fu_556_p1 = tmp_7_fu_548_p4;
assign zext_ln138_fu_573_p1 = tmp_9_fu_562_p6;
assign zext_ln145_fu_597_p1 = tmp_10_fu_589_p4;
assign zext_ln152_fu_611_p1 = tmp_11_fu_603_p4;
assign zext_ln98_fu_617_p1 = lshr_ln98_3_reg_733;
always @ (posedge ap_clk) begin
    v58_0_addr_1_reg_854[0] <= 1'b1;
    v58_0_addr_1_reg_854_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_854_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_865[0] <= 1'b1;
    v58_1_addr_1_reg_865_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_865_pp0_iter3_reg[0] <= 1'b1;
    v58_2_addr_1_reg_876[0] <= 1'b1;
    v58_2_addr_1_reg_876_pp0_iter2_reg[0] <= 1'b1;
    v58_2_addr_1_reg_876_pp0_iter3_reg[0] <= 1'b1;
    v58_2_addr_1_reg_876_pp0_iter4_reg[0] <= 1'b1;
    v58_3_addr_1_reg_886[0] <= 1'b1;
    v58_3_addr_1_reg_886_pp0_iter2_reg[0] <= 1'b1;
    v58_3_addr_1_reg_886_pp0_iter3_reg[0] <= 1'b1;
    v58_3_addr_1_reg_886_pp0_iter4_reg[0] <= 1'b1;
end
endmodule 