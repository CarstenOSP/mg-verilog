module atax_atax_node0_Pipeline_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3,v4,v113_0_address0,v113_0_ce0,v113_0_q0,v113_1_address0,v113_1_ce0,v113_1_q0,v113_2_address0,v113_2_ce0,v113_2_q0,v113_3_address0,v113_3_ce0,v113_3_q0,v113_4_address0,v113_4_ce0,v113_4_q0,v113_5_address0,v113_5_ce0,v113_5_q0,v113_6_address0,v113_6_ce0,v113_6_q0,v113_7_address0,v113_7_ce0,v113_7_q0,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v6,v7_out,v7_out_ap_vld,grp_fu_428_p_din0,grp_fu_428_p_din1,grp_fu_428_p_opcode,grp_fu_428_p_dout0,grp_fu_428_p_ce,grp_fu_432_p_din0,grp_fu_432_p_din1,grp_fu_432_p_opcode,grp_fu_432_p_dout0,grp_fu_432_p_ce,grp_fu_436_p_din0,grp_fu_436_p_din1,grp_fu_436_p_dout0,grp_fu_436_p_ce,grp_fu_440_p_din0,grp_fu_440_p_din1,grp_fu_440_p_dout0,grp_fu_440_p_ce); 
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
input  [31:0] v3;
input  [5:0] v4;
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
input  [31:0] v6;
output  [31:0] v7_out;
output   v7_out_ap_vld;
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
reg v7_out_ap_vld;
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
reg   [0:0] tmp_reg_632;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_325;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_329;
reg   [31:0] reg_333;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_337;
reg   [6:0] v5_reg_624;
wire   [0:0] tmp_fu_354_p3;
reg   [0:0] tmp_reg_632_pp0_iter1_reg;
reg   [0:0] tmp_reg_632_pp0_iter2_reg;
reg   [0:0] tmp_reg_632_pp0_iter3_reg;
wire   [2:0] lshr_ln2_fu_362_p4;
reg   [2:0] lshr_ln2_reg_636;
reg   [2:0] lshr_ln2_reg_636_pp0_iter1_reg;
wire   [0:0] icmp_ln31_fu_403_p2;
reg   [0:0] icmp_ln31_reg_682;
reg   [31:0] v113_0_load_reg_687;
reg   [31:0] v113_1_load_reg_692;
reg   [31:0] v113_2_load_reg_697;
reg   [31:0] v113_3_load_reg_702;
reg   [31:0] v113_4_load_reg_707;
reg   [31:0] v113_5_load_reg_712;
reg   [31:0] v113_6_load_reg_717;
reg   [31:0] v113_7_load_reg_722;
wire   [31:0] v8_fu_411_p3;
reg   [31:0] v8_reg_727;
wire   [31:0] v10_fu_419_p1;
wire   [31:0] v16_fu_423_p1;
wire   [31:0] v22_fu_432_p1;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v28_fu_436_p1;
reg   [4:0] v116_0_addr_reg_753;
reg   [4:0] v116_0_addr_reg_753_pp0_iter2_reg;
reg   [4:0] v116_0_addr_reg_753_pp0_iter3_reg;
reg   [0:0] tmp_13_reg_758;
wire   [31:0] v34_fu_485_p1;
wire   [31:0] v40_fu_489_p1;
reg   [4:0] v116_1_addr_reg_773;
reg   [4:0] v116_1_addr_reg_773_pp0_iter2_reg;
reg   [4:0] v116_1_addr_reg_773_pp0_iter3_reg;
reg   [4:0] v116_0_addr_1_reg_778;
reg   [4:0] v116_0_addr_1_reg_778_pp0_iter2_reg;
reg   [4:0] v116_0_addr_1_reg_778_pp0_iter3_reg;
reg   [4:0] v116_1_addr_1_reg_783;
reg   [4:0] v116_1_addr_1_reg_783_pp0_iter2_reg;
reg   [4:0] v116_1_addr_1_reg_783_pp0_iter3_reg;
reg   [31:0] v11_reg_788;
reg   [31:0] v17_reg_793;
wire   [31:0] v46_fu_520_p1;
wire   [31:0] v52_fu_524_p1;
reg   [31:0] v116_0_load_1_reg_808;
reg   [31:0] v116_1_load_1_reg_813;
reg   [4:0] v116_0_addr_2_reg_818;
reg   [4:0] v116_0_addr_2_reg_818_pp0_iter2_reg;
reg   [4:0] v116_0_addr_2_reg_818_pp0_iter3_reg;
reg   [4:0] v116_1_addr_2_reg_823;
reg   [4:0] v116_1_addr_2_reg_823_pp0_iter2_reg;
reg   [4:0] v116_1_addr_2_reg_823_pp0_iter3_reg;
reg   [4:0] v116_0_addr_3_reg_828;
reg   [4:0] v116_0_addr_3_reg_828_pp0_iter2_reg;
reg   [4:0] v116_0_addr_3_reg_828_pp0_iter3_reg;
reg   [4:0] v116_0_addr_3_reg_828_pp0_iter4_reg;
reg   [4:0] v116_1_addr_3_reg_833;
reg   [4:0] v116_1_addr_3_reg_833_pp0_iter2_reg;
reg   [4:0] v116_1_addr_3_reg_833_pp0_iter3_reg;
reg   [4:0] v116_1_addr_3_reg_833_pp0_iter4_reg;
wire   [31:0] v9_fu_528_p1;
reg   [31:0] v23_reg_843;
reg   [31:0] v29_reg_848;
wire   [31:0] v15_fu_533_p1;
reg   [31:0] v116_0_load_3_reg_858;
reg   [31:0] v116_1_load_3_reg_863;
reg   [31:0] v35_reg_868;
reg   [31:0] v41_reg_873;
wire   [31:0] v21_fu_538_p1;
wire   [31:0] v27_fu_542_p1;
reg   [31:0] v47_reg_888;
reg   [31:0] v53_reg_893;
wire   [31:0] v33_fu_546_p1;
wire   [31:0] v39_fu_551_p1;
wire   [31:0] v45_fu_556_p1;
wire   [31:0] v51_fu_560_p1;
reg   [31:0] v24_reg_918;
reg   [31:0] v30_reg_923;
reg   [31:0] v48_reg_928;
reg   [31:0] v54_reg_933;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln33_fu_380_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln29_fu_449_p1;
wire   [63:0] zext_ln46_fu_472_p1;
wire   [63:0] zext_ln60_fu_501_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln74_fu_514_p1;
reg   [31:0] v3_3_fu_90;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage3;
reg   [6:0] v49_fu_94;
wire   [6:0] add_ln28_fu_392_p2;
reg   [6:0] ap_sig_allocacmp_v5;
wire    ap_block_pp0_stage3_01001;
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
wire   [31:0] bitcast_ln36_fu_564_p1;
reg    v116_0_we0_local;
reg   [31:0] v116_0_d0_local;
wire   [31:0] bitcast_ln50_fu_569_p1;
wire   [31:0] bitcast_ln64_fu_582_p1;
wire   [31:0] bitcast_ln78_fu_592_p1;
reg    v116_1_ce1_local;
reg   [4:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [4:0] v116_1_address0_local;
reg    v116_1_we1_local;
reg   [31:0] v116_1_d1_local;
wire   [31:0] bitcast_ln43_fu_573_p1;
reg    v116_1_we0_local;
reg   [31:0] v116_1_d0_local;
wire   [31:0] bitcast_ln57_fu_578_p1;
wire   [31:0] bitcast_ln71_fu_587_p1;
wire   [31:0] bitcast_ln86_fu_596_p1;
reg   [31:0] grp_fu_309_p0;
reg   [31:0] grp_fu_309_p1;
reg   [31:0] grp_fu_313_p0;
reg   [31:0] grp_fu_313_p1;
reg   [31:0] grp_fu_317_p0;
reg   [31:0] grp_fu_317_p1;
reg   [31:0] grp_fu_321_p0;
reg   [31:0] grp_fu_321_p1;
wire   [8:0] tmp_s_fu_372_p3;
wire   [4:0] lshr_ln29_1_fu_440_p4;
wire   [3:0] tmp_16_fu_455_p4;
wire   [4:0] or_ln_fu_464_p3;
wire   [4:0] or_ln1_fu_493_p4;
wire   [4:0] or_ln2_fu_507_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 v3_3_fu_90 = 32'd0;
#0 v49_fu_94 = 7'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_fu_90 <= v3;
    end else if (((tmp_reg_632 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_3_fu_90 <= v8_fu_411_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_354_p3 == 1'd0))) begin
            v49_fu_94 <= add_ln28_fu_392_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v49_fu_94 <= 7'd0;
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
        icmp_ln31_reg_682 <= icmp_ln31_fu_403_p2;
        v113_0_load_reg_687 <= v113_0_q0;
        v113_1_load_reg_692 <= v113_1_q0;
        v113_2_load_reg_697 <= v113_2_q0;
        v113_3_load_reg_702 <= v113_3_q0;
        v113_4_load_reg_707 <= v113_4_q0;
        v113_5_load_reg_712 <= v113_5_q0;
        v113_6_load_reg_717 <= v113_6_q0;
        v113_7_load_reg_722 <= v113_7_q0;
        v116_0_addr_2_reg_818[0] <= zext_ln60_fu_501_p1[0];
v116_0_addr_2_reg_818[4 : 2] <= zext_ln60_fu_501_p1[4 : 2];
        v116_0_addr_2_reg_818_pp0_iter2_reg[0] <= v116_0_addr_2_reg_818[0];
v116_0_addr_2_reg_818_pp0_iter2_reg[4 : 2] <= v116_0_addr_2_reg_818[4 : 2];
        v116_0_addr_2_reg_818_pp0_iter3_reg[0] <= v116_0_addr_2_reg_818_pp0_iter2_reg[0];
v116_0_addr_2_reg_818_pp0_iter3_reg[4 : 2] <= v116_0_addr_2_reg_818_pp0_iter2_reg[4 : 2];
        v116_0_addr_3_reg_828[4 : 2] <= zext_ln74_fu_514_p1[4 : 2];
        v116_0_addr_3_reg_828_pp0_iter2_reg[4 : 2] <= v116_0_addr_3_reg_828[4 : 2];
        v116_0_addr_3_reg_828_pp0_iter3_reg[4 : 2] <= v116_0_addr_3_reg_828_pp0_iter2_reg[4 : 2];
        v116_0_addr_3_reg_828_pp0_iter4_reg[4 : 2] <= v116_0_addr_3_reg_828_pp0_iter3_reg[4 : 2];
        v116_1_addr_2_reg_823[0] <= zext_ln60_fu_501_p1[0];
v116_1_addr_2_reg_823[4 : 2] <= zext_ln60_fu_501_p1[4 : 2];
        v116_1_addr_2_reg_823_pp0_iter2_reg[0] <= v116_1_addr_2_reg_823[0];
v116_1_addr_2_reg_823_pp0_iter2_reg[4 : 2] <= v116_1_addr_2_reg_823[4 : 2];
        v116_1_addr_2_reg_823_pp0_iter3_reg[0] <= v116_1_addr_2_reg_823_pp0_iter2_reg[0];
v116_1_addr_2_reg_823_pp0_iter3_reg[4 : 2] <= v116_1_addr_2_reg_823_pp0_iter2_reg[4 : 2];
        v116_1_addr_3_reg_833[4 : 2] <= zext_ln74_fu_514_p1[4 : 2];
        v116_1_addr_3_reg_833_pp0_iter2_reg[4 : 2] <= v116_1_addr_3_reg_833[4 : 2];
        v116_1_addr_3_reg_833_pp0_iter3_reg[4 : 2] <= v116_1_addr_3_reg_833_pp0_iter2_reg[4 : 2];
        v116_1_addr_3_reg_833_pp0_iter4_reg[4 : 2] <= v116_1_addr_3_reg_833_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln2_reg_636 <= {{ap_sig_allocacmp_v5[5:3]}};
        lshr_ln2_reg_636_pp0_iter1_reg <= lshr_ln2_reg_636;
        tmp_13_reg_758 <= v5_reg_624[32'd1];
        tmp_reg_632 <= ap_sig_allocacmp_v5[32'd6];
        tmp_reg_632_pp0_iter1_reg <= tmp_reg_632;
        tmp_reg_632_pp0_iter2_reg <= tmp_reg_632_pp0_iter1_reg;
        tmp_reg_632_pp0_iter3_reg <= tmp_reg_632_pp0_iter2_reg;
        v116_0_addr_1_reg_778[4 : 1] <= zext_ln46_fu_472_p1[4 : 1];
        v116_0_addr_1_reg_778_pp0_iter2_reg[4 : 1] <= v116_0_addr_1_reg_778[4 : 1];
        v116_0_addr_1_reg_778_pp0_iter3_reg[4 : 1] <= v116_0_addr_1_reg_778_pp0_iter2_reg[4 : 1];
        v116_0_addr_reg_753 <= zext_ln29_fu_449_p1;
        v116_0_addr_reg_753_pp0_iter2_reg <= v116_0_addr_reg_753;
        v116_0_addr_reg_753_pp0_iter3_reg <= v116_0_addr_reg_753_pp0_iter2_reg;
        v116_1_addr_1_reg_783[4 : 1] <= zext_ln46_fu_472_p1[4 : 1];
        v116_1_addr_1_reg_783_pp0_iter2_reg[4 : 1] <= v116_1_addr_1_reg_783[4 : 1];
        v116_1_addr_1_reg_783_pp0_iter3_reg[4 : 1] <= v116_1_addr_1_reg_783_pp0_iter2_reg[4 : 1];
        v116_1_addr_reg_773 <= zext_ln29_fu_449_p1;
        v116_1_addr_reg_773_pp0_iter2_reg <= v116_1_addr_reg_773;
        v116_1_addr_reg_773_pp0_iter3_reg <= v116_1_addr_reg_773_pp0_iter2_reg;
        v5_reg_624 <= ap_sig_allocacmp_v5;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_325 <= v116_0_q1;
        reg_329 <= v116_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_333 <= grp_fu_428_p_dout0;
        reg_337 <= grp_fu_432_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_808 <= v116_0_q0;
        v116_1_load_1_reg_813 <= v116_1_q0;
        v11_reg_788 <= grp_fu_436_p_dout0;
        v17_reg_793 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_load_3_reg_858 <= v116_0_q0;
        v116_1_load_3_reg_863 <= v116_1_q0;
        v23_reg_843 <= grp_fu_436_p_dout0;
        v29_reg_848 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v24_reg_918 <= grp_fu_428_p_dout0;
        v30_reg_923 <= grp_fu_432_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v35_reg_868 <= grp_fu_436_p_dout0;
        v41_reg_873 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_reg_888 <= grp_fu_436_p_dout0;
        v53_reg_893 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v48_reg_928 <= grp_fu_428_p_dout0;
        v54_reg_933 <= grp_fu_432_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v8_reg_727 <= v8_fu_411_p3;
    end
end
always @ (*) begin
    if (((tmp_reg_632 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v5 = v49_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_309_p0 = v45_fu_556_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_309_p0 = v33_fu_546_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_309_p0 = v21_fu_538_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_309_p0 = v9_fu_528_p1;
    end else begin
        grp_fu_309_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_309_p1 = v47_reg_888;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_309_p1 = v35_reg_868;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_309_p1 = v23_reg_843;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_309_p1 = v11_reg_788;
    end else begin
        grp_fu_309_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_313_p0 = v51_fu_560_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_313_p0 = v39_fu_551_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_313_p0 = v27_fu_542_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_313_p0 = v15_fu_533_p1;
    end else begin
        grp_fu_313_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_313_p1 = v53_reg_893;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_313_p1 = v41_reg_873;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_313_p1 = v29_reg_848;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_313_p1 = v17_reg_793;
    end else begin
        grp_fu_313_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_317_p0 = v46_fu_520_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_317_p0 = v34_fu_485_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_317_p0 = v22_fu_432_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_317_p0 = v10_fu_419_p1;
    end else begin
        grp_fu_317_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_317_p1 = v8_reg_727;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_317_p1 = v8_fu_411_p3;
    end else begin
        grp_fu_317_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_321_p0 = v52_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_321_p0 = v40_fu_489_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_321_p0 = v28_fu_436_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_321_p0 = v16_fu_423_p1;
    end else begin
        grp_fu_321_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_321_p1 = v8_reg_727;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_321_p1 = v8_fu_411_p3;
    end else begin
        grp_fu_321_p1 = 'bx;
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
        v116_0_address0_local = v116_0_addr_3_reg_828_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_1_reg_778_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = zext_ln74_fu_514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln46_fu_472_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address1_local = v116_0_addr_2_reg_818_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_753_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = zext_ln60_fu_501_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_449_p1;
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
        v116_0_d0_local = bitcast_ln78_fu_592_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_d0_local = bitcast_ln50_fu_569_p1;
    end else begin
        v116_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_0_d1_local = bitcast_ln64_fu_582_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d1_local = bitcast_ln36_fu_564_p1;
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
        v116_1_address0_local = v116_1_addr_3_reg_833_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_1_reg_783_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = zext_ln74_fu_514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln46_fu_472_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address1_local = v116_1_addr_2_reg_823_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_773_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = zext_ln60_fu_501_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_449_p1;
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
        v116_1_d0_local = bitcast_ln86_fu_596_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_d0_local = bitcast_ln57_fu_578_p1;
    end else begin
        v116_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_1_d1_local = bitcast_ln71_fu_587_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d1_local = bitcast_ln43_fu_573_p1;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_632_pp0_iter3_reg == 1'd1))) begin
        v7_out_ap_vld = 1'b1;
    end else begin
        v7_out_ap_vld = 1'b0;
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
assign add_ln28_fu_392_p2 = (ap_sig_allocacmp_v5 + 7'd8);
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
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_fu_564_p1 = reg_333;
assign bitcast_ln43_fu_573_p1 = reg_337;
assign bitcast_ln50_fu_569_p1 = v24_reg_918;
assign bitcast_ln57_fu_578_p1 = v30_reg_923;
assign bitcast_ln64_fu_582_p1 = reg_333;
assign bitcast_ln71_fu_587_p1 = reg_337;
assign bitcast_ln78_fu_592_p1 = v48_reg_928;
assign bitcast_ln86_fu_596_p1 = v54_reg_933;
assign grp_fu_428_p_ce = 1'b1;
assign grp_fu_428_p_din0 = grp_fu_309_p0;
assign grp_fu_428_p_din1 = grp_fu_309_p1;
assign grp_fu_428_p_opcode = 2'd0;
assign grp_fu_432_p_ce = 1'b1;
assign grp_fu_432_p_din0 = grp_fu_313_p0;
assign grp_fu_432_p_din1 = grp_fu_313_p1;
assign grp_fu_432_p_opcode = 2'd0;
assign grp_fu_436_p_ce = 1'b1;
assign grp_fu_436_p_din0 = grp_fu_317_p0;
assign grp_fu_436_p_din1 = grp_fu_317_p1;
assign grp_fu_440_p_ce = 1'b1;
assign grp_fu_440_p_din0 = grp_fu_321_p0;
assign grp_fu_440_p_din1 = grp_fu_321_p1;
assign icmp_ln31_fu_403_p2 = ((v5_reg_624 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_1_fu_440_p4 = {{v5_reg_624[5:1]}};
assign lshr_ln2_fu_362_p4 = {{ap_sig_allocacmp_v5[5:3]}};
assign or_ln1_fu_493_p4 = {{{lshr_ln2_reg_636_pp0_iter1_reg}, {1'd1}}, {tmp_13_reg_758}};
assign or_ln2_fu_507_p3 = {{lshr_ln2_reg_636_pp0_iter1_reg}, {2'd3}};
assign or_ln_fu_464_p3 = {{tmp_16_fu_455_p4}, {1'd1}};
assign tmp_16_fu_455_p4 = {{v5_reg_624[5:2]}};
assign tmp_fu_354_p3 = ap_sig_allocacmp_v5[32'd6];
assign tmp_s_fu_372_p3 = {{v4}, {lshr_ln2_fu_362_p4}};
assign v10_fu_419_p1 = v113_0_load_reg_687;
assign v113_0_address0 = zext_ln33_fu_380_p1;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_1_address0 = zext_ln33_fu_380_p1;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_2_address0 = zext_ln33_fu_380_p1;
assign v113_2_ce0 = v113_2_ce0_local;
assign v113_3_address0 = zext_ln33_fu_380_p1;
assign v113_3_ce0 = v113_3_ce0_local;
assign v113_4_address0 = zext_ln33_fu_380_p1;
assign v113_4_ce0 = v113_4_ce0_local;
assign v113_5_address0 = zext_ln33_fu_380_p1;
assign v113_5_ce0 = v113_5_ce0_local;
assign v113_6_address0 = zext_ln33_fu_380_p1;
assign v113_6_ce0 = v113_6_ce0_local;
assign v113_7_address0 = zext_ln33_fu_380_p1;
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
assign v15_fu_533_p1 = reg_329;
assign v16_fu_423_p1 = v113_1_load_reg_692;
assign v21_fu_538_p1 = v116_0_load_1_reg_808;
assign v22_fu_432_p1 = v113_2_load_reg_697;
assign v27_fu_542_p1 = v116_1_load_1_reg_813;
assign v28_fu_436_p1 = v113_3_load_reg_702;
assign v33_fu_546_p1 = reg_325;
assign v34_fu_485_p1 = v113_4_load_reg_707;
assign v39_fu_551_p1 = reg_329;
assign v40_fu_489_p1 = v113_5_load_reg_712;
assign v45_fu_556_p1 = v116_0_load_3_reg_858;
assign v46_fu_520_p1 = v113_6_load_reg_717;
assign v51_fu_560_p1 = v116_1_load_3_reg_863;
assign v52_fu_524_p1 = v113_7_load_reg_722;
assign v7_out = v3_3_fu_90;
assign v8_fu_411_p3 = ((icmp_ln31_reg_682[0:0] == 1'b1) ? v6 : v3_3_fu_90);
assign v9_fu_528_p1 = reg_325;
assign zext_ln29_fu_449_p1 = lshr_ln29_1_fu_440_p4;
assign zext_ln33_fu_380_p1 = tmp_s_fu_372_p3;
assign zext_ln46_fu_472_p1 = or_ln_fu_464_p3;
assign zext_ln60_fu_501_p1 = or_ln1_fu_493_p4;
assign zext_ln74_fu_514_p1 = or_ln2_fu_507_p3;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_778[0] <= 1'b1;
    v116_0_addr_1_reg_778_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_1_reg_778_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_1_reg_783[0] <= 1'b1;
    v116_1_addr_1_reg_783_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_1_reg_783_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_2_reg_818[1] <= 1'b1;
    v116_0_addr_2_reg_818_pp0_iter2_reg[1] <= 1'b1;
    v116_0_addr_2_reg_818_pp0_iter3_reg[1] <= 1'b1;
    v116_1_addr_2_reg_823[1] <= 1'b1;
    v116_1_addr_2_reg_823_pp0_iter2_reg[1] <= 1'b1;
    v116_1_addr_2_reg_823_pp0_iter3_reg[1] <= 1'b1;
    v116_0_addr_3_reg_828[1:0] <= 2'b11;
    v116_0_addr_3_reg_828_pp0_iter2_reg[1:0] <= 2'b11;
    v116_0_addr_3_reg_828_pp0_iter3_reg[1:0] <= 2'b11;
    v116_0_addr_3_reg_828_pp0_iter4_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_833[1:0] <= 2'b11;
    v116_1_addr_3_reg_833_pp0_iter2_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_833_pp0_iter3_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_833_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 