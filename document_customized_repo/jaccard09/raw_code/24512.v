module aes256_encrypt_ecb (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ctx_i,ctx_o,ctx_o_ap_vld,k_address0,k_ce0,k_q0,buf_r_address0,buf_r_ce0,buf_r_we0,buf_r_d0,buf_r_q0,buf_r_address1,buf_r_ce1,buf_r_we1,buf_r_d1,buf_r_q1); 
parameter    ap_ST_fsm_state1 = 41'd1;
parameter    ap_ST_fsm_state2 = 41'd2;
parameter    ap_ST_fsm_state3 = 41'd4;
parameter    ap_ST_fsm_state4 = 41'd8;
parameter    ap_ST_fsm_state5 = 41'd16;
parameter    ap_ST_fsm_state6 = 41'd32;
parameter    ap_ST_fsm_state7 = 41'd64;
parameter    ap_ST_fsm_state8 = 41'd128;
parameter    ap_ST_fsm_state9 = 41'd256;
parameter    ap_ST_fsm_state10 = 41'd512;
parameter    ap_ST_fsm_state11 = 41'd1024;
parameter    ap_ST_fsm_state12 = 41'd2048;
parameter    ap_ST_fsm_state13 = 41'd4096;
parameter    ap_ST_fsm_state14 = 41'd8192;
parameter    ap_ST_fsm_state15 = 41'd16384;
parameter    ap_ST_fsm_state16 = 41'd32768;
parameter    ap_ST_fsm_state17 = 41'd65536;
parameter    ap_ST_fsm_state18 = 41'd131072;
parameter    ap_ST_fsm_state19 = 41'd262144;
parameter    ap_ST_fsm_state20 = 41'd524288;
parameter    ap_ST_fsm_state21 = 41'd1048576;
parameter    ap_ST_fsm_state22 = 41'd2097152;
parameter    ap_ST_fsm_state23 = 41'd4194304;
parameter    ap_ST_fsm_state24 = 41'd8388608;
parameter    ap_ST_fsm_state25 = 41'd16777216;
parameter    ap_ST_fsm_state26 = 41'd33554432;
parameter    ap_ST_fsm_state27 = 41'd67108864;
parameter    ap_ST_fsm_state28 = 41'd134217728;
parameter    ap_ST_fsm_state29 = 41'd268435456;
parameter    ap_ST_fsm_state30 = 41'd536870912;
parameter    ap_ST_fsm_state31 = 41'd1073741824;
parameter    ap_ST_fsm_state32 = 41'd2147483648;
parameter    ap_ST_fsm_state33 = 41'd4294967296;
parameter    ap_ST_fsm_state34 = 41'd8589934592;
parameter    ap_ST_fsm_state35 = 41'd17179869184;
parameter    ap_ST_fsm_state36 = 41'd34359738368;
parameter    ap_ST_fsm_state37 = 41'd68719476736;
parameter    ap_ST_fsm_state38 = 41'd137438953472;
parameter    ap_ST_fsm_state39 = 41'd274877906944;
parameter    ap_ST_fsm_state40 = 41'd549755813888;
parameter    ap_ST_fsm_state41 = 41'd1099511627776;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [767:0] ctx_i;
output  [767:0] ctx_o;
output   ctx_o_ap_vld;
output  [4:0] k_address0;
output   k_ce0;
input  [7:0] k_q0;
output  [3:0] buf_r_address0;
output   buf_r_ce0;
output   buf_r_we0;
output  [7:0] buf_r_d0;
input  [7:0] buf_r_q0;
output  [3:0] buf_r_address1;
output   buf_r_ce1;
output   buf_r_we1;
output  [7:0] buf_r_d1;
input  [7:0] buf_r_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[767:0] ctx_o;
reg ctx_o_ap_vld;
reg[3:0] buf_r_address0;
reg buf_r_ce0;
reg buf_r_we0;
reg[7:0] buf_r_d0;
reg[3:0] buf_r_address1;
reg buf_r_ce1;
reg buf_r_we1;
reg[7:0] buf_r_d1;
(* fsm_encoding = "none" *) reg   [40:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [767:0] reg_319;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state23;
reg   [767:0] reg_325;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln142_fu_413_p2;
reg   [7:0] reg_331;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state24;
reg   [7:0] reg_335;
reg   [7:0] reg_340;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state29;
reg   [7:0] reg_345;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state34;
reg   [7:0] reg_352;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state30;
reg   [7:0] reg_359;
reg   [7:0] reg_364;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state31;
reg   [7:0] reg_369;
reg   [7:0] reg_374;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state32;
reg   [7:0] reg_379;
reg   [7:0] reg_384;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state33;
reg   [7:0] reg_389;
reg   [767:0] reg_394;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state7;
wire   [0:0] trunc_ln148_fu_471_p1;
reg   [0:0] trunc_ln148_reg_621;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_ready;
wire   [4:0] grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_k_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_k_ce0;
wire   [767:0] grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_p_partset113_out_o;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_p_partset113_out_o_ap_vld;
wire    grp_aes_expandEncKey_fu_249_ap_start;
wire    grp_aes_expandEncKey_fu_249_ap_done;
wire    grp_aes_expandEncKey_fu_249_ap_idle;
wire    grp_aes_expandEncKey_fu_249_ap_ready;
reg   [767:0] grp_aes_expandEncKey_fu_249_ctx_read;
reg   [9:0] grp_aes_expandEncKey_fu_249_k_idx;
reg   [7:0] grp_aes_expandEncKey_fu_249_rc_read;
wire   [767:0] grp_aes_expandEncKey_fu_249_ap_return_0;
wire   [7:0] grp_aes_expandEncKey_fu_249_ap_return_1;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_ready;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_buf_r_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_buf_r_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_buf_r_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_buf_r_d0;
wire   [767:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_p_partset410_out;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_p_partset410_out_ap_vld;
wire    grp_aes_subBytes_fu_267_ap_start;
wire    grp_aes_subBytes_fu_267_ap_done;
wire    grp_aes_subBytes_fu_267_ap_idle;
wire    grp_aes_subBytes_fu_267_ap_ready;
wire   [3:0] grp_aes_subBytes_fu_267_buf_r_address0;
wire    grp_aes_subBytes_fu_267_buf_r_ce0;
wire    grp_aes_subBytes_fu_267_buf_r_we0;
wire   [7:0] grp_aes_subBytes_fu_267_buf_r_d0;
wire    grp_aes_mixColumns_fu_273_ap_start;
wire    grp_aes_mixColumns_fu_273_ap_done;
wire    grp_aes_mixColumns_fu_273_ap_idle;
wire    grp_aes_mixColumns_fu_273_ap_ready;
wire   [3:0] grp_aes_mixColumns_fu_273_buf_r_address0;
wire    grp_aes_mixColumns_fu_273_buf_r_ce0;
wire    grp_aes_mixColumns_fu_273_buf_r_we0;
wire   [7:0] grp_aes_mixColumns_fu_273_buf_r_d0;
wire   [3:0] grp_aes_mixColumns_fu_273_buf_r_address1;
wire    grp_aes_mixColumns_fu_273_buf_r_ce1;
wire    grp_aes_mixColumns_fu_273_buf_r_we1;
wire   [7:0] grp_aes_mixColumns_fu_273_buf_r_d1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_ready;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_d0;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_ce1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_ready;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_d0;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_ce1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_ready;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_d0;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_ce1;
reg    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_start_reg;
wire    ap_CS_fsm_state2;
reg   [767:0] ctx5_fu_102;
reg    grp_aes_expandEncKey_fu_249_ap_start_reg;
wire   [0:0] icmp_ln148_fu_465_p2;
reg    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_aes_subBytes_fu_267_ap_start_reg;
wire    ap_CS_fsm_state9;
reg    grp_aes_mixColumns_fu_273_ap_start_reg;
wire    ap_CS_fsm_state22;
reg    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_start_reg;
wire    ap_CS_fsm_state25;
reg    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_start_reg;
wire    ap_CS_fsm_state26;
reg    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_start_reg;
wire    ap_CS_fsm_state40;
wire    ap_CS_fsm_state41;
reg   [2:0] i_6_fu_94;
wire   [2:0] add_ln142_fu_438_p2;
wire    ap_CS_fsm_state5;
reg   [7:0] rcon_0_fu_98;
reg   [3:0] i_fu_110;
wire   [3:0] i_19_fu_484_p2;
reg    ap_block_state25_on_subcall_done;
reg   [767:0] empty_fu_114;
reg   [7:0] rcon_1_fu_118;
reg    ap_block_state27_on_subcall_done;
reg    buf_r_ce1_local;
wire    ap_CS_fsm_state10;
reg   [3:0] buf_r_address1_local;
reg    buf_r_ce0_local;
reg   [3:0] buf_r_address0_local;
reg    buf_r_we1_local;
reg   [7:0] buf_r_d1_local;
reg    buf_r_we0_local;
reg   [7:0] buf_r_d0_local;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state35;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state37;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state39;
reg   [40:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
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
reg    ap_ST_fsm_state23_blk;
reg    ap_ST_fsm_state24_blk;
reg    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
reg    ap_ST_fsm_state27_blk;
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
reg    ap_ST_fsm_state41_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 41'd1;
#0 grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_start_reg = 1'b0;
#0 ctx5_fu_102 = 768'd0;
#0 grp_aes_expandEncKey_fu_249_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_start_reg = 1'b0;
#0 grp_aes_subBytes_fu_267_ap_start_reg = 1'b0;
#0 grp_aes_mixColumns_fu_273_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_start_reg = 1'b0;
#0 i_6_fu_94 = 3'd0;
#0 rcon_0_fu_98 = 8'd0;
#0 i_fu_110 = 4'd0;
#0 empty_fu_114 = 768'd0;
#0 rcon_1_fu_118 = 8'd0;
end
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_ecb1 grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_ready),.ctx_load(reg_319),.k_address0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_k_address0),.k_ce0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_k_ce0),.k_q0(k_q0),.p_partset113_out_i(ctx5_fu_102),.p_partset113_out_o(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_p_partset113_out_o),.p_partset113_out_o_ap_vld(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_p_partset113_out_o_ap_vld));
aes256_encrypt_ecb_aes_expandEncKey grp_aes_expandEncKey_fu_249(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_expandEncKey_fu_249_ap_start),.ap_done(grp_aes_expandEncKey_fu_249_ap_done),.ap_idle(grp_aes_expandEncKey_fu_249_ap_idle),.ap_ready(grp_aes_expandEncKey_fu_249_ap_ready),.ctx_read(grp_aes_expandEncKey_fu_249_ctx_read),.k_idx(grp_aes_expandEncKey_fu_249_k_idx),.rc_read(grp_aes_expandEncKey_fu_249_rc_read),.ap_return_0(grp_aes_expandEncKey_fu_249_ap_return_0),.ap_return_1(grp_aes_expandEncKey_fu_249_ap_return_1));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_cpkey grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_ready),.ctx5(reg_325),.buf_r_address0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_buf_r_address0),.buf_r_ce0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_buf_r_ce0),.buf_r_we0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_buf_r_we0),.buf_r_d0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_buf_r_d0),.buf_r_q0(buf_r_q0),.p_partset410_out(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_p_partset410_out),.p_partset410_out_ap_vld(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_p_partset410_out_ap_vld));
aes256_encrypt_ecb_aes_subBytes grp_aes_subBytes_fu_267(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_subBytes_fu_267_ap_start),.ap_done(grp_aes_subBytes_fu_267_ap_done),.ap_idle(grp_aes_subBytes_fu_267_ap_idle),.ap_ready(grp_aes_subBytes_fu_267_ap_ready),.buf_r_address0(grp_aes_subBytes_fu_267_buf_r_address0),.buf_r_ce0(grp_aes_subBytes_fu_267_buf_r_ce0),.buf_r_we0(grp_aes_subBytes_fu_267_buf_r_we0),.buf_r_d0(grp_aes_subBytes_fu_267_buf_r_d0),.buf_r_q0(buf_r_q0));
aes256_encrypt_ecb_aes_mixColumns grp_aes_mixColumns_fu_273(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_mixColumns_fu_273_ap_start),.ap_done(grp_aes_mixColumns_fu_273_ap_done),.ap_idle(grp_aes_mixColumns_fu_273_ap_idle),.ap_ready(grp_aes_mixColumns_fu_273_ap_ready),.buf_r_address0(grp_aes_mixColumns_fu_273_buf_r_address0),.buf_r_ce0(grp_aes_mixColumns_fu_273_buf_r_ce0),.buf_r_we0(grp_aes_mixColumns_fu_273_buf_r_we0),.buf_r_d0(grp_aes_mixColumns_fu_273_buf_r_d0),.buf_r_q0(buf_r_q0),.buf_r_address1(grp_aes_mixColumns_fu_273_buf_r_address1),.buf_r_ce1(grp_aes_mixColumns_fu_273_buf_r_ce1),.buf_r_we1(grp_aes_mixColumns_fu_273_buf_r_we1),.buf_r_d1(grp_aes_mixColumns_fu_273_buf_r_d1),.buf_r_q1(buf_r_q1));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey1 grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_ready),.ctx_ret7(reg_394),.buf_r_address0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_address0),.buf_r_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_ce0),.buf_r_we0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_we0),.buf_r_d0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_d0),.buf_r_address1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_address1),.buf_r_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_ce1),.buf_r_q1(buf_r_q1));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_ready),.empty(empty_fu_114),.buf_r_address0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_address0),.buf_r_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_ce0),.buf_r_we0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_we0),.buf_r_d0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_d0),.buf_r_address1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_address1),.buf_r_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_ce1),.buf_r_q1(buf_r_q1));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey2 grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_ready),.ctx_ret1(reg_394),.buf_r_address0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_address0),.buf_r_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_ce0),.buf_r_we0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_we0),.buf_r_d0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_d0),.buf_r_address1(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_address1),.buf_r_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_ce1),.buf_r_q1(buf_r_q1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_start_reg <= 1'b0;
    end else begin
        if (((grp_aes_expandEncKey_fu_249_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state40)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state26)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_413_p2 == 1'd1))) begin
            grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_expandEncKey_fu_249_ap_start_reg <= 1'b0;
    end else begin
        if ((((grp_aes_mixColumns_fu_273_ap_done == 1'b1) & (trunc_ln148_fu_471_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state23)) | ((icmp_ln148_fu_465_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | ((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_413_p2 == 1'd0)))) begin
            grp_aes_expandEncKey_fu_249_ap_start_reg <= 1'b1;
        end else if ((grp_aes_expandEncKey_fu_249_ap_ready == 1'b1)) begin
            grp_aes_expandEncKey_fu_249_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_mixColumns_fu_273_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_aes_mixColumns_fu_273_ap_start_reg <= 1'b1;
        end else if ((grp_aes_mixColumns_fu_273_ap_ready == 1'b1)) begin
            grp_aes_mixColumns_fu_273_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_subBytes_fu_267_ap_start_reg <= 1'b0;
    end else begin
        if ((((icmp_ln148_fu_465_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln148_fu_465_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8)))) begin
            grp_aes_subBytes_fu_267_ap_start_reg <= 1'b1;
        end else if ((grp_aes_subBytes_fu_267_ap_ready == 1'b1)) begin
            grp_aes_subBytes_fu_267_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((grp_aes_expandEncKey_fu_249_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ctx5_fu_102 <= grp_aes_expandEncKey_fu_249_ap_return_0;
    end else if (((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_p_partset113_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ctx5_fu_102 <= grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_p_partset113_out_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_fu_114 <= grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_p_partset410_out;
    end else if (((1'b0 == ap_block_state25_on_subcall_done) & (trunc_ln148_reg_621 == 1'd0) & (1'b1 == ap_CS_fsm_state25))) begin
        empty_fu_114 <= reg_394;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_6_fu_94 <= 3'd7;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_6_fu_94 <= add_ln142_fu_438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_413_p2 == 1'd1))) begin
        i_fu_110 <= 4'd1;
    end else if (((1'b0 == ap_block_state25_on_subcall_done) & (1'b1 == ap_CS_fsm_state25))) begin
        i_fu_110 <= i_19_fu_484_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        rcon_0_fu_98 <= 8'd1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        rcon_0_fu_98 <= reg_331;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_413_p2 == 1'd1))) begin
        rcon_1_fu_118 <= 8'd1;
    end else if (((1'b0 == ap_block_state25_on_subcall_done) & (trunc_ln148_reg_621 == 1'd0) & (1'b1 == ap_CS_fsm_state25))) begin
        rcon_1_fu_118 <= reg_331;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_345 <= buf_r_q1;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_345 <= buf_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_352 <= buf_r_q0;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state12))) begin
        reg_352 <= buf_r_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state1))) begin
        reg_319 <= ctx_i;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_413_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_413_p2 == 1'd0)))) begin
        reg_325 <= ctx5_fu_102;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_331 <= grp_aes_expandEncKey_fu_249_ap_return_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_335 <= rcon_1_fu_118;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_340 <= buf_r_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state12))) begin
        reg_359 <= buf_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        reg_364 <= buf_r_q1;
        reg_369 <= buf_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state14))) begin
        reg_374 <= buf_r_q1;
        reg_379 <= buf_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_384 <= buf_r_q1;
        reg_389 <= buf_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state24))) begin
        reg_394 <= grp_aes_expandEncKey_fu_249_ap_return_0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        trunc_ln148_reg_621 <= trunc_ln148_fu_471_p1;
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
always @ (*) begin
    if ((grp_aes_mixColumns_fu_273_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_aes_expandEncKey_fu_249_ap_done == 1'b0)) begin
        ap_ST_fsm_state24_blk = 1'b1;
    end else begin
        ap_ST_fsm_state24_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state25_on_subcall_done)) begin
        ap_ST_fsm_state25_blk = 1'b1;
    end else begin
        ap_ST_fsm_state25_blk = 1'b0;
    end
