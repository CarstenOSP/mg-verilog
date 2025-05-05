module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_address0,v115_ce0,v115_q0,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_4_address0,v58_4_ce0,v58_4_we0,v58_4_d0,v58_4_address1,v58_4_ce1,v58_4_q1,v58_5_address0,v58_5_ce0,v58_5_we0,v58_5_d0,v58_5_address1,v58_5_ce1,v58_5_q1,v58_6_address0,v58_6_ce0,v58_6_we0,v58_6_d0,v58_6_q0,v58_7_address0,v58_7_ce0,v58_7_we0,v58_7_d0,v58_7_q0,grp_fu_111_p_din0,grp_fu_111_p_din1,grp_fu_111_p_opcode,grp_fu_111_p_dout0,grp_fu_111_p_ce,grp_fu_115_p_din0,grp_fu_115_p_din1,grp_fu_115_p_dout0,grp_fu_115_p_ce); 
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
output  [31:0] grp_fu_111_p_din0;
output  [31:0] grp_fu_111_p_din1;
output  [1:0] grp_fu_111_p_opcode;
input  [31:0] grp_fu_111_p_dout0;
output   grp_fu_111_p_ce;
output  [31:0] grp_fu_115_p_din0;
output  [31:0] grp_fu_115_p_din1;
input  [31:0] grp_fu_115_p_dout0;
output   grp_fu_115_p_ce;
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
reg   [0:0] icmp_ln97_reg_958;
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
wire   [31:0] grp_fu_403_p2;
reg   [31:0] reg_431;
wire   [0:0] icmp_ln97_fu_457_p2;
reg   [0:0] icmp_ln97_reg_958_pp0_iter1_reg;
reg   [0:0] icmp_ln97_reg_958_pp0_iter2_reg;
reg   [0:0] icmp_ln97_reg_958_pp0_iter3_reg;
wire   [6:0] select_ln97_fu_489_p3;
reg   [6:0] select_ln97_reg_962;
wire   [5:0] trunc_ln97_fu_497_p1;
reg   [5:0] trunc_ln97_reg_967;
wire   [6:0] select_ln97_1_fu_501_p3;
reg   [6:0] select_ln97_1_reg_972;
reg   [2:0] lshr_ln_reg_979;
wire   [4:0] tmp_1_fu_524_p4;
reg   [4:0] tmp_1_reg_997;
reg   [3:0] tmp_3_reg_1007;
wire   [0:0] trunc_ln114_fu_557_p1;
reg   [0:0] trunc_ln114_reg_1015;
wire   [1:0] trunc_ln128_fu_561_p1;
reg   [1:0] trunc_ln128_reg_1023;
reg   [0:0] tmp_6_reg_1029;
wire   [11:0] select_ln97_1_cast_fu_587_p1;
reg   [11:0] select_ln97_1_cast_reg_1035;
wire   [0:0] cmp7_fu_590_p2;
reg   [0:0] cmp7_reg_1045;
reg   [0:0] cmp7_reg_1045_pp0_iter1_reg;
reg   [31:0] v61_reg_1067;
reg   [31:0] v68_reg_1077;
reg   [31:0] v115_load_reg_1092;
reg   [31:0] v74_reg_1102;
reg   [31:0] v80_reg_1112;
wire   [31:0] v65_fu_721_p1;
reg   [31:0] v65_reg_1127;
wire   [31:0] v64_fu_726_p1;
wire   [31:0] v71_fu_731_p1;
reg   [31:0] v86_reg_1148;
reg   [31:0] v92_reg_1158;
reg   [2:0] v58_0_addr_reg_1173;
reg   [2:0] v58_0_addr_reg_1173_pp0_iter2_reg;
reg   [2:0] v58_0_addr_reg_1173_pp0_iter3_reg;
reg   [2:0] v58_1_addr_reg_1178;
reg   [2:0] v58_1_addr_reg_1178_pp0_iter2_reg;
reg   [2:0] v58_1_addr_reg_1178_pp0_iter3_reg;
reg   [2:0] v58_2_addr_reg_1183;
reg   [2:0] v58_2_addr_reg_1183_pp0_iter2_reg;
reg   [2:0] v58_2_addr_reg_1183_pp0_iter3_reg;
wire   [31:0] v77_fu_822_p1;
reg   [2:0] v58_3_addr_reg_1193;
reg   [2:0] v58_3_addr_reg_1193_pp0_iter2_reg;
reg   [2:0] v58_3_addr_reg_1193_pp0_iter3_reg;
wire   [31:0] v83_fu_827_p1;
reg   [2:0] v58_4_addr_reg_1203;
reg   [2:0] v58_4_addr_reg_1203_pp0_iter2_reg;
reg   [2:0] v58_4_addr_reg_1203_pp0_iter3_reg;
reg   [2:0] v58_5_addr_reg_1209;
reg   [2:0] v58_5_addr_reg_1209_pp0_iter2_reg;
reg   [2:0] v58_5_addr_reg_1209_pp0_iter3_reg;
reg   [31:0] v98_reg_1220;
reg   [31:0] v98_reg_1220_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_1225;
reg   [2:0] v58_6_addr_reg_1225_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_1225_pp0_iter3_reg;
reg   [2:0] v58_6_addr_reg_1225_pp0_iter4_reg;
reg   [31:0] v104_reg_1235;
reg   [31:0] v104_reg_1235_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_1240;
reg   [2:0] v58_7_addr_reg_1240_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_1240_pp0_iter3_reg;
reg   [2:0] v58_7_addr_reg_1240_pp0_iter4_reg;
wire   [31:0] v63_fu_869_p3;
reg   [31:0] v63_reg_1245;
wire   [31:0] v89_fu_875_p1;
wire   [31:0] v95_fu_880_p1;
wire   [31:0] v70_fu_885_p3;
reg   [31:0] v70_reg_1260;
wire   [31:0] v76_fu_891_p3;
reg   [31:0] v76_reg_1265;
wire   [31:0] v82_fu_897_p3;
reg   [31:0] v82_reg_1270;
wire   [31:0] v88_fu_903_p3;
reg   [31:0] v88_reg_1275;
wire   [31:0] v94_fu_909_p3;
reg   [31:0] v94_reg_1280;
reg   [31:0] v66_reg_1285;
wire   [31:0] grp_fu_411_p2;
reg   [31:0] v72_reg_1290;
wire   [31:0] v101_fu_915_p1;
wire   [31:0] v107_fu_920_p1;
reg   [31:0] v78_reg_1305;
reg   [31:0] v84_reg_1310;
reg   [31:0] v90_reg_1315;
reg   [31:0] v96_reg_1320;
reg   [31:0] v102_reg_1325;
reg   [31:0] v108_reg_1330;
wire   [31:0] v100_fu_925_p3;
reg   [31:0] v100_reg_1335;
wire   [31:0] v106_fu_931_p3;
reg   [31:0] v106_reg_1340;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln98_fu_509_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln107_fu_542_p1;
wire   [63:0] zext_ln97_fu_583_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln102_fu_608_p1;
wire   [63:0] zext_ln110_fu_626_p1;
wire   [63:0] zext_ln114_fu_639_p1;
wire   [63:0] zext_ln121_fu_651_p1;
wire   [63:0] zext_ln117_fu_671_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_688_p1;
wire   [63:0] zext_ln128_fu_701_p1;
wire   [63:0] zext_ln135_fu_716_p1;
wire   [63:0] zext_ln131_fu_751_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_771_p1;
wire   [63:0] zext_ln142_fu_784_p1;
wire   [63:0] zext_ln149_fu_796_p1;
wire   [63:0] zext_ln98_1_fu_811_p1;
wire   [63:0] zext_ln145_fu_847_p1;
wire   [63:0] zext_ln152_fu_864_p1;
reg   [6:0] v60_fu_118;
wire   [6:0] add_ln98_fu_801_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_load;
reg   [6:0] v59_fu_122;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_126;
wire   [9:0] add_ln97_1_fu_463_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v57_ce1_local;
reg   [5:0] v57_address1_local;
reg    v57_ce0_local;
reg   [5:0] v57_address0_local;
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
reg   [31:0] grp_fu_399_p0;
reg   [31:0] grp_fu_399_p1;
reg   [31:0] grp_fu_403_p0;
reg   [31:0] grp_fu_403_p1;
reg   [31:0] grp_fu_407_p0;
reg   [31:0] grp_fu_407_p1;
reg   [31:0] grp_fu_411_p0;
reg   [31:0] grp_fu_411_p1;
wire   [0:0] tmp_4_fu_481_p3;
wire   [6:0] add_ln97_fu_475_p2;
wire   [5:0] or_ln_fu_534_p3;
wire   [11:0] tmp_fu_595_p3;
wire   [11:0] add_ln102_fu_602_p2;
wire   [11:0] tmp_2_fu_613_p3;
wire   [11:0] add_ln110_fu_620_p2;
wire   [5:0] or_ln1_fu_631_p4;
wire   [5:0] or_ln2_fu_644_p3;
wire   [11:0] tmp_5_fu_656_p5;
wire   [11:0] add_ln117_fu_666_p2;
wire   [11:0] tmp_7_fu_676_p3;
wire   [11:0] add_ln124_fu_683_p2;
wire   [5:0] or_ln3_fu_693_p4;
wire   [5:0] or_ln4_fu_706_p5;
wire   [11:0] tmp_s_fu_736_p5;
wire   [11:0] add_ln131_fu_746_p2;
wire   [11:0] tmp_8_fu_756_p5;
wire   [11:0] add_ln138_fu_766_p2;
wire   [5:0] or_ln5_fu_776_p4;
wire   [5:0] or_ln6_fu_789_p3;
wire   [11:0] tmp_9_fu_832_p5;
wire   [11:0] add_ln145_fu_842_p2;
wire   [11:0] tmp_10_fu_852_p3;
wire   [11:0] add_ln152_fu_859_p2;
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
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_403_p0),.din1(grp_fu_403_p1),.ce(1'b1),.dout(grp_fu_403_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_411_p0),.din1(grp_fu_411_p1),.ce(1'b1),.dout(grp_fu_411_p2));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_457_p2 == 1'd0))) begin
            v59_fu_122 <= select_ln97_1_fu_501_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v59_fu_122 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v60_fu_118 <= 7'd0;
    end else if (((icmp_ln97_reg_958 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v60_fu_118 <= add_ln98_fu_801_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_1045 <= cmp7_fu_590_p2;
        cmp7_reg_1045_pp0_iter1_reg <= cmp7_reg_1045;
        select_ln97_1_cast_reg_1035[6 : 0] <= select_ln97_1_cast_fu_587_p1[6 : 0];
        v100_reg_1335 <= v100_fu_925_p3;
        v106_reg_1340 <= v106_fu_931_p3;
        v63_reg_1245 <= v63_fu_869_p3;
        v70_reg_1260 <= v70_fu_885_p3;
        v76_reg_1265 <= v76_fu_891_p3;
        v82_reg_1270 <= v82_fu_897_p3;
        v88_reg_1275 <= v88_fu_903_p3;
        v94_reg_1280 <= v94_fu_909_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln97_reg_958 <= icmp_ln97_fu_457_p2;
        icmp_ln97_reg_958_pp0_iter1_reg <= icmp_ln97_reg_958;
        icmp_ln97_reg_958_pp0_iter2_reg <= icmp_ln97_reg_958_pp0_iter1_reg;
        icmp_ln97_reg_958_pp0_iter3_reg <= icmp_ln97_reg_958_pp0_iter2_reg;
        lshr_ln_reg_979 <= {{select_ln97_fu_489_p3[5:3]}};
        select_ln97_1_reg_972 <= select_ln97_1_fu_501_p3;
        select_ln97_reg_962 <= select_ln97_fu_489_p3;
        tmp_1_reg_997 <= {{select_ln97_fu_489_p3[5:1]}};
        tmp_3_reg_1007 <= {{select_ln97_fu_489_p3[5:2]}};
        tmp_6_reg_1029 <= select_ln97_fu_489_p3[32'd1];
        trunc_ln114_reg_1015 <= trunc_ln114_fu_557_p1;
        trunc_ln128_reg_1023 <= trunc_ln128_fu_561_p1;
        trunc_ln97_reg_967 <= trunc_ln97_fu_497_p1;
        v104_reg_1235_pp0_iter2_reg <= v104_reg_1235;
        v58_0_addr_reg_1173 <= zext_ln98_1_fu_811_p1;
        v58_0_addr_reg_1173_pp0_iter2_reg <= v58_0_addr_reg_1173;
        v58_0_addr_reg_1173_pp0_iter3_reg <= v58_0_addr_reg_1173_pp0_iter2_reg;
        v58_1_addr_reg_1178 <= zext_ln98_1_fu_811_p1;
        v58_1_addr_reg_1178_pp0_iter2_reg <= v58_1_addr_reg_1178;
        v58_1_addr_reg_1178_pp0_iter3_reg <= v58_1_addr_reg_1178_pp0_iter2_reg;
        v58_2_addr_reg_1183 <= zext_ln98_1_fu_811_p1;
        v58_2_addr_reg_1183_pp0_iter2_reg <= v58_2_addr_reg_1183;
        v58_2_addr_reg_1183_pp0_iter3_reg <= v58_2_addr_reg_1183_pp0_iter2_reg;
        v58_3_addr_reg_1193 <= zext_ln98_1_fu_811_p1;
        v58_3_addr_reg_1193_pp0_iter2_reg <= v58_3_addr_reg_1193;
        v58_3_addr_reg_1193_pp0_iter3_reg <= v58_3_addr_reg_1193_pp0_iter2_reg;
        v58_4_addr_reg_1203 <= zext_ln98_1_fu_811_p1;
        v58_4_addr_reg_1203_pp0_iter2_reg <= v58_4_addr_reg_1203;
        v58_4_addr_reg_1203_pp0_iter3_reg <= v58_4_addr_reg_1203_pp0_iter2_reg;
        v58_5_addr_reg_1209 <= zext_ln98_1_fu_811_p1;
        v58_5_addr_reg_1209_pp0_iter2_reg <= v58_5_addr_reg_1209;
        v58_5_addr_reg_1209_pp0_iter3_reg <= v58_5_addr_reg_1209_pp0_iter2_reg;
        v58_6_addr_reg_1225 <= zext_ln98_1_fu_811_p1;
        v58_6_addr_reg_1225_pp0_iter2_reg <= v58_6_addr_reg_1225;
        v58_6_addr_reg_1225_pp0_iter3_reg <= v58_6_addr_reg_1225_pp0_iter2_reg;
        v58_6_addr_reg_1225_pp0_iter4_reg <= v58_6_addr_reg_1225_pp0_iter3_reg;
        v58_7_addr_reg_1240 <= zext_ln98_1_fu_811_p1;
        v58_7_addr_reg_1240_pp0_iter2_reg <= v58_7_addr_reg_1240;
        v58_7_addr_reg_1240_pp0_iter3_reg <= v58_7_addr_reg_1240_pp0_iter2_reg;
        v58_7_addr_reg_1240_pp0_iter4_reg <= v58_7_addr_reg_1240_pp0_iter3_reg;
        v98_reg_1220_pp0_iter2_reg <= v98_reg_1220;
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
        reg_423 <= grp_fu_111_p_dout0;
        reg_431 <= grp_fu_403_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1325 <= grp_fu_115_p_dout0;
        v108_reg_1330 <= grp_fu_411_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v104_reg_1235 <= v57_q0;
        v98_reg_1220 <= v57_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v115_load_reg_1092 <= v115_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v61_reg_1067 <= v57_q1;
        v68_reg_1077 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_reg_1127 <= v65_fu_721_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_1285 <= grp_fu_115_p_dout0;
        v72_reg_1290 <= grp_fu_411_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v74_reg_1102 <= v57_q1;
        v80_reg_1112 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1305 <= grp_fu_115_p_dout0;
        v84_reg_1310 <= grp_fu_411_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v86_reg_1148 <= v57_q1;
        v92_reg_1158 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1315 <= grp_fu_115_p_dout0;
        v96_reg_1320 <= grp_fu_411_p2;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_958 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln97_reg_958_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_126;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v59_load = v59_fu_122;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v60_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_load = v60_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_399_p0 = v100_reg_1335;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_399_p0 = v88_reg_1275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_399_p0 = v76_reg_1265;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_399_p0 = v63_reg_1245;
    end else begin
        grp_fu_399_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_399_p1 = v102_reg_1325;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_399_p1 = v90_reg_1315;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_399_p1 = v78_reg_1305;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_399_p1 = v66_reg_1285;
    end else begin
        grp_fu_399_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_403_p0 = v106_reg_1340;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p0 = v94_reg_1280;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_403_p0 = v82_reg_1270;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_403_p0 = v70_reg_1260;
    end else begin
        grp_fu_403_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_403_p1 = v108_reg_1330;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p1 = v96_reg_1320;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_403_p1 = v84_reg_1310;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_403_p1 = v72_reg_1290;
    end else begin
        grp_fu_403_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_407_p0 = v101_fu_915_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_407_p0 = v89_fu_875_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_407_p0 = v77_fu_822_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p0 = v64_fu_726_p1;
    end else begin
        grp_fu_407_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_407_p1 = v65_reg_1127;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p1 = v65_fu_721_p1;
    end else begin
        grp_fu_407_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p0 = v107_fu_920_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_411_p0 = v95_fu_880_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_411_p0 = v83_fu_827_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p0 = v71_fu_731_p1;
    end else begin
        grp_fu_411_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_411_p1 = v65_reg_1127;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p1 = v65_fu_721_p1;
    end else begin
        grp_fu_411_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address0_local = zext_ln152_fu_864_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address0_local = zext_ln138_fu_771_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address0_local = zext_ln124_fu_688_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address0_local = zext_ln110_fu_626_p1;
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_address1_local = zext_ln145_fu_847_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_address1_local = zext_ln131_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_address1_local = zext_ln117_fu_671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_address1_local = zext_ln102_fu_608_p1;
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
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address0_local = zext_ln149_fu_796_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln135_fu_716_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln121_fu_651_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln107_fu_542_p1;
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
            v57_address1_local = zext_ln142_fu_784_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address1_local = zext_ln128_fu_701_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address1_local = zext_ln114_fu_639_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address1_local = zext_ln98_fu_509_p1;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_reg_1173_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln98_1_fu_811_p1;
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
        v58_1_address0_local = v58_1_addr_reg_1178_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln98_1_fu_811_p1;
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
        v58_2_address0_local = v58_2_addr_reg_1183_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln98_1_fu_811_p1;
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
        v58_3_address0_local = v58_3_addr_reg_1193_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln98_1_fu_811_p1;
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
        v58_6_address0_local = v58_6_addr_reg_1225_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_address0_local = v58_6_addr_reg_1225;
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
        v58_7_address0_local = v58_7_addr_reg_1240_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_address0_local = v58_7_addr_reg_1240;
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
assign add_ln102_fu_602_p2 = (tmp_fu_595_p3 + select_ln97_1_cast_fu_587_p1);
assign add_ln110_fu_620_p2 = (tmp_2_fu_613_p3 + select_ln97_1_cast_fu_587_p1);
assign add_ln117_fu_666_p2 = (tmp_5_fu_656_p5 + select_ln97_1_cast_reg_1035);
assign add_ln124_fu_683_p2 = (tmp_7_fu_676_p3 + select_ln97_1_cast_reg_1035);
assign add_ln131_fu_746_p2 = (tmp_s_fu_736_p5 + select_ln97_1_cast_reg_1035);
assign add_ln138_fu_766_p2 = (tmp_8_fu_756_p5 + select_ln97_1_cast_reg_1035);
assign add_ln145_fu_842_p2 = (tmp_9_fu_832_p5 + select_ln97_1_cast_reg_1035);
assign add_ln152_fu_859_p2 = (tmp_10_fu_852_p3 + select_ln97_1_cast_reg_1035);
assign add_ln97_1_fu_463_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_475_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_801_p2 = (select_ln97_reg_962 + 7'd8);
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
assign cmp7_fu_590_p2 = ((select_ln97_1_reg_972 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_111_p_ce = 1'b1;
assign grp_fu_111_p_din0 = grp_fu_399_p0;
assign grp_fu_111_p_din1 = grp_fu_399_p1;
assign grp_fu_111_p_opcode = 2'd0;
assign grp_fu_115_p_ce = 1'b1;
assign grp_fu_115_p_din0 = grp_fu_407_p0;
assign grp_fu_115_p_din1 = grp_fu_407_p1;
assign icmp_ln97_fu_457_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign or_ln1_fu_631_p4 = {{{tmp_3_reg_1007}, {1'd1}}, {trunc_ln114_reg_1015}};
assign or_ln2_fu_644_p3 = {{tmp_3_reg_1007}, {2'd3}};
assign or_ln3_fu_693_p4 = {{{lshr_ln_reg_979}, {1'd1}}, {trunc_ln128_reg_1023}};
assign or_ln4_fu_706_p5 = {{{{lshr_ln_reg_979}, {1'd1}}, {tmp_6_reg_1029}}, {1'd1}};
assign or_ln5_fu_776_p4 = {{{lshr_ln_reg_979}, {2'd3}}, {trunc_ln114_reg_1015}};
assign or_ln6_fu_789_p3 = {{lshr_ln_reg_979}, {3'd7}};
assign or_ln_fu_534_p3 = {{tmp_1_fu_524_p4}, {1'd1}};
assign select_ln97_1_cast_fu_587_p1 = select_ln97_1_reg_972;
assign select_ln97_1_fu_501_p3 = ((tmp_4_fu_481_p3[0:0] == 1'b1) ? add_ln97_fu_475_p2 : ap_sig_allocacmp_v59_load);
assign select_ln97_fu_489_p3 = ((tmp_4_fu_481_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v60_load);
assign tmp_10_fu_852_p3 = {{lshr_ln_reg_979}, {9'd448}};
assign tmp_1_fu_524_p4 = {{select_ln97_fu_489_p3[5:1]}};
assign tmp_2_fu_613_p3 = {{tmp_1_reg_997}, {7'd64}};
assign tmp_4_fu_481_p3 = ap_sig_allocacmp_v60_load[32'd6];
assign tmp_5_fu_656_p5 = {{{{tmp_3_reg_1007}, {1'd1}}, {trunc_ln114_reg_1015}}, {6'd0}};
assign tmp_7_fu_676_p3 = {{tmp_3_reg_1007}, {8'd192}};
assign tmp_8_fu_756_p5 = {{{{lshr_ln_reg_979}, {1'd1}}, {tmp_6_reg_1029}}, {7'd64}};
assign tmp_9_fu_832_p5 = {{{{lshr_ln_reg_979}, {2'd3}}, {trunc_ln114_reg_1015}}, {6'd0}};
assign tmp_fu_595_p3 = {{trunc_ln97_reg_967}, {6'd0}};
assign tmp_s_fu_736_p5 = {{{{lshr_ln_reg_979}, {1'd1}}, {trunc_ln128_reg_1023}}, {6'd0}};
assign trunc_ln114_fu_557_p1 = select_ln97_fu_489_p3[0:0];
assign trunc_ln128_fu_561_p1 = select_ln97_fu_489_p3[1:0];
assign trunc_ln97_fu_497_p1 = select_ln97_fu_489_p3[5:0];
assign v100_fu_925_p3 = ((cmp7_reg_1045_pp0_iter1_reg[0:0] == 1'b1) ? v98_reg_1220_pp0_iter2_reg : v58_6_q0);
assign v101_fu_915_p1 = reg_415;
assign v106_fu_931_p3 = ((cmp7_reg_1045_pp0_iter1_reg[0:0] == 1'b1) ? v104_reg_1235_pp0_iter2_reg : v58_7_q0);
assign v107_fu_920_p1 = reg_419;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_address0 = zext_ln97_fu_583_p1;
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
assign v58_4_address0 = v58_4_addr_reg_1203_pp0_iter3_reg;
assign v58_4_address1 = zext_ln98_1_fu_811_p1;
assign v58_4_ce0 = v58_4_ce0_local;
assign v58_4_ce1 = v58_4_ce1_local;
assign v58_4_d0 = reg_423;
assign v58_4_we0 = v58_4_we0_local;
assign v58_5_address0 = v58_5_addr_reg_1209_pp0_iter3_reg;
assign v58_5_address1 = zext_ln98_1_fu_811_p1;
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
assign v63_fu_869_p3 = ((cmp7_reg_1045[0:0] == 1'b1) ? v61_reg_1067 : v58_0_q0);
assign v64_fu_726_p1 = reg_415;
assign v65_fu_721_p1 = v115_load_reg_1092;
assign v70_fu_885_p3 = ((cmp7_reg_1045[0:0] == 1'b1) ? v68_reg_1077 : v58_1_q0);
assign v71_fu_731_p1 = reg_419;
assign v76_fu_891_p3 = ((cmp7_reg_1045[0:0] == 1'b1) ? v74_reg_1102 : v58_2_q0);
assign v77_fu_822_p1 = reg_415;
assign v82_fu_897_p3 = ((cmp7_reg_1045[0:0] == 1'b1) ? v80_reg_1112 : v58_3_q0);
assign v83_fu_827_p1 = reg_419;
assign v88_fu_903_p3 = ((cmp7_reg_1045[0:0] == 1'b1) ? v86_reg_1148 : v58_4_q1);
assign v89_fu_875_p1 = reg_415;
assign v94_fu_909_p3 = ((cmp7_reg_1045[0:0] == 1'b1) ? v92_reg_1158 : v58_5_q1);
assign v95_fu_880_p1 = reg_419;
assign zext_ln102_fu_608_p1 = add_ln102_fu_602_p2;
assign zext_ln107_fu_542_p1 = or_ln_fu_534_p3;
assign zext_ln110_fu_626_p1 = add_ln110_fu_620_p2;
assign zext_ln114_fu_639_p1 = or_ln1_fu_631_p4;
assign zext_ln117_fu_671_p1 = add_ln117_fu_666_p2;
assign zext_ln121_fu_651_p1 = or_ln2_fu_644_p3;
assign zext_ln124_fu_688_p1 = add_ln124_fu_683_p2;
assign zext_ln128_fu_701_p1 = or_ln3_fu_693_p4;
assign zext_ln131_fu_751_p1 = add_ln131_fu_746_p2;
assign zext_ln135_fu_716_p1 = or_ln4_fu_706_p5;
assign zext_ln138_fu_771_p1 = add_ln138_fu_766_p2;
assign zext_ln142_fu_784_p1 = or_ln5_fu_776_p4;
assign zext_ln145_fu_847_p1 = add_ln145_fu_842_p2;
assign zext_ln149_fu_796_p1 = or_ln6_fu_789_p3;
assign zext_ln152_fu_864_p1 = add_ln152_fu_859_p2;
assign zext_ln97_fu_583_p1 = select_ln97_1_reg_972;
assign zext_ln98_1_fu_811_p1 = lshr_ln_reg_979;
assign zext_ln98_fu_509_p1 = select_ln97_fu_489_p3;
always @ (posedge ap_clk) begin
    select_ln97_1_cast_reg_1035[11:7] <= 5'b00000;
end
endmodule 