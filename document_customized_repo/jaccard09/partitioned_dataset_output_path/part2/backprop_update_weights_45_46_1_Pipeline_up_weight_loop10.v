
module backprop_update_weights_45_46_1_Pipeline_up_weight_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,norm_14);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [6:0] weights3_1_address1;
output   weights3_1_ce1;
output   weights3_1_we1;
output  [63:0] weights3_1_d1;
input  [63:0] weights3_1_q1;
output  [6:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [6:0] weights3_0_address1;
output   weights3_0_ce1;
output   weights3_0_we1;
output  [63:0] weights3_0_d1;
input  [63:0] weights3_0_q1;
input  [63:0] norm_14;
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
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_391;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_150;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_154;
wire   [63:0] grp_fu_142_p2;
reg   [63:0] reg_158;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_146_p2;
reg   [63:0] reg_162;
reg   [6:0] i_4_reg_386;
wire   [6:0] sub_ln194_fu_214_p2;
reg   [6:0] sub_ln194_reg_395;
reg   [6:0] weights3_0_addr_reg_400;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter6_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter7_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter8_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter9_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter10_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter11_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter12_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter13_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter14_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter15_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter16_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter17_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter18_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter19_reg;
reg   [6:0] weights3_0_addr_reg_400_pp0_iter20_reg;
wire   [6:0] lshr_ln194_1_fu_252_p4;
reg   [6:0] lshr_ln194_1_reg_405;
reg   [6:0] lshr_ln194_2_reg_410;
reg   [6:0] weights3_1_addr_reg_415;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter6_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter7_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter8_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter9_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter10_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter11_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter12_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter13_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter14_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter15_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter16_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter17_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter18_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter19_reg;
reg   [6:0] weights3_1_addr_reg_415_pp0_iter20_reg;
reg   [6:0] weights3_1_addr_3_reg_421;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter6_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter7_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter8_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter9_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter10_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter11_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter12_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter13_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter14_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter15_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter16_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter17_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter18_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter19_reg;
reg   [6:0] weights3_1_addr_3_reg_421_pp0_iter20_reg;
reg   [6:0] weights3_0_addr_3_reg_427;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter6_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter7_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter8_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter9_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter10_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter11_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter12_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter13_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter14_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter15_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter16_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter17_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter18_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter19_reg;
reg   [6:0] weights3_0_addr_3_reg_427_pp0_iter20_reg;
reg   [63:0] weights3_1_load_3_reg_433;
reg   [6:0] weights3_0_addr_4_reg_438;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter6_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter7_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter8_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter9_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter10_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter11_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter12_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter13_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter14_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter15_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter16_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter17_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter18_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter19_reg;
reg   [6:0] weights3_0_addr_4_reg_438_pp0_iter20_reg;
reg   [6:0] weights3_1_addr_4_reg_443;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter6_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter7_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter8_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter9_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter10_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter11_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter12_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter13_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter14_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter15_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter16_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter17_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter18_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter19_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter20_reg;
reg   [6:0] weights3_1_addr_4_reg_443_pp0_iter21_reg;
wire   [63:0] bitcast_ln194_fu_307_p1;
wire   [63:0] bitcast_ln194_1_fu_312_p1;
reg   [63:0] weights3_0_load_4_reg_459;
wire   [63:0] bitcast_ln194_2_fu_327_p1;
wire   [63:0] bitcast_ln194_3_fu_332_p1;
wire   [63:0] bitcast_ln194_4_fu_336_p1;
wire   [63:0] bitcast_ln194_5_fu_340_p1;
reg   [63:0] div213_2_reg_484;
reg   [63:0] div213_1_2_reg_489;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln194_fu_220_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_1_fu_262_p1;
wire   [63:0] zext_ln192_fu_288_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_2_fu_293_p1;
wire   [63:0] zext_ln194_3_fu_302_p1;
reg   [6:0] i_fu_66;
wire   [6:0] add_ln192_fu_317_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_4;
reg    weights3_0_ce1_local;
reg   [6:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [6:0] weights3_0_address0_local;
reg    weights3_0_we1_local;
wire   [63:0] bitcast_ln194_6_fu_350_p1;
wire    ap_block_pp0_stage2;
reg    weights3_0_we0_local;
reg   [63:0] weights3_0_d0_local;
wire   [63:0] bitcast_ln194_7_fu_355_p1;
wire   [63:0] bitcast_ln194_8_fu_364_p1;
reg    weights3_1_ce1_local;
reg   [6:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [6:0] weights3_1_address0_local;
reg    weights3_1_we0_local;
reg   [63:0] weights3_1_d0_local;
wire   [63:0] bitcast_ln194_9_fu_345_p1;
reg    weights3_1_we1_local;
wire   [63:0] bitcast_ln194_10_fu_359_p1;
wire   [63:0] bitcast_ln194_11_fu_369_p1;
reg   [63:0] grp_fu_142_p0;
reg   [63:0] grp_fu_146_p0;
wire   [5:0] lshr_ln7_fu_182_p4;
wire   [4:0] tmp_2_fu_196_p4;
wire   [6:0] p_shl2_fu_206_p3;
wire   [6:0] zext_ln194_4_fu_192_p1;
wire   [5:0] or_ln1_fu_226_p3;
wire   [7:0] p_shl_fu_238_p3;
wire   [7:0] or_ln192_cast_fu_234_p1;
wire   [7:0] empty_fu_246_p2;
wire   [7:0] add_ln194_1_fu_267_p2;
wire   [6:0] add_ln194_fu_283_p2;
wire   [6:0] add_ln194_2_fu_297_p2;
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
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to21;
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
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_66 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U284(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_142_p0),.din1(norm_14),.ce(1'b1),.dout(grp_fu_142_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U285(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_146_p0),.din1(norm_14),.ce(1'b1),.dout(grp_fu_146_p2));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
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
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
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
        i_fu_66 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_391 == 1'd0))) begin
        i_fu_66 <= add_ln192_fu_317_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div213_1_2_reg_489 <= grp_fu_146_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        div213_2_reg_484 <= grp_fu_142_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_4_reg_386 <= ap_sig_allocacmp_i_4;
        lshr_ln194_1_reg_405 <= {{empty_fu_246_p2[7:1]}};
        lshr_ln194_2_reg_410 <= {{add_ln194_1_fu_267_p2[7:1]}};
        sub_ln194_reg_395 <= sub_ln194_fu_214_p2;
        tmp_reg_391 <= ap_sig_allocacmp_i_4[32'd6];
        weights3_0_addr_reg_400 <= zext_ln194_fu_220_p1;
        weights3_0_addr_reg_400_pp0_iter10_reg <= weights3_0_addr_reg_400_pp0_iter9_reg;
        weights3_0_addr_reg_400_pp0_iter11_reg <= weights3_0_addr_reg_400_pp0_iter10_reg;
        weights3_0_addr_reg_400_pp0_iter12_reg <= weights3_0_addr_reg_400_pp0_iter11_reg;
        weights3_0_addr_reg_400_pp0_iter13_reg <= weights3_0_addr_reg_400_pp0_iter12_reg;
        weights3_0_addr_reg_400_pp0_iter14_reg <= weights3_0_addr_reg_400_pp0_iter13_reg;
        weights3_0_addr_reg_400_pp0_iter15_reg <= weights3_0_addr_reg_400_pp0_iter14_reg;
        weights3_0_addr_reg_400_pp0_iter16_reg <= weights3_0_addr_reg_400_pp0_iter15_reg;
        weights3_0_addr_reg_400_pp0_iter17_reg <= weights3_0_addr_reg_400_pp0_iter16_reg;
        weights3_0_addr_reg_400_pp0_iter18_reg <= weights3_0_addr_reg_400_pp0_iter17_reg;
        weights3_0_addr_reg_400_pp0_iter19_reg <= weights3_0_addr_reg_400_pp0_iter18_reg;
        weights3_0_addr_reg_400_pp0_iter1_reg <= weights3_0_addr_reg_400;
        weights3_0_addr_reg_400_pp0_iter20_reg <= weights3_0_addr_reg_400_pp0_iter19_reg;
        weights3_0_addr_reg_400_pp0_iter2_reg <= weights3_0_addr_reg_400_pp0_iter1_reg;
        weights3_0_addr_reg_400_pp0_iter3_reg <= weights3_0_addr_reg_400_pp0_iter2_reg;
        weights3_0_addr_reg_400_pp0_iter4_reg <= weights3_0_addr_reg_400_pp0_iter3_reg;
        weights3_0_addr_reg_400_pp0_iter5_reg <= weights3_0_addr_reg_400_pp0_iter4_reg;
        weights3_0_addr_reg_400_pp0_iter6_reg <= weights3_0_addr_reg_400_pp0_iter5_reg;
        weights3_0_addr_reg_400_pp0_iter7_reg <= weights3_0_addr_reg_400_pp0_iter6_reg;
        weights3_0_addr_reg_400_pp0_iter8_reg <= weights3_0_addr_reg_400_pp0_iter7_reg;
        weights3_0_addr_reg_400_pp0_iter9_reg <= weights3_0_addr_reg_400_pp0_iter8_reg;
        weights3_1_addr_3_reg_421 <= zext_ln194_1_fu_262_p1;
        weights3_1_addr_3_reg_421_pp0_iter10_reg <= weights3_1_addr_3_reg_421_pp0_iter9_reg;
        weights3_1_addr_3_reg_421_pp0_iter11_reg <= weights3_1_addr_3_reg_421_pp0_iter10_reg;
        weights3_1_addr_3_reg_421_pp0_iter12_reg <= weights3_1_addr_3_reg_421_pp0_iter11_reg;
        weights3_1_addr_3_reg_421_pp0_iter13_reg <= weights3_1_addr_3_reg_421_pp0_iter12_reg;
        weights3_1_addr_3_reg_421_pp0_iter14_reg <= weights3_1_addr_3_reg_421_pp0_iter13_reg;
        weights3_1_addr_3_reg_421_pp0_iter15_reg <= weights3_1_addr_3_reg_421_pp0_iter14_reg;
        weights3_1_addr_3_reg_421_pp0_iter16_reg <= weights3_1_addr_3_reg_421_pp0_iter15_reg;
        weights3_1_addr_3_reg_421_pp0_iter17_reg <= weights3_1_addr_3_reg_421_pp0_iter16_reg;
        weights3_1_addr_3_reg_421_pp0_iter18_reg <= weights3_1_addr_3_reg_421_pp0_iter17_reg;
        weights3_1_addr_3_reg_421_pp0_iter19_reg <= weights3_1_addr_3_reg_421_pp0_iter18_reg;
        weights3_1_addr_3_reg_421_pp0_iter1_reg <= weights3_1_addr_3_reg_421;
        weights3_1_addr_3_reg_421_pp0_iter20_reg <= weights3_1_addr_3_reg_421_pp0_iter19_reg;
        weights3_1_addr_3_reg_421_pp0_iter2_reg <= weights3_1_addr_3_reg_421_pp0_iter1_reg;
        weights3_1_addr_3_reg_421_pp0_iter3_reg <= weights3_1_addr_3_reg_421_pp0_iter2_reg;
        weights3_1_addr_3_reg_421_pp0_iter4_reg <= weights3_1_addr_3_reg_421_pp0_iter3_reg;
        weights3_1_addr_3_reg_421_pp0_iter5_reg <= weights3_1_addr_3_reg_421_pp0_iter4_reg;
        weights3_1_addr_3_reg_421_pp0_iter6_reg <= weights3_1_addr_3_reg_421_pp0_iter5_reg;
        weights3_1_addr_3_reg_421_pp0_iter7_reg <= weights3_1_addr_3_reg_421_pp0_iter6_reg;
        weights3_1_addr_3_reg_421_pp0_iter8_reg <= weights3_1_addr_3_reg_421_pp0_iter7_reg;
        weights3_1_addr_3_reg_421_pp0_iter9_reg <= weights3_1_addr_3_reg_421_pp0_iter8_reg;
        weights3_1_addr_reg_415 <= zext_ln194_fu_220_p1;
        weights3_1_addr_reg_415_pp0_iter10_reg <= weights3_1_addr_reg_415_pp0_iter9_reg;
        weights3_1_addr_reg_415_pp0_iter11_reg <= weights3_1_addr_reg_415_pp0_iter10_reg;
        weights3_1_addr_reg_415_pp0_iter12_reg <= weights3_1_addr_reg_415_pp0_iter11_reg;
        weights3_1_addr_reg_415_pp0_iter13_reg <= weights3_1_addr_reg_415_pp0_iter12_reg;
        weights3_1_addr_reg_415_pp0_iter14_reg <= weights3_1_addr_reg_415_pp0_iter13_reg;
        weights3_1_addr_reg_415_pp0_iter15_reg <= weights3_1_addr_reg_415_pp0_iter14_reg;
        weights3_1_addr_reg_415_pp0_iter16_reg <= weights3_1_addr_reg_415_pp0_iter15_reg;
        weights3_1_addr_reg_415_pp0_iter17_reg <= weights3_1_addr_reg_415_pp0_iter16_reg;
        weights3_1_addr_reg_415_pp0_iter18_reg <= weights3_1_addr_reg_415_pp0_iter17_reg;
        weights3_1_addr_reg_415_pp0_iter19_reg <= weights3_1_addr_reg_415_pp0_iter18_reg;
        weights3_1_addr_reg_415_pp0_iter1_reg <= weights3_1_addr_reg_415;
        weights3_1_addr_reg_415_pp0_iter20_reg <= weights3_1_addr_reg_415_pp0_iter19_reg;
        weights3_1_addr_reg_415_pp0_iter2_reg <= weights3_1_addr_reg_415_pp0_iter1_reg;
        weights3_1_addr_reg_415_pp0_iter3_reg <= weights3_1_addr_reg_415_pp0_iter2_reg;
        weights3_1_addr_reg_415_pp0_iter4_reg <= weights3_1_addr_reg_415_pp0_iter3_reg;
        weights3_1_addr_reg_415_pp0_iter5_reg <= weights3_1_addr_reg_415_pp0_iter4_reg;
        weights3_1_addr_reg_415_pp0_iter6_reg <= weights3_1_addr_reg_415_pp0_iter5_reg;
        weights3_1_addr_reg_415_pp0_iter7_reg <= weights3_1_addr_reg_415_pp0_iter6_reg;
        weights3_1_addr_reg_415_pp0_iter8_reg <= weights3_1_addr_reg_415_pp0_iter7_reg;
        weights3_1_addr_reg_415_pp0_iter9_reg <= weights3_1_addr_reg_415_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_150 <= weights3_0_q1;
        reg_154 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_158 <= grp_fu_142_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_162 <= grp_fu_146_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_addr_3_reg_427 <= zext_ln192_fu_288_p1;
        weights3_0_addr_3_reg_427_pp0_iter10_reg <= weights3_0_addr_3_reg_427_pp0_iter9_reg;
        weights3_0_addr_3_reg_427_pp0_iter11_reg <= weights3_0_addr_3_reg_427_pp0_iter10_reg;
        weights3_0_addr_3_reg_427_pp0_iter12_reg <= weights3_0_addr_3_reg_427_pp0_iter11_reg;
        weights3_0_addr_3_reg_427_pp0_iter13_reg <= weights3_0_addr_3_reg_427_pp0_iter12_reg;
        weights3_0_addr_3_reg_427_pp0_iter14_reg <= weights3_0_addr_3_reg_427_pp0_iter13_reg;
        weights3_0_addr_3_reg_427_pp0_iter15_reg <= weights3_0_addr_3_reg_427_pp0_iter14_reg;
        weights3_0_addr_3_reg_427_pp0_iter16_reg <= weights3_0_addr_3_reg_427_pp0_iter15_reg;
        weights3_0_addr_3_reg_427_pp0_iter17_reg <= weights3_0_addr_3_reg_427_pp0_iter16_reg;
        weights3_0_addr_3_reg_427_pp0_iter18_reg <= weights3_0_addr_3_reg_427_pp0_iter17_reg;
        weights3_0_addr_3_reg_427_pp0_iter19_reg <= weights3_0_addr_3_reg_427_pp0_iter18_reg;
        weights3_0_addr_3_reg_427_pp0_iter1_reg <= weights3_0_addr_3_reg_427;
        weights3_0_addr_3_reg_427_pp0_iter20_reg <= weights3_0_addr_3_reg_427_pp0_iter19_reg;
        weights3_0_addr_3_reg_427_pp0_iter2_reg <= weights3_0_addr_3_reg_427_pp0_iter1_reg;
        weights3_0_addr_3_reg_427_pp0_iter3_reg <= weights3_0_addr_3_reg_427_pp0_iter2_reg;
        weights3_0_addr_3_reg_427_pp0_iter4_reg <= weights3_0_addr_3_reg_427_pp0_iter3_reg;
        weights3_0_addr_3_reg_427_pp0_iter5_reg <= weights3_0_addr_3_reg_427_pp0_iter4_reg;
        weights3_0_addr_3_reg_427_pp0_iter6_reg <= weights3_0_addr_3_reg_427_pp0_iter5_reg;
        weights3_0_addr_3_reg_427_pp0_iter7_reg <= weights3_0_addr_3_reg_427_pp0_iter6_reg;
        weights3_0_addr_3_reg_427_pp0_iter8_reg <= weights3_0_addr_3_reg_427_pp0_iter7_reg;
        weights3_0_addr_3_reg_427_pp0_iter9_reg <= weights3_0_addr_3_reg_427_pp0_iter8_reg;
        weights3_0_addr_4_reg_438 <= zext_ln194_2_fu_293_p1;
        weights3_0_addr_4_reg_438_pp0_iter10_reg <= weights3_0_addr_4_reg_438_pp0_iter9_reg;
        weights3_0_addr_4_reg_438_pp0_iter11_reg <= weights3_0_addr_4_reg_438_pp0_iter10_reg;
        weights3_0_addr_4_reg_438_pp0_iter12_reg <= weights3_0_addr_4_reg_438_pp0_iter11_reg;
        weights3_0_addr_4_reg_438_pp0_iter13_reg <= weights3_0_addr_4_reg_438_pp0_iter12_reg;
        weights3_0_addr_4_reg_438_pp0_iter14_reg <= weights3_0_addr_4_reg_438_pp0_iter13_reg;
        weights3_0_addr_4_reg_438_pp0_iter15_reg <= weights3_0_addr_4_reg_438_pp0_iter14_reg;
        weights3_0_addr_4_reg_438_pp0_iter16_reg <= weights3_0_addr_4_reg_438_pp0_iter15_reg;
        weights3_0_addr_4_reg_438_pp0_iter17_reg <= weights3_0_addr_4_reg_438_pp0_iter16_reg;
        weights3_0_addr_4_reg_438_pp0_iter18_reg <= weights3_0_addr_4_reg_438_pp0_iter17_reg;
        weights3_0_addr_4_reg_438_pp0_iter19_reg <= weights3_0_addr_4_reg_438_pp0_iter18_reg;
        weights3_0_addr_4_reg_438_pp0_iter1_reg <= weights3_0_addr_4_reg_438;
        weights3_0_addr_4_reg_438_pp0_iter20_reg <= weights3_0_addr_4_reg_438_pp0_iter19_reg;
        weights3_0_addr_4_reg_438_pp0_iter2_reg <= weights3_0_addr_4_reg_438_pp0_iter1_reg;
        weights3_0_addr_4_reg_438_pp0_iter3_reg <= weights3_0_addr_4_reg_438_pp0_iter2_reg;
        weights3_0_addr_4_reg_438_pp0_iter4_reg <= weights3_0_addr_4_reg_438_pp0_iter3_reg;
        weights3_0_addr_4_reg_438_pp0_iter5_reg <= weights3_0_addr_4_reg_438_pp0_iter4_reg;
        weights3_0_addr_4_reg_438_pp0_iter6_reg <= weights3_0_addr_4_reg_438_pp0_iter5_reg;
        weights3_0_addr_4_reg_438_pp0_iter7_reg <= weights3_0_addr_4_reg_438_pp0_iter6_reg;
        weights3_0_addr_4_reg_438_pp0_iter8_reg <= weights3_0_addr_4_reg_438_pp0_iter7_reg;
        weights3_0_addr_4_reg_438_pp0_iter9_reg <= weights3_0_addr_4_reg_438_pp0_iter8_reg;
        weights3_1_addr_4_reg_443 <= zext_ln194_3_fu_302_p1;
        weights3_1_addr_4_reg_443_pp0_iter10_reg <= weights3_1_addr_4_reg_443_pp0_iter9_reg;
        weights3_1_addr_4_reg_443_pp0_iter11_reg <= weights3_1_addr_4_reg_443_pp0_iter10_reg;
        weights3_1_addr_4_reg_443_pp0_iter12_reg <= weights3_1_addr_4_reg_443_pp0_iter11_reg;
        weights3_1_addr_4_reg_443_pp0_iter13_reg <= weights3_1_addr_4_reg_443_pp0_iter12_reg;
        weights3_1_addr_4_reg_443_pp0_iter14_reg <= weights3_1_addr_4_reg_443_pp0_iter13_reg;
        weights3_1_addr_4_reg_443_pp0_iter15_reg <= weights3_1_addr_4_reg_443_pp0_iter14_reg;
        weights3_1_addr_4_reg_443_pp0_iter16_reg <= weights3_1_addr_4_reg_443_pp0_iter15_reg;
        weights3_1_addr_4_reg_443_pp0_iter17_reg <= weights3_1_addr_4_reg_443_pp0_iter16_reg;
        weights3_1_addr_4_reg_443_pp0_iter18_reg <= weights3_1_addr_4_reg_443_pp0_iter17_reg;
        weights3_1_addr_4_reg_443_pp0_iter19_reg <= weights3_1_addr_4_reg_443_pp0_iter18_reg;
        weights3_1_addr_4_reg_443_pp0_iter1_reg <= weights3_1_addr_4_reg_443;
        weights3_1_addr_4_reg_443_pp0_iter20_reg <= weights3_1_addr_4_reg_443_pp0_iter19_reg;
        weights3_1_addr_4_reg_443_pp0_iter21_reg <= weights3_1_addr_4_reg_443_pp0_iter20_reg;
        weights3_1_addr_4_reg_443_pp0_iter2_reg <= weights3_1_addr_4_reg_443_pp0_iter1_reg;
        weights3_1_addr_4_reg_443_pp0_iter3_reg <= weights3_1_addr_4_reg_443_pp0_iter2_reg;
        weights3_1_addr_4_reg_443_pp0_iter4_reg <= weights3_1_addr_4_reg_443_pp0_iter3_reg;
        weights3_1_addr_4_reg_443_pp0_iter5_reg <= weights3_1_addr_4_reg_443_pp0_iter4_reg;
        weights3_1_addr_4_reg_443_pp0_iter6_reg <= weights3_1_addr_4_reg_443_pp0_iter5_reg;
        weights3_1_addr_4_reg_443_pp0_iter7_reg <= weights3_1_addr_4_reg_443_pp0_iter6_reg;
        weights3_1_addr_4_reg_443_pp0_iter8_reg <= weights3_1_addr_4_reg_443_pp0_iter7_reg;
        weights3_1_addr_4_reg_443_pp0_iter9_reg <= weights3_1_addr_4_reg_443_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_load_4_reg_459 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_load_3_reg_433 <= weights3_1_q0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_391 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to21 = 1'b1;
    end else begin
        ap_idle_pp0_1to21 = 1'b0;
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
        ap_sig_allocacmp_i_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_142_p0 = bitcast_ln194_4_fu_336_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_142_p0 = bitcast_ln194_2_fu_327_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_142_p0 = bitcast_ln194_fu_307_p1;
    end else begin
        grp_fu_142_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_146_p0 = bitcast_ln194_5_fu_340_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_146_p0 = bitcast_ln194_3_fu_332_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_146_p0 = bitcast_ln194_1_fu_312_p1;
    end else begin
        grp_fu_146_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address0_local = weights3_0_addr_4_reg_438_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address0_local = weights3_0_addr_3_reg_427_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address0_local = zext_ln194_2_fu_293_p1;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address1_local = weights3_0_addr_reg_400_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address1_local = zext_ln192_fu_288_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address1_local = zext_ln194_fu_220_p1;
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_d0_local = bitcast_ln194_8_fu_364_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_d0_local = bitcast_ln194_7_fu_355_p1;
    end else begin
        weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_we1_local = 1'b1;
    end else begin
        weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address0_local = weights3_1_addr_4_reg_443_pp0_iter21_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address0_local = weights3_1_addr_reg_415_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address0_local = zext_ln194_1_fu_262_p1;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address1_local = weights3_1_addr_3_reg_421_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address1_local = zext_ln194_3_fu_302_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address1_local = zext_ln194_fu_220_p1;
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_d0_local = bitcast_ln194_11_fu_369_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_d0_local = bitcast_ln194_9_fu_345_p1;
    end else begin
        weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_we1_local = 1'b1;
    end else begin
        weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to21 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln192_fu_317_p2 = (i_4_reg_386 + 7'd2);
assign add_ln194_1_fu_267_p2 = (empty_fu_246_p2 + 8'd1);
assign add_ln194_2_fu_297_p2 = (lshr_ln194_1_reg_405 + 7'd1);
assign add_ln194_fu_283_p2 = (sub_ln194_reg_395 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign bitcast_ln194_10_fu_359_p1 = reg_162;
assign bitcast_ln194_11_fu_369_p1 = div213_1_2_reg_489;
assign bitcast_ln194_1_fu_312_p1 = reg_154;
assign bitcast_ln194_2_fu_327_p1 = reg_150;
assign bitcast_ln194_3_fu_332_p1 = weights3_1_load_3_reg_433;
assign bitcast_ln194_4_fu_336_p1 = weights3_0_load_4_reg_459;
assign bitcast_ln194_5_fu_340_p1 = reg_154;
assign bitcast_ln194_6_fu_350_p1 = reg_158;
assign bitcast_ln194_7_fu_355_p1 = div213_2_reg_484;
assign bitcast_ln194_8_fu_364_p1 = reg_158;
assign bitcast_ln194_9_fu_345_p1 = reg_162;
assign bitcast_ln194_fu_307_p1 = reg_150;
assign empty_fu_246_p2 = (p_shl_fu_238_p3 - or_ln192_cast_fu_234_p1);
assign lshr_ln194_1_fu_252_p4 = {{empty_fu_246_p2[7:1]}};
assign lshr_ln7_fu_182_p4 = {{ap_sig_allocacmp_i_4[6:1]}};
assign or_ln192_cast_fu_234_p1 = or_ln1_fu_226_p3;
assign or_ln1_fu_226_p3 = {{tmp_2_fu_196_p4}, {1'd1}};
assign p_shl2_fu_206_p3 = {{tmp_2_fu_196_p4}, {2'd0}};
assign p_shl_fu_238_p3 = {{tmp_2_fu_196_p4}, {3'd4}};
assign sub_ln194_fu_214_p2 = (p_shl2_fu_206_p3 - zext_ln194_4_fu_192_p1);
assign tmp_2_fu_196_p4 = {{ap_sig_allocacmp_i_4[5:1]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_0_d0 = weights3_0_d0_local;
assign weights3_0_d1 = bitcast_ln194_6_fu_350_p1;
assign weights3_0_we0 = weights3_0_we0_local;
assign weights3_0_we1 = weights3_0_we1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_1_d0 = weights3_1_d0_local;
assign weights3_1_d1 = bitcast_ln194_10_fu_359_p1;
assign weights3_1_we0 = weights3_1_we0_local;
assign weights3_1_we1 = weights3_1_we1_local;
assign zext_ln192_fu_288_p1 = add_ln194_fu_283_p2;
assign zext_ln194_1_fu_262_p1 = lshr_ln194_1_fu_252_p4;
assign zext_ln194_2_fu_293_p1 = lshr_ln194_2_reg_410;
assign zext_ln194_3_fu_302_p1 = add_ln194_2_fu_297_p2;
assign zext_ln194_4_fu_192_p1 = lshr_ln7_fu_182_p4;
assign zext_ln194_fu_220_p1 = sub_ln194_fu_214_p2;
endmodule 
