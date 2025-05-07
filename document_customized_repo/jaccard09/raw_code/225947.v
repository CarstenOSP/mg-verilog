module SgdLR_sw_SgdLR_sw_Pipeline_label_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_address1,v2_3_ce1,v2_3_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_address1,v2_2_ce1,v2_2_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_address1,v2_1_ce1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_address1,v2_0_ce1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v3_1_address0,v3_1_ce0,v3_1_q0,v3_1_address1,v3_1_ce1,v3_1_q1,grp_fu_163_p_din0,grp_fu_163_p_din1,grp_fu_163_p_opcode,grp_fu_163_p_dout0,grp_fu_163_p_ce,grp_fu_348_p_din0,grp_fu_348_p_din1,grp_fu_348_p_dout0,grp_fu_348_p_ce,grp_fu_352_p_din0,grp_fu_352_p_din1,grp_fu_352_p_dout0,grp_fu_352_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v2_3_address0;
output   v2_3_ce0;
output   v2_3_we0;
output  [31:0] v2_3_d0;
output  [7:0] v2_3_address1;
output   v2_3_ce1;
input  [31:0] v2_3_q1;
output  [7:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [31:0] v2_2_d0;
output  [7:0] v2_2_address1;
output   v2_2_ce1;
input  [31:0] v2_2_q1;
output  [7:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
output  [7:0] v2_1_address1;
output   v2_1_ce1;
input  [31:0] v2_1_q1;
output  [7:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
output  [7:0] v2_0_address1;
output   v2_0_ce1;
input  [31:0] v2_0_q1;
output  [8:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [8:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [8:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [8:0] v3_1_address1;
output   v3_1_ce1;
input  [31:0] v3_1_q1;
output  [31:0] grp_fu_163_p_din0;
output  [31:0] grp_fu_163_p_din1;
output  [0:0] grp_fu_163_p_opcode;
input  [31:0] grp_fu_163_p_dout0;
output   grp_fu_163_p_ce;
output  [31:0] grp_fu_348_p_din0;
output  [31:0] grp_fu_348_p_din1;
input  [31:0] grp_fu_348_p_dout0;
output   grp_fu_348_p_ce;
output  [31:0] grp_fu_352_p_din0;
output  [31:0] grp_fu_352_p_din1;
input  [31:0] grp_fu_352_p_dout0;
output   grp_fu_352_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_208_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] lshr_ln1_reg_357;
reg   [7:0] lshr_ln1_reg_357_pp0_iter1_reg;
reg   [7:0] lshr_ln1_reg_357_pp0_iter2_reg;
reg   [7:0] lshr_ln1_reg_357_pp0_iter3_reg;
reg   [0:0] tmp_1_reg_372;
wire   [0:0] icmp_ln58_fu_248_p2;
reg   [0:0] icmp_ln58_reg_378;
reg   [0:0] icmp_ln58_reg_378_pp0_iter1_reg;
reg   [0:0] icmp_ln58_reg_378_pp0_iter2_reg;
reg   [0:0] icmp_ln58_reg_378_pp0_iter3_reg;
reg   [0:0] icmp_ln58_reg_378_pp0_iter4_reg;
wire   [0:0] icmp_ln60_fu_254_p2;
reg   [0:0] icmp_ln60_reg_384;
reg   [0:0] icmp_ln60_reg_384_pp0_iter1_reg;
reg   [0:0] icmp_ln60_reg_384_pp0_iter2_reg;
reg   [0:0] icmp_ln60_reg_384_pp0_iter3_reg;
reg   [0:0] icmp_ln60_reg_384_pp0_iter4_reg;
reg   [0:0] icmp_ln60_reg_384_pp0_iter5_reg;
reg   [0:0] icmp_ln60_reg_384_pp0_iter6_reg;
reg   [0:0] icmp_ln60_reg_384_pp0_iter7_reg;
reg   [0:0] icmp_ln60_reg_384_pp0_iter8_reg;
reg   [0:0] icmp_ln60_reg_384_pp0_iter9_reg;
reg   [0:0] icmp_ln60_reg_384_pp0_iter10_reg;
reg   [0:0] icmp_ln60_reg_384_pp0_iter11_reg;
reg   [0:0] icmp_ln60_reg_384_pp0_iter12_reg;
wire   [31:0] v26_fu_295_p3;
reg   [31:0] v26_reg_398;
wire   [31:0] v26_1_fu_302_p3;
reg   [31:0] v26_1_reg_403;
reg   [7:0] v2_0_addr_reg_408;
reg   [7:0] v2_0_addr_reg_408_pp0_iter5_reg;
reg   [7:0] v2_0_addr_reg_408_pp0_iter6_reg;
reg   [7:0] v2_0_addr_reg_408_pp0_iter7_reg;
reg   [7:0] v2_0_addr_reg_408_pp0_iter8_reg;
reg   [7:0] v2_0_addr_reg_408_pp0_iter9_reg;
reg   [7:0] v2_0_addr_reg_408_pp0_iter10_reg;
reg   [7:0] v2_0_addr_reg_408_pp0_iter11_reg;
reg   [7:0] v2_0_addr_reg_408_pp0_iter12_reg;
reg   [7:0] v2_2_addr_reg_414;
reg   [7:0] v2_2_addr_reg_414_pp0_iter5_reg;
reg   [7:0] v2_2_addr_reg_414_pp0_iter6_reg;
reg   [7:0] v2_2_addr_reg_414_pp0_iter7_reg;
reg   [7:0] v2_2_addr_reg_414_pp0_iter8_reg;
reg   [7:0] v2_2_addr_reg_414_pp0_iter9_reg;
reg   [7:0] v2_2_addr_reg_414_pp0_iter10_reg;
reg   [7:0] v2_2_addr_reg_414_pp0_iter11_reg;
reg   [7:0] v2_2_addr_reg_414_pp0_iter12_reg;
reg   [7:0] v2_1_addr_reg_420;
reg   [7:0] v2_1_addr_reg_420_pp0_iter5_reg;
reg   [7:0] v2_1_addr_reg_420_pp0_iter6_reg;
reg   [7:0] v2_1_addr_reg_420_pp0_iter7_reg;
reg   [7:0] v2_1_addr_reg_420_pp0_iter8_reg;
reg   [7:0] v2_1_addr_reg_420_pp0_iter9_reg;
reg   [7:0] v2_1_addr_reg_420_pp0_iter10_reg;
reg   [7:0] v2_1_addr_reg_420_pp0_iter11_reg;
reg   [7:0] v2_1_addr_reg_420_pp0_iter12_reg;
reg   [7:0] v2_3_addr_reg_426;
reg   [7:0] v2_3_addr_reg_426_pp0_iter5_reg;
reg   [7:0] v2_3_addr_reg_426_pp0_iter6_reg;
reg   [7:0] v2_3_addr_reg_426_pp0_iter7_reg;
reg   [7:0] v2_3_addr_reg_426_pp0_iter8_reg;
reg   [7:0] v2_3_addr_reg_426_pp0_iter9_reg;
reg   [7:0] v2_3_addr_reg_426_pp0_iter10_reg;
reg   [7:0] v2_3_addr_reg_426_pp0_iter11_reg;
reg   [7:0] v2_3_addr_reg_426_pp0_iter12_reg;
reg   [31:0] v27_reg_432;
wire   [31:0] select_ln58_fu_316_p3;
reg   [31:0] select_ln58_reg_437;
reg   [31:0] v27_1_reg_442;
wire   [31:0] select_ln58_1_fu_323_p3;
reg   [31:0] select_ln58_1_reg_447;
wire   [31:0] v28_fu_330_p1;
wire   [31:0] bitcast_ln60_fu_338_p1;
reg   [31:0] bitcast_ln60_reg_462;
wire   [31:0] bitcast_ln60_1_fu_342_p1;
reg   [31:0] bitcast_ln60_1_reg_468;
wire   [63:0] zext_ln55_1_fu_234_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_fu_278_p1;
wire   [63:0] zext_ln55_fu_309_p1;
reg   [10:0] v25_fu_60;
wire   [10:0] add_ln55_fu_284_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_1;
reg    v3_ce1_local;
reg    v3_ce0_local;
reg    v3_1_ce1_local;
reg    v3_1_ce0_local;
reg    v2_0_ce1_local;
reg    v2_0_we0_local;
reg    v2_0_ce0_local;
reg    v2_2_ce1_local;
reg    v2_2_we0_local;
reg    v2_2_ce0_local;
reg    v2_1_ce1_local;
reg    v2_1_we0_local;
reg    v2_1_ce0_local;
reg    v2_3_ce1_local;
reg    v2_3_we0_local;
reg    v2_3_ce0_local;
wire   [31:0] grp_fu_186_p0;
wire   [8:0] trunc_ln55_fu_216_p1;
wire   [1:0] trunc_ln55_1_fu_220_p1;
wire   [7:0] tmp_3_fu_260_p4;
wire   [8:0] or_ln1_fu_270_p3;
wire   [31:0] grp_fu_186_p2;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
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
#0 v25_fu_60 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_186_p0),.din1(v27_1_reg_442),.ce(1'b1),.dout(grp_fu_186_p2));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_208_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v25_fu_60 <= add_ln55_fu_284_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_60 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        bitcast_ln60_1_reg_468 <= bitcast_ln60_1_fu_342_p1;
        bitcast_ln60_reg_462 <= bitcast_ln60_fu_338_p1;
        icmp_ln58_reg_378_pp0_iter2_reg <= icmp_ln58_reg_378_pp0_iter1_reg;
        icmp_ln58_reg_378_pp0_iter3_reg <= icmp_ln58_reg_378_pp0_iter2_reg;
        icmp_ln58_reg_378_pp0_iter4_reg <= icmp_ln58_reg_378_pp0_iter3_reg;
        icmp_ln60_reg_384_pp0_iter10_reg <= icmp_ln60_reg_384_pp0_iter9_reg;
        icmp_ln60_reg_384_pp0_iter11_reg <= icmp_ln60_reg_384_pp0_iter10_reg;
        icmp_ln60_reg_384_pp0_iter12_reg <= icmp_ln60_reg_384_pp0_iter11_reg;
        icmp_ln60_reg_384_pp0_iter2_reg <= icmp_ln60_reg_384_pp0_iter1_reg;
        icmp_ln60_reg_384_pp0_iter3_reg <= icmp_ln60_reg_384_pp0_iter2_reg;
        icmp_ln60_reg_384_pp0_iter4_reg <= icmp_ln60_reg_384_pp0_iter3_reg;
        icmp_ln60_reg_384_pp0_iter5_reg <= icmp_ln60_reg_384_pp0_iter4_reg;
        icmp_ln60_reg_384_pp0_iter6_reg <= icmp_ln60_reg_384_pp0_iter5_reg;
        icmp_ln60_reg_384_pp0_iter7_reg <= icmp_ln60_reg_384_pp0_iter6_reg;
        icmp_ln60_reg_384_pp0_iter8_reg <= icmp_ln60_reg_384_pp0_iter7_reg;
        icmp_ln60_reg_384_pp0_iter9_reg <= icmp_ln60_reg_384_pp0_iter8_reg;
        lshr_ln1_reg_357_pp0_iter2_reg <= lshr_ln1_reg_357_pp0_iter1_reg;
        lshr_ln1_reg_357_pp0_iter3_reg <= lshr_ln1_reg_357_pp0_iter2_reg;
        select_ln58_1_reg_447 <= select_ln58_1_fu_323_p3;
        select_ln58_reg_437 <= select_ln58_fu_316_p3;
        v27_1_reg_442 <= grp_fu_352_p_dout0;
        v27_reg_432 <= grp_fu_348_p_dout0;
        v2_0_addr_reg_408 <= zext_ln55_fu_309_p1;
        v2_0_addr_reg_408_pp0_iter10_reg <= v2_0_addr_reg_408_pp0_iter9_reg;
        v2_0_addr_reg_408_pp0_iter11_reg <= v2_0_addr_reg_408_pp0_iter10_reg;
        v2_0_addr_reg_408_pp0_iter12_reg <= v2_0_addr_reg_408_pp0_iter11_reg;
        v2_0_addr_reg_408_pp0_iter5_reg <= v2_0_addr_reg_408;
        v2_0_addr_reg_408_pp0_iter6_reg <= v2_0_addr_reg_408_pp0_iter5_reg;
        v2_0_addr_reg_408_pp0_iter7_reg <= v2_0_addr_reg_408_pp0_iter6_reg;
        v2_0_addr_reg_408_pp0_iter8_reg <= v2_0_addr_reg_408_pp0_iter7_reg;
        v2_0_addr_reg_408_pp0_iter9_reg <= v2_0_addr_reg_408_pp0_iter8_reg;
        v2_1_addr_reg_420 <= zext_ln55_fu_309_p1;
        v2_1_addr_reg_420_pp0_iter10_reg <= v2_1_addr_reg_420_pp0_iter9_reg;
        v2_1_addr_reg_420_pp0_iter11_reg <= v2_1_addr_reg_420_pp0_iter10_reg;
        v2_1_addr_reg_420_pp0_iter12_reg <= v2_1_addr_reg_420_pp0_iter11_reg;
        v2_1_addr_reg_420_pp0_iter5_reg <= v2_1_addr_reg_420;
        v2_1_addr_reg_420_pp0_iter6_reg <= v2_1_addr_reg_420_pp0_iter5_reg;
        v2_1_addr_reg_420_pp0_iter7_reg <= v2_1_addr_reg_420_pp0_iter6_reg;
        v2_1_addr_reg_420_pp0_iter8_reg <= v2_1_addr_reg_420_pp0_iter7_reg;
        v2_1_addr_reg_420_pp0_iter9_reg <= v2_1_addr_reg_420_pp0_iter8_reg;
        v2_2_addr_reg_414 <= zext_ln55_fu_309_p1;
        v2_2_addr_reg_414_pp0_iter10_reg <= v2_2_addr_reg_414_pp0_iter9_reg;
        v2_2_addr_reg_414_pp0_iter11_reg <= v2_2_addr_reg_414_pp0_iter10_reg;
        v2_2_addr_reg_414_pp0_iter12_reg <= v2_2_addr_reg_414_pp0_iter11_reg;
        v2_2_addr_reg_414_pp0_iter5_reg <= v2_2_addr_reg_414;
        v2_2_addr_reg_414_pp0_iter6_reg <= v2_2_addr_reg_414_pp0_iter5_reg;
        v2_2_addr_reg_414_pp0_iter7_reg <= v2_2_addr_reg_414_pp0_iter6_reg;
        v2_2_addr_reg_414_pp0_iter8_reg <= v2_2_addr_reg_414_pp0_iter7_reg;
        v2_2_addr_reg_414_pp0_iter9_reg <= v2_2_addr_reg_414_pp0_iter8_reg;
        v2_3_addr_reg_426 <= zext_ln55_fu_309_p1;
        v2_3_addr_reg_426_pp0_iter10_reg <= v2_3_addr_reg_426_pp0_iter9_reg;
        v2_3_addr_reg_426_pp0_iter11_reg <= v2_3_addr_reg_426_pp0_iter10_reg;
        v2_3_addr_reg_426_pp0_iter12_reg <= v2_3_addr_reg_426_pp0_iter11_reg;
        v2_3_addr_reg_426_pp0_iter5_reg <= v2_3_addr_reg_426;
        v2_3_addr_reg_426_pp0_iter6_reg <= v2_3_addr_reg_426_pp0_iter5_reg;
        v2_3_addr_reg_426_pp0_iter7_reg <= v2_3_addr_reg_426_pp0_iter6_reg;
        v2_3_addr_reg_426_pp0_iter8_reg <= v2_3_addr_reg_426_pp0_iter7_reg;
        v2_3_addr_reg_426_pp0_iter9_reg <= v2_3_addr_reg_426_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln58_reg_378 <= icmp_ln58_fu_248_p2;
        icmp_ln58_reg_378_pp0_iter1_reg <= icmp_ln58_reg_378;
        icmp_ln60_reg_384 <= icmp_ln60_fu_254_p2;
        icmp_ln60_reg_384_pp0_iter1_reg <= icmp_ln60_reg_384;
        lshr_ln1_reg_357 <= {{ap_sig_allocacmp_v25_1[9:2]}};
        lshr_ln1_reg_357_pp0_iter1_reg <= lshr_ln1_reg_357;
        tmp_1_reg_372 <= ap_sig_allocacmp_v25_1[32'd9];
        v26_1_reg_403 <= v26_1_fu_302_p3;
        v26_reg_398 <= v26_fu_295_p3;
    end
end
always @ (*) begin
    if (((tmp_fu_208_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_1 = v25_fu_60;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_384_pp0_iter12_reg == 1'd1))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_384_pp0_iter12_reg == 1'd1))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_2_ce1_local = 1'b1;
    end else begin
        v2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_384_pp0_iter12_reg == 1'd0))) begin
        v2_2_we0_local = 1'b1;
    end else begin
        v2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_3_ce1_local = 1'b1;
    end else begin
        v2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_384_pp0_iter12_reg == 1'd0))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
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
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_284_p2 = (ap_sig_allocacmp_v25_1 + 11'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_1_fu_342_p1 = grp_fu_186_p2;
assign bitcast_ln60_fu_338_p1 = grp_fu_163_p_dout0;
assign grp_fu_163_p_ce = 1'b1;
assign grp_fu_163_p_din0 = v28_fu_330_p1;
assign grp_fu_163_p_din1 = v27_reg_432;
assign grp_fu_163_p_opcode = 2'd0;
assign grp_fu_186_p0 = select_ln58_1_reg_447;
assign grp_fu_348_p_ce = 1'b1;
assign grp_fu_348_p_din0 = v26_reg_398;
assign grp_fu_348_p_din1 = 32'd3345637376;
assign grp_fu_352_p_ce = 1'b1;
assign grp_fu_352_p_din0 = v26_1_reg_403;
assign grp_fu_352_p_din1 = 32'd3345637376;
assign icmp_ln58_fu_248_p2 = ((trunc_ln55_1_fu_220_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln60_fu_254_p2 = ((trunc_ln55_1_fu_220_p1 == 2'd0) ? 1'b1 : 1'b0);
assign or_ln1_fu_270_p3 = {{tmp_3_fu_260_p4}, {1'd1}};
assign select_ln58_1_fu_323_p3 = ((icmp_ln58_reg_378_pp0_iter4_reg[0:0] == 1'b1) ? v2_3_q1 : v2_1_q1);
assign select_ln58_fu_316_p3 = ((icmp_ln58_reg_378_pp0_iter4_reg[0:0] == 1'b1) ? v2_2_q1 : v2_0_q1);
assign tmp_3_fu_260_p4 = {{ap_sig_allocacmp_v25_1[8:1]}};
assign tmp_fu_208_p3 = ap_sig_allocacmp_v25_1[32'd10];
assign trunc_ln55_1_fu_220_p1 = ap_sig_allocacmp_v25_1[1:0];
assign trunc_ln55_fu_216_p1 = ap_sig_allocacmp_v25_1[8:0];
assign v26_1_fu_302_p3 = ((tmp_1_reg_372[0:0] == 1'b1) ? v3_1_q0 : v3_q0);
assign v26_fu_295_p3 = ((tmp_1_reg_372[0:0] == 1'b1) ? v3_1_q1 : v3_q1);
assign v28_fu_330_p1 = select_ln58_reg_437;
assign v2_0_address0 = v2_0_addr_reg_408_pp0_iter12_reg;
assign v2_0_address1 = zext_ln55_fu_309_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_reg_462;
assign v2_0_we0 = v2_0_we0_local;
assign v2_1_address0 = v2_1_addr_reg_420_pp0_iter12_reg;
assign v2_1_address1 = zext_ln55_fu_309_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_1_reg_468;
assign v2_1_we0 = v2_1_we0_local;
assign v2_2_address0 = v2_2_addr_reg_414_pp0_iter12_reg;
assign v2_2_address1 = zext_ln55_fu_309_p1;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = bitcast_ln60_reg_462;
assign v2_2_we0 = v2_2_we0_local;
assign v2_3_address0 = v2_3_addr_reg_426_pp0_iter12_reg;
assign v2_3_address1 = zext_ln55_fu_309_p1;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = bitcast_ln60_1_reg_468;
assign v2_3_we0 = v2_3_we0_local;
assign v3_1_address0 = zext_ln56_fu_278_p1;
assign v3_1_address1 = zext_ln55_1_fu_234_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_address0 = zext_ln56_fu_278_p1;
assign v3_address1 = zext_ln55_1_fu_234_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_1_fu_234_p1 = trunc_ln55_fu_216_p1;
assign zext_ln55_fu_309_p1 = lshr_ln1_reg_357_pp0_iter3_reg;
assign zext_ln56_fu_278_p1 = or_ln1_fu_270_p3;
endmodule 