module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_address0,obs_ce0,obs_q0,init_address0,init_ce0,init_q0,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,emission_address0,emission_ce0,emission_q0,path_address0,path_ce0,path_we0,path_d0,ap_return); 
parameter    ap_ST_fsm_state1 = 24'd1;
parameter    ap_ST_fsm_state2 = 24'd2;
parameter    ap_ST_fsm_state3 = 24'd4;
parameter    ap_ST_fsm_state4 = 24'd8;
parameter    ap_ST_fsm_state5 = 24'd16;
parameter    ap_ST_fsm_state6 = 24'd32;
parameter    ap_ST_fsm_state7 = 24'd64;
parameter    ap_ST_fsm_state8 = 24'd128;
parameter    ap_ST_fsm_state9 = 24'd256;
parameter    ap_ST_fsm_state10 = 24'd512;
parameter    ap_ST_fsm_state11 = 24'd1024;
parameter    ap_ST_fsm_state12 = 24'd2048;
parameter    ap_ST_fsm_state13 = 24'd4096;
parameter    ap_ST_fsm_state14 = 24'd8192;
parameter    ap_ST_fsm_state15 = 24'd16384;
parameter    ap_ST_fsm_state16 = 24'd32768;
parameter    ap_ST_fsm_state17 = 24'd65536;
parameter    ap_ST_fsm_state18 = 24'd131072;
parameter    ap_ST_fsm_state19 = 24'd262144;
parameter    ap_ST_fsm_state20 = 24'd524288;
parameter    ap_ST_fsm_state21 = 24'd1048576;
parameter    ap_ST_fsm_state22 = 24'd2097152;
parameter    ap_ST_fsm_state23 = 24'd4194304;
parameter    ap_ST_fsm_state24 = 24'd8388608;
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
reg[7:0] obs_address0;
reg obs_ce0;
reg[11:0] transition_address0;
reg transition_ce0;
reg[11:0] transition_address1;
reg transition_ce1;
reg[11:0] emission_address0;
reg emission_ce0;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_203;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [7:0] obs_load_reg_318;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state7;
reg   [8:0] t_1_reg_328;
wire    ap_CS_fsm_state12;
wire   [7:0] trunc_ln50_fu_237_p1;
reg   [7:0] trunc_ln50_reg_339;
wire   [12:0] tmp_s_fu_241_p3;
reg   [12:0] tmp_s_reg_344;
reg   [63:0] transition_load_64_reg_359;
wire   [63:0] bitcast_ln52_fu_270_p1;
wire    ap_CS_fsm_state14;
wire   [63:0] grp_fu_199_p2;
reg   [63:0] min_p_194_reg_369;
wire    ap_CS_fsm_state21;
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
wire    grp_viterbi_Pipeline_L_init_fu_155_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_155_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_155_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_155_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_155_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_155_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_155_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_155_llike_1_d0;
wire   [5:0] grp_viterbi_Pipeline_L_init_fu_155_init_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_init_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_155_emission_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_emission_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_155_grp_fu_199_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_155_grp_fu_199_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_155_grp_fu_199_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_155_grp_fu_199_p_ce;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_start;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_done;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_idle;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_d0;
wire   [12:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_ce1;
wire   [7:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_obs_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_obs_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_transition_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_transition_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_transition_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_transition_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_emission_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_emission_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_199_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_199_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_199_p_opcode;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_199_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_374_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_374_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_374_p_opcode;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_374_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_178_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_178_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_178_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_178_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_178_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_178_llike_1_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_178_llike_1_address1;
wire    grp_viterbi_Pipeline_L_end_fu_178_llike_1_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_178_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_178_llike_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_178_llike_address1;
wire    grp_viterbi_Pipeline_L_end_fu_178_llike_ce1;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_178_min_s_16_out;
wire    grp_viterbi_Pipeline_L_end_fu_178_min_s_16_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_178_grp_fu_374_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_178_grp_fu_374_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_178_grp_fu_374_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_178_grp_fu_374_p_ce;
wire    grp_viterbi_Pipeline_L_state_fu_186_ap_start;
wire    grp_viterbi_Pipeline_L_state_fu_186_ap_done;
wire    grp_viterbi_Pipeline_L_state_fu_186_ap_idle;
wire    grp_viterbi_Pipeline_L_state_fu_186_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_state_fu_186_llike_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_186_llike_1_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_state_fu_186_llike_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_186_llike_1_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_186_transition_address0;
wire    grp_viterbi_Pipeline_L_state_fu_186_transition_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_186_transition_address1;
wire    grp_viterbi_Pipeline_L_state_fu_186_transition_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_state_fu_186_llike_address0;
wire    grp_viterbi_Pipeline_L_state_fu_186_llike_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_state_fu_186_llike_address1;
wire    grp_viterbi_Pipeline_L_state_fu_186_llike_ce1;
wire   [7:0] grp_viterbi_Pipeline_L_state_fu_186_min_s_34_out;
wire    grp_viterbi_Pipeline_L_state_fu_186_min_s_34_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_186_grp_fu_199_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_186_grp_fu_199_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_state_fu_186_grp_fu_199_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_186_grp_fu_199_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_186_grp_fu_374_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_186_grp_fu_374_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_state_fu_186_grp_fu_374_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_186_grp_fu_374_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_155_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_viterbi_Pipeline_L_end_fu_178_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg   [7:0] min_s_16_loc_fu_74;
reg    grp_viterbi_Pipeline_L_state_fu_186_ap_start_reg;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
reg   [7:0] min_s_34_loc_fu_70;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln52_fu_249_p1;
wire   [0:0] tmp_fu_226_p3;
wire   [63:0] zext_ln52_1_fu_254_p1;
wire   [63:0] zext_ln50_fu_274_p1;
wire    ap_CS_fsm_state24;
reg   [8:0] t_fu_62;
wire   [8:0] add_ln50_fu_259_p2;
reg   [7:0] store_forwarded_fu_66;
reg    obs_ce0_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg    path_we0_local;
reg   [7:0] path_d0_local;
reg    path_ce0_local;
reg   [7:0] path_address0_local;
reg    transition_ce0_local;
reg   [63:0] grp_fu_199_p0;
reg   [63:0] grp_fu_199_p1;
reg    grp_fu_199_ce;
wire   [0:0] grp_fu_374_p2;
reg   [63:0] grp_fu_374_p0;
reg   [63:0] grp_fu_374_p1;
reg    grp_fu_374_ce;
reg   [4:0] grp_fu_374_opcode;
reg   [23:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
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
reg    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 grp_viterbi_Pipeline_L_init_fu_155_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_178_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_state_fu_186_ap_start_reg = 1'b0;
#0 t_fu_62 = 9'd0;
#0 store_forwarded_fu_66 = 8'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_155(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_155_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_155_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_155_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_155_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_155_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_155_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_155_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_155_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_155_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_155_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_155_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_155_llike_1_d0),.init_address0(grp_viterbi_Pipeline_L_init_fu_155_init_address0),.init_ce0(grp_viterbi_Pipeline_L_init_fu_155_init_ce0),.init_q0(init_q0),.zext_ln13(obs_load_reg_318),.emission_address0(grp_viterbi_Pipeline_L_init_fu_155_emission_address0),.emission_ce0(grp_viterbi_Pipeline_L_init_fu_155_emission_ce0),.emission_q0(emission_q0),.grp_fu_199_p_din0(grp_viterbi_Pipeline_L_init_fu_155_grp_fu_199_p_din0),.grp_fu_199_p_din1(grp_viterbi_Pipeline_L_init_fu_155_grp_fu_199_p_din1),.grp_fu_199_p_opcode(grp_viterbi_Pipeline_L_init_fu_155_grp_fu_199_p_opcode),.grp_fu_199_p_dout0(grp_fu_199_p2),.grp_fu_199_p_ce(grp_viterbi_Pipeline_L_init_fu_155_grp_fu_199_p_ce));
viterbi_viterbi_Pipeline_L_timestep_L_curr_state grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_start),.ap_done(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_done),.ap_idle(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_ce1),.llike_1_q1(llike_1_q1),.obs_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_obs_address0),.obs_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_obs_ce0),.obs_q0(obs_q0),.transition_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_transition_address0),.transition_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_transition_ce0),.transition_q0(transition_q0),.transition_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_transition_address1),.transition_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_transition_ce1),.transition_q1(transition_q1),.emission_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_emission_address0),.emission_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_emission_ce0),.emission_q0(emission_q0),.grp_fu_199_p_din0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_199_p_din0),.grp_fu_199_p_din1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_199_p_din1),.grp_fu_199_p_opcode(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_199_p_opcode),.grp_fu_199_p_dout0(grp_fu_199_p2),.grp_fu_199_p_ce(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_199_p_ce),.grp_fu_374_p_din0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_374_p_din0),.grp_fu_374_p_din1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_374_p_din1),.grp_fu_374_p_opcode(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_374_p_opcode),.grp_fu_374_p_dout0(grp_fu_374_p2),.grp_fu_374_p_ce(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_374_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_178(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_178_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_178_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_178_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_178_ap_ready),.min_p(reg_203),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_178_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_178_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_end_fu_178_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_end_fu_178_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_address0(grp_viterbi_Pipeline_L_end_fu_178_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_178_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_end_fu_178_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_end_fu_178_llike_ce1),.llike_q1(llike_q1),.min_s_16_out(grp_viterbi_Pipeline_L_end_fu_178_min_s_16_out),.min_s_16_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_178_min_s_16_out_ap_vld),.grp_fu_374_p_din0(grp_viterbi_Pipeline_L_end_fu_178_grp_fu_374_p_din0),.grp_fu_374_p_din1(grp_viterbi_Pipeline_L_end_fu_178_grp_fu_374_p_din1),.grp_fu_374_p_opcode(grp_viterbi_Pipeline_L_end_fu_178_grp_fu_374_p_opcode),.grp_fu_374_p_dout0(grp_fu_374_p2),.grp_fu_374_p_ce(grp_viterbi_Pipeline_L_end_fu_178_grp_fu_374_p_ce));
viterbi_viterbi_Pipeline_L_state grp_viterbi_Pipeline_L_state_fu_186(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_state_fu_186_ap_start),.ap_done(grp_viterbi_Pipeline_L_state_fu_186_ap_done),.ap_idle(grp_viterbi_Pipeline_L_state_fu_186_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_state_fu_186_ap_ready),.min_p_195(min_p_194_reg_369),.t_1(trunc_ln50_reg_339),.llike_1_address0(grp_viterbi_Pipeline_L_state_fu_186_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_state_fu_186_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_state_fu_186_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_state_fu_186_llike_1_ce1),.llike_1_q1(llike_1_q1),.zext_ln52(store_forwarded_fu_66),.transition_address0(grp_viterbi_Pipeline_L_state_fu_186_transition_address0),.transition_ce0(grp_viterbi_Pipeline_L_state_fu_186_transition_ce0),.transition_q0(transition_q0),.transition_address1(grp_viterbi_Pipeline_L_state_fu_186_transition_address1),.transition_ce1(grp_viterbi_Pipeline_L_state_fu_186_transition_ce1),.transition_q1(transition_q1),.llike_address0(grp_viterbi_Pipeline_L_state_fu_186_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_state_fu_186_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_state_fu_186_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_state_fu_186_llike_ce1),.llike_q1(llike_q1),.zext_ln52_2(tmp_s_reg_344),.min_s_34_out(grp_viterbi_Pipeline_L_state_fu_186_min_s_34_out),.min_s_34_out_ap_vld(grp_viterbi_Pipeline_L_state_fu_186_min_s_34_out_ap_vld),.grp_fu_199_p_din0(grp_viterbi_Pipeline_L_state_fu_186_grp_fu_199_p_din0),.grp_fu_199_p_din1(grp_viterbi_Pipeline_L_state_fu_186_grp_fu_199_p_din1),.grp_fu_199_p_opcode(grp_viterbi_Pipeline_L_state_fu_186_grp_fu_199_p_opcode),.grp_fu_199_p_dout0(grp_fu_199_p2),.grp_fu_199_p_ce(grp_viterbi_Pipeline_L_state_fu_186_grp_fu_199_p_ce),.grp_fu_374_p_din0(grp_viterbi_Pipeline_L_state_fu_186_grp_fu_374_p_din0),.grp_fu_374_p_din1(grp_viterbi_Pipeline_L_state_fu_186_grp_fu_374_p_din1),.grp_fu_374_p_opcode(grp_viterbi_Pipeline_L_state_fu_186_grp_fu_374_p_opcode),.grp_fu_374_p_dout0(grp_fu_374_p2),.grp_fu_374_p_ce(grp_viterbi_Pipeline_L_state_fu_186_grp_fu_374_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U34(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_199_p0),.din1(grp_fu_199_p1),.ce(grp_fu_199_ce),.dout(grp_fu_199_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U35(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_374_p0),.din1(grp_fu_374_p1),.ce(grp_fu_374_ce),.opcode(grp_fu_374_opcode),.dout(grp_fu_374_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_178_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_viterbi_Pipeline_L_end_fu_178_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_178_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_178_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_155_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_155_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_155_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_155_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_state_fu_186_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_viterbi_Pipeline_L_state_fu_186_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_state_fu_186_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_state_fu_186_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        store_forwarded_fu_66 <= min_s_16_loc_fu_74;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        store_forwarded_fu_66 <= min_s_34_loc_fu_70;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_62 <= 9'd138;
    end else if (((tmp_fu_226_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        t_fu_62 <= add_ln50_fu_259_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        min_p_194_reg_369 <= grp_fu_199_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_end_fu_178_min_s_16_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        min_s_16_loc_fu_74 <= grp_viterbi_Pipeline_L_end_fu_178_min_s_16_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_state_fu_186_min_s_34_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        min_s_34_loc_fu_70 <= grp_viterbi_Pipeline_L_state_fu_186_min_s_34_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        obs_load_reg_318 <= obs_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_203 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        t_1_reg_328 <= t_fu_62;
        tmp_s_reg_344[12 : 5] <= tmp_s_fu_241_p3[12 : 5];
        trunc_ln50_reg_339 <= trunc_ln50_fu_237_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_load_64_reg_359 <= transition_q0;
    end
end
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_178_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
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
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_state_fu_186_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_155_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((tmp_fu_226_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
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
    if (((tmp_fu_226_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_emission_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_address0 = grp_viterbi_Pipeline_L_init_fu_155_emission_address0;
    end else begin
        emission_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_emission_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_ce0 = grp_viterbi_Pipeline_L_init_fu_155_emission_ce0;
    end else begin
        emission_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_199_ce = grp_viterbi_Pipeline_L_state_fu_186_grp_fu_199_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_199_ce = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_199_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_199_ce = grp_viterbi_Pipeline_L_init_fu_155_grp_fu_199_p_ce;
    end else begin
        grp_fu_199_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_199_p0 = grp_viterbi_Pipeline_L_state_fu_186_grp_fu_199_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_199_p0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_199_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_199_p0 = grp_viterbi_Pipeline_L_init_fu_155_grp_fu_199_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_199_p0 = reg_203;
    end else begin
        grp_fu_199_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_199_p1 = grp_viterbi_Pipeline_L_state_fu_186_grp_fu_199_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_199_p1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_199_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_199_p1 = grp_viterbi_Pipeline_L_init_fu_155_grp_fu_199_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_199_p1 = bitcast_ln52_fu_270_p1;
    end else begin
        grp_fu_199_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_374_ce = grp_viterbi_Pipeline_L_state_fu_186_grp_fu_374_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_374_ce = grp_viterbi_Pipeline_L_end_fu_178_grp_fu_374_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_374_ce = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_374_p_ce;
    end else begin
        grp_fu_374_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_374_opcode = grp_viterbi_Pipeline_L_state_fu_186_grp_fu_374_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_374_opcode = grp_viterbi_Pipeline_L_end_fu_178_grp_fu_374_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_374_opcode = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_374_p_opcode;
    end else begin
        grp_fu_374_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_374_p0 = grp_viterbi_Pipeline_L_state_fu_186_grp_fu_374_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_374_p0 = grp_viterbi_Pipeline_L_end_fu_178_grp_fu_374_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_374_p0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_374_p_din0;
    end else begin
        grp_fu_374_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_374_p1 = grp_viterbi_Pipeline_L_state_fu_186_grp_fu_374_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_374_p1 = grp_viterbi_Pipeline_L_end_fu_178_grp_fu_374_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_374_p1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_grp_fu_374_p_din1;
    end else begin
        grp_fu_374_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_state_fu_186_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_178_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_155_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_state_fu_186_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_end_fu_178_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_state_fu_186_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_178_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_155_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_state_fu_186_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_end_fu_178_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_155_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_155_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        llike_address0 = grp_viterbi_Pipeline_L_state_fu_186_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_178_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_155_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        llike_address0_local = zext_ln52_fu_249_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        llike_address0_local = 64'd4448;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        llike_address1 = grp_viterbi_Pipeline_L_state_fu_186_llike_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_address1 = grp_viterbi_Pipeline_L_end_fu_178_llike_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_address1;
    end else begin
        llike_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_state_fu_186_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_178_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_155_llike_ce0;
    end else begin
        llike_ce0 = llike_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_state_fu_186_llike_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_end_fu_178_llike_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_155_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_155_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        obs_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_obs_address0;
    end else begin
        obs_address0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        obs_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_obs_ce0;
    end else begin
        obs_ce0 = obs_ce0_local;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        obs_ce0_local = 1'b1;
    end else begin
        obs_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        path_address0_local = zext_ln50_fu_274_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        path_address0_local = 64'd139;
    end else begin
        path_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state11))) begin
        path_ce0_local = 1'b1;
    end else begin
        path_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        path_d0_local = min_s_34_loc_fu_70;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        path_d0_local = min_s_16_loc_fu_74;
    end else begin
        path_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state11))) begin
        path_we0_local = 1'b1;
    end else begin
        path_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        transition_address0 = grp_viterbi_Pipeline_L_state_fu_186_transition_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_transition_address0;
    end else begin
        transition_address0 = zext_ln52_1_fu_254_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        transition_address1 = grp_viterbi_Pipeline_L_state_fu_186_transition_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_transition_address1;
    end else begin
        transition_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        transition_ce0 = grp_viterbi_Pipeline_L_state_fu_186_transition_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_transition_ce0;
    end else begin
        transition_ce0 = transition_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        transition_ce1 = grp_viterbi_Pipeline_L_state_fu_186_transition_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_transition_ce1;
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
            if (((1'b1 == ap_CS_fsm_state4) & (grp_viterbi_Pipeline_L_init_fu_155_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_viterbi_Pipeline_L_end_fu_178_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((tmp_fu_226_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
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
            if (((grp_viterbi_Pipeline_L_state_fu_186_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln50_fu_259_p2 = ($signed(t_fu_62) + $signed(9'd511));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign bitcast_ln52_fu_270_p1 = transition_load_64_reg_359;
assign grp_viterbi_Pipeline_L_end_fu_178_ap_start = grp_viterbi_Pipeline_L_end_fu_178_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_155_ap_start = grp_viterbi_Pipeline_L_init_fu_155_ap_start_reg;
assign grp_viterbi_Pipeline_L_state_fu_186_ap_start = grp_viterbi_Pipeline_L_state_fu_186_ap_start_reg;
assign grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_start = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_166_ap_start_reg;
assign init_address0 = grp_viterbi_Pipeline_L_init_fu_155_init_address0;
assign init_ce0 = grp_viterbi_Pipeline_L_init_fu_155_init_ce0;
assign path_address0 = path_address0_local;
assign path_ce0 = path_ce0_local;
assign path_d0 = path_d0_local;
assign path_we0 = path_we0_local;
assign tmp_fu_226_p3 = t_fu_62[32'd8];
assign tmp_s_fu_241_p3 = {{trunc_ln50_fu_237_p1}, {5'd0}};
assign trunc_ln50_fu_237_p1 = t_fu_62[7:0];
assign zext_ln50_fu_274_p1 = t_1_reg_328;
assign zext_ln52_1_fu_254_p1 = store_forwarded_fu_66;
assign zext_ln52_fu_249_p1 = tmp_s_fu_241_p3;
always @ (posedge ap_clk) begin
    tmp_s_reg_344[4:0] <= 5'b00000;
end
endmodule 