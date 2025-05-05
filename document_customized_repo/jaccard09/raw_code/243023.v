module atax_atax_node0_Pipeline_label_18 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_5_reload,tmp_105,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v6_6,v116_address0,v116_ce0,v116_we0,v116_d0,v116_q0,v116_address1,v116_ce1,v116_we1,v116_d1,v116_q1,v7_6_out,v7_6_out_ap_vld,grp_fu_692_p_din0,grp_fu_692_p_din1,grp_fu_692_p_opcode,grp_fu_692_p_dout0,grp_fu_692_p_ce,grp_fu_696_p_din0,grp_fu_696_p_din1,grp_fu_696_p_dout0,grp_fu_696_p_ce); 
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
input  [31:0] v7_5_reload;
input  [2:0] tmp_105;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
input  [31:0] v6_6;
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
output  [31:0] v7_6_out;
output   v7_6_out_ap_vld;
output  [31:0] grp_fu_692_p_din0;
output  [31:0] grp_fu_692_p_din1;
output  [1:0] grp_fu_692_p_opcode;
input  [31:0] grp_fu_692_p_dout0;
output   grp_fu_692_p_ce;
output  [31:0] grp_fu_696_p_din0;
output  [31:0] grp_fu_696_p_din1;
input  [31:0] grp_fu_696_p_dout0;
output   grp_fu_696_p_ce;
reg ap_idle;
reg v7_6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_748;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_279;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_283;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_288;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v5_reg_740;
wire   [0:0] tmp_fu_305_p3;
reg   [0:0] tmp_reg_748_pp0_iter1_reg;
reg   [5:0] v116_addr_reg_757;
reg   [5:0] v116_addr_reg_757_pp0_iter1_reg;
reg   [5:0] v116_addr_8_reg_767;
reg   [5:0] v116_addr_8_reg_767_pp0_iter1_reg;
wire   [0:0] icmp_ln31_fu_384_p2;
reg   [0:0] icmp_ln31_reg_773;
reg   [31:0] v116_load_reg_778;
reg   [31:0] v116_load_8_reg_783;
reg   [5:0] v116_addr_9_reg_793;
reg   [5:0] v116_addr_9_reg_793_pp0_iter1_reg;
reg   [5:0] v116_addr_10_reg_803;
reg   [5:0] v116_addr_10_reg_803_pp0_iter1_reg;
reg   [5:0] v116_addr_10_reg_803_pp0_iter2_reg;
reg   [2:0] tmp_25_reg_809;
reg   [2:0] tmp_25_reg_809_pp0_iter1_reg;
reg   [0:0] tmp_6_reg_821;
wire   [31:0] v8_fu_475_p3;
reg   [31:0] v8_reg_827;
wire   [31:0] v10_fu_482_p1;
reg   [31:0] v116_load_9_reg_837;
reg   [31:0] v116_load_10_reg_842;
reg   [31:0] v113_load_10_reg_847;
reg   [5:0] v116_addr_11_reg_857;
reg   [5:0] v116_addr_11_reg_857_pp0_iter1_reg;
reg   [5:0] v116_addr_11_reg_857_pp0_iter2_reg;
reg   [5:0] v116_addr_12_reg_868;
reg   [5:0] v116_addr_12_reg_868_pp0_iter1_reg;
reg   [5:0] v116_addr_12_reg_868_pp0_iter2_reg;
wire   [31:0] v16_fu_552_p1;
reg   [31:0] v116_load_11_reg_878;
reg   [31:0] v116_load_12_reg_883;
reg   [31:0] v113_load_12_reg_888;
reg   [5:0] v116_addr_13_reg_898;
reg   [5:0] v116_addr_13_reg_898_pp0_iter1_reg;
reg   [5:0] v116_addr_13_reg_898_pp0_iter2_reg;
wire   [31:0] v22_fu_599_p1;
reg   [31:0] v116_load_13_reg_914;
reg   [31:0] v113_load_14_reg_919;
reg   [31:0] v11_reg_924;
wire   [31:0] v28_fu_604_p1;
wire   [31:0] v9_fu_608_p1;
reg   [31:0] v17_reg_939;
wire   [31:0] v34_fu_612_p1;
wire   [31:0] v15_fu_617_p1;
reg   [31:0] v23_reg_954;
wire   [31:0] v40_fu_621_p1;
wire   [31:0] v21_fu_625_p1;
reg   [31:0] v29_reg_969;
wire   [31:0] v46_fu_629_p1;
wire   [31:0] v27_fu_634_p1;
reg   [31:0] v35_reg_984;
wire   [31:0] v52_fu_638_p1;
wire   [31:0] v33_fu_642_p1;
reg   [31:0] v41_reg_999;
wire   [31:0] v39_fu_646_p1;
reg   [31:0] v47_reg_1009;
reg   [5:0] v116_addr_14_reg_1014;
reg   [5:0] v116_addr_14_reg_1014_pp0_iter2_reg;
wire   [31:0] v45_fu_662_p1;
reg   [31:0] v116_load_14_reg_1024;
reg   [31:0] v53_reg_1029;
wire   [31:0] v51_fu_671_p1;
reg   [31:0] v36_reg_1039;
reg   [31:0] v42_reg_1044;
reg   [31:0] v48_reg_1049;
reg   [31:0] v54_reg_1054;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln33_fu_328_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_fu_313_p1;
wire   [63:0] zext_ln40_fu_368_p1;
wire   [63:0] zext_ln39_fu_351_p1;
wire   [63:0] zext_ln47_fu_422_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln46_fu_406_p1;
wire   [63:0] zext_ln54_fu_451_p1;
wire   [63:0] zext_ln53_fu_435_p1;
wire   [63:0] zext_ln61_fu_509_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln60_fu_494_p1;
wire   [63:0] zext_ln68_fu_542_p1;
wire   [63:0] zext_ln67_fu_524_p1;
wire   [63:0] zext_ln75_fu_579_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln74_fu_564_p1;
wire   [63:0] zext_ln83_fu_594_p1;
wire   [63:0] zext_ln82_fu_657_p1;
reg   [31:0] v3_fu_92;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage7;
reg   [6:0] v49_fu_96;
wire   [6:0] add_ln28_fu_373_p2;
reg   [6:0] ap_sig_allocacmp_v5;
wire    ap_block_pp0_stage7_01001;
reg    v116_ce1_local;
reg   [5:0] v116_address1_local;
reg    v116_ce0_local;
reg   [5:0] v116_address0_local;
reg    v116_we1_local;
reg   [31:0] v116_d1_local;
wire   [31:0] bitcast_ln36_fu_666_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln43_fu_675_p1;
wire    ap_block_pp0_stage6;
wire   [31:0] bitcast_ln50_fu_680_p1;
wire   [31:0] bitcast_ln57_fu_685_p1;
wire    ap_block_pp0_stage4;
reg    v116_we0_local;
reg   [31:0] v116_d0_local;
wire   [31:0] bitcast_ln64_fu_690_p1;
wire   [31:0] bitcast_ln71_fu_694_p1;
wire   [31:0] bitcast_ln78_fu_698_p1;
wire   [31:0] bitcast_ln86_fu_702_p1;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg   [31:0] grp_fu_271_p0;
reg   [31:0] grp_fu_271_p1;
reg   [31:0] grp_fu_275_p0;
reg   [31:0] grp_fu_275_p1;
wire   [11:0] tmp_s_fu_318_p4;
wire   [4:0] tmp_20_fu_333_p4;
wire   [5:0] or_ln39_6_fu_343_p3;
wire   [11:0] tmp_21_fu_356_p5;
wire   [3:0] tmp_22_fu_389_p4;
wire   [5:0] or_ln46_6_fu_398_p3;
wire   [11:0] tmp_23_fu_411_p5;
wire   [5:0] or_ln53_6_fu_427_p3;
wire   [11:0] tmp_24_fu_440_p5;
wire   [5:0] or_ln60_6_fu_487_p3;
wire   [11:0] tmp_26_fu_499_p5;
wire   [5:0] or_ln67_6_fu_514_p5;
wire   [11:0] tmp_27_fu_529_p7;
wire   [5:0] or_ln74_6_fu_557_p3;
wire   [11:0] tmp_28_fu_569_p5;
wire   [11:0] tmp_29_fu_584_p5;
wire   [5:0] or_ln82_6_fu_650_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_fu_92 = 32'd0;
#0 v49_fu_96 = 7'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_283 <= v113_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_283 <= v113_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_fu_92 <= v7_5_reload;
    end else if (((tmp_reg_748 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_fu_92 <= v8_fu_475_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_305_p3 == 1'd0))) begin
            v49_fu_96 <= add_ln28_fu_373_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v49_fu_96 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln31_reg_773 <= icmp_ln31_fu_384_p2;
        tmp_25_reg_809 <= {{v5_reg_740[5:3]}};
        tmp_25_reg_809_pp0_iter1_reg <= tmp_25_reg_809;
        tmp_6_reg_821 <= v5_reg_740[32'd1];
        v116_addr_10_reg_803[5 : 2] <= zext_ln53_fu_435_p1[5 : 2];
        v116_addr_10_reg_803_pp0_iter1_reg[5 : 2] <= v116_addr_10_reg_803[5 : 2];
        v116_addr_10_reg_803_pp0_iter2_reg[5 : 2] <= v116_addr_10_reg_803_pp0_iter1_reg[5 : 2];
        v116_addr_9_reg_793[5 : 2] <= zext_ln46_fu_406_p1[5 : 2];
        v116_addr_9_reg_793_pp0_iter1_reg[5 : 2] <= v116_addr_9_reg_793[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_279 <= v113_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_288 <= grp_fu_692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_748 <= ap_sig_allocacmp_v5[32'd6];
        tmp_reg_748_pp0_iter1_reg <= tmp_reg_748;
        v116_addr_8_reg_767[5 : 1] <= zext_ln39_fu_351_p1[5 : 1];
        v116_addr_8_reg_767_pp0_iter1_reg[5 : 1] <= v116_addr_8_reg_767[5 : 1];
        v116_addr_reg_757 <= zext_ln28_fu_313_p1;
        v116_addr_reg_757_pp0_iter1_reg <= v116_addr_reg_757;
        v5_reg_740 <= ap_sig_allocacmp_v5;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_load_10_reg_847 <= v113_q0;
        v116_load_10_reg_842 <= v116_q0;
        v116_load_9_reg_837 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_load_12_reg_888 <= v113_q0;
        v116_load_11_reg_878 <= v116_q1;
        v116_load_12_reg_883 <= v116_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v113_load_14_reg_919 <= v113_q0;
        v116_load_13_reg_914 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_addr_11_reg_857[5 : 3] <= zext_ln60_fu_494_p1[5 : 3];
        v116_addr_11_reg_857_pp0_iter1_reg[5 : 3] <= v116_addr_11_reg_857[5 : 3];
        v116_addr_11_reg_857_pp0_iter2_reg[5 : 3] <= v116_addr_11_reg_857_pp0_iter1_reg[5 : 3];
        v116_addr_12_reg_868[1] <= zext_ln67_fu_524_p1[1];
v116_addr_12_reg_868[5 : 3] <= zext_ln67_fu_524_p1[5 : 3];
        v116_addr_12_reg_868_pp0_iter1_reg[1] <= v116_addr_12_reg_868[1];
v116_addr_12_reg_868_pp0_iter1_reg[5 : 3] <= v116_addr_12_reg_868[5 : 3];
        v116_addr_12_reg_868_pp0_iter2_reg[1] <= v116_addr_12_reg_868_pp0_iter1_reg[1];
v116_addr_12_reg_868_pp0_iter2_reg[5 : 3] <= v116_addr_12_reg_868_pp0_iter1_reg[5 : 3];
        v8_reg_827 <= v8_fu_475_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_addr_13_reg_898[5 : 3] <= zext_ln74_fu_564_p1[5 : 3];
        v116_addr_13_reg_898_pp0_iter1_reg[5 : 3] <= v116_addr_13_reg_898[5 : 3];
        v116_addr_13_reg_898_pp0_iter2_reg[5 : 3] <= v116_addr_13_reg_898_pp0_iter1_reg[5 : 3];
        v116_addr_14_reg_1014[5 : 3] <= zext_ln82_fu_657_p1[5 : 3];
        v116_addr_14_reg_1014_pp0_iter2_reg[5 : 3] <= v116_addr_14_reg_1014[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_load_14_reg_1024 <= v116_q0;
        v53_reg_1029 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_load_8_reg_783 <= v116_q0;
        v116_load_reg_778 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v11_reg_924 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v17_reg_939 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v23_reg_954 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_reg_969 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v35_reg_984 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v36_reg_1039 <= grp_fu_692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v41_reg_999 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v42_reg_1044 <= grp_fu_692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v47_reg_1009 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v48_reg_1049 <= grp_fu_692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v54_reg_1054 <= grp_fu_692_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_748 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_v5 = 7'd0;
    end else begin
        ap_sig_allocacmp_v5 = v49_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_271_p0 = v51_fu_671_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_271_p0 = v45_fu_662_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_271_p0 = v39_fu_646_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_271_p0 = v33_fu_642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_271_p0 = v27_fu_634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_271_p0 = v21_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_271_p0 = v15_fu_617_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_271_p0 = v9_fu_608_p1;
    end else begin
        grp_fu_271_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_271_p1 = v53_reg_1029;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_271_p1 = v47_reg_1009;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_271_p1 = v41_reg_999;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_271_p1 = v35_reg_984;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_271_p1 = v29_reg_969;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_271_p1 = v23_reg_954;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_271_p1 = v17_reg_939;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_271_p1 = v11_reg_924;
    end else begin
        grp_fu_271_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_275_p0 = v52_fu_638_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_275_p0 = v46_fu_629_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_275_p0 = v40_fu_621_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_275_p0 = v34_fu_612_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_275_p0 = v28_fu_604_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_275_p0 = v22_fu_599_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_275_p0 = v16_fu_552_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_275_p0 = v10_fu_482_p1;
    end else begin
        grp_fu_275_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_275_p1 = v8_reg_827;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_275_p1 = v8_fu_475_p3;
    end else begin
        grp_fu_275_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v113_address0_local = zext_ln83_fu_594_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address0_local = zext_ln68_fu_542_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address0_local = zext_ln54_fu_451_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address0_local = zext_ln40_fu_368_p1;
        end else begin
            v113_address0_local = 'bx;
        end
    end else begin
        v113_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v113_address1_local = zext_ln75_fu_579_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address1_local = zext_ln61_fu_509_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address1_local = zext_ln47_fu_422_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address1_local = zext_ln33_fu_328_p1;
        end else begin
            v113_address1_local = 'bx;
        end
    end else begin
        v113_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_ce0_local = 1'b1;
    end else begin
        v113_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_ce1_local = 1'b1;
    end else begin
        v113_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address0_local = v116_addr_14_reg_1014_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address0_local = v116_addr_13_reg_898_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address0_local = v116_addr_12_reg_868_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address0_local = v116_addr_11_reg_857_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address0_local = zext_ln82_fu_657_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address0_local = zext_ln67_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address0_local = zext_ln53_fu_435_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address0_local = zext_ln39_fu_351_p1;
    end else begin
        v116_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address1_local = v116_addr_10_reg_803_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address1_local = v116_addr_9_reg_793_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address1_local = v116_addr_8_reg_767_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address1_local = v116_addr_reg_757_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address1_local = zext_ln74_fu_564_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address1_local = zext_ln60_fu_494_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address1_local = zext_ln46_fu_406_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address1_local = zext_ln28_fu_313_p1;
    end else begin
        v116_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_ce0_local = 1'b1;
    end else begin
        v116_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_ce1_local = 1'b1;
    end else begin
        v116_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v116_d0_local = bitcast_ln86_fu_702_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v116_d0_local = bitcast_ln78_fu_698_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v116_d0_local = bitcast_ln71_fu_694_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v116_d0_local = bitcast_ln64_fu_690_p1;
        end else begin
            v116_d0_local = 'bx;
        end
    end else begin
        v116_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_d1_local = bitcast_ln57_fu_685_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_d1_local = bitcast_ln50_fu_680_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_d1_local = bitcast_ln43_fu_675_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_d1_local = bitcast_ln36_fu_666_p1;
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
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v116_we1_local = 1'b1;
    end else begin
        v116_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_reg_748_pp0_iter1_reg == 1'd1))) begin
        v7_6_out_ap_vld = 1'b1;
    end else begin
        v7_6_out_ap_vld = 1'b0;
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
assign add_ln28_fu_373_p2 = (ap_sig_allocacmp_v5 + 7'd8);
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
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_fu_666_p1 = reg_288;
assign bitcast_ln43_fu_675_p1 = reg_288;
assign bitcast_ln50_fu_680_p1 = reg_288;
assign bitcast_ln57_fu_685_p1 = reg_288;
assign bitcast_ln64_fu_690_p1 = v36_reg_1039;
assign bitcast_ln71_fu_694_p1 = v42_reg_1044;
assign bitcast_ln78_fu_698_p1 = v48_reg_1049;
assign bitcast_ln86_fu_702_p1 = v54_reg_1054;
assign grp_fu_692_p_ce = 1'b1;
assign grp_fu_692_p_din0 = grp_fu_271_p0;
assign grp_fu_692_p_din1 = grp_fu_271_p1;
assign grp_fu_692_p_opcode = 2'd0;
assign grp_fu_696_p_ce = 1'b1;
assign grp_fu_696_p_din0 = grp_fu_275_p0;
assign grp_fu_696_p_din1 = grp_fu_275_p1;
assign icmp_ln31_fu_384_p2 = ((v5_reg_740 == 7'd0) ? 1'b1 : 1'b0);
assign or_ln39_6_fu_343_p3 = {{tmp_20_fu_333_p4}, {1'd1}};
assign or_ln46_6_fu_398_p3 = {{tmp_22_fu_389_p4}, {2'd2}};
assign or_ln53_6_fu_427_p3 = {{tmp_22_fu_389_p4}, {2'd3}};
assign or_ln60_6_fu_487_p3 = {{tmp_25_reg_809}, {3'd4}};
assign or_ln67_6_fu_514_p5 = {{{{tmp_25_reg_809}, {1'd1}}, {tmp_6_reg_821}}, {1'd1}};
assign or_ln74_6_fu_557_p3 = {{tmp_25_reg_809}, {3'd6}};
assign or_ln82_6_fu_650_p3 = {{tmp_25_reg_809_pp0_iter1_reg}, {3'd7}};
assign tmp_20_fu_333_p4 = {{ap_sig_allocacmp_v5[5:1]}};
assign tmp_21_fu_356_p5 = {{{{tmp_105}, {3'd6}}, {tmp_20_fu_333_p4}}, {1'd1}};
assign tmp_22_fu_389_p4 = {{v5_reg_740[5:2]}};
assign tmp_23_fu_411_p5 = {{{{tmp_105}, {3'd6}}, {tmp_22_fu_389_p4}}, {2'd2}};
assign tmp_24_fu_440_p5 = {{{{tmp_105}, {3'd6}}, {tmp_22_fu_389_p4}}, {2'd3}};
assign tmp_26_fu_499_p5 = {{{{tmp_105}, {3'd6}}, {tmp_25_reg_809}}, {3'd4}};
assign tmp_27_fu_529_p7 = {{{{{{tmp_105}, {3'd6}}, {tmp_25_reg_809}}, {1'd1}}, {tmp_6_reg_821}}, {1'd1}};
assign tmp_28_fu_569_p5 = {{{{tmp_105}, {3'd6}}, {tmp_25_reg_809}}, {3'd6}};
assign tmp_29_fu_584_p5 = {{{{tmp_105}, {3'd6}}, {tmp_25_reg_809}}, {3'd7}};
assign tmp_fu_305_p3 = ap_sig_allocacmp_v5[32'd6];
assign tmp_s_fu_318_p4 = {{{tmp_105}, {2'd3}}, {ap_sig_allocacmp_v5}};
assign v10_fu_482_p1 = reg_279;
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
assign v15_fu_617_p1 = v116_load_8_reg_783;
assign v16_fu_552_p1 = reg_283;
assign v21_fu_625_p1 = v116_load_9_reg_837;
assign v22_fu_599_p1 = reg_279;
assign v27_fu_634_p1 = v116_load_10_reg_842;
assign v28_fu_604_p1 = v113_load_10_reg_847;
assign v33_fu_642_p1 = v116_load_11_reg_878;
assign v34_fu_612_p1 = reg_283;
assign v39_fu_646_p1 = v116_load_12_reg_883;
assign v40_fu_621_p1 = v113_load_12_reg_888;
assign v45_fu_662_p1 = v116_load_13_reg_914;
assign v46_fu_629_p1 = reg_279;
assign v51_fu_671_p1 = v116_load_14_reg_1024;
assign v52_fu_638_p1 = v113_load_14_reg_919;
assign v7_6_out = v3_fu_92;
assign v8_fu_475_p3 = ((icmp_ln31_reg_773[0:0] == 1'b1) ? v6_6 : v3_fu_92);
assign v9_fu_608_p1 = v116_load_reg_778;
assign zext_ln28_fu_313_p1 = ap_sig_allocacmp_v5;
assign zext_ln33_fu_328_p1 = tmp_s_fu_318_p4;
assign zext_ln39_fu_351_p1 = or_ln39_6_fu_343_p3;
assign zext_ln40_fu_368_p1 = tmp_21_fu_356_p5;
assign zext_ln46_fu_406_p1 = or_ln46_6_fu_398_p3;
assign zext_ln47_fu_422_p1 = tmp_23_fu_411_p5;
assign zext_ln53_fu_435_p1 = or_ln53_6_fu_427_p3;
assign zext_ln54_fu_451_p1 = tmp_24_fu_440_p5;
assign zext_ln60_fu_494_p1 = or_ln60_6_fu_487_p3;
assign zext_ln61_fu_509_p1 = tmp_26_fu_499_p5;
assign zext_ln67_fu_524_p1 = or_ln67_6_fu_514_p5;
assign zext_ln68_fu_542_p1 = tmp_27_fu_529_p7;
assign zext_ln74_fu_564_p1 = or_ln74_6_fu_557_p3;
assign zext_ln75_fu_579_p1 = tmp_28_fu_569_p5;
assign zext_ln82_fu_657_p1 = or_ln82_6_fu_650_p3;
assign zext_ln83_fu_594_p1 = tmp_29_fu_584_p5;
always @ (posedge ap_clk) begin
    v116_addr_8_reg_767[0] <= 1'b1;
    v116_addr_8_reg_767_pp0_iter1_reg[0] <= 1'b1;
    v116_addr_9_reg_793[1:0] <= 2'b10;
    v116_addr_9_reg_793_pp0_iter1_reg[1:0] <= 2'b10;
    v116_addr_10_reg_803[1:0] <= 2'b11;
    v116_addr_10_reg_803_pp0_iter1_reg[1:0] <= 2'b11;
    v116_addr_10_reg_803_pp0_iter2_reg[1:0] <= 2'b11;
    v116_addr_11_reg_857[2:0] <= 3'b100;
    v116_addr_11_reg_857_pp0_iter1_reg[2:0] <= 3'b100;
    v116_addr_11_reg_857_pp0_iter2_reg[2:0] <= 3'b100;
    v116_addr_12_reg_868[0] <= 1'b1;
    v116_addr_12_reg_868[2] <= 1'b1;
    v116_addr_12_reg_868_pp0_iter1_reg[0] <= 1'b1;
    v116_addr_12_reg_868_pp0_iter1_reg[2] <= 1'b1;
    v116_addr_12_reg_868_pp0_iter2_reg[0] <= 1'b1;
    v116_addr_12_reg_868_pp0_iter2_reg[2] <= 1'b1;
    v116_addr_13_reg_898[2:0] <= 3'b110;
    v116_addr_13_reg_898_pp0_iter1_reg[2:0] <= 3'b110;
    v116_addr_13_reg_898_pp0_iter2_reg[2:0] <= 3'b110;
    v116_addr_14_reg_1014[2:0] <= 3'b111;
    v116_addr_14_reg_1014_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 