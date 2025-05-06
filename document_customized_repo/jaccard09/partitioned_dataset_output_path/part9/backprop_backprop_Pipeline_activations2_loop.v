
module backprop_backprop_Pipeline_activations2_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_we0,oracle_activations2_1_d0,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_we0,oracle_activations2_d0,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,p_reload86,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,p_reload85,p_reload,dactivations2_address0,dactivations2_ce0,dactivations2_q0,dactivations2_1_address0,dactivations2_1_ce0,dactivations2_1_q0,grp_fu_3155_p_din0,grp_fu_3155_p_din1,grp_fu_3155_p_opcode,grp_fu_3155_p_dout0,grp_fu_3155_p_ce,grp_fu_3159_p_din0,grp_fu_3159_p_din1,grp_fu_3159_p_opcode,grp_fu_3159_p_dout0,grp_fu_3159_p_ce,grp_fu_3163_p_din0,grp_fu_3163_p_din1,grp_fu_3163_p_opcode,grp_fu_3163_p_dout0,grp_fu_3163_p_ce,grp_fu_1780_p_din0,grp_fu_1780_p_din1,grp_fu_1780_p_dout0,grp_fu_1780_p_ce,grp_fu_3171_p_din0,grp_fu_3171_p_din1,grp_fu_3171_p_dout0,grp_fu_3171_p_ce,grp_fu_3175_p_din0,grp_fu_3175_p_din1,grp_fu_3175_p_dout0,grp_fu_3175_p_ce,grp_fu_3179_p_din0,grp_fu_3179_p_din1,grp_fu_3179_p_dout0,grp_fu_3179_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] oracle_activations2_1_address0;
output   oracle_activations2_1_ce0;
output   oracle_activations2_1_we0;
output  [63:0] oracle_activations2_1_d0;
output  [4:0] oracle_activations2_address0;
output   oracle_activations2_ce0;
output   oracle_activations2_we0;
output  [63:0] oracle_activations2_d0;
output  [6:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [6:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
input  [63:0] p_reload86;
output  [6:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [6:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
input  [63:0] p_reload85;
input  [63:0] p_reload;
output  [4:0] dactivations2_address0;
output   dactivations2_ce0;
input  [63:0] dactivations2_q0;
output  [4:0] dactivations2_1_address0;
output   dactivations2_1_ce0;
input  [63:0] dactivations2_1_q0;
output  [63:0] grp_fu_3155_p_din0;
output  [63:0] grp_fu_3155_p_din1;
output  [0:0] grp_fu_3155_p_opcode;
input  [63:0] grp_fu_3155_p_dout0;
output   grp_fu_3155_p_ce;
output  [63:0] grp_fu_3159_p_din0;
output  [63:0] grp_fu_3159_p_din1;
output  [0:0] grp_fu_3159_p_opcode;
input  [63:0] grp_fu_3159_p_dout0;
output   grp_fu_3159_p_ce;
output  [63:0] grp_fu_3163_p_din0;
output  [63:0] grp_fu_3163_p_din1;
output  [0:0] grp_fu_3163_p_opcode;
input  [63:0] grp_fu_3163_p_dout0;
output   grp_fu_3163_p_ce;
output  [63:0] grp_fu_1780_p_din0;
output  [63:0] grp_fu_1780_p_din1;
input  [63:0] grp_fu_1780_p_dout0;
output   grp_fu_1780_p_ce;
output  [63:0] grp_fu_3171_p_din0;
output  [63:0] grp_fu_3171_p_din1;
input  [63:0] grp_fu_3171_p_dout0;
output   grp_fu_3171_p_ce;
output  [63:0] grp_fu_3175_p_din0;
output  [63:0] grp_fu_3175_p_din1;
input  [63:0] grp_fu_3175_p_dout0;
output   grp_fu_3175_p_ce;
output  [63:0] grp_fu_3179_p_din0;
output  [63:0] grp_fu_3179_p_din1;
input  [63:0] grp_fu_3179_p_dout0;
output   grp_fu_3179_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
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
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_479;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_250;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_255;
reg   [63:0] reg_260;
reg   [6:0] i_9_reg_474;
reg   [0:0] tmp_reg_479_pp0_iter1_reg;
reg   [0:0] tmp_reg_479_pp0_iter2_reg;
reg   [0:0] tmp_reg_479_pp0_iter3_reg;
reg   [0:0] tmp_reg_479_pp0_iter4_reg;
reg   [0:0] tmp_reg_479_pp0_iter5_reg;
reg   [0:0] tmp_reg_479_pp0_iter6_reg;
reg   [0:0] tmp_reg_479_pp0_iter7_reg;
reg   [0:0] tmp_reg_479_pp0_iter8_reg;
reg   [0:0] tmp_reg_479_pp0_iter9_reg;
reg   [0:0] tmp_reg_479_pp0_iter10_reg;
reg   [0:0] tmp_reg_479_pp0_iter11_reg;
reg   [0:0] tmp_reg_479_pp0_iter12_reg;
reg   [0:0] tmp_reg_479_pp0_iter13_reg;
reg   [0:0] tmp_reg_479_pp0_iter14_reg;
reg   [0:0] tmp_reg_479_pp0_iter15_reg;
reg   [0:0] tmp_reg_479_pp0_iter16_reg;
reg   [0:0] tmp_reg_479_pp0_iter17_reg;
reg   [0:0] tmp_reg_479_pp0_iter18_reg;
reg   [0:0] tmp_reg_479_pp0_iter19_reg;
wire   [5:0] lshr_ln_fu_282_p4;
reg   [5:0] lshr_ln_reg_483;
reg   [5:0] lshr_ln_reg_483_pp0_iter1_reg;
reg   [5:0] lshr_ln_reg_483_pp0_iter2_reg;
reg   [5:0] lshr_ln_reg_483_pp0_iter3_reg;
reg   [5:0] lshr_ln_reg_483_pp0_iter4_reg;
reg   [5:0] lshr_ln_reg_483_pp0_iter5_reg;
reg   [5:0] lshr_ln_reg_483_pp0_iter6_reg;
reg   [5:0] lshr_ln_reg_483_pp0_iter7_reg;
reg   [5:0] lshr_ln_reg_483_pp0_iter8_reg;
reg   [5:0] lshr_ln_reg_483_pp0_iter9_reg;
reg   [5:0] lshr_ln_reg_483_pp0_iter10_reg;
reg   [5:0] lshr_ln_reg_483_pp0_iter11_reg;
reg   [5:0] lshr_ln_reg_483_pp0_iter12_reg;
reg   [5:0] lshr_ln_reg_483_pp0_iter13_reg;
reg   [5:0] lshr_ln_reg_483_pp0_iter14_reg;
reg   [5:0] lshr_ln_reg_483_pp0_iter15_reg;
wire   [6:0] add_ln85_fu_326_p2;
reg   [6:0] add_ln85_reg_498;
reg   [6:0] lshr_ln85_1_reg_503;
wire   [6:0] add_ln85_2_fu_389_p2;
reg   [6:0] add_ln85_2_reg_508;
reg   [63:0] weights3_1_load_95_reg_523;
wire   [63:0] bitcast_ln85_fu_417_p1;
wire   [63:0] bitcast_ln85_1_fu_422_p1;
wire   [63:0] bitcast_ln85_3_fu_427_p1;
reg   [63:0] weights3_0_load_96_reg_553;
wire   [63:0] bitcast_ln85_2_fu_431_p1;
wire   [63:0] bitcast_ln85_4_fu_436_p1;
wire   [63:0] bitcast_ln85_5_fu_440_p1;
reg   [63:0] mul8_i2_reg_573;
reg   [63:0] mul8_111_i_reg_578;
reg   [63:0] mul8_111_i_reg_578_pp0_iter5_reg;
reg   [63:0] mul8_111_i_reg_578_pp0_iter6_reg;
reg   [63:0] mul8_111_i_reg_578_pp0_iter7_reg;
reg   [63:0] mul8_111_i_reg_578_pp0_iter8_reg;
reg   [63:0] mul8_1_i2_reg_583;
reg   [63:0] mul8_2_i_reg_588;
reg   [63:0] mul8_2_i_reg_588_pp0_iter5_reg;
reg   [63:0] mul8_2_i_reg_588_pp0_iter6_reg;
reg   [63:0] mul8_2_i_reg_588_pp0_iter7_reg;
reg   [63:0] mul8_2_i_reg_588_pp0_iter8_reg;
reg   [63:0] mul8_2_i_reg_588_pp0_iter9_reg;
reg   [63:0] mul8_2_i_reg_588_pp0_iter10_reg;
reg   [63:0] mul8_2_i_reg_588_pp0_iter11_reg;
reg   [63:0] mul8_2_i_reg_588_pp0_iter12_reg;
reg   [63:0] mul8_1_1_i_reg_593;
reg   [63:0] mul8_1_1_i_reg_593_pp0_iter5_reg;
reg   [63:0] mul8_1_1_i_reg_593_pp0_iter6_reg;
reg   [63:0] mul8_1_1_i_reg_593_pp0_iter7_reg;
reg   [63:0] mul8_1_1_i_reg_593_pp0_iter8_reg;
reg   [63:0] mul8_1_2_i_reg_598;
reg   [63:0] mul8_1_2_i_reg_598_pp0_iter5_reg;
reg   [63:0] mul8_1_2_i_reg_598_pp0_iter6_reg;
reg   [63:0] mul8_1_2_i_reg_598_pp0_iter7_reg;
reg   [63:0] mul8_1_2_i_reg_598_pp0_iter8_reg;
reg   [63:0] mul8_1_2_i_reg_598_pp0_iter9_reg;
reg   [63:0] mul8_1_2_i_reg_598_pp0_iter10_reg;
reg   [63:0] mul8_1_2_i_reg_598_pp0_iter11_reg;
reg   [63:0] mul8_1_2_i_reg_598_pp0_iter12_reg;
reg   [63:0] add11_i2_reg_603;
reg   [63:0] add11_1_i2_reg_608;
reg   [63:0] add11_112_i_reg_613;
reg   [63:0] add11_1_1_i_reg_618;
wire   [63:0] zext_ln81_fu_445_p1;
reg   [63:0] zext_ln81_reg_623;
reg   [63:0] zext_ln81_reg_623_pp0_iter17_reg;
reg   [63:0] zext_ln81_reg_623_pp0_iter18_reg;
reg   [63:0] zext_ln81_reg_623_pp0_iter19_reg;
reg   [63:0] zext_ln81_reg_623_pp0_iter20_reg;
reg   [63:0] add11_2_i_reg_639;
reg   [63:0] dactivations2_load_reg_644;
reg   [63:0] add11_1_2_i_reg_649;
reg   [63:0] dactivations2_1_load_reg_654;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln85_fu_320_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln85_2_fu_368_p1;
wire   [63:0] zext_ln85_1_fu_395_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln85_3_fu_399_p1;
wire   [63:0] zext_ln85_4_fu_403_p1;
reg   [6:0] i_fu_80;
wire   [6:0] add_ln82_fu_407_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_9;
reg    weights3_0_ce0_local;
reg   [6:0] weights3_0_address0_local;
reg    weights3_0_ce1_local;
reg    weights3_1_ce1_local;
reg    weights3_1_ce0_local;
reg   [6:0] weights3_1_address0_local;
reg    dactivations2_ce0_local;
reg    dactivations2_1_ce0_local;
reg    oracle_activations2_we0_local;
reg    oracle_activations2_ce0_local;
reg    oracle_activations2_1_we0_local;
reg    oracle_activations2_1_ce0_local;
reg   [63:0] grp_fu_220_p0;
reg   [63:0] grp_fu_220_p1;
reg   [63:0] grp_fu_225_p0;
reg   [63:0] grp_fu_225_p1;
reg   [63:0] grp_fu_230_p0;
reg   [63:0] grp_fu_230_p1;
reg   [63:0] grp_fu_234_p0;
reg   [63:0] grp_fu_234_p1;
reg   [63:0] grp_fu_238_p1;
reg   [63:0] grp_fu_242_p0;
reg   [63:0] grp_fu_242_p1;
reg   [63:0] grp_fu_246_p0;
reg   [63:0] grp_fu_246_p1;
wire   [4:0] tmp_67_fu_296_p4;
wire   [6:0] p_shl4_fu_306_p3;
wire   [6:0] zext_ln81_1_fu_292_p1;
wire   [6:0] sub_ln85_fu_314_p2;
wire   [5:0] or_ln7_fu_332_p3;
wire   [7:0] p_shl_fu_344_p3;
wire   [7:0] zext_ln83_fu_340_p1;
wire   [7:0] empty_fu_352_p2;
wire   [6:0] lshr_ln2_fu_358_p4;
wire   [7:0] add_ln85_1_fu_373_p2;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter20_stage0;
reg    ap_idle_pp0_0to19;
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
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to21;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
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
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_80 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter21 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_80 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_479 == 1'd0))) begin
        i_fu_80 <= add_ln82_fu_407_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_250 <= weights3_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_250 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_255 <= weights3_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_255 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_112_i_reg_613 <= grp_fu_3163_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_1_1_i_reg_618 <= grp_fu_3155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_1_2_i_reg_649 <= grp_fu_3163_p_dout0;
        add11_2_i_reg_639 <= grp_fu_3159_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_i2_reg_608 <= grp_fu_3159_p_dout0;
        add11_i2_reg_603 <= grp_fu_3155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln85_2_reg_508 <= add_ln85_2_fu_389_p2;
        add_ln85_reg_498 <= add_ln85_fu_326_p2;
        i_9_reg_474 <= ap_sig_allocacmp_i_9;
        lshr_ln85_1_reg_503 <= {{add_ln85_1_fu_373_p2[7:1]}};
        lshr_ln_reg_483 <= {{ap_sig_allocacmp_i_9[6:1]}};
        lshr_ln_reg_483_pp0_iter10_reg <= lshr_ln_reg_483_pp0_iter9_reg;
        lshr_ln_reg_483_pp0_iter11_reg <= lshr_ln_reg_483_pp0_iter10_reg;
        lshr_ln_reg_483_pp0_iter12_reg <= lshr_ln_reg_483_pp0_iter11_reg;
        lshr_ln_reg_483_pp0_iter13_reg <= lshr_ln_reg_483_pp0_iter12_reg;
        lshr_ln_reg_483_pp0_iter14_reg <= lshr_ln_reg_483_pp0_iter13_reg;
        lshr_ln_reg_483_pp0_iter15_reg <= lshr_ln_reg_483_pp0_iter14_reg;
        lshr_ln_reg_483_pp0_iter1_reg <= lshr_ln_reg_483;
        lshr_ln_reg_483_pp0_iter2_reg <= lshr_ln_reg_483_pp0_iter1_reg;
        lshr_ln_reg_483_pp0_iter3_reg <= lshr_ln_reg_483_pp0_iter2_reg;
        lshr_ln_reg_483_pp0_iter4_reg <= lshr_ln_reg_483_pp0_iter3_reg;
        lshr_ln_reg_483_pp0_iter5_reg <= lshr_ln_reg_483_pp0_iter4_reg;
        lshr_ln_reg_483_pp0_iter6_reg <= lshr_ln_reg_483_pp0_iter5_reg;
        lshr_ln_reg_483_pp0_iter7_reg <= lshr_ln_reg_483_pp0_iter6_reg;
        lshr_ln_reg_483_pp0_iter8_reg <= lshr_ln_reg_483_pp0_iter7_reg;
        lshr_ln_reg_483_pp0_iter9_reg <= lshr_ln_reg_483_pp0_iter8_reg;
        mul8_111_i_reg_578_pp0_iter5_reg <= mul8_111_i_reg_578;
        mul8_111_i_reg_578_pp0_iter6_reg <= mul8_111_i_reg_578_pp0_iter5_reg;
        mul8_111_i_reg_578_pp0_iter7_reg <= mul8_111_i_reg_578_pp0_iter6_reg;
        mul8_111_i_reg_578_pp0_iter8_reg <= mul8_111_i_reg_578_pp0_iter7_reg;
        tmp_reg_479 <= ap_sig_allocacmp_i_9[32'd6];
        tmp_reg_479_pp0_iter10_reg <= tmp_reg_479_pp0_iter9_reg;
        tmp_reg_479_pp0_iter11_reg <= tmp_reg_479_pp0_iter10_reg;
        tmp_reg_479_pp0_iter12_reg <= tmp_reg_479_pp0_iter11_reg;
        tmp_reg_479_pp0_iter13_reg <= tmp_reg_479_pp0_iter12_reg;
        tmp_reg_479_pp0_iter14_reg <= tmp_reg_479_pp0_iter13_reg;
        tmp_reg_479_pp0_iter15_reg <= tmp_reg_479_pp0_iter14_reg;
        tmp_reg_479_pp0_iter16_reg <= tmp_reg_479_pp0_iter15_reg;
        tmp_reg_479_pp0_iter17_reg <= tmp_reg_479_pp0_iter16_reg;
        tmp_reg_479_pp0_iter18_reg <= tmp_reg_479_pp0_iter17_reg;
        tmp_reg_479_pp0_iter19_reg <= tmp_reg_479_pp0_iter18_reg;
        tmp_reg_479_pp0_iter1_reg <= tmp_reg_479;
        tmp_reg_479_pp0_iter2_reg <= tmp_reg_479_pp0_iter1_reg;
        tmp_reg_479_pp0_iter3_reg <= tmp_reg_479_pp0_iter2_reg;
        tmp_reg_479_pp0_iter4_reg <= tmp_reg_479_pp0_iter3_reg;
        tmp_reg_479_pp0_iter5_reg <= tmp_reg_479_pp0_iter4_reg;
        tmp_reg_479_pp0_iter6_reg <= tmp_reg_479_pp0_iter5_reg;
        tmp_reg_479_pp0_iter7_reg <= tmp_reg_479_pp0_iter6_reg;
        tmp_reg_479_pp0_iter8_reg <= tmp_reg_479_pp0_iter7_reg;
        tmp_reg_479_pp0_iter9_reg <= tmp_reg_479_pp0_iter8_reg;
        zext_ln81_reg_623[5 : 0] <= zext_ln81_fu_445_p1[5 : 0];
        zext_ln81_reg_623_pp0_iter17_reg[5 : 0] <= zext_ln81_reg_623[5 : 0];
        zext_ln81_reg_623_pp0_iter18_reg[5 : 0] <= zext_ln81_reg_623_pp0_iter17_reg[5 : 0];
        zext_ln81_reg_623_pp0_iter19_reg[5 : 0] <= zext_ln81_reg_623_pp0_iter18_reg[5 : 0];
        zext_ln81_reg_623_pp0_iter20_reg[5 : 0] <= zext_ln81_reg_623_pp0_iter19_reg[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations2_1_load_reg_654 <= dactivations2_1_q0;
        dactivations2_load_reg_644 <= dactivations2_q0;
        mul8_1_1_i_reg_593_pp0_iter5_reg <= mul8_1_1_i_reg_593;
        mul8_1_1_i_reg_593_pp0_iter6_reg <= mul8_1_1_i_reg_593_pp0_iter5_reg;
        mul8_1_1_i_reg_593_pp0_iter7_reg <= mul8_1_1_i_reg_593_pp0_iter6_reg;
        mul8_1_1_i_reg_593_pp0_iter8_reg <= mul8_1_1_i_reg_593_pp0_iter7_reg;
        mul8_1_2_i_reg_598_pp0_iter10_reg <= mul8_1_2_i_reg_598_pp0_iter9_reg;
        mul8_1_2_i_reg_598_pp0_iter11_reg <= mul8_1_2_i_reg_598_pp0_iter10_reg;
        mul8_1_2_i_reg_598_pp0_iter12_reg <= mul8_1_2_i_reg_598_pp0_iter11_reg;
        mul8_1_2_i_reg_598_pp0_iter5_reg <= mul8_1_2_i_reg_598;
        mul8_1_2_i_reg_598_pp0_iter6_reg <= mul8_1_2_i_reg_598_pp0_iter5_reg;
        mul8_1_2_i_reg_598_pp0_iter7_reg <= mul8_1_2_i_reg_598_pp0_iter6_reg;
        mul8_1_2_i_reg_598_pp0_iter8_reg <= mul8_1_2_i_reg_598_pp0_iter7_reg;
        mul8_1_2_i_reg_598_pp0_iter9_reg <= mul8_1_2_i_reg_598_pp0_iter8_reg;
        mul8_2_i_reg_588_pp0_iter10_reg <= mul8_2_i_reg_588_pp0_iter9_reg;
        mul8_2_i_reg_588_pp0_iter11_reg <= mul8_2_i_reg_588_pp0_iter10_reg;
        mul8_2_i_reg_588_pp0_iter12_reg <= mul8_2_i_reg_588_pp0_iter11_reg;
        mul8_2_i_reg_588_pp0_iter5_reg <= mul8_2_i_reg_588;
        mul8_2_i_reg_588_pp0_iter6_reg <= mul8_2_i_reg_588_pp0_iter5_reg;
        mul8_2_i_reg_588_pp0_iter7_reg <= mul8_2_i_reg_588_pp0_iter6_reg;
        mul8_2_i_reg_588_pp0_iter8_reg <= mul8_2_i_reg_588_pp0_iter7_reg;
        mul8_2_i_reg_588_pp0_iter9_reg <= mul8_2_i_reg_588_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_111_i_reg_578 <= grp_fu_3171_p_dout0;
        mul8_1_i2_reg_583 <= grp_fu_3175_p_dout0;
        mul8_i2_reg_573 <= grp_fu_1780_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_1_1_i_reg_593 <= grp_fu_3171_p_dout0;
        mul8_1_2_i_reg_598 <= grp_fu_3175_p_dout0;
        mul8_2_i_reg_588 <= grp_fu_1780_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_260 <= grp_fu_3179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_load_96_reg_553 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_load_95_reg_523 <= weights3_1_q0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_479 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter20 == 1'b1) & (tmp_reg_479_pp0_iter19_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter20_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter20_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to19 = 1'b1;
    end else begin
        ap_idle_pp0_0to19 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to21 = 1'b1;
    end else begin
        ap_idle_pp0_1to21 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_9 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_9 = i_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations2_1_ce0_local = 1'b1;
    end else begin
        dactivations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations2_ce0_local = 1'b1;
    end else begin
        dactivations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_220_p0 = add11_1_i2_reg_608;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_220_p0 = mul8_i2_reg_573;
    end else begin
        grp_fu_220_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_220_p1 = mul8_1_1_i_reg_593_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_220_p1 = 64'd0;
    end else begin
        grp_fu_220_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_225_p0 = add11_112_i_reg_613;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_225_p0 = mul8_1_i2_reg_583;
    end else begin
        grp_fu_225_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_225_p1 = mul8_2_i_reg_588_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_225_p1 = 64'd0;
    end else begin
        grp_fu_225_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_230_p0 = add11_1_1_i_reg_618;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_230_p0 = add11_i2_reg_603;
    end else begin
        grp_fu_230_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_230_p1 = mul8_1_2_i_reg_598_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_230_p1 = mul8_111_i_reg_578_pp0_iter8_reg;
    end else begin
        grp_fu_230_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_234_p0 = p_reload;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_234_p0 = p_reload86;
        end else begin
            grp_fu_234_p0 = 'bx;
        end
    end else begin
        grp_fu_234_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_234_p1 = bitcast_ln85_2_fu_431_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_234_p1 = bitcast_ln85_fu_417_p1;
        end else begin
            grp_fu_234_p1 = 'bx;
        end
    end else begin
        grp_fu_234_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_238_p1 = bitcast_ln85_4_fu_436_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_238_p1 = bitcast_ln85_1_fu_422_p1;
        end else begin
            grp_fu_238_p1 = 'bx;
        end
    end else begin
        grp_fu_238_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_242_p0 = p_reload;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_242_p0 = p_reload86;
        end else begin
            grp_fu_242_p0 = 'bx;
        end
    end else begin
        grp_fu_242_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_242_p1 = bitcast_ln85_5_fu_440_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_242_p1 = bitcast_ln85_3_fu_427_p1;
        end else begin
            grp_fu_242_p1 = 'bx;
        end
    end else begin
        grp_fu_242_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter17 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_246_p0 = add11_1_2_i_reg_649;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_246_p0 = add11_2_i_reg_639;
        end else begin
            grp_fu_246_p0 = 'bx;
        end
    end else begin
        grp_fu_246_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter17 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_246_p1 = dactivations2_1_load_reg_654;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_246_p1 = dactivations2_load_reg_644;
        end else begin
            grp_fu_246_p1 = 'bx;
        end
    end else begin
        grp_fu_246_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_1_ce0_local = 1'b1;
    end else begin
        oracle_activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_1_we0_local = 1'b1;
    end else begin
        oracle_activations2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations2_we0_local = 1'b1;
    end else begin
        oracle_activations2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address0_local = zext_ln85_3_fu_399_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address0_local = zext_ln85_fu_320_p1;
        end else begin
            weights3_0_address0_local = 'bx;
        end
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address0_local = zext_ln85_4_fu_403_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address0_local = zext_ln85_2_fu_368_p1;
        end else begin
            weights3_1_address0_local = 'bx;
        end
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to19 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter20_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to21 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln82_fu_407_p2 = (i_9_reg_474 + 7'd2);
assign add_ln85_1_fu_373_p2 = (empty_fu_352_p2 + 8'd1);
assign add_ln85_2_fu_389_p2 = (lshr_ln2_fu_358_p4 + 7'd1);
assign add_ln85_fu_326_p2 = (sub_ln85_fu_314_p2 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln85_1_fu_422_p1 = reg_255;
assign bitcast_ln85_2_fu_431_p1 = reg_250;
assign bitcast_ln85_3_fu_427_p1 = weights3_1_load_95_reg_523;
assign bitcast_ln85_4_fu_436_p1 = weights3_0_load_96_reg_553;
assign bitcast_ln85_5_fu_440_p1 = reg_255;
assign bitcast_ln85_fu_417_p1 = reg_250;
assign dactivations2_1_address0 = zext_ln81_fu_445_p1;
assign dactivations2_1_ce0 = dactivations2_1_ce0_local;
assign dactivations2_address0 = zext_ln81_fu_445_p1;
assign dactivations2_ce0 = dactivations2_ce0_local;
assign empty_fu_352_p2 = (p_shl_fu_344_p3 - zext_ln83_fu_340_p1);
assign grp_fu_1780_p_ce = 1'b1;
assign grp_fu_1780_p_din0 = grp_fu_234_p0;
assign grp_fu_1780_p_din1 = grp_fu_234_p1;
assign grp_fu_3155_p_ce = 1'b1;
assign grp_fu_3155_p_din0 = grp_fu_220_p0;
assign grp_fu_3155_p_din1 = grp_fu_220_p1;
assign grp_fu_3155_p_opcode = 2'd0;
assign grp_fu_3159_p_ce = 1'b1;
assign grp_fu_3159_p_din0 = grp_fu_225_p0;
assign grp_fu_3159_p_din1 = grp_fu_225_p1;
assign grp_fu_3159_p_opcode = 2'd0;
assign grp_fu_3163_p_ce = 1'b1;
assign grp_fu_3163_p_din0 = grp_fu_230_p0;
assign grp_fu_3163_p_din1 = grp_fu_230_p1;
assign grp_fu_3163_p_opcode = 2'd0;
assign grp_fu_3171_p_ce = 1'b1;
assign grp_fu_3171_p_din0 = p_reload85;
assign grp_fu_3171_p_din1 = grp_fu_238_p1;
assign grp_fu_3175_p_ce = 1'b1;
assign grp_fu_3175_p_din0 = grp_fu_242_p0;
assign grp_fu_3175_p_din1 = grp_fu_242_p1;
assign grp_fu_3179_p_ce = 1'b1;
assign grp_fu_3179_p_din0 = grp_fu_246_p0;
assign grp_fu_3179_p_din1 = grp_fu_246_p1;
assign lshr_ln2_fu_358_p4 = {{empty_fu_352_p2[7:1]}};
assign lshr_ln_fu_282_p4 = {{ap_sig_allocacmp_i_9[6:1]}};
assign or_ln7_fu_332_p3 = {{tmp_67_fu_296_p4}, {1'd1}};
assign oracle_activations2_1_address0 = zext_ln81_reg_623_pp0_iter20_reg;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_1_d0 = reg_260;
assign oracle_activations2_1_we0 = oracle_activations2_1_we0_local;
assign oracle_activations2_address0 = zext_ln81_reg_623_pp0_iter20_reg;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign oracle_activations2_d0 = reg_260;
assign oracle_activations2_we0 = oracle_activations2_we0_local;
assign p_shl4_fu_306_p3 = {{tmp_67_fu_296_p4}, {2'd0}};
assign p_shl_fu_344_p3 = {{tmp_67_fu_296_p4}, {3'd4}};
assign sub_ln85_fu_314_p2 = (p_shl4_fu_306_p3 - zext_ln81_1_fu_292_p1);
assign tmp_67_fu_296_p4 = {{ap_sig_allocacmp_i_9[5:1]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = zext_ln85_1_fu_395_p1;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = zext_ln85_fu_320_p1;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign zext_ln81_1_fu_292_p1 = lshr_ln_fu_282_p4;
assign zext_ln81_fu_445_p1 = lshr_ln_reg_483_pp0_iter15_reg;
assign zext_ln83_fu_340_p1 = or_ln7_fu_332_p3;
assign zext_ln85_1_fu_395_p1 = add_ln85_reg_498;
assign zext_ln85_2_fu_368_p1 = lshr_ln2_fu_358_p4;
assign zext_ln85_3_fu_399_p1 = lshr_ln85_1_reg_503;
assign zext_ln85_4_fu_403_p1 = add_ln85_2_reg_508;
assign zext_ln85_fu_320_p1 = sub_ln85_fu_314_p2;
always @ (posedge ap_clk) begin
    zext_ln81_reg_623[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_623_pp0_iter17_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_623_pp0_iter18_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_623_pp0_iter19_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_623_pp0_iter20_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 
