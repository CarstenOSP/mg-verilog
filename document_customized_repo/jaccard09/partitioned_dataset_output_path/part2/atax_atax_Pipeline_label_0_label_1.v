
module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_address0,v116_ce0,v116_we0,v116_d0,v116_q0,v116_address1,v116_ce1,v116_we1,v116_d1,v116_q1,grp_fu_118_p_din0,grp_fu_118_p_din1,grp_fu_118_p_opcode,grp_fu_118_p_dout0,grp_fu_118_p_ce,grp_fu_122_p_din0,grp_fu_122_p_din1,grp_fu_122_p_dout0,grp_fu_122_p_ce);  
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
output  [5:0] v124_address0;
output   v124_ce0;
input  [31:0] v124_q0;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
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
output  [31:0] grp_fu_118_p_din0;
output  [31:0] grp_fu_118_p_din1;
output  [1:0] grp_fu_118_p_opcode;
input  [31:0] grp_fu_118_p_dout0;
output   grp_fu_118_p_ce;
output  [31:0] grp_fu_122_p_din0;
output  [31:0] grp_fu_122_p_din1;
input  [31:0] grp_fu_122_p_dout0;
output   grp_fu_122_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln27_reg_811;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_279;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] reg_283;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_288;
reg   [31:0] reg_293;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] reg_297;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_319_p2;
wire   [6:0] select_ln26_fu_351_p3;
reg   [6:0] select_ln26_reg_815;
wire   [6:0] select_ln27_fu_359_p3;
reg   [6:0] select_ln27_reg_822;
wire   [5:0] trunc_ln27_fu_367_p1;
reg   [5:0] trunc_ln27_reg_827;
reg   [5:0] v116_addr_reg_839;
reg   [5:0] v116_addr_reg_839_pp0_iter1_reg;
wire   [4:0] tmp_s_fu_376_p4;
reg   [4:0] tmp_s_reg_844;
reg   [5:0] v116_addr_1_reg_849;
reg   [5:0] v116_addr_1_reg_849_pp0_iter1_reg;
reg   [3:0] tmp_3_reg_855;
wire   [0:0] trunc_ln46_fu_409_p1;
reg   [0:0] trunc_ln46_reg_863;
reg   [0:0] trunc_ln46_reg_863_pp0_iter1_reg;
reg   [2:0] tmp_6_reg_871;
reg   [2:0] tmp_6_reg_871_pp0_iter1_reg;
wire   [1:0] trunc_ln60_fu_423_p1;
reg   [1:0] trunc_ln60_reg_883;
reg   [0:0] tmp_8_reg_889;
reg   [0:0] tmp_8_reg_889_pp0_iter1_reg;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] v116_load_reg_905;
reg   [31:0] v116_load_1_reg_915;
reg   [5:0] v116_addr_2_reg_920;
reg   [5:0] v116_addr_2_reg_920_pp0_iter1_reg;
reg   [5:0] v116_addr_2_reg_920_pp0_iter2_reg;
reg   [5:0] v116_addr_3_reg_925;
reg   [5:0] v116_addr_3_reg_925_pp0_iter1_reg;
reg   [5:0] v116_addr_3_reg_925_pp0_iter2_reg;
wire   [31:0] v3_fu_516_p3;
reg   [31:0] v3_reg_930;
reg   [31:0] v116_load_2_reg_940;
reg   [31:0] v116_load_3_reg_950;
reg   [5:0] v116_addr_4_reg_955;
reg   [5:0] v116_addr_4_reg_955_pp0_iter1_reg;
reg   [5:0] v116_addr_4_reg_955_pp0_iter2_reg;
wire   [31:0] v10_fu_569_p1;
reg   [31:0] v113_load_3_reg_965;
reg   [31:0] v116_load_4_reg_975;
wire   [31:0] v16_fu_604_p1;
reg   [31:0] v113_load_5_reg_990;
wire   [31:0] v22_fu_636_p1;
reg   [31:0] v113_load_7_reg_1010;
reg   [31:0] v11_reg_1015;
wire   [31:0] v28_fu_641_p1;
wire   [31:0] v9_fu_645_p1;
reg   [31:0] v17_reg_1030;
wire   [31:0] v34_fu_649_p1;
wire   [31:0] v15_fu_664_p1;
reg   [31:0] v23_reg_1045;
wire   [31:0] v40_fu_668_p1;
wire   [31:0] v21_fu_672_p1;
reg   [31:0] v29_reg_1060;
wire   [31:0] v46_fu_676_p1;
wire   [31:0] v27_fu_681_p1;
reg   [31:0] v35_reg_1075;
reg   [5:0] v116_addr_5_reg_1080;
reg   [5:0] v116_addr_5_reg_1080_pp0_iter2_reg;
wire   [31:0] v52_fu_700_p1;
wire   [31:0] v33_fu_704_p1;
reg   [31:0] v41_reg_1095;
reg   [5:0] v116_addr_6_reg_1100;
reg   [5:0] v116_addr_6_reg_1100_pp0_iter2_reg;
reg   [5:0] v116_addr_7_reg_1106;
reg   [5:0] v116_addr_7_reg_1106_pp0_iter2_reg;
wire   [31:0] v39_fu_733_p1;
reg   [31:0] v47_reg_1116;
reg   [31:0] v116_load_7_reg_1121;
wire   [31:0] v45_fu_738_p1;
reg   [31:0] v53_reg_1131;
wire   [31:0] v51_fu_748_p1;
reg   [31:0] v36_reg_1141;
reg   [31:0] v42_reg_1146;
reg   [31:0] v48_reg_1151;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln28_fu_371_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln39_fu_394_p1;
wire   [63:0] zext_ln27_fu_445_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_1_fu_465_p1;
wire   [63:0] zext_ln40_fu_478_p1;
wire   [63:0] zext_ln46_fu_491_p1;
wire   [63:0] zext_ln53_fu_503_p1;
wire   [63:0] zext_ln47_fu_533_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_fu_546_p1;
wire   [63:0] zext_ln60_fu_559_p1;
wire   [63:0] zext_ln61_fu_583_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln68_fu_599_p1;
wire   [63:0] zext_ln75_fu_618_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln83_fu_631_p1;
wire   [63:0] zext_ln67_fu_695_p1;
wire   [63:0] zext_ln74_fu_716_p1;
wire   [63:0] zext_ln82_fu_728_p1;
reg   [31:0] v3_1_fu_96;
reg   [6:0] v49_fu_100;
wire   [6:0] add_ln28_fu_654_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v49_load;
reg   [6:0] v4_fu_104;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [9:0] indvar_flatten_fu_108;
wire   [9:0] add_ln27_1_fu_325_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v116_ce1_local;
reg   [5:0] v116_address1_local;
reg    v116_ce0_local;
reg   [5:0] v116_address0_local;
reg    v116_we1_local;
reg   [31:0] v116_d1_local;
wire   [31:0] bitcast_ln36_fu_743_p1;
wire    ap_block_pp0_stage6;
wire   [31:0] bitcast_ln43_fu_752_p1;
wire    ap_block_pp0_stage7;
wire   [31:0] bitcast_ln50_fu_757_p1;
reg    v116_we0_local;
reg   [31:0] v116_d0_local;
wire   [31:0] bitcast_ln57_fu_762_p1;
wire   [31:0] bitcast_ln64_fu_767_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln71_fu_771_p1;
wire   [31:0] bitcast_ln78_fu_775_p1;
wire   [31:0] bitcast_ln86_fu_779_p1;
reg    v124_ce0_local;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg   [31:0] grp_fu_271_p0;
reg   [31:0] grp_fu_271_p1;
reg   [31:0] grp_fu_275_p0;
wire   [0:0] tmp_1_fu_343_p3;
wire   [6:0] add_ln27_fu_337_p2;
wire   [5:0] or_ln_fu_386_p3;
wire   [11:0] tmp_fu_449_p3;
wire   [11:0] zext_ln33_fu_456_p1;
wire   [11:0] add_ln33_fu_459_p2;
wire   [11:0] tmp_2_fu_470_p4;
wire   [5:0] or_ln1_fu_483_p4;
wire   [5:0] or_ln2_fu_496_p3;
wire   [0:0] icmp_ln31_fu_511_p2;
wire   [11:0] tmp_4_fu_524_p5;
wire   [11:0] tmp_5_fu_538_p4;
wire   [5:0] or_ln3_fu_551_p4;
wire   [11:0] tmp_7_fu_574_p5;
wire   [11:0] tmp_9_fu_588_p6;
wire   [11:0] tmp_10_fu_609_p5;
wire   [11:0] tmp_11_fu_623_p4;
wire   [5:0] or_ln4_fu_685_p5;
wire   [5:0] or_ln5_fu_708_p4;
wire   [5:0] or_ln6_fu_721_p3;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_1_fu_96 = 32'd0;
#0 v49_fu_100 = 7'd0;
#0 v4_fu_104 = 7'd0;
#0 indvar_flatten_fu_108 = 10'd0;
#0 ap_done_reg = 1'b0;
end
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_319_p2 == 1'd0))) begin
            indvar_flatten_fu_108 <= add_ln27_1_fu_325_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_108 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_283 <= v113_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_283 <= v113_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_288 <= v116_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_288 <= v116_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_100 <= 7'd0;
    end else if (((icmp_ln27_reg_811 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v49_fu_100 <= add_ln28_fu_654_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_319_p2 == 1'd0))) begin
            v4_fu_104 <= select_ln27_fu_359_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4_fu_104 <= 7'd0;
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
        icmp_ln27_reg_811 <= icmp_ln27_fu_319_p2;
        select_ln26_reg_815 <= select_ln26_fu_351_p3;
        select_ln27_reg_822 <= select_ln27_fu_359_p3;
        tmp_3_reg_855 <= {{select_ln26_fu_351_p3[5:2]}};
        tmp_6_reg_871 <= {{select_ln26_fu_351_p3[5:3]}};
        tmp_6_reg_871_pp0_iter1_reg <= tmp_6_reg_871;
        tmp_8_reg_889 <= select_ln26_fu_351_p3[32'd1];
        tmp_8_reg_889_pp0_iter1_reg <= tmp_8_reg_889;
        tmp_s_reg_844 <= {{select_ln26_fu_351_p3[5:1]}};
        trunc_ln27_reg_827 <= trunc_ln27_fu_367_p1;
        trunc_ln46_reg_863 <= trunc_ln46_fu_409_p1;
        trunc_ln46_reg_863_pp0_iter1_reg <= trunc_ln46_reg_863;
        trunc_ln60_reg_883 <= trunc_ln60_fu_423_p1;
        v116_addr_1_reg_849[5 : 1] <= zext_ln39_fu_394_p1[5 : 1];
        v116_addr_1_reg_849_pp0_iter1_reg[5 : 1] <= v116_addr_1_reg_849[5 : 1];
        v116_addr_reg_839 <= zext_ln28_fu_371_p1;
        v116_addr_reg_839_pp0_iter1_reg <= v116_addr_reg_839;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_279 <= v113_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_293 <= grp_fu_118_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_297 <= grp_fu_118_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_load_3_reg_965 <= v113_q0;
        v116_load_4_reg_975 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v113_load_5_reg_990 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v113_load_7_reg_1010 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_addr_2_reg_920[0] <= zext_ln46_fu_491_p1[0];
v116_addr_2_reg_920[5 : 2] <= zext_ln46_fu_491_p1[5 : 2];
        v116_addr_2_reg_920_pp0_iter1_reg[0] <= v116_addr_2_reg_920[0];
v116_addr_2_reg_920_pp0_iter1_reg[5 : 2] <= v116_addr_2_reg_920[5 : 2];
        v116_addr_2_reg_920_pp0_iter2_reg[0] <= v116_addr_2_reg_920_pp0_iter1_reg[0];
v116_addr_2_reg_920_pp0_iter2_reg[5 : 2] <= v116_addr_2_reg_920_pp0_iter1_reg[5 : 2];
        v116_addr_3_reg_925[5 : 2] <= zext_ln53_fu_503_p1[5 : 2];
        v116_addr_3_reg_925_pp0_iter1_reg[5 : 2] <= v116_addr_3_reg_925[5 : 2];
        v116_addr_3_reg_925_pp0_iter2_reg[5 : 2] <= v116_addr_3_reg_925_pp0_iter1_reg[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_addr_4_reg_955[1 : 0] <= zext_ln60_fu_559_p1[1 : 0];
v116_addr_4_reg_955[5 : 3] <= zext_ln60_fu_559_p1[5 : 3];
        v116_addr_4_reg_955_pp0_iter1_reg[1 : 0] <= v116_addr_4_reg_955[1 : 0];
v116_addr_4_reg_955_pp0_iter1_reg[5 : 3] <= v116_addr_4_reg_955[5 : 3];
        v116_addr_4_reg_955_pp0_iter2_reg[1 : 0] <= v116_addr_4_reg_955_pp0_iter1_reg[1 : 0];
v116_addr_4_reg_955_pp0_iter2_reg[5 : 3] <= v116_addr_4_reg_955_pp0_iter1_reg[5 : 3];
        v116_addr_5_reg_1080[1] <= zext_ln67_fu_695_p1[1];
v116_addr_5_reg_1080[5 : 3] <= zext_ln67_fu_695_p1[5 : 3];
        v116_addr_5_reg_1080_pp0_iter2_reg[1] <= v116_addr_5_reg_1080[1];
v116_addr_5_reg_1080_pp0_iter2_reg[5 : 3] <= v116_addr_5_reg_1080[5 : 3];
        v3_reg_930 <= v3_fu_516_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_addr_6_reg_1100[0] <= zext_ln74_fu_716_p1[0];
v116_addr_6_reg_1100[5 : 3] <= zext_ln74_fu_716_p1[5 : 3];
        v116_addr_6_reg_1100_pp0_iter2_reg[0] <= v116_addr_6_reg_1100[0];
v116_addr_6_reg_1100_pp0_iter2_reg[5 : 3] <= v116_addr_6_reg_1100[5 : 3];
        v116_addr_7_reg_1106[5 : 3] <= zext_ln82_fu_728_p1[5 : 3];
        v116_addr_7_reg_1106_pp0_iter2_reg[5 : 3] <= v116_addr_7_reg_1106[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_load_1_reg_915 <= v116_q0;
        v116_load_reg_905 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_load_2_reg_940 <= v116_q1;
        v116_load_3_reg_950 <= v116_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_load_7_reg_1121 <= v116_q0;
        v47_reg_1116 <= grp_fu_122_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v11_reg_1015 <= grp_fu_122_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v17_reg_1030 <= grp_fu_122_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v23_reg_1045 <= grp_fu_122_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_reg_1060 <= grp_fu_122_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v35_reg_1075 <= grp_fu_122_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v36_reg_1141 <= grp_fu_118_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_811 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_fu_96 <= v3_fu_516_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v41_reg_1095 <= grp_fu_122_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v42_reg_1146 <= grp_fu_118_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v48_reg_1151 <= grp_fu_118_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v53_reg_1131 <= grp_fu_122_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_811 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v49_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v49_load = v49_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_271_p0 = v51_fu_748_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_271_p0 = v45_fu_738_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_271_p0 = v39_fu_733_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_271_p0 = v33_fu_704_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_271_p0 = v27_fu_681_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_271_p0 = v21_fu_672_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_271_p0 = v15_fu_664_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_271_p0 = v9_fu_645_p1;
    end else begin
        grp_fu_271_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_271_p1 = v53_reg_1131;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_271_p1 = v47_reg_1116;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_271_p1 = v41_reg_1095;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_271_p1 = v35_reg_1075;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_271_p1 = v29_reg_1060;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_271_p1 = v23_reg_1045;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_271_p1 = v17_reg_1030;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_271_p1 = v11_reg_1015;
    end else begin
        grp_fu_271_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_275_p0 = v52_fu_700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_275_p0 = v46_fu_676_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_275_p0 = v40_fu_668_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_275_p0 = v34_fu_649_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_275_p0 = v28_fu_641_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_275_p0 = v22_fu_636_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_275_p0 = v16_fu_604_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_275_p0 = v10_fu_569_p1;
    end else begin
        grp_fu_275_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v113_address0_local = zext_ln83_fu_631_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v113_address0_local = zext_ln68_fu_599_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address0_local = zext_ln54_fu_546_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address0_local = zext_ln40_fu_478_p1;
        end else begin
            v113_address0_local = 'bx;
        end
    end else begin
        v113_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v113_address1_local = zext_ln75_fu_618_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v113_address1_local = zext_ln61_fu_583_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address1_local = zext_ln47_fu_533_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address1_local = zext_ln33_1_fu_465_p1;
        end else begin
            v113_address1_local = 'bx;
        end
    end else begin
        v113_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v113_ce0_local = 1'b1;
    end else begin
        v113_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v113_ce1_local = 1'b1;
    end else begin
        v113_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address0_local = v116_addr_7_reg_1106_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address0_local = v116_addr_6_reg_1100_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address0_local = v116_addr_5_reg_1080_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address0_local = v116_addr_3_reg_925_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address0_local = zext_ln82_fu_728_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address0_local = zext_ln67_fu_695_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address0_local = zext_ln53_fu_503_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address0_local = zext_ln39_fu_394_p1;
    end else begin
        v116_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address1_local = v116_addr_4_reg_955_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address1_local = v116_addr_2_reg_920_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address1_local = v116_addr_1_reg_849_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address1_local = v116_addr_reg_839_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address1_local = zext_ln74_fu_716_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address1_local = zext_ln60_fu_559_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address1_local = zext_ln46_fu_491_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address1_local = zext_ln28_fu_371_p1;
    end else begin
        v116_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_ce0_local = 1'b1;
    end else begin
        v116_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_ce1_local = 1'b1;
    end else begin
        v116_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v116_d0_local = bitcast_ln86_fu_779_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v116_d0_local = bitcast_ln78_fu_775_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v116_d0_local = bitcast_ln71_fu_771_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v116_d0_local = bitcast_ln57_fu_762_p1;
        end else begin
            v116_d0_local = 'bx;
        end
    end else begin
        v116_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_d1_local = bitcast_ln64_fu_767_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_d1_local = bitcast_ln50_fu_757_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_d1_local = bitcast_ln43_fu_752_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_d1_local = bitcast_ln36_fu_743_p1;
    end else begin
        v116_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        v116_we0_local = 1'b1;
    end else begin
        v116_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        v116_we1_local = 1'b1;
    end else begin
        v116_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
assign add_ln27_1_fu_325_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln27_fu_337_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_654_p2 = (select_ln26_reg_815 + 7'd8);
assign add_ln33_fu_459_p2 = (tmp_fu_449_p3 + zext_ln33_fu_456_p1);
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
assign bitcast_ln36_fu_743_p1 = reg_293;
assign bitcast_ln43_fu_752_p1 = reg_293;
assign bitcast_ln50_fu_757_p1 = reg_293;
assign bitcast_ln57_fu_762_p1 = reg_297;
assign bitcast_ln64_fu_767_p1 = v36_reg_1141;
assign bitcast_ln71_fu_771_p1 = v42_reg_1146;
assign bitcast_ln78_fu_775_p1 = v48_reg_1151;
assign bitcast_ln86_fu_779_p1 = reg_297;
assign grp_fu_118_p_ce = 1'b1;
assign grp_fu_118_p_din0 = grp_fu_271_p0;
assign grp_fu_118_p_din1 = grp_fu_271_p1;
assign grp_fu_118_p_opcode = 2'd0;
assign grp_fu_122_p_ce = 1'b1;
assign grp_fu_122_p_din0 = grp_fu_275_p0;
assign grp_fu_122_p_din1 = v3_reg_930;
assign icmp_ln27_fu_319_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_511_p2 = ((select_ln26_reg_815 == 7'd0) ? 1'b1 : 1'b0);
assign or_ln1_fu_483_p4 = {{{tmp_3_reg_855}, {1'd1}}, {trunc_ln46_reg_863}};
assign or_ln2_fu_496_p3 = {{tmp_3_reg_855}, {2'd3}};
assign or_ln3_fu_551_p4 = {{{tmp_6_reg_871}, {1'd1}}, {trunc_ln60_reg_883}};
assign or_ln4_fu_685_p5 = {{{{tmp_6_reg_871_pp0_iter1_reg}, {1'd1}}, {tmp_8_reg_889_pp0_iter1_reg}}, {1'd1}};
assign or_ln5_fu_708_p4 = {{{tmp_6_reg_871_pp0_iter1_reg}, {2'd3}}, {trunc_ln46_reg_863_pp0_iter1_reg}};
assign or_ln6_fu_721_p3 = {{tmp_6_reg_871_pp0_iter1_reg}, {3'd7}};
assign or_ln_fu_386_p3 = {{tmp_s_fu_376_p4}, {1'd1}};
assign select_ln26_fu_351_p3 = ((tmp_1_fu_343_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v49_load);
assign select_ln27_fu_359_p3 = ((tmp_1_fu_343_p3[0:0] == 1'b1) ? add_ln27_fu_337_p2 : ap_sig_allocacmp_v4_load);
assign tmp_10_fu_609_p5 = {{{{trunc_ln27_reg_827}, {tmp_6_reg_871}}, {2'd3}}, {trunc_ln46_reg_863}};
assign tmp_11_fu_623_p4 = {{{trunc_ln27_reg_827}, {tmp_6_reg_871}}, {3'd7}};
assign tmp_1_fu_343_p3 = ap_sig_allocacmp_v49_load[32'd6];
assign tmp_2_fu_470_p4 = {{{trunc_ln27_reg_827}, {tmp_s_reg_844}}, {1'd1}};
assign tmp_4_fu_524_p5 = {{{{trunc_ln27_reg_827}, {tmp_3_reg_855}}, {1'd1}}, {trunc_ln46_reg_863}};
assign tmp_5_fu_538_p4 = {{{trunc_ln27_reg_827}, {tmp_3_reg_855}}, {2'd3}};
assign tmp_7_fu_574_p5 = {{{{trunc_ln27_reg_827}, {tmp_6_reg_871}}, {1'd1}}, {trunc_ln60_reg_883}};
assign tmp_9_fu_588_p6 = {{{{{trunc_ln27_reg_827}, {tmp_6_reg_871}}, {1'd1}}, {tmp_8_reg_889}}, {1'd1}};
assign tmp_fu_449_p3 = {{trunc_ln27_reg_827}, {6'd0}};
assign tmp_s_fu_376_p4 = {{select_ln26_fu_351_p3[5:1]}};
assign trunc_ln27_fu_367_p1 = select_ln27_fu_359_p3[5:0];
assign trunc_ln46_fu_409_p1 = select_ln26_fu_351_p3[0:0];
assign trunc_ln60_fu_423_p1 = select_ln26_fu_351_p3[1:0];
assign v10_fu_569_p1 = reg_279;
assign v113_address0 = v113_address0_local;
assign v113_address1 = v113_address1_local;
assign v113_ce0 = v113_ce0_local;
assign v113_ce1 = v113_ce1_local;
assign v116_address0 = v116_address0_local;
assign v116_address1 = v116_address1_local;
assign v116_ce0 = v116_ce0_local;
assign v116_ce1 = v116_ce1_local;
assign v116_d0 = v116_d0_local;
assign v116_d1 = v116_d1_local;
assign v116_we0 = v116_we0_local;
assign v116_we1 = v116_we1_local;
assign v124_address0 = zext_ln27_fu_445_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_fu_664_p1 = v116_load_1_reg_915;
assign v16_fu_604_p1 = reg_283;
assign v21_fu_672_p1 = v116_load_2_reg_940;
assign v22_fu_636_p1 = reg_279;
assign v27_fu_681_p1 = v116_load_3_reg_950;
assign v28_fu_641_p1 = v113_load_3_reg_965;
assign v33_fu_704_p1 = v116_load_4_reg_975;
assign v34_fu_649_p1 = reg_283;
assign v39_fu_733_p1 = reg_288;
assign v3_fu_516_p3 = ((icmp_ln31_fu_511_p2[0:0] == 1'b1) ? v124_q0 : v3_1_fu_96);
assign v40_fu_668_p1 = v113_load_5_reg_990;
assign v45_fu_738_p1 = reg_288;
assign v46_fu_676_p1 = reg_279;
assign v51_fu_748_p1 = v116_load_7_reg_1121;
assign v52_fu_700_p1 = v113_load_7_reg_1010;
assign v9_fu_645_p1 = v116_load_reg_905;
assign zext_ln27_fu_445_p1 = select_ln27_reg_822;
assign zext_ln28_fu_371_p1 = select_ln26_fu_351_p3;
assign zext_ln33_1_fu_465_p1 = add_ln33_fu_459_p2;
assign zext_ln33_fu_456_p1 = select_ln26_reg_815;
assign zext_ln39_fu_394_p1 = or_ln_fu_386_p3;
assign zext_ln40_fu_478_p1 = tmp_2_fu_470_p4;
assign zext_ln46_fu_491_p1 = or_ln1_fu_483_p4;
assign zext_ln47_fu_533_p1 = tmp_4_fu_524_p5;
assign zext_ln53_fu_503_p1 = or_ln2_fu_496_p3;
assign zext_ln54_fu_546_p1 = tmp_5_fu_538_p4;
assign zext_ln60_fu_559_p1 = or_ln3_fu_551_p4;
assign zext_ln61_fu_583_p1 = tmp_7_fu_574_p5;
assign zext_ln67_fu_695_p1 = or_ln4_fu_685_p5;
assign zext_ln68_fu_599_p1 = tmp_9_fu_588_p6;
assign zext_ln74_fu_716_p1 = or_ln5_fu_708_p4;
assign zext_ln75_fu_618_p1 = tmp_10_fu_609_p5;
assign zext_ln82_fu_728_p1 = or_ln6_fu_721_p3;
assign zext_ln83_fu_631_p1 = tmp_11_fu_623_p4;
always @ (posedge ap_clk) begin
    v116_addr_1_reg_849[0] <= 1'b1;
    v116_addr_1_reg_849_pp0_iter1_reg[0] <= 1'b1;
    v116_addr_2_reg_920[1] <= 1'b1;
    v116_addr_2_reg_920_pp0_iter1_reg[1] <= 1'b1;
    v116_addr_2_reg_920_pp0_iter2_reg[1] <= 1'b1;
    v116_addr_3_reg_925[1:0] <= 2'b11;
    v116_addr_3_reg_925_pp0_iter1_reg[1:0] <= 2'b11;
    v116_addr_3_reg_925_pp0_iter2_reg[1:0] <= 2'b11;
    v116_addr_4_reg_955[2] <= 1'b1;
    v116_addr_4_reg_955_pp0_iter1_reg[2] <= 1'b1;
    v116_addr_4_reg_955_pp0_iter2_reg[2] <= 1'b1;
    v116_addr_5_reg_1080[0] <= 1'b1;
    v116_addr_5_reg_1080[2] <= 1'b1;
    v116_addr_5_reg_1080_pp0_iter2_reg[0] <= 1'b1;
    v116_addr_5_reg_1080_pp0_iter2_reg[2] <= 1'b1;
    v116_addr_6_reg_1100[2:1] <= 2'b11;
    v116_addr_6_reg_1100_pp0_iter2_reg[2:1] <= 2'b11;
    v116_addr_7_reg_1106[2:0] <= 3'b111;
    v116_addr_7_reg_1106_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 
