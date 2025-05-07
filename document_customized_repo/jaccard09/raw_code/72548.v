module fft1D_512_fft1D_512_Pipeline_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_we0,DATA_y_15_d0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_we0,DATA_y_14_d0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_we0,DATA_y_13_d0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_we0,DATA_y_12_d0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_we0,DATA_y_11_d0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_we0,DATA_y_10_d0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_we0,DATA_y_9_d0,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_we0,DATA_y_8_d0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_we0,DATA_y_7_d0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_we0,DATA_y_6_d0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_we0,DATA_y_5_d0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_we0,DATA_y_4_d0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,work_x_address0,work_x_ce0,work_x_q0,work_x_address1,work_x_ce1,work_x_q1,work_y_address0,work_y_ce0,work_y_q0,work_y_address1,work_y_ce1,work_y_q1,grp_fu_576_p_din0,grp_fu_576_p_din1,grp_fu_576_p_opcode,grp_fu_576_p_dout0,grp_fu_576_p_ce,grp_fu_580_p_din0,grp_fu_580_p_din1,grp_fu_580_p_opcode,grp_fu_580_p_dout0,grp_fu_580_p_ce,grp_fu_584_p_din0,grp_fu_584_p_din1,grp_fu_584_p_opcode,grp_fu_584_p_dout0,grp_fu_584_p_ce,grp_fu_588_p_din0,grp_fu_588_p_din1,grp_fu_588_p_opcode,grp_fu_588_p_dout0,grp_fu_588_p_ce,grp_fu_592_p_din0,grp_fu_592_p_din1,grp_fu_592_p_opcode,grp_fu_592_p_dout0,grp_fu_592_p_ce,grp_fu_596_p_din0,grp_fu_596_p_din1,grp_fu_596_p_opcode,grp_fu_596_p_dout0,grp_fu_596_p_ce,grp_fu_600_p_din0,grp_fu_600_p_din1,grp_fu_600_p_opcode,grp_fu_600_p_dout0,grp_fu_600_p_ce,grp_fu_604_p_din0,grp_fu_604_p_din1,grp_fu_604_p_opcode,grp_fu_604_p_dout0,grp_fu_604_p_ce,grp_fu_608_p_din0,grp_fu_608_p_din1,grp_fu_608_p_opcode,grp_fu_608_p_dout0,grp_fu_608_p_ce,grp_fu_612_p_din0,grp_fu_612_p_din1,grp_fu_612_p_opcode,grp_fu_612_p_dout0,grp_fu_612_p_ce,grp_fu_616_p_din0,grp_fu_616_p_din1,grp_fu_616_p_opcode,grp_fu_616_p_dout0,grp_fu_616_p_ce,grp_fu_620_p_din0,grp_fu_620_p_din1,grp_fu_620_p_opcode,grp_fu_620_p_dout0,grp_fu_620_p_ce,grp_fu_624_p_din0,grp_fu_624_p_din1,grp_fu_624_p_opcode,grp_fu_624_p_dout0,grp_fu_624_p_ce,grp_fu_628_p_din0,grp_fu_628_p_din1,grp_fu_628_p_opcode,grp_fu_628_p_dout0,grp_fu_628_p_ce,grp_fu_632_p_din0,grp_fu_632_p_din1,grp_fu_632_p_opcode,grp_fu_632_p_dout0,grp_fu_632_p_ce,grp_fu_636_p_din0,grp_fu_636_p_din1,grp_fu_636_p_dout0,grp_fu_636_p_ce,grp_fu_640_p_din0,grp_fu_640_p_din1,grp_fu_640_p_dout0,grp_fu_640_p_ce,grp_fu_644_p_din0,grp_fu_644_p_din1,grp_fu_644_p_dout0,grp_fu_644_p_ce,grp_twiddles8_fu_648_p_din1,grp_twiddles8_fu_648_p_din2,grp_twiddles8_fu_648_p_din3,grp_twiddles8_fu_648_p_din4,grp_twiddles8_fu_648_p_din5,grp_twiddles8_fu_648_p_din6,grp_twiddles8_fu_648_p_din7,grp_twiddles8_fu_648_p_din8,grp_twiddles8_fu_648_p_din9,grp_twiddles8_fu_648_p_din10,grp_twiddles8_fu_648_p_din11,grp_twiddles8_fu_648_p_din12,grp_twiddles8_fu_648_p_din13,grp_twiddles8_fu_648_p_din14,grp_twiddles8_fu_648_p_din15,grp_twiddles8_fu_648_p_din16,grp_twiddles8_fu_648_p_dout0_0,grp_twiddles8_fu_648_p_dout0_1,grp_twiddles8_fu_648_p_dout0_2,grp_twiddles8_fu_648_p_dout0_3,grp_twiddles8_fu_648_p_dout0_4,grp_twiddles8_fu_648_p_dout0_5,grp_twiddles8_fu_648_p_dout0_6,grp_twiddles8_fu_648_p_dout0_7,grp_twiddles8_fu_648_p_dout0_8,grp_twiddles8_fu_648_p_dout0_9,grp_twiddles8_fu_648_p_dout0_10,grp_twiddles8_fu_648_p_dout0_11,grp_twiddles8_fu_648_p_dout0_12,grp_twiddles8_fu_648_p_dout0_13,grp_twiddles8_fu_648_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
output   DATA_y_15_we0;
output  [63:0] DATA_y_15_d0;
output  [4:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
output   DATA_y_14_we0;
output  [63:0] DATA_y_14_d0;
output  [4:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
output   DATA_y_13_we0;
output  [63:0] DATA_y_13_d0;
output  [4:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
output   DATA_y_12_we0;
output  [63:0] DATA_y_12_d0;
output  [4:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
output   DATA_y_11_we0;
output  [63:0] DATA_y_11_d0;
output  [4:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
output   DATA_y_10_we0;
output  [63:0] DATA_y_10_d0;
output  [4:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
output   DATA_y_9_we0;
output  [63:0] DATA_y_9_d0;
output  [4:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
output   DATA_y_8_we0;
output  [63:0] DATA_y_8_d0;
output  [4:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
output   DATA_y_7_we0;
output  [63:0] DATA_y_7_d0;
output  [4:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
output   DATA_y_6_we0;
output  [63:0] DATA_y_6_d0;
output  [4:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
output   DATA_y_5_we0;
output  [63:0] DATA_y_5_d0;
output  [4:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
output   DATA_y_4_we0;
output  [63:0] DATA_y_4_d0;
output  [4:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
output   DATA_y_3_we0;
output  [63:0] DATA_y_3_d0;
output  [4:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
output   DATA_y_2_we0;
output  [63:0] DATA_y_2_d0;
output  [4:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [4:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
output   DATA_x_7_we0;
output  [63:0] DATA_x_7_d0;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
output   DATA_x_6_we0;
output  [63:0] DATA_x_6_d0;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
output   DATA_x_5_we0;
output  [63:0] DATA_x_5_d0;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
output   DATA_x_4_we0;
output  [63:0] DATA_x_4_d0;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [5:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [8:0] work_x_address0;
output   work_x_ce0;
input  [63:0] work_x_q0;
output  [8:0] work_x_address1;
output   work_x_ce1;
input  [63:0] work_x_q1;
output  [8:0] work_y_address0;
output   work_y_ce0;
input  [63:0] work_y_q0;
output  [8:0] work_y_address1;
output   work_y_ce1;
input  [63:0] work_y_q1;
output  [63:0] grp_fu_576_p_din0;
output  [63:0] grp_fu_576_p_din1;
output  [0:0] grp_fu_576_p_opcode;
input  [63:0] grp_fu_576_p_dout0;
output   grp_fu_576_p_ce;
output  [63:0] grp_fu_580_p_din0;
output  [63:0] grp_fu_580_p_din1;
output  [0:0] grp_fu_580_p_opcode;
input  [63:0] grp_fu_580_p_dout0;
output   grp_fu_580_p_ce;
output  [63:0] grp_fu_584_p_din0;
output  [63:0] grp_fu_584_p_din1;
output  [1:0] grp_fu_584_p_opcode;
input  [63:0] grp_fu_584_p_dout0;
output   grp_fu_584_p_ce;
output  [63:0] grp_fu_588_p_din0;
output  [63:0] grp_fu_588_p_din1;
output  [0:0] grp_fu_588_p_opcode;
input  [63:0] grp_fu_588_p_dout0;
output   grp_fu_588_p_ce;
output  [63:0] grp_fu_592_p_din0;
output  [63:0] grp_fu_592_p_din1;
output  [1:0] grp_fu_592_p_opcode;
input  [63:0] grp_fu_592_p_dout0;
output   grp_fu_592_p_ce;
output  [63:0] grp_fu_596_p_din0;
output  [63:0] grp_fu_596_p_din1;
output  [0:0] grp_fu_596_p_opcode;
input  [63:0] grp_fu_596_p_dout0;
output   grp_fu_596_p_ce;
output  [63:0] grp_fu_600_p_din0;
output  [63:0] grp_fu_600_p_din1;
output  [1:0] grp_fu_600_p_opcode;
input  [63:0] grp_fu_600_p_dout0;
output   grp_fu_600_p_ce;
output  [63:0] grp_fu_604_p_din0;
output  [63:0] grp_fu_604_p_din1;
output  [1:0] grp_fu_604_p_opcode;
input  [63:0] grp_fu_604_p_dout0;
output   grp_fu_604_p_ce;
output  [63:0] grp_fu_608_p_din0;
output  [63:0] grp_fu_608_p_din1;
output  [1:0] grp_fu_608_p_opcode;
input  [63:0] grp_fu_608_p_dout0;
output   grp_fu_608_p_ce;
output  [63:0] grp_fu_612_p_din0;
output  [63:0] grp_fu_612_p_din1;
output  [1:0] grp_fu_612_p_opcode;
input  [63:0] grp_fu_612_p_dout0;
output   grp_fu_612_p_ce;
output  [63:0] grp_fu_616_p_din0;
output  [63:0] grp_fu_616_p_din1;
output  [1:0] grp_fu_616_p_opcode;
input  [63:0] grp_fu_616_p_dout0;
output   grp_fu_616_p_ce;
output  [63:0] grp_fu_620_p_din0;
output  [63:0] grp_fu_620_p_din1;
output  [1:0] grp_fu_620_p_opcode;
input  [63:0] grp_fu_620_p_dout0;
output   grp_fu_620_p_ce;
output  [63:0] grp_fu_624_p_din0;
output  [63:0] grp_fu_624_p_din1;
output  [1:0] grp_fu_624_p_opcode;
input  [63:0] grp_fu_624_p_dout0;
output   grp_fu_624_p_ce;
output  [63:0] grp_fu_628_p_din0;
output  [63:0] grp_fu_628_p_din1;
output  [1:0] grp_fu_628_p_opcode;
input  [63:0] grp_fu_628_p_dout0;
output   grp_fu_628_p_ce;
output  [63:0] grp_fu_632_p_din0;
output  [63:0] grp_fu_632_p_din1;
output  [0:0] grp_fu_632_p_opcode;
input  [63:0] grp_fu_632_p_dout0;
output   grp_fu_632_p_ce;
output  [63:0] grp_fu_636_p_din0;
output  [63:0] grp_fu_636_p_din1;
input  [63:0] grp_fu_636_p_dout0;
output   grp_fu_636_p_ce;
output  [63:0] grp_fu_640_p_din0;
output  [63:0] grp_fu_640_p_din1;
input  [63:0] grp_fu_640_p_dout0;
output   grp_fu_640_p_ce;
output  [63:0] grp_fu_644_p_din0;
output  [63:0] grp_fu_644_p_din1;
input  [63:0] grp_fu_644_p_dout0;
output   grp_fu_644_p_ce;
output  [63:0] grp_twiddles8_fu_648_p_din1;
output  [63:0] grp_twiddles8_fu_648_p_din2;
output  [63:0] grp_twiddles8_fu_648_p_din3;
output  [63:0] grp_twiddles8_fu_648_p_din4;
output  [63:0] grp_twiddles8_fu_648_p_din5;
output  [63:0] grp_twiddles8_fu_648_p_din6;
output  [63:0] grp_twiddles8_fu_648_p_din7;
output  [63:0] grp_twiddles8_fu_648_p_din8;
output  [63:0] grp_twiddles8_fu_648_p_din9;
output  [63:0] grp_twiddles8_fu_648_p_din10;
output  [63:0] grp_twiddles8_fu_648_p_din11;
output  [63:0] grp_twiddles8_fu_648_p_din12;
output  [63:0] grp_twiddles8_fu_648_p_din13;
output  [63:0] grp_twiddles8_fu_648_p_din14;
output  [5:0] grp_twiddles8_fu_648_p_din15;
output  [9:0] grp_twiddles8_fu_648_p_din16;
input  [63:0] grp_twiddles8_fu_648_p_dout0_0;
input  [63:0] grp_twiddles8_fu_648_p_dout0_1;
input  [63:0] grp_twiddles8_fu_648_p_dout0_2;
input  [63:0] grp_twiddles8_fu_648_p_dout0_3;
input  [63:0] grp_twiddles8_fu_648_p_dout0_4;
input  [63:0] grp_twiddles8_fu_648_p_dout0_5;
input  [63:0] grp_twiddles8_fu_648_p_dout0_6;
input  [63:0] grp_twiddles8_fu_648_p_dout0_7;
input  [63:0] grp_twiddles8_fu_648_p_dout0_8;
input  [63:0] grp_twiddles8_fu_648_p_dout0_9;
input  [63:0] grp_twiddles8_fu_648_p_dout0_10;
input  [63:0] grp_twiddles8_fu_648_p_dout0_11;
input  [63:0] grp_twiddles8_fu_648_p_dout0_12;
input  [63:0] grp_twiddles8_fu_648_p_dout0_13;
output   grp_twiddles8_fu_648_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
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
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_147_reg_2234;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_965;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_969;
reg   [63:0] reg_973;
reg   [63:0] reg_977;
reg   [63:0] reg_981;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_985;
reg   [63:0] reg_989;
reg   [63:0] reg_993;
reg   [63:0] reg_997;
reg   [63:0] reg_1001;
reg   [63:0] reg_1005;
reg   [63:0] reg_1010;
reg   [63:0] reg_1015;
reg   [63:0] reg_1020;
reg   [63:0] reg_1025;
reg   [63:0] reg_1030;
reg   [63:0] reg_1035;
reg   [63:0] reg_1040;
reg   [63:0] reg_1046;
reg   [63:0] reg_1052;
reg   [63:0] reg_1058;
reg   [63:0] reg_1064;
reg   [63:0] reg_1070;
reg   [63:0] reg_1076;
reg   [6:0] tid_7_reg_2222;
reg   [0:0] tmp_147_reg_2234_pp0_iter1_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter2_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter3_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter4_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter5_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter6_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter7_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter8_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter9_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter10_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter11_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter12_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter13_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter14_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter15_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter16_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter17_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter18_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter19_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter20_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter21_reg;
reg   [0:0] tmp_147_reg_2234_pp0_iter22_reg;
wire   [5:0] trunc_ln127_fu_1098_p1;
reg   [5:0] trunc_ln127_reg_2238;
reg   [5:0] trunc_ln127_reg_2238_pp0_iter1_reg;
reg   [5:0] trunc_ln127_reg_2238_pp0_iter2_reg;
reg   [5:0] trunc_ln127_reg_2238_pp0_iter3_reg;
reg   [5:0] trunc_ln127_reg_2238_pp0_iter4_reg;
reg   [5:0] trunc_ln127_reg_2238_pp0_iter5_reg;
reg   [5:0] trunc_ln127_reg_2238_pp0_iter6_reg;
reg   [5:0] trunc_ln127_reg_2238_pp0_iter7_reg;
reg   [5:0] trunc_ln127_reg_2238_pp0_iter8_reg;
wire  signed [6:0] zext_ln130_cast_fu_1102_p3;
reg  signed [6:0] zext_ln130_cast_reg_2243;
wire   [8:0] zext_ln127_1_fu_1126_p1;
reg   [8:0] zext_ln127_1_reg_2268;
wire   [7:0] zext_ln127_2_fu_1150_p1;
reg   [7:0] zext_ln127_2_reg_2294;
wire   [63:0] c0_x_66_fu_1176_p1;
wire   [63:0] c0_x_68_fu_1182_p1;
wire   [63:0] bitcast_ln134_fu_1188_p1;
wire   [63:0] bitcast_ln136_fu_1194_p1;
wire   [63:0] c0_y_66_fu_1200_p1;
wire   [63:0] c0_y_68_fu_1206_p1;
wire   [63:0] bitcast_ln143_fu_1212_p1;
wire   [63:0] bitcast_ln145_fu_1218_p1;
wire   [63:0] c0_x_70_fu_1273_p1;
wire   [5:0] tmp_s_fu_1279_p4;
reg   [5:0] tmp_s_reg_2413;
wire   [63:0] c0_x_72_fu_1304_p1;
wire   [63:0] bitcast_ln134_1_fu_1310_p1;
wire   [63:0] bitcast_ln136_1_fu_1326_p1;
wire   [63:0] c0_y_70_fu_1332_p1;
wire   [63:0] c0_y_72_fu_1338_p1;
wire   [63:0] bitcast_ln143_1_fu_1344_p1;
wire   [63:0] bitcast_ln145_1_fu_1350_p1;
wire   [63:0] zext_ln127_fu_1356_p1;
reg   [63:0] zext_ln127_reg_2480;
reg   [63:0] zext_ln127_reg_2480_pp0_iter1_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter2_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter3_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter4_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter5_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter6_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter7_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter8_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter9_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter10_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter11_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter12_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter13_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter14_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter15_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter16_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter17_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter18_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter19_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter20_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter21_reg;
reg   [63:0] zext_ln127_reg_2480_pp0_iter22_reg;
wire   [63:0] c0_x_67_fu_1361_p1;
wire   [63:0] bitcast_ln135_fu_1380_p1;
wire   [63:0] c0_y_67_fu_1386_p1;
wire   [63:0] bitcast_ln144_fu_1392_p1;
wire   [4:0] lshr_ln_fu_1398_p4;
reg   [4:0] lshr_ln_reg_2536;
reg   [4:0] lshr_ln_reg_2536_pp0_iter1_reg;
reg   [4:0] lshr_ln_reg_2536_pp0_iter2_reg;
reg   [4:0] lshr_ln_reg_2536_pp0_iter3_reg;
wire   [5:0] or_ln3_fu_1407_p3;
reg   [5:0] or_ln3_reg_2541;
reg   [5:0] or_ln3_reg_2541_pp0_iter1_reg;
reg   [5:0] or_ln3_reg_2541_pp0_iter2_reg;
reg   [5:0] or_ln3_reg_2541_pp0_iter3_reg;
reg   [5:0] or_ln3_reg_2541_pp0_iter4_reg;
reg   [5:0] or_ln3_reg_2541_pp0_iter5_reg;
reg   [5:0] or_ln3_reg_2541_pp0_iter6_reg;
reg   [5:0] or_ln3_reg_2541_pp0_iter7_reg;
wire   [63:0] zext_ln129_fu_1415_p1;
reg   [63:0] zext_ln129_reg_2546;
reg   [63:0] zext_ln129_reg_2546_pp0_iter1_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter2_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter3_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter4_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter5_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter6_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter7_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter8_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter9_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter10_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter11_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter12_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter13_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter14_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter15_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter16_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter17_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter18_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter19_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter20_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter21_reg;
reg   [63:0] zext_ln129_reg_2546_pp0_iter22_reg;
wire   [63:0] c0_x_71_fu_1421_p1;
wire   [63:0] bitcast_ln135_1_fu_1446_p1;
wire   [63:0] c0_y_71_fu_1452_p1;
wire   [63:0] bitcast_ln144_1_fu_1458_p1;
wire   [63:0] c0_x_fu_1474_p1;
wire   [63:0] bitcast_ln133_fu_1480_p1;
wire   [63:0] c0_y_fu_1486_p1;
wire   [63:0] bitcast_ln142_fu_1492_p1;
wire   [63:0] c0_x_69_fu_1498_p1;
wire   [63:0] bitcast_ln133_1_fu_1504_p1;
wire   [63:0] c0_y_69_fu_1510_p1;
wire   [63:0] bitcast_ln142_1_fu_1516_p1;
reg   [63:0] c0_x_5_reg_2650;
reg   [63:0] c0_y_5_reg_2656;
reg   [63:0] tmp_1_reg_2662;
reg   [63:0] sub3_reg_2668;
reg   [63:0] add6_reg_2674;
reg   [63:0] add7_reg_2680;
wire   [63:0] bitcast_ln148_1_fu_1551_p1;
wire   [63:0] bitcast_ln148_3_fu_1585_p1;
wire   [63:0] bitcast_ln148_9_fu_1620_p1;
wire   [63:0] bitcast_ln148_11_fu_1656_p1;
reg   [63:0] c0_x_15_reg_2708;
reg   [63:0] c0_y_15_reg_2714;
reg   [63:0] tmp_1_3_reg_2720;
reg   [63:0] sub104_1_reg_2726;
reg   [63:0] add127_1_reg_2732;
reg   [63:0] add130_1_reg_2738;
reg   [63:0] add4_reg_2744;
reg   [63:0] add5_reg_2750;
reg   [63:0] tmp_1_1_reg_2756;
reg   [63:0] tmp_1_1_reg_2756_pp0_iter2_reg;
reg   [63:0] sub5_reg_2762;
reg   [63:0] sub5_reg_2762_pp0_iter2_reg;
wire   [63:0] bitcast_ln148_21_fu_1691_p1;
wire   [63:0] bitcast_ln148_23_fu_1725_p1;
wire   [63:0] bitcast_ln148_29_fu_1760_p1;
wire   [63:0] bitcast_ln148_31_fu_1796_p1;
reg   [63:0] add111_1_reg_2790;
reg   [63:0] add114_1_reg_2796;
reg   [63:0] tmp_1_4_reg_2802;
reg   [63:0] sub120_1_reg_2808;
reg   [63:0] c0_x_4_reg_2814;
reg   [63:0] c0_y_4_reg_2820;
reg   [63:0] c0_x_8_reg_2826;
reg   [63:0] c0_x_8_reg_2826_pp0_iter2_reg;
reg   [63:0] c0_y_8_reg_2832;
reg   [63:0] c0_y_8_reg_2832_pp0_iter2_reg;
reg   [63:0] c0_x_21_reg_2838;
reg   [63:0] c0_y_21_reg_2844;
reg   [63:0] c0_x_13_reg_2850;
reg   [63:0] c0_x_13_reg_2850_pp0_iter3_reg;
reg   [63:0] c0_y_13_reg_2856;
reg   [63:0] c0_y_13_reg_2856_pp0_iter3_reg;
reg   [63:0] sub8_reg_2862;
reg   [63:0] add8_reg_2867;
reg   [63:0] sub1_reg_2872;
reg   [63:0] add1_reg_2877;
reg   [63:0] tmp_reg_2882;
reg   [63:0] tmp_reg_2882_pp0_iter3_reg;
reg   [63:0] sub2_reg_2888;
reg   [63:0] sub2_reg_2888_pp0_iter3_reg;
reg   [63:0] add2_reg_2894;
reg   [63:0] add3_reg_2900;
reg   [63:0] mul6_reg_2906;
reg   [63:0] mul9_reg_2911;
reg   [63:0] sub143_1_reg_2916;
reg   [63:0] add149_1_reg_2921;
reg   [63:0] sub169_1_reg_2926;
reg   [63:0] add175_1_reg_2931;
reg   [63:0] tmp_3_reg_2936;
reg   [63:0] tmp_3_reg_2936_pp0_iter3_reg;
reg   [63:0] sub208_1_reg_2942;
reg   [63:0] sub208_1_reg_2942_pp0_iter3_reg;
reg   [63:0] mul154_1_reg_2948;
reg   [63:0] mul161_1_reg_2953;
reg   [63:0] add199_1_reg_2958;
reg   [63:0] add202_1_reg_2964;
wire   [63:0] bitcast_ln148_5_fu_1831_p1;
wire   [63:0] bitcast_ln148_7_fu_1865_p1;
wire   [63:0] bitcast_ln148_25_fu_1899_p1;
wire   [63:0] bitcast_ln148_27_fu_1933_p1;
reg   [63:0] c0_x_6_reg_2990;
reg   [63:0] c0_y_6_reg_2996;
reg   [63:0] c0_x_7_reg_3002;
reg   [63:0] c0_x_7_reg_3002_pp0_iter3_reg;
reg   [63:0] c0_y_7_reg_3008;
reg   [63:0] c0_y_7_reg_3008_pp0_iter3_reg;
reg   [63:0] c0_x_18_reg_3014;
reg   [63:0] c0_y_18_reg_3020;
reg   [63:0] c0_x_19_reg_3026;
reg   [63:0] c0_x_19_reg_3026_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_3032;
reg   [63:0] c0_y_19_reg_3032_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_3032_pp0_iter5_reg;
reg   [63:0] c0_x_9_reg_3038;
reg   [63:0] c0_y_9_reg_3044;
reg   [63:0] mul3_reg_3050;
reg   [63:0] mul5_reg_3056;
reg   [63:0] mul_reg_3062;
reg   [63:0] mul1_reg_3067;
reg   [63:0] c0_x_20_reg_3072;
reg   [63:0] c0_y_20_reg_3078;
reg   [63:0] mul170_1_reg_3084;
wire   [63:0] bitcast_ln148_13_fu_1967_p1;
wire   [63:0] bitcast_ln148_15_fu_2001_p1;
reg   [63:0] mul176_1_reg_3100;
reg   [63:0] sub9_reg_3106;
reg   [63:0] add9_reg_3112;
reg   [63:0] sub157_1_reg_3118;
reg   [63:0] add162_1_reg_3124;
reg   [63:0] mul212_1_reg_3130;
wire   [63:0] bitcast_ln148_33_fu_2035_p1;
reg   [63:0] mul219_1_reg_3140;
reg   [63:0] data_x_1_reg_3145;
reg   [63:0] data_x_1_reg_3145_pp0_iter4_reg;
reg   [63:0] data_x_1_reg_3145_pp0_iter5_reg;
reg   [63:0] data_x_1_reg_3145_pp0_iter6_reg;
reg   [63:0] data_x_1_reg_3145_pp0_iter7_reg;
reg   [63:0] data_y_1_reg_3150;
reg   [63:0] data_y_1_reg_3150_pp0_iter4_reg;
reg   [63:0] data_y_1_reg_3150_pp0_iter5_reg;
reg   [63:0] data_y_1_reg_3150_pp0_iter6_reg;
reg   [63:0] data_y_1_reg_3150_pp0_iter7_reg;
wire   [63:0] bitcast_ln148_35_fu_2069_p1;
reg   [63:0] data_x_1_2_reg_3160;
reg   [63:0] data_x_1_2_reg_3160_pp0_iter5_reg;
reg   [63:0] data_x_1_2_reg_3160_pp0_iter6_reg;
reg   [63:0] data_x_1_2_reg_3160_pp0_iter7_reg;
reg   [63:0] data_x_1_2_reg_3160_pp0_iter8_reg;
reg   [63:0] data_y_1_2_reg_3165;
reg   [63:0] data_y_1_2_reg_3165_pp0_iter5_reg;
reg   [63:0] data_y_1_2_reg_3165_pp0_iter6_reg;
reg   [63:0] data_y_1_2_reg_3165_pp0_iter7_reg;
reg   [63:0] data_y_1_2_reg_3165_pp0_iter8_reg;
reg   [63:0] data_x_0_reg_3170;
reg   [63:0] data_y_0_reg_3175;
reg   [63:0] add_reg_3180;
reg   [63:0] tmp_2_reg_3186;
reg   [63:0] tmp_2_reg_3186_pp0_iter5_reg;
reg   [63:0] data_x_0_1_reg_3192;
reg   [63:0] data_y_0_1_reg_3197;
reg   [63:0] sub10_reg_3202;
wire   [63:0] zext_ln154_fu_2074_p1;
reg   [63:0] zext_ln154_reg_3208;
reg   [63:0] zext_ln154_reg_3208_pp0_iter5_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter6_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter7_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter8_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter9_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter10_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter11_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter12_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter13_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter14_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter15_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter16_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter17_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter18_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter19_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter20_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter21_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter22_reg;
reg   [63:0] zext_ln154_reg_3208_pp0_iter23_reg;
reg   [63:0] sub4_reg_3226;
reg   [63:0] sub6_reg_3232;
reg   [63:0] add10_reg_3238;
reg   [63:0] add278_1_reg_3244;
reg   [63:0] tmp_4_reg_3250;
reg   [63:0] tmp_4_reg_3250_pp0_iter5_reg;
reg   [63:0] sub287_1_reg_3256;
reg   [63:0] sub287_1_reg_3256_pp0_iter5_reg;
reg   [63:0] c0_x_11_reg_3262;
reg   [63:0] c0_y_11_reg_3268;
reg   [63:0] c0_x_10_reg_3274;
reg   [63:0] c0_x_10_reg_3274_pp0_iter5_reg;
reg   [63:0] c0_y_10_reg_3280;
reg   [63:0] c0_y_10_reg_3280_pp0_iter5_reg;
reg   [63:0] c0_y_10_reg_3280_pp0_iter6_reg;
reg   [63:0] sub215_1_reg_3286;
reg   [63:0] sub220_1_reg_3292;
reg   [63:0] c0_x_23_reg_3298;
reg   [63:0] c0_y_23_reg_3304;
reg   [63:0] c0_x_22_reg_3310;
reg   [63:0] c0_x_22_reg_3310_pp0_iter5_reg;
reg   [63:0] c0_x_22_reg_3310_pp0_iter6_reg;
reg   [63:0] c0_y_22_reg_3316;
reg   [63:0] c0_y_22_reg_3316_pp0_iter5_reg;
reg   [63:0] c0_y_22_reg_3316_pp0_iter6_reg;
reg   [63:0] add281_1_reg_3322;
reg   [63:0] mul2_reg_3328;
wire   [63:0] bitcast_ln148_17_fu_2108_p1;
reg   [63:0] data_x_2_reg_3338;
reg   [63:0] data_x_2_reg_3338_pp0_iter6_reg;
reg   [63:0] data_x_2_reg_3338_pp0_iter7_reg;
reg   [63:0] data_y_2_reg_3343;
reg   [63:0] data_y_2_reg_3343_pp0_iter6_reg;
reg   [63:0] data_y_2_reg_3343_pp0_iter7_reg;
reg   [63:0] data_x_3_reg_3348;
reg   [63:0] data_x_3_reg_3348_pp0_iter6_reg;
reg   [63:0] data_x_3_reg_3348_pp0_iter7_reg;
reg   [63:0] data_y_3_reg_3353;
reg   [63:0] data_y_3_reg_3353_pp0_iter6_reg;
reg   [63:0] data_y_3_reg_3353_pp0_iter7_reg;
reg   [63:0] mul4_reg_3358;
reg   [63:0] data_x_4_reg_3363;
reg   [63:0] data_x_4_reg_3363_pp0_iter6_reg;
reg   [63:0] data_x_4_reg_3363_pp0_iter7_reg;
reg   [63:0] data_y_4_reg_3368;
reg   [63:0] data_y_4_reg_3368_pp0_iter6_reg;
reg   [63:0] data_y_4_reg_3368_pp0_iter7_reg;
reg   [63:0] data_x_5_reg_3373;
reg   [63:0] data_x_5_reg_3373_pp0_iter6_reg;
reg   [63:0] data_x_5_reg_3373_pp0_iter7_reg;
reg   [63:0] mul291_1_reg_3378;
wire   [63:0] bitcast_ln148_19_fu_2142_p1;
reg   [63:0] data_y_5_reg_3388;
reg   [63:0] data_y_5_reg_3388_pp0_iter6_reg;
reg   [63:0] data_y_5_reg_3388_pp0_iter7_reg;
reg   [63:0] data_x_2_2_reg_3393;
reg   [63:0] data_x_2_2_reg_3393_pp0_iter6_reg;
reg   [63:0] data_x_2_2_reg_3393_pp0_iter7_reg;
reg   [63:0] data_y_2_2_reg_3398;
reg   [63:0] data_y_2_2_reg_3398_pp0_iter6_reg;
reg   [63:0] data_y_2_2_reg_3398_pp0_iter7_reg;
reg   [63:0] data_x_3_2_reg_3403;
reg   [63:0] data_x_3_2_reg_3403_pp0_iter6_reg;
reg   [63:0] data_x_3_2_reg_3403_pp0_iter7_reg;
wire   [63:0] bitcast_ln148_37_fu_2176_p1;
reg   [63:0] mul298_1_reg_3413;
reg   [63:0] sub11_reg_3418;
reg   [63:0] data_y_3_2_reg_3424;
reg   [63:0] data_y_3_2_reg_3424_pp0_iter7_reg;
reg   [63:0] data_y_3_2_reg_3424_pp0_iter8_reg;
wire   [63:0] bitcast_ln148_39_fu_2210_p1;
reg   [63:0] data_x_4_2_reg_3434;
reg   [63:0] data_x_4_2_reg_3434_pp0_iter7_reg;
reg   [63:0] data_x_4_2_reg_3434_pp0_iter8_reg;
reg   [63:0] data_y_4_2_reg_3439;
reg   [63:0] data_y_4_2_reg_3439_pp0_iter7_reg;
reg   [63:0] data_y_4_2_reg_3439_pp0_iter8_reg;
reg   [63:0] data_x_5_2_reg_3444;
reg   [63:0] data_x_5_2_reg_3444_pp0_iter7_reg;
reg   [63:0] data_x_5_2_reg_3444_pp0_iter8_reg;
reg   [63:0] data_y_5_2_reg_3449;
reg   [63:0] data_y_5_2_reg_3449_pp0_iter7_reg;
reg   [63:0] data_y_5_2_reg_3449_pp0_iter8_reg;
reg   [63:0] sub12_reg_3454;
reg   [63:0] sub294_1_reg_3460;
reg   [63:0] sub299_1_reg_3466;
reg   [63:0] data_x_6_reg_3472;
reg   [63:0] data_x_6_reg_3472_pp0_iter8_reg;
reg   [63:0] data_x_7_reg_3477;
reg   [63:0] data_x_7_reg_3477_pp0_iter8_reg;
reg   [63:0] data_y_6_reg_3482;
reg   [63:0] data_y_7_reg_3487;
reg   [63:0] data_x_6_2_reg_3492;
reg   [63:0] data_y_6_2_reg_3497;
reg   [63:0] data_x_7_2_reg_3502;
reg   [63:0] data_y_7_2_reg_3507;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage5_subdone;
reg   [63:0] grp_twiddles8_fu_798_a_x_1_read;
reg   [63:0] grp_twiddles8_fu_798_a_x_2_read;
reg   [63:0] grp_twiddles8_fu_798_a_x_3_read;
reg   [63:0] grp_twiddles8_fu_798_a_x_4_read;
reg   [63:0] grp_twiddles8_fu_798_a_x_5_read;
reg   [63:0] grp_twiddles8_fu_798_a_x_6_read;
reg   [63:0] grp_twiddles8_fu_798_a_x_7_read;
reg   [63:0] grp_twiddles8_fu_798_a_y_1_read;
reg   [63:0] grp_twiddles8_fu_798_a_y_2_read;
reg   [63:0] grp_twiddles8_fu_798_a_y_3_read;
reg   [63:0] grp_twiddles8_fu_798_a_y_4_read;
reg   [63:0] grp_twiddles8_fu_798_a_y_5_read;
reg   [63:0] grp_twiddles8_fu_798_a_y_6_read;
reg   [63:0] grp_twiddles8_fu_798_a_y_7_read;
reg   [5:0] grp_twiddles8_fu_798_i;
reg    grp_twiddles8_fu_798_ap_ce;
wire    ap_block_pp0_stage2_11001_ignoreCallOp1566;
wire    ap_block_pp0_stage3_11001_ignoreCallOp1567;
wire    ap_block_pp0_stage4_11001_ignoreCallOp1569;
wire    ap_block_pp0_stage5_11001_ignoreCallOp1571;
wire    ap_block_pp0_stage6_11001_ignoreCallOp1573;
wire    ap_block_pp0_stage7_11001_ignoreCallOp1575;
wire    ap_block_pp0_stage1_11001_ignoreCallOp1579;
wire    ap_block_pp0_stage0_11001_ignoreCallOp1577;
wire    ap_block_pp0_stage2_ignoreCallOp1566;
wire    ap_block_pp0_stage3_ignoreCallOp1568;
wire   [63:0] zext_ln130_fu_1110_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln132_fu_1120_p1;
wire   [63:0] zext_ln134_fu_1135_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln136_fu_1144_p1;
wire   [63:0] zext_ln130_1_fu_1159_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln132_1_fu_1170_p1;
wire   [63:0] zext_ln134_1_fu_1229_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln136_1_fu_1244_p1;
wire   [63:0] zext_ln131_fu_1257_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln135_fu_1267_p1;
wire   [63:0] zext_ln131_1_fu_1298_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln135_1_fu_1320_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln133_fu_1374_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln133_2_fu_1440_p1;
reg   [6:0] tid_fu_140;
wire   [6:0] add_ln127_fu_1464_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_7;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
reg    DATA_x_we1_local;
reg    DATA_x_ce1_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_y_we0_local;
reg    DATA_y_ce0_local;
reg    DATA_y_8_we0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg   [5:0] DATA_x_1_address0_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg   [5:0] DATA_x_2_address0_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
reg   [5:0] DATA_x_3_address0_local;
reg    DATA_x_4_we0_local;
reg    DATA_x_4_ce0_local;
reg   [5:0] DATA_x_4_address0_local;
reg    DATA_x_5_we0_local;
reg    DATA_x_5_ce0_local;
reg   [5:0] DATA_x_5_address0_local;
reg    DATA_x_6_we0_local;
reg    DATA_x_6_ce0_local;
reg   [5:0] DATA_x_6_address0_local;
reg    DATA_x_7_we0_local;
reg    DATA_x_7_ce0_local;
reg   [5:0] DATA_x_7_address0_local;
reg    DATA_y_1_we0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_we0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_we0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_4_we0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_we0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_6_we0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_we0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_y_9_we0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_10_we0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_11_we0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_12_we0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_13_we0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_14_we0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_15_we0_local;
reg    DATA_y_15_ce0_local;
reg   [63:0] grp_fu_831_p0;
reg   [63:0] grp_fu_831_p1;
reg   [63:0] grp_fu_835_p0;
reg   [63:0] grp_fu_835_p1;
reg   [63:0] grp_fu_839_p0;
reg   [63:0] grp_fu_839_p1;
reg   [63:0] grp_fu_843_p0;
reg   [63:0] grp_fu_843_p1;
reg   [63:0] grp_fu_847_p0;
reg   [63:0] grp_fu_847_p1;
reg   [63:0] grp_fu_851_p0;
reg   [63:0] grp_fu_851_p1;
reg   [63:0] grp_fu_855_p0;
reg   [63:0] grp_fu_855_p1;
reg   [63:0] grp_fu_859_p0;
reg   [63:0] grp_fu_859_p1;
reg   [63:0] grp_fu_863_p0;
reg   [63:0] grp_fu_863_p1;
reg   [63:0] grp_fu_867_p0;
reg   [63:0] grp_fu_867_p1;
reg   [63:0] grp_fu_871_p0;
reg   [63:0] grp_fu_871_p1;
reg   [63:0] grp_fu_875_p0;
reg   [63:0] grp_fu_875_p1;
reg   [63:0] grp_fu_879_p0;
reg   [63:0] grp_fu_879_p1;
reg   [63:0] grp_fu_883_p0;
reg   [63:0] grp_fu_883_p1;
reg   [63:0] grp_fu_887_p0;
reg   [63:0] grp_fu_887_p1;
reg   [63:0] grp_fu_891_p0;
reg   [63:0] grp_fu_891_p1;
reg   [63:0] grp_fu_896_p0;
reg   [63:0] grp_fu_896_p1;
reg   [63:0] grp_fu_903_p0;
reg   [63:0] grp_fu_903_p1;
wire  signed [7:0] sext_ln132_fu_1116_p1;
wire   [8:0] add_ln134_fu_1129_p2;
wire  signed [8:0] sext_ln136_fu_1141_p1;
wire   [7:0] add_ln130_fu_1153_p2;
wire   [8:0] add_ln132_fu_1165_p2;
wire   [8:0] add_ln134_1_fu_1224_p2;
wire   [6:0] add_ln136_fu_1235_p2;
wire  signed [8:0] sext_ln136_1_fu_1240_p1;
wire  signed [7:0] zext_ln131_cast_fu_1250_p3;
wire  signed [8:0] sext_ln135_fu_1263_p1;
wire  signed [7:0] zext_ln131_1_cast_fu_1288_p4;
wire  signed [8:0] sext_ln135_1_fu_1316_p1;
wire   [8:0] zext_ln133_cast_fu_1367_p3;
wire   [6:0] zext_ln133_1_fu_1427_p1;
wire   [8:0] zext_ln133_1_cast_fu_1430_p4;
wire   [63:0] bitcast_ln148_fu_1522_p1;
wire   [0:0] bit_sel2_fu_1525_p3;
wire   [0:0] xor_ln148_19_fu_1533_p2;
wire   [62:0] trunc_ln148_fu_1539_p1;
wire   [63:0] xor_ln1_fu_1543_p3;
wire   [63:0] bitcast_ln148_2_fu_1556_p1;
wire   [0:0] bit_sel3_fu_1559_p3;
wire   [0:0] xor_ln148_fu_1567_p2;
wire   [62:0] trunc_ln148_1_fu_1573_p1;
wire   [63:0] xor_ln148_1_fu_1577_p3;
wire   [63:0] bitcast_ln148_8_fu_1590_p1;
wire   [0:0] bit_sel8_fu_1594_p3;
wire   [0:0] xor_ln148_22_fu_1602_p2;
wire   [62:0] trunc_ln148_4_fu_1608_p1;
wire   [63:0] xor_ln148_4_fu_1612_p3;
wire   [63:0] bitcast_ln148_10_fu_1626_p1;
wire   [0:0] bit_sel9_fu_1630_p3;
wire   [0:0] xor_ln148_23_fu_1638_p2;
wire   [62:0] trunc_ln148_5_fu_1644_p1;
wire   [63:0] xor_ln148_5_fu_1648_p3;
wire   [63:0] bitcast_ln148_20_fu_1662_p1;
wire   [0:0] bit_sel17_fu_1665_p3;
wire   [0:0] xor_ln148_28_fu_1673_p2;
wire   [62:0] trunc_ln148_10_fu_1679_p1;
wire   [63:0] xor_ln148_s_fu_1683_p3;
wire   [63:0] bitcast_ln148_22_fu_1696_p1;
wire   [0:0] bit_sel18_fu_1699_p3;
wire   [0:0] xor_ln148_29_fu_1707_p2;
wire   [62:0] trunc_ln148_11_fu_1713_p1;
wire   [63:0] xor_ln148_10_fu_1717_p3;
wire   [63:0] bitcast_ln148_28_fu_1730_p1;
wire   [0:0] bit_sel13_fu_1734_p3;
wire   [0:0] xor_ln148_32_fu_1742_p2;
wire   [62:0] trunc_ln148_14_fu_1748_p1;
wire   [63:0] xor_ln148_13_fu_1752_p3;
wire   [63:0] bitcast_ln148_30_fu_1766_p1;
wire   [0:0] bit_sel10_fu_1770_p3;
wire   [0:0] xor_ln148_33_fu_1778_p2;
wire   [62:0] trunc_ln148_15_fu_1784_p1;
wire   [63:0] xor_ln148_14_fu_1788_p3;
wire   [63:0] bitcast_ln148_4_fu_1802_p1;
wire   [0:0] bit_sel5_fu_1805_p3;
wire   [0:0] xor_ln148_20_fu_1813_p2;
wire   [62:0] trunc_ln148_2_fu_1819_p1;
wire   [63:0] xor_ln148_2_fu_1823_p3;
wire   [63:0] bitcast_ln148_6_fu_1836_p1;
wire   [0:0] bit_sel6_fu_1839_p3;
wire   [0:0] xor_ln148_21_fu_1847_p2;
wire   [62:0] trunc_ln148_3_fu_1853_p1;
wire   [63:0] xor_ln148_3_fu_1857_p3;
wire   [63:0] bitcast_ln148_24_fu_1870_p1;
wire   [0:0] bit_sel19_fu_1873_p3;
wire   [0:0] xor_ln148_30_fu_1881_p2;
wire   [62:0] trunc_ln148_12_fu_1887_p1;
wire   [63:0] xor_ln148_11_fu_1891_p3;
wire   [63:0] bitcast_ln148_26_fu_1904_p1;
wire   [0:0] bit_sel16_fu_1907_p3;
wire   [0:0] xor_ln148_31_fu_1915_p2;
wire   [62:0] trunc_ln148_13_fu_1921_p1;
wire   [63:0] xor_ln148_12_fu_1925_p3;
wire   [63:0] bitcast_ln148_12_fu_1938_p1;
wire   [0:0] bit_sel11_fu_1941_p3;
wire   [0:0] xor_ln148_24_fu_1949_p2;
wire   [62:0] trunc_ln148_6_fu_1955_p1;
wire   [63:0] xor_ln148_6_fu_1959_p3;
wire   [63:0] bitcast_ln148_14_fu_1972_p1;
wire   [0:0] bit_sel12_fu_1975_p3;
wire   [0:0] xor_ln148_25_fu_1983_p2;
wire   [62:0] trunc_ln148_7_fu_1989_p1;
wire   [63:0] xor_ln148_7_fu_1993_p3;
wire   [63:0] bitcast_ln148_32_fu_2006_p1;
wire   [0:0] bit_sel7_fu_2009_p3;
wire   [0:0] xor_ln148_34_fu_2017_p2;
wire   [62:0] trunc_ln148_16_fu_2023_p1;
wire   [63:0] xor_ln148_15_fu_2027_p3;
wire   [63:0] bitcast_ln148_34_fu_2040_p1;
wire   [0:0] bit_sel4_fu_2043_p3;
wire   [0:0] xor_ln148_35_fu_2051_p2;
wire   [62:0] trunc_ln148_17_fu_2057_p1;
wire   [63:0] xor_ln148_16_fu_2061_p3;
wire   [63:0] bitcast_ln148_16_fu_2079_p1;
wire   [0:0] bit_sel14_fu_2082_p3;
wire   [0:0] xor_ln148_26_fu_2090_p2;
wire   [62:0] trunc_ln148_8_fu_2096_p1;
wire   [63:0] xor_ln148_8_fu_2100_p3;
wire   [63:0] bitcast_ln148_18_fu_2113_p1;
wire   [0:0] bit_sel15_fu_2116_p3;
wire   [0:0] xor_ln148_27_fu_2124_p2;
wire   [62:0] trunc_ln148_9_fu_2130_p1;
wire   [63:0] xor_ln148_9_fu_2134_p3;
wire   [63:0] bitcast_ln148_36_fu_2147_p1;
wire   [0:0] bit_sel1_fu_2150_p3;
wire   [0:0] xor_ln148_36_fu_2158_p2;
wire   [62:0] trunc_ln148_18_fu_2164_p1;
wire   [63:0] xor_ln148_17_fu_2168_p3;
wire   [63:0] bitcast_ln148_38_fu_2181_p1;
wire   [0:0] bit_sel_fu_2184_p3;
wire   [0:0] xor_ln148_37_fu_2192_p2;
wire   [62:0] trunc_ln148_19_fu_2198_p1;
wire   [63:0] xor_ln148_18_fu_2202_p3;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage2_00001;
reg   [1:0] grp_fu_839_opcode;
reg   [1:0] grp_fu_847_opcode;
reg   [1:0] grp_fu_855_opcode;
reg   [1:0] grp_fu_859_opcode;
reg   [1:0] grp_fu_863_opcode;
reg   [1:0] grp_fu_867_opcode;
reg   [1:0] grp_fu_871_opcode;
reg   [1:0] grp_fu_875_opcode;
reg   [1:0] grp_fu_879_opcode;
reg   [1:0] grp_fu_883_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter22_stage5;
reg    ap_idle_pp0_0to21;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to23;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
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
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_140 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter22_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
            ap_enable_reg_pp0_iter23 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tid_fu_140 <= 7'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_147_reg_2234 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        tid_fu_140 <= add_ln127_fu_1464_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add10_reg_3238 <= grp_fu_592_p_dout0;
        add278_1_reg_3244 <= grp_fu_596_p_dout0;
        sub4_reg_3226 <= grp_fu_584_p_dout0;
        sub6_reg_3232 <= grp_fu_588_p_dout0;
        tmp_4_reg_3250 <= grp_fu_600_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        add111_1_reg_2790 <= grp_fu_576_p_dout0;
        add114_1_reg_2796 <= grp_fu_580_p_dout0;
        sub120_1_reg_2808 <= grp_fu_588_p_dout0;
        tmp_1_4_reg_2802 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        add127_1_reg_2732 <= grp_fu_592_p_dout0;
        add130_1_reg_2738 <= grp_fu_596_p_dout0;
        c0_x_15_reg_2708 <= grp_fu_576_p_dout0;
        c0_y_15_reg_2714 <= grp_fu_580_p_dout0;
        sub104_1_reg_2726 <= grp_fu_588_p_dout0;
        tmp_1_3_reg_2720 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        add149_1_reg_2921 <= grp_fu_612_p_dout0;
        add175_1_reg_2931 <= grp_fu_620_p_dout0;
        mul6_reg_2906 <= grp_fu_636_p_dout0;
        mul9_reg_2911 <= grp_fu_640_p_dout0;
        sub143_1_reg_2916 <= grp_fu_608_p_dout0;
        sub169_1_reg_2926 <= grp_fu_616_p_dout0;
        sub208_1_reg_2942 <= grp_fu_628_p_dout0;
        tmp_3_reg_2936 <= grp_fu_624_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add162_1_reg_3124 <= grp_fu_612_p_dout0;
        add9_reg_3112 <= grp_fu_604_p_dout0;
        mul212_1_reg_3130 <= grp_fu_644_p_dout0;
        sub157_1_reg_3118 <= grp_fu_608_p_dout0;
        sub9_reg_3106 <= grp_fu_600_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add199_1_reg_2958 <= grp_fu_592_p_dout0;
        add202_1_reg_2964 <= grp_fu_596_p_dout0;
        mul154_1_reg_2948 <= grp_fu_636_p_dout0;
        mul161_1_reg_2953 <= grp_fu_640_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add1_reg_2877 <= grp_fu_620_p_dout0;
        add8_reg_2867 <= grp_fu_612_p_dout0;
        sub1_reg_2872 <= grp_fu_616_p_dout0;
        sub2_reg_2888 <= grp_fu_628_p_dout0;
        sub8_reg_2862 <= grp_fu_608_p_dout0;
        tmp_reg_2882 <= grp_fu_624_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        add281_1_reg_3322 <= grp_fu_612_p_dout0;
        c0_x_22_reg_3310 <= grp_fu_604_p_dout0;
        c0_x_23_reg_3298 <= grp_fu_596_p_dout0;
        c0_y_22_reg_3316 <= grp_fu_608_p_dout0;
        c0_y_23_reg_3304 <= grp_fu_600_p_dout0;
        sub220_1_reg_3292 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add2_reg_2894 <= grp_fu_576_p_dout0;
        add3_reg_2900 <= grp_fu_580_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add4_reg_2744 <= grp_fu_576_p_dout0;
        add5_reg_2750 <= grp_fu_580_p_dout0;
        sub5_reg_2762 <= grp_fu_588_p_dout0;
        tmp_1_1_reg_2756 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add6_reg_2674 <= grp_fu_592_p_dout0;
        add7_reg_2680 <= grp_fu_596_p_dout0;
        c0_x_5_reg_2650 <= grp_fu_576_p_dout0;
        c0_y_5_reg_2656 <= grp_fu_580_p_dout0;
        sub3_reg_2668 <= grp_fu_588_p_dout0;
        tmp_1_reg_2662 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add_reg_3180 <= grp_fu_584_p_dout0;
        data_x_0_1_reg_3192 <= grp_fu_592_p_dout0;
        data_x_0_reg_3170 <= grp_fu_576_p_dout0;
        data_y_0_1_reg_3197 <= grp_fu_596_p_dout0;
        data_y_0_reg_3175 <= grp_fu_580_p_dout0;
        tmp_2_reg_3186 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        c0_x_10_reg_3274 <= grp_fu_624_p_dout0;
        c0_x_11_reg_3262 <= grp_fu_616_p_dout0;
        c0_y_10_reg_3280 <= grp_fu_628_p_dout0;
        c0_y_11_reg_3268 <= grp_fu_620_p_dout0;
        sub215_1_reg_3286 <= grp_fu_632_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        c0_x_10_reg_3274_pp0_iter5_reg <= c0_x_10_reg_3274;
        c0_y_10_reg_3280_pp0_iter5_reg <= c0_y_10_reg_3280;
        c0_y_10_reg_3280_pp0_iter6_reg <= c0_y_10_reg_3280_pp0_iter5_reg;
        sub5_reg_2762_pp0_iter2_reg <= sub5_reg_2762;
        tmp_1_1_reg_2756_pp0_iter2_reg <= tmp_1_1_reg_2756;
        tmp_s_reg_2413 <= {{tid_7_reg_2222[6:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_13_reg_2850 <= grp_fu_584_p_dout0;
        c0_x_21_reg_2838 <= grp_fu_576_p_dout0;
        c0_y_13_reg_2856 <= grp_fu_588_p_dout0;
        c0_y_21_reg_2844 <= grp_fu_580_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_13_reg_2850_pp0_iter3_reg <= c0_x_13_reg_2850;
        c0_x_19_reg_3026_pp0_iter4_reg <= c0_x_19_reg_3026;
        c0_y_13_reg_2856_pp0_iter3_reg <= c0_y_13_reg_2856;
        c0_y_19_reg_3032_pp0_iter4_reg <= c0_y_19_reg_3032;
        c0_y_19_reg_3032_pp0_iter5_reg <= c0_y_19_reg_3032_pp0_iter4_reg;
        data_x_1_2_reg_3160_pp0_iter5_reg <= data_x_1_2_reg_3160;
        data_x_1_2_reg_3160_pp0_iter6_reg <= data_x_1_2_reg_3160_pp0_iter5_reg;
        data_x_1_2_reg_3160_pp0_iter7_reg <= data_x_1_2_reg_3160_pp0_iter6_reg;
        data_x_1_2_reg_3160_pp0_iter8_reg <= data_x_1_2_reg_3160_pp0_iter7_reg;
        data_x_4_2_reg_3434_pp0_iter7_reg <= data_x_4_2_reg_3434;
        data_x_4_2_reg_3434_pp0_iter8_reg <= data_x_4_2_reg_3434_pp0_iter7_reg;
        data_x_5_2_reg_3444_pp0_iter7_reg <= data_x_5_2_reg_3444;
        data_x_5_2_reg_3444_pp0_iter8_reg <= data_x_5_2_reg_3444_pp0_iter7_reg;
        data_y_1_2_reg_3165_pp0_iter5_reg <= data_y_1_2_reg_3165;
        data_y_1_2_reg_3165_pp0_iter6_reg <= data_y_1_2_reg_3165_pp0_iter5_reg;
        data_y_1_2_reg_3165_pp0_iter7_reg <= data_y_1_2_reg_3165_pp0_iter6_reg;
        data_y_1_2_reg_3165_pp0_iter8_reg <= data_y_1_2_reg_3165_pp0_iter7_reg;
        data_y_3_2_reg_3424_pp0_iter7_reg <= data_y_3_2_reg_3424;
        data_y_3_2_reg_3424_pp0_iter8_reg <= data_y_3_2_reg_3424_pp0_iter7_reg;
        data_y_4_2_reg_3439_pp0_iter7_reg <= data_y_4_2_reg_3439;
        data_y_4_2_reg_3439_pp0_iter8_reg <= data_y_4_2_reg_3439_pp0_iter7_reg;
        tid_7_reg_2222 <= ap_sig_allocacmp_tid_7;
        tmp_147_reg_2234 <= ap_sig_allocacmp_tid_7[32'd6];
        tmp_147_reg_2234_pp0_iter10_reg <= tmp_147_reg_2234_pp0_iter9_reg;
        tmp_147_reg_2234_pp0_iter11_reg <= tmp_147_reg_2234_pp0_iter10_reg;
        tmp_147_reg_2234_pp0_iter12_reg <= tmp_147_reg_2234_pp0_iter11_reg;
        tmp_147_reg_2234_pp0_iter13_reg <= tmp_147_reg_2234_pp0_iter12_reg;
        tmp_147_reg_2234_pp0_iter14_reg <= tmp_147_reg_2234_pp0_iter13_reg;
        tmp_147_reg_2234_pp0_iter15_reg <= tmp_147_reg_2234_pp0_iter14_reg;
        tmp_147_reg_2234_pp0_iter16_reg <= tmp_147_reg_2234_pp0_iter15_reg;
        tmp_147_reg_2234_pp0_iter17_reg <= tmp_147_reg_2234_pp0_iter16_reg;
        tmp_147_reg_2234_pp0_iter18_reg <= tmp_147_reg_2234_pp0_iter17_reg;
        tmp_147_reg_2234_pp0_iter19_reg <= tmp_147_reg_2234_pp0_iter18_reg;
        tmp_147_reg_2234_pp0_iter1_reg <= tmp_147_reg_2234;
        tmp_147_reg_2234_pp0_iter20_reg <= tmp_147_reg_2234_pp0_iter19_reg;
        tmp_147_reg_2234_pp0_iter21_reg <= tmp_147_reg_2234_pp0_iter20_reg;
        tmp_147_reg_2234_pp0_iter22_reg <= tmp_147_reg_2234_pp0_iter21_reg;
        tmp_147_reg_2234_pp0_iter2_reg <= tmp_147_reg_2234_pp0_iter1_reg;
        tmp_147_reg_2234_pp0_iter3_reg <= tmp_147_reg_2234_pp0_iter2_reg;
        tmp_147_reg_2234_pp0_iter4_reg <= tmp_147_reg_2234_pp0_iter3_reg;
        tmp_147_reg_2234_pp0_iter5_reg <= tmp_147_reg_2234_pp0_iter4_reg;
        tmp_147_reg_2234_pp0_iter6_reg <= tmp_147_reg_2234_pp0_iter5_reg;
        tmp_147_reg_2234_pp0_iter7_reg <= tmp_147_reg_2234_pp0_iter6_reg;
        tmp_147_reg_2234_pp0_iter8_reg <= tmp_147_reg_2234_pp0_iter7_reg;
        tmp_147_reg_2234_pp0_iter9_reg <= tmp_147_reg_2234_pp0_iter8_reg;
        trunc_ln127_reg_2238 <= trunc_ln127_fu_1098_p1;
        trunc_ln127_reg_2238_pp0_iter1_reg <= trunc_ln127_reg_2238;
        trunc_ln127_reg_2238_pp0_iter2_reg <= trunc_ln127_reg_2238_pp0_iter1_reg;
        trunc_ln127_reg_2238_pp0_iter3_reg <= trunc_ln127_reg_2238_pp0_iter2_reg;
        trunc_ln127_reg_2238_pp0_iter4_reg <= trunc_ln127_reg_2238_pp0_iter3_reg;
        trunc_ln127_reg_2238_pp0_iter5_reg <= trunc_ln127_reg_2238_pp0_iter4_reg;
        trunc_ln127_reg_2238_pp0_iter6_reg <= trunc_ln127_reg_2238_pp0_iter5_reg;
        trunc_ln127_reg_2238_pp0_iter7_reg <= trunc_ln127_reg_2238_pp0_iter6_reg;
        trunc_ln127_reg_2238_pp0_iter8_reg <= trunc_ln127_reg_2238_pp0_iter7_reg;
        zext_ln130_cast_reg_2243[5 : 0] <= zext_ln130_cast_fu_1102_p3[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_18_reg_3014 <= grp_fu_592_p_dout0;
        c0_x_19_reg_3026 <= grp_fu_600_p_dout0;
        c0_y_18_reg_3020 <= grp_fu_596_p_dout0;
        c0_y_19_reg_3032 <= grp_fu_604_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        c0_x_20_reg_3072 <= grp_fu_636_p_dout0;
        c0_y_20_reg_3078 <= grp_fu_640_p_dout0;
        mul170_1_reg_3084 <= grp_fu_644_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        c0_x_22_reg_3310_pp0_iter5_reg <= c0_x_22_reg_3310;
        c0_x_22_reg_3310_pp0_iter6_reg <= c0_x_22_reg_3310_pp0_iter5_reg;
        c0_y_22_reg_3316_pp0_iter5_reg <= c0_y_22_reg_3316;
        c0_y_22_reg_3316_pp0_iter6_reg <= c0_y_22_reg_3316_pp0_iter5_reg;
        data_x_4_reg_3363_pp0_iter6_reg <= data_x_4_reg_3363;
        data_x_4_reg_3363_pp0_iter7_reg <= data_x_4_reg_3363_pp0_iter6_reg;
        data_x_5_reg_3373_pp0_iter6_reg <= data_x_5_reg_3373;
        data_x_5_reg_3373_pp0_iter7_reg <= data_x_5_reg_3373_pp0_iter6_reg;
        data_y_4_reg_3368_pp0_iter6_reg <= data_y_4_reg_3368;
        data_y_4_reg_3368_pp0_iter7_reg <= data_y_4_reg_3368_pp0_iter6_reg;
        zext_ln127_reg_2480[6 : 0] <= zext_ln127_fu_1356_p1[6 : 0];
        zext_ln127_reg_2480_pp0_iter10_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter9_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter11_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter10_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter12_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter11_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter13_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter12_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter14_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter13_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter15_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter14_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter16_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter15_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter17_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter16_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter18_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter17_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter19_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter18_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter1_reg[6 : 0] <= zext_ln127_reg_2480[6 : 0];
        zext_ln127_reg_2480_pp0_iter20_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter19_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter21_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter20_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter22_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter21_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter2_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter1_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter3_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter2_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter4_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter3_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter5_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter4_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter6_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter5_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter7_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter6_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter8_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter7_reg[6 : 0];
        zext_ln127_reg_2480_pp0_iter9_reg[6 : 0] <= zext_ln127_reg_2480_pp0_iter8_reg[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_4_reg_2814 <= grp_fu_576_p_dout0;
        c0_x_8_reg_2826 <= grp_fu_584_p_dout0;
        c0_y_4_reg_2820 <= grp_fu_580_p_dout0;
        c0_y_8_reg_2832 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_6_reg_2990 <= grp_fu_592_p_dout0;
        c0_x_7_reg_3002 <= grp_fu_600_p_dout0;
        c0_y_6_reg_2996 <= grp_fu_596_p_dout0;
        c0_y_7_reg_3008 <= grp_fu_604_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_7_reg_3002_pp0_iter3_reg <= c0_x_7_reg_3002;
        c0_x_8_reg_2826_pp0_iter2_reg <= c0_x_8_reg_2826;
        c0_y_7_reg_3008_pp0_iter3_reg <= c0_y_7_reg_3008;
        c0_y_8_reg_2832_pp0_iter2_reg <= c0_y_8_reg_2832;
        data_x_1_reg_3145_pp0_iter4_reg <= data_x_1_reg_3145;
        data_x_1_reg_3145_pp0_iter5_reg <= data_x_1_reg_3145_pp0_iter4_reg;
        data_x_1_reg_3145_pp0_iter6_reg <= data_x_1_reg_3145_pp0_iter5_reg;
        data_x_1_reg_3145_pp0_iter7_reg <= data_x_1_reg_3145_pp0_iter6_reg;
        data_x_2_2_reg_3393_pp0_iter6_reg <= data_x_2_2_reg_3393;
        data_x_2_2_reg_3393_pp0_iter7_reg <= data_x_2_2_reg_3393_pp0_iter6_reg;
        data_x_3_2_reg_3403_pp0_iter6_reg <= data_x_3_2_reg_3403;
        data_x_3_2_reg_3403_pp0_iter7_reg <= data_x_3_2_reg_3403_pp0_iter6_reg;
        data_y_1_reg_3150_pp0_iter4_reg <= data_y_1_reg_3150;
        data_y_1_reg_3150_pp0_iter5_reg <= data_y_1_reg_3150_pp0_iter4_reg;
        data_y_1_reg_3150_pp0_iter6_reg <= data_y_1_reg_3150_pp0_iter5_reg;
        data_y_1_reg_3150_pp0_iter7_reg <= data_y_1_reg_3150_pp0_iter6_reg;
        data_y_2_2_reg_3398_pp0_iter6_reg <= data_y_2_2_reg_3398;
        data_y_2_2_reg_3398_pp0_iter7_reg <= data_y_2_2_reg_3398_pp0_iter6_reg;
        data_y_5_reg_3388_pp0_iter6_reg <= data_y_5_reg_3388;
        data_y_5_reg_3388_pp0_iter7_reg <= data_y_5_reg_3388_pp0_iter6_reg;
        lshr_ln_reg_2536 <= {{tid_7_reg_2222[5:1]}};
        lshr_ln_reg_2536_pp0_iter1_reg <= lshr_ln_reg_2536;
        lshr_ln_reg_2536_pp0_iter2_reg <= lshr_ln_reg_2536_pp0_iter1_reg;
        lshr_ln_reg_2536_pp0_iter3_reg <= lshr_ln_reg_2536_pp0_iter2_reg;
        or_ln3_reg_2541[5 : 1] <= or_ln3_fu_1407_p3[5 : 1];
        or_ln3_reg_2541_pp0_iter1_reg[5 : 1] <= or_ln3_reg_2541[5 : 1];
        or_ln3_reg_2541_pp0_iter2_reg[5 : 1] <= or_ln3_reg_2541_pp0_iter1_reg[5 : 1];
        or_ln3_reg_2541_pp0_iter3_reg[5 : 1] <= or_ln3_reg_2541_pp0_iter2_reg[5 : 1];
        or_ln3_reg_2541_pp0_iter4_reg[5 : 1] <= or_ln3_reg_2541_pp0_iter3_reg[5 : 1];
        or_ln3_reg_2541_pp0_iter5_reg[5 : 1] <= or_ln3_reg_2541_pp0_iter4_reg[5 : 1];
        or_ln3_reg_2541_pp0_iter6_reg[5 : 1] <= or_ln3_reg_2541_pp0_iter5_reg[5 : 1];
        or_ln3_reg_2541_pp0_iter7_reg[5 : 1] <= or_ln3_reg_2541_pp0_iter6_reg[5 : 1];
        zext_ln129_reg_2546[5 : 1] <= zext_ln129_fu_1415_p1[5 : 1];
        zext_ln129_reg_2546_pp0_iter10_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter9_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter11_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter10_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter12_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter11_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter13_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter12_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter14_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter13_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter15_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter14_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter16_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter15_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter17_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter16_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter18_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter17_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter19_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter18_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter1_reg[5 : 1] <= zext_ln129_reg_2546[5 : 1];
        zext_ln129_reg_2546_pp0_iter20_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter19_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter21_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter20_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter22_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter21_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter2_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter1_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter3_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter2_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter4_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter3_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter5_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter4_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter6_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter5_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter7_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter6_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter8_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter7_reg[5 : 1];
        zext_ln129_reg_2546_pp0_iter9_reg[5 : 1] <= zext_ln129_reg_2546_pp0_iter8_reg[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        c0_x_9_reg_3038 <= grp_fu_636_p_dout0;
        c0_y_9_reg_3044 <= grp_fu_640_p_dout0;
        mul3_reg_3050 <= grp_fu_644_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_x_1_2_reg_3160 <= grp_fu_608_p_dout0;
        data_y_1_2_reg_3165 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        data_x_1_reg_3145 <= grp_fu_608_p_dout0;
        data_y_1_reg_3150 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        data_x_2_2_reg_3393 <= grp_fu_620_p_dout0;
        data_x_3_2_reg_3403 <= grp_fu_628_p_dout0;
        data_y_2_2_reg_3398 <= grp_fu_624_p_dout0;
        data_y_5_reg_3388 <= grp_fu_616_p_dout0;
        mul298_1_reg_3413 <= grp_fu_636_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        data_x_2_reg_3338 <= grp_fu_604_p_dout0;
        data_x_3_reg_3348 <= grp_fu_612_p_dout0;
        data_y_2_reg_3343 <= grp_fu_608_p_dout0;
        data_y_3_reg_3353 <= grp_fu_616_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        data_x_2_reg_3338_pp0_iter6_reg <= data_x_2_reg_3338;
        data_x_2_reg_3338_pp0_iter7_reg <= data_x_2_reg_3338_pp0_iter6_reg;
        data_x_3_reg_3348_pp0_iter6_reg <= data_x_3_reg_3348;
        data_x_3_reg_3348_pp0_iter7_reg <= data_x_3_reg_3348_pp0_iter6_reg;
        data_y_2_reg_3343_pp0_iter6_reg <= data_y_2_reg_3343;
        data_y_2_reg_3343_pp0_iter7_reg <= data_y_2_reg_3343_pp0_iter6_reg;
        data_y_3_reg_3353_pp0_iter6_reg <= data_y_3_reg_3353;
        data_y_3_reg_3353_pp0_iter7_reg <= data_y_3_reg_3353_pp0_iter6_reg;
        tmp_4_reg_3250_pp0_iter5_reg <= tmp_4_reg_3250;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_x_4_2_reg_3434 <= grp_fu_624_p_dout0;
        data_x_5_2_reg_3444 <= grp_fu_632_p_dout0;
        data_y_3_2_reg_3424 <= grp_fu_620_p_dout0;
        data_y_4_2_reg_3439 <= grp_fu_628_p_dout0;
        sub11_reg_3418 <= grp_fu_616_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        data_x_4_reg_3363 <= grp_fu_616_p_dout0;
        data_x_5_reg_3373 <= grp_fu_624_p_dout0;
        data_y_4_reg_3368 <= grp_fu_620_p_dout0;
        mul291_1_reg_3378 <= grp_fu_644_p_dout0;
        mul4_reg_3358 <= grp_fu_640_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_2_reg_3492 <= grp_fu_620_p_dout0;
        data_x_7_2_reg_3502 <= grp_fu_628_p_dout0;
        data_y_6_2_reg_3497 <= grp_fu_624_p_dout0;
        data_y_6_reg_3482 <= grp_fu_612_p_dout0;
        data_y_7_2_reg_3507 <= grp_fu_632_p_dout0;
        data_y_7_reg_3487 <= grp_fu_616_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_reg_3472 <= grp_fu_604_p_dout0;
        data_x_7_reg_3477 <= grp_fu_608_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_reg_3472_pp0_iter8_reg <= data_x_6_reg_3472;
        data_x_7_reg_3477_pp0_iter8_reg <= data_x_7_reg_3477;
        data_y_5_2_reg_3449_pp0_iter7_reg <= data_y_5_2_reg_3449;
        data_y_5_2_reg_3449_pp0_iter8_reg <= data_y_5_2_reg_3449_pp0_iter7_reg;
        tmp_2_reg_3186_pp0_iter5_reg <= tmp_2_reg_3186;
        zext_ln127_1_reg_2268[6 : 0] <= zext_ln127_1_fu_1126_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_y_5_2_reg_3449 <= grp_fu_600_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        mul176_1_reg_3100 <= grp_fu_644_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        mul1_reg_3067 <= grp_fu_644_p_dout0;
        mul5_reg_3056 <= grp_fu_636_p_dout0;
        mul_reg_3062 <= grp_fu_640_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        mul219_1_reg_3140 <= grp_fu_636_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul2_reg_3328 <= grp_fu_636_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        reg_1001 <= grp_fu_604_p_dout0;
        reg_997 <= grp_fu_600_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        reg_1005 <= grp_twiddles8_fu_648_p_dout0_0;
        reg_1010 <= grp_twiddles8_fu_648_p_dout0_1;
        reg_1015 <= grp_twiddles8_fu_648_p_dout0_2;
        reg_1020 <= grp_twiddles8_fu_648_p_dout0_3;
        reg_1025 <= grp_twiddles8_fu_648_p_dout0_4;
        reg_1030 <= grp_twiddles8_fu_648_p_dout0_5;
        reg_1035 <= grp_twiddles8_fu_648_p_dout0_6;
        reg_1040 <= grp_twiddles8_fu_648_p_dout0_7;
        reg_1046 <= grp_twiddles8_fu_648_p_dout0_8;
        reg_1052 <= grp_twiddles8_fu_648_p_dout0_9;
        reg_1058 <= grp_twiddles8_fu_648_p_dout0_10;
        reg_1064 <= grp_twiddles8_fu_648_p_dout0_11;
        reg_1070 <= grp_twiddles8_fu_648_p_dout0_12;
        reg_1076 <= grp_twiddles8_fu_648_p_dout0_13;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        reg_965 <= work_x_q1;
        reg_969 <= work_x_q0;
        reg_973 <= work_y_q1;
        reg_977 <= work_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        reg_981 <= work_x_q1;
        reg_985 <= work_x_q0;
        reg_989 <= work_y_q1;
        reg_993 <= work_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sub10_reg_3202 <= grp_fu_632_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        sub12_reg_3454 <= grp_fu_628_p_dout0;
        sub294_1_reg_3460 <= grp_fu_632_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        sub208_1_reg_2942_pp0_iter3_reg <= sub208_1_reg_2942;
        sub287_1_reg_3256_pp0_iter5_reg <= sub287_1_reg_3256;
        tmp_3_reg_2936_pp0_iter3_reg <= tmp_3_reg_2936;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        sub287_1_reg_3256 <= grp_fu_632_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        sub299_1_reg_3466 <= grp_fu_632_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sub2_reg_2888_pp0_iter3_reg <= sub2_reg_2888;
        tmp_reg_2882_pp0_iter3_reg <= tmp_reg_2882;
        zext_ln127_2_reg_2294[6 : 0] <= zext_ln127_2_fu_1150_p1[6 : 0];
        zext_ln154_reg_3208[4 : 0] <= zext_ln154_fu_2074_p1[4 : 0];
        zext_ln154_reg_3208_pp0_iter10_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter9_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter11_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter10_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter12_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter11_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter13_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter12_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter14_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter13_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter15_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter14_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter16_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter15_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter17_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter16_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter18_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter17_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter19_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter18_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter20_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter19_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter21_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter20_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter22_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter21_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter23_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter22_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter5_reg[4 : 0] <= zext_ln154_reg_3208[4 : 0];
        zext_ln154_reg_3208_pp0_iter6_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter5_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter7_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter6_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter8_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter7_reg[4 : 0];
        zext_ln154_reg_3208_pp0_iter9_reg[4 : 0] <= zext_ln154_reg_3208_pp0_iter8_reg[4 : 0];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_1_address0_local = zext_ln129_reg_2546_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_1_address0_local = zext_ln127_reg_2480_pp0_iter22_reg;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_2_address0_local = zext_ln129_reg_2546_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_2_address0_local = zext_ln127_reg_2480_pp0_iter22_reg;
        end else begin
            DATA_x_2_address0_local = 'bx;
        end
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_3_address0_local = zext_ln129_reg_2546_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_3_address0_local = zext_ln127_reg_2480_pp0_iter22_reg;
        end else begin
            DATA_x_3_address0_local = 'bx;
        end
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_4_address0_local = zext_ln129_reg_2546_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_4_address0_local = zext_ln127_reg_2480_pp0_iter22_reg;
        end else begin
            DATA_x_4_address0_local = 'bx;
        end
    end else begin
        DATA_x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_5_address0_local = zext_ln129_reg_2546_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_5_address0_local = zext_ln127_reg_2480_pp0_iter22_reg;
        end else begin
            DATA_x_5_address0_local = 'bx;
        end
    end else begin
        DATA_x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_6_address0_local = zext_ln129_reg_2546_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_6_address0_local = zext_ln127_reg_2480_pp0_iter22_reg;
        end else begin
            DATA_x_6_address0_local = 'bx;
        end
    end else begin
        DATA_x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_7_address0_local = zext_ln129_reg_2546_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_7_address0_local = zext_ln127_reg_2480_pp0_iter22_reg;
        end else begin
            DATA_x_7_address0_local = 'bx;
        end
    end else begin
        DATA_x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_10_ce0_local = 1'b1;
    end else begin
        DATA_y_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_10_we0_local = 1'b1;
    end else begin
        DATA_y_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_11_ce0_local = 1'b1;
    end else begin
        DATA_y_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_11_we0_local = 1'b1;
    end else begin
        DATA_y_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_12_ce0_local = 1'b1;
    end else begin
        DATA_y_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_12_we0_local = 1'b1;
    end else begin
        DATA_y_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_13_ce0_local = 1'b1;
    end else begin
        DATA_y_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_13_we0_local = 1'b1;
    end else begin
        DATA_y_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_14_ce0_local = 1'b1;
    end else begin
        DATA_y_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_14_we0_local = 1'b1;
    end else begin
        DATA_y_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_15_ce0_local = 1'b1;
    end else begin
        DATA_y_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_15_we0_local = 1'b1;
    end else begin
        DATA_y_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_4_we0_local = 1'b1;
    end else begin
        DATA_y_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_5_we0_local = 1'b1;
    end else begin
        DATA_y_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_6_we0_local = 1'b1;
    end else begin
        DATA_y_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_7_we0_local = 1'b1;
    end else begin
        DATA_y_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_8_ce0_local = 1'b1;
    end else begin
        DATA_y_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_8_we0_local = 1'b1;
    end else begin
        DATA_y_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_9_ce0_local = 1'b1;
    end else begin
        DATA_y_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_9_we0_local = 1'b1;
    end else begin
        DATA_y_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_147_reg_2234 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (tmp_147_reg_2234_pp0_iter22_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
        ap_condition_exit_pp0_iter22_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter22_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter22_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to21 = 1'b1;
    end else begin
        ap_idle_pp0_0to21 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to23 = 1'b1;
    end else begin
        ap_idle_pp0_1to23 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_tid_7 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_7 = tid_fu_140;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_831_p0 = c0_x_6_reg_2990;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_831_p0 = c0_x_5_reg_2650;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_831_p0 = c0_x_69_fu_1498_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_831_p0 = c0_x_fu_1474_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_831_p0 = c0_x_71_fu_1421_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_831_p0 = c0_x_67_fu_1361_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_831_p0 = c0_x_70_fu_1273_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_831_p0 = c0_x_66_fu_1176_p1;
    end else begin
        grp_fu_831_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_831_p1 = add2_reg_2894;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_831_p1 = add6_reg_2674;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_831_p1 = bitcast_ln133_1_fu_1504_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_831_p1 = bitcast_ln133_fu_1480_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_831_p1 = bitcast_ln135_1_fu_1446_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_831_p1 = bitcast_ln135_fu_1380_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_831_p1 = bitcast_ln134_1_fu_1310_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_831_p1 = bitcast_ln134_fu_1188_p1;
    end else begin
        grp_fu_831_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_835_p0 = c0_y_6_reg_2996;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_835_p0 = c0_y_5_reg_2656;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_835_p0 = c0_y_69_fu_1510_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_835_p0 = c0_y_fu_1486_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_835_p0 = c0_y_71_fu_1452_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_835_p0 = c0_y_67_fu_1386_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_835_p0 = c0_y_70_fu_1332_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_835_p0 = c0_y_66_fu_1200_p1;
    end else begin
        grp_fu_835_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_835_p1 = add3_reg_2900;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_835_p1 = add7_reg_2680;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_835_p1 = bitcast_ln142_1_fu_1516_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_835_p1 = bitcast_ln142_fu_1492_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_835_p1 = bitcast_ln144_1_fu_1458_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_835_p1 = bitcast_ln144_fu_1392_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_835_p1 = bitcast_ln143_1_fu_1344_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_835_p1 = bitcast_ln143_fu_1212_p1;
    end else begin
        grp_fu_835_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_147_reg_2234 == 1'd0) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_147_reg_2234 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_147_reg_2234 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_147_reg_2234 == 1'd0) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_839_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001))) begin
        grp_fu_839_opcode = 2'd0;
    end else begin
        grp_fu_839_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_839_p0 = mul_reg_3062;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_839_p0 = c0_x_9_reg_3038;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_839_p0 = c0_x_69_fu_1498_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_839_p0 = c0_x_fu_1474_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_839_p0 = c0_x_71_fu_1421_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_839_p0 = c0_x_67_fu_1361_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_839_p0 = c0_x_70_fu_1273_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_839_p0 = c0_x_66_fu_1176_p1;
    end else begin
        grp_fu_839_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_839_p1 = bitcast_ln148_13_fu_1967_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_839_p1 = mul3_reg_3050;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_839_p1 = bitcast_ln133_1_fu_1504_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_839_p1 = bitcast_ln133_fu_1480_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_839_p1 = bitcast_ln135_1_fu_1446_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_839_p1 = bitcast_ln135_fu_1380_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_839_p1 = bitcast_ln134_1_fu_1310_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_839_p1 = bitcast_ln134_fu_1188_p1;
    end else begin
        grp_fu_839_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_843_p0 = bitcast_ln148_15_fu_2001_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_843_p0 = c0_x_9_reg_3038;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_843_p0 = c0_y_69_fu_1510_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_843_p0 = c0_y_fu_1486_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_843_p0 = c0_y_71_fu_1452_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_843_p0 = c0_y_67_fu_1386_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_843_p0 = c0_y_70_fu_1332_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_843_p0 = c0_y_66_fu_1200_p1;
    end else begin
        grp_fu_843_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_843_p1 = mul1_reg_3067;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_843_p1 = mul3_reg_3050;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_843_p1 = bitcast_ln142_1_fu_1516_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_843_p1 = bitcast_ln142_fu_1492_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_843_p1 = bitcast_ln144_1_fu_1458_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_843_p1 = bitcast_ln144_fu_1392_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_843_p1 = bitcast_ln143_1_fu_1344_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_843_p1 = bitcast_ln143_fu_1212_p1;
    end else begin
        grp_fu_843_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001))) begin
        grp_fu_847_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_147_reg_2234 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_147_reg_2234 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_847_opcode = 2'd0;
    end else begin
        grp_fu_847_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_847_p0 = bitcast_ln148_35_fu_2069_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_847_p0 = c0_y_9_reg_3044;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_847_p0 = c0_x_18_reg_3014;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_847_p0 = c0_x_21_reg_2838;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_847_p0 = c0_x_4_reg_2814;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_847_p0 = c0_x_15_reg_2708;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_847_p0 = c0_x_72_fu_1304_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_847_p0 = c0_x_68_fu_1182_p1;
    end else begin
        grp_fu_847_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_847_p1 = mul219_1_reg_3140;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_847_p1 = mul5_reg_3056;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_847_p1 = add199_1_reg_2958;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_847_p1 = add111_1_reg_2790;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_847_p1 = add4_reg_2744;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_847_p1 = add127_1_reg_2732;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_847_p1 = bitcast_ln136_1_fu_1326_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_847_p1 = bitcast_ln136_fu_1194_p1;
    end else begin
        grp_fu_847_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_851_p0 = c0_x_13_reg_2850_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_851_p0 = c0_x_20_reg_3072;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_851_p0 = c0_y_18_reg_3020;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_851_p0 = c0_y_21_reg_2844;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_851_p0 = c0_y_4_reg_2820;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_851_p0 = c0_y_15_reg_2714;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_851_p0 = c0_y_72_fu_1338_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_851_p0 = c0_y_68_fu_1206_p1;
    end else begin
        grp_fu_851_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_851_p1 = sub157_1_reg_3118;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_851_p1 = mul170_1_reg_3084;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_851_p1 = add202_1_reg_2964;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_851_p1 = add114_1_reg_2796;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_851_p1 = add5_reg_2750;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_851_p1 = add130_1_reg_2738;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_851_p1 = bitcast_ln145_1_fu_1350_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_851_p1 = bitcast_ln145_fu_1218_p1;
    end else begin
        grp_fu_851_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_147_reg_2234 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_147_reg_2234 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_855_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001))) begin
        grp_fu_855_opcode = 2'd0;
    end else begin
        grp_fu_855_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_855_p0 = c0_y_23_reg_3304;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_855_p0 = c0_y_13_reg_2856_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_855_p0 = c0_x_20_reg_3072;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_855_p0 = mul6_reg_2906;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_855_p0 = c0_x_21_reg_2838;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_855_p0 = c0_x_4_reg_2814;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_855_p0 = c0_x_72_fu_1304_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_855_p0 = c0_x_68_fu_1182_p1;
    end else begin
        grp_fu_855_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_855_p1 = add281_1_reg_3322;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_855_p1 = add162_1_reg_3124;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_855_p1 = mul170_1_reg_3084;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_855_p1 = bitcast_ln148_5_fu_1831_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_855_p1 = add111_1_reg_2790;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_855_p1 = add4_reg_2744;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_855_p1 = bitcast_ln136_1_fu_1326_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_855_p1 = bitcast_ln136_fu_1194_p1;
    end else begin
        grp_fu_855_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_147_reg_2234 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_147_reg_2234 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_859_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_859_opcode = 2'd0;
    end else begin
        grp_fu_859_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_859_p0 = c0_x_10_reg_3274_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_859_p0 = c0_x_7_reg_3002_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_859_p0 = c0_x_13_reg_2850_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_859_p0 = bitcast_ln148_7_fu_1865_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_859_p0 = c0_y_21_reg_2844;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_859_p0 = c0_y_4_reg_2820;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_859_p0 = c0_y_72_fu_1338_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_859_p0 = c0_y_68_fu_1206_p1;
    end else begin
        grp_fu_859_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_859_p1 = sub11_reg_3418;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_859_p1 = sub4_reg_3226;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_859_p1 = sub157_1_reg_3118;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_859_p1 = mul9_reg_2911;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_859_p1 = add114_1_reg_2796;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_859_p1 = add5_reg_2750;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_859_p1 = bitcast_ln145_1_fu_1350_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_859_p1 = bitcast_ln145_fu_1218_p1;
    end else begin
        grp_fu_859_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_863_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001))) begin
        grp_fu_863_opcode = 2'd0;
    end else begin
        grp_fu_863_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_863_p0 = c0_x_10_reg_3274_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_863_p0 = c0_y_7_reg_3008_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_863_p0 = c0_y_13_reg_2856_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_863_p0 = c0_x_18_reg_3014;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_863_p0 = c0_x_6_reg_2990;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_863_p0 = mul154_1_reg_2948;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_863_p0 = tmp_1_3_reg_2720;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_863_p0 = tmp_1_reg_2662;
    end else begin
        grp_fu_863_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_863_p1 = sub11_reg_3418;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_863_p1 = sub6_reg_3232;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_863_p1 = add162_1_reg_3124;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_863_p1 = add199_1_reg_2958;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_863_p1 = add2_reg_2894;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_863_p1 = bitcast_ln148_25_fu_1899_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_863_p1 = bitcast_ln148_21_fu_1691_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_863_p1 = bitcast_ln148_1_fu_1551_p1;
    end else begin
        grp_fu_863_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_867_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_867_opcode = 2'd0;
    end else begin
        grp_fu_867_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_867_p0 = c0_y_10_reg_3280_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_867_p0 = c0_x_7_reg_3002_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_867_p0 = c0_y_20_reg_3078;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_867_p0 = c0_y_18_reg_3020;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_867_p0 = c0_y_6_reg_2996;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_867_p0 = bitcast_ln148_27_fu_1933_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_867_p0 = bitcast_ln148_23_fu_1725_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_867_p0 = bitcast_ln148_3_fu_1585_p1;
    end else begin
        grp_fu_867_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_867_p1 = sub12_reg_3454;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_867_p1 = sub4_reg_3226;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_867_p1 = mul176_1_reg_3100;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_867_p1 = add202_1_reg_2964;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_867_p1 = add3_reg_2900;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_867_p1 = mul161_1_reg_2953;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_867_p1 = sub104_1_reg_2726;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_867_p1 = sub3_reg_2668;
    end else begin
        grp_fu_867_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_871_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_871_opcode = 2'd0;
    end else begin
        grp_fu_871_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_871_p0 = c0_y_10_reg_3280_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_871_p0 = mul2_reg_3328;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_871_p0 = c0_y_11_reg_3268;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_871_p0 = c0_x_11_reg_3262;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_871_p0 = c0_y_7_reg_3008_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_871_p0 = c0_x_8_reg_2826_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_871_p0 = bitcast_ln148_29_fu_1760_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_871_p0 = bitcast_ln148_9_fu_1620_p1;
    end else begin
        grp_fu_871_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_871_p1 = sub12_reg_3454;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_871_p1 = bitcast_ln148_17_fu_2108_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_871_p1 = add10_reg_3238;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_871_p1 = add_reg_3180;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_871_p1 = sub6_reg_3232;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_871_p1 = sub9_reg_3106;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_871_p1 = bitcast_ln148_31_fu_1796_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_871_p1 = bitcast_ln148_11_fu_1656_p1;
    end else begin
        grp_fu_871_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001))) begin
        grp_fu_875_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_875_opcode = 2'd0;
    end else begin
        grp_fu_875_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_875_p0 = c0_x_22_reg_3310_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_875_p0 = c0_y_19_reg_3032_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_875_p0 = c0_x_19_reg_3026_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_875_p0 = c0_y_11_reg_3268;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_875_p0 = c0_y_8_reg_2832_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_875_p0 = bitcast_ln148_29_fu_1760_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_875_p0 = bitcast_ln148_9_fu_1620_p1;
    end else begin
        grp_fu_875_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_875_p1 = sub294_1_reg_3460;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_875_p1 = sub220_1_reg_3292;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_875_p1 = sub215_1_reg_3286;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_875_p1 = add10_reg_3238;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_875_p1 = add9_reg_3112;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_875_p1 = bitcast_ln148_31_fu_1796_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_875_p1 = bitcast_ln148_11_fu_1656_p1;
    end else begin
        grp_fu_875_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_879_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_879_opcode = 2'd0;
    end else begin
        grp_fu_879_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_879_p0 = c0_y_22_reg_3316_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_879_p0 = c0_x_23_reg_3298;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_879_p0 = c0_y_19_reg_3032_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_879_p0 = c0_x_11_reg_3262;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_879_p0 = c0_x_8_reg_2826_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_879_p0 = c0_x_15_reg_2708;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_879_p0 = c0_x_5_reg_2650;
    end else begin
        grp_fu_879_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_879_p1 = sub299_1_reg_3466;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_879_p1 = add278_1_reg_3244;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_879_p1 = sub220_1_reg_3292;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_879_p1 = add_reg_3180;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_879_p1 = sub9_reg_3106;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_879_p1 = add127_1_reg_2732;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_879_p1 = add6_reg_2674;
    end else begin
        grp_fu_879_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_883_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001))) begin
        grp_fu_883_opcode = 2'd0;
    end else begin
        grp_fu_883_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_883_p0 = c0_x_22_reg_3310_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_883_p0 = bitcast_ln148_19_fu_2142_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_883_p0 = c0_y_23_reg_3304;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_883_p0 = c0_x_19_reg_3026_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_883_p0 = c0_y_8_reg_2832_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_883_p0 = c0_y_15_reg_2714;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_883_p0 = c0_y_5_reg_2656;
    end else begin
        grp_fu_883_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_883_p1 = sub294_1_reg_3460;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_883_p1 = mul4_reg_3358;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_883_p1 = add281_1_reg_3322;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_883_p1 = sub215_1_reg_3286;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_883_p1 = add9_reg_3112;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_883_p1 = add130_1_reg_2738;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_883_p1 = add7_reg_2680;
    end else begin
        grp_fu_883_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_887_p0 = c0_y_22_reg_3316_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_887_p0 = bitcast_ln148_39_fu_2210_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_887_p0 = mul291_1_reg_3378;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_887_p0 = c0_x_23_reg_3298;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_887_p0 = mul212_1_reg_3130;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_887_p0 = c0_y_20_reg_3078;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_887_p0 = c0_y_9_reg_3044;
    end else begin
        grp_fu_887_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_887_p1 = sub299_1_reg_3466;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_887_p1 = mul298_1_reg_3413;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_887_p1 = bitcast_ln148_37_fu_2176_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_887_p1 = add278_1_reg_3244;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_887_p1 = bitcast_ln148_33_fu_2035_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_887_p1 = mul176_1_reg_3100;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_887_p1 = mul5_reg_3056;
    end else begin
        grp_fu_887_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_891_p0 = sub287_1_reg_3256;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_891_p0 = tmp_2_reg_3186;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_891_p0 = sub208_1_reg_2942;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_891_p0 = sub143_1_reg_2916;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_891_p0 = add1_reg_2877;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_891_p0 = sub8_reg_2862;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_891_p0 = tmp_1_4_reg_2802;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_891_p0 = tmp_1_1_reg_2756;
    end else begin
        grp_fu_891_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_891_p1 = 64'd4604544271217802189;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)))) begin
        grp_fu_891_p1 = 64'd0;
    end else begin
        grp_fu_891_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_896_p0 = sub10_reg_3202;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_896_p0 = add149_1_reg_2921;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_896_p0 = tmp_reg_2882;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_896_p0 = add8_reg_2867;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_896_p0 = sub120_1_reg_2808;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_896_p0 = sub5_reg_2762;
    end else begin
        grp_fu_896_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_896_p1 = 64'd4604544271217802189;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        grp_fu_896_p1 = 64'd0;
    end else begin
        grp_fu_896_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_903_p0 = tmp_4_reg_3250;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_903_p0 = tmp_3_reg_2936;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_903_p0 = add175_1_reg_2931;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_903_p0 = sub169_1_reg_2926;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_903_p0 = sub2_reg_2888;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_903_p0 = sub1_reg_2872;
    end else begin
        grp_fu_903_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        grp_fu_903_p1 = 64'd0;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_903_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_903_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_a_x_1_read = data_x_1_2_reg_3160_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_a_x_1_read = data_x_1_reg_3145_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_798_a_x_1_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_a_x_1_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_a_x_2_read = data_x_2_2_reg_3393_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_a_x_2_read = data_x_2_reg_3338_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_798_a_x_2_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_a_x_2_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_a_x_3_read = data_x_3_2_reg_3403_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_a_x_3_read = data_x_3_reg_3348_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_798_a_x_3_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_a_x_3_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_a_x_4_read = data_x_4_2_reg_3434_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_a_x_4_read = data_x_4_reg_3363_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_798_a_x_4_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_a_x_4_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_a_x_5_read = data_x_5_2_reg_3444_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_a_x_5_read = data_x_5_reg_3373_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_798_a_x_5_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_a_x_5_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_a_x_6_read = data_x_6_2_reg_3492;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_a_x_6_read = data_x_6_reg_3472_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_798_a_x_6_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_a_x_6_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_a_x_7_read = data_x_7_2_reg_3502;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_a_x_7_read = data_x_7_reg_3477_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_798_a_x_7_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_a_x_7_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_a_y_1_read = data_y_1_2_reg_3165_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_a_y_1_read = data_y_1_reg_3150_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_798_a_y_1_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_a_y_1_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_a_y_2_read = data_y_2_2_reg_3398_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_a_y_2_read = data_y_2_reg_3343_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_798_a_y_2_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_a_y_2_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_a_y_3_read = data_y_3_2_reg_3424_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_a_y_3_read = data_y_3_reg_3353_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_798_a_y_3_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_a_y_3_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_a_y_4_read = data_y_4_2_reg_3439_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_a_y_4_read = data_y_4_reg_3368_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_798_a_y_4_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_a_y_4_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_a_y_5_read = data_y_5_2_reg_3449_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_a_y_5_read = data_y_5_reg_3388_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_798_a_y_5_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_a_y_5_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_a_y_6_read = data_y_6_2_reg_3497;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_a_y_6_read = data_y_6_reg_3482;
        end else begin
            grp_twiddles8_fu_798_a_y_6_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_a_y_6_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_a_y_7_read = data_y_7_2_reg_3507;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_a_y_7_read = data_y_7_reg_3487;
        end else begin
            grp_twiddles8_fu_798_a_y_7_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_a_y_7_read = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001_ignoreCallOp1569)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp1566)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001_ignoreCallOp1573)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001_ignoreCallOp1571)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp1567)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp1579)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp1577)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001_ignoreCallOp1575)))) begin
        grp_twiddles8_fu_798_ap_ce = 1'b1;
    end else begin
        grp_twiddles8_fu_798_ap_ce = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_798_i = or_ln3_reg_2541_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_798_i = trunc_ln127_reg_2238_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_798_i = 'bx;
        end
    end else begin
        grp_twiddles8_fu_798_i = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_x_address0_local = zext_ln133_2_fu_1440_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_x_address0_local = zext_ln133_fu_1374_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_x_address0_local = zext_ln135_1_fu_1320_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_x_address0_local = zext_ln135_fu_1267_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_address0_local = zext_ln136_1_fu_1244_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_address0_local = zext_ln132_1_fu_1170_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_address0_local = zext_ln136_fu_1144_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_address0_local = zext_ln132_fu_1120_p1;
        end else begin
            work_x_address0_local = 'bx;
        end
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_x_address1_local = zext_ln129_fu_1415_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_x_address1_local = zext_ln127_fu_1356_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_x_address1_local = zext_ln131_1_fu_1298_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_x_address1_local = zext_ln131_fu_1257_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_address1_local = zext_ln134_1_fu_1229_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_address1_local = zext_ln130_1_fu_1159_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_address1_local = zext_ln134_fu_1135_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_address1_local = zext_ln130_fu_1110_p1;
        end else begin
            work_x_address1_local = 'bx;
        end
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_x_ce0_local = 1'b1;
    end else begin
        work_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_x_ce1_local = 1'b1;
    end else begin
        work_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_y_address0_local = zext_ln133_2_fu_1440_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_y_address0_local = zext_ln133_fu_1374_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_y_address0_local = zext_ln135_1_fu_1320_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_y_address0_local = zext_ln135_fu_1267_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_address0_local = zext_ln136_1_fu_1244_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_address0_local = zext_ln132_1_fu_1170_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_address0_local = zext_ln136_fu_1144_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_address0_local = zext_ln132_fu_1120_p1;
        end else begin
            work_y_address0_local = 'bx;
        end
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_y_address1_local = zext_ln129_fu_1415_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_y_address1_local = zext_ln127_fu_1356_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_y_address1_local = zext_ln131_1_fu_1298_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_y_address1_local = zext_ln131_fu_1257_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_address1_local = zext_ln134_1_fu_1229_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_address1_local = zext_ln130_1_fu_1159_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_address1_local = zext_ln134_fu_1135_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_address1_local = zext_ln130_fu_1110_p1;
        end else begin
            work_y_address1_local = 'bx;
        end
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_y_ce0_local = 1'b1;
    end else begin
        work_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_y_ce1_local = 1'b1;
    end else begin
        work_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to23 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_d0 = reg_1005;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_2_address0 = DATA_x_2_address0_local;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_d0 = reg_1010;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_3_address0 = DATA_x_3_address0_local;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_d0 = reg_1015;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_4_address0 = DATA_x_4_address0_local;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_d0 = reg_1020;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_5_address0 = DATA_x_5_address0_local;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_d0 = reg_1025;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_6_address0 = DATA_x_6_address0_local;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_d0 = reg_1030;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_7_address0 = DATA_x_7_address0_local;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_d0 = reg_1035;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_address0 = zext_ln129_reg_2546_pp0_iter3_reg;
