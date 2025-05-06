
module atax_atax_node1_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,lshr_ln,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v114_2_address0,v114_2_ce0,v114_2_q0,v114_2_address1,v114_2_ce1,v114_2_q1,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_3_address1,v58_3_ce1,v58_3_we1,v58_3_d1,v58_3_q1,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_2_address1,v58_2_ce1,v58_2_we1,v58_2_d1,v58_2_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v57_0_address0,v57_0_ce0,v57_0_q0,cmp7,empty,v65,v57_1_address0,v57_1_ce0,v57_1_q0,v57_2_address0,v57_2_ce0,v57_2_q0,v57_3_address0,v57_3_ce0,v57_3_q0,v57_4_address0,v57_4_ce0,v57_4_q0,v57_5_address0,v57_5_ce0,v57_5_q0,v57_6_address0,v57_6_ce0,v57_6_q0,v57_7_address0,v57_7_ce0,v57_7_q0,grp_fu_294_p_din0,grp_fu_294_p_din1,grp_fu_294_p_opcode,grp_fu_294_p_dout0,grp_fu_294_p_ce,grp_fu_298_p_din0,grp_fu_298_p_din1,grp_fu_298_p_opcode,grp_fu_298_p_dout0,grp_fu_298_p_ce,grp_fu_302_p_din0,grp_fu_302_p_din1,grp_fu_302_p_dout0,grp_fu_302_p_ce,grp_fu_306_p_din0,grp_fu_306_p_din1,grp_fu_306_p_dout0,grp_fu_306_p_ce);  
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
output  [9:0] v114_0_address0;
output   v114_0_ce0;
input  [31:0] v114_0_q0;
output  [9:0] v114_0_address1;
output   v114_0_ce1;
input  [31:0] v114_0_q1;
output  [9:0] v114_2_address0;
output   v114_2_ce0;
input  [31:0] v114_2_q0;
output  [9:0] v114_2_address1;
output   v114_2_ce1;
input  [31:0] v114_2_q1;
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
output  [2:0] v57_0_address0;
output   v57_0_ce0;
input  [31:0] v57_0_q0;
input  [0:0] cmp7;
input  [1:0] empty;
input  [31:0] v65;
output  [2:0] v57_1_address0;
output   v57_1_ce0;
input  [31:0] v57_1_q0;
output  [2:0] v57_2_address0;
output   v57_2_ce0;
input  [31:0] v57_2_q0;
output  [2:0] v57_3_address0;
output   v57_3_ce0;
input  [31:0] v57_3_q0;
output  [2:0] v57_4_address0;
output   v57_4_ce0;
input  [31:0] v57_4_q0;
output  [2:0] v57_5_address0;
output   v57_5_ce0;
input  [31:0] v57_5_q0;
output  [2:0] v57_6_address0;
output   v57_6_ce0;
input  [31:0] v57_6_q0;
output  [2:0] v57_7_address0;
output   v57_7_ce0;
input  [31:0] v57_7_q0;
output  [31:0] grp_fu_294_p_din0;
output  [31:0] grp_fu_294_p_din1;
output  [1:0] grp_fu_294_p_opcode;
input  [31:0] grp_fu_294_p_dout0;
output   grp_fu_294_p_ce;
output  [31:0] grp_fu_298_p_din0;
output  [31:0] grp_fu_298_p_din1;
output  [1:0] grp_fu_298_p_opcode;
input  [31:0] grp_fu_298_p_dout0;
output   grp_fu_298_p_ce;
output  [31:0] grp_fu_302_p_din0;
output  [31:0] grp_fu_302_p_din1;
input  [31:0] grp_fu_302_p_dout0;
output   grp_fu_302_p_ce;
output  [31:0] grp_fu_306_p_din0;
output  [31:0] grp_fu_306_p_din1;
input  [31:0] grp_fu_306_p_dout0;
output   grp_fu_306_p_ce;
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
reg   [0:0] tmp_11_reg_936;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_508_p3;
reg   [31:0] reg_522;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_515_p3;
reg   [31:0] reg_526;
reg   [31:0] reg_530;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_537;
reg   [6:0] v60_2_reg_929;
wire   [0:0] tmp_11_fu_552_p3;
reg   [0:0] tmp_11_reg_936_pp0_iter1_reg;
reg   [0:0] tmp_11_reg_936_pp0_iter2_reg;
reg   [0:0] tmp_11_reg_936_pp0_iter3_reg;
wire   [3:0] lshr_ln1_fu_615_p4;
reg   [3:0] lshr_ln1_reg_960;
reg   [2:0] lshr_ln98_1_reg_965;
wire   [0:0] icmp_ln102_fu_633_p2;
reg   [0:0] icmp_ln102_reg_975;
wire   [31:0] select_ln102_fu_638_p3;
reg   [31:0] select_ln102_reg_983;
wire   [31:0] select_ln110_fu_646_p3;
reg   [31:0] select_ln110_reg_988;
reg   [0:0] tmp_12_reg_1013;
wire   [31:0] v64_fu_691_p1;
wire   [31:0] v71_fu_695_p1;
wire   [31:0] v77_fu_730_p1;
wire   [31:0] v83_fu_735_p1;
reg   [3:0] v58_0_addr_reg_1083;
reg   [3:0] v58_0_addr_reg_1083_pp0_iter2_reg;
reg   [3:0] v58_0_addr_reg_1083_pp0_iter3_reg;
reg   [3:0] v58_1_addr_reg_1094;
reg   [3:0] v58_1_addr_reg_1094_pp0_iter2_reg;
reg   [3:0] v58_1_addr_reg_1094_pp0_iter3_reg;
reg   [3:0] v58_2_addr_reg_1105;
reg   [3:0] v58_2_addr_reg_1105_pp0_iter2_reg;
reg   [3:0] v58_2_addr_reg_1105_pp0_iter3_reg;
reg   [3:0] v58_3_addr_reg_1115;
reg   [3:0] v58_3_addr_reg_1115_pp0_iter2_reg;
reg   [3:0] v58_3_addr_reg_1115_pp0_iter3_reg;
reg   [3:0] v58_0_addr_1_reg_1125;
reg   [3:0] v58_0_addr_1_reg_1125_pp0_iter2_reg;
reg   [3:0] v58_0_addr_1_reg_1125_pp0_iter3_reg;
wire   [31:0] v89_fu_801_p1;
reg   [3:0] v58_1_addr_1_reg_1141;
reg   [3:0] v58_1_addr_1_reg_1141_pp0_iter2_reg;
reg   [3:0] v58_1_addr_1_reg_1141_pp0_iter3_reg;
wire   [31:0] v95_fu_806_p1;
reg   [3:0] v58_2_addr_1_reg_1157;
reg   [3:0] v58_2_addr_1_reg_1157_pp0_iter2_reg;
reg   [3:0] v58_2_addr_1_reg_1157_pp0_iter3_reg;
reg   [3:0] v58_2_addr_1_reg_1157_pp0_iter4_reg;
wire   [31:0] select_ln145_fu_811_p3;
reg   [31:0] select_ln145_reg_1162;
reg   [3:0] v58_3_addr_1_reg_1172;
reg   [3:0] v58_3_addr_1_reg_1172_pp0_iter2_reg;
reg   [3:0] v58_3_addr_1_reg_1172_pp0_iter3_reg;
reg   [3:0] v58_3_addr_1_reg_1172_pp0_iter4_reg;
wire   [31:0] select_ln152_fu_818_p3;
reg   [31:0] select_ln152_reg_1177;
wire   [31:0] v63_fu_825_p3;
reg   [31:0] v63_reg_1182;
reg   [31:0] v66_reg_1187;
reg   [31:0] v72_reg_1192;
wire   [31:0] v101_fu_832_p1;
wire   [31:0] v107_fu_836_p1;
wire   [31:0] v70_fu_840_p3;
reg   [31:0] v70_reg_1207;
wire   [31:0] v76_fu_847_p3;
reg   [31:0] v76_reg_1212;
wire   [31:0] v82_fu_854_p3;
reg   [31:0] v82_reg_1217;
wire   [31:0] v88_fu_861_p3;
reg   [31:0] v88_reg_1222;
wire   [31:0] v94_fu_868_p3;
reg   [31:0] v94_reg_1227;
wire   [31:0] v100_fu_875_p3;
reg   [31:0] v100_reg_1232;
wire   [31:0] v106_fu_882_p3;
reg   [31:0] v106_reg_1237;
reg   [31:0] v78_reg_1242;
reg   [31:0] v84_reg_1247;
reg   [31:0] v90_reg_1252;
reg   [31:0] v96_reg_1257;
reg   [31:0] v102_reg_1262;
reg   [31:0] v108_reg_1267;
reg   [31:0] v103_reg_1272;
reg   [31:0] v109_reg_1277;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln102_fu_572_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln110_fu_598_p1;
wire   [63:0] zext_ln117_fu_663_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln124_fu_678_p1;
wire   [63:0] zext_ln131_fu_707_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln138_fu_724_p1;
wire   [63:0] zext_ln145_fu_748_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln152_fu_762_p1;
wire   [63:0] zext_ln98_1_fu_775_p1;
wire   [63:0] zext_ln98_fu_768_p1;
wire   [63:0] zext_ln128_fu_793_p1;
reg   [6:0] v60_fu_114;
wire   [6:0] add_ln98_fu_604_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_2;
reg    v114_0_ce1_local;
reg   [9:0] v114_0_address1_local;
reg    v114_0_ce0_local;
reg   [9:0] v114_0_address0_local;
reg    v114_2_ce1_local;
reg   [9:0] v114_2_address1_local;
reg    v114_2_ce0_local;
reg   [9:0] v114_2_address0_local;
reg    v57_0_ce0_local;
reg    v58_0_ce1_local;
reg   [3:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [3:0] v58_0_address0_local;
reg    v58_0_we0_local;
reg    v58_0_we1_local;
reg    v57_1_ce0_local;
reg    v57_2_ce0_local;
reg    v57_3_ce0_local;
reg    v57_4_ce0_local;
reg    v57_5_ce0_local;
reg    v57_6_ce0_local;
reg    v57_7_ce0_local;
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
reg   [31:0] grp_fu_492_p0;
reg   [31:0] grp_fu_492_p1;
reg   [31:0] grp_fu_496_p0;
reg   [31:0] grp_fu_496_p1;
reg   [31:0] grp_fu_500_p0;
reg   [31:0] grp_fu_504_p0;
wire   [5:0] trunc_ln98_fu_560_p1;
wire   [9:0] tmp_fu_564_p3;
wire   [4:0] tmp_1_fu_578_p4;
wire   [9:0] tmp_2_fu_588_p4;
wire   [9:0] tmp_5_fu_654_p4;
wire   [9:0] tmp_7_fu_669_p4;
wire   [9:0] tmp_10_fu_699_p4;
wire   [9:0] tmp_s_fu_713_p6;
wire   [9:0] tmp_13_fu_740_p4;
wire   [9:0] tmp_14_fu_754_p4;
wire   [3:0] or_ln128_1_fu_786_p3;
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
#0 v60_fu_114 = 7'd0;
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
        if (((tmp_11_fu_552_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v60_fu_114 <= add_ln98_fu_604_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v60_fu_114 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln102_reg_975 <= icmp_ln102_fu_633_p2;
        lshr_ln1_reg_960 <= {{v60_2_reg_929[5:2]}};
        lshr_ln98_1_reg_965 <= {{v60_2_reg_929[5:3]}};
        select_ln102_reg_983 <= select_ln102_fu_638_p3;
        select_ln110_reg_988 <= select_ln110_fu_646_p3;
        tmp_12_reg_1013 <= v60_2_reg_929[32'd1];
        v100_reg_1232 <= v100_fu_875_p3;
        v106_reg_1237 <= v106_fu_882_p3;
        v63_reg_1182 <= v63_fu_825_p3;
        v70_reg_1207 <= v70_fu_840_p3;
        v76_reg_1212 <= v76_fu_847_p3;
        v82_reg_1217 <= v82_fu_854_p3;
        v88_reg_1222 <= v88_fu_861_p3;
        v94_reg_1227 <= v94_fu_868_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_522 <= grp_fu_508_p3;
        reg_526 <= grp_fu_515_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_530 <= grp_fu_294_p_dout0;
        reg_537 <= grp_fu_298_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln145_reg_1162 <= select_ln145_fu_811_p3;
        select_ln152_reg_1177 <= select_ln152_fu_818_p3;
        tmp_11_reg_936 <= ap_sig_allocacmp_v60_2[32'd6];
        tmp_11_reg_936_pp0_iter1_reg <= tmp_11_reg_936;
        tmp_11_reg_936_pp0_iter2_reg <= tmp_11_reg_936_pp0_iter1_reg;
        tmp_11_reg_936_pp0_iter3_reg <= tmp_11_reg_936_pp0_iter2_reg;
        v58_0_addr_1_reg_1125[3 : 1] <= zext_ln128_fu_793_p1[3 : 1];
        v58_0_addr_1_reg_1125_pp0_iter2_reg[3 : 1] <= v58_0_addr_1_reg_1125[3 : 1];
        v58_0_addr_1_reg_1125_pp0_iter3_reg[3 : 1] <= v58_0_addr_1_reg_1125_pp0_iter2_reg[3 : 1];
        v58_0_addr_reg_1083 <= zext_ln98_fu_768_p1;
        v58_0_addr_reg_1083_pp0_iter2_reg <= v58_0_addr_reg_1083;
        v58_0_addr_reg_1083_pp0_iter3_reg <= v58_0_addr_reg_1083_pp0_iter2_reg;
        v58_1_addr_1_reg_1141[3 : 1] <= zext_ln128_fu_793_p1[3 : 1];
        v58_1_addr_1_reg_1141_pp0_iter2_reg[3 : 1] <= v58_1_addr_1_reg_1141[3 : 1];
        v58_1_addr_1_reg_1141_pp0_iter3_reg[3 : 1] <= v58_1_addr_1_reg_1141_pp0_iter2_reg[3 : 1];
        v58_1_addr_reg_1094 <= zext_ln98_fu_768_p1;
        v58_1_addr_reg_1094_pp0_iter2_reg <= v58_1_addr_reg_1094;
        v58_1_addr_reg_1094_pp0_iter3_reg <= v58_1_addr_reg_1094_pp0_iter2_reg;
        v58_2_addr_1_reg_1157[3 : 1] <= zext_ln128_fu_793_p1[3 : 1];
        v58_2_addr_1_reg_1157_pp0_iter2_reg[3 : 1] <= v58_2_addr_1_reg_1157[3 : 1];
        v58_2_addr_1_reg_1157_pp0_iter3_reg[3 : 1] <= v58_2_addr_1_reg_1157_pp0_iter2_reg[3 : 1];
        v58_2_addr_1_reg_1157_pp0_iter4_reg[3 : 1] <= v58_2_addr_1_reg_1157_pp0_iter3_reg[3 : 1];
        v58_2_addr_reg_1105 <= zext_ln98_fu_768_p1;
        v58_2_addr_reg_1105_pp0_iter2_reg <= v58_2_addr_reg_1105;
        v58_2_addr_reg_1105_pp0_iter3_reg <= v58_2_addr_reg_1105_pp0_iter2_reg;
        v58_3_addr_1_reg_1172[3 : 1] <= zext_ln128_fu_793_p1[3 : 1];
        v58_3_addr_1_reg_1172_pp0_iter2_reg[3 : 1] <= v58_3_addr_1_reg_1172[3 : 1];
        v58_3_addr_1_reg_1172_pp0_iter3_reg[3 : 1] <= v58_3_addr_1_reg_1172_pp0_iter2_reg[3 : 1];
        v58_3_addr_1_reg_1172_pp0_iter4_reg[3 : 1] <= v58_3_addr_1_reg_1172_pp0_iter3_reg[3 : 1];
        v58_3_addr_reg_1115 <= zext_ln98_fu_768_p1;
        v58_3_addr_reg_1115_pp0_iter2_reg <= v58_3_addr_reg_1115;
        v58_3_addr_reg_1115_pp0_iter3_reg <= v58_3_addr_reg_1115_pp0_iter2_reg;
        v60_2_reg_929 <= ap_sig_allocacmp_v60_2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_1262 <= grp_fu_302_p_dout0;
        v108_reg_1267 <= grp_fu_306_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v103_reg_1272 <= grp_fu_294_p_dout0;
        v109_reg_1277 <= grp_fu_298_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v66_reg_1187 <= grp_fu_302_p_dout0;
        v72_reg_1192 <= grp_fu_306_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v78_reg_1242 <= grp_fu_302_p_dout0;
        v84_reg_1247 <= grp_fu_306_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v90_reg_1252 <= grp_fu_302_p_dout0;
        v96_reg_1257 <= grp_fu_306_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_11_reg_936 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_11_reg_936_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v60_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_2 = v60_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_492_p0 = v100_reg_1232;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_492_p0 = v88_reg_1222;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_492_p0 = v76_reg_1212;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_492_p0 = v63_reg_1182;
    end else begin
        grp_fu_492_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_492_p1 = v102_reg_1262;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_492_p1 = v90_reg_1252;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_492_p1 = v78_reg_1242;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_492_p1 = v66_reg_1187;
    end else begin
        grp_fu_492_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_496_p0 = v106_reg_1237;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_496_p0 = v94_reg_1227;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_496_p0 = v82_reg_1217;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_496_p0 = v70_reg_1207;
    end else begin
        grp_fu_496_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_496_p1 = v108_reg_1267;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_496_p1 = v96_reg_1257;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_496_p1 = v84_reg_1247;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_496_p1 = v72_reg_1192;
    end else begin
        grp_fu_496_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_500_p0 = v101_fu_832_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_500_p0 = v89_fu_801_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_500_p0 = v77_fu_730_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_500_p0 = v64_fu_691_p1;
    end else begin
        grp_fu_500_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_504_p0 = v107_fu_836_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_504_p0 = v95_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_504_p0 = v83_fu_735_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_504_p0 = v71_fu_695_p1;
    end else begin
        grp_fu_504_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_0_address0_local = zext_ln152_fu_762_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_0_address0_local = zext_ln138_fu_724_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_0_address0_local = zext_ln124_fu_678_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_0_address0_local = zext_ln110_fu_598_p1;
        end else begin
            v114_0_address0_local = 'bx;
        end
    end else begin
        v114_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_0_address1_local = zext_ln145_fu_748_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_0_address1_local = zext_ln131_fu_707_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_0_address1_local = zext_ln117_fu_663_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_0_address1_local = zext_ln102_fu_572_p1;
        end else begin
            v114_0_address1_local = 'bx;
        end
    end else begin
        v114_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v114_0_ce0_local = 1'b1;
    end else begin
        v114_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v114_0_ce1_local = 1'b1;
    end else begin
        v114_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_2_address0_local = zext_ln152_fu_762_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_2_address0_local = zext_ln138_fu_724_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_2_address0_local = zext_ln124_fu_678_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_2_address0_local = zext_ln110_fu_598_p1;
        end else begin
            v114_2_address0_local = 'bx;
        end
    end else begin
        v114_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_2_address1_local = zext_ln145_fu_748_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_2_address1_local = zext_ln131_fu_707_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_2_address1_local = zext_ln117_fu_663_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_2_address1_local = zext_ln102_fu_572_p1;
        end else begin
            v114_2_address1_local = 'bx;
        end
    end else begin
        v114_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v114_2_ce0_local = 1'b1;
    end else begin
        v114_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v114_2_ce1_local = 1'b1;
    end else begin
        v114_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_0_ce0_local = 1'b1;
    end else begin
        v57_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_1_ce0_local = 1'b1;
    end else begin
        v57_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_2_ce0_local = 1'b1;
    end else begin
        v57_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_3_ce0_local = 1'b1;
    end else begin
        v57_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_4_ce0_local = 1'b1;
    end else begin
        v57_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_5_ce0_local = 1'b1;
    end else begin
        v57_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_6_ce0_local = 1'b1;
    end else begin
        v57_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_7_ce0_local = 1'b1;
    end else begin
        v57_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = v58_0_addr_reg_1083_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln128_fu_793_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_1_reg_1125_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_fu_768_p1;
    end else begin
        v58_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
        v58_1_address0_local = v58_1_addr_reg_1094_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln128_fu_793_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_1_reg_1141_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_fu_768_p1;
    end else begin
        v58_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
        v58_2_address0_local = v58_2_addr_1_reg_1157_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln128_fu_793_p1;
    end else begin
        v58_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_2_address1_local = v58_2_addr_reg_1105_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address1_local = zext_ln98_fu_768_p1;
    end else begin
        v58_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
        v58_3_address0_local = v58_3_addr_1_reg_1172_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln128_fu_793_p1;
    end else begin
        v58_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_3_address1_local = v58_3_addr_reg_1115_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address1_local = zext_ln98_fu_768_p1;
    end else begin
        v58_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
assign add_ln98_fu_604_p2 = (ap_sig_allocacmp_v60_2 + 7'd8);
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
assign grp_fu_294_p_ce = 1'b1;
assign grp_fu_294_p_din0 = grp_fu_492_p0;
assign grp_fu_294_p_din1 = grp_fu_492_p1;
assign grp_fu_294_p_opcode = 2'd0;
assign grp_fu_298_p_ce = 1'b1;
assign grp_fu_298_p_din0 = grp_fu_496_p0;
assign grp_fu_298_p_din1 = grp_fu_496_p1;
assign grp_fu_298_p_opcode = 2'd0;
assign grp_fu_302_p_ce = 1'b1;
assign grp_fu_302_p_din0 = grp_fu_500_p0;
assign grp_fu_302_p_din1 = v65;
assign grp_fu_306_p_ce = 1'b1;
assign grp_fu_306_p_din0 = grp_fu_504_p0;
assign grp_fu_306_p_din1 = v65;
assign grp_fu_508_p3 = ((icmp_ln102_reg_975[0:0] == 1'b1) ? v114_2_q1 : v114_0_q1);
assign grp_fu_515_p3 = ((icmp_ln102_reg_975[0:0] == 1'b1) ? v114_2_q0 : v114_0_q0);
assign icmp_ln102_fu_633_p2 = ((empty != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_615_p4 = {{v60_2_reg_929[5:2]}};
assign or_ln128_1_fu_786_p3 = {{lshr_ln98_1_reg_965}, {1'd1}};
assign select_ln102_fu_638_p3 = ((icmp_ln102_fu_633_p2[0:0] == 1'b1) ? v114_2_q1 : v114_0_q1);
assign select_ln110_fu_646_p3 = ((icmp_ln102_fu_633_p2[0:0] == 1'b1) ? v114_2_q0 : v114_0_q0);
assign select_ln145_fu_811_p3 = ((icmp_ln102_reg_975[0:0] == 1'b1) ? v114_2_q1 : v114_0_q1);
assign select_ln152_fu_818_p3 = ((icmp_ln102_reg_975[0:0] == 1'b1) ? v114_2_q0 : v114_0_q0);
assign tmp_10_fu_699_p4 = {{{lshr_ln98_1_reg_965}, {3'd4}}, {lshr_ln}};
assign tmp_11_fu_552_p3 = ap_sig_allocacmp_v60_2[32'd6];
assign tmp_13_fu_740_p4 = {{{lshr_ln98_1_reg_965}, {3'd6}}, {lshr_ln}};
assign tmp_14_fu_754_p4 = {{{lshr_ln98_1_reg_965}, {3'd7}}, {lshr_ln}};
assign tmp_1_fu_578_p4 = {{ap_sig_allocacmp_v60_2[5:1]}};
assign tmp_2_fu_588_p4 = {{{tmp_1_fu_578_p4}, {1'd1}}, {lshr_ln}};
assign tmp_5_fu_654_p4 = {{{lshr_ln1_fu_615_p4}, {2'd2}}, {lshr_ln}};
assign tmp_7_fu_669_p4 = {{{lshr_ln1_fu_615_p4}, {2'd3}}, {lshr_ln}};
assign tmp_fu_564_p3 = {{trunc_ln98_fu_560_p1}, {lshr_ln}};
assign tmp_s_fu_713_p6 = {{{{{lshr_ln98_1_reg_965}, {1'd1}}, {tmp_12_reg_1013}}, {1'd1}}, {lshr_ln}};
assign trunc_ln98_fu_560_p1 = ap_sig_allocacmp_v60_2[5:0];
assign v100_fu_875_p3 = ((cmp7[0:0] == 1'b1) ? v57_6_q0 : v58_2_q0);
assign v101_fu_832_p1 = select_ln145_reg_1162;
assign v106_fu_882_p3 = ((cmp7[0:0] == 1'b1) ? v57_7_q0 : v58_3_q0);
assign v107_fu_836_p1 = select_ln152_reg_1177;
assign v114_0_address0 = v114_0_address0_local;
assign v114_0_address1 = v114_0_address1_local;
assign v114_0_ce0 = v114_0_ce0_local;
assign v114_0_ce1 = v114_0_ce1_local;
assign v114_2_address0 = v114_2_address0_local;
assign v114_2_address1 = v114_2_address1_local;
assign v114_2_ce0 = v114_2_ce0_local;
assign v114_2_ce1 = v114_2_ce1_local;
assign v57_0_address0 = zext_ln98_1_fu_775_p1;
assign v57_0_ce0 = v57_0_ce0_local;
assign v57_1_address0 = zext_ln98_1_fu_775_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_2_address0 = zext_ln98_1_fu_775_p1;
assign v57_2_ce0 = v57_2_ce0_local;
assign v57_3_address0 = zext_ln98_1_fu_775_p1;
assign v57_3_ce0 = v57_3_ce0_local;
assign v57_4_address0 = zext_ln98_1_fu_775_p1;
assign v57_4_ce0 = v57_4_ce0_local;
assign v57_5_address0 = zext_ln98_1_fu_775_p1;
assign v57_5_ce0 = v57_5_ce0_local;
assign v57_6_address0 = zext_ln98_1_fu_775_p1;
assign v57_6_ce0 = v57_6_ce0_local;
assign v57_7_address0 = zext_ln98_1_fu_775_p1;
assign v57_7_ce0 = v57_7_ce0_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = reg_530;
assign v58_0_d1 = reg_530;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = reg_537;
assign v58_1_d1 = reg_537;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_address1 = v58_2_address1_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_ce1 = v58_2_ce1_local;
assign v58_2_d0 = v103_reg_1272;
assign v58_2_d1 = reg_530;
assign v58_2_we0 = v58_2_we0_local;
assign v58_2_we1 = v58_2_we1_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_address1 = v58_3_address1_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_ce1 = v58_3_ce1_local;
assign v58_3_d0 = v109_reg_1277;
assign v58_3_d1 = reg_537;
assign v58_3_we0 = v58_3_we0_local;
assign v58_3_we1 = v58_3_we1_local;
assign v63_fu_825_p3 = ((cmp7[0:0] == 1'b1) ? v57_0_q0 : v58_0_q1);
assign v64_fu_691_p1 = select_ln102_reg_983;
assign v70_fu_840_p3 = ((cmp7[0:0] == 1'b1) ? v57_1_q0 : v58_1_q1);
assign v71_fu_695_p1 = select_ln110_reg_988;
assign v76_fu_847_p3 = ((cmp7[0:0] == 1'b1) ? v57_2_q0 : v58_2_q1);
assign v77_fu_730_p1 = reg_522;
assign v82_fu_854_p3 = ((cmp7[0:0] == 1'b1) ? v57_3_q0 : v58_3_q1);
assign v83_fu_735_p1 = reg_526;
assign v88_fu_861_p3 = ((cmp7[0:0] == 1'b1) ? v57_4_q0 : v58_0_q0);
assign v89_fu_801_p1 = reg_522;
assign v94_fu_868_p3 = ((cmp7[0:0] == 1'b1) ? v57_5_q0 : v58_1_q0);
assign v95_fu_806_p1 = reg_526;
assign zext_ln102_fu_572_p1 = tmp_fu_564_p3;
assign zext_ln110_fu_598_p1 = tmp_2_fu_588_p4;
assign zext_ln117_fu_663_p1 = tmp_5_fu_654_p4;
assign zext_ln124_fu_678_p1 = tmp_7_fu_669_p4;
assign zext_ln128_fu_793_p1 = or_ln128_1_fu_786_p3;
assign zext_ln131_fu_707_p1 = tmp_10_fu_699_p4;
assign zext_ln138_fu_724_p1 = tmp_s_fu_713_p6;
assign zext_ln145_fu_748_p1 = tmp_13_fu_740_p4;
assign zext_ln152_fu_762_p1 = tmp_14_fu_754_p4;
assign zext_ln98_1_fu_775_p1 = lshr_ln98_1_reg_965;
assign zext_ln98_fu_768_p1 = lshr_ln1_reg_960;
always @ (posedge ap_clk) begin
    v58_0_addr_1_reg_1125[0] <= 1'b1;
    v58_0_addr_1_reg_1125_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_1125_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1141[0] <= 1'b1;
    v58_1_addr_1_reg_1141_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1141_pp0_iter3_reg[0] <= 1'b1;
    v58_2_addr_1_reg_1157[0] <= 1'b1;
    v58_2_addr_1_reg_1157_pp0_iter2_reg[0] <= 1'b1;
    v58_2_addr_1_reg_1157_pp0_iter3_reg[0] <= 1'b1;
    v58_2_addr_1_reg_1157_pp0_iter4_reg[0] <= 1'b1;
    v58_3_addr_1_reg_1172[0] <= 1'b1;
    v58_3_addr_1_reg_1172_pp0_iter2_reg[0] <= 1'b1;
    v58_3_addr_1_reg_1172_pp0_iter3_reg[0] <= 1'b1;
    v58_3_addr_1_reg_1172_pp0_iter4_reg[0] <= 1'b1;
end
endmodule 
