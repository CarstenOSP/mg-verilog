module SgdLR_sw_SgdLR_sw_Pipeline_label_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_1_address1,v2_1_ce1,v2_1_we1,v2_1_d1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v2_0_address1,v2_0_ce1,v2_0_we1,v2_0_d1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_1_address0,v3_1_ce0,v3_1_q0,v3_2_address0,v3_2_ce0,v3_2_q0,v3_3_address0,v3_3_ce0,v3_3_q0,v3_4_address0,v3_4_ce0,v3_4_q0,v3_5_address0,v3_5_ce0,v3_5_q0,v3_6_address0,v3_6_ce0,v3_6_q0,v3_7_address0,v3_7_ce0,v3_7_q0,grp_fu_187_p_din0,grp_fu_187_p_din1,grp_fu_187_p_opcode,grp_fu_187_p_dout0,grp_fu_187_p_ce,grp_fu_372_p_din0,grp_fu_372_p_din1,grp_fu_372_p_dout0,grp_fu_372_p_ce); 
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
output  [8:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
input  [31:0] v2_1_q0;
output  [8:0] v2_1_address1;
output   v2_1_ce1;
output   v2_1_we1;
output  [31:0] v2_1_d1;
input  [31:0] v2_1_q1;
output  [8:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
input  [31:0] v2_0_q0;
output  [8:0] v2_0_address1;
output   v2_0_ce1;
output   v2_0_we1;
output  [31:0] v2_0_d1;
input  [31:0] v2_0_q1;
output  [6:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [6:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [6:0] v3_2_address0;
output   v3_2_ce0;
input  [31:0] v3_2_q0;
output  [6:0] v3_3_address0;
output   v3_3_ce0;
input  [31:0] v3_3_q0;
output  [6:0] v3_4_address0;
output   v3_4_ce0;
input  [31:0] v3_4_q0;
output  [6:0] v3_5_address0;
output   v3_5_ce0;
input  [31:0] v3_5_q0;
output  [6:0] v3_6_address0;
output   v3_6_ce0;
input  [31:0] v3_6_q0;
output  [6:0] v3_7_address0;
output   v3_7_ce0;
input  [31:0] v3_7_q0;
output  [31:0] grp_fu_187_p_din0;
output  [31:0] grp_fu_187_p_din1;
output  [0:0] grp_fu_187_p_opcode;
input  [31:0] grp_fu_187_p_dout0;
output   grp_fu_187_p_ce;
output  [31:0] grp_fu_372_p_din0;
output  [31:0] grp_fu_372_p_din1;
input  [31:0] grp_fu_372_p_dout0;
output   grp_fu_372_p_ce;
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
reg   [0:0] tmp_reg_507;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_284;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_288;
reg   [31:0] reg_292;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_270_p2;
reg   [31:0] reg_296;
reg   [10:0] v25_1_reg_500;
wire   [0:0] tmp_fu_308_p3;
wire   [6:0] lshr_ln55_1_fu_316_p4;
reg   [6:0] lshr_ln55_1_reg_511;
reg   [6:0] lshr_ln55_1_reg_511_pp0_iter1_reg;
reg   [31:0] v26_reg_557;
reg   [31:0] v26_1_reg_562;
reg   [31:0] v26_2_reg_567;
reg   [31:0] v26_3_reg_572;
reg   [31:0] v26_4_reg_577;
reg   [31:0] v26_5_reg_582;
reg   [31:0] v26_6_reg_587;
reg   [31:0] v26_7_reg_592;
reg   [8:0] v2_0_addr_reg_597;
reg   [8:0] v2_0_addr_reg_597_pp0_iter2_reg;
reg   [8:0] v2_0_addr_reg_597_pp0_iter3_reg;
reg   [8:0] v2_1_addr_reg_602;
reg   [8:0] v2_1_addr_reg_602_pp0_iter2_reg;
reg   [8:0] v2_1_addr_reg_602_pp0_iter3_reg;
reg   [8:0] v2_0_addr_1_reg_607;
reg   [8:0] v2_0_addr_1_reg_607_pp0_iter2_reg;
reg   [8:0] v2_0_addr_1_reg_607_pp0_iter3_reg;
reg   [8:0] v2_1_addr_1_reg_612;
reg   [8:0] v2_1_addr_1_reg_612_pp0_iter2_reg;
reg   [8:0] v2_1_addr_1_reg_612_pp0_iter3_reg;
reg   [0:0] tmp_1_reg_617;
reg   [31:0] v27_reg_622;
wire   [31:0] grp_fu_279_p2;
reg   [31:0] v27_1_reg_627;
reg   [31:0] v2_0_load_1_reg_632;
reg   [31:0] v2_1_load_1_reg_637;
reg   [8:0] v2_0_addr_2_reg_642;
reg   [8:0] v2_0_addr_2_reg_642_pp0_iter2_reg;
reg   [8:0] v2_0_addr_2_reg_642_pp0_iter3_reg;
reg   [8:0] v2_1_addr_2_reg_647;
reg   [8:0] v2_1_addr_2_reg_647_pp0_iter2_reg;
reg   [8:0] v2_1_addr_2_reg_647_pp0_iter3_reg;
reg   [8:0] v2_0_addr_3_reg_652;
reg   [8:0] v2_0_addr_3_reg_652_pp0_iter2_reg;
reg   [8:0] v2_0_addr_3_reg_652_pp0_iter3_reg;
reg   [8:0] v2_0_addr_3_reg_652_pp0_iter4_reg;
reg   [8:0] v2_1_addr_3_reg_657;
reg   [8:0] v2_1_addr_3_reg_657_pp0_iter2_reg;
reg   [8:0] v2_1_addr_3_reg_657_pp0_iter3_reg;
reg   [8:0] v2_1_addr_3_reg_657_pp0_iter4_reg;
wire   [31:0] v28_fu_421_p1;
wire   [31:0] v28_1_fu_426_p1;
reg   [31:0] v27_2_reg_672;
reg   [31:0] v27_3_reg_677;
reg   [31:0] v2_0_load_3_reg_682;
reg   [31:0] v2_1_load_3_reg_687;
wire   [31:0] v28_2_fu_431_p1;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v28_3_fu_435_p1;
reg   [31:0] v27_4_reg_702;
reg   [31:0] v27_5_reg_707;
wire   [31:0] v28_4_fu_439_p1;
wire   [31:0] v28_5_fu_444_p1;
reg   [31:0] v27_6_reg_722;
reg   [31:0] v27_7_reg_727;
wire   [31:0] v28_6_fu_449_p1;
wire   [31:0] v28_7_fu_453_p1;
reg   [31:0] v29_2_reg_742;
reg   [31:0] v29_3_reg_747;
reg   [31:0] v29_6_reg_752;
reg   [31:0] v29_7_reg_757;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_1_fu_326_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln55_fu_358_p1;
wire   [63:0] zext_ln56_fu_381_p1;
wire   [63:0] zext_ln56_1_fu_402_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_2_fu_415_p1;
reg   [10:0] v25_fu_76;
wire   [10:0] add_ln55_fu_338_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_1;
reg    v3_ce0_local;
reg    v3_1_ce0_local;
reg    v3_2_ce0_local;
reg    v3_3_ce0_local;
reg    v3_4_ce0_local;
reg    v3_5_ce0_local;
reg    v3_6_ce0_local;
reg    v3_7_ce0_local;
reg    v2_0_ce1_local;
reg   [8:0] v2_0_address1_local;
reg    v2_0_ce0_local;
reg   [8:0] v2_0_address0_local;
reg    v2_0_we1_local;
reg   [31:0] v2_0_d1_local;
wire   [31:0] bitcast_ln60_fu_457_p1;
wire    ap_block_pp0_stage2;
reg    v2_0_we0_local;
reg   [31:0] v2_0_d0_local;
wire   [31:0] bitcast_ln60_2_fu_467_p1;
wire   [31:0] bitcast_ln60_4_fu_475_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln60_6_fu_485_p1;
reg    v2_1_ce1_local;
reg   [8:0] v2_1_address1_local;
reg    v2_1_ce0_local;
reg   [8:0] v2_1_address0_local;
reg    v2_1_we1_local;
reg   [31:0] v2_1_d1_local;
wire   [31:0] bitcast_ln60_1_fu_462_p1;
reg    v2_1_we0_local;
reg   [31:0] v2_1_d0_local;
wire   [31:0] bitcast_ln60_3_fu_471_p1;
wire   [31:0] bitcast_ln60_5_fu_480_p1;
wire   [31:0] bitcast_ln60_7_fu_489_p1;
reg   [31:0] grp_fu_266_p0;
reg   [31:0] grp_fu_266_p1;
reg   [31:0] grp_fu_270_p0;
reg   [31:0] grp_fu_270_p1;
reg   [31:0] grp_fu_274_p0;
reg   [31:0] grp_fu_279_p0;
wire   [8:0] lshr_ln2_fu_349_p4;
wire   [7:0] tmp_s_fu_364_p4;
wire   [8:0] or_ln1_fu_373_p3;
wire   [8:0] or_ln56_1_fu_394_p4;
wire   [8:0] or_ln56_2_fu_408_p3;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_fu_76 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_270_p0),.din1(grp_fu_270_p1),.ce(1'b1),.dout(grp_fu_270_p2));
SgdLR_sw_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_279_p0),.din1(32'd3345637376),.ce(1'b1),.dout(grp_fu_279_p2));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_308_p3 == 1'd0))) begin
            v25_fu_76 <= add_ln55_fu_338_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_76 <= 11'd0;
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
        lshr_ln55_1_reg_511 <= {{ap_sig_allocacmp_v25_1[9:3]}};
        lshr_ln55_1_reg_511_pp0_iter1_reg <= lshr_ln55_1_reg_511;
        tmp_1_reg_617 <= v25_1_reg_500[32'd1];
        tmp_reg_507 <= ap_sig_allocacmp_v25_1[32'd10];
        v25_1_reg_500 <= ap_sig_allocacmp_v25_1;
        v2_0_addr_1_reg_607[8 : 1] <= zext_ln56_fu_381_p1[8 : 1];
        v2_0_addr_1_reg_607_pp0_iter2_reg[8 : 1] <= v2_0_addr_1_reg_607[8 : 1];
        v2_0_addr_1_reg_607_pp0_iter3_reg[8 : 1] <= v2_0_addr_1_reg_607_pp0_iter2_reg[8 : 1];
        v2_0_addr_reg_597 <= zext_ln55_fu_358_p1;
        v2_0_addr_reg_597_pp0_iter2_reg <= v2_0_addr_reg_597;
        v2_0_addr_reg_597_pp0_iter3_reg <= v2_0_addr_reg_597_pp0_iter2_reg;
        v2_1_addr_1_reg_612[8 : 1] <= zext_ln56_fu_381_p1[8 : 1];
        v2_1_addr_1_reg_612_pp0_iter2_reg[8 : 1] <= v2_1_addr_1_reg_612[8 : 1];
        v2_1_addr_1_reg_612_pp0_iter3_reg[8 : 1] <= v2_1_addr_1_reg_612_pp0_iter2_reg[8 : 1];
        v2_1_addr_reg_602 <= zext_ln55_fu_358_p1;
        v2_1_addr_reg_602_pp0_iter2_reg <= v2_1_addr_reg_602;
        v2_1_addr_reg_602_pp0_iter3_reg <= v2_1_addr_reg_602_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_284 <= v2_0_q1;
        reg_288 <= v2_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_292 <= grp_fu_187_p_dout0;
        reg_296 <= grp_fu_270_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v26_1_reg_562 <= v3_1_q0;
        v26_2_reg_567 <= v3_2_q0;
        v26_3_reg_572 <= v3_3_q0;
        v26_4_reg_577 <= v3_4_q0;
        v26_5_reg_582 <= v3_5_q0;
        v26_6_reg_587 <= v3_6_q0;
        v26_7_reg_592 <= v3_7_q0;
        v26_reg_557 <= v3_q0;
        v2_0_addr_2_reg_642[0] <= zext_ln56_1_fu_402_p1[0];
v2_0_addr_2_reg_642[8 : 2] <= zext_ln56_1_fu_402_p1[8 : 2];
        v2_0_addr_2_reg_642_pp0_iter2_reg[0] <= v2_0_addr_2_reg_642[0];
v2_0_addr_2_reg_642_pp0_iter2_reg[8 : 2] <= v2_0_addr_2_reg_642[8 : 2];
        v2_0_addr_2_reg_642_pp0_iter3_reg[0] <= v2_0_addr_2_reg_642_pp0_iter2_reg[0];
v2_0_addr_2_reg_642_pp0_iter3_reg[8 : 2] <= v2_0_addr_2_reg_642_pp0_iter2_reg[8 : 2];
        v2_0_addr_3_reg_652[8 : 2] <= zext_ln56_2_fu_415_p1[8 : 2];
        v2_0_addr_3_reg_652_pp0_iter2_reg[8 : 2] <= v2_0_addr_3_reg_652[8 : 2];
        v2_0_addr_3_reg_652_pp0_iter3_reg[8 : 2] <= v2_0_addr_3_reg_652_pp0_iter2_reg[8 : 2];
        v2_0_addr_3_reg_652_pp0_iter4_reg[8 : 2] <= v2_0_addr_3_reg_652_pp0_iter3_reg[8 : 2];
        v2_1_addr_2_reg_647[0] <= zext_ln56_1_fu_402_p1[0];
v2_1_addr_2_reg_647[8 : 2] <= zext_ln56_1_fu_402_p1[8 : 2];
        v2_1_addr_2_reg_647_pp0_iter2_reg[0] <= v2_1_addr_2_reg_647[0];
v2_1_addr_2_reg_647_pp0_iter2_reg[8 : 2] <= v2_1_addr_2_reg_647[8 : 2];
        v2_1_addr_2_reg_647_pp0_iter3_reg[0] <= v2_1_addr_2_reg_647_pp0_iter2_reg[0];
v2_1_addr_2_reg_647_pp0_iter3_reg[8 : 2] <= v2_1_addr_2_reg_647_pp0_iter2_reg[8 : 2];
        v2_1_addr_3_reg_657[8 : 2] <= zext_ln56_2_fu_415_p1[8 : 2];
        v2_1_addr_3_reg_657_pp0_iter2_reg[8 : 2] <= v2_1_addr_3_reg_657[8 : 2];
        v2_1_addr_3_reg_657_pp0_iter3_reg[8 : 2] <= v2_1_addr_3_reg_657_pp0_iter2_reg[8 : 2];
        v2_1_addr_3_reg_657_pp0_iter4_reg[8 : 2] <= v2_1_addr_3_reg_657_pp0_iter3_reg[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_1_reg_627 <= grp_fu_279_p2;
        v27_reg_622 <= grp_fu_372_p_dout0;
        v2_0_load_1_reg_632 <= v2_0_q0;
        v2_1_load_1_reg_637 <= v2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_2_reg_672 <= grp_fu_372_p_dout0;
        v27_3_reg_677 <= grp_fu_279_p2;
        v2_0_load_3_reg_682 <= v2_0_q0;
        v2_1_load_3_reg_687 <= v2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_4_reg_702 <= grp_fu_372_p_dout0;
        v27_5_reg_707 <= grp_fu_279_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_6_reg_722 <= grp_fu_372_p_dout0;
        v27_7_reg_727 <= grp_fu_279_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_2_reg_742 <= grp_fu_187_p_dout0;
        v29_3_reg_747 <= grp_fu_270_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_6_reg_752 <= grp_fu_187_p_dout0;
        v29_7_reg_757 <= grp_fu_270_p2;
    end
end
always @ (*) begin
    if (((tmp_reg_507 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v25_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_1 = v25_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_266_p0 = v28_6_fu_449_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_266_p0 = v28_4_fu_439_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_266_p0 = v28_2_fu_431_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_266_p0 = v28_fu_421_p1;
    end else begin
        grp_fu_266_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_266_p1 = v27_6_reg_722;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_266_p1 = v27_4_reg_702;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_266_p1 = v27_2_reg_672;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_266_p1 = v27_reg_622;
    end else begin
        grp_fu_266_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_270_p0 = v28_7_fu_453_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_270_p0 = v28_5_fu_444_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_270_p0 = v28_3_fu_435_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_270_p0 = v28_1_fu_426_p1;
    end else begin
        grp_fu_270_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_270_p1 = v27_7_reg_727;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_270_p1 = v27_5_reg_707;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_270_p1 = v27_3_reg_677;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_270_p1 = v27_1_reg_627;
    end else begin
        grp_fu_270_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_274_p0 = v26_6_reg_587;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_274_p0 = v26_4_reg_577;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_274_p0 = v26_2_reg_567;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_274_p0 = v26_reg_557;
    end else begin
        grp_fu_274_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_279_p0 = v26_7_reg_592;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_279_p0 = v26_5_reg_582;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_279_p0 = v26_3_reg_572;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_279_p0 = v26_1_reg_562;
    end else begin
        grp_fu_279_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address0_local = v2_0_addr_3_reg_652_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address0_local = v2_0_addr_1_reg_607_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address0_local = zext_ln56_2_fu_415_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address0_local = zext_ln56_fu_381_p1;
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address1_local = v2_0_addr_2_reg_642_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address1_local = v2_0_addr_reg_597_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address1_local = zext_ln56_1_fu_402_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address1_local = zext_ln55_fu_358_p1;
    end else begin
        v2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_d0_local = bitcast_ln60_6_fu_485_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_d0_local = bitcast_ln60_2_fu_467_p1;
    end else begin
        v2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_0_d1_local = bitcast_ln60_4_fu_475_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_0_d1_local = bitcast_ln60_fu_457_p1;
        end else begin
            v2_0_d1_local = 'bx;
        end
    end else begin
        v2_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_0_we1_local = 1'b1;
    end else begin
        v2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address0_local = v2_1_addr_3_reg_657_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address0_local = v2_1_addr_1_reg_612_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address0_local = zext_ln56_2_fu_415_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address0_local = zext_ln56_fu_381_p1;
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address1_local = v2_1_addr_2_reg_647_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address1_local = v2_1_addr_reg_602_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address1_local = zext_ln56_1_fu_402_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address1_local = zext_ln55_fu_358_p1;
    end else begin
        v2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_d0_local = bitcast_ln60_7_fu_489_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_d0_local = bitcast_ln60_3_fu_471_p1;
    end else begin
        v2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_1_d1_local = bitcast_ln60_5_fu_480_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_1_d1_local = bitcast_ln60_1_fu_462_p1;
        end else begin
            v2_1_d1_local = 'bx;
        end
    end else begin
        v2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_1_we1_local = 1'b1;
    end else begin
        v2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_4_ce0_local = 1'b1;
    end else begin
        v3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_5_ce0_local = 1'b1;
    end else begin
        v3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_6_ce0_local = 1'b1;
    end else begin
        v3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_7_ce0_local = 1'b1;
    end else begin
        v3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
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
assign add_ln55_fu_338_p2 = (ap_sig_allocacmp_v25_1 + 11'd8);
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
assign bitcast_ln60_1_fu_462_p1 = reg_296;
assign bitcast_ln60_2_fu_467_p1 = v29_2_reg_742;
assign bitcast_ln60_3_fu_471_p1 = v29_3_reg_747;
assign bitcast_ln60_4_fu_475_p1 = reg_292;
assign bitcast_ln60_5_fu_480_p1 = reg_296;
assign bitcast_ln60_6_fu_485_p1 = v29_6_reg_752;
assign bitcast_ln60_7_fu_489_p1 = v29_7_reg_757;
assign bitcast_ln60_fu_457_p1 = reg_292;
assign grp_fu_187_p_ce = 1'b1;
assign grp_fu_187_p_din0 = grp_fu_266_p0;
assign grp_fu_187_p_din1 = grp_fu_266_p1;
assign grp_fu_187_p_opcode = 2'd0;
assign grp_fu_372_p_ce = 1'b1;
assign grp_fu_372_p_din0 = grp_fu_274_p0;
assign grp_fu_372_p_din1 = 32'd3345637376;
assign lshr_ln2_fu_349_p4 = {{v25_1_reg_500[9:1]}};
assign lshr_ln55_1_fu_316_p4 = {{ap_sig_allocacmp_v25_1[9:3]}};
assign or_ln1_fu_373_p3 = {{tmp_s_fu_364_p4}, {1'd1}};
assign or_ln56_1_fu_394_p4 = {{{lshr_ln55_1_reg_511_pp0_iter1_reg}, {1'd1}}, {tmp_1_reg_617}};
assign or_ln56_2_fu_408_p3 = {{lshr_ln55_1_reg_511_pp0_iter1_reg}, {2'd3}};
assign tmp_fu_308_p3 = ap_sig_allocacmp_v25_1[32'd10];
assign tmp_s_fu_364_p4 = {{v25_1_reg_500[9:2]}};
assign v28_1_fu_426_p1 = reg_288;
assign v28_2_fu_431_p1 = v2_0_load_1_reg_632;
assign v28_3_fu_435_p1 = v2_1_load_1_reg_637;
assign v28_4_fu_439_p1 = reg_284;
assign v28_5_fu_444_p1 = reg_288;
assign v28_6_fu_449_p1 = v2_0_load_3_reg_682;
assign v28_7_fu_453_p1 = v2_1_load_3_reg_687;
assign v28_fu_421_p1 = reg_284;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_address1 = v2_0_address1_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = v2_0_d0_local;
assign v2_0_d1 = v2_0_d1_local;
assign v2_0_we0 = v2_0_we0_local;
assign v2_0_we1 = v2_0_we1_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_address1 = v2_1_address1_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = v2_1_d0_local;
assign v2_1_d1 = v2_1_d1_local;
assign v2_1_we0 = v2_1_we0_local;
assign v2_1_we1 = v2_1_we1_local;
assign v3_1_address0 = zext_ln55_1_fu_326_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_2_address0 = zext_ln55_1_fu_326_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_3_address0 = zext_ln55_1_fu_326_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_4_address0 = zext_ln55_1_fu_326_p1;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_5_address0 = zext_ln55_1_fu_326_p1;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_6_address0 = zext_ln55_1_fu_326_p1;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_7_address0 = zext_ln55_1_fu_326_p1;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_address0 = zext_ln55_1_fu_326_p1;
assign v3_ce0 = v3_ce0_local;
assign zext_ln55_1_fu_326_p1 = lshr_ln55_1_fu_316_p4;
assign zext_ln55_fu_358_p1 = lshr_ln2_fu_349_p4;
assign zext_ln56_1_fu_402_p1 = or_ln56_1_fu_394_p4;
assign zext_ln56_2_fu_415_p1 = or_ln56_2_fu_408_p3;
assign zext_ln56_fu_381_p1 = or_ln1_fu_373_p3;
always @ (posedge ap_clk) begin
    v2_0_addr_1_reg_607[0] <= 1'b1;
    v2_0_addr_1_reg_607_pp0_iter2_reg[0] <= 1'b1;
    v2_0_addr_1_reg_607_pp0_iter3_reg[0] <= 1'b1;
    v2_1_addr_1_reg_612[0] <= 1'b1;
    v2_1_addr_1_reg_612_pp0_iter2_reg[0] <= 1'b1;
    v2_1_addr_1_reg_612_pp0_iter3_reg[0] <= 1'b1;
    v2_0_addr_2_reg_642[1] <= 1'b1;
    v2_0_addr_2_reg_642_pp0_iter2_reg[1] <= 1'b1;
    v2_0_addr_2_reg_642_pp0_iter3_reg[1] <= 1'b1;
    v2_1_addr_2_reg_647[1] <= 1'b1;
    v2_1_addr_2_reg_647_pp0_iter2_reg[1] <= 1'b1;
    v2_1_addr_2_reg_647_pp0_iter3_reg[1] <= 1'b1;
    v2_0_addr_3_reg_652[1:0] <= 2'b11;
    v2_0_addr_3_reg_652_pp0_iter2_reg[1:0] <= 2'b11;
    v2_0_addr_3_reg_652_pp0_iter3_reg[1:0] <= 2'b11;
    v2_0_addr_3_reg_652_pp0_iter4_reg[1:0] <= 2'b11;
    v2_1_addr_3_reg_657[1:0] <= 2'b11;
    v2_1_addr_3_reg_657_pp0_iter2_reg[1:0] <= 2'b11;
    v2_1_addr_3_reg_657_pp0_iter3_reg[1:0] <= 2'b11;
    v2_1_addr_3_reg_657_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 