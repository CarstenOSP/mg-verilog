module SgdLR_sw_SgdLR_sw_Pipeline_label_49 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_1_address1,v2_1_ce1,v2_1_we1,v2_1_d1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v2_0_address1,v2_0_ce1,v2_0_we1,v2_0_d1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,grp_fu_313_p_din0,grp_fu_313_p_din1,grp_fu_313_p_opcode,grp_fu_313_p_dout0,grp_fu_313_p_ce,grp_fu_755_p_din0,grp_fu_755_p_din1,grp_fu_755_p_dout0,grp_fu_755_p_ce); 
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
output  [9:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [9:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [31:0] grp_fu_313_p_din0;
output  [31:0] grp_fu_313_p_din1;
output  [0:0] grp_fu_313_p_opcode;
input  [31:0] grp_fu_313_p_dout0;
output   grp_fu_313_p_ce;
output  [31:0] grp_fu_755_p_din0;
output  [31:0] grp_fu_755_p_din1;
input  [31:0] grp_fu_755_p_dout0;
output   grp_fu_755_p_ce;
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
reg   [0:0] tmp_reg_443;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_202_p3;
reg   [31:0] reg_216;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_220;
wire    ap_block_pp0_stage0_11001;
reg   [10:0] v25_1_reg_433;
reg   [31:0] v26_reg_457;
reg   [31:0] v26_1_reg_462;
reg   [31:0] v26_2_reg_477;
reg   [31:0] v26_3_reg_482;
reg   [0:0] tmp_1_reg_487;
reg   [0:0] tmp_1_reg_487_pp0_iter2_reg;
reg   [0:0] tmp_1_reg_487_pp0_iter3_reg;
reg   [0:0] tmp_1_reg_487_pp0_iter4_reg;
reg   [8:0] v2_0_addr_reg_493;
reg   [8:0] v2_0_addr_reg_493_pp0_iter2_reg;
reg   [8:0] v2_0_addr_reg_493_pp0_iter3_reg;
reg   [8:0] v2_1_addr_reg_498;
reg   [8:0] v2_1_addr_reg_498_pp0_iter2_reg;
reg   [8:0] v2_1_addr_reg_498_pp0_iter3_reg;
reg   [8:0] v2_0_addr_1_reg_503;
reg   [8:0] v2_0_addr_1_reg_503_pp0_iter2_reg;
reg   [8:0] v2_0_addr_1_reg_503_pp0_iter3_reg;
reg   [8:0] v2_1_addr_1_reg_508;
reg   [8:0] v2_1_addr_1_reg_508_pp0_iter2_reg;
reg   [8:0] v2_1_addr_1_reg_508_pp0_iter3_reg;
reg   [6:0] tmp_4_reg_513;
reg   [31:0] v27_reg_519;
wire   [31:0] grp_fu_209_p3;
reg   [31:0] select_ln58_1_reg_524;
reg   [8:0] v2_0_addr_2_reg_529;
reg   [8:0] v2_0_addr_2_reg_529_pp0_iter2_reg;
reg   [8:0] v2_0_addr_2_reg_529_pp0_iter3_reg;
reg   [8:0] v2_1_addr_2_reg_534;
reg   [8:0] v2_1_addr_2_reg_534_pp0_iter2_reg;
reg   [8:0] v2_1_addr_2_reg_534_pp0_iter3_reg;
reg   [8:0] v2_0_addr_3_reg_539;
reg   [8:0] v2_0_addr_3_reg_539_pp0_iter2_reg;
reg   [8:0] v2_0_addr_3_reg_539_pp0_iter3_reg;
reg   [8:0] v2_0_addr_3_reg_539_pp0_iter4_reg;
reg   [8:0] v2_1_addr_3_reg_544;
reg   [8:0] v2_1_addr_3_reg_544_pp0_iter2_reg;
reg   [8:0] v2_1_addr_3_reg_544_pp0_iter3_reg;
reg   [8:0] v2_1_addr_3_reg_544_pp0_iter4_reg;
wire   [31:0] v28_fu_387_p1;
reg   [31:0] v27_3_reg_554;
reg   [31:0] select_ln58_3_reg_559;
wire   [31:0] v28_1_fu_392_p1;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] v27_1_reg_569;
wire   [31:0] v28_2_fu_396_p1;
reg   [31:0] v27_2_reg_579;
wire   [31:0] v28_3_fu_401_p1;
reg   [31:0] v29_3_reg_589;
wire   [31:0] bitcast_ln60_3_fu_422_p1;
reg   [31:0] bitcast_ln60_3_reg_594;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_fu_240_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_fu_263_p1;
wire   [63:0] zext_ln56_2_fu_285_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_4_fu_298_p1;
wire   [63:0] zext_ln55_1_fu_316_p1;
wire   [63:0] zext_ln56_1_fu_346_p1;
wire   [63:0] zext_ln56_3_fu_368_p1;
wire   [63:0] zext_ln56_5_fu_381_p1;
reg   [10:0] v25_fu_66;
wire   [10:0] add_ln55_fu_303_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_1;
reg    v3_ce1_local;
reg   [9:0] v3_address1_local;
reg    v3_ce0_local;
reg   [9:0] v3_address0_local;
reg    v2_0_ce1_local;
reg   [8:0] v2_0_address1_local;
reg    v2_0_ce0_local;
reg   [8:0] v2_0_address0_local;
reg    v2_0_we1_local;
reg   [31:0] v2_0_d1_local;
wire   [31:0] bitcast_ln60_fu_405_p1;
wire    ap_block_pp0_stage2;
reg    v2_0_we0_local;
reg   [31:0] v2_0_d0_local;
wire   [31:0] bitcast_ln60_1_fu_411_p1;
wire   [31:0] bitcast_ln60_2_fu_416_p1;
wire    ap_block_pp0_stage3;
reg    v2_1_ce1_local;
reg   [8:0] v2_1_address1_local;
reg    v2_1_ce0_local;
reg   [8:0] v2_1_address0_local;
reg    v2_1_we1_local;
reg   [31:0] v2_1_d1_local;
reg    v2_1_we0_local;
reg   [31:0] v2_1_d0_local;
reg   [31:0] grp_fu_193_p0;
reg   [31:0] grp_fu_193_p1;
reg   [31:0] grp_fu_197_p0;
wire   [8:0] tmp_s_fu_245_p4;
wire   [9:0] or_ln55_9_fu_255_p3;
wire   [7:0] tmp_3_fu_268_p4;
wire   [9:0] or_ln55_s_fu_277_p3;
wire   [9:0] or_ln55_1_fu_290_p3;
wire   [8:0] trunc_ln55_fu_313_p1;
wire   [7:0] tmp_2_fu_329_p4;
wire   [8:0] or_ln56_9_fu_338_p3;
wire   [8:0] or_ln56_s_fu_361_p3;
wire   [8:0] or_ln56_1_fu_374_p3;
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
#0 v25_fu_66 = 11'd0;
#0 ap_done_reg = 1'b0;
end
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v25_fu_66 <= 11'd0;
    end else if (((tmp_reg_443 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v25_fu_66 <= add_ln55_fu_303_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        bitcast_ln60_3_reg_594 <= bitcast_ln60_3_fu_422_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_216 <= grp_fu_202_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_220 <= grp_fu_313_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln58_1_reg_524 <= grp_fu_209_p3;
        v27_reg_519 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln58_3_reg_559 <= grp_fu_209_p3;
        v27_3_reg_554 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_1_reg_487 <= v25_1_reg_433[32'd9];
        tmp_1_reg_487_pp0_iter2_reg <= tmp_1_reg_487;
        tmp_1_reg_487_pp0_iter3_reg <= tmp_1_reg_487_pp0_iter2_reg;
        tmp_1_reg_487_pp0_iter4_reg <= tmp_1_reg_487_pp0_iter3_reg;
        tmp_4_reg_513 <= {{v25_1_reg_433[8:2]}};
        tmp_reg_443 <= ap_sig_allocacmp_v25_1[32'd10];
        v25_1_reg_433 <= ap_sig_allocacmp_v25_1;
        v2_0_addr_1_reg_503[8 : 1] <= zext_ln56_1_fu_346_p1[8 : 1];
        v2_0_addr_1_reg_503_pp0_iter2_reg[8 : 1] <= v2_0_addr_1_reg_503[8 : 1];
        v2_0_addr_1_reg_503_pp0_iter3_reg[8 : 1] <= v2_0_addr_1_reg_503_pp0_iter2_reg[8 : 1];
        v2_0_addr_reg_493 <= zext_ln55_1_fu_316_p1;
        v2_0_addr_reg_493_pp0_iter2_reg <= v2_0_addr_reg_493;
        v2_0_addr_reg_493_pp0_iter3_reg <= v2_0_addr_reg_493_pp0_iter2_reg;
        v2_1_addr_1_reg_508[8 : 1] <= zext_ln56_1_fu_346_p1[8 : 1];
        v2_1_addr_1_reg_508_pp0_iter2_reg[8 : 1] <= v2_1_addr_1_reg_508[8 : 1];
        v2_1_addr_1_reg_508_pp0_iter3_reg[8 : 1] <= v2_1_addr_1_reg_508_pp0_iter2_reg[8 : 1];
        v2_1_addr_reg_498 <= zext_ln55_1_fu_316_p1;
        v2_1_addr_reg_498_pp0_iter2_reg <= v2_1_addr_reg_498;
        v2_1_addr_reg_498_pp0_iter3_reg <= v2_1_addr_reg_498_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v26_1_reg_462 <= v3_q0;
        v26_reg_457 <= v3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v26_2_reg_477 <= v3_q1;
        v26_3_reg_482 <= v3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_1_reg_569 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_2_reg_579 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_3_reg_589 <= grp_fu_313_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_addr_2_reg_529[8 : 2] <= zext_ln56_3_fu_368_p1[8 : 2];
        v2_0_addr_2_reg_529_pp0_iter2_reg[8 : 2] <= v2_0_addr_2_reg_529[8 : 2];
        v2_0_addr_2_reg_529_pp0_iter3_reg[8 : 2] <= v2_0_addr_2_reg_529_pp0_iter2_reg[8 : 2];
        v2_0_addr_3_reg_539[8 : 2] <= zext_ln56_5_fu_381_p1[8 : 2];
        v2_0_addr_3_reg_539_pp0_iter2_reg[8 : 2] <= v2_0_addr_3_reg_539[8 : 2];
        v2_0_addr_3_reg_539_pp0_iter3_reg[8 : 2] <= v2_0_addr_3_reg_539_pp0_iter2_reg[8 : 2];
        v2_0_addr_3_reg_539_pp0_iter4_reg[8 : 2] <= v2_0_addr_3_reg_539_pp0_iter3_reg[8 : 2];
        v2_1_addr_2_reg_534[8 : 2] <= zext_ln56_3_fu_368_p1[8 : 2];
        v2_1_addr_2_reg_534_pp0_iter2_reg[8 : 2] <= v2_1_addr_2_reg_534[8 : 2];
        v2_1_addr_2_reg_534_pp0_iter3_reg[8 : 2] <= v2_1_addr_2_reg_534_pp0_iter2_reg[8 : 2];
        v2_1_addr_3_reg_544[8 : 2] <= zext_ln56_5_fu_381_p1[8 : 2];
        v2_1_addr_3_reg_544_pp0_iter2_reg[8 : 2] <= v2_1_addr_3_reg_544[8 : 2];
        v2_1_addr_3_reg_544_pp0_iter3_reg[8 : 2] <= v2_1_addr_3_reg_544_pp0_iter2_reg[8 : 2];
        v2_1_addr_3_reg_544_pp0_iter4_reg[8 : 2] <= v2_1_addr_3_reg_544_pp0_iter3_reg[8 : 2];
    end
end
always @ (*) begin
    if (((tmp_reg_443 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v25_1 = v25_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_193_p0 = v28_3_fu_401_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_193_p0 = v28_2_fu_396_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_193_p0 = v28_1_fu_392_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_193_p0 = v28_fu_387_p1;
    end else begin
        grp_fu_193_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_193_p1 = v27_2_reg_579;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_193_p1 = v27_1_reg_569;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_193_p1 = v27_3_reg_554;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_193_p1 = v27_reg_519;
    end else begin
        grp_fu_193_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_197_p0 = v26_3_reg_482;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_197_p0 = v26_2_reg_477;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_197_p0 = v26_1_reg_462;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_197_p0 = v26_reg_457;
    end else begin
        grp_fu_197_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address0_local = v2_0_addr_3_reg_539_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address0_local = v2_0_addr_1_reg_503_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address0_local = zext_ln56_5_fu_381_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address0_local = zext_ln56_1_fu_346_p1;
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address1_local = v2_0_addr_2_reg_529_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address1_local = v2_0_addr_reg_493_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address1_local = zext_ln56_3_fu_368_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address1_local = zext_ln55_1_fu_316_p1;
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
        v2_0_d0_local = bitcast_ln60_3_reg_594;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_d0_local = bitcast_ln60_1_fu_411_p1;
    end else begin
        v2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_0_d1_local = bitcast_ln60_2_fu_416_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_0_d1_local = bitcast_ln60_fu_405_p1;
        end else begin
            v2_0_d1_local = 'bx;
        end
    end else begin
        v2_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_1_reg_487_pp0_iter4_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_reg_487_pp0_iter3_reg == 1'd0)))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_1_reg_487_pp0_iter3_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_reg_487_pp0_iter3_reg == 1'd0)))) begin
        v2_0_we1_local = 1'b1;
    end else begin
        v2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address0_local = v2_1_addr_3_reg_544_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address0_local = v2_1_addr_1_reg_508_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address0_local = zext_ln56_5_fu_381_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address0_local = zext_ln56_1_fu_346_p1;
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address1_local = v2_1_addr_2_reg_534_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address1_local = v2_1_addr_reg_498_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address1_local = zext_ln56_3_fu_368_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address1_local = zext_ln55_1_fu_316_p1;
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
        v2_1_d0_local = bitcast_ln60_3_reg_594;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_d0_local = bitcast_ln60_1_fu_411_p1;
    end else begin
        v2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_1_d1_local = bitcast_ln60_2_fu_416_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_1_d1_local = bitcast_ln60_fu_405_p1;
        end else begin
            v2_1_d1_local = 'bx;
        end
    end else begin
        v2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_1_reg_487_pp0_iter4_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_reg_487_pp0_iter3_reg == 1'd1)))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_1_reg_487_pp0_iter3_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_reg_487_pp0_iter3_reg == 1'd1)))) begin
        v2_1_we1_local = 1'b1;
    end else begin
        v2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln56_4_fu_298_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln56_fu_263_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln56_2_fu_285_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln55_fu_240_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
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
assign add_ln55_fu_303_p2 = (v25_1_reg_433 + 11'd4);
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
assign bitcast_ln60_1_fu_411_p1 = v29_3_reg_589;
assign bitcast_ln60_2_fu_416_p1 = reg_220;
assign bitcast_ln60_3_fu_422_p1 = grp_fu_313_p_dout0;
assign bitcast_ln60_fu_405_p1 = reg_220;
assign grp_fu_202_p3 = ((tmp_1_reg_487[0:0] == 1'b1) ? v2_1_q1 : v2_0_q1);
assign grp_fu_209_p3 = ((tmp_1_reg_487[0:0] == 1'b1) ? v2_1_q0 : v2_0_q0);
assign grp_fu_313_p_ce = 1'b1;
assign grp_fu_313_p_din0 = grp_fu_193_p0;
assign grp_fu_313_p_din1 = grp_fu_193_p1;
assign grp_fu_313_p_opcode = 2'd0;
assign grp_fu_755_p_ce = 1'b1;
assign grp_fu_755_p_din0 = grp_fu_197_p0;
assign grp_fu_755_p_din1 = 32'd3345637376;
assign or_ln55_1_fu_290_p3 = {{tmp_3_fu_268_p4}, {2'd3}};
assign or_ln55_9_fu_255_p3 = {{tmp_s_fu_245_p4}, {1'd1}};
assign or_ln55_s_fu_277_p3 = {{tmp_3_fu_268_p4}, {2'd2}};
assign or_ln56_1_fu_374_p3 = {{tmp_4_reg_513}, {2'd3}};
assign or_ln56_9_fu_338_p3 = {{tmp_2_fu_329_p4}, {1'd1}};
assign or_ln56_s_fu_361_p3 = {{tmp_4_reg_513}, {2'd2}};
assign tmp_2_fu_329_p4 = {{v25_1_reg_433[8:1]}};
assign tmp_3_fu_268_p4 = {{v25_1_reg_433[9:2]}};
assign tmp_s_fu_245_p4 = {{ap_sig_allocacmp_v25_1[9:1]}};
assign trunc_ln55_fu_313_p1 = v25_1_reg_433[8:0];
assign v28_1_fu_392_p1 = select_ln58_1_reg_524;
assign v28_2_fu_396_p1 = reg_216;
assign v28_3_fu_401_p1 = select_ln58_3_reg_559;
assign v28_fu_387_p1 = reg_216;
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
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_1_fu_316_p1 = trunc_ln55_fu_313_p1;
assign zext_ln55_fu_240_p1 = ap_sig_allocacmp_v25_1;
assign zext_ln56_1_fu_346_p1 = or_ln56_9_fu_338_p3;
assign zext_ln56_2_fu_285_p1 = or_ln55_s_fu_277_p3;
assign zext_ln56_3_fu_368_p1 = or_ln56_s_fu_361_p3;
assign zext_ln56_4_fu_298_p1 = or_ln55_1_fu_290_p3;
assign zext_ln56_5_fu_381_p1 = or_ln56_1_fu_374_p3;
assign zext_ln56_fu_263_p1 = or_ln55_9_fu_255_p3;
always @ (posedge ap_clk) begin
    v2_0_addr_1_reg_503[0] <= 1'b1;
    v2_0_addr_1_reg_503_pp0_iter2_reg[0] <= 1'b1;
    v2_0_addr_1_reg_503_pp0_iter3_reg[0] <= 1'b1;
    v2_1_addr_1_reg_508[0] <= 1'b1;
    v2_1_addr_1_reg_508_pp0_iter2_reg[0] <= 1'b1;
    v2_1_addr_1_reg_508_pp0_iter3_reg[0] <= 1'b1;
    v2_0_addr_2_reg_529[1:0] <= 2'b10;
    v2_0_addr_2_reg_529_pp0_iter2_reg[1:0] <= 2'b10;
    v2_0_addr_2_reg_529_pp0_iter3_reg[1:0] <= 2'b10;
    v2_1_addr_2_reg_534[1:0] <= 2'b10;
    v2_1_addr_2_reg_534_pp0_iter2_reg[1:0] <= 2'b10;
    v2_1_addr_2_reg_534_pp0_iter3_reg[1:0] <= 2'b10;
    v2_0_addr_3_reg_539[1:0] <= 2'b11;
    v2_0_addr_3_reg_539_pp0_iter2_reg[1:0] <= 2'b11;
    v2_0_addr_3_reg_539_pp0_iter3_reg[1:0] <= 2'b11;
    v2_0_addr_3_reg_539_pp0_iter4_reg[1:0] <= 2'b11;
    v2_1_addr_3_reg_544[1:0] <= 2'b11;
    v2_1_addr_3_reg_544_pp0_iter2_reg[1:0] <= 2'b11;
    v2_1_addr_3_reg_544_pp0_iter3_reg[1:0] <= 2'b11;
    v2_1_addr_3_reg_544_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 