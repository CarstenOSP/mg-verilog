module atax_atax_node0_Pipeline_label_19 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_7_reload,tmp_79,v113_0_address0,v113_0_ce0,v113_0_q0,v113_1_address0,v113_1_ce0,v113_1_q0,v113_2_address0,v113_2_ce0,v113_2_q0,v113_3_address0,v113_3_ce0,v113_3_q0,v113_4_address0,v113_4_ce0,v113_4_q0,v113_5_address0,v113_5_ce0,v113_5_q0,v113_6_address0,v113_6_ce0,v113_6_q0,v113_7_address0,v113_7_ce0,v113_7_q0,v116_address0,v116_ce0,v116_we0,v116_d0,v116_q0,v116_address1,v116_ce1,v116_we1,v116_d1,v116_q1,v6_7,v7_8_out_i,v7_8_out_o,v7_8_out_o_ap_vld,grp_fu_738_p_din0,grp_fu_738_p_din1,grp_fu_738_p_opcode,grp_fu_738_p_dout0,grp_fu_738_p_ce,grp_fu_742_p_din0,grp_fu_742_p_din1,grp_fu_742_p_dout0,grp_fu_742_p_ce); 
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
input  [31:0] v7_7_reload;
input  [2:0] tmp_79;
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
input  [31:0] v6_7;
input  [31:0] v7_8_out_i;
output  [31:0] v7_8_out_o;
output   v7_8_out_o_ap_vld;
output  [31:0] grp_fu_738_p_din0;
output  [31:0] grp_fu_738_p_din1;
output  [1:0] grp_fu_738_p_opcode;
input  [31:0] grp_fu_738_p_dout0;
output   grp_fu_738_p_ce;
output  [31:0] grp_fu_742_p_din0;
output  [31:0] grp_fu_742_p_din1;
input  [31:0] grp_fu_742_p_dout0;
output   grp_fu_742_p_ce;
reg ap_idle;
reg[31:0] v7_8_out_o;
reg v7_8_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_628;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_303;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_321_p3;
wire   [2:0] tmp_s_fu_334_p4;
reg   [2:0] tmp_s_reg_632;
reg   [2:0] tmp_s_reg_632_pp0_iter1_reg;
wire   [0:0] icmp_ln31_fu_366_p2;
reg   [0:0] icmp_ln31_reg_680;
reg   [5:0] v116_addr_reg_685;
reg   [5:0] v116_addr_reg_685_pp0_iter1_reg;
reg   [3:0] tmp_13_reg_690;
reg   [0:0] tmp_5_reg_696;
reg   [5:0] v116_addr_1_reg_701;
reg   [5:0] v116_addr_1_reg_701_pp0_iter1_reg;
reg   [31:0] v116_load_reg_707;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] v113_0_load_reg_712;
reg   [31:0] v113_1_load_reg_717;
reg   [31:0] v113_2_load_reg_722;
reg   [31:0] v113_3_load_reg_727;
reg   [31:0] v113_4_load_reg_732;
reg   [31:0] v113_5_load_reg_737;
reg   [31:0] v113_6_load_reg_742;
reg   [31:0] v113_7_load_reg_747;
reg   [31:0] v116_load_1_reg_752;
reg   [5:0] v116_addr_2_reg_757;
reg   [5:0] v116_addr_2_reg_757_pp0_iter1_reg;
reg   [5:0] v116_addr_3_reg_762;
reg   [5:0] v116_addr_3_reg_762_pp0_iter1_reg;
reg   [5:0] v116_addr_3_reg_762_pp0_iter2_reg;
wire   [31:0] v8_1_fu_452_p3;
reg   [31:0] v8_1_reg_768;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] v10_fu_459_p1;
reg   [31:0] v116_load_2_reg_778;
reg   [31:0] v116_load_3_reg_783;
reg   [5:0] v116_addr_4_reg_788;
reg   [5:0] v116_addr_4_reg_788_pp0_iter1_reg;
reg   [5:0] v116_addr_4_reg_788_pp0_iter2_reg;
reg   [5:0] v116_addr_5_reg_794;
reg   [5:0] v116_addr_5_reg_794_pp0_iter1_reg;
reg   [5:0] v116_addr_5_reg_794_pp0_iter2_reg;
wire   [31:0] v16_fu_496_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] v116_load_4_reg_804;
reg   [31:0] v116_load_5_reg_809;
reg   [5:0] v116_addr_6_reg_814;
reg   [5:0] v116_addr_6_reg_814_pp0_iter1_reg;
reg   [5:0] v116_addr_6_reg_814_pp0_iter2_reg;
wire   [31:0] v22_fu_512_p1;
reg   [31:0] v116_load_6_reg_825;
reg   [31:0] v11_reg_830;
wire   [31:0] v28_fu_516_p1;
wire   [31:0] v9_fu_520_p1;
reg   [31:0] v17_reg_845;
wire   [31:0] v34_fu_524_p1;
reg   [31:0] v23_reg_855;
wire   [31:0] v40_fu_528_p1;
wire   [31:0] v15_1_fu_532_p1;
reg   [31:0] v29_reg_870;
wire   [31:0] v46_fu_536_p1;
wire   [31:0] v21_fu_540_p1;
reg   [31:0] v35_reg_885;
wire   [31:0] v52_fu_544_p1;
wire   [31:0] v27_fu_548_p1;
reg   [31:0] v41_reg_900;
wire   [31:0] v33_fu_552_p1;
reg   [31:0] v47_reg_910;
wire   [31:0] v39_fu_568_p1;
reg   [5:0] v116_addr_7_reg_920;
reg   [5:0] v116_addr_7_reg_920_pp0_iter2_reg;
reg   [31:0] v53_reg_925;
wire   [31:0] v45_fu_572_p1;
reg   [31:0] v116_load_7_reg_935;
wire   [31:0] v51_fu_576_p1;
reg   [31:0] v36_reg_945;
reg   [31:0] v42_reg_950;
reg   [31:0] v48_reg_955;
reg   [31:0] v54_reg_960;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln33_fu_354_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_fu_329_p1;
wire   [63:0] zext_ln39_fu_390_p1;
wire   [63:0] zext_ln46_fu_431_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln53_fu_443_p1;
wire   [63:0] zext_ln60_fu_470_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln67_fu_485_p1;
wire   [63:0] zext_ln74_fu_507_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln82_fu_563_p1;
wire    ap_loop_init;
reg   [6:0] v49_fu_96;
wire   [6:0] add_ln28_fu_413_p2;
reg   [6:0] ap_sig_allocacmp_v5;
reg    v116_ce1_local;
reg   [5:0] v116_address1_local;
reg    v116_ce0_local;
reg   [5:0] v116_address0_local;
reg    v116_we1_local;
reg   [31:0] v116_d1_local;
wire   [31:0] bitcast_ln36_fu_580_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln43_fu_585_p1;
wire    ap_block_pp0_stage6;
wire   [31:0] bitcast_ln50_fu_590_p1;
wire    ap_block_pp0_stage7;
wire   [31:0] bitcast_ln57_fu_595_p1;
wire    ap_block_pp0_stage4;
reg    v116_we0_local;
reg   [31:0] v116_d0_local;
wire   [31:0] bitcast_ln64_fu_600_p1;
wire   [31:0] bitcast_ln71_fu_604_p1;
wire   [31:0] bitcast_ln78_fu_608_p1;
wire   [31:0] bitcast_ln86_fu_612_p1;
reg    v113_0_ce0_local;
reg    v113_1_ce0_local;
reg    v113_2_ce0_local;
reg    v113_3_ce0_local;
reg    v113_4_ce0_local;
reg    v113_5_ce0_local;
reg    v113_6_ce0_local;
reg    v113_7_ce0_local;
reg   [31:0] grp_fu_295_p0;
reg   [31:0] grp_fu_295_p1;
reg   [31:0] grp_fu_299_p0;
reg   [31:0] grp_fu_299_p1;
wire   [8:0] tmp_11_fu_344_p4;
wire   [4:0] tmp_12_fu_372_p4;
wire   [5:0] or_ln39_7_fu_382_p3;
wire   [5:0] or_ln46_7_fu_424_p3;
wire   [5:0] or_ln53_7_fu_436_p3;
wire   [5:0] or_ln60_7_fu_463_p3;
wire   [5:0] or_ln67_7_fu_475_p5;
wire   [5:0] or_ln74_7_fu_500_p3;
wire   [5:0] or_ln82_7_fu_556_p3;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_321_p3 == 1'd0))) begin
            v49_fu_96 <= add_ln28_fu_413_p2;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln31_reg_680 <= icmp_ln31_fu_366_p2;
        tmp_13_reg_690 <= {{ap_sig_allocacmp_v5[5:2]}};
        tmp_5_reg_696 <= ap_sig_allocacmp_v5[32'd1];
        tmp_reg_628 <= ap_sig_allocacmp_v5[32'd6];
        tmp_s_reg_632 <= {{ap_sig_allocacmp_v5[5:3]}};
        tmp_s_reg_632_pp0_iter1_reg <= tmp_s_reg_632;
        v116_addr_1_reg_701[5 : 1] <= zext_ln39_fu_390_p1[5 : 1];
        v116_addr_1_reg_701_pp0_iter1_reg[5 : 1] <= v116_addr_1_reg_701[5 : 1];
        v116_addr_reg_685 <= zext_ln28_fu_329_p1;
        v116_addr_reg_685_pp0_iter1_reg <= v116_addr_reg_685;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_303 <= grp_fu_738_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_load_reg_712 <= v113_0_q0;
        v113_1_load_reg_717 <= v113_1_q0;
        v113_2_load_reg_722 <= v113_2_q0;
        v113_3_load_reg_727 <= v113_3_q0;
        v113_4_load_reg_732 <= v113_4_q0;
        v113_5_load_reg_737 <= v113_5_q0;
        v113_6_load_reg_742 <= v113_6_q0;
        v113_7_load_reg_747 <= v113_7_q0;
        v116_addr_2_reg_757[5 : 2] <= zext_ln46_fu_431_p1[5 : 2];
        v116_addr_2_reg_757_pp0_iter1_reg[5 : 2] <= v116_addr_2_reg_757[5 : 2];
        v116_addr_3_reg_762[5 : 2] <= zext_ln53_fu_443_p1[5 : 2];
        v116_addr_3_reg_762_pp0_iter1_reg[5 : 2] <= v116_addr_3_reg_762[5 : 2];
        v116_addr_3_reg_762_pp0_iter2_reg[5 : 2] <= v116_addr_3_reg_762_pp0_iter1_reg[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_addr_4_reg_788[5 : 3] <= zext_ln60_fu_470_p1[5 : 3];
        v116_addr_4_reg_788_pp0_iter1_reg[5 : 3] <= v116_addr_4_reg_788[5 : 3];
        v116_addr_4_reg_788_pp0_iter2_reg[5 : 3] <= v116_addr_4_reg_788_pp0_iter1_reg[5 : 3];
        v116_addr_5_reg_794[1] <= zext_ln67_fu_485_p1[1];
v116_addr_5_reg_794[5 : 3] <= zext_ln67_fu_485_p1[5 : 3];
        v116_addr_5_reg_794_pp0_iter1_reg[1] <= v116_addr_5_reg_794[1];
v116_addr_5_reg_794_pp0_iter1_reg[5 : 3] <= v116_addr_5_reg_794[5 : 3];
        v116_addr_5_reg_794_pp0_iter2_reg[1] <= v116_addr_5_reg_794_pp0_iter1_reg[1];
v116_addr_5_reg_794_pp0_iter2_reg[5 : 3] <= v116_addr_5_reg_794_pp0_iter1_reg[5 : 3];
        v8_1_reg_768 <= v8_1_fu_452_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_addr_6_reg_814[5 : 3] <= zext_ln74_fu_507_p1[5 : 3];
        v116_addr_6_reg_814_pp0_iter1_reg[5 : 3] <= v116_addr_6_reg_814[5 : 3];
        v116_addr_6_reg_814_pp0_iter2_reg[5 : 3] <= v116_addr_6_reg_814_pp0_iter1_reg[5 : 3];
        v116_addr_7_reg_920[5 : 3] <= zext_ln82_fu_563_p1[5 : 3];
        v116_addr_7_reg_920_pp0_iter2_reg[5 : 3] <= v116_addr_7_reg_920[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_load_1_reg_752 <= v116_q0;
        v116_load_reg_707 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_load_2_reg_778 <= v116_q1;
        v116_load_3_reg_783 <= v116_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_load_4_reg_804 <= v116_q1;
        v116_load_5_reg_809 <= v116_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_load_6_reg_825 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_load_7_reg_935 <= v116_q0;
        v53_reg_925 <= grp_fu_742_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v11_reg_830 <= grp_fu_742_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v17_reg_845 <= grp_fu_742_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v23_reg_855 <= grp_fu_742_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_reg_870 <= grp_fu_742_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v35_reg_885 <= grp_fu_742_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v36_reg_945 <= grp_fu_738_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v41_reg_900 <= grp_fu_742_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v42_reg_950 <= grp_fu_738_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v47_reg_910 <= grp_fu_742_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v48_reg_955 <= grp_fu_738_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v54_reg_960 <= grp_fu_738_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_628 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_v5 = v49_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_295_p0 = v51_fu_576_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_295_p0 = v45_fu_572_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_295_p0 = v39_fu_568_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_295_p0 = v33_fu_552_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_295_p0 = v27_fu_548_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_295_p0 = v21_fu_540_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_295_p0 = v15_1_fu_532_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_295_p0 = v9_fu_520_p1;
    end else begin
        grp_fu_295_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_295_p1 = v53_reg_925;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_295_p1 = v47_reg_910;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_295_p1 = v41_reg_900;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_295_p1 = v35_reg_885;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_295_p1 = v29_reg_870;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_295_p1 = v23_reg_855;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_295_p1 = v17_reg_845;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_295_p1 = v11_reg_830;
    end else begin
        grp_fu_295_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_299_p0 = v52_fu_544_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_299_p0 = v46_fu_536_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_299_p0 = v40_fu_528_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_299_p0 = v34_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_299_p0 = v28_fu_516_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_299_p0 = v22_fu_512_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_299_p0 = v16_fu_496_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_299_p0 = v10_fu_459_p1;
    end else begin
        grp_fu_299_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_299_p1 = v8_1_reg_768;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_299_p1 = v8_1_fu_452_p3;
    end else begin
        grp_fu_299_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_2_ce0_local = 1'b1;
    end else begin
        v113_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_3_ce0_local = 1'b1;
    end else begin
        v113_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_4_ce0_local = 1'b1;
    end else begin
        v113_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_5_ce0_local = 1'b1;
    end else begin
        v113_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_6_ce0_local = 1'b1;
    end else begin
        v113_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_7_ce0_local = 1'b1;
    end else begin
        v113_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address0_local = v116_addr_7_reg_920_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address0_local = v116_addr_6_reg_814_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address0_local = v116_addr_5_reg_794_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address0_local = v116_addr_4_reg_788_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address0_local = zext_ln82_fu_563_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address0_local = zext_ln67_fu_485_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address0_local = zext_ln53_fu_443_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address0_local = zext_ln39_fu_390_p1;
    end else begin
        v116_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address1_local = v116_addr_3_reg_762_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address1_local = v116_addr_2_reg_757_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address1_local = v116_addr_1_reg_701_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address1_local = v116_addr_reg_685_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address1_local = zext_ln74_fu_507_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address1_local = zext_ln60_fu_470_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address1_local = zext_ln46_fu_431_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address1_local = zext_ln28_fu_329_p1;
    end else begin
        v116_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v116_ce0_local = 1'b1;
    end else begin
        v116_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v116_ce1_local = 1'b1;
    end else begin
        v116_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v116_d0_local = bitcast_ln86_fu_612_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v116_d0_local = bitcast_ln78_fu_608_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v116_d0_local = bitcast_ln71_fu_604_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v116_d0_local = bitcast_ln64_fu_600_p1;
        end else begin
            v116_d0_local = 'bx;
        end
    end else begin
        v116_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_d1_local = bitcast_ln57_fu_595_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_d1_local = bitcast_ln50_fu_590_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_d1_local = bitcast_ln43_fu_585_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_d1_local = bitcast_ln36_fu_580_p1;
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
        v7_8_out_o = v7_7_reload;
    end else if (((tmp_reg_628 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v7_8_out_o = v8_1_fu_452_p3;
    end else begin
        v7_8_out_o = v7_8_out_i;
    end
end
always @ (*) begin
    if ((((tmp_reg_628 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v7_8_out_o_ap_vld = 1'b1;
    end else begin
        v7_8_out_o_ap_vld = 1'b0;
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
assign add_ln28_fu_413_p2 = (ap_sig_allocacmp_v5 + 7'd8);
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
assign bitcast_ln36_fu_580_p1 = reg_303;
assign bitcast_ln43_fu_585_p1 = reg_303;
assign bitcast_ln50_fu_590_p1 = reg_303;
assign bitcast_ln57_fu_595_p1 = reg_303;
assign bitcast_ln64_fu_600_p1 = v36_reg_945;
assign bitcast_ln71_fu_604_p1 = v42_reg_950;
assign bitcast_ln78_fu_608_p1 = v48_reg_955;
assign bitcast_ln86_fu_612_p1 = v54_reg_960;
assign grp_fu_738_p_ce = 1'b1;
assign grp_fu_738_p_din0 = grp_fu_295_p0;
assign grp_fu_738_p_din1 = grp_fu_295_p1;
assign grp_fu_738_p_opcode = 2'd0;
assign grp_fu_742_p_ce = 1'b1;
assign grp_fu_742_p_din0 = grp_fu_299_p0;
assign grp_fu_742_p_din1 = grp_fu_299_p1;
assign icmp_ln31_fu_366_p2 = ((ap_sig_allocacmp_v5 == 7'd0) ? 1'b1 : 1'b0);
assign or_ln39_7_fu_382_p3 = {{tmp_12_fu_372_p4}, {1'd1}};
assign or_ln46_7_fu_424_p3 = {{tmp_13_reg_690}, {2'd2}};
assign or_ln53_7_fu_436_p3 = {{tmp_13_reg_690}, {2'd3}};
assign or_ln60_7_fu_463_p3 = {{tmp_s_reg_632}, {3'd4}};
assign or_ln67_7_fu_475_p5 = {{{{tmp_s_reg_632}, {1'd1}}, {tmp_5_reg_696}}, {1'd1}};
assign or_ln74_7_fu_500_p3 = {{tmp_s_reg_632}, {3'd6}};
assign or_ln82_7_fu_556_p3 = {{tmp_s_reg_632_pp0_iter1_reg}, {3'd7}};
assign tmp_11_fu_344_p4 = {{{tmp_79}, {3'd7}}, {tmp_s_fu_334_p4}};
assign tmp_12_fu_372_p4 = {{ap_sig_allocacmp_v5[5:1]}};
assign tmp_fu_321_p3 = ap_sig_allocacmp_v5[32'd6];
assign tmp_s_fu_334_p4 = {{ap_sig_allocacmp_v5[5:3]}};
assign v10_fu_459_p1 = v113_0_load_reg_712;
assign v113_0_address0 = zext_ln33_fu_354_p1;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_1_address0 = zext_ln33_fu_354_p1;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_2_address0 = zext_ln33_fu_354_p1;
assign v113_2_ce0 = v113_2_ce0_local;
assign v113_3_address0 = zext_ln33_fu_354_p1;
assign v113_3_ce0 = v113_3_ce0_local;
assign v113_4_address0 = zext_ln33_fu_354_p1;
assign v113_4_ce0 = v113_4_ce0_local;
assign v113_5_address0 = zext_ln33_fu_354_p1;
assign v113_5_ce0 = v113_5_ce0_local;
assign v113_6_address0 = zext_ln33_fu_354_p1;
assign v113_6_ce0 = v113_6_ce0_local;
assign v113_7_address0 = zext_ln33_fu_354_p1;
assign v113_7_ce0 = v113_7_ce0_local;
assign v116_address0 = v116_address0_local;
assign v116_address1 = v116_address1_local;
assign v116_ce0 = v116_ce0_local;
assign v116_ce1 = v116_ce1_local;
assign v116_d0 = v116_d0_local;
assign v116_d1 = v116_d1_local;
assign v116_we0 = v116_we0_local;
assign v116_we1 = v116_we1_local;
assign v15_1_fu_532_p1 = v116_load_1_reg_752;
assign v16_fu_496_p1 = v113_1_load_reg_717;
assign v21_fu_540_p1 = v116_load_2_reg_778;
assign v22_fu_512_p1 = v113_2_load_reg_722;
assign v27_fu_548_p1 = v116_load_3_reg_783;
assign v28_fu_516_p1 = v113_3_load_reg_727;
assign v33_fu_552_p1 = v116_load_4_reg_804;
assign v34_fu_524_p1 = v113_4_load_reg_732;
assign v39_fu_568_p1 = v116_load_5_reg_809;
assign v40_fu_528_p1 = v113_5_load_reg_737;
assign v45_fu_572_p1 = v116_load_6_reg_825;
assign v46_fu_536_p1 = v113_6_load_reg_742;
assign v51_fu_576_p1 = v116_load_7_reg_935;
assign v52_fu_544_p1 = v113_7_load_reg_747;
assign v8_1_fu_452_p3 = ((icmp_ln31_reg_680[0:0] == 1'b1) ? v6_7 : v7_8_out_i);
assign v9_fu_520_p1 = v116_load_reg_707;
assign zext_ln28_fu_329_p1 = ap_sig_allocacmp_v5;
assign zext_ln33_fu_354_p1 = tmp_11_fu_344_p4;
assign zext_ln39_fu_390_p1 = or_ln39_7_fu_382_p3;
assign zext_ln46_fu_431_p1 = or_ln46_7_fu_424_p3;
assign zext_ln53_fu_443_p1 = or_ln53_7_fu_436_p3;
assign zext_ln60_fu_470_p1 = or_ln60_7_fu_463_p3;
assign zext_ln67_fu_485_p1 = or_ln67_7_fu_475_p5;
assign zext_ln74_fu_507_p1 = or_ln74_7_fu_500_p3;
assign zext_ln82_fu_563_p1 = or_ln82_7_fu_556_p3;
always @ (posedge ap_clk) begin
    v116_addr_1_reg_701[0] <= 1'b1;
    v116_addr_1_reg_701_pp0_iter1_reg[0] <= 1'b1;
    v116_addr_2_reg_757[1:0] <= 2'b10;
    v116_addr_2_reg_757_pp0_iter1_reg[1:0] <= 2'b10;
    v116_addr_3_reg_762[1:0] <= 2'b11;
    v116_addr_3_reg_762_pp0_iter1_reg[1:0] <= 2'b11;
    v116_addr_3_reg_762_pp0_iter2_reg[1:0] <= 2'b11;
    v116_addr_4_reg_788[2:0] <= 3'b100;
    v116_addr_4_reg_788_pp0_iter1_reg[2:0] <= 3'b100;
    v116_addr_4_reg_788_pp0_iter2_reg[2:0] <= 3'b100;
    v116_addr_5_reg_794[0] <= 1'b1;
    v116_addr_5_reg_794[2] <= 1'b1;
    v116_addr_5_reg_794_pp0_iter1_reg[0] <= 1'b1;
    v116_addr_5_reg_794_pp0_iter1_reg[2] <= 1'b1;
    v116_addr_5_reg_794_pp0_iter2_reg[0] <= 1'b1;
    v116_addr_5_reg_794_pp0_iter2_reg[2] <= 1'b1;
    v116_addr_6_reg_814[2:0] <= 3'b110;
    v116_addr_6_reg_814_pp0_iter1_reg[2:0] <= 3'b110;
    v116_addr_6_reg_814_pp0_iter2_reg[2:0] <= 3'b110;
    v116_addr_7_reg_920[2:0] <= 3'b111;
    v116_addr_7_reg_920_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 