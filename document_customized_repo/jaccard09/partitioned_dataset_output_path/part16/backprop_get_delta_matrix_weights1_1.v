
module backprop_get_delta_matrix_weights1_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_4_address1,delta_weights1_4_ce1,delta_weights1_4_we1,delta_weights1_4_d1,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_5_address1,delta_weights1_5_ce1,delta_weights1_5_we1,delta_weights1_5_d1,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_6_address1,delta_weights1_6_ce1,delta_weights1_6_we1,delta_weights1_6_d1,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_7_address1,delta_weights1_7_ce1,delta_weights1_7_we1,delta_weights1_7_d1,delta_weights1_8_address0,delta_weights1_8_ce0,delta_weights1_8_we0,delta_weights1_8_d0,delta_weights1_8_address1,delta_weights1_8_ce1,delta_weights1_8_we1,delta_weights1_8_d1,delta_weights1_9_address0,delta_weights1_9_ce0,delta_weights1_9_we0,delta_weights1_9_d0,delta_weights1_9_address1,delta_weights1_9_ce1,delta_weights1_9_we1,delta_weights1_9_d1,delta_weights1_10_address0,delta_weights1_10_ce0,delta_weights1_10_we0,delta_weights1_10_d0,delta_weights1_10_address1,delta_weights1_10_ce1,delta_weights1_10_we1,delta_weights1_10_d1,delta_weights1_11_address0,delta_weights1_11_ce0,delta_weights1_11_we0,delta_weights1_11_d0,delta_weights1_11_address1,delta_weights1_11_ce1,delta_weights1_11_we1,delta_weights1_11_d1,delta_weights1_12_address0,delta_weights1_12_ce0,delta_weights1_12_we0,delta_weights1_12_d0,delta_weights1_12_address1,delta_weights1_12_ce1,delta_weights1_12_we1,delta_weights1_12_d1,delta_weights1_13_address0,delta_weights1_13_ce0,delta_weights1_13_we0,delta_weights1_13_d0,delta_weights1_13_address1,delta_weights1_13_ce1,delta_weights1_13_we1,delta_weights1_13_d1,delta_weights1_14_address0,delta_weights1_14_ce0,delta_weights1_14_we0,delta_weights1_14_d0,delta_weights1_14_address1,delta_weights1_14_ce1,delta_weights1_14_we1,delta_weights1_14_d1,delta_weights1_15_address0,delta_weights1_15_ce0,delta_weights1_15_we0,delta_weights1_15_d0,delta_weights1_15_address1,delta_weights1_15_ce1,delta_weights1_15_we1,delta_weights1_15_d1,p_read,p_read1,p_read2,p_read3,p_read4,p_read5,p_read6,p_read7,p_read8,p_read9,p_read10,p_read11,p_read12,p_read13,p_read14,p_read15,p_read16,p_read17,p_read18,p_read19,p_read20,p_read21,p_read22,p_read23,p_read24,p_read25,p_read26,p_read27,p_read28,p_read29,p_read30,p_read31,p_read32,p_read33,p_read34,p_read35,p_read36,p_read37,p_read38,p_read39,p_read40,p_read41,p_read42,p_read43,p_read44,p_read45,p_read46,p_read47,p_read48,p_read49,p_read50,p_read51,p_read52,p_read53,p_read54,p_read55,p_read56,p_read57,p_read58,p_read59,p_read60,p_read61,p_read62,p_read63,training_data_address0,training_data_ce0,training_data_q0,idx,grp_fu_10483_p_din0,grp_fu_10483_p_din1,grp_fu_10483_p_dout0,grp_fu_10483_p_ce,grp_fu_10487_p_din0,grp_fu_10487_p_din1,grp_fu_10487_p_dout0,grp_fu_10487_p_ce,grp_fu_10499_p_din0,grp_fu_10499_p_din1,grp_fu_10499_p_dout0,grp_fu_10499_p_ce,grp_fu_10503_p_din0,grp_fu_10503_p_din1,grp_fu_10503_p_dout0,grp_fu_10503_p_ce,grp_fu_10507_p_din0,grp_fu_10507_p_din1,grp_fu_10507_p_dout0,grp_fu_10507_p_ce,grp_fu_10511_p_din0,grp_fu_10511_p_din1,grp_fu_10511_p_dout0,grp_fu_10511_p_ce,grp_fu_10515_p_din0,grp_fu_10515_p_din1,grp_fu_10515_p_dout0,grp_fu_10515_p_ce,grp_fu_10519_p_din0,grp_fu_10519_p_din1,grp_fu_10519_p_dout0,grp_fu_10519_p_ce,grp_fu_10523_p_din0,grp_fu_10523_p_din1,grp_fu_10523_p_dout0,grp_fu_10523_p_ce,grp_fu_10527_p_din0,grp_fu_10527_p_din1,grp_fu_10527_p_dout0,grp_fu_10527_p_ce,grp_fu_10531_p_din0,grp_fu_10531_p_din1,grp_fu_10531_p_dout0,grp_fu_10531_p_ce,grp_fu_10535_p_din0,grp_fu_10535_p_din1,grp_fu_10535_p_dout0,grp_fu_10535_p_ce,grp_fu_10539_p_din0,grp_fu_10539_p_din1,grp_fu_10539_p_dout0,grp_fu_10539_p_ce,grp_fu_10543_p_din0,grp_fu_10543_p_din1,grp_fu_10543_p_dout0,grp_fu_10543_p_ce,grp_fu_10547_p_din0,grp_fu_10547_p_din1,grp_fu_10547_p_dout0,grp_fu_10547_p_ce,grp_fu_10551_p_din0,grp_fu_10551_p_din1,grp_fu_10551_p_dout0,grp_fu_10551_p_ce,grp_fu_10555_p_din0,grp_fu_10555_p_din1,grp_fu_10555_p_dout0,grp_fu_10555_p_ce,grp_fu_10559_p_din0,grp_fu_10559_p_din1,grp_fu_10559_p_dout0,grp_fu_10559_p_ce,grp_fu_10563_p_din0,grp_fu_10563_p_din1,grp_fu_10563_p_dout0,grp_fu_10563_p_ce,grp_fu_10567_p_din0,grp_fu_10567_p_din1,grp_fu_10567_p_dout0,grp_fu_10567_p_ce,grp_fu_10571_p_din0,grp_fu_10571_p_din1,grp_fu_10571_p_dout0,grp_fu_10571_p_ce,grp_fu_10575_p_din0,grp_fu_10575_p_din1,grp_fu_10575_p_dout0,grp_fu_10575_p_ce,grp_fu_10579_p_din0,grp_fu_10579_p_din1,grp_fu_10579_p_dout0,grp_fu_10579_p_ce,grp_fu_10583_p_din0,grp_fu_10583_p_din1,grp_fu_10583_p_dout0,grp_fu_10583_p_ce,grp_fu_10587_p_din0,grp_fu_10587_p_din1,grp_fu_10587_p_dout0,grp_fu_10587_p_ce,grp_fu_10591_p_din0,grp_fu_10591_p_din1,grp_fu_10591_p_dout0,grp_fu_10591_p_ce,grp_fu_10595_p_din0,grp_fu_10595_p_din1,grp_fu_10595_p_dout0,grp_fu_10595_p_ce,grp_fu_10599_p_din0,grp_fu_10599_p_din1,grp_fu_10599_p_dout0,grp_fu_10599_p_ce,grp_fu_10603_p_din0,grp_fu_10603_p_din1,grp_fu_10603_p_dout0,grp_fu_10603_p_ce,grp_fu_10607_p_din0,grp_fu_10607_p_din1,grp_fu_10607_p_dout0,grp_fu_10607_p_ce,grp_fu_10611_p_din0,grp_fu_10611_p_din1,grp_fu_10611_p_dout0,grp_fu_10611_p_ce,grp_fu_10615_p_din0,grp_fu_10615_p_din1,grp_fu_10615_p_dout0,grp_fu_10615_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [5:0] delta_weights1_0_address1;
output   delta_weights1_0_ce1;
output   delta_weights1_0_we1;
output  [63:0] delta_weights1_0_d1;
output  [5:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [5:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [5:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [5:0] delta_weights1_2_address1;
output   delta_weights1_2_ce1;
output   delta_weights1_2_we1;
output  [63:0] delta_weights1_2_d1;
output  [5:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [5:0] delta_weights1_3_address1;
output   delta_weights1_3_ce1;
output   delta_weights1_3_we1;
output  [63:0] delta_weights1_3_d1;
output  [5:0] delta_weights1_4_address0;
output   delta_weights1_4_ce0;
output   delta_weights1_4_we0;
output  [63:0] delta_weights1_4_d0;
output  [5:0] delta_weights1_4_address1;
output   delta_weights1_4_ce1;
output   delta_weights1_4_we1;
output  [63:0] delta_weights1_4_d1;
output  [5:0] delta_weights1_5_address0;
output   delta_weights1_5_ce0;
output   delta_weights1_5_we0;
output  [63:0] delta_weights1_5_d0;
output  [5:0] delta_weights1_5_address1;
output   delta_weights1_5_ce1;
output   delta_weights1_5_we1;
output  [63:0] delta_weights1_5_d1;
output  [5:0] delta_weights1_6_address0;
output   delta_weights1_6_ce0;
output   delta_weights1_6_we0;
output  [63:0] delta_weights1_6_d0;
output  [5:0] delta_weights1_6_address1;
output   delta_weights1_6_ce1;
output   delta_weights1_6_we1;
output  [63:0] delta_weights1_6_d1;
output  [5:0] delta_weights1_7_address0;
output   delta_weights1_7_ce0;
output   delta_weights1_7_we0;
output  [63:0] delta_weights1_7_d0;
output  [5:0] delta_weights1_7_address1;
output   delta_weights1_7_ce1;
output   delta_weights1_7_we1;
output  [63:0] delta_weights1_7_d1;
output  [5:0] delta_weights1_8_address0;
output   delta_weights1_8_ce0;
output   delta_weights1_8_we0;
output  [63:0] delta_weights1_8_d0;
output  [5:0] delta_weights1_8_address1;
output   delta_weights1_8_ce1;
output   delta_weights1_8_we1;
output  [63:0] delta_weights1_8_d1;
output  [5:0] delta_weights1_9_address0;
output   delta_weights1_9_ce0;
output   delta_weights1_9_we0;
output  [63:0] delta_weights1_9_d0;
output  [5:0] delta_weights1_9_address1;
output   delta_weights1_9_ce1;
output   delta_weights1_9_we1;
output  [63:0] delta_weights1_9_d1;
output  [5:0] delta_weights1_10_address0;
output   delta_weights1_10_ce0;
output   delta_weights1_10_we0;
output  [63:0] delta_weights1_10_d0;
output  [5:0] delta_weights1_10_address1;
output   delta_weights1_10_ce1;
output   delta_weights1_10_we1;
output  [63:0] delta_weights1_10_d1;
output  [5:0] delta_weights1_11_address0;
output   delta_weights1_11_ce0;
output   delta_weights1_11_we0;
output  [63:0] delta_weights1_11_d0;
output  [5:0] delta_weights1_11_address1;
output   delta_weights1_11_ce1;
output   delta_weights1_11_we1;
output  [63:0] delta_weights1_11_d1;
output  [5:0] delta_weights1_12_address0;
output   delta_weights1_12_ce0;
output   delta_weights1_12_we0;
output  [63:0] delta_weights1_12_d0;
output  [5:0] delta_weights1_12_address1;
output   delta_weights1_12_ce1;
output   delta_weights1_12_we1;
output  [63:0] delta_weights1_12_d1;
output  [5:0] delta_weights1_13_address0;
output   delta_weights1_13_ce0;
output   delta_weights1_13_we0;
output  [63:0] delta_weights1_13_d0;
output  [5:0] delta_weights1_13_address1;
output   delta_weights1_13_ce1;
output   delta_weights1_13_we1;
output  [63:0] delta_weights1_13_d1;
output  [5:0] delta_weights1_14_address0;
output   delta_weights1_14_ce0;
output   delta_weights1_14_we0;
output  [63:0] delta_weights1_14_d0;
output  [5:0] delta_weights1_14_address1;
output   delta_weights1_14_ce1;
output   delta_weights1_14_we1;
output  [63:0] delta_weights1_14_d1;
output  [5:0] delta_weights1_15_address0;
output   delta_weights1_15_ce0;
output   delta_weights1_15_we0;
output  [63:0] delta_weights1_15_d0;
output  [5:0] delta_weights1_15_address1;
output   delta_weights1_15_ce1;
output   delta_weights1_15_we1;
output  [63:0] delta_weights1_15_d1;
input  [63:0] p_read;
input  [63:0] p_read1;
input  [63:0] p_read2;
input  [63:0] p_read3;
input  [63:0] p_read4;
input  [63:0] p_read5;
input  [63:0] p_read6;
input  [63:0] p_read7;
input  [63:0] p_read8;
input  [63:0] p_read9;
input  [63:0] p_read10;
input  [63:0] p_read11;
input  [63:0] p_read12;
input  [63:0] p_read13;
input  [63:0] p_read14;
input  [63:0] p_read15;
input  [63:0] p_read16;
input  [63:0] p_read17;
input  [63:0] p_read18;
input  [63:0] p_read19;
input  [63:0] p_read20;
input  [63:0] p_read21;
input  [63:0] p_read22;
input  [63:0] p_read23;
input  [63:0] p_read24;
input  [63:0] p_read25;
input  [63:0] p_read26;
input  [63:0] p_read27;
input  [63:0] p_read28;
input  [63:0] p_read29;
input  [63:0] p_read30;
input  [63:0] p_read31;
input  [63:0] p_read32;
input  [63:0] p_read33;
input  [63:0] p_read34;
input  [63:0] p_read35;
input  [63:0] p_read36;
input  [63:0] p_read37;
input  [63:0] p_read38;
input  [63:0] p_read39;
input  [63:0] p_read40;
input  [63:0] p_read41;
input  [63:0] p_read42;
input  [63:0] p_read43;
input  [63:0] p_read44;
input  [63:0] p_read45;
input  [63:0] p_read46;
input  [63:0] p_read47;
input  [63:0] p_read48;
input  [63:0] p_read49;
input  [63:0] p_read50;
input  [63:0] p_read51;
input  [63:0] p_read52;
input  [63:0] p_read53;
input  [63:0] p_read54;
input  [63:0] p_read55;
input  [63:0] p_read56;
input  [63:0] p_read57;
input  [63:0] p_read58;
input  [63:0] p_read59;
input  [63:0] p_read60;
input  [63:0] p_read61;
input  [63:0] p_read62;
input  [63:0] p_read63;
output  [11:0] training_data_address0;
output   training_data_ce0;
input  [63:0] training_data_q0;
input  [11:0] idx;
output  [63:0] grp_fu_10483_p_din0;
output  [63:0] grp_fu_10483_p_din1;
input  [63:0] grp_fu_10483_p_dout0;
output   grp_fu_10483_p_ce;
output  [63:0] grp_fu_10487_p_din0;
output  [63:0] grp_fu_10487_p_din1;
input  [63:0] grp_fu_10487_p_dout0;
output   grp_fu_10487_p_ce;
output  [63:0] grp_fu_10499_p_din0;
output  [63:0] grp_fu_10499_p_din1;
input  [63:0] grp_fu_10499_p_dout0;
output   grp_fu_10499_p_ce;
output  [63:0] grp_fu_10503_p_din0;
output  [63:0] grp_fu_10503_p_din1;
input  [63:0] grp_fu_10503_p_dout0;
output   grp_fu_10503_p_ce;
output  [63:0] grp_fu_10507_p_din0;
output  [63:0] grp_fu_10507_p_din1;
input  [63:0] grp_fu_10507_p_dout0;
output   grp_fu_10507_p_ce;
output  [63:0] grp_fu_10511_p_din0;
output  [63:0] grp_fu_10511_p_din1;
input  [63:0] grp_fu_10511_p_dout0;
output   grp_fu_10511_p_ce;
output  [63:0] grp_fu_10515_p_din0;
output  [63:0] grp_fu_10515_p_din1;
input  [63:0] grp_fu_10515_p_dout0;
output   grp_fu_10515_p_ce;
output  [63:0] grp_fu_10519_p_din0;
output  [63:0] grp_fu_10519_p_din1;
input  [63:0] grp_fu_10519_p_dout0;
output   grp_fu_10519_p_ce;
output  [63:0] grp_fu_10523_p_din0;
output  [63:0] grp_fu_10523_p_din1;
input  [63:0] grp_fu_10523_p_dout0;
output   grp_fu_10523_p_ce;
output  [63:0] grp_fu_10527_p_din0;
output  [63:0] grp_fu_10527_p_din1;
input  [63:0] grp_fu_10527_p_dout0;
output   grp_fu_10527_p_ce;
output  [63:0] grp_fu_10531_p_din0;
output  [63:0] grp_fu_10531_p_din1;
input  [63:0] grp_fu_10531_p_dout0;
output   grp_fu_10531_p_ce;
output  [63:0] grp_fu_10535_p_din0;
output  [63:0] grp_fu_10535_p_din1;
input  [63:0] grp_fu_10535_p_dout0;
output   grp_fu_10535_p_ce;
output  [63:0] grp_fu_10539_p_din0;
output  [63:0] grp_fu_10539_p_din1;
input  [63:0] grp_fu_10539_p_dout0;
output   grp_fu_10539_p_ce;
output  [63:0] grp_fu_10543_p_din0;
output  [63:0] grp_fu_10543_p_din1;
input  [63:0] grp_fu_10543_p_dout0;
output   grp_fu_10543_p_ce;
output  [63:0] grp_fu_10547_p_din0;
output  [63:0] grp_fu_10547_p_din1;
input  [63:0] grp_fu_10547_p_dout0;
output   grp_fu_10547_p_ce;
output  [63:0] grp_fu_10551_p_din0;
output  [63:0] grp_fu_10551_p_din1;
input  [63:0] grp_fu_10551_p_dout0;
output   grp_fu_10551_p_ce;
output  [63:0] grp_fu_10555_p_din0;
output  [63:0] grp_fu_10555_p_din1;
input  [63:0] grp_fu_10555_p_dout0;
output   grp_fu_10555_p_ce;
output  [63:0] grp_fu_10559_p_din0;
output  [63:0] grp_fu_10559_p_din1;
input  [63:0] grp_fu_10559_p_dout0;
output   grp_fu_10559_p_ce;
output  [63:0] grp_fu_10563_p_din0;
output  [63:0] grp_fu_10563_p_din1;
input  [63:0] grp_fu_10563_p_dout0;
output   grp_fu_10563_p_ce;
output  [63:0] grp_fu_10567_p_din0;
output  [63:0] grp_fu_10567_p_din1;
input  [63:0] grp_fu_10567_p_dout0;
output   grp_fu_10567_p_ce;
output  [63:0] grp_fu_10571_p_din0;
output  [63:0] grp_fu_10571_p_din1;
input  [63:0] grp_fu_10571_p_dout0;
output   grp_fu_10571_p_ce;
output  [63:0] grp_fu_10575_p_din0;
output  [63:0] grp_fu_10575_p_din1;
input  [63:0] grp_fu_10575_p_dout0;
output   grp_fu_10575_p_ce;
output  [63:0] grp_fu_10579_p_din0;
output  [63:0] grp_fu_10579_p_din1;
input  [63:0] grp_fu_10579_p_dout0;
output   grp_fu_10579_p_ce;
output  [63:0] grp_fu_10583_p_din0;
output  [63:0] grp_fu_10583_p_din1;
input  [63:0] grp_fu_10583_p_dout0;
output   grp_fu_10583_p_ce;
output  [63:0] grp_fu_10587_p_din0;
output  [63:0] grp_fu_10587_p_din1;
input  [63:0] grp_fu_10587_p_dout0;
output   grp_fu_10587_p_ce;
output  [63:0] grp_fu_10591_p_din0;
output  [63:0] grp_fu_10591_p_din1;
input  [63:0] grp_fu_10591_p_dout0;
output   grp_fu_10591_p_ce;
output  [63:0] grp_fu_10595_p_din0;
output  [63:0] grp_fu_10595_p_din1;
input  [63:0] grp_fu_10595_p_dout0;
output   grp_fu_10595_p_ce;
output  [63:0] grp_fu_10599_p_din0;
output  [63:0] grp_fu_10599_p_din1;
input  [63:0] grp_fu_10599_p_dout0;
output   grp_fu_10599_p_ce;
output  [63:0] grp_fu_10603_p_din0;
output  [63:0] grp_fu_10603_p_din1;
input  [63:0] grp_fu_10603_p_dout0;
output   grp_fu_10603_p_ce;
output  [63:0] grp_fu_10607_p_din0;
output  [63:0] grp_fu_10607_p_din1;
input  [63:0] grp_fu_10607_p_dout0;
output   grp_fu_10607_p_ce;
output  [63:0] grp_fu_10611_p_din0;
output  [63:0] grp_fu_10611_p_din1;
input  [63:0] grp_fu_10611_p_dout0;
output   grp_fu_10611_p_ce;
output  [63:0] grp_fu_10615_p_din0;
output  [63:0] grp_fu_10615_p_din1;
input  [63:0] grp_fu_10615_p_dout0;
output   grp_fu_10615_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln113_fu_1183_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln112_fu_1209_p3;
reg   [6:0] select_ln112_reg_1887;
reg   [6:0] select_ln112_reg_1887_pp0_iter1_reg;
wire   [3:0] select_ln113_fu_1223_p3;
reg   [3:0] select_ln113_reg_1892;
reg   [3:0] select_ln113_reg_1892_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_1892_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_1892_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_1892_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_1892_pp0_iter5_reg;
reg   [3:0] select_ln113_reg_1892_pp0_iter6_reg;
reg   [3:0] select_ln113_reg_1892_pp0_iter7_reg;
reg   [3:0] select_ln113_reg_1892_pp0_iter8_reg;
reg   [3:0] select_ln113_reg_1892_pp0_iter9_reg;
reg   [3:0] select_ln113_reg_1892_pp0_iter10_reg;
reg   [1:0] lshr_ln_reg_1899;
reg   [1:0] lshr_ln_reg_1899_pp0_iter1_reg;
reg   [1:0] lshr_ln_reg_1899_pp0_iter2_reg;
reg   [1:0] lshr_ln_reg_1899_pp0_iter3_reg;
reg   [1:0] lshr_ln_reg_1899_pp0_iter4_reg;
reg   [1:0] lshr_ln_reg_1899_pp0_iter5_reg;
reg   [1:0] lshr_ln_reg_1899_pp0_iter6_reg;
reg   [1:0] lshr_ln_reg_1899_pp0_iter7_reg;
reg   [1:0] lshr_ln_reg_1899_pp0_iter8_reg;
reg   [1:0] lshr_ln_reg_1899_pp0_iter9_reg;
reg   [0:0] tmp_48_reg_1904;
reg   [0:0] tmp_48_reg_1904_pp0_iter1_reg;
reg   [0:0] tmp_48_reg_1904_pp0_iter2_reg;
reg   [0:0] tmp_48_reg_1904_pp0_iter3_reg;
reg   [0:0] tmp_48_reg_1904_pp0_iter4_reg;
reg   [0:0] tmp_48_reg_1904_pp0_iter5_reg;
reg   [0:0] tmp_48_reg_1904_pp0_iter6_reg;
reg   [0:0] tmp_48_reg_1904_pp0_iter7_reg;
reg   [0:0] tmp_48_reg_1904_pp0_iter8_reg;
reg   [0:0] tmp_48_reg_1904_pp0_iter9_reg;
reg   [0:0] tmp_48_reg_1904_pp0_iter10_reg;
reg   [63:0] training_data_load_reg_1914;
wire   [0:0] icmp_ln115_fu_1283_p2;
reg   [0:0] icmp_ln115_reg_1919;
wire   [63:0] select_ln115_fu_1288_p3;
reg   [63:0] select_ln115_reg_1939;
wire   [63:0] select_ln115_1_fu_1294_p3;
reg   [63:0] select_ln115_1_reg_1944;
wire   [63:0] select_ln115_2_fu_1300_p3;
reg   [63:0] select_ln115_2_reg_1949;
wire   [63:0] select_ln115_3_fu_1306_p3;
reg   [63:0] select_ln115_3_reg_1954;
wire   [63:0] select_ln115_4_fu_1312_p3;
reg   [63:0] select_ln115_4_reg_1959;
wire   [63:0] select_ln115_5_fu_1318_p3;
reg   [63:0] select_ln115_5_reg_1964;
wire   [63:0] select_ln115_6_fu_1324_p3;
reg   [63:0] select_ln115_6_reg_1969;
wire   [63:0] select_ln115_7_fu_1330_p3;
reg   [63:0] select_ln115_7_reg_1974;
wire   [63:0] select_ln115_8_fu_1336_p3;
reg   [63:0] select_ln115_8_reg_1979;
wire   [63:0] select_ln115_9_fu_1342_p3;
reg   [63:0] select_ln115_9_reg_1984;
wire   [63:0] select_ln115_10_fu_1348_p3;
reg   [63:0] select_ln115_10_reg_1989;
wire   [63:0] select_ln115_11_fu_1354_p3;
reg   [63:0] select_ln115_11_reg_1994;
wire   [63:0] select_ln115_12_fu_1360_p3;
reg   [63:0] select_ln115_12_reg_1999;
wire   [63:0] select_ln115_13_fu_1366_p3;
reg   [63:0] select_ln115_13_reg_2004;
wire   [63:0] select_ln115_14_fu_1372_p3;
reg   [63:0] select_ln115_14_reg_2009;
wire   [63:0] select_ln115_15_fu_1378_p3;
reg   [63:0] select_ln115_15_reg_2014;
wire   [63:0] empty_fu_1384_p1;
reg   [63:0] empty_reg_2019;
wire   [63:0] select_ln115_16_fu_1403_p3;
reg   [63:0] select_ln115_16_reg_2055;
wire   [63:0] select_ln115_17_fu_1408_p3;
reg   [63:0] select_ln115_17_reg_2060;
wire   [63:0] select_ln115_18_fu_1413_p3;
reg   [63:0] select_ln115_18_reg_2065;
wire   [63:0] select_ln115_19_fu_1418_p3;
reg   [63:0] select_ln115_19_reg_2070;
wire   [63:0] select_ln115_20_fu_1423_p3;
reg   [63:0] select_ln115_20_reg_2075;
wire   [63:0] select_ln115_21_fu_1428_p3;
reg   [63:0] select_ln115_21_reg_2080;
wire   [63:0] select_ln115_22_fu_1433_p3;
reg   [63:0] select_ln115_22_reg_2085;
wire   [63:0] select_ln115_23_fu_1438_p3;
reg   [63:0] select_ln115_23_reg_2090;
wire   [63:0] select_ln115_24_fu_1443_p3;
reg   [63:0] select_ln115_24_reg_2095;
wire   [63:0] select_ln115_25_fu_1448_p3;
reg   [63:0] select_ln115_25_reg_2100;
wire   [63:0] select_ln115_26_fu_1453_p3;
reg   [63:0] select_ln115_26_reg_2105;
wire   [63:0] select_ln115_27_fu_1458_p3;
reg   [63:0] select_ln115_27_reg_2110;
wire   [63:0] select_ln115_28_fu_1463_p3;
reg   [63:0] select_ln115_28_reg_2115;
wire   [63:0] select_ln115_29_fu_1468_p3;
reg   [63:0] select_ln115_29_reg_2120;
wire   [63:0] select_ln115_30_fu_1473_p3;
reg   [63:0] select_ln115_30_reg_2125;
wire   [63:0] select_ln115_31_fu_1478_p3;
reg   [63:0] select_ln115_31_reg_2130;
reg   [63:0] mul_reg_2135;
reg   [63:0] mul_1_reg_2140;
reg   [63:0] mul_2_reg_2145;
reg   [63:0] mul_3_reg_2150;
reg   [63:0] mul_4_reg_2155;
reg   [63:0] mul_5_reg_2160;
reg   [63:0] mul_6_reg_2165;
reg   [63:0] mul_7_reg_2170;
reg   [63:0] mul_8_reg_2175;
reg   [63:0] mul_9_reg_2180;
reg   [63:0] mul_10_reg_2185;
reg   [63:0] mul_11_reg_2190;
reg   [63:0] mul_12_reg_2195;
reg   [63:0] mul_13_reg_2200;
reg   [63:0] mul_14_reg_2205;
reg   [63:0] mul_15_reg_2210;
reg   [63:0] mul_16_reg_2215;
reg   [63:0] mul_17_reg_2220;
reg   [63:0] mul_18_reg_2225;
reg   [63:0] mul_19_reg_2230;
reg   [63:0] mul_20_reg_2235;
reg   [63:0] mul_21_reg_2240;
reg   [63:0] mul_22_reg_2245;
reg   [63:0] mul_23_reg_2250;
reg   [63:0] mul_24_reg_2255;
reg   [63:0] mul_25_reg_2260;
reg   [63:0] mul_26_reg_2265;
reg   [63:0] mul_27_reg_2270;
reg   [63:0] mul_28_reg_2275;
reg   [63:0] mul_29_reg_2280;
reg   [63:0] mul_30_reg_2285;
reg   [63:0] mul_31_reg_2290;
wire   [63:0] p_sum_cast_fu_1278_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln115_fu_1489_p1;
wire   [63:0] zext_ln115_1_fu_1517_p1;
reg   [6:0] j_fu_222;
wire   [6:0] add_ln114_fu_1249_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_226;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [4:0] indvar_flatten_fu_230;
wire   [4:0] add_ln113_fu_1189_p2;
reg   [4:0] ap_sig_allocacmp_indvar_flatten_load;
reg    training_data_ce0_local;
reg    delta_weights1_0_we1_local;
reg    delta_weights1_0_ce1_local;
reg    delta_weights1_0_we0_local;
reg    delta_weights1_0_ce0_local;
reg    delta_weights1_1_we1_local;
reg    delta_weights1_1_ce1_local;
reg    delta_weights1_1_we0_local;
reg    delta_weights1_1_ce0_local;
reg    delta_weights1_2_we1_local;
reg    delta_weights1_2_ce1_local;
reg    delta_weights1_2_we0_local;
reg    delta_weights1_2_ce0_local;
reg    delta_weights1_3_we1_local;
reg    delta_weights1_3_ce1_local;
reg    delta_weights1_3_we0_local;
reg    delta_weights1_3_ce0_local;
reg    delta_weights1_4_we1_local;
reg    delta_weights1_4_ce1_local;
reg    delta_weights1_4_we0_local;
reg    delta_weights1_4_ce0_local;
reg    delta_weights1_5_we1_local;
reg    delta_weights1_5_ce1_local;
reg    delta_weights1_5_we0_local;
reg    delta_weights1_5_ce0_local;
reg    delta_weights1_6_we1_local;
reg    delta_weights1_6_ce1_local;
reg    delta_weights1_6_we0_local;
reg    delta_weights1_6_ce0_local;
reg    delta_weights1_7_we1_local;
reg    delta_weights1_7_ce1_local;
reg    delta_weights1_7_we0_local;
reg    delta_weights1_7_ce0_local;
reg    delta_weights1_8_we1_local;
reg    delta_weights1_8_ce1_local;
reg    delta_weights1_8_we0_local;
reg    delta_weights1_8_ce0_local;
reg    delta_weights1_9_we1_local;
reg    delta_weights1_9_ce1_local;
reg    delta_weights1_9_we0_local;
reg    delta_weights1_9_ce0_local;
reg    delta_weights1_10_we1_local;
reg    delta_weights1_10_ce1_local;
reg    delta_weights1_10_we0_local;
reg    delta_weights1_10_ce0_local;
reg    delta_weights1_11_we1_local;
reg    delta_weights1_11_ce1_local;
reg    delta_weights1_11_we0_local;
reg    delta_weights1_11_ce0_local;
reg    delta_weights1_12_we1_local;
reg    delta_weights1_12_ce1_local;
reg    delta_weights1_12_we0_local;
reg    delta_weights1_12_ce0_local;
reg    delta_weights1_13_we1_local;
reg    delta_weights1_13_ce1_local;
reg    delta_weights1_13_we0_local;
reg    delta_weights1_13_ce0_local;
reg    delta_weights1_14_we1_local;
reg    delta_weights1_14_ce1_local;
reg    delta_weights1_14_we0_local;
reg    delta_weights1_14_ce0_local;
reg    delta_weights1_15_we1_local;
reg    delta_weights1_15_ce1_local;
reg    delta_weights1_15_we0_local;
reg    delta_weights1_15_ce0_local;
wire   [0:0] tmp_fu_1201_p3;
wire   [3:0] add_ln113_1_fu_1217_p2;
wire   [11:0] zext_ln113_fu_1270_p1;
wire   [11:0] p_sum_fu_1273_p2;
wire   [5:0] or_ln_fu_1483_p3;
wire   [5:0] add_ln115_1_fu_1509_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 j_fu_222 = 7'd0;
#0 i_fu_226 = 4'd0;
#0 indvar_flatten_fu_230 = 5'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_1183_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_226 <= select_ln113_fu_1223_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_226 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_1183_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_230 <= add_ln113_fu_1189_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_230 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_1183_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_222 <= add_ln114_fu_1249_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_222 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        empty_reg_2019 <= empty_fu_1384_p1;
        icmp_ln115_reg_1919 <= icmp_ln115_fu_1283_p2;
        lshr_ln_reg_1899_pp0_iter2_reg <= lshr_ln_reg_1899_pp0_iter1_reg;
        lshr_ln_reg_1899_pp0_iter3_reg <= lshr_ln_reg_1899_pp0_iter2_reg;
        lshr_ln_reg_1899_pp0_iter4_reg <= lshr_ln_reg_1899_pp0_iter3_reg;
        lshr_ln_reg_1899_pp0_iter5_reg <= lshr_ln_reg_1899_pp0_iter4_reg;
        lshr_ln_reg_1899_pp0_iter6_reg <= lshr_ln_reg_1899_pp0_iter5_reg;
        lshr_ln_reg_1899_pp0_iter7_reg <= lshr_ln_reg_1899_pp0_iter6_reg;
        lshr_ln_reg_1899_pp0_iter8_reg <= lshr_ln_reg_1899_pp0_iter7_reg;
        lshr_ln_reg_1899_pp0_iter9_reg <= lshr_ln_reg_1899_pp0_iter8_reg;
        mul_10_reg_2185 <= grp_fu_10531_p_dout0;
        mul_11_reg_2190 <= grp_fu_10535_p_dout0;
        mul_12_reg_2195 <= grp_fu_10539_p_dout0;
        mul_13_reg_2200 <= grp_fu_10543_p_dout0;
        mul_14_reg_2205 <= grp_fu_10547_p_dout0;
        mul_15_reg_2210 <= grp_fu_10551_p_dout0;
        mul_16_reg_2215 <= grp_fu_10555_p_dout0;
        mul_17_reg_2220 <= grp_fu_10559_p_dout0;
        mul_18_reg_2225 <= grp_fu_10563_p_dout0;
        mul_19_reg_2230 <= grp_fu_10567_p_dout0;
        mul_1_reg_2140 <= grp_fu_10487_p_dout0;
        mul_20_reg_2235 <= grp_fu_10571_p_dout0;
        mul_21_reg_2240 <= grp_fu_10575_p_dout0;
        mul_22_reg_2245 <= grp_fu_10579_p_dout0;
        mul_23_reg_2250 <= grp_fu_10583_p_dout0;
        mul_24_reg_2255 <= grp_fu_10587_p_dout0;
        mul_25_reg_2260 <= grp_fu_10591_p_dout0;
        mul_26_reg_2265 <= grp_fu_10595_p_dout0;
        mul_27_reg_2270 <= grp_fu_10599_p_dout0;
        mul_28_reg_2275 <= grp_fu_10603_p_dout0;
        mul_29_reg_2280 <= grp_fu_10607_p_dout0;
        mul_2_reg_2145 <= grp_fu_10499_p_dout0;
        mul_30_reg_2285 <= grp_fu_10611_p_dout0;
        mul_31_reg_2290 <= grp_fu_10615_p_dout0;
        mul_3_reg_2150 <= grp_fu_10503_p_dout0;
        mul_4_reg_2155 <= grp_fu_10507_p_dout0;
        mul_5_reg_2160 <= grp_fu_10511_p_dout0;
        mul_6_reg_2165 <= grp_fu_10515_p_dout0;
        mul_7_reg_2170 <= grp_fu_10519_p_dout0;
        mul_8_reg_2175 <= grp_fu_10523_p_dout0;
        mul_9_reg_2180 <= grp_fu_10527_p_dout0;
        mul_reg_2135 <= grp_fu_10483_p_dout0;
        select_ln113_reg_1892_pp0_iter10_reg <= select_ln113_reg_1892_pp0_iter9_reg;
        select_ln113_reg_1892_pp0_iter2_reg <= select_ln113_reg_1892_pp0_iter1_reg;
        select_ln113_reg_1892_pp0_iter3_reg <= select_ln113_reg_1892_pp0_iter2_reg;
        select_ln113_reg_1892_pp0_iter4_reg <= select_ln113_reg_1892_pp0_iter3_reg;
        select_ln113_reg_1892_pp0_iter5_reg <= select_ln113_reg_1892_pp0_iter4_reg;
        select_ln113_reg_1892_pp0_iter6_reg <= select_ln113_reg_1892_pp0_iter5_reg;
        select_ln113_reg_1892_pp0_iter7_reg <= select_ln113_reg_1892_pp0_iter6_reg;
        select_ln113_reg_1892_pp0_iter8_reg <= select_ln113_reg_1892_pp0_iter7_reg;
        select_ln113_reg_1892_pp0_iter9_reg <= select_ln113_reg_1892_pp0_iter8_reg;
        select_ln115_10_reg_1989 <= select_ln115_10_fu_1348_p3;
        select_ln115_11_reg_1994 <= select_ln115_11_fu_1354_p3;
        select_ln115_12_reg_1999 <= select_ln115_12_fu_1360_p3;
        select_ln115_13_reg_2004 <= select_ln115_13_fu_1366_p3;
        select_ln115_14_reg_2009 <= select_ln115_14_fu_1372_p3;
        select_ln115_15_reg_2014 <= select_ln115_15_fu_1378_p3;
        select_ln115_16_reg_2055 <= select_ln115_16_fu_1403_p3;
        select_ln115_17_reg_2060 <= select_ln115_17_fu_1408_p3;
        select_ln115_18_reg_2065 <= select_ln115_18_fu_1413_p3;
        select_ln115_19_reg_2070 <= select_ln115_19_fu_1418_p3;
        select_ln115_1_reg_1944 <= select_ln115_1_fu_1294_p3;
        select_ln115_20_reg_2075 <= select_ln115_20_fu_1423_p3;
        select_ln115_21_reg_2080 <= select_ln115_21_fu_1428_p3;
        select_ln115_22_reg_2085 <= select_ln115_22_fu_1433_p3;
        select_ln115_23_reg_2090 <= select_ln115_23_fu_1438_p3;
        select_ln115_24_reg_2095 <= select_ln115_24_fu_1443_p3;
        select_ln115_25_reg_2100 <= select_ln115_25_fu_1448_p3;
        select_ln115_26_reg_2105 <= select_ln115_26_fu_1453_p3;
        select_ln115_27_reg_2110 <= select_ln115_27_fu_1458_p3;
        select_ln115_28_reg_2115 <= select_ln115_28_fu_1463_p3;
        select_ln115_29_reg_2120 <= select_ln115_29_fu_1468_p3;
        select_ln115_2_reg_1949 <= select_ln115_2_fu_1300_p3;
        select_ln115_30_reg_2125 <= select_ln115_30_fu_1473_p3;
        select_ln115_31_reg_2130 <= select_ln115_31_fu_1478_p3;
        select_ln115_3_reg_1954 <= select_ln115_3_fu_1306_p3;
        select_ln115_4_reg_1959 <= select_ln115_4_fu_1312_p3;
        select_ln115_5_reg_1964 <= select_ln115_5_fu_1318_p3;
        select_ln115_6_reg_1969 <= select_ln115_6_fu_1324_p3;
        select_ln115_7_reg_1974 <= select_ln115_7_fu_1330_p3;
        select_ln115_8_reg_1979 <= select_ln115_8_fu_1336_p3;
        select_ln115_9_reg_1984 <= select_ln115_9_fu_1342_p3;
        select_ln115_reg_1939 <= select_ln115_fu_1288_p3;
        tmp_48_reg_1904_pp0_iter10_reg <= tmp_48_reg_1904_pp0_iter9_reg;
        tmp_48_reg_1904_pp0_iter2_reg <= tmp_48_reg_1904_pp0_iter1_reg;
        tmp_48_reg_1904_pp0_iter3_reg <= tmp_48_reg_1904_pp0_iter2_reg;
        tmp_48_reg_1904_pp0_iter4_reg <= tmp_48_reg_1904_pp0_iter3_reg;
        tmp_48_reg_1904_pp0_iter5_reg <= tmp_48_reg_1904_pp0_iter4_reg;
        tmp_48_reg_1904_pp0_iter6_reg <= tmp_48_reg_1904_pp0_iter5_reg;
        tmp_48_reg_1904_pp0_iter7_reg <= tmp_48_reg_1904_pp0_iter6_reg;
        tmp_48_reg_1904_pp0_iter8_reg <= tmp_48_reg_1904_pp0_iter7_reg;
        tmp_48_reg_1904_pp0_iter9_reg <= tmp_48_reg_1904_pp0_iter8_reg;
        training_data_load_reg_1914 <= training_data_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln_reg_1899 <= {{select_ln112_fu_1209_p3[5:4]}};
        lshr_ln_reg_1899_pp0_iter1_reg <= lshr_ln_reg_1899;
        select_ln112_reg_1887 <= select_ln112_fu_1209_p3;
        select_ln112_reg_1887_pp0_iter1_reg <= select_ln112_reg_1887;
        select_ln113_reg_1892 <= select_ln113_fu_1223_p3;
        select_ln113_reg_1892_pp0_iter1_reg <= select_ln113_reg_1892;
        tmp_48_reg_1904 <= select_ln112_fu_1209_p3[32'd5];
        tmp_48_reg_1904_pp0_iter1_reg <= tmp_48_reg_1904;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_1183_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_226;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_230;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_222;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_0_ce0_local = 1'b1;
    end else begin
        delta_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_0_ce1_local = 1'b1;
    end else begin
        delta_weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_0_we0_local = 1'b1;
    end else begin
        delta_weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_0_we1_local = 1'b1;
    end else begin
        delta_weights1_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_10_ce0_local = 1'b1;
    end else begin
        delta_weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_10_ce1_local = 1'b1;
    end else begin
        delta_weights1_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_10_we0_local = 1'b1;
    end else begin
        delta_weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_10_we1_local = 1'b1;
    end else begin
        delta_weights1_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_11_ce0_local = 1'b1;
    end else begin
        delta_weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_11_ce1_local = 1'b1;
    end else begin
        delta_weights1_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_11_we0_local = 1'b1;
    end else begin
        delta_weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_11_we1_local = 1'b1;
    end else begin
        delta_weights1_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_12_ce0_local = 1'b1;
    end else begin
        delta_weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_12_ce1_local = 1'b1;
    end else begin
        delta_weights1_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_12_we0_local = 1'b1;
    end else begin
        delta_weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_12_we1_local = 1'b1;
    end else begin
        delta_weights1_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_13_ce0_local = 1'b1;
    end else begin
        delta_weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_13_ce1_local = 1'b1;
    end else begin
        delta_weights1_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_13_we0_local = 1'b1;
    end else begin
        delta_weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_13_we1_local = 1'b1;
    end else begin
        delta_weights1_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_14_ce0_local = 1'b1;
    end else begin
        delta_weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_14_ce1_local = 1'b1;
    end else begin
        delta_weights1_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_14_we0_local = 1'b1;
    end else begin
        delta_weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_14_we1_local = 1'b1;
    end else begin
        delta_weights1_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_15_ce0_local = 1'b1;
    end else begin
        delta_weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_15_ce1_local = 1'b1;
    end else begin
        delta_weights1_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_15_we0_local = 1'b1;
    end else begin
        delta_weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_15_we1_local = 1'b1;
    end else begin
        delta_weights1_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_ce1_local = 1'b1;
    end else begin
        delta_weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_we1_local = 1'b1;
    end else begin
        delta_weights1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_ce1_local = 1'b1;
    end else begin
        delta_weights1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_we1_local = 1'b1;
    end else begin
        delta_weights1_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_ce1_local = 1'b1;
    end else begin
        delta_weights1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_we1_local = 1'b1;
    end else begin
        delta_weights1_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_4_ce0_local = 1'b1;
    end else begin
        delta_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_4_ce1_local = 1'b1;
    end else begin
        delta_weights1_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_4_we0_local = 1'b1;
    end else begin
        delta_weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_4_we1_local = 1'b1;
    end else begin
        delta_weights1_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_5_ce0_local = 1'b1;
    end else begin
        delta_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_5_ce1_local = 1'b1;
    end else begin
        delta_weights1_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_5_we0_local = 1'b1;
    end else begin
        delta_weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_5_we1_local = 1'b1;
    end else begin
        delta_weights1_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_6_ce0_local = 1'b1;
    end else begin
        delta_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_6_ce1_local = 1'b1;
    end else begin
        delta_weights1_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_6_we0_local = 1'b1;
    end else begin
        delta_weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_6_we1_local = 1'b1;
    end else begin
        delta_weights1_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_7_ce0_local = 1'b1;
    end else begin
        delta_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_7_ce1_local = 1'b1;
    end else begin
        delta_weights1_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_7_we0_local = 1'b1;
    end else begin
        delta_weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_7_we1_local = 1'b1;
    end else begin
        delta_weights1_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_8_ce0_local = 1'b1;
    end else begin
        delta_weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_8_ce1_local = 1'b1;
    end else begin
        delta_weights1_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_8_we0_local = 1'b1;
    end else begin
        delta_weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_8_we1_local = 1'b1;
    end else begin
        delta_weights1_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_9_ce0_local = 1'b1;
    end else begin
        delta_weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_9_ce1_local = 1'b1;
    end else begin
        delta_weights1_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_9_we0_local = 1'b1;
    end else begin
        delta_weights1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_9_we1_local = 1'b1;
    end else begin
        delta_weights1_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_ce0_local = 1'b1;
    end else begin
        training_data_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln113_1_fu_1217_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_1189_p2 = (ap_sig_allocacmp_indvar_flatten_load + 5'd1);
assign add_ln114_fu_1249_p2 = (select_ln112_fu_1209_p3 + 7'd32);
assign add_ln115_1_fu_1509_p4 = {{{select_ln113_reg_1892_pp0_iter10_reg}, {tmp_48_reg_1904_pp0_iter10_reg}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights1_0_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_0_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_0_ce0 = delta_weights1_0_ce0_local;
assign delta_weights1_0_ce1 = delta_weights1_0_ce1_local;
assign delta_weights1_0_d0 = mul_16_reg_2215;
assign delta_weights1_0_d1 = mul_reg_2135;
assign delta_weights1_0_we0 = delta_weights1_0_we0_local;
assign delta_weights1_0_we1 = delta_weights1_0_we1_local;
assign delta_weights1_10_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_10_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_10_ce0 = delta_weights1_10_ce0_local;
assign delta_weights1_10_ce1 = delta_weights1_10_ce1_local;
assign delta_weights1_10_d0 = mul_26_reg_2265;
assign delta_weights1_10_d1 = mul_10_reg_2185;
assign delta_weights1_10_we0 = delta_weights1_10_we0_local;
assign delta_weights1_10_we1 = delta_weights1_10_we1_local;
assign delta_weights1_11_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_11_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_11_ce0 = delta_weights1_11_ce0_local;
assign delta_weights1_11_ce1 = delta_weights1_11_ce1_local;
assign delta_weights1_11_d0 = mul_27_reg_2270;
assign delta_weights1_11_d1 = mul_11_reg_2190;
assign delta_weights1_11_we0 = delta_weights1_11_we0_local;
assign delta_weights1_11_we1 = delta_weights1_11_we1_local;
assign delta_weights1_12_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_12_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_12_ce0 = delta_weights1_12_ce0_local;
assign delta_weights1_12_ce1 = delta_weights1_12_ce1_local;
assign delta_weights1_12_d0 = mul_28_reg_2275;
assign delta_weights1_12_d1 = mul_12_reg_2195;
assign delta_weights1_12_we0 = delta_weights1_12_we0_local;
assign delta_weights1_12_we1 = delta_weights1_12_we1_local;
assign delta_weights1_13_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_13_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_13_ce0 = delta_weights1_13_ce0_local;
assign delta_weights1_13_ce1 = delta_weights1_13_ce1_local;
assign delta_weights1_13_d0 = mul_29_reg_2280;
assign delta_weights1_13_d1 = mul_13_reg_2200;
assign delta_weights1_13_we0 = delta_weights1_13_we0_local;
assign delta_weights1_13_we1 = delta_weights1_13_we1_local;
assign delta_weights1_14_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_14_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_14_ce0 = delta_weights1_14_ce0_local;
assign delta_weights1_14_ce1 = delta_weights1_14_ce1_local;
assign delta_weights1_14_d0 = mul_30_reg_2285;
assign delta_weights1_14_d1 = mul_14_reg_2205;
assign delta_weights1_14_we0 = delta_weights1_14_we0_local;
assign delta_weights1_14_we1 = delta_weights1_14_we1_local;
assign delta_weights1_15_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_15_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_15_ce0 = delta_weights1_15_ce0_local;
assign delta_weights1_15_ce1 = delta_weights1_15_ce1_local;
assign delta_weights1_15_d0 = mul_31_reg_2290;
assign delta_weights1_15_d1 = mul_15_reg_2210;
assign delta_weights1_15_we0 = delta_weights1_15_we0_local;
assign delta_weights1_15_we1 = delta_weights1_15_we1_local;
assign delta_weights1_1_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_1_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_ce1 = delta_weights1_1_ce1_local;
assign delta_weights1_1_d0 = mul_17_reg_2220;
assign delta_weights1_1_d1 = mul_1_reg_2140;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_1_we1 = delta_weights1_1_we1_local;
assign delta_weights1_2_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_2_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_ce1 = delta_weights1_2_ce1_local;
assign delta_weights1_2_d0 = mul_18_reg_2225;
assign delta_weights1_2_d1 = mul_2_reg_2145;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_2_we1 = delta_weights1_2_we1_local;
assign delta_weights1_3_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_3_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_ce1 = delta_weights1_3_ce1_local;
assign delta_weights1_3_d0 = mul_19_reg_2230;
assign delta_weights1_3_d1 = mul_3_reg_2150;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_3_we1 = delta_weights1_3_we1_local;
assign delta_weights1_4_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_4_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_4_ce0 = delta_weights1_4_ce0_local;
assign delta_weights1_4_ce1 = delta_weights1_4_ce1_local;
assign delta_weights1_4_d0 = mul_20_reg_2235;
assign delta_weights1_4_d1 = mul_4_reg_2155;
assign delta_weights1_4_we0 = delta_weights1_4_we0_local;
assign delta_weights1_4_we1 = delta_weights1_4_we1_local;
assign delta_weights1_5_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_5_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_5_ce0 = delta_weights1_5_ce0_local;
assign delta_weights1_5_ce1 = delta_weights1_5_ce1_local;
assign delta_weights1_5_d0 = mul_21_reg_2240;
assign delta_weights1_5_d1 = mul_5_reg_2160;
assign delta_weights1_5_we0 = delta_weights1_5_we0_local;
assign delta_weights1_5_we1 = delta_weights1_5_we1_local;
assign delta_weights1_6_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_6_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_6_ce0 = delta_weights1_6_ce0_local;
assign delta_weights1_6_ce1 = delta_weights1_6_ce1_local;
assign delta_weights1_6_d0 = mul_22_reg_2245;
assign delta_weights1_6_d1 = mul_6_reg_2165;
assign delta_weights1_6_we0 = delta_weights1_6_we0_local;
assign delta_weights1_6_we1 = delta_weights1_6_we1_local;
assign delta_weights1_7_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_7_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_7_ce0 = delta_weights1_7_ce0_local;
assign delta_weights1_7_ce1 = delta_weights1_7_ce1_local;
assign delta_weights1_7_d0 = mul_23_reg_2250;
assign delta_weights1_7_d1 = mul_7_reg_2170;
assign delta_weights1_7_we0 = delta_weights1_7_we0_local;
assign delta_weights1_7_we1 = delta_weights1_7_we1_local;
assign delta_weights1_8_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_8_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_8_ce0 = delta_weights1_8_ce0_local;
assign delta_weights1_8_ce1 = delta_weights1_8_ce1_local;
assign delta_weights1_8_d0 = mul_24_reg_2255;
assign delta_weights1_8_d1 = mul_8_reg_2175;
assign delta_weights1_8_we0 = delta_weights1_8_we0_local;
assign delta_weights1_8_we1 = delta_weights1_8_we1_local;
assign delta_weights1_9_address0 = zext_ln115_1_fu_1517_p1;
assign delta_weights1_9_address1 = zext_ln115_fu_1489_p1;
assign delta_weights1_9_ce0 = delta_weights1_9_ce0_local;
assign delta_weights1_9_ce1 = delta_weights1_9_ce1_local;
assign delta_weights1_9_d0 = mul_25_reg_2260;
assign delta_weights1_9_d1 = mul_9_reg_2180;
assign delta_weights1_9_we0 = delta_weights1_9_we0_local;
assign delta_weights1_9_we1 = delta_weights1_9_we1_local;
assign empty_fu_1384_p1 = training_data_load_reg_1914;
assign grp_fu_10483_p_ce = 1'b1;
assign grp_fu_10483_p_din0 = empty_fu_1384_p1;
assign grp_fu_10483_p_din1 = select_ln115_reg_1939;
assign grp_fu_10487_p_ce = 1'b1;
assign grp_fu_10487_p_din0 = empty_fu_1384_p1;
assign grp_fu_10487_p_din1 = select_ln115_1_reg_1944;
assign grp_fu_10499_p_ce = 1'b1;
assign grp_fu_10499_p_din0 = empty_fu_1384_p1;
assign grp_fu_10499_p_din1 = select_ln115_2_reg_1949;
assign grp_fu_10503_p_ce = 1'b1;
assign grp_fu_10503_p_din0 = empty_fu_1384_p1;
assign grp_fu_10503_p_din1 = select_ln115_3_reg_1954;
assign grp_fu_10507_p_ce = 1'b1;
assign grp_fu_10507_p_din0 = empty_fu_1384_p1;
assign grp_fu_10507_p_din1 = select_ln115_4_reg_1959;
assign grp_fu_10511_p_ce = 1'b1;
assign grp_fu_10511_p_din0 = empty_fu_1384_p1;
assign grp_fu_10511_p_din1 = select_ln115_5_reg_1964;
assign grp_fu_10515_p_ce = 1'b1;
assign grp_fu_10515_p_din0 = empty_fu_1384_p1;
assign grp_fu_10515_p_din1 = select_ln115_6_reg_1969;
assign grp_fu_10519_p_ce = 1'b1;
assign grp_fu_10519_p_din0 = empty_fu_1384_p1;
assign grp_fu_10519_p_din1 = select_ln115_7_reg_1974;
assign grp_fu_10523_p_ce = 1'b1;
assign grp_fu_10523_p_din0 = empty_fu_1384_p1;
assign grp_fu_10523_p_din1 = select_ln115_8_reg_1979;
assign grp_fu_10527_p_ce = 1'b1;
assign grp_fu_10527_p_din0 = empty_fu_1384_p1;
assign grp_fu_10527_p_din1 = select_ln115_9_reg_1984;
assign grp_fu_10531_p_ce = 1'b1;
assign grp_fu_10531_p_din0 = empty_fu_1384_p1;
assign grp_fu_10531_p_din1 = select_ln115_10_reg_1989;
assign grp_fu_10535_p_ce = 1'b1;
assign grp_fu_10535_p_din0 = empty_fu_1384_p1;
assign grp_fu_10535_p_din1 = select_ln115_11_reg_1994;
assign grp_fu_10539_p_ce = 1'b1;
assign grp_fu_10539_p_din0 = empty_fu_1384_p1;
assign grp_fu_10539_p_din1 = select_ln115_12_reg_1999;
assign grp_fu_10543_p_ce = 1'b1;
assign grp_fu_10543_p_din0 = empty_fu_1384_p1;
assign grp_fu_10543_p_din1 = select_ln115_13_reg_2004;
assign grp_fu_10547_p_ce = 1'b1;
assign grp_fu_10547_p_din0 = empty_fu_1384_p1;
assign grp_fu_10547_p_din1 = select_ln115_14_reg_2009;
assign grp_fu_10551_p_ce = 1'b1;
assign grp_fu_10551_p_din0 = empty_fu_1384_p1;
assign grp_fu_10551_p_din1 = select_ln115_15_reg_2014;
assign grp_fu_10555_p_ce = 1'b1;
assign grp_fu_10555_p_din0 = empty_reg_2019;
assign grp_fu_10555_p_din1 = select_ln115_16_reg_2055;
assign grp_fu_10559_p_ce = 1'b1;
assign grp_fu_10559_p_din0 = empty_reg_2019;
assign grp_fu_10559_p_din1 = select_ln115_17_reg_2060;
assign grp_fu_10563_p_ce = 1'b1;
assign grp_fu_10563_p_din0 = empty_reg_2019;
assign grp_fu_10563_p_din1 = select_ln115_18_reg_2065;
assign grp_fu_10567_p_ce = 1'b1;
assign grp_fu_10567_p_din0 = empty_reg_2019;
assign grp_fu_10567_p_din1 = select_ln115_19_reg_2070;
assign grp_fu_10571_p_ce = 1'b1;
assign grp_fu_10571_p_din0 = empty_reg_2019;
assign grp_fu_10571_p_din1 = select_ln115_20_reg_2075;
assign grp_fu_10575_p_ce = 1'b1;
assign grp_fu_10575_p_din0 = empty_reg_2019;
assign grp_fu_10575_p_din1 = select_ln115_21_reg_2080;
assign grp_fu_10579_p_ce = 1'b1;
assign grp_fu_10579_p_din0 = empty_reg_2019;
assign grp_fu_10579_p_din1 = select_ln115_22_reg_2085;
assign grp_fu_10583_p_ce = 1'b1;
assign grp_fu_10583_p_din0 = empty_reg_2019;
assign grp_fu_10583_p_din1 = select_ln115_23_reg_2090;
assign grp_fu_10587_p_ce = 1'b1;
assign grp_fu_10587_p_din0 = empty_reg_2019;
assign grp_fu_10587_p_din1 = select_ln115_24_reg_2095;
assign grp_fu_10591_p_ce = 1'b1;
assign grp_fu_10591_p_din0 = empty_reg_2019;
assign grp_fu_10591_p_din1 = select_ln115_25_reg_2100;
assign grp_fu_10595_p_ce = 1'b1;
assign grp_fu_10595_p_din0 = empty_reg_2019;
assign grp_fu_10595_p_din1 = select_ln115_26_reg_2105;
assign grp_fu_10599_p_ce = 1'b1;
assign grp_fu_10599_p_din0 = empty_reg_2019;
assign grp_fu_10599_p_din1 = select_ln115_27_reg_2110;
assign grp_fu_10603_p_ce = 1'b1;
assign grp_fu_10603_p_din0 = empty_reg_2019;
assign grp_fu_10603_p_din1 = select_ln115_28_reg_2115;
assign grp_fu_10607_p_ce = 1'b1;
assign grp_fu_10607_p_din0 = empty_reg_2019;
assign grp_fu_10607_p_din1 = select_ln115_29_reg_2120;
assign grp_fu_10611_p_ce = 1'b1;
assign grp_fu_10611_p_din0 = empty_reg_2019;
assign grp_fu_10611_p_din1 = select_ln115_30_reg_2125;
assign grp_fu_10615_p_ce = 1'b1;
assign grp_fu_10615_p_din0 = empty_reg_2019;
assign grp_fu_10615_p_din1 = select_ln115_31_reg_2130;
assign icmp_ln113_fu_1183_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 5'd26) ? 1'b1 : 1'b0);
assign icmp_ln115_fu_1283_p2 = ((select_ln112_reg_1887_pp0_iter1_reg == 7'd32) ? 1'b1 : 1'b0);
assign or_ln_fu_1483_p3 = {{select_ln113_reg_1892_pp0_iter9_reg}, {lshr_ln_reg_1899_pp0_iter9_reg}};
assign p_sum_cast_fu_1278_p1 = p_sum_fu_1273_p2;
assign p_sum_fu_1273_p2 = (zext_ln113_fu_1270_p1 + idx);
assign select_ln112_fu_1209_p3 = ((tmp_fu_1201_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_1223_p3 = ((tmp_fu_1201_p3[0:0] == 1'b1) ? add_ln113_1_fu_1217_p2 : ap_sig_allocacmp_i_load);
assign select_ln115_10_fu_1348_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read42 : p_read10);
assign select_ln115_11_fu_1354_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read43 : p_read11);
assign select_ln115_12_fu_1360_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read44 : p_read12);
assign select_ln115_13_fu_1366_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read45 : p_read13);
assign select_ln115_14_fu_1372_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read46 : p_read14);
assign select_ln115_15_fu_1378_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read47 : p_read15);
assign select_ln115_16_fu_1403_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read48 : p_read16);
assign select_ln115_17_fu_1408_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read49 : p_read17);
assign select_ln115_18_fu_1413_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read50 : p_read18);
assign select_ln115_19_fu_1418_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read51 : p_read19);
assign select_ln115_1_fu_1294_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read33 : p_read1);
assign select_ln115_20_fu_1423_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read52 : p_read20);
assign select_ln115_21_fu_1428_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read53 : p_read21);
assign select_ln115_22_fu_1433_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read54 : p_read22);
assign select_ln115_23_fu_1438_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read55 : p_read23);
assign select_ln115_24_fu_1443_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read56 : p_read24);
assign select_ln115_25_fu_1448_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read57 : p_read25);
assign select_ln115_26_fu_1453_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read58 : p_read26);
assign select_ln115_27_fu_1458_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read59 : p_read27);
assign select_ln115_28_fu_1463_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read60 : p_read28);
assign select_ln115_29_fu_1468_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read61 : p_read29);
assign select_ln115_2_fu_1300_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read34 : p_read2);
assign select_ln115_30_fu_1473_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read62 : p_read30);
assign select_ln115_31_fu_1478_p3 = ((icmp_ln115_reg_1919[0:0] == 1'b1) ? p_read63 : p_read31);
assign select_ln115_3_fu_1306_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read35 : p_read3);
assign select_ln115_4_fu_1312_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read36 : p_read4);
assign select_ln115_5_fu_1318_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read37 : p_read5);
assign select_ln115_6_fu_1324_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read38 : p_read6);
assign select_ln115_7_fu_1330_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read39 : p_read7);
assign select_ln115_8_fu_1336_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read40 : p_read8);
assign select_ln115_9_fu_1342_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read41 : p_read9);
assign select_ln115_fu_1288_p3 = ((icmp_ln115_fu_1283_p2[0:0] == 1'b1) ? p_read32 : p_read);
assign tmp_fu_1201_p3 = ap_sig_allocacmp_j_load[32'd6];
assign training_data_address0 = p_sum_cast_fu_1278_p1;
assign training_data_ce0 = training_data_ce0_local;
assign zext_ln113_fu_1270_p1 = select_ln113_reg_1892;
assign zext_ln115_1_fu_1517_p1 = add_ln115_1_fu_1509_p4;
assign zext_ln115_fu_1489_p1 = or_ln_fu_1483_p3;
endmodule 
