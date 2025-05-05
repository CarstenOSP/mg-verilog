module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_address0,v115_ce0,v115_q0,v57_0_address0,v57_0_ce0,v57_0_q0,v57_1_address0,v57_1_ce0,v57_1_q0,v57_2_address0,v57_2_ce0,v57_2_q0,v57_3_address0,v57_3_ce0,v57_3_q0,v57_4_address0,v57_4_ce0,v57_4_q0,v57_5_address0,v57_5_ce0,v57_5_q0,v57_6_address0,v57_6_ce0,v57_6_q0,v57_7_address0,v57_7_ce0,v57_7_q0,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,grp_fu_124_p_din0,grp_fu_124_p_din1,grp_fu_124_p_opcode,grp_fu_124_p_dout0,grp_fu_124_p_ce,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_dout0,grp_fu_128_p_ce); 
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
output  [2:0] v57_0_address0;
output   v57_0_ce0;
input  [31:0] v57_0_q0;
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
output  [31:0] grp_fu_124_p_din0;
output  [31:0] grp_fu_124_p_din1;
output  [1:0] grp_fu_124_p_opcode;
input  [31:0] grp_fu_124_p_dout0;
output   grp_fu_124_p_ce;
output  [31:0] grp_fu_128_p_din0;
output  [31:0] grp_fu_128_p_din1;
input  [31:0] grp_fu_128_p_dout0;
output   grp_fu_128_p_ce;
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
reg   [0:0] icmp_ln97_reg_901;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_410;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_414;
reg   [31:0] reg_418;
wire   [31:0] grp_fu_398_p2;
reg   [31:0] reg_423;
wire   [0:0] icmp_ln97_fu_446_p2;
reg   [6:0] v59_load_reg_905;
wire   [6:0] add_ln97_fu_461_p2;
reg   [6:0] add_ln97_reg_910;
wire   [6:0] select_ln97_fu_483_p3;
reg   [6:0] select_ln97_reg_915;
wire   [11:0] select_ln97_1_cast_fu_506_p1;
reg   [11:0] select_ln97_1_cast_reg_920;
wire   [0:0] cmp7_fu_510_p2;
reg   [0:0] cmp7_reg_930;
reg   [0:0] cmp7_reg_930_pp0_iter1_reg;
wire   [4:0] lshr_ln_fu_535_p4;
reg   [4:0] lshr_ln_reg_952;
reg   [2:0] lshr_ln98_1_reg_957;
reg   [3:0] tmp_3_reg_973;
wire   [0:0] trunc_ln114_fu_584_p1;
reg   [0:0] trunc_ln114_reg_980;
wire   [1:0] trunc_ln128_fu_588_p1;
reg   [1:0] trunc_ln128_reg_986;
reg   [0:0] tmp_4_reg_991;
reg   [31:0] v115_load_reg_997;
wire   [31:0] v65_fu_642_p1;
reg   [31:0] v65_reg_1012;
wire   [31:0] v64_fu_647_p1;
wire   [31:0] v71_fu_652_p1;
wire   [63:0] zext_ln98_1_fu_702_p1;
reg   [63:0] zext_ln98_1_reg_1038;
reg   [4:0] v58_0_addr_reg_1049;
reg   [4:0] v58_0_addr_reg_1049_pp0_iter2_reg;
reg   [4:0] v58_0_addr_reg_1049_pp0_iter3_reg;
reg   [4:0] v58_1_addr_reg_1059;
reg   [4:0] v58_1_addr_reg_1059_pp0_iter2_reg;
reg   [4:0] v58_1_addr_reg_1059_pp0_iter3_reg;
reg   [4:0] v58_0_addr_1_reg_1069;
reg   [4:0] v58_0_addr_1_reg_1069_pp0_iter2_reg;
reg   [4:0] v58_0_addr_1_reg_1069_pp0_iter3_reg;
wire   [31:0] v77_fu_724_p1;
reg   [4:0] v58_1_addr_1_reg_1085;
reg   [4:0] v58_1_addr_1_reg_1085_pp0_iter2_reg;
reg   [4:0] v58_1_addr_1_reg_1085_pp0_iter3_reg;
wire   [31:0] v83_fu_729_p1;
wire   [31:0] v63_fu_781_p3;
reg   [31:0] v63_reg_1116;
reg   [31:0] v86_reg_1121;
reg   [4:0] v58_0_addr_2_reg_1126;
reg   [4:0] v58_0_addr_2_reg_1126_pp0_iter2_reg;
reg   [4:0] v58_0_addr_2_reg_1126_pp0_iter3_reg;
reg   [4:0] v58_0_addr_2_reg_1126_pp0_iter4_reg;
wire   [31:0] v89_fu_802_p1;
reg   [31:0] v92_reg_1137;
reg   [4:0] v58_1_addr_2_reg_1142;
reg   [4:0] v58_1_addr_2_reg_1142_pp0_iter2_reg;
reg   [4:0] v58_1_addr_2_reg_1142_pp0_iter3_reg;
reg   [4:0] v58_1_addr_2_reg_1142_pp0_iter4_reg;
wire   [31:0] v95_fu_807_p1;
reg   [4:0] v58_0_addr_3_reg_1153;
reg   [4:0] v58_0_addr_3_reg_1153_pp0_iter2_reg;
reg   [4:0] v58_0_addr_3_reg_1153_pp0_iter3_reg;
reg   [4:0] v58_0_addr_3_reg_1153_pp0_iter4_reg;
reg   [4:0] v58_1_addr_3_reg_1158;
reg   [4:0] v58_1_addr_3_reg_1158_pp0_iter2_reg;
reg   [4:0] v58_1_addr_3_reg_1158_pp0_iter3_reg;
reg   [4:0] v58_1_addr_3_reg_1158_pp0_iter4_reg;
wire   [31:0] v70_fu_825_p3;
reg   [31:0] v70_reg_1163;
wire   [31:0] v76_fu_832_p3;
reg   [31:0] v76_reg_1168;
wire   [31:0] v82_fu_839_p3;
reg   [31:0] v82_reg_1173;
reg   [31:0] v66_reg_1178;
wire   [31:0] grp_fu_406_p2;
reg   [31:0] v72_reg_1183;
wire   [31:0] v101_fu_846_p1;
wire   [31:0] v107_fu_851_p1;
wire   [31:0] v88_fu_856_p3;
reg   [31:0] v88_reg_1198;
wire   [31:0] v94_fu_862_p3;
reg   [31:0] v94_reg_1203;
reg   [31:0] v99_reg_1208;
reg   [31:0] v105_reg_1213;
reg   [31:0] v78_reg_1218;
reg   [31:0] v84_reg_1223;
reg   [31:0] v90_reg_1228;
reg   [31:0] v96_reg_1233;
reg   [31:0] v102_reg_1248;
reg   [31:0] v108_reg_1253;
wire   [31:0] v100_fu_868_p3;
reg   [31:0] v100_reg_1258;
wire   [31:0] v106_fu_874_p3;
reg   [31:0] v106_reg_1263;
reg   [31:0] v91_reg_1268;
reg   [31:0] v97_reg_1273;
reg   [31:0] v103_reg_1278;
reg   [31:0] v109_reg_1283;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln97_fu_501_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln102_fu_530_p1;
wire   [63:0] zext_ln110_fu_569_p1;
wire   [63:0] zext_ln117_fu_620_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_637_p1;
wire   [63:0] zext_ln131_fu_672_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_692_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln98_fu_697_p1;
wire   [63:0] zext_ln114_fu_718_p1;
wire   [63:0] zext_ln145_fu_749_p1;
wire   [63:0] zext_ln152_fu_766_p1;
wire   [63:0] zext_ln128_fu_796_p1;
wire   [63:0] zext_ln142_fu_819_p1;
reg   [6:0] v60_fu_110;
wire   [6:0] add_ln98_fu_771_p2;
wire    ap_loop_init;
reg   [6:0] v59_fu_114;
wire   [6:0] select_ln97_1_fu_495_p3;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_118;
wire   [9:0] add_ln97_1_fu_452_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v115_ce0_local;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
reg    v57_0_ce0_local;
reg    v58_0_ce1_local;
reg   [4:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [4:0] v58_0_address0_local;
reg    v58_0_we1_local;
reg    v58_0_we0_local;
reg   [31:0] v58_0_d0_local;
reg    v57_1_ce0_local;
reg    v57_2_ce0_local;
reg    v57_3_ce0_local;
reg    v57_4_ce0_local;
reg    v57_5_ce0_local;
reg    v58_1_ce1_local;
reg   [4:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [4:0] v58_1_address0_local;
reg    v58_1_we1_local;
reg    v58_1_we0_local;
reg   [31:0] v58_1_d0_local;
reg    v57_6_ce0_local;
reg    v57_7_ce0_local;
reg   [31:0] grp_fu_394_p0;
reg   [31:0] grp_fu_394_p1;
reg   [31:0] grp_fu_398_p0;
reg   [31:0] grp_fu_398_p1;
reg   [31:0] grp_fu_402_p0;
reg   [31:0] grp_fu_402_p1;
reg   [31:0] grp_fu_406_p0;
reg   [31:0] grp_fu_406_p1;
wire   [0:0] tmp_1_fu_475_p3;
wire   [5:0] trunc_ln97_fu_491_p1;
wire   [11:0] tmp_fu_516_p3;
wire   [11:0] add_ln102_fu_524_p2;
wire   [11:0] tmp_2_fu_555_p3;
wire   [11:0] add_ln110_fu_563_p2;
wire   [11:0] tmp_5_fu_605_p5;
wire   [11:0] add_ln117_fu_615_p2;
wire   [11:0] tmp_8_fu_625_p3;
wire   [11:0] add_ln124_fu_632_p2;
wire   [11:0] tmp_s_fu_657_p5;
wire   [11:0] add_ln131_fu_667_p2;
wire   [11:0] tmp_6_fu_677_p5;
wire   [11:0] add_ln138_fu_687_p2;
wire   [4:0] or_ln114_1_fu_711_p3;
wire   [11:0] tmp_7_fu_734_p5;
wire   [11:0] add_ln145_fu_744_p2;
wire   [11:0] tmp_9_fu_754_p3;
wire   [11:0] add_ln152_fu_761_p2;
wire   [4:0] or_ln128_1_fu_788_p4;
wire   [4:0] or_ln142_1_fu_812_p3;
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
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_398_p0),.din1(grp_fu_398_p1),.ce(1'b1),.dout(grp_fu_398_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_406_p0),.din1(grp_fu_406_p1),.ce(1'b1),.dout(grp_fu_406_p2));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_446_p2 == 1'd0))) begin
            indvar_flatten_fu_118 <= add_ln97_1_fu_452_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_118 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v59_fu_114 <= 7'd0;
    end else if (((icmp_ln97_reg_901 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v59_fu_114 <= select_ln97_1_fu_495_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v60_fu_110 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v60_fu_110 <= add_ln98_fu_771_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln97_reg_910 <= add_ln97_fu_461_p2;
        icmp_ln97_reg_901 <= icmp_ln97_fu_446_p2;
        v58_0_addr_1_reg_1069[4 : 1] <= zext_ln114_fu_718_p1[4 : 1];
        v58_0_addr_1_reg_1069_pp0_iter2_reg[4 : 1] <= v58_0_addr_1_reg_1069[4 : 1];
        v58_0_addr_1_reg_1069_pp0_iter3_reg[4 : 1] <= v58_0_addr_1_reg_1069_pp0_iter2_reg[4 : 1];
        v58_0_addr_reg_1049 <= zext_ln98_fu_697_p1;
        v58_0_addr_reg_1049_pp0_iter2_reg <= v58_0_addr_reg_1049;
        v58_0_addr_reg_1049_pp0_iter3_reg <= v58_0_addr_reg_1049_pp0_iter2_reg;
        v58_1_addr_1_reg_1085[4 : 1] <= zext_ln114_fu_718_p1[4 : 1];
        v58_1_addr_1_reg_1085_pp0_iter2_reg[4 : 1] <= v58_1_addr_1_reg_1085[4 : 1];
        v58_1_addr_1_reg_1085_pp0_iter3_reg[4 : 1] <= v58_1_addr_1_reg_1085_pp0_iter2_reg[4 : 1];
        v58_1_addr_reg_1059 <= zext_ln98_fu_697_p1;
        v58_1_addr_reg_1059_pp0_iter2_reg <= v58_1_addr_reg_1059;
        v58_1_addr_reg_1059_pp0_iter3_reg <= v58_1_addr_reg_1059_pp0_iter2_reg;
        v59_load_reg_905 <= ap_sig_allocacmp_v59_load;
        zext_ln98_1_reg_1038[2 : 0] <= zext_ln98_1_fu_702_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        v65_reg_1012 <= v65_fu_642_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_930 <= cmp7_fu_510_p2;
        cmp7_reg_930_pp0_iter1_reg <= cmp7_reg_930;
        lshr_ln98_1_reg_957 <= {{select_ln97_fu_483_p3[5:3]}};
        lshr_ln_reg_952 <= {{select_ln97_fu_483_p3[5:1]}};
        select_ln97_1_cast_reg_920[6 : 0] <= select_ln97_1_cast_fu_506_p1[6 : 0];
        select_ln97_reg_915 <= select_ln97_fu_483_p3;
        tmp_3_reg_973 <= {{select_ln97_fu_483_p3[5:2]}};
        tmp_4_reg_991 <= select_ln97_fu_483_p3[32'd1];
        trunc_ln114_reg_980 <= trunc_ln114_fu_584_p1;
        trunc_ln128_reg_986 <= trunc_ln128_fu_588_p1;
        v100_reg_1258 <= v100_fu_868_p3;
        v106_reg_1263 <= v106_fu_874_p3;
        v58_0_addr_2_reg_1126[0] <= zext_ln128_fu_796_p1[0];
v58_0_addr_2_reg_1126[4 : 2] <= zext_ln128_fu_796_p1[4 : 2];
        v58_0_addr_2_reg_1126_pp0_iter2_reg[0] <= v58_0_addr_2_reg_1126[0];
v58_0_addr_2_reg_1126_pp0_iter2_reg[4 : 2] <= v58_0_addr_2_reg_1126[4 : 2];
        v58_0_addr_2_reg_1126_pp0_iter3_reg[0] <= v58_0_addr_2_reg_1126_pp0_iter2_reg[0];
v58_0_addr_2_reg_1126_pp0_iter3_reg[4 : 2] <= v58_0_addr_2_reg_1126_pp0_iter2_reg[4 : 2];
        v58_0_addr_2_reg_1126_pp0_iter4_reg[0] <= v58_0_addr_2_reg_1126_pp0_iter3_reg[0];
v58_0_addr_2_reg_1126_pp0_iter4_reg[4 : 2] <= v58_0_addr_2_reg_1126_pp0_iter3_reg[4 : 2];
        v58_0_addr_3_reg_1153[4 : 2] <= zext_ln142_fu_819_p1[4 : 2];
        v58_0_addr_3_reg_1153_pp0_iter2_reg[4 : 2] <= v58_0_addr_3_reg_1153[4 : 2];
        v58_0_addr_3_reg_1153_pp0_iter3_reg[4 : 2] <= v58_0_addr_3_reg_1153_pp0_iter2_reg[4 : 2];
        v58_0_addr_3_reg_1153_pp0_iter4_reg[4 : 2] <= v58_0_addr_3_reg_1153_pp0_iter3_reg[4 : 2];
        v58_1_addr_2_reg_1142[0] <= zext_ln128_fu_796_p1[0];
v58_1_addr_2_reg_1142[4 : 2] <= zext_ln128_fu_796_p1[4 : 2];
        v58_1_addr_2_reg_1142_pp0_iter2_reg[0] <= v58_1_addr_2_reg_1142[0];
v58_1_addr_2_reg_1142_pp0_iter2_reg[4 : 2] <= v58_1_addr_2_reg_1142[4 : 2];
        v58_1_addr_2_reg_1142_pp0_iter3_reg[0] <= v58_1_addr_2_reg_1142_pp0_iter2_reg[0];
v58_1_addr_2_reg_1142_pp0_iter3_reg[4 : 2] <= v58_1_addr_2_reg_1142_pp0_iter2_reg[4 : 2];
        v58_1_addr_2_reg_1142_pp0_iter4_reg[0] <= v58_1_addr_2_reg_1142_pp0_iter3_reg[0];
v58_1_addr_2_reg_1142_pp0_iter4_reg[4 : 2] <= v58_1_addr_2_reg_1142_pp0_iter3_reg[4 : 2];
        v58_1_addr_3_reg_1158[4 : 2] <= zext_ln142_fu_819_p1[4 : 2];
        v58_1_addr_3_reg_1158_pp0_iter2_reg[4 : 2] <= v58_1_addr_3_reg_1158[4 : 2];
        v58_1_addr_3_reg_1158_pp0_iter3_reg[4 : 2] <= v58_1_addr_3_reg_1158_pp0_iter2_reg[4 : 2];
        v58_1_addr_3_reg_1158_pp0_iter4_reg[4 : 2] <= v58_1_addr_3_reg_1158_pp0_iter3_reg[4 : 2];
        v63_reg_1116 <= v63_fu_781_p3;
        v70_reg_1163 <= v70_fu_825_p3;
        v76_reg_1168 <= v76_fu_832_p3;
        v82_reg_1173 <= v82_fu_839_p3;
        v86_reg_1121 <= v57_4_q0;
        v92_reg_1137 <= v57_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_410 <= v114_q1;
        reg_414 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_418 <= grp_fu_124_p_dout0;
        reg_423 <= grp_fu_398_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1248 <= grp_fu_128_p_dout0;
        v108_reg_1253 <= grp_fu_406_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v103_reg_1278 <= grp_fu_124_p_dout0;
        v109_reg_1283 <= grp_fu_398_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v105_reg_1213 <= v58_1_q0;
        v66_reg_1178 <= grp_fu_128_p_dout0;
        v72_reg_1183 <= grp_fu_406_p2;
        v99_reg_1208 <= v58_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v115_load_reg_997 <= v115_q0;
        v88_reg_1198 <= v88_fu_856_p3;
        v94_reg_1203 <= v94_fu_862_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1218 <= grp_fu_128_p_dout0;
        v84_reg_1223 <= grp_fu_406_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1228 <= grp_fu_128_p_dout0;
        v96_reg_1233 <= grp_fu_406_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v91_reg_1268 <= grp_fu_124_p_dout0;
        v97_reg_1273 <= grp_fu_398_p2;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_901 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        grp_fu_394_p0 = v100_reg_1258;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_394_p0 = v88_reg_1198;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_394_p0 = v76_reg_1168;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_394_p0 = v63_reg_1116;
    end else begin
        grp_fu_394_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_394_p1 = v102_reg_1248;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_394_p1 = v90_reg_1228;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_394_p1 = v78_reg_1218;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_394_p1 = v66_reg_1178;
    end else begin
        grp_fu_394_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_398_p0 = v106_reg_1263;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_398_p0 = v94_reg_1203;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_398_p0 = v82_reg_1173;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_398_p0 = v70_reg_1163;
    end else begin
        grp_fu_398_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_398_p1 = v108_reg_1253;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_398_p1 = v96_reg_1233;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_398_p1 = v84_reg_1223;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_398_p1 = v72_reg_1183;
    end else begin
        grp_fu_398_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_402_p0 = v101_fu_846_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_402_p0 = v89_fu_802_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_402_p0 = v77_fu_724_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_402_p0 = v64_fu_647_p1;
    end else begin
        grp_fu_402_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_402_p1 = v65_reg_1012;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_402_p1 = v65_fu_642_p1;
    end else begin
        grp_fu_402_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_406_p0 = v107_fu_851_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_406_p0 = v95_fu_807_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_406_p0 = v83_fu_729_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_406_p0 = v71_fu_652_p1;
    end else begin
        grp_fu_406_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_406_p1 = v65_reg_1012;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_406_p1 = v65_fu_642_p1;
    end else begin
        grp_fu_406_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address0_local = zext_ln152_fu_766_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address0_local = zext_ln138_fu_692_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address0_local = zext_ln124_fu_637_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address0_local = zext_ln110_fu_569_p1;
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address1_local = zext_ln145_fu_749_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address1_local = zext_ln131_fu_672_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address1_local = zext_ln117_fu_620_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address1_local = zext_ln102_fu_530_p1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_6_ce0_local = 1'b1;
    end else begin
        v57_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_7_ce0_local = 1'b1;
    end else begin
        v57_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address0_local = v58_0_addr_3_reg_1153_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_2_reg_1126_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = zext_ln142_fu_819_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln114_fu_718_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_1_reg_1069_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address1_local = v58_0_addr_reg_1049_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address1_local = zext_ln128_fu_796_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_fu_697_p1;
    end else begin
        v58_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_ce1_local = 1'b1;
    end else begin
        v58_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v58_0_d0_local = v103_reg_1278;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v58_0_d0_local = v91_reg_1268;
        end else begin
            v58_0_d0_local = 'bx;
        end
    end else begin
        v58_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        v58_1_address0_local = v58_1_addr_3_reg_1158_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_2_reg_1142_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = zext_ln142_fu_819_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln114_fu_718_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_1_reg_1085_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address1_local = v58_1_addr_reg_1059_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address1_local = zext_ln128_fu_796_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_fu_697_p1;
    end else begin
        v58_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_ce1_local = 1'b1;
    end else begin
        v58_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v58_1_d0_local = v109_reg_1283;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v58_1_d0_local = v97_reg_1273;
        end else begin
            v58_1_d0_local = 'bx;
        end
    end else begin
        v58_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
assign add_ln102_fu_524_p2 = (tmp_fu_516_p3 + select_ln97_1_cast_fu_506_p1);
assign add_ln110_fu_563_p2 = (tmp_2_fu_555_p3 + select_ln97_1_cast_fu_506_p1);
assign add_ln117_fu_615_p2 = (tmp_5_fu_605_p5 + select_ln97_1_cast_reg_920);
assign add_ln124_fu_632_p2 = (tmp_8_fu_625_p3 + select_ln97_1_cast_reg_920);
assign add_ln131_fu_667_p2 = (tmp_s_fu_657_p5 + select_ln97_1_cast_reg_920);
assign add_ln138_fu_687_p2 = (tmp_6_fu_677_p5 + select_ln97_1_cast_reg_920);
assign add_ln145_fu_744_p2 = (tmp_7_fu_734_p5 + select_ln97_1_cast_reg_920);
assign add_ln152_fu_761_p2 = (tmp_9_fu_754_p3 + select_ln97_1_cast_reg_920);
assign add_ln97_1_fu_452_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_461_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_771_p2 = (select_ln97_reg_915 + 7'd8);
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
assign cmp7_fu_510_p2 = ((select_ln97_1_fu_495_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_124_p_ce = 1'b1;
assign grp_fu_124_p_din0 = grp_fu_394_p0;
assign grp_fu_124_p_din1 = grp_fu_394_p1;
assign grp_fu_124_p_opcode = 2'd0;
assign grp_fu_128_p_ce = 1'b1;
assign grp_fu_128_p_din0 = grp_fu_402_p0;
assign grp_fu_128_p_din1 = grp_fu_402_p1;
assign icmp_ln97_fu_446_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln_fu_535_p4 = {{select_ln97_fu_483_p3[5:1]}};
assign or_ln114_1_fu_711_p3 = {{tmp_3_reg_973}, {1'd1}};
assign or_ln128_1_fu_788_p4 = {{{lshr_ln98_1_reg_957}, {1'd1}}, {tmp_4_reg_991}};
assign or_ln142_1_fu_812_p3 = {{lshr_ln98_1_reg_957}, {2'd3}};
assign select_ln97_1_cast_fu_506_p1 = select_ln97_1_fu_495_p3;
assign select_ln97_1_fu_495_p3 = ((tmp_1_fu_475_p3[0:0] == 1'b1) ? add_ln97_reg_910 : v59_load_reg_905);
assign select_ln97_fu_483_p3 = ((tmp_1_fu_475_p3[0:0] == 1'b1) ? 7'd0 : v60_fu_110);
assign tmp_1_fu_475_p3 = v60_fu_110[32'd6];
assign tmp_2_fu_555_p3 = {{lshr_ln_fu_535_p4}, {7'd64}};
assign tmp_5_fu_605_p5 = {{{{tmp_3_reg_973}, {1'd1}}, {trunc_ln114_reg_980}}, {6'd0}};
assign tmp_6_fu_677_p5 = {{{{lshr_ln98_1_reg_957}, {1'd1}}, {tmp_4_reg_991}}, {7'd64}};
assign tmp_7_fu_734_p5 = {{{{lshr_ln98_1_reg_957}, {2'd3}}, {trunc_ln114_reg_980}}, {6'd0}};
assign tmp_8_fu_625_p3 = {{tmp_3_reg_973}, {8'd192}};
assign tmp_9_fu_754_p3 = {{lshr_ln98_1_reg_957}, {9'd448}};
assign tmp_fu_516_p3 = {{trunc_ln97_fu_491_p1}, {6'd0}};
assign tmp_s_fu_657_p5 = {{{{lshr_ln98_1_reg_957}, {1'd1}}, {trunc_ln128_reg_986}}, {6'd0}};
assign trunc_ln114_fu_584_p1 = select_ln97_fu_483_p3[0:0];
assign trunc_ln128_fu_588_p1 = select_ln97_fu_483_p3[1:0];
assign trunc_ln97_fu_491_p1 = select_ln97_fu_483_p3[5:0];
assign v100_fu_868_p3 = ((cmp7_reg_930_pp0_iter1_reg[0:0] == 1'b1) ? v57_6_q0 : v99_reg_1208);
assign v101_fu_846_p1 = reg_410;
assign v106_fu_874_p3 = ((cmp7_reg_930_pp0_iter1_reg[0:0] == 1'b1) ? v57_7_q0 : v105_reg_1213);
assign v107_fu_851_p1 = reg_414;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_address0 = zext_ln97_fu_501_p1;
assign v115_ce0 = v115_ce0_local;
assign v57_0_address0 = zext_ln98_1_fu_702_p1;
assign v57_0_ce0 = v57_0_ce0_local;
assign v57_1_address0 = zext_ln98_1_fu_702_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_2_address0 = zext_ln98_1_fu_702_p1;
assign v57_2_ce0 = v57_2_ce0_local;
assign v57_3_address0 = zext_ln98_1_fu_702_p1;
assign v57_3_ce0 = v57_3_ce0_local;
assign v57_4_address0 = zext_ln98_1_fu_702_p1;
assign v57_4_ce0 = v57_4_ce0_local;
assign v57_5_address0 = zext_ln98_1_fu_702_p1;
assign v57_5_ce0 = v57_5_ce0_local;
assign v57_6_address0 = zext_ln98_1_reg_1038;
assign v57_6_ce0 = v57_6_ce0_local;
assign v57_7_address0 = zext_ln98_1_reg_1038;
assign v57_7_ce0 = v57_7_ce0_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = v58_0_d0_local;
assign v58_0_d1 = reg_418;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = v58_1_d0_local;
assign v58_1_d1 = reg_423;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v63_fu_781_p3 = ((cmp7_reg_930[0:0] == 1'b1) ? v57_0_q0 : v58_0_q1);
assign v64_fu_647_p1 = reg_410;
assign v65_fu_642_p1 = v115_load_reg_997;
assign v70_fu_825_p3 = ((cmp7_reg_930[0:0] == 1'b1) ? v57_1_q0 : v58_1_q1);
assign v71_fu_652_p1 = reg_414;
assign v76_fu_832_p3 = ((cmp7_reg_930[0:0] == 1'b1) ? v57_2_q0 : v58_0_q0);
assign v77_fu_724_p1 = reg_410;
assign v82_fu_839_p3 = ((cmp7_reg_930[0:0] == 1'b1) ? v57_3_q0 : v58_1_q0);
assign v83_fu_729_p1 = reg_414;
assign v88_fu_856_p3 = ((cmp7_reg_930_pp0_iter1_reg[0:0] == 1'b1) ? v86_reg_1121 : v58_0_q1);
assign v89_fu_802_p1 = reg_410;
assign v94_fu_862_p3 = ((cmp7_reg_930_pp0_iter1_reg[0:0] == 1'b1) ? v92_reg_1137 : v58_1_q1);
assign v95_fu_807_p1 = reg_414;
assign zext_ln102_fu_530_p1 = add_ln102_fu_524_p2;
assign zext_ln110_fu_569_p1 = add_ln110_fu_563_p2;
assign zext_ln114_fu_718_p1 = or_ln114_1_fu_711_p3;
assign zext_ln117_fu_620_p1 = add_ln117_fu_615_p2;
assign zext_ln124_fu_637_p1 = add_ln124_fu_632_p2;
assign zext_ln128_fu_796_p1 = or_ln128_1_fu_788_p4;
assign zext_ln131_fu_672_p1 = add_ln131_fu_667_p2;
assign zext_ln138_fu_692_p1 = add_ln138_fu_687_p2;
assign zext_ln142_fu_819_p1 = or_ln142_1_fu_812_p3;
assign zext_ln145_fu_749_p1 = add_ln145_fu_744_p2;
assign zext_ln152_fu_766_p1 = add_ln152_fu_761_p2;
assign zext_ln97_fu_501_p1 = select_ln97_1_fu_495_p3;
assign zext_ln98_1_fu_702_p1 = lshr_ln98_1_reg_957;
assign zext_ln98_fu_697_p1 = lshr_ln_reg_952;
always @ (posedge ap_clk) begin
    select_ln97_1_cast_reg_920[11:7] <= 5'b00000;
    zext_ln98_1_reg_1038[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    v58_0_addr_1_reg_1069[0] <= 1'b1;
    v58_0_addr_1_reg_1069_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_1069_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1085[0] <= 1'b1;
    v58_1_addr_1_reg_1085_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1085_pp0_iter3_reg[0] <= 1'b1;
    v58_0_addr_2_reg_1126[1] <= 1'b1;
    v58_0_addr_2_reg_1126_pp0_iter2_reg[1] <= 1'b1;
    v58_0_addr_2_reg_1126_pp0_iter3_reg[1] <= 1'b1;
    v58_0_addr_2_reg_1126_pp0_iter4_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1142[1] <= 1'b1;
    v58_1_addr_2_reg_1142_pp0_iter2_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1142_pp0_iter3_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1142_pp0_iter4_reg[1] <= 1'b1;
    v58_0_addr_3_reg_1153[1:0] <= 2'b11;
    v58_0_addr_3_reg_1153_pp0_iter2_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1153_pp0_iter3_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1153_pp0_iter4_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1158[1:0] <= 2'b11;
    v58_1_addr_3_reg_1158_pp0_iter2_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1158_pp0_iter3_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1158_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 