module sha_stream_sha_transform (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sha_info_digest_0_i,sha_info_digest_0_o,sha_info_digest_0_o_ap_vld,sha_info_digest_1_i,sha_info_digest_1_o,sha_info_digest_1_o_ap_vld,sha_info_digest_2_i,sha_info_digest_2_o,sha_info_digest_2_o_ap_vld,sha_info_digest_3_i,sha_info_digest_3_o,sha_info_digest_3_o_ap_vld,sha_info_digest_4_i,sha_info_digest_4_o,sha_info_digest_4_o_ap_vld,sha_info_data_address0,sha_info_data_ce0,sha_info_data_q0,sha_info_data_address1,sha_info_data_ce1,sha_info_data_q1); 
parameter    ap_ST_fsm_state1 = 20'd1;
parameter    ap_ST_fsm_state2 = 20'd2;
parameter    ap_ST_fsm_state3 = 20'd4;
parameter    ap_ST_fsm_state4 = 20'd8;
parameter    ap_ST_fsm_state5 = 20'd16;
parameter    ap_ST_fsm_state6 = 20'd32;
parameter    ap_ST_fsm_state7 = 20'd64;
parameter    ap_ST_fsm_state8 = 20'd128;
parameter    ap_ST_fsm_state9 = 20'd256;
parameter    ap_ST_fsm_state10 = 20'd512;
parameter    ap_ST_fsm_state11 = 20'd1024;
parameter    ap_ST_fsm_state12 = 20'd2048;
parameter    ap_ST_fsm_state13 = 20'd4096;
parameter    ap_ST_fsm_state14 = 20'd8192;
parameter    ap_ST_fsm_state15 = 20'd16384;
parameter    ap_ST_fsm_state16 = 20'd32768;
parameter    ap_ST_fsm_state17 = 20'd65536;
parameter    ap_ST_fsm_state18 = 20'd131072;
parameter    ap_ST_fsm_state19 = 20'd262144;
parameter    ap_ST_fsm_state20 = 20'd524288;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sha_info_digest_0_i;
output  [31:0] sha_info_digest_0_o;
output   sha_info_digest_0_o_ap_vld;
input  [31:0] sha_info_digest_1_i;
output  [31:0] sha_info_digest_1_o;
output   sha_info_digest_1_o_ap_vld;
input  [31:0] sha_info_digest_2_i;
output  [31:0] sha_info_digest_2_o;
output   sha_info_digest_2_o_ap_vld;
input  [31:0] sha_info_digest_3_i;
output  [31:0] sha_info_digest_3_o;
output   sha_info_digest_3_o_ap_vld;
input  [31:0] sha_info_digest_4_i;
output  [31:0] sha_info_digest_4_o;
output   sha_info_digest_4_o_ap_vld;
output  [3:0] sha_info_data_address0;
output   sha_info_data_ce0;
input  [31:0] sha_info_data_q0;
output  [3:0] sha_info_data_address1;
output   sha_info_data_ce1;
input  [31:0] sha_info_data_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] sha_info_digest_0_o;
reg sha_info_digest_0_o_ap_vld;
reg[31:0] sha_info_digest_1_o;
reg sha_info_digest_1_o_ap_vld;
reg[31:0] sha_info_digest_2_o;
reg sha_info_digest_2_o_ap_vld;
reg[31:0] sha_info_digest_3_o;
reg sha_info_digest_3_o_ap_vld;
reg[31:0] sha_info_digest_4_o;
reg sha_info_digest_4_o_ap_vld;
(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [4:0] W_address0;
reg    W_ce0;
reg    W_we0;
reg   [31:0] W_d0;
wire   [31:0] W_q0;
reg   [4:0] W_address1;
reg    W_ce1;
reg    W_we1;
wire   [31:0] W_q1;
reg   [4:0] W_1_address0;
reg    W_1_ce0;
reg    W_1_we0;
reg   [31:0] W_1_d0;
wire   [31:0] W_1_q0;
reg   [4:0] W_1_address1;
reg    W_1_ce1;
reg    W_1_we1;
wire   [31:0] W_1_q1;
reg   [4:0] W_2_address0;
reg    W_2_ce0;
reg    W_2_we0;
reg   [31:0] W_2_d0;
wire   [31:0] W_2_q0;
reg   [4:0] W_2_address1;
reg    W_2_ce1;
reg    W_2_we1;
wire   [31:0] W_2_q1;
reg   [4:0] W_3_address0;
reg    W_3_ce0;
reg    W_3_we0;
reg   [31:0] W_3_d0;
wire   [31:0] W_3_q0;
reg   [4:0] W_3_address1;
reg    W_3_ce1;
reg    W_3_we1;
wire   [31:0] W_3_q1;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_start;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_done;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_idle;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_ready;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_address0;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_ce0;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_we0;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_d0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_address1;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_ce1;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_we1;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_d1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_address0;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_ce0;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_we0;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_d0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_address1;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_ce1;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_we1;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_d1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_address0;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_ce0;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_we0;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_d0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_address1;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_ce1;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_we1;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_d1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_address0;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_ce0;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_we0;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_d0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_address1;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_ce1;
wire    grp_sha_transform_Pipeline_trans_lp2_fu_335_W_we1;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp2_fu_335_W_d1;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_start;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_done;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_idle;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_ready;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp3_fu_343_W_address0;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_W_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp3_fu_343_W_address1;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_W_ce1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp3_fu_343_W_1_address0;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_W_1_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp3_fu_343_W_1_address1;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_W_1_ce1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp3_fu_343_W_2_address0;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_W_2_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp3_fu_343_W_2_address1;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_W_2_ce1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp3_fu_343_W_3_address0;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_W_3_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp3_fu_343_W_3_address1;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_W_3_ce1;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp3_fu_343_E_39_out;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_E_39_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp3_fu_343_B_39_out;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_B_39_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp3_fu_343_D_43_out;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_D_43_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp3_fu_343_A_43_out;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_A_43_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp3_fu_343_C_54_out;
wire    grp_sha_transform_Pipeline_trans_lp3_fu_343_C_54_out_ap_vld;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_start;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_done;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_idle;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_ready;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp4_fu_361_W_address0;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_W_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp4_fu_361_W_address1;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_W_ce1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp4_fu_361_W_1_address0;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_W_1_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp4_fu_361_W_1_address1;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_W_1_ce1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp4_fu_361_W_2_address0;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_W_2_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp4_fu_361_W_2_address1;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_W_2_ce1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp4_fu_361_W_3_address0;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_W_3_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp4_fu_361_W_3_address1;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_W_3_ce1;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp4_fu_361_E_38_out;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_E_38_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp4_fu_361_B_38_out;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_B_38_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp4_fu_361_D_41_out;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_D_41_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp4_fu_361_A_41_out;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_A_41_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp4_fu_361_C_48_out;
wire    grp_sha_transform_Pipeline_trans_lp4_fu_361_C_48_out_ap_vld;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_start;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_done;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_idle;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_ready;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp5_fu_379_W_address0;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_W_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp5_fu_379_W_address1;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_W_ce1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp5_fu_379_W_1_address0;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_W_1_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp5_fu_379_W_1_address1;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_W_1_ce1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp5_fu_379_W_2_address0;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_W_2_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp5_fu_379_W_2_address1;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_W_2_ce1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp5_fu_379_W_3_address0;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_W_3_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp5_fu_379_W_3_address1;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_W_3_ce1;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp5_fu_379_E_37_out;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_E_37_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp5_fu_379_B_37_out;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_B_37_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp5_fu_379_D_39_out;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_D_39_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp5_fu_379_A_39_out;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_A_39_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp5_fu_379_C_42_out;
wire    grp_sha_transform_Pipeline_trans_lp5_fu_379_C_42_out_ap_vld;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_start;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_done;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_idle;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_ready;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp6_fu_397_W_address0;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_W_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp6_fu_397_W_address1;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_W_ce1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp6_fu_397_W_1_address0;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_W_1_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp6_fu_397_W_1_address1;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_W_1_ce1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp6_fu_397_W_2_address0;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_W_2_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp6_fu_397_W_2_address1;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_W_2_ce1;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp6_fu_397_W_3_address0;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_W_3_ce0;
wire   [4:0] grp_sha_transform_Pipeline_trans_lp6_fu_397_W_3_address1;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_W_3_ce1;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp6_fu_397_C_34_out;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_C_34_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp6_fu_397_temp_5_out;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_temp_5_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp6_fu_397_C_35_out;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_C_35_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp6_fu_397_temp_6_out;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_temp_6_out_ap_vld;
wire   [31:0] grp_sha_transform_Pipeline_trans_lp6_fu_397_C_36_out;
wire    grp_sha_transform_Pipeline_trans_lp6_fu_397_C_36_out_ap_vld;
reg    grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg    grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_start_reg;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
reg   [31:0] A_43_loc_fu_126;
reg   [31:0] C_54_loc_fu_122;
reg    grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_start_reg;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
reg   [31:0] A_41_loc_fu_106;
reg   [31:0] C_48_loc_fu_102;
reg    grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_start_reg;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
reg   [31:0] A_39_loc_fu_86;
reg   [31:0] C_42_loc_fu_82;
reg    grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_start_reg;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
reg   [31:0] temp_6_loc_fu_66;
reg   [31:0] C_36_loc_fu_62;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire   [31:0] add_ln133_fu_515_p2;
wire    ap_CS_fsm_state20;
wire   [31:0] add_ln134_fu_526_p2;
wire   [31:0] add_ln135_fu_537_p2;
wire   [31:0] add_ln136_fu_548_p2;
wire   [31:0] add_ln137_fu_559_p2;
reg    sha_info_data_ce1_local;
reg   [3:0] sha_info_data_address1_local;
reg    sha_info_data_ce0_local;
reg   [3:0] sha_info_data_address0_local;
reg    W_we0_local;
reg    W_ce0_local;
reg   [4:0] W_address0_local;
reg    W_1_we0_local;
reg    W_1_ce0_local;
reg   [4:0] W_1_address0_local;
reg    W_2_we0_local;
reg    W_2_ce0_local;
reg   [4:0] W_2_address0_local;
reg    W_3_we0_local;
reg    W_3_ce0_local;
reg   [4:0] W_3_address0_local;
reg   [19:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
reg    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
reg    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 20'd1;
#0 grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_start_reg = 1'b0;
#0 grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_start_reg = 1'b0;
#0 grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_start_reg = 1'b0;
#0 grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_start_reg = 1'b0;
#0 grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_start_reg = 1'b0;
end
sha_stream_sha_transform_W_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 20 ),.AddressWidth( 5 ))
W_U(.clk(ap_clk),.reset(ap_rst),.address0(W_address0),.ce0(W_ce0),.we0(W_we0),.d0(W_d0),.q0(W_q0),.address1(W_address1),.ce1(W_ce1),.we1(W_we1),.d1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_d1),.q1(W_q1));
sha_stream_sha_transform_W_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 20 ),.AddressWidth( 5 ))
W_1_U(.clk(ap_clk),.reset(ap_rst),.address0(W_1_address0),.ce0(W_1_ce0),.we0(W_1_we0),.d0(W_1_d0),.q0(W_1_q0),.address1(W_1_address1),.ce1(W_1_ce1),.we1(W_1_we1),.d1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_d1),.q1(W_1_q1));
sha_stream_sha_transform_W_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 20 ),.AddressWidth( 5 ))
W_2_U(.clk(ap_clk),.reset(ap_rst),.address0(W_2_address0),.ce0(W_2_ce0),.we0(W_2_we0),.d0(W_2_d0),.q0(W_2_q0),.address1(W_2_address1),.ce1(W_2_ce1),.we1(W_2_we1),.d1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_d1),.q1(W_2_q1));
sha_stream_sha_transform_W_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 20 ),.AddressWidth( 5 ))
W_3_U(.clk(ap_clk),.reset(ap_rst),.address0(W_3_address0),.ce0(W_3_ce0),.we0(W_3_we0),.d0(W_3_d0),.q0(W_3_q0),.address1(W_3_address1),.ce1(W_3_ce1),.we1(W_3_we1),.d1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_d1),.q1(W_3_q1));
sha_stream_sha_transform_Pipeline_trans_lp2 grp_sha_transform_Pipeline_trans_lp2_fu_335(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_start),.ap_done(grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_done),.ap_idle(grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_idle),.ap_ready(grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_ready),.W_3_address0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_address0),.W_3_ce0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_ce0),.W_3_we0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_we0),.W_3_d0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_d0),.W_3_q0(W_3_q0),.W_3_address1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_address1),.W_3_ce1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_ce1),.W_3_we1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_we1),.W_3_d1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_d1),.W_3_q1(W_3_q1),.W_2_address0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_address0),.W_2_ce0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_ce0),.W_2_we0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_we0),.W_2_d0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_d0),.W_2_q0(W_2_q0),.W_2_address1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_address1),.W_2_ce1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_ce1),.W_2_we1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_we1),.W_2_d1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_d1),.W_2_q1(W_2_q1),.W_1_address0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_address0),.W_1_ce0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_ce0),.W_1_we0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_we0),.W_1_d0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_d0),.W_1_q0(W_1_q0),.W_1_address1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_address1),.W_1_ce1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_ce1),.W_1_we1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_we1),.W_1_d1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_d1),.W_1_q1(W_1_q1),.W_address0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_address0),.W_ce0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_ce0),.W_we0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_we0),.W_d0(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_d0),.W_q0(W_q0),.W_address1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_address1),.W_ce1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_ce1),.W_we1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_we1),.W_d1(grp_sha_transform_Pipeline_trans_lp2_fu_335_W_d1),.W_q1(W_q1));
sha_stream_sha_transform_Pipeline_trans_lp3 grp_sha_transform_Pipeline_trans_lp3_fu_343(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_start),.ap_done(grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_done),.ap_idle(grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_idle),.ap_ready(grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_ready),.A(sha_info_digest_0_i),.B(sha_info_digest_1_i),.C(sha_info_digest_2_i),.D(sha_info_digest_3_i),.E(sha_info_digest_4_i),.W_address0(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_address0),.W_ce0(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_ce0),.W_q0(W_q0),.W_address1(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_address1),.W_ce1(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_ce1),.W_q1(W_q1),.W_1_address0(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_1_address0),.W_1_ce0(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_1_ce0),.W_1_q0(W_1_q0),.W_1_address1(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_1_address1),.W_1_ce1(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_1_ce1),.W_1_q1(W_1_q1),.W_2_address0(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_2_address0),.W_2_ce0(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_2_ce0),.W_2_q0(W_2_q0),.W_2_address1(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_2_address1),.W_2_ce1(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_2_ce1),.W_2_q1(W_2_q1),.W_3_address0(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_3_address0),.W_3_ce0(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_3_ce0),.W_3_q0(W_3_q0),.W_3_address1(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_3_address1),.W_3_ce1(grp_sha_transform_Pipeline_trans_lp3_fu_343_W_3_ce1),.W_3_q1(W_3_q1),.E_39_out(grp_sha_transform_Pipeline_trans_lp3_fu_343_E_39_out),.E_39_out_ap_vld(grp_sha_transform_Pipeline_trans_lp3_fu_343_E_39_out_ap_vld),.B_39_out(grp_sha_transform_Pipeline_trans_lp3_fu_343_B_39_out),.B_39_out_ap_vld(grp_sha_transform_Pipeline_trans_lp3_fu_343_B_39_out_ap_vld),.D_43_out(grp_sha_transform_Pipeline_trans_lp3_fu_343_D_43_out),.D_43_out_ap_vld(grp_sha_transform_Pipeline_trans_lp3_fu_343_D_43_out_ap_vld),.A_43_out(grp_sha_transform_Pipeline_trans_lp3_fu_343_A_43_out),.A_43_out_ap_vld(grp_sha_transform_Pipeline_trans_lp3_fu_343_A_43_out_ap_vld),.C_54_out(grp_sha_transform_Pipeline_trans_lp3_fu_343_C_54_out),.C_54_out_ap_vld(grp_sha_transform_Pipeline_trans_lp3_fu_343_C_54_out_ap_vld));
sha_stream_sha_transform_Pipeline_trans_lp4 grp_sha_transform_Pipeline_trans_lp4_fu_361(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_start),.ap_done(grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_done),.ap_idle(grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_idle),.ap_ready(grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_ready),.A_43_reload(A_43_loc_fu_126),.B_39_reload(grp_sha_transform_Pipeline_trans_lp3_fu_343_B_39_out),.C_54_reload(C_54_loc_fu_122),.D_43_reload(grp_sha_transform_Pipeline_trans_lp3_fu_343_D_43_out),.E_39_reload(grp_sha_transform_Pipeline_trans_lp3_fu_343_E_39_out),.W_address0(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_address0),.W_ce0(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_ce0),.W_q0(W_q0),.W_address1(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_address1),.W_ce1(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_ce1),.W_q1(W_q1),.W_1_address0(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_1_address0),.W_1_ce0(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_1_ce0),.W_1_q0(W_1_q0),.W_1_address1(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_1_address1),.W_1_ce1(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_1_ce1),.W_1_q1(W_1_q1),.W_2_address0(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_2_address0),.W_2_ce0(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_2_ce0),.W_2_q0(W_2_q0),.W_2_address1(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_2_address1),.W_2_ce1(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_2_ce1),.W_2_q1(W_2_q1),.W_3_address0(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_3_address0),.W_3_ce0(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_3_ce0),.W_3_q0(W_3_q0),.W_3_address1(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_3_address1),.W_3_ce1(grp_sha_transform_Pipeline_trans_lp4_fu_361_W_3_ce1),.W_3_q1(W_3_q1),.E_38_out(grp_sha_transform_Pipeline_trans_lp4_fu_361_E_38_out),.E_38_out_ap_vld(grp_sha_transform_Pipeline_trans_lp4_fu_361_E_38_out_ap_vld),.B_38_out(grp_sha_transform_Pipeline_trans_lp4_fu_361_B_38_out),.B_38_out_ap_vld(grp_sha_transform_Pipeline_trans_lp4_fu_361_B_38_out_ap_vld),.D_41_out(grp_sha_transform_Pipeline_trans_lp4_fu_361_D_41_out),.D_41_out_ap_vld(grp_sha_transform_Pipeline_trans_lp4_fu_361_D_41_out_ap_vld),.A_41_out(grp_sha_transform_Pipeline_trans_lp4_fu_361_A_41_out),.A_41_out_ap_vld(grp_sha_transform_Pipeline_trans_lp4_fu_361_A_41_out_ap_vld),.C_48_out(grp_sha_transform_Pipeline_trans_lp4_fu_361_C_48_out),.C_48_out_ap_vld(grp_sha_transform_Pipeline_trans_lp4_fu_361_C_48_out_ap_vld));
sha_stream_sha_transform_Pipeline_trans_lp5 grp_sha_transform_Pipeline_trans_lp5_fu_379(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_start),.ap_done(grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_done),.ap_idle(grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_idle),.ap_ready(grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_ready),.A_41_reload(A_41_loc_fu_106),.B_38_reload(grp_sha_transform_Pipeline_trans_lp4_fu_361_B_38_out),.C_48_reload(C_48_loc_fu_102),.D_41_reload(grp_sha_transform_Pipeline_trans_lp4_fu_361_D_41_out),.E_38_reload(grp_sha_transform_Pipeline_trans_lp4_fu_361_E_38_out),.W_address0(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_address0),.W_ce0(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_ce0),.W_q0(W_q0),.W_address1(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_address1),.W_ce1(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_ce1),.W_q1(W_q1),.W_1_address0(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_1_address0),.W_1_ce0(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_1_ce0),.W_1_q0(W_1_q0),.W_1_address1(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_1_address1),.W_1_ce1(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_1_ce1),.W_1_q1(W_1_q1),.W_2_address0(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_2_address0),.W_2_ce0(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_2_ce0),.W_2_q0(W_2_q0),.W_2_address1(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_2_address1),.W_2_ce1(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_2_ce1),.W_2_q1(W_2_q1),.W_3_address0(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_3_address0),.W_3_ce0(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_3_ce0),.W_3_q0(W_3_q0),.W_3_address1(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_3_address1),.W_3_ce1(grp_sha_transform_Pipeline_trans_lp5_fu_379_W_3_ce1),.W_3_q1(W_3_q1),.E_37_out(grp_sha_transform_Pipeline_trans_lp5_fu_379_E_37_out),.E_37_out_ap_vld(grp_sha_transform_Pipeline_trans_lp5_fu_379_E_37_out_ap_vld),.B_37_out(grp_sha_transform_Pipeline_trans_lp5_fu_379_B_37_out),.B_37_out_ap_vld(grp_sha_transform_Pipeline_trans_lp5_fu_379_B_37_out_ap_vld),.D_39_out(grp_sha_transform_Pipeline_trans_lp5_fu_379_D_39_out),.D_39_out_ap_vld(grp_sha_transform_Pipeline_trans_lp5_fu_379_D_39_out_ap_vld),.A_39_out(grp_sha_transform_Pipeline_trans_lp5_fu_379_A_39_out),.A_39_out_ap_vld(grp_sha_transform_Pipeline_trans_lp5_fu_379_A_39_out_ap_vld),.C_42_out(grp_sha_transform_Pipeline_trans_lp5_fu_379_C_42_out),.C_42_out_ap_vld(grp_sha_transform_Pipeline_trans_lp5_fu_379_C_42_out_ap_vld));
sha_stream_sha_transform_Pipeline_trans_lp6 grp_sha_transform_Pipeline_trans_lp6_fu_397(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_start),.ap_done(grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_done),.ap_idle(grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_idle),.ap_ready(grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_ready),.A_39_reload(A_39_loc_fu_86),.B_37_reload(grp_sha_transform_Pipeline_trans_lp5_fu_379_B_37_out),.C_42_reload(C_42_loc_fu_82),.D_39_reload(grp_sha_transform_Pipeline_trans_lp5_fu_379_D_39_out),.E_37_reload(grp_sha_transform_Pipeline_trans_lp5_fu_379_E_37_out),.W_address0(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_address0),.W_ce0(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_ce0),.W_q0(W_q0),.W_address1(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_address1),.W_ce1(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_ce1),.W_q1(W_q1),.W_1_address0(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_1_address0),.W_1_ce0(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_1_ce0),.W_1_q0(W_1_q0),.W_1_address1(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_1_address1),.W_1_ce1(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_1_ce1),.W_1_q1(W_1_q1),.W_2_address0(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_2_address0),.W_2_ce0(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_2_ce0),.W_2_q0(W_2_q0),.W_2_address1(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_2_address1),.W_2_ce1(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_2_ce1),.W_2_q1(W_2_q1),.W_3_address0(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_3_address0),.W_3_ce0(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_3_ce0),.W_3_q0(W_3_q0),.W_3_address1(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_3_address1),.W_3_ce1(grp_sha_transform_Pipeline_trans_lp6_fu_397_W_3_ce1),.W_3_q1(W_3_q1),.C_34_out(grp_sha_transform_Pipeline_trans_lp6_fu_397_C_34_out),.C_34_out_ap_vld(grp_sha_transform_Pipeline_trans_lp6_fu_397_C_34_out_ap_vld),.temp_5_out(grp_sha_transform_Pipeline_trans_lp6_fu_397_temp_5_out),.temp_5_out_ap_vld(grp_sha_transform_Pipeline_trans_lp6_fu_397_temp_5_out_ap_vld),.C_35_out(grp_sha_transform_Pipeline_trans_lp6_fu_397_C_35_out),.C_35_out_ap_vld(grp_sha_transform_Pipeline_trans_lp6_fu_397_C_35_out_ap_vld),.temp_6_out(grp_sha_transform_Pipeline_trans_lp6_fu_397_temp_6_out),.temp_6_out_ap_vld(grp_sha_transform_Pipeline_trans_lp6_fu_397_temp_6_out_ap_vld),.C_36_out(grp_sha_transform_Pipeline_trans_lp6_fu_397_C_36_out),.C_36_out_ap_vld(grp_sha_transform_Pipeline_trans_lp6_fu_397_C_36_out_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_start_reg <= 1'b1;
        end else if ((grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_ready == 1'b1)) begin
            grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_start_reg <= 1'b1;
        end else if ((grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_ready == 1'b1)) begin
            grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_start_reg <= 1'b1;
        end else if ((grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_ready == 1'b1)) begin
            grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_start_reg <= 1'b1;
        end else if ((grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_ready == 1'b1)) begin
            grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state18)) begin
            grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_start_reg <= 1'b1;
        end else if ((grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_ready == 1'b1)) begin
            grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sha_transform_Pipeline_trans_lp5_fu_379_A_39_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        A_39_loc_fu_86 <= grp_sha_transform_Pipeline_trans_lp5_fu_379_A_39_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sha_transform_Pipeline_trans_lp4_fu_361_A_41_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
        A_41_loc_fu_106 <= grp_sha_transform_Pipeline_trans_lp4_fu_361_A_41_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sha_transform_Pipeline_trans_lp3_fu_343_A_43_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        A_43_loc_fu_126 <= grp_sha_transform_Pipeline_trans_lp3_fu_343_A_43_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sha_transform_Pipeline_trans_lp6_fu_397_C_36_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
        C_36_loc_fu_62 <= grp_sha_transform_Pipeline_trans_lp6_fu_397_C_36_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sha_transform_Pipeline_trans_lp5_fu_379_C_42_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        C_42_loc_fu_82 <= grp_sha_transform_Pipeline_trans_lp5_fu_379_C_42_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sha_transform_Pipeline_trans_lp4_fu_361_C_48_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
        C_48_loc_fu_102 <= grp_sha_transform_Pipeline_trans_lp4_fu_361_C_48_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sha_transform_Pipeline_trans_lp3_fu_343_C_54_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        C_54_loc_fu_122 <= grp_sha_transform_Pipeline_trans_lp3_fu_343_C_54_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sha_transform_Pipeline_trans_lp6_fu_397_temp_6_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
        temp_6_loc_fu_66 <= grp_sha_transform_Pipeline_trans_lp6_fu_397_temp_6_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_1_address0 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_1_address0 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_1_address0 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_1_address0 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_1_address0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_address0;
    end else begin
        W_1_address0 = W_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        W_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        W_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address0_local = 64'd0;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_1_address1 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_1_address1 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_1_address1 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_1_address1 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_1_address1 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_address1;
    end else begin
        W_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_1_ce0 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_1_ce0 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_1_ce0 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_1_ce0 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_1_ce0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_ce0;
    end else begin
        W_1_ce0 = W_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_1_ce1 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_1_ce1 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_1_ce1 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_1_ce1 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_1_ce1 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_ce1;
    end else begin
        W_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        W_1_d0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_d0;
    end else begin
        W_1_d0 = sha_info_data_q0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        W_1_we0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_we0;
    end else begin
        W_1_we0 = W_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        W_1_we1 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_1_we1;
    end else begin
        W_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_2_address0 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_2_address0 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_2_address0 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_2_address0 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_2_address0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_address0;
    end else begin
        W_2_address0 = W_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        W_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        W_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        W_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_2_address0_local = 64'd0;
    end else begin
        W_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_2_address1 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_2_address1 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_2_address1 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_2_address1 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_2_address1 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_address1;
    end else begin
        W_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_2_ce0 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_2_ce0 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_2_ce0 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_2_ce0 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_2_ce0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_ce0;
    end else begin
        W_2_ce0 = W_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_2_ce1 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_2_ce1 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_2_ce1 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_2_ce1 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_2_ce1 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_ce1;
    end else begin
        W_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        W_2_d0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_d0;
    end else begin
        W_2_d0 = sha_info_data_q1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        W_2_we0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_we0;
    end else begin
        W_2_we0 = W_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        W_2_we1 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_2_we1;
    end else begin
        W_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_3_address0 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_3_address0 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_3_address0 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_3_address0 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_3_address0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_address0;
    end else begin
        W_3_address0 = W_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        W_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        W_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        W_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_3_address0_local = 64'd0;
    end else begin
        W_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_3_address1 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_3_address1 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_3_address1 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_3_address1 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_3_address1 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_address1;
    end else begin
        W_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_3_ce0 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_3_ce0 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_3_ce0 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_3_ce0 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_3_ce0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_ce0;
    end else begin
        W_3_ce0 = W_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_3_ce1 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_3_ce1 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_3_ce1 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_3_ce1 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_3_ce1 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_ce1;
    end else begin
        W_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        W_3_d0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_d0;
    end else begin
        W_3_d0 = sha_info_data_q0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        W_3_we0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_we0;
    end else begin
        W_3_we0 = W_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        W_3_we1 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_3_we1;
    end else begin
        W_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_address0 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_address0 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_address0 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_address0 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_address0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_address0;
    end else begin
        W_address0 = W_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        W_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        W_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_address0_local = 64'd0;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_address1 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_address1 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_address1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_address1 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_address1 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_address1 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_address1;
    end else begin
        W_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_ce0 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_ce0 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_ce0 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_ce0 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_ce0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_ce0;
    end else begin
        W_ce0 = W_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        W_ce1 = grp_sha_transform_Pipeline_trans_lp6_fu_397_W_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        W_ce1 = grp_sha_transform_Pipeline_trans_lp5_fu_379_W_ce1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        W_ce1 = grp_sha_transform_Pipeline_trans_lp4_fu_361_W_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        W_ce1 = grp_sha_transform_Pipeline_trans_lp3_fu_343_W_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        W_ce1 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_ce1;
    end else begin
        W_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        W_d0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_d0;
    end else begin
        W_d0 = sha_info_data_q1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        W_we0 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_we0;
    end else begin
        W_we0 = W_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        W_we1 = grp_sha_transform_Pipeline_trans_lp2_fu_335_W_we1;
    end else begin
        W_we1 = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_done == 1'b0)) begin
        ap_ST_fsm_state15_blk = 1'b1;
    end else begin
        ap_ST_fsm_state15_blk = 1'b0;
    end
end
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end
assign ap_ST_fsm_state18_blk = 1'b0;
always @ (*) begin
    if ((grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_done == 1'b0)) begin
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
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state20)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sha_info_data_address0_local = 4'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sha_info_data_address0_local = 4'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sha_info_data_address0_local = 4'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sha_info_data_address0_local = 4'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sha_info_data_address0_local = 4'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sha_info_data_address0_local = 4'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sha_info_data_address0_local = 4'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        sha_info_data_address0_local = 4'd1;
    end else begin
        sha_info_data_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sha_info_data_address1_local = 4'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sha_info_data_address1_local = 4'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sha_info_data_address1_local = 4'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sha_info_data_address1_local = 4'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sha_info_data_address1_local = 4'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sha_info_data_address1_local = 4'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sha_info_data_address1_local = 4'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        sha_info_data_address1_local = 4'd0;
    end else begin
        sha_info_data_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        sha_info_data_ce0_local = 1'b1;
    end else begin
        sha_info_data_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        sha_info_data_ce1_local = 1'b1;
    end else begin
        sha_info_data_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        sha_info_digest_0_o = add_ln133_fu_515_p2;
    end else begin
        sha_info_digest_0_o = sha_info_digest_0_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        sha_info_digest_0_o_ap_vld = 1'b1;
    end else begin
        sha_info_digest_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        sha_info_digest_1_o = add_ln134_fu_526_p2;
    end else begin
        sha_info_digest_1_o = sha_info_digest_1_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        sha_info_digest_1_o_ap_vld = 1'b1;
    end else begin
        sha_info_digest_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        sha_info_digest_2_o = add_ln135_fu_537_p2;
    end else begin
        sha_info_digest_2_o = sha_info_digest_2_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        sha_info_digest_2_o_ap_vld = 1'b1;
    end else begin
        sha_info_digest_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        sha_info_digest_3_o = add_ln136_fu_548_p2;
    end else begin
        sha_info_digest_3_o = sha_info_digest_3_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        sha_info_digest_3_o_ap_vld = 1'b1;
    end else begin
        sha_info_digest_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        sha_info_digest_4_o = add_ln137_fu_559_p2;
    end else begin
        sha_info_digest_4_o = sha_info_digest_4_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        sha_info_digest_4_o_ap_vld = 1'b1;
    end else begin
        sha_info_digest_4_o_ap_vld = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state11) & (grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if (((grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln133_fu_515_p2 = (sha_info_digest_0_i + temp_6_loc_fu_66);
assign add_ln134_fu_526_p2 = (sha_info_digest_1_i + grp_sha_transform_Pipeline_trans_lp6_fu_397_temp_5_out);
assign add_ln135_fu_537_p2 = (sha_info_digest_2_i + C_36_loc_fu_62);
assign add_ln136_fu_548_p2 = (sha_info_digest_3_i + grp_sha_transform_Pipeline_trans_lp6_fu_397_C_35_out);
assign add_ln137_fu_559_p2 = (sha_info_digest_4_i + grp_sha_transform_Pipeline_trans_lp6_fu_397_C_34_out);
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
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_start = grp_sha_transform_Pipeline_trans_lp2_fu_335_ap_start_reg;
assign grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_start = grp_sha_transform_Pipeline_trans_lp3_fu_343_ap_start_reg;
assign grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_start = grp_sha_transform_Pipeline_trans_lp4_fu_361_ap_start_reg;
assign grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_start = grp_sha_transform_Pipeline_trans_lp5_fu_379_ap_start_reg;
assign grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_start = grp_sha_transform_Pipeline_trans_lp6_fu_397_ap_start_reg;
assign sha_info_data_address0 = sha_info_data_address0_local;
assign sha_info_data_address1 = sha_info_data_address1_local;
assign sha_info_data_ce0 = sha_info_data_ce0_local;
assign sha_info_data_ce1 = sha_info_data_ce1_local;
endmodule 