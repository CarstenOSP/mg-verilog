module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v57_0_address0,v57_0_ce0,v57_0_q0,v57_0_address1,v57_0_ce1,v57_0_q1,v57_1_address0,v57_1_ce0,v57_1_q0,v57_1_address1,v57_1_ce1,v57_1_q1,v57_2_address0,v57_2_ce0,v57_2_q0,v57_2_address1,v57_2_ce1,v57_2_q1,v57_3_address0,v57_3_ce0,v57_3_q0,v57_3_address1,v57_3_ce1,v57_3_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_opcode,grp_fu_140_p_dout0,grp_fu_140_p_ce,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_opcode,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce); 
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
output  [31:0] grp_fu_140_p_din0;
output  [31:0] grp_fu_140_p_din1;
output  [1:0] grp_fu_140_p_opcode;
input  [31:0] grp_fu_140_p_dout0;
output   grp_fu_140_p_ce;
output  [31:0] grp_fu_144_p_din0;
output  [31:0] grp_fu_144_p_din1;
output  [1:0] grp_fu_144_p_opcode;
input  [31:0] grp_fu_144_p_dout0;
output   grp_fu_144_p_ce;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
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
reg   [0:0] icmp_ln97_reg_939;
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
reg   [31:0] reg_428;
wire   [0:0] icmp_ln97_fu_451_p2;
reg   [6:0] v59_load_reg_943;
wire   [6:0] add_ln97_fu_466_p2;
reg   [6:0] add_ln97_reg_948;
wire   [6:0] select_ln97_fu_488_p3;
reg   [6:0] select_ln97_reg_953;
wire   [11:0] zext_ln97_fu_506_p1;
reg   [11:0] zext_ln97_reg_958;
wire   [0:0] trunc_ln97_1_fu_510_p1;
reg   [0:0] trunc_ln97_1_reg_968;
wire   [0:0] cmp7_fu_530_p2;
reg   [0:0] cmp7_reg_973;
reg   [0:0] cmp7_reg_973_pp0_iter1_reg;
wire   [4:0] lshr_ln1_fu_555_p4;
reg   [4:0] lshr_ln1_reg_1000;
reg   [3:0] lshr_ln98_1_reg_1005;
wire   [0:0] trunc_ln114_fu_594_p1;
reg   [0:0] trunc_ln114_reg_1018;
reg   [2:0] tmp_9_reg_1024;
wire   [1:0] trunc_ln128_fu_608_p1;
reg   [1:0] trunc_ln128_reg_1035;
reg   [0:0] tmp_3_reg_1040;
wire   [31:0] v65_v_fu_625_p3;
reg   [31:0] v65_v_reg_1046;
wire   [31:0] v65_fu_669_p1;
reg   [31:0] v65_reg_1061;
wire   [31:0] v64_fu_674_p1;
wire   [31:0] v71_fu_679_p1;
reg   [4:0] v58_0_addr_reg_1092;
reg   [4:0] v58_0_addr_reg_1092_pp0_iter2_reg;
reg   [4:0] v58_0_addr_reg_1092_pp0_iter3_reg;
reg   [4:0] v58_1_addr_reg_1102;
reg   [4:0] v58_1_addr_reg_1102_pp0_iter2_reg;
reg   [4:0] v58_1_addr_reg_1102_pp0_iter3_reg;
reg   [4:0] v58_0_addr_1_reg_1112;
reg   [4:0] v58_0_addr_1_reg_1112_pp0_iter2_reg;
reg   [4:0] v58_0_addr_1_reg_1112_pp0_iter3_reg;
wire   [31:0] v77_fu_749_p1;
reg   [4:0] v58_1_addr_1_reg_1128;
reg   [4:0] v58_1_addr_1_reg_1128_pp0_iter2_reg;
reg   [4:0] v58_1_addr_1_reg_1128_pp0_iter3_reg;
wire   [31:0] v83_fu_754_p1;
wire   [63:0] zext_ln128_1_fu_766_p1;
reg   [63:0] zext_ln128_1_reg_1139;
wire   [31:0] v63_fu_819_p3;
reg   [31:0] v63_reg_1165;
reg   [4:0] v58_0_addr_2_reg_1170;
reg   [4:0] v58_0_addr_2_reg_1170_pp0_iter2_reg;
reg   [4:0] v58_0_addr_2_reg_1170_pp0_iter3_reg;
reg   [4:0] v58_0_addr_2_reg_1170_pp0_iter4_reg;
wire   [31:0] v89_fu_840_p1;
reg   [4:0] v58_1_addr_2_reg_1181;
reg   [4:0] v58_1_addr_2_reg_1181_pp0_iter2_reg;
reg   [4:0] v58_1_addr_2_reg_1181_pp0_iter3_reg;
reg   [4:0] v58_1_addr_2_reg_1181_pp0_iter4_reg;
wire   [31:0] v95_fu_845_p1;
reg   [4:0] v58_0_addr_3_reg_1192;
reg   [4:0] v58_0_addr_3_reg_1192_pp0_iter2_reg;
reg   [4:0] v58_0_addr_3_reg_1192_pp0_iter3_reg;
reg   [4:0] v58_0_addr_3_reg_1192_pp0_iter4_reg;
reg   [31:0] v86_reg_1197;
reg   [31:0] v92_reg_1202;
reg   [4:0] v58_1_addr_3_reg_1207;
reg   [4:0] v58_1_addr_3_reg_1207_pp0_iter2_reg;
reg   [4:0] v58_1_addr_3_reg_1207_pp0_iter3_reg;
reg   [4:0] v58_1_addr_3_reg_1207_pp0_iter4_reg;
wire   [31:0] v70_fu_863_p3;
reg   [31:0] v70_reg_1212;
wire   [31:0] v76_fu_870_p3;
reg   [31:0] v76_reg_1217;
wire   [31:0] v82_fu_877_p3;
reg   [31:0] v82_reg_1222;
reg   [31:0] v66_reg_1227;
reg   [31:0] v72_reg_1232;
wire   [31:0] v101_fu_884_p1;
wire   [31:0] v107_fu_889_p1;
wire   [31:0] v88_fu_894_p3;
reg   [31:0] v88_reg_1247;
wire   [31:0] v94_fu_900_p3;
reg   [31:0] v94_reg_1252;
reg   [31:0] v99_reg_1257;
reg   [31:0] v105_reg_1262;
reg   [31:0] v78_reg_1267;
reg   [31:0] v84_reg_1272;
reg   [31:0] v90_reg_1277;
reg   [31:0] v96_reg_1282;
reg   [31:0] v102_reg_1297;
reg   [31:0] v108_reg_1302;
wire   [31:0] v100_fu_906_p3;
reg   [31:0] v100_reg_1307;
wire   [31:0] v106_fu_912_p3;
reg   [31:0] v106_reg_1312;
reg   [31:0] v91_reg_1317;
reg   [31:0] v97_reg_1322;
reg   [31:0] v103_reg_1327;
reg   [31:0] v109_reg_1332;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln97_1_fu_524_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln102_fu_550_p1;
wire   [63:0] zext_ln110_fu_589_p1;
wire   [63:0] zext_ln117_fu_647_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_664_p1;
wire   [63:0] zext_ln131_fu_699_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_719_p1;
wire   [63:0] zext_ln98_1_fu_729_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln98_fu_724_p1;
wire   [63:0] zext_ln114_fu_743_p1;
wire   [63:0] zext_ln145_fu_787_p1;
wire   [63:0] zext_ln152_fu_804_p1;
wire   [63:0] zext_ln128_fu_834_p1;
wire   [63:0] zext_ln142_fu_857_p1;
reg   [6:0] v60_fu_106;
wire   [6:0] add_ln98_fu_809_p2;
wire    ap_loop_init;
reg   [6:0] v59_fu_110;
wire   [6:0] select_ln97_1_fu_500_p3;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_114;
wire   [9:0] add_ln97_1_fu_457_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v115_0_ce0_local;
reg    v115_1_ce0_local;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
reg    v57_0_ce1_local;
reg    v57_0_ce0_local;
reg    v58_0_ce1_local;
reg   [4:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [4:0] v58_0_address0_local;
reg    v58_0_we1_local;
reg    v58_0_we0_local;
reg   [31:0] v58_0_d0_local;
reg    v57_1_ce1_local;
reg    v57_1_ce0_local;
reg    v57_2_ce1_local;
reg    v57_2_ce0_local;
reg    v57_3_ce1_local;
reg    v57_3_ce0_local;
reg    v58_1_ce1_local;
reg   [4:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [4:0] v58_1_address0_local;
reg    v58_1_we1_local;
reg    v58_1_we0_local;
reg   [31:0] v58_1_d0_local;
reg   [31:0] grp_fu_399_p0;
reg   [31:0] grp_fu_399_p1;
reg   [31:0] grp_fu_403_p0;
reg   [31:0] grp_fu_403_p1;
reg   [31:0] grp_fu_407_p0;
reg   [31:0] grp_fu_407_p1;
reg   [31:0] grp_fu_411_p0;
reg   [31:0] grp_fu_411_p1;
wire   [0:0] tmp_1_fu_480_p3;
wire   [4:0] lshr_ln_fu_514_p4;
wire   [5:0] trunc_ln97_fu_496_p1;
wire   [11:0] tmp_fu_536_p3;
wire   [11:0] add_ln102_fu_544_p2;
wire   [11:0] tmp_2_fu_575_p3;
wire   [11:0] add_ln110_fu_583_p2;
wire   [11:0] tmp_5_fu_632_p5;
wire   [11:0] add_ln117_fu_642_p2;
wire   [11:0] tmp_8_fu_652_p3;
wire   [11:0] add_ln124_fu_659_p2;
wire   [11:0] tmp_s_fu_684_p5;
wire   [11:0] add_ln131_fu_694_p2;
wire   [11:0] tmp_4_fu_704_p5;
wire   [11:0] add_ln138_fu_714_p2;
wire   [4:0] or_ln114_1_fu_736_p3;
wire   [3:0] or_ln128_2_fu_759_p3;
wire   [11:0] tmp_6_fu_772_p5;
wire   [11:0] add_ln145_fu_782_p2;
wire   [11:0] tmp_7_fu_792_p3;
wire   [11:0] add_ln152_fu_799_p2;
wire   [4:0] or_ln128_1_fu_826_p4;
wire   [4:0] or_ln142_1_fu_850_p3;
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
#0 v60_fu_106 = 7'd0;
#0 v59_fu_110 = 7'd0;
#0 indvar_flatten_fu_114 = 10'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_451_p2 == 1'd0))) begin
            indvar_flatten_fu_114 <= add_ln97_1_fu_457_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_114 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v59_fu_110 <= 7'd0;
    end else if (((icmp_ln97_reg_939 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v59_fu_110 <= select_ln97_1_fu_500_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v60_fu_106 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v60_fu_106 <= add_ln98_fu_809_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln97_reg_948 <= add_ln97_fu_466_p2;
        icmp_ln97_reg_939 <= icmp_ln97_fu_451_p2;
        v58_0_addr_1_reg_1112[4 : 1] <= zext_ln114_fu_743_p1[4 : 1];
        v58_0_addr_1_reg_1112_pp0_iter2_reg[4 : 1] <= v58_0_addr_1_reg_1112[4 : 1];
        v58_0_addr_1_reg_1112_pp0_iter3_reg[4 : 1] <= v58_0_addr_1_reg_1112_pp0_iter2_reg[4 : 1];
        v58_0_addr_reg_1092 <= zext_ln98_fu_724_p1;
        v58_0_addr_reg_1092_pp0_iter2_reg <= v58_0_addr_reg_1092;
        v58_0_addr_reg_1092_pp0_iter3_reg <= v58_0_addr_reg_1092_pp0_iter2_reg;
        v58_1_addr_1_reg_1128[4 : 1] <= zext_ln114_fu_743_p1[4 : 1];
        v58_1_addr_1_reg_1128_pp0_iter2_reg[4 : 1] <= v58_1_addr_1_reg_1128[4 : 1];
        v58_1_addr_1_reg_1128_pp0_iter3_reg[4 : 1] <= v58_1_addr_1_reg_1128_pp0_iter2_reg[4 : 1];
        v58_1_addr_reg_1102 <= zext_ln98_fu_724_p1;
        v58_1_addr_reg_1102_pp0_iter2_reg <= v58_1_addr_reg_1102;
        v58_1_addr_reg_1102_pp0_iter3_reg <= v58_1_addr_reg_1102_pp0_iter2_reg;
        v59_load_reg_943 <= ap_sig_allocacmp_v59_load;
        zext_ln128_1_reg_1139[3 : 1] <= zext_ln128_1_fu_766_p1[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        v65_reg_1061 <= v65_fu_669_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_973 <= cmp7_fu_530_p2;
        cmp7_reg_973_pp0_iter1_reg <= cmp7_reg_973;
        lshr_ln1_reg_1000 <= {{select_ln97_fu_488_p3[5:1]}};
        lshr_ln98_1_reg_1005 <= {{select_ln97_fu_488_p3[5:2]}};
        select_ln97_reg_953 <= select_ln97_fu_488_p3;
        tmp_3_reg_1040 <= select_ln97_fu_488_p3[32'd1];
        tmp_9_reg_1024 <= {{select_ln97_fu_488_p3[5:3]}};
        trunc_ln114_reg_1018 <= trunc_ln114_fu_594_p1;
        trunc_ln128_reg_1035 <= trunc_ln128_fu_608_p1;
        trunc_ln97_1_reg_968 <= trunc_ln97_1_fu_510_p1;
        v100_reg_1307 <= v100_fu_906_p3;
        v106_reg_1312 <= v106_fu_912_p3;
        v58_0_addr_2_reg_1170[0] <= zext_ln128_fu_834_p1[0];
v58_0_addr_2_reg_1170[4 : 2] <= zext_ln128_fu_834_p1[4 : 2];
        v58_0_addr_2_reg_1170_pp0_iter2_reg[0] <= v58_0_addr_2_reg_1170[0];
v58_0_addr_2_reg_1170_pp0_iter2_reg[4 : 2] <= v58_0_addr_2_reg_1170[4 : 2];
        v58_0_addr_2_reg_1170_pp0_iter3_reg[0] <= v58_0_addr_2_reg_1170_pp0_iter2_reg[0];
v58_0_addr_2_reg_1170_pp0_iter3_reg[4 : 2] <= v58_0_addr_2_reg_1170_pp0_iter2_reg[4 : 2];
        v58_0_addr_2_reg_1170_pp0_iter4_reg[0] <= v58_0_addr_2_reg_1170_pp0_iter3_reg[0];
v58_0_addr_2_reg_1170_pp0_iter4_reg[4 : 2] <= v58_0_addr_2_reg_1170_pp0_iter3_reg[4 : 2];
        v58_0_addr_3_reg_1192[4 : 2] <= zext_ln142_fu_857_p1[4 : 2];
        v58_0_addr_3_reg_1192_pp0_iter2_reg[4 : 2] <= v58_0_addr_3_reg_1192[4 : 2];
        v58_0_addr_3_reg_1192_pp0_iter3_reg[4 : 2] <= v58_0_addr_3_reg_1192_pp0_iter2_reg[4 : 2];
        v58_0_addr_3_reg_1192_pp0_iter4_reg[4 : 2] <= v58_0_addr_3_reg_1192_pp0_iter3_reg[4 : 2];
        v58_1_addr_2_reg_1181[0] <= zext_ln128_fu_834_p1[0];
v58_1_addr_2_reg_1181[4 : 2] <= zext_ln128_fu_834_p1[4 : 2];
        v58_1_addr_2_reg_1181_pp0_iter2_reg[0] <= v58_1_addr_2_reg_1181[0];
v58_1_addr_2_reg_1181_pp0_iter2_reg[4 : 2] <= v58_1_addr_2_reg_1181[4 : 2];
        v58_1_addr_2_reg_1181_pp0_iter3_reg[0] <= v58_1_addr_2_reg_1181_pp0_iter2_reg[0];
v58_1_addr_2_reg_1181_pp0_iter3_reg[4 : 2] <= v58_1_addr_2_reg_1181_pp0_iter2_reg[4 : 2];
        v58_1_addr_2_reg_1181_pp0_iter4_reg[0] <= v58_1_addr_2_reg_1181_pp0_iter3_reg[0];
v58_1_addr_2_reg_1181_pp0_iter4_reg[4 : 2] <= v58_1_addr_2_reg_1181_pp0_iter3_reg[4 : 2];
        v58_1_addr_3_reg_1207[4 : 2] <= zext_ln142_fu_857_p1[4 : 2];
        v58_1_addr_3_reg_1207_pp0_iter2_reg[4 : 2] <= v58_1_addr_3_reg_1207[4 : 2];
        v58_1_addr_3_reg_1207_pp0_iter3_reg[4 : 2] <= v58_1_addr_3_reg_1207_pp0_iter2_reg[4 : 2];
        v58_1_addr_3_reg_1207_pp0_iter4_reg[4 : 2] <= v58_1_addr_3_reg_1207_pp0_iter3_reg[4 : 2];
        v63_reg_1165 <= v63_fu_819_p3;
        v70_reg_1212 <= v70_fu_863_p3;
        v76_reg_1217 <= v76_fu_870_p3;
        v82_reg_1222 <= v82_fu_877_p3;
        zext_ln97_reg_958[6 : 0] <= zext_ln97_fu_506_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_415 <= v114_q1;
        reg_419 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_423 <= grp_fu_140_p_dout0;
        reg_428 <= grp_fu_144_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1297 <= grp_fu_148_p_dout0;
        v108_reg_1302 <= grp_fu_152_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v103_reg_1327 <= grp_fu_140_p_dout0;
        v109_reg_1332 <= grp_fu_144_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v105_reg_1262 <= v58_1_q0;
        v66_reg_1227 <= grp_fu_148_p_dout0;
        v72_reg_1232 <= grp_fu_152_p_dout0;
        v99_reg_1257 <= v58_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_v_reg_1046 <= v65_v_fu_625_p3;
        v88_reg_1247 <= v88_fu_894_p3;
        v94_reg_1252 <= v94_fu_900_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1267 <= grp_fu_148_p_dout0;
        v84_reg_1272 <= grp_fu_152_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v86_reg_1197 <= v57_0_q0;
        v92_reg_1202 <= v57_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1277 <= grp_fu_148_p_dout0;
        v96_reg_1282 <= grp_fu_152_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v91_reg_1317 <= grp_fu_140_p_dout0;
        v97_reg_1322 <= grp_fu_144_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_939 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v59_load = v59_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_399_p0 = v100_reg_1307;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_399_p0 = v88_reg_1247;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_399_p0 = v76_reg_1217;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_399_p0 = v63_reg_1165;
    end else begin
        grp_fu_399_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_399_p1 = v102_reg_1297;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_399_p1 = v90_reg_1277;
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
        grp_fu_403_p0 = v106_reg_1312;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p0 = v94_reg_1252;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_403_p0 = v82_reg_1222;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_403_p0 = v70_reg_1212;
    end else begin
        grp_fu_403_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_403_p1 = v108_reg_1302;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p1 = v96_reg_1282;
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
        grp_fu_407_p0 = v101_fu_884_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_407_p0 = v89_fu_840_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_407_p0 = v77_fu_749_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p0 = v64_fu_674_p1;
    end else begin
        grp_fu_407_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_407_p1 = v65_reg_1061;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p1 = v65_fu_669_p1;
    end else begin
        grp_fu_407_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p0 = v107_fu_889_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_411_p0 = v95_fu_845_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_411_p0 = v83_fu_754_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p0 = v71_fu_679_p1;
    end else begin
        grp_fu_411_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_411_p1 = v65_reg_1061;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p1 = v65_fu_669_p1;
    end else begin
        grp_fu_411_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address0_local = zext_ln152_fu_804_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address0_local = zext_ln138_fu_719_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address0_local = zext_ln124_fu_664_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address0_local = zext_ln110_fu_589_p1;
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address1_local = zext_ln145_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address1_local = zext_ln131_fu_699_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address1_local = zext_ln117_fu_647_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address1_local = zext_ln102_fu_550_p1;
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
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address0_local = v58_0_addr_3_reg_1192_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_2_reg_1170_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = zext_ln142_fu_857_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln114_fu_743_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_1_reg_1112_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address1_local = v58_0_addr_reg_1092_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address1_local = zext_ln128_fu_834_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_fu_724_p1;
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
            v58_0_d0_local = v103_reg_1327;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v58_0_d0_local = v91_reg_1317;
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
        v58_1_address0_local = v58_1_addr_3_reg_1207_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_2_reg_1181_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = zext_ln142_fu_857_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln114_fu_743_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_1_reg_1128_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address1_local = v58_1_addr_reg_1102_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address1_local = zext_ln128_fu_834_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_fu_724_p1;
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
            v58_1_d0_local = v109_reg_1332;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v58_1_d0_local = v97_reg_1322;
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
assign add_ln102_fu_544_p2 = (tmp_fu_536_p3 + zext_ln97_fu_506_p1);
assign add_ln110_fu_583_p2 = (tmp_2_fu_575_p3 + zext_ln97_fu_506_p1);
assign add_ln117_fu_642_p2 = (tmp_5_fu_632_p5 + zext_ln97_reg_958);
assign add_ln124_fu_659_p2 = (tmp_8_fu_652_p3 + zext_ln97_reg_958);
assign add_ln131_fu_694_p2 = (tmp_s_fu_684_p5 + zext_ln97_reg_958);
assign add_ln138_fu_714_p2 = (tmp_4_fu_704_p5 + zext_ln97_reg_958);
assign add_ln145_fu_782_p2 = (tmp_6_fu_772_p5 + zext_ln97_reg_958);
assign add_ln152_fu_799_p2 = (tmp_7_fu_792_p3 + zext_ln97_reg_958);
assign add_ln97_1_fu_457_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_466_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_809_p2 = (select_ln97_reg_953 + 7'd8);
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
assign cmp7_fu_530_p2 = ((select_ln97_1_fu_500_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_140_p_ce = 1'b1;
assign grp_fu_140_p_din0 = grp_fu_399_p0;
assign grp_fu_140_p_din1 = grp_fu_399_p1;
assign grp_fu_140_p_opcode = 2'd0;
assign grp_fu_144_p_ce = 1'b1;
assign grp_fu_144_p_din0 = grp_fu_403_p0;
assign grp_fu_144_p_din1 = grp_fu_403_p1;
assign grp_fu_144_p_opcode = 2'd0;
assign grp_fu_148_p_ce = 1'b1;
assign grp_fu_148_p_din0 = grp_fu_407_p0;
assign grp_fu_148_p_din1 = grp_fu_407_p1;
assign grp_fu_152_p_ce = 1'b1;
assign grp_fu_152_p_din0 = grp_fu_411_p0;
assign grp_fu_152_p_din1 = grp_fu_411_p1;
assign icmp_ln97_fu_451_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_555_p4 = {{select_ln97_fu_488_p3[5:1]}};
assign lshr_ln_fu_514_p4 = {{select_ln97_1_fu_500_p3[5:1]}};
assign or_ln114_1_fu_736_p3 = {{lshr_ln98_1_reg_1005}, {1'd1}};
assign or_ln128_1_fu_826_p4 = {{{tmp_9_reg_1024}, {1'd1}}, {tmp_3_reg_1040}};
assign or_ln128_2_fu_759_p3 = {{tmp_9_reg_1024}, {1'd1}};
assign or_ln142_1_fu_850_p3 = {{tmp_9_reg_1024}, {2'd3}};
assign select_ln97_1_fu_500_p3 = ((tmp_1_fu_480_p3[0:0] == 1'b1) ? add_ln97_reg_948 : v59_load_reg_943);
assign select_ln97_fu_488_p3 = ((tmp_1_fu_480_p3[0:0] == 1'b1) ? 7'd0 : v60_fu_106);
assign tmp_1_fu_480_p3 = v60_fu_106[32'd6];
assign tmp_2_fu_575_p3 = {{lshr_ln1_fu_555_p4}, {7'd64}};
assign tmp_4_fu_704_p5 = {{{{tmp_9_reg_1024}, {1'd1}}, {tmp_3_reg_1040}}, {7'd64}};
assign tmp_5_fu_632_p5 = {{{{lshr_ln98_1_reg_1005}, {1'd1}}, {trunc_ln114_reg_1018}}, {6'd0}};
assign tmp_6_fu_772_p5 = {{{{tmp_9_reg_1024}, {2'd3}}, {trunc_ln114_reg_1018}}, {6'd0}};
assign tmp_7_fu_792_p3 = {{tmp_9_reg_1024}, {9'd448}};
assign tmp_8_fu_652_p3 = {{lshr_ln98_1_reg_1005}, {8'd192}};
assign tmp_fu_536_p3 = {{trunc_ln97_fu_496_p1}, {6'd0}};
assign tmp_s_fu_684_p5 = {{{{tmp_9_reg_1024}, {1'd1}}, {trunc_ln128_reg_1035}}, {6'd0}};
assign trunc_ln114_fu_594_p1 = select_ln97_fu_488_p3[0:0];
assign trunc_ln128_fu_608_p1 = select_ln97_fu_488_p3[1:0];
assign trunc_ln97_1_fu_510_p1 = select_ln97_1_fu_500_p3[0:0];
assign trunc_ln97_fu_496_p1 = select_ln97_fu_488_p3[5:0];
assign v100_fu_906_p3 = ((cmp7_reg_973_pp0_iter1_reg[0:0] == 1'b1) ? v57_2_q0 : v99_reg_1257);
assign v101_fu_884_p1 = reg_415;
assign v106_fu_912_p3 = ((cmp7_reg_973_pp0_iter1_reg[0:0] == 1'b1) ? v57_3_q0 : v105_reg_1262);
assign v107_fu_889_p1 = reg_419;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_0_address0 = zext_ln97_1_fu_524_p1;
assign v115_0_ce0 = v115_0_ce0_local;
assign v115_1_address0 = zext_ln97_1_fu_524_p1;
assign v115_1_ce0 = v115_1_ce0_local;
assign v57_0_address0 = zext_ln128_1_fu_766_p1;
assign v57_0_address1 = zext_ln98_1_fu_729_p1;
assign v57_0_ce0 = v57_0_ce0_local;
assign v57_0_ce1 = v57_0_ce1_local;
assign v57_1_address0 = zext_ln128_1_fu_766_p1;
assign v57_1_address1 = zext_ln98_1_fu_729_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_1_ce1 = v57_1_ce1_local;
assign v57_2_address0 = zext_ln128_1_reg_1139;
assign v57_2_address1 = zext_ln98_1_fu_729_p1;
assign v57_2_ce0 = v57_2_ce0_local;
assign v57_2_ce1 = v57_2_ce1_local;
assign v57_3_address0 = zext_ln128_1_reg_1139;
assign v57_3_address1 = zext_ln98_1_fu_729_p1;
assign v57_3_ce0 = v57_3_ce0_local;
assign v57_3_ce1 = v57_3_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = v58_0_d0_local;
assign v58_0_d1 = reg_423;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = v58_1_d0_local;
assign v58_1_d1 = reg_428;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v63_fu_819_p3 = ((cmp7_reg_973[0:0] == 1'b1) ? v57_0_q1 : v58_0_q1);
assign v64_fu_674_p1 = reg_415;
assign v65_fu_669_p1 = v65_v_reg_1046;
assign v65_v_fu_625_p3 = ((trunc_ln97_1_reg_968[0:0] == 1'b1) ? v115_1_q0 : v115_0_q0);
assign v70_fu_863_p3 = ((cmp7_reg_973[0:0] == 1'b1) ? v57_1_q1 : v58_1_q1);
assign v71_fu_679_p1 = reg_419;
assign v76_fu_870_p3 = ((cmp7_reg_973[0:0] == 1'b1) ? v57_2_q1 : v58_0_q0);
assign v77_fu_749_p1 = reg_415;
assign v82_fu_877_p3 = ((cmp7_reg_973[0:0] == 1'b1) ? v57_3_q1 : v58_1_q0);
assign v83_fu_754_p1 = reg_419;
assign v88_fu_894_p3 = ((cmp7_reg_973_pp0_iter1_reg[0:0] == 1'b1) ? v86_reg_1197 : v58_0_q1);
assign v89_fu_840_p1 = reg_415;
assign v94_fu_900_p3 = ((cmp7_reg_973_pp0_iter1_reg[0:0] == 1'b1) ? v92_reg_1202 : v58_1_q1);
assign v95_fu_845_p1 = reg_419;
assign zext_ln102_fu_550_p1 = add_ln102_fu_544_p2;
assign zext_ln110_fu_589_p1 = add_ln110_fu_583_p2;
assign zext_ln114_fu_743_p1 = or_ln114_1_fu_736_p3;
assign zext_ln117_fu_647_p1 = add_ln117_fu_642_p2;
assign zext_ln124_fu_664_p1 = add_ln124_fu_659_p2;
assign zext_ln128_1_fu_766_p1 = or_ln128_2_fu_759_p3;
assign zext_ln128_fu_834_p1 = or_ln128_1_fu_826_p4;
assign zext_ln131_fu_699_p1 = add_ln131_fu_694_p2;
assign zext_ln138_fu_719_p1 = add_ln138_fu_714_p2;
assign zext_ln142_fu_857_p1 = or_ln142_1_fu_850_p3;
assign zext_ln145_fu_787_p1 = add_ln145_fu_782_p2;
assign zext_ln152_fu_804_p1 = add_ln152_fu_799_p2;
assign zext_ln97_1_fu_524_p1 = lshr_ln_fu_514_p4;
assign zext_ln97_fu_506_p1 = select_ln97_1_fu_500_p3;
assign zext_ln98_1_fu_729_p1 = lshr_ln98_1_reg_1005;
assign zext_ln98_fu_724_p1 = lshr_ln1_reg_1000;
always @ (posedge ap_clk) begin
    zext_ln97_reg_958[11:7] <= 5'b00000;
    v58_0_addr_1_reg_1112[0] <= 1'b1;
    v58_0_addr_1_reg_1112_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_1112_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1128[0] <= 1'b1;
    v58_1_addr_1_reg_1128_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1128_pp0_iter3_reg[0] <= 1'b1;
    zext_ln128_1_reg_1139[0] <= 1'b1;
    zext_ln128_1_reg_1139[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    v58_0_addr_2_reg_1170[1] <= 1'b1;
    v58_0_addr_2_reg_1170_pp0_iter2_reg[1] <= 1'b1;
    v58_0_addr_2_reg_1170_pp0_iter3_reg[1] <= 1'b1;
    v58_0_addr_2_reg_1170_pp0_iter4_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1181[1] <= 1'b1;
    v58_1_addr_2_reg_1181_pp0_iter2_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1181_pp0_iter3_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1181_pp0_iter4_reg[1] <= 1'b1;
    v58_0_addr_3_reg_1192[1:0] <= 2'b11;
    v58_0_addr_3_reg_1192_pp0_iter2_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1192_pp0_iter3_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1192_pp0_iter4_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1207[1:0] <= 2'b11;
    v58_1_addr_3_reg_1207_pp0_iter2_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1207_pp0_iter3_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1207_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 