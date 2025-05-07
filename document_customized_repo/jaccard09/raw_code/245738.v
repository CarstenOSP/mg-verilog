module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v124_1_address0,v124_1_ce0,v124_1_q0,v124_2_address0,v124_2_ce0,v124_2_q0,v124_3_address0,v124_3_ce0,v124_3_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_1_address0,v113_1_ce0,v113_1_q0,v113_2_address0,v113_2_ce0,v113_2_q0,v113_3_address0,v113_3_ce0,v113_3_q0,v113_4_address0,v113_4_ce0,v113_4_q0,v113_5_address0,v113_5_ce0,v113_5_q0,v113_6_address0,v113_6_ce0,v113_6_q0,v113_7_address0,v113_7_ce0,v113_7_q0,v116_address0,v116_ce0,v116_we0,v116_d0,v116_q0,v116_address1,v116_ce1,v116_we1,v116_d1,v116_q1,grp_fu_155_p_din0,grp_fu_155_p_din1,grp_fu_155_p_opcode,grp_fu_155_p_dout0,grp_fu_155_p_ce,grp_fu_159_p_din0,grp_fu_159_p_din1,grp_fu_159_p_dout0,grp_fu_159_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] v124_address0;
output   v124_ce0;
input  [31:0] v124_q0;
output  [3:0] v124_1_address0;
output   v124_1_ce0;
input  [31:0] v124_1_q0;
output  [3:0] v124_2_address0;
output   v124_2_ce0;
input  [31:0] v124_2_q0;
output  [3:0] v124_3_address0;
output   v124_3_ce0;
input  [31:0] v124_3_q0;
output  [8:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [8:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [8:0] v113_2_address0;
output   v113_2_ce0;
input  [31:0] v113_2_q0;
output  [8:0] v113_3_address0;
output   v113_3_ce0;
input  [31:0] v113_3_q0;
output  [8:0] v113_4_address0;
output   v113_4_ce0;
input  [31:0] v113_4_q0;
output  [8:0] v113_5_address0;
output   v113_5_ce0;
input  [31:0] v113_5_q0;
output  [8:0] v113_6_address0;
output   v113_6_ce0;
input  [31:0] v113_6_q0;
output  [8:0] v113_7_address0;
output   v113_7_ce0;
input  [31:0] v113_7_q0;
output  [5:0] v116_address0;
output   v116_ce0;
output   v116_we0;
output  [31:0] v116_d0;
input  [31:0] v116_q0;
output  [5:0] v116_address1;
output   v116_ce1;
output   v116_we1;
output  [31:0] v116_d1;
input  [31:0] v116_q1;
output  [31:0] grp_fu_155_p_din0;
output  [31:0] grp_fu_155_p_din1;
output  [1:0] grp_fu_155_p_opcode;
input  [31:0] grp_fu_155_p_dout0;
output   grp_fu_155_p_ce;
output  [31:0] grp_fu_159_p_din0;
output  [31:0] grp_fu_159_p_din1;
input  [31:0] grp_fu_159_p_dout0;
output   grp_fu_159_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln27_reg_821;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_363;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_368;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] reg_372;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_394_p2;
wire   [6:0] select_ln26_fu_426_p3;
reg   [6:0] select_ln26_reg_825;
wire   [5:0] trunc_ln27_fu_442_p1;
reg   [5:0] trunc_ln27_reg_831;
wire   [1:0] trunc_ln27_1_fu_446_p1;
reg   [1:0] trunc_ln27_1_reg_836;
reg   [2:0] lshr_ln3_reg_861;
reg   [2:0] lshr_ln3_reg_861_pp0_iter1_reg;
reg   [5:0] v116_addr_reg_870;
reg   [5:0] v116_addr_reg_870_pp0_iter1_reg;
reg   [5:0] v116_addr_1_reg_875;
reg   [5:0] v116_addr_1_reg_875_pp0_iter1_reg;
reg   [3:0] tmp_11_reg_881;
wire   [0:0] trunc_ln46_fu_516_p1;
reg   [0:0] trunc_ln46_reg_887;
reg   [0:0] trunc_ln46_reg_887_pp0_iter1_reg;
wire   [1:0] trunc_ln60_fu_520_p1;
reg   [1:0] trunc_ln60_reg_893;
reg   [0:0] tmp_6_reg_898;
reg   [0:0] tmp_6_reg_898_pp0_iter1_reg;
wire   [31:0] v6_fu_542_p11;
reg   [31:0] v6_reg_903;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] v116_load_reg_948;
reg   [31:0] v116_load_1_reg_953;
reg   [5:0] v116_addr_2_reg_958;
reg   [5:0] v116_addr_2_reg_958_pp0_iter1_reg;
reg   [5:0] v116_addr_2_reg_958_pp0_iter2_reg;
reg   [5:0] v116_addr_3_reg_963;
reg   [5:0] v116_addr_3_reg_963_pp0_iter1_reg;
reg   [5:0] v116_addr_3_reg_963_pp0_iter2_reg;
wire   [31:0] v3_fu_616_p3;
reg   [31:0] v3_reg_968;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] v113_0_load_reg_973;
reg   [31:0] v113_1_load_reg_978;
reg   [31:0] v116_load_2_reg_983;
reg   [31:0] v113_2_load_reg_988;
reg   [31:0] v116_load_3_reg_993;
reg   [31:0] v113_3_load_reg_998;
reg   [5:0] v116_addr_4_reg_1003;
reg   [5:0] v116_addr_4_reg_1003_pp0_iter1_reg;
reg   [5:0] v116_addr_4_reg_1003_pp0_iter2_reg;
reg   [31:0] v113_4_load_reg_1008;
reg   [31:0] v113_5_load_reg_1013;
reg   [31:0] v113_6_load_reg_1018;
reg   [31:0] v113_7_load_reg_1023;
wire   [31:0] v10_fu_641_p1;
reg   [31:0] v116_load_4_reg_1033;
wire   [31:0] v16_fu_645_p1;
wire   [31:0] v22_fu_649_p1;
reg   [31:0] v11_reg_1048;
wire   [31:0] v28_fu_653_p1;
wire   [31:0] v9_fu_657_p1;
reg   [31:0] v17_reg_1063;
wire   [31:0] v34_fu_661_p1;
wire   [31:0] v15_fu_675_p1;
reg   [31:0] v23_reg_1078;
wire   [31:0] v40_fu_679_p1;
wire   [31:0] v21_fu_683_p1;
reg   [31:0] v29_reg_1093;
wire   [31:0] v46_fu_687_p1;
wire   [31:0] v27_fu_691_p1;
reg   [31:0] v35_reg_1108;
reg   [5:0] v116_addr_5_reg_1113;
reg   [5:0] v116_addr_5_reg_1113_pp0_iter2_reg;
wire   [31:0] v52_fu_710_p1;
wire   [31:0] v33_fu_714_p1;
reg   [31:0] v41_reg_1128;
reg   [5:0] v116_addr_6_reg_1133;
reg   [5:0] v116_addr_6_reg_1133_pp0_iter2_reg;
reg   [5:0] v116_addr_7_reg_1139;
reg   [5:0] v116_addr_7_reg_1139_pp0_iter2_reg;
wire   [31:0] v39_fu_743_p1;
reg   [31:0] v47_reg_1149;
reg   [31:0] v116_load_7_reg_1154;
wire   [31:0] v45_fu_748_p1;
reg   [31:0] v53_reg_1164;
wire   [31:0] v51_fu_758_p1;
reg   [31:0] v36_reg_1174;
reg   [31:0] v42_reg_1179;
reg   [31:0] v48_reg_1184;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln26_fu_460_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_fu_468_p1;
wire   [63:0] zext_ln39_fu_501_p1;
wire   [63:0] zext_ln33_fu_571_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln46_fu_591_p1;
wire   [63:0] zext_ln53_fu_603_p1;
wire   [63:0] zext_ln60_fu_631_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln67_fu_705_p1;
wire   [63:0] zext_ln74_fu_726_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln82_fu_738_p1;
reg   [31:0] v3_1_fu_110;
reg   [6:0] v49_fu_114;
wire   [6:0] add_ln28_fu_665_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v49_load;
reg   [6:0] v4_fu_118;
wire   [6:0] select_ln27_fu_434_p3;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [9:0] indvar_flatten_fu_122;
wire   [9:0] add_ln27_1_fu_400_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v124_ce0_local;
reg    v124_1_ce0_local;
reg    v124_2_ce0_local;
reg    v124_3_ce0_local;
reg    v116_ce1_local;
reg   [5:0] v116_address1_local;
reg    v116_ce0_local;
reg   [5:0] v116_address0_local;
reg    v116_we1_local;
reg   [31:0] v116_d1_local;
wire   [31:0] bitcast_ln36_fu_753_p1;
wire    ap_block_pp0_stage6;
wire   [31:0] bitcast_ln43_fu_762_p1;
wire    ap_block_pp0_stage7;
wire   [31:0] bitcast_ln50_fu_767_p1;
wire    ap_block_pp0_stage4;
reg    v116_we0_local;
reg   [31:0] v116_d0_local;
wire   [31:0] bitcast_ln57_fu_772_p1;
wire   [31:0] bitcast_ln64_fu_777_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln71_fu_781_p1;
wire   [31:0] bitcast_ln78_fu_785_p1;
wire   [31:0] bitcast_ln86_fu_789_p1;
reg    v113_0_ce0_local;
reg    v113_1_ce0_local;
reg    v113_2_ce0_local;
reg    v113_3_ce0_local;
reg    v113_4_ce0_local;
reg    v113_5_ce0_local;
reg    v113_6_ce0_local;
reg    v113_7_ce0_local;
reg   [31:0] grp_fu_355_p0;
reg   [31:0] grp_fu_355_p1;
reg   [31:0] grp_fu_359_p0;
wire   [0:0] tmp_5_fu_418_p3;
wire   [6:0] add_ln27_fu_412_p2;
wire   [3:0] lshr_ln2_fu_450_p4;
wire   [4:0] tmp_s_fu_483_p4;
wire   [5:0] or_ln_fu_493_p3;
wire   [31:0] v6_fu_542_p9;
wire   [8:0] tmp_fu_565_p3;
wire   [5:0] or_ln7_fu_583_p4;
wire   [5:0] or_ln8_fu_596_p3;
wire   [0:0] icmp_ln31_fu_611_p2;
wire   [5:0] or_ln9_fu_623_p4;
wire   [5:0] or_ln1_fu_695_p5;
wire   [5:0] or_ln2_fu_718_p4;
wire   [5:0] or_ln3_fu_731_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire   [1:0] v6_fu_542_p1;
wire   [1:0] v6_fu_542_p3;
wire  signed [1:0] v6_fu_542_p5;
wire  signed [1:0] v6_fu_542_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_1_fu_110 = 32'd0;
#0 v49_fu_114 = 7'd0;
#0 v4_fu_118 = 7'd0;
#0 indvar_flatten_fu_122 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U37(.din0(v124_q0),.din1(v124_1_q0),.din2(v124_2_q0),.din3(v124_3_q0),.def(v6_fu_542_p9),.sel(trunc_ln27_1_reg_836),.dout(v6_fu_542_p11));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_394_p2 == 1'd0))) begin
            indvar_flatten_fu_122 <= add_ln27_1_fu_400_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_122 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_363 <= v116_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_363 <= v116_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_114 <= 7'd0;
    end else if (((icmp_ln27_reg_821 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v49_fu_114 <= add_ln28_fu_665_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_394_p2 == 1'd0))) begin
            v4_fu_118 <= select_ln27_fu_434_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4_fu_118 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln27_reg_821 <= icmp_ln27_fu_394_p2;
        lshr_ln3_reg_861 <= {{select_ln26_fu_426_p3[5:3]}};
        lshr_ln3_reg_861_pp0_iter1_reg <= lshr_ln3_reg_861;
        select_ln26_reg_825 <= select_ln26_fu_426_p3;
        tmp_11_reg_881 <= {{select_ln26_fu_426_p3[5:2]}};
        tmp_6_reg_898 <= select_ln26_fu_426_p3[32'd1];
        tmp_6_reg_898_pp0_iter1_reg <= tmp_6_reg_898;
        trunc_ln27_1_reg_836 <= trunc_ln27_1_fu_446_p1;
        trunc_ln27_reg_831 <= trunc_ln27_fu_442_p1;
        trunc_ln46_reg_887 <= trunc_ln46_fu_516_p1;
        trunc_ln46_reg_887_pp0_iter1_reg <= trunc_ln46_reg_887;
        trunc_ln60_reg_893 <= trunc_ln60_fu_520_p1;
        v116_addr_1_reg_875[5 : 1] <= zext_ln39_fu_501_p1[5 : 1];
        v116_addr_1_reg_875_pp0_iter1_reg[5 : 1] <= v116_addr_1_reg_875[5 : 1];
        v116_addr_reg_870 <= zext_ln28_fu_468_p1;
        v116_addr_reg_870_pp0_iter1_reg <= v116_addr_reg_870;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_368 <= grp_fu_155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_372 <= grp_fu_155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_0_load_reg_973 <= v113_0_q0;
        v113_1_load_reg_978 <= v113_1_q0;
        v113_2_load_reg_988 <= v113_2_q0;
        v113_3_load_reg_998 <= v113_3_q0;
        v113_4_load_reg_1008 <= v113_4_q0;
        v113_5_load_reg_1013 <= v113_5_q0;
        v113_6_load_reg_1018 <= v113_6_q0;
        v113_7_load_reg_1023 <= v113_7_q0;
        v116_addr_4_reg_1003[1 : 0] <= zext_ln60_fu_631_p1[1 : 0];
v116_addr_4_reg_1003[5 : 3] <= zext_ln60_fu_631_p1[5 : 3];
        v116_addr_4_reg_1003_pp0_iter1_reg[1 : 0] <= v116_addr_4_reg_1003[1 : 0];
v116_addr_4_reg_1003_pp0_iter1_reg[5 : 3] <= v116_addr_4_reg_1003[5 : 3];
        v116_addr_4_reg_1003_pp0_iter2_reg[1 : 0] <= v116_addr_4_reg_1003_pp0_iter1_reg[1 : 0];
v116_addr_4_reg_1003_pp0_iter2_reg[5 : 3] <= v116_addr_4_reg_1003_pp0_iter1_reg[5 : 3];
        v116_addr_5_reg_1113[1] <= zext_ln67_fu_705_p1[1];
v116_addr_5_reg_1113[5 : 3] <= zext_ln67_fu_705_p1[5 : 3];
        v116_addr_5_reg_1113_pp0_iter2_reg[1] <= v116_addr_5_reg_1113[1];
v116_addr_5_reg_1113_pp0_iter2_reg[5 : 3] <= v116_addr_5_reg_1113[5 : 3];
        v3_reg_968 <= v3_fu_616_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_addr_2_reg_958[0] <= zext_ln46_fu_591_p1[0];
v116_addr_2_reg_958[5 : 2] <= zext_ln46_fu_591_p1[5 : 2];
        v116_addr_2_reg_958_pp0_iter1_reg[0] <= v116_addr_2_reg_958[0];
v116_addr_2_reg_958_pp0_iter1_reg[5 : 2] <= v116_addr_2_reg_958[5 : 2];
        v116_addr_2_reg_958_pp0_iter2_reg[0] <= v116_addr_2_reg_958_pp0_iter1_reg[0];
v116_addr_2_reg_958_pp0_iter2_reg[5 : 2] <= v116_addr_2_reg_958_pp0_iter1_reg[5 : 2];
        v116_addr_3_reg_963[5 : 2] <= zext_ln53_fu_603_p1[5 : 2];
        v116_addr_3_reg_963_pp0_iter1_reg[5 : 2] <= v116_addr_3_reg_963[5 : 2];
        v116_addr_3_reg_963_pp0_iter2_reg[5 : 2] <= v116_addr_3_reg_963_pp0_iter1_reg[5 : 2];
        v6_reg_903 <= v6_fu_542_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_addr_6_reg_1133[0] <= zext_ln74_fu_726_p1[0];
v116_addr_6_reg_1133[5 : 3] <= zext_ln74_fu_726_p1[5 : 3];
        v116_addr_6_reg_1133_pp0_iter2_reg[0] <= v116_addr_6_reg_1133[0];
v116_addr_6_reg_1133_pp0_iter2_reg[5 : 3] <= v116_addr_6_reg_1133[5 : 3];
        v116_addr_7_reg_1139[5 : 3] <= zext_ln82_fu_738_p1[5 : 3];
        v116_addr_7_reg_1139_pp0_iter2_reg[5 : 3] <= v116_addr_7_reg_1139[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_load_1_reg_953 <= v116_q0;
        v116_load_reg_948 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_load_2_reg_983 <= v116_q1;
        v116_load_3_reg_993 <= v116_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_load_4_reg_1033 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_load_7_reg_1154 <= v116_q0;
        v47_reg_1149 <= grp_fu_159_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v11_reg_1048 <= grp_fu_159_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v17_reg_1063 <= grp_fu_159_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v23_reg_1078 <= grp_fu_159_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_reg_1093 <= grp_fu_159_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v35_reg_1108 <= grp_fu_159_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v36_reg_1174 <= grp_fu_155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_821 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_fu_110 <= v3_fu_616_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v41_reg_1128 <= grp_fu_159_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v42_reg_1179 <= grp_fu_155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v48_reg_1184 <= grp_fu_155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v53_reg_1164 <= grp_fu_159_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_821 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_v49_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v49_load = v49_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_355_p0 = v51_fu_758_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_355_p0 = v45_fu_748_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_355_p0 = v39_fu_743_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_355_p0 = v33_fu_714_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_355_p0 = v27_fu_691_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_355_p0 = v21_fu_683_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_355_p0 = v15_fu_675_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_355_p0 = v9_fu_657_p1;
    end else begin
        grp_fu_355_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_355_p1 = v53_reg_1164;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_355_p1 = v47_reg_1149;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_355_p1 = v41_reg_1128;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_355_p1 = v35_reg_1108;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_355_p1 = v29_reg_1093;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_355_p1 = v23_reg_1078;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_355_p1 = v17_reg_1063;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_355_p1 = v11_reg_1048;
    end else begin
        grp_fu_355_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_359_p0 = v52_fu_710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_359_p0 = v46_fu_687_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_359_p0 = v40_fu_679_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_359_p0 = v34_fu_661_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_359_p0 = v28_fu_653_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_359_p0 = v22_fu_649_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_359_p0 = v16_fu_645_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_359_p0 = v10_fu_641_p1;
    end else begin
        grp_fu_359_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_2_ce0_local = 1'b1;
    end else begin
        v113_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_3_ce0_local = 1'b1;
    end else begin
        v113_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_4_ce0_local = 1'b1;
    end else begin
        v113_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_5_ce0_local = 1'b1;
    end else begin
        v113_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_6_ce0_local = 1'b1;
    end else begin
        v113_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_7_ce0_local = 1'b1;
    end else begin
        v113_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address0_local = v116_addr_7_reg_1139_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address0_local = v116_addr_6_reg_1133_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address0_local = v116_addr_5_reg_1113_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address0_local = v116_addr_3_reg_963_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address0_local = zext_ln82_fu_738_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address0_local = zext_ln67_fu_705_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address0_local = zext_ln53_fu_603_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address0_local = zext_ln39_fu_501_p1;
    end else begin
        v116_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address1_local = v116_addr_4_reg_1003_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address1_local = v116_addr_2_reg_958_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address1_local = v116_addr_1_reg_875_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address1_local = v116_addr_reg_870_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address1_local = zext_ln74_fu_726_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address1_local = zext_ln60_fu_631_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address1_local = zext_ln46_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address1_local = zext_ln28_fu_468_p1;
    end else begin
        v116_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_ce0_local = 1'b1;
    end else begin
        v116_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_ce1_local = 1'b1;
    end else begin
        v116_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v116_d0_local = bitcast_ln86_fu_789_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v116_d0_local = bitcast_ln78_fu_785_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v116_d0_local = bitcast_ln71_fu_781_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v116_d0_local = bitcast_ln57_fu_772_p1;
        end else begin
            v116_d0_local = 'bx;
        end
    end else begin
        v116_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_d1_local = bitcast_ln64_fu_777_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_d1_local = bitcast_ln50_fu_767_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_d1_local = bitcast_ln43_fu_762_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_d1_local = bitcast_ln36_fu_753_p1;
    end else begin
        v116_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v116_we0_local = 1'b1;
    end else begin
        v116_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v116_we1_local = 1'b1;
    end else begin
        v116_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_1_ce0_local = 1'b1;
    end else begin
        v124_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_2_ce0_local = 1'b1;
    end else begin
        v124_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_3_ce0_local = 1'b1;
    end else begin
        v124_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_ce0_local = 1'b1;
    end else begin
        v124_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_1_fu_400_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln27_fu_412_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_665_p2 = (select_ln26_reg_825 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_fu_753_p1 = reg_368;
assign bitcast_ln43_fu_762_p1 = reg_368;
assign bitcast_ln50_fu_767_p1 = reg_368;
assign bitcast_ln57_fu_772_p1 = reg_372;
assign bitcast_ln64_fu_777_p1 = v36_reg_1174;
assign bitcast_ln71_fu_781_p1 = v42_reg_1179;
assign bitcast_ln78_fu_785_p1 = v48_reg_1184;
assign bitcast_ln86_fu_789_p1 = reg_372;
assign grp_fu_155_p_ce = 1'b1;
assign grp_fu_155_p_din0 = grp_fu_355_p0;
assign grp_fu_155_p_din1 = grp_fu_355_p1;
assign grp_fu_155_p_opcode = 2'd0;
assign grp_fu_159_p_ce = 1'b1;
assign grp_fu_159_p_din0 = grp_fu_359_p0;
assign grp_fu_159_p_din1 = v3_reg_968;
assign icmp_ln27_fu_394_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_611_p2 = ((select_ln26_reg_825 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_450_p4 = {{select_ln27_fu_434_p3[5:2]}};
assign or_ln1_fu_695_p5 = {{{{lshr_ln3_reg_861_pp0_iter1_reg}, {1'd1}}, {tmp_6_reg_898_pp0_iter1_reg}}, {1'd1}};
assign or_ln2_fu_718_p4 = {{{lshr_ln3_reg_861_pp0_iter1_reg}, {2'd3}}, {trunc_ln46_reg_887_pp0_iter1_reg}};
assign or_ln3_fu_731_p3 = {{lshr_ln3_reg_861_pp0_iter1_reg}, {3'd7}};
assign or_ln7_fu_583_p4 = {{{tmp_11_reg_881}, {1'd1}}, {trunc_ln46_reg_887}};
assign or_ln8_fu_596_p3 = {{tmp_11_reg_881}, {2'd3}};
assign or_ln9_fu_623_p4 = {{{lshr_ln3_reg_861}, {1'd1}}, {trunc_ln60_reg_893}};
assign or_ln_fu_493_p3 = {{tmp_s_fu_483_p4}, {1'd1}};
assign select_ln26_fu_426_p3 = ((tmp_5_fu_418_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v49_load);
assign select_ln27_fu_434_p3 = ((tmp_5_fu_418_p3[0:0] == 1'b1) ? add_ln27_fu_412_p2 : ap_sig_allocacmp_v4_load);
assign tmp_5_fu_418_p3 = ap_sig_allocacmp_v49_load[32'd6];
assign tmp_fu_565_p3 = {{trunc_ln27_reg_831}, {lshr_ln3_reg_861}};
assign tmp_s_fu_483_p4 = {{select_ln26_fu_426_p3[5:1]}};
assign trunc_ln27_1_fu_446_p1 = select_ln27_fu_434_p3[1:0];
assign trunc_ln27_fu_442_p1 = select_ln27_fu_434_p3[5:0];
assign trunc_ln46_fu_516_p1 = select_ln26_fu_426_p3[0:0];
assign trunc_ln60_fu_520_p1 = select_ln26_fu_426_p3[1:0];
assign v10_fu_641_p1 = v113_0_load_reg_973;
assign v113_0_address0 = zext_ln33_fu_571_p1;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_1_address0 = zext_ln33_fu_571_p1;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_2_address0 = zext_ln33_fu_571_p1;
assign v113_2_ce0 = v113_2_ce0_local;
assign v113_3_address0 = zext_ln33_fu_571_p1;
assign v113_3_ce0 = v113_3_ce0_local;
assign v113_4_address0 = zext_ln33_fu_571_p1;
assign v113_4_ce0 = v113_4_ce0_local;
assign v113_5_address0 = zext_ln33_fu_571_p1;
assign v113_5_ce0 = v113_5_ce0_local;
assign v113_6_address0 = zext_ln33_fu_571_p1;
assign v113_6_ce0 = v113_6_ce0_local;
assign v113_7_address0 = zext_ln33_fu_571_p1;
assign v113_7_ce0 = v113_7_ce0_local;
assign v116_address0 = v116_address0_local;
assign v116_address1 = v116_address1_local;
assign v116_ce0 = v116_ce0_local;
assign v116_ce1 = v116_ce1_local;
assign v116_d0 = v116_d0_local;
assign v116_d1 = v116_d1_local;
assign v116_we0 = v116_we0_local;
assign v116_we1 = v116_we1_local;
assign v124_1_address0 = zext_ln26_fu_460_p1;
assign v124_1_ce0 = v124_1_ce0_local;
assign v124_2_address0 = zext_ln26_fu_460_p1;
assign v124_2_ce0 = v124_2_ce0_local;
assign v124_3_address0 = zext_ln26_fu_460_p1;
assign v124_3_ce0 = v124_3_ce0_local;
assign v124_address0 = zext_ln26_fu_460_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_fu_675_p1 = v116_load_1_reg_953;
assign v16_fu_645_p1 = v113_1_load_reg_978;
assign v21_fu_683_p1 = v116_load_2_reg_983;
assign v22_fu_649_p1 = v113_2_load_reg_988;
assign v27_fu_691_p1 = v116_load_3_reg_993;
assign v28_fu_653_p1 = v113_3_load_reg_998;
assign v33_fu_714_p1 = v116_load_4_reg_1033;
assign v34_fu_661_p1 = v113_4_load_reg_1008;
assign v39_fu_743_p1 = reg_363;
assign v3_fu_616_p3 = ((icmp_ln31_fu_611_p2[0:0] == 1'b1) ? v6_reg_903 : v3_1_fu_110);
assign v40_fu_679_p1 = v113_5_load_reg_1013;
assign v45_fu_748_p1 = reg_363;
assign v46_fu_687_p1 = v113_6_load_reg_1018;
assign v51_fu_758_p1 = v116_load_7_reg_1154;
assign v52_fu_710_p1 = v113_7_load_reg_1023;
assign v6_fu_542_p9 = 'bx;
assign v9_fu_657_p1 = v116_load_reg_948;
assign zext_ln26_fu_460_p1 = lshr_ln2_fu_450_p4;
assign zext_ln28_fu_468_p1 = select_ln26_fu_426_p3;
assign zext_ln33_fu_571_p1 = tmp_fu_565_p3;
assign zext_ln39_fu_501_p1 = or_ln_fu_493_p3;
assign zext_ln46_fu_591_p1 = or_ln7_fu_583_p4;
assign zext_ln53_fu_603_p1 = or_ln8_fu_596_p3;
assign zext_ln60_fu_631_p1 = or_ln9_fu_623_p4;
assign zext_ln67_fu_705_p1 = or_ln1_fu_695_p5;
assign zext_ln74_fu_726_p1 = or_ln2_fu_718_p4;
assign zext_ln82_fu_738_p1 = or_ln3_fu_731_p3;
always @ (posedge ap_clk) begin
    v116_addr_1_reg_875[0] <= 1'b1;
    v116_addr_1_reg_875_pp0_iter1_reg[0] <= 1'b1;
    v116_addr_2_reg_958[1] <= 1'b1;
    v116_addr_2_reg_958_pp0_iter1_reg[1] <= 1'b1;
    v116_addr_2_reg_958_pp0_iter2_reg[1] <= 1'b1;
    v116_addr_3_reg_963[1:0] <= 2'b11;
    v116_addr_3_reg_963_pp0_iter1_reg[1:0] <= 2'b11;
    v116_addr_3_reg_963_pp0_iter2_reg[1:0] <= 2'b11;
    v116_addr_4_reg_1003[2] <= 1'b1;
    v116_addr_4_reg_1003_pp0_iter1_reg[2] <= 1'b1;
    v116_addr_4_reg_1003_pp0_iter2_reg[2] <= 1'b1;
    v116_addr_5_reg_1113[0] <= 1'b1;
    v116_addr_5_reg_1113[2] <= 1'b1;
    v116_addr_5_reg_1113_pp0_iter2_reg[0] <= 1'b1;
    v116_addr_5_reg_1113_pp0_iter2_reg[2] <= 1'b1;
    v116_addr_6_reg_1133[2:1] <= 2'b11;
    v116_addr_6_reg_1133_pp0_iter2_reg[2:1] <= 2'b11;
    v116_addr_7_reg_1139[2:0] <= 3'b111;
    v116_addr_7_reg_1139_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 