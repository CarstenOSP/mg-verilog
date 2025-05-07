module bicg_bicg_node1_Pipeline_label_225 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty_16,empty,v137_address0,v137_ce0,v137_q0,v137_address1,v137_ce1,v137_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,v17_23,grp_fu_2063_p_din0,grp_fu_2063_p_din1,grp_fu_2063_p_opcode,grp_fu_2063_p_dout0,grp_fu_2063_p_ce,grp_fu_2067_p_din0,grp_fu_2067_p_din1,grp_fu_2067_p_opcode,grp_fu_2067_p_dout0,grp_fu_2067_p_ce,grp_fu_2071_p_din0,grp_fu_2071_p_din1,grp_fu_2071_p_dout0,grp_fu_2071_p_ce,grp_fu_2075_p_din0,grp_fu_2075_p_din1,grp_fu_2075_p_dout0,grp_fu_2075_p_ce); 
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
input  [0:0] empty_16;
input  [0:0] empty;
output  [11:0] v137_address0;
output   v137_ce0;
input  [31:0] v137_q0;
output  [11:0] v137_address1;
output   v137_ce1;
input  [31:0] v137_q1;
output  [4:0] v10_1_address0;
output   v10_1_ce0;
output   v10_1_we0;
output  [31:0] v10_1_d0;
input  [31:0] v10_1_q0;
output  [4:0] v10_1_address1;
output   v10_1_ce1;
output   v10_1_we1;
output  [31:0] v10_1_d1;
input  [31:0] v10_1_q1;
output  [4:0] v10_0_address0;
output   v10_0_ce0;
output   v10_0_we0;
output  [31:0] v10_0_d0;
input  [31:0] v10_0_q0;
output  [4:0] v10_0_address1;
output   v10_0_ce1;
output   v10_0_we1;
output  [31:0] v10_0_d1;
input  [31:0] v10_0_q1;
input  [31:0] v17_23;
output  [31:0] grp_fu_2063_p_din0;
output  [31:0] grp_fu_2063_p_din1;
output  [1:0] grp_fu_2063_p_opcode;
input  [31:0] grp_fu_2063_p_dout0;
output   grp_fu_2063_p_ce;
output  [31:0] grp_fu_2067_p_din0;
output  [31:0] grp_fu_2067_p_din1;
output  [1:0] grp_fu_2067_p_opcode;
input  [31:0] grp_fu_2067_p_dout0;
output   grp_fu_2067_p_ce;
output  [31:0] grp_fu_2071_p_din0;
output  [31:0] grp_fu_2071_p_din1;
input  [31:0] grp_fu_2071_p_dout0;
output   grp_fu_2071_p_ce;
output  [31:0] grp_fu_2075_p_din0;
output  [31:0] grp_fu_2075_p_din1;
input  [31:0] grp_fu_2075_p_dout0;
output   grp_fu_2075_p_ce;
reg ap_idle;
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
reg   [0:0] tmp_162_reg_643;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_281;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_285;
reg   [31:0] reg_289;
reg   [31:0] reg_294;
reg   [6:0] v12_13_reg_636;
wire   [0:0] tmp_162_fu_307_p3;
wire   [4:0] lshr_ln42_s_fu_338_p4;
reg   [4:0] lshr_ln42_s_reg_652;
wire   [3:0] tmp_257_fu_380_p4;
reg   [3:0] tmp_257_reg_662;
reg   [2:0] tmp_260_reg_677;
reg   [0:0] tmp_163_reg_687;
wire   [31:0] v16_fu_443_p1;
wire   [31:0] v23_fu_448_p1;
wire   [31:0] v29_fu_492_p1;
wire   [31:0] v35_fu_497_p1;
reg   [4:0] v10_0_addr_reg_733;
reg   [4:0] v10_0_addr_reg_733_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_733_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_738;
reg   [4:0] v10_1_addr_reg_738_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_738_pp0_iter3_reg;
reg   [4:0] v10_0_addr_39_reg_743;
reg   [4:0] v10_0_addr_39_reg_743_pp0_iter2_reg;
reg   [4:0] v10_0_addr_39_reg_743_pp0_iter3_reg;
reg   [4:0] v10_1_addr_39_reg_748;
reg   [4:0] v10_1_addr_39_reg_748_pp0_iter2_reg;
reg   [4:0] v10_1_addr_39_reg_748_pp0_iter3_reg;
wire   [31:0] v41_fu_556_p1;
wire   [31:0] v47_fu_561_p1;
reg   [31:0] v14_reg_763;
reg   [31:0] v18_reg_768;
reg   [31:0] v24_reg_773;
reg   [4:0] v10_0_addr_40_reg_778;
reg   [4:0] v10_0_addr_40_reg_778_pp0_iter2_reg;
reg   [4:0] v10_0_addr_40_reg_778_pp0_iter3_reg;
reg   [4:0] v10_1_addr_40_reg_783;
reg   [4:0] v10_1_addr_40_reg_783_pp0_iter2_reg;
reg   [4:0] v10_1_addr_40_reg_783_pp0_iter3_reg;
reg   [4:0] v10_0_addr_41_reg_788;
reg   [4:0] v10_0_addr_41_reg_788_pp0_iter2_reg;
reg   [4:0] v10_0_addr_41_reg_788_pp0_iter3_reg;
reg   [4:0] v10_0_addr_41_reg_788_pp0_iter4_reg;
wire   [31:0] v53_fu_593_p1;
reg   [4:0] v10_1_addr_41_reg_798;
reg   [4:0] v10_1_addr_41_reg_798_pp0_iter2_reg;
reg   [4:0] v10_1_addr_41_reg_798_pp0_iter3_reg;
reg   [4:0] v10_1_addr_41_reg_798_pp0_iter4_reg;
wire   [31:0] v59_fu_598_p1;
reg   [31:0] v21_reg_808;
reg   [31:0] v27_reg_813;
reg   [31:0] v33_reg_818;
reg   [31:0] v30_reg_823;
reg   [31:0] v36_reg_828;
reg   [31:0] v39_reg_833;
reg   [31:0] v45_reg_838;
reg   [31:0] v51_reg_843;
reg   [31:0] v57_reg_848;
reg   [31:0] v42_reg_853;
reg   [31:0] v48_reg_858;
reg   [31:0] v54_reg_863;
reg   [31:0] v60_reg_868;
reg   [31:0] v31_reg_873;
reg   [31:0] v37_reg_878;
reg   [31:0] v55_reg_883;
reg   [31:0] v61_reg_888;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln46_fu_333_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_364_p1;
wire   [63:0] zext_ln61_fu_403_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln68_fu_422_p1;
wire   [63:0] zext_ln75_fu_466_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln82_fu_487_p1;
wire   [63:0] zext_ln89_fu_515_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln96_fu_533_p1;
wire   [63:0] zext_ln42_fu_538_p1;
wire   [63:0] zext_ln59_fu_550_p1;
wire   [63:0] zext_ln73_fu_574_p1;
wire   [63:0] zext_ln87_fu_587_p1;
reg   [6:0] v12_fu_88;
wire   [6:0] add_ln42_fu_369_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v12_13;
reg    v137_ce1_local;
reg   [11:0] v137_address1_local;
reg    v137_ce0_local;
reg   [11:0] v137_address0_local;
reg    v10_0_ce1_local;
reg   [4:0] v10_0_address1_local;
reg    v10_0_ce0_local;
reg   [4:0] v10_0_address0_local;
reg    v10_0_we1_local;
reg    v10_0_we0_local;
reg   [31:0] v10_0_d0_local;
reg    v10_1_ce1_local;
reg   [4:0] v10_1_address1_local;
reg    v10_1_ce0_local;
reg   [4:0] v10_1_address0_local;
reg    v10_1_we1_local;
reg    v10_1_we0_local;
reg   [31:0] v10_1_d0_local;
reg   [31:0] grp_fu_265_p0;
reg   [31:0] grp_fu_265_p1;
reg   [31:0] grp_fu_269_p0;
reg   [31:0] grp_fu_269_p1;
reg   [31:0] grp_fu_273_p0;
reg   [31:0] grp_fu_277_p0;
wire   [5:0] trunc_ln42_fu_315_p1;
wire   [11:0] tmp_s_fu_319_p6;
wire   [11:0] tmp_256_fu_348_p7;
wire   [11:0] tmp_258_fu_389_p7;
wire   [11:0] tmp_259_fu_408_p7;
wire   [11:0] tmp_261_fu_453_p7;
wire   [11:0] tmp_262_fu_471_p9;
wire   [11:0] tmp_263_fu_502_p7;
wire   [11:0] tmp_264_fu_520_p7;
wire   [4:0] or_ln59_s_fu_543_p3;
wire   [4:0] or_ln73_s_fu_566_p4;
wire   [4:0] or_ln87_s_fu_580_p3;
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
#0 v12_fu_88 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_162_fu_307_p3 == 1'd0))) begin
            v12_fu_88 <= add_ln42_fu_369_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v12_fu_88 <= 7'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln42_s_reg_652 <= {{ap_sig_allocacmp_v12_13[5:1]}};
        tmp_162_reg_643 <= ap_sig_allocacmp_v12_13[32'd6];
        v10_0_addr_39_reg_743[4 : 1] <= zext_ln59_fu_550_p1[4 : 1];
        v10_0_addr_39_reg_743_pp0_iter2_reg[4 : 1] <= v10_0_addr_39_reg_743[4 : 1];
        v10_0_addr_39_reg_743_pp0_iter3_reg[4 : 1] <= v10_0_addr_39_reg_743_pp0_iter2_reg[4 : 1];
        v10_0_addr_reg_733 <= zext_ln42_fu_538_p1;
        v10_0_addr_reg_733_pp0_iter2_reg <= v10_0_addr_reg_733;
        v10_0_addr_reg_733_pp0_iter3_reg <= v10_0_addr_reg_733_pp0_iter2_reg;
        v10_1_addr_39_reg_748[4 : 1] <= zext_ln59_fu_550_p1[4 : 1];
        v10_1_addr_39_reg_748_pp0_iter2_reg[4 : 1] <= v10_1_addr_39_reg_748[4 : 1];
        v10_1_addr_39_reg_748_pp0_iter3_reg[4 : 1] <= v10_1_addr_39_reg_748_pp0_iter2_reg[4 : 1];
        v10_1_addr_reg_738 <= zext_ln42_fu_538_p1;
        v10_1_addr_reg_738_pp0_iter2_reg <= v10_1_addr_reg_738;
        v10_1_addr_reg_738_pp0_iter3_reg <= v10_1_addr_reg_738_pp0_iter2_reg;
        v12_13_reg_636 <= ap_sig_allocacmp_v12_13;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_281 <= v137_q1;
        reg_285 <= v137_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_289 <= grp_fu_2063_p_dout0;
        reg_294 <= grp_fu_2067_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_163_reg_687 <= v12_13_reg_636[32'd1];
        tmp_257_reg_662 <= {{v12_13_reg_636[5:2]}};
        tmp_260_reg_677 <= {{v12_13_reg_636[5:3]}};
        v10_0_addr_40_reg_778[0] <= zext_ln73_fu_574_p1[0];
v10_0_addr_40_reg_778[4 : 2] <= zext_ln73_fu_574_p1[4 : 2];
        v10_0_addr_40_reg_778_pp0_iter2_reg[0] <= v10_0_addr_40_reg_778[0];
v10_0_addr_40_reg_778_pp0_iter2_reg[4 : 2] <= v10_0_addr_40_reg_778[4 : 2];
        v10_0_addr_40_reg_778_pp0_iter3_reg[0] <= v10_0_addr_40_reg_778_pp0_iter2_reg[0];
v10_0_addr_40_reg_778_pp0_iter3_reg[4 : 2] <= v10_0_addr_40_reg_778_pp0_iter2_reg[4 : 2];
        v10_0_addr_41_reg_788[4 : 2] <= zext_ln87_fu_587_p1[4 : 2];
        v10_0_addr_41_reg_788_pp0_iter2_reg[4 : 2] <= v10_0_addr_41_reg_788[4 : 2];
        v10_0_addr_41_reg_788_pp0_iter3_reg[4 : 2] <= v10_0_addr_41_reg_788_pp0_iter2_reg[4 : 2];
        v10_0_addr_41_reg_788_pp0_iter4_reg[4 : 2] <= v10_0_addr_41_reg_788_pp0_iter3_reg[4 : 2];
        v10_1_addr_40_reg_783[0] <= zext_ln73_fu_574_p1[0];
v10_1_addr_40_reg_783[4 : 2] <= zext_ln73_fu_574_p1[4 : 2];
        v10_1_addr_40_reg_783_pp0_iter2_reg[0] <= v10_1_addr_40_reg_783[0];
v10_1_addr_40_reg_783_pp0_iter2_reg[4 : 2] <= v10_1_addr_40_reg_783[4 : 2];
        v10_1_addr_40_reg_783_pp0_iter3_reg[0] <= v10_1_addr_40_reg_783_pp0_iter2_reg[0];
v10_1_addr_40_reg_783_pp0_iter3_reg[4 : 2] <= v10_1_addr_40_reg_783_pp0_iter2_reg[4 : 2];
        v10_1_addr_41_reg_798[4 : 2] <= zext_ln87_fu_587_p1[4 : 2];
        v10_1_addr_41_reg_798_pp0_iter2_reg[4 : 2] <= v10_1_addr_41_reg_798[4 : 2];
        v10_1_addr_41_reg_798_pp0_iter3_reg[4 : 2] <= v10_1_addr_41_reg_798_pp0_iter2_reg[4 : 2];
        v10_1_addr_41_reg_798_pp0_iter4_reg[4 : 2] <= v10_1_addr_41_reg_798_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_763 <= v10_0_q1;
        v18_reg_768 <= grp_fu_2071_p_dout0;
        v21_reg_808 <= v10_1_q1;
        v24_reg_773 <= grp_fu_2075_p_dout0;
        v27_reg_813 <= v10_0_q0;
        v33_reg_818 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v30_reg_823 <= grp_fu_2071_p_dout0;
        v36_reg_828 <= grp_fu_2075_p_dout0;
        v39_reg_833 <= v10_0_q1;
        v45_reg_838 <= v10_1_q1;
        v51_reg_843 <= v10_0_q0;
        v57_reg_848 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v31_reg_873 <= grp_fu_2063_p_dout0;
        v37_reg_878 <= grp_fu_2067_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_reg_853 <= grp_fu_2071_p_dout0;
        v48_reg_858 <= grp_fu_2075_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v54_reg_863 <= grp_fu_2071_p_dout0;
        v60_reg_868 <= grp_fu_2075_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v55_reg_883 <= grp_fu_2063_p_dout0;
        v61_reg_888 <= grp_fu_2067_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_162_reg_643 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v12_13 = 7'd0;
    end else begin
        ap_sig_allocacmp_v12_13 = v12_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_265_p0 = v51_reg_843;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_265_p0 = v39_reg_833;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_265_p0 = v27_reg_813;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_265_p0 = v14_reg_763;
    end else begin
        grp_fu_265_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_265_p1 = v54_reg_863;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_265_p1 = v42_reg_853;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_265_p1 = v30_reg_823;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_265_p1 = v18_reg_768;
    end else begin
        grp_fu_265_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_269_p0 = v57_reg_848;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_269_p0 = v45_reg_838;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_269_p0 = v33_reg_818;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_269_p0 = v21_reg_808;
    end else begin
        grp_fu_269_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_269_p1 = v60_reg_868;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_269_p1 = v48_reg_858;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_269_p1 = v36_reg_828;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_269_p1 = v24_reg_773;
    end else begin
        grp_fu_269_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_273_p0 = v53_fu_593_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_273_p0 = v41_fu_556_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_273_p0 = v29_fu_492_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_273_p0 = v16_fu_443_p1;
    end else begin
        grp_fu_273_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_277_p0 = v59_fu_598_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_277_p0 = v47_fu_561_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_277_p0 = v35_fu_497_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_277_p0 = v23_fu_448_p1;
    end else begin
        grp_fu_277_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_41_reg_788_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_39_reg_743_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_587_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_550_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_40_reg_778_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_reg_733_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_574_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_538_p1;
    end else begin
        v10_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce0_local = 1'b1;
    end else begin
        v10_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce1_local = 1'b1;
    end else begin
        v10_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_d0_local = v55_reg_883;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_d0_local = v31_reg_873;
    end else begin
        v10_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we0_local = 1'b1;
    end else begin
        v10_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we1_local = 1'b1;
    end else begin
        v10_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address0_local = v10_1_addr_41_reg_798_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_39_reg_748_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_587_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_550_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_40_reg_783_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_reg_738_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_574_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_538_p1;
    end else begin
        v10_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce0_local = 1'b1;
    end else begin
        v10_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce1_local = 1'b1;
    end else begin
        v10_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_d0_local = v61_reg_888;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_d0_local = v37_reg_878;
    end else begin
        v10_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we0_local = 1'b1;
    end else begin
        v10_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we1_local = 1'b1;
    end else begin
        v10_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_address0_local = zext_ln96_fu_533_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_address0_local = zext_ln82_fu_487_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_address0_local = zext_ln68_fu_422_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_address0_local = zext_ln54_fu_364_p1;
        end else begin
            v137_address0_local = 'bx;
        end
    end else begin
        v137_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_address1_local = zext_ln89_fu_515_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_address1_local = zext_ln75_fu_466_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_address1_local = zext_ln61_fu_403_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_address1_local = zext_ln46_fu_333_p1;
        end else begin
            v137_address1_local = 'bx;
        end
    end else begin
        v137_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_ce0_local = 1'b1;
    end else begin
        v137_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_ce1_local = 1'b1;
    end else begin
        v137_ce1_local = 1'b0;
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
assign add_ln42_fu_369_p2 = (ap_sig_allocacmp_v12_13 + 7'd8);
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
assign grp_fu_2063_p_ce = 1'b1;
assign grp_fu_2063_p_din0 = grp_fu_265_p0;
assign grp_fu_2063_p_din1 = grp_fu_265_p1;
assign grp_fu_2063_p_opcode = 2'd0;
assign grp_fu_2067_p_ce = 1'b1;
assign grp_fu_2067_p_din0 = grp_fu_269_p0;
assign grp_fu_2067_p_din1 = grp_fu_269_p1;
assign grp_fu_2067_p_opcode = 2'd0;
assign grp_fu_2071_p_ce = 1'b1;
assign grp_fu_2071_p_din0 = grp_fu_273_p0;
assign grp_fu_2071_p_din1 = v17_23;
assign grp_fu_2075_p_ce = 1'b1;
assign grp_fu_2075_p_din0 = grp_fu_277_p0;
assign grp_fu_2075_p_din1 = v17_23;
assign lshr_ln42_s_fu_338_p4 = {{ap_sig_allocacmp_v12_13[5:1]}};
assign or_ln59_s_fu_543_p3 = {{tmp_257_reg_662}, {1'd1}};
assign or_ln73_s_fu_566_p4 = {{{tmp_260_reg_677}, {1'd1}}, {tmp_163_reg_687}};
assign or_ln87_s_fu_580_p3 = {{tmp_260_reg_677}, {2'd3}};
assign tmp_162_fu_307_p3 = ap_sig_allocacmp_v12_13[32'd6];
assign tmp_256_fu_348_p7 = {{{{{{lshr_ln42_s_fu_338_p4}, {1'd1}}, {empty_16}}, {1'd1}}, {empty}}, {3'd7}};
assign tmp_257_fu_380_p4 = {{v12_13_reg_636[5:2]}};
assign tmp_258_fu_389_p7 = {{{{{{tmp_257_fu_380_p4}, {2'd2}}, {empty_16}}, {1'd1}}, {empty}}, {3'd7}};
assign tmp_259_fu_408_p7 = {{{{{{tmp_257_fu_380_p4}, {2'd3}}, {empty_16}}, {1'd1}}, {empty}}, {3'd7}};
assign tmp_261_fu_453_p7 = {{{{{{tmp_260_reg_677}, {3'd4}}, {empty_16}}, {1'd1}}, {empty}}, {3'd7}};
assign tmp_262_fu_471_p9 = {{{{{{{{tmp_260_reg_677}, {1'd1}}, {tmp_163_reg_687}}, {1'd1}}, {empty_16}}, {1'd1}}, {empty}}, {3'd7}};
assign tmp_263_fu_502_p7 = {{{{{{tmp_260_reg_677}, {3'd6}}, {empty_16}}, {1'd1}}, {empty}}, {3'd7}};
assign tmp_264_fu_520_p7 = {{{{{{tmp_260_reg_677}, {3'd7}}, {empty_16}}, {1'd1}}, {empty}}, {3'd7}};
assign tmp_s_fu_319_p6 = {{{{{trunc_ln42_fu_315_p1}, {empty_16}}, {1'd1}}, {empty}}, {3'd7}};
assign trunc_ln42_fu_315_p1 = ap_sig_allocacmp_v12_13[5:0];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_289;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_294;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_address0 = v137_address0_local;
assign v137_address1 = v137_address1_local;
assign v137_ce0 = v137_ce0_local;
assign v137_ce1 = v137_ce1_local;
assign v16_fu_443_p1 = reg_281;
assign v23_fu_448_p1 = reg_285;
assign v29_fu_492_p1 = reg_281;
assign v35_fu_497_p1 = reg_285;
assign v41_fu_556_p1 = reg_281;
assign v47_fu_561_p1 = reg_285;
assign v53_fu_593_p1 = reg_281;
assign v59_fu_598_p1 = reg_285;
assign zext_ln42_fu_538_p1 = lshr_ln42_s_reg_652;
assign zext_ln46_fu_333_p1 = tmp_s_fu_319_p6;
assign zext_ln54_fu_364_p1 = tmp_256_fu_348_p7;
assign zext_ln59_fu_550_p1 = or_ln59_s_fu_543_p3;
assign zext_ln61_fu_403_p1 = tmp_258_fu_389_p7;
assign zext_ln68_fu_422_p1 = tmp_259_fu_408_p7;
assign zext_ln73_fu_574_p1 = or_ln73_s_fu_566_p4;
assign zext_ln75_fu_466_p1 = tmp_261_fu_453_p7;
assign zext_ln82_fu_487_p1 = tmp_262_fu_471_p9;
assign zext_ln87_fu_587_p1 = or_ln87_s_fu_580_p3;
assign zext_ln89_fu_515_p1 = tmp_263_fu_502_p7;
assign zext_ln96_fu_533_p1 = tmp_264_fu_520_p7;
always @ (posedge ap_clk) begin
    v10_0_addr_39_reg_743[0] <= 1'b1;
    v10_0_addr_39_reg_743_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_39_reg_743_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_39_reg_748[0] <= 1'b1;
    v10_1_addr_39_reg_748_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_39_reg_748_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_40_reg_778[1] <= 1'b1;
    v10_0_addr_40_reg_778_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_40_reg_778_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_40_reg_783[1] <= 1'b1;
    v10_1_addr_40_reg_783_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_40_reg_783_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_41_reg_788[1:0] <= 2'b11;
    v10_0_addr_41_reg_788_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_41_reg_788_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_41_reg_788_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_41_reg_798[1:0] <= 2'b11;
    v10_1_addr_41_reg_798_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_41_reg_798_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_41_reg_798_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 