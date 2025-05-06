
module atax_atax_node0_Pipeline_label_16 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_2_reload,lshr_ln,v113_0_address0,v113_0_ce0,v113_0_q0,v113_1_address0,v113_1_ce0,v113_1_q0,v113_2_address0,v113_2_ce0,v113_2_q0,v113_3_address0,v113_3_ce0,v113_3_q0,v113_4_address0,v113_4_ce0,v113_4_q0,v113_5_address0,v113_5_ce0,v113_5_q0,v113_6_address0,v113_6_ce0,v113_6_q0,v113_7_address0,v113_7_ce0,v113_7_q0,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v6_3,v7_3_out_i,v7_3_out_o,v7_3_out_o_ap_vld,grp_fu_428_p_din0,grp_fu_428_p_din1,grp_fu_428_p_opcode,grp_fu_428_p_dout0,grp_fu_428_p_ce,grp_fu_432_p_din0,grp_fu_432_p_din1,grp_fu_432_p_opcode,grp_fu_432_p_dout0,grp_fu_432_p_ce,grp_fu_436_p_din0,grp_fu_436_p_din1,grp_fu_436_p_dout0,grp_fu_436_p_ce,grp_fu_440_p_din0,grp_fu_440_p_din1,grp_fu_440_p_dout0,grp_fu_440_p_ce);  
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
input  [31:0] v7_2_reload;
input  [3:0] lshr_ln;
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
output  [4:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [4:0] v116_1_address1;
output   v116_1_ce1;
output   v116_1_we1;
output  [31:0] v116_1_d1;
input  [31:0] v116_1_q1;
output  [4:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [4:0] v116_0_address1;
output   v116_0_ce1;
output   v116_0_we1;
output  [31:0] v116_0_d1;
input  [31:0] v116_0_q1;
input  [31:0] v6_3;
input  [31:0] v7_3_out_i;
output  [31:0] v7_3_out_o;
output   v7_3_out_o_ap_vld;
output  [31:0] grp_fu_428_p_din0;
output  [31:0] grp_fu_428_p_din1;
output  [1:0] grp_fu_428_p_opcode;
input  [31:0] grp_fu_428_p_dout0;
output   grp_fu_428_p_ce;
output  [31:0] grp_fu_432_p_din0;
output  [31:0] grp_fu_432_p_din1;
output  [1:0] grp_fu_432_p_opcode;
input  [31:0] grp_fu_432_p_dout0;
output   grp_fu_432_p_ce;
output  [31:0] grp_fu_436_p_din0;
output  [31:0] grp_fu_436_p_din1;
input  [31:0] grp_fu_436_p_dout0;
output   grp_fu_436_p_ce;
output  [31:0] grp_fu_440_p_din0;
output  [31:0] grp_fu_440_p_din1;
input  [31:0] grp_fu_440_p_dout0;
output   grp_fu_440_p_ce;
reg ap_idle;
reg[31:0] v7_3_out_o;
reg v7_3_out_o_ap_vld;
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
reg   [0:0] tmp_reg_612;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_312;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_316;
reg   [31:0] reg_320;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_324;
reg   [6:0] v5_reg_604;
wire   [0:0] tmp_fu_342_p3;
wire   [2:0] lshr_ln29_6_fu_350_p4;
reg   [2:0] lshr_ln29_6_reg_616;
reg   [2:0] lshr_ln29_6_reg_616_pp0_iter1_reg;
wire   [0:0] icmp_ln31_fu_393_p2;
reg   [0:0] icmp_ln31_reg_662;
reg   [31:0] v113_0_load_reg_667;
reg   [31:0] v113_1_load_reg_672;
reg   [31:0] v113_2_load_reg_677;
reg   [31:0] v113_3_load_reg_682;
reg   [31:0] v113_4_load_reg_687;
reg   [31:0] v113_5_load_reg_692;
reg   [31:0] v113_6_load_reg_697;
reg   [31:0] v113_7_load_reg_702;
wire   [31:0] v8_fu_402_p3;
reg   [31:0] v8_reg_707;
wire   [31:0] v10_fu_410_p1;
wire   [31:0] v16_fu_414_p1;
wire   [31:0] v22_fu_424_p1;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v28_fu_428_p1;
reg   [4:0] v116_0_addr_reg_733;
reg   [4:0] v116_0_addr_reg_733_pp0_iter2_reg;
reg   [4:0] v116_0_addr_reg_733_pp0_iter3_reg;
reg   [0:0] tmp_9_reg_738;
wire   [31:0] v34_fu_477_p1;
wire   [31:0] v40_fu_481_p1;
reg   [4:0] v116_1_addr_reg_753;
reg   [4:0] v116_1_addr_reg_753_pp0_iter2_reg;
reg   [4:0] v116_1_addr_reg_753_pp0_iter3_reg;
reg   [4:0] v116_0_addr_1_reg_758;
reg   [4:0] v116_0_addr_1_reg_758_pp0_iter2_reg;
reg   [4:0] v116_0_addr_1_reg_758_pp0_iter3_reg;
reg   [4:0] v116_1_addr_1_reg_763;
reg   [4:0] v116_1_addr_1_reg_763_pp0_iter2_reg;
reg   [4:0] v116_1_addr_1_reg_763_pp0_iter3_reg;
reg   [31:0] v11_reg_768;
reg   [31:0] v17_reg_773;
wire   [31:0] v46_fu_512_p1;
wire   [31:0] v52_fu_516_p1;
reg   [31:0] v116_0_load_1_reg_788;
reg   [31:0] v116_1_load_1_reg_793;
reg   [4:0] v116_0_addr_2_reg_798;
reg   [4:0] v116_0_addr_2_reg_798_pp0_iter2_reg;
reg   [4:0] v116_0_addr_2_reg_798_pp0_iter3_reg;
reg   [4:0] v116_1_addr_2_reg_803;
reg   [4:0] v116_1_addr_2_reg_803_pp0_iter2_reg;
reg   [4:0] v116_1_addr_2_reg_803_pp0_iter3_reg;
reg   [4:0] v116_0_addr_3_reg_808;
reg   [4:0] v116_0_addr_3_reg_808_pp0_iter2_reg;
reg   [4:0] v116_0_addr_3_reg_808_pp0_iter3_reg;
reg   [4:0] v116_0_addr_3_reg_808_pp0_iter4_reg;
reg   [4:0] v116_1_addr_3_reg_813;
reg   [4:0] v116_1_addr_3_reg_813_pp0_iter2_reg;
reg   [4:0] v116_1_addr_3_reg_813_pp0_iter3_reg;
reg   [4:0] v116_1_addr_3_reg_813_pp0_iter4_reg;
wire   [31:0] v9_fu_520_p1;
reg   [31:0] v23_reg_823;
reg   [31:0] v29_reg_828;
wire   [31:0] v15_1_fu_525_p1;
reg   [31:0] v116_0_load_3_reg_838;
reg   [31:0] v116_1_load_3_reg_843;
reg   [31:0] v35_reg_848;
reg   [31:0] v41_reg_853;
wire   [31:0] v21_fu_530_p1;
wire   [31:0] v27_fu_534_p1;
reg   [31:0] v47_reg_868;
reg   [31:0] v53_reg_873;
wire   [31:0] v33_fu_538_p1;
wire   [31:0] v39_fu_543_p1;
wire   [31:0] v45_fu_548_p1;
wire   [31:0] v51_fu_552_p1;
reg   [31:0] v24_reg_898;
reg   [31:0] v30_reg_903;
reg   [31:0] v48_reg_908;
reg   [31:0] v54_reg_913;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln33_fu_370_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln29_fu_441_p1;
wire   [63:0] zext_ln46_fu_464_p1;
wire   [63:0] zext_ln60_fu_493_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln74_fu_506_p1;
wire    ap_block_pp0_stage2;
wire    ap_loop_init;
reg   [6:0] v49_fu_88;
wire   [6:0] add_ln28_fu_382_p2;
reg   [6:0] ap_sig_allocacmp_v5;
reg    v113_0_ce0_local;
reg    v113_1_ce0_local;
reg    v113_2_ce0_local;
reg    v113_3_ce0_local;
reg    v113_4_ce0_local;
reg    v113_5_ce0_local;
reg    v113_6_ce0_local;
reg    v113_7_ce0_local;
reg    v116_0_ce1_local;
reg   [4:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [4:0] v116_0_address0_local;
reg    v116_0_we1_local;
reg   [31:0] v116_0_d1_local;
wire   [31:0] bitcast_ln36_fu_556_p1;
reg    v116_0_we0_local;
reg   [31:0] v116_0_d0_local;
wire   [31:0] bitcast_ln50_fu_561_p1;
wire   [31:0] bitcast_ln64_fu_574_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln78_fu_584_p1;
reg    v116_1_ce1_local;
reg   [4:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [4:0] v116_1_address0_local;
reg    v116_1_we1_local;
reg   [31:0] v116_1_d1_local;
wire   [31:0] bitcast_ln43_fu_565_p1;
reg    v116_1_we0_local;
reg   [31:0] v116_1_d0_local;
wire   [31:0] bitcast_ln57_fu_570_p1;
wire   [31:0] bitcast_ln71_fu_579_p1;
wire   [31:0] bitcast_ln86_fu_588_p1;
reg   [31:0] grp_fu_296_p0;
reg   [31:0] grp_fu_296_p1;
reg   [31:0] grp_fu_300_p0;
reg   [31:0] grp_fu_300_p1;
reg   [31:0] grp_fu_304_p0;
reg   [31:0] grp_fu_304_p1;
reg   [31:0] grp_fu_308_p0;
reg   [31:0] grp_fu_308_p1;
wire   [8:0] tmp_s_fu_360_p4;
wire   [4:0] lshr_ln29_7_fu_432_p4;
wire   [3:0] tmp_13_fu_447_p4;
wire   [4:0] or_ln46_3_fu_456_p3;
wire   [4:0] or_ln60_3_fu_485_p4;
wire   [4:0] or_ln74_3_fu_499_p3;
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
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v49_fu_88 = 7'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_342_p3 == 1'd0))) begin
            v49_fu_88 <= add_ln28_fu_382_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v49_fu_88 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln31_reg_662 <= icmp_ln31_fu_393_p2;
        v113_0_load_reg_667 <= v113_0_q0;
        v113_1_load_reg_672 <= v113_1_q0;
        v113_2_load_reg_677 <= v113_2_q0;
        v113_3_load_reg_682 <= v113_3_q0;
        v113_4_load_reg_687 <= v113_4_q0;
        v113_5_load_reg_692 <= v113_5_q0;
        v113_6_load_reg_697 <= v113_6_q0;
        v113_7_load_reg_702 <= v113_7_q0;
        v116_0_addr_2_reg_798[0] <= zext_ln60_fu_493_p1[0];
v116_0_addr_2_reg_798[4 : 2] <= zext_ln60_fu_493_p1[4 : 2];
        v116_0_addr_2_reg_798_pp0_iter2_reg[0] <= v116_0_addr_2_reg_798[0];
v116_0_addr_2_reg_798_pp0_iter2_reg[4 : 2] <= v116_0_addr_2_reg_798[4 : 2];
        v116_0_addr_2_reg_798_pp0_iter3_reg[0] <= v116_0_addr_2_reg_798_pp0_iter2_reg[0];
v116_0_addr_2_reg_798_pp0_iter3_reg[4 : 2] <= v116_0_addr_2_reg_798_pp0_iter2_reg[4 : 2];
        v116_0_addr_3_reg_808[4 : 2] <= zext_ln74_fu_506_p1[4 : 2];
        v116_0_addr_3_reg_808_pp0_iter2_reg[4 : 2] <= v116_0_addr_3_reg_808[4 : 2];
        v116_0_addr_3_reg_808_pp0_iter3_reg[4 : 2] <= v116_0_addr_3_reg_808_pp0_iter2_reg[4 : 2];
        v116_0_addr_3_reg_808_pp0_iter4_reg[4 : 2] <= v116_0_addr_3_reg_808_pp0_iter3_reg[4 : 2];
        v116_1_addr_2_reg_803[0] <= zext_ln60_fu_493_p1[0];
v116_1_addr_2_reg_803[4 : 2] <= zext_ln60_fu_493_p1[4 : 2];
        v116_1_addr_2_reg_803_pp0_iter2_reg[0] <= v116_1_addr_2_reg_803[0];
v116_1_addr_2_reg_803_pp0_iter2_reg[4 : 2] <= v116_1_addr_2_reg_803[4 : 2];
        v116_1_addr_2_reg_803_pp0_iter3_reg[0] <= v116_1_addr_2_reg_803_pp0_iter2_reg[0];
v116_1_addr_2_reg_803_pp0_iter3_reg[4 : 2] <= v116_1_addr_2_reg_803_pp0_iter2_reg[4 : 2];
        v116_1_addr_3_reg_813[4 : 2] <= zext_ln74_fu_506_p1[4 : 2];
        v116_1_addr_3_reg_813_pp0_iter2_reg[4 : 2] <= v116_1_addr_3_reg_813[4 : 2];
        v116_1_addr_3_reg_813_pp0_iter3_reg[4 : 2] <= v116_1_addr_3_reg_813_pp0_iter2_reg[4 : 2];
        v116_1_addr_3_reg_813_pp0_iter4_reg[4 : 2] <= v116_1_addr_3_reg_813_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln29_6_reg_616 <= {{ap_sig_allocacmp_v5[5:3]}};
        lshr_ln29_6_reg_616_pp0_iter1_reg <= lshr_ln29_6_reg_616;
        tmp_9_reg_738 <= v5_reg_604[32'd1];
        tmp_reg_612 <= ap_sig_allocacmp_v5[32'd6];
        v116_0_addr_1_reg_758[4 : 1] <= zext_ln46_fu_464_p1[4 : 1];
        v116_0_addr_1_reg_758_pp0_iter2_reg[4 : 1] <= v116_0_addr_1_reg_758[4 : 1];
        v116_0_addr_1_reg_758_pp0_iter3_reg[4 : 1] <= v116_0_addr_1_reg_758_pp0_iter2_reg[4 : 1];
        v116_0_addr_reg_733 <= zext_ln29_fu_441_p1;
        v116_0_addr_reg_733_pp0_iter2_reg <= v116_0_addr_reg_733;
        v116_0_addr_reg_733_pp0_iter3_reg <= v116_0_addr_reg_733_pp0_iter2_reg;
        v116_1_addr_1_reg_763[4 : 1] <= zext_ln46_fu_464_p1[4 : 1];
        v116_1_addr_1_reg_763_pp0_iter2_reg[4 : 1] <= v116_1_addr_1_reg_763[4 : 1];
        v116_1_addr_1_reg_763_pp0_iter3_reg[4 : 1] <= v116_1_addr_1_reg_763_pp0_iter2_reg[4 : 1];
        v116_1_addr_reg_753 <= zext_ln29_fu_441_p1;
        v116_1_addr_reg_753_pp0_iter2_reg <= v116_1_addr_reg_753;
        v116_1_addr_reg_753_pp0_iter3_reg <= v116_1_addr_reg_753_pp0_iter2_reg;
        v5_reg_604 <= ap_sig_allocacmp_v5;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_312 <= v116_0_q1;
        reg_316 <= v116_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_320 <= grp_fu_428_p_dout0;
        reg_324 <= grp_fu_432_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_788 <= v116_0_q0;
        v116_1_load_1_reg_793 <= v116_1_q0;
        v11_reg_768 <= grp_fu_436_p_dout0;
        v17_reg_773 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_load_3_reg_838 <= v116_0_q0;
        v116_1_load_3_reg_843 <= v116_1_q0;
        v23_reg_823 <= grp_fu_436_p_dout0;
        v29_reg_828 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v24_reg_898 <= grp_fu_428_p_dout0;
        v30_reg_903 <= grp_fu_432_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v35_reg_848 <= grp_fu_436_p_dout0;
        v41_reg_853 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_reg_868 <= grp_fu_436_p_dout0;
        v53_reg_873 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v48_reg_908 <= grp_fu_428_p_dout0;
        v54_reg_913 <= grp_fu_432_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v8_reg_707 <= v8_fu_402_p3;
    end
end
always @ (*) begin
    if (((tmp_reg_612 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v5 = 7'd0;
    end else begin
        ap_sig_allocacmp_v5 = v49_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_296_p0 = v45_fu_548_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_296_p0 = v33_fu_538_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_296_p0 = v21_fu_530_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_296_p0 = v9_fu_520_p1;
    end else begin
        grp_fu_296_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_296_p1 = v47_reg_868;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_296_p1 = v35_reg_848;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_296_p1 = v23_reg_823;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_296_p1 = v11_reg_768;
    end else begin
        grp_fu_296_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_300_p0 = v51_fu_552_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_300_p0 = v39_fu_543_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_300_p0 = v27_fu_534_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_300_p0 = v15_1_fu_525_p1;
    end else begin
        grp_fu_300_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_300_p1 = v53_reg_873;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_300_p1 = v41_reg_853;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_300_p1 = v29_reg_828;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_300_p1 = v17_reg_773;
    end else begin
        grp_fu_300_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_304_p0 = v46_fu_512_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_304_p0 = v34_fu_477_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_304_p0 = v22_fu_424_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_304_p0 = v10_fu_410_p1;
    end else begin
        grp_fu_304_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_304_p1 = v8_reg_707;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_304_p1 = v8_fu_402_p3;
    end else begin
        grp_fu_304_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_308_p0 = v52_fu_516_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_308_p0 = v40_fu_481_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_308_p0 = v28_fu_428_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_308_p0 = v16_fu_414_p1;
    end else begin
        grp_fu_308_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_308_p1 = v8_reg_707;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_308_p1 = v8_fu_402_p3;
    end else begin
        grp_fu_308_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address0_local = v116_0_addr_3_reg_808_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_1_reg_758_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = zext_ln74_fu_506_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln46_fu_464_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address1_local = v116_0_addr_2_reg_798_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_733_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = zext_ln60_fu_493_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_441_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_d0_local = bitcast_ln78_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_d0_local = bitcast_ln50_fu_561_p1;
    end else begin
        v116_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_0_d1_local = bitcast_ln64_fu_574_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d1_local = bitcast_ln36_fu_556_p1;
        end else begin
            v116_0_d1_local = 'bx;
        end
    end else begin
        v116_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_we1_local = 1'b1;
    end else begin
        v116_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address0_local = v116_1_addr_3_reg_813_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_1_reg_763_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = zext_ln74_fu_506_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln46_fu_464_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address1_local = v116_1_addr_2_reg_803_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_753_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = zext_ln60_fu_493_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_441_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_d0_local = bitcast_ln86_fu_588_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_d0_local = bitcast_ln57_fu_570_p1;
    end else begin
        v116_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_1_d1_local = bitcast_ln71_fu_579_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d1_local = bitcast_ln43_fu_565_p1;
        end else begin
            v116_1_d1_local = 'bx;
        end
    end else begin
        v116_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_we1_local = 1'b1;
    end else begin
        v116_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_3_out_o = v7_2_reload;
    end else if (((tmp_reg_612 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v7_3_out_o = v8_fu_402_p3;
    end else begin
        v7_3_out_o = v7_3_out_i;
    end
end
always @ (*) begin
    if ((((tmp_reg_612 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v7_3_out_o_ap_vld = 1'b1;
    end else begin
        v7_3_out_o_ap_vld = 1'b0;
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
assign add_ln28_fu_382_p2 = (ap_sig_allocacmp_v5 + 7'd8);
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
assign bitcast_ln36_fu_556_p1 = reg_320;
assign bitcast_ln43_fu_565_p1 = reg_324;
assign bitcast_ln50_fu_561_p1 = v24_reg_898;
assign bitcast_ln57_fu_570_p1 = v30_reg_903;
assign bitcast_ln64_fu_574_p1 = reg_320;
assign bitcast_ln71_fu_579_p1 = reg_324;
assign bitcast_ln78_fu_584_p1 = v48_reg_908;
assign bitcast_ln86_fu_588_p1 = v54_reg_913;
assign grp_fu_428_p_ce = 1'b1;
assign grp_fu_428_p_din0 = grp_fu_296_p0;
assign grp_fu_428_p_din1 = grp_fu_296_p1;
assign grp_fu_428_p_opcode = 2'd0;
assign grp_fu_432_p_ce = 1'b1;
assign grp_fu_432_p_din0 = grp_fu_300_p0;
assign grp_fu_432_p_din1 = grp_fu_300_p1;
assign grp_fu_432_p_opcode = 2'd0;
assign grp_fu_436_p_ce = 1'b1;
assign grp_fu_436_p_din0 = grp_fu_304_p0;
assign grp_fu_436_p_din1 = grp_fu_304_p1;
assign grp_fu_440_p_ce = 1'b1;
assign grp_fu_440_p_din0 = grp_fu_308_p0;
assign grp_fu_440_p_din1 = grp_fu_308_p1;
assign icmp_ln31_fu_393_p2 = ((v5_reg_604 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_6_fu_350_p4 = {{ap_sig_allocacmp_v5[5:3]}};
assign lshr_ln29_7_fu_432_p4 = {{v5_reg_604[5:1]}};
assign or_ln46_3_fu_456_p3 = {{tmp_13_fu_447_p4}, {1'd1}};
assign or_ln60_3_fu_485_p4 = {{{lshr_ln29_6_reg_616_pp0_iter1_reg}, {1'd1}}, {tmp_9_reg_738}};
assign or_ln74_3_fu_499_p3 = {{lshr_ln29_6_reg_616_pp0_iter1_reg}, {2'd3}};
assign tmp_13_fu_447_p4 = {{v5_reg_604[5:2]}};
assign tmp_fu_342_p3 = ap_sig_allocacmp_v5[32'd6];
assign tmp_s_fu_360_p4 = {{{lshr_ln}, {2'd3}}, {lshr_ln29_6_fu_350_p4}};
assign v10_fu_410_p1 = v113_0_load_reg_667;
assign v113_0_address0 = zext_ln33_fu_370_p1;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_1_address0 = zext_ln33_fu_370_p1;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_2_address0 = zext_ln33_fu_370_p1;
assign v113_2_ce0 = v113_2_ce0_local;
assign v113_3_address0 = zext_ln33_fu_370_p1;
assign v113_3_ce0 = v113_3_ce0_local;
assign v113_4_address0 = zext_ln33_fu_370_p1;
assign v113_4_ce0 = v113_4_ce0_local;
assign v113_5_address0 = zext_ln33_fu_370_p1;
assign v113_5_ce0 = v113_5_ce0_local;
assign v113_6_address0 = zext_ln33_fu_370_p1;
assign v113_6_ce0 = v113_6_ce0_local;
assign v113_7_address0 = zext_ln33_fu_370_p1;
assign v113_7_ce0 = v113_7_ce0_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_address1 = v116_0_address1_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = v116_0_d0_local;
assign v116_0_d1 = v116_0_d1_local;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = v116_1_d0_local;
assign v116_1_d1 = v116_1_d1_local;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v15_1_fu_525_p1 = reg_316;
assign v16_fu_414_p1 = v113_1_load_reg_672;
assign v21_fu_530_p1 = v116_0_load_1_reg_788;
assign v22_fu_424_p1 = v113_2_load_reg_677;
assign v27_fu_534_p1 = v116_1_load_1_reg_793;
assign v28_fu_428_p1 = v113_3_load_reg_682;
assign v33_fu_538_p1 = reg_312;
assign v34_fu_477_p1 = v113_4_load_reg_687;
assign v39_fu_543_p1 = reg_316;
assign v40_fu_481_p1 = v113_5_load_reg_692;
assign v45_fu_548_p1 = v116_0_load_3_reg_838;
assign v46_fu_512_p1 = v113_6_load_reg_697;
assign v51_fu_552_p1 = v116_1_load_3_reg_843;
assign v52_fu_516_p1 = v113_7_load_reg_702;
assign v8_fu_402_p3 = ((icmp_ln31_reg_662[0:0] == 1'b1) ? v6_3 : v7_3_out_i);
assign v9_fu_520_p1 = reg_312;
assign zext_ln29_fu_441_p1 = lshr_ln29_7_fu_432_p4;
assign zext_ln33_fu_370_p1 = tmp_s_fu_360_p4;
assign zext_ln46_fu_464_p1 = or_ln46_3_fu_456_p3;
assign zext_ln60_fu_493_p1 = or_ln60_3_fu_485_p4;
assign zext_ln74_fu_506_p1 = or_ln74_3_fu_499_p3;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_758[0] <= 1'b1;
    v116_0_addr_1_reg_758_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_1_reg_758_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_1_reg_763[0] <= 1'b1;
    v116_1_addr_1_reg_763_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_1_reg_763_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_2_reg_798[1] <= 1'b1;
    v116_0_addr_2_reg_798_pp0_iter2_reg[1] <= 1'b1;
    v116_0_addr_2_reg_798_pp0_iter3_reg[1] <= 1'b1;
    v116_1_addr_2_reg_803[1] <= 1'b1;
    v116_1_addr_2_reg_803_pp0_iter2_reg[1] <= 1'b1;
    v116_1_addr_2_reg_803_pp0_iter3_reg[1] <= 1'b1;
    v116_0_addr_3_reg_808[1:0] <= 2'b11;
    v116_0_addr_3_reg_808_pp0_iter2_reg[1:0] <= 2'b11;
    v116_0_addr_3_reg_808_pp0_iter3_reg[1:0] <= 2'b11;
    v116_0_addr_3_reg_808_pp0_iter4_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_813[1:0] <= 2'b11;
    v116_1_addr_3_reg_813_pp0_iter2_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_813_pp0_iter3_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_813_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
