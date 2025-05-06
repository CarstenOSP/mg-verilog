
module backprop_get_oracle_activations2_62_63_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_4_address0,weights3_4_ce0,weights3_4_q0,weights3_5_address0,weights3_5_ce0,weights3_5_q0,weights3_6_address0,weights3_6_ce0,weights3_6_q0,weights3_7_address0,weights3_7_ce0,weights3_7_q0,output_differences_0_0_val,output_differences_0_1_val,output_differences_0_2_val,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,oracle_activations_4_address0,oracle_activations_4_ce0,oracle_activations_4_we0,oracle_activations_4_d0,oracle_activations_5_address0,oracle_activations_5_ce0,oracle_activations_5_we0,oracle_activations_5_d0,oracle_activations_6_address0,oracle_activations_6_ce0,oracle_activations_6_we0,oracle_activations_6_d0,oracle_activations_7_address0,oracle_activations_7_ce0,oracle_activations_7_we0,oracle_activations_7_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,dactivations_4_address0,dactivations_4_ce0,dactivations_4_q0,dactivations_5_address0,dactivations_5_ce0,dactivations_5_q0,dactivations_6_address0,dactivations_6_ce0,dactivations_6_q0,dactivations_7_address0,dactivations_7_ce0,dactivations_7_q0,grp_fu_3556_p_din0,grp_fu_3556_p_din1,grp_fu_3556_p_opcode,grp_fu_3556_p_dout0,grp_fu_3556_p_ce,grp_fu_3560_p_din0,grp_fu_3560_p_din1,grp_fu_3560_p_opcode,grp_fu_3560_p_dout0,grp_fu_3560_p_ce,grp_fu_3564_p_din0,grp_fu_3564_p_din1,grp_fu_3564_p_opcode,grp_fu_3564_p_dout0,grp_fu_3564_p_ce,grp_fu_3568_p_din0,grp_fu_3568_p_din1,grp_fu_3568_p_opcode,grp_fu_3568_p_dout0,grp_fu_3568_p_ce,grp_fu_3572_p_din0,grp_fu_3572_p_din1,grp_fu_3572_p_opcode,grp_fu_3572_p_dout0,grp_fu_3572_p_ce,grp_fu_3576_p_din0,grp_fu_3576_p_din1,grp_fu_3576_p_opcode,grp_fu_3576_p_dout0,grp_fu_3576_p_ce,grp_fu_3580_p_din0,grp_fu_3580_p_din1,grp_fu_3580_p_opcode,grp_fu_3580_p_dout0,grp_fu_3580_p_ce,grp_fu_3584_p_din0,grp_fu_3584_p_din1,grp_fu_3584_p_opcode,grp_fu_3584_p_dout0,grp_fu_3584_p_ce,grp_fu_3652_p_din0,grp_fu_3652_p_din1,grp_fu_3652_p_dout0,grp_fu_3652_p_ce,grp_fu_3656_p_din0,grp_fu_3656_p_din1,grp_fu_3656_p_dout0,grp_fu_3656_p_ce,grp_fu_3660_p_din0,grp_fu_3660_p_din1,grp_fu_3660_p_dout0,grp_fu_3660_p_ce,grp_fu_3664_p_din0,grp_fu_3664_p_din1,grp_fu_3664_p_dout0,grp_fu_3664_p_ce,grp_fu_3668_p_din0,grp_fu_3668_p_din1,grp_fu_3668_p_dout0,grp_fu_3668_p_ce,grp_fu_3672_p_din0,grp_fu_3672_p_din1,grp_fu_3672_p_dout0,grp_fu_3672_p_ce,grp_fu_3676_p_din0,grp_fu_3676_p_din1,grp_fu_3676_p_dout0,grp_fu_3676_p_ce,grp_fu_3680_p_din0,grp_fu_3680_p_din1,grp_fu_3680_p_dout0,grp_fu_3680_p_ce);  
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
output  [4:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [4:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [4:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [4:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [4:0] weights3_4_address0;
output   weights3_4_ce0;
input  [63:0] weights3_4_q0;
output  [4:0] weights3_5_address0;
output   weights3_5_ce0;
input  [63:0] weights3_5_q0;
output  [4:0] weights3_6_address0;
output   weights3_6_ce0;
input  [63:0] weights3_6_q0;
output  [4:0] weights3_7_address0;
output   weights3_7_ce0;
input  [63:0] weights3_7_q0;
input  [63:0] output_differences_0_0_val;
input  [63:0] output_differences_0_1_val;
input  [63:0] output_differences_0_2_val;
output  [2:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [2:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [2:0] oracle_activations_2_address0;
output   oracle_activations_2_ce0;
output   oracle_activations_2_we0;
output  [63:0] oracle_activations_2_d0;
output  [2:0] oracle_activations_3_address0;
output   oracle_activations_3_ce0;
output   oracle_activations_3_we0;
output  [63:0] oracle_activations_3_d0;
output  [2:0] oracle_activations_4_address0;
output   oracle_activations_4_ce0;
output   oracle_activations_4_we0;
output  [63:0] oracle_activations_4_d0;
output  [2:0] oracle_activations_5_address0;
output   oracle_activations_5_ce0;
output   oracle_activations_5_we0;
output  [63:0] oracle_activations_5_d0;
output  [2:0] oracle_activations_6_address0;
output   oracle_activations_6_ce0;
output   oracle_activations_6_we0;
output  [63:0] oracle_activations_6_d0;
output  [2:0] oracle_activations_7_address0;
output   oracle_activations_7_ce0;
output   oracle_activations_7_we0;
output  [63:0] oracle_activations_7_d0;
output  [2:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [2:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [2:0] dactivations_2_address0;
output   dactivations_2_ce0;
input  [63:0] dactivations_2_q0;
output  [2:0] dactivations_3_address0;
output   dactivations_3_ce0;
input  [63:0] dactivations_3_q0;
output  [2:0] dactivations_4_address0;
output   dactivations_4_ce0;
input  [63:0] dactivations_4_q0;
output  [2:0] dactivations_5_address0;
output   dactivations_5_ce0;
input  [63:0] dactivations_5_q0;
output  [2:0] dactivations_6_address0;
output   dactivations_6_ce0;
input  [63:0] dactivations_6_q0;
output  [2:0] dactivations_7_address0;
output   dactivations_7_ce0;
input  [63:0] dactivations_7_q0;
output  [63:0] grp_fu_3556_p_din0;
output  [63:0] grp_fu_3556_p_din1;
output  [0:0] grp_fu_3556_p_opcode;
input  [63:0] grp_fu_3556_p_dout0;
output   grp_fu_3556_p_ce;
output  [63:0] grp_fu_3560_p_din0;
output  [63:0] grp_fu_3560_p_din1;
output  [0:0] grp_fu_3560_p_opcode;
input  [63:0] grp_fu_3560_p_dout0;
output   grp_fu_3560_p_ce;
output  [63:0] grp_fu_3564_p_din0;
output  [63:0] grp_fu_3564_p_din1;
output  [0:0] grp_fu_3564_p_opcode;
input  [63:0] grp_fu_3564_p_dout0;
output   grp_fu_3564_p_ce;
output  [63:0] grp_fu_3568_p_din0;
output  [63:0] grp_fu_3568_p_din1;
output  [0:0] grp_fu_3568_p_opcode;
input  [63:0] grp_fu_3568_p_dout0;
output   grp_fu_3568_p_ce;
output  [63:0] grp_fu_3572_p_din0;
output  [63:0] grp_fu_3572_p_din1;
output  [0:0] grp_fu_3572_p_opcode;
input  [63:0] grp_fu_3572_p_dout0;
output   grp_fu_3572_p_ce;
output  [63:0] grp_fu_3576_p_din0;
output  [63:0] grp_fu_3576_p_din1;
output  [0:0] grp_fu_3576_p_opcode;
input  [63:0] grp_fu_3576_p_dout0;
output   grp_fu_3576_p_ce;
output  [63:0] grp_fu_3580_p_din0;
output  [63:0] grp_fu_3580_p_din1;
output  [0:0] grp_fu_3580_p_opcode;
input  [63:0] grp_fu_3580_p_dout0;
output   grp_fu_3580_p_ce;
output  [63:0] grp_fu_3584_p_din0;
output  [63:0] grp_fu_3584_p_din1;
output  [0:0] grp_fu_3584_p_opcode;
input  [63:0] grp_fu_3584_p_dout0;
output   grp_fu_3584_p_ce;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [47:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_3230;
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
reg   [63:0] reg_3234;
reg   [63:0] reg_3238;
reg   [63:0] reg_3242;
reg   [63:0] reg_3246;
reg   [63:0] reg_3250;
reg   [63:0] reg_3254;
reg   [63:0] reg_3258;
reg   [63:0] reg_3262;
wire    ap_CS_fsm_state40;
wire    ap_CS_fsm_state41;
wire    ap_CS_fsm_state42;
wire    ap_CS_fsm_state43;
wire    ap_CS_fsm_state44;
wire    ap_CS_fsm_state45;
wire    ap_CS_fsm_state46;
wire    ap_CS_fsm_state47;
reg   [63:0] reg_3269;
reg   [63:0] reg_3276;
reg   [63:0] reg_3283;
reg   [63:0] reg_3290;
reg   [63:0] reg_3297;
reg   [63:0] reg_3304;
reg   [63:0] reg_3311;
reg   [63:0] reg_3318;
wire    ap_CS_fsm_state26;
reg   [63:0] reg_3324;
reg   [63:0] reg_3330;
reg   [63:0] reg_3336;
reg   [63:0] reg_3342;
reg   [63:0] reg_3348;
reg   [63:0] reg_3354;
reg   [63:0] reg_3360;
reg   [63:0] reg_3366;
wire    ap_CS_fsm_state27;
reg   [63:0] reg_3372;
reg   [63:0] reg_3378;
reg   [63:0] reg_3384;
reg   [63:0] reg_3390;
reg   [63:0] reg_3396;
reg   [63:0] reg_3402;
reg   [63:0] reg_3408;
reg   [63:0] reg_3414;
wire    ap_CS_fsm_state28;
reg   [63:0] reg_3420;
reg   [63:0] reg_3426;
reg   [63:0] reg_3432;
reg   [63:0] reg_3438;
reg   [63:0] reg_3444;
reg   [63:0] reg_3450;
reg   [63:0] reg_3456;
reg   [63:0] reg_3462;
wire    ap_CS_fsm_state29;
reg   [63:0] reg_3468;
reg   [63:0] reg_3474;
reg   [63:0] reg_3480;
reg   [63:0] reg_3486;
reg   [63:0] reg_3492;
reg   [63:0] reg_3498;
reg   [63:0] reg_3504;
reg   [63:0] reg_3510;
wire    ap_CS_fsm_state30;
reg   [63:0] reg_3516;
reg   [63:0] reg_3522;
reg   [63:0] reg_3528;
reg   [63:0] reg_3534;
reg   [63:0] reg_3540;
reg   [63:0] reg_3546;
reg   [63:0] reg_3552;
reg   [63:0] reg_3558;
wire    ap_CS_fsm_state31;
reg   [63:0] reg_3564;
reg   [63:0] reg_3570;
reg   [63:0] reg_3576;
reg   [63:0] reg_3582;
reg   [63:0] reg_3588;
reg   [63:0] reg_3594;
reg   [63:0] reg_3600;
reg   [63:0] reg_3606;
wire    ap_CS_fsm_state32;
reg   [63:0] reg_3612;
reg   [63:0] reg_3618;
reg   [63:0] reg_3624;
reg   [63:0] reg_3630;
reg   [63:0] reg_3636;
reg   [63:0] reg_3642;
reg   [63:0] reg_3648;
reg   [63:0] reg_3654;
wire    ap_CS_fsm_state33;
reg   [63:0] reg_3660;
reg   [63:0] reg_3666;
reg   [63:0] reg_3672;
reg   [63:0] reg_3678;
reg   [63:0] reg_3684;
reg   [63:0] reg_3690;
reg   [63:0] reg_3696;
reg   [63:0] reg_3702;
wire    ap_CS_fsm_state34;
reg   [63:0] reg_3708;
reg   [63:0] reg_3714;
reg   [63:0] reg_3720;
reg   [63:0] reg_3726;
reg   [63:0] reg_3732;
reg   [63:0] reg_3738;
reg   [63:0] reg_3744;
reg   [63:0] reg_3750;
wire    ap_CS_fsm_state35;
reg   [63:0] reg_3756;
reg   [63:0] reg_3762;
reg   [63:0] reg_3768;
reg   [63:0] reg_3774;
reg   [63:0] reg_3780;
reg   [63:0] reg_3786;
reg   [63:0] reg_3792;
reg   [63:0] reg_3798;
wire    ap_CS_fsm_state36;
reg   [63:0] reg_3804;
reg   [63:0] reg_3810;
reg   [63:0] reg_3816;
reg   [63:0] reg_3822;
reg   [63:0] reg_3828;
reg   [63:0] reg_3834;
reg   [63:0] reg_3840;
reg   [63:0] reg_3846;
wire    ap_CS_fsm_state37;
reg   [63:0] reg_3852;
reg   [63:0] reg_3858;
reg   [63:0] reg_3864;
reg   [63:0] reg_3870;
reg   [63:0] reg_3876;
reg   [63:0] reg_3882;
reg   [63:0] reg_3888;
reg   [63:0] reg_3894;
wire    ap_CS_fsm_state38;
reg   [63:0] reg_3900;
reg   [63:0] reg_3906;
reg   [63:0] reg_3912;
reg   [63:0] reg_3918;
reg   [63:0] reg_3924;
reg   [63:0] reg_3930;
reg   [63:0] reg_3936;
reg   [63:0] reg_3942;
wire    ap_CS_fsm_state39;
reg   [63:0] reg_3948;
reg   [63:0] reg_3954;
reg   [63:0] reg_3960;
reg   [63:0] reg_3966;
reg   [63:0] reg_3972;
reg   [63:0] reg_3978;
reg   [63:0] reg_3984;
reg   [63:0] reg_3990;
reg   [63:0] reg_3995;
reg   [63:0] reg_4000;
reg   [63:0] reg_4005;
reg   [63:0] reg_4010;
reg   [63:0] reg_4015;
reg   [63:0] reg_4020;
reg   [63:0] reg_4025;
reg   [63:0] reg_4030;
reg   [63:0] reg_4035;
reg   [63:0] reg_4040;
reg   [63:0] reg_4045;
reg   [63:0] reg_4050;
reg   [63:0] reg_4055;
reg   [63:0] reg_4060;
reg   [63:0] reg_4065;
wire   [63:0] bitcast_ln85_fu_4070_p1;
wire   [63:0] bitcast_ln85_3_fu_4075_p1;
wire   [63:0] bitcast_ln85_6_fu_4080_p1;
wire   [63:0] bitcast_ln85_9_fu_4085_p1;
wire   [63:0] bitcast_ln85_12_fu_4090_p1;
wire   [63:0] bitcast_ln85_15_fu_4095_p1;
wire   [63:0] bitcast_ln85_18_fu_4100_p1;
wire   [63:0] bitcast_ln85_21_fu_4105_p1;
wire   [63:0] bitcast_ln85_24_fu_4110_p1;
wire   [63:0] bitcast_ln85_27_fu_4115_p1;
wire   [63:0] bitcast_ln85_30_fu_4120_p1;
wire   [63:0] bitcast_ln85_33_fu_4125_p1;
wire   [63:0] bitcast_ln85_36_fu_4130_p1;
wire   [63:0] bitcast_ln85_39_fu_4135_p1;
wire   [63:0] bitcast_ln85_42_fu_4140_p1;
wire   [63:0] bitcast_ln85_45_fu_4145_p1;
wire   [63:0] bitcast_ln85_48_fu_4150_p1;
wire   [63:0] bitcast_ln85_51_fu_4155_p1;
wire   [63:0] bitcast_ln85_54_fu_4160_p1;
wire   [63:0] bitcast_ln85_57_fu_4165_p1;
wire   [63:0] bitcast_ln85_60_fu_4170_p1;
wire   [63:0] bitcast_ln85_63_fu_4175_p1;
wire   [63:0] bitcast_ln85_66_fu_4180_p1;
wire   [63:0] bitcast_ln85_69_fu_4185_p1;
wire   [63:0] bitcast_ln85_72_fu_4190_p1;
wire   [63:0] bitcast_ln85_75_fu_4195_p1;
wire   [63:0] bitcast_ln85_78_fu_4200_p1;
wire   [63:0] bitcast_ln85_81_fu_4205_p1;
wire   [63:0] bitcast_ln85_84_fu_4210_p1;
wire   [63:0] bitcast_ln85_87_fu_4215_p1;
wire   [63:0] bitcast_ln85_90_fu_4220_p1;
wire   [63:0] bitcast_ln85_93_fu_4225_p1;
wire   [63:0] bitcast_ln85_96_fu_4230_p1;
wire   [63:0] bitcast_ln85_99_fu_4235_p1;
wire   [63:0] bitcast_ln85_102_fu_4240_p1;
wire   [63:0] bitcast_ln85_105_fu_4245_p1;
wire   [63:0] bitcast_ln85_108_fu_4250_p1;
wire   [63:0] bitcast_ln85_111_fu_4255_p1;
wire   [63:0] bitcast_ln85_114_fu_4260_p1;
wire   [63:0] bitcast_ln85_117_fu_4265_p1;
wire   [63:0] bitcast_ln85_120_fu_4270_p1;
wire   [63:0] bitcast_ln85_123_fu_4275_p1;
wire   [63:0] bitcast_ln85_126_fu_4280_p1;
wire   [63:0] bitcast_ln85_129_fu_4285_p1;
wire   [63:0] bitcast_ln85_132_fu_4290_p1;
wire   [63:0] bitcast_ln85_135_fu_4295_p1;
wire   [63:0] bitcast_ln85_138_fu_4300_p1;
wire   [63:0] bitcast_ln85_141_fu_4305_p1;
wire   [63:0] bitcast_ln85_144_fu_4310_p1;
wire   [63:0] bitcast_ln85_147_fu_4315_p1;
wire   [63:0] bitcast_ln85_150_fu_4320_p1;
wire   [63:0] bitcast_ln85_153_fu_4325_p1;
wire   [63:0] bitcast_ln85_156_fu_4330_p1;
wire   [63:0] bitcast_ln85_159_fu_4335_p1;
wire   [63:0] bitcast_ln85_162_fu_4340_p1;
wire   [63:0] bitcast_ln85_165_fu_4345_p1;
wire   [63:0] bitcast_ln85_168_fu_4350_p1;
wire   [63:0] bitcast_ln85_171_fu_4355_p1;
wire   [63:0] bitcast_ln85_174_fu_4360_p1;
wire   [63:0] bitcast_ln85_177_fu_4365_p1;
wire   [63:0] bitcast_ln85_180_fu_4370_p1;
wire   [63:0] bitcast_ln85_183_fu_4375_p1;
wire   [63:0] bitcast_ln85_186_fu_4380_p1;
wire   [63:0] bitcast_ln85_189_fu_4385_p1;
wire   [63:0] bitcast_ln85_1_fu_4390_p1;
wire   [63:0] bitcast_ln85_4_fu_4395_p1;
wire   [63:0] bitcast_ln85_7_fu_4400_p1;
wire   [63:0] bitcast_ln85_10_fu_4405_p1;
wire   [63:0] bitcast_ln85_13_fu_4410_p1;
wire   [63:0] bitcast_ln85_16_fu_4415_p1;
wire   [63:0] bitcast_ln85_19_fu_4420_p1;
wire   [63:0] bitcast_ln85_22_fu_4425_p1;
wire   [63:0] bitcast_ln85_25_fu_4430_p1;
wire   [63:0] bitcast_ln85_28_fu_4435_p1;
wire   [63:0] bitcast_ln85_31_fu_4440_p1;
wire   [63:0] bitcast_ln85_34_fu_4445_p1;
wire   [63:0] bitcast_ln85_37_fu_4450_p1;
wire   [63:0] bitcast_ln85_40_fu_4455_p1;
wire   [63:0] bitcast_ln85_43_fu_4460_p1;
wire   [63:0] bitcast_ln85_46_fu_4465_p1;
wire   [63:0] bitcast_ln85_49_fu_4470_p1;
wire   [63:0] bitcast_ln85_52_fu_4475_p1;
wire   [63:0] bitcast_ln85_55_fu_4480_p1;
wire   [63:0] bitcast_ln85_58_fu_4485_p1;
wire   [63:0] bitcast_ln85_61_fu_4490_p1;
wire   [63:0] bitcast_ln85_64_fu_4495_p1;
wire   [63:0] bitcast_ln85_67_fu_4500_p1;
wire   [63:0] bitcast_ln85_70_fu_4505_p1;
wire   [63:0] bitcast_ln85_73_fu_4510_p1;
wire   [63:0] bitcast_ln85_76_fu_4515_p1;
wire   [63:0] bitcast_ln85_79_fu_4520_p1;
wire   [63:0] bitcast_ln85_82_fu_4525_p1;
wire   [63:0] bitcast_ln85_85_fu_4530_p1;
wire   [63:0] bitcast_ln85_88_fu_4535_p1;
wire   [63:0] bitcast_ln85_91_fu_4540_p1;
wire   [63:0] bitcast_ln85_94_fu_4545_p1;
wire   [63:0] bitcast_ln85_97_fu_4550_p1;
wire   [63:0] bitcast_ln85_100_fu_4555_p1;
wire   [63:0] bitcast_ln85_103_fu_4560_p1;
wire   [63:0] bitcast_ln85_106_fu_4565_p1;
wire   [63:0] bitcast_ln85_109_fu_4570_p1;
wire   [63:0] bitcast_ln85_112_fu_4575_p1;
wire   [63:0] bitcast_ln85_115_fu_4580_p1;
wire   [63:0] bitcast_ln85_118_fu_4585_p1;
wire   [63:0] bitcast_ln85_121_fu_4590_p1;
wire   [63:0] bitcast_ln85_124_fu_4595_p1;
wire   [63:0] bitcast_ln85_127_fu_4600_p1;
wire   [63:0] bitcast_ln85_130_fu_4605_p1;
wire   [63:0] bitcast_ln85_133_fu_4610_p1;
wire   [63:0] bitcast_ln85_136_fu_4615_p1;
wire   [63:0] bitcast_ln85_139_fu_4620_p1;
wire   [63:0] bitcast_ln85_142_fu_4625_p1;
wire   [63:0] bitcast_ln85_145_fu_4630_p1;
wire   [63:0] bitcast_ln85_148_fu_4635_p1;
wire   [63:0] bitcast_ln85_151_fu_4640_p1;
wire   [63:0] bitcast_ln85_154_fu_4645_p1;
wire   [63:0] bitcast_ln85_157_fu_4650_p1;
wire   [63:0] bitcast_ln85_160_fu_4655_p1;
wire   [63:0] bitcast_ln85_163_fu_4660_p1;
wire   [63:0] bitcast_ln85_166_fu_4665_p1;
wire   [63:0] bitcast_ln85_169_fu_4670_p1;
wire   [63:0] bitcast_ln85_172_fu_4675_p1;
wire   [63:0] bitcast_ln85_175_fu_4680_p1;
wire   [63:0] bitcast_ln85_178_fu_4685_p1;
wire   [63:0] bitcast_ln85_181_fu_4690_p1;
wire   [63:0] bitcast_ln85_184_fu_4695_p1;
wire   [63:0] bitcast_ln85_187_fu_4700_p1;
wire   [63:0] bitcast_ln85_190_fu_4705_p1;
wire   [63:0] bitcast_ln85_2_fu_4710_p1;
wire   [63:0] bitcast_ln85_5_fu_4715_p1;
wire   [63:0] bitcast_ln85_8_fu_4720_p1;
wire   [63:0] bitcast_ln85_11_fu_4725_p1;
wire   [63:0] bitcast_ln85_14_fu_4730_p1;
wire   [63:0] bitcast_ln85_17_fu_4735_p1;
wire   [63:0] bitcast_ln85_20_fu_4740_p1;
wire   [63:0] bitcast_ln85_23_fu_4745_p1;
wire   [63:0] bitcast_ln85_26_fu_4750_p1;
wire   [63:0] bitcast_ln85_29_fu_4755_p1;
wire   [63:0] bitcast_ln85_32_fu_4760_p1;
wire   [63:0] bitcast_ln85_35_fu_4765_p1;
wire   [63:0] bitcast_ln85_38_fu_4770_p1;
wire   [63:0] bitcast_ln85_41_fu_4775_p1;
wire   [63:0] bitcast_ln85_44_fu_4780_p1;
wire   [63:0] bitcast_ln85_47_fu_4785_p1;
wire   [63:0] bitcast_ln85_50_fu_4790_p1;
wire   [63:0] bitcast_ln85_53_fu_4795_p1;
wire   [63:0] bitcast_ln85_56_fu_4800_p1;
wire   [63:0] bitcast_ln85_59_fu_4805_p1;
wire   [63:0] bitcast_ln85_62_fu_4810_p1;
wire   [63:0] bitcast_ln85_65_fu_4815_p1;
wire   [63:0] bitcast_ln85_68_fu_4820_p1;
wire   [63:0] bitcast_ln85_71_fu_4825_p1;
wire   [63:0] bitcast_ln85_74_fu_4830_p1;
wire   [63:0] bitcast_ln85_77_fu_4835_p1;
wire   [63:0] bitcast_ln85_80_fu_4840_p1;
wire   [63:0] bitcast_ln85_83_fu_4845_p1;
wire   [63:0] bitcast_ln85_86_fu_4850_p1;
wire   [63:0] bitcast_ln85_89_fu_4855_p1;
wire   [63:0] bitcast_ln85_92_fu_4860_p1;
wire   [63:0] bitcast_ln85_95_fu_4865_p1;
wire   [63:0] bitcast_ln85_98_fu_4870_p1;
wire   [63:0] bitcast_ln85_101_fu_4875_p1;
wire   [63:0] bitcast_ln85_104_fu_4880_p1;
wire   [63:0] bitcast_ln85_107_fu_4885_p1;
wire   [63:0] bitcast_ln85_110_fu_4890_p1;
wire   [63:0] bitcast_ln85_113_fu_4895_p1;
wire   [63:0] bitcast_ln85_116_fu_4900_p1;
wire   [63:0] bitcast_ln85_119_fu_4905_p1;
wire   [63:0] bitcast_ln85_122_fu_4910_p1;
wire   [63:0] bitcast_ln85_125_fu_4915_p1;
wire   [63:0] bitcast_ln85_128_fu_4920_p1;
wire   [63:0] bitcast_ln85_131_fu_4925_p1;
wire   [63:0] bitcast_ln85_134_fu_4930_p1;
wire   [63:0] bitcast_ln85_137_fu_4935_p1;
wire   [63:0] bitcast_ln85_140_fu_4940_p1;
wire   [63:0] bitcast_ln85_143_fu_4945_p1;
wire   [63:0] bitcast_ln85_146_fu_4950_p1;
wire   [63:0] bitcast_ln85_149_fu_4955_p1;
wire   [63:0] bitcast_ln85_152_fu_4960_p1;
wire   [63:0] bitcast_ln85_155_fu_4965_p1;
wire   [63:0] bitcast_ln85_158_fu_4970_p1;
wire   [63:0] bitcast_ln85_161_fu_4975_p1;
wire   [63:0] bitcast_ln85_164_fu_4980_p1;
wire   [63:0] bitcast_ln85_167_fu_4985_p1;
wire   [63:0] bitcast_ln85_170_fu_4990_p1;
wire   [63:0] bitcast_ln85_173_fu_4995_p1;
wire   [63:0] bitcast_ln85_176_fu_5000_p1;
wire   [63:0] bitcast_ln85_179_fu_5005_p1;
wire   [63:0] bitcast_ln85_182_fu_5010_p1;
wire   [63:0] bitcast_ln85_185_fu_5015_p1;
wire   [63:0] bitcast_ln85_188_fu_5020_p1;
wire   [63:0] bitcast_ln85_191_fu_5025_p1;
reg   [63:0] dactivations_0_load_1_reg_7066;
reg   [63:0] dactivations_1_load_1_reg_7071;
reg   [63:0] dactivations_2_load_1_reg_7076;
reg   [63:0] dactivations_3_load_1_reg_7081;
reg   [63:0] dactivations_4_load_1_reg_7086;
reg   [63:0] dactivations_5_load_1_reg_7091;
reg   [63:0] dactivations_6_load_1_reg_7096;
reg   [63:0] dactivations_7_load_1_reg_7101;
reg   [63:0] dactivations_0_load_2_reg_7146;
reg   [63:0] dactivations_1_load_2_reg_7151;
reg   [63:0] dactivations_2_load_2_reg_7156;
reg   [63:0] dactivations_3_load_2_reg_7161;
reg   [63:0] dactivations_4_load_2_reg_7166;
reg   [63:0] dactivations_5_load_2_reg_7171;
reg   [63:0] dactivations_6_load_2_reg_7176;
reg   [63:0] dactivations_7_load_2_reg_7181;
reg   [63:0] dactivations_0_load_3_reg_7226;
reg   [63:0] dactivations_1_load_3_reg_7231;
reg   [63:0] dactivations_2_load_3_reg_7236;
reg   [63:0] dactivations_3_load_3_reg_7241;
reg   [63:0] dactivations_4_load_3_reg_7246;
reg   [63:0] dactivations_5_load_3_reg_7251;
reg   [63:0] dactivations_6_load_3_reg_7256;
reg   [63:0] dactivations_7_load_3_reg_7261;
reg   [63:0] dactivations_0_load_4_reg_7306;
reg   [63:0] dactivations_1_load_4_reg_7311;
reg   [63:0] dactivations_2_load_4_reg_7316;
reg   [63:0] dactivations_3_load_4_reg_7321;
reg   [63:0] dactivations_4_load_4_reg_7326;
reg   [63:0] dactivations_5_load_4_reg_7331;
reg   [63:0] dactivations_6_load_4_reg_7336;
reg   [63:0] dactivations_7_load_4_reg_7341;
reg   [63:0] dactivations_0_load_5_reg_7386;
reg   [63:0] dactivations_1_load_5_reg_7391;
reg   [63:0] dactivations_2_load_5_reg_7396;
reg   [63:0] dactivations_3_load_5_reg_7401;
reg   [63:0] dactivations_4_load_5_reg_7406;
reg   [63:0] dactivations_5_load_5_reg_7411;
reg   [63:0] dactivations_6_load_5_reg_7416;
reg   [63:0] dactivations_7_load_5_reg_7421;
reg   [63:0] dactivations_0_load_6_reg_7466;
reg   [63:0] dactivations_1_load_6_reg_7471;
reg   [63:0] dactivations_2_load_6_reg_7476;
reg   [63:0] dactivations_3_load_6_reg_7481;
reg   [63:0] dactivations_4_load_6_reg_7486;
reg   [63:0] dactivations_5_load_6_reg_7491;
reg   [63:0] dactivations_6_load_6_reg_7496;
reg   [63:0] dactivations_7_load_6_reg_7501;
wire    ap_CS_fsm_state48;
reg    weights3_0_ce0_local;
reg   [4:0] weights3_0_address0_local;
reg    weights3_3_ce0_local;
reg   [4:0] weights3_3_address0_local;
reg    weights3_6_ce0_local;
reg   [4:0] weights3_6_address0_local;
reg    weights3_1_ce0_local;
reg   [4:0] weights3_1_address0_local;
reg    weights3_4_ce0_local;
reg   [4:0] weights3_4_address0_local;
reg    weights3_7_ce0_local;
reg   [4:0] weights3_7_address0_local;
reg    weights3_2_ce0_local;
reg   [4:0] weights3_2_address0_local;
reg    weights3_5_ce0_local;
reg   [4:0] weights3_5_address0_local;
reg    dactivations_0_ce0_local;
reg   [2:0] dactivations_0_address0_local;
reg    dactivations_1_ce0_local;
reg   [2:0] dactivations_1_address0_local;
reg    dactivations_2_ce0_local;
reg   [2:0] dactivations_2_address0_local;
reg    dactivations_3_ce0_local;
reg   [2:0] dactivations_3_address0_local;
reg    dactivations_4_ce0_local;
reg   [2:0] dactivations_4_address0_local;
reg    dactivations_5_ce0_local;
reg   [2:0] dactivations_5_address0_local;
reg    dactivations_6_ce0_local;
reg   [2:0] dactivations_6_address0_local;
reg    dactivations_7_ce0_local;
reg   [2:0] dactivations_7_address0_local;
reg    oracle_activations_0_we0_local;
reg    oracle_activations_0_ce0_local;
reg   [2:0] oracle_activations_0_address0_local;
reg    oracle_activations_1_we0_local;
reg    oracle_activations_1_ce0_local;
reg   [2:0] oracle_activations_1_address0_local;
reg    oracle_activations_2_we0_local;
reg    oracle_activations_2_ce0_local;
reg   [2:0] oracle_activations_2_address0_local;
reg    oracle_activations_3_we0_local;
reg    oracle_activations_3_ce0_local;
reg   [2:0] oracle_activations_3_address0_local;
reg    oracle_activations_4_we0_local;
reg    oracle_activations_4_ce0_local;
reg   [2:0] oracle_activations_4_address0_local;
reg    oracle_activations_5_we0_local;
reg    oracle_activations_5_ce0_local;
reg   [2:0] oracle_activations_5_address0_local;
reg    oracle_activations_6_we0_local;
reg    oracle_activations_6_ce0_local;
reg   [2:0] oracle_activations_6_address0_local;
reg    oracle_activations_7_we0_local;
reg    oracle_activations_7_ce0_local;
reg   [2:0] oracle_activations_7_address0_local;
reg   [63:0] grp_fu_3134_p0;
reg   [63:0] grp_fu_3134_p1;
reg   [63:0] grp_fu_3139_p0;
reg   [63:0] grp_fu_3139_p1;
reg   [63:0] grp_fu_3144_p0;
reg   [63:0] grp_fu_3144_p1;
reg   [63:0] grp_fu_3149_p0;
reg   [63:0] grp_fu_3149_p1;
reg   [63:0] grp_fu_3154_p0;
reg   [63:0] grp_fu_3154_p1;
reg   [63:0] grp_fu_3159_p0;
reg   [63:0] grp_fu_3159_p1;
reg   [63:0] grp_fu_3164_p0;
reg   [63:0] grp_fu_3164_p1;
reg   [63:0] grp_fu_3169_p0;
reg   [63:0] grp_fu_3169_p1;
reg   [63:0] grp_fu_3174_p0;
reg   [63:0] grp_fu_3174_p1;
reg   [63:0] grp_fu_3179_p0;
reg   [63:0] grp_fu_3179_p1;
reg   [63:0] grp_fu_3184_p0;
reg   [63:0] grp_fu_3184_p1;
reg   [63:0] grp_fu_3189_p0;
reg   [63:0] grp_fu_3189_p1;
reg   [63:0] grp_fu_3194_p0;
reg   [63:0] grp_fu_3194_p1;
reg   [63:0] grp_fu_3199_p0;
reg   [63:0] grp_fu_3199_p1;
reg   [63:0] grp_fu_3204_p0;
reg   [63:0] grp_fu_3204_p1;
reg   [63:0] grp_fu_3209_p0;
reg   [63:0] grp_fu_3209_p1;
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
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_0_load_1_reg_7066 <= dactivations_0_q0;
        dactivations_1_load_1_reg_7071 <= dactivations_1_q0;
        dactivations_2_load_1_reg_7076 <= dactivations_2_q0;
        dactivations_3_load_1_reg_7081 <= dactivations_3_q0;
        dactivations_4_load_1_reg_7086 <= dactivations_4_q0;
        dactivations_5_load_1_reg_7091 <= dactivations_5_q0;
        dactivations_6_load_1_reg_7096 <= dactivations_6_q0;
        dactivations_7_load_1_reg_7101 <= dactivations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_0_load_2_reg_7146 <= dactivations_0_q0;
        dactivations_1_load_2_reg_7151 <= dactivations_1_q0;
        dactivations_2_load_2_reg_7156 <= dactivations_2_q0;
        dactivations_3_load_2_reg_7161 <= dactivations_3_q0;
        dactivations_4_load_2_reg_7166 <= dactivations_4_q0;
        dactivations_5_load_2_reg_7171 <= dactivations_5_q0;
        dactivations_6_load_2_reg_7176 <= dactivations_6_q0;
        dactivations_7_load_2_reg_7181 <= dactivations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_0_load_3_reg_7226 <= dactivations_0_q0;
        dactivations_1_load_3_reg_7231 <= dactivations_1_q0;
        dactivations_2_load_3_reg_7236 <= dactivations_2_q0;
        dactivations_3_load_3_reg_7241 <= dactivations_3_q0;
        dactivations_4_load_3_reg_7246 <= dactivations_4_q0;
        dactivations_5_load_3_reg_7251 <= dactivations_5_q0;
        dactivations_6_load_3_reg_7256 <= dactivations_6_q0;
        dactivations_7_load_3_reg_7261 <= dactivations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_0_load_4_reg_7306 <= dactivations_0_q0;
        dactivations_1_load_4_reg_7311 <= dactivations_1_q0;
        dactivations_2_load_4_reg_7316 <= dactivations_2_q0;
        dactivations_3_load_4_reg_7321 <= dactivations_3_q0;
        dactivations_4_load_4_reg_7326 <= dactivations_4_q0;
        dactivations_5_load_4_reg_7331 <= dactivations_5_q0;
        dactivations_6_load_4_reg_7336 <= dactivations_6_q0;
        dactivations_7_load_4_reg_7341 <= dactivations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_0_load_5_reg_7386 <= dactivations_0_q0;
        dactivations_1_load_5_reg_7391 <= dactivations_1_q0;
        dactivations_2_load_5_reg_7396 <= dactivations_2_q0;
        dactivations_3_load_5_reg_7401 <= dactivations_3_q0;
        dactivations_4_load_5_reg_7406 <= dactivations_4_q0;
        dactivations_5_load_5_reg_7411 <= dactivations_5_q0;
        dactivations_6_load_5_reg_7416 <= dactivations_6_q0;
        dactivations_7_load_5_reg_7421 <= dactivations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_0_load_6_reg_7466 <= dactivations_0_q0;
        dactivations_1_load_6_reg_7471 <= dactivations_1_q0;
        dactivations_2_load_6_reg_7476 <= dactivations_2_q0;
        dactivations_3_load_6_reg_7481 <= dactivations_3_q0;
        dactivations_4_load_6_reg_7486 <= dactivations_4_q0;
        dactivations_5_load_6_reg_7491 <= dactivations_5_q0;
        dactivations_6_load_6_reg_7496 <= dactivations_6_q0;
        dactivations_7_load_6_reg_7501 <= dactivations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_3230 <= weights3_0_q0;
        reg_3234 <= weights3_3_q0;
        reg_3238 <= weights3_6_q0;
        reg_3242 <= weights3_1_q0;
        reg_3246 <= weights3_4_q0;
        reg_3250 <= weights3_7_q0;
        reg_3254 <= weights3_2_q0;
        reg_3258 <= weights3_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_3262 <= grp_fu_3652_p_dout0;
        reg_3269 <= grp_fu_3656_p_dout0;
        reg_3276 <= grp_fu_3660_p_dout0;
        reg_3283 <= grp_fu_3664_p_dout0;
        reg_3290 <= grp_fu_3668_p_dout0;
        reg_3297 <= grp_fu_3672_p_dout0;
        reg_3304 <= grp_fu_3676_p_dout0;
        reg_3311 <= grp_fu_3680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_3318 <= grp_fu_3652_p_dout0;
        reg_3324 <= grp_fu_3656_p_dout0;
        reg_3330 <= grp_fu_3660_p_dout0;
        reg_3336 <= grp_fu_3664_p_dout0;
        reg_3342 <= grp_fu_3668_p_dout0;
        reg_3348 <= grp_fu_3672_p_dout0;
        reg_3354 <= grp_fu_3676_p_dout0;
        reg_3360 <= grp_fu_3680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_3366 <= grp_fu_3652_p_dout0;
        reg_3372 <= grp_fu_3656_p_dout0;
        reg_3378 <= grp_fu_3660_p_dout0;
        reg_3384 <= grp_fu_3664_p_dout0;
        reg_3390 <= grp_fu_3668_p_dout0;
        reg_3396 <= grp_fu_3672_p_dout0;
        reg_3402 <= grp_fu_3676_p_dout0;
        reg_3408 <= grp_fu_3680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12))) begin
        reg_3414 <= grp_fu_3652_p_dout0;
        reg_3420 <= grp_fu_3656_p_dout0;
        reg_3426 <= grp_fu_3660_p_dout0;
        reg_3432 <= grp_fu_3664_p_dout0;
        reg_3438 <= grp_fu_3668_p_dout0;
        reg_3444 <= grp_fu_3672_p_dout0;
        reg_3450 <= grp_fu_3676_p_dout0;
        reg_3456 <= grp_fu_3680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13))) begin
        reg_3462 <= grp_fu_3652_p_dout0;
        reg_3468 <= grp_fu_3656_p_dout0;
        reg_3474 <= grp_fu_3660_p_dout0;
        reg_3480 <= grp_fu_3664_p_dout0;
        reg_3486 <= grp_fu_3668_p_dout0;
        reg_3492 <= grp_fu_3672_p_dout0;
        reg_3498 <= grp_fu_3676_p_dout0;
        reg_3504 <= grp_fu_3680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14))) begin
        reg_3510 <= grp_fu_3652_p_dout0;
        reg_3516 <= grp_fu_3656_p_dout0;
        reg_3522 <= grp_fu_3660_p_dout0;
        reg_3528 <= grp_fu_3664_p_dout0;
        reg_3534 <= grp_fu_3668_p_dout0;
        reg_3540 <= grp_fu_3672_p_dout0;
        reg_3546 <= grp_fu_3676_p_dout0;
        reg_3552 <= grp_fu_3680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_3558 <= grp_fu_3652_p_dout0;
        reg_3564 <= grp_fu_3656_p_dout0;
        reg_3570 <= grp_fu_3660_p_dout0;
        reg_3576 <= grp_fu_3664_p_dout0;
        reg_3582 <= grp_fu_3668_p_dout0;
        reg_3588 <= grp_fu_3672_p_dout0;
        reg_3594 <= grp_fu_3676_p_dout0;
        reg_3600 <= grp_fu_3680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_3606 <= grp_fu_3652_p_dout0;
        reg_3612 <= grp_fu_3656_p_dout0;
        reg_3618 <= grp_fu_3660_p_dout0;
        reg_3624 <= grp_fu_3664_p_dout0;
        reg_3630 <= grp_fu_3668_p_dout0;
        reg_3636 <= grp_fu_3672_p_dout0;
        reg_3642 <= grp_fu_3676_p_dout0;
        reg_3648 <= grp_fu_3680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state17))) begin
        reg_3654 <= grp_fu_3556_p_dout0;
        reg_3660 <= grp_fu_3560_p_dout0;
        reg_3666 <= grp_fu_3564_p_dout0;
        reg_3672 <= grp_fu_3568_p_dout0;
        reg_3678 <= grp_fu_3572_p_dout0;
        reg_3684 <= grp_fu_3576_p_dout0;
        reg_3690 <= grp_fu_3580_p_dout0;
        reg_3696 <= grp_fu_3584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        reg_3702 <= grp_fu_3556_p_dout0;
        reg_3708 <= grp_fu_3560_p_dout0;
        reg_3714 <= grp_fu_3564_p_dout0;
        reg_3720 <= grp_fu_3568_p_dout0;
        reg_3726 <= grp_fu_3572_p_dout0;
        reg_3732 <= grp_fu_3576_p_dout0;
        reg_3738 <= grp_fu_3580_p_dout0;
        reg_3744 <= grp_fu_3584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        reg_3750 <= grp_fu_3556_p_dout0;
        reg_3756 <= grp_fu_3560_p_dout0;
        reg_3762 <= grp_fu_3564_p_dout0;
        reg_3768 <= grp_fu_3568_p_dout0;
        reg_3774 <= grp_fu_3572_p_dout0;
        reg_3780 <= grp_fu_3576_p_dout0;
        reg_3786 <= grp_fu_3580_p_dout0;
        reg_3792 <= grp_fu_3584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        reg_3798 <= grp_fu_3556_p_dout0;
        reg_3804 <= grp_fu_3560_p_dout0;
        reg_3810 <= grp_fu_3564_p_dout0;
        reg_3816 <= grp_fu_3568_p_dout0;
        reg_3822 <= grp_fu_3572_p_dout0;
        reg_3828 <= grp_fu_3576_p_dout0;
        reg_3834 <= grp_fu_3580_p_dout0;
        reg_3840 <= grp_fu_3584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        reg_3846 <= grp_fu_3556_p_dout0;
        reg_3852 <= grp_fu_3560_p_dout0;
        reg_3858 <= grp_fu_3564_p_dout0;
        reg_3864 <= grp_fu_3568_p_dout0;
        reg_3870 <= grp_fu_3572_p_dout0;
        reg_3876 <= grp_fu_3576_p_dout0;
        reg_3882 <= grp_fu_3580_p_dout0;
        reg_3888 <= grp_fu_3584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        reg_3894 <= grp_fu_3556_p_dout0;
        reg_3900 <= grp_fu_3560_p_dout0;
        reg_3906 <= grp_fu_3564_p_dout0;
        reg_3912 <= grp_fu_3568_p_dout0;
        reg_3918 <= grp_fu_3572_p_dout0;
        reg_3924 <= grp_fu_3576_p_dout0;
        reg_3930 <= grp_fu_3580_p_dout0;
        reg_3936 <= grp_fu_3584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        reg_3942 <= grp_fu_3556_p_dout0;
        reg_3948 <= grp_fu_3560_p_dout0;
        reg_3954 <= grp_fu_3564_p_dout0;
        reg_3960 <= grp_fu_3568_p_dout0;
        reg_3966 <= grp_fu_3572_p_dout0;
        reg_3972 <= grp_fu_3576_p_dout0;
        reg_3978 <= grp_fu_3580_p_dout0;
        reg_3984 <= grp_fu_3584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        reg_3990 <= grp_fu_3556_p_dout0;
        reg_3995 <= grp_fu_3560_p_dout0;
        reg_4000 <= grp_fu_3564_p_dout0;
        reg_4005 <= grp_fu_3568_p_dout0;
        reg_4010 <= grp_fu_3572_p_dout0;
        reg_4015 <= grp_fu_3576_p_dout0;
        reg_4020 <= grp_fu_3580_p_dout0;
        reg_4025 <= grp_fu_3584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state40))) begin
        reg_4030 <= dactivations_0_q0;
        reg_4035 <= dactivations_1_q0;
        reg_4040 <= dactivations_2_q0;
        reg_4045 <= dactivations_3_q0;
        reg_4050 <= dactivations_4_q0;
        reg_4055 <= dactivations_5_q0;
        reg_4060 <= dactivations_6_q0;
        reg_4065 <= dactivations_7_q0;
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
        dactivations_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_0_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_0_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_0_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_0_address0_local = 64'd0;
    end else begin
        dactivations_0_address0_local = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_1_address0_local = 64'd0;
    end else begin
        dactivations_1_address0_local = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_2_address0_local = 64'd0;
    end else begin
        dactivations_2_address0_local = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_3_address0_local = 64'd0;
    end else begin
        dactivations_3_address0_local = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_4_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_4_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_4_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_4_address0_local = 64'd0;
    end else begin
        dactivations_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32))) begin
        dactivations_4_ce0_local = 1'b1;
    end else begin
        dactivations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_5_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_5_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_5_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_5_address0_local = 64'd0;
    end else begin
        dactivations_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32))) begin
        dactivations_5_ce0_local = 1'b1;
    end else begin
        dactivations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_6_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_6_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_6_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_6_address0_local = 64'd0;
    end else begin
        dactivations_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32))) begin
        dactivations_6_ce0_local = 1'b1;
    end else begin
        dactivations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations_7_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        dactivations_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        dactivations_7_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        dactivations_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        dactivations_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        dactivations_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        dactivations_7_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        dactivations_7_address0_local = 64'd0;
    end else begin
        dactivations_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32))) begin
        dactivations_7_ce0_local = 1'b1;
    end else begin
        dactivations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3134_p0 = reg_3990;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3134_p0 = reg_3942;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3134_p0 = reg_3894;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3134_p0 = reg_3846;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3134_p0 = reg_3798;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3134_p0 = reg_3750;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3134_p0 = reg_3702;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3134_p0 = reg_3654;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3134_p0 = reg_3606;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3134_p0 = reg_3558;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3134_p0 = reg_3510;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3134_p0 = reg_3462;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3134_p0 = reg_3414;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3134_p0 = reg_3366;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3134_p0 = reg_3318;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3134_p0 = reg_3262;
    end else begin
        grp_fu_3134_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3134_p1 = reg_3606;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3134_p1 = reg_3558;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3134_p1 = reg_3510;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3134_p1 = reg_3462;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3134_p1 = reg_3414;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3134_p1 = reg_3366;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3134_p1 = reg_3318;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3134_p1 = reg_3262;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3134_p1 = 64'd0;
    end else begin
        grp_fu_3134_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3139_p0 = reg_3995;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3139_p0 = reg_3948;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3139_p0 = reg_3900;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3139_p0 = reg_3852;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3139_p0 = reg_3804;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3139_p0 = reg_3756;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3139_p0 = reg_3708;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3139_p0 = reg_3660;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3139_p0 = reg_3612;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3139_p0 = reg_3564;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3139_p0 = reg_3516;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3139_p0 = reg_3468;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3139_p0 = reg_3420;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3139_p0 = reg_3372;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3139_p0 = reg_3324;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3139_p0 = reg_3269;
    end else begin
        grp_fu_3139_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3139_p1 = reg_3612;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3139_p1 = reg_3564;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3139_p1 = reg_3516;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3139_p1 = reg_3468;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3139_p1 = reg_3420;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3139_p1 = reg_3372;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3139_p1 = reg_3324;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3139_p1 = reg_3269;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3139_p1 = 64'd0;
    end else begin
        grp_fu_3139_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3144_p0 = reg_4000;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3144_p0 = reg_3954;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3144_p0 = reg_3906;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3144_p0 = reg_3858;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3144_p0 = reg_3810;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3144_p0 = reg_3762;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3144_p0 = reg_3714;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3144_p0 = reg_3666;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3144_p0 = reg_3618;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3144_p0 = reg_3570;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3144_p0 = reg_3522;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3144_p0 = reg_3474;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3144_p0 = reg_3426;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3144_p0 = reg_3378;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3144_p0 = reg_3330;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3144_p0 = reg_3276;
    end else begin
        grp_fu_3144_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3144_p1 = reg_3618;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3144_p1 = reg_3570;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3144_p1 = reg_3522;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3144_p1 = reg_3474;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3144_p1 = reg_3426;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3144_p1 = reg_3378;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3144_p1 = reg_3330;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3144_p1 = reg_3276;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3144_p1 = 64'd0;
    end else begin
        grp_fu_3144_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3149_p0 = reg_4005;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3149_p0 = reg_3960;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3149_p0 = reg_3912;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3149_p0 = reg_3864;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3149_p0 = reg_3816;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3149_p0 = reg_3768;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3149_p0 = reg_3720;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3149_p0 = reg_3672;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3149_p0 = reg_3624;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3149_p0 = reg_3576;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3149_p0 = reg_3528;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3149_p0 = reg_3480;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3149_p0 = reg_3432;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3149_p0 = reg_3384;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3149_p0 = reg_3336;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3149_p0 = reg_3283;
    end else begin
        grp_fu_3149_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3149_p1 = reg_3624;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3149_p1 = reg_3576;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3149_p1 = reg_3528;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3149_p1 = reg_3480;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3149_p1 = reg_3432;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3149_p1 = reg_3384;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3149_p1 = reg_3336;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3149_p1 = reg_3283;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3149_p1 = 64'd0;
    end else begin
        grp_fu_3149_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3154_p0 = reg_4010;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3154_p0 = reg_3966;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3154_p0 = reg_3918;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3154_p0 = reg_3870;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3154_p0 = reg_3822;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3154_p0 = reg_3774;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3154_p0 = reg_3726;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3154_p0 = reg_3678;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3154_p0 = reg_3630;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3154_p0 = reg_3582;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3154_p0 = reg_3534;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3154_p0 = reg_3486;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3154_p0 = reg_3438;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3154_p0 = reg_3390;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3154_p0 = reg_3342;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3154_p0 = reg_3290;
    end else begin
        grp_fu_3154_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3154_p1 = reg_3630;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3154_p1 = reg_3582;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3154_p1 = reg_3534;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3154_p1 = reg_3486;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3154_p1 = reg_3438;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3154_p1 = reg_3390;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3154_p1 = reg_3342;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3154_p1 = reg_3290;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3154_p1 = 64'd0;
    end else begin
        grp_fu_3154_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3159_p0 = reg_4015;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3159_p0 = reg_3972;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3159_p0 = reg_3924;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3159_p0 = reg_3876;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3159_p0 = reg_3828;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3159_p0 = reg_3780;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3159_p0 = reg_3732;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3159_p0 = reg_3684;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3159_p0 = reg_3636;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3159_p0 = reg_3588;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3159_p0 = reg_3540;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3159_p0 = reg_3492;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3159_p0 = reg_3444;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3159_p0 = reg_3396;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3159_p0 = reg_3348;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3159_p0 = reg_3297;
    end else begin
        grp_fu_3159_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3159_p1 = reg_3636;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3159_p1 = reg_3588;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3159_p1 = reg_3540;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3159_p1 = reg_3492;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3159_p1 = reg_3444;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3159_p1 = reg_3396;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3159_p1 = reg_3348;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3159_p1 = reg_3297;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3159_p1 = 64'd0;
    end else begin
        grp_fu_3159_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3164_p0 = reg_4020;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3164_p0 = reg_3978;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3164_p0 = reg_3930;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3164_p0 = reg_3882;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3164_p0 = reg_3834;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3164_p0 = reg_3786;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3164_p0 = reg_3738;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3164_p0 = reg_3690;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3164_p0 = reg_3642;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3164_p0 = reg_3594;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3164_p0 = reg_3546;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3164_p0 = reg_3498;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3164_p0 = reg_3450;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3164_p0 = reg_3402;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3164_p0 = reg_3354;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3164_p0 = reg_3304;
    end else begin
        grp_fu_3164_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3164_p1 = reg_3642;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3164_p1 = reg_3594;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3164_p1 = reg_3546;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3164_p1 = reg_3498;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3164_p1 = reg_3450;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3164_p1 = reg_3402;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3164_p1 = reg_3354;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3164_p1 = reg_3304;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3164_p1 = 64'd0;
    end else begin
        grp_fu_3164_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3169_p0 = reg_4025;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3169_p0 = reg_3984;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3169_p0 = reg_3936;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3169_p0 = reg_3888;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3169_p0 = reg_3840;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3169_p0 = reg_3792;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3169_p0 = reg_3744;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3169_p0 = reg_3696;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3169_p0 = reg_3648;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3169_p0 = reg_3600;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3169_p0 = reg_3552;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3169_p0 = reg_3504;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3169_p0 = reg_3456;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3169_p0 = reg_3408;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3169_p0 = reg_3360;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3169_p0 = reg_3311;
    end else begin
        grp_fu_3169_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        grp_fu_3169_p1 = reg_3648;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_3169_p1 = reg_3600;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_fu_3169_p1 = reg_3552;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        grp_fu_3169_p1 = reg_3504;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_3169_p1 = reg_3456;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3169_p1 = reg_3408;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3169_p1 = reg_3360;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_3169_p1 = reg_3311;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_3169_p1 = 64'd0;
    end else begin
        grp_fu_3169_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3174_p0 = reg_3942;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3174_p0 = reg_3894;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3174_p0 = reg_3846;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3174_p0 = reg_3798;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3174_p0 = reg_3750;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3174_p0 = reg_3702;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3174_p0 = reg_3654;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3174_p0 = bitcast_ln85_170_fu_4990_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3174_p0 = bitcast_ln85_146_fu_4950_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3174_p0 = bitcast_ln85_122_fu_4910_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3174_p0 = bitcast_ln85_98_fu_4870_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3174_p0 = bitcast_ln85_74_fu_4830_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3174_p0 = bitcast_ln85_50_fu_4790_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3174_p0 = bitcast_ln85_26_fu_4750_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3174_p0 = bitcast_ln85_2_fu_4710_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3174_p0 = bitcast_ln85_169_fu_4670_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3174_p0 = bitcast_ln85_145_fu_4630_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3174_p0 = bitcast_ln85_121_fu_4590_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3174_p0 = bitcast_ln85_97_fu_4550_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3174_p0 = bitcast_ln85_73_fu_4510_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3174_p0 = bitcast_ln85_49_fu_4470_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3174_p0 = bitcast_ln85_25_fu_4430_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3174_p0 = bitcast_ln85_1_fu_4390_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3174_p0 = bitcast_ln85_168_fu_4350_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3174_p0 = bitcast_ln85_144_fu_4310_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3174_p0 = bitcast_ln85_120_fu_4270_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3174_p0 = bitcast_ln85_96_fu_4230_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3174_p0 = bitcast_ln85_72_fu_4190_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3174_p0 = bitcast_ln85_48_fu_4150_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3174_p0 = bitcast_ln85_24_fu_4110_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3174_p0 = bitcast_ln85_fu_4070_p1;
    end else begin
        grp_fu_3174_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3174_p1 = dactivations_0_load_6_reg_7466;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3174_p1 = dactivations_0_load_5_reg_7386;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3174_p1 = dactivations_0_load_4_reg_7306;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3174_p1 = dactivations_0_load_3_reg_7226;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3174_p1 = dactivations_0_load_2_reg_7146;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3174_p1 = dactivations_0_load_1_reg_7066;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3174_p1 = reg_4030;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3174_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3174_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3174_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3174_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3179_p0 = reg_3948;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3179_p0 = reg_3900;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3179_p0 = reg_3852;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3179_p0 = reg_3804;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3179_p0 = reg_3756;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3179_p0 = reg_3708;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3179_p0 = reg_3660;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3179_p0 = bitcast_ln85_173_fu_4995_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3179_p0 = bitcast_ln85_149_fu_4955_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3179_p0 = bitcast_ln85_125_fu_4915_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3179_p0 = bitcast_ln85_101_fu_4875_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3179_p0 = bitcast_ln85_77_fu_4835_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3179_p0 = bitcast_ln85_53_fu_4795_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3179_p0 = bitcast_ln85_29_fu_4755_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3179_p0 = bitcast_ln85_5_fu_4715_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3179_p0 = bitcast_ln85_172_fu_4675_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3179_p0 = bitcast_ln85_148_fu_4635_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3179_p0 = bitcast_ln85_124_fu_4595_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3179_p0 = bitcast_ln85_100_fu_4555_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3179_p0 = bitcast_ln85_76_fu_4515_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3179_p0 = bitcast_ln85_52_fu_4475_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3179_p0 = bitcast_ln85_28_fu_4435_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3179_p0 = bitcast_ln85_4_fu_4395_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3179_p0 = bitcast_ln85_171_fu_4355_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3179_p0 = bitcast_ln85_147_fu_4315_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3179_p0 = bitcast_ln85_123_fu_4275_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3179_p0 = bitcast_ln85_99_fu_4235_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3179_p0 = bitcast_ln85_75_fu_4195_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3179_p0 = bitcast_ln85_51_fu_4155_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3179_p0 = bitcast_ln85_27_fu_4115_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3179_p0 = bitcast_ln85_3_fu_4075_p1;
    end else begin
        grp_fu_3179_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3179_p1 = dactivations_1_load_6_reg_7471;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3179_p1 = dactivations_1_load_5_reg_7391;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3179_p1 = dactivations_1_load_4_reg_7311;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3179_p1 = dactivations_1_load_3_reg_7231;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3179_p1 = dactivations_1_load_2_reg_7151;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3179_p1 = dactivations_1_load_1_reg_7071;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3179_p1 = reg_4035;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3179_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3179_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3179_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3179_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3184_p0 = reg_3954;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3184_p0 = reg_3906;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3184_p0 = reg_3858;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3184_p0 = reg_3810;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3184_p0 = reg_3762;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3184_p0 = reg_3714;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3184_p0 = reg_3666;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3184_p0 = bitcast_ln85_176_fu_5000_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3184_p0 = bitcast_ln85_152_fu_4960_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3184_p0 = bitcast_ln85_128_fu_4920_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3184_p0 = bitcast_ln85_104_fu_4880_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3184_p0 = bitcast_ln85_80_fu_4840_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3184_p0 = bitcast_ln85_56_fu_4800_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3184_p0 = bitcast_ln85_32_fu_4760_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3184_p0 = bitcast_ln85_8_fu_4720_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3184_p0 = bitcast_ln85_175_fu_4680_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3184_p0 = bitcast_ln85_151_fu_4640_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3184_p0 = bitcast_ln85_127_fu_4600_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3184_p0 = bitcast_ln85_103_fu_4560_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3184_p0 = bitcast_ln85_79_fu_4520_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3184_p0 = bitcast_ln85_55_fu_4480_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3184_p0 = bitcast_ln85_31_fu_4440_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3184_p0 = bitcast_ln85_7_fu_4400_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3184_p0 = bitcast_ln85_174_fu_4360_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3184_p0 = bitcast_ln85_150_fu_4320_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3184_p0 = bitcast_ln85_126_fu_4280_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3184_p0 = bitcast_ln85_102_fu_4240_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3184_p0 = bitcast_ln85_78_fu_4200_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3184_p0 = bitcast_ln85_54_fu_4160_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3184_p0 = bitcast_ln85_30_fu_4120_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3184_p0 = bitcast_ln85_6_fu_4080_p1;
    end else begin
        grp_fu_3184_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3184_p1 = dactivations_2_load_6_reg_7476;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3184_p1 = dactivations_2_load_5_reg_7396;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3184_p1 = dactivations_2_load_4_reg_7316;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3184_p1 = dactivations_2_load_3_reg_7236;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3184_p1 = dactivations_2_load_2_reg_7156;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3184_p1 = dactivations_2_load_1_reg_7076;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3184_p1 = reg_4040;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3184_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3184_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3184_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3184_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3189_p0 = reg_3960;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3189_p0 = reg_3912;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3189_p0 = reg_3864;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3189_p0 = reg_3816;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3189_p0 = reg_3768;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3189_p0 = reg_3720;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3189_p0 = reg_3672;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3189_p0 = bitcast_ln85_179_fu_5005_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3189_p0 = bitcast_ln85_155_fu_4965_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3189_p0 = bitcast_ln85_131_fu_4925_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3189_p0 = bitcast_ln85_107_fu_4885_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3189_p0 = bitcast_ln85_83_fu_4845_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3189_p0 = bitcast_ln85_59_fu_4805_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3189_p0 = bitcast_ln85_35_fu_4765_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3189_p0 = bitcast_ln85_11_fu_4725_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3189_p0 = bitcast_ln85_178_fu_4685_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3189_p0 = bitcast_ln85_154_fu_4645_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3189_p0 = bitcast_ln85_130_fu_4605_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3189_p0 = bitcast_ln85_106_fu_4565_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3189_p0 = bitcast_ln85_82_fu_4525_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3189_p0 = bitcast_ln85_58_fu_4485_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3189_p0 = bitcast_ln85_34_fu_4445_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3189_p0 = bitcast_ln85_10_fu_4405_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3189_p0 = bitcast_ln85_177_fu_4365_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3189_p0 = bitcast_ln85_153_fu_4325_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3189_p0 = bitcast_ln85_129_fu_4285_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3189_p0 = bitcast_ln85_105_fu_4245_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3189_p0 = bitcast_ln85_81_fu_4205_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3189_p0 = bitcast_ln85_57_fu_4165_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3189_p0 = bitcast_ln85_33_fu_4125_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3189_p0 = bitcast_ln85_9_fu_4085_p1;
    end else begin
        grp_fu_3189_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3189_p1 = dactivations_3_load_6_reg_7481;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3189_p1 = dactivations_3_load_5_reg_7401;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3189_p1 = dactivations_3_load_4_reg_7321;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3189_p1 = dactivations_3_load_3_reg_7241;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3189_p1 = dactivations_3_load_2_reg_7161;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3189_p1 = dactivations_3_load_1_reg_7081;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3189_p1 = reg_4045;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3189_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3189_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3189_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3189_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3194_p0 = reg_3966;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3194_p0 = reg_3918;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3194_p0 = reg_3870;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3194_p0 = reg_3822;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3194_p0 = reg_3774;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3194_p0 = reg_3726;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3194_p0 = reg_3678;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3194_p0 = bitcast_ln85_182_fu_5010_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3194_p0 = bitcast_ln85_158_fu_4970_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3194_p0 = bitcast_ln85_134_fu_4930_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3194_p0 = bitcast_ln85_110_fu_4890_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3194_p0 = bitcast_ln85_86_fu_4850_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3194_p0 = bitcast_ln85_62_fu_4810_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3194_p0 = bitcast_ln85_38_fu_4770_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3194_p0 = bitcast_ln85_14_fu_4730_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3194_p0 = bitcast_ln85_181_fu_4690_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3194_p0 = bitcast_ln85_157_fu_4650_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3194_p0 = bitcast_ln85_133_fu_4610_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3194_p0 = bitcast_ln85_109_fu_4570_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3194_p0 = bitcast_ln85_85_fu_4530_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3194_p0 = bitcast_ln85_61_fu_4490_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3194_p0 = bitcast_ln85_37_fu_4450_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3194_p0 = bitcast_ln85_13_fu_4410_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3194_p0 = bitcast_ln85_180_fu_4370_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3194_p0 = bitcast_ln85_156_fu_4330_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3194_p0 = bitcast_ln85_132_fu_4290_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3194_p0 = bitcast_ln85_108_fu_4250_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3194_p0 = bitcast_ln85_84_fu_4210_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3194_p0 = bitcast_ln85_60_fu_4170_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3194_p0 = bitcast_ln85_36_fu_4130_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3194_p0 = bitcast_ln85_12_fu_4090_p1;
    end else begin
        grp_fu_3194_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3194_p1 = dactivations_4_load_6_reg_7486;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3194_p1 = dactivations_4_load_5_reg_7406;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3194_p1 = dactivations_4_load_4_reg_7326;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3194_p1 = dactivations_4_load_3_reg_7246;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3194_p1 = dactivations_4_load_2_reg_7166;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3194_p1 = dactivations_4_load_1_reg_7086;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3194_p1 = reg_4050;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3194_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3194_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3194_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3194_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3199_p0 = reg_3972;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3199_p0 = reg_3924;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3199_p0 = reg_3876;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3199_p0 = reg_3828;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3199_p0 = reg_3780;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3199_p0 = reg_3732;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3199_p0 = reg_3684;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3199_p0 = bitcast_ln85_185_fu_5015_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3199_p0 = bitcast_ln85_161_fu_4975_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3199_p0 = bitcast_ln85_137_fu_4935_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3199_p0 = bitcast_ln85_113_fu_4895_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3199_p0 = bitcast_ln85_89_fu_4855_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3199_p0 = bitcast_ln85_65_fu_4815_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3199_p0 = bitcast_ln85_41_fu_4775_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3199_p0 = bitcast_ln85_17_fu_4735_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3199_p0 = bitcast_ln85_184_fu_4695_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3199_p0 = bitcast_ln85_160_fu_4655_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3199_p0 = bitcast_ln85_136_fu_4615_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3199_p0 = bitcast_ln85_112_fu_4575_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3199_p0 = bitcast_ln85_88_fu_4535_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3199_p0 = bitcast_ln85_64_fu_4495_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3199_p0 = bitcast_ln85_40_fu_4455_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3199_p0 = bitcast_ln85_16_fu_4415_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3199_p0 = bitcast_ln85_183_fu_4375_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3199_p0 = bitcast_ln85_159_fu_4335_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3199_p0 = bitcast_ln85_135_fu_4295_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3199_p0 = bitcast_ln85_111_fu_4255_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3199_p0 = bitcast_ln85_87_fu_4215_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3199_p0 = bitcast_ln85_63_fu_4175_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3199_p0 = bitcast_ln85_39_fu_4135_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3199_p0 = bitcast_ln85_15_fu_4095_p1;
    end else begin
        grp_fu_3199_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3199_p1 = dactivations_5_load_6_reg_7491;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3199_p1 = dactivations_5_load_5_reg_7411;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3199_p1 = dactivations_5_load_4_reg_7331;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3199_p1 = dactivations_5_load_3_reg_7251;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3199_p1 = dactivations_5_load_2_reg_7171;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3199_p1 = dactivations_5_load_1_reg_7091;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3199_p1 = reg_4055;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3199_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3199_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3199_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3199_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3204_p0 = reg_3978;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3204_p0 = reg_3930;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3204_p0 = reg_3882;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3204_p0 = reg_3834;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3204_p0 = reg_3786;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3204_p0 = reg_3738;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3204_p0 = reg_3690;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3204_p0 = bitcast_ln85_188_fu_5020_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3204_p0 = bitcast_ln85_164_fu_4980_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3204_p0 = bitcast_ln85_140_fu_4940_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3204_p0 = bitcast_ln85_116_fu_4900_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3204_p0 = bitcast_ln85_92_fu_4860_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3204_p0 = bitcast_ln85_68_fu_4820_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3204_p0 = bitcast_ln85_44_fu_4780_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3204_p0 = bitcast_ln85_20_fu_4740_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3204_p0 = bitcast_ln85_187_fu_4700_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3204_p0 = bitcast_ln85_163_fu_4660_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3204_p0 = bitcast_ln85_139_fu_4620_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3204_p0 = bitcast_ln85_115_fu_4580_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3204_p0 = bitcast_ln85_91_fu_4540_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3204_p0 = bitcast_ln85_67_fu_4500_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3204_p0 = bitcast_ln85_43_fu_4460_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3204_p0 = bitcast_ln85_19_fu_4420_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3204_p0 = bitcast_ln85_186_fu_4380_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3204_p0 = bitcast_ln85_162_fu_4340_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3204_p0 = bitcast_ln85_138_fu_4300_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3204_p0 = bitcast_ln85_114_fu_4260_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3204_p0 = bitcast_ln85_90_fu_4220_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3204_p0 = bitcast_ln85_66_fu_4180_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3204_p0 = bitcast_ln85_42_fu_4140_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3204_p0 = bitcast_ln85_18_fu_4100_p1;
    end else begin
        grp_fu_3204_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3204_p1 = dactivations_6_load_6_reg_7496;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3204_p1 = dactivations_6_load_5_reg_7416;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3204_p1 = dactivations_6_load_4_reg_7336;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3204_p1 = dactivations_6_load_3_reg_7256;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3204_p1 = dactivations_6_load_2_reg_7176;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3204_p1 = dactivations_6_load_1_reg_7096;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3204_p1 = reg_4060;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3204_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3204_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3204_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3204_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3209_p0 = reg_3984;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3209_p0 = reg_3936;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3209_p0 = reg_3888;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3209_p0 = reg_3840;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3209_p0 = reg_3792;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3209_p0 = reg_3744;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3209_p0 = reg_3696;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3209_p0 = bitcast_ln85_191_fu_5025_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3209_p0 = bitcast_ln85_167_fu_4985_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3209_p0 = bitcast_ln85_143_fu_4945_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3209_p0 = bitcast_ln85_119_fu_4905_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3209_p0 = bitcast_ln85_95_fu_4865_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3209_p0 = bitcast_ln85_71_fu_4825_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3209_p0 = bitcast_ln85_47_fu_4785_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3209_p0 = bitcast_ln85_23_fu_4745_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3209_p0 = bitcast_ln85_190_fu_4705_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3209_p0 = bitcast_ln85_166_fu_4665_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3209_p0 = bitcast_ln85_142_fu_4625_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3209_p0 = bitcast_ln85_118_fu_4585_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3209_p0 = bitcast_ln85_94_fu_4545_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3209_p0 = bitcast_ln85_70_fu_4505_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3209_p0 = bitcast_ln85_46_fu_4465_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3209_p0 = bitcast_ln85_22_fu_4425_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3209_p0 = bitcast_ln85_189_fu_4385_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_3209_p0 = bitcast_ln85_165_fu_4345_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_3209_p0 = bitcast_ln85_141_fu_4305_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_3209_p0 = bitcast_ln85_117_fu_4265_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_3209_p0 = bitcast_ln85_93_fu_4225_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_3209_p0 = bitcast_ln85_69_fu_4185_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_3209_p0 = bitcast_ln85_45_fu_4145_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_3209_p0 = bitcast_ln85_21_fu_4105_p1;
    end else begin
        grp_fu_3209_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3209_p1 = dactivations_7_load_6_reg_7501;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3209_p1 = dactivations_7_load_5_reg_7421;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3209_p1 = dactivations_7_load_4_reg_7341;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3209_p1 = dactivations_7_load_3_reg_7261;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3209_p1 = dactivations_7_load_2_reg_7181;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3209_p1 = dactivations_7_load_1_reg_7101;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_3209_p1 = reg_4065;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3209_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3209_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_3209_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3209_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_0_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_0_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_0_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_0_address0_local = 64'd0;
    end else begin
        oracle_activations_0_address0_local = 'bx;
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
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_1_address0_local = 64'd0;
    end else begin
        oracle_activations_1_address0_local = 'bx;
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
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_2_address0_local = 64'd0;
    end else begin
        oracle_activations_2_address0_local = 'bx;
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
        oracle_activations_2_we0_local = 1'b1;
    end else begin
        oracle_activations_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_3_address0_local = 64'd0;
    end else begin
        oracle_activations_3_address0_local = 'bx;
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
        oracle_activations_3_we0_local = 1'b1;
    end else begin
        oracle_activations_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_4_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_4_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_4_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_4_address0_local = 64'd0;
    end else begin
        oracle_activations_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_4_ce0_local = 1'b1;
    end else begin
        oracle_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_4_we0_local = 1'b1;
    end else begin
        oracle_activations_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_5_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_5_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_5_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_5_address0_local = 64'd0;
    end else begin
        oracle_activations_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_5_ce0_local = 1'b1;
    end else begin
        oracle_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_5_we0_local = 1'b1;
    end else begin
        oracle_activations_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_6_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_6_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_6_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_6_address0_local = 64'd0;
    end else begin
        oracle_activations_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_6_ce0_local = 1'b1;
    end else begin
        oracle_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_6_we0_local = 1'b1;
    end else begin
        oracle_activations_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        oracle_activations_7_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        oracle_activations_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        oracle_activations_7_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        oracle_activations_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        oracle_activations_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        oracle_activations_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        oracle_activations_7_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        oracle_activations_7_address0_local = 64'd0;
    end else begin
        oracle_activations_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_7_ce0_local = 1'b1;
    end else begin
        oracle_activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state48))) begin
        oracle_activations_7_we0_local = 1'b1;
    end else begin
        oracle_activations_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_0_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_0_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_0_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_0_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_0_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_0_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_0_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_0_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_0_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_0_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_0_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_0_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_0_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_0_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_0_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_0_address0_local = 64'd0;
    end else begin
        weights3_0_address0_local = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_1_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_1_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_1_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_1_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_1_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_1_address0_local = 64'd1;
    end else begin
        weights3_1_address0_local = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_2_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_2_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_2_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_2_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_2_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_2_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_2_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_2_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_2_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_2_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_2_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_2_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_2_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_2_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_2_address0_local = 64'd2;
    end else begin
        weights3_2_address0_local = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_3_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_3_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_3_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_3_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_3_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_3_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_3_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_3_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_3_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_3_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_3_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_3_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_3_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_3_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_3_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_3_address0_local = 64'd0;
    end else begin
        weights3_3_address0_local = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_4_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_4_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_4_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_4_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_4_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_4_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_4_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_4_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_4_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_4_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_4_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_4_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_4_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_4_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_4_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_4_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_4_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_4_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_4_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_4_address0_local = 64'd1;
    end else begin
        weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_4_ce0_local = 1'b1;
    end else begin
        weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_5_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_5_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_5_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_5_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_5_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_5_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_5_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_5_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_5_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_5_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_5_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_5_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_5_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_5_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_5_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_5_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_5_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_5_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_5_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_5_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_5_address0_local = 64'd2;
    end else begin
        weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_5_ce0_local = 1'b1;
    end else begin
        weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_6_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_6_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_6_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_6_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_6_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_6_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_6_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_6_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_6_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_6_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_6_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_6_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_6_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_6_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_6_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_6_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_6_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_6_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_6_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_6_address0_local = 64'd0;
    end else begin
        weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_6_ce0_local = 1'b1;
    end else begin
        weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_7_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_7_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_7_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_7_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_7_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_7_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_7_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_7_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_7_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_7_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_7_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_7_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_7_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_7_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_7_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_7_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_7_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_7_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_7_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_7_address0_local = 64'd1;
    end else begin
        weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_7_ce0_local = 1'b1;
    end else begin
        weights3_7_ce0_local = 1'b0;
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
assign bitcast_ln85_100_fu_4555_p1 = reg_3246;
assign bitcast_ln85_101_fu_4875_p1 = reg_3258;
assign bitcast_ln85_102_fu_4240_p1 = reg_3238;
assign bitcast_ln85_103_fu_4560_p1 = reg_3250;
assign bitcast_ln85_104_fu_4880_p1 = reg_3230;
assign bitcast_ln85_105_fu_4245_p1 = reg_3242;
assign bitcast_ln85_106_fu_4565_p1 = reg_3254;
assign bitcast_ln85_107_fu_4885_p1 = reg_3234;
assign bitcast_ln85_108_fu_4250_p1 = reg_3246;
assign bitcast_ln85_109_fu_4570_p1 = reg_3258;
assign bitcast_ln85_10_fu_4405_p1 = reg_3254;
assign bitcast_ln85_110_fu_4890_p1 = reg_3238;
assign bitcast_ln85_111_fu_4255_p1 = reg_3250;
assign bitcast_ln85_112_fu_4575_p1 = reg_3230;
assign bitcast_ln85_113_fu_4895_p1 = reg_3242;
assign bitcast_ln85_114_fu_4260_p1 = reg_3254;
assign bitcast_ln85_115_fu_4580_p1 = reg_3234;
assign bitcast_ln85_116_fu_4900_p1 = reg_3246;
assign bitcast_ln85_117_fu_4265_p1 = reg_3258;
assign bitcast_ln85_118_fu_4585_p1 = reg_3238;
assign bitcast_ln85_119_fu_4905_p1 = reg_3250;
assign bitcast_ln85_11_fu_4725_p1 = reg_3234;
assign bitcast_ln85_120_fu_4270_p1 = reg_3230;
assign bitcast_ln85_121_fu_4590_p1 = reg_3242;
assign bitcast_ln85_122_fu_4910_p1 = reg_3254;
assign bitcast_ln85_123_fu_4275_p1 = reg_3234;
assign bitcast_ln85_124_fu_4595_p1 = reg_3246;
assign bitcast_ln85_125_fu_4915_p1 = reg_3258;
assign bitcast_ln85_126_fu_4280_p1 = reg_3238;
assign bitcast_ln85_127_fu_4600_p1 = reg_3250;
assign bitcast_ln85_128_fu_4920_p1 = reg_3230;
assign bitcast_ln85_129_fu_4285_p1 = reg_3242;
assign bitcast_ln85_12_fu_4090_p1 = reg_3246;
assign bitcast_ln85_130_fu_4605_p1 = reg_3254;
assign bitcast_ln85_131_fu_4925_p1 = reg_3234;
assign bitcast_ln85_132_fu_4290_p1 = reg_3246;
assign bitcast_ln85_133_fu_4610_p1 = reg_3258;
assign bitcast_ln85_134_fu_4930_p1 = reg_3238;
assign bitcast_ln85_135_fu_4295_p1 = reg_3250;
assign bitcast_ln85_136_fu_4615_p1 = reg_3230;
assign bitcast_ln85_137_fu_4935_p1 = reg_3242;
assign bitcast_ln85_138_fu_4300_p1 = reg_3254;
assign bitcast_ln85_139_fu_4620_p1 = reg_3234;
assign bitcast_ln85_13_fu_4410_p1 = reg_3258;
assign bitcast_ln85_140_fu_4940_p1 = reg_3246;
assign bitcast_ln85_141_fu_4305_p1 = reg_3258;
assign bitcast_ln85_142_fu_4625_p1 = reg_3238;
assign bitcast_ln85_143_fu_4945_p1 = reg_3250;
assign bitcast_ln85_144_fu_4310_p1 = reg_3230;
assign bitcast_ln85_145_fu_4630_p1 = reg_3242;
assign bitcast_ln85_146_fu_4950_p1 = reg_3254;
assign bitcast_ln85_147_fu_4315_p1 = reg_3234;
assign bitcast_ln85_148_fu_4635_p1 = reg_3246;
assign bitcast_ln85_149_fu_4955_p1 = reg_3258;
assign bitcast_ln85_14_fu_4730_p1 = reg_3238;
assign bitcast_ln85_150_fu_4320_p1 = reg_3238;
assign bitcast_ln85_151_fu_4640_p1 = reg_3250;
assign bitcast_ln85_152_fu_4960_p1 = reg_3230;
assign bitcast_ln85_153_fu_4325_p1 = reg_3242;
assign bitcast_ln85_154_fu_4645_p1 = reg_3254;
assign bitcast_ln85_155_fu_4965_p1 = reg_3234;
assign bitcast_ln85_156_fu_4330_p1 = reg_3246;
assign bitcast_ln85_157_fu_4650_p1 = reg_3258;
assign bitcast_ln85_158_fu_4970_p1 = reg_3238;
assign bitcast_ln85_159_fu_4335_p1 = reg_3250;
assign bitcast_ln85_15_fu_4095_p1 = reg_3250;
assign bitcast_ln85_160_fu_4655_p1 = reg_3230;
assign bitcast_ln85_161_fu_4975_p1 = reg_3242;
assign bitcast_ln85_162_fu_4340_p1 = reg_3254;
assign bitcast_ln85_163_fu_4660_p1 = reg_3234;
assign bitcast_ln85_164_fu_4980_p1 = reg_3246;
assign bitcast_ln85_165_fu_4345_p1 = reg_3258;
assign bitcast_ln85_166_fu_4665_p1 = reg_3238;
assign bitcast_ln85_167_fu_4985_p1 = reg_3250;
assign bitcast_ln85_168_fu_4350_p1 = reg_3230;
assign bitcast_ln85_169_fu_4670_p1 = reg_3242;
assign bitcast_ln85_16_fu_4415_p1 = reg_3230;
assign bitcast_ln85_170_fu_4990_p1 = reg_3254;
assign bitcast_ln85_171_fu_4355_p1 = reg_3234;
assign bitcast_ln85_172_fu_4675_p1 = reg_3246;
assign bitcast_ln85_173_fu_4995_p1 = reg_3258;
assign bitcast_ln85_174_fu_4360_p1 = reg_3238;
assign bitcast_ln85_175_fu_4680_p1 = reg_3250;
assign bitcast_ln85_176_fu_5000_p1 = reg_3230;
assign bitcast_ln85_177_fu_4365_p1 = reg_3242;
assign bitcast_ln85_178_fu_4685_p1 = reg_3254;
assign bitcast_ln85_179_fu_5005_p1 = reg_3234;
assign bitcast_ln85_17_fu_4735_p1 = reg_3242;
assign bitcast_ln85_180_fu_4370_p1 = reg_3246;
assign bitcast_ln85_181_fu_4690_p1 = reg_3258;
assign bitcast_ln85_182_fu_5010_p1 = reg_3238;
assign bitcast_ln85_183_fu_4375_p1 = reg_3250;
assign bitcast_ln85_184_fu_4695_p1 = reg_3230;
assign bitcast_ln85_185_fu_5015_p1 = reg_3242;
assign bitcast_ln85_186_fu_4380_p1 = reg_3254;
assign bitcast_ln85_187_fu_4700_p1 = reg_3234;
assign bitcast_ln85_188_fu_5020_p1 = reg_3246;
assign bitcast_ln85_189_fu_4385_p1 = reg_3258;
assign bitcast_ln85_18_fu_4100_p1 = reg_3254;
assign bitcast_ln85_190_fu_4705_p1 = reg_3238;
assign bitcast_ln85_191_fu_5025_p1 = reg_3250;
assign bitcast_ln85_19_fu_4420_p1 = reg_3234;
assign bitcast_ln85_1_fu_4390_p1 = reg_3242;
assign bitcast_ln85_20_fu_4740_p1 = reg_3246;
assign bitcast_ln85_21_fu_4105_p1 = reg_3258;
assign bitcast_ln85_22_fu_4425_p1 = reg_3238;
assign bitcast_ln85_23_fu_4745_p1 = reg_3250;
assign bitcast_ln85_24_fu_4110_p1 = reg_3230;
assign bitcast_ln85_25_fu_4430_p1 = reg_3242;
assign bitcast_ln85_26_fu_4750_p1 = reg_3254;
assign bitcast_ln85_27_fu_4115_p1 = reg_3234;
assign bitcast_ln85_28_fu_4435_p1 = reg_3246;
assign bitcast_ln85_29_fu_4755_p1 = reg_3258;
assign bitcast_ln85_2_fu_4710_p1 = reg_3254;
assign bitcast_ln85_30_fu_4120_p1 = reg_3238;
assign bitcast_ln85_31_fu_4440_p1 = reg_3250;
assign bitcast_ln85_32_fu_4760_p1 = reg_3230;
assign bitcast_ln85_33_fu_4125_p1 = reg_3242;
assign bitcast_ln85_34_fu_4445_p1 = reg_3254;
assign bitcast_ln85_35_fu_4765_p1 = reg_3234;
assign bitcast_ln85_36_fu_4130_p1 = reg_3246;
assign bitcast_ln85_37_fu_4450_p1 = reg_3258;
assign bitcast_ln85_38_fu_4770_p1 = reg_3238;
assign bitcast_ln85_39_fu_4135_p1 = reg_3250;
assign bitcast_ln85_3_fu_4075_p1 = reg_3234;
assign bitcast_ln85_40_fu_4455_p1 = reg_3230;
assign bitcast_ln85_41_fu_4775_p1 = reg_3242;
assign bitcast_ln85_42_fu_4140_p1 = reg_3254;
assign bitcast_ln85_43_fu_4460_p1 = reg_3234;
assign bitcast_ln85_44_fu_4780_p1 = reg_3246;
assign bitcast_ln85_45_fu_4145_p1 = reg_3258;
assign bitcast_ln85_46_fu_4465_p1 = reg_3238;
assign bitcast_ln85_47_fu_4785_p1 = reg_3250;
assign bitcast_ln85_48_fu_4150_p1 = reg_3230;
assign bitcast_ln85_49_fu_4470_p1 = reg_3242;
assign bitcast_ln85_4_fu_4395_p1 = reg_3246;
assign bitcast_ln85_50_fu_4790_p1 = reg_3254;
assign bitcast_ln85_51_fu_4155_p1 = reg_3234;
assign bitcast_ln85_52_fu_4475_p1 = reg_3246;
assign bitcast_ln85_53_fu_4795_p1 = reg_3258;
assign bitcast_ln85_54_fu_4160_p1 = reg_3238;
assign bitcast_ln85_55_fu_4480_p1 = reg_3250;
assign bitcast_ln85_56_fu_4800_p1 = reg_3230;
assign bitcast_ln85_57_fu_4165_p1 = reg_3242;
assign bitcast_ln85_58_fu_4485_p1 = reg_3254;
assign bitcast_ln85_59_fu_4805_p1 = reg_3234;
assign bitcast_ln85_5_fu_4715_p1 = reg_3258;
assign bitcast_ln85_60_fu_4170_p1 = reg_3246;
assign bitcast_ln85_61_fu_4490_p1 = reg_3258;
assign bitcast_ln85_62_fu_4810_p1 = reg_3238;
assign bitcast_ln85_63_fu_4175_p1 = reg_3250;
assign bitcast_ln85_64_fu_4495_p1 = reg_3230;
assign bitcast_ln85_65_fu_4815_p1 = reg_3242;
assign bitcast_ln85_66_fu_4180_p1 = reg_3254;
assign bitcast_ln85_67_fu_4500_p1 = reg_3234;
assign bitcast_ln85_68_fu_4820_p1 = reg_3246;
assign bitcast_ln85_69_fu_4185_p1 = reg_3258;
assign bitcast_ln85_6_fu_4080_p1 = reg_3238;
assign bitcast_ln85_70_fu_4505_p1 = reg_3238;
assign bitcast_ln85_71_fu_4825_p1 = reg_3250;
assign bitcast_ln85_72_fu_4190_p1 = reg_3230;
assign bitcast_ln85_73_fu_4510_p1 = reg_3242;
assign bitcast_ln85_74_fu_4830_p1 = reg_3254;
assign bitcast_ln85_75_fu_4195_p1 = reg_3234;
assign bitcast_ln85_76_fu_4515_p1 = reg_3246;
assign bitcast_ln85_77_fu_4835_p1 = reg_3258;
assign bitcast_ln85_78_fu_4200_p1 = reg_3238;
assign bitcast_ln85_79_fu_4520_p1 = reg_3250;
assign bitcast_ln85_7_fu_4400_p1 = reg_3250;
assign bitcast_ln85_80_fu_4840_p1 = reg_3230;
assign bitcast_ln85_81_fu_4205_p1 = reg_3242;
assign bitcast_ln85_82_fu_4525_p1 = reg_3254;
assign bitcast_ln85_83_fu_4845_p1 = reg_3234;
assign bitcast_ln85_84_fu_4210_p1 = reg_3246;
assign bitcast_ln85_85_fu_4530_p1 = reg_3258;
assign bitcast_ln85_86_fu_4850_p1 = reg_3238;
assign bitcast_ln85_87_fu_4215_p1 = reg_3250;
assign bitcast_ln85_88_fu_4535_p1 = reg_3230;
assign bitcast_ln85_89_fu_4855_p1 = reg_3242;
assign bitcast_ln85_8_fu_4720_p1 = reg_3230;
assign bitcast_ln85_90_fu_4220_p1 = reg_3254;
assign bitcast_ln85_91_fu_4540_p1 = reg_3234;
assign bitcast_ln85_92_fu_4860_p1 = reg_3246;
assign bitcast_ln85_93_fu_4225_p1 = reg_3258;
assign bitcast_ln85_94_fu_4545_p1 = reg_3238;
assign bitcast_ln85_95_fu_4865_p1 = reg_3250;
assign bitcast_ln85_96_fu_4230_p1 = reg_3230;
assign bitcast_ln85_97_fu_4550_p1 = reg_3242;
assign bitcast_ln85_98_fu_4870_p1 = reg_3254;
assign bitcast_ln85_99_fu_4235_p1 = reg_3234;
assign bitcast_ln85_9_fu_4085_p1 = reg_3242;
assign bitcast_ln85_fu_4070_p1 = reg_3230;
assign dactivations_0_address0 = dactivations_0_address0_local;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_1_address0 = dactivations_1_address0_local;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign dactivations_2_address0 = dactivations_2_address0_local;
assign dactivations_2_ce0 = dactivations_2_ce0_local;
assign dactivations_3_address0 = dactivations_3_address0_local;
assign dactivations_3_ce0 = dactivations_3_ce0_local;
assign dactivations_4_address0 = dactivations_4_address0_local;
assign dactivations_4_ce0 = dactivations_4_ce0_local;
assign dactivations_5_address0 = dactivations_5_address0_local;
assign dactivations_5_ce0 = dactivations_5_ce0_local;
assign dactivations_6_address0 = dactivations_6_address0_local;
assign dactivations_6_ce0 = dactivations_6_ce0_local;
assign dactivations_7_address0 = dactivations_7_address0_local;
assign dactivations_7_ce0 = dactivations_7_ce0_local;
assign grp_fu_3556_p_ce = 1'b1;
assign grp_fu_3556_p_din0 = grp_fu_3134_p0;
assign grp_fu_3556_p_din1 = grp_fu_3134_p1;
assign grp_fu_3556_p_opcode = 2'd0;
assign grp_fu_3560_p_ce = 1'b1;
assign grp_fu_3560_p_din0 = grp_fu_3139_p0;
assign grp_fu_3560_p_din1 = grp_fu_3139_p1;
assign grp_fu_3560_p_opcode = 2'd0;
assign grp_fu_3564_p_ce = 1'b1;
assign grp_fu_3564_p_din0 = grp_fu_3144_p0;
assign grp_fu_3564_p_din1 = grp_fu_3144_p1;
assign grp_fu_3564_p_opcode = 2'd0;
assign grp_fu_3568_p_ce = 1'b1;
assign grp_fu_3568_p_din0 = grp_fu_3149_p0;
assign grp_fu_3568_p_din1 = grp_fu_3149_p1;
assign grp_fu_3568_p_opcode = 2'd0;
assign grp_fu_3572_p_ce = 1'b1;
assign grp_fu_3572_p_din0 = grp_fu_3154_p0;
assign grp_fu_3572_p_din1 = grp_fu_3154_p1;
assign grp_fu_3572_p_opcode = 2'd0;
assign grp_fu_3576_p_ce = 1'b1;
assign grp_fu_3576_p_din0 = grp_fu_3159_p0;
assign grp_fu_3576_p_din1 = grp_fu_3159_p1;
assign grp_fu_3576_p_opcode = 2'd0;
assign grp_fu_3580_p_ce = 1'b1;
assign grp_fu_3580_p_din0 = grp_fu_3164_p0;
assign grp_fu_3580_p_din1 = grp_fu_3164_p1;
assign grp_fu_3580_p_opcode = 2'd0;
assign grp_fu_3584_p_ce = 1'b1;
assign grp_fu_3584_p_din0 = grp_fu_3169_p0;
assign grp_fu_3584_p_din1 = grp_fu_3169_p1;
assign grp_fu_3584_p_opcode = 2'd0;
assign grp_fu_3652_p_ce = 1'b1;
assign grp_fu_3652_p_din0 = grp_fu_3174_p0;
assign grp_fu_3652_p_din1 = grp_fu_3174_p1;
assign grp_fu_3656_p_ce = 1'b1;
assign grp_fu_3656_p_din0 = grp_fu_3179_p0;
assign grp_fu_3656_p_din1 = grp_fu_3179_p1;
assign grp_fu_3660_p_ce = 1'b1;
assign grp_fu_3660_p_din0 = grp_fu_3184_p0;
assign grp_fu_3660_p_din1 = grp_fu_3184_p1;
assign grp_fu_3664_p_ce = 1'b1;
assign grp_fu_3664_p_din0 = grp_fu_3189_p0;
assign grp_fu_3664_p_din1 = grp_fu_3189_p1;
assign grp_fu_3668_p_ce = 1'b1;
assign grp_fu_3668_p_din0 = grp_fu_3194_p0;
assign grp_fu_3668_p_din1 = grp_fu_3194_p1;
assign grp_fu_3672_p_ce = 1'b1;
assign grp_fu_3672_p_din0 = grp_fu_3199_p0;
assign grp_fu_3672_p_din1 = grp_fu_3199_p1;
assign grp_fu_3676_p_ce = 1'b1;
assign grp_fu_3676_p_din0 = grp_fu_3204_p0;
assign grp_fu_3676_p_din1 = grp_fu_3204_p1;
assign grp_fu_3680_p_ce = 1'b1;
assign grp_fu_3680_p_din0 = grp_fu_3209_p0;
assign grp_fu_3680_p_din1 = grp_fu_3209_p1;
assign oracle_activations_0_address0 = oracle_activations_0_address0_local;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_d0 = reg_3262;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_1_address0 = oracle_activations_1_address0_local;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_d0 = reg_3269;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign oracle_activations_2_address0 = oracle_activations_2_address0_local;
assign oracle_activations_2_ce0 = oracle_activations_2_ce0_local;
assign oracle_activations_2_d0 = reg_3276;
assign oracle_activations_2_we0 = oracle_activations_2_we0_local;
assign oracle_activations_3_address0 = oracle_activations_3_address0_local;
assign oracle_activations_3_ce0 = oracle_activations_3_ce0_local;
assign oracle_activations_3_d0 = reg_3283;
assign oracle_activations_3_we0 = oracle_activations_3_we0_local;
assign oracle_activations_4_address0 = oracle_activations_4_address0_local;
assign oracle_activations_4_ce0 = oracle_activations_4_ce0_local;
assign oracle_activations_4_d0 = reg_3290;
assign oracle_activations_4_we0 = oracle_activations_4_we0_local;
assign oracle_activations_5_address0 = oracle_activations_5_address0_local;
assign oracle_activations_5_ce0 = oracle_activations_5_ce0_local;
assign oracle_activations_5_d0 = reg_3297;
assign oracle_activations_5_we0 = oracle_activations_5_we0_local;
assign oracle_activations_6_address0 = oracle_activations_6_address0_local;
assign oracle_activations_6_ce0 = oracle_activations_6_ce0_local;
assign oracle_activations_6_d0 = reg_3304;
assign oracle_activations_6_we0 = oracle_activations_6_we0_local;
assign oracle_activations_7_address0 = oracle_activations_7_address0_local;
assign oracle_activations_7_ce0 = oracle_activations_7_ce0_local;
assign oracle_activations_7_d0 = reg_3311;
assign oracle_activations_7_we0 = oracle_activations_7_we0_local;
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_4_address0 = weights3_4_address0_local;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_5_address0 = weights3_5_address0_local;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_6_address0 = weights3_6_address0_local;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_7_address0 = weights3_7_address0_local;
assign weights3_7_ce0 = weights3_7_ce0_local;
endmodule 
