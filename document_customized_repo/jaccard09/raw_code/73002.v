module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_address0,obs_ce0,obs_q0,init_address0,init_ce0,init_q0,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,emission_address0,emission_ce0,emission_q0,path_address0,path_ce0,path_we0,path_d0,ap_return); 
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
output  [7:0] obs_address0;
output   obs_ce0;
input  [7:0] obs_q0;
output  [5:0] init_address0;
output   init_ce0;
input  [63:0] init_q0;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [7:0] path_address0;
output   path_ce0;
output   path_we0;
output  [7:0] path_d0;
output  [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] transition_address0;
reg transition_ce0;
reg[11:0] transition_address1;
reg transition_ce1;
reg[11:0] emission_address0;
reg emission_ce0;
reg[7:0] path_address0;
reg path_ce0;
reg path_we0;
reg[7:0] path_d0;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] reg_260;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_584;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_fu_296_p2;
reg   [7:0] empty_reg_598;
wire   [12:0] tmp_382_fu_301_p3;
reg   [12:0] tmp_382_reg_634;
wire    ap_CS_fsm_state7;
wire   [12:0] tmp_383_fu_309_p3;
reg   [12:0] tmp_383_reg_639;
wire   [12:0] tmp_384_fu_317_p3;
reg   [12:0] tmp_384_reg_644;
wire   [12:0] tmp_385_fu_325_p3;
reg   [12:0] tmp_385_reg_649;
wire   [12:0] tmp_386_fu_333_p3;
reg   [12:0] tmp_386_reg_654;
wire   [12:0] tmp_387_fu_341_p3;
reg   [12:0] tmp_387_reg_659;
wire   [12:0] tmp_388_fu_349_p3;
reg   [12:0] tmp_388_reg_664;
wire   [12:0] tmp_389_fu_357_p3;
reg   [12:0] tmp_389_reg_669;
wire   [12:0] tmp_390_fu_365_p3;
reg   [12:0] tmp_390_reg_674;
wire   [12:0] tmp_391_fu_373_p3;
reg   [12:0] tmp_391_reg_679;
wire   [12:0] tmp_392_fu_381_p3;
reg   [12:0] tmp_392_reg_684;
wire   [12:0] tmp_393_fu_389_p3;
reg   [12:0] tmp_393_reg_689;
wire   [12:0] tmp_394_fu_397_p3;
reg   [12:0] tmp_394_reg_694;
wire   [12:0] tmp_395_fu_405_p3;
reg   [12:0] tmp_395_reg_699;
wire   [12:0] tmp_396_fu_413_p3;
reg   [12:0] tmp_396_reg_704;
wire   [12:0] tmp_397_fu_421_p3;
reg   [12:0] tmp_397_reg_709;
wire   [12:0] tmp_398_fu_429_p3;
reg   [12:0] tmp_398_reg_714;
wire   [12:0] tmp_399_fu_437_p3;
reg   [12:0] tmp_399_reg_719;
wire   [12:0] tmp_400_fu_445_p3;
reg   [12:0] tmp_400_reg_724;
wire   [12:0] tmp_401_fu_453_p3;
reg   [12:0] tmp_401_reg_729;
wire   [12:0] tmp_402_fu_461_p3;
reg   [12:0] tmp_402_reg_734;
wire   [12:0] tmp_403_fu_469_p3;
reg   [12:0] tmp_403_reg_739;
wire   [12:0] tmp_404_fu_477_p3;
reg   [12:0] tmp_404_reg_744;
wire   [12:0] tmp_405_fu_485_p3;
reg   [12:0] tmp_405_reg_749;
wire   [12:0] tmp_406_fu_493_p3;
reg   [12:0] tmp_406_reg_754;
wire   [12:0] tmp_407_fu_501_p3;
reg   [12:0] tmp_407_reg_759;
wire   [12:0] tmp_408_fu_509_p3;
reg   [12:0] tmp_408_reg_764;
wire   [12:0] tmp_409_fu_517_p3;
reg   [12:0] tmp_409_reg_769;
wire   [12:0] tmp_410_fu_525_p3;
reg   [12:0] tmp_410_reg_774;
wire   [12:0] tmp_s_fu_533_p3;
reg   [12:0] tmp_s_reg_779;
wire   [12:0] tmp_411_fu_541_p3;
reg   [12:0] tmp_411_reg_784;
wire   [12:0] tmp_412_fu_549_p3;
reg   [12:0] tmp_412_reg_789;
reg   [63:0] min_p_reg_794;
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
wire    grp_viterbi_Pipeline_L_init_fu_186_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_186_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_186_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_186_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_186_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_186_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_186_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_186_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_186_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_186_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_186_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_186_llike_1_d0;
wire   [5:0] grp_viterbi_Pipeline_L_init_fu_186_init_address0;
wire    grp_viterbi_Pipeline_L_init_fu_186_init_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_186_emission_address0;
wire    grp_viterbi_Pipeline_L_init_fu_186_emission_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_186_grp_fu_802_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_186_grp_fu_802_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_186_grp_fu_802_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_186_grp_fu_802_p_ce;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_ap_start;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_ap_done;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_ap_idle;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_197_llike_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_llike_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_197_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_197_llike_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_llike_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_d0;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_197_transition_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_transition_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_197_transition_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_transition_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_197_emission_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_emission_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_802_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_802_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_802_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_802_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_806_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_806_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_806_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_806_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_810_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_810_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_810_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_810_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_241_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_241_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_241_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_241_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_241_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_241_llike_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_241_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_241_llike_1_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_241_min_s_out;
wire    grp_viterbi_Pipeline_L_end_fu_241_min_s_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_241_grp_fu_810_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_241_grp_fu_810_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_241_grp_fu_810_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_241_grp_fu_810_p_ce;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_ap_start;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_ap_done;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_ap_idle;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_249_llike_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_llike_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_249_llike_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_llike_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_249_llike_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_llike_1_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_249_llike_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_llike_1_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_backtrack_fu_249_transition_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_transition_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_backtrack_fu_249_transition_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_transition_ce1;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_249_path_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_path_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_path_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_249_path_d0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_802_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_802_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_802_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_802_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_806_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_806_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_806_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_806_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_810_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_810_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_810_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_810_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_186_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_curr_state_fu_197_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_viterbi_Pipeline_L_end_fu_241_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg    grp_viterbi_Pipeline_L_backtrack_fu_249_ap_start_reg;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln18_fu_280_p1;
wire   [0:0] icmp_ln18_fu_274_p2;
wire    ap_CS_fsm_state12;
reg   [7:0] t_fu_122;
wire   [7:0] add_ln18_fu_285_p2;
reg    obs_ce0_local;
reg   [7:0] obs_address0_local;
reg    llike_ce0_local;
reg    path_we0_local;
reg    path_ce0_local;
wire   [63:0] grp_fu_802_p2;
reg   [63:0] grp_fu_802_p0;
reg   [63:0] grp_fu_802_p1;
reg    grp_fu_802_ce;
wire   [63:0] grp_fu_806_p2;
reg   [63:0] grp_fu_806_p0;
reg   [63:0] grp_fu_806_p1;
reg    grp_fu_806_ce;
wire   [0:0] grp_fu_810_p2;
reg   [63:0] grp_fu_810_p0;
reg   [63:0] grp_fu_810_p1;
reg    grp_fu_810_ce;
reg   [4:0] grp_fu_810_opcode;
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
#0 grp_viterbi_Pipeline_L_init_fu_186_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_curr_state_fu_197_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_241_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_backtrack_fu_249_ap_start_reg = 1'b0;
#0 t_fu_122 = 8'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_186(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_186_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_186_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_186_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_186_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_186_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_186_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_186_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_186_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_186_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_186_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_186_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_186_llike_1_d0),.init_address0(grp_viterbi_Pipeline_L_init_fu_186_init_address0),.init_ce0(grp_viterbi_Pipeline_L_init_fu_186_init_ce0),.init_q0(init_q0),.zext_ln13(reg_260),.emission_address0(grp_viterbi_Pipeline_L_init_fu_186_emission_address0),.emission_ce0(grp_viterbi_Pipeline_L_init_fu_186_emission_ce0),.emission_q0(emission_q0),.grp_fu_802_p_din0(grp_viterbi_Pipeline_L_init_fu_186_grp_fu_802_p_din0),.grp_fu_802_p_din1(grp_viterbi_Pipeline_L_init_fu_186_grp_fu_802_p_din1),.grp_fu_802_p_opcode(grp_viterbi_Pipeline_L_init_fu_186_grp_fu_802_p_opcode),.grp_fu_802_p_dout0(grp_fu_802_p2),.grp_fu_802_p_ce(grp_viterbi_Pipeline_L_init_fu_186_grp_fu_802_p_ce));
viterbi_viterbi_Pipeline_L_curr_state grp_viterbi_Pipeline_L_curr_state_fu_197(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_curr_state_fu_197_ap_start),.ap_done(grp_viterbi_Pipeline_L_curr_state_fu_197_ap_done),.ap_idle(grp_viterbi_Pipeline_L_curr_state_fu_197_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_curr_state_fu_197_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_curr_state_fu_197_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_curr_state_fu_197_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_curr_state_fu_197_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_curr_state_fu_197_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_curr_state_fu_197_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_curr_state_fu_197_llike_ce1),.llike_q1(llike_q1),.empty_7(tmp_382_reg_634),.llike_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_ce1),.llike_1_q1(llike_1_q1),.empty_8(tmp_383_reg_639),.empty_9(tmp_384_reg_644),.empty_10(tmp_385_reg_649),.empty_11(tmp_386_reg_654),.empty_12(tmp_387_reg_659),.empty_13(tmp_388_reg_664),.empty_14(tmp_389_reg_669),.empty_15(tmp_390_reg_674),.empty_16(tmp_391_reg_679),.empty_17(tmp_392_reg_684),.empty_18(tmp_393_reg_689),.empty_19(tmp_394_reg_694),.empty_20(tmp_395_reg_699),.empty_21(tmp_396_reg_704),.empty_22(tmp_397_reg_709),.empty_23(tmp_398_reg_714),.empty_24(tmp_399_reg_719),.empty_25(tmp_400_reg_724),.empty_26(tmp_401_reg_729),.empty_27(tmp_402_reg_734),.empty_28(tmp_403_reg_739),.empty_29(tmp_404_reg_744),.empty_30(tmp_405_reg_749),.empty_31(tmp_406_reg_754),.empty_32(tmp_407_reg_759),.empty_33(tmp_408_reg_764),.empty_34(tmp_409_reg_769),.empty_35(tmp_410_reg_774),.empty_36(tmp_s_reg_779),.empty_37(tmp_411_reg_784),.empty(tmp_412_reg_789),.t(t_2_reg_584),.transition_address0(grp_viterbi_Pipeline_L_curr_state_fu_197_transition_address0),.transition_ce0(grp_viterbi_Pipeline_L_curr_state_fu_197_transition_ce0),.transition_q0(transition_q0),.transition_address1(grp_viterbi_Pipeline_L_curr_state_fu_197_transition_address1),.transition_ce1(grp_viterbi_Pipeline_L_curr_state_fu_197_transition_ce1),.transition_q1(transition_q1),.zext_ln26(reg_260),.emission_address0(grp_viterbi_Pipeline_L_curr_state_fu_197_emission_address0),.emission_ce0(grp_viterbi_Pipeline_L_curr_state_fu_197_emission_ce0),.emission_q0(emission_q0),.grp_fu_802_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_802_p_din0),.grp_fu_802_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_802_p_din1),.grp_fu_802_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_802_p_opcode),.grp_fu_802_p_dout0(grp_fu_802_p2),.grp_fu_802_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_802_p_ce),.grp_fu_806_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_806_p_din0),.grp_fu_806_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_806_p_din1),.grp_fu_806_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_806_p_opcode),.grp_fu_806_p_dout0(grp_fu_806_p2),.grp_fu_806_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_806_p_ce),.grp_fu_810_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_810_p_din0),.grp_fu_810_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_810_p_din1),.grp_fu_810_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_810_p_opcode),.grp_fu_810_p_dout0(grp_fu_810_p2),.grp_fu_810_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_810_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_241(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_241_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_241_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_241_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_241_ap_ready),.min_p(min_p_reg_794),.llike_address0(grp_viterbi_Pipeline_L_end_fu_241_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_241_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_241_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_241_llike_1_ce0),.llike_1_q0(llike_1_q0),.min_s_out(grp_viterbi_Pipeline_L_end_fu_241_min_s_out),.min_s_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_241_min_s_out_ap_vld),.grp_fu_810_p_din0(grp_viterbi_Pipeline_L_end_fu_241_grp_fu_810_p_din0),.grp_fu_810_p_din1(grp_viterbi_Pipeline_L_end_fu_241_grp_fu_810_p_din1),.grp_fu_810_p_opcode(grp_viterbi_Pipeline_L_end_fu_241_grp_fu_810_p_opcode),.grp_fu_810_p_dout0(grp_fu_810_p2),.grp_fu_810_p_ce(grp_viterbi_Pipeline_L_end_fu_241_grp_fu_810_p_ce));
viterbi_viterbi_Pipeline_L_backtrack grp_viterbi_Pipeline_L_backtrack_fu_249(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_backtrack_fu_249_ap_start),.ap_done(grp_viterbi_Pipeline_L_backtrack_fu_249_ap_done),.ap_idle(grp_viterbi_Pipeline_L_backtrack_fu_249_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_backtrack_fu_249_ap_ready),.min_s_reload(grp_viterbi_Pipeline_L_end_fu_241_min_s_out),.llike_address0(grp_viterbi_Pipeline_L_backtrack_fu_249_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_backtrack_fu_249_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_backtrack_fu_249_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_backtrack_fu_249_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_249_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_249_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_249_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_249_llike_1_ce1),.llike_1_q1(llike_1_q1),.transition_address0(grp_viterbi_Pipeline_L_backtrack_fu_249_transition_address0),.transition_ce0(grp_viterbi_Pipeline_L_backtrack_fu_249_transition_ce0),.transition_q0(transition_q0),.transition_address1(grp_viterbi_Pipeline_L_backtrack_fu_249_transition_address1),.transition_ce1(grp_viterbi_Pipeline_L_backtrack_fu_249_transition_ce1),.transition_q1(transition_q1),.path_address0(grp_viterbi_Pipeline_L_backtrack_fu_249_path_address0),.path_ce0(grp_viterbi_Pipeline_L_backtrack_fu_249_path_ce0),.path_we0(grp_viterbi_Pipeline_L_backtrack_fu_249_path_we0),.path_d0(grp_viterbi_Pipeline_L_backtrack_fu_249_path_d0),.grp_fu_802_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_802_p_din0),.grp_fu_802_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_802_p_din1),.grp_fu_802_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_802_p_opcode),.grp_fu_802_p_dout0(grp_fu_802_p2),.grp_fu_802_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_802_p_ce),.grp_fu_806_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_806_p_din0),.grp_fu_806_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_806_p_din1),.grp_fu_806_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_806_p_opcode),.grp_fu_806_p_dout0(grp_fu_806_p2),.grp_fu_806_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_806_p_ce),.grp_fu_810_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_810_p_din0),.grp_fu_810_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_810_p_din1),.grp_fu_810_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_810_p_opcode),.grp_fu_810_p_dout0(grp_fu_810_p2),.grp_fu_810_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_810_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U65(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_802_p0),.din1(grp_fu_802_p1),.ce(grp_fu_802_ce),.dout(grp_fu_802_p2));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U66(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_806_p0),.din1(grp_fu_806_p1),.ce(grp_fu_806_ce),.dout(grp_fu_806_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U67(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_810_p0),.din1(grp_fu_810_p1),.ce(grp_fu_810_ce),.opcode(grp_fu_810_opcode),.dout(grp_fu_810_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_backtrack_fu_249_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_249_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_backtrack_fu_249_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_249_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_curr_state_fu_197_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_197_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_curr_state_fu_197_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_197_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_241_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_viterbi_Pipeline_L_end_fu_241_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_241_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_241_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_186_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_186_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_186_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_186_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        t_fu_122 <= 8'd1;
    end else if (((icmp_ln18_fu_274_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        t_fu_122 <= add_ln18_fu_285_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_reg_598 <= empty_fu_296_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        min_p_reg_794 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_260 <= obs_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_584 <= t_fu_122;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_382_reg_634[12 : 5] <= tmp_382_fu_301_p3[12 : 5];
        tmp_383_reg_639[12 : 5] <= tmp_383_fu_309_p3[12 : 5];
        tmp_384_reg_644[12 : 5] <= tmp_384_fu_317_p3[12 : 5];
        tmp_385_reg_649[12 : 5] <= tmp_385_fu_325_p3[12 : 5];
        tmp_386_reg_654[12 : 5] <= tmp_386_fu_333_p3[12 : 5];
        tmp_387_reg_659[12 : 5] <= tmp_387_fu_341_p3[12 : 5];
        tmp_388_reg_664[12 : 5] <= tmp_388_fu_349_p3[12 : 5];
        tmp_389_reg_669[12 : 5] <= tmp_389_fu_357_p3[12 : 5];
        tmp_390_reg_674[12 : 5] <= tmp_390_fu_365_p3[12 : 5];
        tmp_391_reg_679[12 : 5] <= tmp_391_fu_373_p3[12 : 5];
        tmp_392_reg_684[12 : 5] <= tmp_392_fu_381_p3[12 : 5];
        tmp_393_reg_689[12 : 5] <= tmp_393_fu_389_p3[12 : 5];
        tmp_394_reg_694[12 : 5] <= tmp_394_fu_397_p3[12 : 5];
        tmp_395_reg_699[12 : 5] <= tmp_395_fu_405_p3[12 : 5];
        tmp_396_reg_704[12 : 5] <= tmp_396_fu_413_p3[12 : 5];
        tmp_397_reg_709[12 : 5] <= tmp_397_fu_421_p3[12 : 5];
        tmp_398_reg_714[12 : 5] <= tmp_398_fu_429_p3[12 : 5];
        tmp_399_reg_719[12 : 5] <= tmp_399_fu_437_p3[12 : 5];
        tmp_400_reg_724[12 : 5] <= tmp_400_fu_445_p3[12 : 5];
        tmp_401_reg_729[12 : 5] <= tmp_401_fu_453_p3[12 : 5];
        tmp_402_reg_734[12 : 5] <= tmp_402_fu_461_p3[12 : 5];
        tmp_403_reg_739[12 : 5] <= tmp_403_fu_469_p3[12 : 5];
        tmp_404_reg_744[12 : 5] <= tmp_404_fu_477_p3[12 : 5];
        tmp_405_reg_749[12 : 5] <= tmp_405_fu_485_p3[12 : 5];
        tmp_406_reg_754[12 : 5] <= tmp_406_fu_493_p3[12 : 5];
        tmp_407_reg_759[12 : 5] <= tmp_407_fu_501_p3[12 : 5];
        tmp_408_reg_764[12 : 5] <= tmp_408_fu_509_p3[12 : 5];
        tmp_409_reg_769[12 : 5] <= tmp_409_fu_517_p3[12 : 5];
        tmp_410_reg_774[12 : 5] <= tmp_410_fu_525_p3[12 : 5];
        tmp_411_reg_784[12 : 5] <= tmp_411_fu_541_p3[12 : 5];
        tmp_412_reg_789[12 : 5] <= tmp_412_fu_549_p3[12 : 5];
        tmp_s_reg_779[12 : 5] <= tmp_s_fu_533_p3[12 : 5];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_241_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_backtrack_fu_249_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_init_fu_186_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_curr_state_fu_197_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_viterbi_Pipeline_L_backtrack_fu_249_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
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
    if (((grp_viterbi_Pipeline_L_backtrack_fu_249_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_address0 = grp_viterbi_Pipeline_L_curr_state_fu_197_emission_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_address0 = grp_viterbi_Pipeline_L_init_fu_186_emission_address0;
    end else begin
        emission_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_197_emission_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_ce0 = grp_viterbi_Pipeline_L_init_fu_186_emission_ce0;
    end else begin
        emission_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_802_ce = grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_802_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_802_ce = grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_802_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_802_ce = grp_viterbi_Pipeline_L_init_fu_186_grp_fu_802_p_ce;
    end else begin
        grp_fu_802_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_802_p0 = grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_802_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_802_p0 = grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_802_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_802_p0 = grp_viterbi_Pipeline_L_init_fu_186_grp_fu_802_p_din0;
    end else begin
        grp_fu_802_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_802_p1 = grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_802_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_802_p1 = grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_802_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_802_p1 = grp_viterbi_Pipeline_L_init_fu_186_grp_fu_802_p_din1;
    end else begin
        grp_fu_802_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_806_ce = grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_806_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_806_ce = grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_806_p_ce;
    end else begin
        grp_fu_806_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_806_p0 = grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_806_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_806_p0 = grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_806_p_din0;
    end else begin
        grp_fu_806_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_806_p1 = grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_806_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_806_p1 = grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_806_p_din1;
    end else begin
        grp_fu_806_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_810_ce = grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_810_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_810_ce = grp_viterbi_Pipeline_L_end_fu_241_grp_fu_810_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_810_ce = grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_810_p_ce;
    end else begin
        grp_fu_810_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_810_opcode = grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_810_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_810_opcode = grp_viterbi_Pipeline_L_end_fu_241_grp_fu_810_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_810_opcode = grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_810_p_opcode;
    end else begin
        grp_fu_810_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_810_p0 = grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_810_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_810_p0 = grp_viterbi_Pipeline_L_end_fu_241_grp_fu_810_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_810_p0 = grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_810_p_din0;
    end else begin
        grp_fu_810_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_810_p1 = grp_viterbi_Pipeline_L_backtrack_fu_249_grp_fu_810_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_810_p1 = grp_viterbi_Pipeline_L_end_fu_241_grp_fu_810_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_810_p1 = grp_viterbi_Pipeline_L_curr_state_fu_197_grp_fu_810_p_din1;
    end else begin
        grp_fu_810_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_249_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_241_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_186_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_249_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_249_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_241_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_186_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_249_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_186_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_curr_state_fu_197_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_186_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_address0 = grp_viterbi_Pipeline_L_backtrack_fu_249_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_241_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_address0 = grp_viterbi_Pipeline_L_curr_state_fu_197_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_186_llike_address0;
    end else begin
        llike_address0 = 64'd4448;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_address1 = grp_viterbi_Pipeline_L_backtrack_fu_249_llike_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_address1 = grp_viterbi_Pipeline_L_curr_state_fu_197_llike_address1;
    end else begin
        llike_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_249_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_241_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_197_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_186_llike_ce0;
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
        llike_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_249_llike_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_197_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_d0 = grp_viterbi_Pipeline_L_curr_state_fu_197_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_186_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_we0 = grp_viterbi_Pipeline_L_curr_state_fu_197_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_186_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_address0_local = zext_ln18_fu_280_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        obs_address0_local = 64'd0;
    end else begin
        obs_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        obs_ce0_local = 1'b1;
    end else begin
        obs_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_address0 = grp_viterbi_Pipeline_L_backtrack_fu_249_path_address0;
    end else begin
        path_address0 = 64'd139;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_249_path_ce0;
    end else begin
        path_ce0 = path_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        path_ce0_local = 1'b1;
    end else begin
        path_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_d0 = grp_viterbi_Pipeline_L_backtrack_fu_249_path_d0;
    end else begin
        path_d0 = grp_viterbi_Pipeline_L_end_fu_241_min_s_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_we0 = grp_viterbi_Pipeline_L_backtrack_fu_249_path_we0;
    end else begin
        path_we0 = path_we0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        path_we0_local = 1'b1;
    end else begin
        path_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_address0 = grp_viterbi_Pipeline_L_backtrack_fu_249_transition_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_address0 = grp_viterbi_Pipeline_L_curr_state_fu_197_transition_address0;
    end else begin
        transition_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_address1 = grp_viterbi_Pipeline_L_backtrack_fu_249_transition_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_address1 = grp_viterbi_Pipeline_L_curr_state_fu_197_transition_address1;
    end else begin
        transition_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_249_transition_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_197_transition_ce0;
    end else begin
        transition_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_249_transition_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_197_transition_ce1;
    end else begin
        transition_ce1 = 1'b0;
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
            if (((grp_viterbi_Pipeline_L_init_fu_186_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_274_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((grp_viterbi_Pipeline_L_curr_state_fu_197_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
            if (((grp_viterbi_Pipeline_L_end_fu_241_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
            if (((grp_viterbi_Pipeline_L_backtrack_fu_249_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
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
assign add_ln18_fu_285_p2 = (t_fu_122 + 8'd1);
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
assign empty_fu_296_p2 = ($signed(t_2_reg_584) + $signed(8'd255));
assign grp_viterbi_Pipeline_L_backtrack_fu_249_ap_start = grp_viterbi_Pipeline_L_backtrack_fu_249_ap_start_reg;
assign grp_viterbi_Pipeline_L_curr_state_fu_197_ap_start = grp_viterbi_Pipeline_L_curr_state_fu_197_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_241_ap_start = grp_viterbi_Pipeline_L_end_fu_241_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_186_ap_start = grp_viterbi_Pipeline_L_init_fu_186_ap_start_reg;
assign icmp_ln18_fu_274_p2 = ((t_fu_122 == 8'd140) ? 1'b1 : 1'b0);
assign init_address0 = grp_viterbi_Pipeline_L_init_fu_186_init_address0;
assign init_ce0 = grp_viterbi_Pipeline_L_init_fu_186_init_ce0;
assign obs_address0 = obs_address0_local;
assign obs_ce0 = obs_ce0_local;
assign tmp_382_fu_301_p3 = {{empty_reg_598}, {5'd0}};
assign tmp_383_fu_309_p3 = {{empty_reg_598}, {5'd1}};
assign tmp_384_fu_317_p3 = {{empty_reg_598}, {5'd2}};
assign tmp_385_fu_325_p3 = {{empty_reg_598}, {5'd3}};
assign tmp_386_fu_333_p3 = {{empty_reg_598}, {5'd4}};
assign tmp_387_fu_341_p3 = {{empty_reg_598}, {5'd5}};
assign tmp_388_fu_349_p3 = {{empty_reg_598}, {5'd6}};
assign tmp_389_fu_357_p3 = {{empty_reg_598}, {5'd7}};
assign tmp_390_fu_365_p3 = {{empty_reg_598}, {5'd8}};
assign tmp_391_fu_373_p3 = {{empty_reg_598}, {5'd9}};
assign tmp_392_fu_381_p3 = {{empty_reg_598}, {5'd10}};
assign tmp_393_fu_389_p3 = {{empty_reg_598}, {5'd11}};
assign tmp_394_fu_397_p3 = {{empty_reg_598}, {5'd12}};
assign tmp_395_fu_405_p3 = {{empty_reg_598}, {5'd13}};
assign tmp_396_fu_413_p3 = {{empty_reg_598}, {5'd14}};
assign tmp_397_fu_421_p3 = {{empty_reg_598}, {5'd15}};
assign tmp_398_fu_429_p3 = {{empty_reg_598}, {5'd16}};
assign tmp_399_fu_437_p3 = {{empty_reg_598}, {5'd17}};
assign tmp_400_fu_445_p3 = {{empty_reg_598}, {5'd18}};
assign tmp_401_fu_453_p3 = {{empty_reg_598}, {5'd19}};
assign tmp_402_fu_461_p3 = {{empty_reg_598}, {5'd20}};
assign tmp_403_fu_469_p3 = {{empty_reg_598}, {5'd21}};
assign tmp_404_fu_477_p3 = {{empty_reg_598}, {5'd22}};
assign tmp_405_fu_485_p3 = {{empty_reg_598}, {5'd23}};
assign tmp_406_fu_493_p3 = {{empty_reg_598}, {5'd24}};
assign tmp_407_fu_501_p3 = {{empty_reg_598}, {5'd25}};
assign tmp_408_fu_509_p3 = {{empty_reg_598}, {5'd26}};
assign tmp_409_fu_517_p3 = {{empty_reg_598}, {5'd27}};
assign tmp_410_fu_525_p3 = {{empty_reg_598}, {5'd28}};
assign tmp_411_fu_541_p3 = {{empty_reg_598}, {5'd30}};
assign tmp_412_fu_549_p3 = {{empty_reg_598}, {5'd31}};
assign tmp_s_fu_533_p3 = {{empty_reg_598}, {5'd29}};
assign zext_ln18_fu_280_p1 = t_fu_122;
always @ (posedge ap_clk) begin
    tmp_382_reg_634[4:0] <= 5'b00000;
    tmp_383_reg_639[4:0] <= 5'b00001;
    tmp_384_reg_644[4:0] <= 5'b00010;
    tmp_385_reg_649[4:0] <= 5'b00011;
    tmp_386_reg_654[4:0] <= 5'b00100;
    tmp_387_reg_659[4:0] <= 5'b00101;
    tmp_388_reg_664[4:0] <= 5'b00110;
    tmp_389_reg_669[4:0] <= 5'b00111;
    tmp_390_reg_674[4:0] <= 5'b01000;
    tmp_391_reg_679[4:0] <= 5'b01001;
    tmp_392_reg_684[4:0] <= 5'b01010;
    tmp_393_reg_689[4:0] <= 5'b01011;
    tmp_394_reg_694[4:0] <= 5'b01100;
    tmp_395_reg_699[4:0] <= 5'b01101;
    tmp_396_reg_704[4:0] <= 5'b01110;
    tmp_397_reg_709[4:0] <= 5'b01111;
    tmp_398_reg_714[4:0] <= 5'b10000;
    tmp_399_reg_719[4:0] <= 5'b10001;
    tmp_400_reg_724[4:0] <= 5'b10010;
    tmp_401_reg_729[4:0] <= 5'b10011;
    tmp_402_reg_734[4:0] <= 5'b10100;
    tmp_403_reg_739[4:0] <= 5'b10101;
    tmp_404_reg_744[4:0] <= 5'b10110;
    tmp_405_reg_749[4:0] <= 5'b10111;
    tmp_406_reg_754[4:0] <= 5'b11000;
    tmp_407_reg_759[4:0] <= 5'b11001;
    tmp_408_reg_764[4:0] <= 5'b11010;
    tmp_409_reg_769[4:0] <= 5'b11011;
    tmp_410_reg_774[4:0] <= 5'b11100;
    tmp_s_reg_779[4:0] <= 5'b11101;
    tmp_411_reg_784[4:0] <= 5'b11110;
    tmp_412_reg_789[4:0] <= 5'b11111;
end
endmodule 