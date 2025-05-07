module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_address0,obs_ce0,obs_q0,init_address0,init_ce0,init_q0,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,emission_address0,emission_ce0,emission_q0,path_address0,path_ce0,path_we0,path_d0,ap_return); 
parameter    ap_ST_fsm_state1 = 25'd1;
parameter    ap_ST_fsm_state2 = 25'd2;
parameter    ap_ST_fsm_state3 = 25'd4;
parameter    ap_ST_fsm_state4 = 25'd8;
parameter    ap_ST_fsm_state5 = 25'd16;
parameter    ap_ST_fsm_state6 = 25'd32;
parameter    ap_ST_fsm_state7 = 25'd64;
parameter    ap_ST_fsm_state8 = 25'd128;
parameter    ap_ST_fsm_state9 = 25'd256;
parameter    ap_ST_fsm_state10 = 25'd512;
parameter    ap_ST_fsm_state11 = 25'd1024;
parameter    ap_ST_fsm_state12 = 25'd2048;
parameter    ap_ST_fsm_state13 = 25'd4096;
parameter    ap_ST_fsm_state14 = 25'd8192;
parameter    ap_ST_fsm_state15 = 25'd16384;
parameter    ap_ST_fsm_state16 = 25'd32768;
parameter    ap_ST_fsm_state17 = 25'd65536;
parameter    ap_ST_fsm_state18 = 25'd131072;
parameter    ap_ST_fsm_state19 = 25'd262144;
parameter    ap_ST_fsm_state20 = 25'd524288;
parameter    ap_ST_fsm_state21 = 25'd1048576;
parameter    ap_ST_fsm_state22 = 25'd2097152;
parameter    ap_ST_fsm_state23 = 25'd4194304;
parameter    ap_ST_fsm_state24 = 25'd8388608;
parameter    ap_ST_fsm_state25 = 25'd16777216;
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
reg transition_ce1;
reg[11:0] emission_address0;
reg emission_ce0;
(* fsm_encoding = "none" *) reg   [24:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] reg_316;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state6;
reg   [63:0] reg_322;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_726;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_fu_363_p2;
reg   [7:0] empty_reg_754;
wire   [12:0] tmp_202_fu_368_p3;
reg   [12:0] tmp_202_reg_790;
wire    ap_CS_fsm_state7;
wire   [12:0] tmp_203_fu_376_p3;
reg   [12:0] tmp_203_reg_795;
wire   [12:0] tmp_204_fu_384_p3;
reg   [12:0] tmp_204_reg_800;
wire   [12:0] tmp_205_fu_392_p3;
reg   [12:0] tmp_205_reg_805;
wire   [12:0] tmp_206_fu_400_p3;
reg   [12:0] tmp_206_reg_810;
wire   [12:0] tmp_207_fu_408_p3;
reg   [12:0] tmp_207_reg_815;
wire   [12:0] tmp_208_fu_416_p3;
reg   [12:0] tmp_208_reg_820;
wire   [12:0] tmp_209_fu_424_p3;
reg   [12:0] tmp_209_reg_825;
wire   [12:0] tmp_210_fu_432_p3;
reg   [12:0] tmp_210_reg_830;
wire   [12:0] tmp_211_fu_440_p3;
reg   [12:0] tmp_211_reg_835;
wire   [12:0] tmp_212_fu_448_p3;
reg   [12:0] tmp_212_reg_840;
wire   [12:0] tmp_213_fu_456_p3;
reg   [12:0] tmp_213_reg_845;
wire   [12:0] tmp_214_fu_464_p3;
reg   [12:0] tmp_214_reg_850;
wire   [12:0] tmp_215_fu_472_p3;
reg   [12:0] tmp_215_reg_855;
wire   [12:0] tmp_216_fu_480_p3;
reg   [12:0] tmp_216_reg_860;
wire   [12:0] tmp_217_fu_488_p3;
reg   [12:0] tmp_217_reg_865;
wire   [12:0] tmp_218_fu_496_p3;
reg   [12:0] tmp_218_reg_870;
wire   [12:0] tmp_219_fu_504_p3;
reg   [12:0] tmp_219_reg_875;
wire   [12:0] tmp_220_fu_512_p3;
reg   [12:0] tmp_220_reg_880;
wire   [12:0] tmp_221_fu_520_p3;
reg   [12:0] tmp_221_reg_885;
wire   [12:0] tmp_222_fu_528_p3;
reg   [12:0] tmp_222_reg_890;
wire   [12:0] tmp_223_fu_536_p3;
reg   [12:0] tmp_223_reg_895;
wire   [12:0] tmp_224_fu_544_p3;
reg   [12:0] tmp_224_reg_900;
wire   [12:0] tmp_225_fu_552_p3;
reg   [12:0] tmp_225_reg_905;
wire   [12:0] tmp_s_fu_560_p3;
reg   [12:0] tmp_s_reg_910;
wire   [12:0] tmp_226_fu_568_p3;
reg   [12:0] tmp_226_reg_915;
wire   [12:0] tmp_227_fu_576_p3;
reg   [12:0] tmp_227_reg_920;
wire   [12:0] tmp_228_fu_584_p3;
reg   [12:0] tmp_228_reg_925;
wire   [12:0] tmp_229_fu_592_p3;
reg   [12:0] tmp_229_reg_930;
wire   [12:0] tmp_230_fu_600_p3;
reg   [12:0] tmp_230_reg_935;
wire   [12:0] tmp_231_fu_608_p3;
reg   [12:0] tmp_231_reg_940;
wire   [12:0] tmp_232_fu_616_p3;
reg   [12:0] tmp_232_reg_945;
reg   [8:0] t_3_reg_950;
wire    ap_CS_fsm_state13;
wire   [7:0] trunc_ln50_fu_647_p1;
reg   [7:0] trunc_ln50_reg_961;
wire   [12:0] tmp_233_fu_651_p3;
reg   [12:0] tmp_233_reg_966;
reg   [63:0] transition_load_reg_981;
wire   [63:0] bitcast_ln52_fu_680_p1;
wire    ap_CS_fsm_state15;
wire   [63:0] grp_fu_312_p2;
reg   [63:0] min_p_197_reg_991;
wire    ap_CS_fsm_state22;
reg   [12:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg    llike_ce1;
wire   [63:0] llike_q1;
reg   [12:0] llike_1_address0;
reg    llike_1_ce0;
reg    llike_1_we0;
reg   [63:0] llike_1_d0;
wire   [63:0] llike_1_q0;
reg    llike_1_ce1;
wire   [63:0] llike_1_q1;
wire    grp_viterbi_Pipeline_L_init_fu_236_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_236_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_236_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_236_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_236_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_236_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_236_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_236_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_236_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_236_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_236_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_236_llike_1_d0;
wire   [5:0] grp_viterbi_Pipeline_L_init_fu_236_init_address0;
wire    grp_viterbi_Pipeline_L_init_fu_236_init_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_236_emission_address0;
wire    grp_viterbi_Pipeline_L_init_fu_236_emission_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_236_grp_fu_312_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_236_grp_fu_312_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_236_grp_fu_312_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_236_grp_fu_312_p_ce;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_ap_start;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_ap_done;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_ap_idle;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_247_llike_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_llike_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_247_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_247_llike_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_llike_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_d0;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_247_transition_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_transition_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_247_transition_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_transition_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_247_emission_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_emission_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_312_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_312_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_312_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_312_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_996_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_996_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_996_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_996_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_291_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_291_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_291_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_291_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_291_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_291_llike_1_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_291_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_291_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_291_min_s_2_out;
wire    grp_viterbi_Pipeline_L_end_fu_291_min_s_2_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_291_grp_fu_996_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_291_grp_fu_996_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_291_grp_fu_996_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_291_grp_fu_996_p_ce;
wire    grp_viterbi_Pipeline_L_state_fu_299_ap_start;
wire    grp_viterbi_Pipeline_L_state_fu_299_ap_done;
wire    grp_viterbi_Pipeline_L_state_fu_299_ap_idle;
wire    grp_viterbi_Pipeline_L_state_fu_299_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_state_fu_299_llike_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_299_llike_1_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_299_transition_address0;
wire    grp_viterbi_Pipeline_L_state_fu_299_transition_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_state_fu_299_llike_address0;
wire    grp_viterbi_Pipeline_L_state_fu_299_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_state_fu_299_min_s_6_out;
wire    grp_viterbi_Pipeline_L_state_fu_299_min_s_6_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_299_grp_fu_312_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_299_grp_fu_312_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_state_fu_299_grp_fu_312_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_299_grp_fu_312_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_299_grp_fu_996_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_299_grp_fu_996_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_state_fu_299_grp_fu_996_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_299_grp_fu_996_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_236_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_curr_state_fu_247_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_viterbi_Pipeline_L_end_fu_291_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg   [7:0] min_s_2_loc_fu_140;
reg    grp_viterbi_Pipeline_L_state_fu_299_ap_start_reg;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state24;
reg   [7:0] min_s_6_loc_fu_136;
wire   [63:0] zext_ln18_fu_342_p1;
wire   [0:0] icmp_ln18_fu_336_p2;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln52_fu_659_p1;
wire   [0:0] tmp_fu_636_p3;
wire   [63:0] zext_ln52_1_fu_664_p1;
wire   [63:0] zext_ln50_fu_684_p1;
wire    ap_CS_fsm_state25;
reg   [7:0] t_fu_132;
wire   [7:0] add_ln18_fu_347_p2;
reg   [8:0] t_1_fu_152;
wire   [8:0] add_ln50_fu_669_p2;
reg   [7:0] store_forwarded_fu_156;
reg    obs_ce0_local;
reg   [7:0] obs_address0_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg    path_we0_local;
reg   [7:0] path_d0_local;
reg    path_ce0_local;
reg   [7:0] path_address0_local;
reg    transition_ce0_local;
reg   [63:0] grp_fu_312_p0;
reg   [63:0] grp_fu_312_p1;
reg    grp_fu_312_ce;
wire   [0:0] grp_fu_996_p2;
reg   [63:0] grp_fu_996_p0;
reg   [63:0] grp_fu_996_p1;
reg    grp_fu_996_ce;
reg   [4:0] grp_fu_996_opcode;
reg   [24:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 25'd1;
#0 grp_viterbi_Pipeline_L_init_fu_236_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_curr_state_fu_247_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_291_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_state_fu_299_ap_start_reg = 1'b0;
#0 t_fu_132 = 8'd0;
#0 t_1_fu_152 = 9'd0;
#0 store_forwarded_fu_156 = 8'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(grp_viterbi_Pipeline_L_curr_state_fu_247_llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_236(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_236_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_236_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_236_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_236_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_236_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_236_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_236_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_236_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_236_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_236_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_236_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_236_llike_1_d0),.init_address0(grp_viterbi_Pipeline_L_init_fu_236_init_address0),.init_ce0(grp_viterbi_Pipeline_L_init_fu_236_init_ce0),.init_q0(init_q0),.zext_ln13(reg_316),.emission_address0(grp_viterbi_Pipeline_L_init_fu_236_emission_address0),.emission_ce0(grp_viterbi_Pipeline_L_init_fu_236_emission_ce0),.emission_q0(emission_q0),.grp_fu_312_p_din0(grp_viterbi_Pipeline_L_init_fu_236_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_viterbi_Pipeline_L_init_fu_236_grp_fu_312_p_din1),.grp_fu_312_p_opcode(grp_viterbi_Pipeline_L_init_fu_236_grp_fu_312_p_opcode),.grp_fu_312_p_dout0(grp_fu_312_p2),.grp_fu_312_p_ce(grp_viterbi_Pipeline_L_init_fu_236_grp_fu_312_p_ce));
viterbi_viterbi_Pipeline_L_curr_state grp_viterbi_Pipeline_L_curr_state_fu_247(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_curr_state_fu_247_ap_start),.ap_done(grp_viterbi_Pipeline_L_curr_state_fu_247_ap_done),.ap_idle(grp_viterbi_Pipeline_L_curr_state_fu_247_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_curr_state_fu_247_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_curr_state_fu_247_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_curr_state_fu_247_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_curr_state_fu_247_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_curr_state_fu_247_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_curr_state_fu_247_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_curr_state_fu_247_llike_ce1),.llike_q1(llike_q1),.empty_8(tmp_202_reg_790),.llike_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_ce1),.llike_1_q1(llike_1_q1),.empty_9(tmp_203_reg_795),.empty_10(tmp_204_reg_800),.empty_11(tmp_205_reg_805),.empty_12(tmp_206_reg_810),.empty_13(tmp_207_reg_815),.empty_14(tmp_208_reg_820),.empty_15(tmp_209_reg_825),.empty_16(tmp_210_reg_830),.empty_17(tmp_211_reg_835),.empty_18(tmp_212_reg_840),.empty_19(tmp_213_reg_845),.empty_20(tmp_214_reg_850),.empty_21(tmp_215_reg_855),.empty_22(tmp_216_reg_860),.empty_23(tmp_217_reg_865),.empty_24(tmp_218_reg_870),.empty_25(tmp_219_reg_875),.empty_26(tmp_220_reg_880),.empty_27(tmp_221_reg_885),.empty_28(tmp_222_reg_890),.empty_29(tmp_223_reg_895),.empty_30(tmp_224_reg_900),.empty_31(tmp_225_reg_905),.empty_32(tmp_s_reg_910),.empty_33(tmp_226_reg_915),.empty_34(tmp_227_reg_920),.empty_35(tmp_228_reg_925),.empty_36(tmp_229_reg_930),.empty_37(tmp_230_reg_935),.empty_38(tmp_231_reg_940),.empty(tmp_232_reg_945),.t(t_2_reg_726),.transition_address0(grp_viterbi_Pipeline_L_curr_state_fu_247_transition_address0),.transition_ce0(grp_viterbi_Pipeline_L_curr_state_fu_247_transition_ce0),.transition_q0(transition_q0),.transition_address1(grp_viterbi_Pipeline_L_curr_state_fu_247_transition_address1),.transition_ce1(grp_viterbi_Pipeline_L_curr_state_fu_247_transition_ce1),.transition_q1(transition_q1),.zext_ln26(reg_316),.emission_address0(grp_viterbi_Pipeline_L_curr_state_fu_247_emission_address0),.emission_ce0(grp_viterbi_Pipeline_L_curr_state_fu_247_emission_ce0),.emission_q0(emission_q0),.grp_fu_312_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_312_p_din1),.grp_fu_312_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_312_p_opcode),.grp_fu_312_p_dout0(grp_fu_312_p2),.grp_fu_312_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_312_p_ce),.grp_fu_996_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_996_p_din0),.grp_fu_996_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_996_p_din1),.grp_fu_996_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_996_p_opcode),.grp_fu_996_p_dout0(grp_fu_996_p2),.grp_fu_996_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_996_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_291(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_291_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_291_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_291_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_291_ap_ready),.min_p(reg_322),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_291_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_291_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_address0(grp_viterbi_Pipeline_L_end_fu_291_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_291_llike_ce0),.llike_q0(llike_q0),.min_s_2_out(grp_viterbi_Pipeline_L_end_fu_291_min_s_2_out),.min_s_2_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_291_min_s_2_out_ap_vld),.grp_fu_996_p_din0(grp_viterbi_Pipeline_L_end_fu_291_grp_fu_996_p_din0),.grp_fu_996_p_din1(grp_viterbi_Pipeline_L_end_fu_291_grp_fu_996_p_din1),.grp_fu_996_p_opcode(grp_viterbi_Pipeline_L_end_fu_291_grp_fu_996_p_opcode),.grp_fu_996_p_dout0(grp_fu_996_p2),.grp_fu_996_p_ce(grp_viterbi_Pipeline_L_end_fu_291_grp_fu_996_p_ce));
viterbi_viterbi_Pipeline_L_state grp_viterbi_Pipeline_L_state_fu_299(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_state_fu_299_ap_start),.ap_done(grp_viterbi_Pipeline_L_state_fu_299_ap_done),.ap_idle(grp_viterbi_Pipeline_L_state_fu_299_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_state_fu_299_ap_ready),.min_p_133(min_p_197_reg_991),.t_1(trunc_ln50_reg_961),.llike_1_address0(grp_viterbi_Pipeline_L_state_fu_299_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_state_fu_299_llike_1_ce0),.llike_1_q0(llike_1_q0),.zext_ln52(store_forwarded_fu_156),.transition_address0(grp_viterbi_Pipeline_L_state_fu_299_transition_address0),.transition_ce0(grp_viterbi_Pipeline_L_state_fu_299_transition_ce0),.transition_q0(transition_q0),.zext_ln52_2(tmp_233_reg_966),.llike_address0(grp_viterbi_Pipeline_L_state_fu_299_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_state_fu_299_llike_ce0),.llike_q0(llike_q0),.min_s_6_out(grp_viterbi_Pipeline_L_state_fu_299_min_s_6_out),.min_s_6_out_ap_vld(grp_viterbi_Pipeline_L_state_fu_299_min_s_6_out_ap_vld),.grp_fu_312_p_din0(grp_viterbi_Pipeline_L_state_fu_299_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_viterbi_Pipeline_L_state_fu_299_grp_fu_312_p_din1),.grp_fu_312_p_opcode(grp_viterbi_Pipeline_L_state_fu_299_grp_fu_312_p_opcode),.grp_fu_312_p_dout0(grp_fu_312_p2),.grp_fu_312_p_ce(grp_viterbi_Pipeline_L_state_fu_299_grp_fu_312_p_ce),.grp_fu_996_p_din0(grp_viterbi_Pipeline_L_state_fu_299_grp_fu_996_p_din0),.grp_fu_996_p_din1(grp_viterbi_Pipeline_L_state_fu_299_grp_fu_996_p_din1),.grp_fu_996_p_opcode(grp_viterbi_Pipeline_L_state_fu_299_grp_fu_996_p_opcode),.grp_fu_996_p_dout0(grp_fu_996_p2),.grp_fu_996_p_ce(grp_viterbi_Pipeline_L_state_fu_299_grp_fu_996_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U67(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_312_p0),.din1(grp_fu_312_p1),.ce(grp_fu_312_ce),.dout(grp_fu_312_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U68(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_996_p0),.din1(grp_fu_996_p1),.ce(grp_fu_996_ce),.opcode(grp_fu_996_opcode),.dout(grp_fu_996_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_curr_state_fu_247_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_247_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_curr_state_fu_247_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_247_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_291_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_viterbi_Pipeline_L_end_fu_291_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_291_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_291_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_236_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_236_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_236_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_236_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_state_fu_299_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state23)) begin
            grp_viterbi_Pipeline_L_state_fu_299_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_state_fu_299_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_state_fu_299_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        store_forwarded_fu_156 <= min_s_2_loc_fu_140;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        store_forwarded_fu_156 <= min_s_6_loc_fu_136;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_336_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        t_1_fu_152 <= 9'd138;
    end else if (((tmp_fu_636_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        t_1_fu_152 <= add_ln50_fu_669_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_132 <= 8'd1;
    end else if (((icmp_ln18_fu_336_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        t_fu_132 <= add_ln18_fu_347_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_reg_754 <= empty_fu_363_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        min_p_197_reg_991 <= grp_fu_312_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_end_fu_291_min_s_2_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        min_s_2_loc_fu_140 <= grp_viterbi_Pipeline_L_end_fu_291_min_s_2_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_state_fu_299_min_s_6_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
        min_s_6_loc_fu_136 <= grp_viterbi_Pipeline_L_state_fu_299_min_s_6_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_316 <= obs_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14))) begin
        reg_322 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_726 <= t_fu_132;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        t_3_reg_950 <= t_1_fu_152;
        tmp_233_reg_966[12 : 5] <= tmp_233_fu_651_p3[12 : 5];
        trunc_ln50_reg_961 <= trunc_ln50_fu_647_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_202_reg_790[12 : 5] <= tmp_202_fu_368_p3[12 : 5];
        tmp_203_reg_795[12 : 5] <= tmp_203_fu_376_p3[12 : 5];
        tmp_204_reg_800[12 : 5] <= tmp_204_fu_384_p3[12 : 5];
        tmp_205_reg_805[12 : 5] <= tmp_205_fu_392_p3[12 : 5];
        tmp_206_reg_810[12 : 5] <= tmp_206_fu_400_p3[12 : 5];
        tmp_207_reg_815[12 : 5] <= tmp_207_fu_408_p3[12 : 5];
        tmp_208_reg_820[12 : 5] <= tmp_208_fu_416_p3[12 : 5];
        tmp_209_reg_825[12 : 5] <= tmp_209_fu_424_p3[12 : 5];
        tmp_210_reg_830[12 : 5] <= tmp_210_fu_432_p3[12 : 5];
        tmp_211_reg_835[12 : 5] <= tmp_211_fu_440_p3[12 : 5];
        tmp_212_reg_840[12 : 5] <= tmp_212_fu_448_p3[12 : 5];
        tmp_213_reg_845[12 : 5] <= tmp_213_fu_456_p3[12 : 5];
        tmp_214_reg_850[12 : 5] <= tmp_214_fu_464_p3[12 : 5];
        tmp_215_reg_855[12 : 5] <= tmp_215_fu_472_p3[12 : 5];
        tmp_216_reg_860[12 : 5] <= tmp_216_fu_480_p3[12 : 5];
        tmp_217_reg_865[12 : 5] <= tmp_217_fu_488_p3[12 : 5];
        tmp_218_reg_870[12 : 5] <= tmp_218_fu_496_p3[12 : 5];
        tmp_219_reg_875[12 : 5] <= tmp_219_fu_504_p3[12 : 5];
        tmp_220_reg_880[12 : 5] <= tmp_220_fu_512_p3[12 : 5];
        tmp_221_reg_885[12 : 5] <= tmp_221_fu_520_p3[12 : 5];
        tmp_222_reg_890[12 : 5] <= tmp_222_fu_528_p3[12 : 5];
        tmp_223_reg_895[12 : 5] <= tmp_223_fu_536_p3[12 : 5];
        tmp_224_reg_900[12 : 5] <= tmp_224_fu_544_p3[12 : 5];
        tmp_225_reg_905[12 : 5] <= tmp_225_fu_552_p3[12 : 5];
        tmp_226_reg_915[12 : 5] <= tmp_226_fu_568_p3[12 : 5];
        tmp_227_reg_920[12 : 5] <= tmp_227_fu_576_p3[12 : 5];
        tmp_228_reg_925[12 : 5] <= tmp_228_fu_584_p3[12 : 5];
        tmp_229_reg_930[12 : 5] <= tmp_229_fu_592_p3[12 : 5];
        tmp_230_reg_935[12 : 5] <= tmp_230_fu_600_p3[12 : 5];
        tmp_231_reg_940[12 : 5] <= tmp_231_fu_608_p3[12 : 5];
        tmp_232_reg_945[12 : 5] <= tmp_232_fu_616_p3[12 : 5];
        tmp_s_reg_910[12 : 5] <= tmp_s_fu_560_p3[12 : 5];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_load_reg_981 <= transition_q0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_291_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end
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
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_state_fu_299_ap_done == 1'b0)) begin
        ap_ST_fsm_state24_blk = 1'b1;
    end else begin
        ap_ST_fsm_state24_blk = 1'b0;
    end
end
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_236_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_curr_state_fu_247_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((tmp_fu_636_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
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
    if (((tmp_fu_636_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_address0 = grp_viterbi_Pipeline_L_curr_state_fu_247_emission_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_address0 = grp_viterbi_Pipeline_L_init_fu_236_emission_address0;
    end else begin
        emission_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_247_emission_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_ce0 = grp_viterbi_Pipeline_L_init_fu_236_emission_ce0;
    end else begin
        emission_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_312_ce = grp_viterbi_Pipeline_L_state_fu_299_grp_fu_312_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_312_ce = grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_312_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_ce = grp_viterbi_Pipeline_L_init_fu_236_grp_fu_312_p_ce;
    end else begin
        grp_fu_312_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_312_p0 = grp_viterbi_Pipeline_L_state_fu_299_grp_fu_312_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_312_p0 = grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_312_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_p0 = grp_viterbi_Pipeline_L_init_fu_236_grp_fu_312_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_312_p0 = reg_322;
    end else begin
        grp_fu_312_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_312_p1 = grp_viterbi_Pipeline_L_state_fu_299_grp_fu_312_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_312_p1 = grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_312_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_p1 = grp_viterbi_Pipeline_L_init_fu_236_grp_fu_312_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_312_p1 = bitcast_ln52_fu_680_p1;
    end else begin
        grp_fu_312_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_996_ce = grp_viterbi_Pipeline_L_state_fu_299_grp_fu_996_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_996_ce = grp_viterbi_Pipeline_L_end_fu_291_grp_fu_996_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_996_ce = grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_996_p_ce;
    end else begin
        grp_fu_996_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_996_opcode = grp_viterbi_Pipeline_L_state_fu_299_grp_fu_996_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_996_opcode = grp_viterbi_Pipeline_L_end_fu_291_grp_fu_996_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_996_opcode = grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_996_p_opcode;
    end else begin
        grp_fu_996_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_996_p0 = grp_viterbi_Pipeline_L_state_fu_299_grp_fu_996_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_996_p0 = grp_viterbi_Pipeline_L_end_fu_291_grp_fu_996_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_996_p0 = grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_996_p_din0;
    end else begin
        grp_fu_996_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_996_p1 = grp_viterbi_Pipeline_L_state_fu_299_grp_fu_996_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_996_p1 = grp_viterbi_Pipeline_L_end_fu_291_grp_fu_996_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_996_p1 = grp_viterbi_Pipeline_L_curr_state_fu_247_grp_fu_996_p_din1;
    end else begin
        grp_fu_996_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_state_fu_299_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_291_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_236_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_state_fu_299_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_291_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_236_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_236_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_curr_state_fu_247_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_236_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_address0 = grp_viterbi_Pipeline_L_state_fu_299_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_291_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_address0 = grp_viterbi_Pipeline_L_curr_state_fu_247_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_236_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_address0_local = zext_ln52_fu_659_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd4448;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_state_fu_299_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_291_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_247_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_236_llike_ce0;
    end else begin
        llike_ce0 = llike_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state5))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_247_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_d0 = grp_viterbi_Pipeline_L_curr_state_fu_247_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_236_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_we0 = grp_viterbi_Pipeline_L_curr_state_fu_247_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_236_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_address0_local = zext_ln18_fu_342_p1;
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
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_address0_local = zext_ln50_fu_684_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_address0_local = 64'd139;
    end else begin
        path_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state12))) begin
        path_ce0_local = 1'b1;
    end else begin
        path_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_d0_local = min_s_6_loc_fu_136;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_d0_local = min_s_2_loc_fu_140;
    end else begin
        path_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state12))) begin
        path_we0_local = 1'b1;
    end else begin
        path_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_address0 = grp_viterbi_Pipeline_L_state_fu_299_transition_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_address0 = grp_viterbi_Pipeline_L_curr_state_fu_247_transition_address0;
    end else begin
        transition_address0 = zext_ln52_1_fu_664_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_ce0 = grp_viterbi_Pipeline_L_state_fu_299_transition_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_247_transition_ce0;
    end else begin
        transition_ce0 = transition_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_247_transition_ce1;
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
            if (((grp_viterbi_Pipeline_L_init_fu_236_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_336_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((grp_viterbi_Pipeline_L_curr_state_fu_247_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
            if (((grp_viterbi_Pipeline_L_end_fu_291_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((tmp_fu_636_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
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
            if (((grp_viterbi_Pipeline_L_state_fu_299_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln18_fu_347_p2 = (t_fu_132 + 8'd1);
assign add_ln50_fu_669_p2 = ($signed(t_1_fu_152) + $signed(9'd511));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign bitcast_ln52_fu_680_p1 = transition_load_reg_981;
assign empty_fu_363_p2 = ($signed(t_2_reg_726) + $signed(8'd255));
assign grp_viterbi_Pipeline_L_curr_state_fu_247_ap_start = grp_viterbi_Pipeline_L_curr_state_fu_247_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_291_ap_start = grp_viterbi_Pipeline_L_end_fu_291_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_236_ap_start = grp_viterbi_Pipeline_L_init_fu_236_ap_start_reg;
assign grp_viterbi_Pipeline_L_state_fu_299_ap_start = grp_viterbi_Pipeline_L_state_fu_299_ap_start_reg;
assign icmp_ln18_fu_336_p2 = ((t_fu_132 == 8'd140) ? 1'b1 : 1'b0);
assign init_address0 = grp_viterbi_Pipeline_L_init_fu_236_init_address0;
assign init_ce0 = grp_viterbi_Pipeline_L_init_fu_236_init_ce0;
assign obs_address0 = obs_address0_local;
assign obs_ce0 = obs_ce0_local;
assign path_address0 = path_address0_local;
assign path_ce0 = path_ce0_local;
assign path_d0 = path_d0_local;
assign path_we0 = path_we0_local;
assign tmp_202_fu_368_p3 = {{empty_reg_754}, {5'd0}};
assign tmp_203_fu_376_p3 = {{empty_reg_754}, {5'd1}};
assign tmp_204_fu_384_p3 = {{empty_reg_754}, {5'd2}};
assign tmp_205_fu_392_p3 = {{empty_reg_754}, {5'd3}};
assign tmp_206_fu_400_p3 = {{empty_reg_754}, {5'd4}};
assign tmp_207_fu_408_p3 = {{empty_reg_754}, {5'd5}};
assign tmp_208_fu_416_p3 = {{empty_reg_754}, {5'd6}};
assign tmp_209_fu_424_p3 = {{empty_reg_754}, {5'd7}};
assign tmp_210_fu_432_p3 = {{empty_reg_754}, {5'd8}};
assign tmp_211_fu_440_p3 = {{empty_reg_754}, {5'd9}};
assign tmp_212_fu_448_p3 = {{empty_reg_754}, {5'd10}};
assign tmp_213_fu_456_p3 = {{empty_reg_754}, {5'd11}};
assign tmp_214_fu_464_p3 = {{empty_reg_754}, {5'd12}};
assign tmp_215_fu_472_p3 = {{empty_reg_754}, {5'd13}};
assign tmp_216_fu_480_p3 = {{empty_reg_754}, {5'd14}};
assign tmp_217_fu_488_p3 = {{empty_reg_754}, {5'd15}};
assign tmp_218_fu_496_p3 = {{empty_reg_754}, {5'd16}};
assign tmp_219_fu_504_p3 = {{empty_reg_754}, {5'd17}};
assign tmp_220_fu_512_p3 = {{empty_reg_754}, {5'd18}};
assign tmp_221_fu_520_p3 = {{empty_reg_754}, {5'd19}};
assign tmp_222_fu_528_p3 = {{empty_reg_754}, {5'd20}};
assign tmp_223_fu_536_p3 = {{empty_reg_754}, {5'd21}};
assign tmp_224_fu_544_p3 = {{empty_reg_754}, {5'd22}};
assign tmp_225_fu_552_p3 = {{empty_reg_754}, {5'd23}};
assign tmp_226_fu_568_p3 = {{empty_reg_754}, {5'd25}};
assign tmp_227_fu_576_p3 = {{empty_reg_754}, {5'd26}};
assign tmp_228_fu_584_p3 = {{empty_reg_754}, {5'd27}};
assign tmp_229_fu_592_p3 = {{empty_reg_754}, {5'd28}};
assign tmp_230_fu_600_p3 = {{empty_reg_754}, {5'd29}};
assign tmp_231_fu_608_p3 = {{empty_reg_754}, {5'd30}};
assign tmp_232_fu_616_p3 = {{empty_reg_754}, {5'd31}};
assign tmp_233_fu_651_p3 = {{trunc_ln50_fu_647_p1}, {5'd0}};
assign tmp_fu_636_p3 = t_1_fu_152[32'd8];
assign tmp_s_fu_560_p3 = {{empty_reg_754}, {5'd24}};
assign transition_address1 = grp_viterbi_Pipeline_L_curr_state_fu_247_transition_address1;
assign trunc_ln50_fu_647_p1 = t_1_fu_152[7:0];
assign zext_ln18_fu_342_p1 = t_fu_132;
assign zext_ln50_fu_684_p1 = t_3_reg_950;
assign zext_ln52_1_fu_664_p1 = store_forwarded_fu_156;
assign zext_ln52_fu_659_p1 = tmp_233_fu_651_p3;
always @ (posedge ap_clk) begin
    tmp_202_reg_790[4:0] <= 5'b00000;
    tmp_203_reg_795[4:0] <= 5'b00001;
    tmp_204_reg_800[4:0] <= 5'b00010;
    tmp_205_reg_805[4:0] <= 5'b00011;
    tmp_206_reg_810[4:0] <= 5'b00100;
    tmp_207_reg_815[4:0] <= 5'b00101;
    tmp_208_reg_820[4:0] <= 5'b00110;
    tmp_209_reg_825[4:0] <= 5'b00111;
    tmp_210_reg_830[4:0] <= 5'b01000;
    tmp_211_reg_835[4:0] <= 5'b01001;
    tmp_212_reg_840[4:0] <= 5'b01010;
    tmp_213_reg_845[4:0] <= 5'b01011;
    tmp_214_reg_850[4:0] <= 5'b01100;
    tmp_215_reg_855[4:0] <= 5'b01101;
    tmp_216_reg_860[4:0] <= 5'b01110;
    tmp_217_reg_865[4:0] <= 5'b01111;
    tmp_218_reg_870[4:0] <= 5'b10000;
    tmp_219_reg_875[4:0] <= 5'b10001;
    tmp_220_reg_880[4:0] <= 5'b10010;
    tmp_221_reg_885[4:0] <= 5'b10011;
    tmp_222_reg_890[4:0] <= 5'b10100;
    tmp_223_reg_895[4:0] <= 5'b10101;
    tmp_224_reg_900[4:0] <= 5'b10110;
    tmp_225_reg_905[4:0] <= 5'b10111;
    tmp_s_reg_910[4:0] <= 5'b11000;
    tmp_226_reg_915[4:0] <= 5'b11001;
    tmp_227_reg_920[4:0] <= 5'b11010;
    tmp_228_reg_925[4:0] <= 5'b11011;
    tmp_229_reg_930[4:0] <= 5'b11100;
    tmp_230_reg_935[4:0] <= 5'b11101;
    tmp_231_reg_940[4:0] <= 5'b11110;
    tmp_232_reg_945[4:0] <= 5'b11111;
    tmp_233_reg_966[4:0] <= 5'b00000;
end
endmodule 