module backprop_update_weights_37_38_1_Pipeline_up_weight_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,norm_24); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
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
input  [63:0] norm_24;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] tmp_reg_593;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_206;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_210;
reg   [63:0] reg_214;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_219;
wire   [63:0] grp_fu_198_p2;
reg   [63:0] reg_224;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_202_p2;
reg   [63:0] reg_228;
reg   [6:0] i_4_reg_588;
wire   [6:0] sub_ln194_fu_280_p2;
reg   [6:0] sub_ln194_reg_597;
reg   [6:0] weights3_0_addr_reg_603;
reg   [6:0] weights3_0_addr_reg_603_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_reg_603_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_reg_603_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_reg_603_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_reg_603_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_reg_603_pp0_iter6_reg;
reg   [6:0] weights3_0_addr_reg_603_pp0_iter7_reg;
reg   [6:0] weights3_0_addr_reg_603_pp0_iter8_reg;
reg   [6:0] weights3_0_addr_reg_603_pp0_iter9_reg;
reg   [6:0] weights3_0_addr_reg_603_pp0_iter10_reg;
wire   [7:0] empty_fu_335_p2;
reg   [7:0] empty_reg_608;
wire   [6:0] lshr_ln194_1_fu_341_p4;
reg   [6:0] lshr_ln194_1_reg_615;
reg   [6:0] weights3_1_addr_reg_620;
reg   [6:0] weights3_1_addr_reg_620_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_reg_620_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_reg_620_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_reg_620_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_reg_620_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_reg_620_pp0_iter6_reg;
reg   [6:0] weights3_1_addr_reg_620_pp0_iter7_reg;
reg   [6:0] weights3_1_addr_reg_620_pp0_iter8_reg;
reg   [6:0] weights3_1_addr_reg_620_pp0_iter9_reg;
reg   [6:0] weights3_1_addr_reg_620_pp0_iter10_reg;
reg   [6:0] weights3_0_addr_6_reg_625;
reg   [6:0] weights3_0_addr_6_reg_625_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_6_reg_625_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_6_reg_625_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_6_reg_625_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_6_reg_625_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_6_reg_625_pp0_iter6_reg;
reg   [6:0] weights3_0_addr_6_reg_625_pp0_iter7_reg;
reg   [6:0] weights3_0_addr_6_reg_625_pp0_iter8_reg;
reg   [6:0] weights3_0_addr_6_reg_625_pp0_iter9_reg;
reg   [6:0] weights3_0_addr_6_reg_625_pp0_iter10_reg;
reg   [6:0] weights3_1_addr_6_reg_630;
reg   [6:0] weights3_1_addr_6_reg_630_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_6_reg_630_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_6_reg_630_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_6_reg_630_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_6_reg_630_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_6_reg_630_pp0_iter6_reg;
reg   [6:0] weights3_1_addr_6_reg_630_pp0_iter7_reg;
reg   [6:0] weights3_1_addr_6_reg_630_pp0_iter8_reg;
reg   [6:0] weights3_1_addr_6_reg_630_pp0_iter9_reg;
reg   [6:0] weights3_1_addr_6_reg_630_pp0_iter10_reg;
reg   [6:0] lshr_ln194_3_reg_635;
reg   [6:0] lshr_ln194_4_reg_641;
reg   [6:0] weights3_0_addr_7_reg_646;
reg   [6:0] weights3_0_addr_7_reg_646_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_7_reg_646_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_7_reg_646_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_7_reg_646_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_7_reg_646_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_7_reg_646_pp0_iter6_reg;
reg   [6:0] weights3_0_addr_7_reg_646_pp0_iter7_reg;
reg   [6:0] weights3_0_addr_7_reg_646_pp0_iter8_reg;
reg   [6:0] weights3_0_addr_7_reg_646_pp0_iter9_reg;
reg   [6:0] weights3_0_addr_7_reg_646_pp0_iter10_reg;
reg   [6:0] weights3_1_addr_7_reg_651;
reg   [6:0] weights3_1_addr_7_reg_651_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_7_reg_651_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_7_reg_651_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_7_reg_651_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_7_reg_651_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_7_reg_651_pp0_iter6_reg;
reg   [6:0] weights3_1_addr_7_reg_651_pp0_iter7_reg;
reg   [6:0] weights3_1_addr_7_reg_651_pp0_iter8_reg;
reg   [6:0] weights3_1_addr_7_reg_651_pp0_iter9_reg;
reg   [6:0] weights3_1_addr_7_reg_651_pp0_iter10_reg;
reg   [6:0] weights3_0_addr_8_reg_656;
reg   [6:0] weights3_0_addr_8_reg_656_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_8_reg_656_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_8_reg_656_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_8_reg_656_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_8_reg_656_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_8_reg_656_pp0_iter6_reg;
reg   [6:0] weights3_0_addr_8_reg_656_pp0_iter7_reg;
reg   [6:0] weights3_0_addr_8_reg_656_pp0_iter8_reg;
reg   [6:0] weights3_0_addr_8_reg_656_pp0_iter9_reg;
reg   [6:0] weights3_0_addr_8_reg_656_pp0_iter10_reg;
reg   [6:0] weights3_1_addr_8_reg_661;
reg   [6:0] weights3_1_addr_8_reg_661_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_8_reg_661_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_8_reg_661_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_8_reg_661_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_8_reg_661_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_8_reg_661_pp0_iter6_reg;
reg   [6:0] weights3_1_addr_8_reg_661_pp0_iter7_reg;
reg   [6:0] weights3_1_addr_8_reg_661_pp0_iter8_reg;
reg   [6:0] weights3_1_addr_8_reg_661_pp0_iter9_reg;
reg   [6:0] weights3_1_addr_8_reg_661_pp0_iter10_reg;
wire   [63:0] bitcast_ln194_fu_427_p1;
wire   [63:0] bitcast_ln194_1_fu_460_p1;
reg   [63:0] weights3_0_load_8_reg_676;
reg   [63:0] weights3_1_load_8_reg_681;
reg   [6:0] weights3_0_addr_9_reg_686;
reg   [6:0] weights3_0_addr_9_reg_686_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_9_reg_686_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_9_reg_686_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_9_reg_686_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_9_reg_686_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_9_reg_686_pp0_iter6_reg;
reg   [6:0] weights3_0_addr_9_reg_686_pp0_iter7_reg;
reg   [6:0] weights3_0_addr_9_reg_686_pp0_iter8_reg;
reg   [6:0] weights3_0_addr_9_reg_686_pp0_iter9_reg;
reg   [6:0] weights3_0_addr_9_reg_686_pp0_iter10_reg;
reg   [6:0] weights3_1_addr_9_reg_691;
reg   [6:0] weights3_1_addr_9_reg_691_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_9_reg_691_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_9_reg_691_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_9_reg_691_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_9_reg_691_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_9_reg_691_pp0_iter6_reg;
reg   [6:0] weights3_1_addr_9_reg_691_pp0_iter7_reg;
reg   [6:0] weights3_1_addr_9_reg_691_pp0_iter8_reg;
reg   [6:0] weights3_1_addr_9_reg_691_pp0_iter9_reg;
reg   [6:0] weights3_1_addr_9_reg_691_pp0_iter10_reg;
reg   [6:0] weights3_0_addr_10_reg_696;
reg   [6:0] weights3_0_addr_10_reg_696_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_10_reg_696_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_10_reg_696_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_10_reg_696_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_10_reg_696_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_10_reg_696_pp0_iter6_reg;
reg   [6:0] weights3_0_addr_10_reg_696_pp0_iter7_reg;
reg   [6:0] weights3_0_addr_10_reg_696_pp0_iter8_reg;
reg   [6:0] weights3_0_addr_10_reg_696_pp0_iter9_reg;
reg   [6:0] weights3_0_addr_10_reg_696_pp0_iter10_reg;
reg   [6:0] weights3_0_addr_10_reg_696_pp0_iter11_reg;
reg   [6:0] weights3_1_addr_10_reg_701;
reg   [6:0] weights3_1_addr_10_reg_701_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_10_reg_701_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_10_reg_701_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_10_reg_701_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_10_reg_701_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_10_reg_701_pp0_iter6_reg;
reg   [6:0] weights3_1_addr_10_reg_701_pp0_iter7_reg;
reg   [6:0] weights3_1_addr_10_reg_701_pp0_iter8_reg;
reg   [6:0] weights3_1_addr_10_reg_701_pp0_iter9_reg;
reg   [6:0] weights3_1_addr_10_reg_701_pp0_iter10_reg;
reg   [6:0] weights3_1_addr_10_reg_701_pp0_iter11_reg;
wire   [63:0] bitcast_ln194_2_fu_465_p1;
wire   [63:0] bitcast_ln194_3_fu_470_p1;
reg   [63:0] weights3_0_load_10_reg_716;
reg   [63:0] weights3_1_load_10_reg_721;
wire   [63:0] bitcast_ln194_4_fu_475_p1;
wire   [63:0] bitcast_ln194_5_fu_480_p1;
wire   [63:0] bitcast_ln194_6_fu_485_p1;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] bitcast_ln194_7_fu_489_p1;
wire   [63:0] bitcast_ln194_8_fu_503_p1;
wire   [63:0] bitcast_ln194_9_fu_508_p1;
wire   [63:0] bitcast_ln194_10_fu_513_p1;
wire   [63:0] bitcast_ln194_11_fu_517_p1;
reg   [63:0] div213_4_reg_766;
reg   [63:0] div213_1_reg_771;
reg   [63:0] div213_1_1_reg_776;
reg   [63:0] div213_1_2_reg_781;
reg   [63:0] div213_3_1_reg_786;
reg   [63:0] div213_3_2_reg_791;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln194_fu_286_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln192_fu_310_p1;
wire   [63:0] zext_ln194_1_fu_351_p1;
wire   [63:0] zext_ln194_2_fu_371_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_3_fu_381_p1;
wire   [63:0] zext_ln194_4_fu_391_p1;
wire   [63:0] add_ln194_3_cast_fu_437_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln194_5_fu_442_p1;
wire   [63:0] zext_ln194_6_fu_446_p1;
wire   [63:0] zext_ln194_7_fu_455_p1;
reg   [6:0] i_fu_74;
wire   [6:0] add_ln192_fu_493_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_4;
reg    weights3_0_ce1_local;
reg   [6:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [6:0] weights3_0_address0_local;
reg    weights3_0_we1_local;
reg   [63:0] weights3_0_d1_local;
wire   [63:0] bitcast_ln194_12_fu_521_p1;
wire    ap_block_pp0_stage3;
reg    weights3_0_we0_local;
reg   [63:0] weights3_0_d0_local;
wire   [63:0] bitcast_ln194_13_fu_526_p1;
wire   [63:0] bitcast_ln194_14_fu_539_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] bitcast_ln194_15_fu_543_p1;
wire   [63:0] bitcast_ln194_16_fu_557_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln194_17_fu_567_p1;
reg    weights3_1_ce1_local;
reg   [6:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [6:0] weights3_1_address0_local;
reg    weights3_1_we1_local;
reg   [63:0] weights3_1_d1_local;
wire   [63:0] bitcast_ln194_18_fu_530_p1;
reg    weights3_1_we0_local;
reg   [63:0] weights3_1_d0_local;
wire   [63:0] bitcast_ln194_19_fu_535_p1;
wire   [63:0] bitcast_ln194_20_fu_548_p1;
wire   [63:0] bitcast_ln194_21_fu_552_p1;
wire   [63:0] bitcast_ln194_22_fu_562_p1;
wire   [63:0] bitcast_ln194_23_fu_571_p1;
reg   [63:0] grp_fu_198_p0;
reg   [63:0] grp_fu_202_p0;
wire   [5:0] lshr_ln7_fu_248_p4;
wire   [4:0] tmp_2_fu_262_p4;
wire   [6:0] p_shl4_fu_272_p3;
wire   [6:0] zext_ln194_8_fu_258_p1;
wire   [5:0] tmp_s_fu_292_p4;
wire   [6:0] or_ln5_fu_302_p3;
wire   [5:0] or_ln6_fu_315_p3;
wire   [7:0] p_shl_fu_327_p3;
wire   [7:0] or_ln192_cast_fu_323_p1;
wire   [7:0] add_ln194_fu_356_p2;
wire   [6:0] lshr_ln194_2_fu_361_p4;
wire   [6:0] add_ln194_1_fu_376_p2;
wire   [6:0] add_ln194_2_fu_386_p2;
wire   [7:0] empty_39_fu_397_p2;
wire   [7:0] add_ln194_4_fu_412_p2;
wire   [6:0] add_ln194_3_fu_432_p2;
wire   [6:0] add_ln194_5_fu_450_p2;
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
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to11;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_74 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U286(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_198_p0),.din1(norm_24),.ce(1'b1),.dout(grp_fu_198_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U287(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_202_p0),.din1(norm_24),.ce(1'b1),.dout(grp_fu_202_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter10_reg == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_74 <= 7'd0;
    end else if (((tmp_reg_593 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        i_fu_74 <= add_ln192_fu_493_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_214 <= weights3_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_214 <= weights3_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_219 <= weights3_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_219 <= weights3_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div213_1_1_reg_776 <= grp_fu_198_p2;
        div213_1_2_reg_781 <= grp_fu_202_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        div213_1_reg_771 <= grp_fu_202_p2;
        div213_4_reg_766 <= grp_fu_198_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div213_3_1_reg_786 <= grp_fu_198_p2;
        div213_3_2_reg_791 <= grp_fu_202_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_608[7 : 1] <= empty_fu_335_p2[7 : 1];
        i_4_reg_588 <= ap_sig_allocacmp_i_4;
        lshr_ln194_1_reg_615 <= {{empty_fu_335_p2[7:1]}};
        sub_ln194_reg_597 <= sub_ln194_fu_280_p2;
        tmp_reg_593 <= ap_sig_allocacmp_i_4[32'd6];
        weights3_0_addr_6_reg_625[6 : 1] <= zext_ln192_fu_310_p1[6 : 1];
        weights3_0_addr_6_reg_625_pp0_iter10_reg[6 : 1] <= weights3_0_addr_6_reg_625_pp0_iter9_reg[6 : 1];
        weights3_0_addr_6_reg_625_pp0_iter1_reg[6 : 1] <= weights3_0_addr_6_reg_625[6 : 1];
        weights3_0_addr_6_reg_625_pp0_iter2_reg[6 : 1] <= weights3_0_addr_6_reg_625_pp0_iter1_reg[6 : 1];
        weights3_0_addr_6_reg_625_pp0_iter3_reg[6 : 1] <= weights3_0_addr_6_reg_625_pp0_iter2_reg[6 : 1];
        weights3_0_addr_6_reg_625_pp0_iter4_reg[6 : 1] <= weights3_0_addr_6_reg_625_pp0_iter3_reg[6 : 1];
        weights3_0_addr_6_reg_625_pp0_iter5_reg[6 : 1] <= weights3_0_addr_6_reg_625_pp0_iter4_reg[6 : 1];
        weights3_0_addr_6_reg_625_pp0_iter6_reg[6 : 1] <= weights3_0_addr_6_reg_625_pp0_iter5_reg[6 : 1];
        weights3_0_addr_6_reg_625_pp0_iter7_reg[6 : 1] <= weights3_0_addr_6_reg_625_pp0_iter6_reg[6 : 1];
        weights3_0_addr_6_reg_625_pp0_iter8_reg[6 : 1] <= weights3_0_addr_6_reg_625_pp0_iter7_reg[6 : 1];
        weights3_0_addr_6_reg_625_pp0_iter9_reg[6 : 1] <= weights3_0_addr_6_reg_625_pp0_iter8_reg[6 : 1];
        weights3_0_addr_reg_603 <= zext_ln194_fu_286_p1;
        weights3_0_addr_reg_603_pp0_iter10_reg <= weights3_0_addr_reg_603_pp0_iter9_reg;
        weights3_0_addr_reg_603_pp0_iter1_reg <= weights3_0_addr_reg_603;
        weights3_0_addr_reg_603_pp0_iter2_reg <= weights3_0_addr_reg_603_pp0_iter1_reg;
        weights3_0_addr_reg_603_pp0_iter3_reg <= weights3_0_addr_reg_603_pp0_iter2_reg;
        weights3_0_addr_reg_603_pp0_iter4_reg <= weights3_0_addr_reg_603_pp0_iter3_reg;
        weights3_0_addr_reg_603_pp0_iter5_reg <= weights3_0_addr_reg_603_pp0_iter4_reg;
        weights3_0_addr_reg_603_pp0_iter6_reg <= weights3_0_addr_reg_603_pp0_iter5_reg;
        weights3_0_addr_reg_603_pp0_iter7_reg <= weights3_0_addr_reg_603_pp0_iter6_reg;
        weights3_0_addr_reg_603_pp0_iter8_reg <= weights3_0_addr_reg_603_pp0_iter7_reg;
        weights3_0_addr_reg_603_pp0_iter9_reg <= weights3_0_addr_reg_603_pp0_iter8_reg;
        weights3_1_addr_6_reg_630 <= zext_ln194_1_fu_351_p1;
        weights3_1_addr_6_reg_630_pp0_iter10_reg <= weights3_1_addr_6_reg_630_pp0_iter9_reg;
        weights3_1_addr_6_reg_630_pp0_iter1_reg <= weights3_1_addr_6_reg_630;
        weights3_1_addr_6_reg_630_pp0_iter2_reg <= weights3_1_addr_6_reg_630_pp0_iter1_reg;
        weights3_1_addr_6_reg_630_pp0_iter3_reg <= weights3_1_addr_6_reg_630_pp0_iter2_reg;
        weights3_1_addr_6_reg_630_pp0_iter4_reg <= weights3_1_addr_6_reg_630_pp0_iter3_reg;
        weights3_1_addr_6_reg_630_pp0_iter5_reg <= weights3_1_addr_6_reg_630_pp0_iter4_reg;
        weights3_1_addr_6_reg_630_pp0_iter6_reg <= weights3_1_addr_6_reg_630_pp0_iter5_reg;
        weights3_1_addr_6_reg_630_pp0_iter7_reg <= weights3_1_addr_6_reg_630_pp0_iter6_reg;
        weights3_1_addr_6_reg_630_pp0_iter8_reg <= weights3_1_addr_6_reg_630_pp0_iter7_reg;
        weights3_1_addr_6_reg_630_pp0_iter9_reg <= weights3_1_addr_6_reg_630_pp0_iter8_reg;
        weights3_1_addr_reg_620 <= zext_ln194_fu_286_p1;
        weights3_1_addr_reg_620_pp0_iter10_reg <= weights3_1_addr_reg_620_pp0_iter9_reg;
        weights3_1_addr_reg_620_pp0_iter1_reg <= weights3_1_addr_reg_620;
        weights3_1_addr_reg_620_pp0_iter2_reg <= weights3_1_addr_reg_620_pp0_iter1_reg;
        weights3_1_addr_reg_620_pp0_iter3_reg <= weights3_1_addr_reg_620_pp0_iter2_reg;
        weights3_1_addr_reg_620_pp0_iter4_reg <= weights3_1_addr_reg_620_pp0_iter3_reg;
        weights3_1_addr_reg_620_pp0_iter5_reg <= weights3_1_addr_reg_620_pp0_iter4_reg;
        weights3_1_addr_reg_620_pp0_iter6_reg <= weights3_1_addr_reg_620_pp0_iter5_reg;
        weights3_1_addr_reg_620_pp0_iter7_reg <= weights3_1_addr_reg_620_pp0_iter6_reg;
        weights3_1_addr_reg_620_pp0_iter8_reg <= weights3_1_addr_reg_620_pp0_iter7_reg;
        weights3_1_addr_reg_620_pp0_iter9_reg <= weights3_1_addr_reg_620_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln194_3_reg_635 <= {{empty_39_fu_397_p2[7:1]}};
        lshr_ln194_4_reg_641 <= {{add_ln194_4_fu_412_p2[7:1]}};
        weights3_0_addr_7_reg_646 <= zext_ln194_2_fu_371_p1;
        weights3_0_addr_7_reg_646_pp0_iter10_reg <= weights3_0_addr_7_reg_646_pp0_iter9_reg;
        weights3_0_addr_7_reg_646_pp0_iter1_reg <= weights3_0_addr_7_reg_646;
        weights3_0_addr_7_reg_646_pp0_iter2_reg <= weights3_0_addr_7_reg_646_pp0_iter1_reg;
        weights3_0_addr_7_reg_646_pp0_iter3_reg <= weights3_0_addr_7_reg_646_pp0_iter2_reg;
        weights3_0_addr_7_reg_646_pp0_iter4_reg <= weights3_0_addr_7_reg_646_pp0_iter3_reg;
        weights3_0_addr_7_reg_646_pp0_iter5_reg <= weights3_0_addr_7_reg_646_pp0_iter4_reg;
        weights3_0_addr_7_reg_646_pp0_iter6_reg <= weights3_0_addr_7_reg_646_pp0_iter5_reg;
        weights3_0_addr_7_reg_646_pp0_iter7_reg <= weights3_0_addr_7_reg_646_pp0_iter6_reg;
        weights3_0_addr_7_reg_646_pp0_iter8_reg <= weights3_0_addr_7_reg_646_pp0_iter7_reg;
        weights3_0_addr_7_reg_646_pp0_iter9_reg <= weights3_0_addr_7_reg_646_pp0_iter8_reg;
        weights3_0_addr_8_reg_656 <= zext_ln194_4_fu_391_p1;
        weights3_0_addr_8_reg_656_pp0_iter10_reg <= weights3_0_addr_8_reg_656_pp0_iter9_reg;
        weights3_0_addr_8_reg_656_pp0_iter1_reg <= weights3_0_addr_8_reg_656;
        weights3_0_addr_8_reg_656_pp0_iter2_reg <= weights3_0_addr_8_reg_656_pp0_iter1_reg;
        weights3_0_addr_8_reg_656_pp0_iter3_reg <= weights3_0_addr_8_reg_656_pp0_iter2_reg;
        weights3_0_addr_8_reg_656_pp0_iter4_reg <= weights3_0_addr_8_reg_656_pp0_iter3_reg;
        weights3_0_addr_8_reg_656_pp0_iter5_reg <= weights3_0_addr_8_reg_656_pp0_iter4_reg;
        weights3_0_addr_8_reg_656_pp0_iter6_reg <= weights3_0_addr_8_reg_656_pp0_iter5_reg;
        weights3_0_addr_8_reg_656_pp0_iter7_reg <= weights3_0_addr_8_reg_656_pp0_iter6_reg;
        weights3_0_addr_8_reg_656_pp0_iter8_reg <= weights3_0_addr_8_reg_656_pp0_iter7_reg;
        weights3_0_addr_8_reg_656_pp0_iter9_reg <= weights3_0_addr_8_reg_656_pp0_iter8_reg;
        weights3_1_addr_7_reg_651 <= zext_ln194_3_fu_381_p1;
        weights3_1_addr_7_reg_651_pp0_iter10_reg <= weights3_1_addr_7_reg_651_pp0_iter9_reg;
        weights3_1_addr_7_reg_651_pp0_iter1_reg <= weights3_1_addr_7_reg_651;
        weights3_1_addr_7_reg_651_pp0_iter2_reg <= weights3_1_addr_7_reg_651_pp0_iter1_reg;
        weights3_1_addr_7_reg_651_pp0_iter3_reg <= weights3_1_addr_7_reg_651_pp0_iter2_reg;
        weights3_1_addr_7_reg_651_pp0_iter4_reg <= weights3_1_addr_7_reg_651_pp0_iter3_reg;
        weights3_1_addr_7_reg_651_pp0_iter5_reg <= weights3_1_addr_7_reg_651_pp0_iter4_reg;
        weights3_1_addr_7_reg_651_pp0_iter6_reg <= weights3_1_addr_7_reg_651_pp0_iter5_reg;
        weights3_1_addr_7_reg_651_pp0_iter7_reg <= weights3_1_addr_7_reg_651_pp0_iter6_reg;
        weights3_1_addr_7_reg_651_pp0_iter8_reg <= weights3_1_addr_7_reg_651_pp0_iter7_reg;
        weights3_1_addr_7_reg_651_pp0_iter9_reg <= weights3_1_addr_7_reg_651_pp0_iter8_reg;
        weights3_1_addr_8_reg_661 <= zext_ln194_4_fu_391_p1;
        weights3_1_addr_8_reg_661_pp0_iter10_reg <= weights3_1_addr_8_reg_661_pp0_iter9_reg;
        weights3_1_addr_8_reg_661_pp0_iter1_reg <= weights3_1_addr_8_reg_661;
        weights3_1_addr_8_reg_661_pp0_iter2_reg <= weights3_1_addr_8_reg_661_pp0_iter1_reg;
        weights3_1_addr_8_reg_661_pp0_iter3_reg <= weights3_1_addr_8_reg_661_pp0_iter2_reg;
        weights3_1_addr_8_reg_661_pp0_iter4_reg <= weights3_1_addr_8_reg_661_pp0_iter3_reg;
        weights3_1_addr_8_reg_661_pp0_iter5_reg <= weights3_1_addr_8_reg_661_pp0_iter4_reg;
        weights3_1_addr_8_reg_661_pp0_iter6_reg <= weights3_1_addr_8_reg_661_pp0_iter5_reg;
        weights3_1_addr_8_reg_661_pp0_iter7_reg <= weights3_1_addr_8_reg_661_pp0_iter6_reg;
        weights3_1_addr_8_reg_661_pp0_iter8_reg <= weights3_1_addr_8_reg_661_pp0_iter7_reg;
        weights3_1_addr_8_reg_661_pp0_iter9_reg <= weights3_1_addr_8_reg_661_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_206 <= weights3_0_q1;
        reg_210 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_224 <= grp_fu_198_p2;
        reg_228 <= grp_fu_202_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_addr_10_reg_696 <= zext_ln194_6_fu_446_p1;
        weights3_0_addr_10_reg_696_pp0_iter10_reg <= weights3_0_addr_10_reg_696_pp0_iter9_reg;
        weights3_0_addr_10_reg_696_pp0_iter11_reg <= weights3_0_addr_10_reg_696_pp0_iter10_reg;
        weights3_0_addr_10_reg_696_pp0_iter1_reg <= weights3_0_addr_10_reg_696;
        weights3_0_addr_10_reg_696_pp0_iter2_reg <= weights3_0_addr_10_reg_696_pp0_iter1_reg;
        weights3_0_addr_10_reg_696_pp0_iter3_reg <= weights3_0_addr_10_reg_696_pp0_iter2_reg;
        weights3_0_addr_10_reg_696_pp0_iter4_reg <= weights3_0_addr_10_reg_696_pp0_iter3_reg;
        weights3_0_addr_10_reg_696_pp0_iter5_reg <= weights3_0_addr_10_reg_696_pp0_iter4_reg;
        weights3_0_addr_10_reg_696_pp0_iter6_reg <= weights3_0_addr_10_reg_696_pp0_iter5_reg;
        weights3_0_addr_10_reg_696_pp0_iter7_reg <= weights3_0_addr_10_reg_696_pp0_iter6_reg;
        weights3_0_addr_10_reg_696_pp0_iter8_reg <= weights3_0_addr_10_reg_696_pp0_iter7_reg;
        weights3_0_addr_10_reg_696_pp0_iter9_reg <= weights3_0_addr_10_reg_696_pp0_iter8_reg;
        weights3_0_addr_9_reg_686 <= add_ln194_3_cast_fu_437_p1;
        weights3_0_addr_9_reg_686_pp0_iter10_reg <= weights3_0_addr_9_reg_686_pp0_iter9_reg;
        weights3_0_addr_9_reg_686_pp0_iter1_reg <= weights3_0_addr_9_reg_686;
        weights3_0_addr_9_reg_686_pp0_iter2_reg <= weights3_0_addr_9_reg_686_pp0_iter1_reg;
        weights3_0_addr_9_reg_686_pp0_iter3_reg <= weights3_0_addr_9_reg_686_pp0_iter2_reg;
        weights3_0_addr_9_reg_686_pp0_iter4_reg <= weights3_0_addr_9_reg_686_pp0_iter3_reg;
        weights3_0_addr_9_reg_686_pp0_iter5_reg <= weights3_0_addr_9_reg_686_pp0_iter4_reg;
        weights3_0_addr_9_reg_686_pp0_iter6_reg <= weights3_0_addr_9_reg_686_pp0_iter5_reg;
        weights3_0_addr_9_reg_686_pp0_iter7_reg <= weights3_0_addr_9_reg_686_pp0_iter6_reg;
        weights3_0_addr_9_reg_686_pp0_iter8_reg <= weights3_0_addr_9_reg_686_pp0_iter7_reg;
        weights3_0_addr_9_reg_686_pp0_iter9_reg <= weights3_0_addr_9_reg_686_pp0_iter8_reg;
        weights3_1_addr_10_reg_701 <= zext_ln194_7_fu_455_p1;
        weights3_1_addr_10_reg_701_pp0_iter10_reg <= weights3_1_addr_10_reg_701_pp0_iter9_reg;
        weights3_1_addr_10_reg_701_pp0_iter11_reg <= weights3_1_addr_10_reg_701_pp0_iter10_reg;
        weights3_1_addr_10_reg_701_pp0_iter1_reg <= weights3_1_addr_10_reg_701;
        weights3_1_addr_10_reg_701_pp0_iter2_reg <= weights3_1_addr_10_reg_701_pp0_iter1_reg;
        weights3_1_addr_10_reg_701_pp0_iter3_reg <= weights3_1_addr_10_reg_701_pp0_iter2_reg;
        weights3_1_addr_10_reg_701_pp0_iter4_reg <= weights3_1_addr_10_reg_701_pp0_iter3_reg;
        weights3_1_addr_10_reg_701_pp0_iter5_reg <= weights3_1_addr_10_reg_701_pp0_iter4_reg;
        weights3_1_addr_10_reg_701_pp0_iter6_reg <= weights3_1_addr_10_reg_701_pp0_iter5_reg;
        weights3_1_addr_10_reg_701_pp0_iter7_reg <= weights3_1_addr_10_reg_701_pp0_iter6_reg;
        weights3_1_addr_10_reg_701_pp0_iter8_reg <= weights3_1_addr_10_reg_701_pp0_iter7_reg;
        weights3_1_addr_10_reg_701_pp0_iter9_reg <= weights3_1_addr_10_reg_701_pp0_iter8_reg;
        weights3_1_addr_9_reg_691 <= zext_ln194_5_fu_442_p1;
        weights3_1_addr_9_reg_691_pp0_iter10_reg <= weights3_1_addr_9_reg_691_pp0_iter9_reg;
        weights3_1_addr_9_reg_691_pp0_iter1_reg <= weights3_1_addr_9_reg_691;
        weights3_1_addr_9_reg_691_pp0_iter2_reg <= weights3_1_addr_9_reg_691_pp0_iter1_reg;
        weights3_1_addr_9_reg_691_pp0_iter3_reg <= weights3_1_addr_9_reg_691_pp0_iter2_reg;
        weights3_1_addr_9_reg_691_pp0_iter4_reg <= weights3_1_addr_9_reg_691_pp0_iter3_reg;
        weights3_1_addr_9_reg_691_pp0_iter5_reg <= weights3_1_addr_9_reg_691_pp0_iter4_reg;
        weights3_1_addr_9_reg_691_pp0_iter6_reg <= weights3_1_addr_9_reg_691_pp0_iter5_reg;
        weights3_1_addr_9_reg_691_pp0_iter7_reg <= weights3_1_addr_9_reg_691_pp0_iter6_reg;
        weights3_1_addr_9_reg_691_pp0_iter8_reg <= weights3_1_addr_9_reg_691_pp0_iter7_reg;
        weights3_1_addr_9_reg_691_pp0_iter9_reg <= weights3_1_addr_9_reg_691_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_load_10_reg_716 <= weights3_0_q0;
        weights3_1_load_10_reg_721 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_load_8_reg_676 <= weights3_0_q0;
        weights3_1_load_8_reg_681 <= weights3_1_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_593 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter10_reg == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to11 = 1'b1;
    end else begin
        ap_idle_pp0_1to11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_198_p0 = bitcast_ln194_10_fu_513_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_198_p0 = bitcast_ln194_8_fu_503_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_198_p0 = bitcast_ln194_6_fu_485_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_198_p0 = bitcast_ln194_4_fu_475_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_198_p0 = bitcast_ln194_2_fu_465_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_198_p0 = bitcast_ln194_fu_427_p1;
    end else begin
        grp_fu_198_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_202_p0 = bitcast_ln194_11_fu_517_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_202_p0 = bitcast_ln194_9_fu_508_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_202_p0 = bitcast_ln194_7_fu_489_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_202_p0 = bitcast_ln194_5_fu_480_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_202_p0 = bitcast_ln194_3_fu_470_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_202_p0 = bitcast_ln194_1_fu_460_p1;
    end else begin
        grp_fu_202_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address0_local = weights3_0_addr_10_reg_696_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address0_local = weights3_0_addr_8_reg_656_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address0_local = weights3_0_addr_6_reg_625_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address0_local = zext_ln194_6_fu_446_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address0_local = zext_ln194_4_fu_391_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address0_local = zext_ln192_fu_310_p1;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address1_local = weights3_0_addr_9_reg_686_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address1_local = weights3_0_addr_7_reg_646_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address1_local = weights3_0_addr_reg_603_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address1_local = add_ln194_3_cast_fu_437_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address1_local = zext_ln194_2_fu_371_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address1_local = zext_ln194_fu_286_p1;
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_d0_local = bitcast_ln194_17_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_d0_local = bitcast_ln194_15_fu_543_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_d0_local = bitcast_ln194_13_fu_526_p1;
    end else begin
        weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter10 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_0_d1_local = bitcast_ln194_16_fu_557_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_0_d1_local = bitcast_ln194_14_fu_539_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_0_d1_local = bitcast_ln194_12_fu_521_p1;
        end else begin
            weights3_0_d1_local = 'bx;
        end
    end else begin
        weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights3_0_we1_local = 1'b1;
    end else begin
        weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address0_local = weights3_1_addr_10_reg_701_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address0_local = weights3_1_addr_8_reg_661_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address0_local = weights3_1_addr_6_reg_630_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address0_local = zext_ln194_7_fu_455_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address0_local = zext_ln194_4_fu_391_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address0_local = zext_ln194_1_fu_351_p1;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address1_local = weights3_1_addr_9_reg_691_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address1_local = weights3_1_addr_7_reg_651_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address1_local = weights3_1_addr_reg_620_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address1_local = zext_ln194_5_fu_442_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address1_local = zext_ln194_3_fu_381_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address1_local = zext_ln194_fu_286_p1;
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_d0_local = bitcast_ln194_23_fu_571_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_d0_local = bitcast_ln194_21_fu_552_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_d0_local = bitcast_ln194_19_fu_535_p1;
    end else begin
        weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter10 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_1_d1_local = bitcast_ln194_22_fu_562_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_1_d1_local = bitcast_ln194_20_fu_548_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_1_d1_local = bitcast_ln194_18_fu_530_p1;
        end else begin
            weights3_1_d1_local = 'bx;
        end
    end else begin
        weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights3_1_we1_local = 1'b1;
    end else begin
        weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to11 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln192_fu_493_p2 = (i_4_reg_588 + 7'd4);
assign add_ln194_1_fu_376_p2 = (lshr_ln194_1_reg_615 + 7'd1);
assign add_ln194_2_fu_386_p2 = (sub_ln194_reg_597 + 7'd3);
assign add_ln194_3_cast_fu_437_p1 = add_ln194_3_fu_432_p2;
assign add_ln194_3_fu_432_p2 = (sub_ln194_reg_597 + 7'd4);
assign add_ln194_4_fu_412_p2 = (empty_reg_608 + 8'd7);
assign add_ln194_5_fu_450_p2 = (lshr_ln194_3_reg_635 + 7'd1);
assign add_ln194_fu_356_p2 = (empty_reg_608 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign bitcast_ln194_10_fu_513_p1 = weights3_0_load_10_reg_716;
assign bitcast_ln194_11_fu_517_p1 = weights3_1_load_10_reg_721;
assign bitcast_ln194_12_fu_521_p1 = reg_224;
assign bitcast_ln194_13_fu_526_p1 = div213_4_reg_766;
assign bitcast_ln194_14_fu_539_p1 = div213_1_1_reg_776;
assign bitcast_ln194_15_fu_543_p1 = reg_224;
assign bitcast_ln194_16_fu_557_p1 = reg_224;
assign bitcast_ln194_17_fu_567_p1 = div213_3_1_reg_786;
assign bitcast_ln194_18_fu_530_p1 = reg_228;
assign bitcast_ln194_19_fu_535_p1 = div213_1_reg_771;
assign bitcast_ln194_1_fu_460_p1 = reg_210;
assign bitcast_ln194_20_fu_548_p1 = div213_1_2_reg_781;
assign bitcast_ln194_21_fu_552_p1 = reg_228;
assign bitcast_ln194_22_fu_562_p1 = reg_228;
assign bitcast_ln194_23_fu_571_p1 = div213_3_2_reg_791;
assign bitcast_ln194_2_fu_465_p1 = reg_214;
assign bitcast_ln194_3_fu_470_p1 = reg_219;
assign bitcast_ln194_4_fu_475_p1 = reg_206;
assign bitcast_ln194_5_fu_480_p1 = reg_210;
assign bitcast_ln194_6_fu_485_p1 = weights3_0_load_8_reg_676;
assign bitcast_ln194_7_fu_489_p1 = weights3_1_load_8_reg_681;
assign bitcast_ln194_8_fu_503_p1 = reg_214;
assign bitcast_ln194_9_fu_508_p1 = reg_219;
assign bitcast_ln194_fu_427_p1 = reg_206;
assign empty_39_fu_397_p2 = (empty_reg_608 + 8'd6);
assign empty_fu_335_p2 = (p_shl_fu_327_p3 - or_ln192_cast_fu_323_p1);
assign lshr_ln194_1_fu_341_p4 = {{empty_fu_335_p2[7:1]}};
assign lshr_ln194_2_fu_361_p4 = {{add_ln194_fu_356_p2[7:1]}};
assign lshr_ln7_fu_248_p4 = {{ap_sig_allocacmp_i_4[6:1]}};
assign or_ln192_cast_fu_323_p1 = or_ln6_fu_315_p3;
assign or_ln5_fu_302_p3 = {{tmp_s_fu_292_p4}, {1'd1}};
assign or_ln6_fu_315_p3 = {{tmp_2_fu_262_p4}, {1'd1}};
assign p_shl4_fu_272_p3 = {{tmp_2_fu_262_p4}, {2'd0}};
assign p_shl_fu_327_p3 = {{tmp_2_fu_262_p4}, {3'd4}};
assign sub_ln194_fu_280_p2 = (p_shl4_fu_272_p3 - zext_ln194_8_fu_258_p1);
assign tmp_2_fu_262_p4 = {{ap_sig_allocacmp_i_4[5:1]}};
assign tmp_s_fu_292_p4 = {{sub_ln194_fu_280_p2[6:1]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_0_d0 = weights3_0_d0_local;
assign weights3_0_d1 = weights3_0_d1_local;
assign weights3_0_we0 = weights3_0_we0_local;
assign weights3_0_we1 = weights3_0_we1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_1_d0 = weights3_1_d0_local;
assign weights3_1_d1 = weights3_1_d1_local;
assign weights3_1_we0 = weights3_1_we0_local;
assign weights3_1_we1 = weights3_1_we1_local;
assign zext_ln192_fu_310_p1 = or_ln5_fu_302_p3;
assign zext_ln194_1_fu_351_p1 = lshr_ln194_1_fu_341_p4;
assign zext_ln194_2_fu_371_p1 = lshr_ln194_2_fu_361_p4;
assign zext_ln194_3_fu_381_p1 = add_ln194_1_fu_376_p2;
assign zext_ln194_4_fu_391_p1 = add_ln194_2_fu_386_p2;
assign zext_ln194_5_fu_442_p1 = lshr_ln194_3_reg_635;
assign zext_ln194_6_fu_446_p1 = lshr_ln194_4_reg_641;
assign zext_ln194_7_fu_455_p1 = add_ln194_5_fu_450_p2;
assign zext_ln194_8_fu_258_p1 = lshr_ln7_fu_248_p4;
assign zext_ln194_fu_286_p1 = sub_ln194_fu_280_p2;
always @ (posedge ap_clk) begin
    empty_reg_608[0] <= 1'b1;
    weights3_0_addr_6_reg_625[0] <= 1'b1;
    weights3_0_addr_6_reg_625_pp0_iter1_reg[0] <= 1'b1;
    weights3_0_addr_6_reg_625_pp0_iter2_reg[0] <= 1'b1;
    weights3_0_addr_6_reg_625_pp0_iter3_reg[0] <= 1'b1;
    weights3_0_addr_6_reg_625_pp0_iter4_reg[0] <= 1'b1;
    weights3_0_addr_6_reg_625_pp0_iter5_reg[0] <= 1'b1;
    weights3_0_addr_6_reg_625_pp0_iter6_reg[0] <= 1'b1;
    weights3_0_addr_6_reg_625_pp0_iter7_reg[0] <= 1'b1;
    weights3_0_addr_6_reg_625_pp0_iter8_reg[0] <= 1'b1;
    weights3_0_addr_6_reg_625_pp0_iter9_reg[0] <= 1'b1;
    weights3_0_addr_6_reg_625_pp0_iter10_reg[0] <= 1'b1;
end
endmodule 