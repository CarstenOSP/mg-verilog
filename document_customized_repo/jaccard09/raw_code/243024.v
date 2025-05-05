module atax_atax_node0_Pipeline_label_19 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_6_reload,zext_ln33_7,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v6_7,v116_address0,v116_ce0,v116_we0,v116_d0,v116_q0,v116_address1,v116_ce1,v116_we1,v116_d1,v116_q1,tmp_105,v7_7_out_i,v7_7_out_o,v7_7_out_o_ap_vld,grp_fu_692_p_din0,grp_fu_692_p_din1,grp_fu_692_p_opcode,grp_fu_692_p_dout0,grp_fu_692_p_ce,grp_fu_696_p_din0,grp_fu_696_p_din1,grp_fu_696_p_dout0,grp_fu_696_p_ce); 
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
input  [31:0] v7_6_reload;
input  [11:0] zext_ln33_7;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
input  [31:0] v6_7;
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
input  [2:0] tmp_105;
input  [31:0] v7_7_out_i;
output  [31:0] v7_7_out_o;
output   v7_7_out_o_ap_vld;
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
reg[31:0] v7_7_out_o;
reg v7_7_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_740;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_274;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_278;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_283;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v5_reg_731;
reg   [5:0] v116_addr_reg_749;
reg   [5:0] v116_addr_reg_749_pp0_iter1_reg;
reg   [5:0] v116_addr_1_reg_759;
reg   [5:0] v116_addr_1_reg_759_pp0_iter1_reg;
wire   [0:0] icmp_ln31_fu_369_p2;
reg   [0:0] icmp_ln31_reg_765;
reg   [31:0] v116_load_reg_770;
reg   [31:0] v116_load_1_reg_775;
reg   [5:0] v116_addr_2_reg_785;
reg   [5:0] v116_addr_2_reg_785_pp0_iter1_reg;
reg   [5:0] v116_addr_3_reg_795;
reg   [5:0] v116_addr_3_reg_795_pp0_iter1_reg;
reg   [5:0] v116_addr_3_reg_795_pp0_iter2_reg;
wire   [31:0] v8_fu_445_p3;
reg   [31:0] v8_reg_801;
wire   [31:0] v10_fu_452_p1;
reg   [31:0] v116_load_2_reg_811;
reg   [31:0] v116_load_3_reg_816;
reg   [31:0] v113_load_3_reg_821;
wire   [2:0] tmp_15_fu_457_p4;
reg   [2:0] tmp_15_reg_826;
reg   [2:0] tmp_15_reg_826_pp0_iter1_reg;
reg   [5:0] v116_addr_4_reg_839;
reg   [5:0] v116_addr_4_reg_839_pp0_iter1_reg;
reg   [5:0] v116_addr_4_reg_839_pp0_iter2_reg;
reg   [5:0] v116_addr_5_reg_850;
reg   [5:0] v116_addr_5_reg_850_pp0_iter1_reg;
reg   [5:0] v116_addr_5_reg_850_pp0_iter2_reg;
wire   [31:0] v16_fu_545_p1;
reg   [31:0] v116_load_4_reg_860;
reg   [31:0] v116_load_5_reg_865;
reg   [31:0] v113_load_5_reg_870;
reg   [5:0] v116_addr_6_reg_880;
reg   [5:0] v116_addr_6_reg_880_pp0_iter1_reg;
reg   [5:0] v116_addr_6_reg_880_pp0_iter2_reg;
wire   [31:0] v22_fu_592_p1;
reg   [31:0] v116_load_6_reg_896;
reg   [31:0] v113_load_7_reg_901;
reg   [31:0] v11_reg_906;
wire   [31:0] v28_fu_597_p1;
wire   [31:0] v9_fu_601_p1;
reg   [31:0] v17_reg_921;
wire   [31:0] v34_fu_605_p1;
wire   [31:0] v15_fu_610_p1;
reg   [31:0] v23_reg_936;
wire   [31:0] v40_fu_614_p1;
wire   [31:0] v21_fu_628_p1;
reg   [31:0] v29_reg_951;
wire   [31:0] v46_fu_632_p1;
wire   [31:0] v27_fu_637_p1;
reg   [31:0] v35_reg_966;
wire   [31:0] v52_fu_641_p1;
wire   [31:0] v33_fu_645_p1;
reg   [31:0] v41_reg_981;
wire   [31:0] v39_fu_649_p1;
reg   [31:0] v47_reg_991;
reg   [5:0] v116_addr_7_reg_996;
reg   [5:0] v116_addr_7_reg_996_pp0_iter2_reg;
wire   [31:0] v45_fu_665_p1;
reg   [31:0] v116_load_7_reg_1006;
reg   [31:0] v53_reg_1011;
wire   [31:0] v51_fu_674_p1;
reg   [31:0] v36_reg_1021;
reg   [31:0] v42_reg_1026;
reg   [31:0] v48_reg_1031;
reg   [31:0] v54_reg_1036;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln33_1_fu_324_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_fu_309_p1;
wire   [63:0] zext_ln40_fu_364_p1;
wire   [63:0] zext_ln39_fu_347_p1;
wire   [63:0] zext_ln47_fu_407_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln46_fu_391_p1;
wire   [63:0] zext_ln54_fu_436_p1;
wire   [63:0] zext_ln53_fu_420_p1;
wire   [63:0] zext_ln61_fu_490_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln60_fu_474_p1;
wire   [63:0] zext_ln68_fu_534_p1;
wire   [63:0] zext_ln67_fu_514_p1;
wire   [63:0] zext_ln75_fu_572_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln74_fu_557_p1;
wire   [63:0] zext_ln83_fu_587_p1;
wire   [63:0] zext_ln82_fu_660_p1;
wire    ap_loop_init;
reg   [6:0] v49_fu_92;
wire   [6:0] add_ln28_fu_618_p2;
reg   [6:0] ap_sig_allocacmp_v5;
reg    v116_ce1_local;
reg   [5:0] v116_address1_local;
reg    v116_ce0_local;
reg   [5:0] v116_address0_local;
reg    v116_we1_local;
reg   [31:0] v116_d1_local;
wire   [31:0] bitcast_ln36_fu_669_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln43_fu_678_p1;
wire    ap_block_pp0_stage6;
wire   [31:0] bitcast_ln50_fu_683_p1;
wire    ap_block_pp0_stage7;
wire   [31:0] bitcast_ln57_fu_688_p1;
wire    ap_block_pp0_stage4;
reg    v116_we0_local;
reg   [31:0] v116_d0_local;
wire   [31:0] bitcast_ln64_fu_693_p1;
wire   [31:0] bitcast_ln71_fu_697_p1;
wire   [31:0] bitcast_ln78_fu_701_p1;
wire   [31:0] bitcast_ln86_fu_705_p1;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg   [31:0] grp_fu_266_p0;
reg   [31:0] grp_fu_266_p1;
reg   [31:0] grp_fu_270_p0;
reg   [31:0] grp_fu_270_p1;
wire   [11:0] zext_ln33_fu_314_p1;
wire   [11:0] add_ln33_fu_318_p2;
wire   [4:0] tmp_s_fu_329_p4;
wire   [5:0] or_ln39_7_fu_339_p3;
wire   [11:0] tmp_11_fu_352_p5;
wire   [3:0] tmp_12_fu_374_p4;
wire   [5:0] or_ln46_7_fu_383_p3;
wire   [11:0] tmp_13_fu_396_p5;
wire   [5:0] or_ln53_7_fu_412_p3;
wire   [11:0] tmp_14_fu_425_p5;
wire   [5:0] or_ln60_7_fu_466_p3;
wire   [11:0] tmp_16_fu_479_p5;
wire   [0:0] tmp_5_fu_495_p3;
wire   [5:0] or_ln67_7_fu_502_p5;
wire   [11:0] tmp_17_fu_519_p7;
wire   [5:0] or_ln74_7_fu_550_p3;
wire   [11:0] tmp_18_fu_562_p5;
wire   [11:0] tmp_19_fu_577_p5;
wire   [5:0] or_ln82_7_fu_653_p3;
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
#0 v49_fu_92 = 7'd0;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_278 <= v113_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_278 <= v113_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_92 <= 7'd0;
    end else if (((tmp_reg_740 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v49_fu_92 <= add_ln28_fu_618_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln31_reg_765 <= icmp_ln31_fu_369_p2;
        v116_addr_2_reg_785[5 : 2] <= zext_ln46_fu_391_p1[5 : 2];
        v116_addr_2_reg_785_pp0_iter1_reg[5 : 2] <= v116_addr_2_reg_785[5 : 2];
        v116_addr_3_reg_795[5 : 2] <= zext_ln53_fu_420_p1[5 : 2];
        v116_addr_3_reg_795_pp0_iter1_reg[5 : 2] <= v116_addr_3_reg_795[5 : 2];
        v116_addr_3_reg_795_pp0_iter2_reg[5 : 2] <= v116_addr_3_reg_795_pp0_iter1_reg[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_274 <= v113_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_283 <= grp_fu_692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_15_reg_826 <= {{v5_reg_731[5:3]}};
        tmp_15_reg_826_pp0_iter1_reg <= tmp_15_reg_826;
        v116_addr_4_reg_839[5 : 3] <= zext_ln60_fu_474_p1[5 : 3];
        v116_addr_4_reg_839_pp0_iter1_reg[5 : 3] <= v116_addr_4_reg_839[5 : 3];
        v116_addr_4_reg_839_pp0_iter2_reg[5 : 3] <= v116_addr_4_reg_839_pp0_iter1_reg[5 : 3];
        v116_addr_5_reg_850[1] <= zext_ln67_fu_514_p1[1];
v116_addr_5_reg_850[5 : 3] <= zext_ln67_fu_514_p1[5 : 3];
        v116_addr_5_reg_850_pp0_iter1_reg[1] <= v116_addr_5_reg_850[1];
v116_addr_5_reg_850_pp0_iter1_reg[5 : 3] <= v116_addr_5_reg_850[5 : 3];
        v116_addr_5_reg_850_pp0_iter2_reg[1] <= v116_addr_5_reg_850_pp0_iter1_reg[1];
v116_addr_5_reg_850_pp0_iter2_reg[5 : 3] <= v116_addr_5_reg_850_pp0_iter1_reg[5 : 3];
        v8_reg_801 <= v8_fu_445_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_740 <= ap_sig_allocacmp_v5[32'd6];
        v116_addr_1_reg_759[5 : 1] <= zext_ln39_fu_347_p1[5 : 1];
        v116_addr_1_reg_759_pp0_iter1_reg[5 : 1] <= v116_addr_1_reg_759[5 : 1];
        v116_addr_reg_749 <= zext_ln28_fu_309_p1;
        v116_addr_reg_749_pp0_iter1_reg <= v116_addr_reg_749;
        v5_reg_731 <= ap_sig_allocacmp_v5;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_load_3_reg_821 <= v113_q0;
        v116_load_2_reg_811 <= v116_q1;
        v116_load_3_reg_816 <= v116_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_load_5_reg_870 <= v113_q0;
        v116_load_4_reg_860 <= v116_q1;
        v116_load_5_reg_865 <= v116_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v113_load_7_reg_901 <= v113_q0;
        v116_load_6_reg_896 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_addr_6_reg_880[5 : 3] <= zext_ln74_fu_557_p1[5 : 3];
        v116_addr_6_reg_880_pp0_iter1_reg[5 : 3] <= v116_addr_6_reg_880[5 : 3];
        v116_addr_6_reg_880_pp0_iter2_reg[5 : 3] <= v116_addr_6_reg_880_pp0_iter1_reg[5 : 3];
        v116_addr_7_reg_996[5 : 3] <= zext_ln82_fu_660_p1[5 : 3];
        v116_addr_7_reg_996_pp0_iter2_reg[5 : 3] <= v116_addr_7_reg_996[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_load_1_reg_775 <= v116_q0;
        v116_load_reg_770 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_load_7_reg_1006 <= v116_q0;
        v53_reg_1011 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v11_reg_906 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v17_reg_921 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v23_reg_936 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_reg_951 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v35_reg_966 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v36_reg_1021 <= grp_fu_692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v41_reg_981 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v42_reg_1026 <= grp_fu_692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v47_reg_991 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v48_reg_1031 <= grp_fu_692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v54_reg_1036 <= grp_fu_692_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_740 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_v5 = 7'd0;
    end else begin
        ap_sig_allocacmp_v5 = v49_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_266_p0 = v51_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_266_p0 = v45_fu_665_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_266_p0 = v39_fu_649_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_266_p0 = v33_fu_645_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_266_p0 = v27_fu_637_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_266_p0 = v21_fu_628_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_266_p0 = v15_fu_610_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_266_p0 = v9_fu_601_p1;
    end else begin
        grp_fu_266_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_266_p1 = v53_reg_1011;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_266_p1 = v47_reg_991;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_266_p1 = v41_reg_981;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_266_p1 = v35_reg_966;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_266_p1 = v29_reg_951;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_266_p1 = v23_reg_936;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_266_p1 = v17_reg_921;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_266_p1 = v11_reg_906;
    end else begin
        grp_fu_266_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_270_p0 = v52_fu_641_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_270_p0 = v46_fu_632_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_270_p0 = v40_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_270_p0 = v34_fu_605_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_270_p0 = v28_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_270_p0 = v22_fu_592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_270_p0 = v16_fu_545_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_270_p0 = v10_fu_452_p1;
    end else begin
        grp_fu_270_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_270_p1 = v8_reg_801;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_270_p1 = v8_fu_445_p3;
    end else begin
        grp_fu_270_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v113_address0_local = zext_ln83_fu_587_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address0_local = zext_ln68_fu_534_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address0_local = zext_ln54_fu_436_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address0_local = zext_ln40_fu_364_p1;
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
            v113_address1_local = zext_ln75_fu_572_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address1_local = zext_ln61_fu_490_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address1_local = zext_ln47_fu_407_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address1_local = zext_ln33_1_fu_324_p1;
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
        v116_address0_local = v116_addr_7_reg_996_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address0_local = v116_addr_6_reg_880_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address0_local = v116_addr_5_reg_850_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address0_local = v116_addr_4_reg_839_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address0_local = zext_ln82_fu_660_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address0_local = zext_ln67_fu_514_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address0_local = zext_ln53_fu_420_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address0_local = zext_ln39_fu_347_p1;
    end else begin
        v116_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address1_local = v116_addr_3_reg_795_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address1_local = v116_addr_2_reg_785_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address1_local = v116_addr_1_reg_759_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address1_local = v116_addr_reg_749_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address1_local = zext_ln74_fu_557_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address1_local = zext_ln60_fu_474_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address1_local = zext_ln46_fu_391_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address1_local = zext_ln28_fu_309_p1;
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
            v116_d0_local = bitcast_ln86_fu_705_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v116_d0_local = bitcast_ln78_fu_701_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v116_d0_local = bitcast_ln71_fu_697_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v116_d0_local = bitcast_ln64_fu_693_p1;
        end else begin
            v116_d0_local = 'bx;
        end
    end else begin
        v116_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_d1_local = bitcast_ln57_fu_688_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_d1_local = bitcast_ln50_fu_683_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_d1_local = bitcast_ln43_fu_678_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_d1_local = bitcast_ln36_fu_669_p1;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_7_out_o = v7_6_reload;
    end else if (((tmp_reg_740 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v7_7_out_o = v8_fu_445_p3;
    end else begin
        v7_7_out_o = v7_7_out_i;
    end
end
always @ (*) begin
    if ((((tmp_reg_740 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v7_7_out_o_ap_vld = 1'b1;
    end else begin
        v7_7_out_o_ap_vld = 1'b0;
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
assign add_ln28_fu_618_p2 = (v5_reg_731 + 7'd8);
assign add_ln33_fu_318_p2 = (zext_ln33_7 + zext_ln33_fu_314_p1);
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
assign bitcast_ln36_fu_669_p1 = reg_283;
assign bitcast_ln43_fu_678_p1 = reg_283;
assign bitcast_ln50_fu_683_p1 = reg_283;
assign bitcast_ln57_fu_688_p1 = reg_283;
assign bitcast_ln64_fu_693_p1 = v36_reg_1021;
assign bitcast_ln71_fu_697_p1 = v42_reg_1026;
assign bitcast_ln78_fu_701_p1 = v48_reg_1031;
assign bitcast_ln86_fu_705_p1 = v54_reg_1036;
assign grp_fu_692_p_ce = 1'b1;
assign grp_fu_692_p_din0 = grp_fu_266_p0;
assign grp_fu_692_p_din1 = grp_fu_266_p1;
assign grp_fu_692_p_opcode = 2'd0;
assign grp_fu_696_p_ce = 1'b1;
assign grp_fu_696_p_din0 = grp_fu_270_p0;
assign grp_fu_696_p_din1 = grp_fu_270_p1;
assign icmp_ln31_fu_369_p2 = ((v5_reg_731 == 7'd0) ? 1'b1 : 1'b0);
assign or_ln39_7_fu_339_p3 = {{tmp_s_fu_329_p4}, {1'd1}};
assign or_ln46_7_fu_383_p3 = {{tmp_12_fu_374_p4}, {2'd2}};
assign or_ln53_7_fu_412_p3 = {{tmp_12_fu_374_p4}, {2'd3}};
assign or_ln60_7_fu_466_p3 = {{tmp_15_fu_457_p4}, {3'd4}};
assign or_ln67_7_fu_502_p5 = {{{{tmp_15_fu_457_p4}, {1'd1}}, {tmp_5_fu_495_p3}}, {1'd1}};
assign or_ln74_7_fu_550_p3 = {{tmp_15_reg_826}, {3'd6}};
assign or_ln82_7_fu_653_p3 = {{tmp_15_reg_826_pp0_iter1_reg}, {3'd7}};
assign tmp_11_fu_352_p5 = {{{{tmp_105}, {3'd7}}, {tmp_s_fu_329_p4}}, {1'd1}};
assign tmp_12_fu_374_p4 = {{v5_reg_731[5:2]}};
assign tmp_13_fu_396_p5 = {{{{tmp_105}, {3'd7}}, {tmp_12_fu_374_p4}}, {2'd2}};
assign tmp_14_fu_425_p5 = {{{{tmp_105}, {3'd7}}, {tmp_12_fu_374_p4}}, {2'd3}};
assign tmp_15_fu_457_p4 = {{v5_reg_731[5:3]}};
assign tmp_16_fu_479_p5 = {{{{tmp_105}, {3'd7}}, {tmp_15_fu_457_p4}}, {3'd4}};
assign tmp_17_fu_519_p7 = {{{{{{tmp_105}, {3'd7}}, {tmp_15_fu_457_p4}}, {1'd1}}, {tmp_5_fu_495_p3}}, {1'd1}};
assign tmp_18_fu_562_p5 = {{{{tmp_105}, {3'd7}}, {tmp_15_reg_826}}, {3'd6}};
assign tmp_19_fu_577_p5 = {{{{tmp_105}, {3'd7}}, {tmp_15_reg_826}}, {3'd7}};
assign tmp_5_fu_495_p3 = v5_reg_731[32'd1];
assign tmp_s_fu_329_p4 = {{ap_sig_allocacmp_v5[5:1]}};
assign v10_fu_452_p1 = reg_274;
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
assign v15_fu_610_p1 = v116_load_1_reg_775;
assign v16_fu_545_p1 = reg_278;
assign v21_fu_628_p1 = v116_load_2_reg_811;
assign v22_fu_592_p1 = reg_274;
assign v27_fu_637_p1 = v116_load_3_reg_816;
assign v28_fu_597_p1 = v113_load_3_reg_821;
assign v33_fu_645_p1 = v116_load_4_reg_860;
assign v34_fu_605_p1 = reg_278;
assign v39_fu_649_p1 = v116_load_5_reg_865;
assign v40_fu_614_p1 = v113_load_5_reg_870;
assign v45_fu_665_p1 = v116_load_6_reg_896;
assign v46_fu_632_p1 = reg_274;
assign v51_fu_674_p1 = v116_load_7_reg_1006;
assign v52_fu_641_p1 = v113_load_7_reg_901;
assign v8_fu_445_p3 = ((icmp_ln31_reg_765[0:0] == 1'b1) ? v6_7 : v7_7_out_i);
assign v9_fu_601_p1 = v116_load_reg_770;
assign zext_ln28_fu_309_p1 = ap_sig_allocacmp_v5;
assign zext_ln33_1_fu_324_p1 = add_ln33_fu_318_p2;
assign zext_ln33_fu_314_p1 = ap_sig_allocacmp_v5;
assign zext_ln39_fu_347_p1 = or_ln39_7_fu_339_p3;
assign zext_ln40_fu_364_p1 = tmp_11_fu_352_p5;
assign zext_ln46_fu_391_p1 = or_ln46_7_fu_383_p3;
assign zext_ln47_fu_407_p1 = tmp_13_fu_396_p5;
assign zext_ln53_fu_420_p1 = or_ln53_7_fu_412_p3;
assign zext_ln54_fu_436_p1 = tmp_14_fu_425_p5;
assign zext_ln60_fu_474_p1 = or_ln60_7_fu_466_p3;
assign zext_ln61_fu_490_p1 = tmp_16_fu_479_p5;
assign zext_ln67_fu_514_p1 = or_ln67_7_fu_502_p5;
assign zext_ln68_fu_534_p1 = tmp_17_fu_519_p7;
assign zext_ln74_fu_557_p1 = or_ln74_7_fu_550_p3;
assign zext_ln75_fu_572_p1 = tmp_18_fu_562_p5;
assign zext_ln82_fu_660_p1 = or_ln82_7_fu_653_p3;
assign zext_ln83_fu_587_p1 = tmp_19_fu_577_p5;
always @ (posedge ap_clk) begin
    v116_addr_1_reg_759[0] <= 1'b1;
    v116_addr_1_reg_759_pp0_iter1_reg[0] <= 1'b1;
    v116_addr_2_reg_785[1:0] <= 2'b10;
    v116_addr_2_reg_785_pp0_iter1_reg[1:0] <= 2'b10;
    v116_addr_3_reg_795[1:0] <= 2'b11;
    v116_addr_3_reg_795_pp0_iter1_reg[1:0] <= 2'b11;
    v116_addr_3_reg_795_pp0_iter2_reg[1:0] <= 2'b11;
    v116_addr_4_reg_839[2:0] <= 3'b100;
    v116_addr_4_reg_839_pp0_iter1_reg[2:0] <= 3'b100;
    v116_addr_4_reg_839_pp0_iter2_reg[2:0] <= 3'b100;
    v116_addr_5_reg_850[0] <= 1'b1;
    v116_addr_5_reg_850[2] <= 1'b1;
    v116_addr_5_reg_850_pp0_iter1_reg[0] <= 1'b1;
    v116_addr_5_reg_850_pp0_iter1_reg[2] <= 1'b1;
    v116_addr_5_reg_850_pp0_iter2_reg[0] <= 1'b1;
    v116_addr_5_reg_850_pp0_iter2_reg[2] <= 1'b1;
    v116_addr_6_reg_880[2:0] <= 3'b110;
    v116_addr_6_reg_880_pp0_iter1_reg[2:0] <= 3'b110;
    v116_addr_6_reg_880_pp0_iter2_reg[2:0] <= 3'b110;
    v116_addr_7_reg_996[2:0] <= 3'b111;
    v116_addr_7_reg_996_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 