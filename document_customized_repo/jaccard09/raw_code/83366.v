module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_address0,obs_ce0,obs_q0,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,path_address0,path_ce0,path_we0,path_d0,ap_return); 
parameter    ap_ST_fsm_state1 = 44'd1;
parameter    ap_ST_fsm_state2 = 44'd2;
parameter    ap_ST_fsm_state3 = 44'd4;
parameter    ap_ST_fsm_state4 = 44'd8;
parameter    ap_ST_fsm_state5 = 44'd16;
parameter    ap_ST_fsm_state6 = 44'd32;
parameter    ap_ST_fsm_state7 = 44'd64;
parameter    ap_ST_fsm_state8 = 44'd128;
parameter    ap_ST_fsm_state9 = 44'd256;
parameter    ap_ST_fsm_state10 = 44'd512;
parameter    ap_ST_fsm_state11 = 44'd1024;
parameter    ap_ST_fsm_state12 = 44'd2048;
parameter    ap_ST_fsm_state13 = 44'd4096;
parameter    ap_ST_fsm_state14 = 44'd8192;
parameter    ap_ST_fsm_state15 = 44'd16384;
parameter    ap_ST_fsm_state16 = 44'd32768;
parameter    ap_ST_fsm_state17 = 44'd65536;
parameter    ap_ST_fsm_state18 = 44'd131072;
parameter    ap_ST_fsm_state19 = 44'd262144;
parameter    ap_ST_fsm_state20 = 44'd524288;
parameter    ap_ST_fsm_state21 = 44'd1048576;
parameter    ap_ST_fsm_state22 = 44'd2097152;
parameter    ap_ST_fsm_state23 = 44'd4194304;
parameter    ap_ST_fsm_state24 = 44'd8388608;
parameter    ap_ST_fsm_state25 = 44'd16777216;
parameter    ap_ST_fsm_state26 = 44'd33554432;
parameter    ap_ST_fsm_state27 = 44'd67108864;
parameter    ap_ST_fsm_state28 = 44'd134217728;
parameter    ap_ST_fsm_state29 = 44'd268435456;
parameter    ap_ST_fsm_state30 = 44'd536870912;
parameter    ap_ST_fsm_state31 = 44'd1073741824;
parameter    ap_ST_fsm_state32 = 44'd2147483648;
parameter    ap_ST_fsm_state33 = 44'd4294967296;
parameter    ap_ST_fsm_state34 = 44'd8589934592;
parameter    ap_ST_fsm_state35 = 44'd17179869184;
parameter    ap_ST_fsm_state36 = 44'd34359738368;
parameter    ap_ST_fsm_state37 = 44'd68719476736;
parameter    ap_ST_fsm_state38 = 44'd137438953472;
parameter    ap_ST_fsm_state39 = 44'd274877906944;
parameter    ap_ST_fsm_state40 = 44'd549755813888;
parameter    ap_ST_fsm_state41 = 44'd1099511627776;
parameter    ap_ST_fsm_state42 = 44'd2199023255552;
parameter    ap_ST_fsm_state43 = 44'd4398046511104;
parameter    ap_ST_fsm_state44 = 44'd8796093022208;
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
output  [5:0] init_address1;
output   init_ce1;
input  [63:0] init_q1;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [11:0] emission_address1;
output   emission_ce1;
input  [63:0] emission_q1;
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
reg emission_ce1;
(* fsm_encoding = "none" *) reg   [43:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_352;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state33;
reg   [63:0] reg_358;
wire   [63:0] grp_fu_348_p2;
reg   [63:0] reg_362;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state41;
reg   [7:0] obs_load_reg_611;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_622;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_fu_393_p2;
reg   [7:0] empty_reg_649;
wire    ap_CS_fsm_state6;
wire   [11:0] tmp_s_fu_398_p3;
reg   [11:0] tmp_s_reg_654;
reg   [11:0] llike_addr_1_reg_659;
wire   [11:0] zext_ln19_fu_411_p1;
reg   [11:0] zext_ln19_reg_664;
wire   [6:0] add_ln19_fu_421_p2;
reg   [6:0] add_ln19_reg_672;
wire    ap_CS_fsm_state7;
wire   [5:0] trunc_ln19_fu_427_p1;
reg   [5:0] trunc_ln19_reg_677;
wire   [1:0] trunc_ln19_1_fu_431_p1;
reg   [1:0] trunc_ln19_1_reg_683;
reg   [3:0] lshr_ln7_reg_687;
wire   [63:0] bitcast_ln23_fu_460_p1;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state15;
reg   [63:0] emission_load_reg_707;
wire   [63:0] bitcast_ln24_fu_482_p1;
reg   [63:0] bitcast_ln24_reg_712;
wire    ap_CS_fsm_state17;
reg   [8:0] t_3_reg_718;
wire    ap_CS_fsm_state32;
wire   [7:0] trunc_ln50_fu_530_p1;
reg   [7:0] trunc_ln50_reg_729;
wire   [11:0] tmp_26_fu_534_p3;
reg   [11:0] tmp_26_reg_734;
wire   [63:0] bitcast_ln52_fu_563_p1;
wire    ap_CS_fsm_state34;
reg   [11:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg   [11:0] llike_1_address0;
reg    llike_1_ce0;
reg    llike_1_we0;
reg   [63:0] llike_1_d0;
wire   [63:0] llike_1_q0;
reg   [11:0] llike_2_address0;
reg    llike_2_ce0;
reg    llike_2_we0;
reg   [63:0] llike_2_d0;
wire   [63:0] llike_2_q0;
reg   [11:0] llike_3_address0;
reg    llike_3_ce0;
reg    llike_3_we0;
reg   [63:0] llike_3_d0;
wire   [63:0] llike_3_q0;
wire    grp_viterbi_Pipeline_L_init_fu_293_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_293_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_293_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_293_ap_ready;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_293_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_293_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_293_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_293_llike_d0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_293_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_293_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_293_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_293_llike_1_d0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_293_llike_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_293_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_293_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_293_llike_2_d0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_293_llike_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_293_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_293_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_293_llike_3_d0;
wire   [5:0] grp_viterbi_Pipeline_L_init_fu_293_init_address0;
wire    grp_viterbi_Pipeline_L_init_fu_293_init_ce0;
wire   [5:0] grp_viterbi_Pipeline_L_init_fu_293_init_address1;
wire    grp_viterbi_Pipeline_L_init_fu_293_init_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_293_emission_address0;
wire    grp_viterbi_Pipeline_L_init_fu_293_emission_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_293_emission_address1;
wire    grp_viterbi_Pipeline_L_init_fu_293_emission_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_293_grp_fu_348_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_293_grp_fu_348_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_293_grp_fu_348_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_293_grp_fu_348_p_ce;
wire    grp_viterbi_Pipeline_L_prev_state_fu_307_ap_start;
wire    grp_viterbi_Pipeline_L_prev_state_fu_307_ap_done;
wire    grp_viterbi_Pipeline_L_prev_state_fu_307_ap_idle;
wire    grp_viterbi_Pipeline_L_prev_state_fu_307_ap_ready;
wire   [11:0] grp_viterbi_Pipeline_L_prev_state_fu_307_llike_1_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_307_llike_1_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_prev_state_fu_307_llike_2_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_307_llike_2_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_prev_state_fu_307_llike_3_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_307_llike_3_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_prev_state_fu_307_transition_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_307_transition_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_prev_state_fu_307_transition_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_307_transition_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_prev_state_fu_307_llike_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_307_llike_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_307_min_p_18_out;
wire    grp_viterbi_Pipeline_L_prev_state_fu_307_min_p_18_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_348_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_348_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_348_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_348_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_754_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_754_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_754_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_754_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_323_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_323_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_323_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_323_ap_ready;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_323_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_323_llike_1_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_323_llike_2_address0;
wire    grp_viterbi_Pipeline_L_end_fu_323_llike_2_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_323_llike_3_address0;
wire    grp_viterbi_Pipeline_L_end_fu_323_llike_3_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_323_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_323_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_323_min_s_4_out;
wire    grp_viterbi_Pipeline_L_end_fu_323_min_s_4_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_323_grp_fu_754_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_323_grp_fu_754_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_323_grp_fu_754_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_323_grp_fu_754_p_ce;
wire    grp_viterbi_Pipeline_L_state_fu_333_ap_start;
wire    grp_viterbi_Pipeline_L_state_fu_333_ap_done;
wire    grp_viterbi_Pipeline_L_state_fu_333_ap_idle;
wire    grp_viterbi_Pipeline_L_state_fu_333_ap_ready;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_333_llike_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_333_llike_1_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_333_llike_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_333_llike_2_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_333_llike_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_333_llike_3_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_333_transition_address0;
wire    grp_viterbi_Pipeline_L_state_fu_333_transition_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_333_transition_address1;
wire    grp_viterbi_Pipeline_L_state_fu_333_transition_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_333_llike_address0;
wire    grp_viterbi_Pipeline_L_state_fu_333_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_state_fu_333_min_s_10_out;
wire    grp_viterbi_Pipeline_L_state_fu_333_min_s_10_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_333_grp_fu_348_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_333_grp_fu_348_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_state_fu_333_grp_fu_348_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_333_grp_fu_348_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_333_grp_fu_754_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_333_grp_fu_754_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_state_fu_333_grp_fu_754_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_333_grp_fu_754_p_ce;
reg   [6:0] curr_reg_282;
wire    ap_CS_fsm_state27;
reg    grp_viterbi_Pipeline_L_init_fu_293_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_prev_state_fu_307_ap_start_reg;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
reg   [63:0] min_p_18_loc_fu_108;
reg    grp_viterbi_Pipeline_L_end_fu_323_ap_start_reg;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
reg   [7:0] min_s_4_loc_fu_104;
reg    grp_viterbi_Pipeline_L_state_fu_333_ap_start_reg;
wire    ap_CS_fsm_state42;
wire    ap_CS_fsm_state43;
reg   [7:0] min_s_10_loc_fu_100;
wire   [63:0] zext_ln18_fu_383_p1;
wire   [0:0] icmp_ln18_fu_377_p2;
wire   [63:0] tmp_42_cast_fu_406_p1;
wire   [63:0] zext_ln23_fu_445_p1;
wire   [0:0] icmp_ln19_fu_415_p2;
wire   [63:0] zext_ln24_fu_477_p1;
wire   [63:0] zext_ln33_fu_492_p1;
wire    ap_CS_fsm_state31;
wire   [63:0] zext_ln52_fu_542_p1;
wire   [0:0] tmp_fu_519_p3;
wire   [63:0] zext_ln52_1_fu_547_p1;
wire   [63:0] zext_ln50_fu_568_p1;
wire    ap_CS_fsm_state44;
reg   [7:0] t_fu_96;
wire   [7:0] add_ln18_fu_450_p2;
reg   [8:0] t_1_fu_128;
wire   [8:0] add_ln50_fu_552_p2;
reg   [7:0] store_forwarded_fu_132;
reg    obs_ce0_local;
reg   [7:0] obs_address0_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg    llike_we0_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    emission_ce0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg    path_we0_local;
reg   [7:0] path_d0_local;
reg    path_ce0_local;
reg   [7:0] path_address0_local;
reg   [63:0] grp_fu_348_p0;
reg   [63:0] grp_fu_348_p1;
wire   [11:0] shl_ln1_fu_465_p3;
wire   [11:0] add_ln24_fu_472_p2;
wire   [11:0] tmp_27_fu_486_p3;
reg    grp_fu_348_ce;
wire   [0:0] grp_fu_754_p2;
reg   [63:0] grp_fu_754_p0;
reg   [63:0] grp_fu_754_p1;
reg    grp_fu_754_ce;
reg   [4:0] grp_fu_754_opcode;
reg   [43:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state33_blk;
wire    ap_ST_fsm_state34_blk;
wire    ap_ST_fsm_state35_blk;
wire    ap_ST_fsm_state36_blk;
wire    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
wire    ap_ST_fsm_state39_blk;
wire    ap_ST_fsm_state40_blk;
wire    ap_ST_fsm_state41_blk;
wire    ap_ST_fsm_state42_blk;
reg    ap_ST_fsm_state43_blk;
wire    ap_ST_fsm_state44_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 44'd1;
#0 grp_viterbi_Pipeline_L_init_fu_293_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_prev_state_fu_307_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_323_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_state_fu_333_ap_start_reg = 1'b0;
#0 t_fu_96 = 8'd0;
#0 t_1_fu_128 = 9'd0;
#0 store_forwarded_fu_132 = 8'd0;
end
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2240 ),.AddressWidth( 12 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2240 ),.AddressWidth( 12 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2240 ),.AddressWidth( 12 ))
llike_2_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_2_address0),.ce0(llike_2_ce0),.we0(llike_2_we0),.d0(llike_2_d0),.q0(llike_2_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2240 ),.AddressWidth( 12 ))
llike_3_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_3_address0),.ce0(llike_3_ce0),.we0(llike_3_we0),.d0(llike_3_d0),.q0(llike_3_q0));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_293(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_293_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_293_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_293_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_293_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_293_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_293_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_293_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_293_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_293_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_293_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_293_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_293_llike_1_d0),.llike_2_address0(grp_viterbi_Pipeline_L_init_fu_293_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_init_fu_293_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_init_fu_293_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_init_fu_293_llike_2_d0),.llike_3_address0(grp_viterbi_Pipeline_L_init_fu_293_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_init_fu_293_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_init_fu_293_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_init_fu_293_llike_3_d0),.init_address0(grp_viterbi_Pipeline_L_init_fu_293_init_address0),.init_ce0(grp_viterbi_Pipeline_L_init_fu_293_init_ce0),.init_q0(init_q0),.init_address1(grp_viterbi_Pipeline_L_init_fu_293_init_address1),.init_ce1(grp_viterbi_Pipeline_L_init_fu_293_init_ce1),.init_q1(init_q1),.obs_load(obs_load_reg_611),.emission_address0(grp_viterbi_Pipeline_L_init_fu_293_emission_address0),.emission_ce0(grp_viterbi_Pipeline_L_init_fu_293_emission_ce0),.emission_q0(emission_q0),.emission_address1(grp_viterbi_Pipeline_L_init_fu_293_emission_address1),.emission_ce1(grp_viterbi_Pipeline_L_init_fu_293_emission_ce1),.emission_q1(emission_q1),.zext_ln13(obs_load_reg_611),.grp_fu_348_p_din0(grp_viterbi_Pipeline_L_init_fu_293_grp_fu_348_p_din0),.grp_fu_348_p_din1(grp_viterbi_Pipeline_L_init_fu_293_grp_fu_348_p_din1),.grp_fu_348_p_opcode(grp_viterbi_Pipeline_L_init_fu_293_grp_fu_348_p_opcode),.grp_fu_348_p_dout0(grp_fu_348_p2),.grp_fu_348_p_ce(grp_viterbi_Pipeline_L_init_fu_293_grp_fu_348_p_ce));
viterbi_viterbi_Pipeline_L_prev_state grp_viterbi_Pipeline_L_prev_state_fu_307(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_prev_state_fu_307_ap_start),.ap_done(grp_viterbi_Pipeline_L_prev_state_fu_307_ap_done),.ap_idle(grp_viterbi_Pipeline_L_prev_state_fu_307_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_prev_state_fu_307_ap_ready),.min_p_10(reg_362),.empty_9(empty_reg_649),.llike_1_address0(grp_viterbi_Pipeline_L_prev_state_fu_307_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_prev_state_fu_307_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_prev_state_fu_307_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_prev_state_fu_307_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_prev_state_fu_307_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_prev_state_fu_307_llike_3_ce0),.llike_3_q0(llike_3_q0),.empty_10(trunc_ln19_reg_677),.transition_address0(grp_viterbi_Pipeline_L_prev_state_fu_307_transition_address0),.transition_ce0(grp_viterbi_Pipeline_L_prev_state_fu_307_transition_ce0),.transition_q0(transition_q0),.transition_address1(grp_viterbi_Pipeline_L_prev_state_fu_307_transition_address1),.transition_ce1(grp_viterbi_Pipeline_L_prev_state_fu_307_transition_ce1),.transition_q1(transition_q1),.bitcast_ln24(bitcast_ln24_reg_712),.empty(tmp_s_reg_654),.llike_address0(grp_viterbi_Pipeline_L_prev_state_fu_307_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_prev_state_fu_307_llike_ce0),.llike_q0(llike_q0),.min_p_18_out(grp_viterbi_Pipeline_L_prev_state_fu_307_min_p_18_out),.min_p_18_out_ap_vld(grp_viterbi_Pipeline_L_prev_state_fu_307_min_p_18_out_ap_vld),.grp_fu_348_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_348_p_din0),.grp_fu_348_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_348_p_din1),.grp_fu_348_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_348_p_opcode),.grp_fu_348_p_dout0(grp_fu_348_p2),.grp_fu_348_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_348_p_ce),.grp_fu_754_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_754_p_din0),.grp_fu_754_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_754_p_din1),.grp_fu_754_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_754_p_opcode),.grp_fu_754_p_dout0(grp_fu_754_p2),.grp_fu_754_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_754_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_323(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_323_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_323_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_323_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_323_ap_ready),.min_p(reg_352),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_323_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_323_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_end_fu_323_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_end_fu_323_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_end_fu_323_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_end_fu_323_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_address0(grp_viterbi_Pipeline_L_end_fu_323_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_323_llike_ce0),.llike_q0(llike_q0),.min_s_4_out(grp_viterbi_Pipeline_L_end_fu_323_min_s_4_out),.min_s_4_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_323_min_s_4_out_ap_vld),.grp_fu_754_p_din0(grp_viterbi_Pipeline_L_end_fu_323_grp_fu_754_p_din0),.grp_fu_754_p_din1(grp_viterbi_Pipeline_L_end_fu_323_grp_fu_754_p_din1),.grp_fu_754_p_opcode(grp_viterbi_Pipeline_L_end_fu_323_grp_fu_754_p_opcode),.grp_fu_754_p_dout0(grp_fu_754_p2),.grp_fu_754_p_ce(grp_viterbi_Pipeline_L_end_fu_323_grp_fu_754_p_ce));
viterbi_viterbi_Pipeline_L_state grp_viterbi_Pipeline_L_state_fu_333(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_state_fu_333_ap_start),.ap_done(grp_viterbi_Pipeline_L_state_fu_333_ap_done),.ap_idle(grp_viterbi_Pipeline_L_state_fu_333_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_state_fu_333_ap_ready),.min_p_12(reg_362),.t_1(trunc_ln50_reg_729),.llike_1_address0(grp_viterbi_Pipeline_L_state_fu_333_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_state_fu_333_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_state_fu_333_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_state_fu_333_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_state_fu_333_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_state_fu_333_llike_3_ce0),.llike_3_q0(llike_3_q0),.zext_ln52(store_forwarded_fu_132),.transition_address0(grp_viterbi_Pipeline_L_state_fu_333_transition_address0),.transition_ce0(grp_viterbi_Pipeline_L_state_fu_333_transition_ce0),.transition_q0(transition_q0),.transition_address1(grp_viterbi_Pipeline_L_state_fu_333_transition_address1),.transition_ce1(grp_viterbi_Pipeline_L_state_fu_333_transition_ce1),.transition_q1(transition_q1),.zext_ln52_2(tmp_26_reg_734),.llike_address0(grp_viterbi_Pipeline_L_state_fu_333_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_state_fu_333_llike_ce0),.llike_q0(llike_q0),.min_s_10_out(grp_viterbi_Pipeline_L_state_fu_333_min_s_10_out),.min_s_10_out_ap_vld(grp_viterbi_Pipeline_L_state_fu_333_min_s_10_out_ap_vld),.grp_fu_348_p_din0(grp_viterbi_Pipeline_L_state_fu_333_grp_fu_348_p_din0),.grp_fu_348_p_din1(grp_viterbi_Pipeline_L_state_fu_333_grp_fu_348_p_din1),.grp_fu_348_p_opcode(grp_viterbi_Pipeline_L_state_fu_333_grp_fu_348_p_opcode),.grp_fu_348_p_dout0(grp_fu_348_p2),.grp_fu_348_p_ce(grp_viterbi_Pipeline_L_state_fu_333_grp_fu_348_p_ce),.grp_fu_754_p_din0(grp_viterbi_Pipeline_L_state_fu_333_grp_fu_754_p_din0),.grp_fu_754_p_din1(grp_viterbi_Pipeline_L_state_fu_333_grp_fu_754_p_din1),.grp_fu_754_p_opcode(grp_viterbi_Pipeline_L_state_fu_333_grp_fu_754_p_opcode),.grp_fu_754_p_dout0(grp_fu_754_p2),.grp_fu_754_p_ce(grp_viterbi_Pipeline_L_state_fu_333_grp_fu_754_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U44(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_348_p0),.din1(grp_fu_348_p1),.ce(grp_fu_348_ce),.dout(grp_fu_348_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U45(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_754_p0),.din1(grp_fu_754_p1),.ce(grp_fu_754_ce),.opcode(grp_fu_754_opcode),.dout(grp_fu_754_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_323_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state29)) begin
            grp_viterbi_Pipeline_L_end_fu_323_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_323_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_323_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_293_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_293_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_293_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_293_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_prev_state_fu_307_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_307_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_prev_state_fu_307_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_307_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_state_fu_333_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state42)) begin
            grp_viterbi_Pipeline_L_state_fu_333_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_state_fu_333_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_state_fu_333_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        curr_reg_282 <= add_ln19_reg_672;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        curr_reg_282 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        store_forwarded_fu_132 <= min_s_4_loc_fu_104;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        store_forwarded_fu_132 <= min_s_10_loc_fu_100;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_377_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        t_1_fu_128 <= 9'd138;
    end else if (((tmp_fu_519_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state32))) begin
        t_1_fu_128 <= add_ln50_fu_552_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_96 <= 8'd1;
    end else if (((icmp_ln19_fu_415_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        t_fu_96 <= add_ln18_fu_450_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln19_reg_672 <= add_ln19_fu_421_p2;
        lshr_ln7_reg_687 <= {{curr_reg_282[5:2]}};
        trunc_ln19_1_reg_683 <= trunc_ln19_1_fu_431_p1;
        trunc_ln19_reg_677 <= trunc_ln19_fu_427_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        bitcast_ln24_reg_712 <= bitcast_ln24_fu_482_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        emission_load_reg_707 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_reg_649 <= empty_fu_393_p2;
        llike_addr_1_reg_659[11 : 4] <= tmp_42_cast_fu_406_p1[11 : 4];
        tmp_s_reg_654[11 : 4] <= tmp_s_fu_398_p3[11 : 4];
        zext_ln19_reg_664[7 : 0] <= zext_ln19_fu_411_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_prev_state_fu_307_min_p_18_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        min_p_18_loc_fu_108 <= grp_viterbi_Pipeline_L_prev_state_fu_307_min_p_18_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_state_fu_333_min_s_10_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state43))) begin
        min_s_10_loc_fu_100 <= grp_viterbi_Pipeline_L_state_fu_333_min_s_10_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_end_fu_323_min_s_4_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
        min_s_4_loc_fu_104 <= grp_viterbi_Pipeline_L_end_fu_323_min_s_4_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        obs_load_reg_611 <= obs_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_352 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_358 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_362 <= grp_fu_348_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_622 <= t_fu_96;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        t_3_reg_718 <= t_1_fu_128;
        tmp_26_reg_734[11 : 4] <= tmp_26_fu_534_p3[11 : 4];
        trunc_ln50_reg_729 <= trunc_ln50_fu_530_p1;
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
    if ((grp_viterbi_Pipeline_L_prev_state_fu_307_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_end_fu_323_ap_done == 1'b0)) begin
        ap_ST_fsm_state30_blk = 1'b1;
    end else begin
        ap_ST_fsm_state30_blk = 1'b0;
    end
end
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
assign ap_ST_fsm_state34_blk = 1'b0;
assign ap_ST_fsm_state35_blk = 1'b0;
assign ap_ST_fsm_state36_blk = 1'b0;
assign ap_ST_fsm_state37_blk = 1'b0;
assign ap_ST_fsm_state38_blk = 1'b0;
assign ap_ST_fsm_state39_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state40_blk = 1'b0;
assign ap_ST_fsm_state41_blk = 1'b0;
assign ap_ST_fsm_state42_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_state_fu_333_ap_done == 1'b0)) begin
        ap_ST_fsm_state43_blk = 1'b1;
    end else begin
        ap_ST_fsm_state43_blk = 1'b0;
    end
end
assign ap_ST_fsm_state44_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_293_ap_done == 1'b0)) begin
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
    if (((tmp_fu_519_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state32))) begin
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
    if (((tmp_fu_519_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state32))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_address0 = grp_viterbi_Pipeline_L_init_fu_293_emission_address0;
    end else begin
        emission_address0 = zext_ln24_fu_477_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_ce0 = grp_viterbi_Pipeline_L_init_fu_293_emission_ce0;
    end else begin
        emission_ce0 = emission_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_ce1 = grp_viterbi_Pipeline_L_init_fu_293_emission_ce1;
    end else begin
        emission_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_348_ce = grp_viterbi_Pipeline_L_state_fu_333_grp_fu_348_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_348_ce = grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_348_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_348_ce = grp_viterbi_Pipeline_L_init_fu_293_grp_fu_348_p_ce;
    end else begin
        grp_fu_348_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_348_p0 = grp_viterbi_Pipeline_L_state_fu_333_grp_fu_348_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_348_p0 = grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_348_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_348_p0 = grp_viterbi_Pipeline_L_init_fu_293_grp_fu_348_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_348_p0 = reg_362;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_348_p0 = reg_352;
    end else begin
        grp_fu_348_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_348_p1 = grp_viterbi_Pipeline_L_state_fu_333_grp_fu_348_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_348_p1 = grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_348_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_348_p1 = grp_viterbi_Pipeline_L_init_fu_293_grp_fu_348_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_348_p1 = bitcast_ln52_fu_563_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_348_p1 = bitcast_ln24_fu_482_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_348_p1 = bitcast_ln23_fu_460_p1;
    end else begin
        grp_fu_348_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_754_ce = grp_viterbi_Pipeline_L_state_fu_333_grp_fu_754_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_754_ce = grp_viterbi_Pipeline_L_end_fu_323_grp_fu_754_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_754_ce = grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_754_p_ce;
    end else begin
        grp_fu_754_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_754_opcode = grp_viterbi_Pipeline_L_state_fu_333_grp_fu_754_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_754_opcode = grp_viterbi_Pipeline_L_end_fu_323_grp_fu_754_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_754_opcode = grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_754_p_opcode;
    end else begin
        grp_fu_754_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_754_p0 = grp_viterbi_Pipeline_L_state_fu_333_grp_fu_754_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_754_p0 = grp_viterbi_Pipeline_L_end_fu_323_grp_fu_754_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_754_p0 = grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_754_p_din0;
    end else begin
        grp_fu_754_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_754_p1 = grp_viterbi_Pipeline_L_state_fu_333_grp_fu_754_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_754_p1 = grp_viterbi_Pipeline_L_end_fu_323_grp_fu_754_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_754_p1 = grp_viterbi_Pipeline_L_prev_state_fu_307_grp_fu_754_p_din1;
    end else begin
        grp_fu_754_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_state_fu_333_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_323_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_prev_state_fu_307_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_293_llike_1_address0;
    end else begin
        llike_1_address0 = zext_ln33_fu_492_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_state_fu_333_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_323_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_307_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_293_llike_1_ce0;
    end else begin
        llike_1_ce0 = llike_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_293_llike_1_d0;
    end else begin
        llike_1_d0 = min_p_18_loc_fu_108;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_293_llike_1_we0;
    end else begin
        llike_1_we0 = llike_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (trunc_ln19_1_reg_683 == 2'd1))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_state_fu_333_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_end_fu_323_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_prev_state_fu_307_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_init_fu_293_llike_2_address0;
    end else begin
        llike_2_address0 = zext_ln33_fu_492_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_state_fu_333_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_end_fu_323_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_307_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_init_fu_293_llike_2_ce0;
    end else begin
        llike_2_ce0 = llike_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_init_fu_293_llike_2_d0;
    end else begin
        llike_2_d0 = min_p_18_loc_fu_108;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_init_fu_293_llike_2_we0;
    end else begin
        llike_2_we0 = llike_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (trunc_ln19_1_reg_683 == 2'd2))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_state_fu_333_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_end_fu_323_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_prev_state_fu_307_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_init_fu_293_llike_3_address0;
    end else begin
        llike_3_address0 = zext_ln33_fu_492_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_state_fu_333_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_end_fu_323_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_307_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_init_fu_293_llike_3_ce0;
    end else begin
        llike_3_ce0 = llike_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_init_fu_293_llike_3_d0;
    end else begin
        llike_3_d0 = min_p_18_loc_fu_108;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_init_fu_293_llike_3_we0;
    end else begin
        llike_3_we0 = llike_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (trunc_ln19_1_reg_683 == 2'd3))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_address0 = grp_viterbi_Pipeline_L_state_fu_333_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_323_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_address0 = grp_viterbi_Pipeline_L_prev_state_fu_307_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_293_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        llike_address0_local = zext_ln52_fu_542_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_address0_local = zext_ln33_fu_492_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        llike_address0_local = llike_addr_1_reg_659;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd2224;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_state_fu_333_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_323_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_307_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_293_llike_ce0;
    end else begin
        llike_ce0 = llike_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_293_llike_d0;
    end else begin
        llike_d0 = min_p_18_loc_fu_108;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_293_llike_we0;
    end else begin
        llike_we0 = llike_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (trunc_ln19_1_reg_683 == 2'd0))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_address0_local = zext_ln18_fu_383_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        obs_address0_local = 64'd0;
    end else begin
        obs_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        obs_ce0_local = 1'b1;
    end else begin
        obs_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        path_address0_local = zext_ln50_fu_568_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        path_address0_local = 64'd139;
    end else begin
        path_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state31))) begin
        path_ce0_local = 1'b1;
    end else begin
        path_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        path_d0_local = min_s_10_loc_fu_100;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        path_d0_local = min_s_4_loc_fu_104;
    end else begin
        path_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state31))) begin
        path_we0_local = 1'b1;
    end else begin
        path_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        transition_address0 = grp_viterbi_Pipeline_L_state_fu_333_transition_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_address0 = grp_viterbi_Pipeline_L_prev_state_fu_307_transition_address0;
    end else begin
        transition_address0 = transition_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        transition_address0_local = zext_ln52_1_fu_547_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_address0_local = zext_ln23_fu_445_p1;
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        transition_address1 = grp_viterbi_Pipeline_L_state_fu_333_transition_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_address1 = grp_viterbi_Pipeline_L_prev_state_fu_307_transition_address1;
    end else begin
        transition_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        transition_ce0 = grp_viterbi_Pipeline_L_state_fu_333_transition_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_307_transition_ce0;
    end else begin
        transition_ce0 = transition_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state7))) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        transition_ce1 = grp_viterbi_Pipeline_L_state_fu_333_transition_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_307_transition_ce1;
    end else begin
        transition_ce1 = 1'b0;
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
            if (((grp_viterbi_Pipeline_L_init_fu_293_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_377_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_415_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
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
            if (((grp_viterbi_Pipeline_L_prev_state_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
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
            if (((grp_viterbi_Pipeline_L_end_fu_323_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state30;
            end
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            if (((tmp_fu_519_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state32))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            if (((grp_viterbi_Pipeline_L_state_fu_333_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state43))) begin
                ap_NS_fsm = ap_ST_fsm_state44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state43;
            end
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln18_fu_450_p2 = (t_fu_96 + 8'd1);
assign add_ln19_fu_421_p2 = (curr_reg_282 + 7'd1);
assign add_ln24_fu_472_p2 = (shl_ln1_fu_465_p3 + zext_ln19_reg_664);
assign add_ln50_fu_552_p2 = ($signed(t_1_fu_128) + $signed(9'd511));
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
assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state41 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign bitcast_ln23_fu_460_p1 = reg_358;
assign bitcast_ln24_fu_482_p1 = emission_load_reg_707;
assign bitcast_ln52_fu_563_p1 = reg_358;
assign emission_address1 = grp_viterbi_Pipeline_L_init_fu_293_emission_address1;
assign empty_fu_393_p2 = ($signed(t_fu_96) + $signed(8'd255));
assign grp_viterbi_Pipeline_L_end_fu_323_ap_start = grp_viterbi_Pipeline_L_end_fu_323_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_293_ap_start = grp_viterbi_Pipeline_L_init_fu_293_ap_start_reg;
assign grp_viterbi_Pipeline_L_prev_state_fu_307_ap_start = grp_viterbi_Pipeline_L_prev_state_fu_307_ap_start_reg;
assign grp_viterbi_Pipeline_L_state_fu_333_ap_start = grp_viterbi_Pipeline_L_state_fu_333_ap_start_reg;
assign icmp_ln18_fu_377_p2 = ((t_fu_96 == 8'd140) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_415_p2 = ((curr_reg_282 == 7'd64) ? 1'b1 : 1'b0);
assign init_address0 = grp_viterbi_Pipeline_L_init_fu_293_init_address0;
assign init_address1 = grp_viterbi_Pipeline_L_init_fu_293_init_address1;
assign init_ce0 = grp_viterbi_Pipeline_L_init_fu_293_init_ce0;
assign init_ce1 = grp_viterbi_Pipeline_L_init_fu_293_init_ce1;
assign obs_address0 = obs_address0_local;
assign obs_ce0 = obs_ce0_local;
assign path_address0 = path_address0_local;
assign path_ce0 = path_ce0_local;
assign path_d0 = path_d0_local;
assign path_we0 = path_we0_local;
assign shl_ln1_fu_465_p3 = {{trunc_ln19_reg_677}, {6'd0}};
assign tmp_26_fu_534_p3 = {{trunc_ln50_fu_530_p1}, {4'd0}};
assign tmp_27_fu_486_p3 = {{t_2_reg_622}, {lshr_ln7_reg_687}};
assign tmp_42_cast_fu_406_p1 = tmp_s_fu_398_p3;
assign tmp_fu_519_p3 = t_1_fu_128[32'd8];
assign tmp_s_fu_398_p3 = {{empty_fu_393_p2}, {4'd0}};
assign trunc_ln19_1_fu_431_p1 = curr_reg_282[1:0];
assign trunc_ln19_fu_427_p1 = curr_reg_282[5:0];
assign trunc_ln50_fu_530_p1 = t_1_fu_128[7:0];
assign zext_ln18_fu_383_p1 = t_fu_96;
assign zext_ln19_fu_411_p1 = obs_q0;
assign zext_ln23_fu_445_p1 = trunc_ln19_fu_427_p1;
assign zext_ln24_fu_477_p1 = add_ln24_fu_472_p2;
assign zext_ln33_fu_492_p1 = tmp_27_fu_486_p3;
assign zext_ln50_fu_568_p1 = t_3_reg_718;
assign zext_ln52_1_fu_547_p1 = store_forwarded_fu_132;
assign zext_ln52_fu_542_p1 = tmp_26_fu_534_p3;
always @ (posedge ap_clk) begin
    tmp_s_reg_654[3:0] <= 4'b0000;
    llike_addr_1_reg_659[3:0] <= 4'b0000;
    zext_ln19_reg_664[11:8] <= 4'b0000;
    tmp_26_reg_734[3:0] <= 4'b0000;
end
endmodule 