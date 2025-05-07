module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_address0,v115_ce0,v115_q0,v57_0_address0,v57_0_ce0,v57_0_q0,v57_0_address1,v57_0_ce1,v57_0_q1,v57_1_address0,v57_1_ce0,v57_1_q0,v57_1_address1,v57_1_ce1,v57_1_q1,v57_2_address0,v57_2_ce0,v57_2_q0,v57_2_address1,v57_2_ce1,v57_2_q1,v57_3_address0,v57_3_ce0,v57_3_q0,v57_3_address1,v57_3_ce1,v57_3_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_4_address0,v58_4_ce0,v58_4_we0,v58_4_d0,v58_4_address1,v58_4_ce1,v58_4_q1,v58_5_address0,v58_5_ce0,v58_5_we0,v58_5_d0,v58_5_address1,v58_5_ce1,v58_5_q1,v58_6_address0,v58_6_ce0,v58_6_we0,v58_6_d0,v58_6_q0,v58_7_address0,v58_7_ce0,v58_7_we0,v58_7_d0,v58_7_q0,grp_fu_581_p_din0,grp_fu_581_p_din1,grp_fu_581_p_opcode,grp_fu_581_p_dout0,grp_fu_581_p_ce,grp_fu_585_p_din0,grp_fu_585_p_din1,grp_fu_585_p_opcode,grp_fu_585_p_dout0,grp_fu_585_p_ce,grp_fu_589_p_din0,grp_fu_589_p_din1,grp_fu_589_p_dout0,grp_fu_589_p_ce,grp_fu_593_p_din0,grp_fu_593_p_din1,grp_fu_593_p_dout0,grp_fu_593_p_ce); 
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
output  [11:0] v114_address0;
output   v114_ce0;
input  [31:0] v114_q0;
output  [11:0] v114_address1;
output   v114_ce1;
input  [31:0] v114_q1;
output  [5:0] v115_address0;
output   v115_ce0;
input  [31:0] v115_q0;
output  [3:0] v57_0_address0;
output   v57_0_ce0;
input  [31:0] v57_0_q0;
output  [3:0] v57_0_address1;
output   v57_0_ce1;
input  [31:0] v57_0_q1;
output  [3:0] v57_1_address0;
output   v57_1_ce0;
input  [31:0] v57_1_q0;
output  [3:0] v57_1_address1;
output   v57_1_ce1;
input  [31:0] v57_1_q1;
output  [3:0] v57_2_address0;
output   v57_2_ce0;
input  [31:0] v57_2_q0;
output  [3:0] v57_2_address1;
output   v57_2_ce1;
input  [31:0] v57_2_q1;
output  [3:0] v57_3_address0;
output   v57_3_ce0;
input  [31:0] v57_3_q0;
output  [3:0] v57_3_address1;
output   v57_3_ce1;
input  [31:0] v57_3_q1;
output  [2:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [2:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [2:0] v58_2_address0;
output   v58_2_ce0;
output   v58_2_we0;
output  [31:0] v58_2_d0;
input  [31:0] v58_2_q0;
output  [2:0] v58_3_address0;
output   v58_3_ce0;
output   v58_3_we0;
output  [31:0] v58_3_d0;
input  [31:0] v58_3_q0;
output  [2:0] v58_4_address0;
output   v58_4_ce0;
output   v58_4_we0;
output  [31:0] v58_4_d0;
output  [2:0] v58_4_address1;
output   v58_4_ce1;
input  [31:0] v58_4_q1;
output  [2:0] v58_5_address0;
output   v58_5_ce0;
output   v58_5_we0;
output  [31:0] v58_5_d0;
output  [2:0] v58_5_address1;
output   v58_5_ce1;
input  [31:0] v58_5_q1;
output  [2:0] v58_6_address0;
output   v58_6_ce0;
output   v58_6_we0;
output  [31:0] v58_6_d0;
input  [31:0] v58_6_q0;
output  [2:0] v58_7_address0;
output   v58_7_ce0;
output   v58_7_we0;
output  [31:0] v58_7_d0;
input  [31:0] v58_7_q0;
output  [31:0] grp_fu_581_p_din0;
output  [31:0] grp_fu_581_p_din1;
output  [1:0] grp_fu_581_p_opcode;
input  [31:0] grp_fu_581_p_dout0;
output   grp_fu_581_p_ce;
output  [31:0] grp_fu_585_p_din0;
output  [31:0] grp_fu_585_p_din1;
output  [1:0] grp_fu_585_p_opcode;
input  [31:0] grp_fu_585_p_dout0;
output   grp_fu_585_p_ce;
output  [31:0] grp_fu_589_p_din0;
output  [31:0] grp_fu_589_p_din1;
input  [31:0] grp_fu_589_p_dout0;
output   grp_fu_589_p_ce;
output  [31:0] grp_fu_593_p_din0;
output  [31:0] grp_fu_593_p_din1;
input  [31:0] grp_fu_593_p_dout0;
output   grp_fu_593_p_ce;
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
reg   [0:0] icmp_ln97_reg_912;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_434;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_438;
reg   [31:0] reg_442;
reg   [31:0] reg_450;
wire   [0:0] icmp_ln97_fu_476_p2;
reg   [0:0] icmp_ln97_reg_912_pp0_iter1_reg;
reg   [0:0] icmp_ln97_reg_912_pp0_iter2_reg;
reg   [0:0] icmp_ln97_reg_912_pp0_iter3_reg;
reg   [6:0] v59_load_reg_916;
wire   [6:0] add_ln97_fu_491_p2;
reg   [6:0] add_ln97_reg_921;
wire   [6:0] select_ln97_fu_513_p3;
reg   [6:0] select_ln97_reg_926;
wire   [11:0] select_ln97_1_cast_fu_536_p1;
reg   [11:0] select_ln97_1_cast_reg_931;
wire   [0:0] cmp7_fu_540_p2;
reg   [0:0] cmp7_reg_941;
reg   [0:0] cmp7_reg_941_pp0_iter1_reg;
reg   [2:0] lshr_ln_reg_963;
reg   [3:0] lshr_ln98_1_reg_973;
wire   [0:0] trunc_ln114_fu_614_p1;
reg   [0:0] trunc_ln114_reg_985;
wire   [1:0] trunc_ln128_fu_618_p1;
reg   [1:0] trunc_ln128_reg_991;
reg   [0:0] tmp_4_reg_996;
reg   [31:0] v115_load_reg_1001;
wire   [31:0] v65_fu_672_p1;
reg   [31:0] v65_reg_1016;
wire   [31:0] v64_fu_677_p1;
wire   [31:0] v71_fu_682_p1;
reg   [2:0] v58_0_addr_reg_1047;
reg   [2:0] v58_0_addr_reg_1047_pp0_iter2_reg;
reg   [2:0] v58_0_addr_reg_1047_pp0_iter3_reg;
reg   [2:0] v58_1_addr_reg_1057;
reg   [2:0] v58_1_addr_reg_1057_pp0_iter2_reg;
reg   [2:0] v58_1_addr_reg_1057_pp0_iter3_reg;
reg   [2:0] v58_2_addr_reg_1067;
reg   [2:0] v58_2_addr_reg_1067_pp0_iter2_reg;
reg   [2:0] v58_2_addr_reg_1067_pp0_iter3_reg;
wire   [31:0] v77_fu_745_p1;
reg   [2:0] v58_3_addr_reg_1082;
reg   [2:0] v58_3_addr_reg_1082_pp0_iter2_reg;
reg   [2:0] v58_3_addr_reg_1082_pp0_iter3_reg;
wire   [31:0] v83_fu_750_p1;
wire   [63:0] zext_ln128_fu_762_p1;
reg   [63:0] zext_ln128_reg_1092;
reg   [2:0] v58_4_addr_reg_1103;
reg   [2:0] v58_4_addr_reg_1103_pp0_iter2_reg;
reg   [2:0] v58_4_addr_reg_1103_pp0_iter3_reg;
reg   [2:0] v58_5_addr_reg_1114;
reg   [2:0] v58_5_addr_reg_1114_pp0_iter2_reg;
reg   [2:0] v58_5_addr_reg_1114_pp0_iter3_reg;
reg   [2:0] v58_6_addr_reg_1125;
reg   [2:0] v58_6_addr_reg_1125_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_1125_pp0_iter3_reg;
reg   [2:0] v58_6_addr_reg_1125_pp0_iter4_reg;
reg   [2:0] v58_7_addr_reg_1135;
reg   [2:0] v58_7_addr_reg_1135_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_1135_pp0_iter3_reg;
reg   [2:0] v58_7_addr_reg_1135_pp0_iter4_reg;
wire   [31:0] v63_fu_815_p3;
reg   [31:0] v63_reg_1140;
wire   [31:0] v89_fu_822_p1;
wire   [31:0] v95_fu_827_p1;
wire   [31:0] v70_fu_832_p3;
reg   [31:0] v70_reg_1155;
wire   [31:0] v76_fu_839_p3;
reg   [31:0] v76_reg_1160;
wire   [31:0] v82_fu_846_p3;
reg   [31:0] v82_reg_1165;
wire   [31:0] v88_fu_853_p3;
reg   [31:0] v88_reg_1170;
wire   [31:0] v94_fu_860_p3;
reg   [31:0] v94_reg_1175;
reg   [31:0] v66_reg_1180;
reg   [31:0] v72_reg_1185;
wire   [31:0] v101_fu_867_p1;
wire   [31:0] v107_fu_872_p1;
reg   [31:0] v78_reg_1200;
reg   [31:0] v84_reg_1205;
reg   [31:0] v90_reg_1210;
reg   [31:0] v96_reg_1215;
reg   [31:0] v102_reg_1230;
reg   [31:0] v108_reg_1235;
wire   [31:0] v100_fu_877_p3;
reg   [31:0] v100_reg_1240;
wire   [31:0] v106_fu_884_p3;
reg   [31:0] v106_reg_1245;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln97_fu_531_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln102_fu_560_p1;
wire   [63:0] zext_ln110_fu_609_p1;
wire   [63:0] zext_ln117_fu_650_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_667_p1;
wire   [63:0] zext_ln131_fu_702_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_722_p1;
wire   [63:0] zext_ln98_1_fu_738_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln98_fu_727_p1;
wire   [63:0] zext_ln145_fu_783_p1;
wire   [63:0] zext_ln152_fu_800_p1;
reg   [6:0] v60_fu_110;
wire   [6:0] add_ln98_fu_805_p2;
wire    ap_loop_init;
reg   [6:0] v59_fu_114;
wire   [6:0] select_ln97_1_fu_525_p3;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_118;
wire   [9:0] add_ln97_1_fu_482_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v115_ce0_local;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
reg    v57_0_ce1_local;
reg    v57_0_ce0_local;
reg    v58_0_ce0_local;
reg   [2:0] v58_0_address0_local;
reg    v58_0_we0_local;
reg    v57_1_ce1_local;
reg    v57_1_ce0_local;
reg    v57_2_ce1_local;
reg    v57_2_ce0_local;
reg    v57_3_ce1_local;
reg    v57_3_ce0_local;
reg    v58_1_ce0_local;
reg   [2:0] v58_1_address0_local;
reg    v58_1_we0_local;
reg    v58_2_ce0_local;
reg   [2:0] v58_2_address0_local;
reg    v58_2_we0_local;
reg    v58_3_ce0_local;
reg   [2:0] v58_3_address0_local;
reg    v58_3_we0_local;
reg    v58_4_ce1_local;
reg    v58_4_we0_local;
reg    v58_4_ce0_local;
reg    v58_5_ce1_local;
reg    v58_5_we0_local;
reg    v58_5_ce0_local;
reg    v58_6_ce0_local;
reg   [2:0] v58_6_address0_local;
reg    v58_6_we0_local;
reg    v58_7_ce0_local;
reg   [2:0] v58_7_address0_local;
reg    v58_7_we0_local;
reg   [31:0] grp_fu_418_p0;
reg   [31:0] grp_fu_418_p1;
reg   [31:0] grp_fu_422_p0;
reg   [31:0] grp_fu_422_p1;
reg   [31:0] grp_fu_426_p0;
reg   [31:0] grp_fu_426_p1;
reg   [31:0] grp_fu_430_p0;
reg   [31:0] grp_fu_430_p1;
wire   [0:0] tmp_3_fu_505_p3;
wire   [5:0] trunc_ln97_fu_521_p1;
wire   [11:0] tmp_fu_546_p3;
wire   [11:0] add_ln102_fu_554_p2;
wire   [4:0] tmp_1_fu_585_p4;
wire   [11:0] tmp_2_fu_595_p3;
wire   [11:0] add_ln110_fu_603_p2;
wire   [11:0] tmp_5_fu_635_p5;
wire   [11:0] add_ln117_fu_645_p2;
wire   [11:0] tmp_7_fu_655_p3;
wire   [11:0] add_ln124_fu_662_p2;
wire   [11:0] tmp_s_fu_687_p5;
wire   [11:0] add_ln131_fu_697_p2;
wire   [11:0] tmp_6_fu_707_p5;
wire   [11:0] add_ln138_fu_717_p2;
wire   [3:0] or_ln128_1_fu_755_p3;
wire   [11:0] tmp_8_fu_768_p5;
wire   [11:0] add_ln145_fu_778_p2;
wire   [11:0] tmp_9_fu_788_p3;
wire   [11:0] add_ln152_fu_795_p2;
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
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v60_fu_110 = 7'd0;
#0 v59_fu_114 = 7'd0;
#0 indvar_flatten_fu_118 = 10'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_476_p2 == 1'd0))) begin
            indvar_flatten_fu_118 <= add_ln97_1_fu_482_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_118 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v59_fu_114 <= 7'd0;
    end else if (((icmp_ln97_reg_912 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v59_fu_114 <= select_ln97_1_fu_525_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v60_fu_110 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v60_fu_110 <= add_ln98_fu_805_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln97_reg_921 <= add_ln97_fu_491_p2;
        icmp_ln97_reg_912 <= icmp_ln97_fu_476_p2;
        icmp_ln97_reg_912_pp0_iter1_reg <= icmp_ln97_reg_912;
        icmp_ln97_reg_912_pp0_iter2_reg <= icmp_ln97_reg_912_pp0_iter1_reg;
        icmp_ln97_reg_912_pp0_iter3_reg <= icmp_ln97_reg_912_pp0_iter2_reg;
        v58_0_addr_reg_1047 <= zext_ln98_fu_727_p1;
        v58_0_addr_reg_1047_pp0_iter2_reg <= v58_0_addr_reg_1047;
        v58_0_addr_reg_1047_pp0_iter3_reg <= v58_0_addr_reg_1047_pp0_iter2_reg;
        v58_1_addr_reg_1057 <= zext_ln98_fu_727_p1;
        v58_1_addr_reg_1057_pp0_iter2_reg <= v58_1_addr_reg_1057;
        v58_1_addr_reg_1057_pp0_iter3_reg <= v58_1_addr_reg_1057_pp0_iter2_reg;
        v58_2_addr_reg_1067 <= zext_ln98_fu_727_p1;
        v58_2_addr_reg_1067_pp0_iter2_reg <= v58_2_addr_reg_1067;
        v58_2_addr_reg_1067_pp0_iter3_reg <= v58_2_addr_reg_1067_pp0_iter2_reg;
        v58_3_addr_reg_1082 <= zext_ln98_fu_727_p1;
        v58_3_addr_reg_1082_pp0_iter2_reg <= v58_3_addr_reg_1082;
        v58_3_addr_reg_1082_pp0_iter3_reg <= v58_3_addr_reg_1082_pp0_iter2_reg;
        v58_4_addr_reg_1103 <= zext_ln98_fu_727_p1;
        v58_4_addr_reg_1103_pp0_iter2_reg <= v58_4_addr_reg_1103;
        v58_4_addr_reg_1103_pp0_iter3_reg <= v58_4_addr_reg_1103_pp0_iter2_reg;
        v58_5_addr_reg_1114 <= zext_ln98_fu_727_p1;
        v58_5_addr_reg_1114_pp0_iter2_reg <= v58_5_addr_reg_1114;
        v58_5_addr_reg_1114_pp0_iter3_reg <= v58_5_addr_reg_1114_pp0_iter2_reg;
        v58_6_addr_reg_1125 <= zext_ln98_fu_727_p1;
        v58_6_addr_reg_1125_pp0_iter2_reg <= v58_6_addr_reg_1125;
        v58_6_addr_reg_1125_pp0_iter3_reg <= v58_6_addr_reg_1125_pp0_iter2_reg;
        v58_6_addr_reg_1125_pp0_iter4_reg <= v58_6_addr_reg_1125_pp0_iter3_reg;
        v58_7_addr_reg_1135 <= zext_ln98_fu_727_p1;
        v58_7_addr_reg_1135_pp0_iter2_reg <= v58_7_addr_reg_1135;
        v58_7_addr_reg_1135_pp0_iter3_reg <= v58_7_addr_reg_1135_pp0_iter2_reg;
        v58_7_addr_reg_1135_pp0_iter4_reg <= v58_7_addr_reg_1135_pp0_iter3_reg;
        v59_load_reg_916 <= ap_sig_allocacmp_v59_load;
        zext_ln128_reg_1092[3 : 1] <= zext_ln128_fu_762_p1[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_941 <= cmp7_fu_540_p2;
        cmp7_reg_941_pp0_iter1_reg <= cmp7_reg_941;
        lshr_ln98_1_reg_973 <= {{select_ln97_fu_513_p3[5:2]}};
        lshr_ln_reg_963 <= {{select_ln97_fu_513_p3[5:3]}};
        select_ln97_1_cast_reg_931[6 : 0] <= select_ln97_1_cast_fu_536_p1[6 : 0];
        select_ln97_reg_926 <= select_ln97_fu_513_p3;
        tmp_4_reg_996 <= select_ln97_fu_513_p3[32'd1];
        trunc_ln114_reg_985 <= trunc_ln114_fu_614_p1;
        trunc_ln128_reg_991 <= trunc_ln128_fu_618_p1;
        v100_reg_1240 <= v100_fu_877_p3;
        v106_reg_1245 <= v106_fu_884_p3;
        v63_reg_1140 <= v63_fu_815_p3;
        v70_reg_1155 <= v70_fu_832_p3;
        v76_reg_1160 <= v76_fu_839_p3;
        v82_reg_1165 <= v82_fu_846_p3;
        v88_reg_1170 <= v88_fu_853_p3;
        v94_reg_1175 <= v94_fu_860_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_434 <= v114_q1;
        reg_438 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_442 <= grp_fu_581_p_dout0;
        reg_450 <= grp_fu_585_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1230 <= grp_fu_589_p_dout0;
        v108_reg_1235 <= grp_fu_593_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v115_load_reg_1001 <= v115_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_reg_1016 <= v65_fu_672_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_1180 <= grp_fu_589_p_dout0;
        v72_reg_1185 <= grp_fu_593_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1200 <= grp_fu_589_p_dout0;
        v84_reg_1205 <= grp_fu_593_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1210 <= grp_fu_589_p_dout0;
        v96_reg_1215 <= grp_fu_593_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_912 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln97_reg_912_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v59_load = v59_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_418_p0 = v100_reg_1240;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_418_p0 = v88_reg_1170;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_418_p0 = v76_reg_1160;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_418_p0 = v63_reg_1140;
    end else begin
        grp_fu_418_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_418_p1 = v102_reg_1230;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_418_p1 = v90_reg_1210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_418_p1 = v78_reg_1200;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_418_p1 = v66_reg_1180;
    end else begin
        grp_fu_418_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_422_p0 = v106_reg_1245;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_422_p0 = v94_reg_1175;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_422_p0 = v82_reg_1165;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_422_p0 = v70_reg_1155;
    end else begin
        grp_fu_422_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_422_p1 = v108_reg_1235;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_422_p1 = v96_reg_1215;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_422_p1 = v84_reg_1205;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_422_p1 = v72_reg_1185;
    end else begin
        grp_fu_422_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_426_p0 = v101_fu_867_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_426_p0 = v89_fu_822_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_426_p0 = v77_fu_745_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_426_p0 = v64_fu_677_p1;
    end else begin
        grp_fu_426_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_426_p1 = v65_reg_1016;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_426_p1 = v65_fu_672_p1;
    end else begin
        grp_fu_426_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_430_p0 = v107_fu_872_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_430_p0 = v95_fu_827_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_430_p0 = v83_fu_750_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_430_p0 = v71_fu_682_p1;
    end else begin
        grp_fu_430_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_430_p1 = v65_reg_1016;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_430_p1 = v65_fu_672_p1;
    end else begin
        grp_fu_430_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address0_local = zext_ln152_fu_800_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address0_local = zext_ln138_fu_722_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address0_local = zext_ln124_fu_667_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address0_local = zext_ln110_fu_609_p1;
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address1_local = zext_ln145_fu_783_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address1_local = zext_ln131_fu_702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address1_local = zext_ln117_fu_650_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address1_local = zext_ln102_fu_560_p1;
    end else begin
        v114_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v114_ce0_local = 1'b1;
    end else begin
        v114_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v114_ce1_local = 1'b1;
    end else begin
        v114_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v115_ce0_local = 1'b1;
    end else begin
        v115_ce0_local = 1'b0;
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
        v57_0_ce1_local = 1'b1;
    end else begin
        v57_0_ce1_local = 1'b0;
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
        v57_1_ce1_local = 1'b1;
    end else begin
        v57_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_2_ce0_local = 1'b1;
    end else begin
        v57_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_2_ce1_local = 1'b1;
    end else begin
        v57_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_3_ce0_local = 1'b1;
    end else begin
        v57_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_3_ce1_local = 1'b1;
    end else begin
        v57_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_reg_1047_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln98_fu_727_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_reg_1057_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln98_fu_727_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_2_address0_local = v58_2_addr_reg_1067_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln98_fu_727_p1;
    end else begin
        v58_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_2_ce0_local = 1'b1;
    end else begin
        v58_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_2_we0_local = 1'b1;
    end else begin
        v58_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_3_address0_local = v58_3_addr_reg_1082_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln98_fu_727_p1;
    end else begin
        v58_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_3_ce0_local = 1'b1;
    end else begin
        v58_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_3_we0_local = 1'b1;
    end else begin
        v58_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_4_ce0_local = 1'b1;
    end else begin
        v58_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_4_ce1_local = 1'b1;
    end else begin
        v58_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_4_we0_local = 1'b1;
    end else begin
        v58_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_5_ce0_local = 1'b1;
    end else begin
        v58_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_5_ce1_local = 1'b1;
    end else begin
        v58_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_5_we0_local = 1'b1;
    end else begin
        v58_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_6_address0_local = v58_6_addr_reg_1125_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_address0_local = v58_6_addr_reg_1125;
    end else begin
        v58_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v58_6_ce0_local = 1'b1;
    end else begin
        v58_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_6_we0_local = 1'b1;
    end else begin
        v58_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_7_address0_local = v58_7_addr_reg_1135_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_address0_local = v58_7_addr_reg_1135;
    end else begin
        v58_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v58_7_ce0_local = 1'b1;
    end else begin
        v58_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_7_we0_local = 1'b1;
    end else begin
        v58_7_we0_local = 1'b0;
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
assign add_ln102_fu_554_p2 = (tmp_fu_546_p3 + select_ln97_1_cast_fu_536_p1);
assign add_ln110_fu_603_p2 = (tmp_2_fu_595_p3 + select_ln97_1_cast_fu_536_p1);
assign add_ln117_fu_645_p2 = (tmp_5_fu_635_p5 + select_ln97_1_cast_reg_931);
assign add_ln124_fu_662_p2 = (tmp_7_fu_655_p3 + select_ln97_1_cast_reg_931);
assign add_ln131_fu_697_p2 = (tmp_s_fu_687_p5 + select_ln97_1_cast_reg_931);
assign add_ln138_fu_717_p2 = (tmp_6_fu_707_p5 + select_ln97_1_cast_reg_931);
assign add_ln145_fu_778_p2 = (tmp_8_fu_768_p5 + select_ln97_1_cast_reg_931);
assign add_ln152_fu_795_p2 = (tmp_9_fu_788_p3 + select_ln97_1_cast_reg_931);
assign add_ln97_1_fu_482_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_491_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_805_p2 = (select_ln97_reg_926 + 7'd8);
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
assign cmp7_fu_540_p2 = ((select_ln97_1_fu_525_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_581_p_ce = 1'b1;
assign grp_fu_581_p_din0 = grp_fu_418_p0;
assign grp_fu_581_p_din1 = grp_fu_418_p1;
assign grp_fu_581_p_opcode = 2'd0;
assign grp_fu_585_p_ce = 1'b1;
assign grp_fu_585_p_din0 = grp_fu_422_p0;
assign grp_fu_585_p_din1 = grp_fu_422_p1;
assign grp_fu_585_p_opcode = 2'd0;
assign grp_fu_589_p_ce = 1'b1;
assign grp_fu_589_p_din0 = grp_fu_426_p0;
assign grp_fu_589_p_din1 = grp_fu_426_p1;
assign grp_fu_593_p_ce = 1'b1;
assign grp_fu_593_p_din0 = grp_fu_430_p0;
assign grp_fu_593_p_din1 = grp_fu_430_p1;
assign icmp_ln97_fu_476_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign or_ln128_1_fu_755_p3 = {{lshr_ln_reg_963}, {1'd1}};
assign select_ln97_1_cast_fu_536_p1 = select_ln97_1_fu_525_p3;
assign select_ln97_1_fu_525_p3 = ((tmp_3_fu_505_p3[0:0] == 1'b1) ? add_ln97_reg_921 : v59_load_reg_916);
assign select_ln97_fu_513_p3 = ((tmp_3_fu_505_p3[0:0] == 1'b1) ? 7'd0 : v60_fu_110);
assign tmp_1_fu_585_p4 = {{select_ln97_fu_513_p3[5:1]}};
assign tmp_2_fu_595_p3 = {{tmp_1_fu_585_p4}, {7'd64}};
assign tmp_3_fu_505_p3 = v60_fu_110[32'd6];
assign tmp_5_fu_635_p5 = {{{{lshr_ln98_1_reg_973}, {1'd1}}, {trunc_ln114_reg_985}}, {6'd0}};
assign tmp_6_fu_707_p5 = {{{{lshr_ln_reg_963}, {1'd1}}, {tmp_4_reg_996}}, {7'd64}};
assign tmp_7_fu_655_p3 = {{lshr_ln98_1_reg_973}, {8'd192}};
assign tmp_8_fu_768_p5 = {{{{lshr_ln_reg_963}, {2'd3}}, {trunc_ln114_reg_985}}, {6'd0}};
assign tmp_9_fu_788_p3 = {{lshr_ln_reg_963}, {9'd448}};
assign tmp_fu_546_p3 = {{trunc_ln97_fu_521_p1}, {6'd0}};
assign tmp_s_fu_687_p5 = {{{{lshr_ln_reg_963}, {1'd1}}, {trunc_ln128_reg_991}}, {6'd0}};
assign trunc_ln114_fu_614_p1 = select_ln97_fu_513_p3[0:0];
assign trunc_ln128_fu_618_p1 = select_ln97_fu_513_p3[1:0];
assign trunc_ln97_fu_521_p1 = select_ln97_fu_513_p3[5:0];
assign v100_fu_877_p3 = ((cmp7_reg_941_pp0_iter1_reg[0:0] == 1'b1) ? v57_2_q0 : v58_6_q0);
assign v101_fu_867_p1 = reg_434;
assign v106_fu_884_p3 = ((cmp7_reg_941_pp0_iter1_reg[0:0] == 1'b1) ? v57_3_q0 : v58_7_q0);
assign v107_fu_872_p1 = reg_438;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_address0 = zext_ln97_fu_531_p1;
assign v115_ce0 = v115_ce0_local;
assign v57_0_address0 = zext_ln128_fu_762_p1;
assign v57_0_address1 = zext_ln98_1_fu_738_p1;
assign v57_0_ce0 = v57_0_ce0_local;
assign v57_0_ce1 = v57_0_ce1_local;
assign v57_1_address0 = zext_ln128_fu_762_p1;
assign v57_1_address1 = zext_ln98_1_fu_738_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_1_ce1 = v57_1_ce1_local;
assign v57_2_address0 = zext_ln128_reg_1092;
assign v57_2_address1 = zext_ln98_1_fu_738_p1;
assign v57_2_ce0 = v57_2_ce0_local;
assign v57_2_ce1 = v57_2_ce1_local;
assign v57_3_address0 = zext_ln128_reg_1092;
assign v57_3_address1 = zext_ln98_1_fu_738_p1;
assign v57_3_ce0 = v57_3_ce0_local;
assign v57_3_ce1 = v57_3_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_d0 = reg_442;
assign v58_0_we0 = v58_0_we0_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_d0 = reg_450;
assign v58_1_we0 = v58_1_we0_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_d0 = reg_442;
assign v58_2_we0 = v58_2_we0_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_d0 = reg_450;
assign v58_3_we0 = v58_3_we0_local;
assign v58_4_address0 = v58_4_addr_reg_1103_pp0_iter3_reg;
assign v58_4_address1 = zext_ln98_fu_727_p1;
assign v58_4_ce0 = v58_4_ce0_local;
assign v58_4_ce1 = v58_4_ce1_local;
assign v58_4_d0 = reg_442;
assign v58_4_we0 = v58_4_we0_local;
assign v58_5_address0 = v58_5_addr_reg_1114_pp0_iter3_reg;
assign v58_5_address1 = zext_ln98_fu_727_p1;
assign v58_5_ce0 = v58_5_ce0_local;
assign v58_5_ce1 = v58_5_ce1_local;
assign v58_5_d0 = reg_450;
assign v58_5_we0 = v58_5_we0_local;
assign v58_6_address0 = v58_6_address0_local;
assign v58_6_ce0 = v58_6_ce0_local;
assign v58_6_d0 = reg_442;
assign v58_6_we0 = v58_6_we0_local;
assign v58_7_address0 = v58_7_address0_local;
assign v58_7_ce0 = v58_7_ce0_local;
assign v58_7_d0 = reg_450;
assign v58_7_we0 = v58_7_we0_local;
assign v63_fu_815_p3 = ((cmp7_reg_941[0:0] == 1'b1) ? v57_0_q1 : v58_0_q0);
assign v64_fu_677_p1 = reg_434;
assign v65_fu_672_p1 = v115_load_reg_1001;
assign v70_fu_832_p3 = ((cmp7_reg_941[0:0] == 1'b1) ? v57_1_q1 : v58_1_q0);
assign v71_fu_682_p1 = reg_438;
assign v76_fu_839_p3 = ((cmp7_reg_941[0:0] == 1'b1) ? v57_2_q1 : v58_2_q0);
assign v77_fu_745_p1 = reg_434;
assign v82_fu_846_p3 = ((cmp7_reg_941[0:0] == 1'b1) ? v57_3_q1 : v58_3_q0);
assign v83_fu_750_p1 = reg_438;
assign v88_fu_853_p3 = ((cmp7_reg_941[0:0] == 1'b1) ? v57_0_q0 : v58_4_q1);
assign v89_fu_822_p1 = reg_434;
assign v94_fu_860_p3 = ((cmp7_reg_941[0:0] == 1'b1) ? v57_1_q0 : v58_5_q1);
assign v95_fu_827_p1 = reg_438;
assign zext_ln102_fu_560_p1 = add_ln102_fu_554_p2;
assign zext_ln110_fu_609_p1 = add_ln110_fu_603_p2;
assign zext_ln117_fu_650_p1 = add_ln117_fu_645_p2;
assign zext_ln124_fu_667_p1 = add_ln124_fu_662_p2;
assign zext_ln128_fu_762_p1 = or_ln128_1_fu_755_p3;
assign zext_ln131_fu_702_p1 = add_ln131_fu_697_p2;
assign zext_ln138_fu_722_p1 = add_ln138_fu_717_p2;
assign zext_ln145_fu_783_p1 = add_ln145_fu_778_p2;
assign zext_ln152_fu_800_p1 = add_ln152_fu_795_p2;
assign zext_ln97_fu_531_p1 = select_ln97_1_fu_525_p3;
assign zext_ln98_1_fu_738_p1 = lshr_ln98_1_reg_973;
assign zext_ln98_fu_727_p1 = lshr_ln_reg_963;
always @ (posedge ap_clk) begin
    select_ln97_1_cast_reg_931[11:7] <= 5'b00000;
    zext_ln128_reg_1092[0] <= 1'b1;
    zext_ln128_reg_1092[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 