module backprop_backprop_Pipeline_mvp_product_input_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0,weights1_ce0,weights1_q0,weights1_address1,weights1_ce1,weights1_q1,empty_28,empty_29,empty_30,empty_31,empty_32,empty_33,empty_34,empty_35,empty_36,empty_37,empty_38,empty_39,empty,activations1_address0,activations1_ce0,activations1_we0,activations1_d0,grp_fu_5404_p_din0,grp_fu_5404_p_din1,grp_fu_5404_p_opcode,grp_fu_5404_p_dout0,grp_fu_5404_p_ce,grp_fu_5408_p_din0,grp_fu_5408_p_din1,grp_fu_5408_p_opcode,grp_fu_5408_p_dout0,grp_fu_5408_p_ce,grp_fu_5412_p_din0,grp_fu_5412_p_din1,grp_fu_5412_p_dout0,grp_fu_5412_p_ce,grp_fu_5416_p_din0,grp_fu_5416_p_din1,grp_fu_5416_p_dout0,grp_fu_5416_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] weights1_address0;
output   weights1_ce0;
input  [63:0] weights1_q0;
output  [9:0] weights1_address1;
output   weights1_ce1;
input  [63:0] weights1_q1;
input  [63:0] empty_28;
input  [63:0] empty_29;
input  [63:0] empty_30;
input  [63:0] empty_31;
input  [63:0] empty_32;
input  [63:0] empty_33;
input  [63:0] empty_34;
input  [63:0] empty_35;
input  [63:0] empty_36;
input  [63:0] empty_37;
input  [63:0] empty_38;
input  [63:0] empty_39;
input  [63:0] empty;
output  [5:0] activations1_address0;
output   activations1_ce0;
output   activations1_we0;
output  [63:0] activations1_d0;
output  [63:0] grp_fu_5404_p_din0;
output  [63:0] grp_fu_5404_p_din1;
output  [0:0] grp_fu_5404_p_opcode;
input  [63:0] grp_fu_5404_p_dout0;
output   grp_fu_5404_p_ce;
output  [63:0] grp_fu_5408_p_din0;
output  [63:0] grp_fu_5408_p_din1;
output  [1:0] grp_fu_5408_p_opcode;
input  [63:0] grp_fu_5408_p_dout0;
output   grp_fu_5408_p_ce;
output  [63:0] grp_fu_5412_p_din0;
output  [63:0] grp_fu_5412_p_din1;
input  [63:0] grp_fu_5412_p_dout0;
output   grp_fu_5412_p_ce;
output  [63:0] grp_fu_5416_p_din0;
output  [63:0] grp_fu_5416_p_din1;
input  [63:0] grp_fu_5416_p_dout0;
output   grp_fu_5416_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln33_reg_652;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_321;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_326;
reg   [6:0] j_1_reg_647;
reg   [6:0] j_1_reg_647_pp0_iter1_reg;
reg   [6:0] j_1_reg_647_pp0_iter2_reg;
reg   [6:0] j_1_reg_647_pp0_iter3_reg;
reg   [6:0] j_1_reg_647_pp0_iter4_reg;
reg   [6:0] j_1_reg_647_pp0_iter5_reg;
reg   [6:0] j_1_reg_647_pp0_iter6_reg;
reg   [6:0] j_1_reg_647_pp0_iter7_reg;
reg   [6:0] j_1_reg_647_pp0_iter8_reg;
reg   [6:0] j_1_reg_647_pp0_iter9_reg;
reg   [6:0] j_1_reg_647_pp0_iter10_reg;
reg   [6:0] j_1_reg_647_pp0_iter11_reg;
reg   [6:0] j_1_reg_647_pp0_iter12_reg;
reg   [6:0] j_1_reg_647_pp0_iter13_reg;
reg   [6:0] j_1_reg_647_pp0_iter14_reg;
reg   [6:0] j_1_reg_647_pp0_iter15_reg;
reg   [6:0] j_1_reg_647_pp0_iter16_reg;
wire   [0:0] icmp_ln33_fu_343_p2;
reg   [0:0] icmp_ln33_reg_652_pp0_iter1_reg;
reg   [0:0] icmp_ln33_reg_652_pp0_iter2_reg;
reg   [0:0] icmp_ln33_reg_652_pp0_iter3_reg;
reg   [0:0] icmp_ln33_reg_652_pp0_iter4_reg;
reg   [0:0] icmp_ln33_reg_652_pp0_iter5_reg;
reg   [0:0] icmp_ln33_reg_652_pp0_iter6_reg;
reg   [0:0] icmp_ln33_reg_652_pp0_iter7_reg;
reg   [0:0] icmp_ln33_reg_652_pp0_iter8_reg;
reg   [0:0] icmp_ln33_reg_652_pp0_iter9_reg;
reg   [0:0] icmp_ln33_reg_652_pp0_iter10_reg;
reg   [0:0] icmp_ln33_reg_652_pp0_iter11_reg;
reg   [0:0] icmp_ln33_reg_652_pp0_iter12_reg;
reg   [0:0] icmp_ln33_reg_652_pp0_iter13_reg;
reg   [0:0] icmp_ln33_reg_652_pp0_iter14_reg;
reg   [0:0] icmp_ln33_reg_652_pp0_iter15_reg;
reg   [9:0] phi_mul_load_reg_656;
wire   [63:0] bitcast_ln36_fu_399_p1;
wire   [63:0] bitcast_ln36_1_fu_404_p1;
wire   [63:0] bitcast_ln36_2_fu_429_p1;
wire   [63:0] bitcast_ln36_3_fu_434_p1;
wire   [63:0] bitcast_ln36_4_fu_459_p1;
wire   [63:0] bitcast_ln36_5_fu_464_p1;
wire   [63:0] bitcast_ln36_6_fu_489_p1;
wire   [63:0] bitcast_ln36_7_fu_494_p1;
wire   [63:0] bitcast_ln36_8_fu_524_p1;
wire   [63:0] bitcast_ln36_9_fu_529_p1;
wire   [63:0] bitcast_ln36_10_fu_549_p1;
wire   [63:0] bitcast_ln36_11_fu_554_p1;
reg   [63:0] mul8_i_reg_797;
reg   [63:0] mul8_i_1_reg_802;
reg   [63:0] mul8_i_1_reg_802_pp0_iter2_reg;
wire   [63:0] bitcast_ln36_12_fu_559_p1;
reg   [63:0] mul8_i_2_reg_812;
reg   [63:0] mul8_i_2_reg_812_pp0_iter2_reg;
reg   [63:0] mul8_i_2_reg_812_pp0_iter3_reg;
reg   [63:0] mul8_i_3_reg_817;
reg   [63:0] mul8_i_3_reg_817_pp0_iter2_reg;
reg   [63:0] mul8_i_3_reg_817_pp0_iter3_reg;
reg   [63:0] mul8_i_3_reg_817_pp0_iter4_reg;
reg   [63:0] mul8_i_4_reg_822;
reg   [63:0] mul8_i_4_reg_822_pp0_iter2_reg;
reg   [63:0] mul8_i_4_reg_822_pp0_iter3_reg;
reg   [63:0] mul8_i_4_reg_822_pp0_iter4_reg;
reg   [63:0] mul8_i_4_reg_822_pp0_iter5_reg;
reg   [63:0] mul8_i_5_reg_827;
reg   [63:0] mul8_i_5_reg_827_pp0_iter2_reg;
reg   [63:0] mul8_i_5_reg_827_pp0_iter3_reg;
reg   [63:0] mul8_i_5_reg_827_pp0_iter4_reg;
reg   [63:0] mul8_i_5_reg_827_pp0_iter5_reg;
reg   [63:0] mul8_i_5_reg_827_pp0_iter6_reg;
reg   [63:0] mul8_i_6_reg_832;
reg   [63:0] mul8_i_6_reg_832_pp0_iter2_reg;
reg   [63:0] mul8_i_6_reg_832_pp0_iter3_reg;
reg   [63:0] mul8_i_6_reg_832_pp0_iter4_reg;
reg   [63:0] mul8_i_6_reg_832_pp0_iter5_reg;
reg   [63:0] mul8_i_6_reg_832_pp0_iter6_reg;
reg   [63:0] mul8_i_6_reg_832_pp0_iter7_reg;
reg   [63:0] mul8_i_7_reg_837;
reg   [63:0] mul8_i_7_reg_837_pp0_iter2_reg;
reg   [63:0] mul8_i_7_reg_837_pp0_iter3_reg;
reg   [63:0] mul8_i_7_reg_837_pp0_iter4_reg;
reg   [63:0] mul8_i_7_reg_837_pp0_iter5_reg;
reg   [63:0] mul8_i_7_reg_837_pp0_iter6_reg;
reg   [63:0] mul8_i_7_reg_837_pp0_iter7_reg;
reg   [63:0] mul8_i_7_reg_837_pp0_iter8_reg;
reg   [63:0] mul8_i_8_reg_842;
reg   [63:0] mul8_i_8_reg_842_pp0_iter2_reg;
reg   [63:0] mul8_i_8_reg_842_pp0_iter3_reg;
reg   [63:0] mul8_i_8_reg_842_pp0_iter4_reg;
reg   [63:0] mul8_i_8_reg_842_pp0_iter5_reg;
reg   [63:0] mul8_i_8_reg_842_pp0_iter6_reg;
reg   [63:0] mul8_i_8_reg_842_pp0_iter7_reg;
reg   [63:0] mul8_i_8_reg_842_pp0_iter8_reg;
reg   [63:0] mul8_i_8_reg_842_pp0_iter9_reg;
reg   [63:0] mul8_i_9_reg_847;
reg   [63:0] mul8_i_9_reg_847_pp0_iter2_reg;
reg   [63:0] mul8_i_9_reg_847_pp0_iter3_reg;
reg   [63:0] mul8_i_9_reg_847_pp0_iter4_reg;
reg   [63:0] mul8_i_9_reg_847_pp0_iter5_reg;
reg   [63:0] mul8_i_9_reg_847_pp0_iter6_reg;
reg   [63:0] mul8_i_9_reg_847_pp0_iter7_reg;
reg   [63:0] mul8_i_9_reg_847_pp0_iter8_reg;
reg   [63:0] mul8_i_9_reg_847_pp0_iter9_reg;
reg   [63:0] mul8_i_9_reg_847_pp0_iter10_reg;
reg   [63:0] mul8_i_s_reg_852;
reg   [63:0] mul8_i_s_reg_852_pp0_iter2_reg;
reg   [63:0] mul8_i_s_reg_852_pp0_iter3_reg;
reg   [63:0] mul8_i_s_reg_852_pp0_iter4_reg;
reg   [63:0] mul8_i_s_reg_852_pp0_iter5_reg;
reg   [63:0] mul8_i_s_reg_852_pp0_iter6_reg;
reg   [63:0] mul8_i_s_reg_852_pp0_iter7_reg;
reg   [63:0] mul8_i_s_reg_852_pp0_iter8_reg;
reg   [63:0] mul8_i_s_reg_852_pp0_iter9_reg;
reg   [63:0] mul8_i_s_reg_852_pp0_iter10_reg;
reg   [63:0] mul8_i_s_reg_852_pp0_iter11_reg;
reg   [63:0] mul8_i_10_reg_857;
reg   [63:0] mul8_i_10_reg_857_pp0_iter2_reg;
reg   [63:0] mul8_i_10_reg_857_pp0_iter3_reg;
reg   [63:0] mul8_i_10_reg_857_pp0_iter4_reg;
reg   [63:0] mul8_i_10_reg_857_pp0_iter5_reg;
reg   [63:0] mul8_i_10_reg_857_pp0_iter6_reg;
reg   [63:0] mul8_i_10_reg_857_pp0_iter7_reg;
reg   [63:0] mul8_i_10_reg_857_pp0_iter8_reg;
reg   [63:0] mul8_i_10_reg_857_pp0_iter9_reg;
reg   [63:0] mul8_i_10_reg_857_pp0_iter10_reg;
reg   [63:0] mul8_i_10_reg_857_pp0_iter11_reg;
reg   [63:0] mul8_i_10_reg_857_pp0_iter12_reg;
reg   [63:0] mul8_i_11_reg_862;
reg   [63:0] mul8_i_11_reg_862_pp0_iter3_reg;
reg   [63:0] mul8_i_11_reg_862_pp0_iter4_reg;
reg   [63:0] mul8_i_11_reg_862_pp0_iter5_reg;
reg   [63:0] mul8_i_11_reg_862_pp0_iter6_reg;
reg   [63:0] mul8_i_11_reg_862_pp0_iter7_reg;
reg   [63:0] mul8_i_11_reg_862_pp0_iter8_reg;
reg   [63:0] mul8_i_11_reg_862_pp0_iter9_reg;
reg   [63:0] mul8_i_11_reg_862_pp0_iter10_reg;
reg   [63:0] mul8_i_11_reg_862_pp0_iter11_reg;
reg   [63:0] mul8_i_11_reg_862_pp0_iter12_reg;
reg   [63:0] mul8_i_11_reg_862_pp0_iter13_reg;
reg   [63:0] mul8_i_11_reg_862_pp0_iter14_reg;
reg   [63:0] add11_i_reg_867;
reg   [63:0] add11_i_1_reg_872;
reg   [63:0] add11_i_2_reg_877;
reg   [63:0] add11_i_3_reg_882;
reg   [63:0] add11_i_4_reg_887;
reg   [63:0] add11_i_5_reg_892;
reg   [63:0] add11_i_6_reg_897;
reg   [63:0] add11_i_7_reg_902;
reg   [63:0] add11_i_8_reg_907;
reg   [63:0] add11_i_9_reg_912;
reg   [63:0] add11_i_s_reg_917;
reg   [63:0] add11_i_10_reg_922;
reg   [63:0] add11_i_11_reg_927;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln36_fu_358_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln36_1_fu_369_p1;
wire   [63:0] zext_ln36_2_fu_384_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln36_3_fu_394_p1;
wire   [63:0] zext_ln36_4_fu_414_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln36_5_fu_424_p1;
wire   [63:0] zext_ln36_6_fu_444_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln36_7_fu_454_p1;
wire   [63:0] zext_ln36_8_fu_474_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln36_9_fu_484_p1;
wire   [63:0] zext_ln36_10_fu_504_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln36_11_fu_514_p1;
wire   [63:0] zext_ln36_12_fu_539_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln33_fu_564_p1;
reg   [9:0] phi_mul_fu_92;
wire   [9:0] next_mul_fu_519_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_phi_mul_load;
reg   [6:0] j_fu_96;
wire   [6:0] add_ln33_fu_349_p2;
reg   [6:0] ap_sig_allocacmp_j_1;
reg    weights1_ce1_local;
reg   [9:0] weights1_address1_local;
reg    weights1_ce0_local;
reg   [9:0] weights1_address0_local;
reg    activations1_we0_local;
reg    activations1_ce0_local;
reg   [63:0] grp_fu_304_p0;
reg   [63:0] grp_fu_304_p1;
reg   [63:0] grp_fu_309_p0;
reg   [63:0] grp_fu_309_p1;
reg   [63:0] grp_fu_313_p0;
reg   [63:0] grp_fu_313_p1;
reg   [63:0] grp_fu_317_p0;
reg   [63:0] grp_fu_317_p1;
wire   [9:0] add_ln36_fu_363_p2;
wire   [9:0] add_ln36_1_fu_379_p2;
wire   [9:0] add_ln36_2_fu_389_p2;
wire   [9:0] add_ln36_3_fu_409_p2;
wire   [9:0] add_ln36_4_fu_419_p2;
wire   [9:0] add_ln36_5_fu_439_p2;
wire   [9:0] add_ln36_6_fu_449_p2;
wire   [9:0] add_ln36_7_fu_469_p2;
wire   [9:0] add_ln36_8_fu_479_p2;
wire   [9:0] add_ln36_9_fu_499_p2;
wire   [9:0] add_ln36_10_fu_509_p2;
wire   [9:0] add_ln36_11_fu_534_p2;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter15_stage1;
reg    ap_idle_pp0_0to14;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to16;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 phi_mul_fu_92 = 10'd0;
#0 j_fu_96 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter16 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln33_fu_343_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_96 <= add_ln33_fu_349_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_96 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        phi_mul_fu_92 <= 10'd0;
    end else if (((icmp_ln33_reg_652 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        phi_mul_fu_92 <= next_mul_fu_519_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_321 <= weights1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_321 <= weights1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add11_i_10_reg_922 <= grp_fu_5408_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_i_11_reg_927 <= grp_fu_5408_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_i_1_reg_872 <= grp_fu_5404_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_i_2_reg_877 <= grp_fu_5404_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_i_3_reg_882 <= grp_fu_5404_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add11_i_4_reg_887 <= grp_fu_5404_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_i_5_reg_892 <= grp_fu_5404_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_i_6_reg_897 <= grp_fu_5404_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_i_7_reg_902 <= grp_fu_5408_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_i_8_reg_907 <= grp_fu_5408_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_i_9_reg_912 <= grp_fu_5408_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_i_reg_867 <= grp_fu_5404_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_i_s_reg_917 <= grp_fu_5408_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln33_reg_652 <= icmp_ln33_fu_343_p2;
        icmp_ln33_reg_652_pp0_iter10_reg <= icmp_ln33_reg_652_pp0_iter9_reg;
        icmp_ln33_reg_652_pp0_iter11_reg <= icmp_ln33_reg_652_pp0_iter10_reg;
        icmp_ln33_reg_652_pp0_iter12_reg <= icmp_ln33_reg_652_pp0_iter11_reg;
        icmp_ln33_reg_652_pp0_iter13_reg <= icmp_ln33_reg_652_pp0_iter12_reg;
        icmp_ln33_reg_652_pp0_iter14_reg <= icmp_ln33_reg_652_pp0_iter13_reg;
        icmp_ln33_reg_652_pp0_iter15_reg <= icmp_ln33_reg_652_pp0_iter14_reg;
        icmp_ln33_reg_652_pp0_iter1_reg <= icmp_ln33_reg_652;
        icmp_ln33_reg_652_pp0_iter2_reg <= icmp_ln33_reg_652_pp0_iter1_reg;
        icmp_ln33_reg_652_pp0_iter3_reg <= icmp_ln33_reg_652_pp0_iter2_reg;
        icmp_ln33_reg_652_pp0_iter4_reg <= icmp_ln33_reg_652_pp0_iter3_reg;
        icmp_ln33_reg_652_pp0_iter5_reg <= icmp_ln33_reg_652_pp0_iter4_reg;
        icmp_ln33_reg_652_pp0_iter6_reg <= icmp_ln33_reg_652_pp0_iter5_reg;
        icmp_ln33_reg_652_pp0_iter7_reg <= icmp_ln33_reg_652_pp0_iter6_reg;
        icmp_ln33_reg_652_pp0_iter8_reg <= icmp_ln33_reg_652_pp0_iter7_reg;
        icmp_ln33_reg_652_pp0_iter9_reg <= icmp_ln33_reg_652_pp0_iter8_reg;
        j_1_reg_647 <= ap_sig_allocacmp_j_1;
        j_1_reg_647_pp0_iter10_reg <= j_1_reg_647_pp0_iter9_reg;
        j_1_reg_647_pp0_iter11_reg <= j_1_reg_647_pp0_iter10_reg;
        j_1_reg_647_pp0_iter12_reg <= j_1_reg_647_pp0_iter11_reg;
        j_1_reg_647_pp0_iter13_reg <= j_1_reg_647_pp0_iter12_reg;
        j_1_reg_647_pp0_iter14_reg <= j_1_reg_647_pp0_iter13_reg;
        j_1_reg_647_pp0_iter15_reg <= j_1_reg_647_pp0_iter14_reg;
        j_1_reg_647_pp0_iter16_reg <= j_1_reg_647_pp0_iter15_reg;
        j_1_reg_647_pp0_iter1_reg <= j_1_reg_647;
        j_1_reg_647_pp0_iter2_reg <= j_1_reg_647_pp0_iter1_reg;
        j_1_reg_647_pp0_iter3_reg <= j_1_reg_647_pp0_iter2_reg;
        j_1_reg_647_pp0_iter4_reg <= j_1_reg_647_pp0_iter3_reg;
        j_1_reg_647_pp0_iter5_reg <= j_1_reg_647_pp0_iter4_reg;
        j_1_reg_647_pp0_iter6_reg <= j_1_reg_647_pp0_iter5_reg;
        j_1_reg_647_pp0_iter7_reg <= j_1_reg_647_pp0_iter6_reg;
        j_1_reg_647_pp0_iter8_reg <= j_1_reg_647_pp0_iter7_reg;
        j_1_reg_647_pp0_iter9_reg <= j_1_reg_647_pp0_iter8_reg;
        mul8_i_11_reg_862_pp0_iter10_reg <= mul8_i_11_reg_862_pp0_iter9_reg;
        mul8_i_11_reg_862_pp0_iter11_reg <= mul8_i_11_reg_862_pp0_iter10_reg;
        mul8_i_11_reg_862_pp0_iter12_reg <= mul8_i_11_reg_862_pp0_iter11_reg;
        mul8_i_11_reg_862_pp0_iter13_reg <= mul8_i_11_reg_862_pp0_iter12_reg;
        mul8_i_11_reg_862_pp0_iter14_reg <= mul8_i_11_reg_862_pp0_iter13_reg;
        mul8_i_11_reg_862_pp0_iter3_reg <= mul8_i_11_reg_862;
        mul8_i_11_reg_862_pp0_iter4_reg <= mul8_i_11_reg_862_pp0_iter3_reg;
        mul8_i_11_reg_862_pp0_iter5_reg <= mul8_i_11_reg_862_pp0_iter4_reg;
        mul8_i_11_reg_862_pp0_iter6_reg <= mul8_i_11_reg_862_pp0_iter5_reg;
        mul8_i_11_reg_862_pp0_iter7_reg <= mul8_i_11_reg_862_pp0_iter6_reg;
        mul8_i_11_reg_862_pp0_iter8_reg <= mul8_i_11_reg_862_pp0_iter7_reg;
        mul8_i_11_reg_862_pp0_iter9_reg <= mul8_i_11_reg_862_pp0_iter8_reg;
        phi_mul_load_reg_656 <= ap_sig_allocacmp_phi_mul_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul8_i_10_reg_857 <= grp_fu_5416_p_dout0;
        mul8_i_s_reg_852 <= grp_fu_5412_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul8_i_10_reg_857_pp0_iter10_reg <= mul8_i_10_reg_857_pp0_iter9_reg;
        mul8_i_10_reg_857_pp0_iter11_reg <= mul8_i_10_reg_857_pp0_iter10_reg;
        mul8_i_10_reg_857_pp0_iter12_reg <= mul8_i_10_reg_857_pp0_iter11_reg;
        mul8_i_10_reg_857_pp0_iter2_reg <= mul8_i_10_reg_857;
        mul8_i_10_reg_857_pp0_iter3_reg <= mul8_i_10_reg_857_pp0_iter2_reg;
        mul8_i_10_reg_857_pp0_iter4_reg <= mul8_i_10_reg_857_pp0_iter3_reg;
        mul8_i_10_reg_857_pp0_iter5_reg <= mul8_i_10_reg_857_pp0_iter4_reg;
        mul8_i_10_reg_857_pp0_iter6_reg <= mul8_i_10_reg_857_pp0_iter5_reg;
        mul8_i_10_reg_857_pp0_iter7_reg <= mul8_i_10_reg_857_pp0_iter6_reg;
        mul8_i_10_reg_857_pp0_iter8_reg <= mul8_i_10_reg_857_pp0_iter7_reg;
        mul8_i_10_reg_857_pp0_iter9_reg <= mul8_i_10_reg_857_pp0_iter8_reg;
        mul8_i_s_reg_852_pp0_iter10_reg <= mul8_i_s_reg_852_pp0_iter9_reg;
        mul8_i_s_reg_852_pp0_iter11_reg <= mul8_i_s_reg_852_pp0_iter10_reg;
        mul8_i_s_reg_852_pp0_iter2_reg <= mul8_i_s_reg_852;
        mul8_i_s_reg_852_pp0_iter3_reg <= mul8_i_s_reg_852_pp0_iter2_reg;
        mul8_i_s_reg_852_pp0_iter4_reg <= mul8_i_s_reg_852_pp0_iter3_reg;
        mul8_i_s_reg_852_pp0_iter5_reg <= mul8_i_s_reg_852_pp0_iter4_reg;
        mul8_i_s_reg_852_pp0_iter6_reg <= mul8_i_s_reg_852_pp0_iter5_reg;
        mul8_i_s_reg_852_pp0_iter7_reg <= mul8_i_s_reg_852_pp0_iter6_reg;
        mul8_i_s_reg_852_pp0_iter8_reg <= mul8_i_s_reg_852_pp0_iter7_reg;
        mul8_i_s_reg_852_pp0_iter9_reg <= mul8_i_s_reg_852_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_i_11_reg_862 <= grp_fu_5412_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_i_1_reg_802 <= grp_fu_5416_p_dout0;
        mul8_i_reg_797 <= grp_fu_5412_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_i_1_reg_802_pp0_iter2_reg <= mul8_i_1_reg_802;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_i_2_reg_812 <= grp_fu_5412_p_dout0;
        mul8_i_3_reg_817 <= grp_fu_5416_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_i_2_reg_812_pp0_iter2_reg <= mul8_i_2_reg_812;
        mul8_i_2_reg_812_pp0_iter3_reg <= mul8_i_2_reg_812_pp0_iter2_reg;
        mul8_i_3_reg_817_pp0_iter2_reg <= mul8_i_3_reg_817;
        mul8_i_3_reg_817_pp0_iter3_reg <= mul8_i_3_reg_817_pp0_iter2_reg;
        mul8_i_3_reg_817_pp0_iter4_reg <= mul8_i_3_reg_817_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_i_4_reg_822 <= grp_fu_5412_p_dout0;
        mul8_i_5_reg_827 <= grp_fu_5416_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_i_4_reg_822_pp0_iter2_reg <= mul8_i_4_reg_822;
        mul8_i_4_reg_822_pp0_iter3_reg <= mul8_i_4_reg_822_pp0_iter2_reg;
        mul8_i_4_reg_822_pp0_iter4_reg <= mul8_i_4_reg_822_pp0_iter3_reg;
        mul8_i_4_reg_822_pp0_iter5_reg <= mul8_i_4_reg_822_pp0_iter4_reg;
        mul8_i_5_reg_827_pp0_iter2_reg <= mul8_i_5_reg_827;
        mul8_i_5_reg_827_pp0_iter3_reg <= mul8_i_5_reg_827_pp0_iter2_reg;
        mul8_i_5_reg_827_pp0_iter4_reg <= mul8_i_5_reg_827_pp0_iter3_reg;
        mul8_i_5_reg_827_pp0_iter5_reg <= mul8_i_5_reg_827_pp0_iter4_reg;
        mul8_i_5_reg_827_pp0_iter6_reg <= mul8_i_5_reg_827_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_i_6_reg_832 <= grp_fu_5412_p_dout0;
        mul8_i_7_reg_837 <= grp_fu_5416_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_i_6_reg_832_pp0_iter2_reg <= mul8_i_6_reg_832;
        mul8_i_6_reg_832_pp0_iter3_reg <= mul8_i_6_reg_832_pp0_iter2_reg;
        mul8_i_6_reg_832_pp0_iter4_reg <= mul8_i_6_reg_832_pp0_iter3_reg;
        mul8_i_6_reg_832_pp0_iter5_reg <= mul8_i_6_reg_832_pp0_iter4_reg;
        mul8_i_6_reg_832_pp0_iter6_reg <= mul8_i_6_reg_832_pp0_iter5_reg;
        mul8_i_6_reg_832_pp0_iter7_reg <= mul8_i_6_reg_832_pp0_iter6_reg;
        mul8_i_7_reg_837_pp0_iter2_reg <= mul8_i_7_reg_837;
        mul8_i_7_reg_837_pp0_iter3_reg <= mul8_i_7_reg_837_pp0_iter2_reg;
        mul8_i_7_reg_837_pp0_iter4_reg <= mul8_i_7_reg_837_pp0_iter3_reg;
        mul8_i_7_reg_837_pp0_iter5_reg <= mul8_i_7_reg_837_pp0_iter4_reg;
        mul8_i_7_reg_837_pp0_iter6_reg <= mul8_i_7_reg_837_pp0_iter5_reg;
        mul8_i_7_reg_837_pp0_iter7_reg <= mul8_i_7_reg_837_pp0_iter6_reg;
        mul8_i_7_reg_837_pp0_iter8_reg <= mul8_i_7_reg_837_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_i_8_reg_842 <= grp_fu_5412_p_dout0;
        mul8_i_9_reg_847 <= grp_fu_5416_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_i_8_reg_842_pp0_iter2_reg <= mul8_i_8_reg_842;
        mul8_i_8_reg_842_pp0_iter3_reg <= mul8_i_8_reg_842_pp0_iter2_reg;
        mul8_i_8_reg_842_pp0_iter4_reg <= mul8_i_8_reg_842_pp0_iter3_reg;
        mul8_i_8_reg_842_pp0_iter5_reg <= mul8_i_8_reg_842_pp0_iter4_reg;
        mul8_i_8_reg_842_pp0_iter6_reg <= mul8_i_8_reg_842_pp0_iter5_reg;
        mul8_i_8_reg_842_pp0_iter7_reg <= mul8_i_8_reg_842_pp0_iter6_reg;
        mul8_i_8_reg_842_pp0_iter8_reg <= mul8_i_8_reg_842_pp0_iter7_reg;
        mul8_i_8_reg_842_pp0_iter9_reg <= mul8_i_8_reg_842_pp0_iter8_reg;
        mul8_i_9_reg_847_pp0_iter10_reg <= mul8_i_9_reg_847_pp0_iter9_reg;
        mul8_i_9_reg_847_pp0_iter2_reg <= mul8_i_9_reg_847;
        mul8_i_9_reg_847_pp0_iter3_reg <= mul8_i_9_reg_847_pp0_iter2_reg;
        mul8_i_9_reg_847_pp0_iter4_reg <= mul8_i_9_reg_847_pp0_iter3_reg;
        mul8_i_9_reg_847_pp0_iter5_reg <= mul8_i_9_reg_847_pp0_iter4_reg;
        mul8_i_9_reg_847_pp0_iter6_reg <= mul8_i_9_reg_847_pp0_iter5_reg;
        mul8_i_9_reg_847_pp0_iter7_reg <= mul8_i_9_reg_847_pp0_iter6_reg;
        mul8_i_9_reg_847_pp0_iter8_reg <= mul8_i_9_reg_847_pp0_iter7_reg;
        mul8_i_9_reg_847_pp0_iter9_reg <= mul8_i_9_reg_847_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_326 <= weights1_q0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        activations1_ce0_local = 1'b1;
    end else begin
        activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        activations1_we0_local = 1'b1;
    end else begin
        activations1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_652 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln33_reg_652_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter15_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter15_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to14 = 1'b1;
    end else begin
        ap_idle_pp0_0to14 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to16 = 1'b1;
    end else begin
        ap_idle_pp0_1to16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_phi_mul_load = 10'd0;
    end else begin
        ap_sig_allocacmp_phi_mul_load = phi_mul_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_304_p0 = add11_i_5_reg_892;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_304_p0 = add11_i_4_reg_887;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_304_p0 = add11_i_3_reg_882;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_304_p0 = add11_i_2_reg_877;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_304_p0 = add11_i_1_reg_872;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_304_p0 = add11_i_reg_867;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_304_p0 = mul8_i_reg_797;
    end else begin
        grp_fu_304_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_304_p1 = mul8_i_6_reg_832_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_304_p1 = mul8_i_5_reg_827_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_304_p1 = mul8_i_4_reg_822_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_304_p1 = mul8_i_3_reg_817_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_304_p1 = mul8_i_2_reg_812_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_304_p1 = mul8_i_1_reg_802_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_304_p1 = 64'd0;
    end else begin
        grp_fu_304_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_309_p0 = add11_i_10_reg_922;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_309_p0 = add11_i_s_reg_917;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_309_p0 = add11_i_9_reg_912;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_309_p0 = add11_i_8_reg_907;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_309_p0 = add11_i_7_reg_902;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_309_p0 = add11_i_6_reg_897;
    end else begin
        grp_fu_309_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_309_p1 = mul8_i_11_reg_862_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_309_p1 = mul8_i_10_reg_857_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_309_p1 = mul8_i_s_reg_852_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_309_p1 = mul8_i_9_reg_847_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_309_p1 = mul8_i_8_reg_842_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_309_p1 = mul8_i_7_reg_837_pp0_iter8_reg;
    end else begin
        grp_fu_309_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_313_p0 = bitcast_ln36_12_fu_559_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_313_p0 = bitcast_ln36_10_fu_549_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_313_p0 = bitcast_ln36_8_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_313_p0 = bitcast_ln36_6_fu_489_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_313_p0 = bitcast_ln36_4_fu_459_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_313_p0 = bitcast_ln36_2_fu_429_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_313_p0 = bitcast_ln36_fu_399_p1;
    end else begin
        grp_fu_313_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_313_p1 = empty;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_313_p1 = empty_38;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_313_p1 = empty_36;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_313_p1 = empty_34;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_313_p1 = empty_32;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_313_p1 = empty_30;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_313_p1 = empty_28;
    end else begin
        grp_fu_313_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_317_p0 = bitcast_ln36_11_fu_554_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_317_p0 = bitcast_ln36_9_fu_529_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_317_p0 = bitcast_ln36_7_fu_494_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_317_p0 = bitcast_ln36_5_fu_464_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_317_p0 = bitcast_ln36_3_fu_434_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_317_p0 = bitcast_ln36_1_fu_404_p1;
    end else begin
        grp_fu_317_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_317_p1 = empty_39;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_317_p1 = empty_37;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_317_p1 = empty_35;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_317_p1 = empty_33;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_317_p1 = empty_31;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_317_p1 = empty_29;
    end else begin
        grp_fu_317_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights1_address0_local = zext_ln36_12_fu_539_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights1_address0_local = zext_ln36_11_fu_514_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights1_address0_local = zext_ln36_9_fu_484_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights1_address0_local = zext_ln36_7_fu_454_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights1_address0_local = zext_ln36_5_fu_424_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights1_address0_local = zext_ln36_3_fu_394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_address0_local = zext_ln36_1_fu_369_p1;
        end else begin
            weights1_address0_local = 'bx;
        end
    end else begin
        weights1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights1_address1_local = zext_ln36_10_fu_504_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights1_address1_local = zext_ln36_8_fu_474_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights1_address1_local = zext_ln36_6_fu_444_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights1_address1_local = zext_ln36_4_fu_414_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights1_address1_local = zext_ln36_2_fu_384_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights1_address1_local = zext_ln36_fu_358_p1;
        end else begin
            weights1_address1_local = 'bx;
        end
    end else begin
        weights1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_ce0_local = 1'b1;
    end else begin
        weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_ce1_local = 1'b1;
    end else begin
        weights1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to16 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations1_address0 = zext_ln33_fu_564_p1;
assign activations1_ce0 = activations1_ce0_local;
assign activations1_d0 = add11_i_11_reg_927;
assign activations1_we0 = activations1_we0_local;
assign add_ln33_fu_349_p2 = (ap_sig_allocacmp_j_1 + 7'd1);
assign add_ln36_10_fu_509_p2 = (phi_mul_load_reg_656 + 10'd11);
assign add_ln36_11_fu_534_p2 = (phi_mul_load_reg_656 + 10'd12);
assign add_ln36_1_fu_379_p2 = (phi_mul_load_reg_656 + 10'd2);
assign add_ln36_2_fu_389_p2 = (phi_mul_load_reg_656 + 10'd3);
assign add_ln36_3_fu_409_p2 = (phi_mul_load_reg_656 + 10'd4);
assign add_ln36_4_fu_419_p2 = (phi_mul_load_reg_656 + 10'd5);
assign add_ln36_5_fu_439_p2 = (phi_mul_load_reg_656 + 10'd6);
assign add_ln36_6_fu_449_p2 = (phi_mul_load_reg_656 + 10'd7);
assign add_ln36_7_fu_469_p2 = (phi_mul_load_reg_656 + 10'd8);
assign add_ln36_8_fu_479_p2 = (phi_mul_load_reg_656 + 10'd9);
assign add_ln36_9_fu_499_p2 = (phi_mul_load_reg_656 + 10'd10);
assign add_ln36_fu_363_p2 = (ap_sig_allocacmp_phi_mul_load + 10'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_10_fu_549_p1 = reg_321;
assign bitcast_ln36_11_fu_554_p1 = reg_326;
assign bitcast_ln36_12_fu_559_p1 = reg_321;
assign bitcast_ln36_1_fu_404_p1 = reg_326;
assign bitcast_ln36_2_fu_429_p1 = reg_321;
assign bitcast_ln36_3_fu_434_p1 = reg_326;
assign bitcast_ln36_4_fu_459_p1 = reg_321;
assign bitcast_ln36_5_fu_464_p1 = reg_326;
assign bitcast_ln36_6_fu_489_p1 = reg_321;
assign bitcast_ln36_7_fu_494_p1 = reg_326;
assign bitcast_ln36_8_fu_524_p1 = reg_321;
assign bitcast_ln36_9_fu_529_p1 = reg_326;
assign bitcast_ln36_fu_399_p1 = reg_321;
assign grp_fu_5404_p_ce = 1'b1;
assign grp_fu_5404_p_din0 = grp_fu_304_p0;
assign grp_fu_5404_p_din1 = grp_fu_304_p1;
assign grp_fu_5404_p_opcode = 2'd0;
assign grp_fu_5408_p_ce = 1'b1;
assign grp_fu_5408_p_din0 = grp_fu_309_p0;
assign grp_fu_5408_p_din1 = grp_fu_309_p1;
assign grp_fu_5408_p_opcode = 2'd0;
assign grp_fu_5412_p_ce = 1'b1;
assign grp_fu_5412_p_din0 = grp_fu_313_p0;
assign grp_fu_5412_p_din1 = grp_fu_313_p1;
assign grp_fu_5416_p_ce = 1'b1;
assign grp_fu_5416_p_din0 = grp_fu_317_p0;
assign grp_fu_5416_p_din1 = grp_fu_317_p1;
assign icmp_ln33_fu_343_p2 = ((ap_sig_allocacmp_j_1 == 7'd64) ? 1'b1 : 1'b0);
assign next_mul_fu_519_p2 = (phi_mul_load_reg_656 + 10'd13);
assign weights1_address0 = weights1_address0_local;
assign weights1_address1 = weights1_address1_local;
assign weights1_ce0 = weights1_ce0_local;
assign weights1_ce1 = weights1_ce1_local;
assign zext_ln33_fu_564_p1 = j_1_reg_647_pp0_iter16_reg;
assign zext_ln36_10_fu_504_p1 = add_ln36_9_fu_499_p2;
assign zext_ln36_11_fu_514_p1 = add_ln36_10_fu_509_p2;
assign zext_ln36_12_fu_539_p1 = add_ln36_11_fu_534_p2;
assign zext_ln36_1_fu_369_p1 = add_ln36_fu_363_p2;
assign zext_ln36_2_fu_384_p1 = add_ln36_1_fu_379_p2;
assign zext_ln36_3_fu_394_p1 = add_ln36_2_fu_389_p2;
assign zext_ln36_4_fu_414_p1 = add_ln36_3_fu_409_p2;
assign zext_ln36_5_fu_424_p1 = add_ln36_4_fu_419_p2;
assign zext_ln36_6_fu_444_p1 = add_ln36_5_fu_439_p2;
assign zext_ln36_7_fu_454_p1 = add_ln36_6_fu_449_p2;
assign zext_ln36_8_fu_474_p1 = add_ln36_7_fu_469_p2;
assign zext_ln36_9_fu_484_p1 = add_ln36_8_fu_479_p2;
assign zext_ln36_fu_358_p1 = ap_sig_allocacmp_phi_mul_load;
endmodule 