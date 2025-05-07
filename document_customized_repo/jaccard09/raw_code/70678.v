module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_139,t_1,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_1_address0,transition_1_ce0,transition_1_q0,transition_2_address0,transition_2_ce0,transition_2_q0,transition_3_address0,transition_3_ce0,transition_3_q0,transition_4_address0,transition_4_ce0,transition_4_q0,transition_5_address0,transition_5_ce0,transition_5_q0,transition_6_address0,transition_6_ce0,transition_6_q0,transition_7_address0,transition_7_ce0,transition_7_q0,empty,zext_ln52_3,min_s_6_out,min_s_6_out_ap_vld,grp_fu_649_p_din0,grp_fu_649_p_din1,grp_fu_649_p_opcode,grp_fu_649_p_dout0,grp_fu_649_p_ce,grp_fu_1085_p_din0,grp_fu_1085_p_din1,grp_fu_1085_p_opcode,grp_fu_1085_p_dout0,grp_fu_1085_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_139;
input  [7:0] t_1;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
input  [4:0] zext_ln52_2;
output  [8:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [8:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [8:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [8:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [8:0] transition_4_address0;
output   transition_4_ce0;
input  [63:0] transition_4_q0;
output  [8:0] transition_5_address0;
output   transition_5_ce0;
input  [63:0] transition_5_q0;
output  [8:0] transition_6_address0;
output   transition_6_ce0;
input  [63:0] transition_6_q0;
output  [8:0] transition_7_address0;
output   transition_7_ce0;
input  [63:0] transition_7_q0;
input  [2:0] empty;
input  [11:0] zext_ln52_3;
output  [7:0] min_s_6_out;
output   min_s_6_out_ap_vld;
output  [63:0] grp_fu_649_p_din0;
output  [63:0] grp_fu_649_p_din1;
output  [1:0] grp_fu_649_p_opcode;
input  [63:0] grp_fu_649_p_dout0;
output   grp_fu_649_p_ce;
output  [63:0] grp_fu_1085_p_din0;
output  [63:0] grp_fu_1085_p_din1;
output  [4:0] grp_fu_1085_p_opcode;
input  [0:0] grp_fu_1085_p_dout0;
output   grp_fu_1085_p_ce;
reg ap_idle;
reg min_s_6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] tmp_1_reg_1121;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] zext_ln52_2_cast_fu_445_p1;
reg   [8:0] zext_ln52_2_cast_reg_1038;
reg   [5:0] s_reg_1043;
reg   [5:0] s_reg_1043_pp0_iter1_reg;
reg   [5:0] s_reg_1043_pp0_iter2_reg;
wire   [1:0] trunc_ln17_fu_471_p1;
reg   [1:0] trunc_ln17_reg_1049;
wire   [6:0] add_ln53_fu_527_p2;
reg   [6:0] add_ln53_reg_1115;
reg   [0:0] tmp_1_reg_1121_pp0_iter1_reg;
reg   [0:0] tmp_1_reg_1121_pp0_iter2_reg;
wire   [63:0] tmp_69_fu_541_p11;
reg   [63:0] tmp_69_reg_1125;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_70_fu_596_p19;
reg   [63:0] tmp_70_reg_1130;
wire   [5:0] trunc_ln54_fu_661_p1;
reg   [5:0] trunc_ln54_reg_1155;
reg   [5:0] trunc_ln54_reg_1155_pp0_iter1_reg;
reg   [5:0] trunc_ln54_reg_1155_pp0_iter2_reg;
wire   [63:0] tmp_71_fu_689_p11;
reg   [63:0] tmp_71_reg_1200;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_72_fu_744_p19;
reg   [63:0] tmp_72_reg_1205;
reg   [63:0] p_reg_1210;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] min_p_127_reg_1217;
reg   [63:0] p_63_reg_1224;
wire   [0:0] and_ln55_1_fu_873_p2;
reg   [0:0] and_ln55_1_reg_1231;
wire   [7:0] min_s_4_fu_885_p3;
reg   [7:0] min_s_4_reg_1237;
wire   [63:0] min_p_129_fu_893_p3;
reg   [63:0] min_p_129_reg_1242;
reg   [0:0] tmp_273_reg_1249;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
reg    ap_condition_exit_pp0_iter2_stage2;
wire   [63:0] zext_ln54_2_fu_493_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_515_p1;
wire   [63:0] zext_ln54_4_fu_653_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_1_fu_677_p1;
reg   [63:0] min_p_fu_136;
wire   [63:0] min_p_131_fu_980_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_140;
wire   [7:0] min_s_5_fu_989_p3;
wire    ap_block_pp0_stage2;
reg   [5:0] min_s_1_fu_144;
wire   [5:0] add_ln53_1_fu_783_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_block_pp0_stage2_01001;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
reg    llike_2_ce0_local;
reg   [11:0] llike_2_address0_local;
reg    llike_3_ce0_local;
reg   [11:0] llike_3_address0_local;
reg    transition_0_ce0_local;
reg   [8:0] transition_0_address0_local;
reg    transition_1_ce0_local;
reg   [8:0] transition_1_address0_local;
reg    transition_2_ce0_local;
reg   [8:0] transition_2_address0_local;
reg    transition_3_ce0_local;
reg   [8:0] transition_3_address0_local;
reg    transition_4_ce0_local;
reg   [8:0] transition_4_address0_local;
reg    transition_5_ce0_local;
reg   [8:0] transition_5_address0_local;
reg    transition_6_ce0_local;
reg   [8:0] transition_6_address0_local;
reg    transition_7_ce0_local;
reg   [8:0] transition_7_address0_local;
reg   [63:0] grp_fu_437_p0;
reg   [63:0] grp_fu_437_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_441_p0;
reg   [63:0] grp_fu_441_p1;
wire   [3:0] lshr_ln8_1_fu_475_p4;
wire   [11:0] tmp_s_fu_485_p3;
wire   [8:0] shl_ln2_fu_501_p3;
wire   [8:0] add_ln54_fu_509_p2;
wire   [6:0] zext_ln17_fu_467_p1;
wire   [63:0] tmp_69_fu_541_p9;
wire   [63:0] tmp_70_fu_596_p2;
wire   [63:0] tmp_70_fu_596_p4;
wire   [63:0] tmp_70_fu_596_p6;
wire   [63:0] tmp_70_fu_596_p8;
wire   [63:0] tmp_70_fu_596_p10;
wire   [63:0] tmp_70_fu_596_p12;
wire   [63:0] tmp_70_fu_596_p14;
wire   [63:0] tmp_70_fu_596_p16;
wire   [63:0] tmp_70_fu_596_p17;
wire   [4:0] lshr_ln9_3_fu_635_p4;
wire   [11:0] zext_ln54_3_fu_644_p1;
wire   [11:0] add_ln54_2_fu_648_p2;
wire   [8:0] shl_ln54_1_fu_664_p3;
wire   [8:0] add_ln54_1_fu_672_p2;
wire   [63:0] tmp_71_fu_689_p9;
wire   [63:0] tmp_72_fu_744_p2;
wire   [63:0] tmp_72_fu_744_p4;
wire   [63:0] tmp_72_fu_744_p6;
wire   [63:0] tmp_72_fu_744_p8;
wire   [63:0] tmp_72_fu_744_p10;
wire   [63:0] tmp_72_fu_744_p12;
wire   [63:0] tmp_72_fu_744_p14;
wire   [63:0] tmp_72_fu_744_p16;
wire   [63:0] tmp_72_fu_744_p17;
wire    ap_block_pp0_stage4;
wire   [63:0] bitcast_ln55_fu_797_p1;
wire   [63:0] bitcast_ln55_1_fu_814_p1;
wire   [10:0] tmp_268_fu_800_p4;
wire   [51:0] trunc_ln55_fu_810_p1;
wire   [0:0] icmp_ln55_1_fu_837_p2;
wire   [0:0] icmp_ln55_fu_831_p2;
wire   [10:0] tmp_269_fu_817_p4;
wire   [51:0] trunc_ln55_1_fu_827_p1;
wire   [0:0] icmp_ln55_3_fu_855_p2;
wire   [0:0] icmp_ln55_2_fu_849_p2;
wire   [0:0] or_ln55_fu_843_p2;
wire   [0:0] and_ln55_fu_867_p2;
wire   [0:0] or_ln55_1_fu_861_p2;
wire   [7:0] zext_ln55_fu_882_p1;
wire   [63:0] bitcast_ln55_2_fu_899_p1;
wire   [63:0] bitcast_ln55_3_fu_916_p1;
wire   [10:0] tmp_271_fu_902_p4;
wire   [51:0] trunc_ln55_2_fu_912_p1;
wire   [0:0] icmp_ln55_5_fu_939_p2;
wire   [0:0] icmp_ln55_4_fu_933_p2;
wire   [10:0] tmp_272_fu_919_p4;
wire   [51:0] trunc_ln55_3_fu_929_p1;
wire   [0:0] icmp_ln55_7_fu_957_p2;
wire   [0:0] icmp_ln55_6_fu_951_p2;
wire   [0:0] or_ln55_3_fu_963_p2;
wire   [0:0] or_ln55_2_fu_945_p2;
wire   [0:0] and_ln55_2_fu_969_p2;
wire   [0:0] and_ln55_3_fu_975_p2;
wire   [7:0] zext_ln55_1_fu_986_p1;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage3_00001;
wire   [1:0] tmp_69_fu_541_p1;
wire   [1:0] tmp_69_fu_541_p3;
wire  signed [1:0] tmp_69_fu_541_p5;
wire  signed [1:0] tmp_69_fu_541_p7;
wire   [2:0] tmp_70_fu_596_p1;
wire   [2:0] tmp_70_fu_596_p3;
wire   [2:0] tmp_70_fu_596_p5;
wire   [2:0] tmp_70_fu_596_p7;
wire  signed [2:0] tmp_70_fu_596_p9;
wire  signed [2:0] tmp_70_fu_596_p11;
wire  signed [2:0] tmp_70_fu_596_p13;
wire  signed [2:0] tmp_70_fu_596_p15;
wire  signed [1:0] tmp_71_fu_689_p1;
wire   [1:0] tmp_71_fu_689_p3;
wire   [1:0] tmp_71_fu_689_p5;
wire  signed [1:0] tmp_71_fu_689_p7;
wire   [2:0] tmp_72_fu_744_p1;
wire   [2:0] tmp_72_fu_744_p3;
wire   [2:0] tmp_72_fu_744_p5;
wire   [2:0] tmp_72_fu_744_p7;
wire  signed [2:0] tmp_72_fu_744_p9;
wire  signed [2:0] tmp_72_fu_744_p11;
wire  signed [2:0] tmp_72_fu_744_p13;
wire  signed [2:0] tmp_72_fu_744_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_136 = 64'd0;
#0 min_s_fu_140 = 8'd0;
#0 min_s_1_fu_144 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U142(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.def(tmp_69_fu_541_p9),.sel(trunc_ln17_reg_1049),.dout(tmp_69_fu_541_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U143(.din0(tmp_70_fu_596_p2),.din1(tmp_70_fu_596_p4),.din2(tmp_70_fu_596_p6),.din3(tmp_70_fu_596_p8),.din4(tmp_70_fu_596_p10),.din5(tmp_70_fu_596_p12),.din6(tmp_70_fu_596_p14),.din7(tmp_70_fu_596_p16),.def(tmp_70_fu_596_p17),.sel(empty),.dout(tmp_70_fu_596_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.CASE3( 2'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U144(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.def(tmp_71_fu_689_p9),.sel(trunc_ln17_reg_1049),.dout(tmp_71_fu_689_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U145(.din0(tmp_72_fu_744_p2),.din1(tmp_72_fu_744_p4),.din2(tmp_72_fu_744_p6),.din3(tmp_72_fu_744_p8),.din4(tmp_72_fu_744_p10),.din5(tmp_72_fu_744_p12),.din6(tmp_72_fu_744_p14),.din7(tmp_72_fu_744_p16),.def(tmp_72_fu_744_p17),.sel(empty),.dout(tmp_72_fu_744_p19));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage2)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_136 <= min_p_139;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_1_reg_1121_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_p_fu_136 <= min_p_131_fu_980_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_144 <= 6'd1;
    end else if (((tmp_1_reg_1121 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_s_1_fu_144 <= add_ln53_1_fu_783_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_140 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_1_reg_1121_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_s_fu_140 <= min_s_5_fu_989_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_reg_1115 <= add_ln53_fu_527_p2;
        min_p_127_reg_1217 <= min_p_fu_136;
        s_reg_1043 <= ap_sig_allocacmp_s;
        s_reg_1043_pp0_iter1_reg <= s_reg_1043;
        s_reg_1043_pp0_iter2_reg <= s_reg_1043_pp0_iter1_reg;
        tmp_1_reg_1121 <= add_ln53_fu_527_p2[32'd6];
        tmp_1_reg_1121_pp0_iter1_reg <= tmp_1_reg_1121;
        tmp_1_reg_1121_pp0_iter2_reg <= tmp_1_reg_1121_pp0_iter1_reg;
        trunc_ln17_reg_1049 <= trunc_ln17_fu_471_p1;
        zext_ln52_2_cast_reg_1038[4 : 0] <= zext_ln52_2_cast_fu_445_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln55_1_reg_1231 <= and_ln55_1_fu_873_p2;
        tmp_69_reg_1125 <= tmp_69_fu_541_p11;
        tmp_70_reg_1130 <= tmp_70_fu_596_p19;
        trunc_ln54_reg_1155 <= trunc_ln54_fu_661_p1;
        trunc_ln54_reg_1155_pp0_iter1_reg <= trunc_ln54_reg_1155;
        trunc_ln54_reg_1155_pp0_iter2_reg <= trunc_ln54_reg_1155_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_129_reg_1242 <= min_p_129_fu_893_p3;
        tmp_71_reg_1200 <= tmp_71_fu_689_p11;
        tmp_72_reg_1205 <= tmp_72_fu_744_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_s_4_reg_1237 <= min_s_4_fu_885_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_63_reg_1224 <= grp_fu_649_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_reg_1210 <= grp_fu_649_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_273_reg_1249 <= grp_fu_1085_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_1121 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_1_reg_1121_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_144;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_437_p0 = tmp_71_reg_1200;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_437_p0 = tmp_69_reg_1125;
        end else begin
            grp_fu_437_p0 = 'bx;
        end
    end else begin
        grp_fu_437_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_437_p1 = tmp_72_reg_1205;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_437_p1 = tmp_70_reg_1130;
        end else begin
            grp_fu_437_p1 = 'bx;
        end
    end else begin
        grp_fu_437_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_441_p0 = p_63_reg_1224;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_441_p0 = p_reg_1210;
        end else begin
            grp_fu_441_p0 = 'bx;
        end
    end else begin
        grp_fu_441_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_441_p1 = min_p_129_fu_893_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_441_p1 = min_p_fu_136;
        end else begin
            grp_fu_441_p1 = 'bx;
        end
    end else begin
        grp_fu_441_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_4_fu_653_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_2_fu_493_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln54_4_fu_653_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_2_fu_493_p1;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln54_4_fu_653_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_2_fu_493_p1;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_4_fu_653_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_2_fu_493_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_1_reg_1121_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_s_6_out_ap_vld = 1'b1;
    end else begin
        min_s_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_1_fu_677_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_515_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_1_fu_677_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_515_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_1_fu_677_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_515_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_1_fu_677_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_515_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address0_local = zext_ln54_1_fu_677_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln54_fu_515_p1;
        end else begin
            transition_4_address0_local = 'bx;
        end
    end else begin
        transition_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce0_local = 1'b1;
    end else begin
        transition_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address0_local = zext_ln54_1_fu_677_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln54_fu_515_p1;
        end else begin
            transition_5_address0_local = 'bx;
        end
    end else begin
        transition_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce0_local = 1'b1;
    end else begin
        transition_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address0_local = zext_ln54_1_fu_677_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln54_fu_515_p1;
        end else begin
            transition_6_address0_local = 'bx;
        end
    end else begin
        transition_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce0_local = 1'b1;
    end else begin
        transition_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address0_local = zext_ln54_1_fu_677_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln54_fu_515_p1;
        end else begin
            transition_7_address0_local = 'bx;
        end
    end else begin
        transition_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce0_local = 1'b1;
    end else begin
        transition_7_ce0_local = 1'b0;
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln53_1_fu_783_p2 = (s_reg_1043 + 6'd2);
assign add_ln53_fu_527_p2 = (zext_ln17_fu_467_p1 + 7'd1);
assign add_ln54_1_fu_672_p2 = (shl_ln54_1_fu_664_p3 + zext_ln52_2_cast_reg_1038);
assign add_ln54_2_fu_648_p2 = (zext_ln52_3 + zext_ln54_3_fu_644_p1);
assign add_ln54_fu_509_p2 = (shl_ln2_fu_501_p3 + zext_ln52_2_cast_fu_445_p1);
assign and_ln55_1_fu_873_p2 = (or_ln55_1_fu_861_p2 & and_ln55_fu_867_p2);
assign and_ln55_2_fu_969_p2 = (or_ln55_3_fu_963_p2 & or_ln55_2_fu_945_p2);
assign and_ln55_3_fu_975_p2 = (tmp_273_reg_1249 & and_ln55_2_fu_969_p2);
assign and_ln55_fu_867_p2 = (or_ln55_fu_843_p2 & grp_fu_1085_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign bitcast_ln55_1_fu_814_p1 = min_p_127_reg_1217;
assign bitcast_ln55_2_fu_899_p1 = p_63_reg_1224;
assign bitcast_ln55_3_fu_916_p1 = min_p_129_reg_1242;
assign bitcast_ln55_fu_797_p1 = p_reg_1210;
assign grp_fu_1085_p_ce = 1'b1;
assign grp_fu_1085_p_din0 = grp_fu_441_p0;
assign grp_fu_1085_p_din1 = grp_fu_441_p1;
assign grp_fu_1085_p_opcode = 5'd4;
assign grp_fu_649_p_ce = 1'b1;
assign grp_fu_649_p_din0 = grp_fu_437_p0;
assign grp_fu_649_p_din1 = grp_fu_437_p1;
assign grp_fu_649_p_opcode = 2'd0;
assign icmp_ln55_1_fu_837_p2 = ((trunc_ln55_fu_810_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_849_p2 = ((tmp_269_fu_817_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_855_p2 = ((trunc_ln55_1_fu_827_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_933_p2 = ((tmp_271_fu_902_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_939_p2 = ((trunc_ln55_2_fu_912_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_951_p2 = ((tmp_272_fu_919_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_957_p2 = ((trunc_ln55_3_fu_929_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_831_p2 = ((tmp_268_fu_800_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_1_fu_475_p4 = {{ap_sig_allocacmp_s[5:2]}};
assign lshr_ln9_3_fu_635_p4 = {{add_ln53_reg_1115[6:2]}};
assign min_p_129_fu_893_p3 = ((and_ln55_1_reg_1231[0:0] == 1'b1) ? p_reg_1210 : min_p_127_reg_1217);
assign min_p_131_fu_980_p3 = ((and_ln55_3_fu_975_p2[0:0] == 1'b1) ? p_63_reg_1224 : min_p_129_reg_1242);
assign min_s_4_fu_885_p3 = ((and_ln55_1_reg_1231[0:0] == 1'b1) ? zext_ln55_fu_882_p1 : min_s_fu_140);
assign min_s_5_fu_989_p3 = ((and_ln55_3_fu_975_p2[0:0] == 1'b1) ? zext_ln55_1_fu_986_p1 : min_s_4_reg_1237);
assign min_s_6_out = ((and_ln55_1_reg_1231[0:0] == 1'b1) ? zext_ln55_fu_882_p1 : min_s_fu_140);
assign or_ln55_1_fu_861_p2 = (icmp_ln55_3_fu_855_p2 | icmp_ln55_2_fu_849_p2);
assign or_ln55_2_fu_945_p2 = (icmp_ln55_5_fu_939_p2 | icmp_ln55_4_fu_933_p2);
assign or_ln55_3_fu_963_p2 = (icmp_ln55_7_fu_957_p2 | icmp_ln55_6_fu_951_p2);
assign or_ln55_fu_843_p2 = (icmp_ln55_fu_831_p2 | icmp_ln55_1_fu_837_p2);
assign shl_ln2_fu_501_p3 = {{ap_sig_allocacmp_s}, {3'd0}};
assign shl_ln54_1_fu_664_p3 = {{trunc_ln54_fu_661_p1}, {3'd0}};
assign tmp_268_fu_800_p4 = {{bitcast_ln55_fu_797_p1[62:52]}};
assign tmp_269_fu_817_p4 = {{bitcast_ln55_1_fu_814_p1[62:52]}};
assign tmp_271_fu_902_p4 = {{bitcast_ln55_2_fu_899_p1[62:52]}};
assign tmp_272_fu_919_p4 = {{bitcast_ln55_3_fu_916_p1[62:52]}};
assign tmp_69_fu_541_p9 = 'bx;
assign tmp_70_fu_596_p10 = transition_4_q0;
assign tmp_70_fu_596_p12 = transition_5_q0;
assign tmp_70_fu_596_p14 = transition_6_q0;
assign tmp_70_fu_596_p16 = transition_7_q0;
assign tmp_70_fu_596_p17 = 'bx;
assign tmp_70_fu_596_p2 = transition_0_q0;
assign tmp_70_fu_596_p4 = transition_1_q0;
assign tmp_70_fu_596_p6 = transition_2_q0;
assign tmp_70_fu_596_p8 = transition_3_q0;
assign tmp_71_fu_689_p9 = 'bx;
assign tmp_72_fu_744_p10 = transition_4_q0;
assign tmp_72_fu_744_p12 = transition_5_q0;
assign tmp_72_fu_744_p14 = transition_6_q0;
assign tmp_72_fu_744_p16 = transition_7_q0;
assign tmp_72_fu_744_p17 = 'bx;
assign tmp_72_fu_744_p2 = transition_0_q0;
assign tmp_72_fu_744_p4 = transition_1_q0;
assign tmp_72_fu_744_p6 = transition_2_q0;
assign tmp_72_fu_744_p8 = transition_3_q0;
assign tmp_s_fu_485_p3 = {{t_1}, {lshr_ln8_1_fu_475_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_2_address0 = transition_2_address0_local;
assign transition_2_ce0 = transition_2_ce0_local;
assign transition_3_address0 = transition_3_address0_local;
assign transition_3_ce0 = transition_3_ce0_local;
assign transition_4_address0 = transition_4_address0_local;
assign transition_4_ce0 = transition_4_ce0_local;
assign transition_5_address0 = transition_5_address0_local;
assign transition_5_ce0 = transition_5_ce0_local;
assign transition_6_address0 = transition_6_address0_local;
assign transition_6_ce0 = transition_6_ce0_local;
assign transition_7_address0 = transition_7_address0_local;
assign transition_7_ce0 = transition_7_ce0_local;
assign trunc_ln17_fu_471_p1 = ap_sig_allocacmp_s[1:0];
assign trunc_ln54_fu_661_p1 = add_ln53_reg_1115[5:0];
assign trunc_ln55_1_fu_827_p1 = bitcast_ln55_1_fu_814_p1[51:0];
assign trunc_ln55_2_fu_912_p1 = bitcast_ln55_2_fu_899_p1[51:0];
assign trunc_ln55_3_fu_929_p1 = bitcast_ln55_3_fu_916_p1[51:0];
assign trunc_ln55_fu_810_p1 = bitcast_ln55_fu_797_p1[51:0];
assign zext_ln17_fu_467_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_445_p1 = zext_ln52_2;
assign zext_ln54_1_fu_677_p1 = add_ln54_1_fu_672_p2;
assign zext_ln54_2_fu_493_p1 = tmp_s_fu_485_p3;
assign zext_ln54_3_fu_644_p1 = lshr_ln9_3_fu_635_p4;
assign zext_ln54_4_fu_653_p1 = add_ln54_2_fu_648_p2;
assign zext_ln54_fu_515_p1 = add_ln54_fu_509_p2;
assign zext_ln55_1_fu_986_p1 = trunc_ln54_reg_1155_pp0_iter2_reg;
assign zext_ln55_fu_882_p1 = s_reg_1043_pp0_iter2_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_1038[8:5] <= 4'b0000;
end
endmodule 