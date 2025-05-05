module kernel_2mm_kernel_2mm_node0_Pipeline_label_252 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_7_address0,v229_7_ce0,v229_7_we0,v229_7_d0,v229_7_q0,v229_7_address1,v229_7_ce1,v229_7_we1,v229_7_d1,v229_7_q1,v229_6_address0,v229_6_ce0,v229_6_we0,v229_6_d0,v229_6_q0,v229_6_address1,v229_6_ce1,v229_6_we1,v229_6_d1,v229_6_q1,v229_5_address0,v229_5_ce0,v229_5_we0,v229_5_d0,v229_5_q0,v229_5_address1,v229_5_ce1,v229_5_we1,v229_5_d1,v229_5_q1,v229_4_address0,v229_4_ce0,v229_4_we0,v229_4_d0,v229_4_q0,v229_4_address1,v229_4_ce1,v229_4_we1,v229_4_d1,v229_4_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,mul_ln38_5,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,mul_ln49_5,mul_ln62_5,v11_49,v24_49,v35_49,v46_49,v57_49,v68_49,v79_49,v90_49,v101_49,grp_fu_28120_p_din0,grp_fu_28120_p_din1,grp_fu_28120_p_opcode,grp_fu_28120_p_dout0,grp_fu_28120_p_ce,grp_fu_28124_p_din0,grp_fu_28124_p_din1,grp_fu_28124_p_opcode,grp_fu_28124_p_dout0,grp_fu_28124_p_ce,grp_fu_28128_p_din0,grp_fu_28128_p_din1,grp_fu_28128_p_opcode,grp_fu_28128_p_dout0,grp_fu_28128_p_ce,grp_fu_28132_p_din0,grp_fu_28132_p_din1,grp_fu_28132_p_opcode,grp_fu_28132_p_dout0,grp_fu_28132_p_ce,grp_fu_28136_p_din0,grp_fu_28136_p_din1,grp_fu_28136_p_opcode,grp_fu_28136_p_dout0,grp_fu_28136_p_ce,grp_fu_28140_p_din0,grp_fu_28140_p_din1,grp_fu_28140_p_dout0,grp_fu_28140_p_ce,grp_fu_28144_p_din0,grp_fu_28144_p_din1,grp_fu_28144_p_dout0,grp_fu_28144_p_ce,grp_fu_28148_p_din0,grp_fu_28148_p_din1,grp_fu_28148_p_dout0,grp_fu_28148_p_ce,grp_fu_28152_p_din0,grp_fu_28152_p_din1,grp_fu_28152_p_dout0,grp_fu_28152_p_ce,grp_fu_28156_p_din0,grp_fu_28156_p_din1,grp_fu_28156_p_dout0,grp_fu_28156_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v229_7_address0;
output   v229_7_ce0;
output   v229_7_we0;
output  [31:0] v229_7_d0;
input  [31:0] v229_7_q0;
output  [12:0] v229_7_address1;
output   v229_7_ce1;
output   v229_7_we1;
output  [31:0] v229_7_d1;
input  [31:0] v229_7_q1;
output  [12:0] v229_6_address0;
output   v229_6_ce0;
output   v229_6_we0;
output  [31:0] v229_6_d0;
input  [31:0] v229_6_q0;
output  [12:0] v229_6_address1;
output   v229_6_ce1;
output   v229_6_we1;
output  [31:0] v229_6_d1;
input  [31:0] v229_6_q1;
output  [12:0] v229_5_address0;
output   v229_5_ce0;
output   v229_5_we0;
output  [31:0] v229_5_d0;
input  [31:0] v229_5_q0;
output  [12:0] v229_5_address1;
output   v229_5_ce1;
output   v229_5_we1;
output  [31:0] v229_5_d1;
input  [31:0] v229_5_q1;
output  [12:0] v229_4_address0;
output   v229_4_ce0;
output   v229_4_we0;
output  [31:0] v229_4_d0;
input  [31:0] v229_4_q0;
output  [12:0] v229_4_address1;
output   v229_4_ce1;
output   v229_4_we1;
output  [31:0] v229_4_d1;
input  [31:0] v229_4_q1;
output  [12:0] v229_3_address0;
output   v229_3_ce0;
output   v229_3_we0;
output  [31:0] v229_3_d0;
input  [31:0] v229_3_q0;
output  [12:0] v229_3_address1;
output   v229_3_ce1;
output   v229_3_we1;
output  [31:0] v229_3_d1;
input  [31:0] v229_3_q1;
output  [12:0] v229_2_address0;
output   v229_2_ce0;
output   v229_2_we0;
output  [31:0] v229_2_d0;
input  [31:0] v229_2_q0;
output  [12:0] v229_2_address1;
output   v229_2_ce1;
output   v229_2_we1;
output  [31:0] v229_2_d1;
input  [31:0] v229_2_q1;
output  [12:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [12:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [12:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [12:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
input  [15:0] mul_ln38_5;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
input  [12:0] mul_ln49_5;
input  [12:0] mul_ln62_5;
input  [31:0] v11_49;
input  [31:0] v24_49;
input  [31:0] v35_49;
input  [31:0] v46_49;
input  [31:0] v57_49;
input  [31:0] v68_49;
input  [31:0] v79_49;
input  [31:0] v90_49;
input  [31:0] v101_49;
output  [31:0] grp_fu_28120_p_din0;
output  [31:0] grp_fu_28120_p_din1;
output  [1:0] grp_fu_28120_p_opcode;
input  [31:0] grp_fu_28120_p_dout0;
output   grp_fu_28120_p_ce;
output  [31:0] grp_fu_28124_p_din0;
output  [31:0] grp_fu_28124_p_din1;
output  [1:0] grp_fu_28124_p_opcode;
input  [31:0] grp_fu_28124_p_dout0;
output   grp_fu_28124_p_ce;
output  [31:0] grp_fu_28128_p_din0;
output  [31:0] grp_fu_28128_p_din1;
output  [1:0] grp_fu_28128_p_opcode;
input  [31:0] grp_fu_28128_p_dout0;
output   grp_fu_28128_p_ce;
output  [31:0] grp_fu_28132_p_din0;
output  [31:0] grp_fu_28132_p_din1;
output  [1:0] grp_fu_28132_p_opcode;
input  [31:0] grp_fu_28132_p_dout0;
output   grp_fu_28132_p_ce;
output  [31:0] grp_fu_28136_p_din0;
output  [31:0] grp_fu_28136_p_din1;
output  [1:0] grp_fu_28136_p_opcode;
input  [31:0] grp_fu_28136_p_dout0;
output   grp_fu_28136_p_ce;
output  [31:0] grp_fu_28140_p_din0;
output  [31:0] grp_fu_28140_p_din1;
input  [31:0] grp_fu_28140_p_dout0;
output   grp_fu_28140_p_ce;
output  [31:0] grp_fu_28144_p_din0;
output  [31:0] grp_fu_28144_p_din1;
input  [31:0] grp_fu_28144_p_dout0;
output   grp_fu_28144_p_ce;
output  [31:0] grp_fu_28148_p_din0;
output  [31:0] grp_fu_28148_p_din1;
input  [31:0] grp_fu_28148_p_dout0;
output   grp_fu_28148_p_ce;
output  [31:0] grp_fu_28152_p_din0;
output  [31:0] grp_fu_28152_p_din1;
input  [31:0] grp_fu_28152_p_dout0;
output   grp_fu_28152_p_ce;
output  [31:0] grp_fu_28156_p_din0;
output  [31:0] grp_fu_28156_p_din1;
input  [31:0] grp_fu_28156_p_dout0;
output   grp_fu_28156_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln33_reg_858;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_441;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_445;
reg   [31:0] reg_449;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_453;
reg   [31:0] reg_457;
reg   [31:0] reg_461;
reg   [31:0] reg_465;
reg   [31:0] reg_469;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] v7_19_reg_852;
wire   [0:0] icmp_ln33_fu_481_p2;
wire   [7:0] or_ln42_s_fu_512_p3;
reg   [7:0] or_ln42_s_reg_867;
reg   [31:0] v228_load_reg_877;
reg   [31:0] v228_load_20_reg_882;
wire   [31:0] v12_fu_535_p1;
reg   [31:0] v12_reg_887;
wire   [31:0] v18_fu_541_p1;
reg   [31:0] v18_reg_896;
reg   [12:0] v229_0_addr_reg_905;
reg   [12:0] v229_0_addr_reg_905_pp0_iter2_reg;
reg   [12:0] v229_0_addr_reg_905_pp0_iter3_reg;
reg   [12:0] v229_1_addr_reg_910;
reg   [12:0] v229_1_addr_reg_910_pp0_iter2_reg;
reg   [12:0] v229_1_addr_reg_910_pp0_iter3_reg;
reg   [12:0] v229_2_addr_reg_916;
reg   [12:0] v229_2_addr_reg_916_pp0_iter2_reg;
reg   [12:0] v229_2_addr_reg_916_pp0_iter3_reg;
reg   [12:0] v229_3_addr_reg_921;
reg   [12:0] v229_3_addr_reg_921_pp0_iter2_reg;
reg   [12:0] v229_3_addr_reg_921_pp0_iter3_reg;
reg   [12:0] v229_4_addr_reg_926;
reg   [12:0] v229_4_addr_reg_926_pp0_iter2_reg;
reg   [12:0] v229_4_addr_reg_926_pp0_iter3_reg;
reg   [12:0] v229_5_addr_reg_931;
reg   [12:0] v229_5_addr_reg_931_pp0_iter2_reg;
reg   [12:0] v229_5_addr_reg_931_pp0_iter3_reg;
reg   [12:0] v229_6_addr_reg_936;
reg   [12:0] v229_6_addr_reg_936_pp0_iter2_reg;
reg   [12:0] v229_6_addr_reg_936_pp0_iter3_reg;
reg   [12:0] v229_7_addr_reg_941;
reg   [12:0] v229_7_addr_reg_941_pp0_iter2_reg;
reg   [12:0] v229_7_addr_reg_941_pp0_iter3_reg;
reg   [12:0] v229_7_addr_24_reg_946;
reg   [12:0] v229_7_addr_24_reg_946_pp0_iter2_reg;
reg   [12:0] v229_7_addr_24_reg_946_pp0_iter3_reg;
reg   [12:0] v229_7_addr_24_reg_946_pp0_iter4_reg;
reg   [12:0] v229_0_addr_24_reg_951;
reg   [12:0] v229_0_addr_24_reg_951_pp0_iter2_reg;
reg   [12:0] v229_0_addr_24_reg_951_pp0_iter3_reg;
reg   [12:0] v229_1_addr_24_reg_956;
reg   [12:0] v229_1_addr_24_reg_956_pp0_iter2_reg;
reg   [12:0] v229_1_addr_24_reg_956_pp0_iter3_reg;
reg   [12:0] v229_2_addr_26_reg_962;
reg   [12:0] v229_2_addr_26_reg_962_pp0_iter2_reg;
reg   [12:0] v229_2_addr_26_reg_962_pp0_iter3_reg;
reg   [12:0] v229_3_addr_26_reg_967;
reg   [12:0] v229_3_addr_26_reg_967_pp0_iter2_reg;
reg   [12:0] v229_3_addr_26_reg_967_pp0_iter3_reg;
reg   [12:0] v229_4_addr_26_reg_972;
reg   [12:0] v229_4_addr_26_reg_972_pp0_iter2_reg;
reg   [12:0] v229_4_addr_26_reg_972_pp0_iter3_reg;
reg   [12:0] v229_5_addr_24_reg_977;
reg   [12:0] v229_5_addr_24_reg_977_pp0_iter2_reg;
reg   [12:0] v229_5_addr_24_reg_977_pp0_iter3_reg;
reg   [12:0] v229_6_addr_24_reg_982;
reg   [12:0] v229_6_addr_24_reg_982_pp0_iter2_reg;
reg   [12:0] v229_6_addr_24_reg_982_pp0_iter3_reg;
reg   [12:0] v229_6_addr_24_reg_982_pp0_iter4_reg;
reg   [12:0] v229_7_addr_25_reg_987;
reg   [12:0] v229_7_addr_25_reg_987_pp0_iter2_reg;
reg   [12:0] v229_7_addr_25_reg_987_pp0_iter3_reg;
reg   [12:0] v229_7_addr_26_reg_992;
reg   [12:0] v229_7_addr_26_reg_992_pp0_iter2_reg;
reg   [12:0] v229_7_addr_26_reg_992_pp0_iter3_reg;
reg   [12:0] v229_7_addr_26_reg_992_pp0_iter4_reg;
reg   [31:0] v13_reg_997;
reg   [31:0] v19_reg_1002;
reg   [31:0] v229_0_load_reg_1007;
reg   [31:0] v25_reg_1012;
reg   [31:0] v229_0_load_24_reg_1017;
reg   [31:0] v30_reg_1022;
reg   [31:0] v229_1_load_reg_1027;
reg   [31:0] v36_reg_1032;
reg   [31:0] v229_1_load_24_reg_1037;
reg   [31:0] v229_2_load_reg_1042;
reg   [31:0] v229_2_load_26_reg_1047;
reg   [31:0] v229_3_load_reg_1052;
reg   [31:0] v229_3_load_25_reg_1057;
reg   [31:0] v229_4_load_reg_1062;
reg   [31:0] v229_4_load_25_reg_1067;
reg   [31:0] v229_5_load_reg_1072;
reg   [31:0] v229_5_load_24_reg_1077;
reg   [31:0] v229_6_load_reg_1082;
reg   [31:0] v229_6_load_24_reg_1087;
wire   [31:0] v8_fu_616_p1;
wire   [31:0] v15_fu_621_p1;
wire   [31:0] v21_fu_626_p1;
wire   [31:0] v27_fu_630_p1;
wire   [31:0] v32_fu_634_p1;
reg   [31:0] v41_reg_1117;
reg   [31:0] v47_reg_1122;
reg   [31:0] v52_reg_1127;
reg   [31:0] v58_reg_1132;
reg   [31:0] v63_reg_1137;
wire   [31:0] v38_fu_638_p1;
wire   [31:0] v43_fu_642_p1;
wire   [31:0] v49_fu_646_p1;
wire   [31:0] v54_fu_650_p1;
wire   [31:0] v60_fu_654_p1;
reg   [31:0] v69_reg_1167;
reg   [31:0] v74_reg_1172;
reg   [31:0] v80_reg_1177;
reg   [31:0] v85_reg_1182;
reg   [31:0] v91_reg_1187;
wire   [31:0] v65_fu_658_p1;
wire   [31:0] v71_fu_662_p1;
wire   [31:0] v76_fu_666_p1;
wire   [31:0] v82_fu_670_p1;
wire   [31:0] v87_fu_674_p1;
reg   [31:0] v96_reg_1217;
reg   [31:0] v102_reg_1222;
reg   [31:0] v107_reg_1227;
wire   [31:0] v93_fu_678_p1;
wire   [31:0] v98_fu_682_p1;
wire   [31:0] v104_fu_687_p1;
reg   [31:0] v48_reg_1247;
reg   [31:0] v103_reg_1252;
reg   [31:0] v108_reg_1257;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln38_42_fu_497_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln45_42_fu_530_p1;
wire   [63:0] zext_ln49_fu_564_p1;
wire   [63:0] zext_ln34_fu_581_p1;
wire   [63:0] zext_ln56_fu_594_p1;
wire   [63:0] zext_ln42_fu_611_p1;
reg   [7:0] v7_fu_86;
wire   [7:0] add_ln33_fu_546_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7_19;
reg    v228_ce1_local;
reg    v228_ce0_local;
reg    v229_7_ce1_local;
reg   [12:0] v229_7_address1_local;
reg    v229_7_ce0_local;
reg   [12:0] v229_7_address0_local;
wire    ap_block_pp0_stage1;
reg    v229_7_we1_local;
reg   [31:0] v229_7_d1_local;
wire   [31:0] bitcast_ln41_fu_707_p1;
wire    ap_block_pp0_stage2;
reg    v229_7_we0_local;
reg   [31:0] v229_7_d0_local;
wire   [31:0] bitcast_ln48_fu_712_p1;
wire   [31:0] bitcast_ln146_fu_771_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln152_fu_775_p1;
reg    v229_0_ce1_local;
reg   [12:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [12:0] v229_0_address0_local;
reg    v229_0_we1_local;
wire   [31:0] bitcast_ln55_fu_692_p1;
reg    v229_0_we0_local;
wire   [31:0] bitcast_ln61_fu_697_p1;
reg    v229_1_ce1_local;
reg   [12:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [12:0] v229_1_address0_local;
reg    v229_1_we0_local;
wire   [31:0] bitcast_ln68_fu_702_p1;
reg    v229_1_we1_local;
wire   [31:0] bitcast_ln74_fu_717_p1;
reg    v229_2_ce1_local;
reg   [12:0] v229_2_address1_local;
reg    v229_2_ce0_local;
reg   [12:0] v229_2_address0_local;
reg    v229_2_we1_local;
wire   [31:0] bitcast_ln81_fu_722_p1;
reg    v229_2_we0_local;
wire   [31:0] bitcast_ln87_fu_726_p1;
reg    v229_3_ce1_local;
reg   [12:0] v229_3_address1_local;
reg    v229_3_ce0_local;
reg   [12:0] v229_3_address0_local;
reg    v229_3_we1_local;
wire   [31:0] bitcast_ln94_fu_731_p1;
reg    v229_3_we0_local;
wire   [31:0] bitcast_ln100_fu_736_p1;
reg    v229_4_ce1_local;
reg   [12:0] v229_4_address1_local;
reg    v229_4_ce0_local;
reg   [12:0] v229_4_address0_local;
reg    v229_4_we1_local;
wire   [31:0] bitcast_ln107_fu_741_p1;
reg    v229_4_we0_local;
wire   [31:0] bitcast_ln113_fu_746_p1;
reg    v229_5_ce1_local;
reg   [12:0] v229_5_address1_local;
reg    v229_5_ce0_local;
reg   [12:0] v229_5_address0_local;
reg    v229_5_we1_local;
wire   [31:0] bitcast_ln120_fu_751_p1;
reg    v229_5_we0_local;
wire   [31:0] bitcast_ln126_fu_756_p1;
reg    v229_6_ce1_local;
reg   [12:0] v229_6_address1_local;
reg    v229_6_ce0_local;
reg   [12:0] v229_6_address0_local;
reg    v229_6_we1_local;
wire   [31:0] bitcast_ln133_fu_761_p1;
reg    v229_6_we0_local;
wire   [31:0] bitcast_ln139_fu_766_p1;
reg   [31:0] grp_fu_401_p0;
reg   [31:0] grp_fu_401_p1;
reg   [31:0] grp_fu_405_p0;
reg   [31:0] grp_fu_405_p1;
reg   [31:0] grp_fu_409_p0;
reg   [31:0] grp_fu_409_p1;
reg   [31:0] grp_fu_413_p0;
reg   [31:0] grp_fu_413_p1;
reg   [31:0] grp_fu_417_p0;
reg   [31:0] grp_fu_417_p1;
reg   [31:0] grp_fu_421_p0;
reg   [31:0] grp_fu_421_p1;
reg   [31:0] grp_fu_425_p0;
reg   [31:0] grp_fu_425_p1;
reg   [31:0] grp_fu_429_p0;
reg   [31:0] grp_fu_429_p1;
reg   [31:0] grp_fu_433_p0;
reg   [31:0] grp_fu_433_p1;
reg   [31:0] grp_fu_437_p0;
reg   [31:0] grp_fu_437_p1;
wire   [15:0] zext_ln38_41_fu_487_p1;
wire   [15:0] add_ln38_fu_491_p2;
wire   [6:0] tmp_s_fu_502_p4;
wire   [15:0] zext_ln45_41_fu_520_p1;
wire   [15:0] add_ln45_fu_524_p2;
wire   [12:0] zext_ln38_fu_556_p1;
wire   [12:0] add_ln49_fu_559_p2;
wire   [12:0] add_ln34_fu_576_p2;
wire   [12:0] zext_ln45_fu_586_p1;
wire   [12:0] add_ln56_fu_589_p2;
wire   [12:0] add_ln42_fu_606_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v7_fu_86 = 8'd0;
#0 ap_done_reg = 1'b0;
end
kernel_2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_fu_86 <= 8'd0;
    end else if (((icmp_ln33_reg_858 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v7_fu_86 <= add_ln33_fu_546_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln33_reg_858 <= icmp_ln33_fu_481_p2;
        or_ln42_s_reg_867[7 : 1] <= or_ln42_s_fu_512_p3[7 : 1];
        v229_0_addr_24_reg_951 <= zext_ln56_fu_594_p1;
        v229_0_addr_24_reg_951_pp0_iter2_reg <= v229_0_addr_24_reg_951;
        v229_0_addr_24_reg_951_pp0_iter3_reg <= v229_0_addr_24_reg_951_pp0_iter2_reg;
        v229_0_addr_reg_905 <= zext_ln49_fu_564_p1;
        v229_0_addr_reg_905_pp0_iter2_reg <= v229_0_addr_reg_905;
        v229_0_addr_reg_905_pp0_iter3_reg <= v229_0_addr_reg_905_pp0_iter2_reg;
        v229_1_addr_24_reg_956 <= zext_ln56_fu_594_p1;
        v229_1_addr_24_reg_956_pp0_iter2_reg <= v229_1_addr_24_reg_956;
        v229_1_addr_24_reg_956_pp0_iter3_reg <= v229_1_addr_24_reg_956_pp0_iter2_reg;
        v229_1_addr_reg_910 <= zext_ln49_fu_564_p1;
        v229_1_addr_reg_910_pp0_iter2_reg <= v229_1_addr_reg_910;
        v229_1_addr_reg_910_pp0_iter3_reg <= v229_1_addr_reg_910_pp0_iter2_reg;
        v229_2_addr_26_reg_962 <= zext_ln56_fu_594_p1;
        v229_2_addr_26_reg_962_pp0_iter2_reg <= v229_2_addr_26_reg_962;
        v229_2_addr_26_reg_962_pp0_iter3_reg <= v229_2_addr_26_reg_962_pp0_iter2_reg;
        v229_2_addr_reg_916 <= zext_ln49_fu_564_p1;
        v229_2_addr_reg_916_pp0_iter2_reg <= v229_2_addr_reg_916;
        v229_2_addr_reg_916_pp0_iter3_reg <= v229_2_addr_reg_916_pp0_iter2_reg;
        v229_3_addr_26_reg_967 <= zext_ln56_fu_594_p1;
        v229_3_addr_26_reg_967_pp0_iter2_reg <= v229_3_addr_26_reg_967;
        v229_3_addr_26_reg_967_pp0_iter3_reg <= v229_3_addr_26_reg_967_pp0_iter2_reg;
        v229_3_addr_reg_921 <= zext_ln49_fu_564_p1;
        v229_3_addr_reg_921_pp0_iter2_reg <= v229_3_addr_reg_921;
        v229_3_addr_reg_921_pp0_iter3_reg <= v229_3_addr_reg_921_pp0_iter2_reg;
        v229_4_addr_26_reg_972 <= zext_ln56_fu_594_p1;
        v229_4_addr_26_reg_972_pp0_iter2_reg <= v229_4_addr_26_reg_972;
        v229_4_addr_26_reg_972_pp0_iter3_reg <= v229_4_addr_26_reg_972_pp0_iter2_reg;
        v229_4_addr_reg_926 <= zext_ln49_fu_564_p1;
        v229_4_addr_reg_926_pp0_iter2_reg <= v229_4_addr_reg_926;
        v229_4_addr_reg_926_pp0_iter3_reg <= v229_4_addr_reg_926_pp0_iter2_reg;
        v229_5_addr_24_reg_977 <= zext_ln56_fu_594_p1;
        v229_5_addr_24_reg_977_pp0_iter2_reg <= v229_5_addr_24_reg_977;
        v229_5_addr_24_reg_977_pp0_iter3_reg <= v229_5_addr_24_reg_977_pp0_iter2_reg;
        v229_5_addr_reg_931 <= zext_ln49_fu_564_p1;
        v229_5_addr_reg_931_pp0_iter2_reg <= v229_5_addr_reg_931;
        v229_5_addr_reg_931_pp0_iter3_reg <= v229_5_addr_reg_931_pp0_iter2_reg;
        v229_6_addr_24_reg_982 <= zext_ln56_fu_594_p1;
        v229_6_addr_24_reg_982_pp0_iter2_reg <= v229_6_addr_24_reg_982;
        v229_6_addr_24_reg_982_pp0_iter3_reg <= v229_6_addr_24_reg_982_pp0_iter2_reg;
        v229_6_addr_24_reg_982_pp0_iter4_reg <= v229_6_addr_24_reg_982_pp0_iter3_reg;
        v229_6_addr_reg_936 <= zext_ln49_fu_564_p1;
        v229_6_addr_reg_936_pp0_iter2_reg <= v229_6_addr_reg_936;
        v229_6_addr_reg_936_pp0_iter3_reg <= v229_6_addr_reg_936_pp0_iter2_reg;
        v229_7_addr_24_reg_946 <= zext_ln49_fu_564_p1;
        v229_7_addr_24_reg_946_pp0_iter2_reg <= v229_7_addr_24_reg_946;
        v229_7_addr_24_reg_946_pp0_iter3_reg <= v229_7_addr_24_reg_946_pp0_iter2_reg;
        v229_7_addr_24_reg_946_pp0_iter4_reg <= v229_7_addr_24_reg_946_pp0_iter3_reg;
        v229_7_addr_25_reg_987 <= zext_ln42_fu_611_p1;
        v229_7_addr_25_reg_987_pp0_iter2_reg <= v229_7_addr_25_reg_987;
        v229_7_addr_25_reg_987_pp0_iter3_reg <= v229_7_addr_25_reg_987_pp0_iter2_reg;
        v229_7_addr_26_reg_992 <= zext_ln56_fu_594_p1;
        v229_7_addr_26_reg_992_pp0_iter2_reg <= v229_7_addr_26_reg_992;
        v229_7_addr_26_reg_992_pp0_iter3_reg <= v229_7_addr_26_reg_992_pp0_iter2_reg;
        v229_7_addr_26_reg_992_pp0_iter4_reg <= v229_7_addr_26_reg_992_pp0_iter3_reg;
        v229_7_addr_reg_941 <= zext_ln34_fu_581_p1;
        v229_7_addr_reg_941_pp0_iter2_reg <= v229_7_addr_reg_941;
        v229_7_addr_reg_941_pp0_iter3_reg <= v229_7_addr_reg_941_pp0_iter2_reg;
        v7_19_reg_852 <= ap_sig_allocacmp_v7_19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_441 <= v229_7_q1;
        reg_445 <= v229_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_449 <= grp_fu_28120_p_dout0;
        reg_453 <= grp_fu_28124_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_457 <= grp_fu_28128_p_dout0;
        reg_461 <= grp_fu_28132_p_dout0;
        reg_465 <= grp_fu_28136_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_469 <= grp_fu_28120_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_1222 <= grp_fu_28144_p_dout0;
        v107_reg_1227 <= grp_fu_28148_p_dout0;
        v96_reg_1217 <= grp_fu_28140_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v103_reg_1252 <= grp_fu_28124_p_dout0;
        v108_reg_1257 <= grp_fu_28128_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v12_reg_887 <= v12_fu_535_p1;
        v18_reg_896 <= v18_fu_541_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v13_reg_997 <= grp_fu_28140_p_dout0;
        v19_reg_1002 <= grp_fu_28144_p_dout0;
        v229_0_load_24_reg_1017 <= v229_0_q0;
        v229_0_load_reg_1007 <= v229_0_q1;
        v229_1_load_24_reg_1037 <= v229_1_q0;
        v229_1_load_reg_1027 <= v229_1_q1;
        v229_2_load_26_reg_1047 <= v229_2_q0;
        v229_2_load_reg_1042 <= v229_2_q1;
        v229_3_load_25_reg_1057 <= v229_3_q0;
        v229_3_load_reg_1052 <= v229_3_q1;
        v229_4_load_25_reg_1067 <= v229_4_q0;
        v229_4_load_reg_1062 <= v229_4_q1;
        v229_5_load_24_reg_1077 <= v229_5_q0;
        v229_5_load_reg_1072 <= v229_5_q1;
        v229_6_load_24_reg_1087 <= v229_6_q0;
        v229_6_load_reg_1082 <= v229_6_q1;
        v25_reg_1012 <= grp_fu_28148_p_dout0;
        v30_reg_1022 <= grp_fu_28152_p_dout0;
        v36_reg_1032 <= grp_fu_28156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v228_load_20_reg_882 <= v228_q0;
        v228_load_reg_877 <= v228_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v41_reg_1117 <= grp_fu_28140_p_dout0;
        v47_reg_1122 <= grp_fu_28144_p_dout0;
        v52_reg_1127 <= grp_fu_28148_p_dout0;
        v58_reg_1132 <= grp_fu_28152_p_dout0;
        v63_reg_1137 <= grp_fu_28156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v48_reg_1247 <= grp_fu_28124_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v69_reg_1167 <= grp_fu_28140_p_dout0;
        v74_reg_1172 <= grp_fu_28144_p_dout0;
        v80_reg_1177 <= grp_fu_28148_p_dout0;
        v85_reg_1182 <= grp_fu_28152_p_dout0;
        v91_reg_1187 <= grp_fu_28156_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_858 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7_19 = 8'd0;
    end else begin
        ap_sig_allocacmp_v7_19 = v7_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_401_p0 = v93_fu_678_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_401_p0 = v65_fu_658_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_401_p0 = v38_fu_638_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_401_p0 = v8_fu_616_p1;
    end else begin
        grp_fu_401_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_401_p1 = v96_reg_1217;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_401_p1 = v69_reg_1167;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_401_p1 = v41_reg_1117;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_401_p1 = v13_reg_997;
    end else begin
        grp_fu_401_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_405_p0 = v98_fu_682_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_405_p0 = v71_fu_662_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_405_p0 = v43_fu_642_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_405_p0 = v15_fu_621_p1;
    end else begin
        grp_fu_405_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_405_p1 = v102_reg_1222;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_405_p1 = v74_reg_1172;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_405_p1 = v47_reg_1122;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_405_p1 = v19_reg_1002;
    end else begin
        grp_fu_405_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_409_p0 = v104_fu_687_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_409_p0 = v76_fu_666_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_409_p0 = v49_fu_646_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_409_p0 = v21_fu_626_p1;
    end else begin
        grp_fu_409_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_409_p1 = v107_reg_1227;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_409_p1 = v80_reg_1177;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_409_p1 = v52_reg_1127;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_409_p1 = v25_reg_1012;
    end else begin
        grp_fu_409_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_413_p0 = v82_fu_670_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_413_p0 = v54_fu_650_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_413_p0 = v27_fu_630_p1;
    end else begin
        grp_fu_413_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_413_p1 = v85_reg_1182;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_413_p1 = v58_reg_1132;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_413_p1 = v30_reg_1022;
    end else begin
        grp_fu_413_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_417_p0 = v87_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_417_p0 = v60_fu_654_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_417_p0 = v32_fu_634_p1;
    end else begin
        grp_fu_417_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_417_p1 = v91_reg_1187;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_417_p1 = v63_reg_1137;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_417_p1 = v36_reg_1032;
    end else begin
        grp_fu_417_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_421_p0 = v90_49;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_421_p0 = v68_49;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_421_p0 = v35_49;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_421_p0 = v11_49;
    end else begin
        grp_fu_421_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_421_p1 = v12_reg_887;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_421_p1 = v18_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_421_p1 = v12_fu_535_p1;
    end else begin
        grp_fu_421_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_425_p0 = v101_49;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_425_p0 = v68_49;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_425_p0 = v46_49;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_425_p0 = v11_49;
    end else begin
        grp_fu_425_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_425_p1 = v18_reg_896;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_425_p1 = v12_reg_887;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_425_p1 = v18_fu_541_p1;
    end else begin
        grp_fu_425_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_429_p0 = v101_49;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_429_p0 = v79_49;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_429_p0 = v46_49;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_429_p0 = v24_49;
    end else begin
        grp_fu_429_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_429_p1 = v12_reg_887;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_429_p1 = v18_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_429_p1 = v12_fu_535_p1;
    end else begin
        grp_fu_429_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_433_p0 = v79_49;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_433_p0 = v57_49;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_433_p0 = v24_49;
    end else begin
        grp_fu_433_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_433_p1 = v18_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_433_p1 = v12_reg_887;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_433_p1 = v18_fu_541_p1;
    end else begin
        grp_fu_433_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_437_p0 = v90_49;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p0 = v57_49;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_437_p0 = v35_49;
    end else begin
        grp_fu_437_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_437_p1 = v12_reg_887;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p1 = v18_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_437_p1 = v12_fu_535_p1;
    end else begin
        grp_fu_437_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_ce0_local = 1'b1;
    end else begin
        v228_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_ce1_local = 1'b1;
    end else begin
        v228_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = v229_0_addr_24_reg_951_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = zext_ln56_fu_594_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = v229_0_addr_reg_905_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = zext_ln49_fu_564_p1;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = v229_1_addr_reg_910_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = zext_ln56_fu_594_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = v229_1_addr_24_reg_956_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = zext_ln49_fu_564_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_we1_local = 1'b1;
    end else begin
        v229_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address0_local = v229_2_addr_26_reg_962_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address0_local = zext_ln56_fu_594_p1;
    end else begin
        v229_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address1_local = v229_2_addr_reg_916_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address1_local = zext_ln49_fu_564_p1;
    end else begin
        v229_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_ce0_local = 1'b1;
    end else begin
        v229_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_ce1_local = 1'b1;
    end else begin
        v229_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_we0_local = 1'b1;
    end else begin
        v229_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_we1_local = 1'b1;
    end else begin
        v229_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address0_local = v229_3_addr_26_reg_967_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address0_local = zext_ln56_fu_594_p1;
    end else begin
        v229_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address1_local = v229_3_addr_reg_921_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address1_local = zext_ln49_fu_564_p1;
    end else begin
        v229_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_3_ce0_local = 1'b1;
    end else begin
        v229_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_3_ce1_local = 1'b1;
    end else begin
        v229_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_we0_local = 1'b1;
    end else begin
        v229_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_we1_local = 1'b1;
    end else begin
        v229_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_4_address0_local = v229_4_addr_26_reg_972_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_4_address0_local = zext_ln56_fu_594_p1;
    end else begin
        v229_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_4_address1_local = v229_4_addr_reg_926_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_4_address1_local = zext_ln49_fu_564_p1;
    end else begin
        v229_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v229_4_ce0_local = 1'b1;
    end else begin
        v229_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v229_4_ce1_local = 1'b1;
    end else begin
        v229_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_4_we0_local = 1'b1;
    end else begin
        v229_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_4_we1_local = 1'b1;
    end else begin
        v229_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_5_address0_local = v229_5_addr_24_reg_977_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_5_address0_local = zext_ln56_fu_594_p1;
    end else begin
        v229_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_5_address1_local = v229_5_addr_reg_931_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_5_address1_local = zext_ln49_fu_564_p1;
    end else begin
        v229_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v229_5_ce0_local = 1'b1;
    end else begin
        v229_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v229_5_ce1_local = 1'b1;
    end else begin
        v229_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_5_we0_local = 1'b1;
    end else begin
        v229_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_5_we1_local = 1'b1;
    end else begin
        v229_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_6_address0_local = v229_6_addr_24_reg_982_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_6_address0_local = zext_ln56_fu_594_p1;
    end else begin
        v229_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_6_address1_local = v229_6_addr_reg_936_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_6_address1_local = zext_ln49_fu_564_p1;
    end else begin
        v229_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_6_ce0_local = 1'b1;
    end else begin
        v229_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v229_6_ce1_local = 1'b1;
    end else begin
        v229_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_6_we0_local = 1'b1;
    end else begin
        v229_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_6_we1_local = 1'b1;
    end else begin
        v229_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_7_address0_local = v229_7_addr_26_reg_992_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_7_address0_local = v229_7_addr_25_reg_987_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_7_address0_local = v229_7_addr_26_reg_992;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_7_address0_local = zext_ln42_fu_611_p1;
    end else begin
        v229_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_7_address1_local = v229_7_addr_24_reg_946_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_7_address1_local = v229_7_addr_reg_941_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_7_address1_local = v229_7_addr_24_reg_946;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_7_address1_local = zext_ln34_fu_581_p1;
    end else begin
        v229_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_7_ce0_local = 1'b1;
    end else begin
        v229_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_7_ce1_local = 1'b1;
    end else begin
        v229_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_7_d0_local = bitcast_ln152_fu_775_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_7_d0_local = bitcast_ln48_fu_712_p1;
    end else begin
        v229_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_7_d1_local = bitcast_ln146_fu_771_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_7_d1_local = bitcast_ln41_fu_707_p1;
    end else begin
        v229_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_7_we0_local = 1'b1;
    end else begin
        v229_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_7_we1_local = 1'b1;
    end else begin
        v229_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln33_fu_546_p2 = (v7_19_reg_852 + 8'd2);
assign add_ln34_fu_576_p2 = (mul_ln62_5 + zext_ln38_fu_556_p1);
assign add_ln38_fu_491_p2 = (mul_ln38_5 + zext_ln38_41_fu_487_p1);
assign add_ln42_fu_606_p2 = (mul_ln62_5 + zext_ln45_fu_586_p1);
assign add_ln45_fu_524_p2 = (mul_ln38_5 + zext_ln45_41_fu_520_p1);
assign add_ln49_fu_559_p2 = (mul_ln49_5 + zext_ln38_fu_556_p1);
assign add_ln56_fu_589_p2 = (mul_ln49_5 + zext_ln45_fu_586_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln100_fu_736_p1 = reg_465;
assign bitcast_ln107_fu_741_p1 = reg_449;
assign bitcast_ln113_fu_746_p1 = reg_453;
assign bitcast_ln120_fu_751_p1 = reg_457;
assign bitcast_ln126_fu_756_p1 = reg_461;
assign bitcast_ln133_fu_761_p1 = reg_465;
assign bitcast_ln139_fu_766_p1 = reg_469;
assign bitcast_ln146_fu_771_p1 = v103_reg_1252;
assign bitcast_ln152_fu_775_p1 = v108_reg_1257;
assign bitcast_ln41_fu_707_p1 = reg_449;
assign bitcast_ln48_fu_712_p1 = reg_453;
assign bitcast_ln55_fu_692_p1 = reg_457;
assign bitcast_ln61_fu_697_p1 = reg_461;
assign bitcast_ln68_fu_702_p1 = reg_465;
assign bitcast_ln74_fu_717_p1 = reg_469;
assign bitcast_ln81_fu_722_p1 = v48_reg_1247;
assign bitcast_ln87_fu_726_p1 = reg_457;
assign bitcast_ln94_fu_731_p1 = reg_461;
assign grp_fu_28120_p_ce = 1'b1;
assign grp_fu_28120_p_din0 = grp_fu_401_p0;
assign grp_fu_28120_p_din1 = grp_fu_401_p1;
assign grp_fu_28120_p_opcode = 2'd0;
assign grp_fu_28124_p_ce = 1'b1;
assign grp_fu_28124_p_din0 = grp_fu_405_p0;
assign grp_fu_28124_p_din1 = grp_fu_405_p1;
assign grp_fu_28124_p_opcode = 2'd0;
assign grp_fu_28128_p_ce = 1'b1;
assign grp_fu_28128_p_din0 = grp_fu_409_p0;
assign grp_fu_28128_p_din1 = grp_fu_409_p1;
assign grp_fu_28128_p_opcode = 2'd0;
assign grp_fu_28132_p_ce = 1'b1;
assign grp_fu_28132_p_din0 = grp_fu_413_p0;
assign grp_fu_28132_p_din1 = grp_fu_413_p1;
assign grp_fu_28132_p_opcode = 2'd0;
assign grp_fu_28136_p_ce = 1'b1;
assign grp_fu_28136_p_din0 = grp_fu_417_p0;
assign grp_fu_28136_p_din1 = grp_fu_417_p1;
assign grp_fu_28136_p_opcode = 2'd0;
assign grp_fu_28140_p_ce = 1'b1;
assign grp_fu_28140_p_din0 = grp_fu_421_p0;
assign grp_fu_28140_p_din1 = grp_fu_421_p1;
assign grp_fu_28144_p_ce = 1'b1;
assign grp_fu_28144_p_din0 = grp_fu_425_p0;
assign grp_fu_28144_p_din1 = grp_fu_425_p1;
assign grp_fu_28148_p_ce = 1'b1;
assign grp_fu_28148_p_din0 = grp_fu_429_p0;
assign grp_fu_28148_p_din1 = grp_fu_429_p1;
assign grp_fu_28152_p_ce = 1'b1;
assign grp_fu_28152_p_din0 = grp_fu_433_p0;
assign grp_fu_28152_p_din1 = grp_fu_433_p1;
assign grp_fu_28156_p_ce = 1'b1;
assign grp_fu_28156_p_din0 = grp_fu_437_p0;
assign grp_fu_28156_p_din1 = grp_fu_437_p1;
assign icmp_ln33_fu_481_p2 = ((ap_sig_allocacmp_v7_19 < 8'd220) ? 1'b1 : 1'b0);
assign or_ln42_s_fu_512_p3 = {{tmp_s_fu_502_p4}, {1'd1}};
assign tmp_s_fu_502_p4 = {{ap_sig_allocacmp_v7_19[7:1]}};
assign v104_fu_687_p1 = reg_445;
assign v12_fu_535_p1 = v228_load_reg_877;
assign v15_fu_621_p1 = reg_445;
assign v18_fu_541_p1 = v228_load_20_reg_882;
assign v21_fu_626_p1 = v229_0_load_reg_1007;
assign v228_address0 = zext_ln45_42_fu_530_p1;
assign v228_address1 = zext_ln38_42_fu_497_p1;
assign v228_ce0 = v228_ce0_local;
assign v228_ce1 = v228_ce1_local;
assign v229_0_address0 = v229_0_address0_local;
assign v229_0_address1 = v229_0_address1_local;
assign v229_0_ce0 = v229_0_ce0_local;
assign v229_0_ce1 = v229_0_ce1_local;
assign v229_0_d0 = bitcast_ln61_fu_697_p1;
assign v229_0_d1 = bitcast_ln55_fu_692_p1;
assign v229_0_we0 = v229_0_we0_local;
assign v229_0_we1 = v229_0_we1_local;
assign v229_1_address0 = v229_1_address0_local;
assign v229_1_address1 = v229_1_address1_local;
assign v229_1_ce0 = v229_1_ce0_local;
assign v229_1_ce1 = v229_1_ce1_local;
assign v229_1_d0 = bitcast_ln68_fu_702_p1;
assign v229_1_d1 = bitcast_ln74_fu_717_p1;
assign v229_1_we0 = v229_1_we0_local;
assign v229_1_we1 = v229_1_we1_local;
assign v229_2_address0 = v229_2_address0_local;
assign v229_2_address1 = v229_2_address1_local;
assign v229_2_ce0 = v229_2_ce0_local;
assign v229_2_ce1 = v229_2_ce1_local;
assign v229_2_d0 = bitcast_ln87_fu_726_p1;
assign v229_2_d1 = bitcast_ln81_fu_722_p1;
assign v229_2_we0 = v229_2_we0_local;
assign v229_2_we1 = v229_2_we1_local;
assign v229_3_address0 = v229_3_address0_local;
assign v229_3_address1 = v229_3_address1_local;
assign v229_3_ce0 = v229_3_ce0_local;
assign v229_3_ce1 = v229_3_ce1_local;
assign v229_3_d0 = bitcast_ln100_fu_736_p1;
assign v229_3_d1 = bitcast_ln94_fu_731_p1;
assign v229_3_we0 = v229_3_we0_local;
assign v229_3_we1 = v229_3_we1_local;
assign v229_4_address0 = v229_4_address0_local;
assign v229_4_address1 = v229_4_address1_local;
assign v229_4_ce0 = v229_4_ce0_local;
assign v229_4_ce1 = v229_4_ce1_local;
assign v229_4_d0 = bitcast_ln113_fu_746_p1;
assign v229_4_d1 = bitcast_ln107_fu_741_p1;
assign v229_4_we0 = v229_4_we0_local;
assign v229_4_we1 = v229_4_we1_local;
assign v229_5_address0 = v229_5_address0_local;
assign v229_5_address1 = v229_5_address1_local;
assign v229_5_ce0 = v229_5_ce0_local;
assign v229_5_ce1 = v229_5_ce1_local;
assign v229_5_d0 = bitcast_ln126_fu_756_p1;
assign v229_5_d1 = bitcast_ln120_fu_751_p1;
assign v229_5_we0 = v229_5_we0_local;
assign v229_5_we1 = v229_5_we1_local;
assign v229_6_address0 = v229_6_address0_local;
assign v229_6_address1 = v229_6_address1_local;
assign v229_6_ce0 = v229_6_ce0_local;
assign v229_6_ce1 = v229_6_ce1_local;
assign v229_6_d0 = bitcast_ln139_fu_766_p1;
assign v229_6_d1 = bitcast_ln133_fu_761_p1;
assign v229_6_we0 = v229_6_we0_local;
assign v229_6_we1 = v229_6_we1_local;
assign v229_7_address0 = v229_7_address0_local;
assign v229_7_address1 = v229_7_address1_local;
assign v229_7_ce0 = v229_7_ce0_local;
assign v229_7_ce1 = v229_7_ce1_local;
assign v229_7_d0 = v229_7_d0_local;
assign v229_7_d1 = v229_7_d1_local;
assign v229_7_we0 = v229_7_we0_local;
assign v229_7_we1 = v229_7_we1_local;
assign v27_fu_630_p1 = v229_0_load_24_reg_1017;
assign v32_fu_634_p1 = v229_1_load_reg_1027;
assign v38_fu_638_p1 = v229_1_load_24_reg_1037;
assign v43_fu_642_p1 = v229_2_load_reg_1042;
assign v49_fu_646_p1 = v229_2_load_26_reg_1047;
assign v54_fu_650_p1 = v229_3_load_reg_1052;
assign v60_fu_654_p1 = v229_3_load_25_reg_1057;
assign v65_fu_658_p1 = v229_4_load_reg_1062;
assign v71_fu_662_p1 = v229_4_load_25_reg_1067;
assign v76_fu_666_p1 = v229_5_load_reg_1072;
assign v82_fu_670_p1 = v229_5_load_24_reg_1077;
assign v87_fu_674_p1 = v229_6_load_reg_1082;
assign v8_fu_616_p1 = reg_441;
assign v93_fu_678_p1 = v229_6_load_24_reg_1087;
assign v98_fu_682_p1 = reg_441;
assign zext_ln34_fu_581_p1 = add_ln34_fu_576_p2;
assign zext_ln38_41_fu_487_p1 = ap_sig_allocacmp_v7_19;
assign zext_ln38_42_fu_497_p1 = add_ln38_fu_491_p2;
assign zext_ln38_fu_556_p1 = v7_19_reg_852;
assign zext_ln42_fu_611_p1 = add_ln42_fu_606_p2;
assign zext_ln45_41_fu_520_p1 = or_ln42_s_fu_512_p3;
assign zext_ln45_42_fu_530_p1 = add_ln45_fu_524_p2;
assign zext_ln45_fu_586_p1 = or_ln42_s_reg_867;
assign zext_ln49_fu_564_p1 = add_ln49_fu_559_p2;
assign zext_ln56_fu_594_p1 = add_ln56_fu_589_p2;
always @ (posedge ap_clk) begin
    or_ln42_s_reg_867[0] <= 1'b1;
end
endmodule 