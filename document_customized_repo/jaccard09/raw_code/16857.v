module aes256_encrypt_ecb (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ctx_i,ctx_o,ctx_o_ap_vld,k_0_address0,k_0_ce0,k_0_q0,k_1_address0,k_1_ce0,k_1_q0,k_2_address0,k_2_ce0,k_2_q0,k_3_address0,k_3_ce0,k_3_q0,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_q0,buf_0_address1,buf_0_ce1,buf_0_we1,buf_0_d1,buf_0_q1,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_q0,buf_1_address1,buf_1_ce1,buf_1_we1,buf_1_d1,buf_1_q1,buf_2_address0,buf_2_ce0,buf_2_we0,buf_2_d0,buf_2_q0,buf_2_address1,buf_2_ce1,buf_2_we1,buf_2_d1,buf_2_q1,buf_3_address0,buf_3_ce0,buf_3_we0,buf_3_d0,buf_3_q0,buf_3_address1,buf_3_ce1,buf_3_we1,buf_3_d1,buf_3_q1); 
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
input  [767:0] ctx_i;
output  [767:0] ctx_o;
output   ctx_o_ap_vld;
output  [2:0] k_0_address0;
output   k_0_ce0;
input  [7:0] k_0_q0;
output  [2:0] k_1_address0;
output   k_1_ce0;
input  [7:0] k_1_q0;
output  [2:0] k_2_address0;
output   k_2_ce0;
input  [7:0] k_2_q0;
output  [2:0] k_3_address0;
output   k_3_ce0;
input  [7:0] k_3_q0;
output  [1:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
input  [7:0] buf_0_q0;
output  [1:0] buf_0_address1;
output   buf_0_ce1;
output   buf_0_we1;
output  [7:0] buf_0_d1;
input  [7:0] buf_0_q1;
output  [1:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
input  [7:0] buf_1_q0;
output  [1:0] buf_1_address1;
output   buf_1_ce1;
output   buf_1_we1;
output  [7:0] buf_1_d1;
input  [7:0] buf_1_q1;
output  [1:0] buf_2_address0;
output   buf_2_ce0;
output   buf_2_we0;
output  [7:0] buf_2_d0;
input  [7:0] buf_2_q0;
output  [1:0] buf_2_address1;
output   buf_2_ce1;
output   buf_2_we1;
output  [7:0] buf_2_d1;
input  [7:0] buf_2_q1;
output  [1:0] buf_3_address0;
output   buf_3_ce0;
output   buf_3_we0;
output  [7:0] buf_3_d0;
input  [7:0] buf_3_q0;
output  [1:0] buf_3_address1;
output   buf_3_ce1;
output   buf_3_we1;
output  [7:0] buf_3_d1;
input  [7:0] buf_3_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[767:0] ctx_o;
reg ctx_o_ap_vld;
reg[1:0] buf_0_address0;
reg buf_0_ce0;
reg buf_0_we0;
reg[7:0] buf_0_d0;
reg[1:0] buf_0_address1;
reg buf_0_ce1;
reg buf_0_we1;
reg[1:0] buf_1_address0;
reg buf_1_ce0;
reg buf_1_we0;
reg[7:0] buf_1_d0;
reg[1:0] buf_1_address1;
reg buf_1_ce1;
reg buf_1_we1;
reg[7:0] buf_1_d1;
reg[1:0] buf_2_address0;
reg buf_2_ce0;
reg buf_2_we0;
reg[7:0] buf_2_d0;
reg[1:0] buf_2_address1;
reg buf_2_ce1;
reg buf_2_we1;
reg[7:0] buf_2_d1;
reg[1:0] buf_3_address0;
reg buf_3_ce0;
reg buf_3_we0;
reg[7:0] buf_3_d0;
reg[1:0] buf_3_address1;
reg buf_3_ce1;
reg buf_3_we1;
reg[7:0] buf_3_d1;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [767:0] reg_379;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state14;
reg   [767:0] reg_385;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln142_fu_445_p2;
reg   [7:0] reg_391;
reg   [7:0] reg_396;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state20;
reg   [7:0] reg_401;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state21;
reg   [7:0] reg_406;
reg   [7:0] reg_411;
reg   [7:0] reg_416;
reg   [7:0] reg_421;
reg   [767:0] reg_426;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state6;
wire   [0:0] trunc_ln148_fu_504_p1;
reg   [0:0] trunc_ln148_reg_651;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_ready;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_0_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_0_ce0;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_1_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_1_ce0;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_2_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_2_ce0;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_3_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_3_ce0;
wire   [767:0] grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_p_partset113_out_o;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_p_partset113_out_o_ap_vld;
wire    grp_aes_expandEncKey_fu_273_ap_start;
wire    grp_aes_expandEncKey_fu_273_ap_done;
wire    grp_aes_expandEncKey_fu_273_ap_idle;
wire    grp_aes_expandEncKey_fu_273_ap_ready;
reg   [767:0] grp_aes_expandEncKey_fu_273_p_read;
reg   [9:0] grp_aes_expandEncKey_fu_273_k_idx;
reg   [7:0] grp_aes_expandEncKey_fu_273_rc_read;
wire   [767:0] grp_aes_expandEncKey_fu_273_ap_return_0;
wire   [7:0] grp_aes_expandEncKey_fu_273_ap_return_1;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_ready;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_3_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_3_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_3_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_3_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_2_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_2_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_2_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_2_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_1_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_1_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_1_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_1_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_0_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_0_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_0_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_0_d0;
wire   [767:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_p_partset410_out;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_p_partset410_out_ap_vld;
wire    grp_aes_subBytes_fu_297_ap_start;
wire    grp_aes_subBytes_fu_297_ap_done;
wire    grp_aes_subBytes_fu_297_ap_idle;
wire    grp_aes_subBytes_fu_297_ap_ready;
wire   [1:0] grp_aes_subBytes_fu_297_buf_0_address0;
wire    grp_aes_subBytes_fu_297_buf_0_ce0;
wire    grp_aes_subBytes_fu_297_buf_0_we0;
wire   [7:0] grp_aes_subBytes_fu_297_buf_0_d0;
wire   [1:0] grp_aes_subBytes_fu_297_buf_1_address0;
wire    grp_aes_subBytes_fu_297_buf_1_ce0;
wire    grp_aes_subBytes_fu_297_buf_1_we0;
wire   [7:0] grp_aes_subBytes_fu_297_buf_1_d0;
wire   [1:0] grp_aes_subBytes_fu_297_buf_2_address0;
wire    grp_aes_subBytes_fu_297_buf_2_ce0;
wire    grp_aes_subBytes_fu_297_buf_2_we0;
wire   [7:0] grp_aes_subBytes_fu_297_buf_2_d0;
wire   [1:0] grp_aes_subBytes_fu_297_buf_3_address0;
wire    grp_aes_subBytes_fu_297_buf_3_ce0;
wire    grp_aes_subBytes_fu_297_buf_3_we0;
wire   [7:0] grp_aes_subBytes_fu_297_buf_3_d0;
wire    grp_aes_mixColumns_fu_309_ap_start;
wire    grp_aes_mixColumns_fu_309_ap_done;
wire    grp_aes_mixColumns_fu_309_ap_idle;
wire    grp_aes_mixColumns_fu_309_ap_ready;
wire   [1:0] grp_aes_mixColumns_fu_309_buf_0_address0;
wire    grp_aes_mixColumns_fu_309_buf_0_ce0;
wire    grp_aes_mixColumns_fu_309_buf_0_we0;
wire   [7:0] grp_aes_mixColumns_fu_309_buf_0_d0;
wire   [1:0] grp_aes_mixColumns_fu_309_buf_0_address1;
wire    grp_aes_mixColumns_fu_309_buf_0_ce1;
wire    grp_aes_mixColumns_fu_309_buf_0_we1;
wire   [7:0] grp_aes_mixColumns_fu_309_buf_0_d1;
wire   [1:0] grp_aes_mixColumns_fu_309_buf_1_address0;
wire    grp_aes_mixColumns_fu_309_buf_1_ce0;
wire    grp_aes_mixColumns_fu_309_buf_1_we0;
wire   [7:0] grp_aes_mixColumns_fu_309_buf_1_d0;
wire   [1:0] grp_aes_mixColumns_fu_309_buf_1_address1;
wire    grp_aes_mixColumns_fu_309_buf_1_ce1;
wire    grp_aes_mixColumns_fu_309_buf_1_we1;
wire   [7:0] grp_aes_mixColumns_fu_309_buf_1_d1;
wire   [1:0] grp_aes_mixColumns_fu_309_buf_2_address0;
wire    grp_aes_mixColumns_fu_309_buf_2_ce0;
wire    grp_aes_mixColumns_fu_309_buf_2_we0;
wire   [7:0] grp_aes_mixColumns_fu_309_buf_2_d0;
wire   [1:0] grp_aes_mixColumns_fu_309_buf_2_address1;
wire    grp_aes_mixColumns_fu_309_buf_2_ce1;
wire    grp_aes_mixColumns_fu_309_buf_2_we1;
wire   [7:0] grp_aes_mixColumns_fu_309_buf_2_d1;
wire   [1:0] grp_aes_mixColumns_fu_309_buf_3_address0;
wire    grp_aes_mixColumns_fu_309_buf_3_ce0;
wire    grp_aes_mixColumns_fu_309_buf_3_we0;
wire   [7:0] grp_aes_mixColumns_fu_309_buf_3_d0;
wire   [1:0] grp_aes_mixColumns_fu_309_buf_3_address1;
wire    grp_aes_mixColumns_fu_309_buf_3_ce1;
wire    grp_aes_mixColumns_fu_309_buf_3_we1;
wire   [7:0] grp_aes_mixColumns_fu_309_buf_3_d1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_ready;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_ce1;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_ce1;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_ce1;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_ce1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_ready;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_ce1;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_ce1;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_ce1;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_ce1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_ready;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_ce1;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_ce1;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_ce1;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_d0;
wire   [1:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_ce1;
reg    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_start_reg;
wire    ap_CS_fsm_state2;
reg   [767:0] ctx7_fu_100;
reg    grp_aes_expandEncKey_fu_273_ap_start_reg;
wire   [0:0] icmp_ln148_fu_498_p2;
wire    ap_CS_fsm_state4;
reg    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    grp_aes_subBytes_fu_297_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_aes_mixColumns_fu_309_ap_start_reg;
wire    ap_CS_fsm_state13;
reg    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_start_reg;
wire    ap_CS_fsm_state16;
reg    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_start_reg;
wire    ap_CS_fsm_state17;
reg    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_start_reg;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state24;
reg   [2:0] i_7_fu_92;
wire   [2:0] add_ln142_fu_455_p2;
reg   [7:0] rcon_0_fu_96;
reg   [3:0] i_11_fu_108;
wire   [3:0] i_19_fu_517_p2;
reg    ap_block_state16_on_subcall_done;
reg   [767:0] empty_fu_112;
reg   [7:0] rcon_1_fu_116;
reg    ap_block_state18_on_subcall_done;
reg    buf_1_ce1_local;
wire    ap_CS_fsm_state9;
reg   [1:0] buf_1_address1_local;
reg    buf_1_ce0_local;
reg   [1:0] buf_1_address0_local;
reg    buf_1_we1_local;
reg    buf_1_we0_local;
reg   [7:0] buf_1_d0_local;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state22;
reg    buf_2_ce1_local;
reg   [1:0] buf_2_address1_local;
reg    buf_2_ce0_local;
reg   [1:0] buf_2_address0_local;
reg    buf_2_we1_local;
reg    buf_2_we0_local;
reg    buf_3_ce1_local;
reg   [1:0] buf_3_address1_local;
reg    buf_3_ce0_local;
reg   [1:0] buf_3_address0_local;
reg    buf_3_we1_local;
reg    buf_3_we0_local;
reg   [7:0] buf_3_d0_local;
reg   [23:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
reg    ap_ST_fsm_state15_blk;
reg    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
reg    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
reg    ap_ST_fsm_state24_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_start_reg = 1'b0;
#0 ctx7_fu_100 = 768'd0;
#0 grp_aes_expandEncKey_fu_273_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_start_reg = 1'b0;
#0 grp_aes_subBytes_fu_297_ap_start_reg = 1'b0;
#0 grp_aes_mixColumns_fu_309_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_start_reg = 1'b0;
#0 i_7_fu_92 = 3'd0;
#0 rcon_0_fu_96 = 8'd0;
#0 i_11_fu_108 = 4'd0;
#0 empty_fu_112 = 768'd0;
#0 rcon_1_fu_116 = 8'd0;
end
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_ecb1 grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_ready),.ctx_load(reg_379),.k_0_address0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_0_address0),.k_0_ce0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_0_ce0),.k_0_q0(k_0_q0),.k_1_address0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_1_address0),.k_1_ce0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_1_ce0),.k_1_q0(k_1_q0),.k_2_address0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_2_address0),.k_2_ce0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_2_ce0),.k_2_q0(k_2_q0),.k_3_address0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_3_address0),.k_3_ce0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_3_ce0),.k_3_q0(k_3_q0),.p_partset113_out_i(ctx7_fu_100),.p_partset113_out_o(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_p_partset113_out_o),.p_partset113_out_o_ap_vld(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_p_partset113_out_o_ap_vld));
aes256_encrypt_ecb_aes_expandEncKey grp_aes_expandEncKey_fu_273(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_expandEncKey_fu_273_ap_start),.ap_done(grp_aes_expandEncKey_fu_273_ap_done),.ap_idle(grp_aes_expandEncKey_fu_273_ap_idle),.ap_ready(grp_aes_expandEncKey_fu_273_ap_ready),.p_read(grp_aes_expandEncKey_fu_273_p_read),.k_idx(grp_aes_expandEncKey_fu_273_k_idx),.rc_read(grp_aes_expandEncKey_fu_273_rc_read),.ap_return_0(grp_aes_expandEncKey_fu_273_ap_return_0),.ap_return_1(grp_aes_expandEncKey_fu_273_ap_return_1));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_cpkey grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_ready),.ctx7(reg_385),.buf_3_address0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_3_address0),.buf_3_ce0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_3_ce0),.buf_3_we0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_3_we0),.buf_3_d0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_3_d0),.buf_3_q0(buf_3_q0),.buf_2_address0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_2_address0),.buf_2_ce0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_2_ce0),.buf_2_we0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_2_we0),.buf_2_d0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_2_d0),.buf_2_q0(buf_2_q0),.buf_1_address0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_1_address0),.buf_1_ce0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_1_ce0),.buf_1_we0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_1_we0),.buf_1_d0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_1_d0),.buf_1_q0(buf_1_q0),.buf_0_address0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_0_address0),.buf_0_ce0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_0_ce0),.buf_0_we0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_0_we0),.buf_0_d0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_0_d0),.buf_0_q0(buf_0_q0),.p_partset410_out(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_p_partset410_out),.p_partset410_out_ap_vld(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_p_partset410_out_ap_vld));
aes256_encrypt_ecb_aes_subBytes grp_aes_subBytes_fu_297(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_subBytes_fu_297_ap_start),.ap_done(grp_aes_subBytes_fu_297_ap_done),.ap_idle(grp_aes_subBytes_fu_297_ap_idle),.ap_ready(grp_aes_subBytes_fu_297_ap_ready),.buf_0_address0(grp_aes_subBytes_fu_297_buf_0_address0),.buf_0_ce0(grp_aes_subBytes_fu_297_buf_0_ce0),.buf_0_we0(grp_aes_subBytes_fu_297_buf_0_we0),.buf_0_d0(grp_aes_subBytes_fu_297_buf_0_d0),.buf_0_q0(buf_0_q0),.buf_1_address0(grp_aes_subBytes_fu_297_buf_1_address0),.buf_1_ce0(grp_aes_subBytes_fu_297_buf_1_ce0),.buf_1_we0(grp_aes_subBytes_fu_297_buf_1_we0),.buf_1_d0(grp_aes_subBytes_fu_297_buf_1_d0),.buf_1_q0(buf_1_q0),.buf_2_address0(grp_aes_subBytes_fu_297_buf_2_address0),.buf_2_ce0(grp_aes_subBytes_fu_297_buf_2_ce0),.buf_2_we0(grp_aes_subBytes_fu_297_buf_2_we0),.buf_2_d0(grp_aes_subBytes_fu_297_buf_2_d0),.buf_2_q0(buf_2_q0),.buf_3_address0(grp_aes_subBytes_fu_297_buf_3_address0),.buf_3_ce0(grp_aes_subBytes_fu_297_buf_3_ce0),.buf_3_we0(grp_aes_subBytes_fu_297_buf_3_we0),.buf_3_d0(grp_aes_subBytes_fu_297_buf_3_d0),.buf_3_q0(buf_3_q0));
aes256_encrypt_ecb_aes_mixColumns grp_aes_mixColumns_fu_309(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_mixColumns_fu_309_ap_start),.ap_done(grp_aes_mixColumns_fu_309_ap_done),.ap_idle(grp_aes_mixColumns_fu_309_ap_idle),.ap_ready(grp_aes_mixColumns_fu_309_ap_ready),.buf_0_address0(grp_aes_mixColumns_fu_309_buf_0_address0),.buf_0_ce0(grp_aes_mixColumns_fu_309_buf_0_ce0),.buf_0_we0(grp_aes_mixColumns_fu_309_buf_0_we0),.buf_0_d0(grp_aes_mixColumns_fu_309_buf_0_d0),.buf_0_q0(buf_0_q0),.buf_0_address1(grp_aes_mixColumns_fu_309_buf_0_address1),.buf_0_ce1(grp_aes_mixColumns_fu_309_buf_0_ce1),.buf_0_we1(grp_aes_mixColumns_fu_309_buf_0_we1),.buf_0_d1(grp_aes_mixColumns_fu_309_buf_0_d1),.buf_0_q1(buf_0_q1),.buf_1_address0(grp_aes_mixColumns_fu_309_buf_1_address0),.buf_1_ce0(grp_aes_mixColumns_fu_309_buf_1_ce0),.buf_1_we0(grp_aes_mixColumns_fu_309_buf_1_we0),.buf_1_d0(grp_aes_mixColumns_fu_309_buf_1_d0),.buf_1_q0(buf_1_q0),.buf_1_address1(grp_aes_mixColumns_fu_309_buf_1_address1),.buf_1_ce1(grp_aes_mixColumns_fu_309_buf_1_ce1),.buf_1_we1(grp_aes_mixColumns_fu_309_buf_1_we1),.buf_1_d1(grp_aes_mixColumns_fu_309_buf_1_d1),.buf_1_q1(buf_1_q1),.buf_2_address0(grp_aes_mixColumns_fu_309_buf_2_address0),.buf_2_ce0(grp_aes_mixColumns_fu_309_buf_2_ce0),.buf_2_we0(grp_aes_mixColumns_fu_309_buf_2_we0),.buf_2_d0(grp_aes_mixColumns_fu_309_buf_2_d0),.buf_2_q0(buf_2_q0),.buf_2_address1(grp_aes_mixColumns_fu_309_buf_2_address1),.buf_2_ce1(grp_aes_mixColumns_fu_309_buf_2_ce1),.buf_2_we1(grp_aes_mixColumns_fu_309_buf_2_we1),.buf_2_d1(grp_aes_mixColumns_fu_309_buf_2_d1),.buf_2_q1(buf_2_q1),.buf_3_address0(grp_aes_mixColumns_fu_309_buf_3_address0),.buf_3_ce0(grp_aes_mixColumns_fu_309_buf_3_ce0),.buf_3_we0(grp_aes_mixColumns_fu_309_buf_3_we0),.buf_3_d0(grp_aes_mixColumns_fu_309_buf_3_d0),.buf_3_q0(buf_3_q0),.buf_3_address1(grp_aes_mixColumns_fu_309_buf_3_address1),.buf_3_ce1(grp_aes_mixColumns_fu_309_buf_3_ce1),.buf_3_we1(grp_aes_mixColumns_fu_309_buf_3_we1),.buf_3_d1(grp_aes_mixColumns_fu_309_buf_3_d1),.buf_3_q1(buf_3_q1));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey1 grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_ready),.buf_3_address0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_address0),.buf_3_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_ce0),.buf_3_we0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_we0),.buf_3_d0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_d0),.buf_3_address1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_address1),.buf_3_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_ce1),.buf_3_q1(buf_3_q1),.buf_2_address0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_address0),.buf_2_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_ce0),.buf_2_we0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_we0),.buf_2_d0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_d0),.buf_2_address1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_address1),.buf_2_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_ce1),.buf_2_q1(buf_2_q1),.buf_1_address0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_address0),.buf_1_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_ce0),.buf_1_we0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_we0),.buf_1_d0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_d0),.buf_1_address1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_address1),.buf_1_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_ce1),.buf_1_q1(buf_1_q1),.buf_0_address0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_address0),.buf_0_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_ce0),.buf_0_we0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_we0),.buf_0_d0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_d0),.buf_0_address1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_address1),.buf_0_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_ce1),.buf_0_q1(buf_0_q1),.ctx_ret1(reg_426));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_ready),.buf_3_address0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_address0),.buf_3_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_ce0),.buf_3_we0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_we0),.buf_3_d0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_d0),.buf_3_address1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_address1),.buf_3_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_ce1),.buf_3_q1(buf_3_q1),.buf_2_address0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_address0),.buf_2_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_ce0),.buf_2_we0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_we0),.buf_2_d0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_d0),.buf_2_address1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_address1),.buf_2_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_ce1),.buf_2_q1(buf_2_q1),.buf_1_address0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_address0),.buf_1_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_ce0),.buf_1_we0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_we0),.buf_1_d0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_d0),.buf_1_address1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_address1),.buf_1_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_ce1),.buf_1_q1(buf_1_q1),.buf_0_address0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_address0),.buf_0_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_ce0),.buf_0_we0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_we0),.buf_0_d0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_d0),.buf_0_address1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_address1),.buf_0_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_ce1),.buf_0_q1(buf_0_q1),.empty(empty_fu_112));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey2 grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_ready),.buf_3_address0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_address0),.buf_3_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_ce0),.buf_3_we0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_we0),.buf_3_d0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_d0),.buf_3_address1(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_address1),.buf_3_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_ce1),.buf_3_q1(buf_3_q1),.buf_2_address0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_address0),.buf_2_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_ce0),.buf_2_we0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_we0),.buf_2_d0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_d0),.buf_2_address1(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_address1),.buf_2_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_ce1),.buf_2_q1(buf_2_q1),.buf_1_address0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_address0),.buf_1_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_ce0),.buf_1_we0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_we0),.buf_1_d0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_d0),.buf_1_address1(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_address1),.buf_1_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_ce1),.buf_1_q1(buf_1_q1),.buf_0_address0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_address0),.buf_0_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_ce0),.buf_0_we0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_we0),.buf_0_d0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_d0),.buf_0_address1(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_address1),.buf_0_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_ce1),.buf_0_q1(buf_0_q1),.ctx_ret(reg_426));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_start_reg <= 1'b0;
    end else begin
        if (((grp_aes_expandEncKey_fu_273_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state23)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_445_p2 == 1'd1))) begin
            grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_expandEncKey_fu_273_ap_start_reg <= 1'b0;
    end else begin
        if ((((grp_aes_mixColumns_fu_309_ap_done == 1'b1) & (trunc_ln148_fu_504_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state14)) | ((icmp_ln148_fu_498_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7)) | ((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_445_p2 == 1'd0)))) begin
            grp_aes_expandEncKey_fu_273_ap_start_reg <= 1'b1;
        end else if ((grp_aes_expandEncKey_fu_273_ap_ready == 1'b1)) begin
            grp_aes_expandEncKey_fu_273_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_mixColumns_fu_309_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_aes_mixColumns_fu_309_ap_start_reg <= 1'b1;
        end else if ((grp_aes_mixColumns_fu_309_ap_ready == 1'b1)) begin
            grp_aes_mixColumns_fu_309_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_subBytes_fu_297_ap_start_reg <= 1'b0;
    end else begin
        if ((((icmp_ln148_fu_498_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)) | ((icmp_ln148_fu_498_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7)))) begin
            grp_aes_subBytes_fu_297_ap_start_reg <= 1'b1;
        end else if ((grp_aes_subBytes_fu_297_ap_ready == 1'b1)) begin
            grp_aes_subBytes_fu_297_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((grp_aes_expandEncKey_fu_273_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ctx7_fu_100 <= grp_aes_expandEncKey_fu_273_ap_return_0;
    end else if (((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_p_partset113_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ctx7_fu_100 <= grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_p_partset113_out_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_fu_112 <= grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_p_partset410_out;
    end else if (((grp_aes_expandEncKey_fu_273_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
        empty_fu_112 <= grp_aes_expandEncKey_fu_273_ap_return_0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_445_p2 == 1'd1))) begin
        i_11_fu_108 <= 4'd1;
    end else if (((1'b0 == ap_block_state16_on_subcall_done) & (1'b1 == ap_CS_fsm_state16))) begin
        i_11_fu_108 <= i_19_fu_517_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_7_fu_92 <= 3'd7;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_445_p2 == 1'd0))) begin
        i_7_fu_92 <= add_ln142_fu_455_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        rcon_0_fu_96 <= 8'd1;
    end else if (((grp_aes_expandEncKey_fu_273_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        rcon_0_fu_96 <= grp_aes_expandEncKey_fu_273_ap_return_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_445_p2 == 1'd1))) begin
        rcon_1_fu_116 <= 8'd1;
    end else if (((grp_aes_expandEncKey_fu_273_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
        rcon_1_fu_116 <= grp_aes_expandEncKey_fu_273_ap_return_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_379 <= ctx_i;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_445_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_445_p2 == 1'd0)))) begin
        reg_385 <= ctx7_fu_100;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_391 <= rcon_1_fu_116;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_396 <= buf_1_q1;
        reg_416 <= buf_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_401 <= buf_1_q0;
        reg_406 <= buf_2_q1;
        reg_411 <= buf_2_q0;
        reg_421 <= buf_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_426 <= grp_aes_expandEncKey_fu_273_ap_return_0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        trunc_ln148_reg_651 <= trunc_ln148_fu_504_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_aes_mixColumns_fu_309_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_aes_expandEncKey_fu_273_ap_done == 1'b0)) begin
        ap_ST_fsm_state15_blk = 1'b1;
    end else begin
        ap_ST_fsm_state15_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state16_on_subcall_done)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
    end
end
assign ap_ST_fsm_state17_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state18_on_subcall_done)) begin
        ap_ST_fsm_state18_blk = 1'b1;
    end else begin
        ap_ST_fsm_state18_blk = 1'b0;
    end
end
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
    if ((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_done == 1'b0)) begin
        ap_ST_fsm_state24_blk = 1'b1;
    end else begin
        ap_ST_fsm_state24_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_aes_expandEncKey_fu_273_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_aes_subBytes_fu_297_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
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
    if (((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_0_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_address0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_0_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_address0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_0_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_0_address0 = grp_aes_mixColumns_fu_309_buf_0_address0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_0_address0 = grp_aes_subBytes_fu_297_buf_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_0_address0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_0_address0;
    end else begin
        buf_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_0_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_address1;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_0_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_address1;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_0_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_0_address1 = grp_aes_mixColumns_fu_309_buf_0_address1;
    end else begin
        buf_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_0_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_ce0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_0_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_ce0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_0_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_0_ce0 = grp_aes_mixColumns_fu_309_buf_0_ce0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_0_ce0 = grp_aes_subBytes_fu_297_buf_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_0_ce0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_0_ce0;
    end else begin
        buf_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_0_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_ce1;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_0_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_ce1;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_0_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_0_ce1 = grp_aes_mixColumns_fu_309_buf_0_ce1;
    end else begin
        buf_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_0_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_d0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_0_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_d0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_0_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_0_d0 = grp_aes_mixColumns_fu_309_buf_0_d0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_0_d0 = grp_aes_subBytes_fu_297_buf_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_0_d0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_0_d0;
    end else begin
        buf_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_0_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_0_we0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_0_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_0_we0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_0_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_0_we0 = grp_aes_mixColumns_fu_309_buf_0_we0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_0_we0 = grp_aes_subBytes_fu_297_buf_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_0_we0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_0_we0;
    end else begin
        buf_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_0_we1 = grp_aes_mixColumns_fu_309_buf_0_we1;
    end else begin
        buf_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_1_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_address0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_1_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_address0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_1_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_1_address0 = grp_aes_mixColumns_fu_309_buf_1_address0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_1_address0 = grp_aes_subBytes_fu_297_buf_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_1_address0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_1_address0;
    end else begin
        buf_1_address0 = buf_1_address0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_1_address0_local = 64'd3;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_1_address0_local = 64'd1;
    end else begin
        buf_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_1_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_address1;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_1_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_address1;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_1_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_1_address1 = grp_aes_mixColumns_fu_309_buf_1_address1;
    end else begin
        buf_1_address1 = buf_1_address1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_1_address1_local = 64'd2;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_1_address1_local = 64'd0;
    end else begin
        buf_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_1_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_ce0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_1_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_ce0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_1_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_1_ce0 = grp_aes_mixColumns_fu_309_buf_1_ce0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_1_ce0 = grp_aes_subBytes_fu_297_buf_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_1_ce0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_1_ce0;
    end else begin
        buf_1_ce0 = buf_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_1_ce0_local = 1'b1;
    end else begin
        buf_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_1_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_ce1;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_1_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_ce1;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_1_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_1_ce1 = grp_aes_mixColumns_fu_309_buf_1_ce1;
    end else begin
        buf_1_ce1 = buf_1_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_1_ce1_local = 1'b1;
    end else begin
        buf_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_1_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_d0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_1_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_d0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_1_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_1_d0 = grp_aes_mixColumns_fu_309_buf_1_d0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_1_d0 = grp_aes_subBytes_fu_297_buf_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_1_d0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_1_d0;
    end else begin
        buf_1_d0 = buf_1_d0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12))) begin
        buf_1_d0_local = reg_396;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_1_d0_local = buf_1_q1;
    end else begin
        buf_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_1_d1 = grp_aes_mixColumns_fu_309_buf_1_d1;
    end else begin
        buf_1_d1 = reg_401;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_1_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_1_we0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_1_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_1_we0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_1_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_1_we0 = grp_aes_mixColumns_fu_309_buf_1_we0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_1_we0 = grp_aes_subBytes_fu_297_buf_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_1_we0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_1_we0;
    end else begin
        buf_1_we0 = buf_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_1_we0_local = 1'b1;
    end else begin
        buf_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_1_we1 = grp_aes_mixColumns_fu_309_buf_1_we1;
    end else begin
        buf_1_we1 = buf_1_we1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_1_we1_local = 1'b1;
    end else begin
        buf_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_2_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_address0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_2_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_address0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_2_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_2_address0 = grp_aes_mixColumns_fu_309_buf_2_address0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_2_address0 = grp_aes_subBytes_fu_297_buf_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2_address0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_2_address0;
    end else begin
        buf_2_address0 = buf_2_address0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_2_address0_local = 64'd1;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_2_address0_local = 64'd0;
    end else begin
        buf_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_2_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_address1;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_2_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_address1;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_2_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_2_address1 = grp_aes_mixColumns_fu_309_buf_2_address1;
    end else begin
        buf_2_address1 = buf_2_address1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_2_address1_local = 64'd3;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_2_address1_local = 64'd2;
    end else begin
        buf_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_2_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_ce0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_2_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_ce0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_2_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_2_ce0 = grp_aes_mixColumns_fu_309_buf_2_ce0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_2_ce0 = grp_aes_subBytes_fu_297_buf_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2_ce0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_2_ce0;
    end else begin
        buf_2_ce0 = buf_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_2_ce0_local = 1'b1;
    end else begin
        buf_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_2_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_ce1;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_2_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_ce1;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_2_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_2_ce1 = grp_aes_mixColumns_fu_309_buf_2_ce1;
    end else begin
        buf_2_ce1 = buf_2_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_2_ce1_local = 1'b1;
    end else begin
        buf_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_2_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_d0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_2_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_d0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_2_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_2_d0 = grp_aes_mixColumns_fu_309_buf_2_d0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_2_d0 = grp_aes_subBytes_fu_297_buf_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2_d0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_2_d0;
    end else begin
        buf_2_d0 = reg_406;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_2_d1 = grp_aes_mixColumns_fu_309_buf_2_d1;
    end else begin
        buf_2_d1 = reg_411;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_2_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_2_we0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_2_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_2_we0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_2_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_2_we0 = grp_aes_mixColumns_fu_309_buf_2_we0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_2_we0 = grp_aes_subBytes_fu_297_buf_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2_we0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_2_we0;
    end else begin
        buf_2_we0 = buf_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_2_we0_local = 1'b1;
    end else begin
        buf_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_2_we1 = grp_aes_mixColumns_fu_309_buf_2_we1;
    end else begin
        buf_2_we1 = buf_2_we1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_2_we1_local = 1'b1;
    end else begin
        buf_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_3_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_address0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_3_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_address0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_3_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_3_address0 = grp_aes_mixColumns_fu_309_buf_3_address0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_3_address0 = grp_aes_subBytes_fu_297_buf_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_3_address0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_3_address0;
    end else begin
        buf_3_address0 = buf_3_address0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_3_address0_local = 64'd1;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_3_address0_local = 64'd3;
    end else begin
        buf_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_3_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_address1;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_3_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_address1;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_3_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_3_address1 = grp_aes_mixColumns_fu_309_buf_3_address1;
    end else begin
        buf_3_address1 = buf_3_address1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_3_address1_local = 64'd2;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_3_address1_local = 64'd0;
    end else begin
        buf_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_3_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_ce0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_3_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_ce0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_3_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_3_ce0 = grp_aes_mixColumns_fu_309_buf_3_ce0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_3_ce0 = grp_aes_subBytes_fu_297_buf_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_3_ce0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_3_ce0;
    end else begin
        buf_3_ce0 = buf_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_3_ce0_local = 1'b1;
    end else begin
        buf_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_3_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_ce1;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_3_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_ce1;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_3_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_3_ce1 = grp_aes_mixColumns_fu_309_buf_3_ce1;
    end else begin
        buf_3_ce1 = buf_3_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_3_ce1_local = 1'b1;
    end else begin
        buf_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_3_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_d0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_3_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_d0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_3_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_3_d0 = grp_aes_mixColumns_fu_309_buf_3_d0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_3_d0 = grp_aes_subBytes_fu_297_buf_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_3_d0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_3_d0;
    end else begin
        buf_3_d0 = buf_3_d0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12))) begin
        buf_3_d0_local = reg_416;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_3_d0_local = buf_3_q1;
    end else begin
        buf_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_3_d1 = grp_aes_mixColumns_fu_309_buf_3_d1;
    end else begin
        buf_3_d1 = reg_421;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        buf_3_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_buf_3_we0;
    end else if (((trunc_ln148_reg_651 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_3_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_buf_3_we0;
    end else if (((trunc_ln148_reg_651 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        buf_3_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_buf_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_3_we0 = grp_aes_mixColumns_fu_309_buf_3_we0;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_3_we0 = grp_aes_subBytes_fu_297_buf_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_3_we0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_buf_3_we0;
    end else begin
        buf_3_we0 = buf_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_3_we0_local = 1'b1;
    end else begin
        buf_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buf_3_we1 = grp_aes_mixColumns_fu_309_buf_3_we1;
    end else begin
        buf_3_we1 = buf_3_we1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_3_we1_local = 1'b1;
    end else begin
        buf_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_state18_on_subcall_done) & (1'b1 == ap_CS_fsm_state18)) | ((grp_aes_expandEncKey_fu_273_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15)))) begin
        ctx_o = grp_aes_expandEncKey_fu_273_ap_return_0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_o = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_p_partset410_out;
    end else begin
        ctx_o = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((1'b0 == ap_block_state18_on_subcall_done) & (1'b1 == ap_CS_fsm_state18)) | ((grp_aes_expandEncKey_fu_273_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15)))) begin
        ctx_o_ap_vld = 1'b1;
    end else begin
        ctx_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state15))) begin
        grp_aes_expandEncKey_fu_273_k_idx = 10'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_aes_expandEncKey_fu_273_k_idx = 10'd512;
    end else begin
        grp_aes_expandEncKey_fu_273_k_idx = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state15))) begin
        grp_aes_expandEncKey_fu_273_p_read = reg_379;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_aes_expandEncKey_fu_273_p_read = reg_385;
    end else begin
        grp_aes_expandEncKey_fu_273_p_read = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state15))) begin
        grp_aes_expandEncKey_fu_273_rc_read = reg_391;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_aes_expandEncKey_fu_273_rc_read = rcon_0_fu_96;
    end else begin
        grp_aes_expandEncKey_fu_273_rc_read = 'bx;
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
            if (((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_445_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_aes_expandEncKey_fu_273_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln148_fu_498_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((grp_aes_subBytes_fu_297_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
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
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_aes_mixColumns_fu_309_ap_done == 1'b1) & (trunc_ln148_fu_504_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else if (((grp_aes_mixColumns_fu_309_ap_done == 1'b1) & (trunc_ln148_fu_504_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            if (((grp_aes_expandEncKey_fu_273_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            if (((1'b0 == ap_block_state16_on_subcall_done) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state18 : begin
            if (((1'b0 == ap_block_state18_on_subcall_done) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
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
            if (((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln142_fu_455_p2 = ($signed(i_7_fu_92) + $signed(3'd7));
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
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state16_on_subcall_done = (((grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_done == 1'b0) & (trunc_ln148_reg_651 == 1'd1)) | ((grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_done == 1'b0) & (trunc_ln148_reg_651 == 1'd0)));
end
always @ (*) begin
    ap_block_state18_on_subcall_done = ((grp_aes_subBytes_fu_297_ap_done == 1'b0) | (grp_aes_expandEncKey_fu_273_ap_done == 1'b0));
end
assign buf_0_d1 = grp_aes_mixColumns_fu_309_buf_0_d1;
assign grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_start = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_321_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_start = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_347_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_start = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_334_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_start = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_283_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_start = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_ap_start_reg;
assign grp_aes_expandEncKey_fu_273_ap_start = grp_aes_expandEncKey_fu_273_ap_start_reg;
assign grp_aes_mixColumns_fu_309_ap_start = grp_aes_mixColumns_fu_309_ap_start_reg;
assign grp_aes_subBytes_fu_297_ap_start = grp_aes_subBytes_fu_297_ap_start_reg;
assign i_19_fu_517_p2 = (i_11_fu_108 + 4'd1);
assign icmp_ln142_fu_445_p2 = ((i_7_fu_92 == 3'd0) ? 1'b1 : 1'b0);
assign icmp_ln148_fu_498_p2 = ((i_11_fu_108 == 4'd14) ? 1'b1 : 1'b0);
assign k_0_address0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_0_address0;
assign k_0_ce0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_0_ce0;
assign k_1_address0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_1_address0;
assign k_1_ce0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_1_ce0;
assign k_2_address0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_2_address0;
assign k_2_ce0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_2_ce0;
assign k_3_address0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_3_address0;
assign k_3_ce0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_258_k_3_ce0;
assign trunc_ln148_fu_504_p1 = i_11_fu_108[0:0];
endmodule 