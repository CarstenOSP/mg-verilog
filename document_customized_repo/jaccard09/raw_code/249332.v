module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_address0,v115_ce0,v115_q0,v57_0_address0,v57_0_ce0,v57_0_q0,v57_0_address1,v57_0_ce1,v57_0_q1,v57_1_address0,v57_1_ce0,v57_1_q0,v57_1_address1,v57_1_ce1,v57_1_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_4_address0,v58_4_ce0,v58_4_we0,v58_4_d0,v58_4_address1,v58_4_ce1,v58_4_q1,v58_5_address0,v58_5_ce0,v58_5_we0,v58_5_d0,v58_5_address1,v58_5_ce1,v58_5_q1,v58_6_address0,v58_6_ce0,v58_6_we0,v58_6_d0,v58_6_q0,v58_7_address0,v58_7_ce0,v58_7_we0,v58_7_d0,v58_7_q0,grp_fu_158_p_din0,grp_fu_158_p_din1,grp_fu_158_p_opcode,grp_fu_158_p_dout0,grp_fu_158_p_ce,grp_fu_162_p_din0,grp_fu_162_p_din1,grp_fu_162_p_opcode,grp_fu_162_p_dout0,grp_fu_162_p_ce,grp_fu_166_p_din0,grp_fu_166_p_din1,grp_fu_166_p_dout0,grp_fu_166_p_ce,grp_fu_170_p_din0,grp_fu_170_p_din1,grp_fu_170_p_dout0,grp_fu_170_p_ce); 
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
output  [4:0] v57_0_address0;
output   v57_0_ce0;
input  [31:0] v57_0_q0;
output  [4:0] v57_0_address1;
output   v57_0_ce1;
input  [31:0] v57_0_q1;
output  [4:0] v57_1_address0;
output   v57_1_ce0;
input  [31:0] v57_1_q0;
output  [4:0] v57_1_address1;
output   v57_1_ce1;
input  [31:0] v57_1_q1;
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
output  [31:0] grp_fu_158_p_din0;
output  [31:0] grp_fu_158_p_din1;
output  [1:0] grp_fu_158_p_opcode;
input  [31:0] grp_fu_158_p_dout0;
output   grp_fu_158_p_ce;
output  [31:0] grp_fu_162_p_din0;
output  [31:0] grp_fu_162_p_din1;
output  [1:0] grp_fu_162_p_opcode;
input  [31:0] grp_fu_162_p_dout0;
output   grp_fu_162_p_ce;
output  [31:0] grp_fu_166_p_din0;
output  [31:0] grp_fu_166_p_din1;
input  [31:0] grp_fu_166_p_dout0;
output   grp_fu_166_p_ce;
output  [31:0] grp_fu_170_p_din0;
output  [31:0] grp_fu_170_p_din1;
input  [31:0] grp_fu_170_p_dout0;
output   grp_fu_170_p_ce;
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
reg   [0:0] icmp_ln97_reg_910;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_416;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_420;
reg   [31:0] reg_424;
reg   [31:0] reg_432;
wire   [0:0] icmp_ln97_fu_458_p2;
reg   [0:0] icmp_ln97_reg_910_pp0_iter1_reg;
reg   [0:0] icmp_ln97_reg_910_pp0_iter2_reg;
reg   [0:0] icmp_ln97_reg_910_pp0_iter3_reg;
wire   [6:0] select_ln97_fu_490_p3;
reg   [6:0] select_ln97_reg_914;
wire   [5:0] trunc_ln97_fu_498_p1;
reg   [5:0] trunc_ln97_reg_919;
wire   [6:0] select_ln97_1_fu_502_p3;
reg   [6:0] select_ln97_1_reg_924;
reg   [2:0] lshr_ln_reg_931;
wire   [4:0] lshr_ln98_1_fu_520_p4;
reg   [4:0] lshr_ln98_1_reg_942;
wire   [3:0] tmp_3_fu_536_p4;
reg   [3:0] tmp_3_reg_957;
wire   [0:0] trunc_ln114_fu_546_p1;
reg   [0:0] trunc_ln114_reg_963;
wire   [1:0] trunc_ln128_fu_564_p1;
reg   [1:0] trunc_ln128_reg_979;
reg   [0:0] tmp_4_reg_984;
wire   [11:0] select_ln97_1_cast_fu_590_p1;
reg   [11:0] select_ln97_1_cast_reg_990;
wire   [0:0] cmp7_fu_593_p2;
reg   [0:0] cmp7_reg_1000;
reg   [0:0] cmp7_reg_1000_pp0_iter1_reg;
reg   [31:0] v61_reg_1022;
reg   [31:0] v68_reg_1052;
reg   [31:0] v74_reg_1057;
reg   [31:0] v80_reg_1062;
reg   [31:0] v115_load_reg_1067;
reg   [31:0] v86_reg_1082;
reg   [31:0] v92_reg_1087;
reg   [31:0] v98_reg_1092;
reg   [31:0] v98_reg_1092_pp0_iter1_reg;
reg   [31:0] v104_reg_1097;
reg   [31:0] v104_reg_1097_pp0_iter1_reg;
wire   [31:0] v65_fu_698_p1;
reg   [31:0] v65_reg_1102;
wire   [31:0] v64_fu_703_p1;
wire   [31:0] v71_fu_708_p1;
reg   [2:0] v58_0_addr_reg_1128;
reg   [2:0] v58_0_addr_reg_1128_pp0_iter2_reg;
reg   [2:0] v58_0_addr_reg_1128_pp0_iter3_reg;
reg   [2:0] v58_1_addr_reg_1133;
reg   [2:0] v58_1_addr_reg_1133_pp0_iter2_reg;
reg   [2:0] v58_1_addr_reg_1133_pp0_iter3_reg;
reg   [2:0] v58_2_addr_reg_1138;
reg   [2:0] v58_2_addr_reg_1138_pp0_iter2_reg;
reg   [2:0] v58_2_addr_reg_1138_pp0_iter3_reg;
wire   [31:0] v77_fu_774_p1;
reg   [2:0] v58_3_addr_reg_1148;
reg   [2:0] v58_3_addr_reg_1148_pp0_iter2_reg;
reg   [2:0] v58_3_addr_reg_1148_pp0_iter3_reg;
wire   [31:0] v83_fu_779_p1;
reg   [2:0] v58_4_addr_reg_1158;
reg   [2:0] v58_4_addr_reg_1158_pp0_iter2_reg;
reg   [2:0] v58_4_addr_reg_1158_pp0_iter3_reg;
reg   [2:0] v58_5_addr_reg_1164;
reg   [2:0] v58_5_addr_reg_1164_pp0_iter2_reg;
reg   [2:0] v58_5_addr_reg_1164_pp0_iter3_reg;
reg   [2:0] v58_6_addr_reg_1175;
reg   [2:0] v58_6_addr_reg_1175_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_1175_pp0_iter3_reg;
reg   [2:0] v58_6_addr_reg_1175_pp0_iter4_reg;
reg   [2:0] v58_7_addr_reg_1185;
reg   [2:0] v58_7_addr_reg_1185_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_1185_pp0_iter3_reg;
reg   [2:0] v58_7_addr_reg_1185_pp0_iter4_reg;
wire   [31:0] v63_fu_821_p3;
reg   [31:0] v63_reg_1190;
wire   [31:0] v89_fu_827_p1;
wire   [31:0] v95_fu_832_p1;
wire   [31:0] v70_fu_837_p3;
reg   [31:0] v70_reg_1205;
wire   [31:0] v76_fu_843_p3;
reg   [31:0] v76_reg_1210;
wire   [31:0] v82_fu_849_p3;
reg   [31:0] v82_reg_1215;
wire   [31:0] v88_fu_855_p3;
reg   [31:0] v88_reg_1220;
wire   [31:0] v94_fu_861_p3;
reg   [31:0] v94_reg_1225;
reg   [31:0] v66_reg_1230;
reg   [31:0] v72_reg_1235;
wire   [31:0] v101_fu_867_p1;
wire   [31:0] v107_fu_872_p1;
reg   [31:0] v78_reg_1250;
reg   [31:0] v84_reg_1255;
reg   [31:0] v90_reg_1260;
reg   [31:0] v96_reg_1265;
reg   [31:0] v102_reg_1270;
reg   [31:0] v108_reg_1275;
wire   [31:0] v100_fu_877_p3;
reg   [31:0] v100_reg_1280;
wire   [31:0] v106_fu_883_p3;
reg   [31:0] v106_reg_1285;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln98_1_fu_530_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln114_fu_558_p1;
wire   [63:0] zext_ln97_fu_586_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln102_fu_611_p1;
wire   [63:0] zext_ln110_fu_629_p1;
wire   [63:0] zext_ln128_fu_642_p1;
wire   [63:0] zext_ln142_fu_655_p1;
wire   [63:0] zext_ln117_fu_676_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_693_p1;
wire   [63:0] zext_ln131_fu_728_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_748_p1;
wire   [63:0] zext_ln98_fu_763_p1;
wire   [63:0] zext_ln145_fu_799_p1;
wire   [63:0] zext_ln152_fu_816_p1;
reg   [6:0] v60_fu_110;
wire   [6:0] add_ln98_fu_753_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_load;
reg   [6:0] v59_fu_114;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_118;
wire   [9:0] add_ln97_1_fu_464_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v57_0_ce1_local;
reg   [4:0] v57_0_address1_local;
reg    v57_0_ce0_local;
reg   [4:0] v57_0_address0_local;
reg    v57_1_ce1_local;
reg   [4:0] v57_1_address1_local;
reg    v57_1_ce0_local;
reg   [4:0] v57_1_address0_local;
reg    v115_ce0_local;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
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
reg   [31:0] grp_fu_400_p0;
reg   [31:0] grp_fu_400_p1;
reg   [31:0] grp_fu_404_p0;
reg   [31:0] grp_fu_404_p1;
reg   [31:0] grp_fu_408_p0;
reg   [31:0] grp_fu_408_p1;
reg   [31:0] grp_fu_412_p0;
reg   [31:0] grp_fu_412_p1;
wire   [0:0] tmp_1_fu_482_p3;
wire   [6:0] add_ln97_fu_476_p2;
wire   [4:0] or_ln114_1_fu_550_p3;
wire   [11:0] tmp_fu_598_p3;
wire   [11:0] add_ln102_fu_605_p2;
wire   [11:0] tmp_2_fu_616_p3;
wire   [11:0] add_ln110_fu_623_p2;
wire   [4:0] or_ln128_1_fu_634_p4;
wire   [4:0] or_ln142_1_fu_648_p3;
wire   [11:0] tmp_5_fu_661_p5;
wire   [11:0] add_ln117_fu_671_p2;
wire   [11:0] tmp_8_fu_681_p3;
wire   [11:0] add_ln124_fu_688_p2;
wire   [11:0] tmp_s_fu_713_p5;
wire   [11:0] add_ln131_fu_723_p2;
wire   [11:0] tmp_6_fu_733_p5;
wire   [11:0] add_ln138_fu_743_p2;
wire   [11:0] tmp_7_fu_784_p5;
wire   [11:0] add_ln145_fu_794_p2;
wire   [11:0] tmp_9_fu_804_p3;
wire   [11:0] add_ln152_fu_811_p2;
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
        if (((icmp_ln97_fu_458_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_118 <= add_ln97_1_fu_464_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_118 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln97_fu_458_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v59_fu_114 <= select_ln97_1_fu_502_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v59_fu_114 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v60_fu_110 <= 7'd0;
    end else if (((icmp_ln97_reg_910 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v60_fu_110 <= add_ln98_fu_753_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_1000 <= cmp7_fu_593_p2;
        cmp7_reg_1000_pp0_iter1_reg <= cmp7_reg_1000;
        select_ln97_1_cast_reg_990[6 : 0] <= select_ln97_1_cast_fu_590_p1[6 : 0];
        v100_reg_1280 <= v100_fu_877_p3;
        v106_reg_1285 <= v106_fu_883_p3;
        v63_reg_1190 <= v63_fu_821_p3;
        v70_reg_1205 <= v70_fu_837_p3;
        v76_reg_1210 <= v76_fu_843_p3;
        v82_reg_1215 <= v82_fu_849_p3;
        v88_reg_1220 <= v88_fu_855_p3;
        v94_reg_1225 <= v94_fu_861_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln97_reg_910 <= icmp_ln97_fu_458_p2;
        icmp_ln97_reg_910_pp0_iter1_reg <= icmp_ln97_reg_910;
        icmp_ln97_reg_910_pp0_iter2_reg <= icmp_ln97_reg_910_pp0_iter1_reg;
        icmp_ln97_reg_910_pp0_iter3_reg <= icmp_ln97_reg_910_pp0_iter2_reg;
        lshr_ln98_1_reg_942 <= {{select_ln97_fu_490_p3[5:1]}};
        lshr_ln_reg_931 <= {{select_ln97_fu_490_p3[5:3]}};
        select_ln97_1_reg_924 <= select_ln97_1_fu_502_p3;
        select_ln97_reg_914 <= select_ln97_fu_490_p3;
        tmp_3_reg_957 <= {{select_ln97_fu_490_p3[5:2]}};
        tmp_4_reg_984 <= select_ln97_fu_490_p3[32'd1];
        trunc_ln114_reg_963 <= trunc_ln114_fu_546_p1;
        trunc_ln128_reg_979 <= trunc_ln128_fu_564_p1;
        trunc_ln97_reg_919 <= trunc_ln97_fu_498_p1;
        v58_0_addr_reg_1128 <= zext_ln98_fu_763_p1;
        v58_0_addr_reg_1128_pp0_iter2_reg <= v58_0_addr_reg_1128;
        v58_0_addr_reg_1128_pp0_iter3_reg <= v58_0_addr_reg_1128_pp0_iter2_reg;
        v58_1_addr_reg_1133 <= zext_ln98_fu_763_p1;
        v58_1_addr_reg_1133_pp0_iter2_reg <= v58_1_addr_reg_1133;
        v58_1_addr_reg_1133_pp0_iter3_reg <= v58_1_addr_reg_1133_pp0_iter2_reg;
        v58_2_addr_reg_1138 <= zext_ln98_fu_763_p1;
        v58_2_addr_reg_1138_pp0_iter2_reg <= v58_2_addr_reg_1138;
        v58_2_addr_reg_1138_pp0_iter3_reg <= v58_2_addr_reg_1138_pp0_iter2_reg;
        v58_3_addr_reg_1148 <= zext_ln98_fu_763_p1;
        v58_3_addr_reg_1148_pp0_iter2_reg <= v58_3_addr_reg_1148;
        v58_3_addr_reg_1148_pp0_iter3_reg <= v58_3_addr_reg_1148_pp0_iter2_reg;
        v58_4_addr_reg_1158 <= zext_ln98_fu_763_p1;
        v58_4_addr_reg_1158_pp0_iter2_reg <= v58_4_addr_reg_1158;
        v58_4_addr_reg_1158_pp0_iter3_reg <= v58_4_addr_reg_1158_pp0_iter2_reg;
        v58_5_addr_reg_1164 <= zext_ln98_fu_763_p1;
        v58_5_addr_reg_1164_pp0_iter2_reg <= v58_5_addr_reg_1164;
        v58_5_addr_reg_1164_pp0_iter3_reg <= v58_5_addr_reg_1164_pp0_iter2_reg;
        v58_6_addr_reg_1175 <= zext_ln98_fu_763_p1;
        v58_6_addr_reg_1175_pp0_iter2_reg <= v58_6_addr_reg_1175;
        v58_6_addr_reg_1175_pp0_iter3_reg <= v58_6_addr_reg_1175_pp0_iter2_reg;
        v58_6_addr_reg_1175_pp0_iter4_reg <= v58_6_addr_reg_1175_pp0_iter3_reg;
        v58_7_addr_reg_1185 <= zext_ln98_fu_763_p1;
        v58_7_addr_reg_1185_pp0_iter2_reg <= v58_7_addr_reg_1185;
        v58_7_addr_reg_1185_pp0_iter3_reg <= v58_7_addr_reg_1185_pp0_iter2_reg;
        v58_7_addr_reg_1185_pp0_iter4_reg <= v58_7_addr_reg_1185_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_416 <= v114_q1;
        reg_420 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_424 <= grp_fu_158_p_dout0;
        reg_432 <= grp_fu_162_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1270 <= grp_fu_166_p_dout0;
        v108_reg_1275 <= grp_fu_170_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v104_reg_1097 <= v57_1_q0;
        v86_reg_1082 <= v57_0_q1;
        v92_reg_1087 <= v57_1_q1;
        v98_reg_1092 <= v57_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v104_reg_1097_pp0_iter1_reg <= v104_reg_1097;
        v115_load_reg_1067 <= v115_q0;
        v98_reg_1092_pp0_iter1_reg <= v98_reg_1092;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v61_reg_1022 <= v57_0_q1;
        v68_reg_1052 <= v57_1_q1;
        v74_reg_1057 <= v57_0_q0;
        v80_reg_1062 <= v57_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_reg_1102 <= v65_fu_698_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_1230 <= grp_fu_166_p_dout0;
        v72_reg_1235 <= grp_fu_170_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1250 <= grp_fu_166_p_dout0;
        v84_reg_1255 <= grp_fu_170_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1260 <= grp_fu_166_p_dout0;
        v96_reg_1265 <= grp_fu_170_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_910 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln97_reg_910_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_118;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v59_load = v59_fu_114;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v60_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_load = v60_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_400_p0 = v100_reg_1280;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_400_p0 = v88_reg_1220;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_400_p0 = v76_reg_1210;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_400_p0 = v63_reg_1190;
    end else begin
        grp_fu_400_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_400_p1 = v102_reg_1270;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_400_p1 = v90_reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_400_p1 = v78_reg_1250;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_400_p1 = v66_reg_1230;
    end else begin
        grp_fu_400_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_404_p0 = v106_reg_1285;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_404_p0 = v94_reg_1225;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_404_p0 = v82_reg_1215;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_404_p0 = v70_reg_1205;
    end else begin
        grp_fu_404_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_404_p1 = v108_reg_1275;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_404_p1 = v96_reg_1265;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_404_p1 = v84_reg_1255;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_404_p1 = v72_reg_1235;
    end else begin
        grp_fu_404_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_408_p0 = v101_fu_867_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_408_p0 = v89_fu_827_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_408_p0 = v77_fu_774_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_408_p0 = v64_fu_703_p1;
    end else begin
        grp_fu_408_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_408_p1 = v65_reg_1102;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_408_p1 = v65_fu_698_p1;
    end else begin
        grp_fu_408_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_412_p0 = v107_fu_872_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_412_p0 = v95_fu_832_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_412_p0 = v83_fu_779_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_412_p0 = v71_fu_708_p1;
    end else begin
        grp_fu_412_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_412_p1 = v65_reg_1102;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_412_p1 = v65_fu_698_p1;
    end else begin
        grp_fu_412_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address0_local = zext_ln152_fu_816_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address0_local = zext_ln138_fu_748_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address0_local = zext_ln124_fu_693_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address0_local = zext_ln110_fu_629_p1;
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address1_local = zext_ln145_fu_799_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address1_local = zext_ln131_fu_728_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address1_local = zext_ln117_fu_676_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address1_local = zext_ln102_fu_611_p1;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_0_address0_local = zext_ln142_fu_655_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_0_address0_local = zext_ln114_fu_558_p1;
        end else begin
            v57_0_address0_local = 'bx;
        end
    end else begin
        v57_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_0_address1_local = zext_ln128_fu_642_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_0_address1_local = zext_ln98_1_fu_530_p1;
        end else begin
            v57_0_address1_local = 'bx;
        end
    end else begin
        v57_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v57_0_ce0_local = 1'b1;
    end else begin
        v57_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v57_0_ce1_local = 1'b1;
    end else begin
        v57_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_1_address0_local = zext_ln142_fu_655_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_1_address0_local = zext_ln114_fu_558_p1;
        end else begin
            v57_1_address0_local = 'bx;
        end
    end else begin
        v57_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_1_address1_local = zext_ln128_fu_642_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_1_address1_local = zext_ln98_1_fu_530_p1;
        end else begin
            v57_1_address1_local = 'bx;
        end
    end else begin
        v57_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v57_1_ce0_local = 1'b1;
    end else begin
        v57_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v57_1_ce1_local = 1'b1;
    end else begin
        v57_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_reg_1128_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln98_fu_763_p1;
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
        v58_1_address0_local = v58_1_addr_reg_1133_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln98_fu_763_p1;
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
        v58_2_address0_local = v58_2_addr_reg_1138_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln98_fu_763_p1;
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
        v58_3_address0_local = v58_3_addr_reg_1148_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln98_fu_763_p1;
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
        v58_6_address0_local = v58_6_addr_reg_1175_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_address0_local = v58_6_addr_reg_1175;
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
        v58_7_address0_local = v58_7_addr_reg_1185_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_address0_local = v58_7_addr_reg_1185;
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
assign add_ln102_fu_605_p2 = (tmp_fu_598_p3 + select_ln97_1_cast_fu_590_p1);
assign add_ln110_fu_623_p2 = (tmp_2_fu_616_p3 + select_ln97_1_cast_fu_590_p1);
assign add_ln117_fu_671_p2 = (tmp_5_fu_661_p5 + select_ln97_1_cast_reg_990);
assign add_ln124_fu_688_p2 = (tmp_8_fu_681_p3 + select_ln97_1_cast_reg_990);
assign add_ln131_fu_723_p2 = (tmp_s_fu_713_p5 + select_ln97_1_cast_reg_990);
assign add_ln138_fu_743_p2 = (tmp_6_fu_733_p5 + select_ln97_1_cast_reg_990);
assign add_ln145_fu_794_p2 = (tmp_7_fu_784_p5 + select_ln97_1_cast_reg_990);
assign add_ln152_fu_811_p2 = (tmp_9_fu_804_p3 + select_ln97_1_cast_reg_990);
assign add_ln97_1_fu_464_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_476_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_753_p2 = (select_ln97_reg_914 + 7'd8);
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
assign cmp7_fu_593_p2 = ((select_ln97_1_reg_924 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_158_p_ce = 1'b1;
assign grp_fu_158_p_din0 = grp_fu_400_p0;
assign grp_fu_158_p_din1 = grp_fu_400_p1;
assign grp_fu_158_p_opcode = 2'd0;
assign grp_fu_162_p_ce = 1'b1;
assign grp_fu_162_p_din0 = grp_fu_404_p0;
assign grp_fu_162_p_din1 = grp_fu_404_p1;
assign grp_fu_162_p_opcode = 2'd0;
assign grp_fu_166_p_ce = 1'b1;
assign grp_fu_166_p_din0 = grp_fu_408_p0;
assign grp_fu_166_p_din1 = grp_fu_408_p1;
assign grp_fu_170_p_ce = 1'b1;
assign grp_fu_170_p_din0 = grp_fu_412_p0;
assign grp_fu_170_p_din1 = grp_fu_412_p1;
assign icmp_ln97_fu_458_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln98_1_fu_520_p4 = {{select_ln97_fu_490_p3[5:1]}};
assign or_ln114_1_fu_550_p3 = {{tmp_3_fu_536_p4}, {1'd1}};
assign or_ln128_1_fu_634_p4 = {{{lshr_ln_reg_931}, {1'd1}}, {tmp_4_reg_984}};
assign or_ln142_1_fu_648_p3 = {{lshr_ln_reg_931}, {2'd3}};
assign select_ln97_1_cast_fu_590_p1 = select_ln97_1_reg_924;
assign select_ln97_1_fu_502_p3 = ((tmp_1_fu_482_p3[0:0] == 1'b1) ? add_ln97_fu_476_p2 : ap_sig_allocacmp_v59_load);
assign select_ln97_fu_490_p3 = ((tmp_1_fu_482_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v60_load);
assign tmp_1_fu_482_p3 = ap_sig_allocacmp_v60_load[32'd6];
assign tmp_2_fu_616_p3 = {{lshr_ln98_1_reg_942}, {7'd64}};
assign tmp_3_fu_536_p4 = {{select_ln97_fu_490_p3[5:2]}};
assign tmp_5_fu_661_p5 = {{{{tmp_3_reg_957}, {1'd1}}, {trunc_ln114_reg_963}}, {6'd0}};
assign tmp_6_fu_733_p5 = {{{{lshr_ln_reg_931}, {1'd1}}, {tmp_4_reg_984}}, {7'd64}};
assign tmp_7_fu_784_p5 = {{{{lshr_ln_reg_931}, {2'd3}}, {trunc_ln114_reg_963}}, {6'd0}};
assign tmp_8_fu_681_p3 = {{tmp_3_reg_957}, {8'd192}};
assign tmp_9_fu_804_p3 = {{lshr_ln_reg_931}, {9'd448}};
assign tmp_fu_598_p3 = {{trunc_ln97_reg_919}, {6'd0}};
assign tmp_s_fu_713_p5 = {{{{lshr_ln_reg_931}, {1'd1}}, {trunc_ln128_reg_979}}, {6'd0}};
assign trunc_ln114_fu_546_p1 = select_ln97_fu_490_p3[0:0];
assign trunc_ln128_fu_564_p1 = select_ln97_fu_490_p3[1:0];
assign trunc_ln97_fu_498_p1 = select_ln97_fu_490_p3[5:0];
assign v100_fu_877_p3 = ((cmp7_reg_1000_pp0_iter1_reg[0:0] == 1'b1) ? v98_reg_1092_pp0_iter1_reg : v58_6_q0);
assign v101_fu_867_p1 = reg_416;
assign v106_fu_883_p3 = ((cmp7_reg_1000_pp0_iter1_reg[0:0] == 1'b1) ? v104_reg_1097_pp0_iter1_reg : v58_7_q0);
assign v107_fu_872_p1 = reg_420;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_address0 = zext_ln97_fu_586_p1;
assign v115_ce0 = v115_ce0_local;
assign v57_0_address0 = v57_0_address0_local;
assign v57_0_address1 = v57_0_address1_local;
assign v57_0_ce0 = v57_0_ce0_local;
assign v57_0_ce1 = v57_0_ce1_local;
assign v57_1_address0 = v57_1_address0_local;
assign v57_1_address1 = v57_1_address1_local;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_1_ce1 = v57_1_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_d0 = reg_424;
assign v58_0_we0 = v58_0_we0_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_d0 = reg_432;
assign v58_1_we0 = v58_1_we0_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_d0 = reg_424;
assign v58_2_we0 = v58_2_we0_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_d0 = reg_432;
assign v58_3_we0 = v58_3_we0_local;
assign v58_4_address0 = v58_4_addr_reg_1158_pp0_iter3_reg;
assign v58_4_address1 = zext_ln98_fu_763_p1;
assign v58_4_ce0 = v58_4_ce0_local;
assign v58_4_ce1 = v58_4_ce1_local;
assign v58_4_d0 = reg_424;
assign v58_4_we0 = v58_4_we0_local;
assign v58_5_address0 = v58_5_addr_reg_1164_pp0_iter3_reg;
assign v58_5_address1 = zext_ln98_fu_763_p1;
assign v58_5_ce0 = v58_5_ce0_local;
assign v58_5_ce1 = v58_5_ce1_local;
assign v58_5_d0 = reg_432;
assign v58_5_we0 = v58_5_we0_local;
assign v58_6_address0 = v58_6_address0_local;
assign v58_6_ce0 = v58_6_ce0_local;
assign v58_6_d0 = reg_424;
assign v58_6_we0 = v58_6_we0_local;
assign v58_7_address0 = v58_7_address0_local;
assign v58_7_ce0 = v58_7_ce0_local;
assign v58_7_d0 = reg_432;
assign v58_7_we0 = v58_7_we0_local;
assign v63_fu_821_p3 = ((cmp7_reg_1000[0:0] == 1'b1) ? v61_reg_1022 : v58_0_q0);
assign v64_fu_703_p1 = reg_416;
assign v65_fu_698_p1 = v115_load_reg_1067;
assign v70_fu_837_p3 = ((cmp7_reg_1000[0:0] == 1'b1) ? v68_reg_1052 : v58_1_q0);
assign v71_fu_708_p1 = reg_420;
assign v76_fu_843_p3 = ((cmp7_reg_1000[0:0] == 1'b1) ? v74_reg_1057 : v58_2_q0);
assign v77_fu_774_p1 = reg_416;
assign v82_fu_849_p3 = ((cmp7_reg_1000[0:0] == 1'b1) ? v80_reg_1062 : v58_3_q0);
assign v83_fu_779_p1 = reg_420;
assign v88_fu_855_p3 = ((cmp7_reg_1000[0:0] == 1'b1) ? v86_reg_1082 : v58_4_q1);
assign v89_fu_827_p1 = reg_416;
assign v94_fu_861_p3 = ((cmp7_reg_1000[0:0] == 1'b1) ? v92_reg_1087 : v58_5_q1);
assign v95_fu_832_p1 = reg_420;
assign zext_ln102_fu_611_p1 = add_ln102_fu_605_p2;
assign zext_ln110_fu_629_p1 = add_ln110_fu_623_p2;
assign zext_ln114_fu_558_p1 = or_ln114_1_fu_550_p3;
assign zext_ln117_fu_676_p1 = add_ln117_fu_671_p2;
assign zext_ln124_fu_693_p1 = add_ln124_fu_688_p2;
assign zext_ln128_fu_642_p1 = or_ln128_1_fu_634_p4;
assign zext_ln131_fu_728_p1 = add_ln131_fu_723_p2;
assign zext_ln138_fu_748_p1 = add_ln138_fu_743_p2;
assign zext_ln142_fu_655_p1 = or_ln142_1_fu_648_p3;
assign zext_ln145_fu_799_p1 = add_ln145_fu_794_p2;
assign zext_ln152_fu_816_p1 = add_ln152_fu_811_p2;
assign zext_ln97_fu_586_p1 = select_ln97_1_reg_924;
assign zext_ln98_1_fu_530_p1 = lshr_ln98_1_fu_520_p4;
assign zext_ln98_fu_763_p1 = lshr_ln_reg_931;
always @ (posedge ap_clk) begin
    select_ln97_1_cast_reg_990[11:7] <= 5'b00000;
end
endmodule 