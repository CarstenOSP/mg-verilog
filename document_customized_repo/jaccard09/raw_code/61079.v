module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_4_address1,delta_weights3_4_ce1,delta_weights3_4_we1,delta_weights3_4_d1,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_5_address1,delta_weights3_5_ce1,delta_weights3_5_we1,delta_weights3_5_d1,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_6_address1,delta_weights3_6_ce1,delta_weights3_6_we1,delta_weights3_6_d1,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_7_address1,delta_weights3_7_ce1,delta_weights3_7_we1,delta_weights3_7_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,grp_fu_3620_p_din0,grp_fu_3620_p_din1,grp_fu_3620_p_dout0,grp_fu_3620_p_ce,grp_fu_3624_p_din0,grp_fu_3624_p_din1,grp_fu_3624_p_dout0,grp_fu_3624_p_ce,grp_fu_3628_p_din0,grp_fu_3628_p_din1,grp_fu_3628_p_dout0,grp_fu_3628_p_ce,grp_fu_3632_p_din0,grp_fu_3632_p_din1,grp_fu_3632_p_dout0,grp_fu_3632_p_ce,grp_fu_3636_p_din0,grp_fu_3636_p_din1,grp_fu_3636_p_dout0,grp_fu_3636_p_ce,grp_fu_3640_p_din0,grp_fu_3640_p_din1,grp_fu_3640_p_dout0,grp_fu_3640_p_ce,grp_fu_3644_p_din0,grp_fu_3644_p_din1,grp_fu_3644_p_dout0,grp_fu_3644_p_ce,grp_fu_3648_p_din0,grp_fu_3648_p_din1,grp_fu_3648_p_dout0,grp_fu_3648_p_ce,grp_fu_3652_p_din0,grp_fu_3652_p_din1,grp_fu_3652_p_dout0,grp_fu_3652_p_ce,grp_fu_3656_p_din0,grp_fu_3656_p_din1,grp_fu_3656_p_dout0,grp_fu_3656_p_ce,grp_fu_3660_p_din0,grp_fu_3660_p_din1,grp_fu_3660_p_dout0,grp_fu_3660_p_ce,grp_fu_3664_p_din0,grp_fu_3664_p_din1,grp_fu_3664_p_dout0,grp_fu_3664_p_ce,grp_fu_3668_p_din0,grp_fu_3668_p_din1,grp_fu_3668_p_dout0,grp_fu_3668_p_ce,grp_fu_3672_p_din0,grp_fu_3672_p_din1,grp_fu_3672_p_dout0,grp_fu_3672_p_ce,grp_fu_3676_p_din0,grp_fu_3676_p_din1,grp_fu_3676_p_dout0,grp_fu_3676_p_ce,grp_fu_3680_p_din0,grp_fu_3680_p_din1,grp_fu_3680_p_dout0,grp_fu_3680_p_ce,grp_fu_3692_p_din0,grp_fu_3692_p_din1,grp_fu_3692_p_dout0,grp_fu_3692_p_ce); 
parameter    ap_ST_fsm_state1 = 21'd1;
parameter    ap_ST_fsm_state2 = 21'd2;
parameter    ap_ST_fsm_state3 = 21'd4;
parameter    ap_ST_fsm_state4 = 21'd8;
parameter    ap_ST_fsm_state5 = 21'd16;
parameter    ap_ST_fsm_state6 = 21'd32;
parameter    ap_ST_fsm_state7 = 21'd64;
parameter    ap_ST_fsm_state8 = 21'd128;
parameter    ap_ST_fsm_state9 = 21'd256;
parameter    ap_ST_fsm_state10 = 21'd512;
parameter    ap_ST_fsm_state11 = 21'd1024;
parameter    ap_ST_fsm_state12 = 21'd2048;
parameter    ap_ST_fsm_state13 = 21'd4096;
parameter    ap_ST_fsm_state14 = 21'd8192;
parameter    ap_ST_fsm_state15 = 21'd16384;
parameter    ap_ST_fsm_state16 = 21'd32768;
parameter    ap_ST_fsm_state17 = 21'd65536;
parameter    ap_ST_fsm_state18 = 21'd131072;
parameter    ap_ST_fsm_state19 = 21'd262144;
parameter    ap_ST_fsm_state20 = 21'd524288;
parameter    ap_ST_fsm_state21 = 21'd1048576;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [4:0] delta_weights3_0_address1;
output   delta_weights3_0_ce1;
output   delta_weights3_0_we1;
output  [63:0] delta_weights3_0_d1;
output  [4:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [4:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
output  [4:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [4:0] delta_weights3_2_address1;
output   delta_weights3_2_ce1;
output   delta_weights3_2_we1;
output  [63:0] delta_weights3_2_d1;
output  [4:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [4:0] delta_weights3_3_address1;
output   delta_weights3_3_ce1;
output   delta_weights3_3_we1;
output  [63:0] delta_weights3_3_d1;
output  [4:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [4:0] delta_weights3_4_address1;
output   delta_weights3_4_ce1;
output   delta_weights3_4_we1;
output  [63:0] delta_weights3_4_d1;
output  [4:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [4:0] delta_weights3_5_address1;
output   delta_weights3_5_ce1;
output   delta_weights3_5_we1;
output  [63:0] delta_weights3_5_d1;
output  [4:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [4:0] delta_weights3_6_address1;
output   delta_weights3_6_ce1;
output   delta_weights3_6_we1;
output  [63:0] delta_weights3_6_d1;
output  [4:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [4:0] delta_weights3_7_address1;
output   delta_weights3_7_ce1;
output   delta_weights3_7_we1;
output  [63:0] delta_weights3_7_d1;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
output  [2:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [2:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [2:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [2:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [2:0] last_activations_4_address0;
output   last_activations_4_ce0;
input  [63:0] last_activations_4_q0;
output  [2:0] last_activations_5_address0;
output   last_activations_5_ce0;
input  [63:0] last_activations_5_q0;
output  [2:0] last_activations_6_address0;
output   last_activations_6_ce0;
input  [63:0] last_activations_6_q0;
output  [2:0] last_activations_7_address0;
output   last_activations_7_ce0;
input  [63:0] last_activations_7_q0;
output  [63:0] grp_fu_3620_p_din0;
output  [63:0] grp_fu_3620_p_din1;
input  [63:0] grp_fu_3620_p_dout0;
output   grp_fu_3620_p_ce;
output  [63:0] grp_fu_3624_p_din0;
output  [63:0] grp_fu_3624_p_din1;
input  [63:0] grp_fu_3624_p_dout0;
output   grp_fu_3624_p_ce;
output  [63:0] grp_fu_3628_p_din0;
output  [63:0] grp_fu_3628_p_din1;
input  [63:0] grp_fu_3628_p_dout0;
output   grp_fu_3628_p_ce;
output  [63:0] grp_fu_3632_p_din0;
output  [63:0] grp_fu_3632_p_din1;
input  [63:0] grp_fu_3632_p_dout0;
output   grp_fu_3632_p_ce;
output  [63:0] grp_fu_3636_p_din0;
output  [63:0] grp_fu_3636_p_din1;
input  [63:0] grp_fu_3636_p_dout0;
output   grp_fu_3636_p_ce;
output  [63:0] grp_fu_3640_p_din0;
output  [63:0] grp_fu_3640_p_din1;
input  [63:0] grp_fu_3640_p_dout0;
output   grp_fu_3640_p_ce;
output  [63:0] grp_fu_3644_p_din0;
output  [63:0] grp_fu_3644_p_din1;
input  [63:0] grp_fu_3644_p_dout0;
output   grp_fu_3644_p_ce;
output  [63:0] grp_fu_3648_p_din0;
output  [63:0] grp_fu_3648_p_din1;
input  [63:0] grp_fu_3648_p_dout0;
output   grp_fu_3648_p_ce;
output  [63:0] grp_fu_3652_p_din0;
output  [63:0] grp_fu_3652_p_din1;
input  [63:0] grp_fu_3652_p_dout0;
output   grp_fu_3652_p_ce;
output  [63:0] grp_fu_3656_p_din0;
output  [63:0] grp_fu_3656_p_din1;
input  [63:0] grp_fu_3656_p_dout0;
output   grp_fu_3656_p_ce;
output  [63:0] grp_fu_3660_p_din0;
output  [63:0] grp_fu_3660_p_din1;
input  [63:0] grp_fu_3660_p_dout0;
output   grp_fu_3660_p_ce;
output  [63:0] grp_fu_3664_p_din0;
output  [63:0] grp_fu_3664_p_din1;
input  [63:0] grp_fu_3664_p_dout0;
output   grp_fu_3664_p_ce;
output  [63:0] grp_fu_3668_p_din0;
output  [63:0] grp_fu_3668_p_din1;
input  [63:0] grp_fu_3668_p_dout0;
output   grp_fu_3668_p_ce;
output  [63:0] grp_fu_3672_p_din0;
output  [63:0] grp_fu_3672_p_din1;
input  [63:0] grp_fu_3672_p_dout0;
output   grp_fu_3672_p_ce;
output  [63:0] grp_fu_3676_p_din0;
output  [63:0] grp_fu_3676_p_din1;
input  [63:0] grp_fu_3676_p_dout0;
output   grp_fu_3676_p_ce;
output  [63:0] grp_fu_3680_p_din0;
output  [63:0] grp_fu_3680_p_din1;
input  [63:0] grp_fu_3680_p_dout0;
output   grp_fu_3680_p_ce;
output  [63:0] grp_fu_3692_p_din0;
output  [63:0] grp_fu_3692_p_din1;
input  [63:0] grp_fu_3692_p_dout0;
output   grp_fu_3692_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_2606;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state9;
reg   [63:0] reg_2616;
reg   [63:0] reg_2626;
reg   [63:0] reg_2636;
wire    ap_CS_fsm_state10;
reg   [63:0] reg_2646;
reg   [63:0] reg_2656;
reg   [63:0] reg_2666;
wire    ap_CS_fsm_state3;
reg   [63:0] reg_2676;
reg   [63:0] reg_2686;
wire    ap_CS_fsm_state11;
reg   [63:0] reg_2696;
reg   [63:0] reg_2706;
reg   [63:0] reg_2716;
wire    ap_CS_fsm_state4;
reg   [63:0] reg_2726;
reg   [63:0] reg_2736;
reg   [63:0] reg_2746;
wire    ap_CS_fsm_state12;
reg   [63:0] reg_2756;
reg   [63:0] reg_2766;
wire    ap_CS_fsm_state5;
reg   [63:0] reg_2776;
reg   [63:0] reg_2786;
reg   [63:0] reg_2796;
wire    ap_CS_fsm_state13;
reg   [63:0] reg_2806;
reg   [63:0] reg_2816;
reg   [63:0] reg_2826;
wire    ap_CS_fsm_state6;
reg   [63:0] reg_2836;
reg   [63:0] reg_2846;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
reg   [63:0] reg_2852;
reg   [63:0] reg_2858;
reg   [63:0] reg_2864;
reg   [63:0] reg_2870;
reg   [63:0] reg_2876;
reg   [63:0] reg_2882;
reg   [63:0] reg_2888;
reg   [63:0] reg_2894;
reg   [63:0] reg_2900;
reg   [63:0] reg_2906;
reg   [63:0] reg_2912;
reg   [63:0] reg_2918;
reg   [63:0] reg_2924;
reg   [63:0] reg_2930;
reg   [63:0] reg_2936;
reg   [63:0] last_activations_0_load_3_reg_3162;
reg   [63:0] last_activations_1_load_3_reg_3169;
reg   [63:0] last_activations_2_load_3_reg_3176;
wire    ap_CS_fsm_state7;
reg   [63:0] last_activations_3_load_3_reg_3213;
reg   [63:0] last_activations_4_load_3_reg_3220;
reg   [63:0] last_activations_5_load_3_reg_3227;
reg   [63:0] last_activations_6_load_3_reg_3234;
reg   [63:0] last_activations_7_load_3_reg_3241;
wire    ap_CS_fsm_state8;
reg   [63:0] last_activations_0_load_4_reg_3273;
reg   [63:0] last_activations_1_load_4_reg_3280;
reg   [63:0] last_activations_2_load_4_reg_3287;
reg   [63:0] last_activations_3_load_4_reg_3294;
reg   [63:0] last_activations_4_load_4_reg_3301;
reg   [63:0] last_activations_5_load_4_reg_3308;
reg   [63:0] last_activations_6_load_4_reg_3340;
reg   [63:0] last_activations_7_load_4_reg_3347;
reg   [63:0] mul_58_2_reg_3434;
wire    ap_CS_fsm_state21;
reg    last_activations_0_ce0_local;
reg   [2:0] last_activations_0_address0_local;
reg    last_activations_1_ce0_local;
reg   [2:0] last_activations_1_address0_local;
reg    last_activations_2_ce0_local;
reg   [2:0] last_activations_2_address0_local;
reg    last_activations_3_ce0_local;
reg   [2:0] last_activations_3_address0_local;
reg    last_activations_4_ce0_local;
reg   [2:0] last_activations_4_address0_local;
reg    last_activations_5_ce0_local;
reg   [2:0] last_activations_5_address0_local;
reg    last_activations_6_ce0_local;
reg   [2:0] last_activations_6_address0_local;
reg    last_activations_7_ce0_local;
reg   [2:0] last_activations_7_address0_local;
reg    delta_weights3_0_we1_local;
reg   [63:0] delta_weights3_0_d1_local;
reg    delta_weights3_0_ce1_local;
reg   [4:0] delta_weights3_0_address1_local;
reg    delta_weights3_0_we0_local;
reg   [63:0] delta_weights3_0_d0_local;
reg    delta_weights3_0_ce0_local;
reg   [4:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we1_local;
reg   [63:0] delta_weights3_1_d1_local;
reg    delta_weights3_1_ce1_local;
reg   [4:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg   [63:0] delta_weights3_1_d0_local;
reg    delta_weights3_1_ce0_local;
reg   [4:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we1_local;
reg   [63:0] delta_weights3_2_d1_local;
reg    delta_weights3_2_ce1_local;
reg   [4:0] delta_weights3_2_address1_local;
reg    delta_weights3_2_we0_local;
reg   [63:0] delta_weights3_2_d0_local;
reg    delta_weights3_2_ce0_local;
reg   [4:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we1_local;
reg   [63:0] delta_weights3_3_d1_local;
reg    delta_weights3_3_ce1_local;
reg   [4:0] delta_weights3_3_address1_local;
reg    delta_weights3_3_we0_local;
reg   [63:0] delta_weights3_3_d0_local;
reg    delta_weights3_3_ce0_local;
reg   [4:0] delta_weights3_3_address0_local;
reg    delta_weights3_4_we1_local;
reg   [63:0] delta_weights3_4_d1_local;
reg    delta_weights3_4_ce1_local;
reg   [4:0] delta_weights3_4_address1_local;
reg    delta_weights3_4_we0_local;
reg   [63:0] delta_weights3_4_d0_local;
reg    delta_weights3_4_ce0_local;
reg   [4:0] delta_weights3_4_address0_local;
reg    delta_weights3_5_we1_local;
reg   [63:0] delta_weights3_5_d1_local;
reg    delta_weights3_5_ce1_local;
reg   [4:0] delta_weights3_5_address1_local;
reg    delta_weights3_5_we0_local;
reg   [63:0] delta_weights3_5_d0_local;
reg    delta_weights3_5_ce0_local;
reg   [4:0] delta_weights3_5_address0_local;
reg    delta_weights3_6_we1_local;
reg   [63:0] delta_weights3_6_d1_local;
reg    delta_weights3_6_ce1_local;
reg   [4:0] delta_weights3_6_address1_local;
reg    delta_weights3_6_we0_local;
reg   [63:0] delta_weights3_6_d0_local;
reg    delta_weights3_6_ce0_local;
reg   [4:0] delta_weights3_6_address0_local;
reg    delta_weights3_7_we1_local;
reg   [63:0] delta_weights3_7_d1_local;
reg    delta_weights3_7_ce1_local;
reg   [4:0] delta_weights3_7_address1_local;
reg    delta_weights3_7_we0_local;
reg   [63:0] delta_weights3_7_d0_local;
reg    delta_weights3_7_ce0_local;
reg   [4:0] delta_weights3_7_address0_local;
reg   [63:0] grp_fu_2522_p0;
reg   [63:0] grp_fu_2522_p1;
reg   [63:0] grp_fu_2527_p0;
reg   [63:0] grp_fu_2527_p1;
reg   [63:0] grp_fu_2532_p0;
reg   [63:0] grp_fu_2532_p1;
reg   [63:0] grp_fu_2537_p0;
reg   [63:0] grp_fu_2537_p1;
reg   [63:0] grp_fu_2542_p0;
reg   [63:0] grp_fu_2542_p1;
reg   [63:0] grp_fu_2547_p0;
reg   [63:0] grp_fu_2547_p1;
reg   [63:0] grp_fu_2552_p0;
reg   [63:0] grp_fu_2552_p1;
reg   [63:0] grp_fu_2557_p0;
reg   [63:0] grp_fu_2557_p1;
reg   [63:0] grp_fu_2562_p0;
reg   [63:0] grp_fu_2562_p1;
reg   [63:0] grp_fu_2567_p0;
reg   [63:0] grp_fu_2567_p1;
reg   [63:0] grp_fu_2572_p0;
reg   [63:0] grp_fu_2572_p1;
reg   [63:0] grp_fu_2577_p0;
reg   [63:0] grp_fu_2577_p1;
reg   [63:0] grp_fu_2582_p0;
reg   [63:0] grp_fu_2582_p1;
reg   [63:0] grp_fu_2587_p0;
reg   [63:0] grp_fu_2587_p1;
reg   [63:0] grp_fu_2592_p0;
reg   [63:0] grp_fu_2592_p1;
reg   [63:0] grp_fu_2597_p0;
reg   [63:0] grp_fu_2597_p1;
reg   [20:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_0_load_3_reg_3162 <= last_activations_0_q0;
        last_activations_1_load_3_reg_3169 <= last_activations_1_q0;
        last_activations_2_load_3_reg_3176 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_0_load_4_reg_3273 <= last_activations_0_q0;
        last_activations_1_load_4_reg_3280 <= last_activations_1_q0;
        last_activations_2_load_4_reg_3287 <= last_activations_2_q0;
        last_activations_3_load_4_reg_3294 <= last_activations_3_q0;
        last_activations_4_load_4_reg_3301 <= last_activations_4_q0;
        last_activations_5_load_4_reg_3308 <= last_activations_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_3_load_3_reg_3213 <= last_activations_3_q0;
        last_activations_4_load_3_reg_3220 <= last_activations_4_q0;
        last_activations_5_load_3_reg_3227 <= last_activations_5_q0;
        last_activations_6_load_3_reg_3234 <= last_activations_6_q0;
        last_activations_7_load_3_reg_3241 <= last_activations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_6_load_4_reg_3340 <= last_activations_6_q0;
        last_activations_7_load_4_reg_3347 <= last_activations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        mul_58_2_reg_3434 <= grp_fu_3692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_2606 <= last_activations_0_q0;
        reg_2616 <= last_activations_1_q0;
        reg_2626 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_2636 <= last_activations_3_q0;
        reg_2646 <= last_activations_4_q0;
        reg_2656 <= last_activations_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_2666 <= last_activations_6_q0;
        reg_2676 <= last_activations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_2686 <= last_activations_0_q0;
        reg_2696 <= last_activations_1_q0;
        reg_2706 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_2716 <= last_activations_3_q0;
        reg_2726 <= last_activations_4_q0;
        reg_2736 <= last_activations_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_2746 <= last_activations_6_q0;
        reg_2756 <= last_activations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state12))) begin
        reg_2766 <= last_activations_0_q0;
        reg_2776 <= last_activations_1_q0;
        reg_2786 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state5))) begin
        reg_2796 <= last_activations_3_q0;
        reg_2806 <= last_activations_4_q0;
        reg_2816 <= last_activations_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state13))) begin
        reg_2826 <= last_activations_6_q0;
        reg_2836 <= last_activations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_2846 <= grp_fu_3620_p_dout0;
        reg_2852 <= grp_fu_3624_p_dout0;
        reg_2858 <= grp_fu_3628_p_dout0;
        reg_2864 <= grp_fu_3632_p_dout0;
        reg_2870 <= grp_fu_3636_p_dout0;
        reg_2876 <= grp_fu_3640_p_dout0;
        reg_2882 <= grp_fu_3644_p_dout0;
        reg_2888 <= grp_fu_3648_p_dout0;
        reg_2894 <= grp_fu_3652_p_dout0;
        reg_2900 <= grp_fu_3656_p_dout0;
        reg_2906 <= grp_fu_3660_p_dout0;
        reg_2912 <= grp_fu_3664_p_dout0;
        reg_2918 <= grp_fu_3668_p_dout0;
        reg_2924 <= grp_fu_3672_p_dout0;
        reg_2930 <= grp_fu_3676_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_2936 <= grp_fu_3680_p_dout0;
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
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_0_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_0_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_0_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_0_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_0_address0_local = 64'd1;
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_0_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_0_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_0_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_0_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_0_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_0_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_0_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_0_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_0_address1_local = 64'd0;
    end else begin
        delta_weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_0_d0_local = reg_2888;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_0_d0_local = reg_2894;
    end else begin
        delta_weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_0_d1_local = mul_58_2_reg_3434;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_0_d1_local = reg_2846;
    end else begin
        delta_weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_1_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_1_address0_local = 64'd1;
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_1_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_1_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_1_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_1_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_1_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_1_address1_local = 64'd0;
    end else begin
        delta_weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_1_d0_local = reg_2894;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_1_d0_local = reg_2900;
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_1_d1_local = reg_2846;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_1_d1_local = reg_2852;
    end else begin
        delta_weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_2_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_2_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_2_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_2_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_2_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_2_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_2_address0_local = 64'd1;
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_2_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_2_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_2_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_2_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_2_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_2_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_2_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_2_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_2_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_2_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_2_address1_local = 64'd0;
    end else begin
        delta_weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_2_d0_local = reg_2900;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_2_d0_local = reg_2906;
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_2_d1_local = reg_2852;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_2_d1_local = reg_2858;
    end else begin
        delta_weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_3_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_3_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_3_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_3_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_3_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_3_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_3_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_3_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_3_address0_local = 64'd1;
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_3_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_3_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_3_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_3_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_3_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_3_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_3_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_3_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_3_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_3_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_3_address1_local = 64'd0;
    end else begin
        delta_weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_3_d0_local = reg_2906;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_3_d0_local = reg_2912;
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_3_d1_local = reg_2858;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_3_d1_local = reg_2864;
    end else begin
        delta_weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_4_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_4_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_4_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_4_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_4_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_4_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_4_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_4_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_4_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_4_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_4_address0_local = 64'd1;
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_4_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_4_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_4_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_4_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_4_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_4_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_4_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_4_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_4_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_4_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_4_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_4_address1_local = 64'd0;
    end else begin
        delta_weights3_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_4_ce1_local = 1'b1;
    end else begin
        delta_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_4_d0_local = reg_2912;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_4_d0_local = reg_2918;
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_4_d1_local = reg_2864;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_4_d1_local = reg_2870;
    end else begin
        delta_weights3_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_4_we1_local = 1'b1;
    end else begin
        delta_weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_5_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_5_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_5_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_5_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_5_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_5_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_5_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_5_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_5_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_5_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_5_address0_local = 64'd1;
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_5_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_5_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_5_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_5_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_5_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_5_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_5_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_5_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_5_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_5_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_5_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_5_address1_local = 64'd0;
    end else begin
        delta_weights3_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_5_ce1_local = 1'b1;
    end else begin
        delta_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_5_d0_local = reg_2918;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_5_d0_local = reg_2924;
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_5_d1_local = reg_2870;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_5_d1_local = reg_2876;
    end else begin
        delta_weights3_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_5_we1_local = 1'b1;
    end else begin
        delta_weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_6_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_6_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_6_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_6_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_6_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_6_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_6_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_6_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_6_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_6_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_6_address0_local = 64'd1;
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_6_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_6_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_6_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_6_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_6_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_6_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_6_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_6_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_6_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_6_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_6_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_6_address1_local = 64'd0;
    end else begin
        delta_weights3_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_6_ce1_local = 1'b1;
    end else begin
        delta_weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_6_d0_local = reg_2924;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_6_d0_local = reg_2930;
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_6_d1_local = reg_2876;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_6_d1_local = reg_2882;
    end else begin
        delta_weights3_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_6_we1_local = 1'b1;
    end else begin
        delta_weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_7_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_7_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_7_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_7_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_7_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_7_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_7_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_7_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_7_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_7_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_7_address0_local = 64'd1;
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_7_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_7_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_7_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_7_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_7_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_7_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_7_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_7_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_7_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_7_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_7_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_7_address1_local = 64'd0;
    end else begin
        delta_weights3_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_7_ce1_local = 1'b1;
    end else begin
        delta_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_7_d0_local = reg_2930;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_7_d0_local = reg_2936;
    end else begin
        delta_weights3_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_7_d1_local = reg_2882;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_7_d1_local = reg_2888;
    end else begin
        delta_weights3_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        delta_weights3_7_we1_local = 1'b1;
    end else begin
        delta_weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2522_p0 = reg_2796;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2522_p0 = reg_2736;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2522_p0 = reg_2686;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2522_p0 = reg_2626;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2522_p0 = last_activations_5_load_4_reg_3308;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2522_p0 = last_activations_0_load_4_reg_3273;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2522_p0 = last_activations_2_load_3_reg_3176;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2522_p0 = reg_2816;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2522_p0 = reg_2766;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2522_p0 = reg_2706;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2522_p0 = reg_2656;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2522_p0 = reg_2606;
    end else begin
        grp_fu_2522_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2522_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2522_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2522_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2522_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2527_p0 = reg_2796;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2527_p0 = reg_2736;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2527_p0 = reg_2686;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2527_p0 = reg_2636;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2527_p0 = last_activations_5_load_4_reg_3308;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2527_p0 = last_activations_0_load_4_reg_3273;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2527_p0 = last_activations_3_load_3_reg_3213;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2527_p0 = reg_2816;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2527_p0 = reg_2766;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2527_p0 = reg_2716;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2527_p0 = reg_2656;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2527_p0 = reg_2606;
    end else begin
        grp_fu_2527_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2527_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2527_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2527_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2527_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2532_p0 = reg_2796;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2532_p0 = reg_2746;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2532_p0 = reg_2686;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2532_p0 = reg_2636;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2532_p0 = last_activations_6_load_4_reg_3340;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2532_p0 = last_activations_0_load_4_reg_3273;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2532_p0 = last_activations_3_load_3_reg_3213;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2532_p0 = reg_2826;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2532_p0 = reg_2766;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2532_p0 = reg_2716;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2532_p0 = reg_2666;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2532_p0 = reg_2606;
    end else begin
        grp_fu_2532_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2532_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2532_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2532_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2532_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2537_p0 = reg_2806;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2537_p0 = reg_2746;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2537_p0 = reg_2696;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2537_p0 = reg_2636;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2537_p0 = last_activations_6_load_4_reg_3340;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2537_p0 = last_activations_1_load_4_reg_3280;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2537_p0 = last_activations_3_load_3_reg_3213;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2537_p0 = reg_2826;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2537_p0 = reg_2776;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2537_p0 = reg_2716;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2537_p0 = reg_2666;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2537_p0 = reg_2616;
    end else begin
        grp_fu_2537_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2537_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2537_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2537_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2537_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2542_p0 = reg_2806;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2542_p0 = reg_2746;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2542_p0 = reg_2696;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2542_p0 = reg_2646;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2542_p0 = last_activations_6_load_4_reg_3340;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2542_p0 = last_activations_1_load_4_reg_3280;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2542_p0 = last_activations_4_load_3_reg_3220;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2542_p0 = reg_2826;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2542_p0 = reg_2776;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2542_p0 = reg_2726;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2542_p0 = reg_2666;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2542_p0 = reg_2616;
    end else begin
        grp_fu_2542_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2542_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2542_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2542_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2542_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2547_p0 = reg_2806;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2547_p0 = reg_2756;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2547_p0 = reg_2696;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2547_p0 = reg_2646;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2547_p0 = last_activations_7_load_4_reg_3347;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2547_p0 = last_activations_1_load_4_reg_3280;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2547_p0 = last_activations_4_load_3_reg_3220;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2547_p0 = reg_2836;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2547_p0 = reg_2776;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2547_p0 = reg_2726;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2547_p0 = reg_2676;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2547_p0 = reg_2616;
    end else begin
        grp_fu_2547_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2547_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2547_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2547_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2547_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2552_p0 = reg_2816;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2552_p0 = reg_2756;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2552_p0 = reg_2706;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2552_p0 = reg_2646;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2552_p0 = last_activations_7_load_4_reg_3347;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2552_p0 = last_activations_2_load_4_reg_3287;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2552_p0 = last_activations_4_load_3_reg_3220;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2552_p0 = reg_2836;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2552_p0 = reg_2786;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2552_p0 = reg_2726;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2552_p0 = reg_2676;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2552_p0 = reg_2626;
    end else begin
        grp_fu_2552_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2552_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2552_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2552_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2552_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2557_p0 = reg_2816;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2557_p0 = reg_2756;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2557_p0 = reg_2706;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2557_p0 = reg_2656;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2557_p0 = last_activations_7_load_4_reg_3347;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2557_p0 = last_activations_2_load_4_reg_3287;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2557_p0 = last_activations_5_load_3_reg_3227;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2557_p0 = reg_2836;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2557_p0 = reg_2786;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2557_p0 = reg_2736;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2557_p0 = reg_2676;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2557_p0 = reg_2626;
    end else begin
        grp_fu_2557_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2557_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2557_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2557_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2557_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2562_p0 = reg_2816;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2562_p0 = reg_2766;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2562_p0 = reg_2706;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2562_p0 = reg_2656;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2562_p0 = reg_2606;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2562_p0 = last_activations_2_load_4_reg_3287;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2562_p0 = last_activations_5_load_3_reg_3227;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2562_p0 = last_activations_0_load_3_reg_3162;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2562_p0 = reg_2786;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2562_p0 = reg_2736;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2562_p0 = reg_2686;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2562_p0 = reg_2626;
    end else begin
        grp_fu_2562_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2562_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2562_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2562_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2562_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2567_p0 = reg_2826;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2567_p0 = reg_2766;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2567_p0 = reg_2716;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2567_p0 = reg_2656;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2567_p0 = reg_2606;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2567_p0 = last_activations_3_load_4_reg_3294;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2567_p0 = last_activations_5_load_3_reg_3227;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2567_p0 = last_activations_0_load_3_reg_3162;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2567_p0 = reg_2796;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2567_p0 = reg_2736;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2567_p0 = reg_2686;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2567_p0 = reg_2636;
    end else begin
        grp_fu_2567_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2567_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2567_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2567_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2567_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2572_p0 = reg_2826;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2572_p0 = reg_2766;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2572_p0 = reg_2716;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2572_p0 = reg_2666;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2572_p0 = reg_2606;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2572_p0 = last_activations_3_load_4_reg_3294;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2572_p0 = last_activations_6_load_3_reg_3234;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2572_p0 = last_activations_0_load_3_reg_3162;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2572_p0 = reg_2796;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2572_p0 = reg_2746;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2572_p0 = reg_2686;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2572_p0 = reg_2636;
    end else begin
        grp_fu_2572_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2572_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2572_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2572_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2572_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2577_p0 = reg_2826;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2577_p0 = reg_2776;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2577_p0 = reg_2716;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2577_p0 = reg_2666;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2577_p0 = reg_2616;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2577_p0 = last_activations_3_load_4_reg_3294;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2577_p0 = last_activations_6_load_3_reg_3234;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2577_p0 = last_activations_1_load_3_reg_3169;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2577_p0 = reg_2796;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2577_p0 = reg_2746;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2577_p0 = reg_2696;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2577_p0 = reg_2636;
    end else begin
        grp_fu_2577_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2577_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2577_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2577_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2577_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2582_p0 = reg_2836;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2582_p0 = reg_2776;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2582_p0 = reg_2726;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2582_p0 = reg_2666;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2582_p0 = reg_2616;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2582_p0 = last_activations_4_load_4_reg_3301;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2582_p0 = last_activations_6_load_3_reg_3234;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2582_p0 = last_activations_1_load_3_reg_3169;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2582_p0 = reg_2806;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2582_p0 = reg_2746;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2582_p0 = reg_2696;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2582_p0 = reg_2646;
    end else begin
        grp_fu_2582_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2582_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2582_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2582_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2582_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2587_p0 = reg_2836;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2587_p0 = reg_2776;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2587_p0 = reg_2726;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2587_p0 = reg_2676;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2587_p0 = reg_2616;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2587_p0 = last_activations_4_load_4_reg_3301;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2587_p0 = last_activations_7_load_3_reg_3241;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2587_p0 = last_activations_1_load_3_reg_3169;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2587_p0 = reg_2806;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2587_p0 = reg_2756;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2587_p0 = reg_2696;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2587_p0 = reg_2646;
    end else begin
        grp_fu_2587_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2587_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2587_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2587_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2587_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2592_p0 = reg_2836;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2592_p0 = reg_2786;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2592_p0 = reg_2726;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2592_p0 = reg_2676;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2592_p0 = reg_2626;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2592_p0 = last_activations_4_load_4_reg_3301;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2592_p0 = last_activations_7_load_3_reg_3241;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2592_p0 = last_activations_2_load_3_reg_3176;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2592_p0 = reg_2806;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2592_p0 = reg_2756;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2592_p0 = reg_2706;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2592_p0 = reg_2646;
    end else begin
        grp_fu_2592_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2592_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2592_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2592_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2592_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2597_p0 = reg_2786;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2597_p0 = reg_2736;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2597_p0 = reg_2676;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2597_p0 = reg_2626;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_2597_p0 = last_activations_5_load_4_reg_3308;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_2597_p0 = last_activations_7_load_3_reg_3241;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2597_p0 = last_activations_2_load_3_reg_3176;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2597_p0 = reg_2816;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_2597_p0 = reg_2756;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2597_p0 = reg_2706;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2597_p0 = reg_2656;
    end else begin
        grp_fu_2597_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2597_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2597_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2597_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2597_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_0_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_0_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_0_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_0_address0_local = 64'd0;
    end else begin
        last_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_1_address0_local = 64'd0;
    end else begin
        last_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_2_address0_local = 64'd0;
    end else begin
        last_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_2_ce0_local = 1'b1;
    end else begin
        last_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_3_address0_local = 64'd0;
    end else begin
        last_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_3_ce0_local = 1'b1;
    end else begin
        last_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_4_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_4_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_4_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_4_address0_local = 64'd0;
    end else begin
        last_activations_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_4_ce0_local = 1'b1;
    end else begin
        last_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_5_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_5_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_5_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_5_address0_local = 64'd0;
    end else begin
        last_activations_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_5_ce0_local = 1'b1;
    end else begin
        last_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_6_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_6_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_6_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_6_address0_local = 64'd0;
    end else begin
        last_activations_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_6_ce0_local = 1'b1;
    end else begin
        last_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_7_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_7_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_7_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_7_address0_local = 64'd0;
    end else begin
        last_activations_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_7_ce0_local = 1'b1;
    end else begin
        last_activations_7_ce0_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_address1 = delta_weights3_0_address1_local;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = delta_weights3_0_d0_local;
assign delta_weights3_0_d1 = delta_weights3_0_d1_local;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = delta_weights3_1_d0_local;
assign delta_weights3_1_d1 = delta_weights3_1_d1_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_address1 = delta_weights3_2_address1_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = delta_weights3_2_d0_local;
assign delta_weights3_2_d1 = delta_weights3_2_d1_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_address1 = delta_weights3_3_address1_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = delta_weights3_3_d0_local;
assign delta_weights3_3_d1 = delta_weights3_3_d1_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_address1 = delta_weights3_4_address1_local;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_ce1 = delta_weights3_4_ce1_local;
assign delta_weights3_4_d0 = delta_weights3_4_d0_local;
assign delta_weights3_4_d1 = delta_weights3_4_d1_local;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_4_we1 = delta_weights3_4_we1_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_address1 = delta_weights3_5_address1_local;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_ce1 = delta_weights3_5_ce1_local;
assign delta_weights3_5_d0 = delta_weights3_5_d0_local;
assign delta_weights3_5_d1 = delta_weights3_5_d1_local;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_5_we1 = delta_weights3_5_we1_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_address1 = delta_weights3_6_address1_local;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_ce1 = delta_weights3_6_ce1_local;
assign delta_weights3_6_d0 = delta_weights3_6_d0_local;
assign delta_weights3_6_d1 = delta_weights3_6_d1_local;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_6_we1 = delta_weights3_6_we1_local;
assign delta_weights3_7_address0 = delta_weights3_7_address0_local;
assign delta_weights3_7_address1 = delta_weights3_7_address1_local;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_ce1 = delta_weights3_7_ce1_local;
assign delta_weights3_7_d0 = delta_weights3_7_d0_local;
assign delta_weights3_7_d1 = delta_weights3_7_d1_local;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_7_we1 = delta_weights3_7_we1_local;
assign grp_fu_3620_p_ce = 1'b1;
assign grp_fu_3620_p_din0 = grp_fu_2522_p0;
assign grp_fu_3620_p_din1 = grp_fu_2522_p1;
assign grp_fu_3624_p_ce = 1'b1;
assign grp_fu_3624_p_din0 = grp_fu_2527_p0;
assign grp_fu_3624_p_din1 = grp_fu_2527_p1;
assign grp_fu_3628_p_ce = 1'b1;
assign grp_fu_3628_p_din0 = grp_fu_2532_p0;
assign grp_fu_3628_p_din1 = grp_fu_2532_p1;
assign grp_fu_3632_p_ce = 1'b1;
assign grp_fu_3632_p_din0 = grp_fu_2537_p0;
assign grp_fu_3632_p_din1 = grp_fu_2537_p1;
assign grp_fu_3636_p_ce = 1'b1;
assign grp_fu_3636_p_din0 = grp_fu_2542_p0;
assign grp_fu_3636_p_din1 = grp_fu_2542_p1;
assign grp_fu_3640_p_ce = 1'b1;
assign grp_fu_3640_p_din0 = grp_fu_2547_p0;
assign grp_fu_3640_p_din1 = grp_fu_2547_p1;
assign grp_fu_3644_p_ce = 1'b1;
assign grp_fu_3644_p_din0 = grp_fu_2552_p0;
assign grp_fu_3644_p_din1 = grp_fu_2552_p1;
assign grp_fu_3648_p_ce = 1'b1;
assign grp_fu_3648_p_din0 = grp_fu_2557_p0;
assign grp_fu_3648_p_din1 = grp_fu_2557_p1;
assign grp_fu_3652_p_ce = 1'b1;
assign grp_fu_3652_p_din0 = grp_fu_2562_p0;
assign grp_fu_3652_p_din1 = grp_fu_2562_p1;
assign grp_fu_3656_p_ce = 1'b1;
assign grp_fu_3656_p_din0 = grp_fu_2567_p0;
assign grp_fu_3656_p_din1 = grp_fu_2567_p1;
assign grp_fu_3660_p_ce = 1'b1;
assign grp_fu_3660_p_din0 = grp_fu_2572_p0;
assign grp_fu_3660_p_din1 = grp_fu_2572_p1;
assign grp_fu_3664_p_ce = 1'b1;
assign grp_fu_3664_p_din0 = grp_fu_2577_p0;
assign grp_fu_3664_p_din1 = grp_fu_2577_p1;
assign grp_fu_3668_p_ce = 1'b1;
assign grp_fu_3668_p_din0 = grp_fu_2582_p0;
assign grp_fu_3668_p_din1 = grp_fu_2582_p1;
assign grp_fu_3672_p_ce = 1'b1;
assign grp_fu_3672_p_din0 = grp_fu_2587_p0;
assign grp_fu_3672_p_din1 = grp_fu_2587_p1;
assign grp_fu_3676_p_ce = 1'b1;
assign grp_fu_3676_p_din0 = grp_fu_2592_p0;
assign grp_fu_3676_p_din1 = grp_fu_2592_p1;
assign grp_fu_3680_p_ce = 1'b1;
assign grp_fu_3680_p_din0 = grp_fu_2597_p0;
assign grp_fu_3680_p_din1 = grp_fu_2597_p1;
assign grp_fu_3692_p_ce = 1'b1;
assign grp_fu_3692_p_din0 = reg_2786;
assign grp_fu_3692_p_din1 = output_difference_0_2_val;
assign last_activations_0_address0 = last_activations_0_address0_local;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_1_address0 = last_activations_1_address0_local;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_2_address0 = last_activations_2_address0_local;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_3_address0 = last_activations_3_address0_local;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_4_address0 = last_activations_4_address0_local;
assign last_activations_4_ce0 = last_activations_4_ce0_local;
assign last_activations_5_address0 = last_activations_5_address0_local;
assign last_activations_5_ce0 = last_activations_5_ce0_local;
assign last_activations_6_address0 = last_activations_6_address0_local;
assign last_activations_6_ce0 = last_activations_6_ce0_local;
assign last_activations_7_address0 = last_activations_7_address0_local;
assign last_activations_7_ce0 = last_activations_7_ce0_local;
endmodule 