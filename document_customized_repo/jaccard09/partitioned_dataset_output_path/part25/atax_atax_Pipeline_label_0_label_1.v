
module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v124_1_address0,v124_1_ce0,v124_1_q0,v124_2_address0,v124_2_ce0,v124_2_q0,v124_3_address0,v124_3_ce0,v124_3_q0,v124_4_address0,v124_4_ce0,v124_4_q0,v124_5_address0,v124_5_ce0,v124_5_q0,v124_6_address0,v124_6_ce0,v124_6_q0,v124_7_address0,v124_7_ce0,v124_7_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v116_address0,v116_ce0,v116_we0,v116_d0,v116_q0,v116_address1,v116_ce1,v116_we1,v116_d1,v116_q1,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_opcode,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce);  
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
output  [2:0] v124_address0;
output   v124_ce0;
input  [31:0] v124_q0;
output  [2:0] v124_1_address0;
output   v124_1_ce0;
input  [31:0] v124_1_q0;
output  [2:0] v124_2_address0;
output   v124_2_ce0;
input  [31:0] v124_2_q0;
output  [2:0] v124_3_address0;
output   v124_3_ce0;
input  [31:0] v124_3_q0;
output  [2:0] v124_4_address0;
output   v124_4_ce0;
input  [31:0] v124_4_q0;
output  [2:0] v124_5_address0;
output   v124_5_ce0;
input  [31:0] v124_5_q0;
output  [2:0] v124_6_address0;
output   v124_6_ce0;
input  [31:0] v124_6_q0;
output  [2:0] v124_7_address0;
output   v124_7_ce0;
input  [31:0] v124_7_q0;
output  [10:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [10:0] v113_0_address1;
output   v113_0_ce1;
input  [31:0] v113_0_q1;
output  [10:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [10:0] v113_1_address1;
output   v113_1_ce1;
input  [31:0] v113_1_q1;
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
output  [31:0] grp_fu_200_p_din0;
output  [31:0] grp_fu_200_p_din1;
output  [1:0] grp_fu_200_p_opcode;
input  [31:0] grp_fu_200_p_dout0;
output   grp_fu_200_p_ce;
output  [31:0] grp_fu_204_p_din0;
output  [31:0] grp_fu_204_p_din1;
input  [31:0] grp_fu_204_p_dout0;
output   grp_fu_204_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln27_reg_924;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_403;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_407;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_412;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] reg_416;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_438_p2;
wire   [6:0] select_ln26_fu_470_p3;
reg   [6:0] select_ln26_reg_928;
wire   [5:0] trunc_ln27_fu_486_p1;
reg   [5:0] trunc_ln27_reg_934;
wire   [2:0] trunc_ln27_1_fu_490_p1;
reg   [2:0] trunc_ln27_1_reg_942;
wire   [4:0] lshr_ln2_fu_521_p4;
reg   [4:0] lshr_ln2_reg_987;
reg   [5:0] v116_addr_reg_992;
reg   [5:0] v116_addr_reg_992_pp0_iter1_reg;
reg   [3:0] tmp_s_reg_997;
wire   [0:0] trunc_ln46_fu_554_p1;
reg   [0:0] trunc_ln46_reg_1004;
reg   [0:0] trunc_ln46_reg_1004_pp0_iter1_reg;
reg   [2:0] tmp_3_reg_1010;
reg   [2:0] tmp_3_reg_1010_pp0_iter1_reg;
wire   [1:0] trunc_ln60_fu_568_p1;
reg   [1:0] trunc_ln60_reg_1020;
reg   [0:0] tmp_4_reg_1025;
reg   [0:0] tmp_4_reg_1025_pp0_iter1_reg;
reg   [5:0] v116_addr_1_reg_1031;
reg   [5:0] v116_addr_1_reg_1031_pp0_iter1_reg;
wire   [31:0] v6_fu_590_p19;
reg   [31:0] v6_reg_1037;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] v116_load_reg_1052;
reg   [31:0] v116_load_1_reg_1067;
reg   [5:0] v116_addr_2_reg_1072;
reg   [5:0] v116_addr_2_reg_1072_pp0_iter1_reg;
reg   [5:0] v116_addr_2_reg_1072_pp0_iter2_reg;
reg   [5:0] v116_addr_3_reg_1077;
reg   [5:0] v116_addr_3_reg_1077_pp0_iter1_reg;
reg   [5:0] v116_addr_3_reg_1077_pp0_iter2_reg;
wire   [31:0] v3_2_fu_688_p3;
reg   [31:0] v3_2_reg_1082;
reg   [31:0] v113_1_load_reg_1087;
reg   [31:0] v113_0_load_1_reg_1092;
reg   [31:0] v113_1_load_1_reg_1097;
reg   [31:0] v116_load_2_reg_1122;
reg   [31:0] v116_load_3_reg_1127;
reg   [5:0] v116_addr_4_reg_1132;
reg   [5:0] v116_addr_4_reg_1132_pp0_iter1_reg;
reg   [5:0] v116_addr_4_reg_1132_pp0_iter2_reg;
wire   [31:0] v10_fu_742_p1;
reg   [31:0] v113_1_load_2_reg_1142;
reg   [31:0] v113_0_load_3_reg_1147;
reg   [31:0] v113_1_load_3_reg_1152;
reg   [31:0] v116_load_4_reg_1157;
wire   [31:0] v16_fu_747_p1;
wire   [31:0] v22_fu_751_p1;
reg   [31:0] v11_reg_1172;
wire   [31:0] v28_fu_755_p1;
wire   [31:0] v9_fu_759_p1;
reg   [31:0] v17_reg_1187;
wire   [31:0] v34_fu_763_p1;
reg   [31:0] v23_reg_1197;
wire   [31:0] v40_fu_778_p1;
wire   [31:0] v15_fu_782_p1;
reg   [31:0] v29_reg_1212;
wire   [31:0] v46_fu_786_p1;
wire   [31:0] v21_fu_790_p1;
reg   [31:0] v35_reg_1227;
wire   [31:0] v52_fu_809_p1;
wire   [31:0] v27_fu_813_p1;
reg   [5:0] v116_addr_5_reg_1242;
reg   [5:0] v116_addr_5_reg_1242_pp0_iter2_reg;
reg   [31:0] v41_reg_1247;
wire   [31:0] v33_fu_842_p1;
reg   [5:0] v116_addr_6_reg_1257;
reg   [5:0] v116_addr_6_reg_1257_pp0_iter2_reg;
reg   [5:0] v116_addr_7_reg_1263;
reg   [5:0] v116_addr_7_reg_1263_pp0_iter2_reg;
reg   [31:0] v47_reg_1268;
wire   [31:0] v39_fu_846_p1;
reg   [31:0] v116_load_7_reg_1278;
reg   [31:0] v53_reg_1283;
wire   [31:0] v45_fu_851_p1;
wire   [31:0] v51_fu_856_p1;
reg   [31:0] v36_reg_1298;
reg   [31:0] v42_reg_1303;
reg   [31:0] v48_reg_1308;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln26_fu_504_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_fu_516_p1;
wire   [63:0] zext_ln39_fu_539_p1;
wire   [63:0] zext_ln33_fu_635_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln47_fu_662_p1;
wire   [63:0] zext_ln46_fu_649_p1;
wire   [63:0] zext_ln53_fu_675_p1;
wire   [63:0] zext_ln61_fu_717_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln75_fu_731_p1;
wire   [63:0] zext_ln60_fu_703_p1;
wire   [63:0] zext_ln67_fu_804_p1;
wire   [63:0] zext_ln74_fu_825_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln82_fu_837_p1;
reg   [31:0] v3_fu_120;
reg   [6:0] v49_fu_124;
wire   [6:0] add_ln28_fu_768_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v49_load;
reg   [6:0] v4_fu_128;
wire   [6:0] select_ln27_fu_478_p3;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [9:0] indvar_flatten_fu_132;
wire   [9:0] add_ln27_1_fu_444_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v124_ce0_local;
reg    v124_1_ce0_local;
reg    v124_2_ce0_local;
reg    v124_3_ce0_local;
reg    v124_4_ce0_local;
reg    v124_5_ce0_local;
reg    v124_6_ce0_local;
reg    v124_7_ce0_local;
reg    v116_ce1_local;
reg   [5:0] v116_address1_local;
reg    v116_ce0_local;
reg   [5:0] v116_address0_local;
reg    v116_we1_local;
reg   [31:0] v116_d1_local;
wire   [31:0] bitcast_ln36_fu_860_p1;
wire    ap_block_pp0_stage6;
wire   [31:0] bitcast_ln43_fu_865_p1;
wire    ap_block_pp0_stage7;
wire   [31:0] bitcast_ln50_fu_870_p1;
wire    ap_block_pp0_stage4;
reg    v116_we0_local;
reg   [31:0] v116_d0_local;
wire   [31:0] bitcast_ln57_fu_875_p1;
wire   [31:0] bitcast_ln64_fu_880_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln71_fu_884_p1;
wire   [31:0] bitcast_ln78_fu_888_p1;
wire   [31:0] bitcast_ln86_fu_892_p1;
reg    v113_0_ce1_local;
reg   [10:0] v113_0_address1_local;
reg    v113_0_ce0_local;
reg   [10:0] v113_0_address0_local;
reg    v113_1_ce1_local;
reg   [10:0] v113_1_address1_local;
reg    v113_1_ce0_local;
reg   [10:0] v113_1_address0_local;
reg   [31:0] grp_fu_395_p0;
reg   [31:0] grp_fu_395_p1;
reg   [31:0] grp_fu_399_p0;
wire   [0:0] tmp_1_fu_462_p3;
wire   [6:0] add_ln27_fu_456_p2;
wire   [2:0] lshr_ln1_fu_494_p4;
wire   [5:0] or_ln_fu_531_p3;
wire   [31:0] v6_fu_590_p17;
wire   [10:0] tmp_fu_629_p3;
wire   [5:0] or_ln1_fu_641_p4;
wire   [10:0] tmp_2_fu_654_p4;
wire   [5:0] or_ln2_fu_668_p3;
wire   [0:0] icmp_ln31_fu_683_p2;
wire   [5:0] or_ln3_fu_695_p4;
wire   [10:0] tmp_5_fu_708_p5;
wire   [10:0] tmp_6_fu_723_p4;
wire   [5:0] or_ln4_fu_794_p5;
wire   [5:0] or_ln5_fu_817_p4;
wire   [5:0] or_ln6_fu_830_p3;
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
wire   [2:0] v6_fu_590_p1;
wire   [2:0] v6_fu_590_p3;
wire   [2:0] v6_fu_590_p5;
wire   [2:0] v6_fu_590_p7;
wire  signed [2:0] v6_fu_590_p9;
wire  signed [2:0] v6_fu_590_p11;
wire  signed [2:0] v6_fu_590_p13;
wire  signed [2:0] v6_fu_590_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_fu_120 = 32'd0;
#0 v49_fu_124 = 7'd0;
#0 v4_fu_128 = 7'd0;
#0 indvar_flatten_fu_132 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U253(.din0(v124_q0),.din1(v124_1_q0),.din2(v124_2_q0),.din3(v124_3_q0),.din4(v124_4_q0),.din5(v124_5_q0),.din6(v124_6_q0),.din7(v124_7_q0),.def(v6_fu_590_p17),.sel(trunc_ln27_1_reg_942),.dout(v6_fu_590_p19));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_438_p2 == 1'd0))) begin
            indvar_flatten_fu_132 <= add_ln27_1_fu_444_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_132 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_407 <= v116_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_407 <= v116_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_124 <= 7'd0;
    end else if (((icmp_ln27_reg_924 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v49_fu_124 <= add_ln28_fu_768_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_438_p2 == 1'd0))) begin
            v4_fu_128 <= select_ln27_fu_478_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4_fu_128 <= 7'd0;
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
        icmp_ln27_reg_924 <= icmp_ln27_fu_438_p2;
        lshr_ln2_reg_987 <= {{select_ln26_fu_470_p3[5:1]}};
        select_ln26_reg_928 <= select_ln26_fu_470_p3;
        tmp_3_reg_1010 <= {{select_ln26_fu_470_p3[5:3]}};
        tmp_3_reg_1010_pp0_iter1_reg <= tmp_3_reg_1010;
        tmp_4_reg_1025 <= select_ln26_fu_470_p3[32'd1];
        tmp_4_reg_1025_pp0_iter1_reg <= tmp_4_reg_1025;
        tmp_s_reg_997 <= {{select_ln26_fu_470_p3[5:2]}};
        trunc_ln27_1_reg_942 <= trunc_ln27_1_fu_490_p1;
        trunc_ln27_reg_934 <= trunc_ln27_fu_486_p1;
        trunc_ln46_reg_1004 <= trunc_ln46_fu_554_p1;
        trunc_ln46_reg_1004_pp0_iter1_reg <= trunc_ln46_reg_1004;
        trunc_ln60_reg_1020 <= trunc_ln60_fu_568_p1;
        v116_addr_1_reg_1031[5 : 1] <= zext_ln39_fu_539_p1[5 : 1];
        v116_addr_1_reg_1031_pp0_iter1_reg[5 : 1] <= v116_addr_1_reg_1031[5 : 1];
        v116_addr_reg_992 <= zext_ln28_fu_516_p1;
        v116_addr_reg_992_pp0_iter1_reg <= v116_addr_reg_992;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_403 <= v113_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_412 <= grp_fu_200_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_416 <= grp_fu_200_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_0_load_1_reg_1092 <= v113_0_q0;
        v113_1_load_1_reg_1097 <= v113_1_q0;
        v113_1_load_reg_1087 <= v113_1_q1;
        v116_load_2_reg_1122 <= v116_q1;
        v116_load_3_reg_1127 <= v116_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_0_load_3_reg_1147 <= v113_0_q0;
        v113_1_load_2_reg_1142 <= v113_1_q1;
        v113_1_load_3_reg_1152 <= v113_1_q0;
        v116_load_4_reg_1157 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_addr_2_reg_1072[0] <= zext_ln46_fu_649_p1[0];
v116_addr_2_reg_1072[5 : 2] <= zext_ln46_fu_649_p1[5 : 2];
        v116_addr_2_reg_1072_pp0_iter1_reg[0] <= v116_addr_2_reg_1072[0];
v116_addr_2_reg_1072_pp0_iter1_reg[5 : 2] <= v116_addr_2_reg_1072[5 : 2];
        v116_addr_2_reg_1072_pp0_iter2_reg[0] <= v116_addr_2_reg_1072_pp0_iter1_reg[0];
v116_addr_2_reg_1072_pp0_iter2_reg[5 : 2] <= v116_addr_2_reg_1072_pp0_iter1_reg[5 : 2];
        v116_addr_3_reg_1077[5 : 2] <= zext_ln53_fu_675_p1[5 : 2];
        v116_addr_3_reg_1077_pp0_iter1_reg[5 : 2] <= v116_addr_3_reg_1077[5 : 2];
        v116_addr_3_reg_1077_pp0_iter2_reg[5 : 2] <= v116_addr_3_reg_1077_pp0_iter1_reg[5 : 2];
        v6_reg_1037 <= v6_fu_590_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_addr_4_reg_1132[1 : 0] <= zext_ln60_fu_703_p1[1 : 0];
v116_addr_4_reg_1132[5 : 3] <= zext_ln60_fu_703_p1[5 : 3];
        v116_addr_4_reg_1132_pp0_iter1_reg[1 : 0] <= v116_addr_4_reg_1132[1 : 0];
v116_addr_4_reg_1132_pp0_iter1_reg[5 : 3] <= v116_addr_4_reg_1132[5 : 3];
        v116_addr_4_reg_1132_pp0_iter2_reg[1 : 0] <= v116_addr_4_reg_1132_pp0_iter1_reg[1 : 0];
v116_addr_4_reg_1132_pp0_iter2_reg[5 : 3] <= v116_addr_4_reg_1132_pp0_iter1_reg[5 : 3];
        v116_addr_5_reg_1242[1] <= zext_ln67_fu_804_p1[1];
v116_addr_5_reg_1242[5 : 3] <= zext_ln67_fu_804_p1[5 : 3];
        v116_addr_5_reg_1242_pp0_iter2_reg[1] <= v116_addr_5_reg_1242[1];
v116_addr_5_reg_1242_pp0_iter2_reg[5 : 3] <= v116_addr_5_reg_1242[5 : 3];
        v3_2_reg_1082 <= v3_2_fu_688_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_addr_6_reg_1257[0] <= zext_ln74_fu_825_p1[0];
v116_addr_6_reg_1257[5 : 3] <= zext_ln74_fu_825_p1[5 : 3];
        v116_addr_6_reg_1257_pp0_iter2_reg[0] <= v116_addr_6_reg_1257[0];
v116_addr_6_reg_1257_pp0_iter2_reg[5 : 3] <= v116_addr_6_reg_1257[5 : 3];
        v116_addr_7_reg_1263[5 : 3] <= zext_ln82_fu_837_p1[5 : 3];
        v116_addr_7_reg_1263_pp0_iter2_reg[5 : 3] <= v116_addr_7_reg_1263[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_load_1_reg_1067 <= v116_q0;
        v116_load_reg_1052 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_load_7_reg_1278 <= v116_q0;
        v47_reg_1268 <= grp_fu_204_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v11_reg_1172 <= grp_fu_204_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v17_reg_1187 <= grp_fu_204_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v23_reg_1197 <= grp_fu_204_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_reg_1212 <= grp_fu_204_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v35_reg_1227 <= grp_fu_204_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v36_reg_1298 <= grp_fu_200_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_924 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_fu_120 <= v3_2_fu_688_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v41_reg_1247 <= grp_fu_204_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v42_reg_1303 <= grp_fu_200_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v48_reg_1308 <= grp_fu_200_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v53_reg_1283 <= grp_fu_204_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_924 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v49_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v49_load = v49_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_395_p0 = v51_fu_856_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_395_p0 = v45_fu_851_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_395_p0 = v39_fu_846_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_395_p0 = v33_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_395_p0 = v27_fu_813_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_395_p0 = v21_fu_790_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_395_p0 = v15_fu_782_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_395_p0 = v9_fu_759_p1;
    end else begin
        grp_fu_395_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_395_p1 = v53_reg_1283;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_395_p1 = v47_reg_1268;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_395_p1 = v41_reg_1247;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_395_p1 = v35_reg_1227;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_395_p1 = v29_reg_1212;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_395_p1 = v23_reg_1197;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_395_p1 = v17_reg_1187;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_395_p1 = v11_reg_1172;
    end else begin
        grp_fu_395_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_399_p0 = v52_fu_809_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_399_p0 = v46_fu_786_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_399_p0 = v40_fu_778_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_399_p0 = v34_fu_763_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_399_p0 = v28_fu_755_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_399_p0 = v22_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_399_p0 = v16_fu_747_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_399_p0 = v10_fu_742_p1;
    end else begin
        grp_fu_399_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_0_address0_local = zext_ln75_fu_731_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_0_address0_local = zext_ln47_fu_662_p1;
        end else begin
            v113_0_address0_local = 'bx;
        end
    end else begin
        v113_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_0_address1_local = zext_ln61_fu_717_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_0_address1_local = zext_ln33_fu_635_p1;
        end else begin
            v113_0_address1_local = 'bx;
        end
    end else begin
        v113_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_0_ce1_local = 1'b1;
    end else begin
        v113_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_1_address0_local = zext_ln75_fu_731_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_1_address0_local = zext_ln47_fu_662_p1;
        end else begin
            v113_1_address0_local = 'bx;
        end
    end else begin
        v113_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_1_address1_local = zext_ln61_fu_717_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_1_address1_local = zext_ln33_fu_635_p1;
        end else begin
            v113_1_address1_local = 'bx;
        end
    end else begin
        v113_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_1_ce1_local = 1'b1;
    end else begin
        v113_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address0_local = v116_addr_7_reg_1263_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address0_local = v116_addr_6_reg_1257_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address0_local = v116_addr_5_reg_1242_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address0_local = v116_addr_3_reg_1077_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address0_local = zext_ln82_fu_837_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address0_local = zext_ln67_fu_804_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address0_local = zext_ln53_fu_675_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address0_local = zext_ln39_fu_539_p1;
    end else begin
        v116_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address1_local = v116_addr_4_reg_1132_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address1_local = v116_addr_2_reg_1072_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address1_local = v116_addr_1_reg_1031_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address1_local = v116_addr_reg_992_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address1_local = zext_ln74_fu_825_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address1_local = zext_ln60_fu_703_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address1_local = zext_ln46_fu_649_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address1_local = zext_ln28_fu_516_p1;
    end else begin
        v116_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_ce0_local = 1'b1;
    end else begin
        v116_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_ce1_local = 1'b1;
    end else begin
        v116_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v116_d0_local = bitcast_ln86_fu_892_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v116_d0_local = bitcast_ln78_fu_888_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v116_d0_local = bitcast_ln71_fu_884_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v116_d0_local = bitcast_ln57_fu_875_p1;
        end else begin
            v116_d0_local = 'bx;
        end
    end else begin
        v116_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_d1_local = bitcast_ln64_fu_880_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_d1_local = bitcast_ln50_fu_870_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_d1_local = bitcast_ln43_fu_865_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_d1_local = bitcast_ln36_fu_860_p1;
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
        v124_4_ce0_local = 1'b1;
    end else begin
        v124_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_5_ce0_local = 1'b1;
    end else begin
        v124_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_6_ce0_local = 1'b1;
    end else begin
        v124_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_7_ce0_local = 1'b1;
    end else begin
        v124_7_ce0_local = 1'b0;
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
assign add_ln27_1_fu_444_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln27_fu_456_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_768_p2 = (select_ln26_reg_928 + 7'd8);
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
assign bitcast_ln36_fu_860_p1 = reg_412;
assign bitcast_ln43_fu_865_p1 = reg_412;
assign bitcast_ln50_fu_870_p1 = reg_412;
assign bitcast_ln57_fu_875_p1 = reg_416;
assign bitcast_ln64_fu_880_p1 = v36_reg_1298;
assign bitcast_ln71_fu_884_p1 = v42_reg_1303;
assign bitcast_ln78_fu_888_p1 = v48_reg_1308;
assign bitcast_ln86_fu_892_p1 = reg_416;
assign grp_fu_200_p_ce = 1'b1;
assign grp_fu_200_p_din0 = grp_fu_395_p0;
assign grp_fu_200_p_din1 = grp_fu_395_p1;
assign grp_fu_200_p_opcode = 2'd0;
assign grp_fu_204_p_ce = 1'b1;
assign grp_fu_204_p_din0 = grp_fu_399_p0;
assign grp_fu_204_p_din1 = v3_2_reg_1082;
assign icmp_ln27_fu_438_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_683_p2 = ((select_ln26_reg_928 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_494_p4 = {{select_ln27_fu_478_p3[5:3]}};
assign lshr_ln2_fu_521_p4 = {{select_ln26_fu_470_p3[5:1]}};
assign or_ln1_fu_641_p4 = {{{tmp_s_reg_997}, {1'd1}}, {trunc_ln46_reg_1004}};
assign or_ln2_fu_668_p3 = {{tmp_s_reg_997}, {2'd3}};
assign or_ln3_fu_695_p4 = {{{tmp_3_reg_1010}, {1'd1}}, {trunc_ln60_reg_1020}};
assign or_ln4_fu_794_p5 = {{{{tmp_3_reg_1010_pp0_iter1_reg}, {1'd1}}, {tmp_4_reg_1025_pp0_iter1_reg}}, {1'd1}};
assign or_ln5_fu_817_p4 = {{{tmp_3_reg_1010_pp0_iter1_reg}, {2'd3}}, {trunc_ln46_reg_1004_pp0_iter1_reg}};
assign or_ln6_fu_830_p3 = {{tmp_3_reg_1010_pp0_iter1_reg}, {3'd7}};
assign or_ln_fu_531_p3 = {{lshr_ln2_fu_521_p4}, {1'd1}};
assign select_ln26_fu_470_p3 = ((tmp_1_fu_462_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v49_load);
assign select_ln27_fu_478_p3 = ((tmp_1_fu_462_p3[0:0] == 1'b1) ? add_ln27_fu_456_p2 : ap_sig_allocacmp_v4_load);
assign tmp_1_fu_462_p3 = ap_sig_allocacmp_v49_load[32'd6];
assign tmp_2_fu_654_p4 = {{{trunc_ln27_reg_934}, {tmp_s_reg_997}}, {1'd1}};
assign tmp_5_fu_708_p5 = {{{{trunc_ln27_reg_934}, {tmp_3_reg_1010}}, {1'd1}}, {tmp_4_reg_1025}};
assign tmp_6_fu_723_p4 = {{{trunc_ln27_reg_934}, {tmp_3_reg_1010}}, {2'd3}};
assign tmp_fu_629_p3 = {{trunc_ln27_reg_934}, {lshr_ln2_reg_987}};
assign trunc_ln27_1_fu_490_p1 = select_ln27_fu_478_p3[2:0];
assign trunc_ln27_fu_486_p1 = select_ln27_fu_478_p3[5:0];
assign trunc_ln46_fu_554_p1 = select_ln26_fu_470_p3[0:0];
assign trunc_ln60_fu_568_p1 = select_ln26_fu_470_p3[1:0];
assign v10_fu_742_p1 = reg_403;
assign v113_0_address0 = v113_0_address0_local;
assign v113_0_address1 = v113_0_address1_local;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_0_ce1 = v113_0_ce1_local;
assign v113_1_address0 = v113_1_address0_local;
assign v113_1_address1 = v113_1_address1_local;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_1_ce1 = v113_1_ce1_local;
assign v116_address0 = v116_address0_local;
assign v116_address1 = v116_address1_local;
assign v116_ce0 = v116_ce0_local;
assign v116_ce1 = v116_ce1_local;
assign v116_d0 = v116_d0_local;
assign v116_d1 = v116_d1_local;
assign v116_we0 = v116_we0_local;
assign v116_we1 = v116_we1_local;
assign v124_1_address0 = zext_ln26_fu_504_p1;
assign v124_1_ce0 = v124_1_ce0_local;
assign v124_2_address0 = zext_ln26_fu_504_p1;
assign v124_2_ce0 = v124_2_ce0_local;
assign v124_3_address0 = zext_ln26_fu_504_p1;
assign v124_3_ce0 = v124_3_ce0_local;
assign v124_4_address0 = zext_ln26_fu_504_p1;
assign v124_4_ce0 = v124_4_ce0_local;
assign v124_5_address0 = zext_ln26_fu_504_p1;
assign v124_5_ce0 = v124_5_ce0_local;
assign v124_6_address0 = zext_ln26_fu_504_p1;
assign v124_6_ce0 = v124_6_ce0_local;
assign v124_7_address0 = zext_ln26_fu_504_p1;
assign v124_7_ce0 = v124_7_ce0_local;
assign v124_address0 = zext_ln26_fu_504_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_fu_782_p1 = v116_load_1_reg_1067;
assign v16_fu_747_p1 = v113_1_load_reg_1087;
assign v21_fu_790_p1 = v116_load_2_reg_1122;
assign v22_fu_751_p1 = v113_0_load_1_reg_1092;
assign v27_fu_813_p1 = v116_load_3_reg_1127;
assign v28_fu_755_p1 = v113_1_load_1_reg_1097;
assign v33_fu_842_p1 = v116_load_4_reg_1157;
assign v34_fu_763_p1 = reg_403;
assign v39_fu_846_p1 = reg_407;
assign v3_2_fu_688_p3 = ((icmp_ln31_fu_683_p2[0:0] == 1'b1) ? v6_reg_1037 : v3_fu_120);
assign v40_fu_778_p1 = v113_1_load_2_reg_1142;
assign v45_fu_851_p1 = reg_407;
assign v46_fu_786_p1 = v113_0_load_3_reg_1147;
assign v51_fu_856_p1 = v116_load_7_reg_1278;
assign v52_fu_809_p1 = v113_1_load_3_reg_1152;
assign v6_fu_590_p17 = 'bx;
assign v9_fu_759_p1 = v116_load_reg_1052;
assign zext_ln26_fu_504_p1 = lshr_ln1_fu_494_p4;
assign zext_ln28_fu_516_p1 = select_ln26_fu_470_p3;
assign zext_ln33_fu_635_p1 = tmp_fu_629_p3;
assign zext_ln39_fu_539_p1 = or_ln_fu_531_p3;
assign zext_ln46_fu_649_p1 = or_ln1_fu_641_p4;
assign zext_ln47_fu_662_p1 = tmp_2_fu_654_p4;
assign zext_ln53_fu_675_p1 = or_ln2_fu_668_p3;
assign zext_ln60_fu_703_p1 = or_ln3_fu_695_p4;
assign zext_ln61_fu_717_p1 = tmp_5_fu_708_p5;
assign zext_ln67_fu_804_p1 = or_ln4_fu_794_p5;
assign zext_ln74_fu_825_p1 = or_ln5_fu_817_p4;
assign zext_ln75_fu_731_p1 = tmp_6_fu_723_p4;
assign zext_ln82_fu_837_p1 = or_ln6_fu_830_p3;
always @ (posedge ap_clk) begin
    v116_addr_1_reg_1031[0] <= 1'b1;
    v116_addr_1_reg_1031_pp0_iter1_reg[0] <= 1'b1;
    v116_addr_2_reg_1072[1] <= 1'b1;
    v116_addr_2_reg_1072_pp0_iter1_reg[1] <= 1'b1;
    v116_addr_2_reg_1072_pp0_iter2_reg[1] <= 1'b1;
    v116_addr_3_reg_1077[1:0] <= 2'b11;
    v116_addr_3_reg_1077_pp0_iter1_reg[1:0] <= 2'b11;
    v116_addr_3_reg_1077_pp0_iter2_reg[1:0] <= 2'b11;
    v116_addr_4_reg_1132[2] <= 1'b1;
    v116_addr_4_reg_1132_pp0_iter1_reg[2] <= 1'b1;
    v116_addr_4_reg_1132_pp0_iter2_reg[2] <= 1'b1;
    v116_addr_5_reg_1242[0] <= 1'b1;
    v116_addr_5_reg_1242[2] <= 1'b1;
    v116_addr_5_reg_1242_pp0_iter2_reg[0] <= 1'b1;
    v116_addr_5_reg_1242_pp0_iter2_reg[2] <= 1'b1;
    v116_addr_6_reg_1257[2:1] <= 2'b11;
    v116_addr_6_reg_1257_pp0_iter2_reg[2:1] <= 2'b11;
    v116_addr_7_reg_1263[2:0] <= 3'b111;
    v116_addr_7_reg_1263_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 
