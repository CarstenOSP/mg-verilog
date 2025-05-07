module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,grp_fu_163_p_din0,grp_fu_163_p_din1,grp_fu_163_p_opcode,grp_fu_163_p_dout0,grp_fu_163_p_ce,grp_fu_167_p_din0,grp_fu_167_p_din1,grp_fu_167_p_opcode,grp_fu_167_p_dout0,grp_fu_167_p_ce,grp_fu_171_p_din0,grp_fu_171_p_din1,grp_fu_171_p_dout0,grp_fu_171_p_ce,grp_fu_175_p_din0,grp_fu_175_p_din1,grp_fu_175_p_dout0,grp_fu_175_p_ce); 
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
output  [4:0] v115_0_address0;
output   v115_0_ce0;
input  [31:0] v115_0_q0;
output  [4:0] v115_1_address0;
output   v115_1_ce0;
input  [31:0] v115_1_q0;
output  [5:0] v57_address0;
output   v57_ce0;
input  [31:0] v57_q0;
output  [5:0] v57_address1;
output   v57_ce1;
input  [31:0] v57_q1;
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
output  [31:0] grp_fu_163_p_din0;
output  [31:0] grp_fu_163_p_din1;
output  [1:0] grp_fu_163_p_opcode;
input  [31:0] grp_fu_163_p_dout0;
output   grp_fu_163_p_ce;
output  [31:0] grp_fu_167_p_din0;
output  [31:0] grp_fu_167_p_din1;
output  [1:0] grp_fu_167_p_opcode;
input  [31:0] grp_fu_167_p_dout0;
output   grp_fu_167_p_ce;
output  [31:0] grp_fu_171_p_din0;
output  [31:0] grp_fu_171_p_din1;
input  [31:0] grp_fu_171_p_dout0;
output   grp_fu_171_p_ce;
output  [31:0] grp_fu_175_p_din0;
output  [31:0] grp_fu_175_p_din1;
input  [31:0] grp_fu_175_p_dout0;
output   grp_fu_175_p_ce;
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
reg   [0:0] icmp_ln97_reg_989;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_396;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_400;
reg   [31:0] reg_404;
reg   [31:0] reg_409;
wire   [0:0] icmp_ln97_fu_432_p2;
wire   [6:0] select_ln97_fu_464_p3;
reg   [6:0] select_ln97_reg_993;
wire   [5:0] trunc_ln97_fu_472_p1;
reg   [5:0] trunc_ln97_reg_998;
wire   [6:0] select_ln97_1_fu_476_p3;
reg   [6:0] select_ln97_1_reg_1003;
wire   [0:0] trunc_ln97_1_fu_484_p1;
reg   [0:0] trunc_ln97_1_reg_1009;
reg   [4:0] lshr_ln_reg_1014;
wire   [4:0] lshr_ln1_fu_503_p4;
reg   [4:0] lshr_ln1_reg_1019;
reg   [3:0] tmp_3_reg_1035;
wire   [0:0] trunc_ln114_fu_536_p1;
reg   [0:0] trunc_ln114_reg_1044;
reg   [2:0] tmp_9_reg_1052;
reg   [2:0] tmp_9_reg_1052_pp0_iter1_reg;
wire   [1:0] trunc_ln128_fu_550_p1;
reg   [1:0] trunc_ln128_reg_1066;
reg   [0:0] tmp_4_reg_1072;
reg   [0:0] tmp_4_reg_1072_pp0_iter1_reg;
wire   [11:0] zext_ln97_fu_572_p1;
reg   [11:0] zext_ln97_reg_1079;
wire   [0:0] cmp7_fu_580_p2;
reg   [0:0] cmp7_reg_1089;
reg   [0:0] cmp7_reg_1089_pp0_iter1_reg;
reg   [31:0] v61_reg_1116;
reg   [31:0] v68_reg_1126;
wire   [31:0] v65_v_fu_646_p3;
reg   [31:0] v65_v_reg_1141;
reg   [31:0] v74_reg_1151;
reg   [31:0] v80_reg_1161;
wire   [31:0] v65_fu_718_p1;
reg   [31:0] v65_reg_1176;
wire   [31:0] v64_fu_723_p1;
wire   [31:0] v71_fu_728_p1;
reg   [31:0] v86_reg_1197;
reg   [31:0] v92_reg_1207;
reg   [4:0] v58_0_addr_reg_1222;
reg   [4:0] v58_0_addr_reg_1222_pp0_iter2_reg;
reg   [4:0] v58_0_addr_reg_1222_pp0_iter3_reg;
reg   [4:0] v58_1_addr_reg_1227;
reg   [4:0] v58_1_addr_reg_1227_pp0_iter2_reg;
reg   [4:0] v58_1_addr_reg_1227_pp0_iter3_reg;
reg   [4:0] v58_0_addr_1_reg_1232;
reg   [4:0] v58_0_addr_1_reg_1232_pp0_iter2_reg;
reg   [4:0] v58_0_addr_1_reg_1232_pp0_iter3_reg;
wire   [31:0] v77_fu_826_p1;
reg   [4:0] v58_1_addr_1_reg_1243;
reg   [4:0] v58_1_addr_1_reg_1243_pp0_iter2_reg;
reg   [4:0] v58_1_addr_1_reg_1243_pp0_iter3_reg;
wire   [31:0] v83_fu_831_p1;
reg   [31:0] v98_reg_1259;
reg   [31:0] v104_reg_1269;
wire   [31:0] v63_fu_873_p3;
reg   [31:0] v63_reg_1274;
reg   [4:0] v58_0_addr_2_reg_1279;
reg   [4:0] v58_0_addr_2_reg_1279_pp0_iter2_reg;
reg   [4:0] v58_0_addr_2_reg_1279_pp0_iter3_reg;
reg   [4:0] v58_0_addr_2_reg_1279_pp0_iter4_reg;
wire   [31:0] v89_fu_893_p1;
reg   [4:0] v58_1_addr_2_reg_1290;
reg   [4:0] v58_1_addr_2_reg_1290_pp0_iter2_reg;
reg   [4:0] v58_1_addr_2_reg_1290_pp0_iter3_reg;
reg   [4:0] v58_1_addr_2_reg_1290_pp0_iter4_reg;
wire   [31:0] v95_fu_898_p1;
reg   [4:0] v58_0_addr_3_reg_1301;
reg   [4:0] v58_0_addr_3_reg_1301_pp0_iter2_reg;
reg   [4:0] v58_0_addr_3_reg_1301_pp0_iter3_reg;
reg   [4:0] v58_0_addr_3_reg_1301_pp0_iter4_reg;
reg   [4:0] v58_1_addr_3_reg_1306;
reg   [4:0] v58_1_addr_3_reg_1306_pp0_iter2_reg;
reg   [4:0] v58_1_addr_3_reg_1306_pp0_iter3_reg;
reg   [4:0] v58_1_addr_3_reg_1306_pp0_iter4_reg;
wire   [31:0] v70_fu_916_p3;
reg   [31:0] v70_reg_1311;
wire   [31:0] v76_fu_922_p3;
reg   [31:0] v76_reg_1316;
wire   [31:0] v82_fu_928_p3;
reg   [31:0] v82_reg_1321;
reg   [31:0] v66_reg_1326;
reg   [31:0] v72_reg_1331;
wire   [31:0] v101_fu_934_p1;
wire   [31:0] v107_fu_939_p1;
wire   [31:0] v88_fu_944_p3;
reg   [31:0] v88_reg_1346;
wire   [31:0] v94_fu_950_p3;
reg   [31:0] v94_reg_1351;
wire   [31:0] v100_fu_956_p3;
reg   [31:0] v100_reg_1356;
wire   [31:0] v106_fu_962_p3;
reg   [31:0] v106_reg_1361;
reg   [31:0] v78_reg_1366;
reg   [31:0] v84_reg_1371;
reg   [31:0] v90_reg_1376;
reg   [31:0] v96_reg_1381;
reg   [31:0] v102_reg_1386;
reg   [31:0] v108_reg_1391;
reg   [31:0] v91_reg_1396;
reg   [31:0] v97_reg_1401;
reg   [31:0] v103_reg_1406;
reg   [31:0] v109_reg_1411;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln98_fu_498_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln107_fu_521_p1;
wire   [63:0] zext_ln97_1_fu_575_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln102_fu_598_p1;
wire   [63:0] zext_ln110_fu_616_p1;
wire   [63:0] zext_ln114_fu_629_p1;
wire   [63:0] zext_ln121_fu_641_p1;
wire   [63:0] zext_ln117_fu_668_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_685_p1;
wire   [63:0] zext_ln128_fu_698_p1;
wire   [63:0] zext_ln135_fu_713_p1;
wire   [63:0] zext_ln131_fu_748_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_768_p1;
wire   [63:0] zext_ln142_fu_781_p1;
wire   [63:0] zext_ln149_fu_793_p1;
wire   [63:0] zext_ln98_1_fu_808_p1;
wire   [63:0] zext_ln114_1_fu_820_p1;
wire   [63:0] zext_ln145_fu_851_p1;
wire   [63:0] zext_ln152_fu_868_p1;
wire   [63:0] zext_ln128_1_fu_887_p1;
wire   [63:0] zext_ln142_1_fu_910_p1;
reg   [6:0] v60_fu_114;
wire   [6:0] add_ln98_fu_798_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_load;
reg   [6:0] v59_fu_118;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_122;
wire   [9:0] add_ln97_1_fu_438_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v57_ce1_local;
reg   [5:0] v57_address1_local;
reg    v57_ce0_local;
reg   [5:0] v57_address0_local;
reg    v115_0_ce0_local;
reg    v115_1_ce0_local;
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
reg   [31:0] grp_fu_380_p0;
reg   [31:0] grp_fu_380_p1;
reg   [31:0] grp_fu_384_p0;
reg   [31:0] grp_fu_384_p1;
reg   [31:0] grp_fu_388_p0;
reg   [31:0] grp_fu_388_p1;
reg   [31:0] grp_fu_392_p0;
reg   [31:0] grp_fu_392_p1;
wire   [0:0] tmp_1_fu_456_p3;
wire   [6:0] add_ln97_fu_450_p2;
wire   [5:0] or_ln_fu_513_p3;
wire   [11:0] tmp_fu_585_p3;
wire   [11:0] add_ln102_fu_592_p2;
wire   [11:0] tmp_2_fu_603_p3;
wire   [11:0] add_ln110_fu_610_p2;
wire   [5:0] or_ln1_fu_621_p4;
wire   [5:0] or_ln2_fu_634_p3;
wire   [11:0] tmp_5_fu_653_p5;
wire   [11:0] add_ln117_fu_663_p2;
wire   [11:0] tmp_8_fu_673_p3;
wire   [11:0] add_ln124_fu_680_p2;
wire   [5:0] or_ln3_fu_690_p4;
wire   [5:0] or_ln4_fu_703_p5;
wire   [11:0] tmp_s_fu_733_p5;
wire   [11:0] add_ln131_fu_743_p2;
wire   [11:0] tmp_6_fu_753_p5;
wire   [11:0] add_ln138_fu_763_p2;
wire   [5:0] or_ln5_fu_773_p4;
wire   [5:0] or_ln6_fu_786_p3;
wire   [4:0] or_ln114_1_fu_813_p3;
wire   [11:0] tmp_7_fu_836_p5;
wire   [11:0] add_ln145_fu_846_p2;
wire   [11:0] tmp_10_fu_856_p3;
wire   [11:0] add_ln152_fu_863_p2;
wire   [4:0] or_ln128_1_fu_879_p4;
wire   [4:0] or_ln142_1_fu_903_p3;
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
#0 v60_fu_114 = 7'd0;
#0 v59_fu_118 = 7'd0;
#0 indvar_flatten_fu_122 = 10'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_432_p2 == 1'd0))) begin
            indvar_flatten_fu_122 <= add_ln97_1_fu_438_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_122 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_432_p2 == 1'd0))) begin
            v59_fu_118 <= select_ln97_1_fu_476_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v59_fu_118 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v60_fu_114 <= 7'd0;
    end else if (((icmp_ln97_reg_989 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v60_fu_114 <= add_ln98_fu_798_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        v65_reg_1176 <= v65_fu_718_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_1089 <= cmp7_fu_580_p2;
        cmp7_reg_1089_pp0_iter1_reg <= cmp7_reg_1089;
        v58_0_addr_2_reg_1279[0] <= zext_ln128_1_fu_887_p1[0];
v58_0_addr_2_reg_1279[4 : 2] <= zext_ln128_1_fu_887_p1[4 : 2];
        v58_0_addr_2_reg_1279_pp0_iter2_reg[0] <= v58_0_addr_2_reg_1279[0];
v58_0_addr_2_reg_1279_pp0_iter2_reg[4 : 2] <= v58_0_addr_2_reg_1279[4 : 2];
        v58_0_addr_2_reg_1279_pp0_iter3_reg[0] <= v58_0_addr_2_reg_1279_pp0_iter2_reg[0];
v58_0_addr_2_reg_1279_pp0_iter3_reg[4 : 2] <= v58_0_addr_2_reg_1279_pp0_iter2_reg[4 : 2];
        v58_0_addr_2_reg_1279_pp0_iter4_reg[0] <= v58_0_addr_2_reg_1279_pp0_iter3_reg[0];
v58_0_addr_2_reg_1279_pp0_iter4_reg[4 : 2] <= v58_0_addr_2_reg_1279_pp0_iter3_reg[4 : 2];
        v58_0_addr_3_reg_1301[4 : 2] <= zext_ln142_1_fu_910_p1[4 : 2];
        v58_0_addr_3_reg_1301_pp0_iter2_reg[4 : 2] <= v58_0_addr_3_reg_1301[4 : 2];
        v58_0_addr_3_reg_1301_pp0_iter3_reg[4 : 2] <= v58_0_addr_3_reg_1301_pp0_iter2_reg[4 : 2];
        v58_0_addr_3_reg_1301_pp0_iter4_reg[4 : 2] <= v58_0_addr_3_reg_1301_pp0_iter3_reg[4 : 2];
        v58_1_addr_2_reg_1290[0] <= zext_ln128_1_fu_887_p1[0];
v58_1_addr_2_reg_1290[4 : 2] <= zext_ln128_1_fu_887_p1[4 : 2];
        v58_1_addr_2_reg_1290_pp0_iter2_reg[0] <= v58_1_addr_2_reg_1290[0];
v58_1_addr_2_reg_1290_pp0_iter2_reg[4 : 2] <= v58_1_addr_2_reg_1290[4 : 2];
        v58_1_addr_2_reg_1290_pp0_iter3_reg[0] <= v58_1_addr_2_reg_1290_pp0_iter2_reg[0];
v58_1_addr_2_reg_1290_pp0_iter3_reg[4 : 2] <= v58_1_addr_2_reg_1290_pp0_iter2_reg[4 : 2];
        v58_1_addr_2_reg_1290_pp0_iter4_reg[0] <= v58_1_addr_2_reg_1290_pp0_iter3_reg[0];
v58_1_addr_2_reg_1290_pp0_iter4_reg[4 : 2] <= v58_1_addr_2_reg_1290_pp0_iter3_reg[4 : 2];
        v58_1_addr_3_reg_1306[4 : 2] <= zext_ln142_1_fu_910_p1[4 : 2];
        v58_1_addr_3_reg_1306_pp0_iter2_reg[4 : 2] <= v58_1_addr_3_reg_1306[4 : 2];
        v58_1_addr_3_reg_1306_pp0_iter3_reg[4 : 2] <= v58_1_addr_3_reg_1306_pp0_iter2_reg[4 : 2];
        v58_1_addr_3_reg_1306_pp0_iter4_reg[4 : 2] <= v58_1_addr_3_reg_1306_pp0_iter3_reg[4 : 2];
        v63_reg_1274 <= v63_fu_873_p3;
        v70_reg_1311 <= v70_fu_916_p3;
        v76_reg_1316 <= v76_fu_922_p3;
        v82_reg_1321 <= v82_fu_928_p3;
        zext_ln97_reg_1079[6 : 0] <= zext_ln97_fu_572_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln97_reg_989 <= icmp_ln97_fu_432_p2;
        lshr_ln1_reg_1019 <= {{select_ln97_fu_464_p3[5:1]}};
        lshr_ln_reg_1014 <= {{select_ln97_1_fu_476_p3[5:1]}};
        select_ln97_1_reg_1003 <= select_ln97_1_fu_476_p3;
        select_ln97_reg_993 <= select_ln97_fu_464_p3;
        tmp_3_reg_1035 <= {{select_ln97_fu_464_p3[5:2]}};
        tmp_4_reg_1072 <= select_ln97_fu_464_p3[32'd1];
        tmp_4_reg_1072_pp0_iter1_reg <= tmp_4_reg_1072;
        tmp_9_reg_1052 <= {{select_ln97_fu_464_p3[5:3]}};
        tmp_9_reg_1052_pp0_iter1_reg <= tmp_9_reg_1052;
        trunc_ln114_reg_1044 <= trunc_ln114_fu_536_p1;
        trunc_ln128_reg_1066 <= trunc_ln128_fu_550_p1;
        trunc_ln97_1_reg_1009 <= trunc_ln97_1_fu_484_p1;
        trunc_ln97_reg_998 <= trunc_ln97_fu_472_p1;
        v58_0_addr_1_reg_1232[4 : 1] <= zext_ln114_1_fu_820_p1[4 : 1];
        v58_0_addr_1_reg_1232_pp0_iter2_reg[4 : 1] <= v58_0_addr_1_reg_1232[4 : 1];
        v58_0_addr_1_reg_1232_pp0_iter3_reg[4 : 1] <= v58_0_addr_1_reg_1232_pp0_iter2_reg[4 : 1];
        v58_0_addr_reg_1222 <= zext_ln98_1_fu_808_p1;
        v58_0_addr_reg_1222_pp0_iter2_reg <= v58_0_addr_reg_1222;
        v58_0_addr_reg_1222_pp0_iter3_reg <= v58_0_addr_reg_1222_pp0_iter2_reg;
        v58_1_addr_1_reg_1243[4 : 1] <= zext_ln114_1_fu_820_p1[4 : 1];
        v58_1_addr_1_reg_1243_pp0_iter2_reg[4 : 1] <= v58_1_addr_1_reg_1243[4 : 1];
        v58_1_addr_1_reg_1243_pp0_iter3_reg[4 : 1] <= v58_1_addr_1_reg_1243_pp0_iter2_reg[4 : 1];
        v58_1_addr_reg_1227 <= zext_ln98_1_fu_808_p1;
        v58_1_addr_reg_1227_pp0_iter2_reg <= v58_1_addr_reg_1227;
        v58_1_addr_reg_1227_pp0_iter3_reg <= v58_1_addr_reg_1227_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_396 <= v114_q1;
        reg_400 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_404 <= grp_fu_163_p_dout0;
        reg_409 <= grp_fu_167_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_1356 <= v100_fu_956_p3;
        v106_reg_1361 <= v106_fu_962_p3;
        v65_v_reg_1141 <= v65_v_fu_646_p3;
        v88_reg_1346 <= v88_fu_944_p3;
        v94_reg_1351 <= v94_fu_950_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1386 <= grp_fu_171_p_dout0;
        v108_reg_1391 <= grp_fu_175_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v103_reg_1406 <= grp_fu_163_p_dout0;
        v109_reg_1411 <= grp_fu_167_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v104_reg_1269 <= v57_q0;
        v98_reg_1259 <= v57_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v61_reg_1116 <= v57_q1;
        v68_reg_1126 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_1326 <= grp_fu_171_p_dout0;
        v72_reg_1331 <= grp_fu_175_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v74_reg_1151 <= v57_q1;
        v80_reg_1161 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1366 <= grp_fu_171_p_dout0;
        v84_reg_1371 <= grp_fu_175_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v86_reg_1197 <= v57_q1;
        v92_reg_1207 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1376 <= grp_fu_171_p_dout0;
        v96_reg_1381 <= grp_fu_175_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v91_reg_1396 <= grp_fu_163_p_dout0;
        v97_reg_1401 <= grp_fu_167_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_989 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v59_load = v59_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v60_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_load = v60_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_380_p0 = v100_reg_1356;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_380_p0 = v88_reg_1346;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_380_p0 = v76_reg_1316;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_380_p0 = v63_reg_1274;
    end else begin
        grp_fu_380_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_380_p1 = v102_reg_1386;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_380_p1 = v90_reg_1376;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_380_p1 = v78_reg_1366;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_380_p1 = v66_reg_1326;
    end else begin
        grp_fu_380_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_384_p0 = v106_reg_1361;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_384_p0 = v94_reg_1351;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_384_p0 = v82_reg_1321;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_384_p0 = v70_reg_1311;
    end else begin
        grp_fu_384_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_384_p1 = v108_reg_1391;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_384_p1 = v96_reg_1381;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_384_p1 = v84_reg_1371;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_384_p1 = v72_reg_1331;
    end else begin
        grp_fu_384_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_388_p0 = v101_fu_934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_388_p0 = v89_fu_893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_388_p0 = v77_fu_826_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_388_p0 = v64_fu_723_p1;
    end else begin
        grp_fu_388_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_388_p1 = v65_reg_1176;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_388_p1 = v65_fu_718_p1;
    end else begin
        grp_fu_388_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_392_p0 = v107_fu_939_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_392_p0 = v95_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_392_p0 = v83_fu_831_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_392_p0 = v71_fu_728_p1;
    end else begin
        grp_fu_392_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_392_p1 = v65_reg_1176;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_392_p1 = v65_fu_718_p1;
    end else begin
        grp_fu_392_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address0_local = zext_ln152_fu_868_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address0_local = zext_ln138_fu_768_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address0_local = zext_ln124_fu_685_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address0_local = zext_ln110_fu_616_p1;
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address1_local = zext_ln145_fu_851_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address1_local = zext_ln131_fu_748_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address1_local = zext_ln117_fu_668_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address1_local = zext_ln102_fu_598_p1;
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
        v115_0_ce0_local = 1'b1;
    end else begin
        v115_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v115_1_ce0_local = 1'b1;
    end else begin
        v115_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address0_local = zext_ln149_fu_793_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln135_fu_713_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln121_fu_641_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln107_fu_521_p1;
        end else begin
            v57_address0_local = 'bx;
        end
    end else begin
        v57_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address1_local = zext_ln142_fu_781_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address1_local = zext_ln128_fu_698_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address1_local = zext_ln114_fu_629_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address1_local = zext_ln98_fu_498_p1;
        end else begin
            v57_address1_local = 'bx;
        end
    end else begin
        v57_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v57_ce0_local = 1'b1;
    end else begin
        v57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v57_ce1_local = 1'b1;
    end else begin
        v57_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address0_local = v58_0_addr_3_reg_1301_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_2_reg_1279_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = zext_ln142_1_fu_910_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln114_1_fu_820_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_1_reg_1232_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address1_local = v58_0_addr_reg_1222_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address1_local = zext_ln128_1_fu_887_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_1_fu_808_p1;
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
            v58_0_d0_local = v103_reg_1406;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v58_0_d0_local = v91_reg_1396;
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
        v58_1_address0_local = v58_1_addr_3_reg_1306_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_2_reg_1290_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = zext_ln142_1_fu_910_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln114_1_fu_820_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_1_reg_1243_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address1_local = v58_1_addr_reg_1227_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address1_local = zext_ln128_1_fu_887_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_1_fu_808_p1;
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
            v58_1_d0_local = v109_reg_1411;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v58_1_d0_local = v97_reg_1401;
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
assign add_ln102_fu_592_p2 = (tmp_fu_585_p3 + zext_ln97_fu_572_p1);
assign add_ln110_fu_610_p2 = (tmp_2_fu_603_p3 + zext_ln97_fu_572_p1);
assign add_ln117_fu_663_p2 = (tmp_5_fu_653_p5 + zext_ln97_reg_1079);
assign add_ln124_fu_680_p2 = (tmp_8_fu_673_p3 + zext_ln97_reg_1079);
assign add_ln131_fu_743_p2 = (tmp_s_fu_733_p5 + zext_ln97_reg_1079);
assign add_ln138_fu_763_p2 = (tmp_6_fu_753_p5 + zext_ln97_reg_1079);
assign add_ln145_fu_846_p2 = (tmp_7_fu_836_p5 + zext_ln97_reg_1079);
assign add_ln152_fu_863_p2 = (tmp_10_fu_856_p3 + zext_ln97_reg_1079);
assign add_ln97_1_fu_438_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_450_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_798_p2 = (select_ln97_reg_993 + 7'd8);
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
assign cmp7_fu_580_p2 = ((select_ln97_1_reg_1003 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_163_p_ce = 1'b1;
assign grp_fu_163_p_din0 = grp_fu_380_p0;
assign grp_fu_163_p_din1 = grp_fu_380_p1;
assign grp_fu_163_p_opcode = 2'd0;
assign grp_fu_167_p_ce = 1'b1;
assign grp_fu_167_p_din0 = grp_fu_384_p0;
assign grp_fu_167_p_din1 = grp_fu_384_p1;
assign grp_fu_167_p_opcode = 2'd0;
assign grp_fu_171_p_ce = 1'b1;
assign grp_fu_171_p_din0 = grp_fu_388_p0;
assign grp_fu_171_p_din1 = grp_fu_388_p1;
assign grp_fu_175_p_ce = 1'b1;
assign grp_fu_175_p_din0 = grp_fu_392_p0;
assign grp_fu_175_p_din1 = grp_fu_392_p1;
assign icmp_ln97_fu_432_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_503_p4 = {{select_ln97_fu_464_p3[5:1]}};
assign or_ln114_1_fu_813_p3 = {{tmp_3_reg_1035}, {1'd1}};
assign or_ln128_1_fu_879_p4 = {{{tmp_9_reg_1052_pp0_iter1_reg}, {1'd1}}, {tmp_4_reg_1072_pp0_iter1_reg}};
assign or_ln142_1_fu_903_p3 = {{tmp_9_reg_1052_pp0_iter1_reg}, {2'd3}};
assign or_ln1_fu_621_p4 = {{{tmp_3_reg_1035}, {1'd1}}, {trunc_ln114_reg_1044}};
assign or_ln2_fu_634_p3 = {{tmp_3_reg_1035}, {2'd3}};
assign or_ln3_fu_690_p4 = {{{tmp_9_reg_1052}, {1'd1}}, {trunc_ln128_reg_1066}};
assign or_ln4_fu_703_p5 = {{{{tmp_9_reg_1052}, {1'd1}}, {tmp_4_reg_1072}}, {1'd1}};
assign or_ln5_fu_773_p4 = {{{tmp_9_reg_1052}, {2'd3}}, {trunc_ln114_reg_1044}};
assign or_ln6_fu_786_p3 = {{tmp_9_reg_1052}, {3'd7}};
assign or_ln_fu_513_p3 = {{lshr_ln1_fu_503_p4}, {1'd1}};
assign select_ln97_1_fu_476_p3 = ((tmp_1_fu_456_p3[0:0] == 1'b1) ? add_ln97_fu_450_p2 : ap_sig_allocacmp_v59_load);
assign select_ln97_fu_464_p3 = ((tmp_1_fu_456_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v60_load);
assign tmp_10_fu_856_p3 = {{tmp_9_reg_1052}, {9'd448}};
assign tmp_1_fu_456_p3 = ap_sig_allocacmp_v60_load[32'd6];
assign tmp_2_fu_603_p3 = {{lshr_ln1_reg_1019}, {7'd64}};
assign tmp_5_fu_653_p5 = {{{{tmp_3_reg_1035}, {1'd1}}, {trunc_ln114_reg_1044}}, {6'd0}};
assign tmp_6_fu_753_p5 = {{{{tmp_9_reg_1052}, {1'd1}}, {tmp_4_reg_1072}}, {7'd64}};
assign tmp_7_fu_836_p5 = {{{{tmp_9_reg_1052}, {2'd3}}, {trunc_ln114_reg_1044}}, {6'd0}};
assign tmp_8_fu_673_p3 = {{tmp_3_reg_1035}, {8'd192}};
assign tmp_fu_585_p3 = {{trunc_ln97_reg_998}, {6'd0}};
assign tmp_s_fu_733_p5 = {{{{tmp_9_reg_1052}, {1'd1}}, {trunc_ln128_reg_1066}}, {6'd0}};
assign trunc_ln114_fu_536_p1 = select_ln97_fu_464_p3[0:0];
assign trunc_ln128_fu_550_p1 = select_ln97_fu_464_p3[1:0];
assign trunc_ln97_1_fu_484_p1 = select_ln97_1_fu_476_p3[0:0];
assign trunc_ln97_fu_472_p1 = select_ln97_fu_464_p3[5:0];
assign v100_fu_956_p3 = ((cmp7_reg_1089_pp0_iter1_reg[0:0] == 1'b1) ? v98_reg_1259 : v58_0_q0);
assign v101_fu_934_p1 = reg_396;
assign v106_fu_962_p3 = ((cmp7_reg_1089_pp0_iter1_reg[0:0] == 1'b1) ? v104_reg_1269 : v58_1_q0);
assign v107_fu_939_p1 = reg_400;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_0_address0 = zext_ln97_1_fu_575_p1;
assign v115_0_ce0 = v115_0_ce0_local;
assign v115_1_address0 = zext_ln97_1_fu_575_p1;
assign v115_1_ce0 = v115_1_ce0_local;
assign v57_address0 = v57_address0_local;
assign v57_address1 = v57_address1_local;
assign v57_ce0 = v57_ce0_local;
assign v57_ce1 = v57_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = v58_0_d0_local;
assign v58_0_d1 = reg_404;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = v58_1_d0_local;
assign v58_1_d1 = reg_409;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v63_fu_873_p3 = ((cmp7_reg_1089[0:0] == 1'b1) ? v61_reg_1116 : v58_0_q1);
assign v64_fu_723_p1 = reg_396;
assign v65_fu_718_p1 = v65_v_reg_1141;
assign v65_v_fu_646_p3 = ((trunc_ln97_1_reg_1009[0:0] == 1'b1) ? v115_1_q0 : v115_0_q0);
assign v70_fu_916_p3 = ((cmp7_reg_1089[0:0] == 1'b1) ? v68_reg_1126 : v58_1_q1);
assign v71_fu_728_p1 = reg_400;
assign v76_fu_922_p3 = ((cmp7_reg_1089[0:0] == 1'b1) ? v74_reg_1151 : v58_0_q0);
assign v77_fu_826_p1 = reg_396;
assign v82_fu_928_p3 = ((cmp7_reg_1089[0:0] == 1'b1) ? v80_reg_1161 : v58_1_q0);
assign v83_fu_831_p1 = reg_400;
assign v88_fu_944_p3 = ((cmp7_reg_1089_pp0_iter1_reg[0:0] == 1'b1) ? v86_reg_1197 : v58_0_q1);
assign v89_fu_893_p1 = reg_396;
assign v94_fu_950_p3 = ((cmp7_reg_1089_pp0_iter1_reg[0:0] == 1'b1) ? v92_reg_1207 : v58_1_q1);
assign v95_fu_898_p1 = reg_400;
assign zext_ln102_fu_598_p1 = add_ln102_fu_592_p2;
assign zext_ln107_fu_521_p1 = or_ln_fu_513_p3;
assign zext_ln110_fu_616_p1 = add_ln110_fu_610_p2;
assign zext_ln114_1_fu_820_p1 = or_ln114_1_fu_813_p3;
assign zext_ln114_fu_629_p1 = or_ln1_fu_621_p4;
assign zext_ln117_fu_668_p1 = add_ln117_fu_663_p2;
assign zext_ln121_fu_641_p1 = or_ln2_fu_634_p3;
assign zext_ln124_fu_685_p1 = add_ln124_fu_680_p2;
assign zext_ln128_1_fu_887_p1 = or_ln128_1_fu_879_p4;
assign zext_ln128_fu_698_p1 = or_ln3_fu_690_p4;
assign zext_ln131_fu_748_p1 = add_ln131_fu_743_p2;
assign zext_ln135_fu_713_p1 = or_ln4_fu_703_p5;
assign zext_ln138_fu_768_p1 = add_ln138_fu_763_p2;
assign zext_ln142_1_fu_910_p1 = or_ln142_1_fu_903_p3;
assign zext_ln142_fu_781_p1 = or_ln5_fu_773_p4;
assign zext_ln145_fu_851_p1 = add_ln145_fu_846_p2;
assign zext_ln149_fu_793_p1 = or_ln6_fu_786_p3;
assign zext_ln152_fu_868_p1 = add_ln152_fu_863_p2;
assign zext_ln97_1_fu_575_p1 = lshr_ln_reg_1014;
assign zext_ln97_fu_572_p1 = select_ln97_1_reg_1003;
assign zext_ln98_1_fu_808_p1 = lshr_ln1_reg_1019;
assign zext_ln98_fu_498_p1 = select_ln97_fu_464_p3;
always @ (posedge ap_clk) begin
    zext_ln97_reg_1079[11:7] <= 5'b00000;
    v58_0_addr_1_reg_1232[0] <= 1'b1;
    v58_0_addr_1_reg_1232_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_1232_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1243[0] <= 1'b1;
    v58_1_addr_1_reg_1243_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1243_pp0_iter3_reg[0] <= 1'b1;
    v58_0_addr_2_reg_1279[1] <= 1'b1;
    v58_0_addr_2_reg_1279_pp0_iter2_reg[1] <= 1'b1;
    v58_0_addr_2_reg_1279_pp0_iter3_reg[1] <= 1'b1;
    v58_0_addr_2_reg_1279_pp0_iter4_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1290[1] <= 1'b1;
    v58_1_addr_2_reg_1290_pp0_iter2_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1290_pp0_iter3_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1290_pp0_iter4_reg[1] <= 1'b1;
    v58_0_addr_3_reg_1301[1:0] <= 2'b11;
    v58_0_addr_3_reg_1301_pp0_iter2_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1301_pp0_iter3_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1301_pp0_iter4_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1306[1:0] <= 2'b11;
    v58_1_addr_3_reg_1306_pp0_iter2_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1306_pp0_iter3_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1306_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 