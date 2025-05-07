module aes256_encrypt_ecb (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ctx_i,ctx_o,ctx_o_ap_vld,k_address0,k_ce0,k_q0,buf_r_address0,buf_r_ce0,buf_r_we0,buf_r_d0,buf_r_q0,buf_r_address1,buf_r_ce1,buf_r_we1,buf_r_d1,buf_r_q1); 
parameter    ap_ST_fsm_state1 = 40'd1;
parameter    ap_ST_fsm_state2 = 40'd2;
parameter    ap_ST_fsm_state3 = 40'd4;
parameter    ap_ST_fsm_state4 = 40'd8;
parameter    ap_ST_fsm_state5 = 40'd16;
parameter    ap_ST_fsm_state6 = 40'd32;
parameter    ap_ST_fsm_state7 = 40'd64;
parameter    ap_ST_fsm_state8 = 40'd128;
parameter    ap_ST_fsm_state9 = 40'd256;
parameter    ap_ST_fsm_state10 = 40'd512;
parameter    ap_ST_fsm_state11 = 40'd1024;
parameter    ap_ST_fsm_state12 = 40'd2048;
parameter    ap_ST_fsm_state13 = 40'd4096;
parameter    ap_ST_fsm_state14 = 40'd8192;
parameter    ap_ST_fsm_state15 = 40'd16384;
parameter    ap_ST_fsm_state16 = 40'd32768;
parameter    ap_ST_fsm_state17 = 40'd65536;
parameter    ap_ST_fsm_state18 = 40'd131072;
parameter    ap_ST_fsm_state19 = 40'd262144;
parameter    ap_ST_fsm_state20 = 40'd524288;
parameter    ap_ST_fsm_state21 = 40'd1048576;
parameter    ap_ST_fsm_state22 = 40'd2097152;
parameter    ap_ST_fsm_state23 = 40'd4194304;
parameter    ap_ST_fsm_state24 = 40'd8388608;
parameter    ap_ST_fsm_state25 = 40'd16777216;
parameter    ap_ST_fsm_state26 = 40'd33554432;
parameter    ap_ST_fsm_state27 = 40'd67108864;
parameter    ap_ST_fsm_state28 = 40'd134217728;
parameter    ap_ST_fsm_state29 = 40'd268435456;
parameter    ap_ST_fsm_state30 = 40'd536870912;
parameter    ap_ST_fsm_state31 = 40'd1073741824;
parameter    ap_ST_fsm_state32 = 40'd2147483648;
parameter    ap_ST_fsm_state33 = 40'd4294967296;
parameter    ap_ST_fsm_state34 = 40'd8589934592;
parameter    ap_ST_fsm_state35 = 40'd17179869184;
parameter    ap_ST_fsm_state36 = 40'd34359738368;
parameter    ap_ST_fsm_state37 = 40'd68719476736;
parameter    ap_ST_fsm_state38 = 40'd137438953472;
parameter    ap_ST_fsm_state39 = 40'd274877906944;
parameter    ap_ST_fsm_state40 = 40'd549755813888;
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
(* fsm_encoding = "none" *) reg   [39:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [767:0] reg_344;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state38;
reg   [767:0] reg_350;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln137_fu_434_p2;
reg   [7:0] reg_356;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state28;
reg   [7:0] reg_361;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state33;
reg   [7:0] reg_368;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state29;
reg   [7:0] reg_375;
reg   [7:0] reg_380;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state30;
reg   [7:0] reg_385;
reg   [7:0] reg_390;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state31;
reg   [7:0] reg_395;
reg   [7:0] reg_400;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state32;
reg   [7:0] reg_405;
reg   [7:0] reg_410;
reg   [767:0] reg_415;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state39;
wire    ap_CS_fsm_state6;
wire   [0:0] trunc_ln143_fu_493_p1;
reg   [0:0] trunc_ln143_reg_640;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_ready;
wire   [4:0] grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_k_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_k_ce0;
wire   [767:0] grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_p_partset113_out_o;
wire    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_p_partset113_out_o_ap_vld;
wire    grp_aes_expandEncKey_fu_261_ap_start;
wire    grp_aes_expandEncKey_fu_261_ap_done;
wire    grp_aes_expandEncKey_fu_261_ap_idle;
wire    grp_aes_expandEncKey_fu_261_ap_ready;
reg   [767:0] grp_aes_expandEncKey_fu_261_p_read;
reg   [9:0] grp_aes_expandEncKey_fu_261_k_idx;
reg   [7:0] grp_aes_expandEncKey_fu_261_rc_read;
wire   [767:0] grp_aes_expandEncKey_fu_261_ap_return_0;
wire   [7:0] grp_aes_expandEncKey_fu_261_ap_return_1;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_ready;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_buf_r_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_buf_r_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_buf_r_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_buf_r_d0;
wire   [767:0] grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_p_partset410_out;
wire    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_p_partset410_out_ap_vld;
wire    grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_ready;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_d0;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_ce1;
wire    grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_ready;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_d0;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_ce1;
wire    grp_aes_mixColumns_fu_297_ap_start;
wire    grp_aes_mixColumns_fu_297_ap_done;
wire    grp_aes_mixColumns_fu_297_ap_idle;
wire    grp_aes_mixColumns_fu_297_ap_ready;
wire   [3:0] grp_aes_mixColumns_fu_297_buf_r_address0;
wire    grp_aes_mixColumns_fu_297_buf_r_ce0;
wire    grp_aes_mixColumns_fu_297_buf_r_we0;
wire   [7:0] grp_aes_mixColumns_fu_297_buf_r_d0;
wire   [3:0] grp_aes_mixColumns_fu_297_buf_r_address1;
wire    grp_aes_mixColumns_fu_297_buf_r_ce1;
wire    grp_aes_mixColumns_fu_297_buf_r_we1;
wire   [7:0] grp_aes_mixColumns_fu_297_buf_r_d1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_ready;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_d0;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_ce1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_ready;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_d0;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_ce1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_start;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_done;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_idle;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_ready;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_address0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_ce0;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_we0;
wire   [7:0] grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_d0;
wire   [3:0] grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_address1;
wire    grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_ce1;
reg    grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_start_reg;
wire    ap_CS_fsm_state2;
reg   [767:0] ctx7_fu_114;
reg    grp_aes_expandEncKey_fu_261_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_start_reg;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln143_fu_487_p2;
wire    ap_CS_fsm_state8;
reg    grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_start_reg;
wire    ap_CS_fsm_state26;
reg    grp_aes_mixColumns_fu_297_ap_start_reg;
wire    ap_CS_fsm_state21;
reg    grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_start_reg;
wire    ap_CS_fsm_state24;
reg    grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_start_reg;
wire    ap_CS_fsm_state25;
reg    grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_start_reg;
wire    ap_CS_fsm_state40;
reg   [2:0] i_2_fu_106;
wire   [2:0] add_ln137_fu_444_p2;
reg   [7:0] rcon_0_fu_110;
reg   [3:0] i_4_fu_122;
wire   [3:0] i_16_fu_506_p2;
reg    ap_block_state24_on_subcall_done;
reg   [767:0] empty_fu_126;
reg   [7:0] rcon_1_fu_130;
reg    buf_r_ce1_local;
wire    ap_CS_fsm_state9;
reg   [3:0] buf_r_address1_local;
reg    buf_r_ce0_local;
reg   [3:0] buf_r_address0_local;
reg    buf_r_we1_local;
reg   [7:0] buf_r_d1_local;
reg    buf_r_we0_local;
reg   [7:0] buf_r_d0_local;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state34;
wire    ap_CS_fsm_state35;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state37;
reg   [39:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
reg    ap_ST_fsm_state22_blk;
reg    ap_ST_fsm_state23_blk;
reg    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
reg    ap_ST_fsm_state26_blk;
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
reg    ap_ST_fsm_state39_blk;
reg    ap_ST_fsm_state40_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 40'd1;
#0 grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_start_reg = 1'b0;
#0 ctx7_fu_114 = 768'd0;
#0 grp_aes_expandEncKey_fu_261_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_start_reg = 1'b0;
#0 grp_aes_mixColumns_fu_297_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_start_reg = 1'b0;
#0 i_2_fu_106 = 3'd0;
#0 rcon_0_fu_110 = 8'd0;
#0 i_4_fu_122 = 4'd0;
#0 empty_fu_126 = 768'd0;
#0 rcon_1_fu_130 = 8'd0;
end
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_ecb1 grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_ready),.ctx_load(reg_344),.k_address0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_k_address0),.k_ce0(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_k_ce0),.k_q0(k_q0),.p_partset113_out_i(ctx7_fu_114),.p_partset113_out_o(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_p_partset113_out_o),.p_partset113_out_o_ap_vld(grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_p_partset113_out_o_ap_vld));
aes256_encrypt_ecb_aes_expandEncKey grp_aes_expandEncKey_fu_261(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_expandEncKey_fu_261_ap_start),.ap_done(grp_aes_expandEncKey_fu_261_ap_done),.ap_idle(grp_aes_expandEncKey_fu_261_ap_idle),.ap_ready(grp_aes_expandEncKey_fu_261_ap_ready),.p_read(grp_aes_expandEncKey_fu_261_p_read),.k_idx(grp_aes_expandEncKey_fu_261_k_idx),.rc_read(grp_aes_expandEncKey_fu_261_rc_read),.ap_return_0(grp_aes_expandEncKey_fu_261_ap_return_0),.ap_return_1(grp_aes_expandEncKey_fu_261_ap_return_1));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_cpkey grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_ready),.ctx7(reg_350),.buf_r_address0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_buf_r_address0),.buf_r_ce0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_buf_r_ce0),.buf_r_we0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_buf_r_we0),.buf_r_d0(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_buf_r_d0),.buf_r_q0(buf_r_q0),.p_partset410_out(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_p_partset410_out),.p_partset410_out_ap_vld(grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_p_partset410_out_ap_vld));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_sub grp_aes256_encrypt_ecb_Pipeline_sub_fu_281(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_ready),.buf_r_address0(grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_address0),.buf_r_ce0(grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_ce0),.buf_r_we0(grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_we0),.buf_r_d0(grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_d0),.buf_r_address1(grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_address1),.buf_r_ce1(grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_ce1),.buf_r_q1(buf_r_q1));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_sub2 grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_ready),.buf_r_address0(grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_address0),.buf_r_ce0(grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_ce0),.buf_r_we0(grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_we0),.buf_r_d0(grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_d0),.buf_r_address1(grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_address1),.buf_r_ce1(grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_ce1),.buf_r_q1(buf_r_q1));
aes256_encrypt_ecb_aes_mixColumns grp_aes_mixColumns_fu_297(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_mixColumns_fu_297_ap_start),.ap_done(grp_aes_mixColumns_fu_297_ap_done),.ap_idle(grp_aes_mixColumns_fu_297_ap_idle),.ap_ready(grp_aes_mixColumns_fu_297_ap_ready),.buf_r_address0(grp_aes_mixColumns_fu_297_buf_r_address0),.buf_r_ce0(grp_aes_mixColumns_fu_297_buf_r_ce0),.buf_r_we0(grp_aes_mixColumns_fu_297_buf_r_we0),.buf_r_d0(grp_aes_mixColumns_fu_297_buf_r_d0),.buf_r_q0(buf_r_q0),.buf_r_address1(grp_aes_mixColumns_fu_297_buf_r_address1),.buf_r_ce1(grp_aes_mixColumns_fu_297_buf_r_ce1),.buf_r_we1(grp_aes_mixColumns_fu_297_buf_r_we1),.buf_r_d1(grp_aes_mixColumns_fu_297_buf_r_d1),.buf_r_q1(buf_r_q1));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey1 grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_ready),.ctx_ret1(reg_415),.buf_r_address0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_address0),.buf_r_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_ce0),.buf_r_we0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_we0),.buf_r_d0(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_d0),.buf_r_address1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_address1),.buf_r_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_ce1),.buf_r_q1(buf_r_q1));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_ready),.empty(empty_fu_126),.buf_r_address0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_address0),.buf_r_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_ce0),.buf_r_we0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_we0),.buf_r_d0(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_d0),.buf_r_address1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_address1),.buf_r_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_ce1),.buf_r_q1(buf_r_q1));
aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey3 grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_start),.ap_done(grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_done),.ap_idle(grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_idle),.ap_ready(grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_ready),.ctx_ret(reg_415),.buf_r_address0(grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_address0),.buf_r_ce0(grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_ce0),.buf_r_we0(grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_we0),.buf_r_d0(grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_d0),.buf_r_address1(grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_address1),.buf_r_ce1(grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_ce1),.buf_r_q1(buf_r_q1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_start_reg <= 1'b0;
    end else begin
        if (((grp_aes_expandEncKey_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_start_reg <= 1'b0;
    end else begin
        if (((grp_aes_expandEncKey_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state39))) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln137_fu_434_p2 == 1'd1))) begin
            grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln143_fu_487_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
            grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln143_fu_487_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
            grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_expandEncKey_fu_261_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state38) | ((grp_aes_mixColumns_fu_297_ap_done == 1'b1) & (trunc_ln143_fu_493_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state22)) | ((1'b1 == ap_CS_fsm_state3) & (icmp_ln137_fu_434_p2 == 1'd0)))) begin
            grp_aes_expandEncKey_fu_261_ap_start_reg <= 1'b1;
        end else if ((grp_aes_expandEncKey_fu_261_ap_ready == 1'b1)) begin
            grp_aes_expandEncKey_fu_261_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_mixColumns_fu_297_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state21)) begin
            grp_aes_mixColumns_fu_297_ap_start_reg <= 1'b1;
        end else if ((grp_aes_mixColumns_fu_297_ap_ready == 1'b1)) begin
            grp_aes_mixColumns_fu_297_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((grp_aes_expandEncKey_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ctx7_fu_114 <= grp_aes_expandEncKey_fu_261_ap_return_0;
    end else if (((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_p_partset113_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ctx7_fu_114 <= grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_p_partset113_out_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_fu_126 <= grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_p_partset410_out;
    end else if (((grp_aes_expandEncKey_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        empty_fu_126 <= grp_aes_expandEncKey_fu_261_ap_return_0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_2_fu_106 <= 3'd7;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln137_fu_434_p2 == 1'd0))) begin
        i_2_fu_106 <= add_ln137_fu_444_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln137_fu_434_p2 == 1'd1))) begin
        i_4_fu_122 <= 4'd1;
    end else if (((1'b0 == ap_block_state24_on_subcall_done) & (1'b1 == ap_CS_fsm_state24))) begin
        i_4_fu_122 <= i_16_fu_506_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        rcon_0_fu_110 <= 8'd1;
    end else if (((grp_aes_expandEncKey_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        rcon_0_fu_110 <= grp_aes_expandEncKey_fu_261_ap_return_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln137_fu_434_p2 == 1'd1))) begin
        rcon_1_fu_130 <= 8'd1;
    end else if (((grp_aes_expandEncKey_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        rcon_1_fu_130 <= grp_aes_expandEncKey_fu_261_ap_return_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_361 <= buf_r_q1;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_361 <= buf_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_368 <= buf_r_q0;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_368 <= buf_r_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state1))) begin
        reg_344 <= ctx_i;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (icmp_ln137_fu_434_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state3) & (icmp_ln137_fu_434_p2 == 1'd0)))) begin
        reg_350 <= ctx7_fu_114;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_356 <= buf_r_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_375 <= buf_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state12))) begin
        reg_380 <= buf_r_q1;
        reg_385 <= buf_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        reg_390 <= buf_r_q1;
        reg_395 <= buf_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state14))) begin
        reg_400 <= buf_r_q1;
        reg_405 <= buf_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state22))) begin
        reg_410 <= rcon_1_fu_130;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state23))) begin
        reg_415 <= grp_aes_expandEncKey_fu_261_ap_return_0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        trunc_ln143_reg_640 <= trunc_ln143_fu_493_p1;
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
always @ (*) begin
    if ((grp_aes_mixColumns_fu_297_ap_done == 1'b0)) begin
        ap_ST_fsm_state22_blk = 1'b1;
    end else begin
        ap_ST_fsm_state22_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_aes_expandEncKey_fu_261_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state24_on_subcall_done)) begin
        ap_ST_fsm_state24_blk = 1'b1;
    end else begin
        ap_ST_fsm_state24_blk = 1'b0;
    end
end
assign ap_ST_fsm_state25_blk = 1'b0;
always @ (*) begin
    if ((grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_done == 1'b0)) begin
        ap_ST_fsm_state26_blk = 1'b1;
    end else begin
        ap_ST_fsm_state26_blk = 1'b0;
    end
end
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
always @ (*) begin
    if ((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_done == 1'b0)) begin
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
always @ (*) begin
    if ((grp_aes_expandEncKey_fu_261_ap_done == 1'b0)) begin
        ap_ST_fsm_state39_blk = 1'b1;
    end else begin
        ap_ST_fsm_state39_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_done == 1'b0)) begin
        ap_ST_fsm_state40_blk = 1'b1;
    end else begin
        ap_ST_fsm_state40_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_aes_expandEncKey_fu_261_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state40))) begin
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
    if (((grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state40))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        buf_r_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_address0;
    end else if (((trunc_ln143_reg_640 == 1'd1) & (1'b1 == ap_CS_fsm_state24))) begin
        buf_r_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_address0;
    end else if (((trunc_ln143_reg_640 == 1'd0) & (1'b1 == ap_CS_fsm_state24))) begin
        buf_r_address0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buf_r_address0 = grp_aes_mixColumns_fu_297_buf_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buf_r_address0 = grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_r_address0 = grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_r_address0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_buf_r_address0;
    end else begin
        buf_r_address0 = buf_r_address0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state14))) begin
        buf_r_address0_local = 64'd6;
    end else if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        buf_r_address0_local = 64'd7;
    end else if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state12))) begin
        buf_r_address0_local = 64'd15;
    end else if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_r_address0_local = 64'd2;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_r_address0_local = 64'd13;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        buf_r_address0_local = 64'd5;
    end else begin
        buf_r_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        buf_r_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_address1;
    end else if (((trunc_ln143_reg_640 == 1'd1) & (1'b1 == ap_CS_fsm_state24))) begin
        buf_r_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_address1;
    end else if (((trunc_ln143_reg_640 == 1'd0) & (1'b1 == ap_CS_fsm_state24))) begin
        buf_r_address1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buf_r_address1 = grp_aes_mixColumns_fu_297_buf_r_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buf_r_address1 = grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_r_address1 = grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_address1;
    end else begin
        buf_r_address1 = buf_r_address1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state14))) begin
        buf_r_address1_local = 64'd14;
    end else if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        buf_r_address1_local = 64'd11;
    end else if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state12))) begin
        buf_r_address1_local = 64'd3;
    end else if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state11))) begin
        buf_r_address1_local = 64'd10;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_r_address1_local = 64'd9;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        buf_r_address1_local = 64'd1;
    end else begin
        buf_r_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        buf_r_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_ce0;
    end else if (((trunc_ln143_reg_640 == 1'd1) & (1'b1 == ap_CS_fsm_state24))) begin
        buf_r_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_ce0;
    end else if (((trunc_ln143_reg_640 == 1'd0) & (1'b1 == ap_CS_fsm_state24))) begin
        buf_r_ce0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buf_r_ce0 = grp_aes_mixColumns_fu_297_buf_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buf_r_ce0 = grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_r_ce0 = grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_r_ce0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_buf_r_ce0;
    end else begin
        buf_r_ce0 = buf_r_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_r_ce0_local = 1'b1;
    end else begin
        buf_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        buf_r_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_ce1;
    end else if (((trunc_ln143_reg_640 == 1'd1) & (1'b1 == ap_CS_fsm_state24))) begin
        buf_r_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_ce1;
    end else if (((trunc_ln143_reg_640 == 1'd0) & (1'b1 == ap_CS_fsm_state24))) begin
        buf_r_ce1 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buf_r_ce1 = grp_aes_mixColumns_fu_297_buf_r_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buf_r_ce1 = grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_r_ce1 = grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_ce1;
    end else begin
        buf_r_ce1 = buf_r_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state10))) begin
        buf_r_ce1_local = 1'b1;
    end else begin
        buf_r_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        buf_r_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_d0;
    end else if (((trunc_ln143_reg_640 == 1'd1) & (1'b1 == ap_CS_fsm_state24))) begin
        buf_r_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_d0;
    end else if (((trunc_ln143_reg_640 == 1'd0) & (1'b1 == ap_CS_fsm_state24))) begin
        buf_r_d0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_d0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buf_r_d0 = grp_aes_mixColumns_fu_297_buf_r_d0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buf_r_d0 = grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_r_d0 = grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_d0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_r_d0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_buf_r_d0;
    end else begin
        buf_r_d0 = buf_r_d0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state20))) begin
        buf_r_d0_local = reg_361;
    end else if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state19))) begin
        buf_r_d0_local = reg_390;
    end else if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_r_d0_local = reg_400;
    end else if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state17))) begin
        buf_r_d0_local = reg_380;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_r_d0_local = reg_356;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        buf_r_d0_local = reg_368;
    end else begin
        buf_r_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        buf_r_d1 = grp_aes_mixColumns_fu_297_buf_r_d1;
    end else begin
        buf_r_d1 = buf_r_d1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state20))) begin
        buf_r_d1_local = reg_368;
    end else if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state19))) begin
        buf_r_d1_local = reg_405;
    end else if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state18))) begin
        buf_r_d1_local = reg_395;
    end else if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state17))) begin
        buf_r_d1_local = reg_385;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_r_d1_local = reg_375;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        buf_r_d1_local = reg_361;
    end else begin
        buf_r_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        buf_r_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_buf_r_we0;
    end else if (((trunc_ln143_reg_640 == 1'd1) & (1'b1 == ap_CS_fsm_state24))) begin
        buf_r_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_buf_r_we0;
    end else if (((trunc_ln143_reg_640 == 1'd0) & (1'b1 == ap_CS_fsm_state24))) begin
        buf_r_we0 = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_buf_r_we0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        buf_r_we0 = grp_aes_mixColumns_fu_297_buf_r_we0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        buf_r_we0 = grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_buf_r_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_r_we0 = grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_buf_r_we0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_r_we0 = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_buf_r_we0;
    end else begin
        buf_r_we0 = buf_r_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        buf_r_we0_local = 1'b1;
    end else begin
        buf_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        buf_r_we1 = grp_aes_mixColumns_fu_297_buf_r_we1;
    end else begin
        buf_r_we1 = buf_r_we1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        buf_r_we1_local = 1'b1;
    end else begin
        buf_r_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_aes_expandEncKey_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state39)) | ((grp_aes_expandEncKey_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23)))) begin
        ctx_o = grp_aes_expandEncKey_fu_261_ap_return_0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_o = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_p_partset410_out;
    end else begin
        ctx_o = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((grp_aes_expandEncKey_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state39)) | ((grp_aes_expandEncKey_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23)))) begin
        ctx_o_ap_vld = 1'b1;
    end else begin
        ctx_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_aes_expandEncKey_fu_261_k_idx = 10'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_aes_expandEncKey_fu_261_k_idx = 10'd512;
    end else begin
        grp_aes_expandEncKey_fu_261_k_idx = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_aes_expandEncKey_fu_261_p_read = reg_344;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_aes_expandEncKey_fu_261_p_read = reg_350;
    end else begin
        grp_aes_expandEncKey_fu_261_p_read = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state23))) begin
        grp_aes_expandEncKey_fu_261_rc_read = reg_410;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_aes_expandEncKey_fu_261_rc_read = rcon_0_fu_110;
    end else begin
        grp_aes_expandEncKey_fu_261_rc_read = 'bx;
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
            if (((grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln137_fu_434_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_aes_expandEncKey_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln143_fu_487_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
            if (((grp_aes_mixColumns_fu_297_ap_done == 1'b1) & (trunc_ln143_fu_493_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state22))) begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end else if (((grp_aes_mixColumns_fu_297_ap_done == 1'b1) & (trunc_ln143_fu_493_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state22))) begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_state23 : begin
            if (((grp_aes_expandEncKey_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state24 : begin
            if (((1'b0 == ap_block_state24_on_subcall_done) & (1'b1 == ap_CS_fsm_state24))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state26 : begin
            if (((grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
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
            if (((grp_aes_expandEncKey_fu_261_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state39))) begin
                ap_NS_fsm = ap_ST_fsm_state40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state39;
            end
        end
        ap_ST_fsm_state40 : begin
            if (((grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state40))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state40;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln137_fu_444_p2 = ($signed(i_2_fu_106) + $signed(3'd7));
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
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state24_on_subcall_done = (((grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_done == 1'b0) & (trunc_ln143_reg_640 == 1'd1)) | ((grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_done == 1'b0) & (trunc_ln143_reg_640 == 1'd0)));
end
assign grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_start = grp_aes256_encrypt_ecb_Pipeline_addkey1_fu_303_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_start = grp_aes256_encrypt_ecb_Pipeline_addkey3_fu_317_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_start = grp_aes256_encrypt_ecb_Pipeline_addkey_fu_310_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_start = grp_aes256_encrypt_ecb_Pipeline_cpkey_fu_273_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_start = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_start = grp_aes256_encrypt_ecb_Pipeline_sub2_fu_289_ap_start_reg;
assign grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_start = grp_aes256_encrypt_ecb_Pipeline_sub_fu_281_ap_start_reg;
assign grp_aes_expandEncKey_fu_261_ap_start = grp_aes_expandEncKey_fu_261_ap_start_reg;
assign grp_aes_mixColumns_fu_297_ap_start = grp_aes_mixColumns_fu_297_ap_start_reg;
assign i_16_fu_506_p2 = (i_4_fu_122 + 4'd1);
assign icmp_ln137_fu_434_p2 = ((i_2_fu_106 == 3'd0) ? 1'b1 : 1'b0);
assign icmp_ln143_fu_487_p2 = ((i_4_fu_122 == 4'd14) ? 1'b1 : 1'b0);
assign k_address0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_k_address0;
assign k_ce0 = grp_aes256_encrypt_ecb_Pipeline_ecb1_fu_252_k_ce0;
assign trunc_ln143_fu_493_p1 = i_4_fu_122[0:0];
endmodule 