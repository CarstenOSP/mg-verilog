module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,work_x_0_address0,work_x_0_ce0,work_x_0_we0,work_x_0_d0,work_x_0_address1,work_x_0_ce1,work_x_0_we1,work_x_0_d1,work_y_0_address0,work_y_0_ce0,work_y_0_we0,work_y_0_d0,work_y_0_address1,work_y_0_ce1,work_y_0_we1,work_y_0_d1,work_y_3_address0,work_y_3_ce0,work_y_3_we0,work_y_3_d0,work_y_3_address1,work_y_3_ce1,work_y_3_we1,work_y_3_d1,work_y_2_address0,work_y_2_ce0,work_y_2_we0,work_y_2_d0,work_y_2_address1,work_y_2_ce1,work_y_2_we1,work_y_2_d1,work_y_1_address0,work_y_1_ce0,work_y_1_we0,work_y_1_d0,work_y_1_address1,work_y_1_ce1,work_y_1_we1,work_y_1_d1,work_x_3_address0,work_x_3_ce0,work_x_3_we0,work_x_3_d0,work_x_3_address1,work_x_3_ce1,work_x_3_we1,work_x_3_d1,work_x_2_address0,work_x_2_ce0,work_x_2_we0,work_x_2_d0,work_x_2_address1,work_x_2_ce1,work_x_2_we1,work_x_2_d1,work_x_1_address0,work_x_1_ce0,work_x_1_we0,work_x_1_d0,work_x_1_address1,work_x_1_ce1,work_x_1_we1,work_x_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1,grp_fu_396_p_din0,grp_fu_396_p_din1,grp_fu_396_p_opcode,grp_fu_396_p_dout0,grp_fu_396_p_ce,grp_fu_400_p_din0,grp_fu_400_p_din1,grp_fu_400_p_opcode,grp_fu_400_p_dout0,grp_fu_400_p_ce,grp_fu_404_p_din0,grp_fu_404_p_din1,grp_fu_404_p_opcode,grp_fu_404_p_dout0,grp_fu_404_p_ce,grp_fu_408_p_din0,grp_fu_408_p_din1,grp_fu_408_p_opcode,grp_fu_408_p_dout0,grp_fu_408_p_ce,grp_fu_412_p_din0,grp_fu_412_p_din1,grp_fu_412_p_opcode,grp_fu_412_p_dout0,grp_fu_412_p_ce,grp_fu_416_p_din0,grp_fu_416_p_din1,grp_fu_416_p_opcode,grp_fu_416_p_dout0,grp_fu_416_p_ce,grp_fu_420_p_din0,grp_fu_420_p_din1,grp_fu_420_p_opcode,grp_fu_420_p_dout0,grp_fu_420_p_ce,grp_fu_424_p_din0,grp_fu_424_p_din1,grp_fu_424_p_opcode,grp_fu_424_p_dout0,grp_fu_424_p_ce,grp_fu_428_p_din0,grp_fu_428_p_din1,grp_fu_428_p_opcode,grp_fu_428_p_dout0,grp_fu_428_p_ce,grp_fu_432_p_din0,grp_fu_432_p_din1,grp_fu_432_p_opcode,grp_fu_432_p_dout0,grp_fu_432_p_ce,grp_fu_436_p_din0,grp_fu_436_p_din1,grp_fu_436_p_opcode,grp_fu_436_p_dout0,grp_fu_436_p_ce,grp_fu_440_p_din0,grp_fu_440_p_din1,grp_fu_440_p_opcode,grp_fu_440_p_dout0,grp_fu_440_p_ce,grp_fu_444_p_din0,grp_fu_444_p_din1,grp_fu_444_p_opcode,grp_fu_444_p_dout0,grp_fu_444_p_ce,grp_fu_448_p_din0,grp_fu_448_p_din1,grp_fu_448_p_opcode,grp_fu_448_p_dout0,grp_fu_448_p_ce,grp_fu_452_p_din0,grp_fu_452_p_din1,grp_fu_452_p_opcode,grp_fu_452_p_dout0,grp_fu_452_p_ce,grp_fu_512_p_din0,grp_fu_512_p_din1,grp_fu_512_p_dout0,grp_fu_512_p_ce,grp_fu_516_p_din0,grp_fu_516_p_din1,grp_fu_516_p_dout0,grp_fu_516_p_ce,grp_fu_520_p_din0,grp_fu_520_p_din1,grp_fu_520_p_dout0,grp_fu_520_p_ce); 
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
output  [6:0] work_x_0_address0;
output   work_x_0_ce0;
output   work_x_0_we0;
output  [63:0] work_x_0_d0;
output  [6:0] work_x_0_address1;
output   work_x_0_ce1;
output   work_x_0_we1;
output  [63:0] work_x_0_d1;
output  [6:0] work_y_0_address0;
output   work_y_0_ce0;
output   work_y_0_we0;
output  [63:0] work_y_0_d0;
output  [6:0] work_y_0_address1;
output   work_y_0_ce1;
output   work_y_0_we1;
output  [63:0] work_y_0_d1;
output  [6:0] work_y_3_address0;
output   work_y_3_ce0;
output   work_y_3_we0;
output  [63:0] work_y_3_d0;
output  [6:0] work_y_3_address1;
output   work_y_3_ce1;
output   work_y_3_we1;
output  [63:0] work_y_3_d1;
output  [6:0] work_y_2_address0;
output   work_y_2_ce0;
output   work_y_2_we0;
output  [63:0] work_y_2_d0;
output  [6:0] work_y_2_address1;
output   work_y_2_ce1;
output   work_y_2_we1;
output  [63:0] work_y_2_d1;
output  [6:0] work_y_1_address0;
output   work_y_1_ce0;
output   work_y_1_we0;
output  [63:0] work_y_1_d0;
output  [6:0] work_y_1_address1;
output   work_y_1_ce1;
output   work_y_1_we1;
output  [63:0] work_y_1_d1;
output  [6:0] work_x_3_address0;
output   work_x_3_ce0;
output   work_x_3_we0;
output  [63:0] work_x_3_d0;
output  [6:0] work_x_3_address1;
output   work_x_3_ce1;
output   work_x_3_we1;
output  [63:0] work_x_3_d1;
output  [6:0] work_x_2_address0;
output   work_x_2_ce0;
output   work_x_2_we0;
output  [63:0] work_x_2_d0;
output  [6:0] work_x_2_address1;
output   work_x_2_ce1;
output   work_x_2_we1;
output  [63:0] work_x_2_d1;
output  [6:0] work_x_1_address0;
output   work_x_1_ce0;
output   work_x_1_we0;
output  [63:0] work_x_1_d0;
output  [6:0] work_x_1_address1;
output   work_x_1_ce1;
output   work_x_1_we1;
output  [63:0] work_x_1_d1;
output  [6:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [6:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [6:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [6:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
output  [6:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [6:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
input  [63:0] DATA_y_2_q1;
output  [6:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [6:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
input  [63:0] DATA_y_3_q1;
output  [6:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [6:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [6:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [6:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [6:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [6:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [6:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [6:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
output  [63:0] grp_fu_396_p_din0;
output  [63:0] grp_fu_396_p_din1;
output  [1:0] grp_fu_396_p_opcode;
input  [63:0] grp_fu_396_p_dout0;
output   grp_fu_396_p_ce;
output  [63:0] grp_fu_400_p_din0;
output  [63:0] grp_fu_400_p_din1;
output  [1:0] grp_fu_400_p_opcode;
input  [63:0] grp_fu_400_p_dout0;
output   grp_fu_400_p_ce;
output  [63:0] grp_fu_404_p_din0;
output  [63:0] grp_fu_404_p_din1;
output  [1:0] grp_fu_404_p_opcode;
input  [63:0] grp_fu_404_p_dout0;
output   grp_fu_404_p_ce;
output  [63:0] grp_fu_408_p_din0;
output  [63:0] grp_fu_408_p_din1;
output  [1:0] grp_fu_408_p_opcode;
input  [63:0] grp_fu_408_p_dout0;
output   grp_fu_408_p_ce;
output  [63:0] grp_fu_412_p_din0;
output  [63:0] grp_fu_412_p_din1;
output  [1:0] grp_fu_412_p_opcode;
input  [63:0] grp_fu_412_p_dout0;
output   grp_fu_412_p_ce;
output  [63:0] grp_fu_416_p_din0;
output  [63:0] grp_fu_416_p_din1;
output  [1:0] grp_fu_416_p_opcode;
input  [63:0] grp_fu_416_p_dout0;
output   grp_fu_416_p_ce;
output  [63:0] grp_fu_420_p_din0;
output  [63:0] grp_fu_420_p_din1;
output  [1:0] grp_fu_420_p_opcode;
input  [63:0] grp_fu_420_p_dout0;
output   grp_fu_420_p_ce;
output  [63:0] grp_fu_424_p_din0;
output  [63:0] grp_fu_424_p_din1;
output  [1:0] grp_fu_424_p_opcode;
input  [63:0] grp_fu_424_p_dout0;
output   grp_fu_424_p_ce;
output  [63:0] grp_fu_428_p_din0;
output  [63:0] grp_fu_428_p_din1;
output  [1:0] grp_fu_428_p_opcode;
input  [63:0] grp_fu_428_p_dout0;
output   grp_fu_428_p_ce;
output  [63:0] grp_fu_432_p_din0;
output  [63:0] grp_fu_432_p_din1;
output  [1:0] grp_fu_432_p_opcode;
input  [63:0] grp_fu_432_p_dout0;
output   grp_fu_432_p_ce;
output  [63:0] grp_fu_436_p_din0;
output  [63:0] grp_fu_436_p_din1;
output  [1:0] grp_fu_436_p_opcode;
input  [63:0] grp_fu_436_p_dout0;
output   grp_fu_436_p_ce;
output  [63:0] grp_fu_440_p_din0;
output  [63:0] grp_fu_440_p_din1;
output  [1:0] grp_fu_440_p_opcode;
input  [63:0] grp_fu_440_p_dout0;
output   grp_fu_440_p_ce;
output  [63:0] grp_fu_444_p_din0;
output  [63:0] grp_fu_444_p_din1;
output  [1:0] grp_fu_444_p_opcode;
input  [63:0] grp_fu_444_p_dout0;
output   grp_fu_444_p_ce;
output  [63:0] grp_fu_448_p_din0;
output  [63:0] grp_fu_448_p_din1;
output  [1:0] grp_fu_448_p_opcode;
input  [63:0] grp_fu_448_p_dout0;
output   grp_fu_448_p_ce;
output  [63:0] grp_fu_452_p_din0;
output  [63:0] grp_fu_452_p_din1;
output  [0:0] grp_fu_452_p_opcode;
input  [63:0] grp_fu_452_p_dout0;
output   grp_fu_452_p_ce;
output  [63:0] grp_fu_512_p_din0;
output  [63:0] grp_fu_512_p_din1;
input  [63:0] grp_fu_512_p_dout0;
output   grp_fu_512_p_ce;
output  [63:0] grp_fu_516_p_din0;
output  [63:0] grp_fu_516_p_din1;
input  [63:0] grp_fu_516_p_dout0;
output   grp_fu_516_p_ce;
output  [63:0] grp_fu_520_p_din0;
output  [63:0] grp_fu_520_p_din1;
input  [63:0] grp_fu_520_p_dout0;
output   grp_fu_520_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln365_reg_1626;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_966;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_970;
wire    ap_block_pp0_stage3_11001;
reg   [6:0] tid_5_reg_1619;
reg   [6:0] tid_5_reg_1619_pp0_iter1_reg;
reg   [6:0] tid_5_reg_1619_pp0_iter2_reg;
reg   [6:0] tid_5_reg_1619_pp0_iter3_reg;
reg   [6:0] tid_5_reg_1619_pp0_iter4_reg;
reg   [6:0] tid_5_reg_1619_pp0_iter5_reg;
reg   [6:0] tid_5_reg_1619_pp0_iter6_reg;
wire   [0:0] icmp_ln365_fu_982_p2;
wire   [1:0] trunc_ln365_fu_988_p1;
reg   [1:0] trunc_ln365_reg_1630;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter1_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter2_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter3_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter4_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter5_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter6_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter7_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter8_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter9_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter10_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter11_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter12_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter13_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter14_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter15_reg;
reg   [1:0] trunc_ln365_reg_1630_pp0_iter16_reg;
reg   [63:0] c0_y_reg_1714;
reg   [63:0] c0_y_61_reg_1720;
reg   [63:0] c0_y_62_reg_1726;
reg   [63:0] c0_y_63_reg_1731;
reg   [63:0] DATA_y_load_8_reg_1737;
reg   [63:0] DATA_y_1_load_8_reg_1743;
reg   [63:0] DATA_y_2_load_8_reg_1749;
reg   [63:0] DATA_y_3_load_8_reg_1754;
reg   [63:0] c0_x_reg_1760;
reg   [63:0] c0_x_61_reg_1766;
reg   [63:0] c0_x_62_reg_1772;
reg   [63:0] c0_x_63_reg_1777;
reg   [63:0] DATA_x_load_14_reg_1783;
reg   [63:0] DATA_x_1_load_14_reg_1789;
reg   [63:0] DATA_x_2_load_14_reg_1795;
reg   [63:0] DATA_x_3_load_14_reg_1800;
reg   [63:0] c0_x_36_reg_1806;
reg   [63:0] c0_y_43_reg_1812;
reg   [63:0] tmp_1_reg_1818;
reg   [63:0] sub_reg_1824;
reg   [63:0] tmp_1_11_reg_1830;
reg   [63:0] tmp_1_11_reg_1830_pp0_iter3_reg;
reg   [63:0] tmp_1_11_reg_1830_pp0_iter4_reg;
reg   [63:0] sub12_reg_1836;
reg   [63:0] sub12_reg_1836_pp0_iter3_reg;
reg   [63:0] sub12_reg_1836_pp0_iter4_reg;
reg   [63:0] add12_reg_1842;
reg   [63:0] add13_reg_1848;
reg   [63:0] tmp_1_12_reg_1854;
reg   [63:0] c0_x_64_reg_1859;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_64_reg_1865;
reg   [63:0] c0_x_35_reg_1871;
reg   [63:0] c0_x_35_reg_1871_pp0_iter3_reg;
reg   [63:0] c0_x_35_reg_1871_pp0_iter4_reg;
reg   [63:0] c0_x_35_reg_1871_pp0_iter5_reg;
reg   [63:0] c0_x_35_reg_1871_pp0_iter6_reg;
reg   [63:0] c0_y_42_reg_1877;
reg   [63:0] c0_y_42_reg_1877_pp0_iter3_reg;
reg   [63:0] c0_y_42_reg_1877_pp0_iter4_reg;
reg   [63:0] c0_y_42_reg_1877_pp0_iter5_reg;
reg   [63:0] c0_y_42_reg_1877_pp0_iter6_reg;
reg   [63:0] add_reg_1883;
reg   [63:0] add11_reg_1889;
wire   [63:0] bitcast_ln386_1_fu_1073_p1;
wire   [63:0] bitcast_ln386_3_fu_1107_p1;
wire   [63:0] bitcast_ln386_9_fu_1141_p1;
wire   [63:0] bitcast_ln386_11_fu_1177_p1;
reg   [63:0] sub14_reg_1917;
reg   [63:0] add14_reg_1922;
reg   [63:0] mul_reg_1927;
reg   [63:0] mul6_reg_1932;
reg   [63:0] sub16_reg_1937;
reg   [63:0] add16_reg_1942;
reg   [63:0] tmp_16_reg_1947;
reg   [63:0] tmp_16_reg_1947_pp0_iter5_reg;
reg   [63:0] tmp_16_reg_1947_pp0_iter6_reg;
reg   [63:0] c0_x_65_reg_1953;
reg   [63:0] c0_y_65_reg_1959;
reg   [63:0] add17_reg_1965;
reg   [63:0] add18_reg_1971;
reg   [63:0] sub17_reg_1977;
reg   [63:0] sub17_reg_1977_pp0_iter5_reg;
reg   [63:0] sub17_reg_1977_pp0_iter6_reg;
wire   [63:0] bitcast_ln386_5_fu_1212_p1;
wire   [63:0] bitcast_ln386_7_fu_1246_p1;
reg   [63:0] c0_x_38_reg_1993;
reg   [63:0] c0_x_38_reg_1993_pp0_iter5_reg;
reg   [63:0] c0_x_38_reg_1993_pp0_iter6_reg;
reg   [63:0] c0_x_38_reg_1993_pp0_iter7_reg;
reg   [63:0] c0_x_38_reg_1993_pp0_iter8_reg;
reg   [63:0] c0_y_45_reg_1999;
reg   [63:0] c0_y_45_reg_1999_pp0_iter5_reg;
reg   [63:0] c0_y_45_reg_1999_pp0_iter6_reg;
reg   [63:0] c0_y_45_reg_1999_pp0_iter7_reg;
reg   [63:0] c0_y_45_reg_1999_pp0_iter8_reg;
reg   [63:0] c0_x_37_reg_2005;
reg   [63:0] c0_y_44_reg_2011;
reg   [63:0] mul7_reg_2017;
reg   [63:0] mul8_reg_2023;
reg   [63:0] sub15_reg_2029;
reg   [63:0] add15_reg_2035;
reg   [63:0] mul9_reg_2041;
reg   [63:0] mul10_reg_2046;
reg   [63:0] add19_reg_2051;
reg   [63:0] add20_reg_2056;
wire   [4:0] lshr_ln114_1_fu_1251_p4;
reg   [4:0] lshr_ln114_1_reg_2061;
reg   [4:0] lshr_ln114_1_reg_2061_pp0_iter8_reg;
reg   [4:0] lshr_ln114_1_reg_2061_pp0_iter9_reg;
reg   [4:0] lshr_ln114_1_reg_2061_pp0_iter10_reg;
reg   [4:0] lshr_ln114_1_reg_2061_pp0_iter11_reg;
reg   [4:0] lshr_ln114_1_reg_2061_pp0_iter12_reg;
reg   [4:0] lshr_ln114_1_reg_2061_pp0_iter13_reg;
reg   [4:0] lshr_ln114_1_reg_2061_pp0_iter14_reg;
wire   [63:0] bitcast_ln386_13_fu_1301_p1;
wire   [63:0] bitcast_ln386_15_fu_1335_p1;
reg   [3:0] part_sel_reg_2078;
reg   [3:0] part_sel_reg_2078_pp0_iter8_reg;
reg   [3:0] part_sel_reg_2078_pp0_iter9_reg;
reg   [3:0] part_sel_reg_2078_pp0_iter10_reg;
wire   [63:0] bitcast_ln393_fu_1356_p1;
reg   [63:0] bitcast_ln393_reg_2083;
reg   [63:0] bitcast_ln393_reg_2083_pp0_iter8_reg;
reg   [63:0] bitcast_ln393_reg_2083_pp0_iter9_reg;
reg   [63:0] bitcast_ln393_reg_2083_pp0_iter10_reg;
reg   [63:0] bitcast_ln393_reg_2083_pp0_iter11_reg;
reg   [63:0] bitcast_ln393_reg_2083_pp0_iter12_reg;
reg   [63:0] bitcast_ln393_reg_2083_pp0_iter13_reg;
reg   [63:0] bitcast_ln393_reg_2083_pp0_iter14_reg;
wire   [63:0] bitcast_ln402_fu_1367_p1;
reg   [63:0] bitcast_ln402_reg_2091;
reg   [63:0] bitcast_ln402_reg_2091_pp0_iter8_reg;
reg   [63:0] bitcast_ln402_reg_2091_pp0_iter9_reg;
reg   [63:0] bitcast_ln402_reg_2091_pp0_iter10_reg;
reg   [63:0] bitcast_ln402_reg_2091_pp0_iter11_reg;
reg   [63:0] bitcast_ln402_reg_2091_pp0_iter12_reg;
reg   [63:0] bitcast_ln402_reg_2091_pp0_iter13_reg;
reg   [63:0] bitcast_ln402_reg_2091_pp0_iter14_reg;
reg   [63:0] bitcast_ln402_reg_2091_pp0_iter15_reg;
reg   [63:0] add23_reg_2099;
reg   [63:0] add23_reg_2099_pp0_iter9_reg;
reg   [63:0] tmp_17_reg_2105;
reg   [63:0] tmp_17_reg_2105_pp0_iter9_reg;
reg   [63:0] tmp_17_reg_2105_pp0_iter10_reg;
reg   [63:0] c0_x_66_reg_2111;
reg   [63:0] sub24_reg_2117;
reg   [63:0] sub24_reg_2117_pp0_iter9_reg;
reg   [63:0] sub18_reg_2123;
reg   [63:0] sub19_reg_2129;
reg   [63:0] c0_y_66_reg_2135;
reg   [63:0] c0_x_39_reg_2141;
reg   [63:0] c0_x_39_reg_2141_pp0_iter9_reg;
reg   [63:0] c0_x_39_reg_2141_pp0_iter10_reg;
reg   [63:0] c0_x_39_reg_2141_pp0_iter11_reg;
reg   [63:0] c0_y_46_reg_2147;
reg   [63:0] c0_y_46_reg_2147_pp0_iter9_reg;
reg   [63:0] c0_y_46_reg_2147_pp0_iter10_reg;
reg   [63:0] c0_y_46_reg_2147_pp0_iter11_reg;
reg   [63:0] c0_y_46_reg_2147_pp0_iter12_reg;
reg   [63:0] add24_reg_2153;
reg   [63:0] mul11_reg_2159;
wire   [63:0] bitcast_ln386_17_fu_1400_p1;
reg   [63:0] mul12_reg_2169;
reg   [63:0] add26_reg_2174;
wire   [63:0] bitcast_ln391_fu_1405_p1;
reg   [63:0] bitcast_ln391_reg_2179;
reg   [63:0] add22_reg_2187;
wire   [63:0] bitcast_ln386_19_fu_1438_p1;
wire  signed [4:0] zext_ln391_cast_fu_1443_p3;
reg  signed [4:0] zext_ln391_cast_reg_2197;
reg  signed [4:0] zext_ln391_cast_reg_2197_pp0_iter12_reg;
reg  signed [4:0] zext_ln391_cast_reg_2197_pp0_iter13_reg;
reg  signed [4:0] zext_ln391_cast_reg_2197_pp0_iter14_reg;
reg  signed [4:0] zext_ln391_cast_reg_2197_pp0_iter15_reg;
wire   [63:0] bitcast_ln394_fu_1470_p1;
reg   [63:0] bitcast_ln394_reg_2203;
reg   [63:0] bitcast_ln394_reg_2203_pp0_iter12_reg;
reg   [63:0] bitcast_ln394_reg_2203_pp0_iter13_reg;
reg   [63:0] bitcast_ln394_reg_2203_pp0_iter14_reg;
wire   [63:0] bitcast_ln395_fu_1474_p1;
reg   [63:0] bitcast_ln395_reg_2211;
reg   [63:0] bitcast_ln395_reg_2211_pp0_iter12_reg;
reg   [63:0] bitcast_ln395_reg_2211_pp0_iter13_reg;
reg   [63:0] bitcast_ln395_reg_2211_pp0_iter14_reg;
wire   [63:0] bitcast_ln403_fu_1485_p1;
reg   [63:0] bitcast_ln403_reg_2219;
reg   [63:0] bitcast_ln403_reg_2219_pp0_iter12_reg;
reg   [63:0] bitcast_ln403_reg_2219_pp0_iter13_reg;
reg   [63:0] bitcast_ln403_reg_2219_pp0_iter14_reg;
reg   [63:0] bitcast_ln403_reg_2219_pp0_iter15_reg;
wire   [63:0] bitcast_ln404_fu_1489_p1;
reg   [63:0] bitcast_ln404_reg_2227;
reg   [63:0] bitcast_ln404_reg_2227_pp0_iter12_reg;
reg   [63:0] bitcast_ln404_reg_2227_pp0_iter13_reg;
reg   [63:0] bitcast_ln404_reg_2227_pp0_iter14_reg;
reg   [63:0] bitcast_ln404_reg_2227_pp0_iter15_reg;
wire  signed [5:0] zext_ln392_cast_fu_1493_p3;
reg  signed [5:0] zext_ln392_cast_reg_2235;
reg  signed [5:0] zext_ln392_cast_reg_2235_pp0_iter12_reg;
reg  signed [5:0] zext_ln392_cast_reg_2235_pp0_iter13_reg;
reg  signed [5:0] zext_ln392_cast_reg_2235_pp0_iter14_reg;
reg   [63:0] sub25_reg_2240;
reg   [63:0] sub26_reg_2246;
wire   [63:0] bitcast_ln396_fu_1519_p1;
reg   [63:0] bitcast_ln396_reg_2252;
reg   [63:0] bitcast_ln396_reg_2252_pp0_iter15_reg;
wire   [63:0] zext_ln393_fu_1526_p1;
reg   [63:0] zext_ln393_reg_2260;
wire   [63:0] zext_ln394_fu_1553_p1;
reg   [63:0] zext_ln394_reg_2268;
wire   [63:0] zext_ln396_fu_1564_p1;
reg   [63:0] zext_ln396_reg_2276;
wire   [63:0] zext_ln395_fu_1581_p1;
reg   [63:0] zext_ln395_reg_2284;
wire   [63:0] bitcast_ln405_fu_1589_p1;
reg   [63:0] bitcast_ln405_reg_2292;
reg   [63:0] bitcast_ln405_reg_2292_pp0_iter16_reg;
wire   [63:0] zext_ln389_fu_1604_p1;
reg   [63:0] zext_ln389_reg_2300;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln367_fu_1002_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln371_fu_1022_p1;
wire   [63:0] zext_ln114_1_fu_1260_p1;
wire   [63:0] zext_ln391_fu_1450_p1;
wire   [63:0] zext_ln392_fu_1500_p1;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
reg   [6:0] tid_fu_100;
wire   [6:0] add_ln365_fu_1034_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_ce1_local;
reg    DATA_y_ce0_local;
reg    DATA_y_1_ce1_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_ce1_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_ce1_local;
reg    DATA_y_3_ce0_local;
reg    DATA_x_ce1_local;
reg    DATA_x_ce0_local;
reg    DATA_x_1_ce1_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_2_ce1_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_ce1_local;
reg    DATA_x_3_ce0_local;
reg    work_x_2_we1_local;
reg   [63:0] work_x_2_d1_local;
wire   [63:0] bitcast_ln389_fu_1349_p1;
reg    work_x_2_ce1_local;
reg   [6:0] work_x_2_address1_local;
reg    work_x_2_we0_local;
reg   [63:0] work_x_2_d0_local;
wire   [63:0] bitcast_ln390_fu_1462_p1;
reg    work_x_2_ce0_local;
reg   [6:0] work_x_2_address0_local;
wire   [63:0] bitcast_ln392_fu_1534_p1;
reg    work_y_2_we1_local;
reg   [63:0] work_y_2_d1_local;
wire   [63:0] bitcast_ln398_fu_1360_p1;
reg    work_y_2_ce1_local;
reg   [6:0] work_y_2_address1_local;
reg    work_y_2_we0_local;
reg   [63:0] work_y_2_d0_local;
wire   [63:0] bitcast_ln399_fu_1478_p1;
reg    work_y_2_ce0_local;
reg   [6:0] work_y_2_address0_local;
wire   [63:0] bitcast_ln400_fu_1512_p1;
wire   [63:0] bitcast_ln401_fu_1593_p1;
reg    work_x_1_we1_local;
reg   [63:0] work_x_1_d1_local;
reg    work_x_1_ce1_local;
reg   [6:0] work_x_1_address1_local;
reg    work_x_1_we0_local;
reg   [63:0] work_x_1_d0_local;
reg    work_x_1_ce0_local;
reg   [6:0] work_x_1_address0_local;
reg    work_y_1_we1_local;
reg   [63:0] work_y_1_d1_local;
reg    work_y_1_ce1_local;
reg   [6:0] work_y_1_address1_local;
reg    work_y_1_we0_local;
reg   [63:0] work_y_1_d0_local;
reg    work_y_1_ce0_local;
reg   [6:0] work_y_1_address0_local;
reg    work_x_0_we1_local;
reg   [63:0] work_x_0_d1_local;
reg    work_x_0_ce1_local;
reg   [6:0] work_x_0_address1_local;
reg    work_x_0_we0_local;
reg   [63:0] work_x_0_d0_local;
reg    work_x_0_ce0_local;
reg   [6:0] work_x_0_address0_local;
reg    work_y_0_we1_local;
reg   [63:0] work_y_0_d1_local;
reg    work_y_0_ce1_local;
reg   [6:0] work_y_0_address1_local;
reg    work_y_0_we0_local;
reg   [63:0] work_y_0_d0_local;
reg    work_y_0_ce0_local;
reg   [6:0] work_y_0_address0_local;
reg    work_x_3_we1_local;
reg   [63:0] work_x_3_d1_local;
reg    work_x_3_ce1_local;
reg   [6:0] work_x_3_address1_local;
reg    work_x_3_we0_local;
reg   [63:0] work_x_3_d0_local;
reg    work_x_3_ce0_local;
reg   [6:0] work_x_3_address0_local;
reg    work_y_3_we1_local;
reg   [63:0] work_y_3_d1_local;
reg    work_y_3_ce1_local;
reg   [6:0] work_y_3_address1_local;
reg    work_y_3_we0_local;
reg   [63:0] work_y_3_d0_local;
reg    work_y_3_ce0_local;
reg   [6:0] work_y_3_address0_local;
reg   [63:0] grp_fu_888_p0;
reg   [63:0] grp_fu_888_p1;
reg   [63:0] grp_fu_892_p0;
reg   [63:0] grp_fu_892_p1;
reg   [63:0] grp_fu_896_p0;
reg   [63:0] grp_fu_896_p1;
reg   [63:0] grp_fu_900_p0;
reg   [63:0] grp_fu_900_p1;
reg   [63:0] grp_fu_904_p0;
reg   [63:0] grp_fu_904_p1;
reg   [63:0] grp_fu_908_p0;
reg   [63:0] grp_fu_908_p1;
reg   [63:0] grp_fu_912_p0;
reg   [63:0] grp_fu_912_p1;
reg   [63:0] grp_fu_916_p0;
reg   [63:0] grp_fu_916_p1;
reg   [63:0] grp_fu_920_p0;
reg   [63:0] grp_fu_920_p1;
reg   [63:0] grp_fu_924_p0;
reg   [63:0] grp_fu_924_p1;
reg   [63:0] grp_fu_928_p0;
reg   [63:0] grp_fu_928_p1;
reg   [63:0] grp_fu_932_p0;
reg   [63:0] grp_fu_932_p1;
reg   [63:0] grp_fu_936_p0;
reg   [63:0] grp_fu_936_p1;
reg   [63:0] grp_fu_940_p0;
reg   [63:0] grp_fu_940_p1;
reg   [63:0] grp_fu_944_p0;
reg   [63:0] grp_fu_944_p1;
reg   [63:0] grp_fu_948_p0;
reg   [63:0] grp_fu_948_p1;
reg   [63:0] grp_fu_953_p0;
reg   [63:0] grp_fu_953_p1;
reg   [63:0] grp_fu_960_p0;
reg   [63:0] grp_fu_960_p1;
wire   [6:0] shl_ln367_fu_996_p2;
wire   [5:0] trunc_ln367_fu_992_p1;
wire   [6:0] or_ln_fu_1014_p3;
wire   [63:0] bitcast_ln386_fu_1044_p1;
wire   [0:0] bit_sel_fu_1047_p3;
wire   [0:0] xor_ln386_10_fu_1055_p2;
wire   [62:0] trunc_ln386_fu_1061_p1;
wire   [63:0] xor_ln3_fu_1065_p3;
wire   [63:0] bitcast_ln386_2_fu_1078_p1;
wire   [0:0] bit_sel40_fu_1081_p3;
wire   [0:0] xor_ln386_fu_1089_p2;
wire   [62:0] trunc_ln386_1_fu_1095_p1;
wire   [63:0] xor_ln386_1_fu_1099_p3;
wire   [63:0] bitcast_ln386_8_fu_1112_p1;
wire   [0:0] bit_sel43_fu_1115_p3;
wire   [0:0] xor_ln386_13_fu_1123_p2;
wire   [62:0] trunc_ln386_4_fu_1129_p1;
wire   [63:0] xor_ln386_4_fu_1133_p3;
wire   [63:0] bitcast_ln386_10_fu_1147_p1;
wire   [0:0] bit_sel44_fu_1151_p3;
wire   [0:0] xor_ln386_14_fu_1159_p2;
wire   [62:0] trunc_ln386_5_fu_1165_p1;
wire   [63:0] xor_ln386_5_fu_1169_p3;
wire   [63:0] bitcast_ln386_4_fu_1183_p1;
wire   [0:0] bit_sel41_fu_1186_p3;
wire   [0:0] xor_ln386_11_fu_1194_p2;
wire   [62:0] trunc_ln386_2_fu_1200_p1;
wire   [63:0] xor_ln386_2_fu_1204_p3;
wire   [63:0] bitcast_ln386_6_fu_1217_p1;
wire   [0:0] bit_sel42_fu_1220_p3;
wire   [0:0] xor_ln386_12_fu_1228_p2;
wire   [62:0] trunc_ln386_3_fu_1234_p1;
wire   [63:0] xor_ln386_3_fu_1238_p3;
wire   [63:0] bitcast_ln386_12_fu_1272_p1;
wire   [0:0] bit_sel45_fu_1275_p3;
wire   [0:0] xor_ln386_15_fu_1283_p2;
wire   [62:0] trunc_ln386_6_fu_1289_p1;
wire   [63:0] xor_ln386_6_fu_1293_p3;
wire   [63:0] bitcast_ln386_14_fu_1306_p1;
wire   [0:0] bit_sel46_fu_1309_p3;
wire   [0:0] xor_ln386_16_fu_1317_p2;
wire   [62:0] trunc_ln386_7_fu_1323_p1;
wire   [63:0] xor_ln386_7_fu_1327_p3;
wire   [63:0] bitcast_ln386_16_fu_1371_p1;
wire   [0:0] bit_sel47_fu_1374_p3;
wire   [0:0] xor_ln386_17_fu_1382_p2;
wire   [62:0] trunc_ln386_8_fu_1388_p1;
wire   [63:0] xor_ln386_8_fu_1392_p3;
wire   [63:0] bitcast_ln386_18_fu_1409_p1;
wire   [0:0] bit_sel48_fu_1412_p3;
wire   [0:0] xor_ln386_18_fu_1420_p2;
wire   [62:0] trunc_ln386_9_fu_1426_p1;
wire   [63:0] xor_ln386_9_fu_1430_p3;
wire  signed [5:0] sext_ln393_fu_1523_p1;
wire   [5:0] zext_ln393_1_fu_1542_p1;
wire   [6:0] zext_ln394_cast_fu_1545_p3;
wire  signed [6:0] sext_ln396_fu_1561_p1;
wire   [6:0] zext_ln114_fu_1572_p1;
wire   [6:0] add_ln394_fu_1575_p2;
wire  signed [6:0] sext_ln389_fu_1601_p1;
reg   [1:0] grp_fu_888_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg   [1:0] grp_fu_892_opcode;
reg   [1:0] grp_fu_896_opcode;
reg   [1:0] grp_fu_900_opcode;
reg   [1:0] grp_fu_904_opcode;
reg   [1:0] grp_fu_908_opcode;
reg   [1:0] grp_fu_912_opcode;
reg   [1:0] grp_fu_916_opcode;
reg   [1:0] grp_fu_920_opcode;
reg   [1:0] grp_fu_924_opcode;
reg   [1:0] grp_fu_928_opcode;
reg   [1:0] grp_fu_932_opcode;
reg   [1:0] grp_fu_936_opcode;
reg   [1:0] grp_fu_940_opcode;
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
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to16;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_100 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_fu_100 <= 7'd0;
    end else if (((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_100 <= add_ln365_fu_1034_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_load_14_reg_1789 <= DATA_x_1_q0;
        DATA_x_2_load_14_reg_1795 <= DATA_x_2_q0;
        DATA_x_3_load_14_reg_1800 <= DATA_x_3_q0;
        DATA_x_load_14_reg_1783 <= DATA_x_q0;
        DATA_y_1_load_8_reg_1743 <= DATA_y_1_q0;
        DATA_y_2_load_8_reg_1749 <= DATA_y_2_q0;
        DATA_y_3_load_8_reg_1754 <= DATA_y_3_q0;
        DATA_y_load_8_reg_1737 <= DATA_y_q0;
        c0_x_61_reg_1766 <= DATA_x_1_q1;
        c0_x_62_reg_1772 <= DATA_x_2_q1;
        c0_x_63_reg_1777 <= DATA_x_3_q1;
        c0_x_reg_1760 <= DATA_x_q1;
        c0_y_61_reg_1720 <= DATA_y_1_q1;
        c0_y_62_reg_1726 <= DATA_y_2_q1;
        c0_y_63_reg_1731 <= DATA_y_3_q1;
        c0_y_reg_1714 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_reg_1889 <= grp_fu_416_p_dout0;
        add_reg_1883 <= grp_fu_412_p_dout0;
        c0_x_35_reg_1871 <= grp_fu_404_p_dout0;
        c0_x_64_reg_1859 <= grp_fu_396_p_dout0;
        c0_y_42_reg_1877 <= grp_fu_408_p_dout0;
        c0_y_64_reg_1865 <= grp_fu_400_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add12_reg_1842 <= grp_fu_420_p_dout0;
        add13_reg_1848 <= grp_fu_424_p_dout0;
        c0_x_36_reg_1806 <= grp_fu_396_p_dout0;
        c0_y_43_reg_1812 <= grp_fu_400_p_dout0;
        sub12_reg_1836 <= grp_fu_416_p_dout0;
        sub_reg_1824 <= grp_fu_408_p_dout0;
        tmp_1_11_reg_1830 <= grp_fu_412_p_dout0;
        tmp_1_12_reg_1854 <= grp_fu_428_p_dout0;
        tmp_1_reg_1818 <= grp_fu_404_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add14_reg_1922 <= grp_fu_440_p_dout0;
        add16_reg_1942 <= grp_fu_448_p_dout0;
        mul6_reg_1932 <= grp_fu_516_p_dout0;
        mul_reg_1927 <= grp_fu_512_p_dout0;
        sub14_reg_1917 <= grp_fu_436_p_dout0;
        sub16_reg_1937 <= grp_fu_444_p_dout0;
        tmp_16_reg_1947 <= grp_fu_452_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add15_reg_2035 <= grp_fu_444_p_dout0;
        mul10_reg_2046 <= grp_fu_516_p_dout0;
        mul9_reg_2041 <= grp_fu_512_p_dout0;
        sub15_reg_2029 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add17_reg_1965 <= grp_fu_428_p_dout0;
        add18_reg_1971 <= grp_fu_432_p_dout0;
        c0_x_65_reg_1953 <= grp_fu_420_p_dout0;
        c0_y_65_reg_1959 <= grp_fu_424_p_dout0;
        sub17_reg_1977 <= grp_fu_436_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add19_reg_2051 <= grp_fu_404_p_dout0;
        add20_reg_2056 <= grp_fu_408_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add22_reg_2187 <= grp_fu_412_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add23_reg_2099 <= grp_fu_404_p_dout0;
        tmp_17_reg_2105 <= grp_fu_408_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add23_reg_2099_pp0_iter9_reg <= add23_reg_2099;
        bitcast_ln393_reg_2083 <= bitcast_ln393_fu_1356_p1;
        bitcast_ln393_reg_2083_pp0_iter10_reg <= bitcast_ln393_reg_2083_pp0_iter9_reg;
        bitcast_ln393_reg_2083_pp0_iter11_reg <= bitcast_ln393_reg_2083_pp0_iter10_reg;
        bitcast_ln393_reg_2083_pp0_iter12_reg <= bitcast_ln393_reg_2083_pp0_iter11_reg;
        bitcast_ln393_reg_2083_pp0_iter13_reg <= bitcast_ln393_reg_2083_pp0_iter12_reg;
        bitcast_ln393_reg_2083_pp0_iter14_reg <= bitcast_ln393_reg_2083_pp0_iter13_reg;
        bitcast_ln393_reg_2083_pp0_iter8_reg <= bitcast_ln393_reg_2083;
        bitcast_ln393_reg_2083_pp0_iter9_reg <= bitcast_ln393_reg_2083_pp0_iter8_reg;
        bitcast_ln394_reg_2203 <= bitcast_ln394_fu_1470_p1;
        bitcast_ln394_reg_2203_pp0_iter12_reg <= bitcast_ln394_reg_2203;
        bitcast_ln394_reg_2203_pp0_iter13_reg <= bitcast_ln394_reg_2203_pp0_iter12_reg;
        bitcast_ln394_reg_2203_pp0_iter14_reg <= bitcast_ln394_reg_2203_pp0_iter13_reg;
        bitcast_ln395_reg_2211 <= bitcast_ln395_fu_1474_p1;
        bitcast_ln395_reg_2211_pp0_iter12_reg <= bitcast_ln395_reg_2211;
        bitcast_ln395_reg_2211_pp0_iter13_reg <= bitcast_ln395_reg_2211_pp0_iter12_reg;
        bitcast_ln395_reg_2211_pp0_iter14_reg <= bitcast_ln395_reg_2211_pp0_iter13_reg;
        bitcast_ln396_reg_2252 <= bitcast_ln396_fu_1519_p1;
        bitcast_ln396_reg_2252_pp0_iter15_reg <= bitcast_ln396_reg_2252;
        bitcast_ln402_reg_2091 <= bitcast_ln402_fu_1367_p1;
        bitcast_ln402_reg_2091_pp0_iter10_reg <= bitcast_ln402_reg_2091_pp0_iter9_reg;
        bitcast_ln402_reg_2091_pp0_iter11_reg <= bitcast_ln402_reg_2091_pp0_iter10_reg;
        bitcast_ln402_reg_2091_pp0_iter12_reg <= bitcast_ln402_reg_2091_pp0_iter11_reg;
        bitcast_ln402_reg_2091_pp0_iter13_reg <= bitcast_ln402_reg_2091_pp0_iter12_reg;
        bitcast_ln402_reg_2091_pp0_iter14_reg <= bitcast_ln402_reg_2091_pp0_iter13_reg;
        bitcast_ln402_reg_2091_pp0_iter15_reg <= bitcast_ln402_reg_2091_pp0_iter14_reg;
        bitcast_ln402_reg_2091_pp0_iter8_reg <= bitcast_ln402_reg_2091;
        bitcast_ln402_reg_2091_pp0_iter9_reg <= bitcast_ln402_reg_2091_pp0_iter8_reg;
        bitcast_ln403_reg_2219 <= bitcast_ln403_fu_1485_p1;
        bitcast_ln403_reg_2219_pp0_iter12_reg <= bitcast_ln403_reg_2219;
        bitcast_ln403_reg_2219_pp0_iter13_reg <= bitcast_ln403_reg_2219_pp0_iter12_reg;
        bitcast_ln403_reg_2219_pp0_iter14_reg <= bitcast_ln403_reg_2219_pp0_iter13_reg;
        bitcast_ln403_reg_2219_pp0_iter15_reg <= bitcast_ln403_reg_2219_pp0_iter14_reg;
        bitcast_ln404_reg_2227 <= bitcast_ln404_fu_1489_p1;
        bitcast_ln404_reg_2227_pp0_iter12_reg <= bitcast_ln404_reg_2227;
        bitcast_ln404_reg_2227_pp0_iter13_reg <= bitcast_ln404_reg_2227_pp0_iter12_reg;
        bitcast_ln404_reg_2227_pp0_iter14_reg <= bitcast_ln404_reg_2227_pp0_iter13_reg;
        bitcast_ln404_reg_2227_pp0_iter15_reg <= bitcast_ln404_reg_2227_pp0_iter14_reg;
        bitcast_ln405_reg_2292 <= bitcast_ln405_fu_1589_p1;
        bitcast_ln405_reg_2292_pp0_iter16_reg <= bitcast_ln405_reg_2292;
        icmp_ln365_reg_1626 <= icmp_ln365_fu_982_p2;
        lshr_ln114_1_reg_2061 <= {{tid_5_reg_1619_pp0_iter6_reg[6:2]}};
        lshr_ln114_1_reg_2061_pp0_iter10_reg <= lshr_ln114_1_reg_2061_pp0_iter9_reg;
        lshr_ln114_1_reg_2061_pp0_iter11_reg <= lshr_ln114_1_reg_2061_pp0_iter10_reg;
        lshr_ln114_1_reg_2061_pp0_iter12_reg <= lshr_ln114_1_reg_2061_pp0_iter11_reg;
        lshr_ln114_1_reg_2061_pp0_iter13_reg <= lshr_ln114_1_reg_2061_pp0_iter12_reg;
        lshr_ln114_1_reg_2061_pp0_iter14_reg <= lshr_ln114_1_reg_2061_pp0_iter13_reg;
        lshr_ln114_1_reg_2061_pp0_iter8_reg <= lshr_ln114_1_reg_2061;
        lshr_ln114_1_reg_2061_pp0_iter9_reg <= lshr_ln114_1_reg_2061_pp0_iter8_reg;
        part_sel_reg_2078 <= {{tid_5_reg_1619_pp0_iter6_reg[5:2]}};
        part_sel_reg_2078_pp0_iter10_reg <= part_sel_reg_2078_pp0_iter9_reg;
        part_sel_reg_2078_pp0_iter8_reg <= part_sel_reg_2078;
        part_sel_reg_2078_pp0_iter9_reg <= part_sel_reg_2078_pp0_iter8_reg;
        tid_5_reg_1619 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_1619_pp0_iter1_reg <= tid_5_reg_1619;
        tid_5_reg_1619_pp0_iter2_reg <= tid_5_reg_1619_pp0_iter1_reg;
        tid_5_reg_1619_pp0_iter3_reg <= tid_5_reg_1619_pp0_iter2_reg;
        tid_5_reg_1619_pp0_iter4_reg <= tid_5_reg_1619_pp0_iter3_reg;
        tid_5_reg_1619_pp0_iter5_reg <= tid_5_reg_1619_pp0_iter4_reg;
        tid_5_reg_1619_pp0_iter6_reg <= tid_5_reg_1619_pp0_iter5_reg;
        tmp_17_reg_2105_pp0_iter10_reg <= tmp_17_reg_2105_pp0_iter9_reg;
        tmp_17_reg_2105_pp0_iter9_reg <= tmp_17_reg_2105;
        trunc_ln365_reg_1630 <= trunc_ln365_fu_988_p1;
        trunc_ln365_reg_1630_pp0_iter10_reg <= trunc_ln365_reg_1630_pp0_iter9_reg;
        trunc_ln365_reg_1630_pp0_iter11_reg <= trunc_ln365_reg_1630_pp0_iter10_reg;
        trunc_ln365_reg_1630_pp0_iter12_reg <= trunc_ln365_reg_1630_pp0_iter11_reg;
        trunc_ln365_reg_1630_pp0_iter13_reg <= trunc_ln365_reg_1630_pp0_iter12_reg;
        trunc_ln365_reg_1630_pp0_iter14_reg <= trunc_ln365_reg_1630_pp0_iter13_reg;
        trunc_ln365_reg_1630_pp0_iter15_reg <= trunc_ln365_reg_1630_pp0_iter14_reg;
        trunc_ln365_reg_1630_pp0_iter16_reg <= trunc_ln365_reg_1630_pp0_iter15_reg;
        trunc_ln365_reg_1630_pp0_iter1_reg <= trunc_ln365_reg_1630;
        trunc_ln365_reg_1630_pp0_iter2_reg <= trunc_ln365_reg_1630_pp0_iter1_reg;
        trunc_ln365_reg_1630_pp0_iter3_reg <= trunc_ln365_reg_1630_pp0_iter2_reg;
        trunc_ln365_reg_1630_pp0_iter4_reg <= trunc_ln365_reg_1630_pp0_iter3_reg;
        trunc_ln365_reg_1630_pp0_iter5_reg <= trunc_ln365_reg_1630_pp0_iter4_reg;
        trunc_ln365_reg_1630_pp0_iter6_reg <= trunc_ln365_reg_1630_pp0_iter5_reg;
        trunc_ln365_reg_1630_pp0_iter7_reg <= trunc_ln365_reg_1630_pp0_iter6_reg;
        trunc_ln365_reg_1630_pp0_iter8_reg <= trunc_ln365_reg_1630_pp0_iter7_reg;
        trunc_ln365_reg_1630_pp0_iter9_reg <= trunc_ln365_reg_1630_pp0_iter8_reg;
        zext_ln391_cast_reg_2197[3 : 0] <= zext_ln391_cast_fu_1443_p3[3 : 0];
        zext_ln391_cast_reg_2197_pp0_iter12_reg[3 : 0] <= zext_ln391_cast_reg_2197[3 : 0];
        zext_ln391_cast_reg_2197_pp0_iter13_reg[3 : 0] <= zext_ln391_cast_reg_2197_pp0_iter12_reg[3 : 0];
        zext_ln391_cast_reg_2197_pp0_iter14_reg[3 : 0] <= zext_ln391_cast_reg_2197_pp0_iter13_reg[3 : 0];
        zext_ln391_cast_reg_2197_pp0_iter15_reg[3 : 0] <= zext_ln391_cast_reg_2197_pp0_iter14_reg[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add24_reg_2153 <= grp_fu_432_p_dout0;
        c0_x_39_reg_2141 <= grp_fu_424_p_dout0;
        c0_y_46_reg_2147 <= grp_fu_428_p_dout0;
        c0_y_66_reg_2135 <= grp_fu_420_p_dout0;
        sub18_reg_2123 <= grp_fu_412_p_dout0;
        sub19_reg_2129 <= grp_fu_416_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add26_reg_2174 <= grp_fu_444_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        bitcast_ln391_reg_2179 <= bitcast_ln391_fu_1405_p1;
        c0_x_38_reg_1993_pp0_iter5_reg <= c0_x_38_reg_1993;
        c0_x_38_reg_1993_pp0_iter6_reg <= c0_x_38_reg_1993_pp0_iter5_reg;
        c0_x_38_reg_1993_pp0_iter7_reg <= c0_x_38_reg_1993_pp0_iter6_reg;
        c0_x_38_reg_1993_pp0_iter8_reg <= c0_x_38_reg_1993_pp0_iter7_reg;
        c0_x_39_reg_2141_pp0_iter10_reg <= c0_x_39_reg_2141_pp0_iter9_reg;
        c0_x_39_reg_2141_pp0_iter11_reg <= c0_x_39_reg_2141_pp0_iter10_reg;
        c0_x_39_reg_2141_pp0_iter9_reg <= c0_x_39_reg_2141;
        c0_y_45_reg_1999_pp0_iter5_reg <= c0_y_45_reg_1999;
        c0_y_45_reg_1999_pp0_iter6_reg <= c0_y_45_reg_1999_pp0_iter5_reg;
        c0_y_45_reg_1999_pp0_iter7_reg <= c0_y_45_reg_1999_pp0_iter6_reg;
        c0_y_45_reg_1999_pp0_iter8_reg <= c0_y_45_reg_1999_pp0_iter7_reg;
        c0_y_46_reg_2147_pp0_iter10_reg <= c0_y_46_reg_2147_pp0_iter9_reg;
        c0_y_46_reg_2147_pp0_iter11_reg <= c0_y_46_reg_2147_pp0_iter10_reg;
        c0_y_46_reg_2147_pp0_iter12_reg <= c0_y_46_reg_2147_pp0_iter11_reg;
        c0_y_46_reg_2147_pp0_iter9_reg <= c0_y_46_reg_2147;
        zext_ln389_reg_2300[3 : 0] <= zext_ln389_fu_1604_p1[3 : 0];
        zext_ln395_reg_2284[6 : 0] <= zext_ln395_fu_1581_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_35_reg_1871_pp0_iter3_reg <= c0_x_35_reg_1871;
        c0_x_35_reg_1871_pp0_iter4_reg <= c0_x_35_reg_1871_pp0_iter3_reg;
        c0_x_35_reg_1871_pp0_iter5_reg <= c0_x_35_reg_1871_pp0_iter4_reg;
        c0_x_35_reg_1871_pp0_iter6_reg <= c0_x_35_reg_1871_pp0_iter5_reg;
        c0_y_42_reg_1877_pp0_iter3_reg <= c0_y_42_reg_1877;
        c0_y_42_reg_1877_pp0_iter4_reg <= c0_y_42_reg_1877_pp0_iter3_reg;
        c0_y_42_reg_1877_pp0_iter5_reg <= c0_y_42_reg_1877_pp0_iter4_reg;
        c0_y_42_reg_1877_pp0_iter6_reg <= c0_y_42_reg_1877_pp0_iter5_reg;
        sub17_reg_1977_pp0_iter5_reg <= sub17_reg_1977;
        sub17_reg_1977_pp0_iter6_reg <= sub17_reg_1977_pp0_iter5_reg;
        sub24_reg_2117_pp0_iter9_reg <= sub24_reg_2117;
        zext_ln394_reg_2268[4 : 0] <= zext_ln394_fu_1553_p1[4 : 0];
        zext_ln396_reg_2276[4 : 0] <= zext_ln396_fu_1564_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_37_reg_2005 <= grp_fu_512_p_dout0;
        c0_y_44_reg_2011 <= grp_fu_516_p_dout0;
        mul7_reg_2017 <= grp_fu_520_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        c0_x_38_reg_1993 <= grp_fu_396_p_dout0;
        c0_y_45_reg_1999 <= grp_fu_400_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_66_reg_2111 <= grp_fu_448_p_dout0;
        sub24_reg_2117 <= grp_fu_452_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul11_reg_2159 <= grp_fu_512_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul12_reg_2169 <= grp_fu_520_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_reg_2023 <= grp_fu_520_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_966 <= grp_fu_432_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_970 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub12_reg_1836_pp0_iter3_reg <= sub12_reg_1836;
        sub12_reg_1836_pp0_iter4_reg <= sub12_reg_1836_pp0_iter3_reg;
        tmp_16_reg_1947_pp0_iter5_reg <= tmp_16_reg_1947;
        tmp_16_reg_1947_pp0_iter6_reg <= tmp_16_reg_1947_pp0_iter5_reg;
        tmp_1_11_reg_1830_pp0_iter3_reg <= tmp_1_11_reg_1830;
        tmp_1_11_reg_1830_pp0_iter4_reg <= tmp_1_11_reg_1830_pp0_iter3_reg;
        zext_ln392_cast_reg_2235[4 : 0] <= zext_ln392_cast_fu_1493_p3[4 : 0];
        zext_ln392_cast_reg_2235_pp0_iter12_reg[4 : 0] <= zext_ln392_cast_reg_2235[4 : 0];
        zext_ln392_cast_reg_2235_pp0_iter13_reg[4 : 0] <= zext_ln392_cast_reg_2235_pp0_iter12_reg[4 : 0];
        zext_ln392_cast_reg_2235_pp0_iter14_reg[4 : 0] <= zext_ln392_cast_reg_2235_pp0_iter13_reg[4 : 0];
        zext_ln393_reg_2260[3 : 0] <= zext_ln393_fu_1526_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub25_reg_2240 <= grp_fu_448_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub26_reg_2246 <= grp_fu_452_p_dout0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln365_reg_1626 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to16 = 1'b1;
    end else begin
        ap_idle_pp0_1to16 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_tid_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_5 = tid_fu_100;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_888_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_888_opcode = 2'd0;
    end else begin
        grp_fu_888_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_888_p0 = c0_x_65_reg_1953;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_888_p0 = c0_x_64_reg_1859;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_888_p0 = c0_x_reg_1760;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_888_p0 = c0_x_61_reg_1766;
    end else begin
        grp_fu_888_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_888_p1 = add17_reg_1965;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_888_p1 = add_reg_1883;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_888_p1 = DATA_x_load_14_reg_1783;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_888_p1 = DATA_x_1_load_14_reg_1789;
    end else begin
        grp_fu_888_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_892_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_892_opcode = 2'd0;
    end else begin
        grp_fu_892_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_892_p0 = c0_y_65_reg_1959;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_892_p0 = c0_y_64_reg_1865;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_892_p0 = c0_y_reg_1714;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_892_p0 = c0_y_61_reg_1720;
    end else begin
        grp_fu_892_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_892_p1 = add18_reg_1971;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_892_p1 = add11_reg_1889;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_892_p1 = DATA_y_load_8_reg_1737;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_892_p1 = DATA_y_1_load_8_reg_1743;
    end else begin
        grp_fu_892_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_896_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_896_opcode = 2'd0;
    end else begin
        grp_fu_896_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_896_p0 = c0_x_37_reg_2005;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_896_p0 = c0_x_65_reg_1953;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_896_p0 = c0_x_reg_1760;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_896_p0 = c0_x_61_reg_1766;
    end else begin
        grp_fu_896_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_896_p1 = mul7_reg_2017;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_896_p1 = add17_reg_1965;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_896_p1 = DATA_x_load_14_reg_1783;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_896_p1 = DATA_x_1_load_14_reg_1789;
    end else begin
        grp_fu_896_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_900_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_900_opcode = 2'd0;
    end else begin
        grp_fu_900_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_900_p0 = c0_x_37_reg_2005;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_900_p0 = c0_y_65_reg_1959;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_900_p0 = c0_y_reg_1714;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_900_p0 = c0_y_61_reg_1720;
    end else begin
        grp_fu_900_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_900_p1 = mul7_reg_2017;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_900_p1 = add18_reg_1971;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_900_p1 = DATA_y_load_8_reg_1737;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_900_p1 = DATA_y_1_load_8_reg_1743;
    end else begin
        grp_fu_900_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_904_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_904_opcode = 2'd0;
    end else begin
        grp_fu_904_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_904_p0 = c0_y_45_reg_1999_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_904_p0 = mul9_reg_2041;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_904_p0 = c0_x_62_reg_1772;
    end else begin
        grp_fu_904_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_904_p1 = sub19_reg_2129;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_904_p1 = bitcast_ln386_13_fu_1301_p1;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_904_p1 = DATA_x_2_load_14_reg_1795;
    end else begin
        grp_fu_904_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_908_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_908_opcode = 2'd0;
    end else begin
        grp_fu_908_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_908_p0 = c0_x_38_reg_1993_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_908_p0 = bitcast_ln386_15_fu_1335_p1;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_908_p0 = c0_y_62_reg_1726;
    end else begin
        grp_fu_908_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_908_p1 = sub18_reg_2123;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_908_p1 = mul10_reg_2046;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_908_p1 = DATA_y_2_load_8_reg_1749;
    end else begin
        grp_fu_908_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_912_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_912_opcode = 2'd0;
    end else begin
        grp_fu_912_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_912_p0 = c0_y_45_reg_1999_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_912_p0 = c0_y_42_reg_1877_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_912_p0 = c0_x_64_reg_1859;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_912_p0 = c0_x_63_reg_1777;
    end else begin
        grp_fu_912_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_912_p1 = sub19_reg_2129;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_912_p1 = add15_reg_2035;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_912_p1 = add_reg_1883;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_912_p1 = DATA_x_3_load_14_reg_1800;
    end else begin
        grp_fu_912_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_916_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_916_opcode = 2'd0;
    end else begin
        grp_fu_916_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_916_p0 = c0_x_66_reg_2111;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_916_p0 = c0_x_35_reg_1871_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_916_p0 = c0_y_64_reg_1865;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_916_p0 = c0_y_63_reg_1731;
    end else begin
        grp_fu_916_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_916_p1 = add23_reg_2099_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_916_p1 = sub15_reg_2029;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_916_p1 = add11_reg_1889;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_916_p1 = DATA_y_3_load_8_reg_1754;
    end else begin
        grp_fu_916_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_920_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_920_opcode = 2'd0;
    end else begin
        grp_fu_920_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_920_p0 = c0_y_66_reg_2135;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_920_p0 = c0_y_42_reg_1877_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_920_p0 = c0_x_36_reg_1806;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_920_p0 = c0_x_63_reg_1777;
    end else begin
        grp_fu_920_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_920_p1 = add24_reg_2153;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_920_p1 = add15_reg_2035;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_920_p1 = add12_reg_1842;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_920_p1 = DATA_x_3_load_14_reg_1800;
    end else begin
        grp_fu_920_p1 = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln365_reg_1626 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_924_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_924_opcode = 2'd0;
    end else begin
        grp_fu_924_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_924_p0 = c0_x_39_reg_2141_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_924_p0 = c0_y_44_reg_2011;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_924_p0 = c0_y_43_reg_1812;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_924_p0 = c0_y_63_reg_1731;
    end else begin
        grp_fu_924_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_924_p1 = sub25_reg_2240;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_924_p1 = mul8_reg_2023;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_924_p1 = add13_reg_1848;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_924_p1 = DATA_y_3_load_8_reg_1754;
    end else begin
        grp_fu_924_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_928_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_928_opcode = 2'd0;
    end else begin
        grp_fu_928_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_928_p0 = c0_x_39_reg_2141_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_928_p0 = c0_x_38_reg_1993_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_928_p0 = c0_y_43_reg_1812;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_928_p0 = tmp_1_reg_1818;
    end else begin
        grp_fu_928_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_928_p1 = sub25_reg_2240;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_928_p1 = sub18_reg_2123;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_928_p1 = add13_reg_1848;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_928_p1 = bitcast_ln386_1_fu_1073_p1;
    end else begin
        grp_fu_928_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_932_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_932_opcode = 2'd0;
    end else begin
        grp_fu_932_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_932_p0 = c0_y_46_reg_2147_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_932_p0 = c0_x_66_reg_2111;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_932_p0 = mul_reg_1927;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_932_p0 = bitcast_ln386_3_fu_1107_p1;
    end else begin
        grp_fu_932_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_932_p1 = sub26_reg_2246;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_932_p1 = add23_reg_2099;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_932_p1 = bitcast_ln386_5_fu_1212_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_932_p1 = sub_reg_1824;
    end else begin
        grp_fu_932_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_936_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_936_opcode = 2'd0;
    end else begin
        grp_fu_936_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_936_p0 = c0_y_46_reg_2147_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_936_p0 = c0_y_66_reg_2135;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_936_p0 = bitcast_ln386_7_fu_1246_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_936_p0 = bitcast_ln386_9_fu_1141_p1;
    end else begin
        grp_fu_936_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_936_p1 = sub26_reg_2246;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_936_p1 = add24_reg_2153;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_936_p1 = mul6_reg_1932;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_936_p1 = bitcast_ln386_11_fu_1177_p1;
    end else begin
        grp_fu_936_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_940_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_940_opcode = 2'd0;
    end else begin
        grp_fu_940_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_940_p0 = mul11_reg_2159;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_940_p0 = c0_x_35_reg_1871_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_940_p0 = bitcast_ln386_9_fu_1141_p1;
    end else begin
        grp_fu_940_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_940_p1 = bitcast_ln386_17_fu_1400_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_940_p1 = sub15_reg_2029;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_940_p1 = bitcast_ln386_11_fu_1177_p1;
    end else begin
        grp_fu_940_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_944_p0 = bitcast_ln386_19_fu_1438_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_944_p0 = c0_y_44_reg_2011;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_944_p0 = c0_x_36_reg_1806;
    end else begin
        grp_fu_944_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_944_p1 = mul12_reg_2169;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_944_p1 = mul8_reg_2023;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_944_p1 = add12_reg_1842;
    end else begin
        grp_fu_944_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_948_p0 = tmp_17_reg_2105;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_948_p0 = tmp_16_reg_1947;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_948_p0 = sub14_reg_1917;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_948_p0 = tmp_1_11_reg_1830;
    end else begin
        grp_fu_948_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_948_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_948_p1 = 64'd0;
    end else begin
        grp_fu_948_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_953_p0 = sub17_reg_1977;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_953_p0 = add14_reg_1922;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_953_p0 = sub12_reg_1836;
    end else begin
        grp_fu_953_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_953_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_953_p1 = 64'd0;
    end else begin
        grp_fu_953_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_960_p0 = sub24_reg_2117;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_960_p0 = add16_reg_1942;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_960_p0 = sub16_reg_1937;
    end else begin
        grp_fu_960_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_960_p1 = 64'd0;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_960_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_960_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_address0_local = zext_ln389_fu_1604_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_address0_local = zext_ln396_fu_1564_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_address0_local = zext_ln393_fu_1526_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_address0_local = zext_ln391_fu_1450_p1;
    end else begin
        work_x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_address1_local = zext_ln395_fu_1581_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_address1_local = zext_ln394_fu_1553_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_address1_local = zext_ln392_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_address1_local = zext_ln114_1_fu_1260_p1;
    end else begin
        work_x_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_0_ce0_local = 1'b1;
    end else begin
        work_x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_0_ce1_local = 1'b1;
    end else begin
        work_x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_d0_local = bitcast_ln396_reg_2252_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_d0_local = bitcast_ln395_reg_2211_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_d0_local = bitcast_ln392_fu_1534_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_d0_local = bitcast_ln390_fu_1462_p1;
    end else begin
        work_x_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_d1_local = bitcast_ln394_reg_2203_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_d1_local = bitcast_ln393_reg_2083_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_d1_local = bitcast_ln391_reg_2179;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_d1_local = bitcast_ln389_fu_1349_p1;
    end else begin
        work_x_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter10_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_0_we0_local = 1'b1;
    end else begin
        work_x_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter6_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter11_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_0_we1_local = 1'b1;
    end else begin
        work_x_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_address0_local = zext_ln389_fu_1604_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_address0_local = zext_ln396_fu_1564_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_address0_local = zext_ln393_fu_1526_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_address0_local = zext_ln391_fu_1450_p1;
    end else begin
        work_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_address1_local = zext_ln395_fu_1581_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_address1_local = zext_ln394_fu_1553_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_address1_local = zext_ln392_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_address1_local = zext_ln114_1_fu_1260_p1;
    end else begin
        work_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_1_ce0_local = 1'b1;
    end else begin
        work_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_1_ce1_local = 1'b1;
    end else begin
        work_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_d0_local = bitcast_ln396_reg_2252_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_d0_local = bitcast_ln395_reg_2211_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_d0_local = bitcast_ln392_fu_1534_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_d0_local = bitcast_ln390_fu_1462_p1;
    end else begin
        work_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_d1_local = bitcast_ln394_reg_2203_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_d1_local = bitcast_ln393_reg_2083_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_d1_local = bitcast_ln391_reg_2179;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_d1_local = bitcast_ln389_fu_1349_p1;
    end else begin
        work_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter10_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_1_we0_local = 1'b1;
    end else begin
        work_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter6_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter11_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_1_we1_local = 1'b1;
    end else begin
        work_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_address0_local = zext_ln389_fu_1604_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_address0_local = zext_ln396_fu_1564_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_address0_local = zext_ln393_fu_1526_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_address0_local = zext_ln391_fu_1450_p1;
    end else begin
        work_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_address1_local = zext_ln395_fu_1581_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_address1_local = zext_ln394_fu_1553_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_address1_local = zext_ln392_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_address1_local = zext_ln114_1_fu_1260_p1;
    end else begin
        work_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_2_ce0_local = 1'b1;
    end else begin
        work_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_2_ce1_local = 1'b1;
    end else begin
        work_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_d0_local = bitcast_ln396_reg_2252_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_d0_local = bitcast_ln395_reg_2211_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_d0_local = bitcast_ln392_fu_1534_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_d0_local = bitcast_ln390_fu_1462_p1;
    end else begin
        work_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_d1_local = bitcast_ln394_reg_2203_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_d1_local = bitcast_ln393_reg_2083_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_d1_local = bitcast_ln391_reg_2179;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_d1_local = bitcast_ln389_fu_1349_p1;
    end else begin
        work_x_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter10_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_2_we0_local = 1'b1;
    end else begin
        work_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter6_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter11_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_2_we1_local = 1'b1;
    end else begin
        work_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_address0_local = zext_ln389_fu_1604_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_address0_local = zext_ln396_fu_1564_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_address0_local = zext_ln393_fu_1526_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_address0_local = zext_ln391_fu_1450_p1;
    end else begin
        work_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_address1_local = zext_ln395_fu_1581_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_address1_local = zext_ln394_fu_1553_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_address1_local = zext_ln392_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_address1_local = zext_ln114_1_fu_1260_p1;
    end else begin
        work_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_3_ce0_local = 1'b1;
    end else begin
        work_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_3_ce1_local = 1'b1;
    end else begin
        work_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_d0_local = bitcast_ln396_reg_2252_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_d0_local = bitcast_ln395_reg_2211_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_d0_local = bitcast_ln392_fu_1534_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_d0_local = bitcast_ln390_fu_1462_p1;
    end else begin
        work_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_d1_local = bitcast_ln394_reg_2203_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_d1_local = bitcast_ln393_reg_2083_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_d1_local = bitcast_ln391_reg_2179;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_d1_local = bitcast_ln389_fu_1349_p1;
    end else begin
        work_x_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter10_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_3_we0_local = 1'b1;
    end else begin
        work_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter14_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter6_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter11_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_3_we1_local = 1'b1;
    end else begin
        work_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_address0_local = zext_ln389_reg_2300;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_address0_local = zext_ln396_reg_2276;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_address0_local = zext_ln393_reg_2260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_address0_local = zext_ln391_fu_1450_p1;
    end else begin
        work_y_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_address1_local = zext_ln395_reg_2284;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_address1_local = zext_ln394_reg_2268;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_address1_local = zext_ln392_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_address1_local = zext_ln114_1_fu_1260_p1;
    end else begin
        work_y_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_0_ce0_local = 1'b1;
    end else begin
        work_y_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_0_ce1_local = 1'b1;
    end else begin
        work_y_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_d0_local = bitcast_ln405_reg_2292_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_d0_local = bitcast_ln404_reg_2227_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_d0_local = bitcast_ln401_fu_1593_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_d0_local = bitcast_ln399_fu_1478_p1;
    end else begin
        work_y_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_d1_local = bitcast_ln403_reg_2219_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_d1_local = bitcast_ln402_reg_2091_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_d1_local = bitcast_ln400_fu_1512_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_d1_local = bitcast_ln398_fu_1360_p1;
    end else begin
        work_y_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter16_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter10_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_0_we0_local = 1'b1;
    end else begin
        work_y_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter6_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter11_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_0_we1_local = 1'b1;
    end else begin
        work_y_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_address0_local = zext_ln389_reg_2300;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_address0_local = zext_ln396_reg_2276;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_address0_local = zext_ln393_reg_2260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_address0_local = zext_ln391_fu_1450_p1;
    end else begin
        work_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_address1_local = zext_ln395_reg_2284;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_address1_local = zext_ln394_reg_2268;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_address1_local = zext_ln392_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_address1_local = zext_ln114_1_fu_1260_p1;
    end else begin
        work_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_1_ce0_local = 1'b1;
    end else begin
        work_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_1_ce1_local = 1'b1;
    end else begin
        work_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_d0_local = bitcast_ln405_reg_2292_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_d0_local = bitcast_ln404_reg_2227_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_d0_local = bitcast_ln401_fu_1593_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_d0_local = bitcast_ln399_fu_1478_p1;
    end else begin
        work_y_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_d1_local = bitcast_ln403_reg_2219_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_d1_local = bitcast_ln402_reg_2091_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_d1_local = bitcast_ln400_fu_1512_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_d1_local = bitcast_ln398_fu_1360_p1;
    end else begin
        work_y_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter16_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter10_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_1_we0_local = 1'b1;
    end else begin
        work_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter6_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter11_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_1_we1_local = 1'b1;
    end else begin
        work_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_address0_local = zext_ln389_reg_2300;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_address0_local = zext_ln396_reg_2276;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_address0_local = zext_ln393_reg_2260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_address0_local = zext_ln391_fu_1450_p1;
    end else begin
        work_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_address1_local = zext_ln395_reg_2284;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_address1_local = zext_ln394_reg_2268;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_address1_local = zext_ln392_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_address1_local = zext_ln114_1_fu_1260_p1;
    end else begin
        work_y_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_2_ce0_local = 1'b1;
    end else begin
        work_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_2_ce1_local = 1'b1;
    end else begin
        work_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_d0_local = bitcast_ln405_reg_2292_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_d0_local = bitcast_ln404_reg_2227_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_d0_local = bitcast_ln401_fu_1593_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_d0_local = bitcast_ln399_fu_1478_p1;
    end else begin
        work_y_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_d1_local = bitcast_ln403_reg_2219_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_d1_local = bitcast_ln402_reg_2091_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_d1_local = bitcast_ln400_fu_1512_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_d1_local = bitcast_ln398_fu_1360_p1;
    end else begin
        work_y_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter16_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter10_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_2_we0_local = 1'b1;
    end else begin
        work_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter6_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter11_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_2_we1_local = 1'b1;
    end else begin
        work_y_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_address0_local = zext_ln389_reg_2300;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_address0_local = zext_ln396_reg_2276;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_address0_local = zext_ln393_reg_2260;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_address0_local = zext_ln391_fu_1450_p1;
    end else begin
        work_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_address1_local = zext_ln395_reg_2284;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_address1_local = zext_ln394_reg_2268;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_address1_local = zext_ln392_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_address1_local = zext_ln114_1_fu_1260_p1;
    end else begin
        work_y_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_3_ce0_local = 1'b1;
    end else begin
        work_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_3_ce1_local = 1'b1;
    end else begin
        work_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_d0_local = bitcast_ln405_reg_2292_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_d0_local = bitcast_ln404_reg_2227_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_d0_local = bitcast_ln401_fu_1593_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_d0_local = bitcast_ln399_fu_1478_p1;
    end else begin
        work_y_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_d1_local = bitcast_ln403_reg_2219_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_d1_local = bitcast_ln402_reg_2091_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_d1_local = bitcast_ln400_fu_1512_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_d1_local = bitcast_ln398_fu_1360_p1;
    end else begin
        work_y_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter16_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter10_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_3_we0_local = 1'b1;
    end else begin
        work_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter15_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter6_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1630_pp0_iter11_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_3_we1_local = 1'b1;
    end else begin
        work_y_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to16 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign DATA_x_1_address0 = zext_ln371_fu_1022_p1;
assign DATA_x_1_address1 = zext_ln367_fu_1002_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_2_address0 = zext_ln371_fu_1022_p1;
assign DATA_x_2_address1 = zext_ln367_fu_1002_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = zext_ln371_fu_1022_p1;
assign DATA_x_3_address1 = zext_ln367_fu_1002_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_address0 = zext_ln371_fu_1022_p1;
assign DATA_x_address1 = zext_ln367_fu_1002_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_y_1_address0 = zext_ln371_fu_1022_p1;
assign DATA_y_1_address1 = zext_ln367_fu_1002_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_2_address0 = zext_ln371_fu_1022_p1;
assign DATA_y_2_address1 = zext_ln367_fu_1002_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_3_address0 = zext_ln371_fu_1022_p1;
assign DATA_y_3_address1 = zext_ln367_fu_1002_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_address0 = zext_ln371_fu_1022_p1;
assign DATA_y_address1 = zext_ln367_fu_1002_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln365_fu_1034_p2 = (tid_5_reg_1619 + 7'd1);
assign add_ln394_fu_1575_p2 = ($signed(zext_ln114_fu_1572_p1) + $signed(7'd80));
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
assign bit_sel40_fu_1081_p3 = bitcast_ln386_2_fu_1078_p1[64'd63];
assign bit_sel41_fu_1186_p3 = bitcast_ln386_4_fu_1183_p1[64'd63];
assign bit_sel42_fu_1220_p3 = bitcast_ln386_6_fu_1217_p1[64'd63];
assign bit_sel43_fu_1115_p3 = bitcast_ln386_8_fu_1112_p1[64'd63];
assign bit_sel44_fu_1151_p3 = bitcast_ln386_10_fu_1147_p1[64'd63];
assign bit_sel45_fu_1275_p3 = bitcast_ln386_12_fu_1272_p1[64'd63];
assign bit_sel46_fu_1309_p3 = bitcast_ln386_14_fu_1306_p1[64'd63];
assign bit_sel47_fu_1374_p3 = bitcast_ln386_16_fu_1371_p1[64'd63];
assign bit_sel48_fu_1412_p3 = bitcast_ln386_18_fu_1409_p1[64'd63];
assign bit_sel_fu_1047_p3 = bitcast_ln386_fu_1044_p1[64'd63];
assign bitcast_ln386_10_fu_1147_p1 = reg_966;
assign bitcast_ln386_11_fu_1177_p1 = xor_ln386_5_fu_1169_p3;
assign bitcast_ln386_12_fu_1272_p1 = sub17_reg_1977_pp0_iter6_reg;
assign bitcast_ln386_13_fu_1301_p1 = xor_ln386_6_fu_1293_p3;
assign bitcast_ln386_14_fu_1306_p1 = tmp_16_reg_1947_pp0_iter6_reg;
assign bitcast_ln386_15_fu_1335_p1 = xor_ln386_7_fu_1327_p3;
assign bitcast_ln386_16_fu_1371_p1 = sub24_reg_2117_pp0_iter9_reg;
assign bitcast_ln386_17_fu_1400_p1 = xor_ln386_8_fu_1392_p3;
assign bitcast_ln386_18_fu_1409_p1 = tmp_17_reg_2105_pp0_iter10_reg;
assign bitcast_ln386_19_fu_1438_p1 = xor_ln386_9_fu_1430_p3;
assign bitcast_ln386_1_fu_1073_p1 = xor_ln3_fu_1065_p3;
assign bitcast_ln386_2_fu_1078_p1 = tmp_1_reg_1818;
assign bitcast_ln386_3_fu_1107_p1 = xor_ln386_1_fu_1099_p3;
assign bitcast_ln386_4_fu_1183_p1 = sub12_reg_1836_pp0_iter4_reg;
assign bitcast_ln386_5_fu_1212_p1 = xor_ln386_2_fu_1204_p3;
assign bitcast_ln386_6_fu_1217_p1 = tmp_1_11_reg_1830_pp0_iter4_reg;
assign bitcast_ln386_7_fu_1246_p1 = xor_ln386_3_fu_1238_p3;
assign bitcast_ln386_8_fu_1112_p1 = tmp_1_12_reg_1854;
assign bitcast_ln386_9_fu_1141_p1 = xor_ln386_4_fu_1133_p3;
assign bitcast_ln386_fu_1044_p1 = sub_reg_1824;
assign bitcast_ln389_fu_1349_p1 = add19_reg_2051;
assign bitcast_ln390_fu_1462_p1 = reg_970;
assign bitcast_ln391_fu_1405_p1 = grp_fu_436_p_dout0;
assign bitcast_ln392_fu_1534_p1 = reg_966;
assign bitcast_ln393_fu_1356_p1 = grp_fu_396_p_dout0;
assign bitcast_ln394_fu_1470_p1 = grp_fu_424_p_dout0;
assign bitcast_ln395_fu_1474_p1 = grp_fu_416_p_dout0;
assign bitcast_ln396_fu_1519_p1 = grp_fu_436_p_dout0;
assign bitcast_ln398_fu_1360_p1 = add20_reg_2056;
assign bitcast_ln399_fu_1478_p1 = add26_reg_2174;
assign bitcast_ln400_fu_1512_p1 = add22_reg_2187;
assign bitcast_ln401_fu_1593_p1 = reg_970;
assign bitcast_ln402_fu_1367_p1 = grp_fu_400_p_dout0;
assign bitcast_ln403_fu_1485_p1 = grp_fu_428_p_dout0;
assign bitcast_ln404_fu_1489_p1 = grp_fu_420_p_dout0;
assign bitcast_ln405_fu_1589_p1 = grp_fu_444_p_dout0;
assign grp_fu_396_p_ce = 1'b1;
assign grp_fu_396_p_din0 = grp_fu_888_p0;
assign grp_fu_396_p_din1 = grp_fu_888_p1;
assign grp_fu_396_p_opcode = grp_fu_888_opcode;
assign grp_fu_400_p_ce = 1'b1;
assign grp_fu_400_p_din0 = grp_fu_892_p0;
assign grp_fu_400_p_din1 = grp_fu_892_p1;
assign grp_fu_400_p_opcode = grp_fu_892_opcode;
assign grp_fu_404_p_ce = 1'b1;
assign grp_fu_404_p_din0 = grp_fu_896_p0;
assign grp_fu_404_p_din1 = grp_fu_896_p1;
assign grp_fu_404_p_opcode = grp_fu_896_opcode;
assign grp_fu_408_p_ce = 1'b1;
assign grp_fu_408_p_din0 = grp_fu_900_p0;
assign grp_fu_408_p_din1 = grp_fu_900_p1;
assign grp_fu_408_p_opcode = grp_fu_900_opcode;
assign grp_fu_412_p_ce = 1'b1;
assign grp_fu_412_p_din0 = grp_fu_904_p0;
assign grp_fu_412_p_din1 = grp_fu_904_p1;
assign grp_fu_412_p_opcode = grp_fu_904_opcode;
assign grp_fu_416_p_ce = 1'b1;
assign grp_fu_416_p_din0 = grp_fu_908_p0;
assign grp_fu_416_p_din1 = grp_fu_908_p1;
assign grp_fu_416_p_opcode = grp_fu_908_opcode;
assign grp_fu_420_p_ce = 1'b1;
assign grp_fu_420_p_din0 = grp_fu_912_p0;
assign grp_fu_420_p_din1 = grp_fu_912_p1;
assign grp_fu_420_p_opcode = grp_fu_912_opcode;
assign grp_fu_424_p_ce = 1'b1;
assign grp_fu_424_p_din0 = grp_fu_916_p0;
assign grp_fu_424_p_din1 = grp_fu_916_p1;
assign grp_fu_424_p_opcode = grp_fu_916_opcode;
assign grp_fu_428_p_ce = 1'b1;
assign grp_fu_428_p_din0 = grp_fu_920_p0;
assign grp_fu_428_p_din1 = grp_fu_920_p1;
assign grp_fu_428_p_opcode = grp_fu_920_opcode;
assign grp_fu_432_p_ce = 1'b1;
assign grp_fu_432_p_din0 = grp_fu_924_p0;
assign grp_fu_432_p_din1 = grp_fu_924_p1;
assign grp_fu_432_p_opcode = grp_fu_924_opcode;
assign grp_fu_436_p_ce = 1'b1;
assign grp_fu_436_p_din0 = grp_fu_928_p0;
assign grp_fu_436_p_din1 = grp_fu_928_p1;
assign grp_fu_436_p_opcode = grp_fu_928_opcode;
assign grp_fu_440_p_ce = 1'b1;
assign grp_fu_440_p_din0 = grp_fu_932_p0;
assign grp_fu_440_p_din1 = grp_fu_932_p1;
assign grp_fu_440_p_opcode = grp_fu_932_opcode;
assign grp_fu_444_p_ce = 1'b1;
assign grp_fu_444_p_din0 = grp_fu_936_p0;
assign grp_fu_444_p_din1 = grp_fu_936_p1;
assign grp_fu_444_p_opcode = grp_fu_936_opcode;
assign grp_fu_448_p_ce = 1'b1;
assign grp_fu_448_p_din0 = grp_fu_940_p0;
assign grp_fu_448_p_din1 = grp_fu_940_p1;
assign grp_fu_448_p_opcode = grp_fu_940_opcode;
assign grp_fu_452_p_ce = 1'b1;
assign grp_fu_452_p_din0 = grp_fu_944_p0;
assign grp_fu_452_p_din1 = grp_fu_944_p1;
assign grp_fu_452_p_opcode = 2'd1;
assign grp_fu_512_p_ce = 1'b1;
assign grp_fu_512_p_din0 = grp_fu_948_p0;
assign grp_fu_512_p_din1 = grp_fu_948_p1;
assign grp_fu_516_p_ce = 1'b1;
assign grp_fu_516_p_din0 = grp_fu_953_p0;
assign grp_fu_516_p_din1 = grp_fu_953_p1;
assign grp_fu_520_p_ce = 1'b1;
assign grp_fu_520_p_din0 = grp_fu_960_p0;
assign grp_fu_520_p_din1 = grp_fu_960_p1;
assign icmp_ln365_fu_982_p2 = ((ap_sig_allocacmp_tid_5 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln114_1_fu_1251_p4 = {{tid_5_reg_1619_pp0_iter6_reg[6:2]}};
assign or_ln_fu_1014_p3 = {{trunc_ln367_fu_992_p1}, {1'd1}};
assign sext_ln389_fu_1601_p1 = zext_ln391_cast_reg_2197_pp0_iter15_reg;
assign sext_ln393_fu_1523_p1 = zext_ln391_cast_reg_2197_pp0_iter14_reg;
assign sext_ln396_fu_1561_p1 = zext_ln392_cast_reg_2235_pp0_iter14_reg;
assign shl_ln367_fu_996_p2 = ap_sig_allocacmp_tid_5 << 7'd1;
assign trunc_ln365_fu_988_p1 = ap_sig_allocacmp_tid_5[1:0];
assign trunc_ln367_fu_992_p1 = ap_sig_allocacmp_tid_5[5:0];
assign trunc_ln386_1_fu_1095_p1 = bitcast_ln386_2_fu_1078_p1[62:0];
assign trunc_ln386_2_fu_1200_p1 = bitcast_ln386_4_fu_1183_p1[62:0];
assign trunc_ln386_3_fu_1234_p1 = bitcast_ln386_6_fu_1217_p1[62:0];
assign trunc_ln386_4_fu_1129_p1 = bitcast_ln386_8_fu_1112_p1[62:0];
assign trunc_ln386_5_fu_1165_p1 = bitcast_ln386_10_fu_1147_p1[62:0];
assign trunc_ln386_6_fu_1289_p1 = bitcast_ln386_12_fu_1272_p1[62:0];
assign trunc_ln386_7_fu_1323_p1 = bitcast_ln386_14_fu_1306_p1[62:0];
assign trunc_ln386_8_fu_1388_p1 = bitcast_ln386_16_fu_1371_p1[62:0];
assign trunc_ln386_9_fu_1426_p1 = bitcast_ln386_18_fu_1409_p1[62:0];
assign trunc_ln386_fu_1061_p1 = bitcast_ln386_fu_1044_p1[62:0];
assign work_x_0_address0 = work_x_0_address0_local;
assign work_x_0_address1 = work_x_0_address1_local;
assign work_x_0_ce0 = work_x_0_ce0_local;
assign work_x_0_ce1 = work_x_0_ce1_local;
assign work_x_0_d0 = work_x_0_d0_local;
assign work_x_0_d1 = work_x_0_d1_local;
assign work_x_0_we0 = work_x_0_we0_local;
assign work_x_0_we1 = work_x_0_we1_local;
assign work_x_1_address0 = work_x_1_address0_local;
assign work_x_1_address1 = work_x_1_address1_local;
assign work_x_1_ce0 = work_x_1_ce0_local;
assign work_x_1_ce1 = work_x_1_ce1_local;
assign work_x_1_d0 = work_x_1_d0_local;
assign work_x_1_d1 = work_x_1_d1_local;
assign work_x_1_we0 = work_x_1_we0_local;
assign work_x_1_we1 = work_x_1_we1_local;
assign work_x_2_address0 = work_x_2_address0_local;
assign work_x_2_address1 = work_x_2_address1_local;
assign work_x_2_ce0 = work_x_2_ce0_local;
assign work_x_2_ce1 = work_x_2_ce1_local;
assign work_x_2_d0 = work_x_2_d0_local;
assign work_x_2_d1 = work_x_2_d1_local;
assign work_x_2_we0 = work_x_2_we0_local;
assign work_x_2_we1 = work_x_2_we1_local;
assign work_x_3_address0 = work_x_3_address0_local;
assign work_x_3_address1 = work_x_3_address1_local;
assign work_x_3_ce0 = work_x_3_ce0_local;
assign work_x_3_ce1 = work_x_3_ce1_local;
assign work_x_3_d0 = work_x_3_d0_local;
assign work_x_3_d1 = work_x_3_d1_local;
assign work_x_3_we0 = work_x_3_we0_local;
assign work_x_3_we1 = work_x_3_we1_local;
assign work_y_0_address0 = work_y_0_address0_local;
assign work_y_0_address1 = work_y_0_address1_local;
assign work_y_0_ce0 = work_y_0_ce0_local;
assign work_y_0_ce1 = work_y_0_ce1_local;
assign work_y_0_d0 = work_y_0_d0_local;
assign work_y_0_d1 = work_y_0_d1_local;
assign work_y_0_we0 = work_y_0_we0_local;
assign work_y_0_we1 = work_y_0_we1_local;
assign work_y_1_address0 = work_y_1_address0_local;
assign work_y_1_address1 = work_y_1_address1_local;
assign work_y_1_ce0 = work_y_1_ce0_local;
assign work_y_1_ce1 = work_y_1_ce1_local;
assign work_y_1_d0 = work_y_1_d0_local;
assign work_y_1_d1 = work_y_1_d1_local;
assign work_y_1_we0 = work_y_1_we0_local;
assign work_y_1_we1 = work_y_1_we1_local;
assign work_y_2_address0 = work_y_2_address0_local;
assign work_y_2_address1 = work_y_2_address1_local;
assign work_y_2_ce0 = work_y_2_ce0_local;
assign work_y_2_ce1 = work_y_2_ce1_local;
assign work_y_2_d0 = work_y_2_d0_local;
assign work_y_2_d1 = work_y_2_d1_local;
assign work_y_2_we0 = work_y_2_we0_local;
assign work_y_2_we1 = work_y_2_we1_local;
assign work_y_3_address0 = work_y_3_address0_local;
assign work_y_3_address1 = work_y_3_address1_local;
assign work_y_3_ce0 = work_y_3_ce0_local;
assign work_y_3_ce1 = work_y_3_ce1_local;
assign work_y_3_d0 = work_y_3_d0_local;
assign work_y_3_d1 = work_y_3_d1_local;
assign work_y_3_we0 = work_y_3_we0_local;
assign work_y_3_we1 = work_y_3_we1_local;
assign xor_ln386_10_fu_1055_p2 = (bit_sel_fu_1047_p3 ^ 1'd1);
assign xor_ln386_11_fu_1194_p2 = (bit_sel41_fu_1186_p3 ^ 1'd1);
assign xor_ln386_12_fu_1228_p2 = (bit_sel42_fu_1220_p3 ^ 1'd1);
assign xor_ln386_13_fu_1123_p2 = (bit_sel43_fu_1115_p3 ^ 1'd1);
assign xor_ln386_14_fu_1159_p2 = (bit_sel44_fu_1151_p3 ^ 1'd1);
assign xor_ln386_15_fu_1283_p2 = (bit_sel45_fu_1275_p3 ^ 1'd1);
assign xor_ln386_16_fu_1317_p2 = (bit_sel46_fu_1309_p3 ^ 1'd1);
assign xor_ln386_17_fu_1382_p2 = (bit_sel47_fu_1374_p3 ^ 1'd1);
assign xor_ln386_18_fu_1420_p2 = (bit_sel48_fu_1412_p3 ^ 1'd1);
assign xor_ln386_1_fu_1099_p3 = {{xor_ln386_fu_1089_p2}, {trunc_ln386_1_fu_1095_p1}};
assign xor_ln386_2_fu_1204_p3 = {{xor_ln386_11_fu_1194_p2}, {trunc_ln386_2_fu_1200_p1}};
assign xor_ln386_3_fu_1238_p3 = {{xor_ln386_12_fu_1228_p2}, {trunc_ln386_3_fu_1234_p1}};
assign xor_ln386_4_fu_1133_p3 = {{xor_ln386_13_fu_1123_p2}, {trunc_ln386_4_fu_1129_p1}};
assign xor_ln386_5_fu_1169_p3 = {{xor_ln386_14_fu_1159_p2}, {trunc_ln386_5_fu_1165_p1}};
assign xor_ln386_6_fu_1293_p3 = {{xor_ln386_15_fu_1283_p2}, {trunc_ln386_6_fu_1289_p1}};
assign xor_ln386_7_fu_1327_p3 = {{xor_ln386_16_fu_1317_p2}, {trunc_ln386_7_fu_1323_p1}};
assign xor_ln386_8_fu_1392_p3 = {{xor_ln386_17_fu_1382_p2}, {trunc_ln386_8_fu_1388_p1}};
assign xor_ln386_9_fu_1430_p3 = {{xor_ln386_18_fu_1420_p2}, {trunc_ln386_9_fu_1426_p1}};
assign xor_ln386_fu_1089_p2 = (bit_sel40_fu_1081_p3 ^ 1'd1);
assign xor_ln3_fu_1065_p3 = {{xor_ln386_10_fu_1055_p2}, {trunc_ln386_fu_1061_p1}};
assign zext_ln114_1_fu_1260_p1 = lshr_ln114_1_fu_1251_p4;
assign zext_ln114_fu_1572_p1 = lshr_ln114_1_reg_2061_pp0_iter14_reg;
assign zext_ln367_fu_1002_p1 = shl_ln367_fu_996_p2;
assign zext_ln371_fu_1022_p1 = or_ln_fu_1014_p3;
assign zext_ln389_fu_1604_p1 = $unsigned(sext_ln389_fu_1601_p1);
assign zext_ln391_cast_fu_1443_p3 = {{1'd1}, {part_sel_reg_2078_pp0_iter10_reg}};
assign zext_ln391_fu_1450_p1 = $unsigned(zext_ln391_cast_fu_1443_p3);
assign zext_ln392_cast_fu_1493_p3 = {{1'd1}, {lshr_ln114_1_reg_2061_pp0_iter11_reg}};
assign zext_ln392_fu_1500_p1 = $unsigned(zext_ln392_cast_fu_1493_p3);
assign zext_ln393_1_fu_1542_p1 = lshr_ln114_1_reg_2061_pp0_iter14_reg;
assign zext_ln393_fu_1526_p1 = $unsigned(sext_ln393_fu_1523_p1);
assign zext_ln394_cast_fu_1545_p3 = {{1'd1}, {zext_ln393_1_fu_1542_p1}};
assign zext_ln394_fu_1553_p1 = zext_ln394_cast_fu_1545_p3;
assign zext_ln395_fu_1581_p1 = add_ln394_fu_1575_p2;
assign zext_ln396_fu_1564_p1 = $unsigned(sext_ln396_fu_1561_p1);
always @ (posedge ap_clk) begin
    zext_ln391_cast_reg_2197[4] <= 1'b1;
    zext_ln391_cast_reg_2197_pp0_iter12_reg[4] <= 1'b1;
    zext_ln391_cast_reg_2197_pp0_iter13_reg[4] <= 1'b1;
    zext_ln391_cast_reg_2197_pp0_iter14_reg[4] <= 1'b1;
    zext_ln391_cast_reg_2197_pp0_iter15_reg[4] <= 1'b1;
    zext_ln392_cast_reg_2235[5] <= 1'b1;
    zext_ln392_cast_reg_2235_pp0_iter12_reg[5] <= 1'b1;
    zext_ln392_cast_reg_2235_pp0_iter13_reg[5] <= 1'b1;
    zext_ln392_cast_reg_2235_pp0_iter14_reg[5] <= 1'b1;
    zext_ln393_reg_2260[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000011;
    zext_ln394_reg_2268[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000010;
    zext_ln396_reg_2276[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000011;
    zext_ln395_reg_2284[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln389_reg_2300[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000111;
end
endmodule 