end
assign ap_ST_fsm_state26_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state27_on_subcall_done)) begin
        ap_ST_fsm_state27_blk = 1'b1;
    end else begin
        ap_ST_fsm_state27_blk = 1'b0;
    end
end
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
always @ (*) begin
    if ((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
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
always @ (*) begin
    if ((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_done == 1'b0)) begin
        ap_ST_fsm_state41_blk = 1'b1;
    end else begin
        ap_ST_fsm_state41_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_aes_expandEncKey_fu_249_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_aes_subBytes_fu_267_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state41))) begin
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
    if (((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state41))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        buf_r_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_address0;
    end else if (((trunc_ln148_reg_621 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        buf_r_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_address0;
    end else if (((trunc_ln148_reg_621 == 1'd0) & (1'b1 == ap_CS_fsm_state25))) begin
        buf_r_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buf_r_address0 = grp_aes_mixColumns_fu_273_buf_r_address0;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state27))) begin
        buf_r_address0 = grp_aes_subBytes_fu_267_buf_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_r_address0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_buf_r_address0;
    end else begin
        buf_r_address0 = buf_r_address0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        buf_r_address0_local = 64'd6;
    end else if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state14))) begin
        buf_r_address0_local = 64'd7;
    end else if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        buf_r_address0_local = 64'd15;
    end else if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state12))) begin
        buf_r_address0_local = 64'd2;
    end else if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_r_address0_local = 64'd13;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_r_address0_local = 64'd5;
    end else begin
        buf_r_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        buf_r_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_address1;
    end else if (((trunc_ln148_reg_621 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        buf_r_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_address1;
    end else if (((trunc_ln148_reg_621 == 1'd0) & (1'b1 == ap_CS_fsm_state25))) begin
        buf_r_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_address1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buf_r_address1 = grp_aes_mixColumns_fu_273_buf_r_address1;
    end else begin
        buf_r_address1 = buf_r_address1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        buf_r_address1_local = 64'd14;
    end else if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state14))) begin
        buf_r_address1_local = 64'd11;
    end else if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        buf_r_address1_local = 64'd3;
    end else if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state12))) begin
        buf_r_address1_local = 64'd10;
    end else if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_r_address1_local = 64'd9;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_r_address1_local = 64'd1;
    end else begin
        buf_r_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        buf_r_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_ce0;
    end else if (((trunc_ln148_reg_621 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        buf_r_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_ce0;
    end else if (((trunc_ln148_reg_621 == 1'd0) & (1'b1 == ap_CS_fsm_state25))) begin
        buf_r_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buf_r_ce0 = grp_aes_mixColumns_fu_273_buf_r_ce0;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state27))) begin
        buf_r_ce0 = grp_aes_subBytes_fu_267_buf_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_r_ce0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_buf_r_ce0;
    end else begin
        buf_r_ce0 = buf_r_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_r_ce0_local = 1'b1;
    end else begin
        buf_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        buf_r_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_ce1;
    end else if (((trunc_ln148_reg_621 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        buf_r_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_ce1;
    end else if (((trunc_ln148_reg_621 == 1'd0) & (1'b1 == ap_CS_fsm_state25))) begin
        buf_r_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_ce1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buf_r_ce1 = grp_aes_mixColumns_fu_273_buf_r_ce1;
    end else begin
        buf_r_ce1 = buf_r_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_r_ce1_local = 1'b1;
    end else begin
        buf_r_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        buf_r_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_d0;
    end else if (((trunc_ln148_reg_621 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        buf_r_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_d0;
    end else if (((trunc_ln148_reg_621 == 1'd0) & (1'b1 == ap_CS_fsm_state25))) begin
        buf_r_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_d0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buf_r_d0 = grp_aes_mixColumns_fu_273_buf_r_d0;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state27))) begin
        buf_r_d0 = grp_aes_subBytes_fu_267_buf_r_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_r_d0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_buf_r_d0;
    end else begin
        buf_r_d0 = buf_r_d0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state21))) begin
        buf_r_d0_local = reg_345;
    end else if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state20))) begin
        buf_r_d0_local = reg_374;
    end else if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state19))) begin
        buf_r_d0_local = reg_384;
    end else if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_r_d0_local = reg_364;
    end else if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state17))) begin
        buf_r_d0_local = reg_340;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_r_d0_local = reg_352;
    end else begin
        buf_r_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buf_r_d1 = grp_aes_mixColumns_fu_273_buf_r_d1;
    end else begin
        buf_r_d1 = buf_r_d1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state21))) begin
        buf_r_d1_local = reg_352;
    end else if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state20))) begin
        buf_r_d1_local = reg_389;
    end else if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state19))) begin
        buf_r_d1_local = reg_379;
    end else if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_r_d1_local = reg_369;
    end else if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state17))) begin
        buf_r_d1_local = reg_359;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_r_d1_local = reg_345;
    end else begin
        buf_r_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        buf_r_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_buf_r_we0;
    end else if (((trunc_ln148_reg_621 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        buf_r_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_buf_r_we0;
    end else if (((trunc_ln148_reg_621 == 1'd0) & (1'b1 == ap_CS_fsm_state25))) begin
        buf_r_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_buf_r_we0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buf_r_we0 = grp_aes_mixColumns_fu_273_buf_r_we0;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state27))) begin
        buf_r_we0 = grp_aes_subBytes_fu_267_buf_r_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_r_we0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_buf_r_we0;
    end else begin
        buf_r_we0 = buf_r_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_r_we0_local = 1'b1;
    end else begin
        buf_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buf_r_we1 = grp_aes_mixColumns_fu_273_buf_r_we1;
    end else begin
        buf_r_we1 = buf_r_we1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_r_we1_local = 1'b1;
    end else begin
        buf_r_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_state27_on_subcall_done) & (1'b1 == ap_CS_fsm_state27)) | ((grp_aes_expandEncKey_fu_249_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24)))) begin
        ctx_o = grp_aes_expandEncKey_fu_249_ap_return_0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        ctx_o = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_p_partset410_out;
    end else begin
        ctx_o = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b0 == ap_block_state27_on_subcall_done) & (1'b1 == ap_CS_fsm_state27)) | ((grp_aes_expandEncKey_fu_249_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24)))) begin
        ctx_o_ap_vld = 1'b1;
    end else begin
        ctx_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_aes_expandEncKey_fu_249_ctx_read = reg_319;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_aes_expandEncKey_fu_249_ctx_read = reg_325;
    end else begin
        grp_aes_expandEncKey_fu_249_ctx_read = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_aes_expandEncKey_fu_249_k_idx = 10'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_aes_expandEncKey_fu_249_k_idx = 10'd512;
    end else begin
        grp_aes_expandEncKey_fu_249_k_idx = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_aes_expandEncKey_fu_249_rc_read = reg_335;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_aes_expandEncKey_fu_249_rc_read = rcon_0_fu_98;
    end else begin
        grp_aes_expandEncKey_fu_249_rc_read = 'bx;
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
            if (((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_413_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_aes_expandEncKey_fu_249_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln148_fu_465_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((grp_aes_subBytes_fu_267_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
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
            if (((grp_aes_mixColumns_fu_273_ap_done == 1'b1) & (trunc_ln148_fu_471_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end else if (((grp_aes_mixColumns_fu_273_ap_done == 1'b1) & (trunc_ln148_fu_471_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state24 : begin
            if (((grp_aes_expandEncKey_fu_249_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end
        end
        ap_ST_fsm_state25 : begin
            if (((1'b0 == ap_block_state25_on_subcall_done) & (1'b1 == ap_CS_fsm_state25))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state27 : begin
            if (((1'b0 == ap_block_state27_on_subcall_done) & (1'b1 == ap_CS_fsm_state27))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end
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
            if (((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state41))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state41;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln142_fu_438_p2 = ($signed(i_6_fu_94) + $signed(3'd7));
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
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state25_on_subcall_done = (((grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_done == 1'b0) & (trunc_ln148_reg_621 == 1'd1)) | ((grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_done == 1'b0) & (trunc_ln148_reg_621 == 1'd0)));
end
always @ (*) begin
    ap_block_state27_on_subcall_done = ((grp_aes_subBytes_fu_267_ap_done == 1'b0) | (grp_aes_expandEncKey_fu_249_ap_done == 1'b0));
end
assign grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_start = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_279_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_start = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_293_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_start = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_286_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_start = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_259_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_start = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_ap_start_reg;
assign grp_aes_expandEncKey_fu_249_ap_start = grp_aes_expandEncKey_fu_249_ap_start_reg;
assign grp_aes_mixColumns_fu_273_ap_start = grp_aes_mixColumns_fu_273_ap_start_reg;
assign grp_aes_subBytes_fu_267_ap_start = grp_aes_subBytes_fu_267_ap_start_reg;
assign i_19_fu_484_p2 = (i_fu_110 + 4'd1);
assign icmp_ln142_fu_413_p2 = ((i_6_fu_94 == 3'd0) ? 1'b1 : 1'b0);
assign icmp_ln148_fu_465_p2 = ((i_fu_110 == 4'd14) ? 1'b1 : 1'b0);
assign k_address0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_k_address0;
assign k_ce0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_240_k_ce0;
assign trunc_ln148_fu_471_p1 = i_fu_110[0:0];
endmodule 