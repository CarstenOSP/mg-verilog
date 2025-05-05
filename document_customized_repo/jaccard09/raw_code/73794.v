module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 33'd1;
parameter    ap_ST_fsm_state2 = 33'd2;
parameter    ap_ST_fsm_state3 = 33'd4;
parameter    ap_ST_fsm_state4 = 33'd8;
parameter    ap_ST_fsm_state5 = 33'd16;
parameter    ap_ST_fsm_state6 = 33'd32;
parameter    ap_ST_fsm_state7 = 33'd64;
parameter    ap_ST_fsm_state8 = 33'd128;
parameter    ap_ST_fsm_state9 = 33'd256;
parameter    ap_ST_fsm_state10 = 33'd512;
parameter    ap_ST_fsm_state11 = 33'd1024;
parameter    ap_ST_fsm_state12 = 33'd2048;
parameter    ap_ST_fsm_state13 = 33'd4096;
parameter    ap_ST_fsm_state14 = 33'd8192;
parameter    ap_ST_fsm_state15 = 33'd16384;
parameter    ap_ST_fsm_state16 = 33'd32768;
parameter    ap_ST_fsm_state17 = 33'd65536;
parameter    ap_ST_fsm_state18 = 33'd131072;
parameter    ap_ST_fsm_state19 = 33'd262144;
parameter    ap_ST_fsm_state20 = 33'd524288;
parameter    ap_ST_fsm_state21 = 33'd1048576;
parameter    ap_ST_fsm_state22 = 33'd2097152;
parameter    ap_ST_fsm_state23 = 33'd4194304;
parameter    ap_ST_fsm_state24 = 33'd8388608;
parameter    ap_ST_fsm_state25 = 33'd16777216;
parameter    ap_ST_fsm_state26 = 33'd33554432;
parameter    ap_ST_fsm_state27 = 33'd67108864;
parameter    ap_ST_fsm_state28 = 33'd134217728;
parameter    ap_ST_fsm_state29 = 33'd268435456;
parameter    ap_ST_fsm_state30 = 33'd536870912;
parameter    ap_ST_fsm_state31 = 33'd1073741824;
parameter    ap_ST_fsm_state32 = 33'd2147483648;
parameter    ap_ST_fsm_state33 = 33'd4294967296;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] obs_0_address0;
output   obs_0_ce0;
input  [7:0] obs_0_q0;
output  [6:0] obs_1_address0;
output   obs_1_ce0;
input  [7:0] obs_1_q0;
output  [4:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [4:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [4:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
output  [10:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [10:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [10:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [10:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [10:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [10:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [10:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [10:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [6:0] path_0_address0;
output   path_0_ce0;
output   path_0_we0;
output  [7:0] path_0_d0;
input  [7:0] path_0_q0;
output  [6:0] path_1_address0;
output   path_1_ce0;
output   path_1_we0;
output  [7:0] path_1_d0;
input  [7:0] path_1_q0;
output  [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[10:0] transition_0_address0;
reg transition_0_ce0;
reg[10:0] transition_0_address1;
reg transition_0_ce1;
reg[10:0] transition_1_address0;
reg transition_1_ce0;
reg[10:0] transition_1_address1;
reg transition_1_ce1;
reg[10:0] emission_0_address0;
reg emission_0_ce0;
reg emission_0_ce1;
reg[10:0] emission_1_address0;
reg emission_1_ce0;
reg emission_1_ce1;
reg[6:0] path_1_address0;
reg path_1_ce0;
reg path_1_we0;
reg[7:0] path_1_d0;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_304;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state28;
wire   [63:0] grp_fu_300_p2;
reg   [63:0] reg_310;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state24;
wire   [0:0] empty_fu_321_p1;
reg   [0:0] empty_reg_545;
wire    ap_CS_fsm_state2;
reg   [6:0] conv3_udiv_reg_550;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire   [13:0] tmp_234_fu_360_p3;
reg   [13:0] tmp_234_reg_578;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_22_fu_370_p2;
reg   [7:0] empty_22_reg_583;
wire   [13:0] tmp_235_fu_375_p3;
reg   [13:0] tmp_235_reg_588;
reg   [13:0] llike_addr_9_reg_593;
wire   [0:0] empty_23_fu_396_p1;
reg   [0:0] empty_23_reg_598;
wire   [10:0] conv32_udiv_cast_fu_410_p1;
reg   [10:0] conv32_udiv_cast_reg_603;
wire   [6:0] add_ln19_fu_420_p2;
reg   [6:0] add_ln19_reg_611;
wire    ap_CS_fsm_state7;
wire   [13:0] add_ln33_fu_430_p2;
reg   [13:0] add_ln33_reg_616;
wire   [0:0] trunc_ln23_fu_435_p1;
reg   [0:0] trunc_ln23_reg_621;
wire   [4:0] lshr_ln_fu_439_p4;
reg   [4:0] lshr_ln_reg_627;
wire   [10:0] add_ln24_fu_467_p2;
reg   [10:0] add_ln24_reg_642;
wire   [63:0] select_ln23_fu_482_p3;
reg   [63:0] select_ln23_reg_647;
wire   [63:0] bitcast_ln23_fu_489_p1;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state15;
wire   [63:0] select_ln24_fu_498_p3;
reg   [63:0] select_ln24_reg_667;
wire   [63:0] bitcast_ln24_fu_505_p1;
reg   [63:0] bitcast_ln24_reg_672;
wire    ap_CS_fsm_state17;
reg   [13:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg   [13:0] llike_address1;
reg    llike_ce1;
reg    llike_we1;
wire   [63:0] llike_q1;
wire    grp_viterbi_Pipeline_L_init_fu_247_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_247_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_247_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_247_ap_ready;
wire   [13:0] grp_viterbi_Pipeline_L_init_fu_247_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_247_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_247_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_247_llike_d0;
wire   [13:0] grp_viterbi_Pipeline_L_init_fu_247_llike_address1;
wire    grp_viterbi_Pipeline_L_init_fu_247_llike_ce1;
wire    grp_viterbi_Pipeline_L_init_fu_247_llike_we1;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_247_llike_d1;
wire   [4:0] grp_viterbi_Pipeline_L_init_fu_247_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_247_init_0_ce0;
wire   [4:0] grp_viterbi_Pipeline_L_init_fu_247_init_0_address1;
wire    grp_viterbi_Pipeline_L_init_fu_247_init_0_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_247_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_247_emission_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_247_emission_0_address1;
wire    grp_viterbi_Pipeline_L_init_fu_247_emission_0_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_247_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_247_emission_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_247_emission_1_address1;
wire    grp_viterbi_Pipeline_L_init_fu_247_emission_1_ce1;
wire   [4:0] grp_viterbi_Pipeline_L_init_fu_247_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_247_init_1_ce0;
wire   [4:0] grp_viterbi_Pipeline_L_init_fu_247_init_1_address1;
wire    grp_viterbi_Pipeline_L_init_fu_247_init_1_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_247_grp_fu_300_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_247_grp_fu_300_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_247_grp_fu_300_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_247_grp_fu_300_p_ce;
wire    grp_viterbi_Pipeline_L_prev_state_fu_264_ap_start;
wire    grp_viterbi_Pipeline_L_prev_state_fu_264_ap_done;
wire    grp_viterbi_Pipeline_L_prev_state_fu_264_ap_idle;
wire    grp_viterbi_Pipeline_L_prev_state_fu_264_ap_ready;
wire   [13:0] grp_viterbi_Pipeline_L_prev_state_fu_264_llike_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_264_llike_ce0;
wire   [13:0] grp_viterbi_Pipeline_L_prev_state_fu_264_llike_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_264_llike_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_264_transition_0_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_264_transition_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_264_transition_0_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_264_transition_0_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_264_transition_1_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_264_transition_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_264_transition_1_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_264_transition_1_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_264_min_p_145_out;
wire    grp_viterbi_Pipeline_L_prev_state_fu_264_min_p_145_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_300_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_300_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_300_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_300_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_678_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_678_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_678_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_678_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_280_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_280_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_280_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_280_ap_ready;
wire   [13:0] grp_viterbi_Pipeline_L_end_fu_280_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_280_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_280_min_s_out;
wire    grp_viterbi_Pipeline_L_end_fu_280_min_s_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_280_grp_fu_678_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_280_grp_fu_678_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_280_grp_fu_678_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_280_grp_fu_678_p_ce;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_ap_start;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_ap_done;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_ap_idle;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_ap_ready;
wire   [6:0] grp_viterbi_Pipeline_L_backtrack_fu_287_path_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_path_0_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_path_0_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_287_path_0_d0;
wire   [13:0] grp_viterbi_Pipeline_L_backtrack_fu_287_llike_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_llike_ce0;
wire   [13:0] grp_viterbi_Pipeline_L_backtrack_fu_287_llike_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_llike_ce1;
wire   [6:0] grp_viterbi_Pipeline_L_backtrack_fu_287_path_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_path_1_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_path_1_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_287_path_1_d0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_287_transition_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_transition_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_287_transition_0_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_transition_0_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_287_transition_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_transition_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_287_transition_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_transition_1_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_300_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_300_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_300_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_300_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_678_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_678_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_678_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_678_p_ce;
reg   [6:0] curr_reg_236;
wire    ap_CS_fsm_state27;
reg    grp_viterbi_Pipeline_L_init_fu_247_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_prev_state_fu_264_ap_start_reg;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
reg   [63:0] min_p_145_loc_fu_102;
reg    grp_viterbi_Pipeline_L_end_fu_280_ap_start_reg;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
reg    grp_viterbi_Pipeline_L_backtrack_fu_287_ap_start_reg;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state33;
wire   [63:0] zext_ln6_fu_354_p1;
wire   [0:0] icmp_ln18_fu_338_p2;
wire   [63:0] tmp_235_cast_fu_383_p1;
wire   [63:0] zext_ln23_fu_449_p1;
wire   [0:0] icmp_ln19_fu_414_p2;
wire   [63:0] zext_ln24_fu_493_p1;
wire   [63:0] zext_ln33_1_fu_509_p1;
wire    ap_CS_fsm_state31;
reg   [7:0] t_fu_94;
wire   [7:0] add_ln18_fu_472_p2;
reg    obs_0_ce0_local;
reg   [6:0] obs_0_address0_local;
reg    obs_1_ce0_local;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
reg    llike_we0_local;
reg    transition_0_ce0_local;
reg    transition_1_ce0_local;
reg    emission_0_ce0_local;
reg    emission_1_ce0_local;
reg    path_1_we0_local;
reg    path_1_ce0_local;
reg   [63:0] grp_fu_300_p0;
reg   [63:0] grp_fu_300_p1;
wire   [6:0] lshr_ln6_fu_344_p4;
wire   [0:0] trunc_ln18_fu_367_p1;
wire   [7:0] tmp_8_fu_388_p3;
wire   [6:0] conv32_udiv_fu_400_p4;
wire   [13:0] zext_ln33_fu_426_p1;
wire   [5:0] trunc_ln24_fu_455_p1;
wire   [10:0] shl_ln1_fu_459_p3;
reg    grp_fu_300_ce;
wire   [0:0] grp_fu_678_p2;
reg   [63:0] grp_fu_678_p0;
reg   [63:0] grp_fu_678_p1;
reg    grp_fu_678_ce;
reg   [4:0] grp_fu_678_opcode;
reg   [32:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
reg    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
reg    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
reg    ap_ST_fsm_state33_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
#0 grp_viterbi_Pipeline_L_init_fu_247_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_prev_state_fu_264_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_280_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_backtrack_fu_287_ap_start_reg = 1'b0;
#0 t_fu_94 = 8'd0;
end
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 8960 ),.AddressWidth( 14 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(llike_address1),.ce1(llike_ce1),.we1(llike_we1),.d1(grp_viterbi_Pipeline_L_init_fu_247_llike_d1),.q1(llike_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_247(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_247_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_247_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_247_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_247_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_247_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_247_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_247_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_247_llike_d0),.llike_address1(grp_viterbi_Pipeline_L_init_fu_247_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_init_fu_247_llike_ce1),.llike_we1(grp_viterbi_Pipeline_L_init_fu_247_llike_we1),.llike_d1(grp_viterbi_Pipeline_L_init_fu_247_llike_d1),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_247_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_247_init_0_ce0),.init_0_q0(init_0_q0),.init_0_address1(grp_viterbi_Pipeline_L_init_fu_247_init_0_address1),.init_0_ce1(grp_viterbi_Pipeline_L_init_fu_247_init_0_ce1),.init_0_q1(init_0_q1),.empty_10(conv3_udiv_reg_550),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_247_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_247_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_0_address1(grp_viterbi_Pipeline_L_init_fu_247_emission_0_address1),.emission_0_ce1(grp_viterbi_Pipeline_L_init_fu_247_emission_0_ce1),.emission_0_q1(emission_0_q1),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_247_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_247_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_1_address1(grp_viterbi_Pipeline_L_init_fu_247_emission_1_address1),.emission_1_ce1(grp_viterbi_Pipeline_L_init_fu_247_emission_1_ce1),.emission_1_q1(emission_1_q1),.empty(empty_reg_545),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_247_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_247_init_1_ce0),.init_1_q0(init_1_q0),.init_1_address1(grp_viterbi_Pipeline_L_init_fu_247_init_1_address1),.init_1_ce1(grp_viterbi_Pipeline_L_init_fu_247_init_1_ce1),.init_1_q1(init_1_q1),.conv3_udiv_cast(conv3_udiv_reg_550),.conv3_udiv(conv3_udiv_reg_550),.grp_fu_300_p_din0(grp_viterbi_Pipeline_L_init_fu_247_grp_fu_300_p_din0),.grp_fu_300_p_din1(grp_viterbi_Pipeline_L_init_fu_247_grp_fu_300_p_din1),.grp_fu_300_p_opcode(grp_viterbi_Pipeline_L_init_fu_247_grp_fu_300_p_opcode),.grp_fu_300_p_dout0(grp_fu_300_p2),.grp_fu_300_p_ce(grp_viterbi_Pipeline_L_init_fu_247_grp_fu_300_p_ce));
viterbi_viterbi_Pipeline_L_prev_state grp_viterbi_Pipeline_L_prev_state_fu_264(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_prev_state_fu_264_ap_start),.ap_done(grp_viterbi_Pipeline_L_prev_state_fu_264_ap_done),.ap_idle(grp_viterbi_Pipeline_L_prev_state_fu_264_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_prev_state_fu_264_ap_ready),.min_p_4(reg_310),.empty_8(empty_22_reg_583),.llike_address0(grp_viterbi_Pipeline_L_prev_state_fu_264_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_prev_state_fu_264_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_prev_state_fu_264_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_prev_state_fu_264_llike_ce1),.llike_q1(llike_q1),.lshr_ln(lshr_ln_reg_627),.transition_0_address0(grp_viterbi_Pipeline_L_prev_state_fu_264_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_prev_state_fu_264_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_prev_state_fu_264_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_prev_state_fu_264_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_prev_state_fu_264_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_prev_state_fu_264_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_prev_state_fu_264_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_prev_state_fu_264_transition_1_ce1),.transition_1_q1(transition_1_q1),.empty_9(trunc_ln23_reg_621),.bitcast_ln24(bitcast_ln24_reg_672),.empty(tmp_235_reg_588),.min_p_145_out(grp_viterbi_Pipeline_L_prev_state_fu_264_min_p_145_out),.min_p_145_out_ap_vld(grp_viterbi_Pipeline_L_prev_state_fu_264_min_p_145_out_ap_vld),.grp_fu_300_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_300_p_din0),.grp_fu_300_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_300_p_din1),.grp_fu_300_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_300_p_opcode),.grp_fu_300_p_dout0(grp_fu_300_p2),.grp_fu_300_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_300_p_ce),.grp_fu_678_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_678_p_din0),.grp_fu_678_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_678_p_din1),.grp_fu_678_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_678_p_opcode),.grp_fu_678_p_dout0(grp_fu_678_p2),.grp_fu_678_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_678_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_280(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_280_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_280_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_280_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_280_ap_ready),.min_p(reg_304),.llike_address0(grp_viterbi_Pipeline_L_end_fu_280_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_280_llike_ce0),.llike_q0(llike_q0),.min_s_out(grp_viterbi_Pipeline_L_end_fu_280_min_s_out),.min_s_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_280_min_s_out_ap_vld),.grp_fu_678_p_din0(grp_viterbi_Pipeline_L_end_fu_280_grp_fu_678_p_din0),.grp_fu_678_p_din1(grp_viterbi_Pipeline_L_end_fu_280_grp_fu_678_p_din1),.grp_fu_678_p_opcode(grp_viterbi_Pipeline_L_end_fu_280_grp_fu_678_p_opcode),.grp_fu_678_p_dout0(grp_fu_678_p2),.grp_fu_678_p_ce(grp_viterbi_Pipeline_L_end_fu_280_grp_fu_678_p_ce));
viterbi_viterbi_Pipeline_L_backtrack grp_viterbi_Pipeline_L_backtrack_fu_287(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_backtrack_fu_287_ap_start),.ap_done(grp_viterbi_Pipeline_L_backtrack_fu_287_ap_done),.ap_idle(grp_viterbi_Pipeline_L_backtrack_fu_287_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_backtrack_fu_287_ap_ready),.path_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_287_path_0_address0),.path_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_287_path_0_ce0),.path_0_we0(grp_viterbi_Pipeline_L_backtrack_fu_287_path_0_we0),.path_0_d0(grp_viterbi_Pipeline_L_backtrack_fu_287_path_0_d0),.path_0_q0(path_0_q0),.llike_address0(grp_viterbi_Pipeline_L_backtrack_fu_287_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_backtrack_fu_287_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_backtrack_fu_287_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_backtrack_fu_287_llike_ce1),.llike_q1(llike_q1),.path_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_287_path_1_address0),.path_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_287_path_1_ce0),.path_1_we0(grp_viterbi_Pipeline_L_backtrack_fu_287_path_1_we0),.path_1_d0(grp_viterbi_Pipeline_L_backtrack_fu_287_path_1_d0),.path_1_q0(path_1_q0),.transition_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_287_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_287_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_backtrack_fu_287_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_backtrack_fu_287_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_287_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_287_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_287_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_287_transition_1_ce1),.transition_1_q1(transition_1_q1),.grp_fu_300_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_300_p_din0),.grp_fu_300_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_300_p_din1),.grp_fu_300_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_300_p_opcode),.grp_fu_300_p_dout0(grp_fu_300_p2),.grp_fu_300_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_300_p_ce),.grp_fu_678_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_678_p_din0),.grp_fu_678_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_678_p_din1),.grp_fu_678_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_678_p_opcode),.grp_fu_678_p_dout0(grp_fu_678_p2),.grp_fu_678_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_678_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U36(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_300_p0),.din1(grp_fu_300_p1),.ce(grp_fu_300_ce),.dout(grp_fu_300_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U37(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_678_p0),.din1(grp_fu_678_p1),.ce(grp_fu_678_ce),.opcode(grp_fu_678_opcode),.dout(grp_fu_678_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_backtrack_fu_287_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state32)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_287_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_backtrack_fu_287_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_287_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_280_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state29)) begin
            grp_viterbi_Pipeline_L_end_fu_280_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_280_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_280_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_247_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_247_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_247_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_247_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_prev_state_fu_264_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_264_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_prev_state_fu_264_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_264_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        curr_reg_236 <= add_ln19_reg_611;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        curr_reg_236 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_94 <= 8'd1;
    end else if (((icmp_ln19_fu_414_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        t_fu_94 <= add_ln18_fu_472_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln19_reg_611 <= add_ln19_fu_420_p2;
        add_ln24_reg_642 <= add_ln24_fu_467_p2;
        add_ln33_reg_616 <= add_ln33_fu_430_p2;
        lshr_ln_reg_627 <= {{curr_reg_236[5:1]}};
        trunc_ln23_reg_621 <= trunc_ln23_fu_435_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        bitcast_ln24_reg_672 <= bitcast_ln24_fu_505_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv32_udiv_cast_reg_603[6 : 0] <= conv32_udiv_cast_fu_410_p1[6 : 0];
        empty_22_reg_583 <= empty_22_fu_370_p2;
        empty_23_reg_598 <= empty_23_fu_396_p1;
        llike_addr_9_reg_593[13 : 6] <= tmp_235_cast_fu_383_p1[13 : 6];
        tmp_234_reg_578[13 : 6] <= tmp_234_fu_360_p3[13 : 6];
        tmp_235_reg_588[13 : 6] <= tmp_235_fu_375_p3[13 : 6];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_550 <= {{obs_0_q0[7:1]}};
        empty_reg_545 <= empty_fu_321_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_prev_state_fu_264_min_p_145_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        min_p_145_loc_fu_102 <= grp_viterbi_Pipeline_L_prev_state_fu_264_min_p_145_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_304 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_310 <= grp_fu_300_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        select_ln23_reg_647 <= select_ln23_fu_482_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        select_ln24_reg_667 <= select_ln24_fu_498_p3;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_prev_state_fu_264_ap_done == 1'b0)) begin
        ap_ST_fsm_state26_blk = 1'b1;
    end else begin
        ap_ST_fsm_state26_blk = 1'b0;
    end
end
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_280_ap_done == 1'b0)) begin
        ap_ST_fsm_state30_blk = 1'b1;
    end else begin
        ap_ST_fsm_state30_blk = 1'b0;
    end
end
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_backtrack_fu_287_ap_done == 1'b0)) begin
        ap_ST_fsm_state33_blk = 1'b1;
    end else begin
        ap_ST_fsm_state33_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_247_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_viterbi_Pipeline_L_backtrack_fu_287_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((grp_viterbi_Pipeline_L_backtrack_fu_287_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_247_emission_0_address0;
    end else begin
        emission_0_address0 = zext_ln24_fu_493_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_247_emission_0_ce0;
    end else begin
        emission_0_ce0 = emission_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce1 = grp_viterbi_Pipeline_L_init_fu_247_emission_0_ce1;
    end else begin
        emission_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_247_emission_1_address0;
    end else begin
        emission_1_address0 = zext_ln24_fu_493_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_247_emission_1_ce0;
    end else begin
        emission_1_ce0 = emission_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce1 = grp_viterbi_Pipeline_L_init_fu_247_emission_1_ce1;
    end else begin
        emission_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_300_ce = grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_300_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_300_ce = grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_300_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_300_ce = grp_viterbi_Pipeline_L_init_fu_247_grp_fu_300_p_ce;
    end else begin
        grp_fu_300_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_300_p0 = grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_300_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_300_p0 = grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_300_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_300_p0 = grp_viterbi_Pipeline_L_init_fu_247_grp_fu_300_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_300_p0 = reg_310;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_300_p0 = reg_304;
    end else begin
        grp_fu_300_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_300_p1 = grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_300_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_300_p1 = grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_300_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_300_p1 = grp_viterbi_Pipeline_L_init_fu_247_grp_fu_300_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_300_p1 = bitcast_ln24_fu_505_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_300_p1 = bitcast_ln23_fu_489_p1;
    end else begin
        grp_fu_300_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_678_ce = grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_678_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_678_ce = grp_viterbi_Pipeline_L_end_fu_280_grp_fu_678_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_678_ce = grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_678_p_ce;
    end else begin
        grp_fu_678_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_678_opcode = grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_678_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_678_opcode = grp_viterbi_Pipeline_L_end_fu_280_grp_fu_678_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_678_opcode = grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_678_p_opcode;
    end else begin
        grp_fu_678_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_678_p0 = grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_678_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_678_p0 = grp_viterbi_Pipeline_L_end_fu_280_grp_fu_678_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_678_p0 = grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_678_p_din0;
    end else begin
        grp_fu_678_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_678_p1 = grp_viterbi_Pipeline_L_backtrack_fu_287_grp_fu_678_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_678_p1 = grp_viterbi_Pipeline_L_end_fu_280_grp_fu_678_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_678_p1 = grp_viterbi_Pipeline_L_prev_state_fu_264_grp_fu_678_p_din1;
    end else begin
        grp_fu_678_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_address0 = grp_viterbi_Pipeline_L_backtrack_fu_287_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_280_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_address0 = grp_viterbi_Pipeline_L_prev_state_fu_264_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_247_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_address0_local = zext_ln33_1_fu_509_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        llike_address0_local = llike_addr_9_reg_593;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd8896;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_address1 = grp_viterbi_Pipeline_L_backtrack_fu_287_llike_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_address1 = grp_viterbi_Pipeline_L_prev_state_fu_264_llike_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address1 = grp_viterbi_Pipeline_L_init_fu_247_llike_address1;
    end else begin
        llike_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_287_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_280_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_264_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_247_llike_ce0;
    end else begin
        llike_ce0 = llike_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_287_llike_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_264_llike_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_init_fu_247_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_247_llike_d0;
    end else begin
        llike_d0 = min_p_145_loc_fu_102;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_247_llike_we0;
    end else begin
        llike_we0 = llike_we0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we1 = grp_viterbi_Pipeline_L_init_fu_247_llike_we1;
    end else begin
        llike_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_0_address0_local = zext_ln6_fu_354_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        obs_0_address0_local = 64'd0;
    end else begin
        obs_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        obs_0_ce0_local = 1'b1;
    end else begin
        obs_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_1_ce0_local = 1'b1;
    end else begin
        obs_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_287_path_1_address0;
    end else begin
        path_1_address0 = 64'd69;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_287_path_1_ce0;
    end else begin
        path_1_ce0 = path_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        path_1_ce0_local = 1'b1;
    end else begin
        path_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_1_d0 = grp_viterbi_Pipeline_L_backtrack_fu_287_path_1_d0;
    end else begin
        path_1_d0 = grp_viterbi_Pipeline_L_end_fu_280_min_s_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_1_we0 = grp_viterbi_Pipeline_L_backtrack_fu_287_path_1_we0;
    end else begin
        path_1_we0 = path_1_we0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        path_1_we0_local = 1'b1;
    end else begin
        path_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_287_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_prev_state_fu_264_transition_0_address0;
    end else begin
        transition_0_address0 = zext_ln23_fu_449_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_backtrack_fu_287_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_prev_state_fu_264_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_287_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_264_transition_0_ce0;
    end else begin
        transition_0_ce0 = transition_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_287_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_264_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_287_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_prev_state_fu_264_transition_1_address0;
    end else begin
        transition_1_address0 = zext_ln23_fu_449_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_287_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_prev_state_fu_264_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_287_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_264_transition_1_ce0;
    end else begin
        transition_1_ce0 = transition_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_287_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_264_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_viterbi_Pipeline_L_init_fu_247_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_338_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_414_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            if (((grp_viterbi_Pipeline_L_prev_state_fu_264_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            if (((grp_viterbi_Pipeline_L_end_fu_280_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state30;
            end
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            if (((grp_viterbi_Pipeline_L_backtrack_fu_287_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln18_fu_472_p2 = (t_fu_94 + 8'd1);
assign add_ln19_fu_420_p2 = (curr_reg_236 + 7'd1);
assign add_ln24_fu_467_p2 = (shl_ln1_fu_459_p3 + conv32_udiv_cast_reg_603);
assign add_ln33_fu_430_p2 = (tmp_234_reg_578 + zext_ln33_fu_426_p1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign bitcast_ln23_fu_489_p1 = select_ln23_reg_647;
assign bitcast_ln24_fu_505_p1 = select_ln24_reg_667;
assign conv32_udiv_cast_fu_410_p1 = conv32_udiv_fu_400_p4;
assign conv32_udiv_fu_400_p4 = {{tmp_8_fu_388_p3[7:1]}};
assign emission_0_address1 = grp_viterbi_Pipeline_L_init_fu_247_emission_0_address1;
assign emission_1_address1 = grp_viterbi_Pipeline_L_init_fu_247_emission_1_address1;
assign empty_22_fu_370_p2 = ($signed(t_fu_94) + $signed(8'd255));
assign empty_23_fu_396_p1 = tmp_8_fu_388_p3[0:0];
assign empty_fu_321_p1 = obs_0_q0[0:0];
assign grp_viterbi_Pipeline_L_backtrack_fu_287_ap_start = grp_viterbi_Pipeline_L_backtrack_fu_287_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_280_ap_start = grp_viterbi_Pipeline_L_end_fu_280_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_247_ap_start = grp_viterbi_Pipeline_L_init_fu_247_ap_start_reg;
assign grp_viterbi_Pipeline_L_prev_state_fu_264_ap_start = grp_viterbi_Pipeline_L_prev_state_fu_264_ap_start_reg;
assign icmp_ln18_fu_338_p2 = ((t_fu_94 == 8'd140) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_414_p2 = ((curr_reg_236 == 7'd64) ? 1'b1 : 1'b0);
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_247_init_0_address0;
assign init_0_address1 = grp_viterbi_Pipeline_L_init_fu_247_init_0_address1;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_247_init_0_ce0;
assign init_0_ce1 = grp_viterbi_Pipeline_L_init_fu_247_init_0_ce1;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_247_init_1_address0;
assign init_1_address1 = grp_viterbi_Pipeline_L_init_fu_247_init_1_address1;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_247_init_1_ce0;
assign init_1_ce1 = grp_viterbi_Pipeline_L_init_fu_247_init_1_ce1;
assign lshr_ln6_fu_344_p4 = {{t_fu_94[7:1]}};
assign lshr_ln_fu_439_p4 = {{curr_reg_236[5:1]}};
assign obs_0_address0 = obs_0_address0_local;
assign obs_0_ce0 = obs_0_ce0_local;
assign obs_1_address0 = zext_ln6_fu_354_p1;
assign obs_1_ce0 = obs_1_ce0_local;
assign path_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_287_path_0_address0;
assign path_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_287_path_0_ce0;
assign path_0_d0 = grp_viterbi_Pipeline_L_backtrack_fu_287_path_0_d0;
assign path_0_we0 = grp_viterbi_Pipeline_L_backtrack_fu_287_path_0_we0;
assign select_ln23_fu_482_p3 = ((trunc_ln23_reg_621[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign select_ln24_fu_498_p3 = ((empty_23_reg_598[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign shl_ln1_fu_459_p3 = {{trunc_ln24_fu_455_p1}, {5'd0}};
assign tmp_234_fu_360_p3 = {{t_fu_94}, {6'd0}};
assign tmp_235_cast_fu_383_p1 = tmp_235_fu_375_p3;
assign tmp_235_fu_375_p3 = {{empty_22_fu_370_p2}, {6'd0}};
assign tmp_8_fu_388_p3 = ((trunc_ln18_fu_367_p1[0:0] == 1'b1) ? obs_1_q0 : obs_0_q0);
assign trunc_ln18_fu_367_p1 = t_fu_94[0:0];
assign trunc_ln23_fu_435_p1 = curr_reg_236[0:0];
assign trunc_ln24_fu_455_p1 = curr_reg_236[5:0];
assign zext_ln23_fu_449_p1 = lshr_ln_fu_439_p4;
assign zext_ln24_fu_493_p1 = add_ln24_reg_642;
assign zext_ln33_1_fu_509_p1 = add_ln33_reg_616;
assign zext_ln33_fu_426_p1 = curr_reg_236;
assign zext_ln6_fu_354_p1 = lshr_ln6_fu_344_p4;
always @ (posedge ap_clk) begin
    tmp_234_reg_578[5:0] <= 6'b000000;
    tmp_235_reg_588[5:0] <= 6'b000000;
    llike_addr_9_reg_593[5:0] <= 6'b000000;
    conv32_udiv_cast_reg_603[10:7] <= 4'b0000;
end
endmodule 