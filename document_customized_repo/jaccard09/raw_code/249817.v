module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_address0,v115_ce0,v115_q0,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_4_address0,v58_4_ce0,v58_4_we0,v58_4_d0,v58_4_address1,v58_4_ce1,v58_4_q1,v58_5_address0,v58_5_ce0,v58_5_we0,v58_5_d0,v58_5_address1,v58_5_ce1,v58_5_q1,v58_6_address0,v58_6_ce0,v58_6_we0,v58_6_d0,v58_6_q0,v58_7_address0,v58_7_ce0,v58_7_we0,v58_7_d0,v58_7_q0,grp_fu_527_p_din0,grp_fu_527_p_din1,grp_fu_527_p_opcode,grp_fu_527_p_dout0,grp_fu_527_p_ce,grp_fu_531_p_din0,grp_fu_531_p_din1,grp_fu_531_p_opcode,grp_fu_531_p_dout0,grp_fu_531_p_ce,grp_fu_535_p_din0,grp_fu_535_p_din1,grp_fu_535_p_dout0,grp_fu_535_p_ce,grp_fu_539_p_din0,grp_fu_539_p_din1,grp_fu_539_p_dout0,grp_fu_539_p_ce); 
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
output  [5:0] v57_address0;
output   v57_ce0;
input  [31:0] v57_q0;
output  [5:0] v57_address1;
output   v57_ce1;
input  [31:0] v57_q1;
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
output  [31:0] grp_fu_527_p_din0;
output  [31:0] grp_fu_527_p_din1;
output  [1:0] grp_fu_527_p_opcode;
input  [31:0] grp_fu_527_p_dout0;
output   grp_fu_527_p_ce;
output  [31:0] grp_fu_531_p_din0;
output  [31:0] grp_fu_531_p_din1;
output  [1:0] grp_fu_531_p_opcode;
input  [31:0] grp_fu_531_p_dout0;
output   grp_fu_531_p_ce;
output  [31:0] grp_fu_535_p_din0;
output  [31:0] grp_fu_535_p_din1;
input  [31:0] grp_fu_535_p_dout0;
output   grp_fu_535_p_ce;
output  [31:0] grp_fu_539_p_din0;
output  [31:0] grp_fu_539_p_din1;
input  [31:0] grp_fu_539_p_dout0;
output   grp_fu_539_p_ce;
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
reg   [0:0] icmp_ln97_reg_961;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_415;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_419;
reg   [31:0] reg_423;
reg   [31:0] reg_431;
wire   [0:0] icmp_ln97_fu_457_p2;
reg   [0:0] icmp_ln97_reg_961_pp0_iter1_reg;
reg   [0:0] icmp_ln97_reg_961_pp0_iter2_reg;
reg   [0:0] icmp_ln97_reg_961_pp0_iter3_reg;
reg   [6:0] v59_load_reg_965;
wire   [6:0] add_ln97_fu_472_p2;
reg   [6:0] add_ln97_reg_970;
wire   [6:0] select_ln97_fu_494_p3;
reg   [6:0] select_ln97_reg_975;
wire   [11:0] select_ln97_1_cast_fu_517_p1;
reg   [11:0] select_ln97_1_cast_reg_981;
wire   [0:0] cmp7_fu_521_p2;
reg   [0:0] cmp7_reg_991;
reg   [0:0] cmp7_reg_991_pp0_iter1_reg;
reg   [2:0] lshr_ln_reg_1013;
reg   [2:0] lshr_ln_reg_1013_pp0_iter1_reg;
wire   [4:0] tmp_1_fu_556_p4;
reg   [4:0] tmp_1_reg_1026;
reg   [3:0] tmp_3_reg_1036;
wire   [0:0] trunc_ln114_fu_595_p1;
reg   [0:0] trunc_ln114_reg_1044;
reg   [0:0] trunc_ln114_reg_1044_pp0_iter1_reg;
wire   [1:0] trunc_ln128_fu_599_p1;
reg   [1:0] trunc_ln128_reg_1052;
reg   [1:0] trunc_ln128_reg_1052_pp0_iter1_reg;
reg   [0:0] tmp_6_reg_1058;
reg   [0:0] tmp_6_reg_1058_pp0_iter1_reg;
reg   [31:0] v115_load_reg_1064;
wire   [31:0] v65_fu_653_p1;
reg   [31:0] v65_reg_1079;
wire   [31:0] v64_fu_658_p1;
wire   [31:0] v71_fu_663_p1;
reg   [2:0] v58_0_addr_reg_1110;
reg   [2:0] v58_0_addr_reg_1110_pp0_iter2_reg;
reg   [2:0] v58_0_addr_reg_1110_pp0_iter3_reg;
reg   [2:0] v58_1_addr_reg_1120;
reg   [2:0] v58_1_addr_reg_1120_pp0_iter2_reg;
reg   [2:0] v58_1_addr_reg_1120_pp0_iter3_reg;
reg   [2:0] v58_2_addr_reg_1125;
reg   [2:0] v58_2_addr_reg_1125_pp0_iter2_reg;
reg   [2:0] v58_2_addr_reg_1125_pp0_iter3_reg;
wire   [31:0] v77_fu_735_p1;
reg   [2:0] v58_3_addr_reg_1135;
reg   [2:0] v58_3_addr_reg_1135_pp0_iter2_reg;
reg   [2:0] v58_3_addr_reg_1135_pp0_iter3_reg;
wire   [31:0] v83_fu_740_p1;
reg   [2:0] v58_4_addr_reg_1145;
reg   [2:0] v58_4_addr_reg_1145_pp0_iter2_reg;
reg   [2:0] v58_4_addr_reg_1145_pp0_iter3_reg;
reg   [2:0] v58_5_addr_reg_1151;
reg   [2:0] v58_5_addr_reg_1151_pp0_iter2_reg;
reg   [2:0] v58_5_addr_reg_1151_pp0_iter3_reg;
reg   [2:0] v58_6_addr_reg_1162;
reg   [2:0] v58_6_addr_reg_1162_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_1162_pp0_iter3_reg;
reg   [2:0] v58_6_addr_reg_1162_pp0_iter4_reg;
reg   [2:0] v58_7_addr_reg_1172;
reg   [2:0] v58_7_addr_reg_1172_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_1172_pp0_iter3_reg;
reg   [2:0] v58_7_addr_reg_1172_pp0_iter4_reg;
wire   [31:0] v63_fu_792_p3;
reg   [31:0] v63_reg_1177;
wire   [31:0] v89_fu_824_p1;
wire   [31:0] v95_fu_829_p1;
wire   [31:0] v70_fu_834_p3;
reg   [31:0] v70_reg_1202;
reg   [31:0] v75_reg_1207;
reg   [31:0] v81_reg_1212;
reg   [31:0] v87_reg_1217;
reg   [31:0] v93_reg_1222;
reg   [31:0] v66_reg_1227;
reg   [31:0] v72_reg_1232;
wire   [31:0] v101_fu_869_p1;
wire   [31:0] v107_fu_874_p1;
wire   [31:0] v76_fu_879_p3;
reg   [31:0] v76_reg_1257;
wire   [31:0] v82_fu_885_p3;
reg   [31:0] v82_reg_1262;
reg   [31:0] v78_reg_1267;
reg   [31:0] v84_reg_1272;
wire   [31:0] v88_fu_916_p3;
reg   [31:0] v88_reg_1287;
wire   [31:0] v94_fu_922_p3;
reg   [31:0] v94_reg_1292;
reg   [31:0] v90_reg_1297;
reg   [31:0] v96_reg_1302;
reg   [31:0] v98_reg_1307;
reg   [31:0] v104_reg_1312;
reg   [31:0] v102_reg_1317;
reg   [31:0] v108_reg_1322;
wire   [31:0] v100_fu_928_p3;
reg   [31:0] v100_reg_1327;
wire   [31:0] v106_fu_934_p3;
reg   [31:0] v106_reg_1332;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln97_fu_512_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln102_fu_541_p1;
wire   [63:0] zext_ln110_fu_580_p1;
wire   [63:0] zext_ln117_fu_631_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_648_p1;
wire   [63:0] zext_ln131_fu_683_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_703_p1;
wire   [63:0] zext_ln98_fu_708_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln98_1_fu_712_p1;
wire   [63:0] zext_ln107_fu_730_p1;
wire   [63:0] zext_ln145_fu_760_p1;
wire   [63:0] zext_ln152_fu_777_p1;
wire   [63:0] zext_ln114_fu_807_p1;
wire   [63:0] zext_ln121_fu_819_p1;
wire   [63:0] zext_ln128_fu_849_p1;
wire   [63:0] zext_ln135_fu_864_p1;
wire   [63:0] zext_ln142_fu_899_p1;
wire   [63:0] zext_ln149_fu_911_p1;
reg   [6:0] v60_fu_118;
wire   [6:0] add_ln98_fu_782_p2;
wire    ap_loop_init;
reg   [6:0] v59_fu_122;
wire   [6:0] select_ln97_1_fu_506_p3;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_126;
wire   [9:0] add_ln97_1_fu_463_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v115_ce0_local;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
reg    v57_ce1_local;
reg   [5:0] v57_address1_local;
reg    v57_ce0_local;
reg   [5:0] v57_address0_local;
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
reg   [31:0] grp_fu_399_p0;
reg   [31:0] grp_fu_399_p1;
reg   [31:0] grp_fu_403_p0;
reg   [31:0] grp_fu_403_p1;
reg   [31:0] grp_fu_407_p0;
reg   [31:0] grp_fu_407_p1;
reg   [31:0] grp_fu_411_p0;
reg   [31:0] grp_fu_411_p1;
wire   [0:0] tmp_4_fu_486_p3;
wire   [5:0] trunc_ln97_fu_502_p1;
wire   [11:0] tmp_fu_527_p3;
wire   [11:0] add_ln102_fu_535_p2;
wire   [11:0] tmp_2_fu_566_p3;
wire   [11:0] add_ln110_fu_574_p2;
wire   [11:0] tmp_5_fu_616_p5;
wire   [11:0] add_ln117_fu_626_p2;
wire   [11:0] tmp_7_fu_636_p3;
wire   [11:0] add_ln124_fu_643_p2;
wire   [11:0] tmp_s_fu_668_p5;
wire   [11:0] add_ln131_fu_678_p2;
wire   [11:0] tmp_8_fu_688_p5;
wire   [11:0] add_ln138_fu_698_p2;
wire   [5:0] or_ln_fu_723_p3;
wire   [11:0] tmp_9_fu_745_p5;
wire   [11:0] add_ln145_fu_755_p2;
wire   [11:0] tmp_10_fu_765_p3;
wire   [11:0] add_ln152_fu_772_p2;
wire   [5:0] or_ln1_fu_799_p4;
wire   [5:0] or_ln2_fu_812_p3;
wire   [5:0] or_ln3_fu_841_p4;
wire   [5:0] or_ln4_fu_854_p5;
wire   [5:0] or_ln5_fu_891_p4;
wire   [5:0] or_ln6_fu_904_p3;
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
#0 v60_fu_118 = 7'd0;
#0 v59_fu_122 = 7'd0;
#0 indvar_flatten_fu_126 = 10'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_457_p2 == 1'd0))) begin
            indvar_flatten_fu_126 <= add_ln97_1_fu_463_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_126 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v59_fu_122 <= 7'd0;
    end else if (((icmp_ln97_reg_961 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v59_fu_122 <= select_ln97_1_fu_506_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v60_fu_118 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v60_fu_118 <= add_ln98_fu_782_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln97_reg_970 <= add_ln97_fu_472_p2;
        icmp_ln97_reg_961 <= icmp_ln97_fu_457_p2;
        icmp_ln97_reg_961_pp0_iter1_reg <= icmp_ln97_reg_961;
        icmp_ln97_reg_961_pp0_iter2_reg <= icmp_ln97_reg_961_pp0_iter1_reg;
        icmp_ln97_reg_961_pp0_iter3_reg <= icmp_ln97_reg_961_pp0_iter2_reg;
        v58_0_addr_reg_1110 <= zext_ln98_1_fu_712_p1;
        v58_0_addr_reg_1110_pp0_iter2_reg <= v58_0_addr_reg_1110;
        v58_0_addr_reg_1110_pp0_iter3_reg <= v58_0_addr_reg_1110_pp0_iter2_reg;
        v58_1_addr_reg_1120 <= zext_ln98_1_fu_712_p1;
        v58_1_addr_reg_1120_pp0_iter2_reg <= v58_1_addr_reg_1120;
        v58_1_addr_reg_1120_pp0_iter3_reg <= v58_1_addr_reg_1120_pp0_iter2_reg;
        v58_2_addr_reg_1125 <= zext_ln98_1_fu_712_p1;
        v58_2_addr_reg_1125_pp0_iter2_reg <= v58_2_addr_reg_1125;
        v58_2_addr_reg_1125_pp0_iter3_reg <= v58_2_addr_reg_1125_pp0_iter2_reg;
        v58_3_addr_reg_1135 <= zext_ln98_1_fu_712_p1;
        v58_3_addr_reg_1135_pp0_iter2_reg <= v58_3_addr_reg_1135;
        v58_3_addr_reg_1135_pp0_iter3_reg <= v58_3_addr_reg_1135_pp0_iter2_reg;
        v58_4_addr_reg_1145 <= zext_ln98_1_fu_712_p1;
        v58_4_addr_reg_1145_pp0_iter2_reg <= v58_4_addr_reg_1145;
        v58_4_addr_reg_1145_pp0_iter3_reg <= v58_4_addr_reg_1145_pp0_iter2_reg;
        v58_5_addr_reg_1151 <= zext_ln98_1_fu_712_p1;
        v58_5_addr_reg_1151_pp0_iter2_reg <= v58_5_addr_reg_1151;
        v58_5_addr_reg_1151_pp0_iter3_reg <= v58_5_addr_reg_1151_pp0_iter2_reg;
        v58_6_addr_reg_1162 <= zext_ln98_1_fu_712_p1;
        v58_6_addr_reg_1162_pp0_iter2_reg <= v58_6_addr_reg_1162;
        v58_6_addr_reg_1162_pp0_iter3_reg <= v58_6_addr_reg_1162_pp0_iter2_reg;
        v58_6_addr_reg_1162_pp0_iter4_reg <= v58_6_addr_reg_1162_pp0_iter3_reg;
        v58_7_addr_reg_1172 <= zext_ln98_1_fu_712_p1;
        v58_7_addr_reg_1172_pp0_iter2_reg <= v58_7_addr_reg_1172;
        v58_7_addr_reg_1172_pp0_iter3_reg <= v58_7_addr_reg_1172_pp0_iter2_reg;
        v58_7_addr_reg_1172_pp0_iter4_reg <= v58_7_addr_reg_1172_pp0_iter3_reg;
        v59_load_reg_965 <= ap_sig_allocacmp_v59_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_991 <= cmp7_fu_521_p2;
        cmp7_reg_991_pp0_iter1_reg <= cmp7_reg_991;
        lshr_ln_reg_1013 <= {{select_ln97_fu_494_p3[5:3]}};
        lshr_ln_reg_1013_pp0_iter1_reg <= lshr_ln_reg_1013;
        select_ln97_1_cast_reg_981[6 : 0] <= select_ln97_1_cast_fu_517_p1[6 : 0];
        select_ln97_reg_975 <= select_ln97_fu_494_p3;
        tmp_1_reg_1026 <= {{select_ln97_fu_494_p3[5:1]}};
        tmp_3_reg_1036 <= {{select_ln97_fu_494_p3[5:2]}};
        tmp_6_reg_1058 <= select_ln97_fu_494_p3[32'd1];
        tmp_6_reg_1058_pp0_iter1_reg <= tmp_6_reg_1058;
        trunc_ln114_reg_1044 <= trunc_ln114_fu_595_p1;
        trunc_ln114_reg_1044_pp0_iter1_reg <= trunc_ln114_reg_1044;
        trunc_ln128_reg_1052 <= trunc_ln128_fu_599_p1;
        trunc_ln128_reg_1052_pp0_iter1_reg <= trunc_ln128_reg_1052;
        v100_reg_1327 <= v100_fu_928_p3;
        v106_reg_1332 <= v106_fu_934_p3;
        v63_reg_1177 <= v63_fu_792_p3;
        v70_reg_1202 <= v70_fu_834_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_415 <= v114_q1;
        reg_419 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_423 <= grp_fu_527_p_dout0;
        reg_431 <= grp_fu_531_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1317 <= grp_fu_535_p_dout0;
        v108_reg_1322 <= grp_fu_539_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v104_reg_1312 <= v57_q0;
        v90_reg_1297 <= grp_fu_535_p_dout0;
        v96_reg_1302 <= grp_fu_539_p_dout0;
        v98_reg_1307 <= v57_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v115_load_reg_1064 <= v115_q0;
        v76_reg_1257 <= v76_fu_879_p3;
        v82_reg_1262 <= v82_fu_885_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_reg_1079 <= v65_fu_653_p1;
        v88_reg_1287 <= v88_fu_916_p3;
        v94_reg_1292 <= v94_fu_922_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_1227 <= grp_fu_535_p_dout0;
        v72_reg_1232 <= grp_fu_539_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v75_reg_1207 <= v58_2_q0;
        v81_reg_1212 <= v58_3_q0;
        v87_reg_1217 <= v58_4_q1;
        v93_reg_1222 <= v58_5_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1267 <= grp_fu_535_p_dout0;
        v84_reg_1272 <= grp_fu_539_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_961 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln97_reg_961_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v59_load = v59_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_399_p0 = v100_reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_399_p0 = v88_reg_1287;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_399_p0 = v76_reg_1257;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_399_p0 = v63_reg_1177;
    end else begin
        grp_fu_399_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_399_p1 = v102_reg_1317;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_399_p1 = v90_reg_1297;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_399_p1 = v78_reg_1267;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_399_p1 = v66_reg_1227;
    end else begin
        grp_fu_399_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_403_p0 = v106_reg_1332;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p0 = v94_reg_1292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_403_p0 = v82_reg_1262;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_403_p0 = v70_reg_1202;
    end else begin
        grp_fu_403_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_403_p1 = v108_reg_1322;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p1 = v96_reg_1302;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_403_p1 = v84_reg_1272;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_403_p1 = v72_reg_1232;
    end else begin
        grp_fu_403_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_407_p0 = v101_fu_869_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_407_p0 = v89_fu_824_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_407_p0 = v77_fu_735_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p0 = v64_fu_658_p1;
    end else begin
        grp_fu_407_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_407_p1 = v65_reg_1079;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p1 = v65_fu_653_p1;
    end else begin
        grp_fu_407_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p0 = v107_fu_874_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_411_p0 = v95_fu_829_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_411_p0 = v83_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p0 = v71_fu_663_p1;
    end else begin
        grp_fu_411_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_411_p1 = v65_reg_1079;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p1 = v65_fu_653_p1;
    end else begin
        grp_fu_411_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address0_local = zext_ln152_fu_777_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address0_local = zext_ln138_fu_703_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address0_local = zext_ln124_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address0_local = zext_ln110_fu_580_p1;
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address1_local = zext_ln145_fu_760_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address1_local = zext_ln131_fu_683_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address1_local = zext_ln117_fu_631_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address1_local = zext_ln102_fu_541_p1;
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
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address0_local = zext_ln149_fu_911_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln135_fu_864_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln121_fu_819_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln107_fu_730_p1;
        end else begin
            v57_address0_local = 'bx;
        end
    end else begin
        v57_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address1_local = zext_ln142_fu_899_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address1_local = zext_ln128_fu_849_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address1_local = zext_ln114_fu_807_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address1_local = zext_ln98_fu_708_p1;
        end else begin
            v57_address1_local = 'bx;
        end
    end else begin
        v57_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v57_ce0_local = 1'b1;
    end else begin
        v57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v57_ce1_local = 1'b1;
    end else begin
        v57_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_reg_1110_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln98_1_fu_712_p1;
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
        v58_1_address0_local = v58_1_addr_reg_1120_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln98_1_fu_712_p1;
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
        v58_2_address0_local = v58_2_addr_reg_1125_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln98_1_fu_712_p1;
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
        v58_3_address0_local = v58_3_addr_reg_1135_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln98_1_fu_712_p1;
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
        v58_6_address0_local = v58_6_addr_reg_1162_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_address0_local = v58_6_addr_reg_1162;
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
        v58_7_address0_local = v58_7_addr_reg_1172_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_address0_local = v58_7_addr_reg_1172;
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
assign add_ln102_fu_535_p2 = (tmp_fu_527_p3 + select_ln97_1_cast_fu_517_p1);
assign add_ln110_fu_574_p2 = (tmp_2_fu_566_p3 + select_ln97_1_cast_fu_517_p1);
assign add_ln117_fu_626_p2 = (tmp_5_fu_616_p5 + select_ln97_1_cast_reg_981);
assign add_ln124_fu_643_p2 = (tmp_7_fu_636_p3 + select_ln97_1_cast_reg_981);
assign add_ln131_fu_678_p2 = (tmp_s_fu_668_p5 + select_ln97_1_cast_reg_981);
assign add_ln138_fu_698_p2 = (tmp_8_fu_688_p5 + select_ln97_1_cast_reg_981);
assign add_ln145_fu_755_p2 = (tmp_9_fu_745_p5 + select_ln97_1_cast_reg_981);
assign add_ln152_fu_772_p2 = (tmp_10_fu_765_p3 + select_ln97_1_cast_reg_981);
assign add_ln97_1_fu_463_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_472_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_782_p2 = (select_ln97_reg_975 + 7'd8);
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
assign cmp7_fu_521_p2 = ((select_ln97_1_fu_506_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_527_p_ce = 1'b1;
assign grp_fu_527_p_din0 = grp_fu_399_p0;
assign grp_fu_527_p_din1 = grp_fu_399_p1;
assign grp_fu_527_p_opcode = 2'd0;
assign grp_fu_531_p_ce = 1'b1;
assign grp_fu_531_p_din0 = grp_fu_403_p0;
assign grp_fu_531_p_din1 = grp_fu_403_p1;
assign grp_fu_531_p_opcode = 2'd0;
assign grp_fu_535_p_ce = 1'b1;
assign grp_fu_535_p_din0 = grp_fu_407_p0;
assign grp_fu_535_p_din1 = grp_fu_407_p1;
assign grp_fu_539_p_ce = 1'b1;
assign grp_fu_539_p_din0 = grp_fu_411_p0;
assign grp_fu_539_p_din1 = grp_fu_411_p1;
assign icmp_ln97_fu_457_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign or_ln1_fu_799_p4 = {{{tmp_3_reg_1036}, {1'd1}}, {trunc_ln114_reg_1044}};
assign or_ln2_fu_812_p3 = {{tmp_3_reg_1036}, {2'd3}};
assign or_ln3_fu_841_p4 = {{{lshr_ln_reg_1013_pp0_iter1_reg}, {1'd1}}, {trunc_ln128_reg_1052_pp0_iter1_reg}};
assign or_ln4_fu_854_p5 = {{{{lshr_ln_reg_1013_pp0_iter1_reg}, {1'd1}}, {tmp_6_reg_1058_pp0_iter1_reg}}, {1'd1}};
assign or_ln5_fu_891_p4 = {{{lshr_ln_reg_1013_pp0_iter1_reg}, {2'd3}}, {trunc_ln114_reg_1044_pp0_iter1_reg}};
assign or_ln6_fu_904_p3 = {{lshr_ln_reg_1013_pp0_iter1_reg}, {3'd7}};
assign or_ln_fu_723_p3 = {{tmp_1_reg_1026}, {1'd1}};
assign select_ln97_1_cast_fu_517_p1 = select_ln97_1_fu_506_p3;
assign select_ln97_1_fu_506_p3 = ((tmp_4_fu_486_p3[0:0] == 1'b1) ? add_ln97_reg_970 : v59_load_reg_965);
assign select_ln97_fu_494_p3 = ((tmp_4_fu_486_p3[0:0] == 1'b1) ? 7'd0 : v60_fu_118);
assign tmp_10_fu_765_p3 = {{lshr_ln_reg_1013}, {9'd448}};
assign tmp_1_fu_556_p4 = {{select_ln97_fu_494_p3[5:1]}};
assign tmp_2_fu_566_p3 = {{tmp_1_fu_556_p4}, {7'd64}};
assign tmp_4_fu_486_p3 = v60_fu_118[32'd6];
assign tmp_5_fu_616_p5 = {{{{tmp_3_reg_1036}, {1'd1}}, {trunc_ln114_reg_1044}}, {6'd0}};
assign tmp_7_fu_636_p3 = {{tmp_3_reg_1036}, {8'd192}};
assign tmp_8_fu_688_p5 = {{{{lshr_ln_reg_1013}, {1'd1}}, {tmp_6_reg_1058}}, {7'd64}};
assign tmp_9_fu_745_p5 = {{{{lshr_ln_reg_1013}, {2'd3}}, {trunc_ln114_reg_1044}}, {6'd0}};
assign tmp_fu_527_p3 = {{trunc_ln97_fu_502_p1}, {6'd0}};
assign tmp_s_fu_668_p5 = {{{{lshr_ln_reg_1013}, {1'd1}}, {trunc_ln128_reg_1052}}, {6'd0}};
assign trunc_ln114_fu_595_p1 = select_ln97_fu_494_p3[0:0];
assign trunc_ln128_fu_599_p1 = select_ln97_fu_494_p3[1:0];
assign trunc_ln97_fu_502_p1 = select_ln97_fu_494_p3[5:0];
assign v100_fu_928_p3 = ((cmp7_reg_991_pp0_iter1_reg[0:0] == 1'b1) ? v98_reg_1307 : v58_6_q0);
assign v101_fu_869_p1 = reg_415;
assign v106_fu_934_p3 = ((cmp7_reg_991_pp0_iter1_reg[0:0] == 1'b1) ? v104_reg_1312 : v58_7_q0);
assign v107_fu_874_p1 = reg_419;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_address0 = zext_ln97_fu_512_p1;
assign v115_ce0 = v115_ce0_local;
assign v57_address0 = v57_address0_local;
assign v57_address1 = v57_address1_local;
assign v57_ce0 = v57_ce0_local;
assign v57_ce1 = v57_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_d0 = reg_423;
assign v58_0_we0 = v58_0_we0_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_d0 = reg_431;
assign v58_1_we0 = v58_1_we0_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_d0 = reg_423;
assign v58_2_we0 = v58_2_we0_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_d0 = reg_431;
assign v58_3_we0 = v58_3_we0_local;
assign v58_4_address0 = v58_4_addr_reg_1145_pp0_iter3_reg;
assign v58_4_address1 = zext_ln98_1_fu_712_p1;
assign v58_4_ce0 = v58_4_ce0_local;
assign v58_4_ce1 = v58_4_ce1_local;
assign v58_4_d0 = reg_423;
assign v58_4_we0 = v58_4_we0_local;
assign v58_5_address0 = v58_5_addr_reg_1151_pp0_iter3_reg;
assign v58_5_address1 = zext_ln98_1_fu_712_p1;
assign v58_5_ce0 = v58_5_ce0_local;
assign v58_5_ce1 = v58_5_ce1_local;
assign v58_5_d0 = reg_431;
assign v58_5_we0 = v58_5_we0_local;
assign v58_6_address0 = v58_6_address0_local;
assign v58_6_ce0 = v58_6_ce0_local;
assign v58_6_d0 = reg_423;
assign v58_6_we0 = v58_6_we0_local;
assign v58_7_address0 = v58_7_address0_local;
assign v58_7_ce0 = v58_7_ce0_local;
assign v58_7_d0 = reg_431;
assign v58_7_we0 = v58_7_we0_local;
assign v63_fu_792_p3 = ((cmp7_reg_991[0:0] == 1'b1) ? v57_q1 : v58_0_q0);
assign v64_fu_658_p1 = reg_415;
assign v65_fu_653_p1 = v115_load_reg_1064;
assign v70_fu_834_p3 = ((cmp7_reg_991[0:0] == 1'b1) ? v57_q0 : v58_1_q0);
assign v71_fu_663_p1 = reg_419;
assign v76_fu_879_p3 = ((cmp7_reg_991_pp0_iter1_reg[0:0] == 1'b1) ? v57_q1 : v75_reg_1207);
assign v77_fu_735_p1 = reg_415;
assign v82_fu_885_p3 = ((cmp7_reg_991_pp0_iter1_reg[0:0] == 1'b1) ? v57_q0 : v81_reg_1212);
assign v83_fu_740_p1 = reg_419;
assign v88_fu_916_p3 = ((cmp7_reg_991_pp0_iter1_reg[0:0] == 1'b1) ? v57_q1 : v87_reg_1217);
assign v89_fu_824_p1 = reg_415;
assign v94_fu_922_p3 = ((cmp7_reg_991_pp0_iter1_reg[0:0] == 1'b1) ? v57_q0 : v93_reg_1222);
assign v95_fu_829_p1 = reg_419;
assign zext_ln102_fu_541_p1 = add_ln102_fu_535_p2;
assign zext_ln107_fu_730_p1 = or_ln_fu_723_p3;
assign zext_ln110_fu_580_p1 = add_ln110_fu_574_p2;
assign zext_ln114_fu_807_p1 = or_ln1_fu_799_p4;
assign zext_ln117_fu_631_p1 = add_ln117_fu_626_p2;
assign zext_ln121_fu_819_p1 = or_ln2_fu_812_p3;
assign zext_ln124_fu_648_p1 = add_ln124_fu_643_p2;
assign zext_ln128_fu_849_p1 = or_ln3_fu_841_p4;
assign zext_ln131_fu_683_p1 = add_ln131_fu_678_p2;
assign zext_ln135_fu_864_p1 = or_ln4_fu_854_p5;
assign zext_ln138_fu_703_p1 = add_ln138_fu_698_p2;
assign zext_ln142_fu_899_p1 = or_ln5_fu_891_p4;
assign zext_ln145_fu_760_p1 = add_ln145_fu_755_p2;
assign zext_ln149_fu_911_p1 = or_ln6_fu_904_p3;
assign zext_ln152_fu_777_p1 = add_ln152_fu_772_p2;
assign zext_ln97_fu_512_p1 = select_ln97_1_fu_506_p3;
assign zext_ln98_1_fu_712_p1 = lshr_ln_reg_1013;
assign zext_ln98_fu_708_p1 = select_ln97_reg_975;
always @ (posedge ap_clk) begin
    select_ln97_1_cast_reg_981[11:7] <= 5'b00000;
end
endmodule 