module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_address0,v115_ce0,v115_q0,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_2_address1,v58_2_ce1,v58_2_we1,v58_2_d1,v58_2_q1,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_3_address1,v58_3_ce1,v58_3_we1,v58_3_d1,v58_3_q1,grp_fu_475_p_din0,grp_fu_475_p_din1,grp_fu_475_p_opcode,grp_fu_475_p_dout0,grp_fu_475_p_ce,grp_fu_479_p_din0,grp_fu_479_p_din1,grp_fu_479_p_dout0,grp_fu_479_p_ce); 
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
output  [31:0] grp_fu_475_p_din0;
output  [31:0] grp_fu_475_p_din1;
output  [1:0] grp_fu_475_p_opcode;
input  [31:0] grp_fu_475_p_dout0;
output   grp_fu_475_p_ce;
output  [31:0] grp_fu_479_p_din0;
output  [31:0] grp_fu_479_p_din1;
input  [31:0] grp_fu_479_p_dout0;
output   grp_fu_479_p_ce;
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
reg   [0:0] icmp_ln97_reg_952;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_397;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_401;
reg   [31:0] reg_405;
wire   [31:0] grp_fu_385_p2;
reg   [31:0] reg_412;
wire   [0:0] icmp_ln97_fu_437_p2;
reg   [0:0] icmp_ln97_reg_952_pp0_iter1_reg;
reg   [0:0] icmp_ln97_reg_952_pp0_iter2_reg;
reg   [0:0] icmp_ln97_reg_952_pp0_iter3_reg;
reg   [6:0] v59_load_reg_956;
wire   [6:0] add_ln97_fu_452_p2;
reg   [6:0] add_ln97_reg_961;
wire   [6:0] select_ln97_fu_474_p3;
reg   [6:0] select_ln97_reg_966;
wire   [11:0] select_ln97_1_cast_fu_497_p1;
reg   [11:0] select_ln97_1_cast_reg_972;
wire   [0:0] cmp7_fu_501_p2;
reg   [0:0] cmp7_reg_982;
reg   [0:0] cmp7_reg_982_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_1004;
wire   [4:0] tmp_1_fu_536_p4;
reg   [4:0] tmp_1_reg_1013;
wire   [0:0] trunc_ln114_fu_565_p1;
reg   [0:0] trunc_ln114_reg_1023;
reg   [0:0] trunc_ln114_reg_1023_pp0_iter1_reg;
reg   [2:0] tmp_8_reg_1031;
reg   [2:0] tmp_8_reg_1031_pp0_iter1_reg;
wire   [1:0] trunc_ln128_fu_579_p1;
reg   [1:0] trunc_ln128_reg_1044;
reg   [1:0] trunc_ln128_reg_1044_pp0_iter1_reg;
reg   [0:0] tmp_4_reg_1050;
reg   [0:0] tmp_4_reg_1050_pp0_iter1_reg;
reg   [31:0] v115_load_reg_1056;
wire   [31:0] v65_fu_633_p1;
reg   [31:0] v65_reg_1071;
wire   [31:0] v64_fu_638_p1;
wire   [31:0] v71_fu_643_p1;
reg   [3:0] v58_0_addr_reg_1102;
reg   [3:0] v58_0_addr_reg_1102_pp0_iter2_reg;
reg   [3:0] v58_0_addr_reg_1102_pp0_iter3_reg;
reg   [3:0] v58_1_addr_reg_1112;
reg   [3:0] v58_1_addr_reg_1112_pp0_iter2_reg;
reg   [3:0] v58_1_addr_reg_1112_pp0_iter3_reg;
reg   [3:0] v58_2_addr_reg_1117;
reg   [3:0] v58_2_addr_reg_1117_pp0_iter2_reg;
reg   [3:0] v58_2_addr_reg_1117_pp0_iter3_reg;
wire   [31:0] v77_fu_711_p1;
reg   [3:0] v58_3_addr_reg_1127;
reg   [3:0] v58_3_addr_reg_1127_pp0_iter2_reg;
reg   [3:0] v58_3_addr_reg_1127_pp0_iter3_reg;
wire   [31:0] v83_fu_716_p1;
reg   [3:0] v58_0_addr_1_reg_1137;
reg   [3:0] v58_0_addr_1_reg_1137_pp0_iter2_reg;
reg   [3:0] v58_0_addr_1_reg_1137_pp0_iter3_reg;
reg   [3:0] v58_0_addr_1_reg_1137_pp0_iter4_reg;
reg   [3:0] v58_1_addr_1_reg_1142;
reg   [3:0] v58_1_addr_1_reg_1142_pp0_iter2_reg;
reg   [3:0] v58_1_addr_1_reg_1142_pp0_iter3_reg;
reg   [3:0] v58_1_addr_1_reg_1142_pp0_iter4_reg;
reg   [3:0] v58_2_addr_1_reg_1152;
reg   [3:0] v58_2_addr_1_reg_1152_pp0_iter2_reg;
reg   [3:0] v58_2_addr_1_reg_1152_pp0_iter3_reg;
reg   [3:0] v58_2_addr_1_reg_1152_pp0_iter4_reg;
reg   [3:0] v58_3_addr_1_reg_1162;
reg   [3:0] v58_3_addr_1_reg_1162_pp0_iter2_reg;
reg   [3:0] v58_3_addr_1_reg_1162_pp0_iter3_reg;
reg   [3:0] v58_3_addr_1_reg_1162_pp0_iter4_reg;
wire   [31:0] v63_fu_783_p3;
reg   [31:0] v63_reg_1167;
wire   [31:0] v89_fu_815_p1;
wire   [31:0] v95_fu_820_p1;
wire   [31:0] v70_fu_825_p3;
reg   [31:0] v70_reg_1192;
reg   [31:0] v75_reg_1197;
reg   [31:0] v81_reg_1202;
reg   [31:0] v87_reg_1207;
reg   [31:0] v93_reg_1212;
reg   [31:0] v66_reg_1217;
wire   [31:0] grp_fu_393_p2;
reg   [31:0] v72_reg_1222;
wire   [31:0] v101_fu_860_p1;
wire   [31:0] v107_fu_865_p1;
wire   [31:0] v76_fu_870_p3;
reg   [31:0] v76_reg_1247;
wire   [31:0] v82_fu_876_p3;
reg   [31:0] v82_reg_1252;
reg   [31:0] v78_reg_1257;
reg   [31:0] v84_reg_1262;
wire   [31:0] v88_fu_907_p3;
reg   [31:0] v88_reg_1277;
wire   [31:0] v94_fu_913_p3;
reg   [31:0] v94_reg_1282;
reg   [31:0] v90_reg_1287;
reg   [31:0] v96_reg_1292;
reg   [31:0] v98_reg_1297;
reg   [31:0] v104_reg_1302;
reg   [31:0] v102_reg_1307;
reg   [31:0] v108_reg_1312;
wire   [31:0] v100_fu_919_p3;
reg   [31:0] v100_reg_1317;
wire   [31:0] v106_fu_925_p3;
reg   [31:0] v106_reg_1322;
reg   [31:0] v103_reg_1327;
reg   [31:0] v109_reg_1332;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln97_fu_492_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln102_fu_521_p1;
wire   [63:0] zext_ln110_fu_560_p1;
wire   [63:0] zext_ln117_fu_611_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_628_p1;
wire   [63:0] zext_ln131_fu_663_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_683_p1;
wire   [63:0] zext_ln98_fu_688_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln98_1_fu_692_p1;
wire   [63:0] zext_ln107_fu_706_p1;
wire   [63:0] zext_ln128_1_fu_728_p1;
wire   [63:0] zext_ln145_fu_751_p1;
wire   [63:0] zext_ln152_fu_768_p1;
wire   [63:0] zext_ln114_fu_798_p1;
wire   [63:0] zext_ln121_fu_810_p1;
wire   [63:0] zext_ln128_fu_840_p1;
wire   [63:0] zext_ln135_fu_855_p1;
wire   [63:0] zext_ln142_fu_890_p1;
wire   [63:0] zext_ln149_fu_902_p1;
reg   [6:0] v60_fu_112;
wire   [6:0] add_ln98_fu_773_p2;
wire    ap_loop_init;
reg   [6:0] v59_fu_116;
wire   [6:0] select_ln97_1_fu_486_p3;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_120;
wire   [9:0] add_ln97_1_fu_443_p2;
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
reg    v58_0_ce1_local;
reg   [3:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [3:0] v58_0_address0_local;
reg    v58_0_we1_local;
reg    v58_0_we0_local;
reg    v58_1_ce1_local;
reg   [3:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [3:0] v58_1_address0_local;
reg    v58_1_we1_local;
reg    v58_1_we0_local;
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
reg   [31:0] grp_fu_381_p0;
reg   [31:0] grp_fu_381_p1;
reg   [31:0] grp_fu_385_p0;
reg   [31:0] grp_fu_385_p1;
reg   [31:0] grp_fu_389_p0;
reg   [31:0] grp_fu_389_p1;
reg   [31:0] grp_fu_393_p0;
reg   [31:0] grp_fu_393_p1;
wire   [0:0] tmp_3_fu_466_p3;
wire   [5:0] trunc_ln97_fu_482_p1;
wire   [11:0] tmp_fu_507_p3;
wire   [11:0] add_ln102_fu_515_p2;
wire   [11:0] tmp_2_fu_546_p3;
wire   [11:0] add_ln110_fu_554_p2;
wire   [11:0] tmp_5_fu_596_p5;
wire   [11:0] add_ln117_fu_606_p2;
wire   [11:0] tmp_7_fu_616_p3;
wire   [11:0] add_ln124_fu_623_p2;
wire   [11:0] tmp_s_fu_648_p5;
wire   [11:0] add_ln131_fu_658_p2;
wire   [11:0] tmp_6_fu_668_p5;
wire   [11:0] add_ln138_fu_678_p2;
wire   [5:0] or_ln_fu_699_p3;
wire   [3:0] or_ln128_1_fu_721_p3;
wire   [11:0] tmp_9_fu_736_p5;
wire   [11:0] add_ln145_fu_746_p2;
wire   [11:0] tmp_10_fu_756_p3;
wire   [11:0] add_ln152_fu_763_p2;
wire   [5:0] or_ln1_fu_790_p4;
wire   [5:0] or_ln2_fu_803_p3;
wire   [5:0] or_ln3_fu_832_p4;
wire   [5:0] or_ln4_fu_845_p5;
wire   [5:0] or_ln5_fu_882_p4;
wire   [5:0] or_ln6_fu_895_p3;
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
#0 v60_fu_112 = 7'd0;
#0 v59_fu_116 = 7'd0;
#0 indvar_flatten_fu_120 = 10'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_385_p0),.din1(grp_fu_385_p1),.ce(1'b1),.dout(grp_fu_385_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_393_p0),.din1(grp_fu_393_p1),.ce(1'b1),.dout(grp_fu_393_p2));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_437_p2 == 1'd0))) begin
            indvar_flatten_fu_120 <= add_ln97_1_fu_443_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_120 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v59_fu_116 <= 7'd0;
    end else if (((icmp_ln97_reg_952 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v59_fu_116 <= select_ln97_1_fu_486_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v60_fu_112 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v60_fu_112 <= add_ln98_fu_773_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln97_reg_961 <= add_ln97_fu_452_p2;
        icmp_ln97_reg_952 <= icmp_ln97_fu_437_p2;
        icmp_ln97_reg_952_pp0_iter1_reg <= icmp_ln97_reg_952;
        icmp_ln97_reg_952_pp0_iter2_reg <= icmp_ln97_reg_952_pp0_iter1_reg;
        icmp_ln97_reg_952_pp0_iter3_reg <= icmp_ln97_reg_952_pp0_iter2_reg;
        v58_0_addr_1_reg_1137[3 : 1] <= zext_ln128_1_fu_728_p1[3 : 1];
        v58_0_addr_1_reg_1137_pp0_iter2_reg[3 : 1] <= v58_0_addr_1_reg_1137[3 : 1];
        v58_0_addr_1_reg_1137_pp0_iter3_reg[3 : 1] <= v58_0_addr_1_reg_1137_pp0_iter2_reg[3 : 1];
        v58_0_addr_1_reg_1137_pp0_iter4_reg[3 : 1] <= v58_0_addr_1_reg_1137_pp0_iter3_reg[3 : 1];
        v58_0_addr_reg_1102 <= zext_ln98_1_fu_692_p1;
        v58_0_addr_reg_1102_pp0_iter2_reg <= v58_0_addr_reg_1102;
        v58_0_addr_reg_1102_pp0_iter3_reg <= v58_0_addr_reg_1102_pp0_iter2_reg;
        v58_1_addr_1_reg_1142[3 : 1] <= zext_ln128_1_fu_728_p1[3 : 1];
        v58_1_addr_1_reg_1142_pp0_iter2_reg[3 : 1] <= v58_1_addr_1_reg_1142[3 : 1];
        v58_1_addr_1_reg_1142_pp0_iter3_reg[3 : 1] <= v58_1_addr_1_reg_1142_pp0_iter2_reg[3 : 1];
        v58_1_addr_1_reg_1142_pp0_iter4_reg[3 : 1] <= v58_1_addr_1_reg_1142_pp0_iter3_reg[3 : 1];
        v58_1_addr_reg_1112 <= zext_ln98_1_fu_692_p1;
        v58_1_addr_reg_1112_pp0_iter2_reg <= v58_1_addr_reg_1112;
        v58_1_addr_reg_1112_pp0_iter3_reg <= v58_1_addr_reg_1112_pp0_iter2_reg;
        v58_2_addr_1_reg_1152[3 : 1] <= zext_ln128_1_fu_728_p1[3 : 1];
        v58_2_addr_1_reg_1152_pp0_iter2_reg[3 : 1] <= v58_2_addr_1_reg_1152[3 : 1];
        v58_2_addr_1_reg_1152_pp0_iter3_reg[3 : 1] <= v58_2_addr_1_reg_1152_pp0_iter2_reg[3 : 1];
        v58_2_addr_1_reg_1152_pp0_iter4_reg[3 : 1] <= v58_2_addr_1_reg_1152_pp0_iter3_reg[3 : 1];
        v58_2_addr_reg_1117 <= zext_ln98_1_fu_692_p1;
        v58_2_addr_reg_1117_pp0_iter2_reg <= v58_2_addr_reg_1117;
        v58_2_addr_reg_1117_pp0_iter3_reg <= v58_2_addr_reg_1117_pp0_iter2_reg;
        v58_3_addr_1_reg_1162[3 : 1] <= zext_ln128_1_fu_728_p1[3 : 1];
        v58_3_addr_1_reg_1162_pp0_iter2_reg[3 : 1] <= v58_3_addr_1_reg_1162[3 : 1];
        v58_3_addr_1_reg_1162_pp0_iter3_reg[3 : 1] <= v58_3_addr_1_reg_1162_pp0_iter2_reg[3 : 1];
        v58_3_addr_1_reg_1162_pp0_iter4_reg[3 : 1] <= v58_3_addr_1_reg_1162_pp0_iter3_reg[3 : 1];
        v58_3_addr_reg_1127 <= zext_ln98_1_fu_692_p1;
        v58_3_addr_reg_1127_pp0_iter2_reg <= v58_3_addr_reg_1127;
        v58_3_addr_reg_1127_pp0_iter3_reg <= v58_3_addr_reg_1127_pp0_iter2_reg;
        v59_load_reg_956 <= ap_sig_allocacmp_v59_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_982 <= cmp7_fu_501_p2;
        cmp7_reg_982_pp0_iter1_reg <= cmp7_reg_982;
        lshr_ln_reg_1004 <= {{select_ln97_fu_474_p3[5:2]}};
        select_ln97_1_cast_reg_972[6 : 0] <= select_ln97_1_cast_fu_497_p1[6 : 0];
        select_ln97_reg_966 <= select_ln97_fu_474_p3;
        tmp_1_reg_1013 <= {{select_ln97_fu_474_p3[5:1]}};
        tmp_4_reg_1050 <= select_ln97_fu_474_p3[32'd1];
        tmp_4_reg_1050_pp0_iter1_reg <= tmp_4_reg_1050;
        tmp_8_reg_1031 <= {{select_ln97_fu_474_p3[5:3]}};
        tmp_8_reg_1031_pp0_iter1_reg <= tmp_8_reg_1031;
        trunc_ln114_reg_1023 <= trunc_ln114_fu_565_p1;
        trunc_ln114_reg_1023_pp0_iter1_reg <= trunc_ln114_reg_1023;
        trunc_ln128_reg_1044 <= trunc_ln128_fu_579_p1;
        trunc_ln128_reg_1044_pp0_iter1_reg <= trunc_ln128_reg_1044;
        v100_reg_1317 <= v100_fu_919_p3;
        v106_reg_1322 <= v106_fu_925_p3;
        v63_reg_1167 <= v63_fu_783_p3;
        v70_reg_1192 <= v70_fu_825_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_397 <= v114_q1;
        reg_401 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_405 <= grp_fu_475_p_dout0;
        reg_412 <= grp_fu_385_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1307 <= grp_fu_479_p_dout0;
        v108_reg_1312 <= grp_fu_393_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v103_reg_1327 <= grp_fu_475_p_dout0;
        v109_reg_1332 <= grp_fu_385_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v104_reg_1302 <= v57_q0;
        v90_reg_1287 <= grp_fu_479_p_dout0;
        v96_reg_1292 <= grp_fu_393_p2;
        v98_reg_1297 <= v57_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v115_load_reg_1056 <= v115_q0;
        v76_reg_1247 <= v76_fu_870_p3;
        v82_reg_1252 <= v82_fu_876_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_reg_1071 <= v65_fu_633_p1;
        v88_reg_1277 <= v88_fu_907_p3;
        v94_reg_1282 <= v94_fu_913_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_1217 <= grp_fu_479_p_dout0;
        v72_reg_1222 <= grp_fu_393_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v75_reg_1197 <= v58_2_q1;
        v81_reg_1202 <= v58_3_q1;
        v87_reg_1207 <= v58_0_q0;
        v93_reg_1212 <= v58_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1257 <= grp_fu_479_p_dout0;
        v84_reg_1262 <= grp_fu_393_p2;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_952 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln97_reg_952_pp0_iter3_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v59_load = v59_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_381_p0 = v100_reg_1317;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_381_p0 = v88_reg_1277;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_381_p0 = v76_reg_1247;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_381_p0 = v63_reg_1167;
    end else begin
        grp_fu_381_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_381_p1 = v102_reg_1307;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_381_p1 = v90_reg_1287;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_381_p1 = v78_reg_1257;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_381_p1 = v66_reg_1217;
    end else begin
        grp_fu_381_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_385_p0 = v106_reg_1322;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_385_p0 = v94_reg_1282;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_385_p0 = v82_reg_1252;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_385_p0 = v70_reg_1192;
    end else begin
        grp_fu_385_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_385_p1 = v108_reg_1312;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_385_p1 = v96_reg_1292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_385_p1 = v84_reg_1262;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_385_p1 = v72_reg_1222;
    end else begin
        grp_fu_385_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_389_p0 = v101_fu_860_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_389_p0 = v89_fu_815_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_389_p0 = v77_fu_711_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_389_p0 = v64_fu_638_p1;
    end else begin
        grp_fu_389_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_389_p1 = v65_reg_1071;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_389_p1 = v65_fu_633_p1;
    end else begin
        grp_fu_389_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_393_p0 = v107_fu_865_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_393_p0 = v95_fu_820_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_393_p0 = v83_fu_716_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_393_p0 = v71_fu_643_p1;
    end else begin
        grp_fu_393_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_393_p1 = v65_reg_1071;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_393_p1 = v65_fu_633_p1;
    end else begin
        grp_fu_393_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address0_local = zext_ln152_fu_768_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address0_local = zext_ln138_fu_683_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address0_local = zext_ln124_fu_628_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address0_local = zext_ln110_fu_560_p1;
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address1_local = zext_ln145_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address1_local = zext_ln131_fu_663_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address1_local = zext_ln117_fu_611_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address1_local = zext_ln102_fu_521_p1;
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
            v57_address0_local = zext_ln149_fu_902_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln135_fu_855_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln121_fu_810_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln107_fu_706_p1;
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
            v57_address1_local = zext_ln142_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address1_local = zext_ln128_fu_840_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address1_local = zext_ln114_fu_798_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address1_local = zext_ln98_fu_688_p1;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = v58_0_addr_1_reg_1137_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln128_1_fu_728_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address1_local = v58_0_addr_reg_1102_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_1_fu_692_p1;
    end else begin
        v58_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_ce1_local = 1'b1;
    end else begin
        v58_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_we1_local = 1'b1;
    end else begin
        v58_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = v58_1_addr_1_reg_1142_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln128_1_fu_728_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address1_local = v58_1_addr_reg_1112_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_1_fu_692_p1;
    end else begin
        v58_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_ce1_local = 1'b1;
    end else begin
        v58_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_we1_local = 1'b1;
    end else begin
        v58_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_2_address0_local = v58_2_addr_1_reg_1152_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = v58_2_addr_1_reg_1152;
    end else begin
        v58_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_2_address1_local = v58_2_addr_reg_1117_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address1_local = zext_ln98_1_fu_692_p1;
    end else begin
        v58_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v58_2_ce0_local = 1'b1;
    end else begin
        v58_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_2_we1_local = 1'b1;
    end else begin
        v58_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_3_address0_local = v58_3_addr_1_reg_1162_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = v58_3_addr_1_reg_1162;
    end else begin
        v58_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_3_address1_local = v58_3_addr_reg_1127_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address1_local = zext_ln98_1_fu_692_p1;
    end else begin
        v58_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v58_3_ce0_local = 1'b1;
    end else begin
        v58_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
assign add_ln102_fu_515_p2 = (tmp_fu_507_p3 + select_ln97_1_cast_fu_497_p1);
assign add_ln110_fu_554_p2 = (tmp_2_fu_546_p3 + select_ln97_1_cast_fu_497_p1);
assign add_ln117_fu_606_p2 = (tmp_5_fu_596_p5 + select_ln97_1_cast_reg_972);
assign add_ln124_fu_623_p2 = (tmp_7_fu_616_p3 + select_ln97_1_cast_reg_972);
assign add_ln131_fu_658_p2 = (tmp_s_fu_648_p5 + select_ln97_1_cast_reg_972);
assign add_ln138_fu_678_p2 = (tmp_6_fu_668_p5 + select_ln97_1_cast_reg_972);
assign add_ln145_fu_746_p2 = (tmp_9_fu_736_p5 + select_ln97_1_cast_reg_972);
assign add_ln152_fu_763_p2 = (tmp_10_fu_756_p3 + select_ln97_1_cast_reg_972);
assign add_ln97_1_fu_443_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_452_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_773_p2 = (select_ln97_reg_966 + 7'd8);
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
assign cmp7_fu_501_p2 = ((select_ln97_1_fu_486_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_475_p_ce = 1'b1;
assign grp_fu_475_p_din0 = grp_fu_381_p0;
assign grp_fu_475_p_din1 = grp_fu_381_p1;
assign grp_fu_475_p_opcode = 2'd0;
assign grp_fu_479_p_ce = 1'b1;
assign grp_fu_479_p_din0 = grp_fu_389_p0;
assign grp_fu_479_p_din1 = grp_fu_389_p1;
assign icmp_ln97_fu_437_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign or_ln128_1_fu_721_p3 = {{tmp_8_reg_1031}, {1'd1}};
assign or_ln1_fu_790_p4 = {{{lshr_ln_reg_1004}, {1'd1}}, {trunc_ln114_reg_1023}};
assign or_ln2_fu_803_p3 = {{lshr_ln_reg_1004}, {2'd3}};
assign or_ln3_fu_832_p4 = {{{tmp_8_reg_1031_pp0_iter1_reg}, {1'd1}}, {trunc_ln128_reg_1044_pp0_iter1_reg}};
assign or_ln4_fu_845_p5 = {{{{tmp_8_reg_1031_pp0_iter1_reg}, {1'd1}}, {tmp_4_reg_1050_pp0_iter1_reg}}, {1'd1}};
assign or_ln5_fu_882_p4 = {{{tmp_8_reg_1031_pp0_iter1_reg}, {2'd3}}, {trunc_ln114_reg_1023_pp0_iter1_reg}};
assign or_ln6_fu_895_p3 = {{tmp_8_reg_1031_pp0_iter1_reg}, {3'd7}};
assign or_ln_fu_699_p3 = {{tmp_1_reg_1013}, {1'd1}};
assign select_ln97_1_cast_fu_497_p1 = select_ln97_1_fu_486_p3;
assign select_ln97_1_fu_486_p3 = ((tmp_3_fu_466_p3[0:0] == 1'b1) ? add_ln97_reg_961 : v59_load_reg_956);
assign select_ln97_fu_474_p3 = ((tmp_3_fu_466_p3[0:0] == 1'b1) ? 7'd0 : v60_fu_112);
assign tmp_10_fu_756_p3 = {{tmp_8_reg_1031}, {9'd448}};
assign tmp_1_fu_536_p4 = {{select_ln97_fu_474_p3[5:1]}};
assign tmp_2_fu_546_p3 = {{tmp_1_fu_536_p4}, {7'd64}};
assign tmp_3_fu_466_p3 = v60_fu_112[32'd6];
assign tmp_5_fu_596_p5 = {{{{lshr_ln_reg_1004}, {1'd1}}, {trunc_ln114_reg_1023}}, {6'd0}};
assign tmp_6_fu_668_p5 = {{{{tmp_8_reg_1031}, {1'd1}}, {tmp_4_reg_1050}}, {7'd64}};
assign tmp_7_fu_616_p3 = {{lshr_ln_reg_1004}, {8'd192}};
assign tmp_9_fu_736_p5 = {{{{tmp_8_reg_1031}, {2'd3}}, {trunc_ln114_reg_1023}}, {6'd0}};
assign tmp_fu_507_p3 = {{trunc_ln97_fu_482_p1}, {6'd0}};
assign tmp_s_fu_648_p5 = {{{{tmp_8_reg_1031}, {1'd1}}, {trunc_ln128_reg_1044}}, {6'd0}};
assign trunc_ln114_fu_565_p1 = select_ln97_fu_474_p3[0:0];
assign trunc_ln128_fu_579_p1 = select_ln97_fu_474_p3[1:0];
assign trunc_ln97_fu_482_p1 = select_ln97_fu_474_p3[5:0];
assign v100_fu_919_p3 = ((cmp7_reg_982_pp0_iter1_reg[0:0] == 1'b1) ? v98_reg_1297 : v58_2_q0);
assign v101_fu_860_p1 = reg_397;
assign v106_fu_925_p3 = ((cmp7_reg_982_pp0_iter1_reg[0:0] == 1'b1) ? v104_reg_1302 : v58_3_q0);
assign v107_fu_865_p1 = reg_401;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_address0 = zext_ln97_fu_492_p1;
assign v115_ce0 = v115_ce0_local;
assign v57_address0 = v57_address0_local;
assign v57_address1 = v57_address1_local;
assign v57_ce0 = v57_ce0_local;
assign v57_ce1 = v57_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = reg_405;
assign v58_0_d1 = reg_405;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = reg_412;
assign v58_1_d1 = reg_412;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_address1 = v58_2_address1_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_ce1 = v58_2_ce1_local;
assign v58_2_d0 = v103_reg_1327;
assign v58_2_d1 = reg_405;
assign v58_2_we0 = v58_2_we0_local;
assign v58_2_we1 = v58_2_we1_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_address1 = v58_3_address1_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_ce1 = v58_3_ce1_local;
assign v58_3_d0 = v109_reg_1332;
assign v58_3_d1 = reg_412;
assign v58_3_we0 = v58_3_we0_local;
assign v58_3_we1 = v58_3_we1_local;
assign v63_fu_783_p3 = ((cmp7_reg_982[0:0] == 1'b1) ? v57_q1 : v58_0_q1);
assign v64_fu_638_p1 = reg_397;
assign v65_fu_633_p1 = v115_load_reg_1056;
assign v70_fu_825_p3 = ((cmp7_reg_982[0:0] == 1'b1) ? v57_q0 : v58_1_q1);
assign v71_fu_643_p1 = reg_401;
assign v76_fu_870_p3 = ((cmp7_reg_982_pp0_iter1_reg[0:0] == 1'b1) ? v57_q1 : v75_reg_1197);
assign v77_fu_711_p1 = reg_397;
assign v82_fu_876_p3 = ((cmp7_reg_982_pp0_iter1_reg[0:0] == 1'b1) ? v57_q0 : v81_reg_1202);
assign v83_fu_716_p1 = reg_401;
assign v88_fu_907_p3 = ((cmp7_reg_982_pp0_iter1_reg[0:0] == 1'b1) ? v57_q1 : v87_reg_1207);
assign v89_fu_815_p1 = reg_397;
assign v94_fu_913_p3 = ((cmp7_reg_982_pp0_iter1_reg[0:0] == 1'b1) ? v57_q0 : v93_reg_1212);
assign v95_fu_820_p1 = reg_401;
assign zext_ln102_fu_521_p1 = add_ln102_fu_515_p2;
assign zext_ln107_fu_706_p1 = or_ln_fu_699_p3;
assign zext_ln110_fu_560_p1 = add_ln110_fu_554_p2;
assign zext_ln114_fu_798_p1 = or_ln1_fu_790_p4;
assign zext_ln117_fu_611_p1 = add_ln117_fu_606_p2;
assign zext_ln121_fu_810_p1 = or_ln2_fu_803_p3;
assign zext_ln124_fu_628_p1 = add_ln124_fu_623_p2;
assign zext_ln128_1_fu_728_p1 = or_ln128_1_fu_721_p3;
assign zext_ln128_fu_840_p1 = or_ln3_fu_832_p4;
assign zext_ln131_fu_663_p1 = add_ln131_fu_658_p2;
assign zext_ln135_fu_855_p1 = or_ln4_fu_845_p5;
assign zext_ln138_fu_683_p1 = add_ln138_fu_678_p2;
assign zext_ln142_fu_890_p1 = or_ln5_fu_882_p4;
assign zext_ln145_fu_751_p1 = add_ln145_fu_746_p2;
assign zext_ln149_fu_902_p1 = or_ln6_fu_895_p3;
assign zext_ln152_fu_768_p1 = add_ln152_fu_763_p2;
assign zext_ln97_fu_492_p1 = select_ln97_1_fu_486_p3;
assign zext_ln98_1_fu_692_p1 = lshr_ln_reg_1004;
assign zext_ln98_fu_688_p1 = select_ln97_reg_966;
always @ (posedge ap_clk) begin
    select_ln97_1_cast_reg_972[11:7] <= 5'b00000;
    v58_0_addr_1_reg_1137[0] <= 1'b1;
    v58_0_addr_1_reg_1137_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_1137_pp0_iter3_reg[0] <= 1'b1;
    v58_0_addr_1_reg_1137_pp0_iter4_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1142[0] <= 1'b1;
    v58_1_addr_1_reg_1142_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1142_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1142_pp0_iter4_reg[0] <= 1'b1;
    v58_2_addr_1_reg_1152[0] <= 1'b1;
    v58_2_addr_1_reg_1152_pp0_iter2_reg[0] <= 1'b1;
    v58_2_addr_1_reg_1152_pp0_iter3_reg[0] <= 1'b1;
    v58_2_addr_1_reg_1152_pp0_iter4_reg[0] <= 1'b1;
    v58_3_addr_1_reg_1162[0] <= 1'b1;
    v58_3_addr_1_reg_1162_pp0_iter2_reg[0] <= 1'b1;
    v58_3_addr_1_reg_1162_pp0_iter3_reg[0] <= 1'b1;
    v58_3_addr_1_reg_1162_pp0_iter4_reg[0] <= 1'b1;
end
endmodule 