assign DATA_x_address1 = zext_ln127_reg_2480_pp0_iter3_reg;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = data_x_0_1_reg_3192;
assign DATA_x_d1 = data_x_0_reg_3170;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign DATA_y_10_address0 = zext_ln154_reg_3208_pp0_iter23_reg;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_10_d0 = reg_1046;
assign DATA_y_10_we0 = DATA_y_10_we0_local;
assign DATA_y_11_address0 = zext_ln154_reg_3208_pp0_iter23_reg;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_11_d0 = reg_1052;
assign DATA_y_11_we0 = DATA_y_11_we0_local;
assign DATA_y_12_address0 = zext_ln154_reg_3208_pp0_iter23_reg;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_12_d0 = reg_1058;
assign DATA_y_12_we0 = DATA_y_12_we0_local;
assign DATA_y_13_address0 = zext_ln154_reg_3208_pp0_iter23_reg;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_13_d0 = reg_1064;
assign DATA_y_13_we0 = DATA_y_13_we0_local;
assign DATA_y_14_address0 = zext_ln154_reg_3208_pp0_iter23_reg;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_14_d0 = reg_1070;
assign DATA_y_14_we0 = DATA_y_14_we0_local;
assign DATA_y_15_address0 = zext_ln154_reg_3208_pp0_iter23_reg;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_15_d0 = reg_1076;
assign DATA_y_15_we0 = DATA_y_15_we0_local;
assign DATA_y_1_address0 = zext_ln154_reg_3208_pp0_iter23_reg;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_d0 = reg_1040;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_2_address0 = zext_ln154_reg_3208_pp0_iter23_reg;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_d0 = reg_1046;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_3_address0 = zext_ln154_reg_3208_pp0_iter23_reg;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_d0 = reg_1052;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_4_address0 = zext_ln154_reg_3208_pp0_iter23_reg;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_d0 = reg_1058;
assign DATA_y_4_we0 = DATA_y_4_we0_local;
assign DATA_y_5_address0 = zext_ln154_reg_3208_pp0_iter23_reg;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_d0 = reg_1064;
assign DATA_y_5_we0 = DATA_y_5_we0_local;
assign DATA_y_6_address0 = zext_ln154_reg_3208_pp0_iter23_reg;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_d0 = reg_1070;
assign DATA_y_6_we0 = DATA_y_6_we0_local;
assign DATA_y_7_address0 = zext_ln154_reg_3208_pp0_iter23_reg;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_d0 = reg_1076;
assign DATA_y_7_we0 = DATA_y_7_we0_local;
assign DATA_y_8_address0 = zext_ln154_fu_2074_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_8_d0 = data_y_0_1_reg_3197;
assign DATA_y_8_we0 = DATA_y_8_we0_local;
assign DATA_y_9_address0 = zext_ln154_reg_3208_pp0_iter23_reg;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_9_d0 = reg_1040;
assign DATA_y_9_we0 = DATA_y_9_we0_local;
assign DATA_y_address0 = zext_ln154_fu_2074_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_d0 = data_y_0_reg_3175;
assign DATA_y_we0 = DATA_y_we0_local;
assign add_ln127_fu_1464_p2 = (tid_7_reg_2222 + 7'd2);
assign add_ln130_fu_1153_p2 = (zext_ln127_2_fu_1150_p1 + 8'd65);
assign add_ln132_fu_1165_p2 = (zext_ln127_1_reg_2268 + 9'd193);
assign add_ln134_1_fu_1224_p2 = ($signed(zext_ln127_1_reg_2268) + $signed(9'd321));
assign add_ln134_fu_1129_p2 = ($signed(zext_ln127_1_fu_1126_p1) + $signed(9'd320));
assign add_ln136_fu_1235_p2 = ($signed(tid_7_reg_2222) + $signed(7'd65));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001_ignoreCallOp1577 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001_ignoreCallOp1579 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001_ignoreCallOp1566 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_ignoreCallOp1566 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001_ignoreCallOp1567 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_ignoreCallOp1568 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001_ignoreCallOp1569 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001_ignoreCallOp1571 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001_ignoreCallOp1573 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001_ignoreCallOp1575 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bit_sel10_fu_1770_p3 = bitcast_ln148_30_fu_1766_p1[64'd63];
assign bit_sel11_fu_1941_p3 = bitcast_ln148_12_fu_1938_p1[64'd63];
assign bit_sel12_fu_1975_p3 = bitcast_ln148_14_fu_1972_p1[64'd63];
assign bit_sel13_fu_1734_p3 = bitcast_ln148_28_fu_1730_p1[64'd63];
assign bit_sel14_fu_2082_p3 = bitcast_ln148_16_fu_2079_p1[64'd63];
assign bit_sel15_fu_2116_p3 = bitcast_ln148_18_fu_2113_p1[64'd63];
assign bit_sel16_fu_1907_p3 = bitcast_ln148_26_fu_1904_p1[64'd63];
assign bit_sel17_fu_1665_p3 = bitcast_ln148_20_fu_1662_p1[64'd63];
assign bit_sel18_fu_1699_p3 = bitcast_ln148_22_fu_1696_p1[64'd63];
assign bit_sel19_fu_1873_p3 = bitcast_ln148_24_fu_1870_p1[64'd63];
assign bit_sel1_fu_2150_p3 = bitcast_ln148_36_fu_2147_p1[64'd63];
assign bit_sel2_fu_1525_p3 = bitcast_ln148_fu_1522_p1[64'd63];
assign bit_sel3_fu_1559_p3 = bitcast_ln148_2_fu_1556_p1[64'd63];
assign bit_sel4_fu_2043_p3 = bitcast_ln148_34_fu_2040_p1[64'd63];
assign bit_sel5_fu_1805_p3 = bitcast_ln148_4_fu_1802_p1[64'd63];
assign bit_sel6_fu_1839_p3 = bitcast_ln148_6_fu_1836_p1[64'd63];
assign bit_sel7_fu_2009_p3 = bitcast_ln148_32_fu_2006_p1[64'd63];
assign bit_sel8_fu_1594_p3 = bitcast_ln148_8_fu_1590_p1[64'd63];
assign bit_sel9_fu_1630_p3 = bitcast_ln148_10_fu_1626_p1[64'd63];
assign bit_sel_fu_2184_p3 = bitcast_ln148_38_fu_2181_p1[64'd63];
assign bitcast_ln133_1_fu_1504_p1 = reg_969;
assign bitcast_ln133_fu_1480_p1 = reg_969;
assign bitcast_ln134_1_fu_1310_p1 = reg_981;
assign bitcast_ln134_fu_1188_p1 = reg_981;
assign bitcast_ln135_1_fu_1446_p1 = reg_969;
assign bitcast_ln135_fu_1380_p1 = reg_969;
assign bitcast_ln136_1_fu_1326_p1 = reg_985;
assign bitcast_ln136_fu_1194_p1 = reg_985;
assign bitcast_ln142_1_fu_1516_p1 = reg_977;
assign bitcast_ln142_fu_1492_p1 = reg_977;
assign bitcast_ln143_1_fu_1344_p1 = reg_989;
assign bitcast_ln143_fu_1212_p1 = reg_989;
assign bitcast_ln144_1_fu_1458_p1 = reg_977;
assign bitcast_ln144_fu_1392_p1 = reg_977;
assign bitcast_ln145_1_fu_1350_p1 = reg_993;
assign bitcast_ln145_fu_1218_p1 = reg_993;
assign bitcast_ln148_10_fu_1626_p1 = reg_1001;
assign bitcast_ln148_11_fu_1656_p1 = xor_ln148_5_fu_1648_p3;
assign bitcast_ln148_12_fu_1938_p1 = sub2_reg_2888_pp0_iter3_reg;
assign bitcast_ln148_13_fu_1967_p1 = xor_ln148_6_fu_1959_p3;
assign bitcast_ln148_14_fu_1972_p1 = tmp_reg_2882_pp0_iter3_reg;
assign bitcast_ln148_15_fu_2001_p1 = xor_ln148_7_fu_1993_p3;
assign bitcast_ln148_16_fu_2079_p1 = sub10_reg_3202;
assign bitcast_ln148_17_fu_2108_p1 = xor_ln148_8_fu_2100_p3;
assign bitcast_ln148_18_fu_2113_p1 = tmp_2_reg_3186_pp0_iter5_reg;
assign bitcast_ln148_19_fu_2142_p1 = xor_ln148_9_fu_2134_p3;
assign bitcast_ln148_1_fu_1551_p1 = xor_ln1_fu_1543_p3;
assign bitcast_ln148_20_fu_1662_p1 = sub104_1_reg_2726;
assign bitcast_ln148_21_fu_1691_p1 = xor_ln148_s_fu_1683_p3;
assign bitcast_ln148_22_fu_1696_p1 = tmp_1_3_reg_2720;
assign bitcast_ln148_23_fu_1725_p1 = xor_ln148_10_fu_1717_p3;
assign bitcast_ln148_24_fu_1870_p1 = sub120_1_reg_2808;
assign bitcast_ln148_25_fu_1899_p1 = xor_ln148_11_fu_1891_p3;
assign bitcast_ln148_26_fu_1904_p1 = tmp_1_4_reg_2802;
assign bitcast_ln148_27_fu_1933_p1 = xor_ln148_12_fu_1925_p3;
assign bitcast_ln148_28_fu_1730_p1 = reg_997;
assign bitcast_ln148_29_fu_1760_p1 = xor_ln148_13_fu_1752_p3;
assign bitcast_ln148_2_fu_1556_p1 = tmp_1_reg_2662;
assign bitcast_ln148_30_fu_1766_p1 = reg_1001;
assign bitcast_ln148_31_fu_1796_p1 = xor_ln148_14_fu_1788_p3;
assign bitcast_ln148_32_fu_2006_p1 = sub208_1_reg_2942_pp0_iter3_reg;
assign bitcast_ln148_33_fu_2035_p1 = xor_ln148_15_fu_2027_p3;
assign bitcast_ln148_34_fu_2040_p1 = tmp_3_reg_2936_pp0_iter3_reg;
assign bitcast_ln148_35_fu_2069_p1 = xor_ln148_16_fu_2061_p3;
assign bitcast_ln148_36_fu_2147_p1 = sub287_1_reg_3256_pp0_iter5_reg;
assign bitcast_ln148_37_fu_2176_p1 = xor_ln148_17_fu_2168_p3;
assign bitcast_ln148_38_fu_2181_p1 = tmp_4_reg_3250_pp0_iter5_reg;
assign bitcast_ln148_39_fu_2210_p1 = xor_ln148_18_fu_2202_p3;
assign bitcast_ln148_3_fu_1585_p1 = xor_ln148_1_fu_1577_p3;
assign bitcast_ln148_4_fu_1802_p1 = sub5_reg_2762_pp0_iter2_reg;
assign bitcast_ln148_5_fu_1831_p1 = xor_ln148_2_fu_1823_p3;
assign bitcast_ln148_6_fu_1836_p1 = tmp_1_1_reg_2756_pp0_iter2_reg;
assign bitcast_ln148_7_fu_1865_p1 = xor_ln148_3_fu_1857_p3;
assign bitcast_ln148_8_fu_1590_p1 = reg_997;
assign bitcast_ln148_9_fu_1620_p1 = xor_ln148_4_fu_1612_p3;
assign bitcast_ln148_fu_1522_p1 = sub3_reg_2668;
assign c0_x_66_fu_1176_p1 = reg_965;
assign c0_x_67_fu_1361_p1 = reg_965;
assign c0_x_68_fu_1182_p1 = reg_969;
assign c0_x_69_fu_1498_p1 = reg_965;
assign c0_x_70_fu_1273_p1 = reg_965;
assign c0_x_71_fu_1421_p1 = reg_965;
assign c0_x_72_fu_1304_p1 = reg_969;
assign c0_x_fu_1474_p1 = reg_965;
assign c0_y_66_fu_1200_p1 = reg_973;
assign c0_y_67_fu_1386_p1 = reg_973;
assign c0_y_68_fu_1206_p1 = reg_977;
assign c0_y_69_fu_1510_p1 = reg_973;
assign c0_y_70_fu_1332_p1 = reg_973;
assign c0_y_71_fu_1452_p1 = reg_973;
assign c0_y_72_fu_1338_p1 = reg_977;
assign c0_y_fu_1486_p1 = reg_973;
assign grp_fu_576_p_ce = 1'b1;
assign grp_fu_576_p_din0 = grp_fu_831_p0;
assign grp_fu_576_p_din1 = grp_fu_831_p1;
assign grp_fu_576_p_opcode = 2'd0;
assign grp_fu_580_p_ce = 1'b1;
assign grp_fu_580_p_din0 = grp_fu_835_p0;
assign grp_fu_580_p_din1 = grp_fu_835_p1;
assign grp_fu_580_p_opcode = 2'd0;
assign grp_fu_584_p_ce = 1'b1;
assign grp_fu_584_p_din0 = grp_fu_839_p0;
assign grp_fu_584_p_din1 = grp_fu_839_p1;
assign grp_fu_584_p_opcode = grp_fu_839_opcode;
assign grp_fu_588_p_ce = 1'b1;
assign grp_fu_588_p_din0 = grp_fu_843_p0;
assign grp_fu_588_p_din1 = grp_fu_843_p1;
assign grp_fu_588_p_opcode = 2'd1;
assign grp_fu_592_p_ce = 1'b1;
assign grp_fu_592_p_din0 = grp_fu_847_p0;
assign grp_fu_592_p_din1 = grp_fu_847_p1;
assign grp_fu_592_p_opcode = grp_fu_847_opcode;
assign grp_fu_596_p_ce = 1'b1;
assign grp_fu_596_p_din0 = grp_fu_851_p0;
assign grp_fu_596_p_din1 = grp_fu_851_p1;
assign grp_fu_596_p_opcode = 2'd0;
assign grp_fu_600_p_ce = 1'b1;
assign grp_fu_600_p_din0 = grp_fu_855_p0;
assign grp_fu_600_p_din1 = grp_fu_855_p1;
assign grp_fu_600_p_opcode = grp_fu_855_opcode;
assign grp_fu_604_p_ce = 1'b1;
assign grp_fu_604_p_din0 = grp_fu_859_p0;
assign grp_fu_604_p_din1 = grp_fu_859_p1;
assign grp_fu_604_p_opcode = grp_fu_859_opcode;
assign grp_fu_608_p_ce = 1'b1;
assign grp_fu_608_p_din0 = grp_fu_863_p0;
assign grp_fu_608_p_din1 = grp_fu_863_p1;
assign grp_fu_608_p_opcode = grp_fu_863_opcode;
assign grp_fu_612_p_ce = 1'b1;
assign grp_fu_612_p_din0 = grp_fu_867_p0;
assign grp_fu_612_p_din1 = grp_fu_867_p1;
assign grp_fu_612_p_opcode = grp_fu_867_opcode;
assign grp_fu_616_p_ce = 1'b1;
assign grp_fu_616_p_din0 = grp_fu_871_p0;
assign grp_fu_616_p_din1 = grp_fu_871_p1;
assign grp_fu_616_p_opcode = grp_fu_871_opcode;
assign grp_fu_620_p_ce = 1'b1;
assign grp_fu_620_p_din0 = grp_fu_875_p0;
assign grp_fu_620_p_din1 = grp_fu_875_p1;
assign grp_fu_620_p_opcode = grp_fu_875_opcode;
assign grp_fu_624_p_ce = 1'b1;
assign grp_fu_624_p_din0 = grp_fu_879_p0;
assign grp_fu_624_p_din1 = grp_fu_879_p1;
assign grp_fu_624_p_opcode = grp_fu_879_opcode;
assign grp_fu_628_p_ce = 1'b1;
assign grp_fu_628_p_din0 = grp_fu_883_p0;
assign grp_fu_628_p_din1 = grp_fu_883_p1;
assign grp_fu_628_p_opcode = grp_fu_883_opcode;
assign grp_fu_632_p_ce = 1'b1;
assign grp_fu_632_p_din0 = grp_fu_887_p0;
assign grp_fu_632_p_din1 = grp_fu_887_p1;
assign grp_fu_632_p_opcode = 2'd1;
assign grp_fu_636_p_ce = 1'b1;
assign grp_fu_636_p_din0 = grp_fu_891_p0;
assign grp_fu_636_p_din1 = grp_fu_891_p1;
assign grp_fu_640_p_ce = 1'b1;
assign grp_fu_640_p_din0 = grp_fu_896_p0;
assign grp_fu_640_p_din1 = grp_fu_896_p1;
assign grp_fu_644_p_ce = 1'b1;
assign grp_fu_644_p_din0 = grp_fu_903_p0;
assign grp_fu_644_p_din1 = grp_fu_903_p1;
assign grp_twiddles8_fu_648_p_ce = grp_twiddles8_fu_798_ap_ce;
assign grp_twiddles8_fu_648_p_din1 = grp_twiddles8_fu_798_a_x_1_read;
assign grp_twiddles8_fu_648_p_din10 = grp_twiddles8_fu_798_a_y_3_read;
assign grp_twiddles8_fu_648_p_din11 = grp_twiddles8_fu_798_a_y_4_read;
assign grp_twiddles8_fu_648_p_din12 = grp_twiddles8_fu_798_a_y_5_read;
assign grp_twiddles8_fu_648_p_din13 = grp_twiddles8_fu_798_a_y_6_read;
assign grp_twiddles8_fu_648_p_din14 = grp_twiddles8_fu_798_a_y_7_read;
assign grp_twiddles8_fu_648_p_din15 = grp_twiddles8_fu_798_i;
assign grp_twiddles8_fu_648_p_din16 = 10'd512;
assign grp_twiddles8_fu_648_p_din2 = grp_twiddles8_fu_798_a_x_2_read;
assign grp_twiddles8_fu_648_p_din3 = grp_twiddles8_fu_798_a_x_3_read;
assign grp_twiddles8_fu_648_p_din4 = grp_twiddles8_fu_798_a_x_4_read;
assign grp_twiddles8_fu_648_p_din5 = grp_twiddles8_fu_798_a_x_5_read;
assign grp_twiddles8_fu_648_p_din6 = grp_twiddles8_fu_798_a_x_6_read;
assign grp_twiddles8_fu_648_p_din7 = grp_twiddles8_fu_798_a_x_7_read;
assign grp_twiddles8_fu_648_p_din8 = grp_twiddles8_fu_798_a_y_1_read;
assign grp_twiddles8_fu_648_p_din9 = grp_twiddles8_fu_798_a_y_2_read;
assign lshr_ln_fu_1398_p4 = {{tid_7_reg_2222[5:1]}};
assign or_ln3_fu_1407_p3 = {{lshr_ln_fu_1398_p4}, {1'd1}};
assign sext_ln132_fu_1116_p1 = zext_ln130_cast_fu_1102_p3;
assign sext_ln135_1_fu_1316_p1 = zext_ln131_1_cast_fu_1288_p4;
assign sext_ln135_fu_1263_p1 = zext_ln131_cast_fu_1250_p3;
assign sext_ln136_1_fu_1240_p1 = $signed(add_ln136_fu_1235_p2);
assign sext_ln136_fu_1141_p1 = zext_ln130_cast_reg_2243;
assign tmp_s_fu_1279_p4 = {{tid_7_reg_2222[6:1]}};
assign trunc_ln127_fu_1098_p1 = ap_sig_allocacmp_tid_7[5:0];
assign trunc_ln148_10_fu_1679_p1 = bitcast_ln148_20_fu_1662_p1[62:0];
assign trunc_ln148_11_fu_1713_p1 = bitcast_ln148_22_fu_1696_p1[62:0];
assign trunc_ln148_12_fu_1887_p1 = bitcast_ln148_24_fu_1870_p1[62:0];
assign trunc_ln148_13_fu_1921_p1 = bitcast_ln148_26_fu_1904_p1[62:0];
assign trunc_ln148_14_fu_1748_p1 = bitcast_ln148_28_fu_1730_p1[62:0];
assign trunc_ln148_15_fu_1784_p1 = bitcast_ln148_30_fu_1766_p1[62:0];
assign trunc_ln148_16_fu_2023_p1 = bitcast_ln148_32_fu_2006_p1[62:0];
assign trunc_ln148_17_fu_2057_p1 = bitcast_ln148_34_fu_2040_p1[62:0];
assign trunc_ln148_18_fu_2164_p1 = bitcast_ln148_36_fu_2147_p1[62:0];
assign trunc_ln148_19_fu_2198_p1 = bitcast_ln148_38_fu_2181_p1[62:0];
assign trunc_ln148_1_fu_1573_p1 = bitcast_ln148_2_fu_1556_p1[62:0];
assign trunc_ln148_2_fu_1819_p1 = bitcast_ln148_4_fu_1802_p1[62:0];
assign trunc_ln148_3_fu_1853_p1 = bitcast_ln148_6_fu_1836_p1[62:0];
assign trunc_ln148_4_fu_1608_p1 = bitcast_ln148_8_fu_1590_p1[62:0];
assign trunc_ln148_5_fu_1644_p1 = bitcast_ln148_10_fu_1626_p1[62:0];
assign trunc_ln148_6_fu_1955_p1 = bitcast_ln148_12_fu_1938_p1[62:0];
assign trunc_ln148_7_fu_1989_p1 = bitcast_ln148_14_fu_1972_p1[62:0];
assign trunc_ln148_8_fu_2096_p1 = bitcast_ln148_16_fu_2079_p1[62:0];
assign trunc_ln148_9_fu_2130_p1 = bitcast_ln148_18_fu_2113_p1[62:0];
assign trunc_ln148_fu_1539_p1 = bitcast_ln148_fu_1522_p1[62:0];
assign work_x_address0 = work_x_address0_local;
assign work_x_address1 = work_x_address1_local;
assign work_x_ce0 = work_x_ce0_local;
assign work_x_ce1 = work_x_ce1_local;
assign work_y_address0 = work_y_address0_local;
assign work_y_address1 = work_y_address1_local;
assign work_y_ce0 = work_y_ce0_local;
assign work_y_ce1 = work_y_ce1_local;
assign xor_ln148_10_fu_1717_p3 = {{xor_ln148_29_fu_1707_p2}, {trunc_ln148_11_fu_1713_p1}};
assign xor_ln148_11_fu_1891_p3 = {{xor_ln148_30_fu_1881_p2}, {trunc_ln148_12_fu_1887_p1}};
assign xor_ln148_12_fu_1925_p3 = {{xor_ln148_31_fu_1915_p2}, {trunc_ln148_13_fu_1921_p1}};
assign xor_ln148_13_fu_1752_p3 = {{xor_ln148_32_fu_1742_p2}, {trunc_ln148_14_fu_1748_p1}};
assign xor_ln148_14_fu_1788_p3 = {{xor_ln148_33_fu_1778_p2}, {trunc_ln148_15_fu_1784_p1}};
assign xor_ln148_15_fu_2027_p3 = {{xor_ln148_34_fu_2017_p2}, {trunc_ln148_16_fu_2023_p1}};
assign xor_ln148_16_fu_2061_p3 = {{xor_ln148_35_fu_2051_p2}, {trunc_ln148_17_fu_2057_p1}};
assign xor_ln148_17_fu_2168_p3 = {{xor_ln148_36_fu_2158_p2}, {trunc_ln148_18_fu_2164_p1}};
assign xor_ln148_18_fu_2202_p3 = {{xor_ln148_37_fu_2192_p2}, {trunc_ln148_19_fu_2198_p1}};
assign xor_ln148_19_fu_1533_p2 = (bit_sel2_fu_1525_p3 ^ 1'd1);
assign xor_ln148_1_fu_1577_p3 = {{xor_ln148_fu_1567_p2}, {trunc_ln148_1_fu_1573_p1}};
assign xor_ln148_20_fu_1813_p2 = (bit_sel5_fu_1805_p3 ^ 1'd1);
assign xor_ln148_21_fu_1847_p2 = (bit_sel6_fu_1839_p3 ^ 1'd1);
assign xor_ln148_22_fu_1602_p2 = (bit_sel8_fu_1594_p3 ^ 1'd1);
assign xor_ln148_23_fu_1638_p2 = (bit_sel9_fu_1630_p3 ^ 1'd1);
assign xor_ln148_24_fu_1949_p2 = (bit_sel11_fu_1941_p3 ^ 1'd1);
assign xor_ln148_25_fu_1983_p2 = (bit_sel12_fu_1975_p3 ^ 1'd1);
assign xor_ln148_26_fu_2090_p2 = (bit_sel14_fu_2082_p3 ^ 1'd1);
assign xor_ln148_27_fu_2124_p2 = (bit_sel15_fu_2116_p3 ^ 1'd1);
assign xor_ln148_28_fu_1673_p2 = (bit_sel17_fu_1665_p3 ^ 1'd1);
assign xor_ln148_29_fu_1707_p2 = (bit_sel18_fu_1699_p3 ^ 1'd1);
assign xor_ln148_2_fu_1823_p3 = {{xor_ln148_20_fu_1813_p2}, {trunc_ln148_2_fu_1819_p1}};
assign xor_ln148_30_fu_1881_p2 = (bit_sel19_fu_1873_p3 ^ 1'd1);
assign xor_ln148_31_fu_1915_p2 = (bit_sel16_fu_1907_p3 ^ 1'd1);
assign xor_ln148_32_fu_1742_p2 = (bit_sel13_fu_1734_p3 ^ 1'd1);
assign xor_ln148_33_fu_1778_p2 = (bit_sel10_fu_1770_p3 ^ 1'd1);
assign xor_ln148_34_fu_2017_p2 = (bit_sel7_fu_2009_p3 ^ 1'd1);
assign xor_ln148_35_fu_2051_p2 = (bit_sel4_fu_2043_p3 ^ 1'd1);
assign xor_ln148_36_fu_2158_p2 = (bit_sel1_fu_2150_p3 ^ 1'd1);
assign xor_ln148_37_fu_2192_p2 = (bit_sel_fu_2184_p3 ^ 1'd1);
assign xor_ln148_3_fu_1857_p3 = {{xor_ln148_21_fu_1847_p2}, {trunc_ln148_3_fu_1853_p1}};
assign xor_ln148_4_fu_1612_p3 = {{xor_ln148_22_fu_1602_p2}, {trunc_ln148_4_fu_1608_p1}};
assign xor_ln148_5_fu_1648_p3 = {{xor_ln148_23_fu_1638_p2}, {trunc_ln148_5_fu_1644_p1}};
assign xor_ln148_6_fu_1959_p3 = {{xor_ln148_24_fu_1949_p2}, {trunc_ln148_6_fu_1955_p1}};
assign xor_ln148_7_fu_1993_p3 = {{xor_ln148_25_fu_1983_p2}, {trunc_ln148_7_fu_1989_p1}};
assign xor_ln148_8_fu_2100_p3 = {{xor_ln148_26_fu_2090_p2}, {trunc_ln148_8_fu_2096_p1}};
assign xor_ln148_9_fu_2134_p3 = {{xor_ln148_27_fu_2124_p2}, {trunc_ln148_9_fu_2130_p1}};
assign xor_ln148_fu_1567_p2 = (bit_sel3_fu_1559_p3 ^ 1'd1);
assign xor_ln148_s_fu_1683_p3 = {{xor_ln148_28_fu_1673_p2}, {trunc_ln148_10_fu_1679_p1}};
assign xor_ln1_fu_1543_p3 = {{xor_ln148_19_fu_1533_p2}, {trunc_ln148_fu_1539_p1}};
assign zext_ln127_1_fu_1126_p1 = tid_7_reg_2222;
assign zext_ln127_2_fu_1150_p1 = tid_7_reg_2222;
assign zext_ln127_fu_1356_p1 = tid_7_reg_2222;
assign zext_ln129_fu_1415_p1 = or_ln3_fu_1407_p3;
assign zext_ln130_1_fu_1159_p1 = add_ln130_fu_1153_p2;
assign zext_ln130_cast_fu_1102_p3 = {{1'd1}, {trunc_ln127_fu_1098_p1}};
assign zext_ln130_fu_1110_p1 = $unsigned(zext_ln130_cast_fu_1102_p3);
assign zext_ln131_1_cast_fu_1288_p4 = {{{{1'd1}, {tmp_s_fu_1279_p4}}}, {1'd1}};
assign zext_ln131_1_fu_1298_p1 = $unsigned(zext_ln131_1_cast_fu_1288_p4);
assign zext_ln131_cast_fu_1250_p3 = {{1'd1}, {tid_7_reg_2222}};
assign zext_ln131_fu_1257_p1 = $unsigned(zext_ln131_cast_fu_1250_p3);
assign zext_ln132_1_fu_1170_p1 = add_ln132_fu_1165_p2;
assign zext_ln132_fu_1120_p1 = $unsigned(sext_ln132_fu_1116_p1);
assign zext_ln133_1_cast_fu_1430_p4 = {{{{1'd1}, {zext_ln133_1_fu_1427_p1}}}, {1'd1}};
assign zext_ln133_1_fu_1427_p1 = tmp_s_reg_2413;
assign zext_ln133_2_fu_1440_p1 = zext_ln133_1_cast_fu_1430_p4;
assign zext_ln133_cast_fu_1367_p3 = {{1'd1}, {zext_ln127_2_reg_2294}};
assign zext_ln133_fu_1374_p1 = zext_ln133_cast_fu_1367_p3;
assign zext_ln134_1_fu_1229_p1 = add_ln134_1_fu_1224_p2;
assign zext_ln134_fu_1135_p1 = add_ln134_fu_1129_p2;
assign zext_ln135_1_fu_1320_p1 = $unsigned(sext_ln135_1_fu_1316_p1);
assign zext_ln135_fu_1267_p1 = $unsigned(sext_ln135_fu_1263_p1);
assign zext_ln136_1_fu_1244_p1 = $unsigned(sext_ln136_1_fu_1240_p1);
assign zext_ln136_fu_1144_p1 = $unsigned(sext_ln136_fu_1141_p1);
assign zext_ln154_fu_2074_p1 = lshr_ln_reg_2536_pp0_iter3_reg;
always @ (posedge ap_clk) begin
    zext_ln130_cast_reg_2243[6] <= 1'b1;
    zext_ln127_1_reg_2268[8:7] <= 2'b00;
    zext_ln127_2_reg_2294[7] <= 1'b0;
    zext_ln127_reg_2480[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter3_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter4_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter5_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter6_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter7_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter8_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter9_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter10_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter11_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter12_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter13_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter14_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter15_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter16_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter17_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter18_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter19_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter20_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter21_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2480_pp0_iter22_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    or_ln3_reg_2541[0] <= 1'b1;
    or_ln3_reg_2541_pp0_iter1_reg[0] <= 1'b1;
    or_ln3_reg_2541_pp0_iter2_reg[0] <= 1'b1;
    or_ln3_reg_2541_pp0_iter3_reg[0] <= 1'b1;
    or_ln3_reg_2541_pp0_iter4_reg[0] <= 1'b1;
    or_ln3_reg_2541_pp0_iter5_reg[0] <= 1'b1;
    or_ln3_reg_2541_pp0_iter6_reg[0] <= 1'b1;
    or_ln3_reg_2541_pp0_iter7_reg[0] <= 1'b1;
    zext_ln129_reg_2546[0] <= 1'b1;
    zext_ln129_reg_2546[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter1_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter2_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter2_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter3_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter3_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter4_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter4_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter5_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter5_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter6_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter6_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter7_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter7_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter8_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter8_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter9_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter9_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter10_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter10_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter11_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter11_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter12_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter12_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter13_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter13_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter14_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter14_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter15_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter15_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter16_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter16_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter17_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter17_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter18_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter18_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter19_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter19_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter20_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter20_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter21_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter21_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2546_pp0_iter22_reg[0] <= 1'b1;
    zext_ln129_reg_2546_pp0_iter22_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter5_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter6_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter7_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter8_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter9_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter10_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter11_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter12_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter13_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter14_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter15_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter16_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter17_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter18_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter19_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter20_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter21_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter22_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3208_pp0_iter23_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 