module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_1_address0,emission_1_ce0,emission_1_q0,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;
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
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
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
output  [10:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
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
reg[10:0] emission_1_address0;
reg emission_1_ce0;
reg[6:0] path_1_address0;
reg path_1_ce0;
reg path_1_we0;
reg[7:0] path_1_d0;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] empty_fu_307_p1;
reg   [0:0] empty_reg_665;
wire    ap_CS_fsm_state2;
reg   [6:0] conv3_udiv_reg_670;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_680;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_50_fu_360_p2;
reg   [7:0] empty_50_reg_700;
wire    ap_CS_fsm_state6;
wire   [0:0] empty_51_fu_373_p1;
reg   [0:0] empty_51_reg_736;
reg   [6:0] conv32_udiv_reg_741;
wire   [12:0] tmp_383_fu_387_p3;
reg   [12:0] tmp_383_reg_746;
wire    ap_CS_fsm_state7;
wire   [12:0] tmp_384_fu_395_p3;
reg   [12:0] tmp_384_reg_751;
wire   [12:0] tmp_385_fu_403_p3;
reg   [12:0] tmp_385_reg_756;
wire   [12:0] tmp_386_fu_411_p3;
reg   [12:0] tmp_386_reg_761;
wire   [12:0] tmp_387_fu_419_p3;
reg   [12:0] tmp_387_reg_766;
wire   [12:0] tmp_388_fu_427_p3;
reg   [12:0] tmp_388_reg_771;
wire   [12:0] tmp_389_fu_435_p3;
reg   [12:0] tmp_389_reg_776;
wire   [12:0] tmp_390_fu_443_p3;
reg   [12:0] tmp_390_reg_781;
wire   [12:0] tmp_391_fu_451_p3;
reg   [12:0] tmp_391_reg_786;
wire   [12:0] tmp_392_fu_459_p3;
reg   [12:0] tmp_392_reg_791;
wire   [12:0] tmp_393_fu_467_p3;
reg   [12:0] tmp_393_reg_796;
wire   [12:0] tmp_394_fu_475_p3;
reg   [12:0] tmp_394_reg_801;
wire   [12:0] tmp_395_fu_483_p3;
reg   [12:0] tmp_395_reg_806;
wire   [12:0] tmp_396_fu_491_p3;
reg   [12:0] tmp_396_reg_811;
wire   [12:0] tmp_397_fu_499_p3;
reg   [12:0] tmp_397_reg_816;
wire   [12:0] tmp_398_fu_507_p3;
reg   [12:0] tmp_398_reg_821;
wire   [12:0] tmp_399_fu_515_p3;
reg   [12:0] tmp_399_reg_826;
wire   [12:0] tmp_400_fu_523_p3;
reg   [12:0] tmp_400_reg_831;
wire   [12:0] tmp_401_fu_531_p3;
reg   [12:0] tmp_401_reg_836;
wire   [12:0] tmp_402_fu_539_p3;
reg   [12:0] tmp_402_reg_841;
wire   [12:0] tmp_403_fu_547_p3;
reg   [12:0] tmp_403_reg_846;
wire   [12:0] tmp_404_fu_555_p3;
reg   [12:0] tmp_404_reg_851;
wire   [12:0] tmp_405_fu_563_p3;
reg   [12:0] tmp_405_reg_856;
wire   [12:0] tmp_406_fu_571_p3;
reg   [12:0] tmp_406_reg_861;
wire   [12:0] tmp_407_fu_579_p3;
reg   [12:0] tmp_407_reg_866;
wire   [12:0] tmp_408_fu_587_p3;
reg   [12:0] tmp_408_reg_871;
wire   [12:0] tmp_409_fu_595_p3;
reg   [12:0] tmp_409_reg_876;
wire   [12:0] tmp_410_fu_603_p3;
reg   [12:0] tmp_410_reg_881;
wire   [12:0] tmp_411_fu_611_p3;
reg   [12:0] tmp_411_reg_886;
wire   [12:0] tmp_s_fu_619_p3;
reg   [12:0] tmp_s_reg_891;
wire   [12:0] tmp_412_fu_627_p3;
reg   [12:0] tmp_412_reg_896;
wire   [12:0] tmp_413_fu_635_p3;
reg   [12:0] tmp_413_reg_901;
reg   [63:0] min_p_reg_906;
wire    ap_CS_fsm_state9;
reg   [12:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg   [12:0] llike_address1;
reg    llike_ce1;
wire   [63:0] llike_q1;
reg   [12:0] llike_1_address0;
reg    llike_1_ce0;
reg    llike_1_we0;
reg   [63:0] llike_1_d0;
wire   [63:0] llike_1_q0;
reg   [12:0] llike_1_address1;
reg    llike_1_ce1;
wire   [63:0] llike_1_q1;
wire    grp_viterbi_Pipeline_L_init_fu_215_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_215_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_215_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_215_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_215_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_215_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_215_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_215_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_215_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_215_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_215_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_215_llike_1_d0;
wire   [4:0] grp_viterbi_Pipeline_L_init_fu_215_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_215_init_0_ce0;
wire   [4:0] grp_viterbi_Pipeline_L_init_fu_215_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_215_init_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_215_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_215_emission_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_215_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_215_emission_1_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_215_grp_fu_911_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_215_grp_fu_911_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_215_grp_fu_911_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_215_grp_fu_911_p_ce;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_ap_start;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_ap_done;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_ap_idle;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_231_llike_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_llike_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_231_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_231_llike_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_llike_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_d0;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_231_transition_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_transition_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_231_transition_0_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_transition_0_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_231_transition_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_transition_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_231_transition_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_transition_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_231_emission_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_emission_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_231_emission_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_emission_1_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_911_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_911_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_911_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_911_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_915_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_915_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_915_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_915_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_280_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_280_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_280_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_280_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_280_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_280_llike_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_280_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_280_llike_1_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_280_min_s_out;
wire    grp_viterbi_Pipeline_L_end_fu_280_min_s_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_280_grp_fu_915_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_280_grp_fu_915_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_280_grp_fu_915_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_280_grp_fu_915_p_ce;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_ap_start;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_ap_done;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_ap_idle;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_ap_ready;
wire   [6:0] grp_viterbi_Pipeline_L_backtrack_fu_288_path_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_path_0_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_path_0_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_288_path_0_d0;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_288_llike_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_llike_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_288_llike_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_llike_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_288_llike_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_llike_1_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_288_llike_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_llike_1_ce1;
wire   [6:0] grp_viterbi_Pipeline_L_backtrack_fu_288_path_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_path_1_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_path_1_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_288_path_1_d0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_288_transition_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_transition_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_288_transition_0_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_transition_0_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_288_transition_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_transition_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_288_transition_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_transition_1_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_911_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_911_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_911_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_911_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_915_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_915_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_915_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_915_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_215_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_curr_state_fu_231_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_viterbi_Pipeline_L_end_fu_280_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg    grp_viterbi_Pipeline_L_backtrack_fu_288_ap_start_reg;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln6_fu_340_p1;
wire   [0:0] icmp_ln18_fu_324_p2;
wire    ap_CS_fsm_state12;
reg   [7:0] t_fu_138;
wire   [7:0] add_ln18_fu_346_p2;
reg    obs_0_ce0_local;
reg   [6:0] obs_0_address0_local;
reg    obs_1_ce0_local;
reg    llike_ce0_local;
reg    path_1_we0_local;
reg    path_1_ce0_local;
wire   [6:0] lshr_ln6_fu_330_p4;
wire   [0:0] trunc_ln18_fu_357_p1;
wire   [7:0] tmp_2_fu_365_p3;
wire   [63:0] grp_fu_911_p2;
reg   [63:0] grp_fu_911_p0;
reg   [63:0] grp_fu_911_p1;
reg    grp_fu_911_ce;
wire   [0:0] grp_fu_915_p2;
reg   [63:0] grp_fu_915_p0;
reg   [63:0] grp_fu_915_p1;
reg    grp_fu_915_ce;
reg   [4:0] grp_fu_915_opcode;
reg   [13:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_viterbi_Pipeline_L_init_fu_215_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_curr_state_fu_231_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_280_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_backtrack_fu_288_ap_start_reg = 1'b0;
#0 t_fu_138 = 8'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_215(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_215_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_215_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_215_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_215_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_215_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_215_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_215_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_215_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_215_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_215_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_215_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_215_llike_1_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_215_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_215_init_0_ce0),.init_0_q0(init_0_q0),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_215_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_215_init_1_ce0),.init_1_q0(init_1_q0),.conv3_udiv_cast(conv3_udiv_reg_670),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_215_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_215_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_215_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_215_emission_1_ce0),.emission_1_q0(emission_1_q0),.empty(empty_reg_665),.grp_fu_911_p_din0(grp_viterbi_Pipeline_L_init_fu_215_grp_fu_911_p_din0),.grp_fu_911_p_din1(grp_viterbi_Pipeline_L_init_fu_215_grp_fu_911_p_din1),.grp_fu_911_p_opcode(grp_viterbi_Pipeline_L_init_fu_215_grp_fu_911_p_opcode),.grp_fu_911_p_dout0(grp_fu_911_p2),.grp_fu_911_p_ce(grp_viterbi_Pipeline_L_init_fu_215_grp_fu_911_p_ce));
viterbi_viterbi_Pipeline_L_curr_state grp_viterbi_Pipeline_L_curr_state_fu_231(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_curr_state_fu_231_ap_start),.ap_done(grp_viterbi_Pipeline_L_curr_state_fu_231_ap_done),.ap_idle(grp_viterbi_Pipeline_L_curr_state_fu_231_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_curr_state_fu_231_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_curr_state_fu_231_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_curr_state_fu_231_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_curr_state_fu_231_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_curr_state_fu_231_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_curr_state_fu_231_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_curr_state_fu_231_llike_ce1),.llike_q1(llike_q1),.empty_7(tmp_383_reg_746),.llike_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_ce1),.llike_1_q1(llike_1_q1),.empty_8(tmp_384_reg_751),.empty_9(tmp_385_reg_756),.empty_10(tmp_386_reg_761),.empty_11(tmp_387_reg_766),.empty_12(tmp_388_reg_771),.empty_13(tmp_389_reg_776),.empty_14(tmp_390_reg_781),.empty_15(tmp_391_reg_786),.empty_16(tmp_392_reg_791),.empty_17(tmp_393_reg_796),.empty_18(tmp_394_reg_801),.empty_19(tmp_395_reg_806),.empty_20(tmp_396_reg_811),.empty_21(tmp_397_reg_816),.empty_22(tmp_398_reg_821),.empty_23(tmp_399_reg_826),.empty_24(tmp_400_reg_831),.empty_25(tmp_401_reg_836),.empty_26(tmp_402_reg_841),.empty_27(tmp_403_reg_846),.empty_28(tmp_404_reg_851),.empty_29(tmp_405_reg_856),.empty_30(tmp_406_reg_861),.empty_31(tmp_407_reg_866),.empty_32(tmp_408_reg_871),.empty_33(tmp_409_reg_876),.empty_34(tmp_410_reg_881),.empty_35(tmp_411_reg_886),.empty_36(tmp_s_reg_891),.empty_37(tmp_412_reg_896),.empty_38(tmp_413_reg_901),.t(t_2_reg_680),.transition_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_231_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_231_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_curr_state_fu_231_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_curr_state_fu_231_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_231_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_231_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_231_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_231_transition_1_ce1),.transition_1_q1(transition_1_q1),.conv32_udiv_cast(conv32_udiv_reg_741),.emission_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_231_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_231_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_231_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_231_emission_1_ce0),.emission_1_q0(emission_1_q0),.empty(empty_51_reg_736),.grp_fu_911_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_911_p_din0),.grp_fu_911_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_911_p_din1),.grp_fu_911_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_911_p_opcode),.grp_fu_911_p_dout0(grp_fu_911_p2),.grp_fu_911_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_911_p_ce),.grp_fu_915_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_915_p_din0),.grp_fu_915_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_915_p_din1),.grp_fu_915_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_915_p_opcode),.grp_fu_915_p_dout0(grp_fu_915_p2),.grp_fu_915_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_915_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_280(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_280_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_280_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_280_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_280_ap_ready),.min_p(min_p_reg_906),.llike_address0(grp_viterbi_Pipeline_L_end_fu_280_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_280_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_280_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_280_llike_1_ce0),.llike_1_q0(llike_1_q0),.min_s_out(grp_viterbi_Pipeline_L_end_fu_280_min_s_out),.min_s_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_280_min_s_out_ap_vld),.grp_fu_915_p_din0(grp_viterbi_Pipeline_L_end_fu_280_grp_fu_915_p_din0),.grp_fu_915_p_din1(grp_viterbi_Pipeline_L_end_fu_280_grp_fu_915_p_din1),.grp_fu_915_p_opcode(grp_viterbi_Pipeline_L_end_fu_280_grp_fu_915_p_opcode),.grp_fu_915_p_dout0(grp_fu_915_p2),.grp_fu_915_p_ce(grp_viterbi_Pipeline_L_end_fu_280_grp_fu_915_p_ce));
viterbi_viterbi_Pipeline_L_backtrack grp_viterbi_Pipeline_L_backtrack_fu_288(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_backtrack_fu_288_ap_start),.ap_done(grp_viterbi_Pipeline_L_backtrack_fu_288_ap_done),.ap_idle(grp_viterbi_Pipeline_L_backtrack_fu_288_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_backtrack_fu_288_ap_ready),.path_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_288_path_0_address0),.path_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_288_path_0_ce0),.path_0_we0(grp_viterbi_Pipeline_L_backtrack_fu_288_path_0_we0),.path_0_d0(grp_viterbi_Pipeline_L_backtrack_fu_288_path_0_d0),.path_0_q0(path_0_q0),.llike_address0(grp_viterbi_Pipeline_L_backtrack_fu_288_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_backtrack_fu_288_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_backtrack_fu_288_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_backtrack_fu_288_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_288_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_288_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_288_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_288_llike_1_ce1),.llike_1_q1(llike_1_q1),.path_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_288_path_1_address0),.path_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_288_path_1_ce0),.path_1_we0(grp_viterbi_Pipeline_L_backtrack_fu_288_path_1_we0),.path_1_d0(grp_viterbi_Pipeline_L_backtrack_fu_288_path_1_d0),.path_1_q0(path_1_q0),.transition_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_288_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_288_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_backtrack_fu_288_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_backtrack_fu_288_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_288_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_288_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_288_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_288_transition_1_ce1),.transition_1_q1(transition_1_q1),.grp_fu_911_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_911_p_din0),.grp_fu_911_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_911_p_din1),.grp_fu_911_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_911_p_opcode),.grp_fu_911_p_dout0(grp_fu_911_p2),.grp_fu_911_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_911_p_ce),.grp_fu_915_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_915_p_din0),.grp_fu_915_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_915_p_din1),.grp_fu_915_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_915_p_opcode),.grp_fu_915_p_dout0(grp_fu_915_p2),.grp_fu_915_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_915_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U71(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_911_p0),.din1(grp_fu_911_p1),.ce(grp_fu_911_ce),.dout(grp_fu_911_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U72(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_915_p0),.din1(grp_fu_915_p1),.ce(grp_fu_915_ce),.opcode(grp_fu_915_opcode),.dout(grp_fu_915_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_backtrack_fu_288_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_288_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_backtrack_fu_288_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_288_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_curr_state_fu_231_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_231_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_curr_state_fu_231_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_231_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_280_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_viterbi_Pipeline_L_end_fu_280_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_280_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_280_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_215_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_215_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_215_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_215_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        t_fu_138 <= 8'd1;
    end else if (((icmp_ln18_fu_324_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        t_fu_138 <= add_ln18_fu_346_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv32_udiv_reg_741 <= {{tmp_2_fu_365_p3[7:1]}};
        empty_50_reg_700 <= empty_50_fu_360_p2;
        empty_51_reg_736 <= empty_51_fu_373_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_670 <= {{obs_0_q0[7:1]}};
        empty_reg_665 <= empty_fu_307_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        min_p_reg_906 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_680 <= t_fu_138;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_383_reg_746[12 : 5] <= tmp_383_fu_387_p3[12 : 5];
        tmp_384_reg_751[12 : 5] <= tmp_384_fu_395_p3[12 : 5];
        tmp_385_reg_756[12 : 5] <= tmp_385_fu_403_p3[12 : 5];
        tmp_386_reg_761[12 : 5] <= tmp_386_fu_411_p3[12 : 5];
        tmp_387_reg_766[12 : 5] <= tmp_387_fu_419_p3[12 : 5];
        tmp_388_reg_771[12 : 5] <= tmp_388_fu_427_p3[12 : 5];
        tmp_389_reg_776[12 : 5] <= tmp_389_fu_435_p3[12 : 5];
        tmp_390_reg_781[12 : 5] <= tmp_390_fu_443_p3[12 : 5];
        tmp_391_reg_786[12 : 5] <= tmp_391_fu_451_p3[12 : 5];
        tmp_392_reg_791[12 : 5] <= tmp_392_fu_459_p3[12 : 5];
        tmp_393_reg_796[12 : 5] <= tmp_393_fu_467_p3[12 : 5];
        tmp_394_reg_801[12 : 5] <= tmp_394_fu_475_p3[12 : 5];
        tmp_395_reg_806[12 : 5] <= tmp_395_fu_483_p3[12 : 5];
        tmp_396_reg_811[12 : 5] <= tmp_396_fu_491_p3[12 : 5];
        tmp_397_reg_816[12 : 5] <= tmp_397_fu_499_p3[12 : 5];
        tmp_398_reg_821[12 : 5] <= tmp_398_fu_507_p3[12 : 5];
        tmp_399_reg_826[12 : 5] <= tmp_399_fu_515_p3[12 : 5];
        tmp_400_reg_831[12 : 5] <= tmp_400_fu_523_p3[12 : 5];
        tmp_401_reg_836[12 : 5] <= tmp_401_fu_531_p3[12 : 5];
        tmp_402_reg_841[12 : 5] <= tmp_402_fu_539_p3[12 : 5];
        tmp_403_reg_846[12 : 5] <= tmp_403_fu_547_p3[12 : 5];
        tmp_404_reg_851[12 : 5] <= tmp_404_fu_555_p3[12 : 5];
        tmp_405_reg_856[12 : 5] <= tmp_405_fu_563_p3[12 : 5];
        tmp_406_reg_861[12 : 5] <= tmp_406_fu_571_p3[12 : 5];
        tmp_407_reg_866[12 : 5] <= tmp_407_fu_579_p3[12 : 5];
        tmp_408_reg_871[12 : 5] <= tmp_408_fu_587_p3[12 : 5];
        tmp_409_reg_876[12 : 5] <= tmp_409_fu_595_p3[12 : 5];
        tmp_410_reg_881[12 : 5] <= tmp_410_fu_603_p3[12 : 5];
        tmp_411_reg_886[12 : 5] <= tmp_411_fu_611_p3[12 : 5];
        tmp_412_reg_896[12 : 5] <= tmp_412_fu_627_p3[12 : 5];
        tmp_413_reg_901[12 : 5] <= tmp_413_fu_635_p3[12 : 5];
        tmp_s_reg_891[12 : 5] <= tmp_s_fu_619_p3[12 : 5];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_280_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_backtrack_fu_288_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_215_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_curr_state_fu_231_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_viterbi_Pipeline_L_backtrack_fu_288_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((grp_viterbi_Pipeline_L_backtrack_fu_288_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_231_emission_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_215_emission_0_address0;
    end else begin
        emission_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_231_emission_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_215_emission_0_ce0;
    end else begin
        emission_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_231_emission_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_215_emission_1_address0;
    end else begin
        emission_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_231_emission_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_215_emission_1_ce0;
    end else begin
        emission_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_911_ce = grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_911_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_911_ce = grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_911_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_911_ce = grp_viterbi_Pipeline_L_init_fu_215_grp_fu_911_p_ce;
    end else begin
        grp_fu_911_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_911_p0 = grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_911_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_911_p0 = grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_911_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_911_p0 = grp_viterbi_Pipeline_L_init_fu_215_grp_fu_911_p_din0;
    end else begin
        grp_fu_911_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_911_p1 = grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_911_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_911_p1 = grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_911_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_911_p1 = grp_viterbi_Pipeline_L_init_fu_215_grp_fu_911_p_din1;
    end else begin
        grp_fu_911_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_915_ce = grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_915_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_915_ce = grp_viterbi_Pipeline_L_end_fu_280_grp_fu_915_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_915_ce = grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_915_p_ce;
    end else begin
        grp_fu_915_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_915_opcode = grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_915_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_915_opcode = grp_viterbi_Pipeline_L_end_fu_280_grp_fu_915_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_915_opcode = grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_915_p_opcode;
    end else begin
        grp_fu_915_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_915_p0 = grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_915_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_915_p0 = grp_viterbi_Pipeline_L_end_fu_280_grp_fu_915_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_915_p0 = grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_915_p_din0;
    end else begin
        grp_fu_915_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_915_p1 = grp_viterbi_Pipeline_L_backtrack_fu_288_grp_fu_915_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_915_p1 = grp_viterbi_Pipeline_L_end_fu_280_grp_fu_915_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_915_p1 = grp_viterbi_Pipeline_L_curr_state_fu_231_grp_fu_915_p_din1;
    end else begin
        grp_fu_915_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_288_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_280_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_215_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_288_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_288_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_280_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_215_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_288_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_215_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_curr_state_fu_231_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_215_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_address0 = grp_viterbi_Pipeline_L_backtrack_fu_288_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_280_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_address0 = grp_viterbi_Pipeline_L_curr_state_fu_231_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_215_llike_address0;
    end else begin
        llike_address0 = 64'd4448;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_address1 = grp_viterbi_Pipeline_L_backtrack_fu_288_llike_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_address1 = grp_viterbi_Pipeline_L_curr_state_fu_231_llike_address1;
    end else begin
        llike_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_288_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_280_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_231_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_215_llike_ce0;
    end else begin
        llike_ce0 = llike_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_288_llike_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_231_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_d0 = grp_viterbi_Pipeline_L_curr_state_fu_231_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_215_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_we0 = grp_viterbi_Pipeline_L_curr_state_fu_231_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_215_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_0_address0_local = zext_ln6_fu_340_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        obs_0_address0_local = 64'd0;
    end else begin
        obs_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_288_path_1_address0;
    end else begin
        path_1_address0 = 64'd69;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_288_path_1_ce0;
    end else begin
        path_1_ce0 = path_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        path_1_ce0_local = 1'b1;
    end else begin
        path_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_1_d0 = grp_viterbi_Pipeline_L_backtrack_fu_288_path_1_d0;
    end else begin
        path_1_d0 = grp_viterbi_Pipeline_L_end_fu_280_min_s_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_1_we0 = grp_viterbi_Pipeline_L_backtrack_fu_288_path_1_we0;
    end else begin
        path_1_we0 = path_1_we0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        path_1_we0_local = 1'b1;
    end else begin
        path_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_288_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_231_transition_0_address0;
    end else begin
        transition_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_backtrack_fu_288_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_curr_state_fu_231_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_288_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_231_transition_0_ce0;
    end else begin
        transition_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_288_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_231_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_288_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_231_transition_1_address0;
    end else begin
        transition_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_288_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_231_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_288_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_231_transition_1_ce0;
    end else begin
        transition_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_288_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_231_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
            if (((grp_viterbi_Pipeline_L_init_fu_215_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_324_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_viterbi_Pipeline_L_curr_state_fu_231_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_viterbi_Pipeline_L_end_fu_280_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_viterbi_Pipeline_L_backtrack_fu_288_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln18_fu_346_p2 = (t_fu_138 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign empty_50_fu_360_p2 = ($signed(t_2_reg_680) + $signed(8'd255));
assign empty_51_fu_373_p1 = tmp_2_fu_365_p3[0:0];
assign empty_fu_307_p1 = obs_0_q0[0:0];
assign grp_viterbi_Pipeline_L_backtrack_fu_288_ap_start = grp_viterbi_Pipeline_L_backtrack_fu_288_ap_start_reg;
assign grp_viterbi_Pipeline_L_curr_state_fu_231_ap_start = grp_viterbi_Pipeline_L_curr_state_fu_231_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_280_ap_start = grp_viterbi_Pipeline_L_end_fu_280_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_215_ap_start = grp_viterbi_Pipeline_L_init_fu_215_ap_start_reg;
assign icmp_ln18_fu_324_p2 = ((t_fu_138 == 8'd140) ? 1'b1 : 1'b0);
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_215_init_0_address0;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_215_init_0_ce0;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_215_init_1_address0;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_215_init_1_ce0;
assign lshr_ln6_fu_330_p4 = {{t_fu_138[7:1]}};
assign obs_0_address0 = obs_0_address0_local;
assign obs_0_ce0 = obs_0_ce0_local;
assign obs_1_address0 = zext_ln6_fu_340_p1;
assign obs_1_ce0 = obs_1_ce0_local;
assign path_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_288_path_0_address0;
assign path_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_288_path_0_ce0;
assign path_0_d0 = grp_viterbi_Pipeline_L_backtrack_fu_288_path_0_d0;
assign path_0_we0 = grp_viterbi_Pipeline_L_backtrack_fu_288_path_0_we0;
assign tmp_2_fu_365_p3 = ((trunc_ln18_fu_357_p1[0:0] == 1'b1) ? obs_1_q0 : obs_0_q0);
assign tmp_383_fu_387_p3 = {{empty_50_reg_700}, {5'd0}};
assign tmp_384_fu_395_p3 = {{empty_50_reg_700}, {5'd1}};
assign tmp_385_fu_403_p3 = {{empty_50_reg_700}, {5'd2}};
assign tmp_386_fu_411_p3 = {{empty_50_reg_700}, {5'd3}};
assign tmp_387_fu_419_p3 = {{empty_50_reg_700}, {5'd4}};
assign tmp_388_fu_427_p3 = {{empty_50_reg_700}, {5'd5}};
assign tmp_389_fu_435_p3 = {{empty_50_reg_700}, {5'd6}};
assign tmp_390_fu_443_p3 = {{empty_50_reg_700}, {5'd7}};
assign tmp_391_fu_451_p3 = {{empty_50_reg_700}, {5'd8}};
assign tmp_392_fu_459_p3 = {{empty_50_reg_700}, {5'd9}};
assign tmp_393_fu_467_p3 = {{empty_50_reg_700}, {5'd10}};
assign tmp_394_fu_475_p3 = {{empty_50_reg_700}, {5'd11}};
assign tmp_395_fu_483_p3 = {{empty_50_reg_700}, {5'd12}};
assign tmp_396_fu_491_p3 = {{empty_50_reg_700}, {5'd13}};
assign tmp_397_fu_499_p3 = {{empty_50_reg_700}, {5'd14}};
assign tmp_398_fu_507_p3 = {{empty_50_reg_700}, {5'd15}};
assign tmp_399_fu_515_p3 = {{empty_50_reg_700}, {5'd16}};
assign tmp_400_fu_523_p3 = {{empty_50_reg_700}, {5'd17}};
assign tmp_401_fu_531_p3 = {{empty_50_reg_700}, {5'd18}};
assign tmp_402_fu_539_p3 = {{empty_50_reg_700}, {5'd19}};
assign tmp_403_fu_547_p3 = {{empty_50_reg_700}, {5'd20}};
assign tmp_404_fu_555_p3 = {{empty_50_reg_700}, {5'd21}};
assign tmp_405_fu_563_p3 = {{empty_50_reg_700}, {5'd22}};
assign tmp_406_fu_571_p3 = {{empty_50_reg_700}, {5'd23}};
assign tmp_407_fu_579_p3 = {{empty_50_reg_700}, {5'd24}};
assign tmp_408_fu_587_p3 = {{empty_50_reg_700}, {5'd25}};
assign tmp_409_fu_595_p3 = {{empty_50_reg_700}, {5'd26}};
assign tmp_410_fu_603_p3 = {{empty_50_reg_700}, {5'd27}};
assign tmp_411_fu_611_p3 = {{empty_50_reg_700}, {5'd28}};
assign tmp_412_fu_627_p3 = {{empty_50_reg_700}, {5'd30}};
assign tmp_413_fu_635_p3 = {{empty_50_reg_700}, {5'd31}};
assign tmp_s_fu_619_p3 = {{empty_50_reg_700}, {5'd29}};
assign trunc_ln18_fu_357_p1 = t_2_reg_680[0:0];
assign zext_ln6_fu_340_p1 = lshr_ln6_fu_330_p4;
always @ (posedge ap_clk) begin
    tmp_383_reg_746[4:0] <= 5'b00000;
    tmp_384_reg_751[4:0] <= 5'b00001;
    tmp_385_reg_756[4:0] <= 5'b00010;
    tmp_386_reg_761[4:0] <= 5'b00011;
    tmp_387_reg_766[4:0] <= 5'b00100;
    tmp_388_reg_771[4:0] <= 5'b00101;
    tmp_389_reg_776[4:0] <= 5'b00110;
    tmp_390_reg_781[4:0] <= 5'b00111;
    tmp_391_reg_786[4:0] <= 5'b01000;
    tmp_392_reg_791[4:0] <= 5'b01001;
    tmp_393_reg_796[4:0] <= 5'b01010;
    tmp_394_reg_801[4:0] <= 5'b01011;
    tmp_395_reg_806[4:0] <= 5'b01100;
    tmp_396_reg_811[4:0] <= 5'b01101;
    tmp_397_reg_816[4:0] <= 5'b01110;
    tmp_398_reg_821[4:0] <= 5'b01111;
    tmp_399_reg_826[4:0] <= 5'b10000;
    tmp_400_reg_831[4:0] <= 5'b10001;
    tmp_401_reg_836[4:0] <= 5'b10010;
    tmp_402_reg_841[4:0] <= 5'b10011;
    tmp_403_reg_846[4:0] <= 5'b10100;
    tmp_404_reg_851[4:0] <= 5'b10101;
    tmp_405_reg_856[4:0] <= 5'b10110;
    tmp_406_reg_861[4:0] <= 5'b10111;
    tmp_407_reg_866[4:0] <= 5'b11000;
    tmp_408_reg_871[4:0] <= 5'b11001;
    tmp_409_reg_876[4:0] <= 5'b11010;
    tmp_410_reg_881[4:0] <= 5'b11011;
    tmp_411_reg_886[4:0] <= 5'b11100;
    tmp_s_reg_891[4:0] <= 5'b11101;
    tmp_412_reg_896[4:0] <= 5'b11110;
    tmp_413_reg_901[4:0] <= 5'b11111;
end
endmodule 