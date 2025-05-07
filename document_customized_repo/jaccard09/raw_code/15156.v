module backprop_get_oracle_activations2_62_63_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_q1,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_q1,output_differences_0_0_val,output_differences_0_1_val,output_differences_0_2_val,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_0_address1,oracle_activations_0_ce1,oracle_activations_0_we1,oracle_activations_0_d1,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_1_address1,oracle_activations_1_ce1,oracle_activations_1_we1,oracle_activations_1_d1,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_2_address1,oracle_activations_2_ce1,oracle_activations_2_we1,oracle_activations_2_d1,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,oracle_activations_3_address1,oracle_activations_3_ce1,oracle_activations_3_we1,oracle_activations_3_d1,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_0_address1,dactivations_0_ce1,dactivations_0_q1,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_1_address1,dactivations_1_ce1,dactivations_1_q1,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_2_address1,dactivations_2_ce1,dactivations_2_q1,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,dactivations_3_address1,dactivations_3_ce1,dactivations_3_q1,grp_fu_3064_p_din0,grp_fu_3064_p_din1,grp_fu_3064_p_opcode,grp_fu_3064_p_dout0,grp_fu_3064_p_ce,grp_fu_3068_p_din0,grp_fu_3068_p_din1,grp_fu_3068_p_opcode,grp_fu_3068_p_dout0,grp_fu_3068_p_ce,grp_fu_3072_p_din0,grp_fu_3072_p_din1,grp_fu_3072_p_opcode,grp_fu_3072_p_dout0,grp_fu_3072_p_ce,grp_fu_3076_p_din0,grp_fu_3076_p_din1,grp_fu_3076_p_opcode,grp_fu_3076_p_dout0,grp_fu_3076_p_ce,grp_fu_3080_p_din0,grp_fu_3080_p_din1,grp_fu_3080_p_opcode,grp_fu_3080_p_dout0,grp_fu_3080_p_ce,grp_fu_3084_p_din0,grp_fu_3084_p_din1,grp_fu_3084_p_opcode,grp_fu_3084_p_dout0,grp_fu_3084_p_ce,grp_fu_3088_p_din0,grp_fu_3088_p_din1,grp_fu_3088_p_opcode,grp_fu_3088_p_dout0,grp_fu_3088_p_ce,grp_fu_3092_p_din0,grp_fu_3092_p_din1,grp_fu_3092_p_opcode,grp_fu_3092_p_dout0,grp_fu_3092_p_ce,grp_fu_3116_p_din0,grp_fu_3116_p_din1,grp_fu_3116_p_dout0,grp_fu_3116_p_ce,grp_fu_3120_p_din0,grp_fu_3120_p_din1,grp_fu_3120_p_dout0,grp_fu_3120_p_ce,grp_fu_3124_p_din0,grp_fu_3124_p_din1,grp_fu_3124_p_dout0,grp_fu_3124_p_ce,grp_fu_3136_p_din0,grp_fu_3136_p_din1,grp_fu_3136_p_dout0,grp_fu_3136_p_ce); 
parameter    ap_ST_fsm_state1 = 48'd1;
parameter    ap_ST_fsm_state2 = 48'd2;
parameter    ap_ST_fsm_state3 = 48'd4;
parameter    ap_ST_fsm_state4 = 48'd8;
parameter    ap_ST_fsm_state5 = 48'd16;
parameter    ap_ST_fsm_state6 = 48'd32;
parameter    ap_ST_fsm_state7 = 48'd64;
parameter    ap_ST_fsm_state8 = 48'd128;
parameter    ap_ST_fsm_state9 = 48'd256;
parameter    ap_ST_fsm_state10 = 48'd512;
parameter    ap_ST_fsm_state11 = 48'd1024;
parameter    ap_ST_fsm_state12 = 48'd2048;
parameter    ap_ST_fsm_state13 = 48'd4096;
parameter    ap_ST_fsm_state14 = 48'd8192;
parameter    ap_ST_fsm_state15 = 48'd16384;
parameter    ap_ST_fsm_state16 = 48'd32768;
parameter    ap_ST_fsm_state17 = 48'd65536;
parameter    ap_ST_fsm_state18 = 48'd131072;
parameter    ap_ST_fsm_state19 = 48'd262144;
parameter    ap_ST_fsm_state20 = 48'd524288;
parameter    ap_ST_fsm_state21 = 48'd1048576;
parameter    ap_ST_fsm_state22 = 48'd2097152;
parameter    ap_ST_fsm_state23 = 48'd4194304;
parameter    ap_ST_fsm_state24 = 48'd8388608;
parameter    ap_ST_fsm_state25 = 48'd16777216;
parameter    ap_ST_fsm_state26 = 48'd33554432;
parameter    ap_ST_fsm_state27 = 48'd67108864;
parameter    ap_ST_fsm_state28 = 48'd134217728;
parameter    ap_ST_fsm_state29 = 48'd268435456;
parameter    ap_ST_fsm_state30 = 48'd536870912;
parameter    ap_ST_fsm_state31 = 48'd1073741824;
parameter    ap_ST_fsm_state32 = 48'd2147483648;
parameter    ap_ST_fsm_state33 = 48'd4294967296;
parameter    ap_ST_fsm_state34 = 48'd8589934592;
parameter    ap_ST_fsm_state35 = 48'd17179869184;
parameter    ap_ST_fsm_state36 = 48'd34359738368;
parameter    ap_ST_fsm_state37 = 48'd68719476736;
parameter    ap_ST_fsm_state38 = 48'd137438953472;
parameter    ap_ST_fsm_state39 = 48'd274877906944;
parameter    ap_ST_fsm_state40 = 48'd549755813888;
parameter    ap_ST_fsm_state41 = 48'd1099511627776;
parameter    ap_ST_fsm_state42 = 48'd2199023255552;
parameter    ap_ST_fsm_state43 = 48'd4398046511104;
parameter    ap_ST_fsm_state44 = 48'd8796093022208;
parameter    ap_ST_fsm_state45 = 48'd17592186044416;
parameter    ap_ST_fsm_state46 = 48'd35184372088832;
parameter    ap_ST_fsm_state47 = 48'd70368744177664;
parameter    ap_ST_fsm_state48 = 48'd140737488355328;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [5:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
output  [5:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [5:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
output  [5:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [5:0] weights3_2_address1;
output   weights3_2_ce1;
input  [63:0] weights3_2_q1;
output  [5:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [5:0] weights3_3_address1;
output   weights3_3_ce1;
input  [63:0] weights3_3_q1;
input  [63:0] output_differences_0_0_val;
input  [63:0] output_differences_0_1_val;
input  [63:0] output_differences_0_2_val;
output  [3:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [3:0] oracle_activations_0_address1;
output   oracle_activations_0_ce1;
output   oracle_activations_0_we1;
output  [63:0] oracle_activations_0_d1;
output  [3:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [3:0] oracle_activations_1_address1;
output   oracle_activations_1_ce1;
output   oracle_activations_1_we1;
output  [63:0] oracle_activations_1_d1;
output  [3:0] oracle_activations_2_address0;
output   oracle_activations_2_ce0;
output   oracle_activations_2_we0;
output  [63:0] oracle_activations_2_d0;
output  [3:0] oracle_activations_2_address1;
output   oracle_activations_2_ce1;
output   oracle_activations_2_we1;
output  [63:0] oracle_activations_2_d1;
output  [3:0] oracle_activations_3_address0;
output   oracle_activations_3_ce0;
output   oracle_activations_3_we0;
output  [63:0] oracle_activations_3_d0;
output  [3:0] oracle_activations_3_address1;
output   oracle_activations_3_ce1;
output   oracle_activations_3_we1;
output  [63:0] oracle_activations_3_d1;
output  [3:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [3:0] dactivations_0_address1;
output   dactivations_0_ce1;
input  [63:0] dactivations_0_q1;
output  [3:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [3:0] dactivations_1_address1;
output   dactivations_1_ce1;
input  [63:0] dactivations_1_q1;
output  [3:0] dactivations_2_address0;
output   dactivations_2_ce0;
input  [63:0] dactivations_2_q0;
output  [3:0] dactivations_2_address1;
output   dactivations_2_ce1;
input  [63:0] dactivations_2_q1;
output  [3:0] dactivations_3_address0;
output   dactivations_3_ce0;
input  [63:0] dactivations_3_q0;
output  [3:0] dactivations_3_address1;
output   dactivations_3_ce1;
input  [63:0] dactivations_3_q1;
output  [63:0] grp_fu_3064_p_din0;
output  [63:0] grp_fu_3064_p_din1;
output  [0:0] grp_fu_3064_p_opcode;
input  [63:0] grp_fu_3064_p_dout0;
output   grp_fu_3064_p_ce;
output  [63:0] grp_fu_3068_p_din0;
output  [63:0] grp_fu_3068_p_din1;
output  [0:0] grp_fu_3068_p_opcode;
input  [63:0] grp_fu_3068_p_dout0;
output   grp_fu_3068_p_ce;
output  [63:0] grp_fu_3072_p_din0;
output  [63:0] grp_fu_3072_p_din1;
output  [0:0] grp_fu_3072_p_opcode;
input  [63:0] grp_fu_3072_p_dout0;
output   grp_fu_3072_p_ce;
output  [63:0] grp_fu_3076_p_din0;
output  [63:0] grp_fu_3076_p_din1;
output  [0:0] grp_fu_3076_p_opcode;
input  [63:0] grp_fu_3076_p_dout0;
output   grp_fu_3076_p_ce;
output  [63:0] grp_fu_3080_p_din0;
output  [63:0] grp_fu_3080_p_din1;
output  [0:0] grp_fu_3080_p_opcode;
input  [63:0] grp_fu_3080_p_dout0;
output   grp_fu_3080_p_ce;
output  [63:0] grp_fu_3084_p_din0;
output  [63:0] grp_fu_3084_p_din1;
output  [0:0] grp_fu_3084_p_opcode;
input  [63:0] grp_fu_3084_p_dout0;
output   grp_fu_3084_p_ce;
output  [63:0] grp_fu_3088_p_din0;
output  [63:0] grp_fu_3088_p_din1;
output  [1:0] grp_fu_3088_p_opcode;
input  [63:0] grp_fu_3088_p_dout0;
output   grp_fu_3088_p_ce;
output  [63:0] grp_fu_3092_p_din0;
output  [63:0] grp_fu_3092_p_din1;
output  [1:0] grp_fu_3092_p_opcode;
input  [63:0] grp_fu_3092_p_dout0;
output   grp_fu_3092_p_ce;
output  [63:0] grp_fu_3116_p_din0;
output  [63:0] grp_fu_3116_p_din1;
input  [63:0] grp_fu_3116_p_dout0;
output   grp_fu_3116_p_ce;
output  [63:0] grp_fu_3120_p_din0;
output  [63:0] grp_fu_3120_p_din1;
input  [63:0] grp_fu_3120_p_dout0;
output   grp_fu_3120_p_ce;
output  [63:0] grp_fu_3124_p_din0;
output  [63:0] grp_fu_3124_p_din1;
input  [63:0] grp_fu_3124_p_dout0;
output   grp_fu_3124_p_ce;
output  [63:0] grp_fu_3136_p_din0;
output  [63:0] grp_fu_3136_p_din1;
input  [63:0] grp_fu_3136_p_dout0;
output   grp_fu_3136_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [47:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_3242;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
reg   [63:0] reg_3246;
reg   [63:0] reg_3250;
reg   [63:0] reg_3254;
reg   [63:0] reg_3258;
reg   [63:0] reg_3262;
reg   [63:0] reg_3266;
reg   [63:0] reg_3270;
reg   [63:0] reg_3274;
wire    ap_CS_fsm_state40;
wire    ap_CS_fsm_state41;
wire    ap_CS_fsm_state42;
wire    ap_CS_fsm_state43;
wire    ap_CS_fsm_state44;
wire    ap_CS_fsm_state45;
wire    ap_CS_fsm_state46;
wire    ap_CS_fsm_state47;
reg   [63:0] reg_3281;
reg   [63:0] reg_3288;
reg   [63:0] reg_3295;
wire   [63:0] grp_fu_3206_p2;
reg   [63:0] reg_3302;
wire   [63:0] grp_fu_3211_p2;
reg   [63:0] reg_3309;
wire   [63:0] grp_fu_3216_p2;
reg   [63:0] reg_3316;
wire   [63:0] grp_fu_3221_p2;
reg   [63:0] reg_3323;
reg   [63:0] reg_3330;
wire    ap_CS_fsm_state26;
reg   [63:0] reg_3336;
reg   [63:0] reg_3342;
reg   [63:0] reg_3348;
reg   [63:0] reg_3354;
reg   [63:0] reg_3360;
reg   [63:0] reg_3366;
reg   [63:0] reg_3372;
reg   [63:0] reg_3378;
wire    ap_CS_fsm_state27;
reg   [63:0] reg_3384;
reg   [63:0] reg_3390;
reg   [63:0] reg_3396;
reg   [63:0] reg_3402;
reg   [63:0] reg_3408;
reg   [63:0] reg_3414;
reg   [63:0] reg_3420;
reg   [63:0] reg_3426;
wire    ap_CS_fsm_state28;
reg   [63:0] reg_3432;
reg   [63:0] reg_3438;
reg   [63:0] reg_3444;
reg   [63:0] reg_3450;
reg   [63:0] reg_3456;
reg   [63:0] reg_3462;
reg   [63:0] reg_3468;
reg   [63:0] reg_3474;
wire    ap_CS_fsm_state29;
reg   [63:0] reg_3480;
reg   [63:0] reg_3486;
reg   [63:0] reg_3492;
reg   [63:0] reg_3498;
reg   [63:0] reg_3504;
reg   [63:0] reg_3510;
reg   [63:0] reg_3516;
reg   [63:0] reg_3522;
wire    ap_CS_fsm_state30;
reg   [63:0] reg_3528;
reg   [63:0] reg_3534;
reg   [63:0] reg_3540;
reg   [63:0] reg_3546;
reg   [63:0] reg_3552;
reg   [63:0] reg_3558;
reg   [63:0] reg_3564;
reg   [63:0] reg_3570;
wire    ap_CS_fsm_state31;
reg   [63:0] reg_3576;
reg   [63:0] reg_3582;
reg   [63:0] reg_3588;
reg   [63:0] reg_3594;
reg   [63:0] reg_3600;
reg   [63:0] reg_3606;
reg   [63:0] reg_3612;
reg   [63:0] reg_3618;
wire    ap_CS_fsm_state32;
reg   [63:0] reg_3624;
reg   [63:0] reg_3630;
reg   [63:0] reg_3636;
reg   [63:0] reg_3642;
reg   [63:0] reg_3648;
reg   [63:0] reg_3654;
reg   [63:0] reg_3660;
reg   [63:0] reg_3666;
wire    ap_CS_fsm_state33;
reg   [63:0] reg_3672;
reg   [63:0] reg_3678;
reg   [63:0] reg_3684;
reg   [63:0] reg_3690;
reg   [63:0] reg_3696;
reg   [63:0] reg_3702;
reg   [63:0] reg_3708;
reg   [63:0] reg_3714;
wire    ap_CS_fsm_state34;
reg   [63:0] reg_3720;
reg   [63:0] reg_3726;
reg   [63:0] reg_3732;
reg   [63:0] reg_3738;
reg   [63:0] reg_3744;
reg   [63:0] reg_3750;
reg   [63:0] reg_3756;
reg   [63:0] reg_3762;
wire    ap_CS_fsm_state35;
reg   [63:0] reg_3768;
reg   [63:0] reg_3774;
reg   [63:0] reg_3780;
reg   [63:0] reg_3786;
reg   [63:0] reg_3792;
reg   [63:0] reg_3798;
reg   [63:0] reg_3804;
reg   [63:0] reg_3810;
wire    ap_CS_fsm_state36;
reg   [63:0] reg_3816;
reg   [63:0] reg_3822;
reg   [63:0] reg_3828;
reg   [63:0] reg_3834;
reg   [63:0] reg_3840;
reg   [63:0] reg_3846;
reg   [63:0] reg_3852;
reg   [63:0] reg_3858;
wire    ap_CS_fsm_state37;
reg   [63:0] reg_3864;
reg   [63:0] reg_3870;
reg   [63:0] reg_3876;
reg   [63:0] reg_3882;
reg   [63:0] reg_3888;
reg   [63:0] reg_3894;
reg   [63:0] reg_3900;
reg   [63:0] reg_3906;
wire    ap_CS_fsm_state38;
reg   [63:0] reg_3912;
reg   [63:0] reg_3918;
reg   [63:0] reg_3924;
reg   [63:0] reg_3930;
reg   [63:0] reg_3936;
reg   [63:0] reg_3942;
reg   [63:0] reg_3948;
reg   [63:0] reg_3954;
wire    ap_CS_fsm_state39;
reg   [63:0] reg_3960;
reg   [63:0] reg_3966;
reg   [63:0] reg_3972;
reg   [63:0] reg_3978;
reg   [63:0] reg_3984;
reg   [63:0] reg_3990;
reg   [63:0] reg_3996;
reg   [63:0] reg_4002;
reg   [63:0] reg_4007;
reg   [63:0] reg_4012;
reg   [63:0] reg_4017;
reg   [63:0] reg_4022;
reg   [63:0] reg_4027;
reg   [63:0] reg_4032;
reg   [63:0] reg_4037;
reg   [63:0] reg_4042;
reg   [63:0] reg_4047;
reg   [63:0] reg_4052;
reg   [63:0] reg_4057;
reg   [63:0] reg_4062;
reg   [63:0] reg_4067;
reg   [63:0] reg_4072;
reg   [63:0] reg_4077;
wire   [63:0] bitcast_ln85_fu_4082_p1;
wire   [63:0] bitcast_ln85_3_fu_4087_p1;
wire   [63:0] bitcast_ln85_6_fu_4092_p1;
wire   [63:0] bitcast_ln85_9_fu_4097_p1;
wire   [63:0] bitcast_ln85_12_fu_4102_p1;
wire   [63:0] bitcast_ln85_15_fu_4107_p1;
wire   [63:0] bitcast_ln85_18_fu_4112_p1;
wire   [63:0] bitcast_ln85_21_fu_4117_p1;
wire   [63:0] bitcast_ln85_24_fu_4122_p1;
wire   [63:0] bitcast_ln85_27_fu_4127_p1;
wire   [63:0] bitcast_ln85_30_fu_4132_p1;
wire   [63:0] bitcast_ln85_33_fu_4137_p1;
wire   [63:0] bitcast_ln85_36_fu_4142_p1;
wire   [63:0] bitcast_ln85_39_fu_4147_p1;
wire   [63:0] bitcast_ln85_42_fu_4152_p1;
wire   [63:0] bitcast_ln85_45_fu_4157_p1;
wire   [63:0] bitcast_ln85_48_fu_4162_p1;
wire   [63:0] bitcast_ln85_51_fu_4167_p1;
wire   [63:0] bitcast_ln85_54_fu_4172_p1;
wire   [63:0] bitcast_ln85_57_fu_4177_p1;
wire   [63:0] bitcast_ln85_60_fu_4182_p1;
wire   [63:0] bitcast_ln85_63_fu_4187_p1;
wire   [63:0] bitcast_ln85_66_fu_4192_p1;
wire   [63:0] bitcast_ln85_69_fu_4197_p1;
wire   [63:0] bitcast_ln85_72_fu_4202_p1;
wire   [63:0] bitcast_ln85_75_fu_4207_p1;
wire   [63:0] bitcast_ln85_78_fu_4212_p1;
wire   [63:0] bitcast_ln85_81_fu_4217_p1;
wire   [63:0] bitcast_ln85_84_fu_4222_p1;
wire   [63:0] bitcast_ln85_87_fu_4227_p1;
wire   [63:0] bitcast_ln85_90_fu_4232_p1;
wire   [63:0] bitcast_ln85_93_fu_4237_p1;
wire   [63:0] bitcast_ln85_96_fu_4242_p1;
wire   [63:0] bitcast_ln85_99_fu_4247_p1;
wire   [63:0] bitcast_ln85_102_fu_4252_p1;
wire   [63:0] bitcast_ln85_105_fu_4257_p1;
wire   [63:0] bitcast_ln85_108_fu_4262_p1;
wire   [63:0] bitcast_ln85_111_fu_4267_p1;
wire   [63:0] bitcast_ln85_114_fu_4272_p1;
wire   [63:0] bitcast_ln85_117_fu_4277_p1;
wire   [63:0] bitcast_ln85_120_fu_4282_p1;
wire   [63:0] bitcast_ln85_123_fu_4287_p1;
wire   [63:0] bitcast_ln85_126_fu_4292_p1;
wire   [63:0] bitcast_ln85_129_fu_4297_p1;
wire   [63:0] bitcast_ln85_132_fu_4302_p1;
wire   [63:0] bitcast_ln85_135_fu_4307_p1;
wire   [63:0] bitcast_ln85_138_fu_4312_p1;
wire   [63:0] bitcast_ln85_141_fu_4317_p1;
wire   [63:0] bitcast_ln85_144_fu_4322_p1;
wire   [63:0] bitcast_ln85_147_fu_4327_p1;
wire   [63:0] bitcast_ln85_150_fu_4332_p1;
wire   [63:0] bitcast_ln85_153_fu_4337_p1;
wire   [63:0] bitcast_ln85_156_fu_4342_p1;
wire   [63:0] bitcast_ln85_159_fu_4347_p1;
wire   [63:0] bitcast_ln85_162_fu_4352_p1;
wire   [63:0] bitcast_ln85_165_fu_4357_p1;
wire   [63:0] bitcast_ln85_168_fu_4362_p1;
wire   [63:0] bitcast_ln85_171_fu_4367_p1;
wire   [63:0] bitcast_ln85_174_fu_4372_p1;
wire   [63:0] bitcast_ln85_177_fu_4377_p1;
wire   [63:0] bitcast_ln85_180_fu_4382_p1;
wire   [63:0] bitcast_ln85_183_fu_4387_p1;
wire   [63:0] bitcast_ln85_186_fu_4392_p1;
wire   [63:0] bitcast_ln85_189_fu_4397_p1;
wire   [63:0] bitcast_ln85_1_fu_4402_p1;
wire   [63:0] bitcast_ln85_4_fu_4407_p1;
wire   [63:0] bitcast_ln85_7_fu_4412_p1;
wire   [63:0] bitcast_ln85_10_fu_4417_p1;
wire   [63:0] bitcast_ln85_13_fu_4422_p1;
wire   [63:0] bitcast_ln85_16_fu_4427_p1;
wire   [63:0] bitcast_ln85_19_fu_4432_p1;
wire   [63:0] bitcast_ln85_22_fu_4437_p1;
wire   [63:0] bitcast_ln85_25_fu_4442_p1;
wire   [63:0] bitcast_ln85_28_fu_4447_p1;
wire   [63:0] bitcast_ln85_31_fu_4452_p1;
wire   [63:0] bitcast_ln85_34_fu_4457_p1;
wire   [63:0] bitcast_ln85_37_fu_4462_p1;
wire   [63:0] bitcast_ln85_40_fu_4467_p1;
wire   [63:0] bitcast_ln85_43_fu_4472_p1;
wire   [63:0] bitcast_ln85_46_fu_4477_p1;
wire   [63:0] bitcast_ln85_49_fu_4482_p1;
wire   [63:0] bitcast_ln85_52_fu_4487_p1;
wire   [63:0] bitcast_ln85_55_fu_4492_p1;
wire   [63:0] bitcast_ln85_58_fu_4497_p1;
wire   [63:0] bitcast_ln85_61_fu_4502_p1;
wire   [63:0] bitcast_ln85_64_fu_4507_p1;
wire   [63:0] bitcast_ln85_67_fu_4512_p1;
wire   [63:0] bitcast_ln85_70_fu_4517_p1;
wire   [63:0] bitcast_ln85_73_fu_4522_p1;
wire   [63:0] bitcast_ln85_76_fu_4527_p1;
wire   [63:0] bitcast_ln85_79_fu_4532_p1;
wire   [63:0] bitcast_ln85_82_fu_4537_p1;
wire   [63:0] bitcast_ln85_85_fu_4542_p1;
wire   [63:0] bitcast_ln85_88_fu_4547_p1;
wire   [63:0] bitcast_ln85_91_fu_4552_p1;
wire   [63:0] bitcast_ln85_94_fu_4557_p1;
wire   [63:0] bitcast_ln85_97_fu_4562_p1;
wire   [63:0] bitcast_ln85_100_fu_4567_p1;
wire   [63:0] bitcast_ln85_103_fu_4572_p1;
wire   [63:0] bitcast_ln85_106_fu_4577_p1;
wire   [63:0] bitcast_ln85_109_fu_4582_p1;
wire   [63:0] bitcast_ln85_112_fu_4587_p1;
wire   [63:0] bitcast_ln85_115_fu_4592_p1;
wire   [63:0] bitcast_ln85_118_fu_4597_p1;
wire   [63:0] bitcast_ln85_121_fu_4602_p1;
wire   [63:0] bitcast_ln85_124_fu_4607_p1;
wire   [63:0] bitcast_ln85_127_fu_4612_p1;
wire   [63:0] bitcast_ln85_130_fu_4617_p1;
wire   [63:0] bitcast_ln85_133_fu_4622_p1;
wire   [63:0] bitcast_ln85_136_fu_4627_p1;
wire   [63:0] bitcast_ln85_139_fu_4632_p1;
wire   [63:0] bitcast_ln85_142_fu_4637_p1;
wire   [63:0] bitcast_ln85_145_fu_4642_p1;
wire   [63:0] bitcast_ln85_148_fu_4647_p1;
wire   [63:0] bitcast_ln85_151_fu_4652_p1;
wire   [63:0] bitcast_ln85_154_fu_4657_p1;
wire   [63:0] bitcast_ln85_157_fu_4662_p1;
wire   [63:0] bitcast_ln85_160_fu_4667_p1;
wire   [63:0] bitcast_ln85_163_fu_4672_p1;
wire   [63:0] bitcast_ln85_166_fu_4677_p1;
wire   [63:0] bitcast_ln85_169_fu_4682_p1;
wire   [63:0] bitcast_ln85_172_fu_4687_p1;
wire   [63:0] bitcast_ln85_175_fu_4692_p1;
wire   [63:0] bitcast_ln85_178_fu_4697_p1;
wire   [63:0] bitcast_ln85_181_fu_4702_p1;
wire   [63:0] bitcast_ln85_184_fu_4707_p1;
wire   [63:0] bitcast_ln85_187_fu_4712_p1;
wire   [63:0] bitcast_ln85_190_fu_4717_p1;
wire   [63:0] bitcast_ln85_2_fu_4722_p1;
wire   [63:0] bitcast_ln85_5_fu_4727_p1;
wire   [63:0] bitcast_ln85_8_fu_4732_p1;
wire   [63:0] bitcast_ln85_11_fu_4737_p1;
wire   [63:0] bitcast_ln85_14_fu_4742_p1;
wire   [63:0] bitcast_ln85_17_fu_4747_p1;
wire   [63:0] bitcast_ln85_20_fu_4752_p1;
wire   [63:0] bitcast_ln85_23_fu_4757_p1;
wire   [63:0] bitcast_ln85_26_fu_4762_p1;
wire   [63:0] bitcast_ln85_29_fu_4767_p1;
wire   [63:0] bitcast_ln85_32_fu_4772_p1;
wire   [63:0] bitcast_ln85_35_fu_4777_p1;
wire   [63:0] bitcast_ln85_38_fu_4782_p1;
wire   [63:0] bitcast_ln85_41_fu_4787_p1;
wire   [63:0] bitcast_ln85_44_fu_4792_p1;
wire   [63:0] bitcast_ln85_47_fu_4797_p1;
wire   [63:0] bitcast_ln85_50_fu_4802_p1;
wire   [63:0] bitcast_ln85_53_fu_4807_p1;
wire   [63:0] bitcast_ln85_56_fu_4812_p1;
wire   [63:0] bitcast_ln85_59_fu_4817_p1;
wire   [63:0] bitcast_ln85_62_fu_4822_p1;
wire   [63:0] bitcast_ln85_65_fu_4827_p1;
wire   [63:0] bitcast_ln85_68_fu_4832_p1;
wire   [63:0] bitcast_ln85_71_fu_4837_p1;
wire   [63:0] bitcast_ln85_74_fu_4842_p1;
wire   [63:0] bitcast_ln85_77_fu_4847_p1;
wire   [63:0] bitcast_ln85_80_fu_4852_p1;
wire   [63:0] bitcast_ln85_83_fu_4857_p1;
wire   [63:0] bitcast_ln85_86_fu_4862_p1;
wire   [63:0] bitcast_ln85_89_fu_4867_p1;
wire   [63:0] bitcast_ln85_92_fu_4872_p1;
wire   [63:0] bitcast_ln85_95_fu_4877_p1;
wire   [63:0] bitcast_ln85_98_fu_4882_p1;
wire   [63:0] bitcast_ln85_101_fu_4887_p1;
wire   [63:0] bitcast_ln85_104_fu_4892_p1;
wire   [63:0] bitcast_ln85_107_fu_4897_p1;
wire   [63:0] bitcast_ln85_110_fu_4902_p1;
wire   [63:0] bitcast_ln85_113_fu_4907_p1;
wire   [63:0] bitcast_ln85_116_fu_4912_p1;
wire   [63:0] bitcast_ln85_119_fu_4917_p1;
wire   [63:0] bitcast_ln85_122_fu_4922_p1;
wire   [63:0] bitcast_ln85_125_fu_4927_p1;
wire   [63:0] bitcast_ln85_128_fu_4932_p1;
wire   [63:0] bitcast_ln85_131_fu_4937_p1;
wire   [63:0] bitcast_ln85_134_fu_4942_p1;
wire   [63:0] bitcast_ln85_137_fu_4947_p1;
wire   [63:0] bitcast_ln85_140_fu_4952_p1;
wire   [63:0] bitcast_ln85_143_fu_4957_p1;
wire   [63:0] bitcast_ln85_146_fu_4962_p1;
wire   [63:0] bitcast_ln85_149_fu_4967_p1;
wire   [63:0] bitcast_ln85_152_fu_4972_p1;
wire   [63:0] bitcast_ln85_155_fu_4977_p1;
wire   [63:0] bitcast_ln85_158_fu_4982_p1;
wire   [63:0] bitcast_ln85_161_fu_4987_p1;
wire   [63:0] bitcast_ln85_164_fu_4992_p1;
wire   [63:0] bitcast_ln85_167_fu_4997_p1;
wire   [63:0] bitcast_ln85_170_fu_5002_p1;
wire   [63:0] bitcast_ln85_173_fu_5007_p1;
wire   [63:0] bitcast_ln85_176_fu_5012_p1;
wire   [63:0] bitcast_ln85_179_fu_5017_p1;
wire   [63:0] bitcast_ln85_182_fu_5022_p1;
wire   [63:0] bitcast_ln85_185_fu_5027_p1;
wire   [63:0] bitcast_ln85_188_fu_5032_p1;
wire   [63:0] bitcast_ln85_191_fu_5037_p1;
reg   [63:0] dactivations_0_load_2_reg_7078;
reg   [63:0] dactivations_1_load_2_reg_7083;
reg   [63:0] dactivations_2_load_2_reg_7088;
reg   [63:0] dactivations_3_load_2_reg_7093;
reg   [63:0] dactivations_0_load_3_reg_7098;
reg   [63:0] dactivations_1_load_3_reg_7103;
reg   [63:0] dactivations_2_load_3_reg_7108;
reg   [63:0] dactivations_3_load_3_reg_7113;
reg   [63:0] dactivations_0_load_4_reg_7158;
reg   [63:0] dactivations_1_load_4_reg_7163;
reg   [63:0] dactivations_2_load_4_reg_7168;
reg   [63:0] dactivations_3_load_4_reg_7173;
reg   [63:0] dactivations_0_load_5_reg_7178;
reg   [63:0] dactivations_1_load_5_reg_7183;
reg   [63:0] dactivations_2_load_5_reg_7188;
reg   [63:0] dactivations_3_load_5_reg_7193;
reg   [63:0] dactivations_0_load_6_reg_7238;
reg   [63:0] dactivations_1_load_6_reg_7243;
reg   [63:0] dactivations_2_load_6_reg_7248;
reg   [63:0] dactivations_3_load_6_reg_7253;
reg   [63:0] dactivations_0_load_7_reg_7258;
reg   [63:0] dactivations_1_load_7_reg_7263;
reg   [63:0] dactivations_2_load_7_reg_7268;
reg   [63:0] dactivations_3_load_7_reg_7273;
reg   [63:0] dactivations_0_load_8_reg_7318;
reg   [63:0] dactivations_1_load_8_reg_7323;
reg   [63:0] dactivations_2_load_8_reg_7328;
reg   [63:0] dactivations_3_load_8_reg_7333;
reg   [63:0] dactivations_0_load_9_reg_7338;
reg   [63:0] dactivations_1_load_9_reg_7343;
reg   [63:0] dactivations_2_load_9_reg_7348;
reg   [63:0] dactivations_3_load_9_reg_7353;
reg   [63:0] dactivations_0_load_10_reg_7398;
reg   [63:0] dactivations_1_load_10_reg_7403;
reg   [63:0] dactivations_2_load_10_reg_7408;
reg   [63:0] dactivations_3_load_10_reg_7413;
reg   [63:0] dactivations_0_load_11_reg_7418;
reg   [63:0] dactivations_1_load_11_reg_7423;
reg   [63:0] dactivations_2_load_11_reg_7428;
reg   [63:0] dactivations_3_load_11_reg_7433;
reg   [63:0] dactivations_0_load_12_reg_7478;
reg   [63:0] dactivations_1_load_12_reg_7483;
reg   [63:0] dactivations_2_load_12_reg_7488;
reg   [63:0] dactivations_3_load_12_reg_7493;
reg   [63:0] dactivations_0_load_13_reg_7498;
reg   [63:0] dactivations_1_load_13_reg_7503;
reg   [63:0] dactivations_2_load_13_reg_7508;
reg   [63:0] dactivations_3_load_13_reg_7513;
wire    ap_CS_fsm_state48;
reg    weights3_0_ce1_local;
reg   [5:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [5:0] weights3_0_address0_local;
reg    weights3_3_ce1_local;
reg   [5:0] weights3_3_address1_local;
reg    weights3_3_ce0_local;
reg   [5:0] weights3_3_address0_local;
reg    weights3_2_ce1_local;
reg   [5:0] weights3_2_address1_local;
reg    weights3_2_ce0_local;
reg   [5:0] weights3_2_address0_local;
reg    weights3_1_ce1_local;
reg   [5:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [5:0] weights3_1_address0_local;
reg    dactivations_0_ce1_local;
reg   [3:0] dactivations_0_address1_local;
reg    dactivations_0_ce0_local;
reg   [3:0] dactivations_0_address0_local;
reg    dactivations_1_ce1_local;
reg   [3:0] dactivations_1_address1_local;
reg    dactivations_1_ce0_local;
reg   [3:0] dactivations_1_address0_local;
reg    dactivations_2_ce1_local;
reg   [3:0] dactivations_2_address1_local;
reg    dactivations_2_ce0_local;
reg   [3:0] dactivations_2_address0_local;
reg    dactivations_3_ce1_local;
reg   [3:0] dactivations_3_address1_local;
reg    dactivations_3_ce0_local;
reg   [3:0] dactivations_3_address0_local;
reg    oracle_activations_0_we1_local;
reg    oracle_activations_0_ce1_local;
reg   [3:0] oracle_activations_0_address1_local;
reg    oracle_activations_0_we0_local;
reg    oracle_activations_0_ce0_local;
reg   [3:0] oracle_activations_0_address0_local;
reg    oracle_activations_1_we1_local;
reg    oracle_activations_1_ce1_local;
reg   [3:0] oracle_activations_1_address1_local;
reg    oracle_activations_1_we0_local;
reg    oracle_activations_1_ce0_local;
reg   [3:0] oracle_activations_1_address0_local;
reg    oracle_activations_2_we1_local;
reg    oracle_activations_2_ce1_local;
reg   [3:0] oracle_activations_2_address1_local;
reg    oracle_activations_2_we0_local;
reg    oracle_activations_2_ce0_local;
reg   [3:0] oracle_activations_2_address0_local;
reg    oracle_activations_3_we1_local;
reg    oracle_activations_3_ce1_local;
reg   [3:0] oracle_activations_3_address1_local;
reg    oracle_activations_3_we0_local;
reg    oracle_activations_3_ce0_local;
reg   [3:0] oracle_activations_3_address0_local;
reg   [63:0] grp_fu_3146_p0;
reg   [63:0] grp_fu_3146_p1;
reg   [63:0] grp_fu_3151_p0;
reg   [63:0] grp_fu_3151_p1;
reg   [63:0] grp_fu_3156_p0;
reg   [63:0] grp_fu_3156_p1;
reg   [63:0] grp_fu_3161_p0;
reg   [63:0] grp_fu_3161_p1;
reg   [63:0] grp_fu_3166_p0;
reg   [63:0] grp_fu_3166_p1;
reg   [63:0] grp_fu_3171_p0;
reg   [63:0] grp_fu_3171_p1;
reg   [63:0] grp_fu_3176_p0;
reg   [63:0] grp_fu_3176_p1;
reg   [63:0] grp_fu_3181_p0;
reg   [63:0] grp_fu_3181_p1;
reg   [63:0] grp_fu_3186_p0;
reg   [63:0] grp_fu_3186_p1;
reg   [63:0] grp_fu_3191_p0;
reg   [63:0] grp_fu_3191_p1;
reg   [63:0] grp_fu_3196_p0;
reg   [63:0] grp_fu_3196_p1;
reg   [63:0] grp_fu_3201_p0;
reg   [63:0] grp_fu_3201_p1;
reg   [63:0] grp_fu_3206_p0;
reg   [63:0] grp_fu_3206_p1;
reg   [63:0] grp_fu_3211_p0;
reg   [63:0] grp_fu_3211_p1;
reg   [63:0] grp_fu_3216_p0;
reg   [63:0] grp_fu_3216_p1;
reg   [63:0] grp_fu_3221_p0;
reg   [63:0] grp_fu_3221_p1;
reg   [47:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
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
wire    ap_ST_fsm_state43_blk;
wire    ap_ST_fsm_state44_blk;
wire    ap_ST_fsm_state45_blk;
wire    ap_ST_fsm_state46_blk;
wire    ap_ST_fsm_state47_blk;
wire    ap_ST_fsm_state48_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 48'd1;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U434(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3206_p0),.din1(grp_fu_3206_p1),.ce(1'b1),.dout(grp_fu_3206_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U435(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3211_p0),.din1(grp_fu_3211_p1),.ce(1'b1),.dout(grp_fu_3211_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U436(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3216_p0),.din1(grp_fu_3216_p1),.ce(1'b1),.dout(grp_fu_3216_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U437(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3221_p0),.din1(grp_fu_3221_p1),.ce(1'b1),.dout(grp_fu_3221_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_0_load_10_reg_7398 <= dactivations_0_q1;
        dactivations_0_load_11_reg_7418 <= dactivations_0_q0;
        dactivations_1_load_10_reg_7403 <= dactivations_1_q1;
        dactivations_1_load_11_reg_7423 <= dactivations_1_q0;
        dactivations_2_load_10_reg_7408 <= dactivations_2_q1;
        dactivations_2_load_11_reg_7428 <= dactivations_2_q0;
        dactivations_3_load_10_reg_7413 <= dactivations_3_q1;
        dactivations_3_load_11_reg_7433 <= dactivations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_0_load_12_reg_7478 <= dactivations_0_q1;
        dactivations_0_load_13_reg_7498 <= dactivations_0_q0;
        dactivations_1_load_12_reg_7483 <= dactivations_1_q1;
        dactivations_1_load_13_reg_7503 <= dactivations_1_q0;
        dactivations_2_load_12_reg_7488 <= dactivations_2_q1;
        dactivations_2_load_13_reg_7508 <= dactivations_2_q0;
        dactivations_3_load_12_reg_7493 <= dactivations_3_q1;
        dactivations_3_load_13_reg_7513 <= dactivations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_0_load_2_reg_7078 <= dactivations_0_q1;
        dactivations_0_load_3_reg_7098 <= dactivations_0_q0;
        dactivations_1_load_2_reg_7083 <= dactivations_1_q1;
        dactivations_1_load_3_reg_7103 <= dactivations_1_q0;
        dactivations_2_load_2_reg_7088 <= dactivations_2_q1;
        dactivations_2_load_3_reg_7108 <= dactivations_2_q0;
        dactivations_3_load_2_reg_7093 <= dactivations_3_q1;
        dactivations_3_load_3_reg_7113 <= dactivations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_0_load_4_reg_7158 <= dactivations_0_q1;
        dactivations_0_load_5_reg_7178 <= dactivations_0_q0;
        dactivations_1_load_4_reg_7163 <= dactivations_1_q1;
        dactivations_1_load_5_reg_7183 <= dactivations_1_q0;
        dactivations_2_load_4_reg_7168 <= dactivations_2_q1;
        dactivations_2_load_5_reg_7188 <= dactivations_2_q0;
        dactivations_3_load_4_reg_7173 <= dactivations_3_q1;
        dactivations_3_load_5_reg_7193 <= dactivations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_0_load_6_reg_7238 <= dactivations_0_q1;
        dactivations_0_load_7_reg_7258 <= dactivations_0_q0;
        dactivations_1_load_6_reg_7243 <= dactivations_1_q1;
        dactivations_1_load_7_reg_7263 <= dactivations_1_q0;
        dactivations_2_load_6_reg_7248 <= dactivations_2_q1;
        dactivations_2_load_7_reg_7268 <= dactivations_2_q0;
        dactivations_3_load_6_reg_7253 <= dactivations_3_q1;
        dactivations_3_load_7_reg_7273 <= dactivations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_0_load_8_reg_7318 <= dactivations_0_q1;
        dactivations_0_load_9_reg_7338 <= dactivations_0_q0;
        dactivations_1_load_8_reg_7323 <= dactivations_1_q1;
        dactivations_1_load_9_reg_7343 <= dactivations_1_q0;
        dactivations_2_load_8_reg_7328 <= dactivations_2_q1;
        dactivations_2_load_9_reg_7348 <= dactivations_2_q0;
        dactivations_3_load_8_reg_7333 <= dactivations_3_q1;
        dactivations_3_load_9_reg_7353 <= dactivations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_3242 <= weights3_0_q1;
        reg_3246 <= weights3_3_q1;
        reg_3250 <= weights3_2_q1;
        reg_3254 <= weights3_1_q1;
        reg_3258 <= weights3_0_q0;
        reg_3262 <= weights3_3_q0;
        reg_3266 <= weights3_2_q0;
        reg_3270 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_3274 <= grp_fu_3116_p_dout0;
        reg_3281 <= grp_fu_3120_p_dout0;
        reg_3288 <= grp_fu_3124_p_dout0;
        reg_3295 <= grp_fu_3136_p_dout0;
        reg_3302 <= grp_fu_3206_p2;
        reg_3309 <= grp_fu_3211_p2;
        reg_3316 <= grp_fu_3216_p2;
        reg_3323 <= grp_fu_3221_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_3330 <= grp_fu_3116_p_dout0;
        reg_3336 <= grp_fu_3120_p_dout0;
        reg_3342 <= grp_fu_3124_p_dout0;
        reg_3348 <= grp_fu_3136_p_dout0;
        reg_3354 <= grp_fu_3206_p2;
        reg_3360 <= grp_fu_3211_p2;
        reg_3366 <= grp_fu_3216_p2;
        reg_3372 <= grp_fu_3221_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_3378 <= grp_fu_3116_p_dout0;
        reg_3384 <= grp_fu_3120_p_dout0;
        reg_3390 <= grp_fu_3124_p_dout0;
        reg_3396 <= grp_fu_3136_p_dout0;
        reg_3402 <= grp_fu_3206_p2;
        reg_3408 <= grp_fu_3211_p2;
        reg_3414 <= grp_fu_3216_p2;
        reg_3420 <= grp_fu_3221_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12))) begin
        reg_3426 <= grp_fu_3116_p_dout0;
        reg_3432 <= grp_fu_3120_p_dout0;
        reg_3438 <= grp_fu_3124_p_dout0;
        reg_3444 <= grp_fu_3136_p_dout0;
        reg_3450 <= grp_fu_3206_p2;
        reg_3456 <= grp_fu_3211_p2;
        reg_3462 <= grp_fu_3216_p2;
        reg_3468 <= grp_fu_3221_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13))) begin
        reg_3474 <= grp_fu_3116_p_dout0;
        reg_3480 <= grp_fu_3120_p_dout0;
        reg_3486 <= grp_fu_3124_p_dout0;
        reg_3492 <= grp_fu_3136_p_dout0;
        reg_3498 <= grp_fu_3206_p2;
        reg_3504 <= grp_fu_3211_p2;
        reg_3510 <= grp_fu_3216_p2;
        reg_3516 <= grp_fu_3221_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14))) begin
        reg_3522 <= grp_fu_3116_p_dout0;
        reg_3528 <= grp_fu_3120_p_dout0;
        reg_3534 <= grp_fu_3124_p_dout0;
        reg_3540 <= grp_fu_3136_p_dout0;
        reg_3546 <= grp_fu_3206_p2;
        reg_3552 <= grp_fu_3211_p2;
        reg_3558 <= grp_fu_3216_p2;
        reg_3564 <= grp_fu_3221_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_3570 <= grp_fu_3116_p_dout0;
        reg_3576 <= grp_fu_3120_p_dout0;
        reg_3582 <= grp_fu_3124_p_dout0;
        reg_3588 <= grp_fu_3136_p_dout0;
        reg_3594 <= grp_fu_3206_p2;
        reg_3600 <= grp_fu_3211_p2;
        reg_3606 <= grp_fu_3216_p2;
        reg_3612 <= grp_fu_3221_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_3618 <= grp_fu_3116_p_dout0;
        reg_3624 <= grp_fu_3120_p_dout0;
        reg_3630 <= grp_fu_3124_p_dout0;
        reg_3636 <= grp_fu_3136_p_dout0;
        reg_3642 <= grp_fu_3206_p2;
        reg_3648 <= grp_fu_3211_p2;
        reg_3654 <= grp_fu_3216_p2;
        reg_3660 <= grp_fu_3221_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state17))) begin
        reg_3666 <= grp_fu_3064_p_dout0;
        reg_3672 <= grp_fu_3068_p_dout0;
        reg_3678 <= grp_fu_3072_p_dout0;
        reg_3684 <= grp_fu_3076_p_dout0;
        reg_3690 <= grp_fu_3080_p_dout0;
        reg_3696 <= grp_fu_3084_p_dout0;
        reg_3702 <= grp_fu_3088_p_dout0;
        reg_3708 <= grp_fu_3092_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        reg_3714 <= grp_fu_3064_p_dout0;
        reg_3720 <= grp_fu_3068_p_dout0;
        reg_3726 <= grp_fu_3072_p_dout0;
        reg_3732 <= grp_fu_3076_p_dout0;
        reg_3738 <= grp_fu_3080_p_dout0;
        reg_3744 <= grp_fu_3084_p_dout0;
        reg_3750 <= grp_fu_3088_p_dout0;
        reg_3756 <= grp_fu_3092_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        reg_3762 <= grp_fu_3064_p_dout0;
        reg_3768 <= grp_fu_3068_p_dout0;
        reg_3774 <= grp_fu_3072_p_dout0;
        reg_3780 <= grp_fu_3076_p_dout0;
        reg_3786 <= grp_fu_3080_p_dout0;
        reg_3792 <= grp_fu_3084_p_dout0;
        reg_3798 <= grp_fu_3088_p_dout0;
        reg_3804 <= grp_fu_3092_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        reg_3810 <= grp_fu_3064_p_dout0;
        reg_3816 <= grp_fu_3068_p_dout0;
        reg_3822 <= grp_fu_3072_p_dout0;
        reg_3828 <= grp_fu_3076_p_dout0;
        reg_3834 <= grp_fu_3080_p_dout0;
        reg_3840 <= grp_fu_3084_p_dout0;
        reg_3846 <= grp_fu_3088_p_dout0;
        reg_3852 <= grp_fu_3092_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        reg_3858 <= grp_fu_3064_p_dout0;
        reg_3864 <= grp_fu_3068_p_dout0;
        reg_3870 <= grp_fu_3072_p_dout0;
        reg_3876 <= grp_fu_3076_p_dout0;
        reg_3882 <= grp_fu_3080_p_dout0;
        reg_3888 <= grp_fu_3084_p_dout0;
        reg_3894 <= grp_fu_3088_p_dout0;
        reg_3900 <= grp_fu_3092_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        reg_3906 <= grp_fu_3064_p_dout0;
        reg_3912 <= grp_fu_3068_p_dout0;
        reg_3918 <= grp_fu_3072_p_dout0;
        reg_3924 <= grp_fu_3076_p_dout0;
        reg_3930 <= grp_fu_3080_p_dout0;
        reg_3936 <= grp_fu_3084_p_dout0;
        reg_3942 <= grp_fu_3088_p_dout0;
        reg_3948 <= grp_fu_3092_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        reg_3954 <= grp_fu_3064_p_dout0;
        reg_3960 <= grp_fu_3068_p_dout0;
        reg_3966 <= grp_fu_3072_p_dout0;
        reg_3972 <= grp_fu_3076_p_dout0;
        reg_3978 <= grp_fu_3080_p_dout0;
        reg_3984 <= grp_fu_3084_p_dout0;
        reg_3990 <= grp_fu_3088_p_dout0;
        reg_3996 <= grp_fu_3092_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        reg_4002 <= grp_fu_3064_p_dout0;
        reg_4007 <= grp_fu_3068_p_dout0;
        reg_4012 <= grp_fu_3072_p_dout0;
        reg_4017 <= grp_fu_3076_p_dout0;
        reg_4022 <= grp_fu_3080_p_dout0;
        reg_4027 <= grp_fu_3084_p_dout0;
        reg_4032 <= grp_fu_3088_p_dout0;
        reg_4037 <= grp_fu_3092_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state40))) begin
        reg_4042 <= dactivations_0_q1;
        reg_4047 <= dactivations_1_q1;
        reg_4052 <= dactivations_2_q1;
        reg_4057 <= dactivations_3_q1;
        reg_4062 <= dactivations_0_q0;
        reg_4067 <= dactivations_1_q0;
        reg_4072 <= dactivations_2_q0;
        reg_4077 <= dactivations_3_q0;
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
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state30_blk = 1'b0;
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
assign ap_ST_fsm_state43_blk = 1'b0;
assign ap_ST_fsm_state44_blk = 1'b0;
assign ap_ST_fsm_state45_blk = 1'b0;
assign ap_ST_fsm_state46_blk = 1'b0;
assign ap_ST_fsm_state47_blk = 1'b0;
assign ap_ST_fsm_state48_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state48) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state48)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_0_address0_local = 64'd1;
    end else begin
        dactivations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_0_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_0_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_0_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_0_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_0_address1_local = 64'd0;
    end else begin
        dactivations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32))) begin
        dactivations_0_ce0_local = 1'b1;
    end else begin
        dactivations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32))) begin
        dactivations_0_ce1_local = 1'b1;
    end else begin
        dactivations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_1_address0_local = 64'd1;
    end else begin
        dactivations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_1_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_1_address1_local = 64'd0;
    end else begin
        dactivations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32))) begin
        dactivations_1_ce0_local = 1'b1;
    end else begin
        dactivations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32))) begin
        dactivations_1_ce1_local = 1'b1;
    end else begin
        dactivations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_2_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_2_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_2_address0_local = 64'd1;
    end else begin
        dactivations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_2_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_2_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_2_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_2_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_2_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_2_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_2_address1_local = 64'd0;
    end else begin
        dactivations_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32))) begin
        dactivations_2_ce0_local = 1'b1;
    end else begin
        dactivations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32))) begin
        dactivations_2_ce1_local = 1'b1;
    end else begin
        dactivations_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_3_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_3_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_3_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_3_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_3_address0_local = 64'd1;
    end else begin
        dactivations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_3_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_3_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_3_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_3_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_3_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_3_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_3_address1_local = 64'd0;
    end else begin
        dactivations_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32))) begin
        dactivations_3_ce0_local = 1'b1;
    end else begin
        dactivations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32))) begin
        dactivations_3_ce1_local = 1'b1;
    end else begin
        dactivations_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3146_p0 = reg_4002;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3146_p0 = reg_3954;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3146_p0 = reg_3906;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3146_p0 = reg_3858;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3146_p0 = reg_3810;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3146_p0 = reg_3762;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3146_p0 = reg_3714;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3146_p0 = reg_3666;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3146_p0 = reg_3618;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3146_p0 = reg_3570;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3146_p0 = reg_3522;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3146_p0 = reg_3474;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3146_p0 = reg_3426;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3146_p0 = reg_3378;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3146_p0 = reg_3330;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3146_p0 = reg_3274;
    end else begin
        grp_fu_3146_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3146_p1 = reg_3618;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3146_p1 = reg_3570;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3146_p1 = reg_3522;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3146_p1 = reg_3474;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3146_p1 = reg_3426;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3146_p1 = reg_3378;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3146_p1 = reg_3330;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3146_p1 = reg_3274;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3146_p1 = 64'd0;
    end else begin
        grp_fu_3146_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3151_p0 = reg_4007;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3151_p0 = reg_3960;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3151_p0 = reg_3912;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3151_p0 = reg_3864;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3151_p0 = reg_3816;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3151_p0 = reg_3768;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3151_p0 = reg_3720;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3151_p0 = reg_3672;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3151_p0 = reg_3624;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3151_p0 = reg_3576;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3151_p0 = reg_3528;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3151_p0 = reg_3480;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3151_p0 = reg_3432;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3151_p0 = reg_3384;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3151_p0 = reg_3336;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3151_p0 = reg_3281;
    end else begin
        grp_fu_3151_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3151_p1 = reg_3624;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3151_p1 = reg_3576;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3151_p1 = reg_3528;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3151_p1 = reg_3480;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3151_p1 = reg_3432;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3151_p1 = reg_3384;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3151_p1 = reg_3336;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3151_p1 = reg_3281;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3151_p1 = 64'd0;
    end else begin
        grp_fu_3151_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3156_p0 = reg_4012;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3156_p0 = reg_3966;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3156_p0 = reg_3918;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3156_p0 = reg_3870;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3156_p0 = reg_3822;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3156_p0 = reg_3774;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3156_p0 = reg_3726;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3156_p0 = reg_3678;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3156_p0 = reg_3630;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3156_p0 = reg_3582;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3156_p0 = reg_3534;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3156_p0 = reg_3486;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3156_p0 = reg_3438;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3156_p0 = reg_3390;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3156_p0 = reg_3342;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3156_p0 = reg_3288;
    end else begin
        grp_fu_3156_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3156_p1 = reg_3630;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3156_p1 = reg_3582;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3156_p1 = reg_3534;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3156_p1 = reg_3486;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3156_p1 = reg_3438;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3156_p1 = reg_3390;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3156_p1 = reg_3342;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3156_p1 = reg_3288;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3156_p1 = 64'd0;
    end else begin
        grp_fu_3156_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3161_p0 = reg_4017;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3161_p0 = reg_3972;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3161_p0 = reg_3924;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3161_p0 = reg_3876;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3161_p0 = reg_3828;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3161_p0 = reg_3780;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3161_p0 = reg_3732;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3161_p0 = reg_3684;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3161_p0 = reg_3636;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3161_p0 = reg_3588;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3161_p0 = reg_3540;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3161_p0 = reg_3492;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3161_p0 = reg_3444;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3161_p0 = reg_3396;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3161_p0 = reg_3348;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3161_p0 = reg_3295;
    end else begin
        grp_fu_3161_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3161_p1 = reg_3636;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3161_p1 = reg_3588;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3161_p1 = reg_3540;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3161_p1 = reg_3492;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3161_p1 = reg_3444;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3161_p1 = reg_3396;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3161_p1 = reg_3348;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3161_p1 = reg_3295;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3161_p1 = 64'd0;
    end else begin
        grp_fu_3161_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3166_p0 = reg_4022;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3166_p0 = reg_3978;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3166_p0 = reg_3930;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3166_p0 = reg_3882;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3166_p0 = reg_3834;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3166_p0 = reg_3786;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3166_p0 = reg_3738;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3166_p0 = reg_3690;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3166_p0 = reg_3642;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3166_p0 = reg_3594;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3166_p0 = reg_3546;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3166_p0 = reg_3498;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3166_p0 = reg_3450;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3166_p0 = reg_3402;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3166_p0 = reg_3354;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3166_p0 = reg_3302;
    end else begin
        grp_fu_3166_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3166_p1 = reg_3642;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3166_p1 = reg_3594;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3166_p1 = reg_3546;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3166_p1 = reg_3498;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3166_p1 = reg_3450;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3166_p1 = reg_3402;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3166_p1 = reg_3354;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3166_p1 = reg_3302;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3166_p1 = 64'd0;
    end else begin
        grp_fu_3166_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3171_p0 = reg_4027;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3171_p0 = reg_3984;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3171_p0 = reg_3936;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3171_p0 = reg_3888;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3171_p0 = reg_3840;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3171_p0 = reg_3792;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3171_p0 = reg_3744;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3171_p0 = reg_3696;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3171_p0 = reg_3648;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3171_p0 = reg_3600;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3171_p0 = reg_3552;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3171_p0 = reg_3504;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3171_p0 = reg_3456;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3171_p0 = reg_3408;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3171_p0 = reg_3360;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3171_p0 = reg_3309;
    end else begin
        grp_fu_3171_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3171_p1 = reg_3648;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3171_p1 = reg_3600;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3171_p1 = reg_3552;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3171_p1 = reg_3504;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3171_p1 = reg_3456;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3171_p1 = reg_3408;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3171_p1 = reg_3360;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3171_p1 = reg_3309;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3171_p1 = 64'd0;
    end else begin
        grp_fu_3171_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3176_p0 = reg_4032;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3176_p0 = reg_3990;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3176_p0 = reg_3942;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3176_p0 = reg_3894;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3176_p0 = reg_3846;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3176_p0 = reg_3798;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3176_p0 = reg_3750;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3176_p0 = reg_3702;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3176_p0 = reg_3654;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3176_p0 = reg_3606;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3176_p0 = reg_3558;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3176_p0 = reg_3510;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3176_p0 = reg_3462;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3176_p0 = reg_3414;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3176_p0 = reg_3366;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3176_p0 = reg_3316;
    end else begin
        grp_fu_3176_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3176_p1 = reg_3654;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3176_p1 = reg_3606;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3176_p1 = reg_3558;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3176_p1 = reg_3510;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3176_p1 = reg_3462;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3176_p1 = reg_3414;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3176_p1 = reg_3366;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3176_p1 = reg_3316;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3176_p1 = 64'd0;
    end else begin
        grp_fu_3176_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3181_p0 = reg_4037;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3181_p0 = reg_3996;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3181_p0 = reg_3948;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3181_p0 = reg_3900;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3181_p0 = reg_3852;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3181_p0 = reg_3804;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3181_p0 = reg_3756;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3181_p0 = reg_3708;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3181_p0 = reg_3660;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3181_p0 = reg_3612;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3181_p0 = reg_3564;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3181_p0 = reg_3516;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3181_p0 = reg_3468;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3181_p0 = reg_3420;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3181_p0 = reg_3372;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3181_p0 = reg_3323;
    end else begin
        grp_fu_3181_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3181_p1 = reg_3660;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3181_p1 = reg_3612;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3181_p1 = reg_3564;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3181_p1 = reg_3516;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3181_p1 = reg_3468;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3181_p1 = reg_3420;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3181_p1 = reg_3372;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3181_p1 = reg_3323;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3181_p1 = 64'd0;
    end else begin
        grp_fu_3181_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3186_p0 = reg_3954;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3186_p0 = reg_3906;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3186_p0 = reg_3858;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3186_p0 = reg_3810;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3186_p0 = reg_3762;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3186_p0 = reg_3714;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3186_p0 = reg_3666;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3186_p0 = bitcast_ln85_170_fu_5002_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3186_p0 = bitcast_ln85_146_fu_4962_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3186_p0 = bitcast_ln85_122_fu_4922_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3186_p0 = bitcast_ln85_98_fu_4882_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3186_p0 = bitcast_ln85_74_fu_4842_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3186_p0 = bitcast_ln85_50_fu_4802_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3186_p0 = bitcast_ln85_26_fu_4762_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3186_p0 = bitcast_ln85_2_fu_4722_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3186_p0 = bitcast_ln85_169_fu_4682_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3186_p0 = bitcast_ln85_145_fu_4642_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3186_p0 = bitcast_ln85_121_fu_4602_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3186_p0 = bitcast_ln85_97_fu_4562_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3186_p0 = bitcast_ln85_73_fu_4522_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3186_p0 = bitcast_ln85_49_fu_4482_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3186_p0 = bitcast_ln85_25_fu_4442_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3186_p0 = bitcast_ln85_1_fu_4402_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3186_p0 = bitcast_ln85_168_fu_4362_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3186_p0 = bitcast_ln85_144_fu_4322_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3186_p0 = bitcast_ln85_120_fu_4282_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3186_p0 = bitcast_ln85_96_fu_4242_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3186_p0 = bitcast_ln85_72_fu_4202_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3186_p0 = bitcast_ln85_48_fu_4162_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3186_p0 = bitcast_ln85_24_fu_4122_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3186_p0 = bitcast_ln85_fu_4082_p1;
    end else begin
        grp_fu_3186_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3186_p1 = dactivations_0_load_12_reg_7478;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3186_p1 = dactivations_0_load_10_reg_7398;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3186_p1 = dactivations_0_load_8_reg_7318;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3186_p1 = dactivations_0_load_6_reg_7238;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3186_p1 = dactivations_0_load_4_reg_7158;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3186_p1 = dactivations_0_load_2_reg_7078;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3186_p1 = reg_4042;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3186_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3186_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3186_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3186_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3191_p0 = reg_3960;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3191_p0 = reg_3912;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3191_p0 = reg_3864;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3191_p0 = reg_3816;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3191_p0 = reg_3768;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3191_p0 = reg_3720;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3191_p0 = reg_3672;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3191_p0 = bitcast_ln85_173_fu_5007_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3191_p0 = bitcast_ln85_149_fu_4967_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3191_p0 = bitcast_ln85_125_fu_4927_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3191_p0 = bitcast_ln85_101_fu_4887_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3191_p0 = bitcast_ln85_77_fu_4847_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3191_p0 = bitcast_ln85_53_fu_4807_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3191_p0 = bitcast_ln85_29_fu_4767_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3191_p0 = bitcast_ln85_5_fu_4727_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3191_p0 = bitcast_ln85_172_fu_4687_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3191_p0 = bitcast_ln85_148_fu_4647_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3191_p0 = bitcast_ln85_124_fu_4607_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3191_p0 = bitcast_ln85_100_fu_4567_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3191_p0 = bitcast_ln85_76_fu_4527_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3191_p0 = bitcast_ln85_52_fu_4487_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3191_p0 = bitcast_ln85_28_fu_4447_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3191_p0 = bitcast_ln85_4_fu_4407_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3191_p0 = bitcast_ln85_171_fu_4367_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3191_p0 = bitcast_ln85_147_fu_4327_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3191_p0 = bitcast_ln85_123_fu_4287_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3191_p0 = bitcast_ln85_99_fu_4247_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3191_p0 = bitcast_ln85_75_fu_4207_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3191_p0 = bitcast_ln85_51_fu_4167_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3191_p0 = bitcast_ln85_27_fu_4127_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3191_p0 = bitcast_ln85_3_fu_4087_p1;
    end else begin
        grp_fu_3191_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3191_p1 = dactivations_1_load_12_reg_7483;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3191_p1 = dactivations_1_load_10_reg_7403;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3191_p1 = dactivations_1_load_8_reg_7323;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3191_p1 = dactivations_1_load_6_reg_7243;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3191_p1 = dactivations_1_load_4_reg_7163;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3191_p1 = dactivations_1_load_2_reg_7083;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3191_p1 = reg_4047;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3191_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3191_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3191_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3191_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3196_p0 = reg_3966;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3196_p0 = reg_3918;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3196_p0 = reg_3870;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3196_p0 = reg_3822;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3196_p0 = reg_3774;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3196_p0 = reg_3726;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3196_p0 = reg_3678;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3196_p0 = bitcast_ln85_176_fu_5012_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3196_p0 = bitcast_ln85_152_fu_4972_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3196_p0 = bitcast_ln85_128_fu_4932_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3196_p0 = bitcast_ln85_104_fu_4892_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3196_p0 = bitcast_ln85_80_fu_4852_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3196_p0 = bitcast_ln85_56_fu_4812_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3196_p0 = bitcast_ln85_32_fu_4772_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3196_p0 = bitcast_ln85_8_fu_4732_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3196_p0 = bitcast_ln85_175_fu_4692_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3196_p0 = bitcast_ln85_151_fu_4652_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3196_p0 = bitcast_ln85_127_fu_4612_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3196_p0 = bitcast_ln85_103_fu_4572_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3196_p0 = bitcast_ln85_79_fu_4532_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3196_p0 = bitcast_ln85_55_fu_4492_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3196_p0 = bitcast_ln85_31_fu_4452_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3196_p0 = bitcast_ln85_7_fu_4412_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3196_p0 = bitcast_ln85_174_fu_4372_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3196_p0 = bitcast_ln85_150_fu_4332_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3196_p0 = bitcast_ln85_126_fu_4292_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3196_p0 = bitcast_ln85_102_fu_4252_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3196_p0 = bitcast_ln85_78_fu_4212_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3196_p0 = bitcast_ln85_54_fu_4172_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3196_p0 = bitcast_ln85_30_fu_4132_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3196_p0 = bitcast_ln85_6_fu_4092_p1;
    end else begin
        grp_fu_3196_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3196_p1 = dactivations_2_load_12_reg_7488;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3196_p1 = dactivations_2_load_10_reg_7408;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3196_p1 = dactivations_2_load_8_reg_7328;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3196_p1 = dactivations_2_load_6_reg_7248;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3196_p1 = dactivations_2_load_4_reg_7168;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3196_p1 = dactivations_2_load_2_reg_7088;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3196_p1 = reg_4052;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3196_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3196_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3196_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3196_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3201_p0 = reg_3972;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3201_p0 = reg_3924;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3201_p0 = reg_3876;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3201_p0 = reg_3828;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3201_p0 = reg_3780;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3201_p0 = reg_3732;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3201_p0 = reg_3684;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3201_p0 = bitcast_ln85_179_fu_5017_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3201_p0 = bitcast_ln85_155_fu_4977_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3201_p0 = bitcast_ln85_131_fu_4937_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3201_p0 = bitcast_ln85_107_fu_4897_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3201_p0 = bitcast_ln85_83_fu_4857_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3201_p0 = bitcast_ln85_59_fu_4817_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3201_p0 = bitcast_ln85_35_fu_4777_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3201_p0 = bitcast_ln85_11_fu_4737_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3201_p0 = bitcast_ln85_178_fu_4697_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3201_p0 = bitcast_ln85_154_fu_4657_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3201_p0 = bitcast_ln85_130_fu_4617_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3201_p0 = bitcast_ln85_106_fu_4577_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3201_p0 = bitcast_ln85_82_fu_4537_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3201_p0 = bitcast_ln85_58_fu_4497_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3201_p0 = bitcast_ln85_34_fu_4457_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3201_p0 = bitcast_ln85_10_fu_4417_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3201_p0 = bitcast_ln85_177_fu_4377_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3201_p0 = bitcast_ln85_153_fu_4337_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3201_p0 = bitcast_ln85_129_fu_4297_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3201_p0 = bitcast_ln85_105_fu_4257_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3201_p0 = bitcast_ln85_81_fu_4217_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3201_p0 = bitcast_ln85_57_fu_4177_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3201_p0 = bitcast_ln85_33_fu_4137_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3201_p0 = bitcast_ln85_9_fu_4097_p1;
    end else begin
        grp_fu_3201_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3201_p1 = dactivations_3_load_12_reg_7493;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3201_p1 = dactivations_3_load_10_reg_7413;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3201_p1 = dactivations_3_load_8_reg_7333;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3201_p1 = dactivations_3_load_6_reg_7253;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3201_p1 = dactivations_3_load_4_reg_7173;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3201_p1 = dactivations_3_load_2_reg_7093;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3201_p1 = reg_4057;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3201_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3201_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3201_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3201_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3206_p0 = reg_3978;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3206_p0 = reg_3930;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3206_p0 = reg_3882;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3206_p0 = reg_3834;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3206_p0 = reg_3786;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3206_p0 = reg_3738;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3206_p0 = reg_3690;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3206_p0 = bitcast_ln85_182_fu_5022_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3206_p0 = bitcast_ln85_158_fu_4982_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3206_p0 = bitcast_ln85_134_fu_4942_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3206_p0 = bitcast_ln85_110_fu_4902_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3206_p0 = bitcast_ln85_86_fu_4862_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3206_p0 = bitcast_ln85_62_fu_4822_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3206_p0 = bitcast_ln85_38_fu_4782_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3206_p0 = bitcast_ln85_14_fu_4742_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3206_p0 = bitcast_ln85_181_fu_4702_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3206_p0 = bitcast_ln85_157_fu_4662_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3206_p0 = bitcast_ln85_133_fu_4622_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3206_p0 = bitcast_ln85_109_fu_4582_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3206_p0 = bitcast_ln85_85_fu_4542_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3206_p0 = bitcast_ln85_61_fu_4502_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3206_p0 = bitcast_ln85_37_fu_4462_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3206_p0 = bitcast_ln85_13_fu_4422_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3206_p0 = bitcast_ln85_180_fu_4382_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3206_p0 = bitcast_ln85_156_fu_4342_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3206_p0 = bitcast_ln85_132_fu_4302_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3206_p0 = bitcast_ln85_108_fu_4262_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3206_p0 = bitcast_ln85_84_fu_4222_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3206_p0 = bitcast_ln85_60_fu_4182_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3206_p0 = bitcast_ln85_36_fu_4142_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3206_p0 = bitcast_ln85_12_fu_4102_p1;
    end else begin
        grp_fu_3206_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3206_p1 = dactivations_0_load_13_reg_7498;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3206_p1 = dactivations_0_load_11_reg_7418;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3206_p1 = dactivations_0_load_9_reg_7338;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3206_p1 = dactivations_0_load_7_reg_7258;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3206_p1 = dactivations_0_load_5_reg_7178;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3206_p1 = dactivations_0_load_3_reg_7098;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3206_p1 = reg_4062;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3206_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3206_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3206_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3206_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3211_p0 = reg_3984;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3211_p0 = reg_3936;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3211_p0 = reg_3888;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3211_p0 = reg_3840;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3211_p0 = reg_3792;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3211_p0 = reg_3744;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3211_p0 = reg_3696;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3211_p0 = bitcast_ln85_185_fu_5027_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3211_p0 = bitcast_ln85_161_fu_4987_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3211_p0 = bitcast_ln85_137_fu_4947_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3211_p0 = bitcast_ln85_113_fu_4907_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3211_p0 = bitcast_ln85_89_fu_4867_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3211_p0 = bitcast_ln85_65_fu_4827_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3211_p0 = bitcast_ln85_41_fu_4787_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3211_p0 = bitcast_ln85_17_fu_4747_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3211_p0 = bitcast_ln85_184_fu_4707_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3211_p0 = bitcast_ln85_160_fu_4667_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3211_p0 = bitcast_ln85_136_fu_4627_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3211_p0 = bitcast_ln85_112_fu_4587_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3211_p0 = bitcast_ln85_88_fu_4547_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3211_p0 = bitcast_ln85_64_fu_4507_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3211_p0 = bitcast_ln85_40_fu_4467_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3211_p0 = bitcast_ln85_16_fu_4427_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3211_p0 = bitcast_ln85_183_fu_4387_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3211_p0 = bitcast_ln85_159_fu_4347_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3211_p0 = bitcast_ln85_135_fu_4307_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3211_p0 = bitcast_ln85_111_fu_4267_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3211_p0 = bitcast_ln85_87_fu_4227_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3211_p0 = bitcast_ln85_63_fu_4187_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3211_p0 = bitcast_ln85_39_fu_4147_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3211_p0 = bitcast_ln85_15_fu_4107_p1;
    end else begin
        grp_fu_3211_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3211_p1 = dactivations_1_load_13_reg_7503;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3211_p1 = dactivations_1_load_11_reg_7423;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3211_p1 = dactivations_1_load_9_reg_7343;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3211_p1 = dactivations_1_load_7_reg_7263;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3211_p1 = dactivations_1_load_5_reg_7183;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3211_p1 = dactivations_1_load_3_reg_7103;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3211_p1 = reg_4067;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3211_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3211_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3211_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3211_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3216_p0 = reg_3990;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3216_p0 = reg_3942;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3216_p0 = reg_3894;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3216_p0 = reg_3846;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3216_p0 = reg_3798;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3216_p0 = reg_3750;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3216_p0 = reg_3702;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3216_p0 = bitcast_ln85_188_fu_5032_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3216_p0 = bitcast_ln85_164_fu_4992_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3216_p0 = bitcast_ln85_140_fu_4952_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3216_p0 = bitcast_ln85_116_fu_4912_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3216_p0 = bitcast_ln85_92_fu_4872_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3216_p0 = bitcast_ln85_68_fu_4832_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3216_p0 = bitcast_ln85_44_fu_4792_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3216_p0 = bitcast_ln85_20_fu_4752_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3216_p0 = bitcast_ln85_187_fu_4712_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3216_p0 = bitcast_ln85_163_fu_4672_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3216_p0 = bitcast_ln85_139_fu_4632_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3216_p0 = bitcast_ln85_115_fu_4592_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3216_p0 = bitcast_ln85_91_fu_4552_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3216_p0 = bitcast_ln85_67_fu_4512_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3216_p0 = bitcast_ln85_43_fu_4472_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3216_p0 = bitcast_ln85_19_fu_4432_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3216_p0 = bitcast_ln85_186_fu_4392_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3216_p0 = bitcast_ln85_162_fu_4352_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3216_p0 = bitcast_ln85_138_fu_4312_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3216_p0 = bitcast_ln85_114_fu_4272_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3216_p0 = bitcast_ln85_90_fu_4232_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3216_p0 = bitcast_ln85_66_fu_4192_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3216_p0 = bitcast_ln85_42_fu_4152_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3216_p0 = bitcast_ln85_18_fu_4112_p1;
    end else begin
        grp_fu_3216_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3216_p1 = dactivations_2_load_13_reg_7508;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3216_p1 = dactivations_2_load_11_reg_7428;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3216_p1 = dactivations_2_load_9_reg_7348;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3216_p1 = dactivations_2_load_7_reg_7268;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3216_p1 = dactivations_2_load_5_reg_7188;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3216_p1 = dactivations_2_load_3_reg_7108;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3216_p1 = reg_4072;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3216_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3216_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3216_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3216_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3221_p0 = reg_3996;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3221_p0 = reg_3948;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3221_p0 = reg_3900;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3221_p0 = reg_3852;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3221_p0 = reg_3804;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3221_p0 = reg_3756;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3221_p0 = reg_3708;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3221_p0 = bitcast_ln85_191_fu_5037_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3221_p0 = bitcast_ln85_167_fu_4997_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3221_p0 = bitcast_ln85_143_fu_4957_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3221_p0 = bitcast_ln85_119_fu_4917_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3221_p0 = bitcast_ln85_95_fu_4877_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3221_p0 = bitcast_ln85_71_fu_4837_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3221_p0 = bitcast_ln85_47_fu_4797_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3221_p0 = bitcast_ln85_23_fu_4757_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3221_p0 = bitcast_ln85_190_fu_4717_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3221_p0 = bitcast_ln85_166_fu_4677_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3221_p0 = bitcast_ln85_142_fu_4637_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3221_p0 = bitcast_ln85_118_fu_4597_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3221_p0 = bitcast_ln85_94_fu_4557_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3221_p0 = bitcast_ln85_70_fu_4517_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3221_p0 = bitcast_ln85_46_fu_4477_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3221_p0 = bitcast_ln85_22_fu_4437_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3221_p0 = bitcast_ln85_189_fu_4397_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3221_p0 = bitcast_ln85_165_fu_4357_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3221_p0 = bitcast_ln85_141_fu_4317_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3221_p0 = bitcast_ln85_117_fu_4277_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3221_p0 = bitcast_ln85_93_fu_4237_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3221_p0 = bitcast_ln85_69_fu_4197_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3221_p0 = bitcast_ln85_45_fu_4157_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3221_p0 = bitcast_ln85_21_fu_4117_p1;
    end else begin
        grp_fu_3221_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3221_p1 = dactivations_3_load_13_reg_7513;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3221_p1 = dactivations_3_load_11_reg_7433;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3221_p1 = dactivations_3_load_9_reg_7353;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3221_p1 = dactivations_3_load_7_reg_7273;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3221_p1 = dactivations_3_load_5_reg_7193;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3221_p1 = dactivations_3_load_3_reg_7113;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3221_p1 = reg_4077;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3221_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3221_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3221_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3221_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_0_address0_local = 64'd1;
    end else begin
        oracle_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_0_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_0_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_0_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_0_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_0_address1_local = 64'd0;
    end else begin
        oracle_activations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_0_ce1_local = 1'b1;
    end else begin
        oracle_activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_0_we1_local = 1'b1;
    end else begin
        oracle_activations_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_1_address0_local = 64'd1;
    end else begin
        oracle_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_1_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_1_address1_local = 64'd0;
    end else begin
        oracle_activations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_1_ce0_local = 1'b1;
    end else begin
        oracle_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_1_ce1_local = 1'b1;
    end else begin
        oracle_activations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_1_we1_local = 1'b1;
    end else begin
        oracle_activations_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_2_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_2_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_2_address0_local = 64'd1;
    end else begin
        oracle_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_2_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_2_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_2_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_2_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_2_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_2_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_2_address1_local = 64'd0;
    end else begin
        oracle_activations_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_2_ce0_local = 1'b1;
    end else begin
        oracle_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_2_ce1_local = 1'b1;
    end else begin
        oracle_activations_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_2_we0_local = 1'b1;
    end else begin
        oracle_activations_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_2_we1_local = 1'b1;
    end else begin
        oracle_activations_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_3_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_3_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_3_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_3_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_3_address0_local = 64'd1;
    end else begin
        oracle_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_3_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_3_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_3_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_3_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_3_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_3_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_3_address1_local = 64'd0;
    end else begin
        oracle_activations_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_3_ce0_local = 1'b1;
    end else begin
        oracle_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_3_ce1_local = 1'b1;
    end else begin
        oracle_activations_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_3_we0_local = 1'b1;
    end else begin
        oracle_activations_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_3_we1_local = 1'b1;
    end else begin
        oracle_activations_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_0_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_0_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_0_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_0_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_0_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_0_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_0_address0_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_0_address0_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_0_address0_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_0_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_0_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_0_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_0_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_0_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_0_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_0_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_0_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_0_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_0_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_0_address0_local = 64'd3;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_0_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_0_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_0_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_0_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_0_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_0_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_0_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_0_address1_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_0_address1_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_0_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_0_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_0_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_0_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_0_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_0_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_0_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_0_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_0_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_0_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_0_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_0_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_0_address1_local = 64'd0;
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_1_address0_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_1_address0_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_1_address0_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_1_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_1_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_1_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_1_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_1_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_1_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_1_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_1_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_1_address0_local = 64'd5;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_1_address1_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_1_address1_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_1_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_1_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_1_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_1_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_1_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_1_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_1_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_1_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_1_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_1_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_1_address1_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_1_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_1_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_1_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_1_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_1_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_1_address1_local = 64'd2;
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_2_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_2_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_2_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_2_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_2_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_2_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_2_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_2_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_2_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_2_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_2_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_2_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_2_address0_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_2_address0_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_2_address0_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_2_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_2_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_2_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_2_address0_local = 64'd4;
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_2_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_2_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_2_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_2_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_2_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_2_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_2_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_2_address1_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_2_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_2_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_2_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_2_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_2_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_2_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_2_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_2_address1_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_2_address1_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_2_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_2_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_2_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_2_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_2_address1_local = 64'd1;
    end else begin
        weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_2_ce1_local = 1'b1;
    end else begin
        weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_3_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_3_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_3_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_3_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_3_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_3_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_3_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_3_address0_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_3_address0_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_3_address0_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_3_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_3_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_3_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_3_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_3_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_3_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_3_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_3_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_3_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_3_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_3_address0_local = 64'd3;
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_3_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_3_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_3_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_3_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_3_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_3_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_3_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_3_address1_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_3_address1_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_3_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_3_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_3_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_3_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_3_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_3_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_3_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_3_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_3_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_3_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_3_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_3_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_3_address1_local = 64'd0;
    end else begin
        weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_3_ce1_local = 1'b1;
    end else begin
        weights3_3_ce1_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
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
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
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
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
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
assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_state39 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state40 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_state41 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_state45 = ap_CS_fsm[32'd44];
assign ap_CS_fsm_state46 = ap_CS_fsm[32'd45];
assign ap_CS_fsm_state47 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_state48 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln85_100_fu_4567_p1 = reg_3242;
assign bitcast_ln85_101_fu_4887_p1 = reg_3254;
assign bitcast_ln85_102_fu_4252_p1 = reg_3250;
assign bitcast_ln85_103_fu_4572_p1 = reg_3246;
assign bitcast_ln85_104_fu_4892_p1 = reg_3242;
assign bitcast_ln85_105_fu_4257_p1 = reg_3254;
assign bitcast_ln85_106_fu_4577_p1 = reg_3250;
assign bitcast_ln85_107_fu_4897_p1 = reg_3246;
assign bitcast_ln85_108_fu_4262_p1 = reg_3258;
assign bitcast_ln85_109_fu_4582_p1 = reg_3270;
assign bitcast_ln85_10_fu_4417_p1 = reg_3250;
assign bitcast_ln85_110_fu_4902_p1 = reg_3266;
assign bitcast_ln85_111_fu_4267_p1 = reg_3262;
assign bitcast_ln85_112_fu_4587_p1 = reg_3258;
assign bitcast_ln85_113_fu_4907_p1 = reg_3270;
assign bitcast_ln85_114_fu_4272_p1 = reg_3266;
assign bitcast_ln85_115_fu_4592_p1 = reg_3262;
assign bitcast_ln85_116_fu_4912_p1 = reg_3258;
assign bitcast_ln85_117_fu_4277_p1 = reg_3270;
assign bitcast_ln85_118_fu_4597_p1 = reg_3266;
assign bitcast_ln85_119_fu_4917_p1 = reg_3262;
assign bitcast_ln85_11_fu_4737_p1 = reg_3246;
assign bitcast_ln85_120_fu_4282_p1 = reg_3242;
assign bitcast_ln85_121_fu_4602_p1 = reg_3254;
assign bitcast_ln85_122_fu_4922_p1 = reg_3250;
assign bitcast_ln85_123_fu_4287_p1 = reg_3246;
assign bitcast_ln85_124_fu_4607_p1 = reg_3242;
assign bitcast_ln85_125_fu_4927_p1 = reg_3254;
assign bitcast_ln85_126_fu_4292_p1 = reg_3250;
assign bitcast_ln85_127_fu_4612_p1 = reg_3246;
assign bitcast_ln85_128_fu_4932_p1 = reg_3242;
assign bitcast_ln85_129_fu_4297_p1 = reg_3254;
assign bitcast_ln85_12_fu_4102_p1 = reg_3258;
assign bitcast_ln85_130_fu_4617_p1 = reg_3250;
assign bitcast_ln85_131_fu_4937_p1 = reg_3246;
assign bitcast_ln85_132_fu_4302_p1 = reg_3258;
assign bitcast_ln85_133_fu_4622_p1 = reg_3270;
assign bitcast_ln85_134_fu_4942_p1 = reg_3266;
assign bitcast_ln85_135_fu_4307_p1 = reg_3262;
assign bitcast_ln85_136_fu_4627_p1 = reg_3258;
assign bitcast_ln85_137_fu_4947_p1 = reg_3270;
assign bitcast_ln85_138_fu_4312_p1 = reg_3266;
assign bitcast_ln85_139_fu_4632_p1 = reg_3262;
assign bitcast_ln85_13_fu_4422_p1 = reg_3270;
assign bitcast_ln85_140_fu_4952_p1 = reg_3258;
assign bitcast_ln85_141_fu_4317_p1 = reg_3270;
assign bitcast_ln85_142_fu_4637_p1 = reg_3266;
assign bitcast_ln85_143_fu_4957_p1 = reg_3262;
assign bitcast_ln85_144_fu_4322_p1 = reg_3242;
assign bitcast_ln85_145_fu_4642_p1 = reg_3254;
assign bitcast_ln85_146_fu_4962_p1 = reg_3250;
assign bitcast_ln85_147_fu_4327_p1 = reg_3246;
assign bitcast_ln85_148_fu_4647_p1 = reg_3242;
assign bitcast_ln85_149_fu_4967_p1 = reg_3254;
assign bitcast_ln85_14_fu_4742_p1 = reg_3266;
assign bitcast_ln85_150_fu_4332_p1 = reg_3250;
assign bitcast_ln85_151_fu_4652_p1 = reg_3246;
assign bitcast_ln85_152_fu_4972_p1 = reg_3242;
assign bitcast_ln85_153_fu_4337_p1 = reg_3254;
assign bitcast_ln85_154_fu_4657_p1 = reg_3250;
assign bitcast_ln85_155_fu_4977_p1 = reg_3246;
assign bitcast_ln85_156_fu_4342_p1 = reg_3258;
assign bitcast_ln85_157_fu_4662_p1 = reg_3270;
assign bitcast_ln85_158_fu_4982_p1 = reg_3266;
assign bitcast_ln85_159_fu_4347_p1 = reg_3262;
assign bitcast_ln85_15_fu_4107_p1 = reg_3262;
assign bitcast_ln85_160_fu_4667_p1 = reg_3258;
assign bitcast_ln85_161_fu_4987_p1 = reg_3270;
assign bitcast_ln85_162_fu_4352_p1 = reg_3266;
assign bitcast_ln85_163_fu_4672_p1 = reg_3262;
assign bitcast_ln85_164_fu_4992_p1 = reg_3258;
assign bitcast_ln85_165_fu_4357_p1 = reg_3270;
assign bitcast_ln85_166_fu_4677_p1 = reg_3266;
assign bitcast_ln85_167_fu_4997_p1 = reg_3262;
assign bitcast_ln85_168_fu_4362_p1 = reg_3242;
assign bitcast_ln85_169_fu_4682_p1 = reg_3254;
assign bitcast_ln85_16_fu_4427_p1 = reg_3258;
assign bitcast_ln85_170_fu_5002_p1 = reg_3250;
assign bitcast_ln85_171_fu_4367_p1 = reg_3246;
assign bitcast_ln85_172_fu_4687_p1 = reg_3242;
assign bitcast_ln85_173_fu_5007_p1 = reg_3254;
assign bitcast_ln85_174_fu_4372_p1 = reg_3250;
assign bitcast_ln85_175_fu_4692_p1 = reg_3246;
assign bitcast_ln85_176_fu_5012_p1 = reg_3242;
assign bitcast_ln85_177_fu_4377_p1 = reg_3254;
assign bitcast_ln85_178_fu_4697_p1 = reg_3250;
assign bitcast_ln85_179_fu_5017_p1 = reg_3246;
assign bitcast_ln85_17_fu_4747_p1 = reg_3270;
assign bitcast_ln85_180_fu_4382_p1 = reg_3258;
assign bitcast_ln85_181_fu_4702_p1 = reg_3270;
assign bitcast_ln85_182_fu_5022_p1 = reg_3266;
assign bitcast_ln85_183_fu_4387_p1 = reg_3262;
assign bitcast_ln85_184_fu_4707_p1 = reg_3258;
assign bitcast_ln85_185_fu_5027_p1 = reg_3270;
assign bitcast_ln85_186_fu_4392_p1 = reg_3266;
assign bitcast_ln85_187_fu_4712_p1 = reg_3262;
assign bitcast_ln85_188_fu_5032_p1 = reg_3258;
assign bitcast_ln85_189_fu_4397_p1 = reg_3270;
assign bitcast_ln85_18_fu_4112_p1 = reg_3266;
assign bitcast_ln85_190_fu_4717_p1 = reg_3266;
assign bitcast_ln85_191_fu_5037_p1 = reg_3262;
assign bitcast_ln85_19_fu_4432_p1 = reg_3262;
assign bitcast_ln85_1_fu_4402_p1 = reg_3254;
assign bitcast_ln85_20_fu_4752_p1 = reg_3258;
assign bitcast_ln85_21_fu_4117_p1 = reg_3270;
assign bitcast_ln85_22_fu_4437_p1 = reg_3266;
assign bitcast_ln85_23_fu_4757_p1 = reg_3262;
assign bitcast_ln85_24_fu_4122_p1 = reg_3242;
assign bitcast_ln85_25_fu_4442_p1 = reg_3254;
assign bitcast_ln85_26_fu_4762_p1 = reg_3250;
assign bitcast_ln85_27_fu_4127_p1 = reg_3246;
assign bitcast_ln85_28_fu_4447_p1 = reg_3242;
assign bitcast_ln85_29_fu_4767_p1 = reg_3254;
assign bitcast_ln85_2_fu_4722_p1 = reg_3250;
assign bitcast_ln85_30_fu_4132_p1 = reg_3250;
assign bitcast_ln85_31_fu_4452_p1 = reg_3246;
assign bitcast_ln85_32_fu_4772_p1 = reg_3242;
assign bitcast_ln85_33_fu_4137_p1 = reg_3254;
assign bitcast_ln85_34_fu_4457_p1 = reg_3250;
assign bitcast_ln85_35_fu_4777_p1 = reg_3246;
assign bitcast_ln85_36_fu_4142_p1 = reg_3258;
assign bitcast_ln85_37_fu_4462_p1 = reg_3270;
assign bitcast_ln85_38_fu_4782_p1 = reg_3266;
assign bitcast_ln85_39_fu_4147_p1 = reg_3262;
assign bitcast_ln85_3_fu_4087_p1 = reg_3246;
assign bitcast_ln85_40_fu_4467_p1 = reg_3258;
assign bitcast_ln85_41_fu_4787_p1 = reg_3270;
assign bitcast_ln85_42_fu_4152_p1 = reg_3266;
assign bitcast_ln85_43_fu_4472_p1 = reg_3262;
assign bitcast_ln85_44_fu_4792_p1 = reg_3258;
assign bitcast_ln85_45_fu_4157_p1 = reg_3270;
assign bitcast_ln85_46_fu_4477_p1 = reg_3266;
assign bitcast_ln85_47_fu_4797_p1 = reg_3262;
assign bitcast_ln85_48_fu_4162_p1 = reg_3242;
assign bitcast_ln85_49_fu_4482_p1 = reg_3254;
assign bitcast_ln85_4_fu_4407_p1 = reg_3242;
assign bitcast_ln85_50_fu_4802_p1 = reg_3250;
assign bitcast_ln85_51_fu_4167_p1 = reg_3246;
assign bitcast_ln85_52_fu_4487_p1 = reg_3242;
assign bitcast_ln85_53_fu_4807_p1 = reg_3254;
assign bitcast_ln85_54_fu_4172_p1 = reg_3250;
assign bitcast_ln85_55_fu_4492_p1 = reg_3246;
assign bitcast_ln85_56_fu_4812_p1 = reg_3242;
assign bitcast_ln85_57_fu_4177_p1 = reg_3254;
assign bitcast_ln85_58_fu_4497_p1 = reg_3250;
assign bitcast_ln85_59_fu_4817_p1 = reg_3246;
assign bitcast_ln85_5_fu_4727_p1 = reg_3254;
assign bitcast_ln85_60_fu_4182_p1 = reg_3258;
assign bitcast_ln85_61_fu_4502_p1 = reg_3270;
assign bitcast_ln85_62_fu_4822_p1 = reg_3266;
assign bitcast_ln85_63_fu_4187_p1 = reg_3262;
assign bitcast_ln85_64_fu_4507_p1 = reg_3258;
assign bitcast_ln85_65_fu_4827_p1 = reg_3270;
assign bitcast_ln85_66_fu_4192_p1 = reg_3266;
assign bitcast_ln85_67_fu_4512_p1 = reg_3262;
assign bitcast_ln85_68_fu_4832_p1 = reg_3258;
assign bitcast_ln85_69_fu_4197_p1 = reg_3270;
assign bitcast_ln85_6_fu_4092_p1 = reg_3250;
assign bitcast_ln85_70_fu_4517_p1 = reg_3266;
assign bitcast_ln85_71_fu_4837_p1 = reg_3262;
assign bitcast_ln85_72_fu_4202_p1 = reg_3242;
assign bitcast_ln85_73_fu_4522_p1 = reg_3254;
assign bitcast_ln85_74_fu_4842_p1 = reg_3250;
assign bitcast_ln85_75_fu_4207_p1 = reg_3246;
assign bitcast_ln85_76_fu_4527_p1 = reg_3242;
assign bitcast_ln85_77_fu_4847_p1 = reg_3254;
assign bitcast_ln85_78_fu_4212_p1 = reg_3250;
assign bitcast_ln85_79_fu_4532_p1 = reg_3246;
assign bitcast_ln85_7_fu_4412_p1 = reg_3246;
assign bitcast_ln85_80_fu_4852_p1 = reg_3242;
assign bitcast_ln85_81_fu_4217_p1 = reg_3254;
assign bitcast_ln85_82_fu_4537_p1 = reg_3250;
assign bitcast_ln85_83_fu_4857_p1 = reg_3246;
assign bitcast_ln85_84_fu_4222_p1 = reg_3258;
assign bitcast_ln85_85_fu_4542_p1 = reg_3270;
assign bitcast_ln85_86_fu_4862_p1 = reg_3266;
assign bitcast_ln85_87_fu_4227_p1 = reg_3262;
assign bitcast_ln85_88_fu_4547_p1 = reg_3258;
assign bitcast_ln85_89_fu_4867_p1 = reg_3270;
assign bitcast_ln85_8_fu_4732_p1 = reg_3242;
assign bitcast_ln85_90_fu_4232_p1 = reg_3266;
assign bitcast_ln85_91_fu_4552_p1 = reg_3262;
assign bitcast_ln85_92_fu_4872_p1 = reg_3258;
assign bitcast_ln85_93_fu_4237_p1 = reg_3270;
assign bitcast_ln85_94_fu_4557_p1 = reg_3266;
assign bitcast_ln85_95_fu_4877_p1 = reg_3262;
assign bitcast_ln85_96_fu_4242_p1 = reg_3242;
assign bitcast_ln85_97_fu_4562_p1 = reg_3254;
assign bitcast_ln85_98_fu_4882_p1 = reg_3250;
assign bitcast_ln85_99_fu_4247_p1 = reg_3246;
assign bitcast_ln85_9_fu_4097_p1 = reg_3254;
assign bitcast_ln85_fu_4082_p1 = reg_3242;
assign dactivations_0_address0 = dactivations_0_address0_local;
assign dactivations_0_address1 = dactivations_0_address1_local;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_0_ce1 = dactivations_0_ce1_local;
assign dactivations_1_address0 = dactivations_1_address0_local;
assign dactivations_1_address1 = dactivations_1_address1_local;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign dactivations_1_ce1 = dactivations_1_ce1_local;
assign dactivations_2_address0 = dactivations_2_address0_local;
assign dactivations_2_address1 = dactivations_2_address1_local;
assign dactivations_2_ce0 = dactivations_2_ce0_local;
assign dactivations_2_ce1 = dactivations_2_ce1_local;
assign dactivations_3_address0 = dactivations_3_address0_local;
assign dactivations_3_address1 = dactivations_3_address1_local;
assign dactivations_3_ce0 = dactivations_3_ce0_local;
assign dactivations_3_ce1 = dactivations_3_ce1_local;
assign grp_fu_3064_p_ce = 1'b1;
assign grp_fu_3064_p_din0 = grp_fu_3146_p0;
assign grp_fu_3064_p_din1 = grp_fu_3146_p1;
assign grp_fu_3064_p_opcode = 2'd0;
assign grp_fu_3068_p_ce = 1'b1;
assign grp_fu_3068_p_din0 = grp_fu_3151_p0;
assign grp_fu_3068_p_din1 = grp_fu_3151_p1;
assign grp_fu_3068_p_opcode = 2'd0;
assign grp_fu_3072_p_ce = 1'b1;
assign grp_fu_3072_p_din0 = grp_fu_3156_p0;
assign grp_fu_3072_p_din1 = grp_fu_3156_p1;
assign grp_fu_3072_p_opcode = 2'd0;
assign grp_fu_3076_p_ce = 1'b1;
assign grp_fu_3076_p_din0 = grp_fu_3161_p0;
assign grp_fu_3076_p_din1 = grp_fu_3161_p1;
assign grp_fu_3076_p_opcode = 2'd0;
assign grp_fu_3080_p_ce = 1'b1;
assign grp_fu_3080_p_din0 = grp_fu_3166_p0;
assign grp_fu_3080_p_din1 = grp_fu_3166_p1;
assign grp_fu_3080_p_opcode = 2'd0;
assign grp_fu_3084_p_ce = 1'b1;
assign grp_fu_3084_p_din0 = grp_fu_3171_p0;
assign grp_fu_3084_p_din1 = grp_fu_3171_p1;
assign grp_fu_3084_p_opcode = 2'd0;
assign grp_fu_3088_p_ce = 1'b1;
assign grp_fu_3088_p_din0 = grp_fu_3176_p0;
assign grp_fu_3088_p_din1 = grp_fu_3176_p1;
assign grp_fu_3088_p_opcode = 2'd0;
assign grp_fu_3092_p_ce = 1'b1;
assign grp_fu_3092_p_din0 = grp_fu_3181_p0;
assign grp_fu_3092_p_din1 = grp_fu_3181_p1;
assign grp_fu_3092_p_opcode = 2'd0;
assign grp_fu_3116_p_ce = 1'b1;
assign grp_fu_3116_p_din0 = grp_fu_3186_p0;
assign grp_fu_3116_p_din1 = grp_fu_3186_p1;
assign grp_fu_3120_p_ce = 1'b1;
assign grp_fu_3120_p_din0 = grp_fu_3191_p0;
assign grp_fu_3120_p_din1 = grp_fu_3191_p1;
assign grp_fu_3124_p_ce = 1'b1;
assign grp_fu_3124_p_din0 = grp_fu_3196_p0;
assign grp_fu_3124_p_din1 = grp_fu_3196_p1;
assign grp_fu_3136_p_ce = 1'b1;
assign grp_fu_3136_p_din0 = grp_fu_3201_p0;
assign grp_fu_3136_p_din1 = grp_fu_3201_p1;
assign oracle_activations_0_address0 = oracle_activations_0_address0_local;
assign oracle_activations_0_address1 = oracle_activations_0_address1_local;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_ce1 = oracle_activations_0_ce1_local;
assign oracle_activations_0_d0 = reg_3302;
assign oracle_activations_0_d1 = reg_3274;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_0_we1 = oracle_activations_0_we1_local;
assign oracle_activations_1_address0 = oracle_activations_1_address0_local;
assign oracle_activations_1_address1 = oracle_activations_1_address1_local;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_ce1 = oracle_activations_1_ce1_local;
assign oracle_activations_1_d0 = reg_3309;
assign oracle_activations_1_d1 = reg_3281;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign oracle_activations_1_we1 = oracle_activations_1_we1_local;
assign oracle_activations_2_address0 = oracle_activations_2_address0_local;
assign oracle_activations_2_address1 = oracle_activations_2_address1_local;
assign oracle_activations_2_ce0 = oracle_activations_2_ce0_local;
assign oracle_activations_2_ce1 = oracle_activations_2_ce1_local;
assign oracle_activations_2_d0 = reg_3316;
assign oracle_activations_2_d1 = reg_3288;
assign oracle_activations_2_we0 = oracle_activations_2_we0_local;
assign oracle_activations_2_we1 = oracle_activations_2_we1_local;
assign oracle_activations_3_address0 = oracle_activations_3_address0_local;
assign oracle_activations_3_address1 = oracle_activations_3_address1_local;
assign oracle_activations_3_ce0 = oracle_activations_3_ce0_local;
assign oracle_activations_3_ce1 = oracle_activations_3_ce1_local;
assign oracle_activations_3_d0 = reg_3323;
assign oracle_activations_3_d1 = reg_3295;
assign oracle_activations_3_we0 = oracle_activations_3_we0_local;
assign oracle_activations_3_we1 = oracle_activations_3_we1_local;
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_address1 = weights3_2_address1_local;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_ce1 = weights3_2_ce1_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_address1 = weights3_3_address1_local;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_ce1 = weights3_3_ce1_local;
endmodule 