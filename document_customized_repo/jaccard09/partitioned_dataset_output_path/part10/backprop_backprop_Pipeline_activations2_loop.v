
module backprop_backprop_Pipeline_activations2_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_we0,oracle_activations2_d0,weights3_address0,weights3_ce0,weights3_q0,weights3_address1,weights3_ce1,weights3_q1,p_reload114,p_reload113,p_reload,dactivations2_address0,dactivations2_ce0,dactivations2_q0,dactivations2_address1,dactivations2_ce1,dactivations2_q1,grp_fu_2816_p_din0,grp_fu_2816_p_din1,grp_fu_2816_p_opcode,grp_fu_2816_p_dout0,grp_fu_2816_p_ce,grp_fu_2820_p_din0,grp_fu_2820_p_din1,grp_fu_2820_p_opcode,grp_fu_2820_p_dout0,grp_fu_2820_p_ce,grp_fu_2824_p_din0,grp_fu_2824_p_din1,grp_fu_2824_p_dout0,grp_fu_2824_p_ce,grp_fu_2828_p_din0,grp_fu_2828_p_din1,grp_fu_2828_p_dout0,grp_fu_2828_p_ce,grp_fu_2852_p_din0,grp_fu_2852_p_din1,grp_fu_2852_p_dout0,grp_fu_2852_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] oracle_activations2_address0;
output   oracle_activations2_ce0;
output   oracle_activations2_we0;
output  [63:0] oracle_activations2_d0;
output  [7:0] weights3_address0;
output   weights3_ce0;
input  [63:0] weights3_q0;
output  [7:0] weights3_address1;
output   weights3_ce1;
input  [63:0] weights3_q1;
input  [63:0] p_reload114;
input  [63:0] p_reload113;
input  [63:0] p_reload;
output  [5:0] dactivations2_address0;
output   dactivations2_ce0;
input  [63:0] dactivations2_q0;
output  [5:0] dactivations2_address1;
output   dactivations2_ce1;
input  [63:0] dactivations2_q1;
output  [63:0] grp_fu_2816_p_din0;
output  [63:0] grp_fu_2816_p_din1;
output  [0:0] grp_fu_2816_p_opcode;
input  [63:0] grp_fu_2816_p_dout0;
output   grp_fu_2816_p_ce;
output  [63:0] grp_fu_2820_p_din0;
output  [63:0] grp_fu_2820_p_din1;
output  [0:0] grp_fu_2820_p_opcode;
input  [63:0] grp_fu_2820_p_dout0;
output   grp_fu_2820_p_ce;
output  [63:0] grp_fu_2824_p_din0;
output  [63:0] grp_fu_2824_p_din1;
input  [63:0] grp_fu_2824_p_dout0;
output   grp_fu_2824_p_ce;
output  [63:0] grp_fu_2828_p_din0;
output  [63:0] grp_fu_2828_p_din1;
input  [63:0] grp_fu_2828_p_dout0;
output   grp_fu_2828_p_ce;
output  [63:0] grp_fu_2852_p_din0;
output  [63:0] grp_fu_2852_p_din1;
input  [63:0] grp_fu_2852_p_dout0;
output   grp_fu_2852_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_435;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_220;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_224;
reg   [63:0] reg_228;
reg   [6:0] i_9_reg_428;
reg   [6:0] i_9_reg_428_pp0_iter1_reg;
reg   [6:0] i_9_reg_428_pp0_iter2_reg;
reg   [6:0] i_9_reg_428_pp0_iter3_reg;
reg   [6:0] i_9_reg_428_pp0_iter4_reg;
reg   [6:0] i_9_reg_428_pp0_iter5_reg;
reg   [6:0] i_9_reg_428_pp0_iter6_reg;
reg   [6:0] i_9_reg_428_pp0_iter7_reg;
reg   [6:0] i_9_reg_428_pp0_iter8_reg;
reg   [6:0] i_9_reg_428_pp0_iter9_reg;
wire   [7:0] sub_ln85_fu_265_p2;
reg   [7:0] sub_ln85_reg_439;
wire   [63:0] bitcast_ln85_fu_319_p1;
wire   [63:0] bitcast_ln85_1_fu_324_p1;
wire   [63:0] bitcast_ln85_3_fu_359_p1;
wire   [63:0] bitcast_ln85_4_fu_364_p1;
wire   [63:0] bitcast_ln85_2_fu_369_p1;
wire   [63:0] bitcast_ln85_5_fu_374_p1;
reg   [63:0] mul8_i2_reg_507;
reg   [63:0] mul8_111_i_reg_512;
reg   [63:0] mul8_111_i_reg_512_pp0_iter3_reg;
reg   [63:0] mul8_111_i_reg_512_pp0_iter4_reg;
reg   [63:0] mul8_1_i2_reg_517;
reg   [63:0] mul8_1_1_i_reg_522;
reg   [63:0] mul8_1_1_i_reg_522_pp0_iter4_reg;
reg   [63:0] mul8_1_1_i_reg_522_pp0_iter5_reg;
reg   [63:0] mul8_2_i_reg_527;
reg   [63:0] mul8_2_i_reg_527_pp0_iter4_reg;
reg   [63:0] mul8_2_i_reg_527_pp0_iter5_reg;
reg   [63:0] mul8_2_i_reg_527_pp0_iter6_reg;
reg   [63:0] mul8_2_i_reg_527_pp0_iter7_reg;
reg   [63:0] mul8_1_2_i_reg_532;
reg   [63:0] mul8_1_2_i_reg_532_pp0_iter4_reg;
reg   [63:0] mul8_1_2_i_reg_532_pp0_iter5_reg;
reg   [63:0] mul8_1_2_i_reg_532_pp0_iter6_reg;
reg   [63:0] mul8_1_2_i_reg_532_pp0_iter7_reg;
reg   [63:0] mul8_1_2_i_reg_532_pp0_iter8_reg;
reg   [63:0] add11_i2_reg_537;
reg   [63:0] add11_1_i2_reg_542;
reg   [63:0] add11_112_i_reg_547;
reg   [63:0] add11_1_1_i_reg_552;
wire   [63:0] zext_ln82_fu_379_p1;
reg   [63:0] zext_ln82_reg_557;
reg   [63:0] zext_ln82_reg_557_pp0_iter11_reg;
reg   [63:0] zext_ln82_reg_557_pp0_iter12_reg;
reg   [63:0] zext_ln82_reg_557_pp0_iter13_reg;
wire   [63:0] zext_ln83_fu_400_p1;
reg   [63:0] zext_ln83_reg_567;
reg   [63:0] zext_ln83_reg_567_pp0_iter11_reg;
reg   [63:0] zext_ln83_reg_567_pp0_iter12_reg;
reg   [63:0] zext_ln83_reg_567_pp0_iter13_reg;
reg   [63:0] dactivations2_load_reg_577;
reg   [63:0] dactivations2_load_1_reg_582;
reg   [63:0] add11_2_i_reg_587;
reg   [63:0] add11_1_2_i_reg_592;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln85_fu_271_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln85_1_fu_294_p1;
wire   [63:0] zext_ln85_3_fu_304_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln85_4_fu_314_p1;
wire   [63:0] zext_ln85_2_fu_334_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln85_5_fu_344_p1;
reg   [6:0] i_fu_74;
wire   [6:0] add_ln82_fu_349_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_9;
reg    weights3_ce1_local;
reg   [7:0] weights3_address1_local;
reg    weights3_ce0_local;
reg   [7:0] weights3_address0_local;
reg    dactivations2_ce1_local;
reg    dactivations2_ce0_local;
reg    oracle_activations2_we0_local;
reg    oracle_activations2_ce0_local;
reg   [5:0] oracle_activations2_address0_local;
reg   [63:0] grp_fu_199_p0;
reg   [63:0] grp_fu_199_p1;
reg   [63:0] grp_fu_204_p0;
reg   [63:0] grp_fu_204_p1;
reg   [63:0] grp_fu_208_p0;
reg   [63:0] grp_fu_208_p1;
reg   [63:0] grp_fu_212_p0;
reg   [63:0] grp_fu_212_p1;
reg   [63:0] grp_fu_216_p0;
reg   [63:0] grp_fu_216_p1;
wire   [5:0] trunc_ln85_fu_253_p1;
wire   [7:0] p_shl_fu_257_p3;
wire   [7:0] zext_ln37_fu_249_p1;
wire   [6:0] tmp_s_fu_276_p4;
wire   [7:0] or_ln_fu_286_p3;
wire   [7:0] empty_fu_299_p2;
wire   [7:0] add_ln85_1_fu_309_p2;
wire   [7:0] add_ln85_fu_329_p2;
wire   [7:0] add_ln85_2_fu_339_p2;
wire   [4:0] tmp_14_fu_383_p4;
wire   [5:0] or_ln1_fu_392_p3;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
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
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to13;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_74 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_74 <= 7'd0;
    end else if (((tmp_reg_435 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_74 <= add_ln82_fu_349_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_112_i_reg_547 <= grp_fu_2816_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_1_1_i_reg_552 <= grp_fu_2820_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_2_i_reg_592 <= grp_fu_2820_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_1_i2_reg_542 <= grp_fu_2816_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_2_i_reg_587 <= grp_fu_2820_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_i2_reg_537 <= grp_fu_2816_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        mul8_111_i_reg_512_pp0_iter3_reg <= mul8_111_i_reg_512;
        mul8_111_i_reg_512_pp0_iter4_reg <= mul8_111_i_reg_512_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations2_load_1_reg_582 <= dactivations2_q0;
        dactivations2_load_reg_577 <= dactivations2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_9_reg_428 <= ap_sig_allocacmp_i_9;
        i_9_reg_428_pp0_iter1_reg <= i_9_reg_428;
        i_9_reg_428_pp0_iter2_reg <= i_9_reg_428_pp0_iter1_reg;
        i_9_reg_428_pp0_iter3_reg <= i_9_reg_428_pp0_iter2_reg;
        i_9_reg_428_pp0_iter4_reg <= i_9_reg_428_pp0_iter3_reg;
        i_9_reg_428_pp0_iter5_reg <= i_9_reg_428_pp0_iter4_reg;
        i_9_reg_428_pp0_iter6_reg <= i_9_reg_428_pp0_iter5_reg;
        i_9_reg_428_pp0_iter7_reg <= i_9_reg_428_pp0_iter6_reg;
        i_9_reg_428_pp0_iter8_reg <= i_9_reg_428_pp0_iter7_reg;
        i_9_reg_428_pp0_iter9_reg <= i_9_reg_428_pp0_iter8_reg;
        mul8_1_1_i_reg_522_pp0_iter4_reg <= mul8_1_1_i_reg_522;
        mul8_1_1_i_reg_522_pp0_iter5_reg <= mul8_1_1_i_reg_522_pp0_iter4_reg;
        sub_ln85_reg_439 <= sub_ln85_fu_265_p2;
        tmp_reg_435 <= ap_sig_allocacmp_i_9[32'd6];
        zext_ln82_reg_557[6 : 0] <= zext_ln82_fu_379_p1[6 : 0];
        zext_ln82_reg_557_pp0_iter11_reg[6 : 0] <= zext_ln82_reg_557[6 : 0];
        zext_ln82_reg_557_pp0_iter12_reg[6 : 0] <= zext_ln82_reg_557_pp0_iter11_reg[6 : 0];
        zext_ln82_reg_557_pp0_iter13_reg[6 : 0] <= zext_ln82_reg_557_pp0_iter12_reg[6 : 0];
        zext_ln83_reg_567[5 : 1] <= zext_ln83_fu_400_p1[5 : 1];
        zext_ln83_reg_567_pp0_iter11_reg[5 : 1] <= zext_ln83_reg_567[5 : 1];
        zext_ln83_reg_567_pp0_iter12_reg[5 : 1] <= zext_ln83_reg_567_pp0_iter11_reg[5 : 1];
        zext_ln83_reg_567_pp0_iter13_reg[5 : 1] <= zext_ln83_reg_567_pp0_iter12_reg[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_111_i_reg_512 <= grp_fu_2828_p_dout0;
        mul8_i2_reg_507 <= grp_fu_2824_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_1_1_i_reg_522 <= grp_fu_2828_p_dout0;
        mul8_1_i2_reg_517 <= grp_fu_2824_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_1_2_i_reg_532 <= grp_fu_2828_p_dout0;
        mul8_2_i_reg_527 <= grp_fu_2824_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_1_2_i_reg_532_pp0_iter4_reg <= mul8_1_2_i_reg_532;
        mul8_1_2_i_reg_532_pp0_iter5_reg <= mul8_1_2_i_reg_532_pp0_iter4_reg;
        mul8_1_2_i_reg_532_pp0_iter6_reg <= mul8_1_2_i_reg_532_pp0_iter5_reg;
        mul8_1_2_i_reg_532_pp0_iter7_reg <= mul8_1_2_i_reg_532_pp0_iter6_reg;
        mul8_1_2_i_reg_532_pp0_iter8_reg <= mul8_1_2_i_reg_532_pp0_iter7_reg;
        mul8_2_i_reg_527_pp0_iter4_reg <= mul8_2_i_reg_527;
        mul8_2_i_reg_527_pp0_iter5_reg <= mul8_2_i_reg_527_pp0_iter4_reg;
        mul8_2_i_reg_527_pp0_iter6_reg <= mul8_2_i_reg_527_pp0_iter5_reg;
        mul8_2_i_reg_527_pp0_iter7_reg <= mul8_2_i_reg_527_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_220 <= weights3_q1;
        reg_224 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_228 <= grp_fu_2852_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_435 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to13 = 1'b1;
    end else begin
        ap_idle_pp0_1to13 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_9 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_9 = i_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations2_ce0_local = 1'b1;
    end else begin
        dactivations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations2_ce1_local = 1'b1;
    end else begin
        dactivations2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_199_p0 = add11_i2_reg_537;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_199_p0 = mul8_1_i2_reg_517;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_199_p0 = mul8_i2_reg_507;
    end else begin
        grp_fu_199_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_199_p1 = mul8_111_i_reg_512_pp0_iter4_reg;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_199_p1 = 64'd0;
    end else begin
        grp_fu_199_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_204_p0 = add11_1_1_i_reg_552;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_204_p0 = add11_112_i_reg_547;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_204_p0 = add11_1_i2_reg_542;
    end else begin
        grp_fu_204_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_204_p1 = mul8_1_2_i_reg_532_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_204_p1 = mul8_2_i_reg_527_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_204_p1 = mul8_1_1_i_reg_522_pp0_iter5_reg;
    end else begin
        grp_fu_204_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_208_p0 = p_reload;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_208_p0 = p_reload114;
    end else begin
        grp_fu_208_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_208_p1 = bitcast_ln85_2_fu_369_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_208_p1 = bitcast_ln85_3_fu_359_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_208_p1 = bitcast_ln85_fu_319_p1;
    end else begin
        grp_fu_208_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_212_p0 = p_reload;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_212_p0 = p_reload113;
    end else begin
        grp_fu_212_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_212_p1 = bitcast_ln85_5_fu_374_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_212_p1 = bitcast_ln85_4_fu_364_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_212_p1 = bitcast_ln85_1_fu_324_p1;
    end else begin
        grp_fu_212_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_216_p0 = add11_1_2_i_reg_592;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_216_p0 = add11_2_i_reg_587;
        end else begin
            grp_fu_216_p0 = 'bx;
        end
    end else begin
        grp_fu_216_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_216_p1 = dactivations2_load_1_reg_582;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_216_p1 = dactivations2_load_reg_577;
        end else begin
            grp_fu_216_p1 = 'bx;
        end
    end else begin
        grp_fu_216_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            oracle_activations2_address0_local = zext_ln83_reg_567_pp0_iter13_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            oracle_activations2_address0_local = zext_ln82_reg_557_pp0_iter13_reg;
        end else begin
            oracle_activations2_address0_local = 'bx;
        end
    end else begin
        oracle_activations2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations2_we0_local = 1'b1;
    end else begin
        oracle_activations2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_address0_local = zext_ln85_5_fu_344_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_address0_local = zext_ln85_4_fu_314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_address0_local = zext_ln85_1_fu_294_p1;
        end else begin
            weights3_address0_local = 'bx;
        end
    end else begin
        weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_address1_local = zext_ln85_2_fu_334_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_address1_local = zext_ln85_3_fu_304_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_address1_local = zext_ln85_fu_271_p1;
        end else begin
            weights3_address1_local = 'bx;
        end
    end else begin
        weights3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_ce0_local = 1'b1;
    end else begin
        weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_ce1_local = 1'b1;
    end else begin
        weights3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to13 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln82_fu_349_p2 = (i_9_reg_428 + 7'd2);
assign add_ln85_1_fu_309_p2 = (sub_ln85_reg_439 + 8'd4);
assign add_ln85_2_fu_339_p2 = (sub_ln85_reg_439 + 8'd5);
assign add_ln85_fu_329_p2 = (sub_ln85_reg_439 + 8'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign bitcast_ln85_1_fu_324_p1 = reg_224;
assign bitcast_ln85_2_fu_369_p1 = reg_220;
assign bitcast_ln85_3_fu_359_p1 = reg_220;
assign bitcast_ln85_4_fu_364_p1 = reg_224;
assign bitcast_ln85_5_fu_374_p1 = reg_224;
assign bitcast_ln85_fu_319_p1 = reg_220;
assign dactivations2_address0 = zext_ln83_fu_400_p1;
assign dactivations2_address1 = zext_ln82_fu_379_p1;
assign dactivations2_ce0 = dactivations2_ce0_local;
assign dactivations2_ce1 = dactivations2_ce1_local;
assign empty_fu_299_p2 = (sub_ln85_reg_439 + 8'd3);
assign grp_fu_2816_p_ce = 1'b1;
assign grp_fu_2816_p_din0 = grp_fu_199_p0;
assign grp_fu_2816_p_din1 = grp_fu_199_p1;
assign grp_fu_2816_p_opcode = 2'd0;
assign grp_fu_2820_p_ce = 1'b1;
assign grp_fu_2820_p_din0 = grp_fu_204_p0;
assign grp_fu_2820_p_din1 = grp_fu_204_p1;
assign grp_fu_2820_p_opcode = 2'd0;
assign grp_fu_2824_p_ce = 1'b1;
assign grp_fu_2824_p_din0 = grp_fu_208_p0;
assign grp_fu_2824_p_din1 = grp_fu_208_p1;
assign grp_fu_2828_p_ce = 1'b1;
assign grp_fu_2828_p_din0 = grp_fu_212_p0;
assign grp_fu_2828_p_din1 = grp_fu_212_p1;
assign grp_fu_2852_p_ce = 1'b1;
assign grp_fu_2852_p_din0 = grp_fu_216_p0;
assign grp_fu_2852_p_din1 = grp_fu_216_p1;
assign or_ln1_fu_392_p3 = {{tmp_14_fu_383_p4}, {1'd1}};
assign or_ln_fu_286_p3 = {{tmp_s_fu_276_p4}, {1'd1}};
assign oracle_activations2_address0 = oracle_activations2_address0_local;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign oracle_activations2_d0 = reg_228;
assign oracle_activations2_we0 = oracle_activations2_we0_local;
assign p_shl_fu_257_p3 = {{trunc_ln85_fu_253_p1}, {2'd0}};
assign sub_ln85_fu_265_p2 = (p_shl_fu_257_p3 - zext_ln37_fu_249_p1);
assign tmp_14_fu_383_p4 = {{i_9_reg_428_pp0_iter9_reg[5:1]}};
assign tmp_s_fu_276_p4 = {{sub_ln85_fu_265_p2[7:1]}};
assign trunc_ln85_fu_253_p1 = ap_sig_allocacmp_i_9[5:0];
assign weights3_address0 = weights3_address0_local;
assign weights3_address1 = weights3_address1_local;
assign weights3_ce0 = weights3_ce0_local;
assign weights3_ce1 = weights3_ce1_local;
assign zext_ln37_fu_249_p1 = ap_sig_allocacmp_i_9;
assign zext_ln82_fu_379_p1 = i_9_reg_428_pp0_iter9_reg;
assign zext_ln83_fu_400_p1 = or_ln1_fu_392_p3;
assign zext_ln85_1_fu_294_p1 = or_ln_fu_286_p3;
assign zext_ln85_2_fu_334_p1 = add_ln85_fu_329_p2;
assign zext_ln85_3_fu_304_p1 = empty_fu_299_p2;
assign zext_ln85_4_fu_314_p1 = add_ln85_1_fu_309_p2;
assign zext_ln85_5_fu_344_p1 = add_ln85_2_fu_339_p2;
assign zext_ln85_fu_271_p1 = sub_ln85_fu_265_p2;
always @ (posedge ap_clk) begin
    zext_ln82_reg_557[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln82_reg_557_pp0_iter11_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln82_reg_557_pp0_iter12_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln82_reg_557_pp0_iter13_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln83_reg_567[0] <= 1'b1;
    zext_ln83_reg_567[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_reg_567_pp0_iter11_reg[0] <= 1'b1;
    zext_ln83_reg_567_pp0_iter11_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_reg_567_pp0_iter12_reg[0] <= 1'b1;
    zext_ln83_reg_567_pp0_iter12_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_reg_567_pp0_iter13_reg[0] <= 1'b1;
    zext_ln83_reg_567_pp0_iter13_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 
