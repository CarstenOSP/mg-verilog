module aes256_encrypt_ecb (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ctx_i,ctx_o,ctx_o_ap_vld,k_0_address0,k_0_ce0,k_0_q0,k_1_address0,k_1_ce0,k_1_q0,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_q0,buf_0_address1,buf_0_ce1,buf_0_we1,buf_0_d1,buf_0_q1,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_q0,buf_1_address1,buf_1_ce1,buf_1_we1,buf_1_d1,buf_1_q1); 
parameter    ap_ST_fsm_state1 = 33'd1;
parameter    ap_ST_fsm_state2 = 33'd2;
parameter    ap_ST_fsm_state3 = 33'd4;
parameter    ap_ST_fsm_state4 = 33'd8;
parameter    ap_ST_fsm_state5 = 33'd16;
parameter    ap_ST_fsm_state6 = 33'd32;
parameter    ap_ST_fsm_state7 = 33'd64;
parameter    ap_ST_fsm_state8 = 33'd128;
parameter    ap_ST_fsm_state9 = 33'd256;
parameter    ap_ST_fsm_state10 = 33'd512;
parameter    ap_ST_fsm_state11 = 33'd1024;
parameter    ap_ST_fsm_state12 = 33'd2048;
parameter    ap_ST_fsm_state13 = 33'd4096;
parameter    ap_ST_fsm_state14 = 33'd8192;
parameter    ap_ST_fsm_state15 = 33'd16384;
parameter    ap_ST_fsm_state16 = 33'd32768;
parameter    ap_ST_fsm_state17 = 33'd65536;
parameter    ap_ST_fsm_state18 = 33'd131072;
parameter    ap_ST_fsm_state19 = 33'd262144;
parameter    ap_ST_fsm_state20 = 33'd524288;
parameter    ap_ST_fsm_state21 = 33'd1048576;
parameter    ap_ST_fsm_state22 = 33'd2097152;
parameter    ap_ST_fsm_state23 = 33'd4194304;
parameter    ap_ST_fsm_state24 = 33'd8388608;
parameter    ap_ST_fsm_state25 = 33'd16777216;
parameter    ap_ST_fsm_state26 = 33'd33554432;
parameter    ap_ST_fsm_state27 = 33'd67108864;
parameter    ap_ST_fsm_state28 = 33'd134217728;
parameter    ap_ST_fsm_state29 = 33'd268435456;
parameter    ap_ST_fsm_state30 = 33'd536870912;
parameter    ap_ST_fsm_state31 = 33'd1073741824;
parameter    ap_ST_fsm_state32 = 33'd2147483648;
parameter    ap_ST_fsm_state33 = 33'd4294967296;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [767:0] ctx_i;
output  [767:0] ctx_o;
output   ctx_o_ap_vld;
output  [3:0] k_0_address0;
output   k_0_ce0;
input  [7:0] k_0_q0;
output  [3:0] k_1_address0;
output   k_1_ce0;
input  [7:0] k_1_q0;
output  [2:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
input  [7:0] buf_0_q0;
output  [2:0] buf_0_address1;
output   buf_0_ce1;
output   buf_0_we1;
output  [7:0] buf_0_d1;
input  [7:0] buf_0_q1;
output  [2:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
input  [7:0] buf_1_q0;
output  [2:0] buf_1_address1;
output   buf_1_ce1;
output   buf_1_we1;
output  [7:0] buf_1_d1;
input  [7:0] buf_1_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[767:0] ctx_o;
reg ctx_o_ap_vld;
reg[2:0] buf_0_address0;
reg buf_0_ce0;
reg buf_0_we0;
reg[7:0] buf_0_d0;
reg[2:0] buf_0_address1;
reg buf_0_ce1;
reg buf_0_we1;
reg[7:0] buf_0_d1;
reg[2:0] buf_1_address0;
reg buf_1_ce0;
reg buf_1_we0;
reg[7:0] buf_1_d0;
reg[2:0] buf_1_address1;
reg buf_1_ce1;
reg buf_1_we1;
reg[7:0] buf_1_d1;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [767:0] reg_338;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state19;
reg   [767:0] reg_344;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln142_fu_422_p2;
reg   [7:0] reg_350;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state20;
reg   [7:0] reg_354;
reg   [7:0] reg_359;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state25;
reg   [7:0] reg_364;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state28;
reg   [7:0] reg_371;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state26;
reg   [7:0] reg_376;
reg   [7:0] reg_381;
reg   [7:0] reg_388;
reg   [7:0] reg_393;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state27;
reg   [7:0] reg_398;
reg   [767:0] reg_403;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state7;
wire   [0:0] trunc_ln148_fu_480_p1;
reg   [0:0] trunc_ln148_reg_630;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_ready;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_k_0_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_k_0_ce0;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_k_1_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_k_1_ce0;
wire   [767:0] grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_p_partset113_out_o;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_p_partset113_out_o_ap_vld;
wire    grp_aes_expandEncKey_fu_256_ap_start;
wire    grp_aes_expandEncKey_fu_256_ap_done;
wire    grp_aes_expandEncKey_fu_256_ap_idle;
wire    grp_aes_expandEncKey_fu_256_ap_ready;
reg   [767:0] grp_aes_expandEncKey_fu_256_ctx_read;
reg   [9:0] grp_aes_expandEncKey_fu_256_k_idx;
reg   [7:0] grp_aes_expandEncKey_fu_256_rc_read;
wire   [767:0] grp_aes_expandEncKey_fu_256_ap_return_0;
wire   [7:0] grp_aes_expandEncKey_fu_256_ap_return_1;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_ready;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_1_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_1_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_1_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_1_d0;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_0_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_0_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_0_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_0_d0;
wire   [767:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_p_partset410_out;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_p_partset410_out_ap_vld;
wire    grp_aes_subBytes_fu_276_ap_start;
wire    grp_aes_subBytes_fu_276_ap_done;
wire    grp_aes_subBytes_fu_276_ap_idle;
wire    grp_aes_subBytes_fu_276_ap_ready;
wire   [2:0] grp_aes_subBytes_fu_276_buf_0_address0;
wire    grp_aes_subBytes_fu_276_buf_0_ce0;
wire    grp_aes_subBytes_fu_276_buf_0_we0;
wire   [7:0] grp_aes_subBytes_fu_276_buf_0_d0;
wire   [2:0] grp_aes_subBytes_fu_276_buf_1_address0;
wire    grp_aes_subBytes_fu_276_buf_1_ce0;
wire    grp_aes_subBytes_fu_276_buf_1_we0;
wire   [7:0] grp_aes_subBytes_fu_276_buf_1_d0;
wire    grp_aes_mixColumns_fu_284_ap_start;
wire    grp_aes_mixColumns_fu_284_ap_done;
wire    grp_aes_mixColumns_fu_284_ap_idle;
wire    grp_aes_mixColumns_fu_284_ap_ready;
wire   [2:0] grp_aes_mixColumns_fu_284_buf_0_address0;
wire    grp_aes_mixColumns_fu_284_buf_0_ce0;
wire    grp_aes_mixColumns_fu_284_buf_0_we0;
wire   [7:0] grp_aes_mixColumns_fu_284_buf_0_d0;
wire   [2:0] grp_aes_mixColumns_fu_284_buf_0_address1;
wire    grp_aes_mixColumns_fu_284_buf_0_ce1;
wire    grp_aes_mixColumns_fu_284_buf_0_we1;
wire   [7:0] grp_aes_mixColumns_fu_284_buf_0_d1;
wire   [2:0] grp_aes_mixColumns_fu_284_buf_1_address0;
wire    grp_aes_mixColumns_fu_284_buf_1_ce0;
wire    grp_aes_mixColumns_fu_284_buf_1_we0;
wire   [7:0] grp_aes_mixColumns_fu_284_buf_1_d0;
wire   [2:0] grp_aes_mixColumns_fu_284_buf_1_address1;
wire    grp_aes_mixColumns_fu_284_buf_1_ce1;
wire    grp_aes_mixColumns_fu_284_buf_1_we1;
wire   [7:0] grp_aes_mixColumns_fu_284_buf_1_d1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_ready;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_d0;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_ce1;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_d0;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_ce1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_ready;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_d0;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_ce1;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_d0;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_ce1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_ready;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_d0;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_ce1;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_d0;
wire   [2:0] grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_ce1;
reg    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_start_reg;
wire    ap_CS_fsm_state2;
reg   [767:0] ctx5_fu_98;
reg    grp_aes_expandEncKey_fu_256_ap_start_reg;
wire   [0:0] icmp_ln148_fu_474_p2;
reg    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_aes_subBytes_fu_276_ap_start_reg;
wire    ap_CS_fsm_state9;
reg    grp_aes_mixColumns_fu_284_ap_start_reg;
wire    ap_CS_fsm_state18;
reg    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_start_reg;
wire    ap_CS_fsm_state21;
reg    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_start_reg;
wire    ap_CS_fsm_state22;
reg    grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_start_reg;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state33;
reg   [2:0] i_6_fu_90;
wire   [2:0] add_ln142_fu_447_p2;
wire    ap_CS_fsm_state5;
reg   [7:0] rcon_0_fu_94;
reg   [3:0] i_fu_106;
wire   [3:0] i_18_fu_493_p2;
reg    ap_block_state21_on_subcall_done;
reg   [767:0] empty_fu_110;
reg   [7:0] rcon_1_fu_114;
reg    ap_block_state23_on_subcall_done;
reg    buf_1_ce1_local;
wire    ap_CS_fsm_state10;
reg   [2:0] buf_1_address1_local;
reg    buf_1_ce0_local;
reg   [2:0] buf_1_address0_local;
reg    buf_1_we1_local;
reg   [7:0] buf_1_d1_local;
reg    buf_1_we0_local;
reg   [7:0] buf_1_d0_local;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_state31;
reg    buf_0_ce1_local;
reg   [2:0] buf_0_address1_local;
reg    buf_0_ce0_local;
reg   [2:0] buf_0_address0_local;
reg    buf_0_we1_local;
reg    buf_0_we0_local;
reg   [32:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state19_blk;
reg    ap_ST_fsm_state20_blk;
reg    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
reg    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
reg    ap_ST_fsm_state33_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
#0 grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_start_reg = 1'b0;
#0 ctx5_fu_98 = 768'd0;
#0 grp_aes_expandEncKey_fu_256_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_start_reg = 1'b0;
#0 grp_aes_subBytes_fu_276_ap_start_reg = 1'b0;
#0 grp_aes_mixColumns_fu_284_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_start_reg = 1'b0;
#0 i_6_fu_90 = 3'd0;
#0 rcon_0_fu_94 = 8'd0;
#0 i_fu_106 = 4'd0;
#0 empty_fu_110 = 768'd0;
#0 rcon_1_fu_114 = 8'd0;
end
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_ecb1 grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_ready),.ctx_load(reg_338),.k_0_address0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_k_0_address0),.k_0_ce0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_k_0_ce0),.k_0_q0(k_0_q0),.k_1_address0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_k_1_address0),.k_1_ce0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_k_1_ce0),.k_1_q0(k_1_q0),.p_partset113_out_i(ctx5_fu_98),.p_partset113_out_o(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_p_partset113_out_o),.p_partset113_out_o_ap_vld(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_p_partset113_out_o_ap_vld));
aes256_encrypt_ecb_aes_expandEncKey grp_aes_expandEncKey_fu_256(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_expandEncKey_fu_256_ap_start),.ap_done(grp_aes_expandEncKey_fu_256_ap_done),.ap_idle(grp_aes_expandEncKey_fu_256_ap_idle),.ap_ready(grp_aes_expandEncKey_fu_256_ap_ready),.ctx_read(grp_aes_expandEncKey_fu_256_ctx_read),.k_idx(grp_aes_expandEncKey_fu_256_k_idx),.rc_read(grp_aes_expandEncKey_fu_256_rc_read),.ap_return_0(grp_aes_expandEncKey_fu_256_ap_return_0),.ap_return_1(grp_aes_expandEncKey_fu_256_ap_return_1));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_cpkey grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_ready),.ctx5(reg_344),.buf_1_address0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_1_address0),.buf_1_ce0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_1_ce0),.buf_1_we0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_1_we0),.buf_1_d0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_1_d0),.buf_1_q0(buf_1_q0),.buf_0_address0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_0_address0),.buf_0_ce0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_0_ce0),.buf_0_we0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_0_we0),.buf_0_d0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_0_d0),.buf_0_q0(buf_0_q0),.p_partset410_out(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_p_partset410_out),.p_partset410_out_ap_vld(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_p_partset410_out_ap_vld));
aes256_encrypt_ecb_aes_subBytes grp_aes_subBytes_fu_276(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_subBytes_fu_276_ap_start),.ap_done(grp_aes_subBytes_fu_276_ap_done),.ap_idle(grp_aes_subBytes_fu_276_ap_idle),.ap_ready(grp_aes_subBytes_fu_276_ap_ready),.buf_0_address0(grp_aes_subBytes_fu_276_buf_0_address0),.buf_0_ce0(grp_aes_subBytes_fu_276_buf_0_ce0),.buf_0_we0(grp_aes_subBytes_fu_276_buf_0_we0),.buf_0_d0(grp_aes_subBytes_fu_276_buf_0_d0),.buf_0_q0(buf_0_q0),.buf_1_address0(grp_aes_subBytes_fu_276_buf_1_address0),.buf_1_ce0(grp_aes_subBytes_fu_276_buf_1_ce0),.buf_1_we0(grp_aes_subBytes_fu_276_buf_1_we0),.buf_1_d0(grp_aes_subBytes_fu_276_buf_1_d0),.buf_1_q0(buf_1_q0));
aes256_encrypt_ecb_aes_mixColumns grp_aes_mixColumns_fu_284(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_mixColumns_fu_284_ap_start),.ap_done(grp_aes_mixColumns_fu_284_ap_done),.ap_idle(grp_aes_mixColumns_fu_284_ap_idle),.ap_ready(grp_aes_mixColumns_fu_284_ap_ready),.buf_0_address0(grp_aes_mixColumns_fu_284_buf_0_address0),.buf_0_ce0(grp_aes_mixColumns_fu_284_buf_0_ce0),.buf_0_we0(grp_aes_mixColumns_fu_284_buf_0_we0),.buf_0_d0(grp_aes_mixColumns_fu_284_buf_0_d0),.buf_0_q0(buf_0_q0),.buf_0_address1(grp_aes_mixColumns_fu_284_buf_0_address1),.buf_0_ce1(grp_aes_mixColumns_fu_284_buf_0_ce1),.buf_0_we1(grp_aes_mixColumns_fu_284_buf_0_we1),.buf_0_d1(grp_aes_mixColumns_fu_284_buf_0_d1),.buf_0_q1(buf_0_q1),.buf_1_address0(grp_aes_mixColumns_fu_284_buf_1_address0),.buf_1_ce0(grp_aes_mixColumns_fu_284_buf_1_ce0),.buf_1_we0(grp_aes_mixColumns_fu_284_buf_1_we0),.buf_1_d0(grp_aes_mixColumns_fu_284_buf_1_d0),.buf_1_q0(buf_1_q0),.buf_1_address1(grp_aes_mixColumns_fu_284_buf_1_address1),.buf_1_ce1(grp_aes_mixColumns_fu_284_buf_1_ce1),.buf_1_we1(grp_aes_mixColumns_fu_284_buf_1_we1),.buf_1_d1(grp_aes_mixColumns_fu_284_buf_1_d1),.buf_1_q1(buf_1_q1));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey1 grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_ready),.buf_1_address0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_address0),.buf_1_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_ce0),.buf_1_we0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_we0),.buf_1_d0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_d0),.buf_1_address1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_address1),.buf_1_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_ce1),.buf_1_q1(buf_1_q1),.buf_0_address0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_address0),.buf_0_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_ce0),.buf_0_we0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_we0),.buf_0_d0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_d0),.buf_0_address1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_address1),.buf_0_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_ce1),.buf_0_q1(buf_0_q1),.ctx_ret7(reg_403));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_ready),.buf_1_address0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_address0),.buf_1_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_ce0),.buf_1_we0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_we0),.buf_1_d0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_d0),.buf_1_address1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_address1),.buf_1_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_ce1),.buf_1_q1(buf_1_q1),.buf_0_address0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_address0),.buf_0_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_ce0),.buf_0_we0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_we0),.buf_0_d0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_d0),.buf_0_address1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_address1),.buf_0_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_ce1),.buf_0_q1(buf_0_q1),.empty(empty_fu_110));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey2 grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_ready),.buf_1_address0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_address0),.buf_1_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_ce0),.buf_1_we0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_we0),.buf_1_d0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_d0),.buf_1_address1(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_address1),.buf_1_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_ce1),.buf_1_q1(buf_1_q1),.buf_0_address0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_address0),.buf_0_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_ce0),.buf_0_we0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_we0),.buf_0_d0(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_d0),.buf_0_address1(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_address1),.buf_0_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_ce1),.buf_0_q1(buf_0_q1),.ctx_ret1(reg_403));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_start_reg <= 1'b0;
    end else begin
        if (((grp_aes_expandEncKey_fu_256_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state32)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_422_p2 == 1'd1))) begin
            grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_expandEncKey_fu_256_ap_start_reg <= 1'b0;
    end else begin
        if ((((grp_aes_mixColumns_fu_284_ap_done == 1'b1) & (trunc_ln148_fu_480_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state19)) | ((icmp_ln148_fu_474_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | ((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_422_p2 == 1'd0)))) begin
            grp_aes_expandEncKey_fu_256_ap_start_reg <= 1'b1;
        end else if ((grp_aes_expandEncKey_fu_256_ap_ready == 1'b1)) begin
            grp_aes_expandEncKey_fu_256_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_mixColumns_fu_284_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state18)) begin
            grp_aes_mixColumns_fu_284_ap_start_reg <= 1'b1;
        end else if ((grp_aes_mixColumns_fu_284_ap_ready == 1'b1)) begin
            grp_aes_mixColumns_fu_284_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_subBytes_fu_276_ap_start_reg <= 1'b0;
    end else begin
        if ((((icmp_ln148_fu_474_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln148_fu_474_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8)))) begin
            grp_aes_subBytes_fu_276_ap_start_reg <= 1'b1;
        end else if ((grp_aes_subBytes_fu_276_ap_ready == 1'b1)) begin
            grp_aes_subBytes_fu_276_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((grp_aes_expandEncKey_fu_256_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ctx5_fu_98 <= grp_aes_expandEncKey_fu_256_ap_return_0;
    end else if (((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_p_partset113_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ctx5_fu_98 <= grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_p_partset113_out_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_fu_110 <= grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_p_partset410_out;
    end else if (((1'b0 == ap_block_state21_on_subcall_done) & (trunc_ln148_reg_630 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        empty_fu_110 <= reg_403;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_6_fu_90 <= 3'd7;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_6_fu_90 <= add_ln142_fu_447_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_422_p2 == 1'd1))) begin
        i_fu_106 <= 4'd1;
    end else if (((1'b0 == ap_block_state21_on_subcall_done) & (1'b1 == ap_CS_fsm_state21))) begin
        i_fu_106 <= i_18_fu_493_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        rcon_0_fu_94 <= 8'd1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        rcon_0_fu_94 <= reg_350;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_422_p2 == 1'd1))) begin
        rcon_1_fu_114 <= 8'd1;
    end else if (((1'b0 == ap_block_state21_on_subcall_done) & (trunc_ln148_reg_630 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        rcon_1_fu_114 <= reg_350;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state14))) begin
        reg_364 <= buf_1_q1;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_364 <= buf_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state14))) begin
        reg_381 <= buf_1_q0;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12))) begin
        reg_381 <= buf_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state19))) begin
        reg_338 <= ctx_i;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_422_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_422_p2 == 1'd0)))) begin
        reg_344 <= ctx5_fu_98;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_350 <= grp_aes_expandEncKey_fu_256_ap_return_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state19))) begin
        reg_354 <= rcon_1_fu_114;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_359 <= buf_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_371 <= buf_0_q1;
        reg_376 <= buf_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12))) begin
        reg_388 <= buf_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state13))) begin
        reg_393 <= buf_1_q1;
        reg_398 <= buf_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state20))) begin
        reg_403 <= grp_aes_expandEncKey_fu_256_ap_return_0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        trunc_ln148_reg_630 <= trunc_ln148_fu_480_p1;
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
always @ (*) begin
    if ((grp_aes_mixColumns_fu_284_ap_done == 1'b0)) begin
        ap_ST_fsm_state19_blk = 1'b1;
    end else begin
        ap_ST_fsm_state19_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_aes_expandEncKey_fu_256_ap_done == 1'b0)) begin
        ap_ST_fsm_state20_blk = 1'b1;
    end else begin
        ap_ST_fsm_state20_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state21_on_subcall_done)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end
assign ap_ST_fsm_state22_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state23_on_subcall_done)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
always @ (*) begin
    if ((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
always @ (*) begin
    if ((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_done == 1'b0)) begin
        ap_ST_fsm_state33_blk = 1'b1;
    end else begin
        ap_ST_fsm_state33_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_aes_expandEncKey_fu_256_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_aes_subBytes_fu_276_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
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
    if (((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buf_0_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_address0;
    end else if (((trunc_ln148_reg_630 == 1'd1) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_0_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_address0;
    end else if (((trunc_ln148_reg_630 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_0_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_0_address0 = grp_aes_mixColumns_fu_284_buf_0_address0;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state23))) begin
        buf_0_address0 = grp_aes_subBytes_fu_276_buf_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_0_address0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_0_address0;
    end else begin
        buf_0_address0 = buf_0_address0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_0_address0_local = 64'd3;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12))) begin
        buf_0_address0_local = 64'd1;
    end else begin
        buf_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buf_0_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_address1;
    end else if (((trunc_ln148_reg_630 == 1'd1) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_0_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_address1;
    end else if (((trunc_ln148_reg_630 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_0_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_0_address1 = grp_aes_mixColumns_fu_284_buf_0_address1;
    end else begin
        buf_0_address1 = buf_0_address1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_0_address1_local = 64'd7;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12))) begin
        buf_0_address1_local = 64'd5;
    end else begin
        buf_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buf_0_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_ce0;
    end else if (((trunc_ln148_reg_630 == 1'd1) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_0_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_ce0;
    end else if (((trunc_ln148_reg_630 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_0_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_0_ce0 = grp_aes_mixColumns_fu_284_buf_0_ce0;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state23))) begin
        buf_0_ce0 = grp_aes_subBytes_fu_276_buf_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_0_ce0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_0_ce0;
    end else begin
        buf_0_ce0 = buf_0_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_0_ce0_local = 1'b1;
    end else begin
        buf_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buf_0_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_ce1;
    end else if (((trunc_ln148_reg_630 == 1'd1) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_0_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_ce1;
    end else if (((trunc_ln148_reg_630 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_0_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_0_ce1 = grp_aes_mixColumns_fu_284_buf_0_ce1;
    end else begin
        buf_0_ce1 = buf_0_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_0_ce1_local = 1'b1;
    end else begin
        buf_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buf_0_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_d0;
    end else if (((trunc_ln148_reg_630 == 1'd1) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_0_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_d0;
    end else if (((trunc_ln148_reg_630 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_0_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_0_d0 = grp_aes_mixColumns_fu_284_buf_0_d0;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state23))) begin
        buf_0_d0 = grp_aes_subBytes_fu_276_buf_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_0_d0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_0_d0;
    end else begin
        buf_0_d0 = reg_371;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_0_d1 = grp_aes_mixColumns_fu_284_buf_0_d1;
    end else begin
        buf_0_d1 = reg_376;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buf_0_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_0_we0;
    end else if (((trunc_ln148_reg_630 == 1'd1) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_0_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_0_we0;
    end else if (((trunc_ln148_reg_630 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_0_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_0_we0 = grp_aes_mixColumns_fu_284_buf_0_we0;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state23))) begin
        buf_0_we0 = grp_aes_subBytes_fu_276_buf_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_0_we0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_0_we0;
    end else begin
        buf_0_we0 = buf_0_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12))) begin
        buf_0_we0_local = 1'b1;
    end else begin
        buf_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_0_we1 = grp_aes_mixColumns_fu_284_buf_0_we1;
    end else begin
        buf_0_we1 = buf_0_we1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12))) begin
        buf_0_we1_local = 1'b1;
    end else begin
        buf_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buf_1_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_address0;
    end else if (((trunc_ln148_reg_630 == 1'd1) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_1_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_address0;
    end else if (((trunc_ln148_reg_630 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_1_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_1_address0 = grp_aes_mixColumns_fu_284_buf_1_address0;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state23))) begin
        buf_1_address0 = grp_aes_subBytes_fu_276_buf_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_1_address0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_1_address0;
    end else begin
        buf_1_address0 = buf_1_address0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state13))) begin
        buf_1_address0_local = 64'd3;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12))) begin
        buf_1_address0_local = 64'd7;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_1_address0_local = 64'd6;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state14))) begin
        buf_1_address0_local = 64'd2;
    end else begin
        buf_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buf_1_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_address1;
    end else if (((trunc_ln148_reg_630 == 1'd1) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_1_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_address1;
    end else if (((trunc_ln148_reg_630 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_1_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_1_address1 = grp_aes_mixColumns_fu_284_buf_1_address1;
    end else begin
        buf_1_address1 = buf_1_address1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state13))) begin
        buf_1_address1_local = 64'd5;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12))) begin
        buf_1_address1_local = 64'd1;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_1_address1_local = 64'd4;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state14))) begin
        buf_1_address1_local = 64'd0;
    end else begin
        buf_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buf_1_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_ce0;
    end else if (((trunc_ln148_reg_630 == 1'd1) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_1_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_ce0;
    end else if (((trunc_ln148_reg_630 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_1_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_1_ce0 = grp_aes_mixColumns_fu_284_buf_1_ce0;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state23))) begin
        buf_1_ce0 = grp_aes_subBytes_fu_276_buf_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_1_ce0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_1_ce0;
    end else begin
        buf_1_ce0 = buf_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_1_ce0_local = 1'b1;
    end else begin
        buf_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buf_1_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_ce1;
    end else if (((trunc_ln148_reg_630 == 1'd1) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_1_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_ce1;
    end else if (((trunc_ln148_reg_630 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_1_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_1_ce1 = grp_aes_mixColumns_fu_284_buf_1_ce1;
    end else begin
        buf_1_ce1 = buf_1_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_1_ce1_local = 1'b1;
    end else begin
        buf_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buf_1_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_d0;
    end else if (((trunc_ln148_reg_630 == 1'd1) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_1_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_d0;
    end else if (((trunc_ln148_reg_630 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_1_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_1_d0 = grp_aes_mixColumns_fu_284_buf_1_d0;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state23))) begin
        buf_1_d0 = grp_aes_subBytes_fu_276_buf_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_1_d0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_1_d0;
    end else begin
        buf_1_d0 = buf_1_d0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state17))) begin
        buf_1_d0_local = reg_393;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_1_d0_local = reg_364;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state15))) begin
        buf_1_d0_local = reg_359;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state14))) begin
        buf_1_d0_local = reg_381;
    end else begin
        buf_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_1_d1 = grp_aes_mixColumns_fu_284_buf_1_d1;
    end else begin
        buf_1_d1 = buf_1_d1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state17))) begin
        buf_1_d1_local = reg_381;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_1_d1_local = reg_398;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state15))) begin
        buf_1_d1_local = reg_388;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state14))) begin
        buf_1_d1_local = reg_364;
    end else begin
        buf_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        buf_1_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_buf_1_we0;
    end else if (((trunc_ln148_reg_630 == 1'd1) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_1_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_buf_1_we0;
    end else if (((trunc_ln148_reg_630 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        buf_1_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_buf_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_1_we0 = grp_aes_mixColumns_fu_284_buf_1_we0;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state23))) begin
        buf_1_we0 = grp_aes_subBytes_fu_276_buf_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buf_1_we0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_buf_1_we0;
    end else begin
        buf_1_we0 = buf_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state14))) begin
        buf_1_we0_local = 1'b1;
    end else begin
        buf_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buf_1_we1 = grp_aes_mixColumns_fu_284_buf_1_we1;
    end else begin
        buf_1_we1 = buf_1_we1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state14))) begin
        buf_1_we1_local = 1'b1;
    end else begin
        buf_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_state23_on_subcall_done) & (1'b1 == ap_CS_fsm_state23)) | ((grp_aes_expandEncKey_fu_256_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state20)))) begin
        ctx_o = grp_aes_expandEncKey_fu_256_ap_return_0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        ctx_o = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_p_partset410_out;
    end else begin
        ctx_o = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b0 == ap_block_state23_on_subcall_done) & (1'b1 == ap_CS_fsm_state23)) | ((grp_aes_expandEncKey_fu_256_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state20)))) begin
        ctx_o_ap_vld = 1'b1;
    end else begin
        ctx_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_aes_expandEncKey_fu_256_ctx_read = reg_338;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_aes_expandEncKey_fu_256_ctx_read = reg_344;
    end else begin
        grp_aes_expandEncKey_fu_256_ctx_read = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_aes_expandEncKey_fu_256_k_idx = 10'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_aes_expandEncKey_fu_256_k_idx = 10'd512;
    end else begin
        grp_aes_expandEncKey_fu_256_k_idx = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_aes_expandEncKey_fu_256_rc_read = reg_354;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_aes_expandEncKey_fu_256_rc_read = rcon_0_fu_94;
    end else begin
        grp_aes_expandEncKey_fu_256_rc_read = 'bx;
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
            if (((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln142_fu_422_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_aes_expandEncKey_fu_256_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln148_fu_474_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((grp_aes_subBytes_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
            if (((grp_aes_mixColumns_fu_284_ap_done == 1'b1) & (trunc_ln148_fu_480_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else if (((grp_aes_mixColumns_fu_284_ap_done == 1'b1) & (trunc_ln148_fu_480_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state20 : begin
            if (((grp_aes_expandEncKey_fu_256_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        ap_ST_fsm_state21 : begin
            if (((1'b0 == ap_block_state21_on_subcall_done) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state23 : begin
            if (((1'b0 == ap_block_state23_on_subcall_done) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
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
            if (((grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln142_fu_447_p2 = ($signed(i_6_fu_90) + $signed(3'd7));
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
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state21_on_subcall_done = (((grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_done == 1'b0) & (trunc_ln148_reg_630 == 1'd1)) | ((grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_done == 1'b0) & (trunc_ln148_reg_630 == 1'd0)));
end
always @ (*) begin
    ap_block_state23_on_subcall_done = ((grp_aes_subBytes_fu_276_ap_done == 1'b0) | (grp_aes_expandEncKey_fu_256_ap_done == 1'b0));
end
assign grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_start = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_292_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_start = grp_aes256_encrypt_ecb_Pipeline_addkey2_fu_310_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_start = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_301_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_start = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_266_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_start = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_ap_start_reg;
assign grp_aes_expandEncKey_fu_256_ap_start = grp_aes_expandEncKey_fu_256_ap_start_reg;
assign grp_aes_mixColumns_fu_284_ap_start = grp_aes_mixColumns_fu_284_ap_start_reg;
assign grp_aes_subBytes_fu_276_ap_start = grp_aes_subBytes_fu_276_ap_start_reg;
assign i_18_fu_493_p2 = (i_fu_106 + 4'd1);
assign icmp_ln142_fu_422_p2 = ((i_6_fu_90 == 3'd0) ? 1'b1 : 1'b0);
assign icmp_ln148_fu_474_p2 = ((i_fu_106 == 4'd14) ? 1'b1 : 1'b0);
assign k_0_address0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_k_0_address0;
assign k_0_ce0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_k_0_ce0;
assign k_1_address0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_k_1_address0;
assign k_1_ce0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_245_k_1_ce0;
assign trunc_ln148_fu_480_p1 = i_fu_106[0:0];
endmodule 